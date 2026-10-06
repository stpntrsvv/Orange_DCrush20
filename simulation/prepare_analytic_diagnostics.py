from pathlib import Path
root=Path(__file__).resolve().parents[1]
s=(root/'firmware/orange-dsp/src/scalar_diagnostics.rs').read_text()
s=s.replace('type Math = ExtraMath<FpuRootMath, 2>;','type BaseMath = crate::packed::ExtraMath<FpuRootMath, 2>;')
s=s.replace('#[test]\nfn paired_independent_trajectories() {','''#[test]
fn analytic_trajectories() { run::<0>();run::<1>(); }
fn run<const MODE:u8>() {''')
s=s.replace('SCALAR_TRACE_DIR','ANALYTIC_TRACE_DIR').replace('.map(std::path::PathBuf::from);','.map(|x|std::path::PathBuf::from(x).join(std::format!("a{MODE}/host")));')
s=s.replace('ScalarState','AnalyticState').replace('a.step::<Math, 5>','a.step::<AnalyticMath<MODE>, 5>').replace('b.step::<Math, 5>','b.step::<BaseMath, 5>')
s=s.replace('let (mut mismatch, mut memory_peak, mut output_peak)', 'let mut failures=0;\n        let mut fullnorm=0.0_f32;\n        let (mut mismatch, mut memory_peak, mut output_peak)')
s=s.replace('assert!(ar.converged && br.converged);','failures+=(!ar.converged) as usize;\n            assert!(br.converged);')
s=s.replace('assert!(af < 1e-4 && bf < 1e-4);','fullnorm=fullnorm.max(af);\n            assert!(bf < 1e-4);')
start=s.index('        assert!(\n            (err / energy)')
end=s.index('        if let Some(dir)',start)
s=s[:start]+'''        std::println!("A{MODE} {name}: failures={failures} peak={peak} relative_rms={} scaled={scaled} old_full_residual={fullnorm} retries={}",(err/energy).sqrt(),a.retries);
        assert!(peak.is_finite()&&scaled.is_finite());
'''+s[end:]
s += '''
#[test]
fn analytic_law_derivatives() {
    for i in -1500..=1500 {
        let s=i as f32*0.02;let h=0.001;
        let (_,ds,dw)=simple_rail(s,13.5);
        let ds_fd=(simple_rail(s+h,13.5).0-simple_rail(s-h,13.5).0)/(2.0*h);
        let dw_fd=(simple_rail(s,13.5+h).0-simple_rail(s,13.5-h).0)/(2.0*h);
        assert!((ds-ds_fd).abs()<0.004&&(dw-dw_fd).abs()<0.004);
    }
    // Независимая разность нового закона TDA, включая зависимость лимита от напряжения.
    for s in [-30.0,-21.0,-18.0,-10.0,0.0,10.0,18.0,21.0,30.0] {
        for i in [-6.0,-4.8,-3.0,-1.0,0.0,1.0,3.0,4.8,6.0] {
            let(_,ds,di)=power::<AnalyticMath<1>>(s,i);let h=0.001;
            let a=(power::<AnalyticMath<1>>(s+h,i).0-power::<AnalyticMath<1>>(s-h,i).0)/(2.0*h);
            let b=(power::<AnalyticMath<1>>(s,i+h).0-power::<AnalyticMath<1>>(s,i-h).0)/(2.0*h);
            assert!((ds-a).abs()<0.005&&(di-b).abs()<0.005,"s={s} i={i} ds={ds} a={a} di={di} b={b}");
        }
    }
}
'''
(root/'firmware/orange-dsp/src/analytic_diagnostics.rs').write_text(s)
