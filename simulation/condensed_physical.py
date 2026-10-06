"""Прототип: 8 физических напряжений и независимая память конденсаторов/ОУ.

Линейная пассивная сеть исключается по связным компонентам после наложения
идеальных источников напряжения. Нули между компонентами структурные.
Исходная OrangeFullMNA и её законы приборов остаются независимым арбитром.
"""
from dataclasses import replace
import numpy as np
from orange_full_mna import OrangeFullMNA, FullMNAParameters


def components(matrix):
    remaining = set(range(len(matrix)))
    out = []
    while remaining:
        todo = [min(remaining)]; group = []
        while todo:
            i = todo.pop()
            if i not in remaining:
                continue
            remaining.remove(i); group.append(i)
            todo.extend(j for j in remaining if matrix[i,j] != 0 or matrix[j,i] != 0)
        out.append(sorted(group))
    return out


def constraint_basis(b):
    """RREF матрицы связности: операции здесь точны (0, ±1)."""
    a = np.concatenate([b.T.copy(), np.eye(b.shape[1])], axis=1)
    pivots = []
    for col in range(b.shape[0]):
        row = len(pivots)
        candidates = np.flatnonzero(a[row:,col])
        if not len(candidates): continue
        pivot = row + candidates[0]; a[[row,pivot]] = a[[pivot,row]]
        a[row] /= a[row,col]
        for k in range(len(a)):
            if k != row: a[k] -= a[k,col] * a[row]
        pivots.append(col)
        if len(pivots) == len(a): break
    assert len(pivots) == len(a), 'зависимые источники требуют отдельной топологии'
    free = [i for i in range(b.shape[0]) if i not in pivots]
    t = np.zeros((b.shape[0],len(free))); t[free,np.arange(len(free))] = 1
    t[pivots] = -a[:,:b.shape[0]][:,free]
    f = np.zeros_like(b); f[pivots] = a[:,b.shape[0]:]
    assert np.array_equal(b.T @ t, np.zeros((len(a),len(free))))
    assert np.array_equal(b.T @ f, np.eye(len(a)))
    return t,f


