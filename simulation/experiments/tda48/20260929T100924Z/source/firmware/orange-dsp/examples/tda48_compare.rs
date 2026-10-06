//! Парный контроль принятой базы 48 кГц; результаты только в новом каталоге.
use orange_dsp::{bounded48, bounded48_baseline, packed::ExtraMath, FpuRootMath};
use std::{io::Write, path::Path};
type Math = ExtraMath<FpuRootMath, 2>;

fn run(out: &Path, name: &str, input: impl Iterator<Item = f32>, trace: bool) {
    let mut a = bounded48::BoundedState::<3, 7>::default();
    let mut b = bounded48_baseline::BoundedState::<3, 7>::default();
    let mut checkpoints = std::io::BufWriter::new(std::fs::File::create(out.join(format!("{name}_checkpoints.bin"))).unwrap());
    let mut trajectory = trace.then(|| std::io::BufWriter::new(std::fs::File::create(out.join(format!("{name}.candidate"))).unwrap()));
    let mut pairs = std::io::BufWriter::new(std::fs::File::create(out.join(format!("{name}.pairs"))).unwrap());
    let mut samples = 0;
    let mut mismatch = [0usize; 4];
    let mut stops = [0usize; 2];
    let mut overruns = [0usize; 2];
    let mut max_attempt = [[0u32; 5]; 2];
    let mut max_norm = [0.0f32; 2];
    let mut peak = 0.0f32;
    let mut memory_peak = [0.0f32; 28];
    let mut previous_peak = [0.0f32; 28];
    let mut first_event = false;
    for u in input {
        let counts = [a.counts, b.counts];
        let steps = [a.steps, b.steps];
        let before_a = (a.current, a.previous, a.ports);
        let before_b = (b.current, b.previous, b.ports);
        let x = a.step::<Math, 5>(u);
        let y = b.step::<Math, 5>(u);
        for (k, (r, step, count)) in [(&x, a.steps, a.counts), (&y, b.steps, b.counts)].into_iter().enumerate() {
            stops[k] += (step != steps[k] + 1) as usize;
            overruns[k] += (!r.converged) as usize;
            max_norm[k] = max_norm[k].max(r.residual_norm);
            for block in 0..5 {
                let attempt = count[block][1] - counts[k][block][1];
                max_attempt[k][block] = max_attempt[k][block].max(attempt);
                assert!(attempt <= 3);
            }
        }
        assert!(x.output_v.is_finite() && y.output_v.is_finite());
        let output_differs = x.output_v.to_bits() != y.output_v.to_bits();
        let current_differs = a.current.iter().zip(&b.current).any(|(x, y)| x.to_bits() != y.to_bits());
        let previous_differs = a.previous.iter().zip(&b.previous).any(|(x, y)| x.to_bits() != y.to_bits());
        let decisions_differ = x.iterations != y.iterations || x.converged != y.converged || a.counts != b.counts;
        for (k, different) in [output_differs, current_differs, previous_differs, decisions_differ].into_iter().enumerate() { mismatch[k] += different as usize; }
        peak = peak.max((x.output_v - y.output_v).abs());
        if current_differs || previous_differs {
            for i in 0..28 {
                memory_peak[i] = memory_peak[i].max((a.current[i] - b.current[i]).abs());
                previous_peak[i] = previous_peak[i].max((a.previous[i] - b.previous[i]).abs());
            }
        }
        if !first_event && (output_differs || current_differs || decisions_differ || !x.converged || a.steps != steps[0] + 1) {
            std::fs::write(out.join(format!("{name}_first_event.txt")), format!(
                "sample={samples}\ninput={u:?}\nbefore_candidate={before_a:?}\nbefore_baseline={before_b:?}\nresult_candidate={rx:?}\nresult_baseline={ry:?}\nafter_candidate={:?}\nafter_baseline={:?}\n", (a.current, a.previous, a.ports, a.counts), (b.current, b.previous, b.ports, b.counts), rx=(x.output_v,x.residual_norm,x.iterations,x.converged), ry=(y.output_v,y.residual_norm,y.iterations,y.converged))).unwrap();
            first_event = true;
        }
        for value in [x.output_v, y.output_v] { pairs.write_all(&value.to_le_bytes()).unwrap(); }
        if let Some(w) = trajectory.as_mut() {
            for value in [u, x.output_v, x.residual_norm, x.iterations as f32] { w.write_all(&value.to_le_bytes()).unwrap(); }
            for values in [&a.ports[..], &a.current[..], &a.previous[..]] { for value in values { w.write_all(&value.to_le_bytes()).unwrap(); } }
        }
        samples += 1;
        if samples % 16384 == 0 {
            for state in [&a.current, &a.previous, &b.current, &b.previous] { for value in state { checkpoints.write_all(&value.to_le_bytes()).unwrap(); } }
        }
    }
    if samples % 16384 != 0 {
        for state in [&a.current, &a.previous, &b.current, &b.previous] { for value in state { checkpoints.write_all(&value.to_le_bytes()).unwrap(); } }
    }
    let json = format!("{{\"samples\":{samples},\"mismatches_output_current_previous_decisions\":{mismatch:?},\"stops\":{stops:?},\"local_overruns\":{overruns:?},\"max_attempts\":{max_attempt:?},\"max_local_norm\":{max_norm:?},\"peak_difference_v\":{peak},\"current_memory_peak_v\":{memory_peak:?},\"previous_memory_peak_v\":{previous_peak:?},\"candidate_counts\":{:?},\"baseline_counts\":{:?}}}\n", a.counts, b.counts);
    std::fs::write(out.join(format!("{name}.json")), &json).unwrap();
    println!("{name}: {json}");
}

fn main() {
    let args: Vec<_> = std::env::args().collect();
    let out = Path::new(&args[1]);
    std::fs::create_dir_all(out).unwrap();
    let input = Path::new(&args[2]);
    if input.extension().and_then(|x| x.to_str()) == Some("pcm16") {
        let pcm = std::fs::read(input).unwrap();
        let peak = pcm.chunks_exact(2).map(|v| (i16::from_le_bytes(v.try_into().unwrap()) as f32).abs()).fold(0.0, f32::max);
        for level in [0.1f32, 0.25, 1.0] {
            run(out, &format!("{}mv", (1000.0 * level) as u32), pcm.chunks_exact(2).map(|v| i16::from_le_bytes(v.try_into().unwrap()) as f32 / peak * level), false);
        }
    } else {
        for entry in std::fs::read_dir(input).unwrap() {
            let p = entry.unwrap().path();
            if p.extension().and_then(|x| x.to_str()) != Some("input") { continue; }
            let bytes = std::fs::read(&p).unwrap();
            run(out, p.file_stem().unwrap().to_str().unwrap(), bytes.chunks_exact(4).map(|v| f32::from_le_bytes(v.try_into().unwrap())), true);
        }
    }
}
