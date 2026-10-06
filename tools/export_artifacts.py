"""Архив результатов вне Git; пути сохраняются, исходные файлы не меняются."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import tarfile

ROOT = Path(__file__).resolve().parents[1]
SUFFIXES = {'.wav', '.raw', '.bin', '.npz', '.f32', '.f64', '.pcm16',
            '.pairs', '.candidate', '.reference', '.P7_48', '.control96',
            '.input', '.reference96_output', '.elf'}
SKIP = {'.git', '.venv', '__pycache__', 'target', 'build', 'tmp', '.artifacts'}


def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as f:
        for block in iter(lambda: f.read(4 << 20), b''):
            h.update(block)
    return h.hexdigest()


def select():
    files = []
    for base, dirs, names in os.walk(ROOT):
        dirs[:] = sorted(d for d in dirs if d not in SKIP)
        for name in sorted(names):
            p = Path(base) / name
            if p.suffix in SUFFIXES or (not p.suffix and p.stat().st_size > 100_000):
                files.append(p)
    return sorted(files)


def export(out):
    out.mkdir(parents=True, exist_ok=False)
    files = select()
    rows = []
    for i, p in enumerate(files):
        rows.append(dict(path=p.relative_to(ROOT).as_posix(), bytes=p.stat().st_size,
                         sha256=digest(p)))
        if i % 500 == 0:
            print(f'Контрольные суммы: {i}/{len(files)}', flush=True)
    manifest = dict(format_version=1, snapshot_date='2026-10-06',
                    last_measurement_date='2026-09-30',
                    files=rows, total_bytes=sum(r['bytes'] for r in rows),
                    excluded='Кэши, target, .venv, tmp, .git; исходники и отчёты находятся в Git.')
    manifest_path = ROOT / 'artifacts/source_manifest.json'
    manifest_path.parent.mkdir(exist_ok=True)
    manifest_path.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + '\n')
    compressed = out / 'orange-results-2026-10-06.tar.zst'
    seen = {}
    with compressed.open('wb') as sink:
        proc = subprocess.Popen(['zstd', '-T2', '-3', '--stdout'], stdin=subprocess.PIPE,
                                stdout=sink)
        try:
            with tarfile.open(fileobj=proc.stdin, mode='w|', format=tarfile.PAX_FORMAT) as tar:
                tar.add(manifest_path, arcname='artifacts/source_manifest.json', recursive=False)
                for i, row in enumerate(rows):
                    p = ROOT / row['path']
                    info = tar.gettarinfo(str(p), arcname=row['path'])
                    info.uid = info.gid = 0
                    info.uname = info.gname = ''
                    key = (row['sha256'], row['bytes'])
                    if key in seen:
                        info.type = tarfile.LNKTYPE
                        info.linkname = seen[key]
                        info.size = 0
                        tar.addfile(info)
                    else:
                        seen[key] = row['path']
                        with p.open('rb') as f:
                            tar.addfile(info, f)
                    if i % 500 == 0:
                        print(f'Архив: {i}/{len(rows)}', flush=True)
        finally:
            proc.stdin.close()
        if proc.wait():
            raise RuntimeError('zstd завершился с ошибкой')
    parts = []
    chunk_bytes = 1 << 30
    with compressed.open('rb') as stream:
        index = 1
        while True:
            block = stream.read(4 << 20)
            if not block:
                break
            p = out / f'{compressed.name}.part{index:03d}'
            size = 0
            with p.open('wb') as f:
                while block:
                    f.write(block)
                    size += len(block)
                    if size >= chunk_bytes:
                        break
                    block = stream.read(min(4 << 20, chunk_bytes - size))
            parts.append(dict(path=p.name, bytes=size, sha256=digest(p)))
            index += 1
    release = dict(format_version=1, archive_format='tar.zst',
                   source_manifest_sha256=digest(manifest_path), parts=parts,
                   total_compressed_bytes=compressed.stat().st_size,
                   unique_files=len(seen), archived_files=len(rows))
    (out / 'release_manifest.json').write_text(json.dumps(release, indent=2) + '\n')
    (out / 'SHA256SUMS').write_text(''.join(f"{r['sha256']}  {r['path']}\n" for r in parts))
    shutil.copy2(manifest_path, out / 'source_manifest.json')
    compressed.unlink()
    print(json.dumps({k: v for k, v in release.items() if k != 'parts'}, indent=2), flush=True)


def verify(out):
    source = json.loads((out / 'source_manifest.json').read_text())
    release = json.loads((out / 'release_manifest.json').read_text())
    assert digest(out / 'source_manifest.json') == release['source_manifest_sha256']
    for row in release['parts']:
        p = out / row['path']
        assert p.stat().st_size == row['bytes'] and digest(p) == row['sha256'], p
    expected = {r['path']: r for r in source['files']}
    parts = [str(out / r['path']) for r in release['parts']]
    cat = subprocess.Popen(['cat', *parts], stdout=subprocess.PIPE)
    proc = subprocess.Popen(['zstd', '-dc'], stdin=cat.stdout, stdout=subprocess.PIPE)
    cat.stdout.close()
    seen = {}
    with tarfile.open(fileobj=proc.stdout, mode='r|') as tar:
        for item in tar:
            if item.name == 'artifacts/source_manifest.json':
                assert json.loads(tar.extractfile(item).read()) == source
                continue
            row = expected.pop(item.name)
            if item.islnk():
                h, size = seen[item.linkname]
            else:
                h = hashlib.sha256()
                size = 0
                stream = tar.extractfile(item)
                for block in iter(lambda: stream.read(4 << 20), b''):
                    size += len(block)
                    h.update(block)
                h = h.hexdigest()
            assert (h, size) == (row['sha256'], row['bytes']), item.name
            seen[item.name] = (h, size)
    assert proc.wait() == cat.wait() == 0
    assert not expected, list(expected)[:5]
    print(f"Архив проверен: {len(seen)} файлов, все размеры и SHA-256 совпали.")


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, required=True)
    parser.add_argument('--verify', action='store_true')
    args = parser.parse_args()
    (verify if args.verify else export)(args.out.resolve())
