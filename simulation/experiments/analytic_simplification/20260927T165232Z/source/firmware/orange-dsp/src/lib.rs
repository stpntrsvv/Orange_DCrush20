#![no_std]

mod absolute_ports;
pub mod condensed;
mod control_ports;
mod generated_condensed;
pub mod generated_model;
mod generated_packed;
mod generated_repeated;
pub mod packed;
pub mod scalar;
pub mod analytic;
pub mod exponential;
mod generated_exponential;
pub mod repeated;

use generated_model::{
    GLOBAL_TO_RETAINED, NODE_COUNT, PHYSICAL_PORT_RESPONSE_BDF2, SCHUR_BASE_BDF2, SCHUR_ELIMINATED,
    SCHUR_PORT_RESPONSE_BDF2, SCHUR_PROJECTION, SCHUR_RETAINED, STATE_COUNT,
};

pub const RETAINED_COUNT: usize = 29;
pub const NONLINEAR_PORT_COUNT: usize = 13;
pub const PHYSICAL_PORT_COUNT: usize = 14;

pub trait NonlinearMath {
    fn exp(value: f32) -> f32;
    /// Прямой гиперболический CORDIC. Вызывается только после внешней
    /// проверки доказанного диапазона аргумента.
    fn sinh_cosh(value: f32) -> (f32, f32);
    fn sixteenth_root(value: f32) -> f32;
}

pub struct SoftwareMath;

/// Та же математика экспонент, но корни аппаратные (ARM/AArch64).
pub struct FpuRootMath;

pub fn native_sixteenth_root(value: f32) -> f32 {
    // Не линеаризация закона: аргумент после f32-сложения уже ровно 1.
    if value == 1.0 {
        return 1.0;
    }
    #[cfg(target_arch = "arm")]
    {
        let mut result = value;
        unsafe {
            core::arch::asm!(
                "vsqrt.f32 {v}, {v}", "vsqrt.f32 {v}, {v}",
                "vsqrt.f32 {v}, {v}", "vsqrt.f32 {v}, {v}",
                v = inout(sreg) result, options(nomem, nostack, preserves_flags),
            );
        }
        result
    }
    #[cfg(target_arch = "aarch64")]
    {
        let mut result = value;
        unsafe {
            core::arch::asm!(
                "fsqrt {v:s}, {v:s}", "fsqrt {v:s}, {v:s}",
                "fsqrt {v:s}, {v:s}", "fsqrt {v:s}, {v:s}",
                v = inout(vreg) result, options(nomem, nostack, preserves_flags),
            );
        }
        result
    }
    #[cfg(not(any(target_arch = "arm", target_arch = "aarch64")))]
    sixteenth_root(value)
}

impl NonlinearMath for FpuRootMath {
    fn exp(value: f32) -> f32 {
        SoftwareMath::exp(value)
    }
    fn sinh_cosh(value: f32) -> (f32, f32) {
        SoftwareMath::sinh_cosh(value)
    }
    fn sixteenth_root(value: f32) -> f32 {
        native_sixteenth_root(value)
    }
}

fn exp_approx(value: f32) -> f32 {
    let value = value.clamp(-80.0, 80.0);
    let scaled = value * core::f32::consts::LOG2_E;
    let exponent = if scaled >= 0.0 {
        (scaled + 0.5) as i32
    } else {
        (scaled - 0.5) as i32
    };
    let remainder = value - exponent as f32 * core::f32::consts::LN_2;
    let r2 = remainder * remainder;
    let polynomial = 1.0
        + remainder
        + r2 * (0.5
            + remainder * (1.0 / 6.0 + remainder * (1.0 / 24.0 + remainder * (1.0 / 120.0))));
    let power_of_two = f32::from_bits(((exponent + 127) as u32) << 23);
    polynomial * power_of_two
}

fn sqrt_approx(value: f32) -> f32 {
    if value <= 0.0 {
        return 0.0;
    }
    let mut estimate = f32::from_bits((value.to_bits() >> 1) + 0x1fc0_0000);
    for _ in 0..4 {
        estimate = 0.5 * (estimate + value / estimate);
    }
    estimate
}

fn sixteenth_root(value: f32) -> f32 {
    sqrt_approx(sqrt_approx(sqrt_approx(sqrt_approx(value))))
}

impl NonlinearMath for SoftwareMath {
    fn exp(value: f32) -> f32 {
        exp_approx(value)
    }

    fn sinh_cosh(value: f32) -> (f32, f32) {
        let positive = exp_approx(value);
        let negative = exp_approx(-value);
        (0.5 * (positive - negative), 0.5 * (positive + negative))
    }

    fn sixteenth_root(value: f32) -> f32 {
        sixteenth_root(value)
    }
}

fn pow16(value: f32) -> f32 {
    let square = value * value;
    let fourth = square * square;
    let eighth = fourth * fourth;
    eighth * eighth
}

fn smooth_rail_derivatives<M: NonlinearMath>(internal: f32, swing: f32) -> (f32, f32, f32) {
    if swing <= 0.0 {
        return (0.0, 0.0, 0.0);
    }
    let ratio = internal / swing;
    let power = pow16(ratio.abs());
    let root = M::sixteenth_root(1.0 + power);
    let factor = 1.0 / root;
    let common = factor / (1.0 + power);
    (internal * factor, common, internal * power / swing * common)
}

fn opamp_swing_derivative(source_current: f32) -> (f32, f32) {
    let current = source_current.abs();
    let sign = if source_current > 0.0 {
        1.0
    } else if source_current < 0.0 {
        -1.0
    } else {
        0.0
    };
    if current >= 0.040 {
        return (0.0, 0.0);
    }
    let i10 = 13.5 / 10_000.0;
    let i2 = 12.0 / 2_000.0;
    let (headroom, derivative_headroom) = if current <= i10 {
        (1.5, 0.0)
    } else if current <= i2 {
        let slope = (3.0 - 1.5) / (i2 - i10);
        (1.5 + (current - i10) * slope, slope * sign)
    } else {
        let slope = (15.0 - 3.0) / (0.040 - i2);
        (3.0 + (current - i2) * slope, slope * sign)
    };
    ((15.0 - headroom).max(0.0), -derivative_headroom)
}

fn power_output_derivatives<M: NonlinearMath>(
    internal: f32,
    source_current: f32,
) -> (f32, f32, f32) {
    let (voltage, voltage_internal, _) = smooth_rail_derivatives::<M>(internal, 21.0);
    let vce = (24.0 - voltage.abs()).max(8.0);
    let power_limit = 60.0 / vce;
    let current_limit = power_limit.min(5.0);
    let ratio_power = pow16(source_current.abs() / current_limit);
    let factor = 1.0 / M::sixteenth_root(1.0 + ratio_power);
    let common = factor / (1.0 + ratio_power);
    let factor_current = if source_current == 0.0 {
        0.0
    } else {
        -ratio_power / source_current * common
    };
    let limit_voltage = if power_limit < 5.0 && 24.0 - voltage.abs() > 8.0 && voltage != 0.0 {
        60.0 * voltage.signum() / (vce * vce)
    } else {
        0.0
    };
    let factor_limit = ratio_power / current_limit * common;
    let law_voltage = factor + voltage * factor_limit * limit_voltage;
    (
        voltage * factor,
        law_voltage * voltage_internal,
        voltage * factor_current,
    )
}

fn power_output_event_derivatives<M: NonlinearMath>(
    internal: f32,
    source_current: f32,
) -> (f32, f32, f32) {
    let rail_ratio = internal.abs() / 21.0;
    let (voltage, _, _) = smooth_rail_derivatives::<M>(internal, 21.0);
    let current_limit = (60.0 / (24.0 - voltage.abs()).max(8.0)).min(5.0);
    if rail_ratio < 0.5 && source_current.abs() / current_limit < 0.5 {
        (internal, 1.0, 0.0)
    } else {
        power_output_derivatives::<M>(internal, source_current)
    }
}

struct NonlinearEvaluation {
    pair_current: f32,
    pair_conductance: f32,
    d6: f32,
    d7: f32,
    g6: f32,
    g7: f32,
    jfet_current: f32,
    jfet_gradient_27: f32,
    jfet_gradient_40: f32,
    op_laws: [(f32, f32, f32); 4],
    power_law: (f32, f32, f32),
}

const DIODE_IS: f32 = 2.5e-9;
const DIODE_SCALE: f32 = 1.75 * 0.02585;
const DIRECT_HYPERBOLIC_LIMIT: f32 = 1.118;

#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct IncrementalDiodeMetrics {
    pub accepted_updates: u32,
    pub fallback_count: u32,
    pub periodic_refresh_count: u32,
    pub large_step_count: u32,
}

/// Сохранённые нелинейности D4--D7. Структура является значением: поиск шага
/// строит копии и не может испортить кэш принятого состояния.
#[derive(Clone, Copy, Debug)]
pub struct IncrementalDiodeCache {
    pair_sinh: f32,
    pair_cosh: f32,
    exp_d6: f32,
    exp_d7: f32,
    fast_refresh_steps: u8,
    metrics: IncrementalDiodeMetrics,
}

impl IncrementalDiodeCache {
    pub fn from_state<M: NonlinearMath>(x: &[f32; STATE_COUNT]) -> Self {
        let mut result = Self {
            pair_sinh: 0.0,
            pair_cosh: 1.0,
            exp_d6: 1.0,
            exp_d7: 1.0,
            fast_refresh_steps: 0,
            metrics: IncrementalDiodeMetrics::default(),
        };
        result.refresh_absolute::<M>(x);
        result
    }

    pub fn metrics(&self) -> IncrementalDiodeMetrics {
        self.metrics
    }

    fn refresh_absolute<M: NonlinearMath>(&mut self, x: &[f32; STATE_COUNT]) {
        let q_pair = ((x[19] - x[20]) / DIODE_SCALE).clamp(-80.0, 80.0);
        let positive = M::exp(q_pair);
        let negative = M::exp(-q_pair);
        self.pair_sinh = 0.5 * (positive - negative);
        self.pair_cosh = 0.5 * (positive + negative);
        self.exp_d6 = M::exp(((x[26] - 15.0) / DIODE_SCALE).clamp(-80.0, 80.0));
        self.exp_d7 = M::exp(((-x[26] - 15.0) / DIODE_SCALE).clamp(-80.0, 80.0));
    }

    /// Возвращает кэш пробного принятого состояния, не меняя `self`.
    pub fn trial_after_delta<M: NonlinearMath>(
        &self,
        next: &[f32; STATE_COUNT],
        delta: &[f32; STATE_COUNT],
    ) -> Self {
        let pair_delta = (delta[19] - delta[20]) / DIODE_SCALE;
        let d6_delta = delta[26] / DIODE_SCALE;
        let mut trial = *self;
        trial.metrics.accepted_updates = trial.metrics.accepted_updates.saturating_add(1);

        let large = pair_delta.abs() > 0.25 || d6_delta.abs() > 0.25;
        if large {
            trial.metrics.large_step_count = trial.metrics.large_step_count.saturating_add(1);
            trial.fast_refresh_steps = 32;
        }
        let direct = pair_delta.is_finite()
            && d6_delta.is_finite()
            && pair_delta.abs() <= DIRECT_HYPERBOLIC_LIMIT
            && d6_delta.abs() <= DIRECT_HYPERBOLIC_LIMIT;
        if direct {
            let (pair_sinh_delta, pair_cosh_delta) = M::sinh_cosh(pair_delta);
            let (d6_sinh_delta, d6_cosh_delta) = M::sinh_cosh(d6_delta);
            let old_sinh = trial.pair_sinh;
            let old_cosh = trial.pair_cosh;
            trial.pair_sinh = old_sinh * pair_cosh_delta + old_cosh * pair_sinh_delta;
            trial.pair_cosh = old_cosh * pair_cosh_delta + old_sinh * pair_sinh_delta;
            trial.exp_d6 *= d6_cosh_delta + d6_sinh_delta;
            trial.exp_d7 *= d6_cosh_delta - d6_sinh_delta;
        } else {
            trial.refresh_absolute::<M>(next);
            trial.metrics.fallback_count = trial.metrics.fallback_count.saturating_add(1);
        }

        let refresh_period = if trial.fast_refresh_steps != 0 { 8 } else { 32 };
        if direct && trial.metrics.accepted_updates % refresh_period == 0 {
            trial.refresh_absolute::<M>(next);
            trial.metrics.periodic_refresh_count =
                trial.metrics.periodic_refresh_count.saturating_add(1);
        }
        if trial.fast_refresh_steps != 0 {
            trial.fast_refresh_steps -= 1;
        }
        trial
    }
}

