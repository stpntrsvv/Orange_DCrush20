"""Зафиксировать новый опыт отдельно от принятого архива rate48."""
import hashlib
import json
from pathlib import Path
import shutil
from run_tda48_hardware import sources

R = Path(__file__).resolve().parents[1]
O = R / 'simulation/experiments/tda48'

def fingerprint(path):
    digest = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            digest.update(block)
    return dict(bytes=path.stat().st_size, sha256=digest.hexdigest())

if __name__ == '__main__':
    assert (O / 'summary.json').is_file()
    dest = O / 'final_context'
    dest.mkdir(exist_ok=False)
    docs = [R / n for n in ['AGENTS.md', 'NEXT_CHAT.md', 'README.md', 'TODO.md',
                            'requirements.txt', 'firmware/README.md',
                            'simulation/README.md', 'simulation/experiments/README.md']]
    docs += sorted((R / 'docs').glob('*.md'))
    deps = [R / 'simulation' / n for n in [
        'archive_tda48.py', 'bound_tda48_work.py', 'bound_rate48_blocks.py',
        'bound_rate48_queue.py', 'orange_full_mna.py', 'condensed_physical.py',
        'device_models.py', 'generate_condensed.py', 'generate_packed.py',
        'analyze_rate48_hardware.py', 'analyze_condensed_hardware.py']]
    deps += sorted((O).glob('*.py'))
    for path in sorted(set(sources() + docs + deps)):
        target = dest / path.relative_to(R)
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(path, target)
    accepted = R / 'simulation/experiments/rate48/accepted_20260928'
    accepted_files = json.loads((accepted / 'manifest.json').read_text())['files']
    for name, record in accepted_files.items():
        assert fingerprint(accepted / name) == record, name
    measured = O / '20260929T100924Z'
    measured_manifest = json.loads((measured / 'manifest.json').read_text())
    assert fingerprint(measured / 'probe.elf')['sha256'] == measured_manifest['elf_sha256']
    for name, digest in measured_manifest['sources'].items():
        assert fingerprint(measured / 'source' / name)['sha256'] == digest, name
    assert fingerprint(R / 'firmware/orange-dsp/src/bounded48.rs')['sha256'] == measured_manifest['sources']['firmware/orange-dsp/src/bounded48.rs']
    assert fingerprint(R / 'firmware/orange-dsp/src/tda48_reuse.rs')['sha256'] == measured_manifest['sources']['firmware/orange-dsp/src/tda48_reuse.rs']
    assert fingerprint(R / 'firmware/orange-dsp/src/bounded48_baseline.rs')['sha256'] == fingerprint(accepted / 'source/firmware/orange-dsp/src/bounded48.rs')['sha256']
    manifest_path = O / 'artifact_manifest.json'
    assert not manifest_path.exists()
    records = {str(p.relative_to(O)): fingerprint(p) for p in sorted(O.rglob('*'))
               if p.is_file() and p != manifest_path and '__pycache__' not in p.parts}
    manifest = dict(files=records, accepted_snapshot_files_verified=len(accepted_files),
                    measured_tda_sources_verified=True,
                    default_tda_matches_measured_sources=True,
                    noise_hardware_executed=False,
                    note='Noise RAM launch blocked before process creation by approval token refresh failure. Prepared noise series are not measurements. DMA/FIR/cabinet not measured.')
    manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
    print(f'{len(records)} files archived; {len(accepted_files)} accepted hashes preserved')
