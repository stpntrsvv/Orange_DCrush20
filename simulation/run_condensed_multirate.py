"""Проверка разных частот точных блоков; линейная интерполяция границы явная.

Обработка офлайн по блокам. Для потока требуется буфер/задержка не менее
одного интервала каждой интерполируемой границы; это не «бесплатная причинность».
"""
import json
import numpy as np
from condensed_physical import *
from run_full_qualification import input_wave
from orange_full_mna import ROOT
OUT=ROOT/'simulation/experiments/architecture_decision'
PORT_GROUPS=[[0,1],[2,3],[4,5,6],[7]]
CAP_GROUPS=[list(range(6)),list(range(6,15)),list(range(15,21)),list(range(21,23))]
INTERNAL_GROUPS=[[23],[24],[25,26],[27]]
BOUNDARY=['b_plus','c_plus','power_plus','power_out']
SLOTS=[None,1,2,4]

def run(rates):
    previous_t=np.array([0.]);previous_y=np.array([0.]);metrics=[]
    for group,fs in enumerate(rates):
        p=CondensedPhysical(FullMNAParameters(load='resistive',sample_rate=fs),method='trap')
        p.blocks=[[0],[1]] if group==0 else [PORT_GROUPS[group]]
        indices=CAP_GROUPS[group]+INTERNAL_GROUPS[group]
        outside=[i for i in range(28) if i not in indices]
        time=(np.arange(round(.016*fs))+1)/fs
        incoming=np.interp(time,previous_t,previous_y)
        prepare=p.prepare_step
        def boundary(value):
            o=prepare(value)
            if group>0:o['diff'][SLOTS[group]]+=p.external
            return o
        p.prepare_step=boundary
        output=[];maxerror=0.;counts=[]
        for i,t in enumerate(time):
            p.external=incoming[i]
            u=input_wave(t,.1) if group==0 else 0.
            o=p.prepare_step(u);x,d=p.step(u)
            f,_,_=p.evaluate(p.r,o);maxerror=max(maxerror,float(np.max(abs(f[PORT_GROUPS[group]])/p.scales[PORT_GROUPS[group]])))
            output.append(x[p.model.index[BOUNDARY[group]]]);counts.append(d['iterations'])
            p.current[outside]=0;p.previous[outside]=0;p.trap_history[outside]=0
        previous_t=np.r_[0.,time];previous_y=np.r_[0.,output]
        metrics.append(dict(fs=fs,max_residual=maxerror,max_iterations=np.max(counts,axis=0).tolist()))
    ref=np.load(OUT/'full_reference_6144000.npz')['states']
    # На общей сетке 48 кГц, чтобы не подменять интеграцию интерполяцией выхода.
    t=(np.arange(768)+1)/48000; y=np.interp(t,previous_t,previous_y);truth=ref[127::128,31]
    return dict(rates=rates,relative_rms=float(np.linalg.norm(y-truth)/np.linalg.norm(truth)),peak_v=float(max(abs(y-truth))),blocks=metrics)

results=[]
for rates in [[384000]*4,[96000,384000,96000,96000],[192000,384000,96000,192000],[96000,384000,192000,192000]]:
    row=run(rates);results.append(row);print(row,flush=True)
    (OUT/'multirate.json').write_text(json.dumps(results,indent=2)+'\n')
