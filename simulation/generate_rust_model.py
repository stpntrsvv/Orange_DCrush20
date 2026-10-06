"""Сгенерировать фиксированную `f32`-топологию для Rust `no_std`.

Файл Rust не редактируется вручную: его единственный источник —
`OrangeFullMNA` и `reference/components.json`.
"""

import argparse
from pathlib import Path

import numpy as np

from orange_full_mna import FullMNAParameters, OrangeFullMNA, ROOT


OUTPUT = ROOT / "firmware/orange-dsp/src/generated_model.rs"


def f32(value):
    return np.float32(value)


def rust_f32(value):
    return f"f32::from_bits(0x{f32(value).view(np.uint32):08x})"


def sparse(matrix):
    rows, columns = np.nonzero(matrix)
    return [(int(row), int(column), f32(matrix[row, column]))
            for row, column in zip(rows, columns)]


def fixture(model):
    x = np.array([f32(np.sin((i + 1) * 0.37) * 0.2)
                  for i in range(model.size)], dtype=np.float32)
    history = np.array([f32(np.cos((i + 1) * 0.23) * 0.1)
                        for i in range(model.size)], dtype=np.float32)
    result = np.zeros(model.n_nodes, dtype=np.float32)
    order = f32(1.5)
    sample_rate = f32(model.p.sample_rate)
    for row, column, value in sparse(model.G):
        result[row] = f32(result[row] + f32(value * x[column]))
    for row, column, value in sparse(model.C):
        delta = f32(order * x[column] - history[column])
        result[row] = f32(result[row] + f32(sample_rate * value * delta))
    return x, history, result


def linear_jacobian(model, order):
    """Постоянная часть Jacobian без проводимостей и законов приборов."""
    result = np.zeros((model.size, model.size), dtype=np.float32)
    fs = f32(model.p.sample_rate)
    result[:model.n_nodes, :model.n_nodes] = (
        model.G + f32(order) * fs * model.C)
    for node in model.source_nodes:
        node_i = model.index[model.canonical(node)]
        source_i = model.i_voltage_source[node]
        result[node_i, source_i] = f32(1.0)
        result[source_i, node_i] = f32(1.0)
    for name, _, _, output in model.OPAMPS:
        output_i = model.index[model.canonical(output)]
        source_i = model.i_op_source[name]
        internal_i = model.i_op_internal[name]
        result[output_i, source_i] = f32(1.0)
        result[source_i, output_i] = f32(1.0)
        result[internal_i, internal_i] = f32(order) * fs
    power_output = model.index[model.canonical("power_out")]
    result[power_output, model.i_power_source] = f32(1.0)
    result[model.i_power_source, power_output] = f32(1.0)
    result[model.i_power_internal, model.i_power_internal] = f32(order) * fs
    return result


def array(name, rust_type, values, render):
    lines = [f"pub const {name}: [{rust_type}; {len(values)}] = ["]
    lines.extend(f"    {render(value)}," for value in values)
    lines.append("];\n")
    return "\n".join(lines)


def unrolled_linear_kcl(node_count, g_entries, c_entries):
    lines = [
        "#[inline(never)]",
        "pub fn assemble_linear_kcl(",
        "    x: &[f32; STATE_COUNT],",
        "    history: &[f32; STATE_COUNT],",
        "    sample_rate: f32,",
        "    order: f32,",
        ") -> [f32; NODE_COUNT] {",
    ]
    by_g = [[] for _ in range(node_count)]
    by_c = [[] for _ in range(node_count)]
    for row, column, value in g_entries:
        by_g[row].append((column, value))
    for row, column, value in c_entries:
        by_c[row].append((column, value))
    for row in range(node_count):
        lines.append(f"    let mut r{row} = 0.0_f32;")
        for column, value in by_g[row]:
            lines.append(
                f"    r{row} += {rust_f32(value)} * x[{column}];")
        for column, value in by_c[row]:
            lines.append(
                f"    r{row} += sample_rate * {rust_f32(value)} "
                f"* (order * x[{column}] - history[{column}]);")
    lines.append("    [")
    lines.extend(f"        r{row}," for row in range(node_count))
    lines.extend(("    ]", "}\n"))
    return "\n".join(lines)


