//! Сквозной исследовательский прототип: 28 физических состояний, 8 напряжений.
//! Все законы сохранены. Рабочий DspState не заменяется.
use super::generated_condensed as g;
use super::{NonlinearMath, StepResult, opamp_swing_derivative, pow16};

const BLOCKS: [&[usize]; 5] = [&[0], &[1], &[2, 3], &[4, 5, 6], &[7]];
const AMP: [usize; 5] = [1, 2, 4, 5, 7];
const SCALE: [f32; 8] = [0.01, 15.0, 15.0, 0.01, 15.0, 15.0, 0.01, 24.0];
const TOL: f32 = 1e-4;

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
pub struct CondensedState {
    pub current: [f32; 28],
    pub previous: [f32; 28],
    pub ports: [f32; 8],
    pub steps: u32,
}
impl Default for CondensedState {
    fn default() -> Self {
        Self {
            current: [0.0; 28],
            previous: [0.0; 28],
            ports: [0.0; 8],
            steps: 0,
        }
    }
}

#[inline(always)]
fn equation<M: NonlinearMath, const P: usize>(
    r: &[f32; 8],
    o: &[f64; 15],
    h: &[f32; 28],
) -> (f32, [f32; 8], f32) {
    let p = P;
    let mut j = [0.0; 8];
    let current = g::observe(p, o, r);
    if let Some(slot) = AMP.iter().position(|&v| v == p) {
        let diff = g::observe(8 + slot, o, r);
        let slew = if slot < 4 { 16e6 } else { 8e6 };
        let history = g::FS * h[23 + slot];
        let alpha = g::ORDER * g::FS;
        let free = ((history as f64 + g::GAIN[slot] * diff as f64) / (alpha as f64 + g::POLE[slot]))
            as f32;
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
        let ep = M::exp(a.clamp(-80.0, 80.0));
        let en = M::exp(b.clamp(-80.0, 80.0));
        j[p] += 2.5e-9 * (ep + en) / scale;
        return (2.5e-9 * (ep - en) - current, j, 0.0);
    }
    let va = g::observe(13, o, r);
    let vb = g::observe(14, o, r);
    let src = if va <= vb { 13 } else { 14 };
    let vgs = 0.5 - va.min(vb);
    let (conductance, dg) = if vgs <= -2.0 {
        (1e-7, 0.0)
    } else {
        (
            (0.00455 * (1.0 + vgs.min(0.0) / 2.0)).max(1e-7),
            if vgs < 0.0 { 0.002275 } else { 0.0 },
        )
    };
    for k in 0..8 {
        j[k] -= r[6] * dg * g::DERIV[src][k] as f32;
    }
    j[6] += conductance;
    (conductance * r[6] - current, j, 0.0)
}

