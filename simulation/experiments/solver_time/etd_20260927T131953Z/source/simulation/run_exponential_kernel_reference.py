"""Независимая полная дескрипторная ETD2-система (56 координат) для Rust-ядра."""
from pathlib import Path
import numpy as np,json
from exponential_closed import *
OUT=Path(__file__).resolve().parent/'experiments/solver_time/temporal'
source=OUT.parents[1]/'repeated_work'
rows=[]
for case in range(3):
    inputs=np.loadtxt(source/f'reference_output{case}.txt')[1::2,0].astype(np.float32)
    p=ExponentialClosed(FullMNAParameters(load='resistive',sample_rate=48000))
    trace=[];errors=[];daes=[]
    for u in inputs:
        x,d=p.step(float(u));trace.append(np.r_[float(u),x]);errors.append(d['error']);daes.append(d['dae'])
    np.savetxt(OUT/f'reference_etd_{case}.txt',trace,fmt='%.17g')
    row=dict(case=case,steps=len(inputs),residual=max(errors),dae=max(daes),failures=int(np.count_nonzero(np.array(errors)>1e-7)))
    rows.append(row);print(row,flush=True)
(OUT/'kernel_reference.json').write_text(json.dumps(rows,indent=2)+'\n')