def unrolled_projected_linear(g_matrix, c_matrix, input_vector):
    lines = [
        "#[inline(never)]",
        "pub fn assemble_projected_linear(",
        "    x: &[f32; STATE_COUNT],",
        "    history: &[f32; STATE_COUNT],",
        "    input_v: f32, sample_rate: f32, order: f32,",
        ") -> [f32; 29] {",
    ]
    for row in range(29):
        lines.append(f"    let mut r{row} = {rust_f32(input_vector[row])} * input_v;")
        for _, column, value in sparse(g_matrix[row:row + 1]):
            lines.append(f"    r{row} += {rust_f32(value)} * x[{column}];")
        for _, column, value in sparse(c_matrix[row:row + 1]):
            lines.append(
                f"    r{row} += sample_rate * {rust_f32(value)} * "
                f"(order * x[{column}] - history[{column}]);")
    lines.append("    [")
    lines.extend(f"        r{row}," for row in range(29))
    lines.extend(("    ]", "}\n"))
    return "\n".join(lines)


def unrolled_recovery(retained, eliminated, inverse_jll, recovery_delta):
    lines = [
        "#[inline(never)]",
        "pub fn recover_full_delta(",
        "    residual: &[f32; STATE_COUNT], retained_delta: &[f32; 29],",
        ") -> [f32; STATE_COUNT] {",
        "    let mut delta = [0.0_f32; STATE_COUNT];",
    ]
    for local, global_index in enumerate(retained):
        lines.append(f"    delta[{int(global_index)}] = retained_delta[{local}];")
    residual_entries = sparse(inverse_jll)
    delta_entries = sparse(recovery_delta)
    for row, global_index in enumerate(eliminated):
        lines.append(f"    let mut e{row} = 0.0_f32;")
        for _, column, value in (entry for entry in residual_entries if entry[0] == row):
            lines.append(
                f"    e{row} -= {rust_f32(value)} * residual[{int(eliminated[column])}];")
        for _, column, value in (entry for entry in delta_entries if entry[0] == row):
            lines.append(
                f"    e{row} -= {rust_f32(value)} * retained_delta[{column}];")
        lines.append(f"    delta[{int(global_index)}] = e{row};")
    lines.extend(("    delta", "}\n"))
    return "\n".join(lines)


