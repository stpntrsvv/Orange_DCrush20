"""Фиксированный ETD2, физическая память 28, 13 нелинейных остаточных законов.
Сохраняет P7 и его генераторы. Нули задаёт причинный схемный граф, не величина.
"""
from pathlib import Path
import json,numpy as np
from exponential_closed import ExponentialClosed,FullMNAParameters
from condensed_physical import CondensedPhysical
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'simulation/experiments/solver_time/temporal'

def prepare(fs=48000):
    p=ExponentialClosed(FullMNAParameters(load='resistive',sample_rate=fs));c=CondensedPhysical();m=p.model
    # x_scaled = V q_physical + Q (force*u-L*n). Все 28 q — в вольтах.
    memory=np.zeros((28,56));memory[:23,:m.n_nodes]=c.e.T
    for i,k in enumerate(c.internal_indices):memory[23+i,k]=1
    memory*=p.scales
    trans=memory@p.P;inv=np.linalg.inv(trans);v=p.P@inv
    L=np.zeros((56,13))
    L[:m.n_nodes,0]=m._incidence('input_protected','G')*.01/p.rows[:m.n_nodes]
    L[:m.n_nodes,1]=m._incidence('clip','clip_ref')*.01/p.rows[:m.n_nodes]
    L[:m.n_nodes,2]=m.jfet_e*.01/p.rows[:m.n_nodes]
    for i,k in enumerate(c.source_indices):L[k,3+i]=1
    for i,k in enumerate(c.internal_indices):L[k,8+i]=1
    C=np.zeros((19,56))
    C[0,:m.n_nodes]=m._incidence('input_protected','G');C[1,:m.n_nodes]=m._incidence('clip','clip_ref')
    C[2,m.index['mute_input']]=1;C[3,m.index['volume_top']]=1
    for i,k in enumerate(c.internal_indices):C[4+i,k]=1
    for i,k in enumerate(c.source_indices):C[9+i,k]=1
    for i,(_,plus,minus,_) in enumerate(m.OPAMPS):C[14+i,:m.n_nodes]=c.gain[i]*m._incidence(plus,minus)
    C[18,:m.n_nodes]=c.gain[4]*m._incidence('power_plus','power_minus')
    for i,k in enumerate(c.internal_indices):C[14+i,k]=-c.pole[i]
    C*=p.scales
    E=trans@p.decay@inv;N0=-trans@p.H0@L;N1=-trans@p.H1@L
    U0=trans@p.H0@p.force;U1=trans@p.H1@p.force
    O=C@v;D=-C@p.W@L;U=C@p.Q@p.force
    # Физические принадлежности: D6/D7; IC3A; IC3B+диоды; IC4A/B/Q1; TDA.
    ng=np.array([0,2,3,1,2,3,3,4,1,2,3,3,4])
    zg=np.array([0,0,1,1,1,1]+[2]*9+[3]*6+[4]*2+[1,2,3,3,4])
    og=np.array([0,2,3,3]+[1,2,3,3,4]*3)
    removed={}
    for name,a,rows,cols in [('E',E,zg,zg),('N0',N0,zg,ng),('N1',N1,zg,ng),('O',O,og,zg),('D',D,og,ng)]:
        mask=cols[None,:]>rows[:,None]
        removed[name]=float(np.max(abs(a[mask])))
        a[mask]=0
    data=dict(E=E,N0=N0,N1=N1,U0=U0,U1=U1,O=O,D=D,U=U,
              REC=v*p.scales[:,None],RN=-(p.W@L)*p.scales[:,None],RU=(p.Q@p.force)*p.scales)
    audit=dict(fs=fs,memory_basis_condition=float(np.linalg.cond(trans)),memory_algebraic_projection=float(np.max(abs(memory@p.Q))),
               removed_future_roundoff=removed,nonzero={k:int(np.count_nonzero(a)) for k,a in data.items()})
    return p,data,L,C,audit

def main():
    p,data,L,C,audit=prepare()
    def literal(a):
        if a.ndim==0:return f'{float(a):.17e}_f64'
        return '['+','.join(literal(v) for v in a)+']'
    def ty(a):return 'f64' if a.ndim==0 else f'[{ty(a[0])}; {len(a)}]'
    text='// Сгенерировано simulation/generate_exponential_kernel.py. Только опыт ETD2/48k.\n'
    text+='pub const FS: f64 = 48000.0;\n'
    for k,a in data.items():
        if k=='E': text+='# [cfg_attr(target_arch = \"arm\", unsafe(link_section = \".etd_coeff\"))]\n'
        text+=f'pub {"static" if k=="E" else "const"} {k}: {ty(a)} = {literal(a)};\n'
    (ROOT/'firmware/orange-dsp/src/generated_exponential.rs').write_text(text)
    np.savez_compressed(OUT/'kernel_coefficients_48000.npz',**data,L=L,C=C)
    (OUT/'kernel_preparation.json').write_text(json.dumps(audit,indent=2)+'\n')
    print(audit)
if __name__=='__main__':main()
