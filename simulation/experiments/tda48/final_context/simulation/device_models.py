"""Паспортные динамические модели TL072C и TDA2050.

Единицы SI. Это поведенческие модели микросхем, а не транзисторные копии кристалла.
Паспортные величины отделены от инженерных параметров, которых нет в datasheet.
"""

from dataclasses import dataclass
import math


def _clip(value: float, lower: float, upper: float) -> float:
    return min(max(value, lower), upper)


@dataclass(frozen=True)
class TL072CParameters:
    # ST Doc ID 2298 Rev 7, типичные значения при ±15 В, 25 °C.
    dc_open_loop_gain: float = 200_000.0
    gain_bandwidth_hz: float = 4.0e6
    slew_rate_v_per_s: float = 16.0e6
    short_circuit_current_a: float = 40.0e-3
    output_swing_2k_v: float = 12.0
    output_swing_10k_v: float = 13.5
    supply_positive_v: float = 15.0
    supply_negative_v: float = -15.0
    # Неидентифицированные параметры. Нули отключают offset/bias в аудиотестах.
    input_offset_v: float = 0.0
    input_bias_a: float = 0.0


class TL072C:
    """Однополюсное OTA/выходное представление одной секции TL072C.

    `state_v` — внутренний выход доминирующего полюса. Скорость изменения
    ограничена паспортным slew rate. Выходной размах интерполируется по току
    нагрузки между паспортными точками 2 кОм и 10 кОм. Экстраполяция ниже
    2 кОм запрещена током КЗ; это инженерный закон, поскольку datasheet даёт
    график, но не аналитическую функцию выходного каскада.
    """

    def __init__(self, parameters: TL072CParameters = TL072CParameters()):
        self.p = parameters
        self.state_v = 0.0
        self.previous_state_v = 0.0
        self.steps = 0
        self.pole_hz = self.p.gain_bandwidth_hz / self.p.dc_open_loop_gain

    def reset(self, output_v: float = 0.0) -> None:
        self.state_v = output_v
        self.previous_state_v = output_v
        self.steps = 0

    def linear_open_loop(self, frequency_hz: float) -> complex:
        return self.p.dc_open_loop_gain / (1 + 1j * frequency_hz / self.pole_hz)

    def available_swing_v(self, load_current_a: float) -> float:
        """Симметричный типичный размах относительно нуля при ±15 В.

        Точки 1.2/13.5 В и 6/12 В получены из ±13.5 В@10 кОм и ±12 В@2 кОм.
        Между ними линейно интерполируется падение относительно шины. Выше
        6 мА падение растёт до токового ограничения; это не паспортная кривая.
        """
        current = abs(load_current_a)
        if current >= self.p.short_circuit_current_a:
            return 0.0
        i10 = self.p.output_swing_10k_v / 10_000.0
        i2 = self.p.output_swing_2k_v / 2_000.0
        h10 = self.p.supply_positive_v - self.p.output_swing_10k_v
        h2 = self.p.supply_positive_v - self.p.output_swing_2k_v
        if current <= i10:
            headroom = h10
        elif current <= i2:
            q = (current - i10) / (i2 - i10)
            headroom = h10 + q * (h2 - h10)
        else:
            q = (current - i2) / (self.p.short_circuit_current_a - i2)
            headroom = h2 + q * (self.p.supply_positive_v - h2)
        positive = self.p.supply_positive_v - headroom
        negative = abs(self.p.supply_negative_v) - headroom
        return max(0.0, min(positive, negative))

    def step(self, noninverting_v: float, inverting_v: float, sample_rate_hz: float,
             load_current_a: float = 0.0) -> float:
        if not all(math.isfinite(v) for v in
                   (noninverting_v, inverting_v, sample_rate_hz, load_current_a)):
            raise ValueError("нечисловой вход TL072")
        if sample_rate_hz <= 0:
            raise ValueError("частота должна быть положительной")
        differential = noninverting_v - inverting_v + self.p.input_offset_v
        target = self.p.dc_open_loop_gain * differential
        # Точное обновление доминирующего полюса, затем физический slew limit.
        decay = math.exp(-2 * math.pi * self.pole_hz / sample_rate_hz)
        proposed = target + (self.state_v - target) * decay
        maximum_delta = self.p.slew_rate_v_per_s / sample_rate_hz
        proposed = self.state_v + _clip(proposed - self.state_v,
                                        -maximum_delta, maximum_delta)
        swing = self.available_swing_v(load_current_a)
        output = _clip(proposed, -swing, swing)
        self.previous_state_v = self.state_v
        self.state_v = output
        self.steps += 1
        return output