def fixed_sparse_solver(model, reduced_matrix, reduced_base, global_to_retained):
    """Развернуть фиксированный LU-порядок для полной топологии Jacobian."""
    pattern = reduced_base != 0

    def stamp(row, column):
        local_row = int(global_to_retained[row])
        local_column = int(global_to_retained[column])
        if local_row >= 0 and local_column >= 0:
            pattern[local_row, local_column] = True

    for row, column in [
            (19, 19), (19, 20), (20, 19), (20, 20), (26, 26),
            (27, 27), (27, 40), (40, 27), (40, 40),
            (54, 55), (54, 54), (55, 55), (55, 32), (55, 30)]:
        stamp(row, column)
    for plus, minus, _, source, internal in [
            (5, 3, 4, 46, 50), (14, 12, 13, 47, 51),
            (18, 16, 17, 48, 52), (None, 21, 22, 49, 53)]:
        stamp(source, internal)
        stamp(source, source)
        stamp(internal, internal)
        if plus is not None:
            stamp(internal, plus)
        stamp(internal, minus)

    numeric = reduced_matrix.copy()
    remaining = set(range(len(numeric)))
    order = []
    operations = []
    for _ in range(len(numeric)):
        choices = []
        for pivot in remaining:
            if abs(numeric[pivot, pivot]) <= f32(1.0e-20):
                continue
            rows = sorted(row for row in remaining
                          if row != pivot and pattern[row, pivot])
            columns = sorted(column for column in remaining
                             if column != pivot and pattern[pivot, column])
            choices.append((len(rows) * len(columns), len(rows) + len(columns),
                            pivot, rows, columns))
        if not choices:
            raise RuntimeError("fixed sparse solver has no usable diagonal pivot")
        _, _, pivot, rows, columns = min(choices)
        order.append(pivot)
        remaining.remove(pivot)
        pivot_operations = []
        for row in rows:
            factor = f32(numeric[row, pivot] / numeric[pivot, pivot])
            updates = []
            for column in columns:
                numeric[row, column] = f32(
                    numeric[row, column] - factor * numeric[pivot, column])
                pattern[row, column] = True
                updates.append(column)
            numeric[row, pivot] = f32(0.0)
            pivot_operations.append((row, updates))
        operations.append(pivot_operations)

    count = len(numeric)
    lines = [
        "#[inline(never)]",
        "#[allow(unused_mut)]",
        "pub fn solve_fixed_sparse(",
        f"    matrix: &mut [f32; {count * count}],",
        f"    residual: &[f32; {count}],",
        f") -> Result<[f32; {count}], u8> {{",
        f"    let mut rhs = [0.0_f32; {count}];",
        f"    for row in 0..{count} {{ rhs[row] = -residual[row]; }}",
    ]
    for step, (pivot, pivot_operations) in enumerate(zip(order, operations)):
        lines.append(
            f"    if matrix[{pivot * count + pivot}].abs() <= 1.0e-20 "
            f"{{ return Err({step}); }}")
        for row, columns in pivot_operations:
            lines.append(
                f"    let factor = matrix[{row * count + pivot}] / "
                f"matrix[{pivot * count + pivot}];")
            for column in columns:
                lines.append(
                    f"    matrix[{row * count + column}] -= factor * "
                    f"matrix[{pivot * count + column}];")
            lines.append(f"    rhs[{row}] -= factor * rhs[{pivot}];")
    lines.append(f"    let mut solution = [0.0_f32; {count}];")
    later = set()
    for pivot in reversed(order):
        lines.append(f"    let mut value = rhs[{pivot}];")
        for column in sorted(later):
            if pattern[pivot, column]:
                lines.append(
                    f"    value -= matrix[{pivot * count + column}] * "
                    f"solution[{column}];")
        lines.append(
            f"    solution[{pivot}] = value / matrix[{pivot * count + pivot}];")
        later.add(pivot)
    lines.extend(("    Ok(solution)", "}\n"))
    return "\n".join(lines)


