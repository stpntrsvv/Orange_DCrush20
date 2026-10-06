//! R5: сокращения повторной работы поверх P7. Исходный packed.rs сохранён.
//! Законы, точность P7 и допуски сохранены; производные используют общие величины.
//! Рабочий DspState не заменяется.
use super::generated_condensed as g;
use super::{NonlinearMath, StepResult, opamp_swing_derivative, pow16};

pub const SAMPLE_RATE: f32 = g::FS;
pub const TRAPEZOIDAL: bool = g::TRAP;

const BLOCKS: [&[usize]; 5] = [&[0], &[1], &[2, 3], &[4, 5, 6], &[7]];
const AMP: [usize; 5] = [1, 2, 4, 5, 7];
const TOL: f32 = 1e-4;
const SCALE: [f32; 8] = [0.01, 15.0, 15.0, 0.01, 15.0, 15.0, 0.01, 24.0];

/// По каждому блоку: уравнения, строки производных, поправки, отклонённые пробы,
/// прямые попытки/приёмки, повторы, корни 1/16 (аргумент != 1), exp, sqrt64, solve.
#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct Counters {
    pub blocks: [[u32; 11]; 5],
}
#[inline(always)]
fn count<const C: bool>(c: &mut [u32; 11], i: usize, n: u32) {
    if C {
        c[i] += n;
    }
}

pub use super::packed::{ExtraMath, PackageMath};
#[derive(Clone, Copy, Default)]
struct Pole {
    history: f32,
    free_history: f32,
    lower: f32,
    upper: f32,
}
#[inline(always)]
fn prepare_poles(h: &[f32; 28]) -> [Pole; 5] {
    core::array::from_fn(|slot| {
        let history = g::FS * h[23 + slot];
        let slew = if slot < 4 { 16e6 } else { 8e6 };
        Pole {
            history,
            free_history: history * (1.0 / (g::ORDER as f64 * g::FS as f64 + g::POLE[slot])) as f32,
            lower: (history - slew) / (g::ORDER * g::FS),
            upper: (history + slew) / (g::ORDER * g::FS),
        }
    })
}
// Только уже решённые блоки. Сохраняется порядок сложения P7 в f64.
#[inline(always)]
fn prepare_block<const B: usize>(o: &mut [f64; 15], r: &[f32; 8]) {
    match B {
        1 => o[8] += g::DERIV[8][0] * r[0] as f64,
        2 => o[9] += g::DERIV[9][1] * r[1] as f64,
        3 => {
            o[10] += g::DERIV[10][2] * r[2] as f64;
            o[10] += g::DERIV[10][3] * r[3] as f64;
        }
        4 => {
            o[12] += g::DERIV[12][5] * r[5] as f64;
            o[12] += g::DERIV[12][6] * r[6] as f64;
        }
        _ => {}
    }
}
#[inline(always)]
fn observe<const F: u8>(i: usize, o: &[f64; 15], r: &[f32; 8]) -> f32 {
    if F != 0 {
        super::generated_repeated::observe(i, o, r)
    } else {
        g::observe(i, o, r)
    }
}

#[inline(always)]
fn voltage_small(delta: f32, value: f32) -> bool {
    delta.abs() <= (2e-6 * value.abs().max(1.0)).min(2e-5)
}

// Кандидат линейного участка; окончательное принятие только по полному закону.
#[inline(always)]
fn amp_candidate<const P: usize>(r: &mut [f32; 8], o: &[f64; 15], poles: &[Pole; 5]) {
    let slot = AMP.iter().position(|&p| p == P).unwrap();
    let denom = g::ORDER as f64 * g::FS as f64 + g::POLE[slot];
    let k = g::GAIN[slot] / denom;
    let mut diff = o[8 + slot];
    for j in 0..8 {
        if j != P
            && j >= (if P == 1 {
                1
            } else if P == 7 {
                7
            } else {
                4
            })
        {
            diff += g::DERIV[8 + slot][j] * r[j] as f64;
        }
    }
    let value = (poles[slot].history as f64 * (1.0 / denom) + k * diff)
        * (1.0 / (1.0 - k * g::DERIV[8 + slot][P]));
    let limit = if P == 7 { 21.0 } else { 13.5 };
    r[P] = (value as f32).clamp(-limit, limit);
}

#[inline(always)]
fn sqrt64(mut x: f64) -> f64 {
    #[cfg(target_arch = "arm")]
    unsafe {
        core::arch::asm!("vsqrt.f64 {v}, {v}",v=inout(dreg_low16) x,options(nomem,nostack,preserves_flags));
    }
    #[cfg(target_arch = "aarch64")]
    unsafe {
        core::arch::asm!("fsqrt {v:d}, {v:d}",v=inout(vreg) x,options(nomem,nostack,preserves_flags));
    }
    x
}

