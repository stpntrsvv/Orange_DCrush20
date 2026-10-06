"""Первое превышение шумового опыта: f64 при сохранённой истории f32.

Это условная локальная проверка, не независимая траектория всей записи.
"""
from pathlib import Path
import ast
import json
import numpy as np
from condensed_physical import CondensedPhysical
from orange_full_mna import FullMNAParameters

R = Path(__file__).resolve().parents[1]
O = R / 'simulation/experiments/tda48'
event = dict(line.split('=', 1) for line in (O / 'noise_long/1000mv_first_event.txt').read_text().splitlines())
current, previous, ports = [np.array(v, dtype=np.float32) for v in ast.literal_eval(event['before_candidate'])]
post = ast.literal_eval(event['after_candidate'])
post_ports = np.array(post[2], dtype=np.float32).astype(float)
u = float(event['input'])
p = CondensedPhysical(FullMNAParameters(sample_rate=48000, load='resistive'))
p.current = current.astype(float)
p.previous = previous.astype(float)
p.r = ports.astype(float)
o = p.prepare_step(u)
f, j, s = p.evaluate(post_ports, o)
ix = int(np.argmax(abs(f) / p.scales))
result = dict(sample=int(event['sample']), input_v=u, conditional_history=True,
              residual_by_port=(f / p.scales).tolist(), first_problem=p.labels[ix],
              local_equation=float(f[ix]), local_derivative=float(j[ix, ix]),
              matrix_by_block=[j[np.ix_(block, block)].tolist() for block in p.blocks])

def recover_memory(z):
    x = np.zeros(p.model.size)
    # Память полной MNA зависит от напряжений ёмкостей и внутренних полюсов.
    x[:p.model.n_nodes] = np.linalg.lstsq(p.e.T, z[:23], rcond=None)[0]
    x[p.internal_indices] = z[23:]
    return x

m = p.model
m.operating_point[:] = 0
m.state_delta = recover_memory(current.astype(float)) / m.state_scale
m.previous_delta = recover_memory(previous.astype(float)) / m.state_scale
m.steps = int(event['sample'])
x, diagnostics = m.step(u)
result['same_history_full_f64'] = diagnostics
result['full_f64_ports_v'] = (x[:m.n_nodes] @ p.b)[3:].tolist()
result['full_f64_output_v'] = float(x[m.index['power_out']])
result['candidate_output_v'] = float(post_ports[7])
result['full_f64_pole_memory_v'] = x[p.internal_indices].tolist()
result['candidate_pole_memory_v'] = post[0][23:]
result['note'] = 'Same saved f32 energy memory, full f64 solve. This local result does not qualify independent long memory or hearing.'
(O / 'noise_first_f64.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
