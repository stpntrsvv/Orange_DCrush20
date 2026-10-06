use orange_dsp::exponential::ExponentialState;
use std::io::Write;
fn main() {
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../simulation/experiments/solver_time/temporal");
    for q in [false, true] {
        for case in 0..3 {
            let text =
                std::fs::read_to_string(root.join(format!("reference_etd_{case}.txt"))).unwrap();
            let mut state = ExponentialState::default();
            let mut fail = 0;
            let mut peak = 0.0_f64;
            let mut scaled = 0.0_f64;
            let mut energy = 0.;
            let mut err = 0.;
            let mut file = std::io::BufWriter::new(
                std::fs::File::create(root.join(format!("kernel_q{}_case{case}.bin", q as u8)))
                    .unwrap(),
            );
            for line in text.lines() {
                let row: Vec<f64> = line
                    .split_whitespace()
                    .map(|v| v.parse().unwrap())
                    .collect();
                let result = if q {
                    state.step::<true>(row[0] as f32)
                } else {
                    state.step::<false>(row[0] as f32)
                };
                if !result.converged && fail == 0 {
                    println!(
                        "first failure q={q} case={case} step={} block={} norm={} iter={}",
                        state.steps,
                        state.scalar_counts[0],
                        result.residual_norm,
                        result.iterations
                    );
                }
                fail += (!result.converged) as usize;
                let x = state.recover();
                let e = result.output_v as f64 - row[32];
                peak = peak.max(e.abs());
                energy += row[32] * row[32];
                err += e * e;
                for i in 0..56 {
                    scaled = scaled.max(
                        (x[i] - row[i + 1]).abs()
                            / orange_dsp::generated_model::STATE_SCALE[i] as f64,
                    );
                }
                for v in [
                    result.output_v as f64,
                    result.residual_norm as f64,
                    result.iterations as f64,
                    result.converged as u8 as f64,
                ]
                .into_iter()
                .chain(x)
                .chain(state.current)
                {
                    file.write_all(&v.to_le_bytes()).unwrap();
                }
            }
            println!(
                "q={q} case={case} failed={fail} retries={} peak={peak} scaled={scaled} relative_rms={}",
                state.retries,
                (err / energy).sqrt()
            );
        }
    }
}