def constant_sparse_solver(matrix, port_u, function_name="solve_schur_base",
                           column_scale=None):
    """Развёрнутые подстановки для постоянного Schur-скелета и J0^-1 U."""
    scaled = column_scale is not None
    if column_scale is None:
        column_scale = np.ones(len(matrix), dtype=np.float32)
        row_scale = np.ones(len(matrix), dtype=np.float32)
        numeric = matrix.copy().astype(np.float32)
    else:
        column_scale = np.asarray(column_scale, dtype=np.float32)
        scaled_columns = matrix.astype(np.float64) * column_scale[None, :]
        row_scale = (1.0 / np.maximum(
            np.max(np.abs(scaled_columns), axis=1), 1.0e-30)).astype(np.float32)
        numeric = (row_scale[:, None] * scaled_columns).astype(np.float32)
    pattern = numeric != f32(0.0)
    remaining = set(range(len(numeric)))
    order = []
    operations = []
    for _ in range(len(numeric)):
        choices = []
        for pivot in remaining:
            if abs(numeric[pivot, pivot]) <= f32(1.0e-20):
                continue
            rows = sorted(row for row in remaining
                          if row != pivot and pattern[row, pivot])
            columns = sorted(column for column in remaining
                             if column != pivot and pattern[pivot, column])
            choices.append((len(rows) * len(columns), len(rows) + len(columns),
                            pivot, rows, columns))
        if not choices:
            raise RuntimeError("constant sparse solver has no usable diagonal pivot")
        _, _, pivot, rows, columns = min(choices)
        order.append(pivot)
        remaining.remove(pivot)
        pivot_operations = []
        for row in rows:
            factor = f32(numeric[row, pivot] / numeric[pivot, pivot])
            for column in columns:
                numeric[row, column] = f32(
                    numeric[row, column] - factor * numeric[pivot, column])
                pattern[row, column] = True
            numeric[row, pivot] = f32(0.0)
            pivot_operations.append((row, factor))
        operations.append(pivot_operations)

    count = len(numeric)
    def solve(rhs):
        rhs = (np.asarray(rhs, dtype=np.float32) * row_scale).astype(np.float32)
        for pivot, pivot_operations in zip(order, operations):
            for row, factor in pivot_operations:
                rhs[row] = f32(rhs[row] - factor * rhs[pivot])
        solution = np.zeros(count, dtype=np.float32)
        later = set()
        for pivot in reversed(order):
            value = rhs[pivot]
            for column in sorted(later):
                if pattern[pivot, column]:
                    value = f32(value - numeric[pivot, column] * solution[column])
            solution[pivot] = f32(value / numeric[pivot, pivot])
            later.add(pivot)
        return (solution * column_scale).astype(np.float32)

    response = np.column_stack([solve(port_u[:, column])
                                for column in range(port_u.shape[1])])
    lines = [
        "#[inline(always)]",
        "#[allow(unused_mut)]",
        f"pub fn {function_name}(residual: &[f32; {count}]) -> [f32; {count}] {{",
        f"    let mut rhs = [0.0_f32; {count}];",
        f"    for row in 0..{count} {{ rhs[row] = -residual[row] * "
        f"PHYSICAL_BASE_ROW_SCALE[row]; }}" if function_name == "solve_physical_base" else
        f"    for row in 0..{count} {{ rhs[row] = -residual[row]; }}",
    ]
    for pivot, pivot_operations in zip(order, operations):
        for row, factor in pivot_operations:
            lines.append(
                f"    rhs[{row}] -= {rust_f32(factor)} * rhs[{pivot}];")
    lines.append(f"    let mut solution = [0.0_f32; {count}];")
    later = set()
    for pivot in reversed(order):
        lines.append(f"    let mut value = rhs[{pivot}];")
        for column in sorted(later):
            if pattern[pivot, column]:
                lines.append(
                    f"    value -= {rust_f32(numeric[pivot, column])} * solution[{column}];")
        lines.append(
            f"    solution[{pivot}] = value / {rust_f32(numeric[pivot, pivot])};")
        later.add(pivot)
    if function_name == "solve_physical_base":
        lines.append(f"    for row in 0..{count} {{ solution[row] *= PHYSICAL_BASE_COLUMN_SCALE[row]; }}")
    lines.extend(("    solution", "}\n"))
    return "\n".join(lines), response.astype(np.float32), row_scale, column_scale


def fixed_port_solver():
    """Развёрнутый 13×13 solve с pivot-последовательностью nominal fixture."""
    count = 13
    pivots = [8, 7, 12, 9, 9, 10, 10, 7, 9, 9, 10, 11, 12]
    lines = [
        "#[inline(always)]",
        "pub fn solve_port_system(",
        "    matrix: &mut [f32; 169],",
        "    rhs: &mut [f32; 13],",
        ") -> Option<[f32; 13]> {",
    ]
    for pivot, best in enumerate(pivots):
        if best != pivot:
            for column in range(count):
                lines.append(
                    f"    matrix.swap({pivot * count + column}, {best * count + column});")
            lines.append(f"    rhs.swap({pivot}, {best});")
        lines.append(
            f"    if matrix[{pivot * count + pivot}].abs() <= 1.0e-20 {{ return None; }}")
        for row in range(pivot + 1, count):
            lines.append(
                f"    let factor = matrix[{row * count + pivot}] / matrix[{pivot * count + pivot}];")
            for column in range(pivot + 1, count):
                lines.append(
                    f"    matrix[{row * count + column}] -= factor * matrix[{pivot * count + column}];")
            lines.append(f"    rhs[{row}] -= factor * rhs[{pivot}];")
    lines.append("    let mut solution = [0.0_f32; 13];")
    for row in reversed(range(count)):
        lines.append(f"    let mut value = rhs[{row}];")
        for column in range(row + 1, count):
            lines.append(
                f"    value -= matrix[{row * count + column}] * solution[{column}];")
        lines.append(
            f"    solution[{row}] = value / matrix[{row * count + row}];")
    lines.extend(("    Some(solution)", "}\n"))
    return "\n".join(lines)