#[inline(always)]
fn evaluate_nonlinear_from_diodes<M: NonlinearMath>(
    x: &[f32; STATE_COUNT],
    pair_sinh: f32,
    pair_cosh: f32,
    exp_d6: f32,
    exp_d7: f32,
) -> NonlinearEvaluation {
    let source = if x[27] <= x[40] { 27 } else { 40 };
    let gate_source = 0.5 - x[source];
    let (jfet_g, dg_dvgs) = if gate_source <= -2.0 {
        (1.0e-7, 0.0)
    } else {
        let gate = gate_source.min(0.0);
        let conductance = (0.00455 * (1.0 - gate / -2.0)).max(1.0e-7);
        (conductance, if gate_source < 0.0 { 0.002275 } else { 0.0 })
    };
    let channel_v = x[27] - x[40];
    let mut gradient_27 = jfet_g;
    let mut gradient_40 = -jfet_g;
    if source == 27 {
        gradient_27 -= channel_v * dg_dvgs;
    } else {
        gradient_40 -= channel_v * dg_dvgs;
    }

    let mut op_laws = [(0.0_f32, 0.0_f32, 0.0_f32); 4];
    for (slot, source, internal) in [(0, 46, 50), (1, 47, 51), (2, 48, 52), (3, 49, 53)] {
        let (swing, dswing_current) = opamp_swing_derivative(x[source]);
        let (law, law_internal, law_swing) = smooth_rail_derivatives::<M>(x[internal], swing);
        op_laws[slot] = (law, law_internal, law_swing * dswing_current);
    }

    NonlinearEvaluation {
        pair_current: 2.0 * DIODE_IS * pair_sinh,
        pair_conductance: 2.0 * DIODE_IS * pair_cosh / DIODE_SCALE,
        d6: DIODE_IS * (exp_d6 - 1.0),
        d7: DIODE_IS * (exp_d7 - 1.0),
        g6: DIODE_IS * exp_d6 / DIODE_SCALE,
        g7: DIODE_IS * exp_d7 / DIODE_SCALE,
        jfet_current: jfet_g * channel_v,
        jfet_gradient_27: gradient_27,
        jfet_gradient_40: gradient_40,
        op_laws,
        power_law: power_output_derivatives::<M>(x[55], x[54]),
    }
}

#[inline(always)]
fn evaluate_nonlinear<M: NonlinearMath>(x: &[f32; STATE_COUNT]) -> NonlinearEvaluation {
    let q_pair = ((x[19] - x[20]) / DIODE_SCALE).clamp(-80.0, 80.0);
    let exp_pair = M::exp(q_pair);
    let exp_pair_inverse = M::exp(-q_pair);
    evaluate_nonlinear_from_diodes::<M>(
        x,
        0.5 * (exp_pair - exp_pair_inverse),
        0.5 * (exp_pair + exp_pair_inverse),
        M::exp(((x[26] - 15.0) / DIODE_SCALE).clamp(-80.0, 80.0)),
        M::exp(((-x[26] - 15.0) / DIODE_SCALE).clamp(-80.0, 80.0)),
    )
}

/// Поиск шага использует только значения законов. Обнулённые производные
/// запрещено подавать в решатель; при следующей поправке они пересчитываются.
#[inline(always)]
fn evaluate_nonlinear_values<M: NonlinearMath>(x: &[f32; STATE_COUNT]) -> NonlinearEvaluation {
    let full = evaluate_nonlinear::<M>(x);
    NonlinearEvaluation {
        pair_current: full.pair_current,
        pair_conductance: 0.0,
        d6: full.d6,
        d7: full.d7,
        g6: 0.0,
        g7: 0.0,
        jfet_current: full.jfet_current,
        jfet_gradient_27: 0.0,
        jfet_gradient_40: 0.0,
        op_laws: full.op_laws.map(|law| (law.0, 0.0, 0.0)),
        power_law: (full.power_law.0, 0.0, 0.0),
    }
}

fn evaluate_nonlinear_event_power<M: NonlinearMath>(x: &[f32; STATE_COUNT]) -> NonlinearEvaluation {
    let mut nonlinear = evaluate_nonlinear::<M>(x);
    nonlinear.power_law = power_output_event_derivatives::<M>(x[55], x[54]);
    nonlinear
}

fn evaluate_nonlinear_cached<M: NonlinearMath>(
    x: &[f32; STATE_COUNT],
    cache: &IncrementalDiodeCache,
) -> NonlinearEvaluation {
    evaluate_nonlinear_from_diodes::<M>(
        x,
        cache.pair_sinh,
        cache.pair_cosh,
        cache.exp_d6,
        cache.exp_d7,
    )
}

/// Разметка стоимости нелинейной математики: абсолютные диоды, четыре
/// smooth-rail TL072, ограничитель TDA2050 и полный блок с диодным кэшем.
/// Возвращаемое значение нужно только для запрета удаления вычислений.
pub fn profile_nonlinear_components_with_math<M: NonlinearMath, F: FnMut(usize)>(
    x: &[f32; STATE_COUNT],
    cache: &IncrementalDiodeCache,
    mut mark: F,
) -> f32 {
    mark(0);
    let q_pair = ((x[19] - x[20]) / DIODE_SCALE).clamp(-80.0, 80.0);
    let diode_checksum = M::exp(q_pair)
        + M::exp(-q_pair)
        + M::exp(((x[26] - 15.0) / DIODE_SCALE).clamp(-80.0, 80.0))
        + M::exp(((-x[26] - 15.0) / DIODE_SCALE).clamp(-80.0, 80.0));
    mark(1);
    let mut rail_checksum = 0.0;
    for (source, internal) in [(46, 50), (47, 51), (48, 52), (49, 53)] {
        let (swing, _) = opamp_swing_derivative(x[source]);
        rail_checksum += smooth_rail_derivatives::<M>(x[internal], swing).0;
    }
    mark(2);
    let power_checksum = power_output_derivatives::<M>(x[55], x[54]).0;
    mark(3);
    let full = evaluate_nonlinear_cached::<M>(x, cache);
    let full_checksum = full.pair_current
        + full.d6
        + full.d7
        + full.jfet_current
        + full.op_laws.iter().map(|law| law.0).sum::<f32>()
        + full.power_law.0;
    mark(4);
    diode_checksum + rail_checksum + power_checksum + full_checksum
}

/// Линейная узловая часть MNA: `G*x + fs*C*(order*x-history)`.
/// Порядок сложения совпадает с Python-генератором, чтобы fixture
/// проверял не допуск, а точную `f32`-арифметику.
pub fn assemble_linear_kcl(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    sample_rate: f32,
    order: f32,
) -> [f32; NODE_COUNT] {
    generated_model::assemble_linear_kcl(x, history, sample_rate, order)
}

/// Полный residual резистивного контроллерного тракта без виртуального
/// реактивного динамика. Порядок индексов зафиксирован генератором.
fn assemble_residual_evaluated(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
    nonlinear: &NonlinearEvaluation,
) -> [f32; STATE_COUNT] {
    let linear = assemble_linear_kcl(x, history, sample_rate, order);
    let mut residual = [0.0_f32; STATE_COUNT];
    residual[..NODE_COUNT].copy_from_slice(&linear);

    // Независимые источники: guitar, AUX L, AUX R.
    for (node, source, value) in [(25, 43, input_v), (6, 44, 0.0), (7, 45, 0.0)] {
        residual[node] += x[source];
        residual[source] = x[node] - value;
    }

    // D4/D5 — встречная пара; D6/D7 — защита входа к ±15 В.
    residual[19] += nonlinear.pair_current;
    residual[20] -= nonlinear.pair_current;
    residual[26] += nonlinear.d6 - nonlinear.d7;

    // Q1: последовательный JFET mute между mute_input и volume_top.
    residual[27] += nonlinear.jfet_current;
    residual[40] -= nonlinear.jfet_current;

    const OP_GAIN_RATE: f32 = 25_132_741.0;
    const OP_POLE: f32 = 2.0 * core::f32::consts::PI * 20.0;
    const OP_SLEW: f32 = 16.0e6;
    for (slot, plus, minus, output, source, internal) in [
        (0, Some(5), Some(3), 4, 46, 50),
        (1, Some(14), Some(12), 13, 47, 51),
        (2, Some(18), Some(16), 17, 48, 52),
        (3, None, Some(21), 22, 49, 53),
    ] {
        residual[output] += x[source];
        residual[source] = x[output] - nonlinear.op_laws[slot].0;
        let vplus = plus.map_or(0.0, |index| x[index]);
        let vminus = minus.map_or(0.0, |index| x[index]);
        let raw_rate = OP_GAIN_RATE * (vplus - vminus) - OP_POLE * x[internal];
        let rate = raw_rate.clamp(-OP_SLEW, OP_SLEW);
        residual[internal] =
            order * sample_rate * x[internal] - sample_rate * history[internal] - rate;
    }

    // TDA2050 и его внешняя обратная связь.
    residual[31] += x[54];
    residual[54] = x[31] - nonlinear.power_law.0;
    const POWER_POLE: f32 = 2.0 * core::f32::consts::PI * 100.503_784;
    const POWER_GAIN_RATE: f32 = 63_148_388.0;
    let raw_rate = POWER_GAIN_RATE * (x[32] - x[30]) - POWER_POLE * x[55];
    let rate = raw_rate.clamp(-8.0e6, 8.0e6);
    residual[55] = order * sample_rate * x[55] - sample_rate * history[55] - rate;
    residual
}

pub fn assemble_residual_with_math<M: NonlinearMath>(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
) -> [f32; STATE_COUNT] {
    let nonlinear = evaluate_nonlinear::<M>(x);
    assemble_residual_evaluated(x, history, input_v, sample_rate, order, &nonlinear)
}

pub fn assemble_residual(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
) -> [f32; STATE_COUNT] {
    assemble_residual_with_math::<SoftwareMath>(x, history, input_v, sample_rate, order)
}

/// Точная проекция residual после исключения 27 линейных неизвестных.
pub fn project_residual(residual: &[f32; STATE_COUNT]) -> [f32; RETAINED_COUNT] {
    let mut projected = [0.0_f32; RETAINED_COUNT];
    for (row, &state_index) in SCHUR_RETAINED.iter().enumerate() {
        projected[row] = residual[state_index as usize];
    }
    for entry in SCHUR_PROJECTION {
        projected[entry.row as usize] -=
            entry.value * residual[SCHUR_ELIMINATED[entry.column as usize] as usize];
    }
    projected
}

fn add_jacobian(
    matrix: &mut [f32; RETAINED_COUNT * RETAINED_COUNT],
    global_row: usize,
    global_column: usize,
    value: f32,
) {
    let row = GLOBAL_TO_RETAINED[global_row];
    let column = GLOBAL_TO_RETAINED[global_column];
    if row >= 0 && column >= 0 {
        matrix[row as usize * RETAINED_COUNT + column as usize] += value;
    }
}

fn add_projected(residual: &mut [f32; RETAINED_COUNT], global_row: usize, value: f32) {
    let row = GLOBAL_TO_RETAINED[global_row];
    if row >= 0 {
        residual[row as usize] += value;
    }
}