fn solve(a: &mut [[f32; 3]; 3], b: &mut [f32; 3], n: usize) -> bool {
    for p in 0..n {
        let mut best = p;
        for i in p + 1..n {
            if a[i][p].abs() > a[best][p].abs() {
                best = i;
            }
        }
        a.swap(p, best);
        b.swap(p, best);
        if !a[p][p].is_finite() || a[p][p].abs() < 1e-20 {
            return false;
        }
        for i in p + 1..n {
            let f = a[i][p] / a[p][p];
            for j in p + 1..n {
                a[i][j] -= f * a[p][j];
            }
            b[i] -= f * b[p];
        }
    }
    for i in (0..n).rev() {
        for j in i + 1..n {
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
fn evaluate_block<M: NonlinearMath, const B: usize>(
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
            let (f, j, s) = equation::<M, $p>(r, o, h);
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
fn solve_block<M: NonlinearMath, const B: usize>(
    r: &mut [f32; 8],
    o: &[f64; 15],
    h: &[f32; 28],
    s: &mut [f32; 5],
) -> (f32, u8, bool) {
    let block = BLOCKS[B];
    let mut e = evaluate_block::<M, B>(r, o, h);
    let mut total = 0;
    for iter in 0..=16 {
        let mut f = e.f;
        let mut j = e.j;
        if !solve(&mut j, &mut f, block.len()) {
            return (e.error, total, false);
        }
        let small = block
            .iter()
            .enumerate()
            .all(|(i, &p)| f[i].abs() <= 2e-7 * r[p].abs().max(1.0));
        let mut done = e.error <= TOL && small;
        if !done && iter < 16 {
            let mut accepted = false;
            for back in 0..12 {
                let factor = f32::from_bits((127 - back) << 23);
                let mut trial = *r;
                for (i, &p) in block.iter().enumerate() {
                    trial[p] += factor * f[i];
                }
                let t = evaluate_block::<M, B>(&trial, o, h);
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

impl CondensedState {
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
    pub fn step<M: NonlinearMath>(&mut self, input: f32) -> StepResult {
        let h = self.history();
        let o = g::origin(&h, input);
        let mut r = self.ports;
        let mut s = [0.0; 5];
        let mut total = 0;
        let mut worst = 0.0_f32;
        macro_rules! block {
            ($id:literal) => {{
                let (error, iterations, ok) = solve_block::<M, $id>(&mut r, &o, &h, &mut s);
                total += iterations;
                worst = worst.max(error);
                if !ok {
                    return StepResult {
                        output_v: self.ports[7],
                        residual_norm: error,
                        iterations: total,
                        converged: false,
                    };
                }
            }};
        }
        block!(0);
        block!(1);
        block!(2);
        block!(3);
        block!(4);
        let caps = g::update(&h, input, &r);
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

#[cfg(test)]
mod tests {
    extern crate std;
    use super::*;
    use crate::FpuRootMath;
    #[test]
    fn saturated_law_is_finite_and_matches_f64() {
        for s in [0.0_f32, 1.0, 15.0, 100.0, 1000.0, 10000.0, 1e10, -1e10] {
            let v = rail::<FpuRootMath>(s, 13.5);
            let expected = s as f64 / (1.0 + (s as f64 / 13.5).abs().powi(16)).powf(1.0 / 16.0);
            assert!(v.0.is_finite() && v.1.is_finite() && v.2.is_finite());
            assert!((v.0 as f64 - expected).abs() < 3e-6);
        }
    }
    #[test]
    fn compare_independent_full_reference() {
        if g::FS != 96000.0 || g::ORDER != 1.5 {
            return;
        }
        for mv in [100, 1000] {
            let file = std::format!(
                "{}/../../simulation/experiments/absolute_ports/reference_{}mv.txt",
                env!("CARGO_MANIFEST_DIR"),
                mv
            );
            let data = std::fs::read_to_string(file).unwrap();
            let mut state = CondensedState::default();
            let (mut energy, mut err, mut peak, mut scaled, mut fullres) =
                (0.0_f64, 0.0_f64, 0.0_f64, 0.0_f64, 0.0_f32);
            let (mut fail, mut maxiter) = (0, 0);
            let mut oldx = [0.0; 56];
            let mut prevx = [0.0; 56];
            for line in data.lines() {
                let v: std::vec::Vec<f64> = line
                    .split_whitespace()
                    .map(|s| s.parse().unwrap())
                    .collect();
                let h = state.history();
                let a = state.step::<FpuRootMath>(v[0] as f32);
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
                // Старый закон переполняется в глубоком насыщении; полная KCL и
                // исходная проверка применяются там, где он конечен.
                let rr = crate::assemble_residual_evaluated(&x, &hx, v[0] as f32, 96000.0, 1.5, &{
                    let mut n = crate::evaluate_nonlinear::<FpuRootMath>(&x);
                    for slot in 0..4 {
                        let (sw, di) = opamp_swing_derivative(x[46 + slot]);
                        let (v, ds, dw) = rail::<FpuRootMath>(x[50 + slot], sw);
                        n.op_laws[slot] = (v, ds, dw * di);
                    }
                    n.power_law = power::<FpuRootMath>(x[55], x[54]);
                    n
                });
                if rr.iter().all(|v| v.is_finite()) {
                    fullres = fullres.max(crate::physical_residual_norm(&rr));
                }
                for i in 0..56 {
                    scaled = scaled.max(
                        (x[i] as f64 - v[i + 1]).abs()
                            / crate::generated_model::STATE_SCALE[i] as f64,
                    );
                }
                prevx = oldx;
                oldx = x;
                let e = a.output_v as f64 - v[32];
                energy += v[32] * v[32];
                err += e * e;
                peak = peak.max(e.abs());
            }
            std::println!(
                "condensed {mv}mV rms={} peak={peak} scaled={scaled} fullres={fullres} failures={fail} maxiter={maxiter}",
                (err / energy).sqrt()
            );
            assert_eq!(fail, 0);
            assert!((err / energy).sqrt() < 0.001);
        }
    }
}
