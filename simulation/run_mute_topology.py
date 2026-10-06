"""Перебор полярностей D10/D12 и режимов Q1 при включении/выключении."""

import json
import math

import numpy as np

from orange_full_mna import ROOT
from orange_mute import MuteParameters, OrangeMute

OUT = ROOT / "simulation/experiments/mute_topology"


def envelope(time):
    if time < 0.10:
        return time / 0.10
    if time < 3.20:
        return 1.0
    return math.exp(-(time - 3.20) / 0.12)


def run(d10_reversed, d12_reversed):
    p = MuteParameters(d10_reversed=d10_reversed, d12_reversed=d12_reversed)
    model = OrangeMute(p)
    count = round(4.0 * p.sample_rate_hz)
    gate = np.zeros(count)
    resistance = np.zeros(count)
    maximum_iterations = 0
    maximum_kcl = 0.0
    for sample in range(count):
        time = (sample + 1) / p.sample_rate_hz
        power = envelope(time)
        ac_b = math.sqrt(2.0) * 18.0 * power * math.sin(2 * math.pi * 50.0 * time)
        state, diagnostic = model.step(ac_b, -24.0 * power)
        gate[sample] = state[model.index["mute_gate"]]
        resistance[sample] = model.channel_resistance_ohm(gate[sample])
        maximum_iterations = max(maximum_iterations, diagnostic["iterations"])
        maximum_kcl = max(maximum_kcl, diagnostic["kcl_a"])

    def window(start, end, values):
        a, b = round(start * p.sample_rate_hz), round(end * p.sample_rate_hz)
        section = values[a:b]
        return {"min": float(np.min(section)), "mean": float(np.mean(section)),
                "max": float(np.max(section))}

    return {
        "d10_reversed": d10_reversed,
        "d12_reversed": d12_reversed,
        "gate_v": {
            "startup_0_100ms": window(0.0, 0.1, gate),
            "steady_2800_3000ms": window(2.8, 3.0, gate),
            "poweroff_3200_3500ms": window(3.2, 3.5, gate),
        },
        "zero_signal_channel_resistance_ohm": {
            "startup_0_100ms": window(0.0, 0.1, resistance),
            "steady_2800_3000ms": window(2.8, 3.0, resistance),
            "poweroff_3200_3500ms": window(3.2, 3.5, resistance),
        },
        "max_iterations": maximum_iterations,
        "max_kcl_a": maximum_kcl,
    }


def main():
    cases = [run(d10, d12) for d10 in (False, True) for d12 in (False, True)]
    metrics = {
        "status": "polarity audit; no variant accepted without behavioral criterion",
        "source": "Orange Crush 20 L 2012-04-15",
        "device": "Toshiba 2SK30ATM GR range; central JFET parameters provisional",
        "cases": cases,
    }
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(metrics, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
