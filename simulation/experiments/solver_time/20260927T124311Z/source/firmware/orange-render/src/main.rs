use std::fs;
use std::io::{self, BufWriter, Write};
use std::path::Path;
use std::time::Instant;

const RATE: u32 = 48_000;
const DSP_RATE: f32 = 96_000.0;
const DEFAULT_INPUT_PEAK_V: f32 = 0.100;

fn read_pcm16_mono(path: &Path, input_peak_v: f32) -> io::Result<Vec<f32>> {
    let bytes = fs::read(path)?;
    if bytes.len() < 44 || &bytes[0..4] != b"RIFF" || &bytes[8..12] != b"WAVE" {
        return Err(io::Error::new(io::ErrorKind::InvalidData, "не RIFF/WAVE"));
    }
    let mut position = 12;
    let mut valid_format = false;
    let mut data = None;
    while position + 8 <= bytes.len() {
        let name = &bytes[position..position + 4];
        let size =
            u32::from_le_bytes(bytes[position + 4..position + 8].try_into().unwrap()) as usize;
        let begin = position + 8;
        let end = begin.saturating_add(size).min(bytes.len());
        if name == b"fmt " && size >= 16 {
            let format = u16::from_le_bytes(bytes[begin..begin + 2].try_into().unwrap());
            let channels = u16::from_le_bytes(bytes[begin + 2..begin + 4].try_into().unwrap());
            let rate = u32::from_le_bytes(bytes[begin + 4..begin + 8].try_into().unwrap());
            let bits = u16::from_le_bytes(bytes[begin + 14..begin + 16].try_into().unwrap());
            valid_format = format == 1 && channels == 1 && rate == RATE && bits == 16;
        } else if name == b"data" {
            data = Some(&bytes[begin..end]);
        }
        position = end + (size & 1);
    }
    if !valid_format {
        return Err(io::Error::new(
            io::ErrorKind::InvalidData,
            "нужен mono PCM16 48 кГц",
        ));
    }
    let data = data.ok_or_else(|| io::Error::new(io::ErrorKind::InvalidData, "нет data"))?;
    let mut signal = Vec::with_capacity(data.len() / 2);
    for pair in data.chunks_exact(2) {
        signal.push(i16::from_le_bytes([pair[0], pair[1]]) as f32 / 32768.0);
    }
    let mean = signal.iter().copied().sum::<f32>() / signal.len() as f32;
    let peak = signal.iter().fold(0.0_f32, |p, &v| p.max((v - mean).abs()));
    for value in &mut signal {
        *value = (*value - mean) * (input_peak_v / peak);
    }
    Ok(signal)
}

fn write_pcm16(path: &Path, signal: &[f32]) -> io::Result<()> {
    let peak = signal
        .iter()
        .fold(0.0_f32, |p, &v| p.max(v.abs()))
        .max(1.0e-20);
    let scale = 32767.0 / (1.05 * peak);
    let data_size = (signal.len() * 2) as u32;
    let mut file = BufWriter::new(fs::File::create(path)?);
    file.write_all(b"RIFF")?;
    file.write_all(&(36 + data_size).to_le_bytes())?;
    file.write_all(b"WAVEfmt \x10\0\0\0\x01\0\x01\0")?;
    file.write_all(&RATE.to_le_bytes())?;
    file.write_all(&(RATE * 2).to_le_bytes())?;
    file.write_all(&2_u16.to_le_bytes())?;
    file.write_all(&16_u16.to_le_bytes())?;
    file.write_all(b"data")?;
    file.write_all(&data_size.to_le_bytes())?;
    for &value in signal {
        let pcm = (value * scale).clamp(-32767.0, 32767.0) as i16;
        file.write_all(&pcm.to_le_bytes())?;
    }
    Ok(())
}