#[allow(dead_code)]
fn assemble_projected_residual_evaluated(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
    nonlinear: &NonlinearEvaluation,
) -> [f32; RETAINED_COUNT] {
    let mut residual =
        generated_model::assemble_projected_linear(x, history, input_v, sample_rate, order);
    add_projected(&mut residual, 19, nonlinear.pair_current);
    add_projected(&mut residual, 20, -nonlinear.pair_current);
    add_projected(&mut residual, 26, nonlinear.d6 - nonlinear.d7);
    add_projected(&mut residual, 27, nonlinear.jfet_current);
    add_projected(&mut residual, 40, -nonlinear.jfet_current);

    const OP_GAIN_RATE: f32 = 25_132_741.0;
    const OP_POLE: f32 = 2.0 * core::f32::consts::PI * 20.0;
    const OP_SLEW: f32 = 16.0e6;
    for (slot, plus, minus, source, internal) in [
        (0, Some(5), Some(3), 46, 50),
        (1, Some(14), Some(12), 47, 51),
        (2, Some(18), Some(16), 48, 52),
        (3, None, Some(21), 49, 53),
    ] {
        add_projected(&mut residual, source, -nonlinear.op_laws[slot].0);
        let vplus = plus.map_or(0.0, |index| x[index]);
        let vminus = minus.map_or(0.0, |index| x[index]);
        let raw_rate = OP_GAIN_RATE * (vplus - vminus) - OP_POLE * x[internal];
        add_projected(&mut residual, internal, -raw_rate.clamp(-OP_SLEW, OP_SLEW));
    }

    add_projected(&mut residual, 54, -nonlinear.power_law.0);
    const POWER_POLE: f32 = 2.0 * core::f32::consts::PI * 100.503_784;
    const POWER_GAIN_RATE: f32 = 63_148_388.0;
    let raw_rate = POWER_GAIN_RATE * (x[32] - x[30]) - POWER_POLE * x[55];
    add_projected(&mut residual, 55, -raw_rate.clamp(-8.0e6, 8.0e6));
    residual
}

/// Сокращённый аналитический Jacobian для BDF2 при 96 кГц.
fn assemble_reduced_jacobian_evaluated(
    x: &[f32; STATE_COUNT],
    nonlinear: &NonlinearEvaluation,
) -> [f32; RETAINED_COUNT * RETAINED_COUNT] {
    let mut matrix = [0.0_f32; RETAINED_COUNT * RETAINED_COUNT];
    for entry in SCHUR_BASE_BDF2 {
        matrix[entry.row as usize * RETAINED_COUNT + entry.column as usize] = entry.value;
    }

    let conductance = nonlinear.pair_conductance;
    add_jacobian(&mut matrix, 19, 19, conductance);
    add_jacobian(&mut matrix, 19, 20, -conductance);
    add_jacobian(&mut matrix, 20, 19, -conductance);
    add_jacobian(&mut matrix, 20, 20, conductance);
    add_jacobian(&mut matrix, 26, 26, nonlinear.g6 + nonlinear.g7);

    let gradient_27 = nonlinear.jfet_gradient_27;
    let gradient_40 = nonlinear.jfet_gradient_40;
    add_jacobian(&mut matrix, 27, 27, gradient_27);
    add_jacobian(&mut matrix, 27, 40, gradient_40);
    add_jacobian(&mut matrix, 40, 27, -gradient_27);
    add_jacobian(&mut matrix, 40, 40, -gradient_40);

    const OP_GAIN_RATE: f32 = 25_132_741.0;
    const OP_POLE: f32 = 2.0 * core::f32::consts::PI * 20.0;
    const OP_SLEW: f32 = 16.0e6;
    for (slot, plus, minus, output, source_i, internal) in [
        (0, Some(5), Some(3), 4, 46, 50),
        (1, Some(14), Some(12), 13, 47, 51),
        (2, Some(18), Some(16), 17, 48, 52),
        (3, None, Some(21), 22, 49, 53),
    ] {
        let (_, law_internal, law_current) = nonlinear.op_laws[slot];
        add_jacobian(&mut matrix, source_i, internal, -law_internal);
        add_jacobian(&mut matrix, source_i, source_i, -law_current);
        let vplus = plus.map_or(0.0, |index| x[index]);
        let vminus = minus.map_or(0.0, |index| x[index]);
        let raw_rate = OP_GAIN_RATE * (vplus - vminus) - OP_POLE * x[internal];
        if raw_rate.abs() < OP_SLEW {
            add_jacobian(&mut matrix, internal, internal, OP_POLE);
            if let Some(index) = plus {
                add_jacobian(&mut matrix, internal, index, -OP_GAIN_RATE);
            }
            if let Some(index) = minus {
                add_jacobian(&mut matrix, internal, index, OP_GAIN_RATE);
            }
        }
        let _ = output;
    }

    let (_, law_internal, law_current) = nonlinear.power_law;
    add_jacobian(&mut matrix, 54, 55, -law_internal);
    add_jacobian(&mut matrix, 54, 54, -law_current);
    const POWER_POLE: f32 = 2.0 * core::f32::consts::PI * 100.503_784;
    const POWER_GAIN_RATE: f32 = 63_148_388.0;
    let raw_rate = POWER_GAIN_RATE * (x[32] - x[30]) - POWER_POLE * x[55];
    if raw_rate.abs() < 8.0e6 {
        add_jacobian(&mut matrix, 55, 55, POWER_POLE);
        add_jacobian(&mut matrix, 55, 32, -POWER_GAIN_RATE);
        add_jacobian(&mut matrix, 55, 30, POWER_GAIN_RATE);
    }
    matrix
}

pub fn assemble_reduced_jacobian_with_math<M: NonlinearMath>(
    x: &[f32; STATE_COUNT],
) -> [f32; RETAINED_COUNT * RETAINED_COUNT] {
    let nonlinear = evaluate_nonlinear::<M>(x);
    assemble_reduced_jacobian_evaluated(x, &nonlinear)
}

pub fn assemble_reduced_system_with_math<M: NonlinearMath>(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
) -> (
    [f32; RETAINED_COUNT],
    [f32; RETAINED_COUNT * RETAINED_COUNT],
) {
    let nonlinear = evaluate_nonlinear::<M>(x);
    let residual = assemble_residual_evaluated(x, history, input_v, sample_rate, order, &nonlinear);
    (
        project_residual(&residual),
        assemble_reduced_jacobian_evaluated(x, &nonlinear),
    )
}

pub fn assemble_reduced_jacobian(x: &[f32; STATE_COUNT]) -> [f32; RETAINED_COUNT * RETAINED_COUNT] {
    assemble_reduced_jacobian_with_math::<SoftwareMath>(x)
}

/// Плотный решатель 29×29 с частичным выбором главного элемента.
pub fn solve_reduced(
    mut matrix: [f32; RETAINED_COUNT * RETAINED_COUNT],
    residual: &[f32; RETAINED_COUNT],
) -> Option<[f32; RETAINED_COUNT]> {
    let mut rhs = [0.0_f32; RETAINED_COUNT];
    for row in 0..RETAINED_COUNT {
        rhs[row] = -residual[row];
    }
    for pivot in 0..RETAINED_COUNT {
        let mut best = pivot;
        let mut magnitude = matrix[pivot * RETAINED_COUNT + pivot].abs();
        for row in pivot + 1..RETAINED_COUNT {
            let candidate = matrix[row * RETAINED_COUNT + pivot].abs();
            if candidate > magnitude {
                best = row;
                magnitude = candidate;
            }
        }
        if magnitude <= 1.0e-20 {
            return None;
        }
        if best != pivot {
            for column in pivot..RETAINED_COUNT {
                matrix.swap(
                    pivot * RETAINED_COUNT + column,
                    best * RETAINED_COUNT + column,
                );
            }
            rhs.swap(pivot, best);
        }
        let diagonal = matrix[pivot * RETAINED_COUNT + pivot];
        for row in pivot + 1..RETAINED_COUNT {
            let factor = matrix[row * RETAINED_COUNT + pivot] / diagonal;
            matrix[row * RETAINED_COUNT + pivot] = 0.0;
            for column in pivot + 1..RETAINED_COUNT {
                matrix[row * RETAINED_COUNT + column] -=
                    factor * matrix[pivot * RETAINED_COUNT + column];
            }
            rhs[row] -= factor * rhs[pivot];
        }
    }
    let mut solution = [0.0_f32; RETAINED_COUNT];
    for row in (0..RETAINED_COUNT).rev() {
        let mut value = rhs[row];
        for column in row + 1..RETAINED_COUNT {
            value -= matrix[row * RETAINED_COUNT + column] * solution[column];
        }
        solution[row] = value / matrix[row * RETAINED_COUNT + row];
    }
    Some(solution)
}

/// Сгенерированный разреженный solve с фиксированным порядком для этой схемы.
pub fn solve_reduced_fixed(
    mut matrix: [f32; RETAINED_COUNT * RETAINED_COUNT],
    residual: &[f32; RETAINED_COUNT],
) -> Option<[f32; RETAINED_COUNT]> {
    generated_model::solve_fixed_sparse(&mut matrix, residual).ok()
}

fn set_port_entry(
    indices: &mut [[u8; 3]; NONLINEAR_PORT_COUNT],
    values: &mut [[f32; 3]; NONLINEAR_PORT_COUNT],
    counts: &mut [u8; NONLINEAR_PORT_COUNT],
    port: usize,
    global_column: usize,
    value: f32,
) {
    let column = GLOBAL_TO_RETAINED[global_column];
    if column >= 0 && value != 0.0 {
        let slot = counts[port] as usize;
        indices[port][slot] = column as u8;
        values[port][slot] = value;
        counts[port] += 1;
    }
}

fn nonlinear_port_rows(
    x: &[f32; STATE_COUNT],
    nonlinear: &NonlinearEvaluation,
) -> (
    [[u8; 3]; NONLINEAR_PORT_COUNT],
    [[f32; 3]; NONLINEAR_PORT_COUNT],
    [u8; NONLINEAR_PORT_COUNT],
) {
    let mut indices = [[0_u8; 3]; NONLINEAR_PORT_COUNT];
    let mut values = [[0.0_f32; 3]; NONLINEAR_PORT_COUNT];
    let mut counts = [0_u8; NONLINEAR_PORT_COUNT];
    set_port_entry(
        &mut indices,
        &mut values,
        &mut counts,
        0,
        19,
        nonlinear.pair_conductance,
    );
    set_port_entry(
        &mut indices,
        &mut values,
        &mut counts,
        0,
        20,
        -nonlinear.pair_conductance,
    );
    set_port_entry(
        &mut indices,
        &mut values,
        &mut counts,
        1,
        26,
        nonlinear.g6 + nonlinear.g7,
    );
    set_port_entry(
        &mut indices,
        &mut values,
        &mut counts,
        2,
        27,
        nonlinear.jfet_gradient_27,
    );
    set_port_entry(
        &mut indices,
        &mut values,
        &mut counts,
        2,
        40,
        nonlinear.jfet_gradient_40,
    );

    const OP_GAIN_RATE: f32 = 25_132_741.0;
    const OP_POLE: f32 = 2.0 * core::f32::consts::PI * 20.0;
    const OP_SLEW: f32 = 16.0e6;
    for (slot, plus, minus, source, internal) in [
        (0, Some(5), Some(3), 46, 50),
        (1, Some(14), Some(12), 47, 51),
        (2, Some(18), Some(16), 48, 52),
        (3, None, Some(21), 49, 53),
    ] {
        let law_port = 3 + slot;
        let (_, law_internal, law_current) = nonlinear.op_laws[slot];
        set_port_entry(
            &mut indices,
            &mut values,
            &mut counts,
            law_port,
            internal,
            -law_internal,
        );
        set_port_entry(
            &mut indices,
            &mut values,
            &mut counts,
            law_port,
            source,
            -law_current,
        );

        let vplus = plus.map_or(0.0, |index| x[index]);
        let vminus = minus.map_or(0.0, |index| x[index]);
        let raw_rate = OP_GAIN_RATE * (vplus - vminus) - OP_POLE * x[internal];
        if raw_rate.abs() >= OP_SLEW {
            let slew_port = 7 + slot;
            set_port_entry(
                &mut indices,
                &mut values,
                &mut counts,
                slew_port,
                internal,
                -OP_POLE,
            );
            if let Some(column) = plus {
                set_port_entry(
                    &mut indices,
                    &mut values,
                    &mut counts,
                    slew_port,
                    column,
                    OP_GAIN_RATE,
                );
            }
            if let Some(column) = minus {
                set_port_entry(
                    &mut indices,
                    &mut values,
                    &mut counts,
                    slew_port,
                    column,
                    -OP_GAIN_RATE,
                );
            }
        }
    }

    let (_, law_internal, law_current) = nonlinear.power_law;
    set_port_entry(
        &mut indices,
        &mut values,
        &mut counts,
        11,
        55,
        -law_internal,
    );
    set_port_entry(&mut indices, &mut values, &mut counts, 11, 54, -law_current);
    const POWER_POLE: f32 = 2.0 * core::f32::consts::PI * 100.503_784;
    const POWER_GAIN_RATE: f32 = 63_148_388.0;
    let raw_rate = POWER_GAIN_RATE * (x[32] - x[30]) - POWER_POLE * x[55];
    if raw_rate.abs() >= 8.0e6 {
        set_port_entry(&mut indices, &mut values, &mut counts, 12, 55, -POWER_POLE);
        set_port_entry(
            &mut indices,
            &mut values,
            &mut counts,
            12,
            32,
            POWER_GAIN_RATE,
        );
        set_port_entry(
            &mut indices,
            &mut values,
            &mut counts,
            12,
            30,
            -POWER_GAIN_RATE,
        );
    }
    (indices, values, counts)
}

