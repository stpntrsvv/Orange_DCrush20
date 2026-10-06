"""Независимая проверка C2 на сохранённом полном f64-эталоне."""
import json
from pathlib import Path
import numpy as np
from exponential_passive import ExponentialPassive,FullMNAParameters
from run_full_qualification import input_wave
from analyze_repeated import expanded
OUT=Path(__file__).resolve().parent/'experiments/solver_time/temporal'
OUT.mkdir(parents=True,exist_ok=True)
REF=OUT.parents[1]/'architecture_decision'
reference=np.load(REF/'full_reference_6144000.npz')['states']
rows=[]
for fs in [48000,96000,192000,384000]:
    p=ExponentialPassive(FullMNAParameters(sample_rate=fs,load='resistive'),interpolation=2)
    trace=[];errors=[];iters=[]
    for i in range(round(fs*.016)):
        x,d=p.step(input_wave((i+1)/fs,.1))
        trace.append(x);errors.append(d['error']);iters.append(d['iterations'])
    x=np.array(trace);ref=reference[6144000//fs-1::6144000//fs]
    np.savez_compressed(OUT/f'passive_quadratic_{fs}.npz',states=x,errors=errors,iterations=iters)
    e=x[:,31]-ref[:,31]
    e48=x[fs//48000-1::fs//48000,31]-reference[127::128,31]
    row=dict(fs=fs,relative_rms=float(np.linalg.norm(e)/np.linalg.norm(ref[:,31])),peak_v=float(max(abs(e))),
        relative_rms_at_48k=float(np.linalg.norm(e48)/np.linalg.norm(reference[127::128,31])),peak_at_48k_v=float(max(abs(e48))),
        maximum_residual=max(errors),failures=int(np.count_nonzero(np.array(errors)>1e-8)),mean_iterations=np.mean(iters,axis=0).tolist(),
        maximum_iterations=np.max(iters,axis=0).tolist(),audit={k:float(v) for k,v in p.audit.items()},
        max_scaled_state_error=float(np.max(abs(x-ref)/p.model.state_scale)))
    rows.append(row);print(row,flush=True)
    (OUT/'passive_quadratic.json').write_text(json.dumps(rows,indent=2)+'\n')
