"""Свёртка результата модели усилителя с измеренным импульсом кабинета."""

from __future__ import annotations

import argparse
import struct
import wave
from pathlib import Path

import numpy as np


def read_wav(path: Path) -> tuple[int, np.ndarray]:
    """Прочитать моно PCM16/24/32 или IEEE float32 без зависимости от scipy."""
    raw = path.read_bytes()
    if raw[:4] != b"RIFF" or raw[8:12] != b"WAVE":
        raise ValueError(f"{path}: не RIFF/WAVE")
    position = 12
    fmt = data = None
    while position + 8 <= len(raw):
        name = raw[position : position + 4]
        size = struct.unpack_from("<I", raw, position + 4)[0]
        chunk = raw[position + 8 : position + 8 + size]
        if name == b"fmt ":
            fmt = chunk
        elif name == b"data":
            data = chunk
        position += 8 + size + (size & 1)
    if fmt is None or data is None or len(fmt) < 16:
        raise ValueError(f"{path}: нет fmt/data")
    encoding, channels, rate, _, _, bits = struct.unpack_from("<HHIIHH", fmt)
    if channels != 1:
        raise ValueError(f"{path}: нужен монофонический WAV")
    if encoding == 3 and bits == 32:
        signal = np.frombuffer(data, dtype="<f4").astype(np.float64)
    elif encoding == 1 and bits == 16:
        signal = np.frombuffer(data, dtype="<i2").astype(np.float64) / 32768.0
    elif encoding == 1 and bits == 32:
        signal = np.frombuffer(data, dtype="<i4").astype(np.float64) / 2147483648.0
    else:
        raise ValueError(f"{path}: неподдерживаемый WAV format={encoding}, bits={bits}")
    return rate, signal


def resample_linear(signal: np.ndarray, source_rate: int, target_rate: int) -> np.ndarray:
    if source_rate == target_rate:
        return signal
    count = round(len(signal) * target_rate / source_rate)
    source_positions = np.arange(len(signal), dtype=np.float64)
    target_positions = np.arange(count, dtype=np.float64) * source_rate / target_rate
    return np.interp(target_positions, source_positions, signal)


def fft_convolve_blocks(signal: np.ndarray, impulse: np.ndarray) -> np.ndarray:
    """Линейная свёртка overlap-add с умеренным расходом памяти."""
    block = 1 << 18
    fft_size = 1
    while fft_size < block + len(impulse) - 1:
        fft_size <<= 1
    spectrum = np.fft.rfft(impulse, fft_size)
    result = np.zeros(len(signal) + len(impulse) - 1, dtype=np.float64)
    for begin in range(0, len(signal), block):
        part = signal[begin : begin + block]
        convolved = np.fft.irfft(np.fft.rfft(part, fft_size) * spectrum, fft_size)
        valid = len(part) + len(impulse) - 1
        result[begin : begin + valid] += convolved[:valid]
    return result


def write_pcm16(path: Path, rate: int, signal: np.ndarray, peak_dbfs: float = -1.0) -> float:
    source_peak = float(np.max(np.abs(signal)))
    gain = 10.0 ** (peak_dbfs / 20.0) / max(source_peak, 1.0e-30)
    pcm = np.int16(np.clip(signal * gain, -1.0, 1.0) * 32767.0)
    with wave.open(str(path), "wb") as stream:
        stream.setnchannels(1)
        stream.setsampwidth(2)
        stream.setframerate(rate)
        stream.writeframes(pcm.astype("<i2", copy=False).tobytes())
    return gain


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path, help="выход модели усилителя, WAV")
    parser.add_argument("impulse", type=Path, help="измеренный импульс кабинета, WAV")
    parser.add_argument("output", type=Path, help="результат для прослушивания, PCM16 WAV")
    parser.add_argument("--peak-dbfs", type=float, default=-1.0)
    args = parser.parse_args()

    rate, signal = read_wav(args.input)
    impulse_rate, impulse = read_wav(args.impulse)
    impulse = resample_linear(impulse, impulse_rate, rate)
    impulse -= float(np.mean(impulse))
    result = fft_convolve_blocks(signal, impulse)[: len(signal)]
    args.output.parent.mkdir(parents=True, exist_ok=True)
    gain = write_pcm16(args.output, rate, result, args.peak_dbfs)
    print(f"{args.output}: {rate} Гц, импульс {len(impulse)} отсчётов, слуховой gain={gain:.6g}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
