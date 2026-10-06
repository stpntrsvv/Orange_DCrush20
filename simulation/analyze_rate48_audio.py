"""Полные DI и общие материалы прослушивания. Никаких новых слуховых порогов."""
from pathlib import Path
import json,wave,hashlib
import numpy as np
from apply_cab_ir import read_wav,fft_convolve_blocks
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/rate48';D=O/'audio';D.mkdir(exist_ok=True)
def metrics(a,b,electrical=True):
 a=np.asarray(a,dtype=float);b=np.asarray(b,dtype=float);e=a-b;n=int(np.argmax(abs(e)));energy=np.mean(e*e);ref=np.mean(b*b)
 z={'samples':len(a),'rms_v':float(np.sqrt(energy)),'relative_rms':float(np.sqrt(energy/ref)),'error_to_signal_db':float(10*np.log10(energy/ref)),'peak_v':float(abs(e[n])),'peak_sample':n,'peak_time_s':n/48000,'candidate_at_peak_v':float(a[n]),'control_at_peak_v':float(b[n]),'dc_error_v':float(e.mean()),'absolute_error_percentiles_v':np.percentile(abs(e),[50,95,99,99.9]).tolist()}
 cs=np.r_[0,np.cumsum(e*e)];z['window_max_rms_v']={str(ms):float(np.sqrt(np.maximum(0,(cs[int(48*ms):]-cs[:-int(48*ms)])/int(48*ms)).max())) for ms in [1,10,100,1000]}
 z['one_second']=[{'start_s':i/48000,'rms_v':float(np.sqrt(np.mean(e[i:i+48000]**2))),'peak_v':float(abs(e[i:i+48000]).max())} for i in range(0,len(e),48000)]
 z['old_10mv_samples']=int(np.sum(abs(e)>.01));mask=abs(e)>.01;edges=np.flatnonzero(np.diff(np.r_[False,mask,False]));z['old_10mv_longest_ms']=float(max(edges[1::2]-edges[::2],default=0)/48)
 nfft=48000;window=np.hanning(nfft);bands=[(0,20),(20,200),(200,2000),(2000,20000),(20000,24001)];freq=np.fft.rfftfreq(nfft,1/48000);sums=np.zeros(5);reference=np.zeros(5);count=0
 for i in range(0,len(e)-nfft+1,nfft):
  E=abs(np.fft.rfft(e[i:i+nfft]*window))**2;B=abs(np.fft.rfft(b[i:i+nfft]*window))**2
  E[1:-1]*=2;B[1:-1]*=2
  for k,(lo,hi) in enumerate(bands):sel=(freq>=lo)&(freq<hi);sums[k]+=sum(E[sel]);reference[k]+=sum(B[sel])
  count+=1
 z['hann_one_second_band_error_rms_v']={f'{lo}-{hi}':float(np.sqrt(sums[k]/count/nfft/sum(window**2))) for k,(lo,hi) in enumerate(bands)}
 z['load_6p5ohm_error']={'current_rms_a':z['rms_v']/6.5,'current_peak_a':z['peak_v']/6.5,'power_rms_w':float(np.sqrt(np.mean(((a*a-b*b)/6.5)**2)))}
 if not electrical:
  for key in ['load_6p5ohm_error','old_10mv_samples','old_10mv_longest_ms']:z.pop(key,None)
  def units(v):
   if isinstance(v,dict):return {k.replace('_v','_units'):units(x) for k,x in v.items()}
   if isinstance(v,list):return [units(x) for x in v]
   return v
  z=units(z)
 return z
