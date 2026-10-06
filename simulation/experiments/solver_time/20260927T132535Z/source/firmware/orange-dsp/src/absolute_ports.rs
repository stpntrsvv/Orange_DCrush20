//! Эксперимент: абсолютные портовые уравнения, линейная история один раз за шаг.
use super::*;

pub(super) fn port_values(x: &[f32; STATE_COUNT], n: &NonlinearEvaluation) -> [f32; 14] {
    let mut p = [0.0; 14];
    p[0] = n.pair_current;
    p[1] = n.d6;
    p[2] = n.d7;
    p[3] = n.jfet_current;
    const POLE: f32 = 2.0 * core::f32::consts::PI * 20.0;
    for (slot, plus, minus, internal) in [
        (0, Some(5), 3, 50),
        (1, Some(14), 12, 51),
        (2, Some(18), 16, 52),
        (3, None, 21, 53),
    ] {
        let vplus = plus.map_or(0.0, |s| x[s]);
        let rate = 25_132_741.0 * (vplus - x[minus]) - POLE * x[internal];
        p[4 + 2 * slot] = -n.op_laws[slot].0;
        p[5 + 2 * slot] = -rate.clamp(-16.0e6, 16.0e6);
    }
    p[12] = -n.power_law.0;
    let rate = 63_148_388.0 * (x[32] - x[30]) - (2.0 * core::f32::consts::PI * 100.503_784) * x[55];
    p[13] = -rate.clamp(-8.0e6, 8.0e6);
    p
}

impl DspState {
    /// Исследовательский кандидат BDF2/96 кГц, НЕ принят по скорости и точности.
    /// Финальная полная проверка сохранена. Рабочий step_physical не заменяет.
    pub fn step_absolute_with_math<M: NonlinearMath>(
        &mut self,
        input_v: f32,
        sample_rate: f32,
    ) -> StepResult {
        if sample_rate != 96000.0 {
            return StepResult {
                output_v: self.current[31],
                residual_norm: f32::INFINITY,
                iterations: 0,
                converged: false,
            };
        }
        let mut history = [0.0; STATE_COUNT];
        for i in 0..STATE_COUNT {
            history[i] = if self.steps == 0 {
                self.current[i]
            } else {
                2.0 * self.current[i] - 0.5 * self.previous[i]
            };
        }
        let origin = generated_model::absolute_origin(&history, input_v);
        let mut q = [0.0; RETAINED_COUNT];
        for (i, &s) in SCHUR_RETAINED.iter().enumerate() {
            q[i] = if self.steps == 0 {
                self.current[s as usize]
            } else {
                2.0 * self.current[s as usize] - self.previous[s as usize]
            };
        }
        let mut x = generated_model::absolute_expand(&q);
        let mut nonlinear = evaluate_nonlinear::<M>(&x);
        let mut norm = generated_model::absolute_norm(&q, &origin, &port_values(&x, &nonlinear));
        let predicted = norm <= 1.0e-4;
        let mut iterations = 0;
        if !predicted {
            for iteration in 1..=2 {
                if iteration > 1 {
                    nonlinear = evaluate_nonlinear::<M>(&x);
                }
                let (indices, values, counts) = physical_port_rows(&x, &nonlinear);
                let mut delta =
                    generated_model::absolute_rhs(&q, &origin, &port_values(&x, &nonlinear));
                if generated_model::solve_absolute_ports(&mut delta, &indices, &values, &counts)
                    .is_none()
                {
                    break;
                }
                let before = q;
                let mut damping = 1.0;
                let mut accepted = false;
                for _ in 0..8 {
                    let mut trial = before;
                    for i in 0..RETAINED_COUNT {
                        trial[i] = before[i] + damping * delta[i];
                    }
                    let trial_x = generated_model::absolute_expand(&trial);
                    let trial_n = evaluate_nonlinear_values::<M>(&trial_x);
                    let trial_norm = generated_model::absolute_norm(
                        &trial,
                        &origin,
                        &port_values(&trial_x, &trial_n),
                    );
                    if trial_norm.is_finite() && trial_norm < norm {
                        q = trial;
                        x = trial_x;
                        nonlinear = trial_n;
                        norm = trial_norm;
                        accepted = true;
                        break;
                    }
                    damping *= 0.5;
                }
                if !accepted {
                    break;
                }
                iterations = iteration;
                if norm <= 1.0e-4 {
                    break;
                }
            }
        }
        if norm.is_finite() && (predicted || iterations > 0) {
            let recovered = generated_model::absolute_recover(&history, input_v, &q);
            let residual = assemble_residual_evaluated(
                &recovered, &history, input_v, 96000.0, 1.5, &nonlinear,
            );
            // Проверка ВСЕХ исходных строк после округления восстановленного x.
            let full_norm = if residual.iter().all(|v| v.is_finite()) {
                physical_residual_norm(&residual)
            } else {
                f32::INFINITY
            };
            norm = norm.max(full_norm);
            if recovered.iter().all(|v| v.is_finite()) && full_norm.is_finite() {
                self.previous = self.current;
                self.current = recovered;
                self.steps = self.steps.saturating_add(1);
            }
        }
        StepResult {
            output_v: self.current[31],
            residual_norm: norm,
            iterations,
            converged: norm <= 1.0e-4,
        }
    }
}

