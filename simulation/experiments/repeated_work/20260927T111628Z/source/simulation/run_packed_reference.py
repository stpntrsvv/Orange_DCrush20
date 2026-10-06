"""Дополнительные полные f64-траектории: ступени, восстановление, многотон."""
import json
import numpy as np
from orange_full_mna import FullMNAParameters, OrangeFullMNA, ROOT
from run_full_qualification import input_wave

OUT = ROOT / 'simulation/experiments/batched_optimization'

for case in ['step025', 'step1', 'multitone']:
    model = OrangeFullMNA(FullMNAParameters(sample_rate=96000, load='resistive'))
    # Та же нулевая двухшаговая предыстория BDF2, что в RAM-пробе.
    # Стандартный первый шаг эталона BE здесь был бы другим опытом.
    model.steps = 1
    rows = []
    stats = dict(max_residual=0., max_kcl=0., max_iterations=0, continuations=0)
    for i in range(1536):
        if case == 'multitone':
            u = input_wave((i + 1) / 96000, .25, recovery=True)
        else:
            level = .25 if case == 'step025' else 1.
            u = level * (1 if 96 <= i < 384 else -1 if 384 <= i < 768 else 0)
        u = float(np.float32(u))
        x, d = model.step(u)
        rows.append([u, *x])
        stats['max_residual'] = max(stats['max_residual'], d['scaled_residual'])
        stats['max_kcl'] = max(stats['max_kcl'], d['kcl_a'])
        stats['max_iterations'] = max(stats['max_iterations'], d['iterations'])
        stats['continuations'] += d['continuation_steps'] > 0
    np.savetxt(OUT / f'reference_{case}.txt', rows, fmt='%.17g')
    (OUT / f'reference_{case}.json').write_text(json.dumps(stats, indent=2) + '\n')
    print(case, stats, flush=True)
