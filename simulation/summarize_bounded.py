from pathlib import Path
import json,numpy as np,hashlib
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/bounded_newton'
result={'note':'Up to three local nonlinear attempts INCLUDING starting-point verification for MODE>=6. No backtracking, repeated solve or time subdivision. Newton for IC3B/other blocks, Halley for scalar TDA with bounded Newton fallback formula. Same P7 physical laws. Old f32 residual gates remain separate from additional f64 residual diagnostics.','variants':{},'hardware':{},'long_di':{}}
for d in sorted(O.glob('m*_k*')):
 if not (d/'metrics.json').exists():continue
 m=json.loads((d/'metrics.json').read_text());c={n:v['variants']['candidate'] for n,v in m['cases'].items()}
 result['variants'][d.name]={'old_gates_pass':sum(v['old_strict_gates_pass'] for v in c.values()),'cases':c,'work_counts':{p.stem:json.loads(p.read_text()) for p in sorted((d/'host').glob('*_work.json'))}}
for p in sorted(O.glob('20*/results.json')):
 manifest=json.loads((p.parent/'manifest.json').read_text());rows=json.loads(p.read_text())
 for row in rows:
  row.pop('scalar_attempts_iterations_fallbacks',None)
  row['loop_evaluations_attempts_applied_updates_all_calls']=row['raw'][13:16]
  row['saving_percent']=100*(1-row['mean'][0]/row['mean'][1])
  row['mean_cpu_output_budget_fraction']=row['mean_output_cycles'][0]/12500
  row['mean_dsp_output_budget_fraction']=row['mean_output_cycles'][0]/10000
 result['hardware'][p.parent.name]={'unit':'inner_96k' if manifest['stress'] else 'output_48k','rows':rows}
for d in sorted(O.glob('long_di*')):
 if not d.is_dir():continue
 result['long_di'][d.name]={}
 for p in sorted(d.glob('*mv.json')):
  m=json.loads(p.read_text());a=np.memmap(p.with_suffix('.bin'),dtype='<f4',mode='r').reshape(-1,2);assert len(a)==m['steps']
  e=a[:,0].astype(float)-a[:,1].astype(float);n=int(np.argmax(abs(e)))
  m['peak_time_s']=n/96000;m['peak_sample']=n;m['error_rms_v']=float(np.sqrt(np.mean(e*e)))
  m['one_second_windows']=[{'start_s':i/96000,'peak_v':float(abs(e[i:i+96000]).max()),'rms_v':float(np.sqrt(np.mean(e[i:i+96000]**2)))} for i in range(0,len(e),96000)]
  m['last_second_rms_v']=float(np.sqrt(np.mean(e[-96000:]**2)))
  result['long_di'][d.name][p.stem]=m
result['conditioning']=json.loads((O/'conditioning.json').read_text())
if (O/'residual_f64.json').exists():result['additional_residual_f64']=json.loads((O/'residual_f64.json').read_text())
result['P7_sha256']={str(p.relative_to(R)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [R/'firmware/orange-dsp/src/packed.rs',R/'firmware/orange-dsp/src/generated_packed.rs']}
(O/'summary.json').write_text(json.dumps(result,indent=2)+'\n');print(O/'summary.json')
