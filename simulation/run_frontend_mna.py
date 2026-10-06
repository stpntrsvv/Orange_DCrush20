"""Сверка float64/centered-float32 связного Orange INPUT -> Tone."""

import json
import math
from pathlib import Path

import numpy as np

from orange_full_mna import FullMNAParameters, OrangeFrontendMNA, ROOT

OUT = ROOT / "simulation/experiments/frontend_mna"


def waveform(time, level):
    if time < 0.006:
        return level * (0.75 * math.sin(2 * math.pi * 197 * time)
                        + 0.25 * math.sin(2 * math.pi * 1901 * time))
    if time < 0.008:
        return level
    if time < 0.010:
        return -level
    return 0.0


def compare(parameters, level, duration=0.018):
    reference = OrangeFrontendMNA(parameters, np.float64)
    shadow = OrangeFrontendMNA(parameters, np.float32)
    if reference.state_names() != shadow.state_names():
        raise RuntimeError("порядок состояний f64/f32 различается")
    max_abs = np.zeros(reference.size)
    max_kcl64 = max_kcl32 = max_scaled32 = 0.0
    max_iter64 = max_iter32 = 0
    output64 = []
    output32 = []
    count = round(duration * parameters.sample_rate)
    for sample in range(count):
        value = waveform((sample + 1) / parameters.sample_rate, level)
        x64, d64 = reference.step(value)
        x32, d32 = shadow.step(np.float32(value))
        max_abs = np.maximum(max_abs, np.abs(x64 - x32.astype(np.float64)))
        max_kcl64 = max(max_kcl64, d64["kcl_a"])
        max_kcl32 = max(max_kcl32, d32["kcl_a"])
        max_scaled32 = max(max_scaled32, d32["scaled_residual"])
        max_iter64 = max(max_iter64, d64["iterations"])
        max_iter32 = max(max_iter32, d32["iterations"])
        output64.append(reference.voltage(x64, "c_plus"))
        output32.append(shadow.voltage(x32, "c_plus"))
    output64 = np.asarray(output64)
    output32 = np.asarray(output32)
    output_rms = float(np.sqrt(np.mean(output64**2)))
    return {
        "controls": {
            "gain": parameters.gain, "overdrive_enabled": parameters.overdrive_enabled,
            "overdrive": parameters.overdrive, "treble": parameters.treble,
            "middle": parameters.middle, "bass": parameters.bass,
        },
        "input_level_v": level,
        "samples": count,
        "state_count": reference.size,
        "state_order": reference.state_names(),
        "max_state_abs_error": max_abs.tolist(),
        "max_voltage_error_v": float(np.max(max_abs[:reference.n_nodes])),
        "max_current_error_a": float(np.max(max_abs[reference.n_nodes:
                                                       reference.n_nodes + 3])),
        "output_rms_error_v": float(np.sqrt(np.mean((output64-output32)**2))),
        "output_relative_rms_error": float(np.sqrt(np.mean((output64-output32)**2))
                                           / max(output_rms, 1e-15)),
        "output_reference_rms_v": output_rms,
        "max_kcl_float64_a": max_kcl64,
        "max_kcl_float32_a": max_kcl32,
        "max_scaled_residual_float32": max_scaled32,
        "max_iterations_float64": max_iter64,
        "max_iterations_float32": max_iter32,
    }


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    cases = []
    controls = [
        dict(gain=0.0, overdrive_enabled=False, overdrive=0.0, load="resistive",
             treble=0.5, middle=0.5, bass=0.5),
        dict(gain=0.5, overdrive_enabled=True, overdrive=0.5, load="resistive",
             treble=0.5, middle=0.5, bass=0.5),
        dict(gain=1.0, overdrive_enabled=True, overdrive=1.0, load="resistive",
             treble=1.0, middle=0.0, bass=1.0),
    ]
    for control in controls:
        for level in (0.01, 0.1):
            try:
                row = compare(FullMNAParameters(**control), level)
                row["status"] = "completed"
            except Exception as error:
                row = {"controls": control, "input_level_v": level,
                       "status": "failed", "error": str(error)}
            cases.append(row)
    completed = [c for c in cases if c["status"] == "completed"]
    if max(c["max_scaled_residual_float32"] for c in completed) > 1.2e-4:
        raise RuntimeError("float32 residual gate")
    # Gain=0 физически замыкает вход IC3B на землю. Проверяем передачу только
    # при среднем Gain; Tone endpoint тоже может точно объединить узлы.
    transmitting = [c for c in completed if c["controls"]["gain"] == 0.5]
    if min(c["output_reference_rms_v"] for c in transmitting) < 1e-7:
        raise RuntimeError("тракт INPUT-to-Tone не передаёт сигнал")
    metrics = {
        "status": "grid recorded; endpoint/high-gain failures remain open",
        "source_sha256": OrangeFrontendMNA().source_sha256,
        "numeric_architecture": "same equations, float64 reference and centered/scaled float32",
        "potentiometer_coordinates": "mechanical 0..1; B linear, VR2 C logarithmic",
        "endpoint_handling": "exact node union; no resistance regularization",
        "cases": cases,
    }
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    summary = {
        "cases": len(cases),
        "completed": len(completed),
        "failed": len(cases) - len(completed),
        "state_count_range": [min(c["state_count"] for c in completed),
                              max(c["state_count"] for c in completed)],
        "max_voltage_error_v": max(c["max_voltage_error_v"] for c in completed),
        "max_output_relative_rms_error": max(c["output_relative_rms_error"] for c in completed),
        "max_kcl_float32_a": max(c["max_kcl_float32_a"] for c in completed),
        "max_scaled_residual_float32": max(c["max_scaled_residual_float32"] for c in completed),
        "max_iterations_float32": max(c["max_iterations_float32"] for c in completed),
    }
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
