//! Пакетные сокращения; исходный CondensedState сохранён для парного контроля.
//! Схемные законы сохранены; полином корня и смена точности — отдельные опыты.
//! Рабочий DspState не заменяется.
use super::generated_condensed as g;
use super::{NonlinearMath, StepResult, opamp_swing_derivative, pow16};

pub const SAMPLE_RATE: f32 = g::FS;
pub const TRAPEZOIDAL: bool = g::TRAP;

const BLOCKS: [&[usize]; 5] = [&[0], &[1], &[2, 3], &[4, 5, 6], &[7]];
const AMP: [usize; 5] = [1, 2, 4, 5, 7];
const SCALE: [f32; 8] = [0.01, 15.0, 15.0, 0.01, 15.0, 15.0, 0.01, 24.0];
const TOL: f32 = 1e-4;

pub use super::packed::{PackageMath, ExtraMath};
#[inline(always)]
fn observe<const F: u8>(i: usize, o: &[f64; 15], r: &[f32; 8]) -> f32 {
    super::generated_packed::observe::<F>(i, o, r)
}

#[inline(always)]
fn solve_local<const B: usize>(a: &mut [[f32; 3]; 3], b: &mut [f32; 3]) -> bool {
    match B {
        0 | 1 | 4 => solve::<1>(a, b),
        2 => solve::<2>(a, b),
        _ => solve::<3>(a, b),
    }
}

#[inline(always)]
fn voltage_small(delta: f32, value: f32) -> bool {
    delta.abs() <= (2e-6 * value.abs().max(1.0)).min(2e-5)
}