fn solve_port_system_dynamic(
    matrix: &mut [f32; NONLINEAR_PORT_COUNT * NONLINEAR_PORT_COUNT],
    rhs: &mut [f32; NONLINEAR_PORT_COUNT],
    count: usize,
) -> Option<[f32; NONLINEAR_PORT_COUNT]> {
    for pivot in 0..count {
        let mut best = pivot;
        let mut magnitude = matrix[pivot * NONLINEAR_PORT_COUNT + pivot].abs();
        for row in pivot + 1..count {
            let candidate = matrix[row * NONLINEAR_PORT_COUNT + pivot].abs();
            if candidate > magnitude {
                best = row;
                magnitude = candidate;
            }
        }
        if magnitude <= 1.0e-20 {
            return None;
        }
        if best != pivot {
            for column in 0..count {
                matrix.swap(
                    pivot * NONLINEAR_PORT_COUNT + column,
                    best * NONLINEAR_PORT_COUNT + column,
                );
            }
            rhs.swap(pivot, best);
        }
        let diagonal = matrix[pivot * NONLINEAR_PORT_COUNT + pivot];
        for row in pivot + 1..count {
            let factor = matrix[row * NONLINEAR_PORT_COUNT + pivot] / diagonal;
            for column in pivot + 1..count {
                matrix[row * NONLINEAR_PORT_COUNT + column] -=
                    factor * matrix[pivot * NONLINEAR_PORT_COUNT + column];
            }
            rhs[row] -= factor * rhs[pivot];
        }
    }
    let mut solution = [0.0_f32; NONLINEAR_PORT_COUNT];
    for row in (0..count).rev() {
        let mut value = rhs[row];
        for column in row + 1..count {
            value -= matrix[row * NONLINEAR_PORT_COUNT + column] * solution[column];
        }
        solution[row] = value / matrix[row * NONLINEAR_PORT_COUNT + row];
    }
    Some(solution)
}

/// Точное портовое исключение `J = J0 + U*V^T` для фиксированного BDF2-скелета.
/// Runtime строит систему только активных нелинейных портов (8 в обычном
/// режиме, до 13 при slew-ограничении).
fn solve_reduced_ports_evaluated_profiled<F: FnMut(usize)>(
    x: &[f32; STATE_COUNT],
    nonlinear: &NonlinearEvaluation,
    residual: &[f32; RETAINED_COUNT],
    mut mark: F,
) -> Option<[f32; RETAINED_COUNT]> {
    mark(0);
    let (indices, values, counts) = nonlinear_port_rows(x, nonlinear);
    let mut base_solution = generated_model::solve_schur_base(residual);
    mark(1);

    let mut small = [0.0_f32; NONLINEAR_PORT_COUNT * NONLINEAR_PORT_COUNT];
    let mut rhs = [0.0_f32; NONLINEAR_PORT_COUNT];
    let mut active = [0_u8; NONLINEAR_PORT_COUNT];
    let mut active_count = 0_usize;
    for port in 0..NONLINEAR_PORT_COUNT {
        if counts[port] != 0 {
            active[active_count] = port as u8;
            active_count += 1;
        }
    }
    for row in 0..active_count {
        let port_row = active[row] as usize;
        small[row * NONLINEAR_PORT_COUNT + row] = 1.0;
        for slot in 0..counts[port_row] as usize {
            let state = indices[port_row][slot] as usize;
            let coefficient = values[port_row][slot];
            rhs[row] += coefficient * base_solution[state];
            for column in 0..active_count {
                let port_column = active[column] as usize;
                small[row * NONLINEAR_PORT_COUNT + column] += coefficient
                    * SCHUR_PORT_RESPONSE_BDF2[state * NONLINEAR_PORT_COUNT + port_column];
            }
        }
    }
    mark(2);

    let ports = solve_port_system_dynamic(&mut small, &mut rhs, active_count)?;
    mark(3);

    for state in 0..RETAINED_COUNT {
        for column in 0..active_count {
            let port = active[column] as usize;
            base_solution[state] -=
                SCHUR_PORT_RESPONSE_BDF2[state * NONLINEAR_PORT_COUNT + port] * ports[column];
        }
    }
    mark(4);
    Some(base_solution)
}

pub fn solve_reduced_ports_with_math<M: NonlinearMath>(
    x: &[f32; STATE_COUNT],
    residual: &[f32; RETAINED_COUNT],
) -> Option<[f32; RETAINED_COUNT]> {
    let nonlinear = evaluate_nonlinear::<M>(x);
    solve_reduced_ports_evaluated_profiled(x, &nonlinear, residual, |_| {})
}

fn set_physical_entry(
    indices: &mut [[u8; 3]; PHYSICAL_PORT_COUNT],
    values: &mut [[f32; 3]; PHYSICAL_PORT_COUNT],
    counts: &mut [u8; PHYSICAL_PORT_COUNT],
    port: usize,
    global_column: usize,
    value: f32,
) {
    let column = GLOBAL_TO_RETAINED[global_column];
    if column >= 0 && value != 0.0 {
        let slot = counts[port] as usize;
        indices[port][slot] = column as u8;
        values[port][slot] = value;
        counts[port] += 1;
    }
}

fn physical_port_rows(
    x: &[f32; STATE_COUNT],
    nonlinear: &NonlinearEvaluation,
) -> (
    [[u8; 3]; PHYSICAL_PORT_COUNT],
    [[f32; 3]; PHYSICAL_PORT_COUNT],
    [u8; PHYSICAL_PORT_COUNT],
) {
    let mut indices = [[0_u8; 3]; PHYSICAL_PORT_COUNT];
    let mut values = [[0.0_f32; 3]; PHYSICAL_PORT_COUNT];
    let mut counts = [0_u8; PHYSICAL_PORT_COUNT];
    set_physical_entry(
        &mut indices,
        &mut values,
        &mut counts,
        0,
        19,
        nonlinear.pair_conductance,
    );
    set_physical_entry(
        &mut indices,
        &mut values,
        &mut counts,
        0,
        20,
        -nonlinear.pair_conductance,
    );
    set_physical_entry(&mut indices, &mut values, &mut counts, 1, 26, nonlinear.g6);
    set_physical_entry(&mut indices, &mut values, &mut counts, 2, 26, -nonlinear.g7);
    set_physical_entry(
        &mut indices,
        &mut values,
        &mut counts,
        3,
        27,
        nonlinear.jfet_gradient_27,
    );
    set_physical_entry(
        &mut indices,
        &mut values,
        &mut counts,
        3,
        40,
        nonlinear.jfet_gradient_40,
    );

    const OP_GAIN_RATE: f32 = 25_132_741.0;
    const OP_POLE: f32 = 2.0 * core::f32::consts::PI * 20.0;
    const OP_SLEW: f32 = 16.0e6;
    for (slot, plus, minus, source, internal) in [
        (0, Some(5), Some(3), 46, 50),
        (1, Some(14), Some(12), 47, 51),
        (2, Some(18), Some(16), 48, 52),
        (3, None, Some(21), 49, 53),
    ] {
        let law = 4 + 2 * slot;
        let slew = law + 1;
        let (_, law_internal, law_current) = nonlinear.op_laws[slot];
        set_physical_entry(
            &mut indices,
            &mut values,
            &mut counts,
            law,
            internal,
            -law_internal,
        );
        set_physical_entry(
            &mut indices,
            &mut values,
            &mut counts,
            law,
            source,
            -law_current,
        );
        let vplus = plus.map_or(0.0, |index| x[index]);
        let vminus = minus.map_or(0.0, |index| x[index]);
        let raw_rate = OP_GAIN_RATE * (vplus - vminus) - OP_POLE * x[internal];
        if raw_rate.abs() < OP_SLEW {
            set_physical_entry(
                &mut indices,
                &mut values,
                &mut counts,
                slew,
                internal,
                OP_POLE,
            );
            if let Some(column) = plus {
                set_physical_entry(
                    &mut indices,
                    &mut values,
                    &mut counts,
                    slew,
                    column,
                    -OP_GAIN_RATE,
                );
            }
            if let Some(column) = minus {
                set_physical_entry(
                    &mut indices,
                    &mut values,
                    &mut counts,
                    slew,
                    column,
                    OP_GAIN_RATE,
                );
            }
        }
    }

    let (_, law_internal, law_current) = nonlinear.power_law;
    set_physical_entry(
        &mut indices,
        &mut values,
        &mut counts,
        12,
        55,
        -law_internal,
    );
    set_physical_entry(&mut indices, &mut values, &mut counts, 12, 54, -law_current);
    const POWER_POLE: f32 = 2.0 * core::f32::consts::PI * 100.503_784;
    const POWER_GAIN_RATE: f32 = 63_148_388.0;
    let raw_rate = POWER_GAIN_RATE * (x[32] - x[30]) - POWER_POLE * x[55];
    if raw_rate.abs() < 8.0e6 {
        set_physical_entry(&mut indices, &mut values, &mut counts, 13, 55, POWER_POLE);
        set_physical_entry(
            &mut indices,
            &mut values,
            &mut counts,
            13,
            32,
            -POWER_GAIN_RATE,
        );
        set_physical_entry(
            &mut indices,
            &mut values,
            &mut counts,
            13,
            30,
            POWER_GAIN_RATE,
        );
    }
    (indices, values, counts)
}

fn solve_physical_local(matrix: &mut [f32; 16], rhs: &mut [f32; 4], count: usize) -> bool {
    for pivot in 0..count {
        let mut best = pivot;
        for row in pivot + 1..count {
            if matrix[row * 4 + pivot].abs() > matrix[best * 4 + pivot].abs() {
                best = row;
            }
        }
        if matrix[best * 4 + pivot].abs() <= 1.0e-20 {
            return false;
        }
        if best != pivot {
            for column in 0..count {
                matrix.swap(pivot * 4 + column, best * 4 + column);
            }
            rhs.swap(pivot, best);
        }
        for row in pivot + 1..count {
            let factor = matrix[row * 4 + pivot] / matrix[pivot * 4 + pivot];
            for column in pivot + 1..count {
                matrix[row * 4 + column] -= factor * matrix[pivot * 4 + column];
            }
            rhs[row] -= factor * rhs[pivot];
        }
    }
    for row in (0..count).rev() {
        let mut value = rhs[row];
        for column in row + 1..count {
            value -= matrix[row * 4 + column] * rhs[column];
        }
        rhs[row] = value / matrix[row * 4 + row];
    }
    true
}

