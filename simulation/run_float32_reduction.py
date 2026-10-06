"""Сверка вариантов точности полного и Schur-решателя."""

from dataclasses import replace
import json

import numpy as np

from orange_full_mna import FullMNAParameters, ROOT
from run_full_qualification import difference, scalars, simulate


OUT = ROOT / "simulation/experiments/float32_reduction"


def run_case(name, parameters, reference):
    try:
        result = simulate(parameters, 0.1, dtype=np.float32)
        row = scalars(name, parameters, 0.1, result)
        row.update(difference(result, reference))
        row["status"] = "completed"
        return row
    except Exception as error:
        return {"name": name, "status": "failed", "error": str(error)}


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    cases = []
    for load in ("resistive", "reactive_speaker"):
        base = FullMNAParameters(load=load, newton_linear_solver="schur")
        reference = simulate(base, 0.1, dtype=np.float64)
        cases.extend((
            run_case("schur_f32_" + load, base, reference),
            run_case("f64_solve_" + load, replace(
                base, float32_solve_in_float64=True), reference),
            run_case("f64_assembly_" + load, replace(
                base, float32_residual_in_float64=True), reference),
            run_case("compensated_f32_" + load, replace(
                base, float32_compensated_residual=True), reference),
        ))
    metrics = {
        "status": "f32 Schur improved; naive mixed-precision islands rejected",
        "cases": cases,
    }
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8")
    print(json.dumps(metrics, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
