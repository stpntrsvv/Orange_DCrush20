"""Проверка законов и точных концов VR1..VR6."""

import json
from pathlib import Path

from potentiometers import POTS, overdrive_rheostat, split_resistances

ROOT = Path(__file__).resolve().parents[1]


def main():
    components = json.loads((ROOT / "reference/components.json").read_text())
    schematic = {c["ref"]: float(c["value"]) for c in components["components"]
                 if c["kind"] == "pot"}
    for ref, pot in POTS.items():
        assert schematic[ref] == pot.resistance_ohm
        start, end = split_resistances(ref, 0.0), split_resistances(ref, 1.0)
        if ref in ("VR1", "VR3", "VR4", "VR6"):
            assert start == (pot.resistance_ohm, 0.0)
            assert end == (0.0, pot.resistance_ohm)
        else:
            assert start == (0.0, pot.resistance_ohm)
            assert end == (pot.resistance_ohm, 0.0)
    for ref in ("VR1", "VR3", "VR4", "VR5", "VR6"):
        assert split_resistances(ref, 0.5) == (
            POTS[ref].resistance_ohm / 2, POTS[ref].resistance_ohm / 2)
    assert overdrive_rheostat(0.0) == 50_000.0
    assert overdrive_rheostat(1.0) == 0.0
    assert overdrive_rheostat(0.5) < 25_000.0
    print(json.dumps({
        "status": "ok",
        "laws": {ref: pot.taper for ref, pot in POTS.items()},
        "vr2_midpoint_ohm": overdrive_rheostat(0.5),
        "endpoints": "exact 0 ohm; MNA joins nodes",
    }, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
