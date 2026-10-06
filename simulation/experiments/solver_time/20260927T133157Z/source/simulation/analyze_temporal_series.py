"""Общие метрики времени, памяти, переходов и объявленной фильтрации 48 кГц."""
from pathlib import Path
import json
import numpy as np
import analyze_repeated as ar
from condensed_physical import CondensedPhysical
OUT=Path(__file__).resolve().parent/'experiments/solver_time/temporal'
OLD=OUT.parents[1]/'architecture_decision'
p=CondensedPhysical();reference=np.load(OLD/'full_reference_6144000.npz')['states'];earlier=np.load(OLD/'full_reference_3072000.npz')['states']

def lowpass48(x,fs):
    # Один объявленный физический фильтр: sinc, 18 кГц, Kaiser 8.6, длина 2 мс.
    # Причинная задержка 1 мс одинакова для всех частот; нулевой пуск.
    half=round(fs*.001);n=np.arange(-half,half+1)
    h=2*18000/fs*np.sinc(2*18000*n/fs)*np.kaiser(len(n),8.6);h/=h.sum()
    count=len(x)+len(h)-1;fft=1<<(count-1).bit_length()
    y=np.fft.irfft(np.fft.rfft(x,fft)*np.fft.rfft(h,fft),fft)[:len(x)]
    return y[fs//48000-1::fs//48000]
filtered_ref=lowpass48(reference[:,31],6144000)
ar.FS=48000
fine=ar.expanded(filtered_ref,lowpass48(earlier[:,31],3072000))
paths=[(OLD/f'condensed_{method}_{fs}.npz',fs) for method in ['bdf2','trap'] for fs in [48000,96000,192000,384000]]
paths += [(f,int(f.stem.rsplit('_',1)[-1])) for prefix in ['passive_foh','passive_quadratic','closed_etd2','closed_etd3'] for f in sorted(OUT.glob(prefix+'_*.npz'))]
paths += [(f,48000) for f in sorted(OUT.glob('adaptive_memory_integer_*.npz'))]
rows={}
for path,fs in paths:
    x=np.load(path)['states'];ref=reference[6144000//fs-1::6144000//fs]
    if len(x)!=len(ref):continue
    ar.FS=fs
    raw=ar.expanded(ref[:,31],x[:,31]);t=(np.arange(len(x))+1)/fs
    mask=np.min(abs(t[:,None]-np.array([.004,.006,.008])),axis=1)<=.0001
    error=x[:,31]-ref[:,31]
    raw['fraction_error_energy_within_100us_of_edges']=float(sum(error[mask]**2)/sum(error**2))
    raw['rms_relative_outside_edge_windows_diagnostic_only']=float(np.linalg.norm(error[~mask])/np.linalg.norm(ref[~mask,31]))
    ar.FS=48000
    coincident=ar.expanded(reference[127::128,31],x[fs//48000-1::fs//48000,31])
    filtered=None if path.stem.startswith('adaptive_memory_integer') else ar.expanded(filtered_ref,lowpass48(x[:,31],fs))
    z=np.c_[x[:,:p.model.n_nodes]@p.e,x[:,p.internal_indices]]
    zr=np.c_[ref[:,:p.model.n_nodes]@p.e,ref[:,p.internal_indices]]
    charge=np.zeros(28)
    for label,sign in [('E12',-1),('C8',1),('C5',1),('C6',1)]:
        i=next(i for i,c in enumerate(p.caps) if c[0]==label);charge[i]=sign*p.caps[i][2]
    power=(x[:,31]**2-ref[:,31]**2)/6.5
    rows[path.stem]=dict(fs=fs,raw=raw,coincident_48k=coincident,filtered_48k=filtered,
        cap_memory_peak_v=float(np.max(abs(z[:,:23]-zr[:,:23]))),pole_memory_peak_v=float(np.max(abs(z[:,23:]-zr[:,23:]))),
        charge_invariant_peak_c=float(np.max(abs(z@charge))),max_scaled_state_error=float(np.max(abs(x-ref)/p.model.state_scale)),
        load_current_peak_error_a=float(np.max(abs(error))/6.5),load_power_rms_error_w=float(np.sqrt(np.mean(power**2))),load_power_peak_error_w=float(max(abs(power))))
    print(path.stem,'raw RMS %',raw['relative_rms']*100,'peak',raw['peak_v'],'filtered RMS %',None if filtered is None else filtered['relative_rms']*100,flush=True)
result=dict(note='No hearing thresholds; no accepted new time algorithm. All edges included in full metrics. Adaptive traces contain only endpoints at 48k: filtered metric unavailable without pre-decimation trace; their raw metric is only coincident 48k. Coincident samples are not anti-aliased audio.',
    filter=dict(cutoff_hz=18000,window='Kaiser beta 8.6',duration_s=.002,causal_delay_s=.001,initial_history='zero',
                extent='Output 0..16 ms with common 1 ms delay; raw metrics cover complete original 0..16 ms. This analysis filter is not implemented or timed in firmware.'),
    fine_reference_filtered_3072_vs_6144=fine,cases=rows)
(OUT/'expanded_metrics.json').write_text(json.dumps(result,indent=2)+'\n')
