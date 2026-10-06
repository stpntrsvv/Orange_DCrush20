"""Квалификационная сетка полной установившейся модели Orange."""

import json
import math

import numpy as np

from orange_full_mna import FullMNAParameters, OrangeFullMNA, ROOT

OUT = ROOT / "simulation/experiments/full_qualification"


def input_wave(time, level, recovery=False):
    if recovery and time >= 0.008:
        return 0.0
    value = (0.55 * math.sin(2 * math.pi * 97 * time)
             + 0.30 * math.sin(2 * math.pi * 997 * time)
             + 0.15 * math.sin(2 * math.pi * 9_991 * time))
    if 0.004 <= time < 0.006:
        value += 0.5
    elif 0.006 <= time < 0.008:
        value -= 0.5
    return level * value


def simulate(parameters, level, duration=0.016, dtype=np.float64,
             recovery=False):
    model = OrangeFullMNA(parameters, dtype)
    count = round(duration * parameters.sample_rate)
    time = (np.arange(count) + 1) / parameters.sample_rate
    output = np.zeros(count)
    tone = np.zeros(count)
    load_current = np.zeros(count)
    max_kcl = max_residual = 0.0
    max_iterations = 0
    max_continuation_steps = 0
    continuation_sample_count = 0
    for sample, instant in enumerate(time):
        source = input_wave(float(instant), level, recovery)
        state, diagnostic = model.step(dtype(source))
        output[sample] = model.voltage(state, "speaker_hot")
        tone[sample] = model.voltage(state, "c_plus")
        if model.i_speaker_series is None:
            load_current[sample] = output[sample] / parameters.speaker_re_ohm
        else:
            load_current[sample] = state[model.i_speaker_series]
        max_kcl = max(max_kcl, diagnostic["kcl_a"])
        max_residual = max(max_residual, diagnostic["scaled_residual"])
        max_iterations = max(max_iterations, diagnostic["iterations"])
        max_continuation_steps = max(
            max_continuation_steps, diagnostic["continuation_steps"])
        continuation_sample_count += diagnostic["continuation_steps"] > 0
    return {
        "time": time, "output": output, "tone": tone,
        "load_current": load_current,
        "max_kcl_a": max_kcl, "max_scaled_residual": max_residual,
        "max_iterations": max_iterations, "state_count": model.size,
        "max_continuation_steps": max_continuation_steps,
        "continuation_sample_count": continuation_sample_count,
    }


def scalars(name, parameters, level, result):
    output = result["output"]
    current = result["load_current"]
    return {
        "name": name,
        "sample_rate_hz": parameters.sample_rate,
        "integration": parameters.integration,
        "load": parameters.load,
        "level_v": level,
        "state_count": result["state_count"],
        "output_rms_v": float(np.sqrt(np.mean(output**2))),
        "output_peak_v": float(np.max(np.abs(output))),
        "tone_rms_v": float(np.sqrt(np.mean(result["tone"]**2))),
        "load_current_rms_a": float(np.sqrt(np.mean(current**2))),
        "load_real_power_w": float(np.mean(output * current)),
        "max_kcl_a": result["max_kcl_a"],
        "max_scaled_residual": result["max_scaled_residual"],
        "max_iterations": result["max_iterations"],
        "max_continuation_steps": result["max_continuation_steps"],
        "continuation_sample_count": result["continuation_sample_count"],
    }