class CondensedPhysical:
    labels = ['D6/D7','IC3A','IC3B','D4/D5','IC4A','IC4B','Q1','TDA2050']
    blocks = [[0],[1],[2,3],[4,5,6],[7]]
    def __init__(self, parameters=FullMNAParameters(load='resistive'), method='bdf2'):
        self.model = m = OrangeFullMNA(parameters)
        self.method = method
        self.fs = parameters.sample_rate
        self.order = {'bdf2':1.5,'trap':2.0,'be':1.0}[method]
        allcaps = [(ref,m._incidence(a,b),value) for ref,kind,a,b,value in m.rows if kind=='C']
        forest=[];rank=0
        for entry in allcaps:
            trial=np.array([v[1] for v in forest+[entry]]).T
            newrank=np.linalg.matrix_rank(trial)
            if newrank>rank: forest.append(entry);rank=newrank
        self.caps=forest
        self.e=np.array([e for _,e,_ in forest]).T
        all_e=np.array([e for _,e,_ in allcaps]).T
        coords=np.rint(np.linalg.solve(self.e.T@self.e,self.e.T@all_e))
        assert np.array_equal(self.e@coords,all_e)
        self.nc=len(forest)
        self.inductors=[]
        if m.i_speaker_series is not None:
            self.inductors=[(m.speaker_series_e,m.p.speaker_le_h,m.i_speaker_series),
                            (m.speaker_motor_e,m._speaker_lm(),m.i_speaker_motor)]
        self.nz=self.nc+len(self.inductors)
        memory_injection=np.zeros((m.n_nodes,self.nz))
        memory_injection[:,:self.nc]=self.fs*(all_e*np.array([c for _,_,c in allcaps]))@coords.T
        for j,(e,inductance,_) in enumerate(self.inductors):
            memory_injection[:,self.nc+j]=-e/self.order
        self.memory_injection=memory_injection
        self.opnames = [v[0] for v in m.OPAMPS]
        self.opout = [m.index[m.canonical(v[3])] for v in m.OPAMPS]+[m.index['power_out']]
        self.amp_ports = [1,2,4,5,7]
        self.internal_indices = list(m.i_op_internal.values())+[m.i_power_internal]
        self.source_indices = list(m.i_op_source.values())+[m.i_power_source]
        # Первые три столбца — независимые INPUT/AUX; остальные — искомые напряжения.
        port_nodes = [('input_protected','G'),('a_out','G'),('b_out','G'),
                      ('clip','clip_ref'),('c_out','G'),('d_out','G'),
                      ('mute_input','volume_top'),('power_out','G')]
        b = np.array([m._incidence(node,'G') for node in m.source_nodes]+
                     [m._incidence(*v) for v in port_nodes]).T
        self.b = b
        t,f = constraint_basis(b)
        l = m.G + self.order*self.fs*m.C
        for e,inductance,_ in self.inductors:
            l+=np.outer(e,e)/(self.order*self.fs*inductance)
        k = t.T @ l @ t
        self.passive_components = components(k)
        inverse = np.zeros_like(k)
        for block in self.passive_components:
            ix = np.ix_(block,block); inverse[ix] = np.linalg.inv(k[ix])
        # x_nodes = Nh h_cap + Nd [input,auxL,auxR,r]. h_cap имеет единицы В.
        self.nh = t @ inverse @ t.T @ memory_injection
        self.nd = f - t @ inverse @ t.T @ l @ f
        extract = -np.linalg.solve(b.T @ b, b.T)
        self.ih = extract @ (l @ self.nh - memory_injection)
        self.id = extract @ l @ self.nd
        self.zh = self.e.T @ self.nh
        self.zd = self.e.T @ self.nd
        for j,(e,inductance,_) in enumerate(self.inductors):
            a=(e@self.nh)/(self.order*self.fs*inductance);a[self.nc+j]+=1/self.order
            b=(e@self.nd)/(self.order*self.fs*inductance)
            self.zh=np.vstack([self.zh,a]);self.zd=np.vstack([self.zd,b])
        # Наблюдения для закона каждого ОУ: входная разность и ток источника.
        diffs = [m._incidence(plus,minus) for _,plus,minus,_ in m.OPAMPS]
        diffs.append(m._incidence('power_plus','power_minus'))
        self.dh = np.array(diffs) @ self.nh
        self.dd = np.array(diffs) @ self.nd
        self.gain = np.array([2*np.pi*parameters.opamp.gain_bandwidth_hz]*4+
                             [2*np.pi*m.poweramp.pole_hz*parameters.poweramp.dc_open_loop_gain])
        self.pole = np.array([2*np.pi*m.opamps[n].pole_hz for n in self.opnames]+[2*np.pi*m.poweramp.pole_hz])
        self.slew = np.array([parameters.opamp.slew_rate_v_per_s]*4+[parameters.poweramp.slew_rate_v_per_s])
        self.scales = np.array([.01,15,15,.01,15,15,.01,24])
        self.current = np.zeros(self.nz+5); self.previous = self.current.copy()
        self.r = np.zeros(8); self.rprev = self.r.copy()
        self.trap_history = self.current.copy()
        self.steps=0

    def prepare_step(self, value):
        if self.method == 'bdf2': h=2*self.current-.5*self.previous
        elif self.method=='trap': h=self.trap_history
        else: h=self.current.copy()
        u=np.array([value,self.model.p.aux_left_v,self.model.p.aux_right_v])
        # Не восстанавливаем x на пробах, только необходимые наблюдения.
        origin = dict(h=h, u=u, diff=self.dh@h[:self.nz]+self.dd[:,:3]@u,
                      current=self.ih@h[:self.nz]+self.id[:,:3]@u,
                      nodes=self.nh@h[:self.nz]+self.nd[:,:3]@u)
        return origin

    def evaluate(self,r,o):
        m=self.model
        currents=o['current']+self.id[:,3:]@r
        diff=o['diff']+self.dd[:,3:]@r
        diff[:4]+=m.p.opamp.input_offset_v
        hs=self.fs*o['h'][self.nz:]
        sfree=(hs+self.gain*diff)/(self.order*self.fs+self.pole)
        lower=(hs-self.slew)/(self.order*self.fs)
        upper=(hs+self.slew)/(self.order*self.fs)
        s=np.clip(sfree,lower,upper)
        ds=self.gain/(self.order*self.fs+self.pole)*((sfree>lower)&(sfree<upper))
        residual=np.zeros(8); jac=np.zeros((8,8))
        for slot,p in enumerate(self.amp_ports):
            if slot<4: law,li,lc=m._opamp_output_law_with_derivatives(self.opnames[slot],s[slot],currents[3+p])
            else: law,li,lc=m._power_output_law_with_derivatives(s[slot],currents[3+p])
            residual[p]=r[p]-law
            jac[p,p]=1
            jac[p]-=li*ds[slot]*self.dd[slot,3:]+lc*self.id[3+p,3:]
        i6,g6=m._diode(r[0]-m.supply_rails[2],False)
        i7,g7=m._diode(m.supply_rails[3]-r[0],False)
        residual[0]=i6-i7-currents[3]; jac[0]=-self.id[3,3:];jac[0,0]+=g6+g7
        ic,gc=m._diode(r[3],True)
        residual[3]=ic-currents[6];jac[3]=-self.id[6,3:];jac[3,3]+=gc
        ia=m.index[m.canonical('mute_input')];ib=m.index[m.canonical('volume_top')]
        va=o['nodes'][ia]+self.nd[ia,3:]@r;vb=o['nodes'][ib]+self.nd[ib,3:]@r
        src=ia if va<=vb else ib
        g,dg=m._jfet_conductance(m.mute_gate_v-min(va,vb))
        residual[6]=g*r[6]-currents[9]
        jac[6]=-self.id[9,3:]-r[6]*dg*self.nd[src,3:];jac[6,6]+=g
        return residual,jac,s

    def step(self,value,max_iterations=24,tolerance=1e-10,cascade=True):
        o=self.prepare_step(value)
        r=self.r.copy()
        iterations=[]
        for block in (self.blocks if cascade else [list(range(8))]):
            ix=np.ix_(block,block);count=0;total=0
            for restart in range(2):
                if restart:r[block]=0.
                for count in range(max_iterations+1):
                    f,j,s=self.evaluate(r,o)
                    error=np.max(np.abs(f[block])/self.scales[block])
                    if error<tolerance: break
                    if count==max_iterations: break
                    delta=np.linalg.solve(j[ix],-f[block])
                    accepted=False
                    for backtrack in range(16):
                        trial=r.copy();trial[block]+=delta*2.**-backtrack
                        ft,_,_=self.evaluate(trial,o)
                        if np.max(np.abs(ft[block])/self.scales[block])<error:
                            r=trial;accepted=True;break
                    if not accepted: break
                total+=count
                f,j,s=self.evaluate(r,o)
                if np.max(np.abs(f[block])/self.scales[block])<tolerance:break
            count=total
            iterations.append(count)
        f,j,s=self.evaluate(r,o)
        error=float(np.max(np.abs(f)/self.scales))
        drive=np.r_[o['u'],r]
        caps=self.zh@o['h'][:self.nz]+self.zd@drive
        nxt=np.r_[caps,s]
        if self.method=='trap': self.trap_history=4*nxt-o['h']
        self.previous=self.current.copy();self.current=nxt
        self.rprev=self.r.copy();self.r=r
        self.steps+=1
        # Только диагностика, не требование к быстрому шагу.
        x=np.zeros(self.model.size)
        x[:self.model.n_nodes]=o['nodes']+self.nd[:,3:]@r
        currents=o['current']+self.id[:,3:]@r
        for i,node in enumerate(self.model.source_nodes):x[self.model.i_voltage_source[node]]=currents[i]
        x[self.source_indices]=currents[[3+p for p in self.amp_ports]]
        x[self.internal_indices]=s
        for j,(_,_,idx) in enumerate(self.inductors):x[idx]=caps[self.nc+j]
        return x,dict(error=error,iterations=iterations)