// Решает только Q1 при заданном выходе IC4B. Полная проверка блока следует далее.
fn q_candidate<const F: u8, const C: bool>(
    r: &mut [f32; 8],
    o: &[f64; 15],
    stats: &mut [u32; 11],
) -> bool {
    let old = r[6];
    let current = o[6] + g::DERIV[6][5] * r[5] as f64;
    let d = g::DERIV[6][6];
    for conductance in [0.00455_f64, 1e-7] {
        r[6] = (current * (1.0 / (conductance - d))) as f32;
        let vgs = 0.5 - observe::<F>(13, o, r).min(observe::<F>(14, o, r));
        let raw = 0.00455 * (1.0 + vgs.min(0.0) / 2.0);
        if (conductance == 0.00455 && vgs >= 0.0) || (conductance == 1e-7 && raw <= 1e-7) {
            return true;
        }
    }
    for src in [13, 14] {
        let v0 = o[src] + g::DERIV[src][5] * r[5] as f64;
        let a = -0.002275 * g::DERIV[src][6];
        let b = 0.00455 * (1.0 + (0.5 - v0) / 2.0) - d;
        let c = -current;
        let discriminant = b * b - 4.0 * a * c;
        if discriminant < 0.0 || a == 0.0 {
            continue;
        }
        count::<C>(stats, 9, 1);
        let q = -0.5 * (b + sqrt64(discriminant).copysign(b));
        for candidate in [q * (1.0 / a), c / q] {
            if !candidate.is_finite() {
                continue;
            }
            r[6] = candidate as f32;
            let va = observe::<F>(13, o, r);
            let vb = observe::<F>(14, o, r);
            let vgs = 0.5 - va.min(vb);
            if (if src == 13 { va <= vb } else { vb <= va })
                && vgs < 0.0
                && vgs > -2.0
                && 0.00455 * (1.0 + vgs / 2.0) > 1e-7
            {
                return true;
            }
        }
    }
    r[6] = old;
    false
}

fn direct_block<M: PackageMath, const B: usize, const F: u8, const C: bool>(
    r: &mut [f32; 8],
    o: &[f64; 15],
    poles: &[Pole; 5],
    s: &mut [f32; 5],
    stats: &mut [u32; 11],
) -> Option<f32> {
    let old = core::array::from_fn::<_, 3, _>(|i| {
        if i < BLOCKS[B].len() {
            r[BLOCKS[B][i]]
        } else {
            0.0
        }
    });
    match B {
        0 => {
            r[0] = (-o[0] * (1.0 / g::DERIV[0][0])) as f32;
            if r[0].abs() <= 11.381 {
                count::<C>(stats, 0, 1);
                let residual = observe::<F>(0, o, r);
                if residual.is_finite()
                    && residual.abs() / SCALE[0] <= TOL
                    && voltage_small(residual / g::DERIV[0][0] as f32, r[0])
                {
                    return Some(residual.abs() / SCALE[0]);
                }
            }
        }
        1 => {
            amp_candidate::<1>(r, o, poles);
            let row = equation::<M, 1, F, C, 6>(r, o, poles, stats);
            if row.f.is_finite() && row.f.abs() / SCALE[1] <= TOL {
                let j = derivative::<1, 1, 1, C, 6>(&row, r, poles, stats);
                if voltage_small(row.f / j[0], r[1]) {
                    s[0] = row.state;
                    return Some(row.f.abs() / SCALE[1]);
                }
            }
        }
        3 => {
            amp_candidate::<4>(r, o, poles);
            amp_candidate::<5>(r, o, poles);
            if q_candidate::<F, C>(r, o, stats) {
                let e = evaluate_block::<M, 3, F, 3, C, 6>(r, o, poles, stats);
                if e.error > TOL {
                    for (i, &p) in BLOCKS[B].iter().enumerate() {
                        r[p] = old[i];
                    }
                    return None;
                }
                count::<C>(stats, 10, 1);
                let mut j = jacobian::<3, 3, C, 6>(&e, r, poles, stats);
                let mut correction = core::array::from_fn::<_, 3, _>(|i| -e.rows[i].f);
                if e.error <= TOL
                    && solve::<3>(&mut j, &mut correction)
                    && (0..3).all(|i| voltage_small(correction[i], r[4 + i]))
                {
                    s[2] = e.rows[0].state;
                    s[3] = e.rows[1].state;
                    return Some(e.error);
                }
            }
        }
        4 => {
            amp_candidate::<7>(r, o, poles);
            let row = equation::<M, 7, F, C, 11>(r, o, poles, stats);
            if row.f.is_finite() && row.f.abs() / SCALE[7] <= TOL {
                let j = derivative::<7, 4, 1, C, 11>(&row, r, poles, stats);
                if voltage_small(row.f / j[0], r[7]) {
                    s[4] = row.state;
                    return Some(row.f.abs() / SCALE[7]);
                }
            }
        }
        _ => {}
    }
    for (i, &p) in BLOCKS[B].iter().enumerate() {
        r[p] = old[i];
    }
    None
}

