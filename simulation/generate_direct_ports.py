"""Генерация локальных портовых решений без общей матрицы 14×14."""
import numpy as np
from generate_rust_model import rust_f32

def grouped_norm_code(scales):
    """max(|r|/s): один округлённый divide на группу одинаковых s."""
    groups = {}
    for index, scale in enumerate(scales):
        assert np.isfinite(scale) and scale > 0
        groups.setdefault(float(scale), []).append(index)
    lines = ['pub fn physical_grouped_norm(r: &[f32;56]) -> f32 {', '    let mut norm = 0.0_f32;']
    for scale, indices in groups.items():
        lines.append('    let mut largest = 0_u32;')
        for index in indices:
            lines.append(f'    let bits = r[{index}].to_bits() & 0x7fff_ffff;')
            lines.append('    if bits <= 0x7f80_0000 { largest = largest.max(bits); }')
        lines.append(f'    norm = norm.max(f32::from_bits(largest) / {rust_f32(scale)});')
    lines.extend(['    norm', '}'])
    return '\n'.join(lines)

def full_base_code(matrix, retained):
    inverse = np.linalg.inv(matrix.astype(np.float64))[retained]
    lines = ['pub fn solve_physical_full_base(r: &[f32;56]) -> [f32;29] {']
    for i,row in enumerate(inverse):
        terms = [f'(-({float(v):.17e}_f64)) * r[{j}] as f64' for j,v in enumerate(row) if v != 0]
        lines.append(f'    let v{i} = ' + ' + '.join(terms) + ';')
    lines.append('    [' + ', '.join(f'v{i} as f32' for i in range(29)) + ']')
    lines.append('}')
    return '\n'.join(lines)


def direct_ports(response, retained=None, port_columns=None):
    columns = [[19,20], [26], [26], [27,40], [50,46], [50,5,3],
               [51,47], [51,14,12], [52,48], [52,18,16], [53,49], [53,21],
               [55,54], [55,32,30]]
    if retained is not None:
        columns = [[list(retained).index(s) for s in row] for row in columns]
    if port_columns is not None:
        columns = port_columns
    specialized = retained is not None or port_columns is not None
    blocks = [(1, 2, 4, 5), (0, 6, 7), (8, 9), (3, 10, 11), (12, 13)]
    scale = np.array([1e-3, 1e-3, 1e-3, 1e-2,
                      15, 16e6, 15, 16e6, 15, 16e6, 15, 16e6, 24, 8e6])
    lines = [
        '#[allow(unused_mut, unused_assignments)]',
        'pub fn solve_direct_ports' + ('_specialized' if specialized else '') + '(',
        f'    base: &mut [f32; {len(response)}], indices: &[[u8; 3]; 14],',
        '    values: &[[f32; 3]; 14], counts: &[u8; 14],',
        ') -> Option<()> {',
        '    let mut ports = [0.0_f32; 14];',
    ]
    # Локальная правая часть вычисляется из текущего напряжения порта.
    # Один прямой проход; обратные межблочные связи требуют квалификации.
    for sweep in range(1):
        for block in blocks:
            n = len(block)
            lines.append('    {')
            for i, row in enumerate(block):
                lines.append(f'    let mut b{i} = 0.0_f32;')
                for j, col in enumerate(block):
                    lines.append(f'    let mut a{i}{j} = {float(i == j)}_f32;')
                lines.append(f'    for k in 0..counts[{row}] as usize {{')
                lines.append(f'        let s = indices[{row}][k] as usize;')
                lines.append(f'        let d = values[{row}][k] / {rust_f32(scale[row])};')
                if specialized:
                    lines.append('        match s {')
                for state in (columns[row] if specialized else [None]):
                    if state is not None:
                        lines.append(f'        {state} => {{')
                    state_expr = 's' if state is None else str(state)
                    lines.append(f'        let mut v = base[{state_expr}];')
                    for col in block:
                        coefficient = (f'PHYSICAL_PORT_RESPONSE_BDF2[s * 14 + {col}]' if state is None else rust_f32(response[state,col]))
                        lines.append(f'        v += {coefficient} * ports[{col}];')
                    lines.append(f'        b{i} += d * v;')
                    for j, col in enumerate(block):
                        coefficient = (f'PHYSICAL_PORT_RESPONSE_BDF2[s * 14 + {col}]' if state is None else rust_f32(response[state,col]))
                        lines.append(f'        a{i}{j} += d * ({coefficient} * {rust_f32(scale[col])});')
                    if state is not None:
                        lines.append('        }')
                if specialized:
                    lines.append('        _ => return None, }')
                lines.append('    }')
            # Полностью развёрнутое исключение с выбором строки.
            for p in range(n):
                for r in range(p+1, n):
                    lines.append(f'    if a{r}{p}.abs() > a{p}{p}.abs() {{')
                    for c in range(p, n):
                        lines.append(f'        core::mem::swap(&mut a{r}{c}, &mut a{p}{c});')
                    lines.append(f'        core::mem::swap(&mut b{r}, &mut b{p});')
                    lines.append('    }')
                lines.append(f'    if !a{p}{p}.is_finite() || a{p}{p}.abs() <= 1e-20 {{ return None; }}')
                for r in range(p+1, n):
                    lines.append(f'    let f = a{r}{p} / a{p}{p};')
                    for c in range(p+1, n):
                        lines.append(f'    a{r}{c} -= f * a{p}{c};')
                    lines.append(f'    b{r} -= f * b{p};')
            for r in reversed(range(n)):
                for c in range(r+1,n):
                    lines.append(f'    b{r} -= a{r}{c} * b{c};')
                lines.append(f'    b{r} /= a{r}{r};')
            for i,col in enumerate(block):
                lines.append(f'    let change{i} = b{i} * {rust_f32(scale[col])} - ports[{col}];')
                lines.append(f'    ports[{col}] += change{i};')
            for state in range(len(response)):
                for i,col in enumerate(block):
                    if response[state,col] != 0:
                        lines.append(f'    base[{state}] -= {rust_f32(response[state,col])} * change{i};')
            lines.append('    }')
    lines.extend(['    Some(())', '}'])
    return '\n'.join(lines)
