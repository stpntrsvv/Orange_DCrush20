"""Расширенные метрики всех длинных DI по P7, без слухового порога."""
import json,hashlib
from pathlib import Path
import numpy as np
OUT=Path(__file__).resolve().parent/'experiments/analytic_simplification'
rows={}
for level in ['100mv','250mv','1000mv']:
 rows[level]={}
 for label,folder,columns,index,base in [('A0','long_di',3,0,1),('A1','long_di',3,2,1),('A2','long_di_rational',2,0,1)]:
  path=OUT/folder/f'{level}.bin';d=np.memmap(path,dtype='<f4',mode='r').reshape(-1,columns)
  r=np.asarray(d[:,base],dtype=float);e=np.asarray(d[:,index],dtype=float)-r
  peak=int(np.argmax(abs(e)));cs=np.r_[0,np.cumsum(e*e)]
  blocks=len(e)//4096;win=np.hanning(4096);sp=np.zeros(2049)
  for i in range(0,blocks,256):
   y=e[i*4096:min(i+256,blocks)*4096].reshape(-1,4096)*win
   z=np.fft.rfft(y,axis=1);sp+=np.sum(abs(z)**2,axis=0)
  sp/=blocks*4096**2*np.mean(win*win);sp[1:-1]*=2;freq=np.fft.rfftfreq(4096,1/96000)
  over=np.flatnonzero(abs(e)>.01)
  longest=0
  if len(over):longest=int(max(map(len,np.split(over,np.flatnonzero(np.diff(over)!=1)+1))))
  row=dict(steps=len(e),seconds=len(e)/96000,relative_rms=float(np.linalg.norm(e)/np.linalg.norm(r)),rms_v=float(np.sqrt(np.mean(e*e))),peak_v=float(abs(e[peak])),peak_time_s=(peak+1)/96000,dc_v=float(e.mean()),absolute_percentiles_v=np.percentile(abs(e),[50,95,99,99.9]).tolist(),window_max_rms_v={str(ms):float(np.sqrt(((cs[int(ms*96):]-cs[:-int(ms*96)])/int(ms*96)).max())) for ms in [1,10,100]},samples_above_old_10mv=len(over),longest_above_old_10mv_us=longest/96000*1e6,hann4096_band_error_rms_v={f'{lo}-{hi}':float(np.sqrt(sp[(freq>=lo)&(freq<hi)].sum())) for lo,hi in [(0,20),(20,200),(200,2000),(2000,20000),(20000,48001)]})
  rows[level][label]=row
  print(level,label,'peak',row['peak_v'],'RMS',row['rms_v'],'time',row['peak_time_s'],flush=True)
(OUT/'long_di_metrics.json').write_text(json.dumps(dict(note='Independent trajectories versus P7 at same BDF2/96k; not independent long full f64, no hearing qualification. Windows are diagnostic resolutions. Old 10mV count is descriptive here.',cases=rows),indent=2)+'\n')
