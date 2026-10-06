"""19 физических управляющих координат: q = Q x, H = Q L^-1 P."""
import numpy as np
from generate_absolute_ports import linear_system
from generate_direct_ports import direct_ports


def generate(model, base):
    linear, history, source, injection = linear_system(model, base)
    selectors = [[(19,1),(20,-1)], [(26,1)], [(27,1)], [(40,1)]]
    for internal, current, diff in [(50,46,[(5,1),(3,-1)]),
            (51,47,[(14,1),(12,-1)]), (52,48,[(18,1),(16,-1)]),
            (53,49,[(21,-1)]), (55,54,[(32,1),(30,-1)])]:
        selectors += [[(internal,1)], [(current,1)], diff]
    selector = np.zeros((19,56))
    for i, entries in enumerate(selectors):
        for s, v in entries:
            selector[i,s] = v
    inverse = np.linalg.inv(linear)
    response = inverse @ injection
    h = selector @ response
    def dot(row, arg):
        return ' + '.join(f'({float(v):.17e}_f64) * {arg}[{i}] as f64'
                          for i,v in enumerate(row) if v != 0) or '0.0_f64'
    lines = ['#[cfg(test)]', 'pub const CONTROL_RESPONSE: [[f64;14];19] = [']
    for row in h:
        lines.append('[' + ','.join(f'{float(v):.17e}_f64' for v in row) + '],')
    lines += ['];', 'pub fn control_select(x: &[f32;56]) -> [f32;19] { [']
    for entries in selectors:
        lines.append(' + '.join(f'({v}.0_f32) * x[{s}]' for s,v in entries) + ',')
    lines += ['] }', 'pub fn control_expand(q: &[f32;19]) -> [f32;56] { let mut x = [0.0;56];']
    # Правый обратный Q: второй узел каждой разности здесь нулевой.
    for i,entries in enumerate(selectors):
        s,v = entries[0]
        lines.append(f'x[{s}] = ({v}.0_f32) * q[{i}];')
    lines += ['x }', 'pub fn control_origin(history: &[f32;56], input: f32) -> [f64;19] { [']
    for row,v in zip(selector @ inverse @ history, selector @ inverse @ source):
        lines.append(f'{dot(row,"history")} + ({v:.17e}_f64) * input as f64,')
    lines += ['] }', 'pub fn control_rhs(q: &[f32;19], origin: &[f64;19], phi: &[f32;14]) -> [f32;19] { [']
    for i,row in enumerate(h):
        lines.append(f'-((q[{i}] as f64 - origin[{i}]) + ({dot(row,"phi")})) as f32,')
    lines += ['] }', 'pub fn control_recover(history: &[f32;56], input: f32, phi: &[f32;14]) -> [f32;56] { [']
    for row,v,r in zip(inverse @ history, inverse @ source,response):
        lines.append(f'({dot(row,"history")} + ({v:.17e}_f64) * input as f64 - ({dot(r,"phi")})) as f32,')
    lines += ['] }']
    columns = [[0],[1],[1],[2,3]]
    for i in range(5):
        columns += [[4+3*i,5+3*i], [4+3*i,6+3*i]]
    lines.append(direct_ports(h,port_columns=columns).replace('solve_direct_ports_specialized','solve_control_ports'))
    return '\n'.join(lines).replace('pub fn control_', '#[inline(never)]\npub fn control_')
