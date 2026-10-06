"""Медленная MNA управляющей цепи mute и модель шунта 2SK30GR.

Полярности D10/D12 параметризованы: качество исходного листа не позволяет
принимать старую транскрипцию без проверки режима Q1.
"""

from dataclasses import dataclass
import math

import numpy as np


@dataclass(frozen=True)
class MuteParameters:
    sample_rate_hz: float = 4_000.0
    r48_ohm: float = 6_800.0
    r47_ohm: float = 47_000.0
    r46_ohm: float = 2_200_000.0
    r45_ohm: float = 10_000_000.0
    e21_f: float = 2.2e-6
    c25_f: float = 1.0e-6
    zener_v: float = 15.0
    diode_is_a: float = 1.0e-12
    diode_n: float = 1.8
    zener_knee_current_a: float = 1.0e-6
    zener_slope_v: float = 0.10
    d10_reversed: bool = False
    d12_reversed: bool = False
    # Диапазон GR: IDSS 2.6...6.5 mA. Центральные Vp/IDSS — гипотеза sweep.
    jfet_idss_a: float = 4.55e-3
    jfet_vp_v: float = -2.0
    jfet_off_conductance_s: float = 1.0e-7


class OrangeMute:
    NODES = ("mute_rect", "mute_zener", "mute_bias", "mute_delay", "mute_gate")

    def __init__(self, p=MuteParameters()):
        self.p = p
        self.index = {name: i for i, name in enumerate(self.NODES)}
        self.state = np.zeros(len(self.NODES), dtype=np.float64)
        self.previous = self.state.copy()
        self._prepare()

    def _e(self, a, b):
        e = np.zeros(len(self.NODES))
        if a in self.index:
            e[self.index[a]] += 1.0
        if b in self.index:
            e[self.index[b]] -= 1.0
        return e

    def _prepare(self):
        p = self.p
        self.G = np.zeros((len(self.NODES), len(self.NODES)))
        self.C = np.zeros_like(self.G)
        for a, b, value in (("mute_bias", "mute_zener", p.r48_ohm),
                            ("mute_bias", "VN24", p.r47_ohm),
                            ("mute_bias", "mute_delay", p.r46_ohm),
                            ("mute_delay", "mute_gate", p.r45_ohm)):
            e = self._e(a, b)
            self.G += np.outer(e, e) / value
        for a, b, value in (("mute_rect", "G", p.e21_f),
                            ("mute_gate", "G", p.c25_f)):
            e = self._e(a, b)
            self.C += value * np.outer(e, e)

    def _diode(self, voltage):
        scale = self.p.diode_n * 0.02585
        q = np.clip(voltage / scale, -80.0, 40.0)
        exponential = math.exp(q)
        return (self.p.diode_is_a * (exponential - 1.0),
                self.p.diode_is_a * exponential / scale)

    def _zener(self, voltage):
        current, derivative = self._diode(voltage)
        reverse = -voltage - self.p.zener_v
        if reverse > 0.0:
            q = min(reverse / self.p.zener_slope_v, 30.0)
            avalanche = self.p.zener_knee_current_a * math.expm1(q)
            current -= avalanche
            derivative += (self.p.zener_knee_current_a
                           * math.exp(q) / self.p.zener_slope_v)
        return current, derivative

    def _port(self, a, b, fixed_a=0.0, fixed_b=0.0, reversed=False):
        e = self._e(a, b)
        offset = fixed_a - fixed_b
        if reversed:
            return -e, -offset
        return e, offset

    def residual_jacobian(self, x, ac_b_v, vn24_v):
        fs = self.p.sample_rate_hz
        residual = (self.G + fs * self.C) @ x - fs * self.C @ self.state
        jacobian = self.G + fs * self.C
        # R47 ends at the fixed negative rail.
        e47 = self._e("mute_bias", "VN24")
        residual += e47 * (-vn24_v / self.p.r47_ohm)
        # D10, D12 and the asymmetric bypass diode D11.
        ports = (
            (*self._port("G", "mute_rect", fixed_a=ac_b_v,
                         reversed=self.p.d10_reversed), False),
            (*self._port("mute_zener", "mute_rect",
                         reversed=self.p.d12_reversed), True),
            (*self._port("mute_delay", "mute_bias"), False),
        )
        for e, offset, zener in ports:
            voltage = float(e @ x + offset)
            current, conductance = self._zener(voltage) if zener else self._diode(voltage)
            residual += e * current
            jacobian += conductance * np.outer(e, e)
        return residual, jacobian

    def step(self, ac_b_v, vn24_v):
        x = self.state.copy()
        for iterations in range(1, 81):
            residual, jacobian = self.residual_jacobian(x, ac_b_v, vn24_v)
            norm = float(np.max(np.abs(residual)))
            if norm < 1e-10:
                break
            delta = np.linalg.solve(jacobian, -residual)
            damping = 1.0
            for _ in range(30):
                candidate = x + damping * delta
                trial, _ = self.residual_jacobian(candidate, ac_b_v, vn24_v)
                if np.max(np.abs(trial)) < norm:
                    x = candidate
                    break
                damping *= 0.5
            else:
                raise RuntimeError("mute line search не сошёлся")
        else:
            raise RuntimeError("mute Newton не сошёлся")
        self.previous = self.state
        self.state = x
        return x.copy(), {"iterations": iterations, "kcl_a": norm}

    def channel_conductance_s(self, gate_source_v):
        """Малосигнальная проводимость последовательного канала около Vds=0."""
        p = self.p
        if gate_source_v <= p.jfet_vp_v:
            return p.jfet_off_conductance_s
        effective_gate = min(gate_source_v, 0.0)
        conductance = 2.0 * p.jfet_idss_a / abs(p.jfet_vp_v)
        conductance *= max(0.0, 1.0 - effective_gate / p.jfet_vp_v)
        return max(p.jfet_off_conductance_s, conductance)

    def channel_resistance_ohm(self, gate_source_v):
        return 1.0 / self.channel_conductance_s(gate_source_v)
