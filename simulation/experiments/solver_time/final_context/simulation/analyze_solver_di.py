"""Полные DI: расширенные метрики против P7, без утверждения о f64/слышимости."""
from pathlib import Path
import json,hashlib
import numpy as np
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'simulation/experiments/solver_time'
rows={}
for path in sorted((OUT/'long_di').glob('*.bin')):
    data=np.memmap(path,dtype='<f4',mode='r').reshape(-1,2)
    e=data[:,0].astype(float)-data[:,1];ref=data[:,1].astype(float)
    rms=float(np.sqrt(np.mean(e*e)));den=float(np.sqrt(np.mean(ref*ref)))
    energy=np.cumsum(e*e);windows={}
    for ms in [1,10,100]:
        n=96*ms;sums=energy[n:]-energy[:-n]
        windows[str(ms)]=float(np.sqrt(max(energy[n-1],sums.max())/n))
    # Неперекрывающиеся окна Hann 4096, без независимой нормировки записей.
    size=4096;win=np.hanning(size);power=np.zeros(size//2+1);count=0
    for start in range(0,len(e)-size+1,size):
        f=np.fft.rfft(e[start:start+size]*win);power+=abs(f)**2;count+=1
    power/=count*size*size*np.mean(win*win);power[1:-1]*=2
    freq=np.fft.rfftfreq(size,1/96000)
    bands={f'{lo}-{hi}':float(np.sqrt(power[(freq>=lo)&(freq<hi)].sum())) for lo,hi in [(0,20),(20,200),(200,2000),(2000,20000),(20000,48001)]}
    raw=data.view('<u4');different=int(np.count_nonzero(raw[:,0]!=raw[:,1]))
    a=np.abs(e)
    row=dict(internal_steps=len(e),seconds=len(e)/96000,rms_error_v=rms,relative_rms=rms/den,error_db=20*np.log10(rms/den) if rms else None,
             peak_v=float(a.max()),mean_error_v=float(e.mean()),error_abs_percentile_v=np.percentile(a,[50,95,99,99.9]).tolist(),
             output_bits_different=different,window_max_rms_v=windows,hann_band_error_rms_v=bands,
             over_old_10mv_samples=int(np.count_nonzero(a>.01)),last_100ms_rms_v=float(np.sqrt(np.mean(e[-9600:]**2))),
             sha256=hashlib.file_digest(path.open('rb'),'sha256').hexdigest())
    rows[path.name]=row
    print(path.name,'peak',row['peak_v'],'RMS',rms,'different',different,flush=True)
    del e,ref,data,energy,raw,a
(OUT/'long_di_metrics.json').write_text(json.dumps(dict(note='S8 versus P7 on same BDF2/96k, not independent full f64 and not listening. Raw output before audio decimation.',cases=rows),indent=2)+'\n')
