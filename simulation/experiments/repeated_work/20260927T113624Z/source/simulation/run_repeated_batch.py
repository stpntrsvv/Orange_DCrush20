"""Пакетный опыт: допуск на ПК → свежие ELF → RAM-only → общая таблица.

--prepare не обращается к плате. --run проверяет хеши и требует ST-Link.
Старые результаты не перезаписываются: каждый запуск получает свой каталог.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import shutil
from datetime import datetime, timezone

import numpy as np
from analyze_condensed_hardware import sections

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'simulation/experiments/repeated_work'
REFS = ROOT / 'simulation/experiments/batched_optimization'
PACKAGES = ['packed-probe', 'packed-fast-math', 'packed-f32', 'packed-root',
            'packed-extra', 'packed-pole', 'packed-mixed', 'repeated-probe']


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def sources():
    files = list((ROOT / 'firmware').glob('**/src/*.rs'))
    files += list((ROOT / 'firmware/orange-dsp/examples').glob('*.rs'))
    files += list((ROOT / 'firmware').glob('**/Cargo.toml'))
    files += [ROOT / 'firmware/Cargo.lock', ROOT / 'firmware/.cargo/config.toml',
              ROOT / 'firmware/h7r3-runtime/memory-itcm.x',
              ROOT / 'embedded/openocd/run_repeated_probe.cfg',
              ROOT / 'simulation/generate_packed.py',
              ROOT / 'simulation/run_packed_batch.py',
              ROOT / 'simulation/run_packed_reference.py',
              ROOT / 'simulation/generate_repeated.py', ROOT / 'simulation/run_repeated_batch.py',
              ROOT / 'simulation/analyze_repeated.py', ROOT / 'simulation/run_repeated_output_reference.py']
    return {str(p.relative_to(ROOT)): sha(p) for p in sorted(files)}


def references(stress, output=False):
    if output:
        return [OUT / f'reference_output{i}.txt' for i in range(3)]
    if stress:
        return [REFS / f'reference_{name}.txt' for name in ['step025', 'step1', 'multitone']]
    return [OUT.parent / 'absolute_ports/reference_100mv.txt',
            OUT.parent / 'absolute_ports/reference_1000mv.txt',
            OUT.parent / 'architecture_decision/reference_noise.txt']


def execute(command, log, cwd=ROOT, env=None):
    with log.open('w') as f:
        result = subprocess.run(command, cwd=cwd, env=env, stdout=f, stderr=subprocess.STDOUT)
    if result.returncode:
        raise RuntimeError(f'{command}: exit {result.returncode}; {log}')


def prepare(numbers, stress=False, output=False, counted=False):
    assert not (stress and output) and not (counted and output)
    run = OUT / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    run.mkdir(parents=True)
    env = dict(os.environ)
    env['PATH'] = '/opt/homebrew/Cellar/rustup/1.29.1/bin:' + env['PATH']
    initial_sources = sources()
    execute(['cargo', 'test', '-p', 'orange-dsp', '--release', '--target',
             'aarch64-apple-darwin', '--', '--include-ignored', '--nocapture'],
            run / 'host_tests.log', ROOT / 'firmware', env)
    assert sources() == initial_sources, 'sources changed during host tests'
    manifest = dict(utc=datetime.now(timezone.utc).isoformat(), sources=initial_sources, packages=[], stress=stress, output=output, counted=counted,
                    references={str(p.relative_to(ROOT)): sha(p) for p in references(False) + references(True) + references(False,True)},
                    control='P7 unchanged packed.rs; ExtraMath<FpuRootMath,2>, precision 5',
                    rustc=subprocess.check_output(['rustc', '-Vv'], env=env, text=True))
    if stress:
        np.loadtxt(REFS / 'reference_multitone.txt')[:1024, 0].astype('<f4').tofile(run / 'input.bin')
        manifest['input_sha256'] = sha(run / 'input.bin')
    for number in numbers:
        feature = PACKAGES[number - 1]
        if output: feature += ',repeated-output'
        if counted: feature += ',repeated-counted'
        if stress:
            feature += ',packed-stress'
        name = f'package{number}'
        execute(['cargo', 'build', '-p', 'h7r3-runtime', '--bin', 'ram-probe',
                 '--release', '--features', feature], run / f'{name}_build.log', ROOT / 'firmware', env)
        image = run / f'{name}.elf'
        image.write_bytes((ROOT / 'firmware/target/thumbv7em-none-eabihf/release/ram-probe').read_bytes())
        sec = sections(image)
        assert sec['.text']['address'] + sec['.text']['size'] <= 0x10000
        # След не должен пересечь статические данные; стек проверяется отдельно.
        assert all(v['address'] + v['size'] <= 0x20001000 for k, v in sec.items() if k in ['.bss', '.data'])
        if stress:
            assert all(v['size'] == 0 for k, v in sec.items() if k in ['.bss', '.data'])
        manifest['packages'].append(dict(name=name, feature=feature, sha256=sha(image), sections=sec))
        print(f'{name}: build OK, text={sec[".text"]["size"]}', flush=True)
    assert sources() == initial_sources, 'sources changed during builds'
    (run / 'manifest.json').write_text(json.dumps(manifest, indent=2) + '\n')
    for file in manifest['sources']:
        target = run / 'source' / file
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(ROOT / file, target)
    print(run, flush=True)


def analyze(run):
    manifest = json.loads((run / 'manifest.json').read_text())
    for file, digest in manifest.get('references', {}).items():
        assert sha(ROOT / file) == digest, f'reference changed: {file}'
    results = []
    refs = references(manifest.get('stress'),manifest.get('output'))
    for package in manifest['packages']:
        name = package['name']
        log = (run / f'{name}.log').read_text()
        assert 'PACK_ERROR' not in log and 'PACK_DONE 0x444f4e45' in log
        raw = np.fromfile(run / f'{name}_trace.bin', dtype='<u4').reshape(3, 1024, 4)
        floats = raw.view('<f4')
        lines = [v for v in log.splitlines() if v.startswith('PACK_PROFILE_')]
        assert len(lines) == 3
        for case, line in enumerate(lines):
            w = [int(v, 16) for v in line.split()[1:]]
            assert w[27] == 992 and w[35] == int(name[-1])
            assert w[39] == (2 if manifest.get('output') else 1)
            cycles = raw[case, 32:, 2:].astype(np.uint64)
            assert cycles[:, 0].sum() == w[18] and cycles[:, 1].sum() == w[19]
            ref = np.loadtxt(refs[case])[:,32]
            ref = ref[1::2] if manifest.get('output') else ref[:1024]
            errors = floats[case, :, :2].astype(float) - ref[:, None]
            rms = np.linalg.norm(errors, axis=0) / np.linalg.norm(ref)
            peak = np.max(np.abs(errors), axis=0)
            row = dict(package=name, case=case, raw=w,
                       mean=cycles.mean(axis=0).tolist(), maximum=cycles.max(axis=0).tolist(),
                       percentiles=np.percentile(cycles, [50, 95, 99], axis=0).tolist(),
                       maximum_pair=cycles.reshape(-1, 2, 2).sum(axis=1).max(axis=0).tolist(),
                       maximum_block64=cycles[:896].reshape(-1, 128, 2).sum(axis=1).max(axis=0).tolist(),
                       failures_all=w[36:38], retries=[w[3], w[29]], direct=w[30:35],
                       relative_rms=rms.tolist(), peak_v=peak.tolist(),
                       admitted=bool(w[36] == 0 and rms[0] < 1e-4 and peak[0] < .01))
            row['measurement_unit']='output_48k_with_interpolation' if manifest.get('output') else 'inner_96k'
            row['control']='R5 uninstrumented' if manifest.get('counted') else 'P7'
            row['mean_output_cycles']=(cycles.mean(axis=0)*(1 if manifest.get('output') else 2)).tolist()
            row['max_output_cycles']=(cycles.max(axis=0) if manifest.get('output') else cycles.reshape(-1,2,2).sum(axis=1).max(axis=0)).tolist()
            n=64 if manifest.get('output') else 128
            row['max_block64_output_cycles']=cycles[:(len(cycles)//n)*n].reshape(-1,n,2).sum(axis=1).max(axis=0).tolist()
            row['all_maximum_including_start']=raw[case,:,2:].max(axis=0).tolist()
            if manifest.get('counted'):
                c=[v for v in log.splitlines() if v.startswith(f'PACK_COUNTS_{case}')][0]
                row['counters']=np.array([int(v,16) for v in c.split()[1:]]).reshape(5,11).tolist()
            results.append(row)
            print(f'{name} case{case}: {row["mean"][0]:.1f} / {row["mean"][1]:.1f} cycles; '
                  f'fail={w[36]} RMS={rms[0]:.3g} peak={peak[0]:.4g} admitted={row["admitted"]}')
    (run / 'results.json').write_text(json.dumps(results, indent=2) + '\n')
    return results


def run_hardware(run):
    manifest = json.loads((run / 'manifest.json').read_text())
    assert sources() == manifest['sources'], 'sources changed: prepare fresh images'
    for file, digest in manifest.get('references', {}).items():
        assert sha(ROOT / file) == digest, f'reference changed: {file}'
    usb = subprocess.check_output(['ioreg', '-p', 'IOUSB', '-l', '-w', '0'], text=True)
    assert 'STM32 STLink' in usb, 'ST-Link not found'
    for package in manifest['packages']:
        name = package['name']
        assert not (run / f'{name}.log').exists(), 'preserve previous run; prepare a new batch'
        image = run / f'{name}.elf'
        assert sha(image) == package['sha256']
        env = dict(os.environ, PACK_ELF=str(image), PACK_TRACE=str(run / f'{name}_trace.bin'))
        if manifest.get('counted'): env['PACK_COUNTS']='1'
        if manifest.get('stress'):
            assert sha(run / 'input.bin') == manifest['input_sha256']
            env['PACK_INPUT'] = str(run / 'input.bin')
        execute(['/opt/homebrew/bin/openocd', '-f', 'embedded/openocd/weact_stm32h7r3.cfg',
                 '-f', 'embedded/openocd/run_repeated_probe.cfg', '-c', 'run_packed_probe'],
                run / f'{name}.log', env=env)
        log = (run / f'{name}.log').read_text()
        assert 'PACK_ERROR' not in log and 'PACK_DONE 0x444f4e45' in log, log
        print(f'{name}: RAM verified, completed, reset run', flush=True)
    analyze(run)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--packages', nargs='+', type=int, choices=[8], default=[8])
    parser.add_argument('--stress', action='store_true')
    parser.add_argument('--output', action='store_true')
    parser.add_argument('--counted', action='store_true')
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--prepare', action='store_true')
    group.add_argument('--run', type=Path)
    group.add_argument('--analyze', type=Path)
    args = parser.parse_args()
    if args.prepare:
        prepare(args.packages, args.stress, args.output, args.counted)
    elif args.run:
        run_hardware(args.run.resolve())
    else:
        analyze(args.analyze.resolve())
