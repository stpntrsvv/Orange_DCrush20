"""Статическая MNA Orange: связный тракт INPUT -> электрическая нагрузка.

Одна топология исполняется в float64 reference и centered/scaled float32 shadow.
Питание пока задаётся внешними шинами; его медленная модель живёт отдельно.
"""

from dataclasses import dataclass, field
import json
from pathlib import Path

import numpy as np

from device_models import TDA2050, TDA2050Parameters, TL072C, TL072CParameters
from potentiometers import overdrive_rheostat, split_resistances

ROOT = Path(__file__).resolve().parents[1]


@dataclass(frozen=True)
class FullMNAParameters:
    sample_rate: float = 96_000.0
    integration: str = "bdf2"
    newton_linear_solver: str = "full"
    float32_solve_in_float64: bool = False
    float32_residual_in_float64: bool = False
    float32_compensated_residual: bool = False
    gain: float = 0.5
    overdrive_enabled: bool = True
    overdrive: float = 0.5
    treble: float = 0.5
    middle: float = 0.5
    bass: float = 0.5
    volume: float = 0.5
    aux_left_v: float = 0.0
    aux_right_v: float = 0.0
    mute_enabled: bool = False
    mute_gate_v: float = 0.5
    jfet_idss_a: float = 4.55e-3
    jfet_vp_v: float = -2.0
    jfet_off_conductance_s: float = 1.0e-7
    load: str = "reactive_speaker"
    speaker_re_ohm: float = 6.5
    speaker_le_h: float = 0.4e-3
    speaker_rm_ohm: float = 35.0
    speaker_resonance_hz: float = 100.0
    speaker_q: float = 4.0
    signal_diode_is: float = 2.5e-9
    signal_diode_n: float = 1.75
    thermal_voltage: float = 0.02585
    potentiometer_curvature: float = 99.0
    opamp: TL072CParameters = field(default_factory=TL072CParameters)
    poweramp: TDA2050Parameters = field(default_factory=TDA2050Parameters)