def dense_inverse_solver(matrix, port_u):
    """Развёрнутое линейное распространение через заранее вычисленную L^-1."""
    inverse = np.linalg.inv(matrix.astype(np.float64)).astype(np.float32)
    response = (inverse @ port_u.astype(np.float32)).astype(np.float32)
    count = len(matrix)
    lines = [
        "#[inline(always)]",
        f"pub fn solve_physical_base(residual: &[f32; {count}]) -> [f32; {count}] {{",
    ]
    for row in range(count):
        lines.append(f"    let mut r{row} = 0.0_f32;")
        for column in range(count):
            value = inverse[row, column]
            if value != 0.0:
                lines.append(
                    f"    r{row} -= {rust_f32(value)} * residual[{column}];")
    lines.append("    [")
    lines.extend(f"        r{row}," for row in range(count))
    lines.extend(("    ]", "}\n"))
    return "\n".join(lines), response


def main():
    from generate_absolute_ports import generate as generate_absolute_ports
    from generate_control_ports import generate as generate_control_ports
    from generate_direct_ports import direct_ports, full_base_code, grouped_norm_code
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--absolute-no-port-guard", action="store_true",
                        help="Повторить отвергнутый абсолютный опыт без контроля портового дефекта")
    parser.add_argument("--gain", type=float, default=0.5)
    parser.add_argument("--overdrive", type=float, default=0.5)
    parser.add_argument("--treble", type=float, default=0.5)
    parser.add_argument("--middle", type=float, default=0.5)
    parser.add_argument("--bass", type=float, default=0.5)
    parser.add_argument("--volume", type=float, default=0.5)
    args = parser.parse_args()
    model = OrangeFullMNA(FullMNAParameters(
        load="resistive", newton_linear_solver="schur",
        gain=args.gain, overdrive=args.overdrive, treble=args.treble,
        middle=args.middle, bass=args.bass, volume=args.volume), np.float32)
    g_entries = sparse(model.G)
    c_entries = sparse(model.C)
    x, history, expected = fixture(model)
    model.state_delta = (history / f32(1.5) / model.state_scale).astype(np.float32)
    model.previous_delta = model.state_delta.copy()
    model.steps = 1
    expected_residual, expected_jacobian = model.residual_jacobian_physical(
        x, f32(0.03125), need_jacobian=True)
    base = linear_jacobian(model, 1.5)
    retained = model.schur_retained
    eliminated = model.schur_eliminated
    jnn = base[np.ix_(retained, retained)]
    jnl = base[np.ix_(retained, eliminated)]
    jln = base[np.ix_(eliminated, retained)]
    jll = base[np.ix_(eliminated, eliminated)]
    projection = (jnl @ np.linalg.inv(jll)).astype(np.float32)
    inverse_jll = np.linalg.inv(jll).astype(np.float32)
    recovery_delta = (np.linalg.inv(jll) @ jln).astype(np.float32)
    reduced_base = (jnn - projection @ jln).astype(np.float32)
    # Фиксированные левые портовые векторы нелинейного Jacobian. Порядок:
    # D4/D5, D6/D7, JFET, четыре выходных закона TL072, четыре slew-строки,
    # выходной закон и slew-строка TDA2050.
    port_u = np.zeros((len(retained), 13), dtype=np.float32)
    def port_row(port, global_row, value=1.0):
        local_row = int(np.flatnonzero(retained == global_row)[0])
        port_u[local_row, port] = f32(value)
    port_row(0, 19); port_row(0, 20, -1.0)
    port_row(1, 26)
    port_row(2, 27); port_row(2, 40, -1.0)
    for port, row in enumerate((46, 47, 48, 49), 3):
        port_row(port, row)
    for port, row in enumerate((50, 51, 52, 53), 7):
        port_row(port, row)
    port_row(11, 54)
    port_row(12, 55)
    # Нормальный (не slew-limited) режим входит в постоянный портовый скелет.
    # При насыщении runtime добавляет точный отрицательный порт и тем самым
    # удаляет соответствующую производную без смены уравнений.
    port_base = reduced_base.copy()
    def port_base_stamp(global_row, global_column, value):
        row = int(np.flatnonzero(retained == global_row)[0])
        column = int(np.flatnonzero(retained == global_column)[0])
        port_base[row, column] = f32(port_base[row, column] + f32(value))
    op_gain_rate = f32(25_132_741.0)
    op_pole = f32(2.0 * np.pi * 20.0)
    for plus, minus, internal in ((5, 3, 50), (14, 12, 51),
                                  (18, 16, 52), (None, 21, 53)):
        port_base_stamp(internal, internal, op_pole)
        if plus is not None:
            port_base_stamp(internal, plus, -op_gain_rate)
        port_base_stamp(internal, minus, op_gain_rate)
    power_gain_rate = f32(63_148_388.0)
    power_pole = f32(2.0 * np.pi * 100.503_784)
    port_base_stamp(55, 55, power_pole)
    port_base_stamp(55, 32, -power_gain_rate)
    port_base_stamp(55, 30, power_gain_rate)
    base_solver, port_response, _, _ = constant_sparse_solver(port_base, port_u)

    # Физическая портовая запись: D4/D5, D6, D7, Q1, затем
    # output/slew для четырёх TL072 и TDA2050. В отличие от
    # прежнего Woodbury-кандидата slew не спрятан в скелет:
    # вся нелинейная физика живёт в локальных блоках.
    physical_u = np.zeros((len(retained), 14), dtype=np.float32)
    def physical_row(port, global_row, value=1.0):
        local_row = int(np.flatnonzero(retained == global_row)[0])
        physical_u[local_row, port] = f32(value)
    physical_row(0, 19); physical_row(0, 20, -1.0)
    physical_row(1, 26); physical_row(2, 26, -1.0)
    physical_row(3, 27); physical_row(3, 40, -1.0)
    for slot, (source, internal) in enumerate(zip(range(46, 50), range(50, 54))):
        physical_row(4 + 2 * slot, source)
        physical_row(5 + 2 * slot, internal)
    physical_row(12, 54); physical_row(13, 55)
    # Все постоянные исключения вычисляются в f64, округление только
    # готовых коэффициентов. Вычитание Schur в f32 теряет малые связи.
    ll64 = jll.astype(np.float64)
    physical_inverse_ll = np.linalg.inv(ll64)
    physical_projection = jnl.astype(np.float64) @ physical_inverse_ll
    physical_recovery = physical_inverse_ll @ jln.astype(np.float64)
    physical_base = jnn.astype(np.float64) - physical_projection @ jln.astype(np.float64)
    physical_base_solver, physical_response = dense_inverse_solver(
        physical_base, physical_u)
    physical_project_code = [
        'pub fn project_physical_residual(residual: &[f32; 56]) -> [f32; 29] {',
        '    let mut result = [0.0_f32; 29];',
    ]
    for row, state in enumerate(retained):
        physical_project_code.append(f'    result[{row}] = residual[{state}];')
        for col, source in enumerate(eliminated):
            if physical_projection[row, col] != 0:
                physical_project_code.append(
                    f'    result[{row}] -= {rust_f32(physical_projection[row,col])} * residual[{source}];')
    physical_project_code.extend(['    result', '}'])
    projected_residual = expected_residual[retained].copy()
    projected_residual -= projection @ expected_residual[eliminated]
    expected_reduced_jacobian = (
        expected_jacobian[np.ix_(retained, retained)]
        - projection @ expected_jacobian[np.ix_(eliminated, retained)]
    ).astype(np.float32)
    expected_delta = np.linalg.solve(
        expected_reduced_jacobian, -projected_residual).astype(np.float32)
    expected_full_delta = np.linalg.solve(
        expected_jacobian, -expected_residual).astype(np.float32)
    branch_full_deltas = []
    branch_residuals = []
    for case in range(6):
        trial = x.copy()
        if case == 0:
            trial.fill(0.0)
        elif case == 1:
            trial[27], trial[40] = -0.5, 0.5
        elif case == 2:
            trial[27], trial[40] = 0.5, -0.5
        elif case == 3:
            trial[5] = trial[3] = 0.25
            trial[14] = trial[12] = -0.25
        elif case == 4:
            trial[5], trial[3] = 10.0, -10.0
            trial[18], trial[16] = -10.0, 10.0
        else:
            trial[32] = trial[30]
            trial[54], trial[55] = 4.0, 20.0
        trial_residual, trial_jacobian = model.residual_jacobian_physical(
            trial, f32(0.03125), need_jacobian=True)
        branch_residuals.extend(trial_residual)
        branch_full_deltas.extend(np.linalg.solve(
            trial_jacobian.astype(np.float64),
            -trial_residual.astype(np.float64)).astype(np.float32))
    global_to_retained = np.full(model.size, -1, dtype=np.int8)
    for local, global_index in enumerate(retained):
        global_to_retained[global_index] = local
    expected_xor = 0
    for value in expected:
        expected_xor ^= int(value.view(np.uint32))
    residual_xor = 0
    for value in expected_residual:
        residual_xor ^= int(np.float32(value).view(np.uint32))
    names = model.state_names()

    augmented_g = np.zeros((model.size, model.size), dtype=np.float32)
    augmented_g[:model.n_nodes, :model.n_nodes] = model.G
    augmented_c = np.zeros_like(augmented_g)
    augmented_c[:model.n_nodes, :model.n_nodes] = model.C
    input_vector = np.zeros(model.size, dtype=np.float32)
    for node in model.source_nodes:
        node_i = model.index[model.canonical(node)]
        source_i = model.i_voltage_source[node]
        augmented_g[node_i, source_i] = f32(1.0)
        augmented_g[source_i, node_i] = f32(1.0)
    input_vector[model.i_voltage_source["in"]] = f32(-1.0)
    for name, _, _, output in model.OPAMPS:
        output_i = model.index[model.canonical(output)]
        source_i = model.i_op_source[name]
        internal_i = model.i_op_internal[name]
        augmented_g[output_i, source_i] = f32(1.0)
        augmented_g[source_i, output_i] = f32(1.0)
        augmented_c[internal_i, internal_i] = f32(1.0)
    power_output = model.index[model.canonical("power_out")]
    augmented_g[power_output, model.i_power_source] = f32(1.0)
    augmented_g[model.i_power_source, power_output] = f32(1.0)
    augmented_c[model.i_power_internal, model.i_power_internal] = f32(1.0)
    projected_g = (augmented_g[retained] - projection @ augmented_g[eliminated]).astype(np.float32)
    projected_c = (augmented_c[retained] - projection @ augmented_c[eliminated]).astype(np.float32)
    projected_input = (input_vector[retained] - projection @ input_vector[eliminated]).astype(np.float32)

    parts = [
        "// @generated by simulation/generate_rust_model.py; do not edit.\n",
        f'pub const SOURCE_SHA256: &str = "{model.source_sha256}";\n',
        f"pub const STATE_COUNT: usize = {model.size};\n",
        f"pub const NODE_COUNT: usize = {model.n_nodes};\n",
        "#[derive(Clone, Copy)]\n"
        "pub struct SparseEntry {\n"
        "    pub row: u8,\n"
        "    pub column: u8,\n"
        "    pub value: f32,\n"
        "}\n",
        array("STATE_NAMES", "&str", names, lambda value: repr(value).replace("'", '"')),
        array("STATE_SCALE", "f32", model.state_scale, rust_f32),
        array("ROW_SCALE", "f32", model.row_scale, rust_f32),
        grouped_norm_code(model.row_scale),
        array("SCHUR_RETAINED", "u8", model.schur_retained,
              lambda value: str(int(value))),
        array("SCHUR_ELIMINATED", "u8", model.schur_eliminated,
              lambda value: str(int(value))),
        array("GLOBAL_TO_RETAINED", "i8", global_to_retained,
              lambda value: str(int(value))),
        array("SCHUR_PROJECTION", "SparseEntry", sparse(projection),
              lambda entry: ("SparseEntry { row: %d, column: %d, value: %s }"
                             % (entry[0], entry[1], rust_f32(entry[2])))),
        array("SCHUR_BASE_BDF2", "SparseEntry", sparse(reduced_base),
              lambda entry: ("SparseEntry { row: %d, column: %d, value: %s }"
                             % (entry[0], entry[1], rust_f32(entry[2])))),
        array("SCHUR_PORT_RESPONSE_BDF2", "f32", port_response.ravel(), rust_f32),
        array("PHYSICAL_PORT_RESPONSE_BDF2", "f32",
              physical_response.ravel(), rust_f32),
        array("G_ENTRIES", "SparseEntry", g_entries,
              lambda entry: ("SparseEntry { row: %d, column: %d, value: %s }"
                             % (entry[0], entry[1], rust_f32(entry[2])))),
        array("C_ENTRIES", "SparseEntry", c_entries,
              lambda entry: ("SparseEntry { row: %d, column: %d, value: %s }"
                             % (entry[0], entry[1], rust_f32(entry[2])))),
        unrolled_linear_kcl(model.n_nodes, g_entries, c_entries),
        unrolled_projected_linear(projected_g, projected_c, projected_input),
        unrolled_recovery(retained, eliminated, inverse_jll, recovery_delta),
        base_solver,
        physical_base_solver,
        '\n'.join(physical_project_code),
        unrolled_recovery(retained, eliminated, physical_inverse_ll, physical_recovery)
            .replace('pub fn recover_full_delta(', 'pub fn recover_physical_delta('),
        direct_ports(physical_response),
        direct_ports(physical_response, retained),
        full_base_code(base, retained),
        generate_absolute_ports(model, base, retained, eliminated,
                                port_guard=not args.absolute_no_port_guard),
        generate_control_ports(model, base),
        fixed_sparse_solver(model, expected_reduced_jacobian, reduced_base,
                            global_to_retained),
        array("FIXTURE_X", "f32", x, rust_f32),
        array("FIXTURE_HISTORY", "f32", history, rust_f32),
        array("FIXTURE_LINEAR_KCL", "f32", expected, rust_f32),
        array("FIXTURE_RESIDUAL", "f32", expected_residual, rust_f32),
        array("FIXTURE_PROJECTED_RESIDUAL", "f32", projected_residual, rust_f32),
        array("FIXTURE_REDUCED_JACOBIAN", "f32",
              expected_reduced_jacobian.ravel(), rust_f32),
        array("FIXTURE_REDUCED_DELTA", "f32", expected_delta, rust_f32),
        array("FIXTURE_FULL_DELTA", "f32", expected_full_delta, rust_f32),
        array("FIXTURE_BRANCH_FULL_DELTAS", "f32", branch_full_deltas, rust_f32),
        array("FIXTURE_BRANCH_RESIDUALS", "f32", branch_residuals, rust_f32),
        array("FIXTURE_LINEAR_JACOBIAN", "f32", base.ravel(), rust_f32),
        f"pub const FIXTURE_RESIDUAL_XOR: u32 = 0x{residual_xor:08x};\n",
        f"pub const FIXTURE_LINEAR_KCL_XOR: u32 = 0x{expected_xor:08x};\n",
    ]
    OUTPUT.write_text("\n".join(parts), encoding="utf-8")
    print(f"{OUTPUT}: {model.size} states, {len(g_entries)} G, "
          f"{len(c_entries)} C, {len(model.schur_retained)} retained")


if __name__ == "__main__":
    main()
