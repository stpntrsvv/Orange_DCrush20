"""Добавляет A2 и фрагменты максимального расхождения к общему аудиосравнению."""
from pathlib import Path
import json,wave,hashlib
import numpy as np
from apply_cab_ir import read_wav,fft_convolve_blocks
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'simulation/experiments/analytic_simplification';D=OUT/'audio'
m=json.loads((D/'metrics.json').read_text());gain=m['common_gain']
fs,ir=read_wav(ROOT/m['input_ir']);t=np.arange(round(len(ir)*48000/fs))*fs/48000
idx=np.floor(t).astype(int)[:,None]+np.arange(-32,33);d=t[:,None]-idx
w=np.sinc(d)*np.where(abs(d)<=32,.5+.5*np.cos(np.pi*d/32),0);w/=w.sum(axis=1,keepdims=True)
ir=(w*np.where((idx>=0)&(idx<len(ir)),ir[np.clip(idx,0,len(ir)-1)],0)).sum(axis=1);ir-=ir.mean()
h=np.sinc(2*18000/96000*(np.arange(193)-96))*np.kaiser(193,8.6);h/=h.sum()
def write(name,x):
 assert max(abs(x*gain))<1
 with wave.open(str(D/name),'wb') as f:
  f.setparams((1,2,48000,0,'NONE','not compressed'));f.writeframes((x*gain*32767).round().astype('<i2').tobytes())
for level in ['100mv','250mv','1000mv']:
 data=np.memmap(OUT/'long_di_rational'/f'{level}.bin',dtype='<f4',mode='r').reshape(-1,2)
 signal=np.asarray(data[:,0],dtype=float);filtered=fft_convolve_blocks(signal,h)[:len(signal)][1::2]
 c=fft_convolve_blocks(filtered,ir)[:len(filtered)];c.astype('<f4').tofile(D/f'{level}_A2.f32');write(f'{level}_A2.wav',c)
 r=np.fromfile(D/f'{level}_P7.f32',dtype='<f4').astype(float);e=c-r;cs=np.r_[0,np.cumsum(e*e)]
 m['cases'][f'{level}_A2']={'raw_peak_v':float(max(abs(signal))),'filtered_peak_v':float(max(abs(filtered))),'cabinet_peak':float(max(abs(c))),'samples':len(c),'sha256':hashlib.sha256((D/f'{level}_A2.wav').read_bytes()).hexdigest(),'vs_P7_after_cabinet':{'rms_relative':float(np.linalg.norm(e)/np.linalg.norm(r)),'peak':float(max(abs(e))),'dc':float(e.mean()),'window_max_rms':{str(ms):float(np.sqrt(((cs[int(48*ms):]-cs[:-int(48*ms)])/int(48*ms)).max())) for ms in [1,10,100]}}}
 print(level,m['cases'][f'{level}_A2']['vs_P7_after_cabinet'],flush=True)
(D/'metrics.json').write_text(json.dumps(m,indent=2)+'\n')
worst={}
for variant in ['A0','A1','A2']:
 r=np.fromfile(D/'1000mv_P7.f32',dtype='<f4');c=np.fromfile(D/f'1000mv_{variant}.f32',dtype='<f4');e=c-r
 index=int(np.argmax(abs(e)));start=max(0,min(index-48000,len(r)-96000));stop=start+96000
 for name,x in [('P7',r),(variant,c)]:write(f'worst_{variant}_{name}.wav',x[start:stop])
 worst[variant]={'after_cabinet_peak_time_s':index/48000,'fragment_start_s':start/48000,'fragment_duration_s':2.,'peak_after_common_gain':float(abs(e[index])*gain)}
(D/'worst_fragments.json').write_text(json.dumps(worst,indent=2)+'\n')
with (D/'README.md').open('a') as f:f.write('''\nA2 — рациональная формула насыщения, также без LUT. Добавлены полные WAV\nна тех же трёх уровнях и с тем же общим усилением. worst_* — пары 2-секундных\nфрагментов вокруг максимального расхождения после кабинета на сильной DI.\nВремя события указано в worst_fragments.json. Эти фрагменты выбраны по ошибке,\nпоэтому не представляют среднюю слышимость; полные записи сохранены рядом.\n''')
