"""Сгущение временной сетки полной float64-модели выше 768 кГц."""

import json

from orange_full_mna import FullMNAParameters, ROOT
from run_full_qualification import difference, scalars, simulate


OUT = ROOT / "simulation/experiments/timestep_convergence"


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    rates = (768_000.0, 1_536_000.0, 3_072_000.0, 6_144_000.0)
    results = []
    traces = {}
    for rate in rates:
        parameters = FullMNAParameters(sample_rate=rate, integration="bdf2")
        result = simulate(parameters, 0.1)
        traces[rate] = result
        results.append(scalars(
            f"bdf2_{int(rate)}", parameters, 0.1, result))

    comparisons = []
    for coarse, fine in zip(rates, rates[1:]):
        row = {"coarse_rate_hz": coarse, "fine_rate_hz": fine}
        row.update(difference(traces[coarse], traces[fine]))
        comparisons.append(row)

    metrics = {
        "status": "four-level float64 timestep convergence",
        "physics": "same provisional full MNA and 16 ms qualification input",
        "cases": results,
        "comparisons": comparisons,
    }
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8")
    print(json.dumps(metrics, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
