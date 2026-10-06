//! Длинная проверка состояния; не сравнение точности с f64 и не замер MCU.
use orange_dsp::{
    FpuRootMath,
    packed::{ExtraMath, PackedState},
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
    let out = std::env::var("BOUNDED_DI_DIR")
        .map(std::path::PathBuf::from)
        .unwrap_or_else(|_| root.join("simulation/experiments/bounded_newton/long_di"));
    std::fs::create_dir_all(&out).unwrap();
    for level in [0.1_f32, 0.25,1.0] {
        use std::io::Write;
        let mut file = std::io::BufWriter::new(
            std::fs::File::create(out.join(format!("{:.0}mv.bin", level * 1000.0))).unwrap(),
        );
        let mut candidate = orange_dsp::bounded::BoundedState::<3,5>::default();
        let mut base = PackedState::default();
        let mut old = 0.0;
        let mut n=0u32;
        let mut fail = [0u64; 2];
        let mut maxiter = [0u8; 2];
        let mut output_peak = 0.0_f32;
        let mut memory_peak = [0.0_f32; 28];
        let mut energy = [0.0_f64; 2];
        let start = std::time::Instant::now();
        for bytes in pcm.chunks_exact(2) {
            let input = i16::from_le_bytes(bytes.try_into().unwrap()) as f32 / peak * level;
            for u in [0.5 * (old + input), input] {
                let a = candidate.step::<ExtraMath<FpuRootMath,2>, 5>(u);
                let b = base.step::<ExtraMath<FpuRootMath, 2>, 5>(u);
                for (i, r) in [&a, &b].iter().enumerate() {
                    fail[i] += (!r.converged) as u64;
                    maxiter[i] = maxiter[i].max(r.iterations);
                    assert!(r.output_v.is_finite());
                }
                n+=1;
                if !a.converged {println!("EVENT step={n} input={u} norm={} poles={:?} P7_poles={:?} ports={:?}",a.residual_norm,&candidate.current[23..],&base.current[23..],candidate.ports);}
                assert_eq!(candidate.steps,n,"numerical step failure");
                let e = a.output_v as f64 - b.output_v as f64;
                energy[0] += e * e;
                energy[1] += (b.output_v as f64).powi(2);
                output_peak = output_peak.max((a.output_v - b.output_v).abs());
                for i in 0..28 {
                    memory_peak[i] =
                        memory_peak[i].max((candidate.current[i] - base.current[i]).abs());
                }
                for v in [a.output_v, b.output_v] {
                    file.write_all(&v.to_le_bytes()).unwrap();
                }
            }
            old = input;
        }
        println!(
            "level={level} steps={} failures={fail:?} retries={:?} max_iterations={maxiter:?} peak_vs_P7={output_peak} rms_vs_P7={} memory_peak_vs_P7={memory_peak:?} host_seconds={}",
            pcm.len(),
            [candidate.retries, base.retries],
            (energy[0] / energy[1]).sqrt(),
            start.elapsed().as_secs_f64()
        );
        assert_eq!(fail[1],0);
        assert_eq!(candidate.steps,base.steps);
        std::fs::write(out.join(format!("{:.0}mv.json",level*1000.0)),format!("{{\"steps\":{},\"above_local_tol\":{},\"peak_v\":{output_peak},\"relative_rms\":{},\"memory_peak_v\":{memory_peak:?},\"work_counts\":{:?}}}\n",candidate.steps,fail[0],(energy[0]/energy[1]).sqrt(),candidate.counts)).unwrap();
    }
}
