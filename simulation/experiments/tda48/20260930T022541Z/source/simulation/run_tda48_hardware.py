"""Парный контроль нового TDA против принятого Bounded/48, только RAM."""
import argparse
import json
import os
from pathlib import Path
import shutil
from datetime import datetime, timezone
import numpy as np
import run_rate48_hardware as base
from analyze_condensed_hardware import sections

R = base.R
OUT = R / 'simulation/experiments/tda48'

def sources():
    return sorted(set(base.sourcefiles() + [
        R / 'simulation/run_tda48_hardware.py', R / 'simulation/analyze_tda48_hardware.py',
        R / 'firmware/orange-dsp/examples/tda48_compare.rs',
        R / 'simulation/diagnose_tda48_noise.py', R / 'simulation/check_tda48_noise_long.py',
        R / 'simulation/check_tda48_noise_condensed.py', R / 'simulation/check_tda48_noise_fast.py',
        R / 'simulation/tda48_fast_reference.py', R / 'simulation/analyze_tda48_noise_accuracy.py',
        R / 'simulation/generate_rate48_coefficients.py', R / 'simulation/finish_tda48.py']))

def prepare(input_path, host_path, variant='tda'):
    d = OUT / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    d.mkdir(parents=True)
    env = dict(os.environ)
    env['PATH'] = '/opt/homebrew/Cellar/rustup/1.29.1/bin:' + env['PATH']
    hashes = {str(p.relative_to(R)): base.sha(p) for p in sources()}
    features = 'fpu-roots,orange-dsp/tda48-baseline'
    test = ['cargo', 'test', '-p', 'orange-dsp', '--release', '--target', 'aarch64-apple-darwin']
    if variant == 'noise':
        features += ',noise48-candidate'
        test += ['--features', 'noise48-candidate']
    base.execute(test + ['--', '--include-ignored'], d / 'host_tests.log', R / 'firmware', env)
    base.execute(['cargo', 'build', '-p', 'h7r3-runtime', '--bin', 'tda48-probe', '--release',
                  '--features', features], d / 'build.log', R / 'firmware', env)
    shutil.copy2(R / 'firmware/target/thumbv7em-none-eabihf/release/tda48-probe', d / 'probe.elf')
    sec = sections(d / 'probe.elf')
    assert sec['.text']['address'] + sec['.text']['size'] <= 0x10000
    assert all(sec.get(k, {}).get('size', 0) == 0 for k in ['.bss', '.data', '.etd_coeff'])
    shutil.copy2(input_path, d / 'input.pcm16')
    pcm = np.fromfile(d / 'input.pcm16', dtype='<i2')
    (d / 'chunks').mkdir()
    for i, start in enumerate(range(0, len(pcm), 16384)):
        pcm[start:start + 16384].tofile(d / 'chunks' / f'{i:04d}.bin')
    for name, h in hashes.items():
        assert base.sha(R / name) == h
        dest = d / 'source' / name
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(R / name, dest)
    m = dict(sources=hashes, elf_sha256=base.sha(d / 'probe.elf'), sections=sec,
             input_sha256=base.sha(d / 'input.pcm16'), input_source=str(input_path.resolve()),
             host_checkpoints=str(host_path.resolve()), frames=len(pcm), chunks=(len(pcm)+16383)//16384,
             peak_bits=int(np.array([max(abs(pcm.astype(np.int32)))], dtype='<f4').view('<u4')[0]),
             levels_v=[0.1, 0.25, 1.0], candidate=('TDA reuse' if variant == 'tda' else 'Experimental TDA reuse + IC3A slew seed') + ', BoundedState<3,7>, BDF2/48k',
             variant=variant, features=features,
             control='Accepted 2026-09-28 BoundedState<3,7>, one BDF2/48k step',
             baseline_source_sha256=base.sha(R / 'firmware/orange-dsp/src/bounded48_baseline.rs'))
    assert m['baseline_source_sha256'] == base.sha(R / 'simulation/experiments/rate48/accepted_20260928/source/firmware/orange-dsp/src/bounded48.rs')
    (d / 'manifest.json').write_text(json.dumps(m, indent=2) + '\n')
    print(d, flush=True)

if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('--prepare', action='store_true')
    ap.add_argument('--input', type=Path)
    ap.add_argument('--host', type=Path)
    ap.add_argument('--run', type=Path)
    ap.add_argument('--smoke', action='store_true')
    ap.add_argument('--variant', choices=['tda', 'noise'], default='tda')
    a = ap.parse_args()
    if a.prepare:
        assert a.input and a.host
        prepare(a.input.resolve(), a.host.resolve(), a.variant)
    else:
        d = a.run.resolve()
        base.O = d
        base.run(d, a.smoke)
