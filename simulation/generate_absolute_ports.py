"""Полностью исключённая линейная часть BDF2, без изменения нелинейных законов."""
import numpy as np
from generate_rust_model import rust_f32
from generate_direct_ports import direct_ports


def linear_system(model, base):
    # Не округлять сумму G + alpha*C до f32: это линейная часть уравнений,
    # а не прежний округлённый Jacobian для поправки.
    linear = base.astype(np.float64).copy()
    fs = float(model.p.sample_rate)
    linear[:model.n_nodes, :model.n_nodes] = model.G.astype(float) + 1.5*fs*model.C.astype(float)
    history = np.zeros_like(linear)
    history[:model.n_nodes, :model.n_nodes] = fs*model.C.astype(float)
    for i in list(range(50,54)) + [55]:
        history[i,i] = fs
    source = np.zeros(model.size)
    source[43] = 1
    injection = np.zeros((model.size,14))
    for p, entries in enumerate([[(19,1),(20,-1)],[(26,1)],[(26,-1)],
            [(27,1),(40,-1)],[(46,1)],[(50,1)],[(47,1)],[(51,1)],
            [(48,1)],[(52,1)],[(49,1)],[(53,1)],[(54,1)],[(55,1)]]):
        for row,value in entries:
            injection[row,p] = value
    return linear, history, source, injection


def generate(model, base, retained, eliminated, port_guard=True):
    linear, history, source, injection = linear_system(model, base)
    assert not np.any(injection[eliminated])
    inverse = np.linalg.inv(linear)
    response = inverse[retained] @ injection
    ll_inv = np.linalg.inv(linear[np.ix_(eliminated,eliminated)])
    recovery = ll_inv @ linear[np.ix_(eliminated,retained)]
    a = linear[np.ix_(retained,retained)] - linear[np.ix_(retained,eliminated)] @ recovery
    assert np.max(np.abs(a @ response - injection[retained])) < 1e-7
    lines = []
    def dot(row, arg):
        terms = [f'({float(v):.17e}_f64) * {arg}[{i}] as f64' for i,v in enumerate(row) if v != 0]
        return ' + '.join(terms) if terms else '0.0_f64'
    lines.append('pub fn absolute_origin(history: &[f32;56], input: f32) -> [f64;29] { [')
    for row, v in zip(inverse[retained] @ history, inverse[retained] @ source):
        lines.append(f'    {dot(row,"history")} + ({v:.17e}_f64) * input as f64,')
    lines.append('] }')
    lines.append('pub fn absolute_expand(q: &[f32;29]) -> [f32;56] { let mut x = [0.0;56];')
    for i,s in enumerate(retained):
        lines.append(f'x[{s}] = q[{i}];')
    lines.append('x }')
    lines.append('pub fn absolute_recover(history: &[f32;56], input: f32, q: &[f32;29]) -> [f32;56] { let mut x = absolute_expand(q);')
    bh = ll_inv @ history[eliminated]
    bi = ll_inv @ source[eliminated]
    for i,s in enumerate(eliminated):
        lines.append(f'x[{s}] = ({dot(bh[i],"history")} + ({bi[i]:.17e}_f64) * input as f64 - ({dot(recovery[i],"q")})) as f32;')
    lines.append('x }')
    lines.append('pub fn absolute_residual(q: &[f32;29], origin: &[f64;29], phi: &[f32;14]) -> ([f32;29], f32) {')
    for i,row in enumerate(response):
        lines.append(f'let r{i} = (q[{i}] as f64 - origin[{i}]) + ({dot(row,"phi")});')
    lines.append('let r = [' + ','.join(f'r{i}' for i in range(29)) + '];')
    lines.append('let mut norm = 0.0_f64;')
    for i,row in enumerate(a):
        lines.append(f'let value = (({dot(row,"r")}) / ({float(model.row_scale[retained[i]]):.17e}_f64)).abs();')
        lines.append('if !value.is_finite() { return ([f32::NAN;29], f32::INFINITY); } norm = norm.max(value);')
    lines.append('([' + ','.join(f'-r{i} as f32' for i in range(29)) + '], norm as f32) }')
    lines.append('pub fn absolute_rhs(q: &[f32;29], origin: &[f64;29], phi: &[f32;14]) -> [f32;29] { [')
    for i,row in enumerate(response):
        lines.append(f'-((q[{i}] as f64 - origin[{i}]) + ({dot(row,"phi")})) as f32,')
    lines.append('] }')
    lines.append('pub fn absolute_norm(q: &[f32;29], origin: &[f64;29], phi: &[f32;14]) -> f32 {')
    lines.append('let d = [' + ','.join(f'q[{i}] as f64 - origin[{i}]' for i in range(29)) + '];')
    lines.append('let mut norm = 0.0_f64;')
    for i,row in enumerate(a):
        lines.append(f'let value = (({dot(row,"d")} + ({dot(injection[retained[i]],"phi")})) / ({float(model.row_scale[retained[i]]):.17e}_f64)).abs();')
        lines.append('if !value.is_finite() { return f32::INFINITY; } norm = norm.max(value);')
    # Исключение линейных строк убирает прежнюю ошибку источников из нормы.
    # Дополнительный, НЕ ослабляющий исходную норму контроль портового дефекта.
    if port_guard:
        lines.append('let defect = absolute_rhs(q, origin, phi);')
        lines.append('for i in 0..29 { let value = (defect[i] as f64 / STATE_SCALE[SCHUR_RETAINED[i] as usize] as f64).abs();')
        lines.append('if !value.is_finite() { return f32::INFINITY; } norm = norm.max(value); }')
    lines.append('norm as f32 }')
    # Кандидат имеет свою матрицу влияния, не использует старую округлённую L.
    code = direct_ports(response,retained).replace('solve_direct_ports_specialized','solve_absolute_ports')
    lines.append(code)
    return '\n'.join(lines).replace('pub fn absolute_', '#[inline(never)]\npub fn absolute_')
