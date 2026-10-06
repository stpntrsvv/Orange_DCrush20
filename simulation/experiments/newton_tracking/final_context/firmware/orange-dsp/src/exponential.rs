//! Исследовательский ETD2: точная замкнутая линейная динамика, все нелинейные
//! остатки сохранены. Память — 23 напряжения ёмкостей и 5 полюсов, в вольтах.
//! Отдельный кандидат, не замена P7. Подготовка вне шага; no_std, без heap.
use crate::{StepResult, generated_exponential as g};
const BLOCKS: [&[usize]; 5] = [&[0], &[3, 8], &[4, 9, 1], &[5, 10, 6, 11, 2], &[7, 12]];
const OBS: [&[usize]; 5] = [
    &[0],
    &[4, 9, 14],
    &[5, 10, 15, 1],
    &[6, 11, 16, 7, 12, 17, 2, 3],
    &[8, 13, 18],
];
#[derive(Clone)]
pub struct ExponentialState {
    pub current: [f64; 28],
    pub force: [f64; 13],
    pub input: f64,
    pub steps: u32,
    pub retries: u32,
    pub direct: [u32; 6],
    pub scalar_counts: [u32; 3],
}
impl Default for ExponentialState {
    fn default() -> Self {
        Self {
            current: [0.; 28],
            force: [0.; 13],
            input: 0.,
            steps: 0,
            retries: 0,
            direct: [0; 6],
            scalar_counts: [0; 3],
        }
    }
}
#[inline(always)]
fn madd<const Q: bool>(sum: f64, a: f64, b: f64) -> f64 {
    if Q {
        ((sum as f32) + (a as f32) * (b as f32)) as f64
    } else {
        sum + a * b
    }
}
#[inline(always)]
fn sqrt(mut x: f64) -> f64 {
    #[cfg(target_arch = "arm")]
    unsafe {
        core::arch::asm!("vsqrt.f64 {v}, {v}",v=inout(dreg_low16)x,options(nomem,nostack,preserves_flags));
    }
    #[cfg(target_arch = "aarch64")]
    unsafe {
        core::arch::asm!("fsqrt {v:d}, {v:d}",v=inout(vreg)x,options(nomem,nostack,preserves_flags));
    }
    x
}
#[inline(always)]
fn p16(x: f64) -> f64 {
    let a = x * x;
    let b = a * a;
    let c = b * b;
    c * c
}
#[inline(always)]
fn root(x: f64) -> f64 {
    if x == 1. {
        1.
    } else {
        sqrt(sqrt(sqrt(sqrt(x))))
    }
}
fn exp(x: f64) -> f64 {
    let n = (x * core::f64::consts::LOG2_E + if x >= 0. { 0.5 } else { -0.5 }) as i32;
    let r = x - (n as f64) * core::f64::consts::LN_2;
    const C: [f64; 13] = [
        1.,
        0.5,
        1. / 6.,
        1. / 24.,
        1. / 120.,
        1. / 720.,
        1. / 5040.,
        1. / 40320.,
        1. / 362880.,
        1. / 3628800.,
        1. / 39916800.,
        1. / 479001600.,
        1. / 6227020800.,
    ];
    let mut y = C[12];
    for k in (0..12).rev() {
        y = y * r + C[k];
    }
    (y * r + 1.) * f64::from_bits(((n + 1023) as u64) << 52)
}
fn rail(s: f64, sw: f64) -> (f64, f64, f64) {
    if sw <= 0. {
        return (0., 0., 0.);
    }
    if s.abs() <= sw {
        let p = p16(s / sw);
        let f = 1. / root(1. + p);
        let c = f / (1. + p);
        (s * f, c, s * p / sw * c)
    } else {
        let q = sw / s.abs();
        let p = p16(q);
        let f = 1. / root(1. + p);
        let c = f / (1. + p);
        (s.signum() * sw * f, p * q * c, s.signum() * c)
    }
}
fn opamp(s: f64, i: f64) -> (f64, f64, f64) {
    let a = i.abs();
    let (sw, di) = if a <= 0.00135 {
        (13.5, 0.)
    } else if a <= 0.006 {
        (
            13.5 - (a - 0.00135) * (1.5 / 0.00465),
            -i.signum() * (1.5 / 0.00465),
        )
    } else if a < 0.04 {
        (
            12. - (a - 0.006) * (12. / 0.034),
            -i.signum() * (12. / 0.034),
        )
    } else {
        (0., 0.)
    };
    let (v, ds, dw) = rail(s, sw);
    (v, ds, dw * di)
}
fn power(s: f64, i: f64) -> (f64, f64, f64) {
    let (v, ds, _) = rail(s, 21.);
    let vce = (24. - v.abs()).max(8.);
    let limit = (60. / vce).min(5.);
    let ratio = i.abs() / limit;
    let (f, di, dl) = if ratio <= 1. {
        let p = p16(ratio);
        let f = 1. / root(1. + p);
        let c = f / (1. + p);
        (f, if i == 0. { 0. } else { -p / i * c }, p / limit * c)
    } else {
        let q = limit / i.abs();
        let p = p16(q);
        let f = 1. / root(1. + p);
        let c = f / (1. + p);
        (q * f, -q / i * c, q / limit * c)
    };
    let lv = if 60. / vce < 5. && 24. - v.abs() > 8. && v != 0. {
        60. * v.signum() / (vce * vce)
    } else {
        0.
    };
    (v * f, (f + v * dl * lv) * ds, v * di)
}
#[inline(never)]
fn law(p: usize, x: &[f64; 19]) -> (f64, [f64; 19]) {
    let mut j = [0.; 19];
    let scale = 1.75 * 0.02585;
    if p <= 1 {
        let obs = p;
        let (a, b, g0) = if p == 0 {
            (
                (x[0] - 15.) / scale,
                (-x[0] - 15.) / scale,
                5e-9 * exp(-80.) / scale,
            )
        } else {
            (x[1] / scale, -x[1] / scale, 5e-9 / scale)
        };
        let ep = exp(a.clamp(-80., 80.));
        let en = exp(b.clamp(-80., 80.));
        j[obs] = (2.5e-9 * (ep + en) / scale - g0) / 0.01;
        return ((2.5e-9 * (ep - en) - g0 * x[obs]) / 0.01, j);
    }
    if p == 2 {
        let src = if x[2] <= x[3] { 2 } else { 3 };
        let vgs = 0.5 - x[src];
        let raw = 0.00455 * (1. + vgs.min(0.) / 2.);
        let g = raw.max(1e-7);
        let dg = if vgs < 0. && raw > 1e-7 { 0.002275 } else { 0. };
        let v = x[2] - x[3];
        j[2] = (g - 0.00455) / 0.01;
        j[3] = -j[2];
        j[src] -= v * dg / 0.01;
        return ((g - 0.00455) * v / 0.01, j);
    }
    if p < 8 {
        let slot = p - 3;
        let s = x[4 + slot];
        let i = x[9 + slot];
        let norm = if slot == 4 { 24. } else { 15. };
        let (v, ds, di) = if slot == 4 { power(s, i) } else { opamp(s, i) };
        j[4 + slot] = (1. - ds) / norm;
        j[9 + slot] = -di / norm;
        return ((s - v) / norm, j);
    }
    let slot = p - 8;
    let raw = x[14 + slot];
    let limit = if slot == 4 { 8e6 } else { 16e6 };
    j[14 + slot] = if raw.abs() < limit { 0. } else { 1. / limit };
    ((raw - raw.clamp(-limit, limit)) / limit, j)
}
fn observations<const Q: bool>(o: &[f64; 19], n: &[f64; 13]) -> [f64; 19] {
    let mut x = *o;
    for i in 0..19 {
        for k in 0..13 {
            if g::D[i][k] != 0. {
                x[i] = madd::<Q>(x[i], g::D[i][k], n[k]);
            }
        }
    }
    x
}
#[inline(never)]
fn evaluate<const Q: bool, const B: usize, const N: usize>(
    o: &[f64; 19],
    n: &[f64; 13],
) -> ([f64; 5], [[f64; 5]; 5], f64) {
    let mut x = *o;
    for &i in OBS[B] {
        for &p in BLOCKS[B] {
            x[i] = madd::<Q>(x[i], g::D[i][p], n[p]);
        }
    }
    let mut f = [0.; 5];
    let mut j = [[0.; 5]; 5];
    let mut error = 0.0_f64;
    for i in 0..N {
        let p = BLOCKS[B][i];
        let (v, d) = law(p, &x);
        f[i] = v - n[p];
        error = error.max(f[i].abs());
        for k in 0..N {
            j[i][k] = if i == k { 1. } else { 0. };
            for c in 0..19 {
                if d[c] != 0. {
                    j[i][k] -= d[c] * g::D[c][BLOCKS[B][k]];
                }
            }
        }
    }
    (f, j, error)
}
fn solve<const N: usize>(a: &mut [[f64; 5]; 5], b: &mut [f64; 5]) -> bool {
    for p in 0..N {
        let mut best = p;
        for i in p + 1..N {
            if a[i][p].abs() > a[best][p].abs() {
                best = i;
            }
        }
        a.swap(p, best);
        b.swap(p, best);
        if !a[p][p].is_finite() || a[p][p].abs() < 1e-24 {
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
#[inline(never)]
fn block<const Q: bool, const B: usize, const N: usize>(
    o: &[f64; 19],
    n: &mut [f64; 13],
) -> (f64, u8, bool) {
    let mut e = evaluate::<Q, B, N>(o, n);
    for iter in 0..=24 {
        if e.2 < if Q { 1e-4 } else { 1e-10 } {
            return (e.2, iter, true);
        }
        if iter == 24 {
            return (e.2, iter, false);
        }
        let mut f = e.0;
        let mut j = e.1;
        if !solve::<N>(&mut j, &mut f) {
            return (e.2, iter, false);
        }
        let old = *n;
        let mut accepted = false;
        for back in 0..16 {
            let factor = f64::from_bits((1023 - back as u64) << 52);
            for i in 0..N {
                n[BLOCKS[B][i]] = old[BLOCKS[B][i]] + factor * f[i];
            }
            let t = evaluate::<Q, B, N>(o, n);
            if t.2 < e.2 {
                e = t;
                accepted = true;
                break;
            }
        }
        if !accepted {
            *n = old;
            return (e.2, iter, false);
        }
    }
    unreachable!()
}
impl ExponentialState {
    pub fn step<const Q: bool>(&mut self, input: f32) -> StepResult {
        let mut base = [0.; 28];
        for i in 0..28 {
            base[i] = g::U0[i] * self.input + g::U1[i] * input as f64;
            for k in 0..28 {
                if g::E[i][k] != 0. {
                    base[i] = madd::<Q>(base[i], g::E[i][k], self.current[k]);
                }
            }
            for k in 0..13 {
                if g::N0[i][k] != 0. {
                    base[i] = madd::<Q>(base[i], g::N0[i][k], self.force[k]);
                }
            }
        }
        let mut o = [0.; 19];
        for i in 0..19 {
            o[i] = g::U[i] * input as f64;
            for k in 0..28 {
                if g::O[i][k] != 0. {
                    o[i] = madd::<Q>(o[i], g::O[i][k], base[k]);
                }
            }
        }
        let mut n = self.force;
        let mut worst = 0.0_f64;
        let mut total = 0_u8;
        macro_rules! run {
            ($b:literal,$n:literal) => {{
                for &i in OBS[$b] {
                    for k in 0..13 {
                        if !BLOCKS[$b].contains(&k) && g::D[i][k] != 0. {
                            o[i] = madd::<Q>(o[i], g::D[i][k], n[k]);
                        }
                    }
                }
                let mut result = block::<Q, $b, $n>(&o, &mut n);
                total += result.1;
                if !result.2 {
                    for &p in BLOCKS[$b] {
                        n[p] = 0.;
                    }
                    result = block::<Q, $b, $n>(&o, &mut n);
                    total += result.1;
                    self.retries += 1;
                }
                worst = worst.max(result.0);
                if !result.2 {
                    self.scalar_counts[0] = $b;
                    return StepResult {
                        output_v: 0.,
                        residual_norm: worst as f32,
                        iterations: total,
                        converged: false,
                    };
                }
            }};
        }
        run!(0, 1);
        run!(1, 2);
        run!(2, 3);
        run!(3, 5);
        run!(4, 2);
        let mut next = base;
        for i in 0..28 {
            for k in 0..13 {
                if g::N1[i][k] != 0. {
                    next[i] = madd::<Q>(next[i], g::N1[i][k], n[k]);
                }
            }
        }
        let internal = o[8] + g::D[8][7] * n[7] + g::D[8][12] * n[12];
        if !next.iter().all(|v| v.is_finite()) {
            return StepResult {
                output_v: 0.,
                residual_norm: f32::INFINITY,
                iterations: total,
                converged: false,
            };
        }
        self.current = next;
        self.force = n;
        self.input = input as f64;
        self.steps += 1;
        StepResult {
            output_v: (internal - 24. * n[7]) as f32,
            residual_norm: worst as f32,
            iterations: total,
            converged: true,
        }
    }
    pub fn recover(&self) -> [f64; 56] {
        // x = V q + Q (u-L n); RN includes P H1 L, so undo that term here.
        let mut base = self.current;
        for i in 0..28 {
            for k in 0..13 {
                base[i] -= g::N1[i][k] * self.force[k];
            }
        }
        core::array::from_fn(|i| {
            let mut v = g::RU[i] * self.input;
            for k in 0..28 {
                v += g::REC[i][k] * base[k];
            }
            for k in 0..13 {
                v += g::RN[i][k] * self.force[k];
            }
            v
        })
    }
}
#[cfg(test)]
mod tests {
    extern crate std;
    use super::*;
    #[test]
    fn nominal_matches_independent_descriptor_reference() {
        assert_eq!(g::FS, 48000.);
        let path = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../../simulation/experiments/solver_time/temporal/reference_etd_0.txt");
        let text = std::fs::read_to_string(path).unwrap();
        let mut state = ExponentialState::default();
        let (mut peak, mut scaled, mut error, mut energy) = (0.0_f64, 0.0_f64, 0.0_f64, 0.0_f64);
        for line in text.lines() {
            let v: std::vec::Vec<f64> = line
                .split_whitespace()
                .map(|s| s.parse().unwrap())
                .collect();
            let r = state.step::<false>(v[0] as f32);
            assert!(r.converged);
            let x = state.recover();
            let e = r.output_v as f64 - v[32];
            peak = peak.max(e.abs());
            error += e * e;
            energy += v[32] * v[32];
            for i in 0..56 {
                scaled = scaled
                    .max((x[i] - v[1 + i]).abs() / crate::generated_model::STATE_SCALE[i] as f64);
            }
        }
        assert!(peak < 0.01 && scaled < 0.003 && (error / energy).sqrt() < 1e-4);
    }
}