// Значение закона и общие величины для последующей производной.
// Корни/exp здесь вычисляются единожды, независимо от принятия пробы.
#[inline(always)]
fn rail_value<M: NonlinearMath>(s: f32, sw: f32) -> (f32, f32, f32, f32) {
    if sw <= 0.0 {
        return (0.0, 0.0, 0.0, 0.0);
    }
    let deep = s.abs() > sw;
    let ratio = if deep { sw / s.abs() } else { s / sw };
    let p = pow16(ratio.abs());
    let f = 1.0 / M::sixteenth_root(1.0 + p);
    (if deep { s.signum() * sw * f } else { s * f }, p, f, ratio)
}
#[inline(always)]
fn rail_slope(s: f32, sw: f32, p: f32, f: f32, ratio: f32) -> (f32, f32) {
    if sw <= 0.0 {
        return (0.0, 0.0);
    }
    let common = f / (1.0 + p);
    if s.abs() > sw {
        (p * ratio * common, s.signum() * common)
    } else {
        (common, s * p / sw * common)
    }
}

#[derive(Clone)]
pub struct ScalarState {
    pub current: [f32; 28],
    pub previous: [f32; 28],
    pub ports: [f32; 8],
    pub steps: u32,
    pub retries: u32,
    /// Приняты: вход, IC3A, CDQ; отклонены прямые; принят Q1; принят TDA.
    pub direct: [u32; 6],
}
impl Default for ScalarState {
    fn default() -> Self {
        Self {
            current: [0.0; 28],
            previous: [0.0; 28],
            ports: [0.0; 8],
            steps: 0,
            retries: 0,
            direct: [0; 6],
        }
    }
}

