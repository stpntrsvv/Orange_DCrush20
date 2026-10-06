"""Сверка полного и точно Schur-сокращённого шага Newton."""

from dataclasses import replace
import json

import numpy as np

from orange_full_mna import FullMNAParameters, OrangeFullMNA, ROOT
from run_full_qualification import input_wave


OUT = ROOT / "simulation/experiments/exact_linear_reduction"


def compare(name, parameters, level, recovery=False, duration=0.016):
    full = OrangeFullMNA(
        replace(parameters, newton_linear_solver="full"), np.float64)
    reduced = OrangeFullMNA(
        replace(parameters, newton_linear_solver="schur"), np.float64)
    if full.state_names() != reduced.state_names():
        raise RuntimeError("порядок состояний full/schur различается")
    count = round(duration * parameters.sample_rate)
    output_full = np.empty(count)
    output_reduced = np.empty(count)
    max_state_error = 0.0
    max_kcl = 0.0
    full_continuation = reduced_continuation = 0
    for sample in range(count):
        instant = (sample + 1) / parameters.sample_rate
        source = input_wave(instant, level, recovery)
        x_full, d_full = full.step(source)
        x_reduced, d_reduced = reduced.step(source)
        output_full[sample] = full.voltage(x_full, "speaker_hot")
        output_reduced[sample] = reduced.voltage(x_reduced, "speaker_hot")
        max_state_error = max(
            max_state_error, float(np.max(np.abs(x_reduced - x_full))))
        max_kcl = max(max_kcl, d_full["kcl_a"], d_reduced["kcl_a"])
        full_continuation += d_full["continuation_steps"] > 0
        reduced_continuation += d_reduced["continuation_steps"] > 0
    error = output_reduced - output_full
    return {
        "name": name,
        "sample_rate_hz": parameters.sample_rate,
        "load": parameters.load,
        "state_count": full.size,
        "retained_count": len(reduced.schur_retained),
        "eliminated_count": len(reduced.schur_eliminated),
        "max_state_error": max_state_error,
        "output_rms_error_v": float(np.sqrt(np.mean(error**2))),
        "output_relative_rms_error": float(
            np.sqrt(np.mean(error**2))
            / max(np.sqrt(np.mean(output_full**2)), 1e-15)),
        "output_peak_error_v": float(np.max(np.abs(error))),
        "max_kcl_a": max_kcl,
        "full_continuation_sample_count": full_continuation,
        "schur_continuation_sample_count": reduced_continuation,
    }


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    cases = [
        compare("nominal_reactive", FullMNAParameters(), 0.1),
        compare("strong_od", FullMNAParameters(
            gain=1.0, overdrive=1.0, volume=0.8), 0.1),
        compare("strong_resistive_recovery", FullMNAParameters(
            load="resistive", volume=0.8), 0.5, recovery=True),
    ]
    if max(case["output_relative_rms_error"] for case in cases) > 1e-8:
        raise RuntimeError("точное линейное сокращение не прошло сверку")
    metrics = {
        "status": "exact Schur Newton step matches full Newton",
        "cases": cases,
    }
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8")
    print(json.dumps(metrics, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
