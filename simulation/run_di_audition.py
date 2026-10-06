"""Короткий воспроизводимый WAV-прогон реальной DI-партии через Orange MNA."""

from __future__ import annotations

import argparse
import time
import wave
from pathlib import Path

import numpy as np

from orange_full_mna import FullMNAParameters, OrangeFullMNA, ROOT


SOURCE = ROOT / "dry_48k_mono.wav"
OUT = ROOT / "simulation/experiments/di_audition"
RATE = 48_000
START_S = 93.7
DURATION_S = 1.5
INPUT_PEAK_V = 0.100


def read_excerpt(start_s: float, duration_s: float | None) -> np.ndarray:
    with wave.open(str(SOURCE), "rb") as stream:
        if (stream.getnchannels(), stream.getsampwidth(), stream.getframerate()) != (1, 2, RATE):
            raise ValueError("ожидается mono PCM16 48 кГц")
        stream.setpos(round(start_s * RATE))
        count = stream.getnframes() - stream.tell() if duration_s is None else round(duration_s * RATE)
        raw = stream.readframes(count)
    signal = np.frombuffer(raw, dtype="<i2").astype(np.float64) / 32768.0
    signal -= float(np.mean(signal))
    signal *= INPUT_PEAK_V / float(np.max(np.abs(signal)))
    return signal


def write_pcm16(path: Path, signal: np.ndarray, scale: float) -> None:
    pcm = np.int16(np.clip(signal / scale, -1.0, 1.0) * 32767.0)
    with wave.open(str(path), "wb") as stream:
        stream.setnchannels(1)
        stream.setsampwidth(2)
        stream.setframerate(RATE)
        stream.writeframes(pcm.astype("<i2", copy=False).tobytes())


def parse_arguments() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--full", action="store_true", help="обработать всю запись")
    return parser.parse_args()


def main() -> int:
    args = parse_arguments()
    OUT.mkdir(parents=True, exist_ok=True)
    start_s = 0.0 if args.full else START_S
    duration_s = None if args.full else DURATION_S
    source = read_excerpt(start_s, duration_s)
    actual_duration_s = len(source) / RATE
    stem = "full" if args.full else "excerpt"
    parameters = FullMNAParameters(
        sample_rate=RATE,
        integration="bdf2",
        newton_linear_solver="schur",
        load="resistive",
        gain=0.5,
        overdrive_enabled=True,
        overdrive=0.5,
        treble=0.5,
        middle=0.5,
        bass=0.5,
        volume=0.5,
    )
    model = OrangeFullMNA(parameters, np.float64)
    output = np.zeros_like(source)
    maximum_iterations = maximum_continuation = 0
    continuation_samples = 0
    started = time.perf_counter()
    for index, value in enumerate(source):
        state, diagnostic = model.step(value)
        output[index] = model.voltage(state, "speaker_hot")
        maximum_iterations = max(maximum_iterations, diagnostic["iterations"])
        maximum_continuation = max(maximum_continuation, diagnostic["continuation_steps"])
        continuation_samples += diagnostic["continuation_steps"] > 0
        if index % (5 * RATE) == 0:
            passed = time.perf_counter() - started
            rendered = index / RATE
            eta = passed * (actual_duration_s / rendered - 1.0) if rendered > 0 else 0.0
            print(f"{rendered:.0f}/{actual_duration_s:.1f} с, осталось ~{eta / 60:.1f} мин", flush=True)
    elapsed = time.perf_counter() - started

    fade = min(len(source), RATE // 100)
    source[-fade:] *= np.linspace(1.0, 0.0, fade)
    output[-fade:] *= np.linspace(1.0, 0.0, fade)
    dry_name = f"dry_100mv_{stem}.wav"
    output_name = f"orange_mid_od_{stem}.wav"
    write_pcm16(OUT / dry_name, source, 1.05 * float(np.max(np.abs(source))))
    write_pcm16(OUT / output_name, output, 1.05 * float(np.max(np.abs(output))))
    report = f"""# Прослушивание реальной DI-партии

- источник: `dry_48k_mono.wav`, участок {start_s:.1f}–{start_s + actual_duration_s:.1f} с;
- вход модели: {INPUT_PEAK_V * 1000:.0f} мВ peak;
- BDF2 48 кГц, резистивная нагрузка;
- Gain/Overdrive/Treble/Middle/Bass/Volume = 0,5, Overdrive включён;
- максимум итераций Newton: {maximum_iterations};
- максимум шагов продолжения источника: {maximum_continuation};
- отсчётов с продолжением: {continuation_samples}/{len(source)};
- host-время: {elapsed:.1f} с.

WAV нормированы для раздельного прослушивания; их громкость не показывает
физический коэффициент усиления:

- [сухой вход]({dry_name});
- [Orange, средние ручки + OD]({output_name}).
"""
    report_path = OUT / f"report_{stem}.md"
    report_path.write_text(report, encoding="utf-8")
    print(report_path)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
