from pathlib import Path
import json,numpy as np
from condensed_physical import CondensedPhysical
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/bounded_newton'
p=CondensedPhysical();m=p.model;results={}
files={'triangle100':'absolute_ports/reference_100mv.txt','triangle1000':'absolute_ports/reference_1000mv.txt','noise250':'architecture_decision/reference_noise.txt','step025':'batched_optimization/reference_step025.txt','step1':'batched_optimization/reference_step1.txt','multitone':'batched_optimization/reference_multitone.txt'}
files.update({f'output{i}':f'repeated_work/reference_output{i}.txt' for i in range(3)})
G=p.gain[4]/(p.order*p.fs+p.pole[4]);B=G*p.dd[4,10];A=p.id[10,10]
for name,file in files.items():
 data=np.loadtxt(R/'simulation/experiments'/file);x=data[:,1:];z=np.c_[x[:,:m.n_nodes]@p.e,x[:,p.internal_indices]];ports=(x[:,:m.n_nodes]@p.b)[:,3:]
 h=2*np.vstack([np.zeros((1,28)),z[:-1]])-.5*np.vstack([np.zeros((2,28)),z[:-2]])
 ic=h[:,:23]@p.ih[10]+data[:,0]*p.id[10,0]
 od=h[:,:23]@p.dh[4]+data[:,0]*p.dd[4,0]+ports[:,5]*p.dd[4,8]+ports[:,6]*p.dd[4,9]
 H=p.fs*h[:,27]/(p.order*p.fs+p.pole[4])+G*od
 lo=(p.fs*h[:,27]-8e6)/(p.order*p.fs);hi=(p.fs*h[:,27]+8e6)/(p.order*p.fs)
 v=np.clip(H/(1-B),-21,21);hist=[]
 for k in range(3):
  sf=H+B*v;ss=np.clip(sf,lo,hi)
  law=np.array([m._power_output_law_with_derivatives(s,i) for s,i in zip(ss,ic+A*v)])
  f=v-law[:,0];j=1-law[:,1]*B*((sf>lo)&(sf<hi))-law[:,2]*A
  v-=f/j
  st=np.clip(H+B*v,lo,hi);w=int(np.argmax(abs(st-z[:,27])))
  hist.append({'peak_v':float(max(abs(v-ports[:,7]))),'pole_error_v':float(max(abs(st-z[:,27]))),'worst':w,'guess_v':float(v[w]),'root_v':float(ports[w,7]),'pole':float(st[w]),'root_pole':float(z[w,27])})
 results[name]=hist;print(name,hist,flush=True)
(O/'tda_seed_audit.json').write_text(json.dumps({'feedback_v':B,'current_v':A,'cases':results},indent=2)+'\n')
