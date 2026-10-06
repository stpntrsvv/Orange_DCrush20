"""Только коэффициенты BDF2/48, в новый каталог; решатели не копируются."""
import argparse
import hashlib
import json
from pathlib import Path

R = Path(__file__).resolve().parents[1]

if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('--out', type=Path, required=True)
    out = ap.parse_args().out.resolve()
    out.mkdir(parents=True, exist_ok=False)
    s = (R / 'simulation/generate_condensed.py').read_text()
    s = s.replace("ROOT/'firmware/orange-dsp/src/generated_condensed.rs'", "OUT/'generated_condensed48.rs'")
    s = s.replace("ROOT/'simulation/experiments/architecture_decision/coefficients.json'", "OUT/'coefficients.json'")
    namespace = dict(__name__='coefficient_generation48', OUT=out)
    exec(compile(s, 'generate_condensed48_coefficients', 'exec'), namespace)
    namespace['generate'](48000, 'bdf2')
    s = (R / 'simulation/generate_packed.py').read_text()
    s = s.replace('sample_rate=96000', 'sample_rate=48000')
    s = s.replace('generated_condensed', 'generated_condensed48')
    s = s.replace("ROOT/'firmware/orange-dsp/src/generated_packed.rs'", "OUT/'generated_packed48.rs'")
    exec(compile(s, 'generate_packed48_coefficients', 'exec'), dict(__name__='coefficient_generation48', OUT=out))
    result = {}
    for name in ['generated_condensed48.rs', 'generated_packed48.rs']:
        data = (out / name).read_bytes()
        result[name] = dict(sha256=hashlib.sha256(data).hexdigest(),
                           equals_live=data == (R / 'firmware/orange-dsp/src' / name).read_bytes())
    (out / 'manifest.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2))
