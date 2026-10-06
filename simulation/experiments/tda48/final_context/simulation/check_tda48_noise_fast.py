"""Независимая длинная f64/48 для сильного шума, без заимствования памяти."""
from pathlib import Path
import json
import time
import numpy as np
from orange_full_mna import OrangeFullMNA, FullMNAParameters
from tda48_fast_reference import FastReference as CondensedPhysical

R = Path(__file__).resolve().parents[1]
O = R / 'simulation/experiments/tda48'
D = O / 'noise_long_fast_f64'
D.mkdir(exist_ok=True)
pcm = np.fromfile(O / 'noise.pcm16', dtype='<i2')
inputs = pcm.astype(np.float32) / np.float32(abs(pcm.astype(np.int32)).max())
p = CondensedPhysical(FullMNAParameters(sample_rate=48000, load='resistive'))
m = p.model
m.steps = 1
pairs = np.fromfile(O / 'noise_repair/1000mv.pairs', dtype='<f4').reshape(-1, 2)
host = np.fromfile(O / 'noise_repair/1000mv_checkpoints.bin', dtype='<f4').reshape(-1, 4, 28)
ref = np.zeros(len(inputs))
maxnorm = 0.0
maxkcl = 0.0
continuations = 0
checkpoints = []
started = time.monotonic()
failure = None
count = 0
with (D / 'output.f64').open('wb') as output, (D / 'memory.f64').open('wb') as memory:
    for i, u in enumerate(inputs):
        try:
            x, local = p.step(float(u), max_iterations=64, tolerance=1e-11)
            residual, _ = m.residual_jacobian_physical(x, float(u), False)
            d = dict(scaled_residual=float(max(abs(residual) / m.row_scale)),
                     kcl_a=float(max(abs(residual[:m.n_nodes]))), continuation_steps=0)
            if local['error'] > 1e-9 or d['scaled_residual'] > 1e-8:
                raise RuntimeError(f"local={local['error']}, full={d['scaled_residual']}")
            m.previous_delta = m.state_delta.copy()
            m.state_delta = x / m.state_scale
            m.previous_input_v = float(u)
            m.steps += 1
        except RuntimeError as e:
            failure = dict(sample=i, input_v=float(u), reason=str(e))
            break
        count = i + 1
        ref[i] = x[m.index['power_out']]
        output.write(np.array([ref[i]], dtype='<f8').tobytes())
        z = np.r_[x[:m.n_nodes] @ p.e, x[p.internal_indices]]
        memory.write(z.astype('<f8').tobytes())
        maxnorm = max(maxnorm, d['scaled_residual'])
        maxkcl = max(maxkcl, d['kcl_a'])
        continuations += d['continuation_steps'] > 0
        if count % 16384 == 0 or count == len(inputs):
            checkpoints.append(z)
            print(count, '/', len(inputs), 'elapsed_s', round(time.monotonic() - started, 1), flush=True)
    output.flush()
    memory.flush()

result = dict(complete=count == len(inputs), samples=count, planned=len(inputs),
              independent_zero_history=True, exact_condensed_f64=True, full_mna_residual_checked_each_step=True, failure=failure, max_residual=maxnorm,
              max_kcl_a=maxkcl, continuations=continuations, elapsed_s=time.monotonic()-started,
              note='Exact condensed f64 BDF2/48 from zero memory; original full MNA residual verified every step. Global full-MNA Newton failed separately at sample 80. Comparisons cover successful prefix when incomplete.', comparisons={})
for k, name in enumerate(['slew_seed_candidate', 'accepted48']):
    e = pairs[:count, k].astype(float) - ref[:count]
    result['comparisons'][name] = dict(relative_rms=float(np.linalg.norm(e)/np.linalg.norm(ref[:count])),
        rms_v=float(np.sqrt(np.mean(e*e))), peak_v=float(abs(e).max()), peak_sample=int(abs(e).argmax()))
    if checkpoints:
        e_mem = abs(np.array(checkpoints) - host[:len(checkpoints), 2*k])
        result['comparisons'][name]['checkpoint_memory_error_v'] = e_mem.max(axis=0).tolist()
(D / 'metrics.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2), flush=True)
