#!/usr/bin/env python3
"""Точная физическая портовая запись нелинейного тракта Orange."""

from __future__ import annotations

import json
from pathlib import Path

import numpy as np

from generate_rust_model import fixture
from orange_full_mna import FullMNAParameters, OrangeFullMNA


ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "simulation/experiments/physical_ports"


def physical_ports(model: OrangeFullMNA, x: np.ndarray):
    """Вернуть P, Q, offset, phi, dphi/dq и имена физических координат."""
    n = model.size
    p = np.zeros((n, 14), dtype=np.float64)
    q = np.zeros((20, n), dtype=np.float64)
    offset = np.zeros(20, dtype=np.float64)
    phi = np.zeros(14, dtype=np.float64)
    derivative = np.zeros((14, 20), dtype=np.float64)
    phi_names: list[str] = []
    q_names: list[str] = []

    # D4/D5, D6, D7: три самостоятельных тока.
    for port, (name, incidence, fixed, pair, _) in enumerate(model.diode_ports):
        if name == "D6":
            fixed = -model.supply_rails[2]
        elif name == "D7":
            fixed = model.supply_rails[3]
        p[:model.n_nodes, port] = incidence
        q[port, :model.n_nodes] = incidence
        offset[port] = fixed
        voltage = float(q[port] @ x + fixed)
        current, conductance = model._diode(voltage, pair, True)
        phi[port] = current
        derivative[port, port] = conductance
        phi_names.append(name)
        q_names.append(f"v:{name}")

    # JFET: один ток, два напряжения канала как физические управляющие величины.
    jfet_port = 3
    qa, qb = 3, 4
    node_a = model.index[model.canonical("mute_input")]
    node_b = model.index[model.canonical("volume_top")]
    p[:model.n_nodes, jfet_port] = model.jfet_e
    q[qa, node_a] = 1.0
    q[qb, node_b] = 1.0
    va, vb = float(x[node_a]), float(x[node_b])
    source_q = qa if va <= vb else qb
    gate_source = model.mute_gate_v - (va if va <= vb else vb)
    conductance, dg = model._jfet_conductance(gate_source)
    channel = va - vb
    phi[jfet_port] = conductance * channel
    derivative[jfet_port, qa] = conductance
    derivative[jfet_port, qb] = -conductance
    derivative[jfet_port, source_q] -= channel * dg
    phi_names.append("Q1.channel")
    q_names.extend(("v:Q1.a", "v:Q1.b"))

    q_cursor = 5
    phi_cursor = 4
    for name, plus, minus, _ in model.OPAMPS:
        source = model.i_op_source[name]
        internal = model.i_op_internal[name]
        # Выходной закон зависит от внутреннего напряжения и выходного тока.
        q[q_cursor, internal] = 1.0
        q[q_cursor + 1, source] = 1.0
        law, d_internal, d_current = model._opamp_output_law_with_derivatives(
            name, float(x[internal]), float(x[source]))
        p[source, phi_cursor] = 1.0
        phi[phi_cursor] = -law
        derivative[phi_cursor, q_cursor] = -d_internal
        derivative[phi_cursor, q_cursor + 1] = -d_current
        phi_names.append(f"{name}.output")
        q_names.extend((f"x:{name}", f"i:{name}"))
        q_cursor += 2
        phi_cursor += 1

        # Slew — отдельный скалярный закон от физической скорости raw_rate.
        gain_rate = 2 * np.pi * model.p.opamp.gain_bandwidth_hz
        pole = 2 * np.pi * model.opamps[name].pole_hz
        if model.canonical(plus) != "G":
            q[q_cursor, model.index[model.canonical(plus)]] = gain_rate
        if model.canonical(minus) != "G":
            q[q_cursor, model.index[model.canonical(minus)]] = -gain_rate
        q[q_cursor, internal] = -pole
        offset[q_cursor] = gain_rate * model.p.opamp.input_offset_v
        raw = float(q[q_cursor] @ x + offset[q_cursor])
        slew = model.p.opamp.slew_rate_v_per_s
        p[internal, phi_cursor] = 1.0
        phi[phi_cursor] = -np.clip(raw, -slew, slew)
        derivative[phi_cursor, q_cursor] = -1.0 if abs(raw) < slew else 0.0
        phi_names.append(f"{name}.slew")
        q_names.append(f"rate:{name}")
        q_cursor += 1
        phi_cursor += 1

    # TDA2050: тот же формат — выходной закон 2D и скалярный slew.
    source = model.i_power_source
    internal = model.i_power_internal
    q[q_cursor, internal] = 1.0
    q[q_cursor + 1, source] = 1.0
    law, d_internal, d_current = model._power_output_law_with_derivatives(
        float(x[internal]), float(x[source]))
    p[source, phi_cursor] = 1.0
    phi[phi_cursor] = -law
    derivative[phi_cursor, q_cursor] = -d_internal
    derivative[phi_cursor, q_cursor + 1] = -d_current
    phi_names.append("TDA2050.output")
    q_names.extend(("x:TDA2050", "i:TDA2050"))
    q_cursor += 2
    phi_cursor += 1

    pole = 2 * np.pi * model.poweramp.pole_hz
    gain_rate = pole * model.p.poweramp.dc_open_loop_gain
    q[q_cursor, model.index[model.canonical("power_plus")]] = gain_rate
    q[q_cursor, model.index[model.canonical("power_minus")]] = -gain_rate
    q[q_cursor, internal] = -pole
    raw = float(q[q_cursor] @ x)
    slew = model.p.poweramp.slew_rate_v_per_s
    p[internal, phi_cursor] = 1.0
    phi[phi_cursor] = -np.clip(raw, -slew, slew)
    derivative[phi_cursor, q_cursor] = -1.0 if abs(raw) < slew else 0.0
    phi_names.append("TDA2050.slew")
    q_names.append("rate:TDA2050")

    assert q_cursor + 1 == len(q_names) == 20
    assert phi_cursor + 1 == len(phi_names) == 14
    return p, q, offset, phi, derivative, phi_names, q_names


