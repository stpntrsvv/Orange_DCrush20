"""Воспроизводимый исходный вариант R1 из сохранённого P7; не генератор коэффициентов."""
from pathlib import Path
root=Path(__file__).resolve().parents[2]
s=(root/'simulation/experiments/repeated_work/baseline/packed.rs').read_text()
s=s[:s.index('#[cfg(test)]')]
s=s.replace('//! Пакетные сокращения; исходный CondensedState сохранён для парного контроля.', '//! R1: сокращения повторной работы поверх P7. Исходный packed.rs сохранён.')
# Эти типы не меняют P7: отдельный модуль, тот же формат памяти.
a=s.index('pub trait PackageMath:');b=s.index('#[inline(always)]\nfn observe')
s=s[:a]+'''pub use super::packed::{PackageMath, ExtraMath};
#[derive(Clone, Copy, Default)]
struct Pole { history: f32, free_history: f32, lower: f32, upper: f32 }
#[inline(always)]
fn prepare_poles(h: &[f32;28]) -> [Pole;5] {
    core::array::from_fn(|slot| {
        let history = g::FS * h[23+slot];
        let slew = if slot < 4 {16e6} else {8e6};
        Pole { history,
            free_history: history * (1.0 / (g::ORDER as f64*g::FS as f64+g::POLE[slot])) as f32,
            lower: (history-slew)/(g::ORDER*g::FS),
            upper: (history+slew)/(g::ORDER*g::FS) }
    })
}
// Только уже решённые блоки. Сохраняется порядок сложения P7 в f64.
#[inline(always)]
fn prepare_block<const B:usize>(o:&mut [f64;15], r:&[f32;8]) {
    match B {
        1 => o[8] += g::DERIV[8][0]*r[0] as f64,
        2 => o[9] += g::DERIV[9][1]*r[1] as f64,
        3 => {o[10] += g::DERIV[10][2]*r[2] as f64; o[10] += g::DERIV[10][3]*r[3] as f64;},
        4 => {o[12] += g::DERIV[12][5]*r[5] as f64; o[12] += g::DERIV[12][6]*r[6] as f64;},
        _ => {}
    }
}
''' + s[b:]
a=s.index('pub struct FastMath');b=s.index('#[inline(always)]\nfn voltage_small')
s=s[:a]+s[b:]
s=s.replace('super::generated_packed::observe::<F>(i, o, r)','super::generated_repeated::observe(i, o, r)')
s=s.replace('h: &[f32; 28]', 'poles: &[Pole; 5]')
s=s.replace('(g::FS * h[23 + slot]) as f64', 'poles[slot].history as f64')
s=s.replace('if j != P {', 'if j != P && j >= (if P==1 {1} else if P==7 {7} else {4}) {')
s=s.replace('let old = *r;', 'let old = core::array::from_fn::<_,3,_>(|i| if i<BLOCKS[B].len() {r[BLOCKS[B][i]]} else {0.0});')
s=s.replace('*r = old;', 'for (i, &p) in BLOCKS[B].iter().enumerate() { r[p] = old[i]; }')
# h is only a name in function arguments/calls until step; targeted replace.
a=s.index('fn direct_block');b=s.index('// Та же функция')
chunk=s[a:b].replace('(r, o, h)', '(r, o, poles)')
chunk=chunk.replace('equation::<M, 1, F>', 'equation::<M, 1, F, true>').replace('equation::<M, 7, F>', 'equation::<M, 7, F, true>')
# First residual-only direct validation, then derivatives only when needed.
for p in [1,7]:
 old=f'let (f, j, state) = equation::<M, {p}, F, true>(r, o, poles);'
 new=f'''let (f, _, state) = equation::<M, {p}, F, false>(r, o, poles);
            let j = if f.is_finite() && f.abs()/SCALE[{p}] <= TOL {{
                equation::<M, {p}, F, true>(r,o,poles).1
            }} else {{[0.0;8]}};'''
 chunk=chunk.replace(old,new)
