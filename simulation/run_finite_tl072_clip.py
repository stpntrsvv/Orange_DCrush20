"""Проверка связанного IC3B с паспортной динамикой TL072C."""

import json
import math
from pathlib import Path

import numpy as np

from orange_clip import ClipModel, Parameters
from orange_clip_tl072 import FiniteClipParameters, FiniteTL072ClipModel

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "simulation/experiments/finite_tl072_clip"


def run(level, frequency, duration, finite_parameters):
    finite = FiniteTL072ClipModel(finite_parameters)
    ideal = ClipModel(Parameters(
        sample_rate=finite_parameters.sample_rate,
        integration=finite_parameters.integration,
        overdrive=finite_parameters.overdrive,
        od_ohm=finite_parameters.od_ohm,
        treble=finite_parameters.treble,
        middle=finite_parameters.middle,
        bass=finite_parameters.bass,
        diode_is=finite_parameters.diode_is,
        diode_n=finite_parameters.diode_n,
        thermal_voltage=finite_parameters.thermal_voltage,
    ))
    finite_out = []
    ideal_out = []
    maximum_iterations = 0
    maximum_kcl = 0.0
    maximum_current = 0.0
    for sample in range(round(duration * finite_parameters.sample_rate)):
        time = (sample + 1) / finite_parameters.sample_rate
        value = level * math.sin(2 * math.pi * frequency * time)
        xf, diagnostic = finite.step(value)
        xi, _ = ideal.step(value)
        finite_out.append(finite.voltage(xf, "c_plus"))
        ideal_out.append(ideal.voltage(xi, "c_plus"))
        maximum_iterations = max(maximum_iterations, diagnostic["iterations"])
        maximum_kcl = max(maximum_kcl, diagnostic["kcl_a"])
        maximum_current = max(maximum_current, abs(diagnostic["source_current_a"]))
    finite_out = np.asarray(finite_out)
    ideal_out = np.asarray(ideal_out)
    difference = finite_out - ideal_out
    return {
        "level_v_peak": level,
        "frequency_hz": frequency,
        "samples": len(finite_out),
        "finite_rms_v": float(np.sqrt(np.mean(finite_out ** 2))),
        "ideal_rms_v": float(np.sqrt(np.mean(ideal_out ** 2))),
        "difference_rms_v": float(np.sqrt(np.mean(difference ** 2))),
        "finite_peak_v": float(np.max(np.abs(finite_out))),
        "ideal_peak_v": float(np.max(np.abs(ideal_out))),
        "max_newton_iterations": maximum_iterations,
        "max_kcl_a": maximum_kcl,
        "max_opamp_source_current_a": maximum_current,
    }


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    parameters = FiniteClipParameters(sample_rate=96_000, integration="bdf2",
                                      overdrive=True, od_ohm=0)
    cases = [run(level, frequency, 0.012, parameters)
             for level, frequency in ((0.001, 997), (0.1, 997),
                                      (0.5, 997), (0.1, 10_000))]
    if max(case["max_kcl_a"] for case in cases) > 2e-10:
        raise RuntimeError("KCL gate")
    metrics = {
        "status": "finite TL072C coupled reference; parameters not measured on amp",
        "parameters": {
            "sample_rate_hz": parameters.sample_rate,
            "integration": parameters.integration,
            "overdrive_resistance_ohm": parameters.od_ohm,
        },
        "cases": cases,
    }
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    print(json.dumps(metrics, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
