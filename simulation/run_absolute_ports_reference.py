"""Независимая полная f64-MNA, тот же BDF2-пуск и вход, что у RAM-пробы."""
from pathlib import Path
import numpy as np
from orange_full_mna import FullMNAParameters, OrangeFullMNA

def main():
    root = Path(__file__).resolve().parent / 'experiments/absolute_ports'
    root.mkdir(parents=True, exist_ok=True)
    for amplitude in (0.1, 1.0):
        model = OrangeFullMNA(FullMNAParameters(load='resistive'),np.float64)
        assert np.all(model.operating_point == 0)
        model.steps = 1  # Нулевая предыстория BDF2 с первого отсчёта, как Rust.
        lines = []
        for i in range(1024):
            phase = np.float32((i+96)%384) / np.float32(384)
            value = np.float32(amplitude) * np.float32(np.float32(1)-np.float32(4)*abs(phase-np.float32(0.5)))
            x, metrics = model.step(float(value))
            assert metrics['scaled_residual'] < 2e-9
            lines.append(' '.join(f'{float(v):.17e}' for v in [value,*x]))
        path = root / f'reference_{int(amplitude*1000)}mv.txt'
        path.write_text('\n'.join(lines)+'\n')
        print(path)

if __name__ == '__main__':
    main()
