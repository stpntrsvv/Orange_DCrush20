"""Причина длинного Newton IC3B: локальная геометрия на независимой f64-истории."""
from pathlib import Path
import json,sys
import numpy as np
from condensed_physical import CondensedPhysical
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/bounded_newton';O.mkdir(exist_ok=True)
p=CondensedPhysical();m=p.model
files={'triangle100':'absolute_ports/reference_100mv.txt','triangle1000':'absolute_ports/reference_1000mv.txt','noise250':'architecture_decision/reference_noise.txt','step025':'batched_optimization/reference_step025.txt','step1':'batched_optimization/reference_step1.txt','multitone':'batched_optimization/reference_multitone.txt'}
files.update({f'output{i}':f'repeated_work/reference_output{i}.txt' for i in range(3)})
gain=p.gain[1]/(p.order*p.fs+p.pole[1]);dv=p.dd[1,5];dq=p.dd[1,6]
coeff={'gain':gain,'feedback_v':gain*dv,'feedback_q':gain*dq,'diode_v':p.id[6,5],'diode_q':p.id[6,6],'op_current_v':p.id[5,5],'op_current_q':p.id[5,6]}
print(coeff)
results={};samples=[]
for name,file in files.items():
 data=np.loadtxt(R/'simulation/experiments'/file);x=data[:,1:];z=np.c_[x[:,:m.n_nodes]@p.e,x[:,p.internal_indices]];ports=x[:,:m.n_nodes]@p.b
 cond=[];scaled=[];balanced=[];root_balanced=[];sp=[];iters=[];worst=None
 for n,row in enumerate(data):
  old=z[n-1] if n else np.zeros(28);prev=z[n-2] if n>1 else np.zeros(28)
  p.current=old;p.previous=prev;o=p.prepare_step(row[0]);r=ports[n,3:].copy();root=r.copy()
  r[2:4]=ports[n-1,5:7] if n else 0
  f,j,s=p.evaluate(r,o);jj=j[2:4,2:4]
  c=np.linalg.cond(jj);cs=np.linalg.cond(jj*np.array([15,.6])[None,:]/np.array([15,.01])[:,None])
  balanced.append(np.linalg.cond(jj/np.diag(jj)[:,None]))
  _,jr,_=p.evaluate(root,o);jroot=jr[2:4,2:4]
  root_balanced.append(np.linalg.cond(jroot/np.diag(jroot)[:,None]))
  delta=np.linalg.solve(jj,-f[2:4]);trial=r.copy();trial[2:4]+=delta
  ft,_,st=p.evaluate(trial,o)
  cond.append(c);scaled.append(cs);sp.append(abs(s[1]-z[n,24]))
  ratio=np.max(abs(ft[2:4])/p.scales[2:4])/max(np.max(abs(f[2:4])/p.scales[2:4]),1e-30)
  if worst is None or ratio>worst['residual_growth']:
   worst=dict(sample=n,input=row[0],guess=r[2:4].tolist(),root=root[2:4].tolist(),delta=delta.tolist(),jacobian=jj.tolist(),raw_condition=c,scaled_condition=cs,initial_pole=s[1],root_pole=z[n,24],trial_pole=st[1],residual_growth=float(ratio))
  # Stable scalar parameters and exact root, for independent bounded-solver prototypes.
  samples.append([row[0],o['current'][6],o['diff'][1]+p.dd[1,4]*r[1],o['current'][5],o['h'][24],*root[2:4],z[n,24]])
 results[name]={'row_balanced_condition_max':max(balanced),'root_row_balanced_condition_max':max(root_balanced),'raw_condition_max':max(cond),'scaled_condition_max':max(scaled),'initial_pole_error_max_v':max(sp),'worst_full_step':worst}
 print(name,results[name],flush=True)
np.array(samples).tofile(O/'clip_samples_f64.bin')
(O/'conditioning.json').write_text(json.dumps({'coefficients':coeff,'cases':results,'format':['input','diode_origin','diff_origin_plus_IC3A','amp_current_origin','pole_history','root_v','root_q','root_s']},indent=2)+'\n')
