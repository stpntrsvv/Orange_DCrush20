"""Первичное создание отдельной ветви; история разработки, не генератор коэффициентов."""
from pathlib import Path
root=Path(__file__).resolve().parents[1]
p=root/'firmware/orange-dsp/src/analytic.rs'
s=(root/'firmware/orange-dsp/src/scalar.rs').read_text().replace('ScalarState','AnalyticState').replace('scalar_diagnostics.rs','analytic_diagnostics.rs')
s=s.replace('//! S8: IC3B решается скалярно при большой первой поправке; иначе путь P7.','//! Аналитические приближения без LUT; отдельная экспериментальная ветвь S8.')
s=s.replace('//! Физические законы, BDF2/96k, смешанная точность и конечные допуски сохранены.','//! A0: полином exp с собственной производной; A1: также упрощённая форма насыщения.')
s=s.replace('M::EXTRA == 2','M::EXTRA >= 10').replace('Scalar experiment requires P7 precision and math','Analytic experiment requires precision 5 and analytic math')
s=s.replace('pub use super::packed::{ExtraMath, PackageMath};','pub use super::packed::PackageMath;\n'+'''pub struct AnalyticMath<const MODE:u8>;
impl<const MODE:u8> NonlinearMath for AnalyticMath<MODE> {
    fn exp(x:f32)->f32 { exp_pair(x).0 }
    fn sinh_cosh(x:f32)->(f32,f32) { let (p,dp)=exp_pair(x);let(n,dn)=exp_pair(-x);((p-n)*0.5,(dp+dn)*0.5) }
    fn sixteenth_root(x:f32)->f32 { super::FpuRootMath::sixteenth_root(x) }
}
impl<const MODE:u8> PackageMath for AnalyticMath<MODE> {const EXTRA:u8=10+MODE;}
// Taylor-4 на приведённом аргументе; производная именно полинома, не exp.
#[inline(always)]
fn exp_pair(x:f32)->(f32,f32) {
    let x=x.clamp(-80.0,80.0);
    let a=x*core::f32::consts::LOG2_E;
    let n=if a>=0.0 {(a+0.5) as i32} else {(a-0.5) as i32};
    let r=x-n as f32*core::f32::consts::LN_2;
    let scale=f32::from_bits(((n+127) as u32)<<23);
    let d=1.0+r*(1.0+r*(0.5+r*(1.0/6.0)));
    let v=1.0+r*(1.0+r*(0.5+r*(1.0/6.0+r*(1.0/24.0))));
    (scale*v,scale*d)
}
#[inline(always)]
fn diode(q:f32)->(f32,f32) {
    let scale=1.75_f32*0.02585;
    let a=q/scale;
    let (p,dp)=exp_pair(a.abs());
    let inv=1.0/p;
    let value=2.5e-9*(p-inv)*q.signum();
    let derivative=if a.abs()<80.0 {2.5e-9*dp*(1.0+inv*inv)/scale} else {0.0};
    (value,derivative)
}
// C1-переход: линейный участок, одна парабола, постоянный предел.
// w выбрано по совпадению исходного закона при |s|=swing, не по слышимости.
#[inline(always)]
fn knee(t:f32)->(f32,f32) {
    const W:f32=0.1695868772057052;
    if t<=1.0-W {(t,1.0)} else if t>=1.0+W {(1.0,0.0)}
    else {let a=1.0+W-t;(1.0-a*a*(0.25/W),a*(0.5/W))}
}
fn simple_rail(s:f32,swing:f32)->(f32,f32,f32) {
    if swing<=0.0 {return(0.0,0.0,0.0);}
    let t=s.abs()/swing;let(y,d)=knee(t);
    (s.signum()*swing*y,d,s.signum()*(y-t*d))
}
''')
s=s.replace('fn rail<M: NonlinearMath>', 'fn rail<M: PackageMath>')
s=s.replace('fn power<M: NonlinearMath>', 'fn power<M: PackageMath>')
s=s.replace('    if swing <= 0.0 {\n        return (0.0, 0.0, 0.0);\n    }','    if M::EXTRA == 11 {return simple_rail(s,swing);}\n    if swing <= 0.0 {\n        return (0.0, 0.0, 0.0);\n    }',1)
s=s.replace('    let (factor, di, dl) = if ratio <= 1.0 {','''    let (factor, di, dl) = if M::EXTRA == 11 {
        if ratio<=1.0-0.1695868772057052 {(1.0,0.0,0.0)} else {
            let (y,d)=knee(ratio);let f=y/ratio;let df=(d-f)/ratio;
            (f,df*current.signum()/limit,-df*ratio/limit)
        }
    } else if ratio <= 1.0 {''')
s=s.replace('    if p == 0 || p == 3 {','''    if p == 3 {
        let(value,d)=diode(r[3]);j[3]+=d;
        return(value-current,j,0.0);
    }
    if p == 0 || p == 3 {''')
start=s.index('        let a = q / scale;',s.index('fn solve_clip'))
end=s.index('        r[3] = q;',start)
s=s[:start]+'        let (diode,gd)=diode(q);\n'+s[end:]
p.write_text(s)
lib=root/'firmware/orange-dsp/src/lib.rs';s=lib.read_text();s=s.replace('pub mod scalar;','pub mod scalar;\npub mod analytic;');lib.write_text(s)