#[cfg(test)]
mod tests {
    extern crate std;
    use super::*;
    #[test]
    #[ignore = "диагностическая квалификация: сначала run_absolute_ports_reference.py"]
    fn compare_full_f64_trajectories() {
        for mv in [100, 1000] {
            let path = std::format!(
                "{}/../../simulation/experiments/absolute_ports/reference_{}mv.txt",
                env!("CARGO_MANIFEST_DIR"),
                mv
            );
            let data = std::fs::read_to_string(path).unwrap();
            let mut new = DspState::default();
            let mut old = DspState::default();
            let mut errors = [0.0_f64; 2];
            let mut peaks = [0.0_f64; 2];
            let mut energy = 0.0_f64;
            let mut failures = [0_u32; 2];
            for line in data.lines() {
                let values: std::vec::Vec<f64> = line
                    .split_whitespace()
                    .map(|v| v.parse().unwrap())
                    .collect();
                let input = values[0] as f32;
                let a = new.step_absolute_with_math::<FpuRootMath>(input, 96000.0);
                let b = old.step_physical_with_math::<FpuRootMath, true>(input, 96000.0);
                energy += values[32] * values[32];
                for (i, result) in [a, b].iter().enumerate() {
                    let error = result.output_v as f64 - values[32];
                    assert!(error.is_finite());
                    errors[i] += error * error;
                    peaks[i] = peaks[i].max(error.abs());
                    failures[i] += (!result.converged) as u32;
                }
            }
            std::println!(
                "f64 {mv}mV: absolute rms={} peak={} failures={}; old rms={} peak={} failures={}",
                (errors[0] / energy).sqrt(),
                peaks[0],
                failures[0],
                (errors[1] / energy).sqrt(),
                peaks[1],
                failures[1]
            );
        }
    }
    #[test]
    fn eliminated_rows_and_port_residual_are_consistent() {
        let history = generated_model::FIXTURE_HISTORY;
        let origin = generated_model::absolute_origin(&history, 0.03125);
        let mut q = [0.0; RETAINED_COUNT];
        for (i, &s) in SCHUR_RETAINED.iter().enumerate() {
            q[i] = generated_model::FIXTURE_X[s as usize];
        }
        let x = generated_model::absolute_recover(&history, 0.03125, &q);
        let n = evaluate_nonlinear::<FpuRootMath>(&x);
        let (_, port_norm) = generated_model::absolute_residual(&q, &origin, &port_values(&x, &n));
        let r = assemble_residual_evaluated(&x, &history, 0.03125, 96000.0, 1.5, &n);
        for &s in &SCHUR_ELIMINATED {
            assert!(
                (r[s as usize] / generated_model::ROW_SCALE[s as usize]).abs() < 1.0e-4,
                "eliminated row {s}"
            );
        }
        let full_norm = physical_residual_norm(&r);
        assert!((full_norm - port_norm).abs() <= 2.0e-5 * full_norm.max(1.0));
    }

    #[test]
    fn absolute_stream_is_finite_and_checks_full_residual() {
        let mut state = DspState::default();
        let mut converged = 0;
        for i in 0..4096 {
            let input = 0.1 * (1.0 - 4.0 * (((i + 96) % 384) as f32 / 384.0 - 0.5).abs());
            let result = state.step_absolute_with_math::<FpuRootMath>(input, 96000.0);
            assert!(result.output_v.is_finite());
            if result.converged {
                converged += 1;
                assert!(result.residual_norm <= 1.0e-4);
            }
        }
        assert!(converged > 4000, "converged {converged}/4096");
    }
}
