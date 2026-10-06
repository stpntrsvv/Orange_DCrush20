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
OUT=Path(__file__).resolve().parent/'experiments/solver_time/temporal'
reference=np.load(OUT.parents[1]/'architecture_decision/full_reference_6144000.npz')['states'][127::128]
levels=[ExponentialClosed(FullMNAParameters(sample_rate=48000*2**k,load='resistive')) for k in range(5)]
rows=[]
for target in [.01,.003,.001]:
    state=(np.zeros(56),np.zeros(28),np.zeros(56));trace=[];work=[];accepted_counts=np.zeros(5,int);rejected_counts=np.zeros(5,int);unmet=0;maxdae=0.;maxres=0.
    def advance(start,t,level):
        global unmet,maxdae,maxres
        p=levels[level];p.x=start[0].copy();p.y=start[1].copy();p.fprev=start[2].copy()
        p.fprev2=np.zeros(56)
        oldforce=p.fprev.copy()
        x,d=p.step(input_wave(t+1/p.fs,.1))
        maxres=max(maxres,d['error']);maxdae=max(maxdae,d['dae'])
        assert d['error']<1e-7
        estimate=p.P@p.H1@(p.fprev-oldforce)
        # Наблюдаем физическую память, а не размер нелинейной невязки.
        cap=levels[0].model.C@((estimate*p.scales)[:levels[0].model.n_nodes])
        # Для нормированной оценки используем напряжения узлов и полюсов;
        # токи алгебраических источников не являются памятью.
        indices=list(range(p.model.n_nodes))+list(p.model.i_op_internal.values())+[p.model.i_power_internal]
        indicator=float(np.max(abs(estimate[indices])))
        if indicator<=target or level==len(levels)-1:
            accepted_counts[level]+=1
            unmet+=int(indicator>target)
            return (p.x.copy(),p.y.copy(),p.fprev.copy()),[(level,d['iterations'],False,indicator)]
        rejected_counts[level]+=1
        middle,a=advance(start,t,level+1)
        end,b=advance(middle,t+.5/p.fs,level+1)
        return end,[(level,d['iterations'],True,indicator)]+a+b
    for i in range(768):
        state,calls=advance(state,i/48000,0)
        trace.append(state[0]*levels[0].scales)
        work.append((len(calls),sum(c[1] for c in calls),sum(c[2] for c in calls)))
    trace=np.array(trace);work=np.array(work)
    np.savez_compressed(OUT/f'closed_adaptive_{target}.npz',states=trace,work=work)
    e=trace[:,31]-reference[:,31]
    row=dict(estimator_setting=target,relative_rms=float(np.linalg.norm(e)/np.linalg.norm(reference[:,31])),peak_v=float(max(abs(e))),
             max_scaled_state_error=float(np.max(abs(trace-reference)/levels[0].scales)),
             accepted_by_fs=dict(zip([str(int(p.fs)) for p in levels],accepted_counts.tolist())),rejected_by_fs=dict(zip([str(int(p.fs)) for p in levels],rejected_counts.tolist())),
             mean_calls_per_output=float(work[:,0].mean()),max_calls_per_output=int(work[:,0].max()),mean_newton_per_output=float(work[:,1].mean()),max_newton_per_output=int(work[:,1].max()),
             unmet_at_finest=unmet,max_residual=maxres,max_dae=maxdae)
    rows.append(row);print(row,flush=True)
    (OUT/'closed_adaptive.json').write_text(json.dumps(rows,indent=2)+'\n')
