from pathlib import Path
R=Path(__file__).resolve().parents[2];P=R/'firmware/orange-dsp/src'
s=(P/'tracking.rs').read_text().split('#[cfg(test)]')[0]
s=s.replace('TrackingState','BoundedState')
a=s.index('// Ровно K локальных');b=s.index('impl<const K:',a)
s=s[:a]+'''// Логарифм нужен только явному начальному приближению, не закону диода.
// ln(m)=2*atanh((m-1)/(m+1)), m in [1,2), фиксированный полином без LUT.
fn seed_log(x: f32) -> f32 {
    let bits=x.to_bits();
    let exponent=((bits>>23)&255) as i32-127;
    let m=f32::from_bits((bits&0x7fffff)|(127<<23));
    let u=(m-1.0)/(m+1.0);let z=u*u;
    let p=1.0+z*(1.0/3.0+z*(1.0/5.0+z*(1.0/7.0+z*(1.0/9.0))));
    exponent as f32*core::f32::consts::LN_2+2.0*u*p
}
fn seed_sqrt(mut x: f32) -> f32 {
    #[cfg(target_arch = "arm")]
    unsafe { core::arch::asm!("vsqrt.f32 {v}, {v}",v=inout(sreg) x,options(nomem,nostack,preserves_flags)); }
    #[cfg(target_arch = "aarch64")]
    unsafe { core::arch::asm!("fsqrt {v:s}, {v:s}",v=inout(vreg) x,options(nomem,nostack,preserves_flags)); }
    x
}
fn diode_seed(current: f64, conductance: f64) -> f32 {
    let c=1.75_f64*0.02585;
    let a=(current.abs()/(conductance+5e-9/c)) as f32;
    let x=(current.abs()/5e-9) as f32;
    let b=c as f32*seed_log(x+seed_sqrt(1.0+x*x));
    let lo=a.min(b);let hi=a.max(b);
    if hi==0.0 {return 0.0;}
    let t=lo/hi;let t2=t*t;
    (lo/seed_sqrt(seed_sqrt(1.0+t2*t2))).copysign(current as f32)
}
fn clip_seed(r: &mut [f32;8],o:&[f64;15],h:&[f32;28]) {
    let gain=g::GAIN[1]/(g::ORDER as f64*g::FS as f64+g::POLE[1]);
    let history=(g::FS*h[24]) as f64/(g::ORDER as f64*g::FS as f64+g::POLE[1]);
    let origin=history+gain*(o[9]+g::DERIV[9][1]*r[1] as f64);
    let inv=1.0/(1.0-gain*g::DERIV[9][2]);
    let v0=origin*inv;let vq=gain*g::DERIV[9][3]*inv;
    r[3]=diode_seed(o[3]+g::DERIV[3][2]*v0,-g::DERIV[3][3]-g::DERIV[3][2]*vq);
    r[2]=(v0+vq*r[3] as f64) as f32;
    if r[2].abs()>13.5 {
        r[2]=r[2].clamp(-13.5,13.5);
        r[3]=diode_seed(o[3]+g::DERIV[3][2]*r[2] as f64,-g::DERIV[3][3]);
    }
}
// Не больше K решений J*delta=-F, ранний выход разрешён.
// Никакого поиска длины, повторного прохода или добавления временных шагов.
#[inline(never)]
fn bounded_block<M: PackageMath, const B: usize, const F: u8, const K: usize, const MODE: u8>(
    r: &mut [f32;8],o:&[f64;15],h:&[f32;28],s:&mut [f32;5],counts:&mut [u32;3],
) -> (f32,u8,bool) {
    if B==2 && MODE>=1 {clip_seed(r,o,h);}
    let mut e=evaluate_block::<M,B,F>(r,o,h);counts[0]+=1;
    let mut applied=0;
    for _ in 0..K {
        let mut f=e.f;let mut j=e.j;
        counts[1]+=1;
        if !solve_local::<B>(&mut j,&mut f) || !f.iter().all(|v|v.is_finite()) { return (f32::INFINITY,applied,false); }
        let small=BLOCKS[B].iter().enumerate().all(|(i,&p)|voltage_small(f[i],r[p]));
        if e.error<=TOL && small {break;}
        for (i,&p) in BLOCKS[B].iter().enumerate(){r[p]+=f[i];}
        applied+=1;counts[2]+=1;
        e=evaluate_block::<M,B,F>(r,o,h);counts[0]+=1;
    }
    for &p in BLOCKS[B] {
        if let Some(slot)=AMP.iter().position(|&v|v==p){s[slot]=e.s[slot];}
    }
    (e.error,applied,e.error.is_finite())
}

'''+s[b:]
s=s.replace('    pub direct: [u32; 6],','    pub direct: [u32; 6],\n    /// На блок: вычисления уравнений/J, решения для поправки, применённые шаги.\n    pub counts: [[u32;3];5],')
s=s.replace('            direct: [0; 6],','            direct: [0; 6],\n            counts: [[0;3];5],')
s=s.replace('if MODE >= 2 &&','if')
s=s.replace('let (error, finite) = if let Some(error)', 'let (error, applied, finite) = if let Some(error)').replace('(error, true)','(error, 0, true)')
s=s.replace('                    total += K as u8;\n                    track_block::<M, $id, F, K, MODE>(&mut r, &o, &h, &mut s)','                    bounded_block::<M, $id, F, K, MODE>(&mut r, &o, &h, &mut s, &mut self.counts[$id])')
s=s.replace('                worst = worst.max(error);','                total += applied;\n                worst = worst.max(error);')
s=s.replace('    pub fn step<M: PackageMath, const F: u8>(&mut self, input: f32) -> StepResult {','    pub fn step<M: PackageMath, const F: u8>(&mut self, input: f32) -> StepResult {\n        assert!(K<=3 && K>0);')
s=s[s.index('use super::generated_condensed'):]
s='//! Жёсткий предел до трёх попыток Newton; аналитический старт IC3B.\n'+s
s+='\n#[cfg(test)]\n#[path="bounded_diagnostics.rs"]\nmod diagnostics;\n'
(P/'bounded.rs').write_text(s)
p=P/'lib.rs';s=p.read_text().replace('pub mod tracking;','pub mod tracking;\npub mod bounded;');p.write_text(s)
s=(P/'tracking_diagnostics.rs').read_text();s=s.replace('TrackingState','BoundedState').replace('TRACKING_TRACE_DIR','BOUNDED_TRACE_DIR')
s=s[:s.index('#[test]\nfn fixed_corrections_trajectories')]+'''#[test]
fn bounded_trajectories() {
    trajectory::<3,0>();
    trajectory::<2,1>(); trajectory::<3,1>();
}
'''
s=s.replace('            above_tol += (!ar.converged) as usize;', '''            above_tol += (!ar.converged) as usize;
            assert!(ar.iterations <= 5*K as u8);
            assert_eq!(a.retries,0);''')
s=s.replace('"null".into()))','"null".into()))')
(P/'bounded_diagnostics.rs').write_text(s)
