"""Сохранить исходные проверки RAM, изменить лишь вход и парный контроль."""
from pathlib import Path
import argparse
import json

R = Path(__file__).resolve().parents[1]

if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('stage', type=Path)
    a = ap.parse_args()
    d = a.stage.resolve()
    manifest = json.loads((d.parent / 'manifest.json').read_text())
    # Выполнение старого анализатора с новым корнем входов/host-данных.
    # Исходные файлы и старые results.json не меняются.
    s = (R / 'simulation/analyze_rate48_hardware.py').read_text()
    s = s.replace("O=R/'simulation/experiments/rate48'", 'O=SERIES')
    s = s.replace("O/f'{level}_checkpoints.bin'", "HOST/f'{level}_checkpoints.bin'")
    s = s.replace("['48','P7_96']", "['optimized48','accepted48']")
    s = s.replace("['48']", "['optimized48']").replace("['P7_96']", "['accepted48']")
    s = s.replace('Candidate one 48k step, P7 two 96k steps with interpolation.',
                  'Both models one 48k step; control is the accepted Bounded/48.')
    namespace = dict(__name__='tda48_analysis', __file__=str(R/'simulation/analyze_rate48_hardware.py'),
                     SERIES=d.parent, HOST=Path(manifest['host_checkpoints']))
    import sys
    sys.argv = [str(R / 'simulation/analyze_rate48_hardware.py'), str(d)]
    exec(compile(s, 'tda48_analysis', 'exec'), namespace)