#[derive(Clone, Copy)]
struct Row<const K: usize> {
    f: f32,
    state: f32,
    // AMP: free,current,swing,pRail,fRail,railRatio; TDA additionally
    // vRail,rawLimit,pLimit,fLimit,signed current ratio (negative means deep).
    // Diodes: exp+ / exp-. Q1: va / vb / conductance.
    cache: [f32; K],
}
#[inline(always)]
fn equation<M: PackageMath, const P: usize, const F: u8, const C: bool, const K: usize>(
    r: &[f32; 8],
    o: &[f64; 15],
    poles: &[Pole; 5],
    stats: &mut [u32; 11],
) -> Row<K> {
    count::<C>(stats, 0, 1);
    let current = observe::<F>(P, o, r);
    let mut c = [0.0; K];
    if let Some(slot) = AMP.iter().position(|&p| p == P) {
        let diff = observe::<F>(8 + slot, o, r);
        let gain = (g::GAIN[slot] / (g::ORDER as f64 * g::FS as f64 + g::POLE[slot])) as f32;
        let free = poles[slot].free_history + gain * diff;
        let state = free.clamp(poles[slot].lower, poles[slot].upper);
        let swing = if slot < 4 {
            opamp_swing_derivative(current).0
        } else {
            21.0
        };
        let (v, p, f, ratio) = rail_value::<M>(state, swing);
        count::<C>(stats, 7, (swing > 0.0 && 1.0 + p != 1.0) as u32);
        c[0] = free;
        c[1] = current;
        c[2] = swing;
        c[3] = p;
        c[4] = f;
        c[5] = ratio;
        if slot < 4 {
            return Row {
                f: r[P] - v,
                state,
                cache: c,
            };
        }
        c[6] = v;
        let vce = (24.0 - v.abs()).max(8.0);
        let raw_limit = 60.0 / vce;
        let limit = raw_limit.min(5.0);
        let ratio = current.abs() / limit;
        let deep = ratio > 1.0;
        let q = if deep { limit / current.abs() } else { ratio };
        let p = pow16(q);
        let f = 1.0 / M::sixteenth_root(1.0 + p);
        count::<C>(stats, 7, (1.0 + p != 1.0) as u32);
        c[7] = raw_limit;
        c[8] = p;
        c[9] = f;
        c[10] = if deep { -q } else { q };
        let factor = if deep { q * f } else { f };
        return Row {
            f: r[P] - v * factor,
            state,
            cache: c,
        };
    }
    if P == 0 || P == 3 {
        let scale = 1.75 * 0.02585;
        let (a, b) = if P == 0 {
            ((r[0] - 15.0) / scale, (-r[0] - 15.0) / scale)
        } else {
            (r[3] / scale, -r[3] / scale)
        };
        count::<C>(stats, 8, if P == 3 && a.abs() >= 0.5 { 1 } else { 2 });
        let (ep, en) = if P == 3 && a.abs() >= 0.5 {
            let positive = M::exp(a.abs().min(80.0));
            let negative = 1.0 / positive;
            if a >= 0.0 {
                (positive, negative)
            } else {
                (negative, positive)
            }
        } else {
            (M::exp(a.clamp(-80.0, 80.0)), M::exp(b.clamp(-80.0, 80.0)))
        };
        c[0] = ep;
        c[1] = en;
        return Row {
            f: 2.5e-9 * (ep - en) - current,
            state: 0.0,
            cache: c,
        };
    }
    let va = observe::<F>(13, o, r);
    let vb = observe::<F>(14, o, r);
    let vgs = 0.5 - va.min(vb);
    let conductance = if vgs <= -2.0 {
        1e-7
    } else {
        (0.00455 * (1.0 + vgs.min(0.0) / 2.0)).max(1e-7)
    };
    c[0] = va;
    c[1] = vb;
    c[2] = conductance;
    Row {
        f: conductance * r[6] - current,
        state: 0.0,
        cache: c,
    }
}
#[inline(always)]
fn derivative<const P: usize, const B: usize, const N: usize, const C: bool, const K: usize>(
    row: &Row<K>,
    r: &[f32; 8],
    poles: &[Pole; 5],
    stats: &mut [u32; 11],
) -> [f32; N] {
    count::<C>(stats, 1, 1);
    let c = &row.cache;
    let mut j = [0.0; N];
    if let Some(slot) = AMP.iter().position(|&p| p == P) {
        let ds = if c[0] > poles[slot].lower && c[0] < poles[slot].upper {
            (g::GAIN[slot] / (g::ORDER as f64 * g::FS as f64 + g::POLE[slot])) as f32
        } else {
            0.0
        };
        let (rs, rw) = rail_slope(row.state, c[2], c[3], c[4], c[5]);
        let (vs, vi) = if slot < 4 {
            (rs, rw * opamp_swing_derivative(c[1]).1)
        } else {
            let current = c[1];
            let v = c[6];
            let limit = c[7].min(5.0);
            let p = c[8];
            let f = c[9];
            let common = f / (1.0 + p);
            let (factor, di, dl) = if c[10] >= 0.0 {
                (
                    f,
                    if current == 0.0 {
                        0.0
                    } else {
                        -p / current * common
                    },
                    p / limit * common,
                )
            } else {
                let q = -c[10];
                (q * f, -q / current * common, q / limit * common)
            };
            let vce = (24.0 - v.abs()).max(8.0);
            let limit_v = if c[7] < 5.0 && 24.0 - v.abs() > 8.0 && v != 0.0 {
                60.0 * v.signum() / (vce * vce)
            } else {
                0.0
            };
            ((factor + v * dl * limit_v) * rs, v * di)
        };
        for k in 0..N {
            let p = BLOCKS[B][k];
            j[k] = -(vs * ds) * g::DERIV[8 + slot][p] as f32 - vi * g::DERIV[P][p] as f32;
            if p == P {
                j[k] += 1.0;
            }
        }
    } else {
        for k in 0..N {
            j[k] = -g::DERIV[P][BLOCKS[B][k]] as f32;
        }
        if P == 0 || P == 3 {
            for k in 0..N {
                if BLOCKS[B][k] == P {
                    j[k] += 2.5e-9 * (c[0] + c[1]) / (1.75 * 0.02585);
                }
            }
        } else {
            let src = if c[0] <= c[1] { 13 } else { 14 };
            let vgs = 0.5 - c[0].min(c[1]);
            let dg = if vgs > -2.0 && vgs < 0.0 && 0.00455 * (1.0 + vgs / 2.0) > 1e-7 {
                0.002275
            } else {
                0.0
            };
            for k in 0..N {
                let p = BLOCKS[B][k];
                j[k] -= r[6] * dg * g::DERIV[src][p] as f32;
                if p == 6 {
                    j[k] += c[2];
                }
            }
        }
    }
    j
}

