//! Длинная проверка состояния; не сравнение точности с f64 и не замер MCU.
use orange_dsp::{
    FpuRootMath,
    packed::{ExtraMath, FastMath, PackedState},
};
fn main() {
    assert_eq!(orange_dsp::packed::SAMPLE_RATE, 96000.0);
    assert!(!orange_dsp::packed::TRAPEZOIDAL);
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../..");
    let wav = std::fs::read(root.join("dry_48k_mono.wav")).unwrap();
    assert_eq!(&wav[..4], b"RIFF");
    assert_eq!(&wav[8..12], b"WAVE");
    let mut pos = 12;
    let mut pcm = &[][..];
    let mut valid = false;
    while pos + 8 <= wav.len() {
        let size = u32::from_le_bytes(wav[pos + 4..pos + 8].try_into().unwrap()) as usize;
        if &wav[pos..pos + 4] == b"fmt " {
            let f = &wav[pos + 8..pos + 8 + size];
            assert_eq!(u16::from_le_bytes(f[..2].try_into().unwrap()), 1);
            assert_eq!(u16::from_le_bytes(f[2..4].try_into().unwrap()), 1);
            assert_eq!(u32::from_le_bytes(f[4..8].try_into().unwrap()), 48000);
            assert_eq!(u16::from_le_bytes(f[14..16].try_into().unwrap()), 16);
            valid = true;
        }
        if &wav[pos..pos + 4] == b"data" {
            pcm = &wav[pos + 8..pos + 8 + size];
        }
        pos += 8 + size + (size & 1);
    }
    assert!(valid && !pcm.is_empty());
    let peak = pcm
        .chunks_exact(2)
        .map(|v| i16::from_le_bytes(v.try_into().unwrap()) as f32)
        .map(f32::abs)
        .fold(0.0_f32, f32::max);
    for package in [7] {
        for level in [0.1, 0.25] {
            let mut state = PackedState::default();
            let mut old = 0.0;
            let mut failures = 0;
            let mut worst = 0.0_f32;
            let mut maximum = 0;
            let mut output_peak = 0.0_f32;
            let start = std::time::Instant::now();
            for bytes in pcm.chunks_exact(2) {
                let input = i16::from_le_bytes(bytes.try_into().unwrap()) as f32 / peak * level;
                for u in [0.5 * (old + input), input] {
                    let r = if package == 3 {
                        state.step::<FastMath<FpuRootMath>, 1>(u)
                    } else if package == 6 {
                        state.step::<ExtraMath<FpuRootMath, 2>, 1>(u)
                    } else {
                        state.step::<ExtraMath<FpuRootMath, 2>, 5>(u)
                    };
                    failures += (!r.converged) as u64;
                    worst = worst.max(r.residual_norm);
                    maximum = maximum.max(r.iterations);
                    output_peak = output_peak.max(r.output_v.abs());
                    assert!(r.output_v.is_finite());
                }
                old = input;
            }
            println!(
                "package={package} level={level} steps={} failures={failures} retries={} worst={worst} max_iterations={maximum} output_peak={output_peak} host_seconds={}",
                pcm.len(),
                state.retries,
                start.elapsed().as_secs_f64()
            );
            assert_eq!(failures, 0);
        }
    }
}
