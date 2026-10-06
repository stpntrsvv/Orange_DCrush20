"""Сводка проверок Newton; никаких новых слуховых границ."""
from pathlib import Path
import json, hashlib
import numpy as np
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/newton_tracking'
def main():
 out={'note':'P7 physics, BDF2/96k; fixed 1/2/3 local corrections, each trajectory owns both physical history layers. Finite inaccurate steps advance. No LUT. Gates are historical numerical checks, not hearing thresholds. Hardware fail count for candidate means local residual above tolerance, not a frozen step.','variants':{},'hardware':{},'long_di':{}}
 for mode in range(4):
  for k in ([1,2,3,16] if mode==3 else [1,2,3]):
   name=f'm{mode}_k{k}';m=json.loads((O/name/'metrics.json').read_text())
   cases={n:c['variants']['candidate'] for n,c in m['cases'].items()}
   v=dict(old_gates_pass=sum(c['old_strict_gates_pass'] for c in cases.values()),cases=cases)
   v['small_residual_wrong_trajectory']={}
   for n in cases:
    d=np.fromfile(O/name/'host'/f'{n}.bin',dtype='<f8').reshape(-1,236)
    low=d[:,8]<=1e-4
    e=np.abs(d[:,2]-d[:,1]);mem=np.max(np.abs(d[:,124:152]-d[:,152:180]),axis=1)
    w=int(np.argmax(np.where(low,e,-1)))
    v['small_residual_wrong_trajectory'][n]={'low_full_residual_steps':int(low.sum()),'max_output_error_at_low_full_residual_v':float(e[low].max()) if low.any() else None,'max_memory_difference_from_P7_at_low_full_residual_v':float(mem[low].max()) if low.any() else None,'worst_sample':w,'full_residual_at_worst':float(d[w,8]),'local_residual_at_worst':float(d[w,4])}
   out['variants'][name]=v
 for p in sorted(O.glob('20*/results.json')):
  m=json.loads((p.parent/'manifest.json').read_text());label='stress_inner_96k' if m['stress'] else 'whole_output_48k'
  rows=json.loads(p.read_text())
  for row in rows:
   row['candidate_above_local_tol_not_freeze']=row['failures_all'][0]
   row['saving_percent']=100*(1-row['mean'][0]/row['mean'][1])
   row['cpu_budget_fraction']=row['mean_output_cycles'][0]/12500
   row['dsp_budget_fraction']=row['mean_output_cycles'][0]/10000
  out['hardware'][label]={'path':str(p.relative_to(R)),'rows':rows}
 for p in sorted((O/'long_di').glob('*mv.json')):
  m=json.loads(p.read_text());d=np.memmap(p.with_suffix('.bin'),dtype='<f4',mode='r').reshape(-1,4)
  m['expanded']=[]
  block=96000
  for k in range(3):
   e=d[:,k].astype(float)-d[:,3].astype(float);peak=int(np.argmax(np.abs(e)))
   bins=[]
   for start in range(0,len(e),block):
    ee=e[start:start+block];bins.append({'start_s':start/96000,'rms_v':float(np.sqrt(np.mean(ee*ee))),'peak_v':float(np.max(np.abs(ee)))})
   m['expanded'].append({'peak_sample':peak,'peak_time_s':peak/96000,'error_rms_v':float(np.sqrt(np.mean(e*e))),'one_second_windows':bins,'last_second_rms_v':float(np.sqrt(np.mean(e[-block:]**2)))})
  out['long_di'][p.stem]=m
 out['P7_source_hashes']={str(p.relative_to(R)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [R/'firmware/orange-dsp/src/packed.rs',R/'firmware/orange-dsp/src/generated_packed.rs']}
 (O/'summary.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
 print('Written',O/'summary.json')
if __name__=='__main__':main()
