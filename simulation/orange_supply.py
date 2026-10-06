"""Медленная физическая модель двухполярного питания Orange.

Это внешний supply-блок для multirate-связи с аудио-MNA. Параметры потерь
трансформатора и динамического сопротивления стабилитронов инженерные: на схеме
их нет, поэтому они остаются явными и не выдаются за измерение аппарата.
"""

from dataclasses import dataclass
import math

import numpy as np


@dataclass(frozen=True)
class SupplyParameters:
    update_rate_hz: float = 4_000.0
    mains_hz: float = 50.0
    secondary_rms_v: float = 18.0
    bridge_drop_v: float = 0.85
    transformer_series_ohm: float = 1.2
    reservoir_f: float = 2_200e-6
    regulator_feed_ohm: float = 330.0
    regulated_reservoir_f: float = 100e-6
    zener_v: float = 15.0
    zener_dynamic_ohm: float = 5.0


class OrangeSupply:
    """Два одинаковых плеча bridge/reservoir/R330/zener, решаемые неявно."""

    def __init__(self, p=SupplyParameters(), cold_start=False):
        self.p = p
        self.time = 0.0
        initial24, initial15 = ((0.0, 0.0) if cold_start else (23.0, 15.0))
        self.positive24 = initial24
        self.negative24_magnitude = initial24
        self.positive15 = initial15
        self.negative15_magnitude = initial15

    def _side(self, previous24, previous15, load24, load15, source_peak):
        p = self.p
        fs = p.update_rate_hz
        x = np.array((previous24, previous15), dtype=np.float64)
        for _ in range(12):
            charge_on = source_peak - p.bridge_drop_v > x[0]
            gc = 1.0 / p.transformer_series_ohm if charge_on else 0.0
            zener_on = x[1] > p.zener_v
            gz = 1.0 / p.zener_dynamic_ohm if zener_on else 0.0
            charge = gc * (source_peak - p.bridge_drop_v - x[0])
            zener = gz * (x[1] - p.zener_v)
            residual = np.array((
                p.reservoir_f * fs * (x[0] - previous24) - charge
                + load24 + (x[0] - x[1]) / p.regulator_feed_ohm,
                p.regulated_reservoir_f * fs * (x[1] - previous15)
                - (x[0] - x[1]) / p.regulator_feed_ohm + load15 + zener,
            ))
            jacobian = np.array((
                (p.reservoir_f * fs + gc + 1 / p.regulator_feed_ohm,
                 -1 / p.regulator_feed_ohm),
                (-1 / p.regulator_feed_ohm,
                 p.regulated_reservoir_f * fs + 1 / p.regulator_feed_ohm + gz),
            ))
            delta = np.linalg.solve(jacobian, -residual)
            x += delta
            if np.max(np.abs(delta)) < 1e-12:
                break
        return float(x[0]), float(x[1])

    def step(self, positive24_load_a, negative24_load_a,
             positive15_load_a, negative15_load_a, mains_scale=1.0):
        p = self.p
        self.time += 1.0 / p.update_rate_hz
        source = (mains_scale * math.sqrt(2.0) * p.secondary_rms_v
                  * abs(math.sin(2 * math.pi * p.mains_hz * self.time)))
        self.positive24, self.positive15 = self._side(
            self.positive24, self.positive15, positive24_load_a,
            positive15_load_a, source)
        self.negative24_magnitude, self.negative15_magnitude = self._side(
            self.negative24_magnitude, self.negative15_magnitude,
            negative24_load_a, negative15_load_a, source)
        return (self.positive24, -self.negative24_magnitude,
                self.positive15, -self.negative15_magnitude)