#[allow(dead_code)]
fn solve_reduced_physical_blocks_legacy<F: FnMut(usize)>(
    x: &[f32; STATE_COUNT],
    nonlinear: &NonlinearEvaluation,
    residual: &[f32; RETAINED_COUNT],
    mut mark: F,
) -> Option<[f32; RETAINED_COUNT]> {
    const SCALE: [f32; PHYSICAL_PORT_COUNT] = [
        1.0e-3, 1.0e-3, 1.0e-3, 1.0e-2, 15.0, 16.0e6, 15.0, 16.0e6, 15.0, 16.0e6, 15.0, 16.0e6,
        24.0, 8.0e6,
    ];
    mark(0);
    let (indices, values, counts) = physical_port_rows(x, nonlinear);
    let mut base_solution = generated_model::solve_physical_base(residual);
    mark(1);
    let mut matrix = [0.0_f32; PHYSICAL_PORT_COUNT * PHYSICAL_PORT_COUNT];
    let mut rhs = [0.0_f32; PHYSICAL_PORT_COUNT];
    for row in 0..PHYSICAL_PORT_COUNT {
        matrix[row * PHYSICAL_PORT_COUNT + row] = 1.0;
        for slot in 0..counts[row] as usize {
            let state = indices[row][slot] as usize;
            let coefficient = values[row][slot];
            rhs[row] += coefficient * base_solution[state];
            for column in 0..PHYSICAL_PORT_COUNT {
                matrix[row * PHYSICAL_PORT_COUNT + column] +=
                    coefficient * PHYSICAL_PORT_RESPONSE_BDF2[state * PHYSICAL_PORT_COUNT + column];
            }
        }
        rhs[row] /= SCALE[row];
        for column in 0..PHYSICAL_PORT_COUNT {
            matrix[row * PHYSICAL_PORT_COUNT + column] *= SCALE[column] / SCALE[row];
        }
    }
    mark(2);
    let mut ports = [0.0_f32; PHYSICAL_PORT_COUNT];
    for _ in 0..3 {
        for (block, count) in [
            ([0, 4, 5, 0], 3_usize),
            ([1, 2, 6, 7], 4),
            ([8, 9, 0, 0], 2),
            ([3, 10, 11, 0], 3),
            ([12, 13, 0, 0], 2),
        ] {
            let mut local_matrix = [0.0_f32; 16];
            let mut local_rhs = [0.0_f32; 4];
            for local_row in 0..count {
                let row = block[local_row];
                local_rhs[local_row] = rhs[row];
                for column in 0..PHYSICAL_PORT_COUNT {
                    let mut local = false;
                    for index in 0..count {
                        local |= block[index] == column;
                    }
                    if !local {
                        local_rhs[local_row] -=
                            matrix[row * PHYSICAL_PORT_COUNT + column] * ports[column];
                    }
                }
                for local_column in 0..count {
                    local_matrix[local_row * 4 + local_column] =
                        matrix[row * PHYSICAL_PORT_COUNT + block[local_column]];
                }
            }
            if !solve_physical_local(&mut local_matrix, &mut local_rhs, count) {
                return None;
            }
            for local in 0..count {
                ports[block[local]] = local_rhs[local];
            }
        }
    }
    mark(3);
    for port in 0..PHYSICAL_PORT_COUNT {
        ports[port] *= SCALE[port];
    }
    for state in 0..RETAINED_COUNT {
        for port in 0..PHYSICAL_PORT_COUNT {
            base_solution[state] -=
                PHYSICAL_PORT_RESPONSE_BDF2[state * PHYSICAL_PORT_COUNT + port] * ports[port];
        }
    }
    mark(4);
    Some(base_solution)
}

#[cfg(test)]
fn solve_reduced_physical_blocks_evaluated_profiled<F: FnMut(usize)>(
    x: &[f32; STATE_COUNT],
    nonlinear: &NonlinearEvaluation,
    residual: &[f32; RETAINED_COUNT],
    mut mark: F,
) -> Option<[f32; RETAINED_COUNT]> {
    mark(0);
    let (indices, values, counts) = physical_port_rows(x, nonlinear);
    let mut result = generated_model::solve_physical_base(residual);
    mark(1);
    mark(2);
    generated_model::solve_direct_ports(&mut result, &indices, &values, &counts)?;
    mark(3);
    mark(4);
    Some(result)
}

pub fn recover_full_delta(
    residual: &[f32; STATE_COUNT],
    retained_delta: &[f32; RETAINED_COUNT],
) -> [f32; STATE_COUNT] {
    generated_model::recover_full_delta(residual, retained_delta)
}

pub fn newton_iteration_with_math<M: NonlinearMath>(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
) -> Option<[f32; STATE_COUNT]> {
    newton_iteration_impl::<M, false, false>(x, history, input_v, sample_rate, order)
}

/// Инструментированный вариант принятой разреженной Newton-поправки.
/// `mark` вызывается на границах стадий 0..=6; измеритель времени остаётся
/// в контроллерном runtime и не проникает в переносимое DSP-ядро.
pub fn newton_iteration_profiled_with_math<M: NonlinearMath, F: FnMut(usize)>(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
    mut mark: F,
) -> Option<[f32; STATE_COUNT]> {
    mark(0);
    let nonlinear = evaluate_nonlinear::<M>(x);
    mark(1);
    let residual = assemble_residual_evaluated(x, history, input_v, sample_rate, order, &nonlinear);
    let projected = project_residual(&residual);
    mark(2);
    let mut jacobian = assemble_reduced_jacobian_evaluated(x, &nonlinear);
    mark(3);
    let retained_delta = generated_model::solve_fixed_sparse(&mut jacobian, &projected).ok()?;
    mark(4);
    let delta = recover_full_delta(&residual, &retained_delta);
    mark(5);
    let mut corrected = *x;
    for index in 0..STATE_COUNT {
        corrected[index] += delta[index];
    }
    mark(6);
    Some(corrected)
}

pub fn newton_iteration_event_power_profiled_with_math<M: NonlinearMath, F: FnMut(usize)>(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
    mut mark: F,
) -> Option<[f32; STATE_COUNT]> {
    mark(0);
    let nonlinear = evaluate_nonlinear_event_power::<M>(x);
    mark(1);
    let residual = assemble_residual_evaluated(x, history, input_v, sample_rate, order, &nonlinear);
    let projected = project_residual(&residual);
    mark(2);
    let mut jacobian = assemble_reduced_jacobian_evaluated(x, &nonlinear);
    mark(3);
    let retained_delta = generated_model::solve_fixed_sparse(&mut jacobian, &projected).ok()?;
    mark(4);
    let delta = recover_full_delta(&residual, &retained_delta);
    let mut corrected = *x;
    for index in 0..STATE_COUNT {
        corrected[index] += delta[index];
    }
    mark(5);
    Some(corrected)
}

/// Newton-поправка через постоянный линейный скелет и систему 13 портов.
/// Метки: нелинейности, residual+Schur, базовый solve, сборка портов,
/// малый solve, портовое восстановление, полное восстановление+применение.
pub fn newton_iteration_ports_profiled_with_math<M: NonlinearMath, F: FnMut(usize)>(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
    mut mark: F,
) -> Option<[f32; STATE_COUNT]> {
    mark(0);
    let nonlinear = evaluate_nonlinear::<M>(x);
    mark(1);
    let residual = assemble_residual_evaluated(x, history, input_v, sample_rate, order, &nonlinear);
    let projected = project_residual(&residual);
    mark(2);
    let retained_delta =
        solve_reduced_ports_evaluated_profiled(x, &nonlinear, &projected, |index| mark(index + 2))?;
    let delta = recover_full_delta(&residual, &retained_delta);
    let mut corrected = *x;
    for index in 0..STATE_COUNT {
        corrected[index] += delta[index];
    }
    mark(7);
    Some(corrected)
}

/// Один прямой проход пяти физических блоков 4×4/3×3/2×2/3×3/2×2.
/// Коэффициенты подготовлены только для BDF2, 96 кГц и заданных ручек.
pub fn newton_iteration_physical_blocks_profiled_with_math<M: NonlinearMath, F: FnMut(usize)>(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
    mut mark: F,
) -> Option<[f32; STATE_COUNT]> {
    if sample_rate != 96_000.0 || order != 1.5 {
        return None;
    }
    mark(0);
    let nonlinear = evaluate_nonlinear::<M>(x);
    mark(1);
    let residual = assemble_residual_evaluated(x, history, input_v, sample_rate, order, &nonlinear);
    mark(2);
    physical_correction_evaluated::<true, _>(x, &nonlinear, &residual, mark)
}

fn physical_correction_evaluated<const SPECIALIZED: bool, F: FnMut(usize)>(
    x: &[f32; STATE_COUNT],
    nonlinear: &NonlinearEvaluation,
    residual: &[f32; STATE_COUNT],
    mut mark: F,
) -> Option<[f32; STATE_COUNT]> {
    mark(3);
    let (indices, values, counts) = physical_port_rows(x, &nonlinear);
    let mut retained = generated_model::solve_physical_full_base(&residual);
    mark(4);
    mark(5);
    let solved = if SPECIALIZED {
        generated_model::solve_direct_ports_specialized(&mut retained, &indices, &values, &counts)
    } else {
        generated_model::solve_direct_ports(&mut retained, &indices, &values, &counts)
    };
    mark(6);
    solved?;
    mark(7);
    let delta = generated_model::recover_physical_delta(&residual, &retained);
    let mut corrected = *x;
    for index in 0..STATE_COUNT {
        corrected[index] += delta[index];
    }
    mark(8);
    Some(corrected)
}

pub struct IncrementalNewtonCandidate {
    pub corrected: [f32; STATE_COUNT],
    pub diode_cache: IncrementalDiodeCache,
}

/// Отдельный кандидат Newton-поправки с сохранёнными диодными нелинейностями.
/// Входной кэш не меняется: вызывающая сторона фиксирует `diode_cache` только
/// после принятия шага поиском шага.
pub fn newton_iteration_incremental_profiled_with_math<M: NonlinearMath, F: FnMut(usize)>(
    x: &[f32; STATE_COUNT],
    diode_cache: &IncrementalDiodeCache,
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
    mut mark: F,
) -> Option<IncrementalNewtonCandidate> {
    mark(0);
    let nonlinear = evaluate_nonlinear_cached::<M>(x, diode_cache);
    mark(1);
    let residual = assemble_residual_evaluated(x, history, input_v, sample_rate, order, &nonlinear);
    let projected = project_residual(&residual);
    mark(2);
    let mut jacobian = assemble_reduced_jacobian_evaluated(x, &nonlinear);
    mark(3);
    let retained_delta = generated_model::solve_fixed_sparse(&mut jacobian, &projected).ok()?;
    mark(4);
    let delta = recover_full_delta(&residual, &retained_delta);
    let mut corrected = *x;
    for index in 0..STATE_COUNT {
        corrected[index] += delta[index];
    }
    mark(5);
    let next_cache = diode_cache.trial_after_delta::<M>(&corrected, &delta);
    mark(6);
    Some(IncrementalNewtonCandidate {
        corrected,
        diode_cache: next_cache,
    })
}

fn newton_iteration_impl<M: NonlinearMath, const DENSE: bool, const EVENT_POWER: bool>(
    x: &[f32; STATE_COUNT],
    history: &[f32; STATE_COUNT],
    input_v: f32,
    sample_rate: f32,
    order: f32,
) -> Option<[f32; STATE_COUNT]> {
    let nonlinear = if EVENT_POWER {
        evaluate_nonlinear_event_power::<M>(x)
    } else {
        evaluate_nonlinear::<M>(x)
    };
    let residual = assemble_residual_evaluated(x, history, input_v, sample_rate, order, &nonlinear);
    let projected = project_residual(&residual);
    let mut jacobian = assemble_reduced_jacobian_evaluated(x, &nonlinear);
    let retained_delta = if DENSE {
        solve_reduced(jacobian, &projected)?
    } else {
        generated_model::solve_fixed_sparse(&mut jacobian, &projected).ok()?
    };
    let delta = recover_full_delta(&residual, &retained_delta);
    let mut corrected = *x;
    for index in 0..STATE_COUNT {
        corrected[index] += delta[index];
    }
    Some(corrected)
}

pub struct DspState {
    current: [f32; STATE_COUNT],
    previous: [f32; STATE_COUNT],
    steps: u32,
}

pub struct StepResult {
    pub output_v: f32,
    pub residual_norm: f32,
    pub iterations: u8,
    pub converged: bool,
}

#[derive(Clone, Copy, Debug)]
pub struct PowerDiagnostics {
    pub rail_ratio: f32,
    pub current_ratio: f32,
    pub nonlinear_difference_v: f32,
    pub slew_limited: bool,
}

pub struct IncrementalDspState {
    current: [f32; STATE_COUNT],
    previous: [f32; STATE_COUNT],
    diode_cache: IncrementalDiodeCache,
    steps: u32,
}

