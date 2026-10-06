"""Ограниченное причинное дробление ETD2 по встроенной оценке памяти.

Сетка параметров оценки — исследовательские настройки, НЕ пороги приёмки или
слышимости. Малая оценка сравнивается с независимой полной траекторией.
Сигнал тот же аналитический, что у сохранённого эталона; реконструкция ADC
этим опытом не проверяется. Пересчёт отменяет всю пробную память.
"""
import json
from pathlib import Path
import numpy as np
from exponential_closed import ExponentialClosed,FullMNAParameters
from run_full_qualification import input_wave
from condensed_physical import CondensedPhysical
OUT=Path(__file__).resolve().parent/'experiments/solver_time/temporal'
reference=np.load(OUT.parents[1]/'architecture_decision/full_reference_6144000.npz')['states'][127::128]
levels=[ExponentialClosed(FullMNAParameters(sample_rate=48000*2**k,load='resistive')) for k in range(5)]
memory=CondensedPhysical()
rows=[]
for target in [.01,.003,.001]:
    state=(np.zeros(56),np.zeros(28),np.zeros(56));trace=[];work=[];accepted_counts=np.zeros(5,int);rejected_counts=np.zeros(5,int);unmet=0;maxdae=0.;maxres=0.
    def advance(start,tick,level):
        global unmet,maxdae,maxres
        p=levels[level];p.x=start[0].copy();p.y=start[1].copy();p.fprev=start[2].copy()
        p.fprev2=np.zeros(56)
        oldforce=p.fprev.copy()
        width=1 << (4-level)
        x,d=p.step(input_wave((tick+width)/768000,.1))
        maxres=max(maxres,d['error']);maxdae=max(maxdae,d['dae'])
        assert d['error']<1e-7
        estimate=p.P@p.H1@(p.fprev-oldforce)
        # Наблюдаем физическую память, а не размер нелинейной невязки.
        physical=estimate*p.scales
        cap_error=memory.e.T@physical[:p.model.n_nodes]/15.
        pole_error=physical[memory.internal_indices]/p.scales[memory.internal_indices]
        indicator=float(np.max(abs(np.r_[cap_error,pole_error])))
        if indicator<=target or level==len(levels)-1:
            accepted_counts[level]+=1
            unmet+=int(indicator>target)
            return (p.x.copy(),p.y.copy(),p.fprev.copy()),[(level,d['iterations'],False,indicator)]
        rejected_counts[level]+=1
        middle,a=advance(start,tick,level+1)
        end,b=advance(middle,tick+width//2,level+1)
        return end,[(level,d['iterations'],True,indicator)]+a+b
    for i in range(768):
        state,calls=advance(state,i*16,0)
        trace.append(state[0]*levels[0].scales)
        work.append((len(calls),sum(c[1] for c in calls),sum(c[2] for c in calls)))
    trace=np.array(trace);work=np.array(work)
    np.savez_compressed(OUT/f'adaptive_memory_integer_{target}.npz',states=trace,work=work)
    e=trace[:,31]-reference[:,31]
    row=dict(estimator_setting=target,relative_rms=float(np.linalg.norm(e)/np.linalg.norm(reference[:,31])),peak_v=float(max(abs(e))),
             max_scaled_state_error=float(np.max(abs(trace-reference)/levels[0].scales)),
             accepted_by_fs=dict(zip([str(int(p.fs)) for p in levels],accepted_counts.tolist())),rejected_by_fs=dict(zip([str(int(p.fs)) for p in levels],rejected_counts.tolist())),
             mean_calls_per_output=float(work[:,0].mean()),max_calls_per_output=int(work[:,0].max()),mean_newton_per_output=float(work[:,1].mean()),max_newton_per_output=int(work[:,1].max()),
             unmet_at_finest=unmet,max_residual=maxres,max_dae=maxdae)
    rows.append(row);print(row,flush=True)
    (OUT/'adaptive_memory_integer.json').write_text(json.dumps(rows,indent=2)+'\n')