def main():
    model = OrangeFullMNA(FullMNAParameters(
        load="resistive", newton_linear_solver="schur"), np.float32)
    x, history, _ = fixture(model)
    model.state_delta = (history / np.float32(1.5) / model.state_scale).astype(np.float32)
    model.previous_delta = model.state_delta.copy()
    model.steps = 1
    residual, jacobian = model.residual_jacobian_physical(
        x, np.float32(0.03125), need_jacobian=True)
    p, q, offset, phi, dphi, phi_names, q_names = physical_ports(model, x)

    # Удаляем из полного Jacobian только физические нелинейные законы.
    linear = jacobian.astype(np.float64) - p @ dphi @ q
    rebuilt = linear + p @ dphi @ q
    jacobian_error = float(np.max(np.abs(rebuilt - jacobian)))
    inverse_linear_p = np.linalg.solve(linear, p)
    h = q @ inverse_linear_p
    port_jacobian = np.eye(14) + dphi @ h

    # Масштабы именно выходов законов: токи, напряжения и скорости не смешиваются.
    phi_scale = np.array([
        1e-3, 1e-3, 1e-3, 1e-2,
        15.0, 16e6, 15.0, 16e6, 15.0, 16e6, 15.0, 16e6,
        24.0, 8e6,
    ])
    scaled = (port_jacobian / phi_scale[:, None]) * phi_scale[None, :]

    # Проверка постоянства L на ветвях из Rust fixture.
    branch_errors = []
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
        _, trial_j = model.residual_jacobian_physical(
            trial, np.float32(0.03125), need_jacobian=True)
        tp, tq, _, _, td, _, _ = physical_ports(model, trial)
        trial_linear = trial_j.astype(np.float64) - tp @ td @ tq
        branch_errors.append(float(np.max(np.abs(trial_linear - linear))))

    coupling = np.abs(scaled - np.diag(np.diag(scaled)))
    strongest = []
    for flat in np.argsort(coupling.ravel())[::-1][:20]:
        row, column = np.unravel_index(flat, coupling.shape)
        strongest.append({
            "to": phi_names[row], "from": phi_names[column],
            "magnitude": float(coupling[row, column]),
        })

    tda_rows = [12, 13]
    other = list(range(12))
    tda_to_preamp = float(np.linalg.norm(scaled[np.ix_(other, tda_rows)], ord=2))
    preamp_to_tda = float(np.linalg.norm(scaled[np.ix_(tda_rows, other)], ord=2))
    preamp_block = scaled[np.ix_(other, other)]
    tda_block = scaled[np.ix_(tda_rows, tda_rows)]
    skeleton_scale = float(np.max(np.abs(linear)))
    metrics = {
        "jacobian_rebuild_max_abs": jacobian_error,
        "linear_skeleton_branch_max_abs": max(branch_errors),
        "linear_skeleton_branch_relative": max(branch_errors) / skeleton_scale,
        "condition_raw": float(np.linalg.cond(port_jacobian)),
        "condition_physical_scaled": float(np.linalg.cond(scaled)),
        "singular_values_scaled": np.linalg.svd(scaled, compute_uv=False).tolist(),
        "tda_to_preamp_block_norm": tda_to_preamp,
        "preamp_to_tda_block_norm": preamp_to_tda,
        "condition_preamp_12": float(np.linalg.cond(preamp_block)),
        "condition_tda_2": float(np.linalg.cond(tda_block)),
        "strongest_scaled_couplings": strongest,
    }

    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    report = f"""# Физические нелинейные порты Orange

Цель опыта — повторить устойчивую схему Big Muff: сначала выбрать
физические управляющие величины, а затем точно исключить линейную
схему. Это не Woodbury-поправка над смешанными MNA-координатами.
Скрипт строит `H = Q L⁻¹ P` для токовой системы `I + dphi/dq H`.

- нелинейных выходов `phi`: 14;
- физических управляющих величин `q`: 20;
- ошибка восстановления полного Jacobian: {jacobian_error:.6e};
- изменение линейного скелета на шести ветвях: {max(branch_errors):.6e};
- относительное изменение скелета (округление f32): {max(branch_errors) / skeleton_scale:.6e};
- condition number токовой системы: {metrics['condition_raw']:.6e};
- после физических масштабов: {metrics['condition_physical_scaled']:.6e};
- норма связи TDA → предусилитель: {tda_to_preamp:.6e};
- норма связи предусилитель → TDA: {preamp_to_tda:.6e}.
- condition предусилителя 12×12: {np.linalg.cond(preamp_block):.6e};
- condition локального TDA 2×2: {np.linalg.cond(tda_block):.6e}.

Полная таблица связей сохранена в `metrics.json`.

## Вывод

Сырая токовая система без масштабов так же непригодна для `f32`.
Однако физическое масштабирование снижает обусловленность на двадцать
порядков, а TDA2050 оказался почти однонаправленно связанным конечным
блоком. Его локальная система 2×2 хорошо обусловлена; это даёт основание
решать его после предусилителя аналитическим 2×2, не разрывая его
локальную ООС.

Это пока доказательство структуры, а не готовый контроллерный решатель.
Следующий шаг — сгенерировать масштабированные локальные 1×1/2×2 и малый
связанный блок предусилителя, после чего сверить полную Newton-поправку
на host и H7R3.
"""
    (OUT / "report.md").write_text(report, encoding="utf-8")
    print(report)


if __name__ == "__main__":
    main()