#[inline(always)]
fn solve<const N: usize>(a: &mut [[f32; N]; N], b: &mut [f32; N]) -> bool {
    for p in 0..N {
        let mut best = p;
        for i in p + 1..N {
            if a[i][p].abs() > a[best][p].abs() {
                best = i;
            }
        }
        a.swap(p, best);
        b.swap(p, best);
        if !a[p][p].is_finite() || a[p][p].abs() < 1e-20 {
            return false;
        }
        for i in p + 1..N {
            let f = a[i][p] / a[p][p];
            for j in p + 1..N {
                a[i][j] -= f * a[p][j];
            }
            b[i] -= f * b[p];
        }
    }
    for i in (0..N).rev() {
        for j in i + 1..N {
            b[i] -= a[i][j] * b[j];
        }
        b[i] /= a[i][i];
    }
    true
}

#[derive(Clone, Copy)]
struct Evaluation<const N: usize, const K: usize> {
    rows: [Row<K>; N],
    error: f32,
}
#[inline(always)]
fn evaluate_block<
    M: PackageMath,
    const B: usize,
    const F: u8,
    const N: usize,
    const C: bool,
    const K: usize,
>(
    r: &[f32; 8],
    o: &[f64; 15],
    poles: &[Pole; 5],
    stats: &mut [u32; 11],
) -> Evaluation<N, K> {
    let mut e = Evaluation {
        rows: [Row {
            f: 0.0,
            state: 0.0,
            cache: [0.0; K],
        }; N],
        error: 0.0,
    };
    macro_rules! row {
        ($i:literal,$p:literal) => {{
            let row = equation::<M, $p, F, C, K>(r, o, poles, stats);
            e.error = if row.f.is_finite() {
                e.error.max((row.f / SCALE[$p]).abs())
            } else {
                f32::INFINITY
            };
            e.rows[$i] = row;
        }};
    }
    match B {
        0 => {
            row!(0, 0);
        }
        1 => {
            row!(0, 1);
        }
        2 => {
            row!(0, 2);
            row!(1, 3);
        }
        3 => {
            row!(0, 4);
            row!(1, 5);
            row!(2, 6);
        }
        4 => {
            row!(0, 7);
        }
        _ => unreachable!(),
    }
    e
}
#[inline(always)]
fn jacobian<const B: usize, const N: usize, const C: bool, const K: usize>(
    e: &Evaluation<N, K>,
    r: &[f32; 8],
    poles: &[Pole; 5],
    stats: &mut [u32; 11],
) -> [[f32; N]; N] {
    let mut j = [[0.0; N]; N];
    macro_rules! row {
        ($i:literal,$p:literal) => {
            j[$i] = derivative::<$p, B, N, C, K>(&e.rows[$i], r, poles, stats);
        };
    }
    match B {
        0 => {
            row!(0, 0);
        }
        1 => {
            row!(0, 1);
        }
        2 => {
            row!(0, 2);
            row!(1, 3);
        }
        3 => {
            row!(0, 4);
            row!(1, 5);
            row!(2, 6);
        }
        4 => {
            row!(0, 7);
        }
        _ => unreachable!(),
    }
    j
}
#[inline(never)]
fn solve_block<
    M: PackageMath,
    const B: usize,
    const F: u8,
    const N: usize,
    const C: bool,
    const K: usize,
