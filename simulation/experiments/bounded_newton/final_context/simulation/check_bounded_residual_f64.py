"""Дополнительная f64-проверка полной MNA из фактической f32-памяти.
Старые f32-проверки не заменяются и не ослабляются.
"""
from pathlib import Path
import json,numpy as np
from condensed_physical import CondensedPhysical
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/bounded_newton';p=CondensedPhysical();m=p.model
m.steps=1;m.operating_point[:]=0;m.previous_delta[:]=0
lift=p.e@np.linalg.inv(p.e.T@p.e)
result={}
for path in sorted((O/'m7_k3/host').glob('*.bin')):
 d=np.fromfile(path,dtype='<f8').reshape(-1,236);result[path.stem]={}
 for col,label in [(0,'candidate'),(1,'P7')]:
  x=d[:,12+56*col:68+56*col];z=d[:,124+28*col:152+28*col].astype(np.float32)
  hist=np.zeros_like(z);hist[1:]=np.float32(2)*z[:-1];hist[2:]-=np.float32(.5)*z[:-2]
  r=(x[:,:m.n_nodes]@p.b)[:,3:];drive=np.c_[d[:,0],np.zeros((len(d),2)),r]
  nodes=hist[:,:23].astype(float)@p.nh.T+drive@p.nd.T
  currents=hist[:,:23].astype(float)@p.ih.T+drive@p.id.T
  xx=np.zeros_like(x);xx[:,:m.n_nodes]=nodes;xx[:,p.internal_indices]=z[:,23:]
  for j,node in enumerate(m.source_nodes):xx[:,m.i_voltage_source[node]]=currents[:,j]
  xx[:,p.source_indices]=currents[:,np.array(p.amp_ports)+3]
  norms=[];kcls=[]
  for n in range(len(d)):
   history=np.zeros(m.size);history[:m.n_nodes]=lift@hist[n,:23];history[p.internal_indices]=hist[n,23:]
   m.state_delta=history/(2*m.state_scale)
   residual,_=m.residual_jacobian_physical(xx[n],d[n,0],False)
   norms.append(float(max(abs(residual)/m.row_scale)));kcls.append(float(max(abs(residual[:m.n_nodes]))))
  worst=int(np.argmax(norms))
  result[path.stem][label]={'max_full_residual':max(norms),'max_kcl_a':max(kcls),'worst_sample':worst,'same_old_residual_limit_pass':max(norms)<1e-4,'old_f32_full_residual':float(d[:,8+col].max())}
 print(path.stem,result[path.stem],flush=True)
(O/'residual_f64.json').write_text(json.dumps({'note':'Additional diagnostic only. Full MNA laws, f64 reconstruction with the candidate/P7 actual f32 physical histories; original f32 metrics kept. Not a new trajectory or a new threshold.','cases':result},indent=2)+'\n')
