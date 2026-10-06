from pathlib import Path
P=Path(__file__).resolve().parents[2]/'firmware/orange-dsp/src'
p=P/'bounded.rs';s=p.read_text();i=s.index('// Не больше K решений')
helper='''// Вторая производная полного закона TDA вдоль изменения выходного напряжения.
// Ограничения напряжения, тока и нагрузки те же, что в power().
fn power_curvature<M:NonlinearMath>(s:f32, sd:f32, current:f32, id:f32)->f32 {
    let (v,vs,_)=rail::<M>(s,21.0);
    let a=if s.abs()<=21.0 {let p=pow16(s/21.0);p/(1.0+p)} else {1.0/(1.0+pow16(21.0/s))};
    let vss=if s==0.0 {0.0} else {-17.0*vs*a/s};
    let vd=vs*sd;let vdd=vss*sd*sd;
    let vce=(24.0-v.abs()).max(8.0);let limit=(60.0/vce).min(5.0);
    let active=60.0/vce<5.0 && 24.0-v.abs()>8.0 && v!=0.0;
    let ld=if active {60.0*v.signum()*vd/(vce*vce)} else {0.0};
    let ldd=if active {60.0*v.signum()*vdd/(vce*vce)+120.0*vd*vd/(vce*vce*vce)} else {0.0};
    let inv=1.0/limit;let q=current*inv;
    let qd=(id-q*ld)*inv;
    let qdd=(-2.0*id*ld-q*limit*ldd+2.0*q*ld*ld)*inv*inv;
    let (factor,a)=if q.abs()<=1.0 {
        let p=pow16(q);(1.0/M::sixteenth_root(1.0+p),p/(1.0+p))
    } else {
        let reciprocal=1.0/q.abs();let p=pow16(reciprocal);
        (reciprocal/M::sixteenth_root(1.0+p),1.0/(1.0+p))
    };
    let (fd,fdd)=if q==0.0 {(0.0,0.0)} else {(-factor*a/q,factor*a*(17.0*a-15.0)/(q*q))};
    vdd*factor+2.0*vd*fd*qd+v*(fdd*qd*qd+fd*qdd)
}
fn tda_curvature<M:PackageMath,const F:u8>(r:&[f32;8],o:&[f64;15],h:&[f32;28],s:f32)->f32 {
    let diff=observe::<F>(12,o,r);let history=g::FS*h[27];let alpha=g::ORDER*g::FS;
    let inv=(1.0/(g::ORDER as f64*g::FS as f64+g::POLE[4])) as f32;
    let gain=(g::GAIN[4]/(g::ORDER as f64*g::FS as f64+g::POLE[4])) as f32;
    let free=history*inv+gain*diff;
    let sd=if free>(history-8e6)/alpha && free<(history+8e6)/alpha {gain*g::DERIV[12][7] as f32} else {0.0};
    -power_curvature::<M>(s,sd,observe::<F>(7,o,r),g::DERIV[7][7] as f32)
}
'''
s=s[:i]+helper+s[i:]
s=s.replace('        for (i,&p) in BLOCKS[B].iter().enumerate(){r[p]+=f[i];}', '''        if MODE>=5 && B==4 {
            let curvature=tda_curvature::<M,F>(r,o,h,e.s[4]);
            let denominator=1.0+0.5*f[0]*curvature/e.j[0][0];
            if denominator.is_finite() && denominator>0.0 {f[0]/=denominator;}
        }
        for (i,&p) in BLOCKS[B].iter().enumerate(){r[p]+=f[i];}''')
p.write_text(s)
p=P/'bounded_diagnostics.rs';s=p.read_text().replace('if MODE==4 && K==3 {','if MODE==5 && K==3 {').replace('    trajectory::<2,4>(); trajectory::<3,4>();','    trajectory::<2,4>(); trajectory::<3,4>();\n    trajectory::<3,5>();')
s+='''
#[test]
fn tda_second_derivative_matches_f64_differences() {
    fn reference(s:f64,i:f64)->f64 {
        let v=s/(1.0+(s/21.0).powi(16)).powf(1.0/16.0);
        let limit=(60.0/(24.0-v.abs()).max(8.0)).min(5.0);
        v/(1.0+(i/limit).powi(16)).powf(1.0/16.0)
    }
    for s in [-100.0_f64,-30.0,-23.0,-15.0,-5.0,0.0,5.0,15.0,23.0,30.0,100.0] {
        for i in [-8.0_f64,-5.0,-3.0,-1.0,0.0,1.0,3.0,5.0,8.0] {
            for sd in [0.0_f64,-9.14] {
                let id=-0.168;let h=1e-3;
                let expected=(reference(s+sd*h,i+id*h)-2.0*reference(s,i)+reference(s-sd*h,i-id*h))/(h*h);
                let actual=power_curvature::<FpuRootMath>(s as f32,sd as f32,i as f32,id as f32) as f64;
                assert!((actual-expected).abs()<2e-4*(1.0+expected.abs()),"s={s} i={i} actual={actual} expected={expected}");
            }
        }
    }
}
''';p.write_text(s)