>(
    r: &mut [f32; 8],
    o: &[f64; 15],
    poles: &[Pole; 5],
    s: &mut [f32; 5],
    stats: &mut [u32; 11],
) -> (f32, u8, bool) {
    let block = BLOCKS[B];
    let mut e = evaluate_block::<M, B, F, N, C, K>(r, o, poles, stats);
    let mut total = 0;
    for iter in 0..=16 {
        let mut f = core::array::from_fn::<_, N, _>(|i| -e.rows[i].f);
        let mut j = jacobian::<B, N, C, K>(&e, r, poles, stats);
        count::<C>(stats, 10, 1);
        if !solve::<N>(&mut j, &mut f) {
            return (e.error, total, false);
        }
        let small = block
            .iter()
            .enumerate()
            .all(|(i, &p)| f[i].abs() <= (2e-6 * r[p].abs().max(1.0)).min(2e-5));
        let mut done = e.error <= TOL && small;
        if !done && iter < 16 {
            let mut accepted = false;
            let old: [f32; N] = core::array::from_fn(|i| r[block[i]]);
            // Ограничиваем только рост |v_D|, то есть рост экспоненты.
            // Переход через ноль и разгрузку диодов не дробим принудительно.
            let initial_factor = if B == 2 {
                let bound = r[3].abs() + 0.1;
                let trial = r[3] + f[1];
                if trial.abs() > bound { ((trial.clamp(-bound, bound) - r[3]) / f[1]).min(1.0) } else { 1.0 }
            } else { 1.0 };
            for back in 0..12 {
                let factor = f32::from_bits((127 - back) << 23) * initial_factor;
                for (i, &p) in block.iter().enumerate() {
                    r[p] = old[i] + factor * f[i];
                }
                let t = evaluate_block::<M, B, F, N, C, K>(r, o, poles, stats);
                if t.error < e.error {
                    e = t;
                    accepted = true;
                    break;
                }
                count::<C>(stats, 3, 1);
            }
            count::<C>(stats, 2, 1);
            total += 1;
            if accepted {
                continue;
            }
            for (i, &p) in block.iter().enumerate() {
                r[p] = old[i];
            }
            done = e.error <= TOL && block.iter().enumerate().all(|(i, _)| f[i].abs() <= 2e-5);
        }
        for (i, &p) in block.iter().enumerate() {
            if let Some(slot) = AMP.iter().position(|&v| v == p) {
                s[slot] = e.rows[i].state;
            }
        }
        return (e.error, total, done);
    }
    unreachable!()
}

impl ScalarState {
    pub fn history(&self) -> [f32; 28] {
        let mut h = [0.0; 28];
        for i in 0..28 {
            h[i] = if g::TRAP {
                self.previous[i]
            } else if g::ORDER == 1.0 {
                self.current[i]
            } else {
                2.0 * self.current[i] - 0.5 * self.previous[i]
            };
        }
        h
    }
    /// При неуспехе состояние не продвигается, ошибка явно возвращается.
    /// Это диагностическое поведение; гарантированный realtime ещё не доказан.
    pub fn step<M: PackageMath, const F: u8>(&mut self, input: f32) -> StepResult {
        self.step_inner::<M, F, false>(input, &mut Counters::default())
    }
    pub fn step_profiled<M: PackageMath, const F: u8>(
        &mut self,
        input: f32,
        counts: &mut Counters,
    ) -> StepResult {
        self.step_inner::<M, F, true>(input, counts)
    }
    #[inline(always)]
    fn step_inner<M: PackageMath, const F: u8, const C: bool>(
        &mut self,
        input: f32,
        counts: &mut Counters,
    ) -> StepResult {
        assert!(
            F == 5 && M::EXTRA == 2,
            "Repeated work uses P7 precision and math"
        );
        let h = self.history();
        let mut o = if F != 0 {
            super::generated_packed::origin::<F>(&h, input)
        } else {
            g::origin(&h, input)
        };
        let poles = prepare_poles(&h);
        let mut r = self.ports;
        let mut s = [0.0; 5];
        let mut total = 0;
        let mut worst = 0.0_f32;
        macro_rules! block {
            ($id:literal,$n:literal,$cache:literal) => {{
                prepare_block::<$id>(&mut o, &r);
                if $id != 2 {
                    count::<C>(&mut counts.blocks[$id], 4, 1);
                }
                let direct = if $id == 0 || $id == 1 || $id == 3 || ($id == 4 && M::EXTRA >= 1) {
                    direct_block::<M, $id, F, C>(
                        &mut r,
                        &o,
                        &poles,
                        &mut s,
                        &mut counts.blocks[$id],
                    )
                } else {
                    None
                };
                if let Some(error) = direct {
                    count::<C>(&mut counts.blocks[$id], 5, 1);
                    self.direct[if $id == 0 {
                        0
                    } else if $id == 1 {
                        1
                    } else if $id == 3 {
                        2
                    } else {
                        5
                    }] += 1;
                    if $id == 3 {
                        self.direct[4] += 1;
                    }
                    worst = worst.max(error);
                } else {
                    if $id == 0 || $id == 1 || $id == 3 || ($id == 4 && M::EXTRA >= 1) {
                        self.direct[3] += 1;
                    }
                    let (mut error, iterations, mut ok) = solve_block::<M, $id, F, $n, C, $cache>(
                        &mut r,
                        &o,
                        &poles,
                        &mut s,
                        &mut counts.blocks[$id],
                    );
                    total += iterations;
                    if !ok {
                        count::<C>(&mut counts.blocks[$id], 6, 1);
                        for &p in BLOCKS[$id] {
                            r[p] = 0.0;
                        }
                        let retry = solve_block::<M, $id, F, $n, C, $cache>(
                            &mut r,
                            &o,
                            &poles,
                            &mut s,
                            &mut counts.blocks[$id],
                        );
                        self.retries = self.retries.saturating_add(1);
                        error = retry.0;
                        total += retry.1;
                        ok = retry.2;
                    }
                    worst = worst.max(error);
                    if !ok {
                        return StepResult {
                            output_v: self.ports[7],
                            residual_norm: error,
                            iterations: total,
                            converged: false,
                        };
                    }
                }
            }};
        }
        block!(0, 1, 2);
        block!(1, 1, 6);
        block!(2, 2, 6);
        block!(3, 3, 6);
        block!(4, 1, 11);
        let mut next = [0.0; 28];
        super::generated_repeated::update_into(&h, input, &r, &mut next);
        next[23..].copy_from_slice(&s);
        if !next.iter().all(|x| x.is_finite()) {
            return StepResult {
                output_v: self.ports[7],
                residual_norm: f32::INFINITY,
                iterations: total,
                converged: false,
            };
        }
        if g::TRAP {
            for i in 0..28 {
                self.previous[i] = 4.0 * next[i] - h[i];
            }
        } else {
            self.previous = self.current;
        }
        self.current = next;
        self.ports = r;
        self.steps = self.steps.saturating_add(1);
        StepResult {
            output_v: r[7],
            residual_norm: worst,
            iterations: total,
            converged: true,
        }
    }
}