def difference(candidate, reference):
    aligned = np.interp(reference["time"], candidate["time"], candidate["output"])
    error = aligned - reference["output"]
    return {
        "output_rms_error_v": float(np.sqrt(np.mean(error**2))),
        "output_relative_rms_error": float(
            np.sqrt(np.mean(error**2))
            / max(np.sqrt(np.mean(reference["output"]**2)), 1e-15)),
        "output_peak_error_v": float(np.max(np.abs(error))),
    }


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    reference_p = FullMNAParameters(sample_rate=768_000.0, integration="bdf2")
    reference = simulate(reference_p, 0.1)
    cases = [scalars("reference_768k_bdf2", reference_p, 0.1, reference)]
    rate_comparisons = []
    for rate, integration in ((48_000.0, "bdf2"), (96_000.0, "bdf2"),
                              (192_000.0, "bdf2"), (384_000.0, "bdf2"),
                              (96_000.0, "be")):
        p = FullMNAParameters(sample_rate=rate, integration=integration)
        result = simulate(p, 0.1)
        row = scalars(f"rate_{int(rate)}_{integration}", p, 0.1, result)
        row.update(difference(result, reference))
        cases.append(row)
        rate_comparisons.append(row)

    configurations = (
        ("clean_low_gain", dict(gain=0.0, overdrive_enabled=False,
                                treble=0.5, middle=0.5, bass=0.5, volume=0.5), 0.1, False),
        ("od_high_gain", dict(gain=1.0, overdrive_enabled=True, overdrive=1.0,
                              treble=0.5, middle=0.5, bass=0.5, volume=0.8), 0.1, False),
        ("tone_corner_a", dict(treble=0.0, middle=1.0, bass=0.0), 0.1, False),
        ("tone_corner_b", dict(treble=1.0, middle=0.0, bass=1.0), 0.1, False),
        ("volume_zero", dict(volume=0.0), 0.1, False),
        ("aux_only", dict(aux_left_v=0.05, aux_right_v=-0.025), 0.0, False),
        ("strong_recovery", dict(gain=1.0, overdrive=1.0, volume=0.8), 0.5, True),
    )
    for name, controls, level, recovery in configurations:
        p = FullMNAParameters(sample_rate=96_000.0, integration="bdf2", **controls)
        try:
            result = simulate(p, level, recovery=recovery)
            row = scalars(name, p, level, result)
            row["status"] = "completed"
            cases.append(row)
        except Exception as error:
            cases.append({"name": name, "status": "failed",
                          "sample_rate_hz": p.sample_rate, "level_v": level,
                          "error": str(error)})

    load_cases = []
    for load in ("resistive", "reactive_speaker"):
        p = FullMNAParameters(sample_rate=96_000.0, load=load, volume=0.8)
        try:
            result = simulate(p, 0.5, recovery=True)
            row = scalars("load_" + load, p, 0.5, result)
            row["status"] = "completed"
            cases.append(row)
        except Exception as error:
            row = {"name": "load_" + load, "status": "failed",
                   "sample_rate_hz": p.sample_rate, "level_v": 0.5,
                   "error": str(error)}
        load_cases.append(row)

    float32 = []
    for load in ("resistive", "reactive_speaker"):
        p = FullMNAParameters(sample_rate=96_000.0, load=load)
        try:
            reference32 = simulate(p, 0.1, dtype=np.float64)
            result = simulate(p, 0.1, dtype=np.float32)
            row = scalars("float32_" + load, p, 0.1, result)
            row.update(difference(result, reference32))
            row["status"] = "completed_not_accepted"
        except Exception as error:
            row = {"name": "float32_" + load, "status": "failed",
                   "error": str(error)}
        float32.append(row)

    completed_cases = [row for row in cases if "max_kcl_a" in row]
    if max(row["max_kcl_a"] for row in completed_cases) > 1e-8:
        raise RuntimeError("float64 KCL gate")
    volume_zero = next(row for row in cases if row["name"] == "volume_zero")
    if volume_zero["output_peak_v"] > 1e-9:
        raise RuntimeError("Volume=0 gate")
    metrics = {
        "status": ("all grid cases completed; source stepping remains an "
                   "offline fallback and float32 precision is not accepted"),
        "reference": "BDF2 768 kHz, same provisional device physics",
        "cases": cases,
        "rate_comparisons": rate_comparisons,
        "load_comparison": load_cases,
        "float32": float32,
    }
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "cases": len(cases),
        "max_float64_kcl_a": max(row["max_kcl_a"] for row in completed_cases),
        "rate_comparisons": rate_comparisons,
        "float32": float32,
    }, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