impl Default for IncrementalDspState {
    fn default() -> Self {
        let current = [0.0; STATE_COUNT];
        Self {
            current,
            previous: current,
            diode_cache: IncrementalDiodeCache::from_state::<SoftwareMath>(&current),
            steps: 0,
        }
    }
}

impl IncrementalDspState {
    pub fn diode_metrics(&self) -> IncrementalDiodeMetrics {
        self.diode_cache.metrics()
    }

    fn residual_norm_cached(
        x: &[f32; STATE_COUNT],
        cache: &IncrementalDiodeCache,
        history: &[f32; STATE_COUNT],
        input_v: f32,
        sample_rate: f32,
        order: f32,
    ) -> f32 {
        let nonlinear = evaluate_nonlinear_cached::<SoftwareMath>(x, cache);
        let residual =
            assemble_residual_evaluated(x, history, input_v, sample_rate, order, &nonlinear);
        let mut norm = 0.0_f32;
        for index in 0..STATE_COUNT {
            norm = norm.max((residual[index] / generated_model::ROW_SCALE[index]).abs());
        }
        norm
    }

    pub fn step(&mut self, input_v: f32, sample_rate: f32) -> StepResult {
        let order = 1.5;
        let tolerance = 1.0e-4;
        let mut history = [0.0_f32; STATE_COUNT];
        let mut candidate = self.current;
        for index in 0..STATE_COUNT {
            if self.steps == 0 {
                history[index] = self.current[index];
            } else {
                history[index] = 2.0 * self.current[index] - 0.5 * self.previous[index];
                candidate[index] = 2.0 * self.current[index] - self.previous[index];
            }
        }
        let mut predictor_delta = [0.0_f32; STATE_COUNT];
        for index in 0..STATE_COUNT {
            predictor_delta[index] = candidate[index] - self.current[index];
        }
        let mut candidate_cache = self
            .diode_cache
            .trial_after_delta::<SoftwareMath>(&candidate, &predictor_delta);
        let mut norm = Self::residual_norm_cached(
            &candidate,
            &candidate_cache,
            &history,
            input_v,
            sample_rate,
            order,
        );
        if norm <= tolerance {
            self.previous = self.current;
            self.current = candidate;
            self.diode_cache = candidate_cache;
            self.steps = self.steps.saturating_add(1);
            return StepResult {
                output_v: candidate[31],
                residual_norm: norm,
                iterations: 0,
                converged: true,
            };
        }

        let mut iterations = 0_u8;
        for iteration in 1..=2 {
            let before = candidate;
            let before_cache = candidate_cache;
            let Some(full) = newton_iteration_incremental_profiled_with_math::<SoftwareMath, _>(
                &before,
                &before_cache,
                &history,
                input_v,
                sample_rate,
                order,
                |_| {},
            ) else {
                break;
            };
            let mut full_delta = [0.0_f32; STATE_COUNT];
            for index in 0..STATE_COUNT {
                full_delta[index] = full.corrected[index] - before[index];
            }
            let mut damping = 1.0_f32;
            let mut accepted = false;
            for _ in 0..8 {
                let mut trial_delta = [0.0_f32; STATE_COUNT];
                for index in 0..STATE_COUNT {
                    trial_delta[index] = damping * full_delta[index];
                    candidate[index] = before[index] + trial_delta[index];
                }
                let trial_cache =
                    before_cache.trial_after_delta::<SoftwareMath>(&candidate, &trial_delta);
                let trial = Self::residual_norm_cached(
                    &candidate,
                    &trial_cache,
                    &history,
                    input_v,
                    sample_rate,
                    order,
                );
                if trial.is_finite() && trial < norm {
                    norm = trial;
                    candidate_cache = trial_cache;
                    accepted = true;
                    break;
                }
                damping *= 0.5;
            }
            if !accepted {
                candidate = before;
                candidate_cache = before_cache;
                break;
            }
            iterations = iteration;
            if norm <= tolerance {
                break;
            }
        }
        let converged = norm <= tolerance;
        if norm.is_finite() && iterations > 0 {
            self.previous = self.current;
            self.current = candidate;
            self.diode_cache = candidate_cache;
            self.steps = self.steps.saturating_add(1);
        } else {
            candidate = self.current;
        }
        StepResult {
            output_v: candidate[31],
            residual_norm: norm,
            iterations,
            converged,
        }
    }
}

impl Default for DspState {
    fn default() -> Self {
        Self {
            current: [0.0; STATE_COUNT],
            previous: [0.0; STATE_COUNT],
            steps: 0,
        }
    }
}

fn physical_residual_norm(residual: &[f32; STATE_COUNT]) -> f32 {
    generated_model::physical_grouped_norm(residual)
}

impl DspState {
    pub fn power_diagnostics(&self) -> PowerDiagnostics {
        let internal = self.current[55];
        let source_current = self.current[54];
        let rail_ratio = internal.abs() / 21.0;
        let (voltage, _, _) = smooth_rail_derivatives::<SoftwareMath>(internal, 21.0);
        let vce = (24.0 - voltage.abs()).max(8.0);
        let current_limit = (60.0 / vce).min(5.0);
        let current_ratio = source_current.abs() / current_limit;
        let full = power_output_derivatives::<SoftwareMath>(internal, source_current).0;
        const POWER_POLE: f32 = 2.0 * core::f32::consts::PI * 100.503_784;
        const POWER_GAIN_RATE: f32 = 63_148_388.0;
        let raw_rate =
            POWER_GAIN_RATE * (self.current[32] - self.current[30]) - POWER_POLE * internal;
        PowerDiagnostics {
            rail_ratio,
            current_ratio,
            nonlinear_difference_v: full - internal,
            slew_limited: raw_rate.abs() >= 8.0e6,
        }
    }

    fn residual_norm<M: NonlinearMath, const EVENT_POWER: bool>(
        x: &[f32; STATE_COUNT],
        history: &[f32; STATE_COUNT],
        input_v: f32,
        sample_rate: f32,
        order: f32,
    ) -> f32 {
        let nonlinear = if EVENT_POWER {
            evaluate_nonlinear_event_power::<M>(x)
        } else {
            evaluate_nonlinear::<M>(x)
        };
        let residual =
            assemble_residual_evaluated(x, history, input_v, sample_rate, order, &nonlinear);
        let mut norm = 0.0_f32;
        for index in 0..STATE_COUNT {
            norm = norm.max((residual[index] / generated_model::ROW_SCALE[index]).abs());
        }
        norm
    }

    fn step_impl<
        M: NonlinearMath,
        const DENSE: bool,
        const EVENT_POWER: bool,
        const PHYSICAL: bool,
        const REUSE: bool,
        const DEFER: bool,
        F: FnMut(usize, bool),
    >(
        &mut self,
        input_v: f32,
        sample_rate: f32,
        tolerance: f32,
        mut mark: F,
    ) -> StepResult {
        mark(0, true);
        // Фиксированный Jacobian сгенерирован для BDF2. Первый отсчёт стартует
        // с нулевой предыстории того же порядка, без несогласованного BE-шага.
        let order = 1.5;
        let mut history = [0.0_f32; STATE_COUNT];
        let mut candidate = self.current;
        for index in 0..STATE_COUNT {
            if self.steps == 0 {
                history[index] = self.current[index];
            } else {
                history[index] = 2.0 * self.current[index] - 0.5 * self.previous[index];
                candidate[index] = 2.0 * self.current[index] - self.previous[index];
            }
        }

        // Сохраняем только вычисления ровно в candidate. При поиске шага
        // заменяем их лишь после принятия пробы, не при её отклонении.
        mark(0, false);
        let mut cached = None;
        let mut derivatives_ready = true;
        let mut norm = if PHYSICAL && REUSE {
            mark(1, true);
            let nonlinear = evaluate_nonlinear::<M>(&candidate);
            mark(1, false);
            mark(2, true);
            let residual = assemble_residual_evaluated(
                &candidate,
                &history,
                input_v,
                sample_rate,
                order,
                &nonlinear,
            );
            mark(2, false);
            mark(3, true);
            let norm = physical_residual_norm(&residual);
            mark(3, false);
            cached = Some((nonlinear, residual));
            norm
        } else {
            Self::residual_norm::<M, EVENT_POWER>(&candidate, &history, input_v, sample_rate, order)
        };
        if norm <= tolerance {
            mark(8, true);
            self.previous = self.current;
            self.current = candidate;
            self.steps = self.steps.saturating_add(1);
            mark(8, false);
            return StepResult {
                output_v: candidate[31],
                residual_norm: norm,
                iterations: 0,
                converged: true,
            };
        }
        let mut iterations = 0_u8;
        let maximum_iterations = if DENSE { 10 } else { 2 };
        for iteration in 1..=maximum_iterations {
            let before = candidate;
            if PHYSICAL && REUSE && !derivatives_ready {
                mark(1, true);
                if let Some((ref mut nonlinear, _)) = cached {
                    *nonlinear = evaluate_nonlinear::<M>(&candidate);
                }
                mark(1, false);
            }
            let correction = if PHYSICAL {
                if sample_rate != 96_000.0 {
                    break;
                }
                if let Some((ref nonlinear, ref residual)) = cached {
                    physical_correction_evaluated::<DEFER, _>(
                        &candidate,
                        nonlinear,
                        residual,
                        |event| match event {
                            3 => mark(4, true),
                            4 => mark(4, false),
                            5 => mark(5, true),
                            6 => mark(5, false),
                            7 => mark(6, true),
                            8 => mark(6, false),
                            _ => {}
                        },
                    )
                } else {
                    newton_iteration_physical_blocks_profiled_with_math::<M, _>(
                        &candidate,
                        &history,
                        input_v,
                        sample_rate,
                        order,
                        |_| {},
                    )
                }
            } else {
                newton_iteration_impl::<M, DENSE, EVENT_POWER>(
                    &candidate,
                    &history,
                    input_v,
                    sample_rate,
                    order,
                )
            };
            let Some(corrected) = correction else {
                break;
            };
            let mut damping = 1.0_f32;
            let mut accepted = false;
            for _ in 0..8 {
                mark(7, true);
                for index in 0..STATE_COUNT {
                    candidate[index] = before[index] + damping * (corrected[index] - before[index]);
                }
                mark(7, false);
                let mut trial_cache = None;
                let trial = if PHYSICAL && REUSE {
                    mark(1, true);
                    let nonlinear = if DEFER {
                        evaluate_nonlinear_values::<M>(&candidate)
                    } else {
                        evaluate_nonlinear::<M>(&candidate)
                    };
                    mark(1, false);
                    mark(2, true);
                    let residual = assemble_residual_evaluated(
                        &candidate,
                        &history,
                        input_v,
                        sample_rate,
                        order,
                        &nonlinear,
                    );
                    mark(2, false);
                    mark(3, true);
                    let norm = physical_residual_norm(&residual);
                    mark(3, false);
                    trial_cache = Some((nonlinear, residual));
                    norm
                } else {
                    Self::residual_norm::<M, EVENT_POWER>(
                        &candidate,
                        &history,
                        input_v,
                        sample_rate,
                        order,
                    )
                };
                if trial.is_finite() && trial < norm {
                    cached = trial_cache;
                    derivatives_ready = !DEFER;
                    norm = trial;
                    accepted = true;
                    break;
                }
                damping *= 0.5;
            }
            if !accepted {
                candidate = before;
                break;
            }
            iterations = iteration;
            if norm <= tolerance {
                break;
            }
        }

        mark(8, true);
        let converged = norm <= tolerance;
        if norm.is_finite() && iterations > 0 {
            self.previous = self.current;
            self.current = candidate;
            self.steps = self.steps.saturating_add(1);
        } else {
            candidate = self.current;
        }
        mark(8, false);
        StepResult {
            output_v: candidate[31],
            residual_norm: norm,
            iterations,
            converged,
        }
    }

    pub fn step(&mut self, input_v: f32, sample_rate: f32) -> StepResult {
        self.step_impl::<SoftwareMath, false, false, false, false, false, _>(
            input_v,
            sample_rate,
            1.0e-4,
            |_, _| {},
        )
    }

    pub fn step_dense(&mut self, input_v: f32, sample_rate: f32) -> StepResult {
        self.step_impl::<SoftwareMath, true, false, false, false, false, _>(
            input_v,
            sample_rate,
            1.0e-4,
            |_, _| {},
        )
    }

