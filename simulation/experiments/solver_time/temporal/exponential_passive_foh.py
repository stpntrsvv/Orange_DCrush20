"""Опыт C2: точная пассивная RC-динамика при линейном движении портов.

Все ёмкости и нагрузочные токи сохранены. Нелинейные порты решаются неявно;
полюса ОУ и slew пока используют трапеции. Это дискретизация, не новая физика.
Производная линейной интерполяции портов входит в токи их ёмкостной нагрузки.
"""
import numpy as np
from condensed_physical import CondensedPhysical, constraint_basis, FullMNAParameters

class ExponentialPassive(CondensedPhysical):
    def __init__(self, parameters=FullMNAParameters(load='resistive'), method='trap'):
        super().__init__(parameters,method)
        assert not self.inductors
        m=self.model; t,f=constraint_basis(self.b)
        # Ранг определяется целочисленной топологией ёмкостей, не их номиналами.
        u,s,_=np.linalg.svd(t.T@self.e,full_matrices=True)
        rank=np.linalg.matrix_rank(t.T@self.e)
        assert np.all(s[:rank]>1e-8) and np.all(s[rank:]<1e-12)
        ud,un=u[:,:rank],u[:,rank:]
        mass=t.T@m.C@t; stiff=t.T@m.G@t
        knn=un.T@stiff@un;knd=un.T@stiff@ud
        null_y=-np.linalg.solve(knn,knd)
        null_w=-np.linalg.solve(knn,un.T@t.T@m.G@f)
        keff=ud.T@stiff@ud+ud.T@stiff@un@null_y
        meff=ud.T@mass@ud
        lm,um=np.linalg.eigh(meff)
        assert lm.min()>0
        white=(um/np.sqrt(lm))@um.T
        keff=white.T@keff@white
        eig,q=np.linalg.eigh((keff+keff.T)/2)
        # Нулевая мода — сохраняющийся заряд; не отбрасываем её состояние.
        assert eig.min()>-1e-5, eig
        self.rate=eig  # even roundoff of zero is retained, no physical pole deleted
        basis=white@q
        self.X=t@(ud+un@null_y)@basis
        j=basis.T@ud.T@t.T@m.C@f
        forcing=basis.T@(ud.T@t.T@m.G@f+ud.T@stiff@un@null_w)
        self.B=eig[:,None]*j-forcing
        self.F=f+t@un@null_w-self.X@j
        self.modal=np.zeros(rank);self.wprev=np.zeros(self.b.shape[1])
        dt=1/self.fs;v=eig*dt
        phi1=np.empty_like(v);phi2=np.empty_like(v)
        small=np.abs(v)<1e-3
        a=v[small]
        phi1[small]=1-a/2+a*a/6-a**3/24+a**4/120-a**5/720
        phi2[small]=.5-a/6+a*a/24-a**3/120+a**4/720-a**5/5040
        a=v[~small]
        phi1[~small]=-np.expm1(-a)/a
        phi2[~small]=(1-phi1[~small])/a
        self.decay=np.exp(-v)
        self.W1=dt*phi2[:,None]*self.B
        self.W0=dt*(phi1-phi2)[:,None]*self.B
        self.nd=self.X@self.W1+self.F
        dxnew=self.X@(-eig[:,None]*self.W1+self.B)+self.F*self.fs
        extract=-np.linalg.solve(self.b.T@self.b,self.b.T)
        self.extract=extract
        self.id=extract@(m.G@self.nd+m.C@dxnew)
        diffs=np.array([m._incidence(plus,minus) for _,plus,minus,_ in m.OPAMPS]+[m._incidence('power_plus','power_minus')])
        self.diffs=diffs;self.dd=diffs@self.nd
        self.audit=dict(passive_modes=rank,smallest_rate=float(eig.min()),largest_rate=float(eig.max()),
            topology_null_error=float(np.max(abs(un.T@mass))),
            source_constraint_error=float(np.max(abs(self.b.T@self.nd-np.eye(len(self.wprev))))),
            kcl_current_coeff_error=float(np.max(abs(t.T@(m.G@self.nd+m.C@dxnew)))),
            node_matrix_nonzero=int(np.count_nonzero(self.nd)),modal_B_nonzero=int(np.count_nonzero(self.B)))
    def prepare_step(self,value):
        u=np.array([value,self.model.p.aux_left_v,self.model.p.aux_right_v])
        z0=self.decay*self.modal+self.W0@self.wprev
        nodes=self.X@z0
        dx=self.X@(-self.rate*z0)-self.F@(self.wprev*self.fs)
        cur=self.extract@(self.model.G@nodes+self.model.C@dx)
        self.pending_z0=z0
        return dict(h=self.trap_history.copy(),u=u,nodes=nodes+self.nd[:,:3]@u,
                    current=cur+self.id[:,:3]@u,diff=self.diffs@nodes+self.dd[:,:3]@u)
    def step(self,value,max_iterations=32,tolerance=1e-10,cascade=True):
        o=self.prepare_step(value);r=self.r.copy();iterations=[]
        for block in (self.blocks if cascade else [list(range(8))]):
            ix=np.ix_(block,block);total=0
            for restart in range(2):
                if restart:r[block]=0
                for n in range(max_iterations+1):
                    f,j,s=self.evaluate(r,o);error=np.max(abs(f[block])/self.scales[block])
                    if error<tolerance or n==max_iterations:break
                    delta=np.linalg.solve(j[ix],-f[block]);accepted=False
                    for back in range(16):
                        trial=r.copy();trial[block]+=delta*2.**-back
                        ft,_,_=self.evaluate(trial,o)
                        if np.max(abs(ft[block])/self.scales[block])<error:
                            r=trial;accepted=True;break
                    if not accepted:break
                total+=n
                if error<tolerance:break
            iterations.append(total)
        f,j,s=self.evaluate(r,o);error=float(np.max(abs(f)/self.scales))
        nodes=o['nodes']+self.nd[:,3:]@r
        current=o['current']+self.id[:,3:]@r
        self.modal=self.pending_z0+self.W1@np.r_[o['u'],r]
        self.wprev=np.r_[o['u'],r]
        caps=self.e.T@nodes; nxt=np.r_[caps,s]
        self.trap_history=4*nxt-o['h']
        self.previous=self.current.copy();self.current=nxt;self.r=r;self.steps+=1
        x=np.zeros(self.model.size);x[:self.model.n_nodes]=nodes
        for i,node in enumerate(self.model.source_nodes):x[self.model.i_voltage_source[node]]=current[i]
        x[self.source_indices]=current[[3+p for p in self.amp_ports]];x[self.internal_indices]=s
        return x,dict(error=error,iterations=iterations)
