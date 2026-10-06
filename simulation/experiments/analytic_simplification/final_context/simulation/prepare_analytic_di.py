from pathlib import Path
r=Path(__file__).resolve().parents[1]
s=(r/'firmware/orange-dsp/examples/solver_di.rs').read_text()
s=s.replace('SOLVER_DI_DIR','ANALYTIC_DI_DIR').replace('solver_time/long_di','analytic_simplification/long_di')
s=s.replace('let mut candidate = orange_dsp::scalar::ScalarState::default();','let mut candidate = orange_dsp::analytic::AnalyticState::default();\n        let mut physical = orange_dsp::analytic::AnalyticState::default();')
s=s.replace('let mut fail = [0u64; 2];','let mut fail = [0u64; 3];').replace('let mut maxiter = [0u8; 2];','let mut maxiter = [0u8; 3];')
s=s.replace('        let mut output_peak = 0.0_f32;', '        let mut physical_peak=0.0_f32;\n        let mut physical_energy=0.0_f64;\n        let mut physical_memory=[0.0_f32;28];\n        let mut output_peak = 0.0_f32;')
s=s.replace('candidate.step::<ExtraMath<FpuRootMath, 2>, 5>','candidate.step::<orange_dsp::analytic::AnalyticMath<0>, 5>')
s=s.replace('                let b = base.step', '                let c=physical.step::<orange_dsp::analytic::AnalyticMath<1>,5>(u);\n                let b = base.step')
s=s.replace('[&a, &b].iter()','[&a, &b, &c].iter()')
s=s.replace('                let e = a.output_v', '                physical_peak=physical_peak.max((c.output_v-b.output_v).abs());\n                physical_energy+=(c.output_v as f64-b.output_v as f64).powi(2);\n                for i in 0..28 {physical_memory[i]=physical_memory[i].max((physical.current[i]-base.current[i]).abs());}\n                let e = a.output_v')
s=s.replace('[a.output_v, b.output_v]', '[a.output_v, b.output_v, c.output_v]')
s=s.replace('        assert_eq!(fail, [0, 0]);','''        println!("A1 level={level} peak_vs_P7={physical_peak} relative_rms={} memory_peak={physical_memory:?} retries={}",(physical_energy/energy[1]).sqrt(),physical.retries);
        assert_eq!(fail, [0, 0, 0]);''')
(r/'firmware/orange-dsp/examples/analytic_di.rs').write_text(s)
