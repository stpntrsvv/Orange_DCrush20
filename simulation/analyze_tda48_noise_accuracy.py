"""Все 28 координат и оба слоя памяти сильного шума к точному f64/48."""
from pathlib import Path
import json
import numpy as np

R = Path(__file__).resolve().parents[1]
O = R / 'simulation/experiments/tda48'
reference = O / 'noise_long_fast_f64'
status = json.loads((reference / 'metrics.json').read_text())
assert status['complete'], 'Длинный арбитр ещё не завершён'
ref = np.fromfile(reference / 'output.f64', dtype='<f8')
memory = np.memmap(reference / 'memory.f64', dtype='<f8', mode='r').reshape(-1,28)
candidate = np.memmap(O / 'noise_repair_trace/noise1v.candidate', dtype='<f4', mode='r').reshape(-1,68)
assert len(ref) == len(memory) == len(candidate) == status['planned']
pairs = np.memmap(O / 'noise_repair/1000mv.pairs', dtype='<f4', mode='r').reshape(-1,2)
assert np.array_equal(candidate[:,1],pairs[:,0])
result = dict(samples=len(ref), rate=48000, independent_history=True,
              reference='Exact condensed f64, original full MNA residual checked at every step; independent full-MNA Newton failed at sample 80 and is retained separately.', comparisons={})
for k,name in enumerate(['slew_seed_candidate','accepted48']):
    e = pairs[:,k].astype(float)-ref
    v = dict(rms_v=float(np.sqrt(np.mean(e*e))),relative_rms=float(np.linalg.norm(e)/np.linalg.norm(ref)),
             peak_v=float(abs(e).max()),peak_sample=int(abs(e).argmax()),
             samples_over_old_10mv=int(sum(abs(e)>.01)),release_peak_v=float(abs(e[480000:]).max()),
             release_rms_v=float(np.sqrt(np.mean(e[480000:]**2))))
    for ms in [1,10,100,1000]:
        n=round(ms*48)
        sums=np.r_[0.0,np.cumsum(e*e)]
        v[f'max_window_{ms}ms_rms_v']=float(np.sqrt(max((sums[n:]-sums[:-n])/n)))
    result['comparisons'][name]=v

# У кандидата сохранены обе памяти в каждом отсчёте, а не только на концах порций.
current_peak=np.zeros(28)
previous_peak=np.zeros(28)
for start in range(0,len(ref),16384):
    end=min(start+16384,len(ref))
    current_peak=np.maximum(current_peak,abs(candidate[start:end,12:40]-memory[start:end]).max(axis=0))
    previous=np.zeros((end-start,28))
    if start==0: previous[1:]=memory[:end-1]
    else: previous[:]=memory[start-1:end-1]
    previous_peak=np.maximum(previous_peak,abs(candidate[start:end,40:68]-previous).max(axis=0))
result['comparisons']['slew_seed_candidate'].update(current_memory_peak_by_coordinate_v=current_peak.tolist(),
    previous_memory_peak_by_coordinate_v=previous_peak.tolist(),cap_memory_peak_v=float(current_peak[:23].max()),
    pole_memory_peak_v=float(current_peak[23:].max()))
# У базы длинный контроль хранит обе памяти каждые 16384 отсчёта.
check=np.fromfile(O/'noise_repair/1000mv_checkpoints.bin',dtype='<f4').reshape(-1,4,28)
idx=np.minimum(np.arange(1,len(check)+1)*16384,len(ref))-1
result['comparisons']['accepted48']['checkpoint_current_memory_peak_by_coordinate_v']=abs(check[:,2]-memory[idx]).max(axis=0).tolist()
result['comparisons']['accepted48']['checkpoint_previous_memory_peak_by_coordinate_v']=abs(check[:,3]-memory[idx-1]).max(axis=0).tolist()
result['note']='Old 10mV count and diagnostic windows are retained; no new hearing threshold is assigned. Current/previous memory comparison has identical 48k time offsets.'
(O/'noise_accuracy.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
