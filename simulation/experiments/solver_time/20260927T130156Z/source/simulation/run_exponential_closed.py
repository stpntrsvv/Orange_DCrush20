import json
from pathlib import Path
import numpy as np
from exponential_closed import *
from run_full_qualification import input_wave
OUT=Path(__file__).resolve().parent/'experiments/solver_time/temporal'
REF=OUT.parents[1]/'architecture_decision'
reference=np.load(REF/'full_reference_6144000.npz')['states']
rows=[]
for fs in [48000,96000,192000,384000]:
    p=ExponentialClosed(FullMNAParameters(sample_rate=fs,load='resistive'),order=3)
    print('prepare',fs,p.audit,flush=True)
    trace=[];errors=[];iters=[];daes=[];rejects=[]
    for i in range(round(fs*.016)):
        x,d=p.step(input_wave((i+1)/fs,.1))
        trace.append(x);errors.append(d['error']);iters.append(d['iterations']);daes.append(d['dae']);rejects.append(d['rejected'])
        if d['error']>1e-7:
            print('failure',fs,i,d,flush=True);break
    x=np.array(trace);ref=reference[6144000//fs-1::6144000//fs][:len(x)]
    np.savez_compressed(OUT/f'closed_etd3_{fs}.npz',states=x,errors=errors,iterations=iters,dae=daes,rejected=rejects)
    e=x[:,31]-ref[:,31]
    row=dict(fs=fs,steps=len(x),relative_rms=float(np.linalg.norm(e)/np.linalg.norm(ref[:,31])),peak_v=float(max(abs(e))),
        maximum_residual=max(errors),maximum_dae=max(daes),failures=int(np.count_nonzero(np.array(errors)>1e-7)),mean_iterations=float(np.mean(iters)),maximum_iterations=max(iters),audit=p.audit)
    rows.append(row);print(row,flush=True)
    (OUT/'closed_etd3.json').write_text(json.dumps(rows,indent=2)+'\n')
