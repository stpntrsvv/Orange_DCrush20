"""Офлайн f64: те же точные блоки, законы берутся из полной MNA.

Убирается вычисление чужих блоков на локальных пробах. Это не прошивка:
поиск длины и 64 поправки разрешены только офлайн-арбитру.
"""
import numpy as np
from condensed_physical import CondensedPhysical

class FastReference(CondensedPhysical):
    def local(self, r, o, block):
        m = self.model
        f = np.zeros(len(block))
        j = np.zeros((len(block), len(block)))
        poles = {}
        for row, port in enumerate(block):
            current = o['current'][3+port] + self.id[3+port, 3:] @ r
            if port in self.amp_ports:
                slot = self.amp_ports.index(port)
                diff = o['diff'][slot] + self.dd[slot, 3:] @ r
                if slot < 4: diff += m.p.opamp.input_offset_v
                hs = self.fs * o['h'][self.nz+slot]
                free = (hs + self.gain[slot]*diff) / (self.order*self.fs+self.pole[slot])
                lower = (hs-self.slew[slot]) / (self.order*self.fs)
                upper = (hs+self.slew[slot]) / (self.order*self.fs)
                s = min(max(free, lower), upper)
                ds = self.gain[slot]/(self.order*self.fs+self.pole[slot]) if lower < free < upper else 0.0
                if slot < 4:
                    law, li, lc = m._opamp_output_law_with_derivatives(self.opnames[slot], s, current)
                else:
                    law, li, lc = m._power_output_law_with_derivatives(s, current)
                f[row] = r[port]-law
                for col, other in enumerate(block):
                    j[row,col] = (port==other)-li*ds*self.dd[slot,3+other]-lc*self.id[3+port,3+other]
                poles[slot] = s
            elif port in (0, 3):
                if port == 0:
                    a, da = m._diode(r[0]-m.supply_rails[2],False)
                    b, db = m._diode(m.supply_rails[3]-r[0],False)
                    law, derivative = a-b, da+db
                else: law, derivative = m._diode(r[3],True)
                f[row] = law-current
                for col, other in enumerate(block):
                    j[row,col] = -self.id[3+port,3+other]+(port==other)*derivative
            else:
                ia = m.index[m.canonical('mute_input')]
                ib = m.index[m.canonical('volume_top')]
                va = o['nodes'][ia]+self.nd[ia,3:]@r
                vb = o['nodes'][ib]+self.nd[ib,3:]@r
                src = ia if va <= vb else ib
                conductance, dg = m._jfet_conductance(m.mute_gate_v-min(va,vb))
                f[row] = conductance*r[6]-current
                for col, other in enumerate(block):
                    j[row,col] = -self.id[9,3+other]-r[6]*dg*self.nd[src,3+other]+(other==6)*conductance
        return f,j,poles

    def step(self, value, max_iterations=64, tolerance=1e-11):
        o = self.prepare_step(value)
        r = self.r.copy()
        for block in self.blocks:
            scales = self.scales[block]
            for restart in range(2):
                if restart: r[block] = 0.0
                for _ in range(max_iterations):
                    f,j,_ = self.local(r,o,block)
                    error = max(abs(f)/scales)
                    if error < tolerance: break
                    delta = np.linalg.solve(j,-f)
                    accepted = False
                    for backtrack in range(16):
                        trial = r.copy()
                        trial[block] += delta*2.0**-backtrack
                        ft,_,_ = self.local(trial,o,block)
                        if max(abs(ft)/scales) < error:
                            r = trial
                            accepted = True
                            break
                    if not accepted: break
                f,_,_ = self.local(r,o,block)
                if max(abs(f)/scales) < tolerance: break
        f,j,s = self.evaluate(r,o)
        error = float(max(abs(f)/self.scales))
        currents = o['current']+self.id[:,3:]@r
        caps = self.zh@o['h'][:self.nz]+self.zd@np.r_[o['u'],r]
        nxt = np.r_[caps,s]
        self.previous = self.current.copy()
        self.current = nxt
        self.rprev = self.r.copy()
        self.r = r
        self.steps += 1
        x = np.zeros(self.model.size)
        x[:self.model.n_nodes] = o['nodes']+self.nd[:,3:]@r
        for i,node in enumerate(self.model.source_nodes): x[self.model.i_voltage_source[node]] = currents[i]
        x[self.source_indices] = currents[[3+p for p in self.amp_ports]]
        x[self.internal_indices] = s
        return x,dict(error=error)
