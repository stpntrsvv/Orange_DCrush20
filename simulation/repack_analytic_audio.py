"""Запись сохранённых float-следов в PCM24 с общим усилением; DSP не меняет."""
from pathlib import Path
import json,wave,hashlib
import numpy as np
D=Path(__file__).resolve().parent/'experiments/analytic_simplification/audio'
m=json.loads((D/'metrics.json').read_text());gain=m['common_gain']
def write(path,x):
 v=np.rint(np.asarray(x,dtype=float)*gain*8388607).astype(np.int32)
 assert max(abs(v))<8388608
 b=np.empty((len(v),3),dtype=np.uint8)
 for i in range(3):b[:,i]=(v>>(8*i))&255
 with wave.open(str(path),'wb') as f:f.setparams((1,3,48000,0,'NONE','not compressed'));f.writeframes(b.tobytes())
for key in m['cases']:
 x=np.fromfile(D/f'{key}.f32',dtype='<f4');p=D/f'{key}.wav';write(p,x)
 m['cases'][key]['sha256']=hashlib.sha256(p.read_bytes()).hexdigest()
key=json.loads((D/'blind_key.json').read_text())
for level,mapping in key.items():
 for letter,model in mapping.items():
  x=np.fromfile(D/f'{level}_{model}.f32',dtype='<f4')
  write(D/f'blind_{level}_{letter}.wav',np.concatenate([x[int(t*48000):int((t+8)*48000)] for t in [5,65,185]]))
worst=json.loads((D/'worst_fragments.json').read_text())
for variant,info in worst.items():
 start=round(info['fragment_start_s']*48000)
 for model in ['P7',variant]:
  x=np.fromfile(D/f'1000mv_{model}.f32',dtype='<f4');write(D/f'worst_{variant}_{model}.wav',x[start:start+96000])
m['wav_encoding']='PCM24, 48 kHz, mono, one common gain for every model and level'
(D/'metrics.json').write_text(json.dumps(m,indent=2)+'\n')
with (D/'README.md').open('a') as f:f.write('\nФинальные WAV записаны в PCM24, 48 кГц, моно. Общий коэффициент неизменен.\nИсходные float32-следы после кабинета сохранены рядом; независимой нормировки нет.\n')
print('PCM24 WAV files:',len(list(D.glob('*.wav'))))