#[cfg(test)]
mod diagnostic_laws {
    use super::*;
    // Та же функция, но без переполнения (s/swing)^16 при глубоком насыщении.
    #[inline(always)]
    pub(super) fn rail<M: NonlinearMath, const J: bool>(s: f32, swing: f32) -> (f32, f32, f32) {
        if swing <= 0.0 {
            return (0.0, 0.0, 0.0);
        }
        if s.abs() <= swing {
            let ratio = s / swing;
            let p = pow16(ratio.abs());
            let factor = 1.0 / M::sixteenth_root(1.0 + p);
            if !J {
                return (s * factor, 0.0, 0.0);
            }
            let common = factor / (1.0 + p);
            return (s * factor, common, s * p / swing * common);
        }
        let ratio = swing / s.abs();
        let p = pow16(ratio);
        let factor = 1.0 / M::sixteenth_root(1.0 + p);
        if !J {
            return (s.signum() * swing * factor, 0.0, 0.0);
        }
        let common = factor / (1.0 + p);
        (
            s.signum() * swing * factor,
            p * ratio * common,
            s.signum() * common,
        )
    }

    #[inline(always)]
    pub(super) fn power<M: NonlinearMath, const J: bool>(s: f32, current: f32) -> (f32, f32, f32) {
        let (v, ds, _) = rail::<M, J>(s, 21.0);
        let vce = (24.0 - v.abs()).max(8.0);
        let raw_limit = 60.0 / vce;
        let limit = raw_limit.min(5.0);
        // Ограничение тока также выражено через устойчивую насыщаемую функцию.
        let ratio = current.abs() / limit;
        let (factor, di, dl) = if ratio <= 1.0 {
            let p = pow16(ratio);
            let f = 1.0 / M::sixteenth_root(1.0 + p);
            if !J {
                return (v * f, 0.0, 0.0);
            }
            let c = f / (1.0 + p);
            (
                f,
                if current == 0.0 {
                    0.0
                } else {
                    -p / current * c
                },
                p / limit * c,
            )
        } else {
            let q = limit / current.abs();
            let p = pow16(q);
            let f = 1.0 / M::sixteenth_root(1.0 + p);
            if !J {
                return (v * (q * f), 0.0, 0.0);
            }
            let c = f / (1.0 + p);
            (q * f, -q / current * c, q / limit * c)
        };
        let limit_v = if raw_limit < 5.0 && 24.0 - v.abs() > 8.0 && v != 0.0 {
            60.0 * v.signum() / (vce * vce)
        } else {
            0.0
        };
        (v * factor, (factor + v * dl * limit_v) * ds, v * di)
    }
}
#[cfg(test)]
mod tests {
    extern crate std;
    use super::diagnostic_laws::{power, rail};
    use super::*;
    use crate::FpuRootMath;
    fn compare_reference<M: PackageMath, const F: u8>(extended: bool) {
        if g::FS != 96000.0 || g::ORDER != 1.5 {
            return;
        }
        for mv in [100, 1000, 250, 2001, 2002, 2003, 3001, 3002, 3003] {
            if mv >= 2001 && !extended {
                continue;
            }
            let file = std::format!(
                "{}/../../simulation/experiments/absolute_ports/reference_{}mv.txt",
                env!("CARGO_MANIFEST_DIR"),
                mv
            );
            let file = if mv == 250 {
                std::format!(
                    "{}/../../simulation/experiments/architecture_decision/reference_noise.txt",
                    env!("CARGO_MANIFEST_DIR")
                )
            } else {
                file
            };
            let file = if (2001..=2003).contains(&mv) {
                let name = ["step025", "step1", "multitone"][(mv - 2001) as usize];
                std::format!(
                    "{}/../../simulation/experiments/batched_optimization/reference_{name}.txt",
                    env!("CARGO_MANIFEST_DIR")
                )
            } else {
                file
            };
            let file = if mv >= 3001 {
                std::format!(
                    "{}/../../simulation/experiments/repeated_work/reference_output{}.txt",
                    env!("CARGO_MANIFEST_DIR"),
                    mv - 3001
                )
            } else {
                file
            };
            let data = std::fs::read_to_string(file).unwrap();
            let mut state = ScalarState::default();
            let (mut energy, mut err, mut peak, mut scaled, mut fullres) =
                (0.0_f64, 0.0_f64, 0.0_f64, 0.0_f64, 0.0_f32);
            let (mut fail, mut maxiter) = (0, 0);
            let mut worst_state = (0, 0);
            let mut oldx = [0.0; 56];
            let mut prevx = [0.0; 56];
            for line in data.lines() {
                let v: std::vec::Vec<f64> = line
                    .split_whitespace()
                    .map(|s| s.parse().unwrap())
                    .collect();
                let h = state.history();
                let a = state.step::<M, F>(v[0] as f32);
                if !a.converged && fail == 0 {
                    std::println!(
                        "first failure sample={} norm={} ports={:?} memory={:?}",
                        state.steps,
                        a.residual_norm,
                        state.ports,
                        state.current
                    );
                }
                fail += (!a.converged) as usize;
                maxiter = maxiter.max(a.iterations);
                let mut ss = [0.0; 5];
                ss.copy_from_slice(&state.current[23..]);
                let x = g::recover(&h, v[0] as f32, &state.ports, &ss);
                let mut hx = [0.0; 56];
                for i in 0..56 {
                    hx[i] = 2.0 * oldx[i] - 0.5 * prevx[i];
                }
                // Полная исходная MNA-сборка со стабильной формой того же закона.
                // Включая насыщение: не пропускаем NaN/Inf и динамические строки.
                let rr = crate::assemble_residual_evaluated(&x, &hx, v[0] as f32, 96000.0, 1.5, &{
                    let mut n = crate::evaluate_nonlinear::<FpuRootMath>(&x);
                    for slot in 0..4 {
                        let (sw, di) = opamp_swing_derivative(x[46 + slot]);
                        let (v, ds, dw) = rail::<FpuRootMath, true>(x[50 + slot], sw);
                        n.op_laws[slot] = (v, ds, dw * di);
                    }
                    n.power_law = power::<FpuRootMath, true>(x[55], x[54]);
                    n
                });
                assert!(rr.iter().all(|v| v.is_finite()));
                fullres = fullres.max(crate::physical_residual_norm(&rr));
                for i in 0..56 {
                    let error = (x[i] as f64 - v[i + 1]).abs()
                        / crate::generated_model::STATE_SCALE[i] as f64;
                    if error > scaled {
                        scaled = error;
                        worst_state = (i, state.steps);
                    }
                }
                prevx = oldx;
                oldx = x;
                let e = a.output_v as f64 - v[32];
                energy += v[32] * v[32];
                err += e * e;
                peak = peak.max(e.abs());
            }
            std::println!(
                "packed F={F} M={} case={mv} rms={} peak={peak} scaled={scaled} fullres={fullres} failures={fail} maxiter={maxiter}",
                core::any::type_name::<M>(),
                (err / energy).sqrt()
            );
            std::println!(
                "direct={:?} retries={} worst_state={:?}",
                state.direct,
                state.retries,
                (
                    crate::generated_model::STATE_NAMES[worst_state.0],
                    worst_state.1
                )
            );
            assert_eq!(fail, 0);
            assert!((err / energy).sqrt() < 1e-4);
            assert!(fullres < 1e-4, "full residual {fullres}");
            assert!(peak < 0.01);
            assert!(scaled < 0.003);
        }
    }

    #[test]
    fn repeated_extended_reference() {
        compare_reference::<ExtraMath<FpuRootMath, 2>, 5>(true);
    }
}

#[cfg(test)]
#[path = "scalar_diagnostics.rs"]
mod audit;