    pub fn step_event_power(&mut self, input_v: f32, sample_rate: f32) -> StepResult {
        self.step_impl::<SoftwareMath, false, true, false, false, false, _>(
            input_v,
            sample_rate,
            1.0e-4,
            |_, _| {},
        )
    }

    pub fn step_physical(&mut self, input_v: f32, sample_rate: f32) -> StepResult {
        self.step_physical_with_math::<SoftwareMath, true>(input_v, sample_rate)
    }

    /// REUSE=false сохраняет контрольный путь с повторным вычислением невязки.
    pub fn step_physical_with_math<M: NonlinearMath, const REUSE: bool>(
        &mut self,
        input_v: f32,
        sample_rate: f32,
    ) -> StepResult {
        self.step_impl::<M, false, false, true, REUSE, true, _>(
            input_v,
            sample_rate,
            1.0e-4,
            |_, _| {},
        )
    }

    /// Контрольный путь: производные на каждой пробе и прежняя динамическая
    /// сборка локальных блоков. Общие оптимизации компиляции сохранены.
    pub fn step_physical_eager_with_math<M: NonlinearMath>(
        &mut self,
        input_v: f32,
        sample_rate: f32,
    ) -> StepResult {
        self.step_impl::<M, false, false, true, true, false, _>(
            input_v,
            sample_rate,
            1.0e-4,
            |_, _| {},
        )
    }

    /// Метки начала/конца: история, нелинейности, невязка, норма,
    /// линейный вход, локальные блоки, восстановление, проба, фиксация состояния.
    pub fn step_physical_profiled_with_math<M: NonlinearMath, F: FnMut(usize, bool)>(
        &mut self,
        input_v: f32,
        sample_rate: f32,
        mark: F,
    ) -> StepResult {
        self.step_impl::<M, false, false, true, true, true, _>(input_v, sample_rate, 1.0e-4, mark)
    }
}

#[cfg(test)]
mod tests {
    extern crate std;
    use super::*;
    #[test]
    fn grouped_norm_matches_original_bits() {
        let mut random = 1_u32;
        for case in 0..20000 {
            let mut residual = [0.0; STATE_COUNT];
            for value in &mut residual {
                random = random.wrapping_mul(1664525).wrapping_add(1013904223);
                *value = f32::from_bits(random);
            }
            if case < STATE_COUNT {
                residual[case] = [f32::INFINITY, f32::NEG_INFINITY, f32::NAN, -0.0][case % 4];
            }
            let mut original = 0.0_f32;
            for i in 0..STATE_COUNT {
                original = original.max((residual[i] / generated_model::ROW_SCALE[i]).abs());
            }
            assert_eq!(
                physical_residual_norm(&residual).to_bits(),
                original.to_bits()
            );
        }
    }

    #[test]
    fn deferred_fpu_matches_eager_states_and_laws() {
        let mut random = 1_u32;
        for amplitude in [0.1, 0.25, 1.0] {
            let mut a = DspState::default();
            let mut b = DspState::default();
            for index in 0..8192 {
                random = random.wrapping_mul(1664525).wrapping_add(1013904223);
                let phase = ((index + 96) % 384) as f32 / 384.0;
                let input = amplitude
                    * if index < 4096 {
                        1.0 - 4.0 * (phase - 0.5).abs()
                    } else {
                        random as i32 as f32 / 2147483648.0
                    };
                let new = a.step_physical_with_math::<FpuRootMath, true>(input, 96000.0);
                let old = b.step_physical_eager_with_math::<FpuRootMath>(input, 96000.0);
                assert_eq!(
                    (new.iterations, new.converged),
                    (old.iterations, old.converged)
                );
                assert_eq!(new.residual_norm.to_bits(), old.residual_norm.to_bits());
                assert_eq!(a.steps, b.steps);
                for i in 0..STATE_COUNT {
                    assert_eq!(a.current[i].to_bits(), b.current[i].to_bits());
                    assert_eq!(a.previous[i].to_bits(), b.previous[i].to_bits());
                }
                let full = evaluate_nonlinear::<FpuRootMath>(&a.current);
                let values = evaluate_nonlinear_values::<FpuRootMath>(&a.current);
                let r1 = assemble_residual_evaluated(
                    &a.current,
                    &a.previous,
                    input,
                    96000.0,
                    1.5,
                    &full,
                );
                let r2 = assemble_residual_evaluated(
                    &a.current,
                    &a.previous,
                    input,
                    96000.0,
                    1.5,
                    &values,
                );
                for i in 0..STATE_COUNT {
                    assert_eq!(r1[i].to_bits(), r2[i].to_bits());
                }
                let (idx, val, cnt) = physical_port_rows(&a.current, &full);
                let mut d1 = generated_model::solve_physical_full_base(&r1);
                let mut d2 = d1;
                let s1 = generated_model::solve_direct_ports(&mut d1, &idx, &val, &cnt);
                let s2 = generated_model::solve_direct_ports_specialized(&mut d2, &idx, &val, &cnt);
                assert_eq!(s1, s2);
                for i in 0..RETAINED_COUNT {
                    assert_eq!(d1[i].to_bits(), d2[i].to_bits());
                }
            }
        }
    }

    #[test]
    fn native_root_matches_f64_reference() {
        let mut worst = 0_u32;
        for exponent in 127..255_u32 {
            for mantissa in 0..1024_u32 {
                let x = f32::from_bits((exponent << 23) | (mantissa << 13));
                let reference = (x as f64).powf(1.0 / 16.0) as f32;
                let y = native_sixteenth_root(x);
                assert!(y.is_finite());
                worst = worst.max(y.to_bits().abs_diff(reference.to_bits()));
            }
        }
        assert!(worst <= 2, "root error {worst} ULP");
        assert_eq!(native_sixteenth_root(1.0), 1.0);
        std::println!("native root maximum {worst} ULP");
    }
    #[test]
    fn physical_reuse_is_bit_exact_over_stream() {
        let mut cached = DspState::default();
        let mut original = DspState::default();
        let mut profiled = DspState::default();
        let mut random = 1_u32;
        let mut counts = [0_usize; 3];
        for index in 0..24000 {
            random = random.wrapping_mul(1664525).wrapping_add(1013904223);
            let amplitude = [0.0, 0.1, 0.25, 1.0][index / 6000];
            let phase = ((index + 96) % 384) as f32 / 384.0;
            let input = if index < 12000 {
                amplitude * (1.0 - 4.0 * (phase - 0.5).abs())
            } else {
                amplitude * (random as i32 as f32 / 2147483648.0)
            };
            let a = cached.step_physical_with_math::<SoftwareMath, true>(input, 96000.0);
            let b = original.step_physical_with_math::<SoftwareMath, false>(input, 96000.0);
            let mut opened = [false; 9];
            let p = profiled.step_physical_profiled_with_math::<SoftwareMath, _>(
                input,
                96000.0,
                |id, start| {
                    assert_ne!(opened[id], start, "unbalanced profile event {id}");
                    opened[id] = start;
                },
            );
            assert!(opened.iter().all(|&v| !v));
            assert_eq!(p.output_v.to_bits(), a.output_v.to_bits());
            assert_eq!(p.residual_norm.to_bits(), a.residual_norm.to_bits());
            assert_eq!((p.iterations, p.converged), (a.iterations, a.converged));
            assert_eq!(profiled.steps, cached.steps);
            assert_eq!(a.output_v.to_bits(), b.output_v.to_bits(), "sample {index}");
            assert_eq!(
                a.residual_norm.to_bits(),
                b.residual_norm.to_bits(),
                "sample {index}"
            );
            assert_eq!((a.iterations, a.converged), (b.iterations, b.converged));
            assert_eq!(cached.steps, original.steps);
            for i in 0..STATE_COUNT {
                assert_eq!(profiled.current[i].to_bits(), cached.current[i].to_bits());
                assert_eq!(profiled.previous[i].to_bits(), cached.previous[i].to_bits());
                assert_eq!(
                    cached.current[i].to_bits(),
                    original.current[i].to_bits(),
                    "sample {index}, state {i}"
                );
                assert_eq!(cached.previous[i].to_bits(), original.previous[i].to_bits());
            }
            counts[a.iterations as usize] += 1;
        }
        assert!(counts.iter().all(|&count| count > 0), "{counts:?}");
        std::println!("reuse stream iteration counts: {counts:?}");
    }
    use generated_model::{
        FIXTURE_BRANCH_FULL_DELTAS, FIXTURE_FULL_DELTA, FIXTURE_HISTORY, FIXTURE_LINEAR_KCL,
        FIXTURE_LINEAR_KCL_XOR, FIXTURE_PROJECTED_RESIDUAL, FIXTURE_REDUCED_DELTA,
        FIXTURE_REDUCED_JACOBIAN, FIXTURE_RESIDUAL, FIXTURE_X,
    };

    #[test]
    fn generated_linear_mna_matches_python_bit_for_bit() {
        let actual = assemble_linear_kcl(&FIXTURE_X, &FIXTURE_HISTORY, 96_000.0, 1.5);
        for (index, (actual, expected)) in actual.iter().zip(FIXTURE_LINEAR_KCL.iter()).enumerate()
        {
            assert_eq!(actual.to_bits(), expected.to_bits(), "node {index}");
        }
        let checksum = actual
            .iter()
            .fold(0_u32, |checksum, value| checksum ^ value.to_bits());
        assert_eq!(checksum, FIXTURE_LINEAR_KCL_XOR);
    }

    #[test]
    fn physical_residual_matches_python_fixture() {
        let actual = assemble_residual(&FIXTURE_X, &FIXTURE_HISTORY, 0.03125, 96_000.0, 1.5);
        for (index, (actual, expected)) in actual.iter().zip(FIXTURE_RESIDUAL.iter()).enumerate() {
            let tolerance = (expected.abs() * 3.0e-4).max(2.0e-6);
            assert!(
                (actual - expected).abs() <= tolerance,
                "row {index}: actual={actual:e}, expected={expected:e}, tolerance={tolerance:e}"
            );
        }
    }

    #[test]
    fn schur_projection_matches_python_fixture() {
        let residual = assemble_residual(&FIXTURE_X, &FIXTURE_HISTORY, 0.03125, 96_000.0, 1.5);
        let actual = project_residual(&residual);
        for (index, (actual, expected)) in actual
            .iter()
            .zip(FIXTURE_PROJECTED_RESIDUAL.iter())
            .enumerate()
        {
            let tolerance = (expected.abs() * 4.0e-4).max(3.0e-6);
            assert!(
                (actual - expected).abs() <= tolerance,
                "row {index}: actual={actual:e}, expected={expected:e}, tolerance={tolerance:e}"
            );
        }
    }

