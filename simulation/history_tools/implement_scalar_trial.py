"""Снимок создания первого скалярного опыта; P7 не изменяется."""
from pathlib import Path
root=Path(__file__).resolve().parents[2]
p=root/'firmware/orange-dsp/src'
s=(p/'packed.rs').read_text().split('#[cfg(test)]\nmod tests')[0]
s=s.replace('PackedState','ScalarState')
a=s.index('pub trait PackageMath:');b=s.index('#[inline(always)]\nfn solve_local')
s=s[:a]+'''pub use super::packed::{PackageMath, ExtraMath};
#[inline(always)]
fn observe<const F: u8>(i: usize, o: &[f64; 15], r: &[f32; 8]) -> f32 {
    super::generated_packed::observe::<F>(i, o, r)
}

'''+s[b:]
s=s.replace('pub direct: [u32; 6],','pub direct: [u32; 6],\n    pub scalar_counts: [u32; 3],')
s=s.replace('direct: [0; 6],','direct: [0; 6],\n            scalar_counts: [0; 3],')
s=s.replace('''let (mut error, iterations, mut ok) =
                        solve_block::<M, $id, F>(&mut r, &o, &h, &mut s);''','''let (mut error, iterations, mut ok) = if $id == 2 {
                        self.scalar_counts[0] += 1;
                        let result = solve_clip::<M, F>(&mut r, &o, &h, &mut s);
                        self.scalar_counts[1] += result.1 as u32;
                        if result.2 { result } else {
                            self.scalar_counts[2] += 1;
                            let retry = solve_block::<M, $id, F>(&mut r, &o, &h, &mut s);
                            (retry.0, result.1 + retry.1, retry.2)
                        }
                    } else { solve_block::<M, $id, F>(&mut r, &o, &h, &mut s) };''')
s+='''
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
'''
(p/'scalar.rs').write_text(s)
l=(p/'lib.rs').read_text();l='pub mod scalar;\n'+l if not l.startswith('#!') else l.replace('pub mod packed;', 'pub mod packed;\npub mod scalar;')
assert 'pub mod scalar;' in l
(p/'lib.rs').write_text(l)
# Reuse trace contract, retaining full independent residual checks.
s=(p/'repeated_diagnostics.rs').read_text().split('#[test]\nfn cached_law')[0]
s=s.replace('super::diagnostic_laws::rail::<FpuRootMath, true>','super::rail::<FpuRootMath>').replace('super::diagnostic_laws::power::<FpuRootMath, true>','super::power::<FpuRootMath>')
s=s.replace('RepeatedState','ScalarState').replace('REPEATED_TRACE_DIR','SCALAR_TRACE_DIR')
s=s.replace('        let mut instrumented = ScalarState::default();\n        let mut counts = Counters::default();','')
a=s.index('            let cr =');b=s.index('            mismatch +=',a)
s=s[:a]+'''            assert!(ar.converged && br.converged, "{name} step {} candidate {} base {}", a.steps, ar.converged, br.converged);
'''+s[b:]
s=s.replace('counts.blocks','a.scalar_counts')
(p/'scalar_diagnostics.rs').write_text(s)