class OrangeFullMNA:
    """Полный быстрый сигнальный тракт и электрическая нагрузка в общей MNA.

    `dtype` задаёт арифметику всей траектории. Newton решается в безразмерных
    centered coordinates, поэтому f32 не хранит малые поправки поверх больших
    абсолютных величин внутри линейного solve.
    """

    OPAMPS = (("IC3A", "a_plus", "a_minus", "a_out"),
              ("IC3B", "b_plus", "b_minus", "b_out"),
              ("IC4A", "c_plus", "c_minus", "c_out"),
              ("IC4B", "G", "d_minus", "d_out"))

    def __init__(self, parameters=FullMNAParameters(), dtype=np.float64):
        self.p = parameters
        self.dtype = np.dtype(dtype)
        if self.dtype not in (np.dtype(np.float32), np.dtype(np.float64)):
            raise ValueError("поддерживаются только float32/float64")
        if parameters.integration not in ("be", "bdf2"):
            raise ValueError("поддерживаются BE/BDF2")
        if parameters.newton_linear_solver not in ("full", "schur"):
            raise ValueError("решатель Newton должен быть full/schur")
        for value in (parameters.gain, parameters.overdrive, parameters.treble,
                      parameters.middle, parameters.bass, parameters.volume):
            if not 0 <= value <= 1:
                raise ValueError("механическое положение ручки вне [0,1]")
        self._load_topology()
        self.prepare()

    def _load_topology(self):
        data = json.loads((ROOT / "reference/components.json").read_text())
        self.source_sha256 = data["source_sha256"]
        by_ref = {c["ref"]: c for c in data["components"]}
        selected = {"input", "IC3A_gain", "IC3B_clip", "tone_IC4A",
                    "IC4B_aux", "volume_power"}
        excluded = {"C13"}
        rows = [(c["ref"], c["kind"], *c["nodes"], c["value"])
                for c in data["components"]
                if c["block"] in selected and c["ref"] not in excluded]

        def split_pot(ref, coordinate):
            c = by_ref[ref]
            a, w, b = c["nodes"]
            ra, rb = split_resistances(
                ref, coordinate, self.p.potentiometer_curvature)
            return [(ref + "A", "R", a, w, ra),
                    (ref + "B", "R", w, b, rb)]

        rows.extend(split_pot("VR1", self.p.gain))
        rows.extend(split_pot("VR4", self.p.treble))
        rows.extend(split_pot("VR5", self.p.middle))
        rows.extend(split_pot("VR6", self.p.bass))
        rows.extend(split_pot("VR3", self.p.volume))
        if self.p.overdrive_enabled:
            # VR2 — реостат с соединёнными движком и нижним выводом.
            resistance = overdrive_rheostat(
                self.p.overdrive, self.p.potentiometer_curvature)
            rows.append(("VR2effective", "R", "clip_ref", "G", resistance))
        # Установленные сигнальные перемычки листа.
        rows.extend((("J9", "R", "aux_sum", "aux_link", 0.0),
                     ("J7", "R", "power_out", "speaker_hot", 0.0)))
        if self.p.load == "resistive":
            rows.append(("speaker_R", "R", "speaker_hot", "G",
                         self.p.speaker_re_ohm))
        elif self.p.load == "reactive_speaker":
            # Re + Le последовательно, затем Rm || Lm || Cm.
            rows.extend((("speaker_Re", "R", "speaker_hot", "speaker_coil",
                          self.p.speaker_re_ohm),
                         ("speaker_Cm", "C", "speaker_motor", "G",
                          self._speaker_cm()),
                         ("speaker_Rm", "R", "speaker_motor", "G",
                          self.p.speaker_rm_ohm)))
        else:
            raise ValueError("нагрузка должна быть resistive/reactive_speaker")
        # Нулевое плечо — топологическая перемычка. Узлы объединяются до MNA.
        parent = {}

        def find(node):
            parent.setdefault(node, node)
            if parent[node] != node:
                parent[node] = find(parent[node])
            return parent[node]

        def union(a, b):
            aa, bb = find(a), find(b)
            if aa == bb:
                return
            fixed = {"G", "VP15", "VN15"}
            if aa in fixed:
                parent[bb] = aa
            elif bb in fixed:
                parent[aa] = bb
            else:
                parent[bb] = aa

        for _, kind, a, b, value in rows:
            if kind == "R" and value == 0.0:
                union(a, b)
        self.canonical = find
        self.rows = [(ref, kind, find(a), find(b), value)
                     for ref, kind, a, b, value in rows
                     if not (kind == "R" and value == 0.0)
                     and find(a) != find(b)]
        self.nodes = sorted({node for _, _, a, b, _ in rows for node in (a, b)}
                            - {"G", "VP15", "VN15"})
        self.nodes = sorted({find(node) for node in self.nodes}
                            - {"G", "VP15", "VN15"})
        # Входной источник имеет отдельный узел `in`; rails не входят в unknowns.
        self.nodes = sorted((set(self.nodes) | {"in"}) - {"VP15", "VN15"})
        self.index = {node: i for i, node in enumerate(self.nodes)}
        self.n_nodes = len(self.nodes)
        self.source_nodes = ("in", "aux_l", "aux_r")
        self.i_voltage_source = {node: self.n_nodes + i
                                 for i, node in enumerate(self.source_nodes)}
        cursor = self.n_nodes + len(self.source_nodes)
        self.i_input_source = self.i_voltage_source["in"]
        self.i_op_source = {name: cursor + i
                            for i, (name, _, _, _) in enumerate(self.OPAMPS)}
        cursor += len(self.OPAMPS)
        self.i_op_internal = {name: cursor + i
                              for i, (name, _, _, _) in enumerate(self.OPAMPS)}
        cursor += len(self.OPAMPS)
        self.i_power_source = cursor
        self.i_power_internal = cursor + 1
        cursor += 2
        self.i_speaker_series = self.i_speaker_motor = None
        if self.p.load == "reactive_speaker":
            self.i_speaker_series = cursor
            self.i_speaker_motor = cursor + 1
            cursor += 2
        self.size = cursor
        # После построения топологии union-find больше не нужен в горячем пути.
        # Все встречающиеся имена преобразуются в простой словарный lookup.
        known_nodes = set(parent) | set(self.nodes) | {
            "G", "VP15", "VN15", "in", "aux_l", "aux_r"}
        canonical_map = {node: find(node) for node in known_nodes}
        self.canonical = canonical_map.__getitem__

    def _speaker_cm(self):
        omega = 2 * np.pi * self.p.speaker_resonance_hz
        return self.p.speaker_q / (self.p.speaker_rm_ohm * omega)

    def _speaker_lm(self):
        omega = 2 * np.pi * self.p.speaker_resonance_hz
        return self.p.speaker_rm_ohm / (self.p.speaker_q * omega)

    def _incidence(self, a, b):
        vector = np.zeros(self.n_nodes, dtype=self.dtype)
        for node, sign in ((a, 1), (b, -1)):
            node = self.canonical(node)
            if node == "G" or node in ("VP15", "VN15"):
                continue
            vector[self.index[node]] += self.dtype.type(sign)
        return vector

    def prepare(self):
        d = self.dtype
        self.G = np.zeros((self.n_nodes, self.n_nodes), dtype=d)
        self.C = np.zeros_like(self.G)
        for _, kind, a, b, value in self.rows:
            # D6/D7 are handled as nonlinear devices against fixed rails.
            if kind not in ("R", "C"):
                continue
            e = self._incidence(a, b)
            matrix = self.G if kind == "R" else self.C
            coefficient = 1.0 / value if kind == "R" else value
            matrix += d.type(coefficient) * np.outer(e, e)
        self.diode_ports = [
            ("D4/D5", self._incidence("clip", "clip_ref"), 0.0, True),
            ("D6", self._incidence("input_protected", "VP15"), -15.0, False),
            ("D7", self._incidence("VN15", "input_protected"), -15.0, False),
        ]
        self.diode_ports = [(*port, np.outer(port[1], port[1]))
                            for port in self.diode_ports]
        self.jfet_e = self._incidence("mute_input", "volume_top")
        self.speaker_series_e = self.speaker_motor_e = None
        if self.i_speaker_series is not None:
            self.speaker_series_e = self._incidence(
                "speaker_coil", "speaker_motor")
            self.speaker_motor_e = self._incidence("speaker_motor", "G")
        self.opamps = {name: TL072C(self.p.opamp) for name, _, _, _ in self.OPAMPS}
        self.poweramp = TDA2050(self.p.poweramp)
        self.mute_gate_v = (-5.0 if self.p.mute_enabled else self.p.mute_gate_v)
        self.supply_rails = [self.p.poweramp.supply_positive_v,
                             self.p.poweramp.supply_negative_v,
                             self.p.opamp.supply_positive_v,
                             self.p.opamp.supply_negative_v]
        self.state_scale = np.ones(self.size, dtype=d)
        self.state_scale[:self.n_nodes] = d.type(15.0)
        for node in self.source_nodes:
            self.state_scale[self.i_voltage_source[node]] = d.type(0.01)
        for name, _, _, _ in self.OPAMPS:
            self.state_scale[self.i_op_source[name]] = d.type(0.01)
            self.state_scale[self.i_op_internal[name]] = d.type(15.0)
        self.state_scale[self.i_power_source] = d.type(5.0)
        self.state_scale[self.i_power_internal] = d.type(24.0)
        if self.i_speaker_series is not None:
            self.state_scale[self.i_speaker_series] = d.type(5.0)
            self.state_scale[self.i_speaker_motor] = d.type(5.0)
        self.row_scale = np.ones(self.size, dtype=d)
        self.row_scale[:self.n_nodes] = d.type(0.01)  # KCL, A
        for node in self.source_nodes:
            self.row_scale[self.i_voltage_source[node]] = d.type(15.0)
        for name, _, _, _ in self.OPAMPS:
            self.row_scale[self.i_op_source[name]] = d.type(15.0)
            self.row_scale[self.i_op_internal[name]] = d.type(16.0e6)
        self.row_scale[self.i_power_source] = d.type(24.0)
        self.row_scale[self.i_power_internal] = d.type(8.0e6)
        if self.i_speaker_series is not None:
            self.row_scale[self.i_speaker_series] = d.type(24.0)
            self.row_scale[self.i_speaker_motor] = d.type(24.0)
        if self.dtype == np.dtype(np.float32):
            self.G_accumulator = self.G.astype(np.float64)
            self.C_accumulator = self.C.astype(np.float64)
        else:
            self.G_accumulator = self.G
            self.C_accumulator = self.C
        self.linear_row_columns = [
            np.flatnonzero((self.G[row] != 0) | (self.C[row] != 0))
            for row in range(self.n_nodes)]
        # Symmetric signal path has zero quiescent solution with fixed ±15 V.
        self.operating_point = np.zeros(self.size, dtype=d)
        self.state_delta = np.zeros(self.size, dtype=d)
        self.previous_delta = np.zeros(self.size, dtype=d)
        self.previous_input_v = d.type(0.0)
        self.steps = 0
        self._prepare_schur_partition()

    def _prepare_schur_partition(self):
        """Зафиксировать границу переменных, затронутых нелинейными законами."""
        retained = {self.index[self.canonical(node)] for node in (
            "clip", "clip_ref", "input_protected", "mute_input", "volume_top")
            if self.canonical(node) != "G"}
        for name, plus, minus, output in self.OPAMPS:
            retained.update((self.index[self.canonical(output)],
                             self.i_op_source[name], self.i_op_internal[name]))
            for node in (plus, minus):
                if self.canonical(node) != "G":
                    retained.add(self.index[self.canonical(node)])
        retained.update((self.index[self.canonical("power_out")],
                         self.index[self.canonical("power_plus")],
                         self.index[self.canonical("power_minus")],
                         self.i_power_source, self.i_power_internal))
        self.schur_retained = np.array(sorted(retained), dtype=np.intp)
        self.schur_eliminated = np.array(
            sorted(set(range(self.size)) - retained), dtype=np.intp)
        self._schur_ix_nn = np.ix_(self.schur_retained, self.schur_retained)
        self._schur_ix_nl = np.ix_(self.schur_retained, self.schur_eliminated)
        self._schur_ix_ln = np.ix_(self.schur_eliminated, self.schur_retained)
        self._schur_ix_ll = np.ix_(self.schur_eliminated, self.schur_eliminated)
        self._schur_cache = {}

    def _newton_delta(self, jacobian, residual):
        if (self.dtype == np.dtype(np.float32)
                and self.p.float32_solve_in_float64):
            jacobian = jacobian.astype(np.float64)
            residual = residual.astype(np.float64)
        if self.p.newton_linear_solver == "full":
            return np.linalg.solve(jacobian, -residual)
        n = self.schur_retained
        l = self.schur_eliminated
        jnn = jacobian[self._schur_ix_nn]
        jnl = jacobian[self._schur_ix_nl]
        jln = jacobian[self._schur_ix_ln]
        jll = jacobian[self._schur_ix_ll]
        key = self._order()
        cached = self._schur_cache.get(key)
        if cached is None:
            inverse_jll = np.linalg.inv(jll)
            inverse_jll_jln = inverse_jll @ jln
            correction = jnl @ inverse_jll_jln
            cached = (inverse_jll, inverse_jll_jln, correction,
                      jll.copy(), jln.copy(), jnl.copy())
            self._schur_cache[key] = cached
        else:
            inverse_jll, inverse_jll_jln, correction, _, _, _ = cached
        inverse_jll_rl = inverse_jll @ residual[l]
        reduced_jacobian = jnn - correction
        reduced_rhs = -residual[n] + jnl @ inverse_jll_rl
        delta_n = np.linalg.solve(reduced_jacobian, reduced_rhs)
        delta_l = -inverse_jll_rl - inverse_jll_jln @ delta_n
        delta = np.empty_like(residual)
        delta[n] = delta_n
        delta[l] = delta_l
        return delta

    def physical_state(self):
        return self.operating_point + self.state_delta * self.state_scale

    def _order(self):
        return 1.5 if self.p.integration == "bdf2" and self.steps else 1.0

    def _history(self):
        if self.p.integration == "bdf2" and self.steps:
            return 2 * self.state_delta - 0.5 * self.previous_delta
        return self.state_delta

    def _diode(self, voltage, pair, need_conductance=True):
        dtype = self.dtype.type
        scale = self.p.signal_diode_n * self.p.thermal_voltage
        q = min(max(voltage / scale, -80.0), 80.0)
        if pair:
            current = 2.0 * self.p.signal_diode_is * np.sinh(q)
            conductance = (2.0 * self.p.signal_diode_is * np.cosh(q) / scale
                           if need_conductance else None)
        else:
            # Одиночные D6/D7 имеют насыщение -Is при обратном смещении.
            exponential = np.exp(q)
            current = self.p.signal_diode_is * (exponential - 1.0)
            conductance = (self.p.signal_diode_is * exponential / scale
                           if need_conductance else None)
        return dtype(current), (dtype(conductance)
                                if need_conductance else None)

    @staticmethod
    def _smooth_rail(internal, swing):
        if swing <= 0:
            return 0.0
        ratio = internal / swing
        return internal / (1 + abs(ratio) ** 16) ** (1 / 16)

    @staticmethod
    def _smooth_rail_with_derivatives(internal, swing):
        if swing <= 0:
            return 0.0, 0.0, 0.0
        ratio = internal / swing
        power = abs(ratio) ** 16
        common = (1 + power) ** (-17 / 16)
        value = internal * (1 + power) ** (-1 / 16)
        derivative_internal = common
        derivative_swing = internal * power / swing * common
        return value, derivative_internal, derivative_swing

    def _opamp_available_swing_with_derivative(self, name, source_current):
        p = self.opamps[name].p
        current = abs(source_current)
        sign = 1.0 if source_current > 0 else -1.0 if source_current < 0 else 0.0
        if current >= p.short_circuit_current_a:
            return 0.0, 0.0
        i10 = p.output_swing_10k_v / 10_000.0
        i2 = p.output_swing_2k_v / 2_000.0
        h10 = p.supply_positive_v - p.output_swing_10k_v
        h2 = p.supply_positive_v - p.output_swing_2k_v
        if current <= i10:
            headroom = h10
            derivative_headroom = 0.0
        elif current <= i2:
            slope = (h2 - h10) / (i2 - i10)
            headroom = h10 + (current - i10) * slope
            derivative_headroom = slope * sign
        else:
            slope = ((p.supply_positive_v - h2)
                     / (p.short_circuit_current_a - i2))
            headroom = h2 + (current - i2) * slope
            derivative_headroom = slope * sign
        swing = max(0.0, min(p.supply_positive_v,
                             abs(p.supply_negative_v)) - headroom)
        return swing, (-derivative_headroom if swing > 0.0 else 0.0)

    def _power_output_law(self, internal, source_current):
        rail = min(self.supply_rails[0], abs(self.supply_rails[1]))
        voltage_swing = max(0.0, rail - self.p.poweramp.output_headroom_v)
        voltage = self._smooth_rail(internal, voltage_swing)
        current_limit = self.poweramp.safe_output_current_a(voltage)
        if current_limit <= 0.0:
            return 0.0
        current_factor = (1.0 + (abs(source_current) / current_limit) ** 16) ** (-1 / 16)
        return voltage * current_factor

    def _power_output_law_with_derivatives(self, internal, source_current):
        rail = min(self.supply_rails[0], abs(self.supply_rails[1]))
        voltage_swing = max(0.0, rail - self.p.poweramp.output_headroom_v)
        voltage, dv_dinternal, _ = self._smooth_rail_with_derivatives(
            internal, voltage_swing)
        nominal_rail = min(self.p.poweramp.supply_positive_v,
                           abs(self.p.poweramp.supply_negative_v))
        vce = max(self.p.poweramp.soa_knee_voltage_v,
                  nominal_rail - abs(voltage))
        power_limit = self.p.poweramp.soa_power_w / vce
        current_limit = min(self.p.poweramp.peak_current_absolute_a, power_limit)
        if current_limit <= 0.0:
            return 0.0, 0.0, 0.0
        ratio_power = (abs(source_current) / current_limit) ** 16
        current_factor = (1.0 + ratio_power) ** (-1 / 16)
        common = (1.0 + ratio_power) ** (-17 / 16)
        derivative_factor_current = 0.0
        if source_current != 0.0:
            derivative_factor_current = -ratio_power / source_current * common
        derivative_limit_voltage = 0.0
        if (power_limit < self.p.poweramp.peak_current_absolute_a
                and nominal_rail - abs(voltage) > self.p.poweramp.soa_knee_voltage_v
                and voltage != 0.0):
            derivative_limit_voltage = (
                self.p.poweramp.soa_power_w
                * (1.0 if voltage > 0.0 else -1.0) / vce**2)
        derivative_factor_limit = ratio_power / current_limit * common
        derivative_law_voltage = (current_factor + voltage
                                  * derivative_factor_limit
                                  * derivative_limit_voltage)
        return (voltage * current_factor,
                derivative_law_voltage * dv_dinternal,
                voltage * derivative_factor_current)

    def _opamp_output_law(self, name, internal, source_current):
        nominal_swing = self.opamps[name].available_swing_v(source_current)
        nominal_rail = min(self.p.opamp.supply_positive_v,
                           abs(self.p.opamp.supply_negative_v))
        headroom = max(0.0, nominal_rail - nominal_swing)
        actual_rail = min(self.supply_rails[2], abs(self.supply_rails[3]))
        return self._smooth_rail(
            internal, max(0.0, actual_rail - headroom))

    def _opamp_output_law_with_derivatives(
            self, name, internal, source_current):
        nominal_swing, derivative_nominal = (
            self._opamp_available_swing_with_derivative(name, source_current))
        nominal_rail = min(self.p.opamp.supply_positive_v,
                           abs(self.p.opamp.supply_negative_v))
        headroom = max(0.0, nominal_rail - nominal_swing)
        actual_rail = min(self.supply_rails[2], abs(self.supply_rails[3]))
        swing = max(0.0, actual_rail - headroom)
        value, derivative_internal, derivative_swing = (
            self._smooth_rail_with_derivatives(internal, swing))
        return (value, derivative_internal,
                derivative_swing * derivative_nominal if swing > 0.0 else 0.0)

    def set_supply_rails(self, positive24, negative24, positive15, negative15):
        if not (positive24 >= 0 and positive15 >= 0
                and negative24 <= 0 and negative15 <= 0):
            raise ValueError("неверный порядок двухполярных шин")
        self.supply_rails[:] = [float(positive24), float(negative24),
                                float(positive15), float(negative15)]

    def set_mute_gate(self, gate_v):
        self.mute_gate_v = float(gate_v)

    def _jfet_conductance(self, gate_source_v):
        if gate_source_v <= self.p.jfet_vp_v:
            return self.p.jfet_off_conductance_s, 0.0
        gate = min(gate_source_v, 0.0)
        conductance = 2.0 * self.p.jfet_idss_a / abs(self.p.jfet_vp_v)
        conductance *= max(0.0, 1.0 - gate / self.p.jfet_vp_v)
        derivative = (-2.0 * self.p.jfet_idss_a / abs(self.p.jfet_vp_v)
                      / self.p.jfet_vp_v) if gate_source_v < 0.0 else 0.0
        if conductance <= self.p.jfet_off_conductance_s:
            return self.p.jfet_off_conductance_s, 0.0
        return conductance, derivative

    @staticmethod
    def _compensated_f32(terms):
        total = np.float32(0.0)
        correction = np.float32(0.0)
        for term in terms:
            value = np.float32(term)
            adjusted = np.float32(value - correction)
            updated = np.float32(total + adjusted)
            correction = np.float32((updated - total) - adjusted)
            total = updated
        return total

    def _compensated_linear_nodes(self, x, history, order, fs):
        result = np.zeros(self.n_nodes, dtype=np.float32)
        corrections = np.zeros(self.n_nodes, dtype=np.float32)
        for row, columns in enumerate(self.linear_row_columns):
            total = np.float32(0.0)
            correction = np.float32(0.0)
            for column in columns:
                terms = [np.float32(self.G[row, column] * x[column])]
                if self.C[row, column] != 0:
                    delta = np.float32(order * x[column] - history[column])
                    terms.append(np.float32(fs * self.C[row, column] * delta))
                for term in terms:
                    adjusted = np.float32(term - correction)
                    updated = np.float32(total + adjusted)
                    correction = np.float32((updated - total) - adjusted)
                    total = updated
            result[row] = total
            corrections[row] = correction
        return result, corrections

    @staticmethod
    def _compensated_add(residual, corrections, indices, values):
        for index, value in zip(indices, values):
            adjusted = np.float32(np.float32(value) - corrections[index])
            updated = np.float32(residual[index] + adjusted)
            corrections[index] = np.float32(
                (updated - residual[index]) - adjusted)
            residual[index] = updated

    def residual_jacobian_physical(self, x, input_v, need_jacobian=True):
        d = self.dtype.type
        fs = d(self.p.sample_rate)
        order = d(self._order())
        history = (self.operating_point
                   + self._history() * self.state_scale)
        mixed_residual = (self.dtype == np.dtype(np.float32)
                          and self.p.float32_residual_in_float64)
        compensated_residual = (
            self.dtype == np.dtype(np.float32)
            and self.p.float32_compensated_residual)
        residual_dtype = np.float64 if mixed_residual else self.dtype
        residual = np.zeros(self.size, dtype=residual_dtype)
        x_nodes_residual = (x[:self.n_nodes].astype(np.float64)
                            if mixed_residual else x[:self.n_nodes])
        fs_residual = float(fs) if mixed_residual else fs
        order_residual = float(order) if mixed_residual else order
        jacobian = (np.zeros((self.size, self.size), dtype=residual_dtype)
                    if need_jacobian else None)
        g_matrix = self.G_accumulator if mixed_residual else self.G
        c_matrix = self.C_accumulator if mixed_residual else self.C
        dynamic = g_matrix + order * fs * c_matrix
        if compensated_residual:
            residual[:self.n_nodes], kcl_corrections = (
                self._compensated_linear_nodes(x, history, order, fs))
        else:
            residual[:self.n_nodes] = (dynamic @ x_nodes_residual
                                       - fs_residual * c_matrix
                                       @ history[:self.n_nodes])
        if need_jacobian:
            jacobian[:self.n_nodes, :self.n_nodes] = dynamic

        # Independent guitar and AUX voltage sources.
        source_values = {"in": input_v, "aux_l": self.p.aux_left_v,
                         "aux_r": self.p.aux_right_v}
        for node, value in source_values.items():
            node_i = self.index[self.canonical(node)]
            source_i = self.i_voltage_source[node]
            if compensated_residual:
                self._compensated_add(
                    residual, kcl_corrections, (node_i,), (x[source_i],))
            else:
                residual[node_i] += x[source_i]
            if need_jacobian:
                jacobian[node_i, source_i] = d(1)
            residual[source_i] = x[node_i] - d(value)
            if need_jacobian:
                jacobian[source_i, node_i] = d(1)

        # Nonlinear diodes: voltage = incidence @ unknowns + fixed-node offset.
        for diode_name, e, offset, pair, outer in self.diode_ports:
            if diode_name == "D6":
                offset = -self.supply_rails[2]
            elif diode_name == "D7":
                offset = self.supply_rails[3]
            voltage = float(e @ x_nodes_residual + offset)
            current, conductance = self._diode(
                voltage, pair, need_jacobian)
            if compensated_residual:
                indices = np.flatnonzero(e)
                self._compensated_add(
                    residual, kcl_corrections, indices,
                    e[indices] * current)
            else:
                residual[:self.n_nodes] += e * current
            if need_jacobian:
                jacobian[:self.n_nodes, :self.n_nodes] += conductance * outer

        # Q1 — последовательный JFET между E8 и Volume, не шунт на землю.
        jfet_e = self.jfet_e
        node_a = self.index[self.canonical("mute_input")]
        node_b = self.index[self.canonical("volume_top")]
        source_i = node_a if x[node_a] <= x[node_b] else node_b
        gate_source = self.mute_gate_v - float(x[source_i])
        jfet_g, dg_dvgs = self._jfet_conductance(gate_source)
        channel_v = float(jfet_e @ x_nodes_residual)
        current = jfet_g * channel_v
        if compensated_residual:
            indices = np.flatnonzero(jfet_e)
            self._compensated_add(
                residual, kcl_corrections, indices,
                jfet_e[indices] * d(current))
        else:
            residual[:self.n_nodes] += jfet_e * d(current)
        if need_jacobian:
            current_gradient = jfet_g * jfet_e
            # Vgs = Vgate - Vsource; source is the lower channel terminal.
            current_gradient[source_i] -= channel_v * dg_dvgs
            jacobian[:self.n_nodes, :self.n_nodes] += np.outer(
                jfet_e, current_gradient)

        for name, plus, minus, output_node in self.OPAMPS:
            source_i = self.i_op_source[name]
            internal_i = self.i_op_internal[name]
            output_i = self.index[self.canonical(output_node)]
            if compensated_residual:
                self._compensated_add(
                    residual, kcl_corrections, (output_i,), (x[source_i],))
            else:
                residual[output_i] += x[source_i]
            if need_jacobian:
                jacobian[output_i, source_i] = d(1)

            internal = float(x[internal_i])
            source_current = float(x[source_i])
            if need_jacobian:
                law, derivative_internal, derivative_current = (
                    self._opamp_output_law_with_derivatives(
                        name, internal, source_current))
            else:
                law = self._opamp_output_law(
                    name, internal, source_current)
            residual[source_i] = x[output_i] - d(law)
            if need_jacobian:
                jacobian[source_i, output_i] = d(1)
                jacobian[source_i, internal_i] = d(-derivative_internal)
                jacobian[source_i, source_i] = d(-derivative_current)

            pole = 2 * np.pi * self.opamps[name].pole_hz
            gain_rate = 2 * np.pi * self.p.opamp.gain_bandwidth_hz
            vplus = 0.0 if self.canonical(plus) == "G" else x[self.index[self.canonical(plus)]]
            vminus = 0.0 if self.canonical(minus) == "G" else x[self.index[self.canonical(minus)]]
            raw_rate = (gain_rate * (vplus - vminus + self.p.opamp.input_offset_v)
                        - pole * internal)
            slew = self.p.opamp.slew_rate_v_per_s
            rate = min(max(raw_rate, -slew), slew)
            residual[internal_i] = (
                order_residual * fs_residual * float(x[internal_i])
                - fs_residual * float(history[internal_i]) - rate)
            if need_jacobian:
                jacobian[internal_i, internal_i] = order * fs
                if abs(raw_rate) < slew:
                    jacobian[internal_i, internal_i] += d(pole)
                    if self.canonical(plus) != "G":
                        jacobian[internal_i, self.index[self.canonical(plus)]] = d(-gain_rate)
                    if self.canonical(minus) != "G":
                        jacobian[internal_i, self.index[self.canonical(minus)]] = d(gain_rate)

        # TDA2050 with its external feedback and electrical load in the same solve.
        power_output = self.index[self.canonical("power_out")]
        if compensated_residual:
            self._compensated_add(
                residual, kcl_corrections, (power_output,),
                (x[self.i_power_source],))
        else:
            residual[power_output] += x[self.i_power_source]
        if need_jacobian:
            jacobian[power_output, self.i_power_source] = d(1)
        internal = float(x[self.i_power_internal])
        source_current = float(x[self.i_power_source])
        if need_jacobian:
            law, derivative_internal, derivative_current = (
                self._power_output_law_with_derivatives(
                    internal, source_current))
        else:
            law = self._power_output_law(internal, source_current)
        residual[self.i_power_source] = x[power_output] - d(law)
        if need_jacobian:
            jacobian[self.i_power_source, power_output] = d(1)
            jacobian[self.i_power_source, self.i_power_internal] = d(
                -derivative_internal)
            jacobian[self.i_power_source, self.i_power_source] = d(
                -derivative_current)
        pole = 2 * np.pi * self.poweramp.pole_hz
        gain_rate = pole * self.p.poweramp.dc_open_loop_gain
        vplus_i = self.index[self.canonical("power_plus")]
        vminus_i = self.index[self.canonical("power_minus")]
        raw_rate = gain_rate * (x[vplus_i] - x[vminus_i]) - pole * internal
        slew = self.p.poweramp.slew_rate_v_per_s
        rate = min(max(raw_rate, -slew), slew)
        residual[self.i_power_internal] = (
            order_residual * fs_residual * float(x[self.i_power_internal])
            - fs_residual * float(history[self.i_power_internal]) - rate)
        if need_jacobian:
            jacobian[self.i_power_internal, self.i_power_internal] = order * fs
            if abs(raw_rate) < slew:
                jacobian[self.i_power_internal, self.i_power_internal] += d(pole)
                jacobian[self.i_power_internal, vplus_i] = d(-gain_rate)
                jacobian[self.i_power_internal, vminus_i] = d(gain_rate)

        # Реактивная электрическая модель динамика: Re+Le и Rm||Lm||Cm.
        if self.i_speaker_series is not None:
            series_e = self.speaker_series_e
            motor_e = self.speaker_motor_e
            if compensated_residual:
                indices = np.flatnonzero(series_e)
                self._compensated_add(
                    residual, kcl_corrections, indices,
                    series_e[indices] * x[self.i_speaker_series])
            else:
                residual[:self.n_nodes] += series_e * x[self.i_speaker_series]
            if need_jacobian:
                jacobian[:self.n_nodes, self.i_speaker_series] += series_e
            if compensated_residual:
                residual[self.i_speaker_series] = self._compensated_f32((
                    series_e @ x[:self.n_nodes],
                    -self.p.speaker_le_h * order * fs
                    * x[self.i_speaker_series],
                    self.p.speaker_le_h * fs
                    * history[self.i_speaker_series]))
            else:
                residual[self.i_speaker_series] = (
                    series_e @ x_nodes_residual
                    - self.p.speaker_le_h * (
                        order_residual * fs_residual
                        * float(x[self.i_speaker_series])
                        - fs_residual * float(history[self.i_speaker_series])))
            if need_jacobian:
                jacobian[self.i_speaker_series, :self.n_nodes] = series_e
                jacobian[self.i_speaker_series, self.i_speaker_series] = d(-self.p.speaker_le_h) * order * fs
            if compensated_residual:
                indices = np.flatnonzero(motor_e)
                self._compensated_add(
                    residual, kcl_corrections, indices,
                    motor_e[indices] * x[self.i_speaker_motor])
            else:
                residual[:self.n_nodes] += motor_e * x[self.i_speaker_motor]
            if need_jacobian:
                jacobian[:self.n_nodes, self.i_speaker_motor] += motor_e
            if compensated_residual:
                residual[self.i_speaker_motor] = self._compensated_f32((
                    motor_e @ x[:self.n_nodes],
                    -self._speaker_lm() * order * fs
                    * x[self.i_speaker_motor],
                    self._speaker_lm() * fs
                    * history[self.i_speaker_motor]))
            else:
                residual[self.i_speaker_motor] = (
                    motor_e @ x_nodes_residual
                    - self._speaker_lm() * (
                        order_residual * fs_residual
                        * float(x[self.i_speaker_motor])
                        - fs_residual * float(history[self.i_speaker_motor])))
            if need_jacobian:
                jacobian[self.i_speaker_motor, :self.n_nodes] = motor_e
                jacobian[self.i_speaker_motor, self.i_speaker_motor] = d(-self._speaker_lm()) * order * fs
        return residual, jacobian

    def _solve_newton(self, initial, input_v):
        """Решить один физический шаг из заданной начальной точки.

        Метод не меняет историю. Поэтому его можно безопасно вызывать несколько
        раз для source stepping: промежуточные значения источника улучшают путь
        Newton, но не создают фиктивных временных отсчётов.
        """
        x = initial
        maximum_damping_steps = 0
        for iterations in range(1, 101):
            residual, jacobian = self.residual_jacobian_physical(x, input_v)
            scaled_residual = residual / self.row_scale
            scaled_jacobian = (jacobian * self.state_scale[np.newaxis, :]
                               / self.row_scale[:, np.newaxis])
            norm = float(np.max(np.abs(scaled_residual)))
            # Обычный f32-порог остаётся строгим. Повышенный предел применяется
            # ниже только после фактической стагнации line search, а не как
            # преждевременный критерий успешной сходимости.
            tolerance = (2e-9 if self.dtype == np.dtype(np.float64)
                         else 1.0e-4)
            if norm < tolerance:
                break
            delta_scaled = self._newton_delta(
                scaled_jacobian, scaled_residual)
            damping = 1.0
            stagnated = False
            for damping_steps in range(40):
                candidate = x + damping * delta_scaled * self.state_scale
                trial, _ = self.residual_jacobian_physical(
                    candidate, input_v, need_jacobian=False)
                if np.max(np.abs(trial / self.row_scale)) < norm:
                    x = candidate.astype(self.dtype, copy=False)
                    maximum_damping_steps = max(maximum_damping_steps, damping_steps)
                    break
                damping *= 0.5
            else:
                if (self.dtype == np.dtype(np.float32)
                        and norm <= 3.0e-4):
                    stagnated = True
                else:
                    raise RuntimeError("frontend line search не сошёлся")
            if stagnated:
                break
        else:
            raise RuntimeError("frontend Newton не сошёлся")
        return x, iterations, maximum_damping_steps

    def step(self, input_v):
        initial = self.physical_state()
        continuation_steps = 0
        try:
            x, iterations, maximum_damping_steps = self._solve_newton(
                initial, input_v)
        except RuntimeError as direct_error:
            # Аварийный путь офлайн-эталона. Он решает те же уравнения на том же
            # физическом шаге, плавно подводя только независимый входной источник.
            # Переменная стоимость явно возвращается в диагностике и не является
            # кандидатом архитектуры прошивки.
            for segments in (2, 4, 8, 16, 32, 64, 128, 256):
                x = initial
                total_iterations = 0
                maximum_damping_steps = 0
                try:
                    for value in np.linspace(
                            float(self.previous_input_v), float(input_v),
                            segments + 1, dtype=np.float64)[1:]:
                        x, used, damping = self._solve_newton(
                            x, self.dtype.type(value))
                        total_iterations += used
                        maximum_damping_steps = max(
                            maximum_damping_steps, damping)
                except RuntimeError:
                    continue
                iterations = total_iterations
                continuation_steps = segments
                break
            else:
                raise direct_error
        residual, _ = self.residual_jacobian_physical(x, input_v)
        kcl = float(np.max(np.abs(residual[:self.n_nodes])))
        previous = self.state_delta.copy()
        self.state_delta = ((x - self.operating_point) / self.state_scale).astype(self.dtype)
        self.previous_delta = previous
        self.previous_input_v = self.dtype.type(input_v)
        self.steps += 1
        return x.copy(), {
            "iterations": iterations,
            "damping_steps": maximum_damping_steps,
            "continuation_steps": continuation_steps,
            "scaled_residual": float(np.max(np.abs(residual / self.row_scale))),
            "kcl_a": kcl,
        }

    def voltage(self, state, node):
        node = self.canonical(node)
        if node == "G":
            return 0.0
        if node == "VP15":
            return 15.0
        if node == "VN15":
            return -15.0
        return float(state[self.index[node]])

    def state_names(self):
        names = ["v:" + node for node in self.nodes]
        names.extend("i:" + node.upper() for node in self.source_nodes)
        names.extend("i:" + name for name, _, _, _ in self.OPAMPS)
        names.extend("x:" + name for name, _, _, _ in self.OPAMPS)
        names.extend(("i:TDA2050", "x:TDA2050"))
        if self.i_speaker_series is not None:
            names.extend(("i:speaker_Le", "i:speaker_Lm"))
        return names


# Совместимость с ранними опытами, сохранёнными под именем frontend.
OrangeFrontendMNA = OrangeFullMNA