// Кандидат линейного участка; окончательное принятие только по полному закону.
#[inline(always)]
fn amp_candidate<const P: usize>(r: &mut [f32; 8], o: &[f64; 15], h: &[f32; 28]) {
    let slot = AMP.iter().position(|&p| p == P).unwrap();
    let denom = g::ORDER as f64 * g::FS as f64 + g::POLE[slot];
    let k = g::GAIN[slot] / denom;
    let mut diff = o[8 + slot];
    for j in 0..8 {
        if j != P {
            diff += g::DERIV[8 + slot][j] * r[j] as f64;
        }
    }
    let value =
        ((g::FS * h[23 + slot]) as f64 / denom + k * diff) / (1.0 - k * g::DERIV[8 + slot][P]);
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
fn q_candidate<const F: u8>(r: &mut [f32; 8], o: &[f64; 15]) -> bool {
    let old = r[6];
    let current = o[6] + g::DERIV[6][5] * r[5] as f64;
    let d = g::DERIV[6][6];
    for conductance in [0.00455_f64, 1e-7] {
        r[6] = (current / (conductance - d)) as f32;
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
        let q = -0.5 * (b + sqrt64(discriminant).copysign(b));
        for candidate in [q / a, c / q] {
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

fn direct_block<M: PackageMath, const B: usize, const F: u8>(
    r: &mut [f32; 8],
    o: &[f64; 15],
    h: &[f32; 28],
    s: &mut [f32; 5],
) -> Option<f32> {
    let old = *r;
    match B {
        0 => {
            r[0] = (-o[0] / g::DERIV[0][0]) as f32;
            if r[0].abs() <= 11.381 {
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
            amp_candidate::<1>(r, o, h);
            let (f, j, state) = equation::<M, 1, F>(r, o, h);
            if f.is_finite() && f.abs() / SCALE[1] <= TOL && voltage_small(f / j[1], r[1]) {
                s[0] = state;
                return Some(f.abs() / SCALE[1]);
            }
        }
        3 => {
            amp_candidate::<4>(r, o, h);
            amp_candidate::<5>(r, o, h);
            if q_candidate::<F>(r, o) {
                let e = evaluate_block::<M, 3, F>(r, o, h);
                let mut j = e.j;
                let mut correction = e.f;
                if e.error <= TOL
                    && solve::<3>(&mut j, &mut correction)
                    && (0..3).all(|i| voltage_small(correction[i], r[4 + i]))
                {
                    s[2] = e.s[2];
                    s[3] = e.s[3];
                    return Some(e.error);
                }
            }
        }
        4 => {
            amp_candidate::<7>(r, o, h);
            let (f, j, state) = equation::<M, 7, F>(r, o, h);
            if f.is_finite() && f.abs() / SCALE[7] <= TOL && voltage_small(f / j[7], r[7]) {
                s[4] = state;
                return Some(f.abs() / SCALE[7]);
            }
        }
        _ => {}
    }
    *r = old;
    None
}

// Та же функция, но без переполнения (s/swing)^16 при глубоком насыщении.
fn rail<M: NonlinearMath>(s: f32, swing: f32) -> (f32, f32, f32) {
    if swing <= 0.0 {
        return (0.0, 0.0, 0.0);
    }
    if s.abs() <= swing {
        return super::smooth_rail_derivatives::<M>(s, swing);
    }
    let ratio = swing / s.abs();
    let p = pow16(ratio);
    let factor = 1.0 / M::sixteenth_root(1.0 + p);
    let common = factor / (1.0 + p);
    (
        s.signum() * swing * factor,
        p * ratio * common,
        s.signum() * common,
    )
}

fn power<M: NonlinearMath>(s: f32, current: f32) -> (f32, f32, f32) {
    let (v, ds, _) = rail::<M>(s, 21.0);
    let vce = (24.0 - v.abs()).max(8.0);
    let limit = (60.0 / vce).min(5.0);
    // Ограничение тока также выражено через устойчивую насыщаемую функцию.
    let ratio = current.abs() / limit;
    let (factor, di, dl) = if ratio <= 1.0 {
        let p = pow16(ratio);
        let f = 1.0 / M::sixteenth_root(1.0 + p);
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
        let c = f / (1.0 + p);
        (q * f, -q / current * c, q / limit * c)
    };
    let limit_v = if 60.0 / vce < 5.0 && 24.0 - v.abs() > 8.0 && v != 0.0 {
        60.0 * v.signum() / (vce * vce)
    } else {
        0.0
    };
    (v * factor, (factor + v * dl * limit_v) * ds, v * di)
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
    pub scalar_counts: [u32; 3],
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
            scalar_counts: [0; 3],
        }
    }
}

#[inline(always)]
fn equation<M: PackageMath, const P: usize, const F: u8>(
    r: &[f32; 8],
    o: &[f64; 15],
    h: &[f32; 28],
) -> (f32, [f32; 8], f32) {
    let p = P;
    let mut j = [0.0; 8];
    let current = observe::<F>(p, o, r);
    if let Some(slot) = AMP.iter().position(|&v| v == p) {
        let diff = observe::<F>(8 + slot, o, r);
        let slew = if slot < 4 { 16e6 } else { 8e6 };
        let history = g::FS * h[23 + slot];
        let alpha = g::ORDER * g::FS;
        let free = if M::EXTRA >= 2 {
            let inv = (1.0 / (g::ORDER as f64 * g::FS as f64 + g::POLE[slot])) as f32;
            let gain = (g::GAIN[slot] / (g::ORDER as f64 * g::FS as f64 + g::POLE[slot])) as f32;
            history * inv + gain * diff
        } else {
            ((history as f64 + g::GAIN[slot] * diff as f64) / (alpha as f64 + g::POLE[slot])) as f32
        };
        let lower = (history - slew) / alpha;
        let upper = (history + slew) / alpha;
        let s = free.clamp(lower, upper);
        let ds = if free > lower && free < upper {
            (g::GAIN[slot] / (alpha as f64 + g::POLE[slot])) as f32
        } else {
            0.0
        };
        let (v, vs, vi) = if slot < 4 {
            let (swing, di) = opamp_swing_derivative(current);
            let (v, vs, vw) = rail::<M>(s, swing);
            (v, vs, vw * di)
        } else {
            power::<M>(s, current)
        };
        for k in 0..8 {
            j[k] = -(vs * ds) * g::DERIV[8 + slot][k] as f32 - vi * g::DERIV[p][k] as f32;
        }
        j[p] += 1.0;
        return (r[p] - v, j, s);
    }
    for k in 0..8 {
        j[k] = -g::DERIV[p][k] as f32;
    }
    if p == 0 || p == 3 {
        let scale = 1.75 * 0.02585;
        let (a, b) = if p == 0 {
            ((r[0] - 15.0) / scale, (-r[0] - 15.0) / scale)
        } else {
            (r[3] / scale, -r[3] / scale)
        };
        let (ep, en) = if M::EXTRA >= 1 && p == 3 && a.abs() >= 0.5 {
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
        j[p] += 2.5e-9 * (ep + en) / scale;
        return (2.5e-9 * (ep - en) - current, j, 0.0);
    }
    let va = observe::<F>(13, o, r);
    let vb = observe::<F>(14, o, r);
    let src = if va <= vb { 13 } else { 14 };
    let vgs = 0.5 - va.min(vb);
    let (conductance, dg) = if vgs <= -2.0 {
        (1e-7, 0.0)
    } else {
        (
            (0.00455 * (1.0 + vgs.min(0.0) / 2.0)).max(1e-7),
            if vgs < 0.0 && 0.00455 * (1.0 + vgs / 2.0) > 1e-7 {
                0.002275
            } else {
                0.0
            },
        )
    };
    for k in 0..8 {
        j[k] -= r[6] * dg * g::DERIV[src][k] as f32;
    }
    j[6] += conductance;
    (conductance * r[6] - current, j, 0.0)
}

#[inline(always)]
fn solve<const N: usize>(a: &mut [[f32; 3]; 3], b: &mut [f32; 3]) -> bool {
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
struct Evaluation {
    f: [f32; 3],
    j: [[f32; 3]; 3],
    s: [f32; 5],
    error: f32,
}
#[inline(always)]
fn evaluate_block<M: PackageMath, const B: usize, const F: u8>(
    r: &[f32; 8],
    o: &[f64; 15],
    h: &[f32; 28],
) -> Evaluation {
    let mut e = Evaluation {
        f: [0.0; 3],
        j: [[0.0; 3]; 3],
        s: [0.0; 5],
        error: 0.0,
    };
    macro_rules! row {
        ($i:literal,$p:literal) => {{
            let (f, j, s) = equation::<M, $p, F>(r, o, h);
            e.f[$i] = -f;
            e.error = if f.is_finite() {
                e.error.max((f / SCALE[$p]).abs())
            } else {
                f32::INFINITY
            };
            for (k, &p) in BLOCKS[B].iter().enumerate() {
                e.j[$i][k] = j[p];
            }
            if let Some(slot) = AMP.iter().position(|&v| v == $p) {
                e.s[slot] = s;
            }
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
#[inline(never)]
fn solve_block<M: PackageMath, const B: usize, const F: u8>(
    r: &mut [f32; 8],
    o: &[f64; 15],
    h: &[f32; 28],
    s: &mut [f32; 5],
) -> (f32, u8, bool) {
    let block = BLOCKS[B];
    let mut e = evaluate_block::<M, B, F>(r, o, h);
    let mut total = 0;
    for iter in 0..=16 {
        let mut f = e.f;
        let mut j = e.j;
        if !solve_local::<B>(&mut j, &mut f) {
            return (e.error, total, false);
        }
        let small = block
            .iter()
            .enumerate()
            .all(|(i, &p)| f[i].abs() <= (2e-6 * r[p].abs().max(1.0)).min(2e-5));
        let mut done = e.error <= TOL && small;
        if !done && iter < 16 {
            let mut accepted = false;
            for back in 0..12 {
                let factor = f32::from_bits((127 - back) << 23);
                let mut trial = *r;
                for (i, &p) in block.iter().enumerate() {
                    trial[p] += factor * f[i];
                }
                let t = evaluate_block::<M, B, F>(&trial, o, h);
                if t.error < e.error {
                    *r = trial;
                    e = t;
                    accepted = true;
                    break;
                }
            }
            total += 1;
            if accepted {
                continue;
            }
            done = e.error <= TOL && block.iter().enumerate().all(|(i, _)| f[i].abs() <= 2e-5);
        }
        for &p in block {
            if let Some(slot) = AMP.iter().position(|&v| v == p) {
                s[slot] = e.s[slot];
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
        let h = self.history();
        let o = if F != 0 {
            super::generated_packed::origin::<F>(&h, input)
        } else {
            g::origin(&h, input)
        };
        let mut r = self.ports;
        let mut s = [0.0; 5];
        let mut total = 0;
        let mut worst = 0.0_f32;
        macro_rules! block {
            ($id:literal) => {{
                let direct = if $id == 0 || $id == 1 || $id == 3 || ($id == 4 && M::EXTRA >= 1) {
                    direct_block::<M, $id, F>(&mut r, &o, &h, &mut s)
                } else {
                    None
                };
                if let Some(error) = direct {
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
                    let (mut error, iterations, mut ok) = if $id == 2 {
                        self.scalar_counts[0] += 1;
                        let result = solve_clip::<M, F>(&mut r, &o, &h, &mut s);
                        self.scalar_counts[1] += result.1 as u32;
                        if result.2 { result } else {
                            self.scalar_counts[2] += 1;
                            let retry = solve_block::<M, $id, F>(&mut r, &o, &h, &mut s);
                            (retry.0, result.1 + retry.1, retry.2)
                        }
                    } else { solve_block::<M, $id, F>(&mut r, &o, &h, &mut s) };
                    total += iterations;
                    if !ok {
                        for &p in BLOCKS[$id] {
                            r[p] = 0.0;
                        }
                        let retry = solve_block::<M, $id, F>(&mut r, &o, &h, &mut s);
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
        block!(0);
        block!(1);
        block!(2);
        block!(3);
        block!(4);
        let caps = if F != 0 {
            super::generated_packed::update::<F>(&h, input, &r)
        } else {
            g::update(&h, input, &r)
        };
        let mut next = [0.0; 28];
        next[..23].copy_from_slice(&caps);
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


// Точное исключение диодной строки: v_B=(I_d(q)-o_3-d_33 q)/d_32.
// Интервал ограничивает поиск; окончательная проверка — исходные две строки.
#[inline(never)]
fn solve_clip<M: PackageMath, const F: u8>(
    r: &mut [f32; 8], o: &[f64; 15], h: &[f32; 28], s: &mut [f32; 5],
) -> (f32, u8, bool) {
    let old = *r;
    let scale = 1.75_f32 * 0.02585;
    let mut lo = -2.0_f32;
    let mut hi = 2.0_f32;
    let mut q = r[3].clamp(lo, hi);
    for iteration in 0..24 {
        let a = q / scale;
        let (ep, en) = if a.abs() >= 0.5 {
            let p = M::exp(a.abs().min(80.0));
            if a >= 0.0 {(p, 1.0/p)} else {(1.0/p,p)}
        } else {(M::exp(a), M::exp(-a))};
        let diode = 2.5e-9 * (ep-en);
        let gd = 2.5e-9 * (ep+en)/scale;
        r[3] = q;
        r[2] = ((diode as f64-o[3]-g::DERIV[3][3]*q as f64)/g::DERIV[3][2]) as f32;
        let (f, j, state) = equation::<M, 2, F>(r,o,h);
        let dv = (gd-g::DERIV[3][3] as f32)/g::DERIV[3][2] as f32;
        let slope = j[2]*dv+j[3];
        let delta = -f/slope;
        if f.is_finite() && f.abs()/SCALE[2] <= TOL && voltage_small(delta,q) && voltage_small(delta*dv,r[2]) {
            let e=evaluate_block::<M,2,F>(r,o,h);
            let mut jj=e.j; let mut ff=e.f;
            if e.error<=TOL && solve::<2>(&mut jj,&mut ff) && voltage_small(ff[0],r[2]) && voltage_small(ff[1],r[3]) {
                s[1]=state;return (e.error,iteration,true);
            }
            return (e.error,iteration,false);
        }
        if !f.is_finite() || !slope.is_finite() || slope<=0.0 { *r=old; return (f32::INFINITY,iteration,false); }
        if f>0.0 {hi=q;} else {lo=q;}
        let trial=q+delta;
        let next=if trial>lo && trial<hi {trial} else {0.5*(lo+hi)};
        if next==q {return (f.abs()/SCALE[2],iteration,false);}
        q=next;
    }
    *r=old;(f32::INFINITY,24,false)
}
#[cfg(test)]
#[path="scalar_diagnostics.rs"]
mod diagnostics;
