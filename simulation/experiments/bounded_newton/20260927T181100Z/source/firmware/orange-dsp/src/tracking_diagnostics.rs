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
        let (v, ds, dw) = super::rail::<FpuRootMath>(x[50 + slot], sw);
        n.op_laws[slot] = (v, ds, dw * di);
    }
    n.power_law = super::power::<FpuRootMath>(x[55], x[54]);
    let rr = crate::assemble_residual_evaluated(x, &h, input, 96000.0, 1.5, &n);

    (
        crate::physical_residual_norm(&rr),
        rr[..43].iter().map(|v| v.abs()).fold(0.0, f32::max),
    )
}
fn trajectory<const K: usize, const MODE: u8>() {
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../..");
    let dir = std::env::var("TRACKING_TRACE_DIR")
        .ok()
        .map(|p| std::path::PathBuf::from(p).join(std::format!("m{MODE}_k{K}/host")));
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
        let mut a = TrackingState::<K, MODE>::default();
        let mut b = crate::packed::PackedState::default();

        let (mut ax, mut ap, mut bx, mut bp) = ([0.0; 56], [0.0; 56], [0.0; 56], [0.0; 56]);
        let mut out = dir.as_ref().map(|d| {
            std::io::BufWriter::new(
                std::fs::File::create(d.join(std::format!("{name}.bin"))).unwrap(),
            )
        });
        let (mut mismatch, mut memory_peak, mut output_peak) = (0usize, 0.0_f32, 0.0_f32);
        let (mut energy, mut err, mut peak, mut scaled) = (0.0_f64, 0.0_f64, 0.0_f64, 0.0_f64);
        let (mut above_tol, mut failed_at) = (0usize, None);
        for (index,line) in text.lines().enumerate() {
            let v: Vec<f64> = line
                .split_whitespace()
                .map(|x| x.parse().unwrap())
                .collect();
            let input = v[0] as f32;
            let ah = a.history();
            let bh = b.history();
            let ar = a.step::<Math, 5>(input);
            let br = b.step::<Math, 5>(input);
            assert!(br.converged);
            if a.steps as usize != index+1 { failed_at = Some(index); break; }
            above_tol += (!ar.converged) as usize;
            mismatch += (ar.output_v.to_bits() != br.output_v.to_bits()) as usize;
            output_peak = output_peak.max((ar.output_v - br.output_v).abs());
            for i in 0..28 {
                memory_peak = memory_peak.max((a.current[i] - b.current[i]).abs());
            }
            let an = recover(&ah, input, &a.ports, &a.current);
            let bn = recover(&bh, input, &b.ports, &b.current);
            let error = ar.output_v as f64 - v[32];
            energy += v[32] * v[32];
            err += error * error;
            peak = peak.max(error.abs());
            for i in 0..56 {
                scaled = scaled.max(
                    (an[i] as f64 - v[i + 1]).abs() / crate::generated_model::STATE_SCALE[i] as f64,
                );
            }
            let (af, ak) = residual(&an, &ax, &ap, input);
            let (bf, bk) = residual(&bn, &bx, &bp, input);
            assert!(bf < 1e-4);
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
                std::format!("{{\"steps\":{},\"above_tol\":{},\"failed_at\":{}}}\n",a.steps,above_tol,failed_at.map(|i|std::format!("{i}")).unwrap_or("null".into())),
            )
            .unwrap();
        }
        std::println!(
            "{name}: steps={} output_different={mismatch} peak_vs_P7={output_peak} memory_peak_vs_P7={memory_peak} above_tol={above_tol} failed_at={failed_at:?} RMS={} peak={peak} scaled={scaled}",
            a.steps,
            (err/energy).sqrt()
        );
    }
}

#[test]
fn fixed_corrections_trajectories() {
 trajectory::<1,0>(); trajectory::<2,0>(); trajectory::<3,0>();
 trajectory::<1,1>(); trajectory::<2,1>(); trajectory::<3,1>();
 trajectory::<1,2>(); trajectory::<2,2>(); trajectory::<3,2>();
 trajectory::<1,3>(); trajectory::<2,3>(); trajectory::<3,3>();
}

#[test]
fn generous_budget_control() {
    // Контроль реализации: те же правила продвижения, но достаточно поправок.
    trajectory::<16,3>();
}

#[test]
fn inaccurate_finite_step_really_advances_memory() {
    let mut s = TrackingState::<1,0>::default();
    let a = s.step::<Math,5>(0.02);
    assert_eq!(s.steps,1);
    assert_eq!(s.retries,0);
    assert_eq!(a.iterations,5);
    assert!(!a.converged);
    assert!(s.current.iter().any(|v| v.abs()>0.001));
    let saved=s.current;
    let _=s.step::<Math,5>(0.02);
    assert_eq!(s.steps,2);
    assert_eq!(s.previous,saved);
}
