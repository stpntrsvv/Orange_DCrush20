"""Первичная квалификация полного быстрого тракта до электрического динамика."""

import json
import math

import numpy as np

from orange_full_mna import FullMNAParameters, OrangeFullMNA, ROOT

OUT = ROOT / "simulation/experiments/full_signal_path"


def run(load, volume, level, aux=0.0, duration=0.025):
    p = FullMNAParameters(load=load, volume=volume, aux_left_v=aux,
                          aux_right_v=-0.5 * aux)
    model = OrangeFullMNA(p, np.float64)
    count = round(duration * p.sample_rate)
    output = np.zeros(count)
    current = np.zeros(count)
    max_kcl = 0.0
    max_iterations = 0
    for sample in range(count):
        t = (sample + 1) / p.sample_rate
        guitar = level * (0.8 * math.sin(2 * math.pi * 197 * t)
                          + 0.2 * math.sin(2 * math.pi * 1901 * t))
        state, diagnostic = model.step(guitar)
        output[sample] = model.voltage(state, "speaker_hot")
        if model.i_speaker_series is not None:
            current[sample] = state[model.i_speaker_series]
        else:
            current[sample] = output[sample] / p.speaker_re_ohm
        max_kcl = max(max_kcl, diagnostic["kcl_a"])
        max_iterations = max(max_iterations, diagnostic["iterations"])
    return {
        "load": load, "volume": volume, "input_level_v": level,
        "aux_level_v": aux, "samples": count, "state_count": model.size,
        "output_rms_v": float(np.sqrt(np.mean(output**2))),
        "output_peak_v": float(np.max(np.abs(output))),
        "load_current_rms_a": float(np.sqrt(np.mean(current**2))),
        "real_power_w": float(np.mean(output * current)),
        "max_kcl_a": max_kcl, "max_iterations": max_iterations,
        "output": output,
    }


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    resistive = run("resistive", 0.5, 0.1)
    reactive = run("reactive_speaker", 0.5, 0.1)
    aux = run("reactive_speaker", 0.5, 0.0, aux=0.05)
    quiet = run("reactive_speaker", 0.0, 0.01)
    difference = reactive.pop("output") - resistive.pop("output")
    aux.pop("output")
    quiet.pop("output")
    relative = float(np.sqrt(np.mean(difference**2))
                     / max(resistive["output_rms_v"], 1e-15))
    metrics = {
        "status": "float64 fast path; supply/mute dynamics not yet coupled",
        "speaker_parameters": {
            "provenance": "engineering hypothesis; not measured Orange speaker",
            "re_ohm": FullMNAParameters().speaker_re_ohm,
            "le_h": FullMNAParameters().speaker_le_h,
            "rm_ohm": FullMNAParameters().speaker_rm_ohm,
            "resonance_hz": FullMNAParameters().speaker_resonance_hz,
            "q": FullMNAParameters().speaker_q,
        },
        "reactive_vs_resistive_relative_rms": relative,
        "cases": [resistive, reactive, aux, quiet],
        "float32_reactive_status": "known Newton residual floor; not accepted",
    }
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(metrics, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