    #[test]
    fn reduced_jacobian_and_solve_match_python_fixture() {
        let matrix = assemble_reduced_jacobian(&FIXTURE_X);
        let (combined_residual, combined_matrix) = assemble_reduced_system_with_math::<SoftwareMath>(
            &FIXTURE_X,
            &FIXTURE_HISTORY,
            0.03125,
            96_000.0,
            1.5,
        );
        let separate_residual = project_residual(&assemble_residual(
            &FIXTURE_X,
            &FIXTURE_HISTORY,
            0.03125,
            96_000.0,
            1.5,
        ));
        for index in 0..RETAINED_COUNT {
            let tolerance = (separate_residual[index].abs() * 4.0e-4).max(3.0e-6);
            assert!(
                (combined_residual[index] - separate_residual[index]).abs() <= tolerance,
                "direct residual {index}: direct={:e}, projected={:e}",
                combined_residual[index],
                separate_residual[index]
            );
        }
        for index in 0..RETAINED_COUNT * RETAINED_COUNT {
            assert_eq!(combined_matrix[index].to_bits(), matrix[index].to_bits());
        }
        for (index, (actual, expected)) in matrix
            .iter()
            .zip(FIXTURE_REDUCED_JACOBIAN.iter())
            .enumerate()
        {
            let tolerance = (expected.abs() * 8.0e-4).max(3.0e-5);
            assert!(
                (actual - expected).abs() <= tolerance,
                "matrix {index}: actual={actual:e}, expected={expected:e}, tolerance={tolerance:e}"
            );
        }
        let delta = solve_reduced(matrix, &FIXTURE_PROJECTED_RESIDUAL).expect("nonsingular");
        let fixed_delta = solve_reduced_fixed(
            assemble_reduced_jacobian(&FIXTURE_X),
            &FIXTURE_PROJECTED_RESIDUAL,
        )
        .expect("fixed sparse solve is nonsingular");
        let port_delta =
            solve_reduced_ports_with_math::<SoftwareMath>(&FIXTURE_X, &FIXTURE_PROJECTED_RESIDUAL)
                .expect("port solve is nonsingular");
        let full_delta = recover_full_delta(&FIXTURE_RESIDUAL, &fixed_delta);
        for (index, (actual, expected)) in
            delta.iter().zip(FIXTURE_REDUCED_DELTA.iter()).enumerate()
        {
            let tolerance = (expected.abs() * 3.0e-3).max(2.0e-5);
            assert!(
                (actual - expected).abs() <= tolerance,
                "delta {index}: actual={actual:e}, expected={expected:e}, tolerance={tolerance:e}"
            );
            assert!(
                (fixed_delta[index] - expected).abs() <= tolerance,
                "fixed delta {index}: actual={:e}, expected={expected:e}, tolerance={tolerance:e}",
                fixed_delta[index]
            );
            assert!(
                (port_delta[index] - expected).abs() <= tolerance,
                "port delta {index}: actual={:e}, expected={expected:e}, tolerance={tolerance:e}",
                port_delta[index]
            );
        }
        for (index, (actual, expected)) in
            full_delta.iter().zip(FIXTURE_FULL_DELTA.iter()).enumerate()
        {
            let tolerance = (expected.abs() * 5.0e-3).max(3.0e-5);
            assert!(
                (actual - expected).abs() <= tolerance,
                "full delta {index}: actual={actual:e}, expected={expected:e}, tolerance={tolerance:e}"
            );
        }
    }

    #[test]
    fn fixed_sparse_solve_covers_nonlinear_branches() {
        for case in 0..6 {
            let mut x = FIXTURE_X;
            match case {
                0 => x.fill(0.0),
                1 => {
                    x[27] = -0.5;
                    x[40] = 0.5;
                }
                2 => {
                    x[27] = 0.5;
                    x[40] = -0.5;
                }
                3 => {
                    x[5] = 0.25;
                    x[3] = 0.25;
                    x[14] = -0.25;
                    x[12] = -0.25;
                }
                4 => {
                    x[5] = 10.0;
                    x[3] = -10.0;
                    x[18] = -10.0;
                    x[16] = 10.0;
                }
                _ => {
                    x[32] = x[30];
                    x[54] = 4.0;
                    x[55] = 20.0;
                }
            }
            let matrix = assemble_reduced_jacobian(&x);
            let dense = solve_reduced(matrix, &FIXTURE_PROJECTED_RESIDUAL)
                .expect("dense solve is nonsingular");
            let fixed = solve_reduced_fixed(matrix, &FIXTURE_PROJECTED_RESIDUAL)
                .expect("fixed sparse solve is nonsingular");
            let port =
                solve_reduced_ports_with_math::<SoftwareMath>(&x, &FIXTURE_PROJECTED_RESIDUAL)
                    .unwrap_or_else(|| panic!("case {case}: port solve is nonsingular"));
            for index in 0..RETAINED_COUNT {
                let tolerance = (dense[index].abs() * 2.0e-2).max(3.0e-5);
                assert!(
                    (fixed[index] - dense[index]).abs() <= tolerance,
                    "case {case}, delta {index}: fixed={:e}, dense={:e}, tolerance={tolerance:e}",
                    fixed[index],
                    dense[index]
                );
                assert!(
                    (port[index] - dense[index]).abs() <= tolerance,
                    "case {case}, port delta {index}: port={:e}, dense={:e}, tolerance={tolerance:e}",
                    port[index],
                    dense[index]
                );
            }
        }
    }

    #[test]
    fn physical_block_cascade_matches_reference_branches() {
        let mut worst = 0.0_f32;
        for case in 0..6 {
            let mut x = FIXTURE_X;
            match case {
                0 => x.fill(0.0),
                1 => {
                    x[27] = -0.5;
                    x[40] = 0.5;
                }
                2 => {
                    x[27] = 0.5;
                    x[40] = -0.5;
                }
                3 => {
                    x[5] = 0.25;
                    x[3] = 0.25;
                    x[14] = -0.25;
                    x[12] = -0.25;
                }
                4 => {
                    x[5] = 10.0;
                    x[3] = -10.0;
                    x[18] = -10.0;
                    x[16] = 10.0;
                }
                _ => {
                    x[32] = x[30];
                    x[54] = 4.0;
                    x[55] = 20.0;
                }
            }
            let candidate = newton_iteration_physical_blocks_profiled_with_math::<SoftwareMath, _>(
                &x,
                &FIXTURE_HISTORY,
                0.03125,
                96_000.0,
                1.5,
                |_| {},
            )
            .expect("physical block solve");
            let native = newton_iteration_physical_blocks_profiled_with_math::<FpuRootMath, _>(
                &x,
                &FIXTURE_HISTORY,
                0.03125,
                96_000.0,
                1.5,
                |_| {},
            )
            .expect("native root physical solve");
            let mut maximum = 0.0_f32;
            let mut maximum_index = 0_usize;
            for index in 0..STATE_COUNT {
                let reference_delta = FIXTURE_BRANCH_FULL_DELTAS[case * STATE_COUNT + index];
                assert!(candidate[index].is_finite());
                let candidate_delta = candidate[index] - x[index];
                let tolerance = (reference_delta.abs() * 3.0e-3).max(2.0e-5);
                assert!(native[index].is_finite());
                assert!(
                    ((native[index] - x[index]) - reference_delta).abs() <= tolerance,
                    "native root case {case} state {index}"
                );
                let ratio = (candidate_delta - reference_delta).abs() / tolerance;
                if ratio > maximum {
                    maximum = ratio;
                    maximum_index = index;
                }
            }
            worst = worst.max(maximum);
            std::println!("physical branch {case}: {maximum} at {maximum_index}");
            let mut r = [0.0_f32; STATE_COUNT];
            r.copy_from_slice(
                &generated_model::FIXTURE_BRANCH_RESIDUALS
                    [case * STATE_COUNT..(case + 1) * STATE_COUNT],
            );
            let n = evaluate_nonlinear::<SoftwareMath>(&x);
            let pr = generated_model::project_physical_residual(&r);
            let rd = solve_reduced_physical_blocks_evaluated_profiled(&x, &n, &pr, |_| {}).unwrap();
            let dd = generated_model::recover_physical_delta(&r, &rd);
            let mut same_r_max = 0.0_f32;
            for i in 0..STATE_COUNT {
                let refd = FIXTURE_BRANCH_FULL_DELTAS[case * STATE_COUNT + i];
                same_r_max = same_r_max.max((dd[i] - refd).abs() / (refd.abs() * 0.003).max(2e-5));
            }
            std::println!("same residual: {same_r_max}");
            let rr = assemble_residual_with_math::<SoftwareMath>(
                &x,
                &FIXTURE_HISTORY,
                0.03125,
                96_000.0,
                1.5,
            );
            let mut aa = [[0.0_f64; 56]; 56];
            let mut bb = [0.0_f64; 56];
            for i in 0..56 {
                bb[i] = -rr[i] as f64;
                for j in 0..56 {
                    aa[i][j] = generated_model::FIXTURE_LINEAR_JACOBIAN[i * 56 + j] as f64;
                }
            }
            let (idx, val, cnt) = physical_port_rows(&x, &n);
            let incidence: [&[(usize, f64)]; 14] = [
                &[(19, 1.0), (20, -1.0)],
                &[(26, 1.0)],
                &[(26, -1.0)],
                &[(27, 1.0), (40, -1.0)],
                &[(46, 1.0)],
                &[(50, 1.0)],
                &[(47, 1.0)],
                &[(51, 1.0)],
                &[(48, 1.0)],
                &[(52, 1.0)],
                &[(49, 1.0)],
                &[(53, 1.0)],
                &[(54, 1.0)],
                &[(55, 1.0)],
            ];
            for p in 0..14 {
                for &(row, sign) in incidence[p] {
                    for k in 0..cnt[p] as usize {
                        aa[row][SCHUR_RETAINED[idx[p][k] as usize] as usize] +=
                            sign * val[p][k] as f64;
                    }
                }
            }
            for p in 0..56 {
                let mut best = p;
                for i in p + 1..56 {
                    if aa[i][p].abs() > aa[best][p].abs() {
                        best = i;
                    }
                }
                aa.swap(p, best);
                bb.swap(p, best);
                for i in p + 1..56 {
                    let f = aa[i][p] / aa[p][p];
                    for j in p + 1..56 {
                        aa[i][j] -= f * aa[p][j];
                    }
                    bb[i] -= f * bb[p];
                }
            }
            for i in (0..56).rev() {
                for j in i + 1..56 {
                    bb[i] -= aa[i][j] * bb[j];
                }
                bb[i] /= aa[i][i];
            }
            let mut algebra_error = 0.0_f64;
            for i in 0..56 {
                let got = (candidate[i] - x[i]) as f64;
                algebra_error =
                    algebra_error.max((got - bb[i]).abs() / (bb[i].abs() * 0.003).max(2e-5));
            }
            std::println!("same equations f64: {algebra_error}");
            assert!(algebra_error <= 1.0);
            if case == 4 {
                for i in [21, 39, 49, 53] {
                    std::println!(
                        "state {i}: actual={} expected={} x={}",
                        candidate[i] - x[i],
                        bb[i],
                        x[i]
                    );
                }
            }
            assert!(
                maximum.is_finite() && maximum <= 1.0,
                "case {case}, state {maximum_index}: unbounded candidate error={maximum:e}"
            );
        }
        // Исходный приёмочный допуск, общий для всех вариантов решателя.
        assert!(worst <= 1.0);
    }

    #[test]
    fn incremental_diode_candidate_matches_absolute_newton_fixture() {
        let cache = IncrementalDiodeCache::from_state::<SoftwareMath>(&FIXTURE_X);
        let baseline = newton_iteration_with_math::<SoftwareMath>(
            &FIXTURE_X,
            &FIXTURE_HISTORY,
            0.03125,
            96_000.0,
            1.5,
        )
        .expect("baseline solve");
        let candidate = newton_iteration_incremental_profiled_with_math::<SoftwareMath, _>(
            &FIXTURE_X,
            &cache,
            &FIXTURE_HISTORY,
            0.03125,
            96_000.0,
            1.5,
            |_| {},
        )
        .expect("incremental solve");
        for index in 0..STATE_COUNT {
            let tolerance = (baseline[index].abs() * 2.0e-5).max(2.0e-6);
            assert!(
                (candidate.corrected[index] - baseline[index]).abs() <= tolerance,
                "state {index}: incremental={:e}, baseline={:e}, tolerance={tolerance:e}",
                candidate.corrected[index],
                baseline[index]
            );
        }
        // Построение и отклонение пробы не меняет основной кэш.
        assert_eq!(cache.metrics(), IncrementalDiodeMetrics::default());
        assert_eq!(candidate.diode_cache.metrics().accepted_updates, 1);
    }

    #[test]
    fn incremental_diode_refresh_policy_and_fallback_are_counted() {
        let mut x = FIXTURE_X;
        let mut cache = IncrementalDiodeCache::from_state::<SoftwareMath>(&x);
        let mut delta = [0.0_f32; STATE_COUNT];
        delta[19] = 0.3 * DIODE_SCALE;
        x[19] += delta[19];
        cache = cache.trial_after_delta::<SoftwareMath>(&x, &delta);
        assert_eq!(cache.metrics().large_step_count, 1);

        delta.fill(0.0);
        for _ in 0..7 {
            cache = cache.trial_after_delta::<SoftwareMath>(&x, &delta);
        }
        assert_eq!(cache.metrics().periodic_refresh_count, 1);

        delta[26] = 1.2 * DIODE_SCALE;
        x[26] += delta[26];
        cache = cache.trial_after_delta::<SoftwareMath>(&x, &delta);
        assert_eq!(cache.metrics().fallback_count, 1);
    }
}
