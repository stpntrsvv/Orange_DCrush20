// Подготовка TDA один раз на блок. Порядок чувствительных f32-операций сохранён.
#[derive(Clone, Copy)]
struct TdaSetup {
    history: f32,
    inv: f32,
    gain: f32,
    lower: f32,
    upper: f32,
}

impl TdaSetup {
    #[inline(always)]
    fn new(h: &[f32; 28]) -> Self {
        let history = g::FS * h[27];
        let alpha = g::ORDER * g::FS;
        let denom = g::ORDER as f64 * g::FS as f64 + g::POLE[4];
        Self {
            history,
            inv: (1.0 / denom) as f32,
            gain: (g::GAIN[4] / denom) as f32,
            lower: (history - 8e6) / alpha,
            upper: (history + 8e6) / alpha,
        }
    }
}

// Только величины, уже необходимые закону и первой производной.
#[derive(Clone, Copy)]
struct PowerEvaluation {
    v: f32,
    vs: f32,
    rail_power: f32,
    vce: f32,
    limit: f32,
    active: bool,
    root_ratio: f32,
    current_power: f32,
    root: f32,
    root_factor: f32,
    output: f32,
    ds: f32,
    di: f32,
}

#[inline(always)]
fn power_evaluate<M: NonlinearMath>(s: f32, current: f32) -> PowerEvaluation {
    let (v, vs, rail_power) = if s.abs() <= 21.0 {
        let p = pow16((s / 21.0).abs());
        let factor = 1.0 / M::sixteenth_root(1.0 + p);
        (s * factor, factor / (1.0 + p), p)
    } else {
        let ratio = 21.0 / s.abs();
        let p = pow16(ratio);
        let factor = 1.0 / M::sixteenth_root(1.0 + p);
        (s.signum() * 21.0 * factor, p * ratio * (factor / (1.0 + p)), p)
    };
    let vce = (24.0 - v.abs()).max(8.0);
    let limit = (60.0 / vce).min(5.0);
    let ratio = current.abs() / limit;
    let root_ratio = if ratio <= 1.0 { ratio } else { limit / current.abs() };
    let p = pow16(root_ratio);
    let root = M::sixteenth_root(1.0 + p);
    let root_factor = 1.0 / root;
    let common = root_factor / (1.0 + p);
    let (factor, di, dl) = if ratio <= 1.0 {
        (root_factor, if current == 0.0 { 0.0 } else { -p / current * common }, p / limit * common)
    } else {
        (root_ratio * root_factor, -root_ratio / current * common, root_ratio / limit * common)
    };
    let active = 60.0 / vce < 5.0 && 24.0 - v.abs() > 8.0 && v != 0.0;
    let limit_v = if active { 60.0 * v.signum() / (vce * vce) } else { 0.0 };
    PowerEvaluation {
        v, vs, rail_power, vce, limit, active, root_ratio,
        current_power: p, root, root_factor, output: v * factor,
        ds: (factor + v * dl * limit_v) * vs, di: v * di,
    }
}

impl PowerEvaluation {
    #[inline(always)]
    fn curvature<M: NonlinearMath>(&self, s: f32, sd: f32, current: f32, id: f32) -> f32 {
        let a = if s.abs() <= 21.0 {
            self.rail_power / (1.0 + self.rail_power)
        } else { 1.0 / (1.0 + self.rail_power) };
        let vss = if s == 0.0 { 0.0 } else { -17.0 * self.vs * a / s };
        let vd = self.vs * sd;
        let vdd = vss * sd * sd;
        let ld = if self.active { 60.0 * self.v.signum() * vd / (self.vce * self.vce) } else { 0.0 };
        let ldd = if self.active {
            60.0 * self.v.signum() * vdd / (self.vce * self.vce)
                + 120.0 * vd * vd / (self.vce * self.vce * self.vce)
        } else { 0.0 };
        let inv = 1.0 / self.limit;
        // У старой кривизны здесь умножение, у первой производной — деление.
        // Готовый корень берём лишь при равном аргументе; иначе старый расчёт.
        let q = current * inv;
        let qd = (id - q * ld) * inv;
        let qdd = (-2.0 * id * ld - q * self.limit * ldd + 2.0 * q * ld * ld) * inv * inv;
        let ratio = if q.abs() <= 1.0 { q.abs() } else { 1.0 / q.abs() };
        let (p, root, root_factor) = if ratio == self.root_ratio {
            (self.current_power, self.root, self.root_factor)
        } else {
            let p = pow16(ratio);
            let root = M::sixteenth_root(1.0 + p);
            (p, root, 1.0 / root)
        };
        let (factor, a) = if q.abs() <= 1.0 {
            (root_factor, p / (1.0 + p))
        } else {
            // Старый порядок: reciprocal / root, а не reciprocal * (1 / root).
            (ratio / root, 1.0 / (1.0 + p))
        };
        let (fd, fdd) = if q == 0.0 || a == 0.0 { (0.0, 0.0) } else {
            (-factor * a / q, factor * a * (17.0 * a - 15.0) / (q * q))
        };
        vdd * factor + 2.0 * vd * fd * qd + self.v * (fdd * qd * qd + fd * qdd)
    }
}

