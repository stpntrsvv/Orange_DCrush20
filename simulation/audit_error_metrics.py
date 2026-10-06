"""Описательные метрики прежних данных. Слуховых порогов/приёмки здесь нет."""
from pathlib import Path
import hashlib
import json
import numpy as np

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'simulation/experiments/metric_definition'
ARCH = ROOT / 'simulation/experiments/architecture_decision'


def summarize(reference, candidate, fs):
    assert reference.shape == candidate.shape
    assert np.isfinite(reference).all() and np.isfinite(candidate).all()
    e = candidate - reference
    a = np.abs(e)
    energy = float(e @ e)
    rms = float(np.sqrt(np.mean(e * e)))
    ref_rms = float(np.sqrt(np.mean(reference * reference)))
    relative = rms / ref_rms if ref_rms else None
    mask = a > .01  # Только описание прежнего порога, не новая приёмка.
    edges = np.diff(np.r_[False, mask, False].astype(int))
    runs = np.flatnonzero(edges == -1) - np.flatnonzero(edges == 1)
    k = max(1, int(np.ceil(len(e) * .01)))
    peak_index = int(np.argmax(a))
    return dict(samples=len(e), sample_rate=fs, duration_ms=len(e) / fs * 1000,
                reference_rms_v=ref_rms, error_rms_v=rms, relative_rms=relative,
                error_to_signal_db=20 * float(np.log10(relative)) if relative and relative > 0 else None,
                peak_v=float(a[peak_index]), peak_index=peak_index,
                peak_time_ms=(peak_index + 1) / fs * 1000,
                reference_at_peak_v=float(reference[peak_index]),
                candidate_at_peak_v=float(candidate[peak_index]),
                absolute_error_p50_p95_p99_v=np.percentile(a, [50, 95, 99]).tolist(),
                samples_over_old_10mv=int(mask.sum()),
                total_over_old_10mv_us=float(mask.sum()) / fs * 1e6,
                longest_over_old_10mv_us=int(runs.max(initial=0)) / fs * 1e6,
                top_one_percent_error_energy_fraction=float(np.sort(e * e)[-k:].sum() / energy) if energy else 0,
                dc_error_v=float(e.mean()))


def main():
    results = dict(note='Raw electrical output; no audio filtering, audibility model or pass/fail.', cases={})
    files = []
    for name in ['triangle100', 'triangle1000', 'noise250', 'step025', 'step1', 'multitone']:
        path = OUT / f'{name}.txt'
        data = np.loadtxt(path)
        files.append(path)
        results['cases'][name] = {package: summarize(data[:, 1], data[:, column], 96000)
                                  for package, column in [('P6', 2), ('P7', 3)]}
    coarse_path = ARCH / 'full_reference_3072000.npz'
    fine_path = ARCH / 'full_reference_6144000.npz'
    coarse = np.load(coarse_path)['states'][:, 31]
    fine = np.load(fine_path)['states'][:, 31]
    results['reference_refinement_raw'] = summarize(fine[1::2], coarse, 3072000)
    # Совпадающие моменты времени, без антиалиас-фильтра; не называем это
    # полноценным звуковым выходом 48 кГц.
    results['reference_refinement_at_48k_instants'] = summarize(fine[127::128], coarse[63::64], 48000)
    files += [coarse_path, fine_path]
    expected = json.loads((ARCH / 'fine_reference_convergence.json').read_text())
    assert np.isclose(results['reference_refinement_raw']['relative_rms'], expected['relative_rms'], rtol=1e-12)
    # Независимая сверка выгрузки с сохранённым результатом прошлой серии.
    assert abs(results['cases']['step1']['P6']['peak_v'] - .04885424898371937) < 1e-9
    assert abs(results['cases']['step1']['P7']['peak_v'] - .004766934647243204) < 1e-9
    files += [Path(__file__), ROOT / 'firmware/orange-dsp/examples/metric_traces.rs',
              ROOT / 'firmware/orange-dsp/src/packed.rs', ROOT / 'firmware/orange-dsp/src/generated_packed.rs',
              ROOT / 'firmware/orange-dsp/src/generated_condensed.rs', ROOT / 'firmware/orange-dsp/src/lib.rs']
    results['sha256'] = {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in files}
    (OUT / 'metrics.json').write_text(json.dumps(results, indent=2) + '\n')
    for case in ['step1', 'multitone']:
        for p, m in results['cases'][case].items():
            print(case, p, f'RMS={m["error_rms_v"]*1000:.4f}mV, error/signal={m["error_to_signal_db"]:.2f}dB, '
                  f'peak={m["peak_v"]*1000:.3f}mV, >10mV={m["samples_over_old_10mv"]} samples, '
                  f'longest={m["longest_over_old_10mv_us"]:.2f}us, top1%energy={m["top_one_percent_error_energy_fraction"]:.4%}')
    print('reference refinement:', results['reference_refinement_raw'])


if __name__ == '__main__':
    main()