fn main() -> io::Result<()> {
    let tag = std::env::args()
        .nth(1)
        .unwrap_or_else(|| "full".to_string());
    let input_peak_v = std::env::args()
        .nth(2)
        .map(|value| value.parse::<f32>())
        .transpose()
        .map_err(|error| io::Error::new(io::ErrorKind::InvalidInput, error))?
        .unwrap_or(DEFAULT_INPUT_PEAK_V);
    let mode = std::env::args().nth(3);
    let incremental = mode.as_deref() == Some("incremental");
    let event_power = mode.as_deref() == Some("event-power");
    let absolute = mode.as_deref() == Some("absolute-ports");
    let control_ports = mode.as_deref() == Some("control-ports");
    let fpu_roots = mode.as_deref() == Some("physical-fpu") || absolute || control_ports;
    let physical = mode.as_deref() == Some("physical") || fpu_roots;
    if !input_peak_v.is_finite() || input_peak_v <= 0.0 {
        return Err(io::Error::new(
            io::ErrorKind::InvalidInput,
            "пиковое входное напряжение должно быть положительным",
        ));
    }
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../..");
    let input = read_pcm16_mono(&root.join("dry_48k_mono.wav"), input_peak_v)?;
    let out_dir = root.join("simulation/experiments/di_rust");
    fs::create_dir_all(&out_dir)?;
    let mut state = orange_dsp::DspState::default();
    let mut incremental_state = orange_dsp::IncrementalDspState::default();
    let mut output = Vec::with_capacity(input.len());
    let mut one = 0_usize;
    let mut two = 0_usize;
    let mut more = 0_usize;
    let mut zero = 0_usize;
    let mut failed = 0_usize;
    let mut control_fallbacks = 0_usize;
    let mut worst = 0.0_f32;
    let mut tda_event_counts = [0_u64; 3];
    let mut tda_slew_count = 0_u64;
    let mut tda_max_difference = 0.0_f32;
    let started = Instant::now();
    let mut previous_input = 0.0_f32;
    for (index, &sample) in input.iter().enumerate() {
        let mut result = if incremental {
            incremental_state.step(0.5 * (previous_input + sample), DSP_RATE)
        } else if control_ports {
            let (result, fallback) = state
                .step_control_diagnostic_with_math::<orange_dsp::FpuRootMath>(
                    0.5 * (previous_input + sample),
                    DSP_RATE,
                );
            control_fallbacks += fallback as usize;
            result
        } else if absolute {
            state.step_absolute_with_math::<orange_dsp::FpuRootMath>(
                0.5 * (previous_input + sample),
                DSP_RATE,
            )
        } else if fpu_roots {
            state.step_physical_with_math::<orange_dsp::FpuRootMath, true>(
                0.5 * (previous_input + sample),
                DSP_RATE,
            )
        } else if physical {
            state.step_physical(0.5 * (previous_input + sample), DSP_RATE)
        } else if event_power {
            state.step_event_power(0.5 * (previous_input + sample), DSP_RATE)
        } else {
            state.step(0.5 * (previous_input + sample), DSP_RATE)
        };
        zero += usize::from(result.iterations == 0 && result.converged);
        one += usize::from(result.iterations == 1);
        two += usize::from(result.iterations == 2);
        more += usize::from(result.iterations > 2);
        failed += usize::from(!result.converged);
        worst = worst.max(result.residual_norm);
        let diagnostic = state.power_diagnostics();
        for (slot, threshold) in [0.5_f32, 0.7, 0.85].into_iter().enumerate() {
            tda_event_counts[slot] += u64::from(
                diagnostic.rail_ratio >= threshold || diagnostic.current_ratio >= threshold,
            );
        }
        tda_slew_count += u64::from(diagnostic.slew_limited);
        tda_max_difference = tda_max_difference.max(diagnostic.nonlinear_difference_v.abs());
        result = if incremental {
            incremental_state.step(sample, DSP_RATE)
        } else if control_ports {
            let (result, fallback) = state
                .step_control_diagnostic_with_math::<orange_dsp::FpuRootMath>(sample, DSP_RATE);
            control_fallbacks += fallback as usize;
            result
        } else if absolute {
            state.step_absolute_with_math::<orange_dsp::FpuRootMath>(sample, DSP_RATE)
        } else if fpu_roots {
            state.step_physical_with_math::<orange_dsp::FpuRootMath, true>(sample, DSP_RATE)
        } else if physical {
            state.step_physical(sample, DSP_RATE)
        } else if event_power {
            state.step_event_power(sample, DSP_RATE)
        } else {
            state.step(sample, DSP_RATE)
        };
        output.push(result.output_v);
        zero += usize::from(result.iterations == 0 && result.converged);
        one += usize::from(result.iterations == 1);
        two += usize::from(result.iterations == 2);
        more += usize::from(result.iterations > 2);
        failed += usize::from(!result.converged);
        worst = worst.max(result.residual_norm);
        let diagnostic = state.power_diagnostics();
        for (slot, threshold) in [0.5_f32, 0.7, 0.85].into_iter().enumerate() {
            tda_event_counts[slot] += u64::from(
                diagnostic.rail_ratio >= threshold || diagnostic.current_ratio >= threshold,
            );
        }
        tda_slew_count += u64::from(diagnostic.slew_limited);
        tda_max_difference = tda_max_difference.max(diagnostic.nonlinear_difference_v.abs());
        previous_input = sample;
        if index % (RATE as usize * 10) == 0 {
            eprintln!(
                "{:.0}/{:.1} с",
                index as f32 / RATE as f32,
                input.len() as f32 / RATE as f32
            );
        }
    }
    let elapsed = started.elapsed().as_secs_f64();
    let input_mv = (input_peak_v * 1000.0).round() as u32;
    write_pcm16(&out_dir.join(format!("dry_{input_mv}mv_{tag}.wav")), &input)?;
    write_pcm16(&out_dir.join(format!("orange_rust_{tag}.wav")), &output)?;
    let diode = incremental_state.diode_metrics();
    let report = format!(
        "# Полная DI через Rust Orange DSP\n\nВход 48 кГц интерполирован до согласованной внутренней частоты 96 кГц; в WAV записан каждый второй выход.\n\n- пиковое входное напряжение: {:.0} мВ;\n- выходных отсчётов: {};\n- время: {:.3} с;\n- предсказатель без Newton: {};\n- 1 итерация: {};\n- 2 итерации: {};\n- 3–10 итераций: {};\n- не прошли residual gate: {};\n- худшая нормированная невязка: {:.6e};\n- инкрементальный диодный кандидат: {};\n- событийный TDA: {};\n- принятых обновлений кэша: {};\n- немедленных абсолютных пересчётов: {};\n- периодических восстановлений: {};\n- крупных приращений: {};\n- TDA event ratio ≥ 0,50: {};\n- TDA event ratio ≥ 0,70: {};\n- TDA event ratio ≥ 0,85: {};\n- TDA slew-limit: {};\n- максимум отличия полного TDA от линейного закона: {:.6e} В.\n",
        input_peak_v * 1000.0,
        input.len(),
        elapsed,
        zero,
        one,
        two,
        more,
        failed,
        worst,
        incremental,
        event_power,
        diode.accepted_updates,
        diode.fallback_count,
        diode.periodic_refresh_count,
        diode.large_step_count,
        tda_event_counts[0],
        tda_event_counts[1],
        tda_event_counts[2],
        tda_slew_count,
        tda_max_difference,
    );
    let report = format!(
        "{report}\n- прямые физические блоки: {physical};\n- аппаратные корни: {fpu_roots};\n- абсолютные портовые уравнения: {absolute};\n- 19 управляющих координат: {control_ports};\n- возвратов к рабочему решателю: {control_fallbacks};\n"
    );
    fs::write(out_dir.join(format!("report_{tag}.md")), report)?;
    println!("{}", out_dir.display());
    Ok(())
}
