//! Выгрузка прежних P6/P7 для анализа метрик; допуски и алгоритмы не меняются.
use orange_dsp::{
    FpuRootMath,
    packed::{ExtraMath, PackedState},
};
use std::io::Write;

fn main() {
    assert_eq!(orange_dsp::packed::SAMPLE_RATE, 96000.0);
    assert!(!orange_dsp::packed::TRAPEZOIDAL);
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../..");
    let out = root.join("simulation/experiments/metric_definition");
    std::fs::create_dir_all(&out).unwrap();
    for (name, file) in [
        ("triangle100", "absolute_ports/reference_100mv.txt"),
        ("triangle1000", "absolute_ports/reference_1000mv.txt"),
        ("noise250", "architecture_decision/reference_noise.txt"),
        ("step025", "batched_optimization/reference_step025.txt"),
        ("step1", "batched_optimization/reference_step1.txt"),
        ("multitone", "batched_optimization/reference_multitone.txt"),
    ] {
        let input =
            std::fs::read_to_string(root.join("simulation/experiments").join(file)).unwrap();
        let mut p6 = PackedState::default();
        let mut p7 = PackedState::default();
        let mut output = std::io::BufWriter::new(
            std::fs::File::create(out.join(format!("{name}.txt"))).unwrap(),
        );
        writeln!(
            output,
            "# input reference p6 p7 residual6 residual7 iterations6 iterations7"
        )
        .unwrap();
        for line in input.lines() {
            let row: Vec<f64> = line
                .split_whitespace()
                .map(|x| x.parse().unwrap())
                .collect();
            assert_eq!(row.len(), 57);
            let a = p6.step::<ExtraMath<FpuRootMath, 2>, 1>(row[0] as f32);
            let b = p7.step::<ExtraMath<FpuRootMath, 2>, 5>(row[0] as f32);
            assert!(a.converged && b.converged && a.output_v.is_finite() && b.output_v.is_finite());
            writeln!(
                output,
                "{:.17e} {:.17e} {:.17e} {:.17e} {:.17e} {:.17e} {} {}",
                row[0],
                row[32],
                a.output_v,
                b.output_v,
                a.residual_norm,
                b.residual_norm,
                a.iterations,
                b.iterations
            )
            .unwrap();
        }
    }
}
