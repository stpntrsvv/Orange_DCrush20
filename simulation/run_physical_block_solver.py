#!/usr/bin/env python3
"""Проверка каскадного решения физической портовой системы."""

from __future__ import annotations

import itertools
import json
from pathlib import Path

import numpy as np

from generate_rust_model import fixture
from orange_full_mna import FullMNAParameters, OrangeFullMNA
from run_physical_port_reduction import physical_ports


ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "simulation/experiments/physical_block_solver"

# Блоки не разрывают локальную ООС и пары output/slew.
BLOCKS = {
    "IC3A+D6D7": (1, 2, 4, 5),
    "IC3B+D4D5": (0, 6, 7),
    "IC4A": (8, 9),
    "IC4B+Q1": (3, 10, 11),
    "TDA2050": (12, 13),
}


def branch_states(base: np.ndarray) -> list[np.ndarray]:
    states = []
    for case in range(6):
        x = base.copy()
        if case == 0:
            x.fill(0.0)
        elif case == 1:
            x[27], x[40] = -0.5, 0.5
        elif case == 2:
            x[27], x[40] = 0.5, -0.5
        elif case == 3:
            x[5] = x[3] = 0.25
            x[14] = x[12] = -0.25
        elif case == 4:
            x[5], x[3] = 10.0, -10.0
            x[18], x[16] = -10.0, 10.0
        else:
            x[32] = x[30]
            x[54], x[55] = 4.0, 20.0
        states.append(x)
    return states


def cascade_solve(matrix: np.ndarray, rhs: np.ndarray, order: tuple[str, ...]) -> np.ndarray:
    """Один прямой проход: внешние токи ещё не посчитанных блоков равны нулю."""
    result = np.zeros_like(rhs)
    completed: list[int] = []
    for name in order:
        block = list(BLOCKS[name])
        local_rhs = rhs[block].copy()
        if completed:
            local_rhs -= matrix[np.ix_(block, completed)] @ result[completed]
        result[block] = np.linalg.solve(matrix[np.ix_(block, block)], local_rhs)
        completed.extend(block)
    return result


def main() -> None:
    model = OrangeFullMNA(
        FullMNAParameters(load="resistive", newton_linear_solver="schur"), np.float32
    )
    base, history, _ = fixture(model)
    model.state_delta = (history / np.float32(1.5) / model.state_scale).astype(np.float32)
    model.previous_delta = model.state_delta.copy()
    model.steps = 1

    cases = []
    for x in branch_states(base):
        residual, jacobian = model.residual_jacobian_physical(
            x, np.float32(0.03125), need_jacobian=True
        )
        p, q, _, _, derivative, _, _ = physical_ports(model, x)
        linear = jacobian.astype(np.float64) - p @ derivative @ q
        linear_inverse_p = np.linalg.solve(linear, p)
        h = q @ linear_inverse_p
        port_matrix = np.eye(14) + derivative @ h
        linear_delta = np.linalg.solve(linear, -residual.astype(np.float64))
        port_rhs = derivative @ q @ linear_delta
        exact_port = np.linalg.solve(port_matrix, port_rhs)
        exact_delta = linear_delta - linear_inverse_p @ exact_port
        direct_delta = np.linalg.solve(jacobian.astype(np.float64), -residual.astype(np.float64))
        assert np.max(np.abs(exact_delta - direct_delta)) < 2e-5
        cases.append((port_matrix, port_rhs, direct_delta, linear_delta, linear_inverse_p))

    scored = []
    for order in itertools.permutations(BLOCKS):
        ratios = []
        for matrix, rhs, reference, linear_delta, linear_inverse_p in cases:
            port = cascade_solve(matrix, rhs, order)
            candidate = linear_delta - linear_inverse_p @ port
            tolerance = np.maximum(np.abs(reference) * 3e-3, 2e-5)
            ratios.append(float(np.max(np.abs(candidate - reference) / tolerance)))
        scored.append((max(ratios), float(np.mean(ratios)), order, ratios))
    scored.sort(key=lambda item: (item[0], item[1]))

    best = scored[0]
    metrics = {
        "blocks": {name: list(indices) for name, indices in BLOCKS.items()},
        "best_order": list(best[2]),
        "worst_error_over_tolerance": best[0],
        "mean_error_over_tolerance": best[1],
        "branch_error_over_tolerance": best[3],
        "top_orders": [
            {"order": list(order), "worst": worst, "mean": mean}
            for worst, mean, order, _ in scored[:10]
        ],
    }
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    report = f"""# Первый каскадный физический решатель

Пять блоков решаются одним прямым проходом; внутри блока связи точные.
Перебраны все 120 порядков на шести ветвях fixture.

- лучший порядок: `{' → '.join(best[2])}`;
- худшая `error/tolerance`: {best[0]:.6e};
- средняя `error/tolerance`: {best[1]:.6e}.

Это проверка одного каскадного прохода, а не финальная аттестация.
"""
    (OUT / "report.md").write_text(report, encoding="utf-8")
    print(report)


if __name__ == "__main__":
    main()
