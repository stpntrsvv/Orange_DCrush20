# Запускать с PYTHONPATH=simulation. У этих шумовых входов нет хвоста отпускания.
"""Независимая полная MNA f64 на той же сетке 48к; синус и отпускание."""
from pathlib import Path
import json,numpy as np
from orange_full_mna import OrangeFullMNA,FullMNAParameters,ROOT
from condensed_physical import CondensedPhysical
R=ROOT;O=R/'simulation/experiments/tda48/noise_short';p=CondensedPhysical(FullMNAParameters(sample_rate=48000,load='resistive'));result={}
for f in sorted(O.glob('*.input')):
 u=np.fromfile(f,dtype='<f4');c=np.fromfile(f.with_suffix('.candidate'),dtype='<f4').reshape(-1,68).astype(float)
 m=OrangeFullMNA(FullMNAParameters(sample_rate=48000,load='resistive'));m.steps=1
 xx=[];maxres=0.;maxkcl=0.;restarts=0
 for v in u:
  x,d=m.step(float(v));xx.append(x.copy());maxres=max(maxres,d['scaled_residual']);maxkcl=max(maxkcl,d['kcl_a']);restarts+=d['continuation_steps']>0
 x=np.array(xx);x.astype('<f8').tofile(f.with_suffix('.reference'))
 z=c[:,12:40];prev=c[:,40:68];h=np.zeros_like(z,dtype=np.float32);h[1:]=2*z[:-1].astype(np.float32);h[2:]-=np.float32(.5)*z[:-2].astype(np.float32)
 drive=np.c_[u,np.zeros((len(u),2)),c[:,4:12]];nodes=h[:,:23].astype(float)@p.nh.T+drive@p.nd.T;curr=h[:,:23].astype(float)@p.ih.T+drive@p.id.T
 recovered=np.zeros_like(x);recovered[:,:m.n_nodes]=nodes;recovered[:,p.internal_indices]=z[:,23:]
 for j,node in enumerate(m.source_nodes):recovered[:,m.i_voltage_source[node]]=curr[:,j]
 recovered[:,p.source_indices]=curr[:,np.array(p.amp_ports)+3]
 e=c[:,1]-x[:,m.index['power_out']];ref=x[:,m.index['power_out']];refmemory=np.c_[x[:,:m.n_nodes]@p.e,x[:,p.internal_indices]];mem=abs(z-refmemory).max(axis=0)
 scaled=abs((recovered-x)/m.state_scale);peak=float(abs(e).max());rms=float(np.linalg.norm(e)/np.linalg.norm(ref));state=float(scaled.max())
 # Старая проверка восстановленных f32-координат из собственной истории.
 mm=OrangeFullMNA(FullMNAParameters(sample_rate=48000,load='resistive'));mm.steps=1;mm.operating_point[:]=0;mx=0.;kcl=0.
 recovered32=recovered.astype(np.float32).astype(float)
 for i,v in enumerate(u):
  mm.state_delta=(recovered32[i-1]/mm.state_scale) if i else np.zeros(mm.size)
  mm.previous_delta=(recovered32[i-2]/mm.state_scale) if i>1 else np.zeros(mm.size)
  rr,_=mm.residual_jacobian_physical(recovered32[i],float(v),False);mx=max(mx,float(max(abs(rr)/mm.row_scale)));kcl=max(kcl,float(max(abs(rr[:mm.n_nodes]))))
 result[f.stem]={'samples':len(u),'full_f64_max_residual':maxres,'full_f64_max_kcl_a':maxkcl,'reference_continuations':restarts,'relative_rms':rms,'peak_v':peak,'scaled_state_max':state,'old_reconstructed_f32_residual':mx,'old_kcl_a':kcl,'old_gates_pass':rms<1e-4 and peak<.01 and state<.003 and mx<1e-4,'local_overruns':int(sum(c[:,2]>1e-4)),'cap_memory_peak_v':float(max(mem[:23])),'pole_memory_peak_v':float(max(mem[23:])),'memory_by_coordinate_v':mem.tolist(),'release_peak_error_v':None,'release_rms_error_v':None}
 print(f.stem,result[f.stem],flush=True);(O/'metrics.json').write_text(json.dumps(result,indent=2)+'\n')