@dataclass(frozen=True)
class TDA2050Parameters:
    # ST Doc ID 1461 Rev 3.
    supply_positive_v: float = 24.0
    supply_negative_v: float = -24.0
    open_loop_gain_at_1khz_db: float = 80.0
    slew_rate_v_per_s: float = 8.0e6
    minimum_slew_rate_v_per_s: float = 5.0e6
    peak_current_absolute_a: float = 5.0
    input_resistance_ohm: float = 500_000.0
    thermal_shutdown_c: float = 150.0
    # Инженерные параметры: даташит не публикует DC A0 и полную SOA.
    dc_open_loop_gain: float = 100_000.0
    output_headroom_v: float = 3.0
    soa_knee_voltage_v: float = 8.0
    soa_power_w: float = 60.0


class TDA2050:
    """Динамическая class-AB макромодель с rail/slew/SOA ограничениями.

    SOA-закон `min(5 A, Psoa/(|Vrail|-|Vout|))` — инженерное продолжение
    словесного описания защиты из раздела 5. Его параметры должны быть
    идентифицированы по аппарату или сохранены как диапазон неопределённости.
    """

    def __init__(self, parameters: TDA2050Parameters = TDA2050Parameters()):
        self.p = parameters
        gain_1k = 10 ** (self.p.open_loop_gain_at_1khz_db / 20)
        if self.p.dc_open_loop_gain <= gain_1k:
            raise ValueError("DC gain должен превышать паспортное усиление на 1 кГц")
        # Для однополюсной модели |A(1 kHz)| точно равно паспортным 80 dB.
        ratio = math.sqrt((self.p.dc_open_loop_gain / gain_1k) ** 2 - 1)
        self.pole_hz = 1000.0 / ratio
        self.state_v = 0.0

    def reset(self, output_v: float = 0.0) -> None:
        self.state_v = output_v

    def linear_open_loop(self, frequency_hz: float) -> complex:
        return self.p.dc_open_loop_gain / (1 + 1j * frequency_hz / self.pole_hz)

    def safe_output_current_a(self, output_v: float) -> float:
        rail = min(self.p.supply_positive_v, abs(self.p.supply_negative_v))
        vce = max(self.p.soa_knee_voltage_v, rail - abs(output_v))
        return min(self.p.peak_current_absolute_a, self.p.soa_power_w / vce)

    def output_limit_v(self, requested_v: float, load_resistance_ohm: float) -> float:
        if load_resistance_ohm <= 0:
            raise ValueError("нагрузка должна быть положительной")
        rail = min(self.p.supply_positive_v, abs(self.p.supply_negative_v))
        voltage_limit = max(0.0, rail - self.p.output_headroom_v)
        candidate = _clip(requested_v, -voltage_limit, voltage_limit)
        # Fixed-point iteration because SOA current depends on output voltage.
        for _ in range(12):
            current_limit = self.safe_output_current_a(candidate)
            updated = _clip(requested_v, -current_limit * load_resistance_ohm,
                            current_limit * load_resistance_ohm)
            updated = _clip(updated, -voltage_limit, voltage_limit)
            if abs(updated - candidate) < 1e-12:
                break
            candidate = updated
        return candidate

    def step(self, noninverting_v: float, inverting_v: float, sample_rate_hz: float,
             load_resistance_ohm: float) -> float:
        differential = noninverting_v - inverting_v
        target = self.p.dc_open_loop_gain * differential
        decay = math.exp(-2 * math.pi * self.pole_hz / sample_rate_hz)
        proposed = target + (self.state_v - target) * decay
        maximum_delta = self.p.slew_rate_v_per_s / sample_rate_hz
        proposed = self.state_v + _clip(proposed - self.state_v,
                                        -maximum_delta, maximum_delta)
        self.state_v = self.output_limit_v(proposed, load_resistance_ohm)
        return self.state_v
