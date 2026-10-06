"""Общий FIR 96→48 кГц и один кабинет/уровень для P7, A0, A1; без LUT в DSP."""
from pathlib import Path
import json,hashlib,wave
import numpy as np
from apply_cab_ir import read_wav,fft_convolve_blocks
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'simulation/experiments/analytic_simplification'
DEST=OUT/'audio';DEST.mkdir(exist_ok=True)
IR=ROOT/'simulation/experiments/di_rust_cab/ir_local/OD-UK112-V30-DYN-57-P10-30.wav'
fs,ir=read_wav(IR)
# Офлайн-пересчёт импульса, оконный sinc. Не таблица нелинейной функции.
t=np.arange(round(len(ir)*48000/fs))*fs/48000
idx=np.floor(t).astype(int)[:,None]+np.arange(-32,33)
delta=t[:,None]-idx;weights=np.sinc(delta)*np.where(abs(delta)<=32,0.5+0.5*np.cos(np.pi*delta/32),0)
weights/=weights.sum(axis=1,keepdims=True)
ir=(weights*np.where((idx>=0)&(idx<len(ir)),ir[np.clip(idx,0,len(ir)-1)],0)).sum(axis=1)
ir-=ir.mean()
h=np.sinc(2*18000/96000*(np.arange(193)-96))*np.kaiser(193,8.6);h/=h.sum()
rows={};maximum=0.
for level in ['100mv','250mv','1000mv']:
 d=np.memmap(OUT/'long_di'/f'{level}.bin',dtype='<f4',mode='r').reshape(-1,3)
 for col,name in [(1,'P7'),(0,'A0'),(2,'A1')]:
  signal=np.asarray(d[:,col],dtype=float)
  filtered=fft_convolve_blocks(signal,h)[:len(signal)][1::2]
  cabinet=fft_convolve_blocks(filtered,ir)[:len(filtered)]
  maximum=max(maximum,float(max(abs(cabinet))))
  cabinet.astype('<f4').tofile(DEST/f'{level}_{name}.f32')
  rows[f'{level}_{name}']={'raw_peak_v':float(max(abs(signal))),'filtered_peak_v':float(max(abs(filtered))),'cabinet_peak':float(max(abs(cabinet))),'samples':len(cabinet)}
  print(level,name,rows[f'{level}_{name}'],flush=True)
  del signal,filtered,cabinet
# Один общий множитель для всех уровней и моделей; сохраняются относительные громкости.
gain=10**(-1/20)/maximum
for key in rows:
 signal=np.fromfile(DEST/f'{key}.f32',dtype='<f4').astype(float)
 assert max(abs(signal*gain))<1
 with wave.open(str(DEST/f'{key}.wav'),'wb') as w:
  w.setparams((1,2,48000,0,'NONE','not compressed'));w.writeframes((signal*gain*32767).round().astype('<i2').tobytes())
 rows[key]['sha256']=hashlib.sha256((DEST/f'{key}.wav').read_bytes()).hexdigest()
# Совместные метрики после объявленного тракта и окна, без подгонки времён.
for level in ['100mv','250mv','1000mv']:
 ref=np.fromfile(DEST/f'{level}_P7.f32',dtype='<f4').astype(float)
 for name in ['A0','A1']:
  c=np.fromfile(DEST/f'{level}_{name}.f32',dtype='<f4').astype(float);e=c-ref
  m={'rms_relative':float(np.linalg.norm(e)/np.linalg.norm(ref)),'peak':float(max(abs(e))), 'dc':float(e.mean())}
  cs=np.r_[0,np.cumsum(e*e)]
  m['window_max_rms']={str(ms):float(np.sqrt(((cs[int(48*ms):]-cs[:-int(48*ms)])/int(48*ms)).max())) for ms in [1,10,100]}
  rows[f'{level}_{name}']['vs_P7_after_cabinet']=m
# Короткие слепые фрагменты. Ключ отдельно, оценки человека ещё нет.
rng=np.random.default_rng(270926);key={}
for level in ['100mv','250mv','1000mv']:
 mapping=rng.permutation(['P7','A0','A1']);key[level]={}
 for label,name in zip('ABC',mapping):
  key[level][label]=str(name)
  signal=np.fromfile(DEST/f'{level}_{name}.f32',dtype='<f4')
  clip=np.concatenate([signal[int(start*48000):int((start+8)*48000)] for start in [5,65,185]])
  with wave.open(str(DEST/f'blind_{level}_{label}.wav'),'wb') as w:
   w.setparams((1,2,48000,0,'NONE','not compressed'));w.writeframes((clip*gain*32767).round().astype('<i2').tobytes())
(DEST/'blind_key.json').write_text(json.dumps(key,indent=2)+'\n')
(DEST/'metrics.json').write_text(json.dumps(dict(common_gain=gain,input_ir=str(IR.relative_to(ROOT)),ir_sha256=hashlib.sha256(IR.read_bytes()).hexdigest(),filter={'rate':96000,'taps':193,'cutoff':18000,'window':'Kaiser beta 8.6','delay_ms':1.0,'zero_initial_history':True},cases=rows),indent=2)+'\n')
(DEST/'README.md').write_text('''# Сравнение без LUT: P7 / A0 / A1

P7 — закреплённая реализация; A0 — короткая exp и пакет арифметики;
A1 — также изменённая форма насыщения. Это сравнение вариантов на BDF2/96к,
не независимый непрерывный физический эталон и не доказательство неслышимости.

Файлы 100mv/250mv сохраняют общий выходной коэффициент для всех девяти записей.
FIR 193 отсчёта, 18 кГц, Kaiser β=8,6, задержка 1 мс; затем 48 кГц и один
импульс V30. Этот кабинет диагностический, не штатный динамик Orange.
Электрическая нагрузка модели остаётся резистивной; IR её не заменяет.

Файлы blind_* — три одинаковых участка 5–13, 65–73 и 185–193 с, соединённые
для быстрого сравнения. Границы монтажных склеек не использовать для оценки
атак усилителя. Соответствие букв лежит отдельно в blind_key.json.
Не открывать ключ до сравнения. Это подготовленные материалы, а не проведённый
слуховой эксперимент; статистической оценки слышимости пока нет.

Фильтрация и кабинет выполнены на ПК, их такты не входят в RAM-замер ядра.
Измеренный сторонний IR и аудио остаются локальными; условия набора
задокументированы в ../../di_rust_cab/report.md.
''')
print('common gain',gain,flush=True)
