"""Связанный IC3B/диоды/Tone с конечной динамикой и перегрузкой TL072C.

Это float64 reference: на каждом отсчёте решается вся локальная нелинейная
система. Общий Newton здесь допустим; firmware-архитектурой этот код не является.
"""

from dataclasses import dataclass
import json
from pathlib import Path

import numpy as np

from device_models import TL072C, TL072CParameters
from potentiometers import split_resistances

ROOT = Path(__file__).resolve().parents[1]


@dataclass(frozen=True)
class FiniteClipParameters:
    sample_rate: float = 96_000.0
    integration: str = "bdf2"
    overdrive: bool = True
    od_ohm: float = 10_000.0
    treble: float = 0.5
    middle: float = 0.5
    bass: float = 0.5
    diode_is: float = 2.5e-9
    diode_n: float = 1.75
    thermal_voltage: float = 0.02585
    opamp: TL072CParameters = TL072CParameters()


class FiniteTL072ClipModel:
    """Неявная MNA-модель с двумя локальными нелинейностями.

    Неизвестные: узловые напряжения, ток выходного источника IC3B и внутреннее
    напряжение доминирующего полюса. Нелинейны D4/D5, slew limiter и зависимое
    от выходного тока ограничение размаха TL072C.
    """

    def __init__(self, p: FiniteClipParameters = FiniteClipParameters()):
        self.p = p
        if p.integration not in ("be", "bdf2"):
            raise ValueError("поддерживаются BE и BDF2")
        if p.sample_rate <= 0 or not 0 <= p.od_ohm <= 50_000:
            raise ValueError("неверная частота или VR2")
        data = json.loads((ROOT / "reference/components.json").read_text())
        rows = []
        for c in data["components"]:
            if c["block"] == "IC3B_clip" or (
                c["block"] == "tone_IC4A"
                and c["ref"] not in ("R16", "C14", "R15", "E9")
            ):
                rows.append((c["ref"], c["kind"], *c["nodes"], c["value"]))
        by_ref = {c["ref"]: c for c in data["components"]}
        for ref, q in (("VR4", p.treble), ("VR5", p.middle), ("VR6", p.bass)):
            if not 0 <= q <= 1:
                raise ValueError("координата потенциометра вне [0,1]")
            c = by_ref[ref]
            a, w, b = c["nodes"]
            ra, rb = split_resistances(ref, q)
            rows.extend(((ref + "A", "R", a, w, ra),
                         (ref + "B", "R", w, b, rb)))
        if p.overdrive:
            rows.append(("VR2effective", "R", "clip_ref", "G", p.od_ohm))

        parent = {}

        def find(node):
            parent.setdefault(node, node)
            if parent[node] != node:
                parent[node] = find(parent[node])
            return parent[node]

        for _, kind, a, b, value in rows:
            if kind == "R" and value == 0:
                aa, bb = find(a), find(b)
                if aa != bb:
                    if aa == "G":
                        parent[bb] = aa
                    else:
                        parent[aa] = bb
        self.canonical = find
        self.rows = [(ref, kind, find(a), find(b), value)
                     for ref, kind, a, b, value in rows
                     if not (kind == "R" and value == 0) and find(a) != find(b)]
        self.nodes = sorted({node for _, _, a, b, _ in self.rows
                             for node in (a, b)} - {"G"})
        self.index = {node: i for i, node in enumerate(self.nodes)}
        self.n = len(self.nodes)
        self.i_source = self.n
        self.i_internal = self.n + 1
        self.size = self.n + 2
        self.G = np.zeros((self.n, self.n))
        self.C = np.zeros_like(self.G)
        for _, kind, a, b, value in self.rows:
            e = self.incidence(a, b)
            if kind == "R":
                self.G += np.outer(e, e) / value
            elif kind == "C":
                self.C += value * np.outer(e, e)
            else:
                raise ValueError(kind)
        self.diode_e = self.incidence("clip", "clip_ref")
        self.opamp = TL072C(p.opamp)
        self.state = np.zeros(self.size)
        self.previous_state = np.zeros(self.size)
        self.steps = 0

    def incidence(self, a, b):
        e = np.zeros(self.n)
        for node, sign in ((self.canonical(a), 1), (self.canonical(b), -1)):
            if node != "G":
                e[self.index[node]] += sign
        return e

    def diode(self, voltage):
        q = np.clip(voltage / (self.p.diode_n * self.p.thermal_voltage), -80, 80)
        current = 2 * self.p.diode_is * np.sinh(q)
        conductance = (2 * self.p.diode_is * np.cosh(q)
                       / (self.p.diode_n * self.p.thermal_voltage))
        return float(current), float(conductance)

    def _order(self):
        return 1.5 if self.p.integration == "bdf2" and self.steps else 1.0

    def _history(self):
        if self.p.integration == "bdf2" and self.steps:
            return 2 * self.state - 0.5 * self.previous_state
        return self.state

    def _output_law(self, internal_v, source_current_a):
        swing = self.opamp.available_swing_v(source_current_a)
        if swing <= 0:
            return 0.0
        # Гладкая монотонная аппроксимация hard rail. Степень 16 сохраняет
        # линейность далеко до шины и избегает разрыва Jacobian при насыщении.
        ratio = internal_v / swing
        return float(internal_v / (1 + abs(ratio) ** 16) ** (1 / 16))

    def residual_and_jacobian(self, x, input_v):
        fs = self.p.sample_rate
        order = self._order()
        history = self._history()
        residual = np.zeros(self.size)
        jacobian = np.zeros((self.size, self.size))

        dynamic = self.G + order * fs * self.C
        residual[:self.n] = dynamic @ x[:self.n] - fs * self.C @ history[:self.n]
        jacobian[:self.n, :self.n] = dynamic
        # Ток идеального нулевого выходного сопротивления входит в KCL b_out.
        residual[self.index["b_out"]] += x[self.i_source]
        jacobian[self.index["b_out"], self.i_source] = 1.0

        diode_v = float(self.diode_e @ x[:self.n])
        diode_i, diode_g = self.diode(diode_v)
        residual[:self.n] += self.diode_e * diode_i
        jacobian[:self.n, :self.n] += diode_g * np.outer(self.diode_e, self.diode_e)

        internal = x[self.i_internal]
        source_current = x[self.i_source]
        output = x[self.index["b_out"]]
        law = self._output_law(internal, source_current)
        residual[self.i_source] = output - law
        jacobian[self.i_source, self.index["b_out"]] = 1.0
        # Центральная производная только локального паспортного закона.
        for column, value in ((self.i_internal, internal),
                              (self.i_source, source_current)):
            delta = 1e-7 * max(1.0, abs(value))
            if column == self.i_internal:
                plus = self._output_law(internal + delta, source_current)
                minus = self._output_law(internal - delta, source_current)
            else:
                plus = self._output_law(internal, source_current + delta)
                minus = self._output_law(internal, source_current - delta)
            jacobian[self.i_source, column] = -(plus - minus) / (2 * delta)

        vminus = x[self.index["b_minus"]]
        pole = 2 * np.pi * self.opamp.pole_hz
        gain_rate = 2 * np.pi * self.opamp.p.gain_bandwidth_hz
        raw_rate = gain_rate * (input_v - vminus + self.opamp.p.input_offset_v) - pole * internal
        slew = self.opamp.p.slew_rate_v_per_s
        limited_rate = float(np.clip(raw_rate, -slew, slew))
        residual[self.i_internal] = (order * fs * internal
                                     - fs * history[self.i_internal] - limited_rate)
        jacobian[self.i_internal, self.i_internal] = order * fs
        if abs(raw_rate) < slew:
            jacobian[self.i_internal, self.i_internal] += pole
            jacobian[self.i_internal, self.index["b_minus"]] = gain_rate
        return residual, jacobian

    def step(self, input_v):
        if not np.isfinite(input_v):
            raise ValueError("нечисловой вход")
        x = self.state.copy()
        worst_kcl = 0.0
        for iterations in range(1, 81):
            residual, jacobian = self.residual_and_jacobian(x, input_v)
            scaled = residual.copy()
            scaled[:self.n] /= 1e-3
            scaled[self.i_internal] /= 1e6
            scaled_jacobian = jacobian.copy()
            scaled_jacobian[:self.n, :] /= 1e-3
            scaled_jacobian[self.i_internal, :] /= 1e6
            norm = float(np.max(np.abs(scaled)))
            if norm < 2e-9:
                break
            delta = np.linalg.solve(scaled_jacobian, -scaled)
            old = norm
            damping = 1.0
            for _ in range(50):
                candidate = x + damping * delta
                trial, _ = self.residual_and_jacobian(candidate, input_v)
                trial[:self.n] /= 1e-3
                trial[self.i_internal] /= 1e6
                if np.max(np.abs(trial)) < old:
                    x = candidate
                    break
                damping *= 0.5
            else:
                raise RuntimeError("line search TL072/clip не сошёлся")
        else:
            raise RuntimeError("Newton TL072/clip не сошёлся")
        residual, _ = self.residual_and_jacobian(x, input_v)
        worst_kcl = float(np.max(np.abs(residual[:self.n])))
        if worst_kcl > 2e-10 or not np.all(np.isfinite(x)):
            raise RuntimeError(f"невязка KCL {worst_kcl}")
        self.previous_state = self.state
        self.state = x
        self.steps += 1
        return x.copy(), {
            "iterations": iterations,
            "kcl_a": worst_kcl,
            "output_constraint_v": float(abs(residual[self.i_source])),
            "opamp_dynamic_v_per_s": float(abs(residual[self.i_internal])),
            "source_current_a": float(x[self.i_source]),
            "internal_v": float(x[self.i_internal]),
        }

    def voltage(self, x, node):
        node = self.canonical(node)
        return 0.0 if node == "G" else float(x[self.index[node]])
