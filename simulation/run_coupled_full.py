"""Связь быстрого полного тракта с медленным питанием через усреднённые токи."""

import json
import math

import numpy as np

from orange_full_mna import FullMNAParameters, OrangeFullMNA, ROOT
from orange_supply import OrangeSupply

OUT = ROOT / "simulation/experiments/coupled_full"


def main():
    p = FullMNAParameters(volume=0.8, load="reactive_speaker")
    model = OrangeFullMNA(p, np.float64)
    supply = OrangeSupply()
    ratio = round(p.sample_rate / supply.p.update_rate_hz)
    if ratio * supply.p.update_rate_hz != p.sample_rate:
        raise RuntimeError("частоты audio/supply должны иметь целое отношение")
    # Периодическое состояние питания без сигнала.
    for _ in range(round(3 * supply.p.update_rate_hz)):
        rails = supply.step(0.060, 0.060, 0.006, 0.006)
    model.set_supply_rails(*rails)
    output = []
    rail_log = []
    positive24 = negative24 = positive15 = negative15 = 0.0
    max_kcl = 0.0
    count = round(0.12 * p.sample_rate)
    for sample in range(count):
        t = (sample + 1) / p.sample_rate
        level = 0.5 if t < 0.08 else 0.0
        guitar = level * (0.8 * math.sin(2 * math.pi * 197 * t)
                          + 0.2 * math.sin(2 * math.pi * 1901 * t))
        state, diagnostic = model.step(guitar)
        output.append(model.voltage(state, "speaker_hot"))
        power_current = float(state[model.i_power_source])
        positive24 += 0.055 + max(-power_current, 0.0)
        negative24 += 0.055 + max(power_current, 0.0)
        for name, _, _, _ in model.OPAMPS:
            current = float(state[model.i_op_source[name]])
            positive15 += 0.0014 + max(-current, 0.0)
            negative15 += 0.0014 + max(current, 0.0)
        max_kcl = max(max_kcl, diagnostic["kcl_a"])
        if (sample + 1) % ratio == 0:
            rails = supply.step(positive24 / ratio, negative24 / ratio,
                                positive15 / ratio, negative15 / ratio)
            model.set_supply_rails(*rails)
            rail_log.append(rails)
            positive24 = negative24 = positive15 = negative15 = 0.0
    output = np.asarray(output)
    rail_log = np.asarray(rail_log)
    metrics = {
        "status": "coupled provisional supply and full reactive-load path",
        "audio_rate_hz": p.sample_rate,
        "supply_rate_hz": supply.p.update_rate_hz,
        "input_attack_v": 0.5,
        "attack_s": 0.08,
        "recovery_s": 0.04,
        "output_peak_v": float(np.max(np.abs(output))),
        "output_rms_v": float(np.sqrt(np.mean(output**2))),
        "rail_min_v": np.min(rail_log, axis=0).tolist(),
        "rail_max_v": np.max(rail_log, axis=0).tolist(),
        "rails": ["VP24", "VN24", "VP15", "VN15"],
        "max_kcl_a": max_kcl,
        "limitations": [
            "transformer series resistance is an engineering parameter",
            "speaker impedance parameters are not measured",
            "mute power-on circuit is not yet coupled",
            "rail feedback uses block-averaged currents",
        ],
    }
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(metrics, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
