"""Периодическое установление предварительной multirate-модели питания."""

import json
import numpy as np

from orange_full_mna import ROOT
from orange_supply import OrangeSupply

OUT = ROOT / "simulation/experiments/supply"


def main():
    supply = OrangeSupply()
    rate = supply.p.update_rate_hz
    samples = round(3.0 * rate)
    rails = np.zeros((samples, 4))
    # Типичные токи покоя из datasheet/инженерной оценки, не измерение Orange.
    for n in range(samples):
        rails[n] = supply.step(0.060, 0.060, 0.006, 0.006)
    period = round(rate / supply.p.mains_hz)
    last = rails[-period:]
    previous = rails[-2 * period:-period]
    metrics = {
        "status": "provisional slow supply; transformer loss not measured",
        "update_rate_hz": rate,
        "settling_period_difference_v": float(np.max(np.abs(last - previous))),
        "mean_v": np.mean(last, axis=0).tolist(),
        "ripple_peak_to_peak_v": np.ptp(last, axis=0).tolist(),
        "rails": ["VP24", "VN24", "VP15", "VN15"],
    }
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(metrics, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
