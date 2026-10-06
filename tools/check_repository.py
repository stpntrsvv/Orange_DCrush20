"""Проверка структуры, ссылок, Python-синтаксиса и состава публикации."""
import argparse
import ast
import hashlib
import json
from pathlib import Path
import re
import subprocess
from urllib.parse import unquote

ROOT = Path(__file__).resolve().parents[1]


def sha(path):
    h = hashlib.sha256()
    with path.open('rb') as f:
        for block in iter(lambda: f.read(4 << 20), b''):
            h.update(block)
    return h.hexdigest()


def main(artifacts):
    errors = []
    raw = subprocess.check_output(
        ['git', 'ls-files', '--cached', '--others', '--exclude-standard', '-z'], cwd=ROOT)
    files = sorted(set(Path(p.decode()) for p in raw.split(b'\0') if p))
    manifest_path = ROOT / 'artifacts/source_manifest.json'
    manifest = json.loads(manifest_path.read_text()) if manifest_path.exists() else {'files': []}
    artifact_paths = {r['path'] for r in manifest['files']}
    forbidden = {'.git', '.venv', 'target', '__pycache__', 'tmp', '.vscode', '.artifacts'}
    secrets = re.compile(r'(?:gh[pousr]_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{30,}|'
                         r'sk-[A-Za-z0-9_-]{32,}|-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----)')
    for rel in files:
        p = ROOT / rel
        if not p.is_file():
            errors.append(f'Не найден файл Git: {rel}')
            continue
        if forbidden.intersection(rel.parts) or rel.name.startswith('.env'):
            errors.append(f'Локальный/служебный файл в Git: {rel}')
        if p.stat().st_size >= 95 * 1024**2:
            errors.append(f'Слишком большой файл Git: {rel}')
        if p.suffix not in {'.pdf', '.png'}:
            text = p.read_text(errors='replace')
            if secrets.search(text):
                errors.append(f'Возможный секрет: {rel}')
    scripts = list((ROOT / 'simulation').glob('*.py'))
    scripts += list((ROOT / 'simulation/history_tools').glob('*.py'))
    scripts += list((ROOT / 'tools').glob('*.py'))
    for p in scripts:
        try:
            ast.parse(p.read_text(), filename=str(p))
        except SyntaxError as e:
            errors.append(f'Python-синтаксис: {p.relative_to(ROOT)}:{e.lineno}')
    # Снимки опытов и хронология сохраняют прежний контекст и не задают текущую навигацию.
    docs = list(ROOT.glob('*.md')) + list((ROOT / 'docs').glob('*.md'))
    docs += [ROOT / d / 'README.md' for d in ['firmware', 'embedded', 'simulation',
            'simulation/history_tools', 'artifacts', 'reference', 'tests', 'csrc']]
    links = 0
    for p in docs:
        for target in re.findall(r'\]\(([^\n)]+)\)', p.read_text()):
            if target.startswith(('http:', 'https:', 'mailto:', '#', 'data:')):
                continue
            target = target.partition('#')[0].strip('<>')
            dest = (p.parent / unquote(target)).resolve()
            links += 1
            if not dest.exists():
                try:
                    rel = dest.relative_to(ROOT).as_posix()
                except ValueError:
                    rel = ''
                if rel not in artifact_paths:
                    errors.append(f'Ссылка: {p.relative_to(ROOT)} → {target}')
    if artifacts:
        for row in manifest['files']:
            p = ROOT / row['path']
            if not p.is_file() or p.stat().st_size != row['bytes'] or sha(p) != row['sha256']:
                errors.append(f'Артефакт отсутствует/изменён: {row["path"]}')
    report = dict(git_files=len(files), git_bytes=sum((ROOT / p).stat().st_size for p in files
                  if (ROOT / p).is_file()), python_files=len(scripts), checked_local_links=links,
                  artifact_files=len(manifest['files']), artifacts_verified=artifacts,
                  errors=errors)
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return bool(errors)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--artifacts', action='store_true', help='Проверить все восстановленные данные')
    raise SystemExit(main(parser.parse_args().artifacts))
