"""Законы ручек Orange и точные сопротивления их плеч.

Публичная координата — положение ручки 0..1. Нулевое сопротивление остаётся
нулём: вызывающая MNA обязана объединить узлы, а не вводить малый резистор.
"""

from dataclasses import dataclass
import math


@dataclass(frozen=True)
class Potentiometer:
    resistance_ohm: float
    taper: str


POTS = {
    "VR1": Potentiometer(10_000.0, "B"),
    "VR2": Potentiometer(50_000.0, "C"),
    "VR3": Potentiometer(50_000.0, "B"),
    "VR4": Potentiometer(250_000.0, "B"),
    "VR5": Potentiometer(25_000.0, "B"),
    "VR6": Potentiometer(250_000.0, "B"),
}

# Пользовательская координата идёт от минимального к максимальному эффекту.
# У VR1/VR3/VR4/VR6 это направление противоположно доле сопротивления A-W
# на схеме. Направления Tone подтверждены AC-аудитом полной пассивной сети:
# рост VR4 должен добавлять верх, рост VR6 — низ.
REVERSED_CONTROLS = {"VR1", "VR3", "VR4", "VR6"}


def _position(position: float) -> float:
    if not math.isfinite(position) or not 0.0 <= position <= 1.0:
        raise ValueError("положение ручки должно быть в [0, 1]")
    return float(position)


def logarithmic_fraction(position: float, curvature: float = 99.0) -> float:
    """Нормированный обычный логарифм с точными концами 0 и 1."""
    p = _position(position)
    if not math.isfinite(curvature) or curvature <= 0.0:
        raise ValueError("кривизна логарифма должна быть положительной")
    return math.log1p(curvature * p) / math.log1p(curvature)


def wiper_fraction(ref: str, position: float, curvature: float = 99.0) -> float:
    """Доля сопротивления A-W для механической координаты A→B."""
    p = _position(position)
    taper = POTS[ref].taper
    if taper == "B":
        return p
    if taper == "C":
        return 1.0 - logarithmic_fraction(1.0 - p, curvature)
    if taper == "A":
        return logarithmic_fraction(p, curvature)
    raise ValueError(f"неизвестный закон потенциометра {ref}: {taper}")


def split_resistances(ref: str, position: float,
                      curvature: float = 99.0) -> tuple[float, float]:
    q = wiper_fraction(ref, position, curvature)
    if ref in REVERSED_CONTROLS:
        q = 1.0 - q
    total = POTS[ref].resistance_ohm
    return total * q, total * (1.0 - q)


def overdrive_rheostat(position: float, curvature: float = 99.0) -> float:
    """VR2: 0 — минимальный эффект/50 кОм, 1 — максимум/перемычка."""
    effect = logarithmic_fraction(position, curvature)
    return POTS["VR2"].resistance_ohm * (1.0 - effect)
