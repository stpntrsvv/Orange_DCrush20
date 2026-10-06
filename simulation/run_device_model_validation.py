"""Паспортные проверки поведенческих моделей TL072C и TDA2050."""

import json
import math
from pathlib import Path

from device_models import TL072C, TDA2050

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "simulation/experiments/device_models"


def db(value: complex) -> float:
    return 20 * math.log10(abs(value))


def measure_slew(device, amplitude_v: float, sample_rate_hz: float,
                 load, steps: int = 2000) -> float:
    previous = device.state_v
    maximum = 0.0
    for _ in range(steps):
        if isinstance(device, TL072C):
            output = device.step(amplitude_v, 0.0, sample_rate_hz, load)
        else:
            output = device.step(amplitude_v, 0.0, sample_rate_hz, load)
        maximum = max(maximum, abs(output - previous) * sample_rate_hz)
        previous = output
    return maximum


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    tl = TL072C()
    tda = TDA2050()

    tl_a100k = db(tl.linear_open_loop(100_000.0))
    tl_unity_hz = tl.pole_hz * math.sqrt(tl.p.dc_open_loop_gain ** 2 - 1)
    tl_slew = measure_slew(TL072C(), 10.0, 20.0e6, 10.0 / 2000.0)

    tda_a1k = db(tda.linear_open_loop(1000.0))
    tda_slew = measure_slew(TDA2050(), 1.0, 20.0e6, 8.0)

    metrics = {
        "status": "behavioral datasheet model; not transistor die model",
        "tl072c": {
            "source": "ST Doc ID 2298 Rev 7",
            "dominant_pole_hz": tl.pole_hz,
            "open_loop_gain_dc_v_per_v": tl.p.dc_open_loop_gain,
            "open_loop_gain_100khz_db": tl_a100k,
            "unity_gain_frequency_hz": tl_unity_hz,
            "measured_slew_v_per_us": tl_slew / 1e6,
            "swing_v": {
                "10kohm_datasheet_typ": tl.p.output_swing_10k_v,
                "10kohm_model": tl.available_swing_v(13.5 / 10_000),
                "2kohm_datasheet_typ": tl.p.output_swing_2k_v,
                "2kohm_model": tl.available_swing_v(12.0 / 2000),
            },
        },
        "tda2050": {
            "source": "ST Doc ID 1461 Rev 3",
            "engineering_assumptions": {
                "dc_open_loop_gain": tda.p.dc_open_loop_gain,
                "output_headroom_v": tda.p.output_headroom_v,
                "soa_knee_voltage_v": tda.p.soa_knee_voltage_v,
                "soa_power_w": tda.p.soa_power_w,
            },
            "dominant_pole_hz": tda.pole_hz,
            "open_loop_gain_1khz_db_datasheet_typ": 80.0,
            "open_loop_gain_1khz_db_model": tda_a1k,
            "measured_slew_v_per_us": tda_slew / 1e6,
            "output_at_4ohm_requested_100v_v": tda.output_limit_v(100.0, 4.0),
            "output_at_8ohm_requested_100v_v": tda.output_limit_v(100.0, 8.0),
            "safe_current_at_zero_output_a": tda.safe_output_current_a(0.0),
            "safe_current_at_20v_output_a": tda.safe_output_current_a(20.0),
        },
    }

    assert abs(tl_unity_hz / 4.0e6 - 1) < 1e-6
    assert abs(tl_slew / 16.0e6 - 1) < 1e-9
    assert abs(metrics["tl072c"]["swing_v"]["10kohm_model"] - 13.5) < 1e-12
    assert abs(metrics["tl072c"]["swing_v"]["2kohm_model"] - 12.0) < 1e-12
    assert abs(tda_a1k - 80.0) < 1e-12
    assert abs(tda_slew / 8.0e6 - 1) < 1e-9

    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    print(json.dumps(metrics, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