IR=R/'simulation/experiments/di_rust_cab/ir_local/OD-UK112-V30-DYN-57-P10-30.wav';fs,ir=read_wav(IR)
t=np.arange(round(len(ir)*48000/fs))*fs/48000;idx=np.floor(t).astype(int)[:,None]+np.arange(-32,33);delta=t[:,None]-idx
weights=np.sinc(delta)*np.where(abs(delta)<=32,.5+.5*np.cos(np.pi*delta/32),0);weights/=weights.sum(axis=1,keepdims=True)
ir=(weights*np.where((idx>=0)&(idx<len(ir)),ir[np.clip(idx,0,len(ir)-1)],0)).sum(axis=1);ir-=ir.mean()
rows={};maximum=0.;fullmetrics={}
for level in ['100mv','250mv','1000mv']:
 d=np.memmap(O/f'{level}.bin',dtype='<f4',mode='r').reshape(-1,3)
 control=np.memmap(O/'control48'/f'{level}.bin',dtype='<f4',mode='r').reshape(-1,3)
 prev=np.memmap(R/'simulation/experiments/bounded_newton/long_di'/f'{level}.bin',dtype='<f4',mode='r').reshape(-1,2)
 assert np.array_equal(d[:,0],control[:,0]);assert np.array_equal(d[:,2],prev[1::2,1])
 fullmetrics[level]={'48_vs_P7_96_raw_endpoints':metrics(d[:,0],d[:,2]),'48_vs_P7_48_same_grid':metrics(d[:,0],control[:,2])}
 for name in ['48','96','P7']:
  rate=48000 if name=='48' else 96000;taps=97 if rate==48000 else 193
  h=np.sinc(2*18000/rate*(np.arange(taps)-(taps-1)/2))*np.kaiser(taps,8.6);h/=h.sum()
  sig=np.asarray(d[:,0],dtype=float) if name=='48' else np.asarray(prev[:,0],dtype=float) if name=='96' else np.asarray(d[:,1:3],dtype=float).reshape(-1)
  filtered=fft_convolve_blocks(sig,h)[:len(sig)];filtered=filtered if rate==48000 else filtered[1::2]
  filtered.astype('<f4').tofile(D/f'{level}_{name}_filtered.f32')
  cabinet=fft_convolve_blocks(filtered,ir)[:len(filtered)];maximum=max(maximum,float(abs(cabinet).max()));cabinet.astype('<f4').tofile(D/f'{level}_{name}.f32')
  rows[f'{level}_{name}']={'raw_peak_v':float(abs(sig).max()),'filtered_peak_v':float(abs(filtered).max()),'cabinet_peak':float(abs(cabinet).max())}
  print(level,name,'processed',flush=True)
 for suffix in ['_filtered','']:
  aa=np.fromfile(D/f'{level}_48{suffix}.f32',dtype='<f4');bb=np.fromfile(D/f'{level}_P7{suffix}.f32',dtype='<f4')
  fullmetrics[level]['48_vs_P7_96'+('_filtered' if suffix else '_cabinet')]=metrics(aa,bb,electrical=bool(suffix))
  cc=np.fromfile(D/f'{level}_96{suffix}.f32',dtype='<f4');fullmetrics[level]['48_vs_same_solver_96'+('_filtered' if suffix else '_cabinet')]=metrics(aa,cc,electrical=bool(suffix))
 (O/'audio_analysis_progress.json').write_text(json.dumps(fullmetrics,indent=2)+'\n')
gain=10**(-1/20)/maximum

def write(p,x):
 v=np.rint(np.asarray(x,dtype=float)*gain*8388607).astype(np.int32);assert abs(v).max()<8388608
 b=np.empty((len(v),3),dtype=np.uint8)
 for i in range(3):b[:,i]=(v>>(8*i))&255
 with wave.open(str(p),'wb') as w:w.setparams((1,3,48000,0,'NONE','not compressed'));w.writeframes(b.tobytes())
for key in rows:
 write(D/f'{key}.wav',np.fromfile(D/f'{key}.f32',dtype='<f4'));rows[key]['sha256']=hashlib.sha256((D/f'{key}.wav').read_bytes()).hexdigest()
rng=np.random.default_rng(480027);blind={};worst={}
for level in ['100mv','250mv','1000mv']:
 blind[level]={letter:str(name) for letter,name in zip('ABC',rng.permutation(['48','96','P7']))}
 for letter,name in blind[level].items():
  sig=np.fromfile(D/f'{level}_{name}.f32',dtype='<f4');write(D/f'blind_{level}_{letter}.wav',np.concatenate([sig[int(t*48000):int((t+8)*48000)] for t in [5,65,185]]))
 peak=fullmetrics[level]['48_vs_P7_96_cabinet']['peak_sample'];start=max(0,min(peak-48000,len(sig)-96000));worst[level]={'start_s':start/48000,'peak_s':peak/48000}
 for name in ['48','96','P7']:
  sig=np.fromfile(D/f'{level}_{name}.f32',dtype='<f4');write(D/f'worst_{level}_{name}.wav',sig[start:start+96000])
(D/'blind_key.json').write_text(json.dumps(blind,indent=2)+'\n');(D/'worst.json').write_text(json.dumps(worst,indent=2)+'\n')
for values in fullmetrics.values():
 for key,v in values.items():
  if key.endswith('_cabinet'):v['peak_pcm']=v['peak_units']*gain;v['rms_pcm']=v['rms_units']*gain
meta={'note':'No audibility thresholds. P7 is 96k numerical baseline, not a converged physical reference. Filters have equal 1ms nominal delay; no fitted gain/delay; at 48k filtering cannot remove already folded aliases. Previous-memory slots across rates refer to different times and are not a same-time error.','common_gain':gain,'encoding':'PCM24 mono 48k','filter':{'48k_taps':97,'96k_taps':193,'cutoff_hz':18000,'Kaiser_beta':8.6,'delay_ms':1,'initial_history':'zero'},'ir':str(IR.relative_to(R)),'ir_sha256':hashlib.sha256(IR.read_bytes()).hexdigest(),'audio':rows,'metrics':fullmetrics}
(O/'metrics.json').write_text(json.dumps(meta,indent=2)+'\n');print('DONE',gain,flush=True)
