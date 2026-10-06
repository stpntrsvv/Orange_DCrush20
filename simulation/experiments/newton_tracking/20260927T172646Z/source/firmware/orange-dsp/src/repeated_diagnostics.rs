extern crate std;
use super::*;
use crate::FpuRootMath;
use std::{io::Write, vec::Vec};
type Math = ExtraMath<FpuRootMath, 2>;

fn recover(h: &[f32; 28], input: f32, r: &[f32; 8], memory: &[f32; 28]) -> [f32; 56] {
    let mut s = [0.0; 5];
    s.copy_from_slice(&memory[23..]);
    g::recover(h, input, r, &s)
}
fn residual(x: &[f32; 56], old: &[f32; 56], prev: &[f32; 56], input: f32) -> (f32, f32) {
    let h = core::array::from_fn(|i| 2.0 * old[i] - 0.5 * prev[i]);
    let mut n = crate::evaluate_nonlinear::<FpuRootMath>(x);
    for slot in 0..4 {
        let (sw, di) = opamp_swing_derivative(x[46 + slot]);
        let (v, ds, dw) = super::diagnostic_laws::rail::<FpuRootMath, true>(x[50 + slot], sw);
        n.op_laws[slot] = (v, ds, dw * di);
    }
    n.power_law = super::diagnostic_laws::power::<FpuRootMath, true>(x[55], x[54]);
    let rr = crate::assemble_residual_evaluated(x, &h, input, 96000.0, 1.5, &n);
    assert!(rr.iter().all(|v| v.is_finite()));
    (
        crate::physical_residual_norm(&rr),
        rr[..43].iter().map(|v| v.abs()).fold(0.0, f32::max),
    )
}
#[test]
fn paired_traces_and_counter_equivalence() {
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../..");
    let dir = std::env::var("REPEATED_TRACE_DIR")
        .ok()
        .map(std::path::PathBuf::from);
    if let Some(dir) = &dir {
        std::fs::create_dir_all(dir).unwrap();
    }
    for (name, file) in [
        ("triangle100", "absolute_ports/reference_100mv.txt"),
        ("triangle1000", "absolute_ports/reference_1000mv.txt"),
        ("noise250", "architecture_decision/reference_noise.txt"),
        ("step025", "batched_optimization/reference_step025.txt"),
        ("step1", "batched_optimization/reference_step1.txt"),
        ("multitone", "batched_optimization/reference_multitone.txt"),
        ("output0", "repeated_work/reference_output0.txt"),
        ("output1", "repeated_work/reference_output1.txt"),
        ("output2", "repeated_work/reference_output2.txt"),
    ] {
        let text = std::fs::read_to_string(root.join("simulation/experiments").join(file)).unwrap();
        let mut a = RepeatedState::default();
        let mut b = crate::packed::PackedState::default();
        let mut instrumented = RepeatedState::default();
        let mut counts = Counters::default();
        let (mut ax, mut ap, mut bx, mut bp) = ([0.0; 56], [0.0; 56], [0.0; 56], [0.0; 56]);
        let mut out = dir.as_ref().map(|d| {
            std::io::BufWriter::new(
                std::fs::File::create(d.join(std::format!("{name}.bin"))).unwrap(),
            )
        });
        let (mut mismatch, mut memory_peak, mut output_peak) = (0usize, 0.0_f32, 0.0_f32);
        for line in text.lines() {
            let v: Vec<f64> = line
                .split_whitespace()
                .map(|x| x.parse().unwrap())
                .collect();
            let input = v[0] as f32;
            let ah = a.history();
            let bh = b.history();
            let ar = a.step::<Math, 5>(input);
            let br = b.step::<Math, 5>(input);
            let cr = instrumented.step_profiled::<Math, 5>(input, &mut counts);
            assert!(ar.converged && br.converged && cr.converged);
            assert_eq!(
                a.current.map(f32::to_bits),
                instrumented.current.map(f32::to_bits)
            );
            assert_eq!(
                a.previous.map(f32::to_bits),
                instrumented.previous.map(f32::to_bits)
            );
            assert_eq!(
                a.ports.map(f32::to_bits),
                instrumented.ports.map(f32::to_bits)
            );
            assert_eq!(ar.output_v.to_bits(), cr.output_v.to_bits());
            assert_eq!(ar.residual_norm.to_bits(), cr.residual_norm.to_bits());
            assert_eq!(ar.iterations, cr.iterations);
            assert_eq!(a.direct, instrumented.direct);
            assert_eq!(a.retries, instrumented.retries);
            mismatch += (ar.output_v.to_bits() != br.output_v.to_bits()) as usize;
            output_peak = output_peak.max((ar.output_v - br.output_v).abs());
            for i in 0..28 {
                memory_peak = memory_peak.max((a.current[i] - b.current[i]).abs());
            }
            let an = recover(&ah, input, &a.ports, &a.current);
            let bn = recover(&bh, input, &b.ports, &b.current);
            let (af, ak) = residual(&an, &ax, &ap, input);
            let (bf, bk) = residual(&bn, &bx, &bp, input);
            assert!(af < 1e-4 && bf < 1e-4);
            if let Some(out) = &mut out {
                // 236 f64 per record. Fixed order declared in analyze_repeated.py.
                let mut row = std::vec![
                    v[0],
                    v[32],
                    ar.output_v as f64,
                    br.output_v as f64,
                    ar.residual_norm as f64,
                    br.residual_norm as f64,
                    ar.iterations as f64,
                    br.iterations as f64,
                    af as f64,
                    bf as f64,
                    ak as f64,
                    bk as f64
                ];
                for slice in [
                    &an[..],
                    &bn[..],
                    &a.current[..],
                    &b.current[..],
                    &a.previous[..],
                    &b.previous[..],
                ] {
                    row.extend(slice.iter().map(|&v| v as f64));
                }
                assert_eq!(row.len(), 236);
                for value in row {
                    out.write_all(&value.to_le_bytes()).unwrap();
                }
            }
            ap = ax;
            ax = an;
            bp = bx;
            bx = bn;
        }
        if let Some(dir) = &dir {
            std::fs::write(
                dir.join(std::format!("{name}_counts.json")),
                std::format!("{:?}\n", counts.blocks),
            )
            .unwrap();
        }
        std::println!(
            "{name}: steps={} output_different={mismatch} peak_vs_P7={output_peak} memory_peak_vs_P7={memory_peak} counts={:?}",
            a.steps,
            counts.blocks
        );
    }
}

