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
    let out = std::env::var("TRACKING_DI_DIR")
        .map(std::path::PathBuf::from)
        .unwrap_or_else(|_| root.join("simulation/experiments/newton_tracking/long_di"));
    std::fs::create_dir_all(&out).unwrap();
    for level in [0.1_f32, 0.25,1.0] {
        use std::io::Write;
        let mut file = std::io::BufWriter::new(
            std::fs::File::create(out.join(format!("{:.0}mv.bin", level * 1000.0))).unwrap(),
        );
        type Math = ExtraMath<FpuRootMath,2>;
        let mut c1 = orange_dsp::tracking::TrackingState::<1,3>::default();
        let mut c2 = orange_dsp::tracking::TrackingState::<2,3>::default();
        let mut c3 = orange_dsp::tracking::TrackingState::<3,3>::default();
        let mut base = PackedState::default();
        let mut old = 0.0;
        let mut above_tol = [0u64;3];
        let mut peaks = [0.0_f32;3];
        let mut memory = [[0.0_f32;28];3];
        let mut energy = [0.0_f64;4];
        let start = std::time::Instant::now();
        let mut n=0u32;
        for bytes in pcm.chunks_exact(2) {
            let input = i16::from_le_bytes(bytes.try_into().unwrap()) as f32 / peak * level;
            for u in [0.5*(old+input),input] {
                let r=[c1.step::<Math,5>(u),c2.step::<Math,5>(u),c3.step::<Math,5>(u),base.step::<Math,5>(u)];
                n+=1;
                assert_eq!([c1.steps,c2.steps,c3.steps,base.steps],[n;4],"nonfinite/singular step");
                assert!(r[3].converged);
                energy[3]+=(r[3].output_v as f64).powi(2);
                for (i,z) in [&c1.current,&c2.current,&c3.current].iter().enumerate() {
                    above_tol[i]+=(!r[i].converged) as u64;
                    let e=r[i].output_v-r[3].output_v;
                    peaks[i]=peaks[i].max(e.abs());energy[i]+=(e as f64).powi(2);
                    for j in 0..28 { memory[i][j]=memory[i][j].max((z[j]-base.current[j]).abs()); }
                }
                for v in r {file.write_all(&v.output_v.to_le_bytes()).unwrap();}
            }
            old=input;
        }
        let relative: [f64;3]=core::array::from_fn(|i|(energy[i]/energy[3]).sqrt());
        let record=format!("{{\"level\":{level},\"steps\":{n},\"above_tol\":{above_tol:?},\"peak_vs_P7\":{peaks:?},\"relative_rms\":{relative:?},\"memory_peak_vs_P7\":{memory:?},\"host_seconds\":{}}}\n",start.elapsed().as_secs_f64());
        std::fs::write(out.join(format!("{:.0}mv.json",level*1000.0)),&record).unwrap();
        println!("{record}");
    }
}
