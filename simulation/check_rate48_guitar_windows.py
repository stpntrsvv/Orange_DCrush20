"""Локальный f64-арбитр гитарных событий, с явно заимствованной начальной памятью P7/48.
Это не независимая f64-проверка всей длинной траектории.
"""
from pathlib import Path
import json,numpy as np
from orange_full_mna import OrangeFullMNA,FullMNAParameters
from condensed_physical import CondensedPhysical
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/rate48';D=O/'guitar_f64_windows';D.mkdir(exist_ok=True)
pcm=np.fromfile(O/'input.pcm16',dtype='<i2');peak=float(max(abs(pcm.astype(np.int32))));result={}
for name,level in [('100mv',.1),('250mv',.25),('1000mv',1.)]:
 j=json.loads((O/'control48'/f'{name}.json').read_text());worst=j['peak_sample'];start=worst//16384*16384;end=min(len(pcm),worst+2048)
 checkpoints=np.fromfile(O/'control48'/f'{name}_checkpoints.bin',dtype='<f4').reshape(-1,4,28);memory=checkpoints[start//16384-1,2:4].astype(float)
 p=CondensedPhysical(FullMNAParameters(sample_rate=48000,load='resistive'));m=p.model;lift=p.e@np.linalg.inv(p.e.T@p.e)
 states=np.zeros((2,m.size));states[:,:m.n_nodes]=memory[:,:23]@lift.T;states[:,p.internal_indices]=memory[:,23:]
 m.state_delta=states[0]/m.state_scale;m.previous_delta=states[1]/m.state_scale;m.steps=start;m.previous_input_v=float(np.float32(np.float32(pcm[start-1])/np.float32(peak))*np.float32(level))
 c=np.memmap(O/f'{name}.bin',dtype='<f4',mode='r').reshape(-1,3)[start:end,0].astype(float)
 b=np.memmap(O/'control48'/f'{name}.bin',dtype='<f4',mode='r').reshape(-1,3)[start:end,2].astype(float)
 refs=[];maxres=0.;cont=0;failed=None
 for i in range(start,end):
  v=float(np.float32(np.float32(pcm[i])/np.float32(peak))*np.float32(level))
  try:x,d=m.step(v)
  except RuntimeError as e:failed={'sample':i,'error':str(e)};break
  refs.append(x.copy());maxres=max(maxres,d['scaled_residual']);cont+=d['continuation_steps']>0
 xx=np.array(refs);xx.astype('<f8').tofile(D/f'{name}.bin');ref=xx[:,m.index['power_out']]
 def metrics(a):
  e=a[:len(ref)]-ref;k=int(np.argmax(abs(e)));return {'peak_v':float(abs(e).max()),'peak_global_sample':start+k,'rms_v':float(np.sqrt(np.mean(e*e))),'relative_rms':float(np.linalg.norm(e)/np.linalg.norm(ref))}
 result[name]={'initial_state_source':'P7 f32/48k own full-DI checkpoint; memory lifted to full MNA. Conditional local validation, not full-record independent f64.','start_sample':start,'end_sample':start+len(ref),'initial_memory_current_previous':memory.tolist(),'max_reference_residual':maxres,'reference_continuations':cont,'reference_failure':failed,'candidate48_vs_local_f64':metrics(c),'P7_48_vs_local_f64':metrics(b)}
 print(name,result[name],flush=True);(D/'metrics.json').write_text(json.dumps(result,indent=2)+'\n')
