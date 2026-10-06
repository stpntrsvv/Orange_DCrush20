"""Контроль выходной точности P7/96 и Bounded/96 на тех же синусах; не новые решатели."""
from pathlib import Path
import json,numpy as np
from orange_full_mna import OrangeFullMNA,FullMNAParameters
R=Path(__file__).resolve().parents[1];D=R/'simulation/experiments/rate48/sine';out={}
for f in sorted(D.glob('*.control96')):
 a=np.fromfile(f,dtype='<f4').reshape(-1,5);m=OrangeFullMNA(FullMNAParameters(sample_rate=96000,load='resistive'));m.steps=1;ref=[];maxres=0.;cont=0;failure=None
 for row in a:
  try:x,d=m.step(float(row[0]))
  except RuntimeError as err:failure={'sample':len(ref),'message':str(err)};break
  ref.append(x[m.index['power_out']]);maxres=max(maxres,d['scaled_residual']);cont+=d['continuation_steps']>0
 ref=np.array(ref);ref.astype('<f8').tofile(f.with_suffix('.reference96_output'))
 out[f.stem]={'reference_complete':failure is None,'reference_failure':failure,'compared_internal_steps':len(ref),'planned_internal_steps':len(a),'reference_max_residual':maxres,'reference_continuations':cont,'note':'Same interpolated input and same 96k grid. Output-only accuracy diagnostic; not full state qualification.'}
 for i,name in [(1,'bounded96'),(2,'P7_96')]:
  e=a[:len(ref),i].astype(float)-ref;out[f.stem][name]={'peak_v':float(abs(e).max()),'relative_rms':float(np.linalg.norm(e)/np.linalg.norm(ref)),'local_overruns':int(sum(a[:,i+2]>1e-4))}
 print(f.stem,out[f.stem],flush=True);(D/'control96_metrics.json').write_text(json.dumps(out,indent=2)+'\n')