chunk=chunk.replace('let e = evaluate_block::<M, 3, F>(r, o, poles);','''let trial = evaluate_block::<M, 3, F, 3, false>(r,o,poles);
                if trial.error > TOL { for (i,&p) in BLOCKS[B].iter().enumerate() {r[p]=old[i];} return None; }
                let e = evaluate_block::<M, 3, F, 3, true>(r, o, poles);''')
chunk=chunk.replace('s[2] = e.s[2];','s[2] = e.s[0];').replace('s[3] = e.s[3];','s[3] = e.s[1];')
s=s[:a]+chunk+s[b:]
# Replace rail/power with inline split derivative functions, retain value arithmetic.
s=s.replace('fn rail<M: NonlinearMath>', '#[inline(always)]\nfn rail<M: NonlinearMath, const J: bool>')
s=s.replace('return super::smooth_rail_derivatives::<M>(s, swing);','''let ratio = s / swing;
        let p = pow16(ratio.abs());
        let factor = 1.0 / M::sixteenth_root(1.0+p);
        if !J { return (s*factor,0.0,0.0); }
        let common = factor/(1.0+p);
        return (s*factor, common, s*p/swing*common);''')
s=s.replace('let common = factor / (1.0 + p);', 'if !J { return (s.signum()*swing*factor,0.0,0.0); }\n    let common = factor / (1.0 + p);')
s=s.replace('fn power<M: NonlinearMath>', '#[inline(always)]\nfn power<M: NonlinearMath, const J: bool>')
s=s.replace('rail::<M>(s, 21.0)', 'rail::<M,J>(s, 21.0)')
s=s.replace('let limit = (60.0 / vce).min(5.0);','let raw_limit = 60.0 / vce;\n    let limit = raw_limit.min(5.0);')
s=s.replace('if 60.0 / vce < 5.0', 'if raw_limit < 5.0')
s=s.replace('let c = f / (1.0 + p);', 'if !J { return (v*f,0.0,0.0); }\n        let c = f / (1.0 + p);',1)
idx=s.index('let q = limit / current.abs();')
s=s[:idx]+s[idx:].replace('let c = f / (1.0 + p);', 'if !J { return (v*(q*f),0.0,0.0); }\n        let c = f / (1.0 + p);',1)
s=s.replace('pub struct PackedState', 'pub struct RepeatedState').replace('impl Default for PackedState', 'impl Default for RepeatedState').replace('impl PackedState', 'impl RepeatedState')
s=s.replace('fn equation<M: PackageMath, const P: usize, const F: u8>', 'fn equation<M: PackageMath, const P: usize, const F: u8, const J: bool>')
a=s.index('        let slew =',s.index('fn equation'));b=s.index('        let s = free.clamp',a)
s=s[:a]+'''        let alpha = g::ORDER*g::FS;
        let gain = (g::GAIN[slot]/(alpha as f64+g::POLE[slot])) as f32;
        let free = poles[slot].free_history + gain*diff;
        let lower = poles[slot].lower;
        let upper = poles[slot].upper;
'''+s[b:]
s=s.replace('rail::<M>(s, swing)', 'rail::<M,J>(s, swing)').replace('power::<M>(s, current)', 'power::<M,J>(s, current)')
s=s.replace('        for k in 0..8 {\n            j[k] = -(vs * ds)', '        if !J { return (r[p]-v,j,s); }\n        for k in 0..8 {\n            j[k] = -(vs * ds)')
s=s.replace('        j[p] += 2.5e-9 * (ep + en) / scale;', '        if J { j[p] += 2.5e-9 * (ep + en) / scale; }')
s=s.replace('    for k in 0..8 {\n        j[k] -= r[6]', '    if !J { return (conductance*r[6]-current,j,0.0); }\n    for k in 0..8 {\n        j[k] -= r[6]')
s=s.replace('a: &mut [[f32; 3]; 3], b: &mut [f32; 3]', 'a: &mut [[f32; N]; N], b: &mut [f32; N]')
s=s.replace('struct Evaluation {\n    f: [f32; 3],\n    j: [[f32; 3]; 3],\n    s: [f32; 5],','struct Evaluation<const N:usize> {\n    f: [f32; N],\n    j: [[f32; N]; N],\n    s: [f32; N],')
s=s.replace('fn evaluate_block<M: PackageMath, const B: usize, const F: u8>', 'fn evaluate_block<M: PackageMath, const B: usize, const F: u8, const N:usize, const J:bool>')
s=s.replace(') -> Evaluation {', ') -> Evaluation<N> {').replace('f: [0.0; 3],\n        j: [[0.0; 3]; 3],\n        s: [0.0; 5],','f: [0.0; N],\n        j: [[0.0; N]; N],\n        s: [0.0; N],')
s=s.replace('equation::<M, $p, F>(r, o, h)', 'equation::<M, $p, F, J>(r, o, poles)')
s=s.replace('e.s[slot] = s;', 'let _ = slot; e.s[$i] = s;')
s=s.replace('fn solve_block<M: PackageMath, const B: usize, const F: u8>', 'fn solve_block<M: PackageMath, const B: usize, const F: u8, const N: usize>')
s=s.replace('evaluate_block::<M, B, F>(r, o, h)', 'evaluate_block::<M, B, F, N, true>(r, o, poles)')
s=s.replace('solve_local::<B>(&mut j, &mut f)', 'solve::<N>(&mut j, &mut f)')
s=s.replace('''                let mut trial = *r;
                for (i, &p) in block.iter().enumerate() {
                    trial[p] += factor * f[i];
                }
                let t = evaluate_block::<M, B, F>(&trial, o, h);
                if t.error < e.error {
                    *r = trial;
                    e = t;''','''                for (i,&p) in block.iter().enumerate() { r[p] = old[i]+factor*f[i]; }
                let t = evaluate_block::<M,B,F,N,false>(r,o,poles);
                if t.error < e.error {
                    e = evaluate_block::<M,B,F,N,true>(r,o,poles);''')
