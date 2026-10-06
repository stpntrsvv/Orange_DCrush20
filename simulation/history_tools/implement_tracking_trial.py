from pathlib import Path
R=Path(__file__).resolve().parents[2]
p=R/'firmware/orange-dsp/src'
s=(p/'packed.rs').read_text().split('#[cfg(test)]\nmod tests')[0]
a=s.index('pub trait PackageMath'); b=s.index('#[inline(always)]\nfn observe',a)
s=s[:a]+'pub use super::packed::{PackageMath, ExtraMath};\n\n'+s[b:]
a=s.index('pub struct FastMath');b=s.index('#[inline(always)]\nfn solve_local',a);s=s[:a]+s[b:]
s=s.replace('pub struct PackedState {','pub struct TrackingState<const K: usize, const MODE: u8 = 0> {').replace('impl Default for PackedState {','impl<const K: usize, const MODE: u8> Default for TrackingState<K, MODE> {').replace('impl PackedState {','impl<const K: usize, const MODE: u8> TrackingState<K, MODE> {')
a=s.index('#[inline(never)]\nfn solve_block');b=s.index('impl<const K:',a)
s=s[:a]+'''// Ровно K локальных поправок; без поиска шага, повтора и доведения до допуска.
#[inline(never)]
fn track_block<M: PackageMath, const B: usize, const F: u8, const K: usize, const MODE: u8>(
    r: &mut [f32; 8], o: &[f64; 15], h: &[f32; 28], s: &mut [f32; 5],
) -> (f32, bool) {
    for _ in 0..K {
        let e = evaluate_block::<M, B, F>(r, o, h);
        let mut f = e.f;
        let mut j = e.j;
        if !solve_local::<B>(&mut j, &mut f) || !f.iter().all(|v| v.is_finite()) {
            return (f32::INFINITY, false);
        }
        for (i, &p) in BLOCKS[B].iter().enumerate() { r[p] += f[i]; }
    }
    let e = evaluate_block::<M, B, F>(r, o, h);
    for &p in BLOCKS[B] {
        if let Some(slot) = AMP.iter().position(|&v| v == p) { s[slot] = e.s[slot]; }
    }
    (e.error, e.error.is_finite())
}

'''+s[b:]
a=s.index('        macro_rules! block {',s.index('pub fn step'));b=s.index('        block!(0);',a)
s=s[:a]+'''        macro_rules! block {
            ($id:literal) => {{
                let (error, finite) = track_block::<M, $id, F, K, MODE>(&mut r, &o, &h, &mut s);
                total += K as u8;
                worst = worst.max(error);
                if !finite {
                    return StepResult { output_v: self.ports[7], residual_norm: f32::INFINITY,
                        iterations: total, converged: false };
                }
            }};
        }
'''+s[b:]
s=s.replace('converged: true,','converged: worst <= TOL,')
s=s.replace('    /// При неуспехе состояние не продвигается, ошибка явно возвращается.\n    /// Это диагностическое поведение; гарантированный realtime ещё не доказан.','    /// Продвигает любое конечное приближение вместе с собственной памятью.\n    /// converged означает только локальную невязку <= TOL, не старую проверку поправки.\n    /// При NaN/Inf/вырождении шаг не продвигается; это отдельный численный отказ.')
s='//! Опыт: ограниченное уточнение решения между временными шагами.\n'+s
s+='\n#[cfg(test)]\n#[path = "tracking_diagnostics.rs"]\nmod diagnostics;\n'
(p/'tracking.rs').write_text(s)
l=(p/'lib.rs').read_text();l=l.replace('pub mod analytic;', 'pub mod analytic;\npub mod tracking;');(p/'lib.rs').write_text(l)
s=(p/'scalar_diagnostics.rs').read_text().replace('    assert!(rr.iter().all(|v| v.is_finite()));','')
s=s.replace('#[test]\nfn paired_independent_trajectories() {','fn trajectory<const K: usize, const MODE: u8>() {')
s=s.replace('"SCALAR_TRACE_DIR"','"TRACKING_TRACE_DIR"').replace('.map(std::path::PathBuf::from);','.map(|p| std::path::PathBuf::from(p).join(std::format!("m{MODE}_k{K}/host")));')
s=s.replace('ScalarState::default()','TrackingState::<K, MODE>::default()')
s=s.replace('        for line in text.lines() {','        let (mut above_tol, mut failed_at) = (0usize, None);\n        for (index,line) in text.lines().enumerate() {')
s=s.replace('            assert!(ar.converged && br.converged);','            assert!(br.converged);\n            if a.steps as usize != index+1 { failed_at = Some(index); break; }\n            above_tol += (!ar.converged) as usize;')
s=s.replace('            assert!(af < 1e-4 && bf < 1e-4);','            assert!(bf < 1e-4);')
a=s.index('        assert!(\n            (err / energy)');b=s.index('        if let Some(dir)',a);s=s[:a]+s[b:]
s=s.replace('std::format!("{:?}\\n", a.scalar_counts)','std::format!("{{\\"steps\\":{},\\"above_tol\\":{},\\"failed_at\\":{}}}\\n",a.steps,above_tol,failed_at.map(|i|i.to_string()).unwrap_or("null".into()))')
s=s.replace('counts={:?}', 'above_tol={above_tol} failed_at={failed_at:?} RMS={} peak={peak} scaled={scaled}').replace('            a.scalar_counts','            (err/energy).sqrt()')
s+='\n#[test]\nfn fixed_corrections_trajectories() {\n trajectory::<1,0>(); trajectory::<2,0>(); trajectory::<3,0>();\n}\n'
(p/'tracking_diagnostics.rs').write_text(s)
