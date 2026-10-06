"""Сетка BE/BDF2/трапеций и отдельная ошибка времени относительно полной MNA.

Без --simulate разбирает сохранённые траектории. Эталон создаётся отдельно
run_condensed_reference.py, исходные уравнения OrangeFullMNA не меняются.
"""
import argparse,json
import numpy as np
from condensed_physical import CondensedPhysical,FullMNAParameters
from orange_full_mna import ROOT
from run_full_qualification import input_wave
OUT=ROOT/'simulation/experiments/architecture_decision'

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--simulate',action='store_true');a=ap.parse_args()
 reference=np.load(OUT/'full_reference_6144000.npz')['states'];earlier=np.load(OUT/'full_reference_3072000.npz')['states']
 rows=[];timing=[]
 for method in ['bdf2','trap']:
  for fs in [48000,96000,192000,384000]:
   path=OUT/f'condensed_{method}_{fs}.npz'
   if a.simulate:
    p=CondensedPhysical(FullMNAParameters(sample_rate=fs,load='resistive'),method=method);trace=[];errors=[];iters=[]
    for i in range(round(fs*.016)):
     x,d=p.step(input_wave((i+1)/fs,.1));trace.append(x);errors.append(d['error']);iters.append(d['iterations'])
    np.savez_compressed(path,states=trace,fs=fs)
    timing.append(dict(method=method,fs=fs,max_residual=max(errors),failures=sum(e>1e-8 for e in errors),mean_iters=np.mean(iters,axis=0).tolist(),max_iters=np.max(iters,axis=0).tolist()))
   x=np.load(path)['states'];factor=6144000//fs;r=reference[factor-1::factor];e=x[:,31]-r[:,31]
   e48=x[fs//48000-1::fs//48000,31]-reference[127::128,31]
   row=dict(method=method,fs=fs,relative_rms=float(np.linalg.norm(e)/np.linalg.norm(r[:,31])),peak_v=float(max(abs(e))),relative_rms_at_48k=float(np.linalg.norm(e48)/np.linalg.norm(reference[127::128,31])),peak_at_48k_v=float(max(abs(e48))))
   rows.append(row);print(row,flush=True)
 (OUT/'timestep_comparison.json').write_text(json.dumps(rows,indent=2)+'\n')
 fine=dict(relative_rms=float(np.linalg.norm(earlier[:,31]-reference[1::2,31])/np.linalg.norm(reference[1::2,31])),peak_v=float(max(abs(earlier[:,31]-reference[1::2,31]))))
 (OUT/'fine_reference_convergence.json').write_text(json.dumps(fine,indent=2)+'\n')
 if timing:(OUT/'timestep_candidate.json').write_text(json.dumps(timing,indent=2)+'\n')
if __name__=='__main__':main()