struct TdaEvaluation {
    f: f32,
    j: f32,
    s: f32,
    sd: f32,
    current: f32,
    law: PowerEvaluation,
}

impl TdaSetup {
    #[inline(always)]
    fn evaluate<M: PackageMath, const F: u8>(&self, r: &[f32; 8], o: &[f64; 15]) -> TdaEvaluation {
        let current = observe::<F>(7, o, r);
        let diff = observe::<F>(12, o, r);
        let free = if M::EXTRA >= 2 { self.history * self.inv + self.gain * diff } else {
            ((self.history as f64 + g::GAIN[4] * diff as f64)
                / ((g::ORDER * g::FS) as f64 + g::POLE[4])) as f32
        };
        let s = free.clamp(self.lower, self.upper);
        let ds = if free > self.lower && free < self.upper { self.gain } else { 0.0 };
        let law = power_evaluate::<M>(s, current);
        let mut j = -(law.ds * ds) * g::DERIV[12][7] as f32 - law.di * g::DERIV[7][7] as f32;
        j += 1.0;
        let curvature_free = if M::EXTRA >= 2 { free } else { self.history * self.inv + self.gain * diff };
        let sd = if curvature_free > self.lower && curvature_free < self.upper {
            self.gain * g::DERIV[12][7] as f32
        } else { 0.0 };
        TdaEvaluation { f: r[7] - law.output, j, s, sd, current, law }
    }
}

#[cfg(test)]
mod tda_reuse_tests {
    use super::*;
    use crate::FpuRootMath;

    #[test]
    fn cached_power_and_curvature_preserve_bits_at_limits() {
        for internal in [-1e8, -1000.0, -21.000002, -21.0, -16.0, -0.01, -0.0,
            0.0, 0.01, 16.0, 21.0, 21.000002, 1000.0, 1e8] {
            for current in [-8.0, -5.0, -2.5, -0.001, -0.0, 0.0, 0.001, 2.5, 5.0, 8.0] {
                let cached = power_evaluate::<FpuRootMath>(internal, current);
                let old = power::<FpuRootMath>(internal, current);
                assert_eq!([cached.output.to_bits(), cached.ds.to_bits(), cached.di.to_bits()],
                    [old.0.to_bits(), old.1.to_bits(), old.2.to_bits()], "s={internal}, i={current}");
                for sd in [-10.0, 0.0, 10.0] {
                    let a = cached.curvature::<FpuRootMath>(internal, sd, current, -0.16);
                    let b = power_curvature::<FpuRootMath>(internal, sd, current, -0.16);
                    assert_eq!(a.to_bits(), b.to_bits(), "curvature s={internal}, i={current}, sd={sd}");
                }
            }
        }
    }
}

#[inline(always)]
fn bounded_tda<M: PackageMath, const F: u8, const K: usize, const MODE: u8>(
    r: &mut [f32; 8], o: &[f64; 15], h: &[f32; 28], s: &mut [f32; 5], counts: &mut [u32; 3],
) -> (f32, u8, bool) {
    let setup = TdaSetup::new(h);
    let mut e = setup.evaluate::<M, F>(r, o);
    counts[0] += 1;
    let mut applied = 0;
    for _ in 0..K {
        counts[1] += 1;
        if !e.j.is_finite() || e.j.abs() < 1e-20 { return (f32::INFINITY, applied, false); }
        let mut delta = -e.f / e.j;
        if !delta.is_finite() { return (f32::INFINITY, applied, false); }
        if e.f.is_finite() && e.f.abs() / SCALE[7] <= TOL && voltage_small(delta, r[7]) { break; }
        let curvature = -e.law.curvature::<M>(e.s, e.sd, e.current, g::DERIV[7][7] as f32);
        let denominator = 1.0 + 0.5 * delta * curvature / e.j;
        if denominator.is_finite() && denominator > 0.0 { delta /= denominator; }
        r[7] += delta;
        if MODE >= 6 { r[7] = r[7].clamp(-21.0, 21.0); }
        applied += 1;
        counts[2] += 1;
        e = setup.evaluate::<M, F>(r, o);
        counts[0] += 1;
    }
    s[4] = e.s;
    let error = if e.f.is_finite() { e.f.abs() / SCALE[7] } else { f32::INFINITY };
    (error, applied, error.is_finite())
}