s=s.replace('            for back in 0..12 {', '            let old: [f32;N] = core::array::from_fn(|i| r[block[i]]);\n            for back in 0..12 {')
s=s.replace('            done = e.error <= TOL', '            for (i,&p) in block.iter().enumerate() {r[p]=old[i];}\n            done = e.error <= TOL')
s=s.replace('        for &p in block {', '        for (i,&p) in block.iter().enumerate() {').replace('s[slot] = e.s[slot];','s[slot] = e.s[i];')
s=s.replace('let o = if F != 0', 'let mut o = if F != 0')
s=s.replace('        let mut r = self.ports;', '        let poles = prepare_poles(&h);\n        let mut r = self.ports;')
s=s.replace('($id:literal) => {{', '($id:literal,$n:literal) => {{\n                prepare_block::<$id>(&mut o,&r);')
s=s.replace('(&mut r, &o, &h, &mut s)', '(&mut r, &o, &poles, &mut s)')
s=s.replace('solve_block::<M, $id, F>', 'solve_block::<M, $id, F, $n>')
for i,n in enumerate([1,1,2,3,1]):s=s.replace(f'block!({i});',f'block!({i},{n});')
a=s.index('        let caps =');b=s.index('        if !next.iter()',a)
s=s[:a]+'''        let mut next = [0.0;28];
        super::generated_repeated::update_into(&h,input,&r,&mut next);
        next[23..].copy_from_slice(&s);
'''+s[b:]
s=s.replace('        let h = self.history();','        assert!(F==5 && M::EXTRA==2, "R1 uses P7 precision and math");\n        let h = self.history();')
(root/'firmware/orange-dsp/src/repeated.rs').write_text(s)