#[test]
fn cached_law_values_and_derivatives_match_original_laws() {
    // Broad device inputs, including rail/current limit transitions and deep saturation.
    for state in [
        -1e10_f32, -1000.0, -100.0, -21.0001, -21.0, -13.5, -1.0, 0.0, 1.0, 13.5, 21.0, 21.0001,
        100.0, 1000.0, 1e10,
    ] {
        for current in [
            -8.0_f32, -5.0, -2.5, -0.04, -0.006, -0.00135, 0.0, 0.00135, 0.006, 0.04, 2.5, 5.0, 8.0,
        ] {
            for sw in [0.0_f32, 1.0, 13.5, 21.0] {
                let (v, p, f, q) = rail_value::<Math>(state, sw);
                let (ds, dw) = rail_slope(state, sw, p, f, q);
                let old = super::diagnostic_laws::rail::<Math, true>(state, sw);
                assert_eq!(v.to_bits(), old.0.to_bits());
                // Ratio reuse changes the derivative's rounding, not the value.
                assert!((ds - old.1).abs() <= 4.0 * f32::EPSILON * old.1.abs().max(1e-30));
                assert!((dw - old.2).abs() <= 4.0 * f32::EPSILON * old.2.abs().max(1e-30));
            }
            // The full physical path is checked by independent trajectories above.
            let v = super::diagnostic_laws::power::<Math, false>(state, current);
            let full = super::diagnostic_laws::power::<Math, true>(state, current);
            assert_eq!(v.0.to_bits(), full.0.to_bits());
        }
    }
}
