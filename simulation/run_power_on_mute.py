"""Совместный cold start питания, mute-контроллера и полного аудиотракта."""

import json
import math

import numpy as np

from device_models import TL072CParameters
from orange_full_mna import FullMNAParameters, OrangeFullMNA, ROOT
from orange_mute import MuteParameters, OrangeMute
from orange_supply import OrangeSupply, SupplyParameters

OUT = ROOT / "simulation/experiments/power_on_mute"


def run(mode):
    audio_rate = 48_000.0
    supply_rate = 4_000.0
    ratio = round(audio_rate / supply_rate)
    opamp = TL072CParameters(input_offset_v=3.0e-3)
    model = OrangeFullMNA(FullMNAParameters(
        sample_rate=audio_rate, volume=0.8, load="reactive_speaker", opamp=opamp),
        np.float64)
    supply = OrangeSupply(SupplyParameters(update_rate_hz=supply_rate), cold_start=True)
    mute = None
    if mode != "forced_on":
        mute = OrangeMute(MuteParameters(
            sample_rate_hz=supply_rate,
            d10_reversed=mode.startswith("d10_reversed"),
            d12_reversed=mode.endswith("d12_reversed")))

    duration = 0.60
    count = round(duration * audio_rate)
    output = np.zeros(count)
    gate_log = []
    rail_log = []
    maximum_kcl = 0.0
    average_power_current = 0.0
    average_opamp_current = 0.0
    for sample in range(count):
        if sample % ratio == 0:
            rail_fraction = min(1.0, supply.positive24 / 24.0)
            rails = supply.step(
                0.055 * rail_fraction + average_power_current,
                0.055 * rail_fraction + average_power_current,
                0.0056 * rail_fraction + average_opamp_current,
                0.0056 * rail_fraction + average_opamp_current)
            phase_time = supply.time
            raw_ac = (math.sqrt(2.0) * supply.p.secondary_rms_v
                      * math.sin(2 * math.pi * supply.p.mains_hz * phase_time))
            if mute is None:
                gate = 0.5
            else:
                mute_state, _ = mute.step(raw_ac, rails[1])
                gate = float(mute_state[mute.index["mute_gate"]])
            model.set_supply_rails(*rails)
            model.set_mute_gate(gate)
            gate_log.append(gate)
            rail_log.append(rails)
            average_power_current = 0.0
            average_opamp_current = 0.0
        state, diagnostic = model.step(0.0)
        output[sample] = model.voltage(state, "speaker_hot")
        average_power_current += abs(float(state[model.i_power_source])) / ratio
        average_opamp_current += sum(
            abs(float(state[model.i_op_source[name]]))
            for name, _, _, _ in model.OPAMPS) / ratio
        maximum_kcl = max(maximum_kcl, diagnostic["kcl_a"])

    gate_log = np.asarray(gate_log)
    rail_log = np.asarray(rail_log)
    first_200ms = output[:round(0.2 * audio_rate)]
    settled = output[round(0.4 * audio_rate):]
    return {
        "mode": mode,
        "output_peak_first_200ms_v": float(np.max(np.abs(first_200ms))),
        "output_rms_first_200ms_v": float(np.sqrt(np.mean(first_200ms**2))),
        "output_rms_400_600ms_v": float(np.sqrt(np.mean(settled**2))),
        "gate_min_v": float(np.min(gate_log)),
        "gate_max_v": float(np.max(gate_log)),
        "final_rails_v": rail_log[-1].tolist(),
        "max_kcl_a": maximum_kcl,
    }


def main():
    modes = ("literal", "literal_d12_reversed", "d10_reversed",
             "d10_reversed_d12_reversed", "forced_on")
    cases = [run(mode) for mode in modes]
    metrics = {
        "status": "cold-start topology experiment; polarity not yet accepted",
        "audio_rate_hz": 48_000,
        "control_rate_hz": 4_000,
        "tl072_input_offset_v": 3.0e-3,
        "cases": cases,
    }
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "metrics.json").write_text(
        json.dumps(metrics, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(metrics, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
