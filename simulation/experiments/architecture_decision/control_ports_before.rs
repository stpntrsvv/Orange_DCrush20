//! Исследовательский решатель в 19 управляющих координатах; полная физика сохранена.
use super::absolute_ports::port_values;
use super::*;

// Напряжения, токи выходов, разности входов. Масштабы — не слуховой допуск.
const SCALE: [f32; 19] = [
    15.0, 15.0, 15.0, 15.0, 15.0, 0.01, 15.0, 15.0, 0.01, 15.0, 15.0, 0.01, 15.0, 15.0, 0.01, 15.0,
    24.0, 5.0, 24.0,
];

fn norm(q: &[f32; 19], rhs: &[f32; 19]) -> f32 {
    let mut norm = 0.0_f32;
    for i in 0..19 {
        if !rhs[i].is_finite() {
            return f32::INFINITY;
        }
        norm = norm.max((rhs[i] / SCALE[i]).abs());
    }
    // q + rhs = Q L^-1 (b - P phi(q)). Проверяем изменение slew-законов
    // при таком восстановлении: это исходные динамические строки, без 56 узлов.
    for slot in 0..5 {
        let s = 4 + 3 * slot;
        let (gain, pole, limit) = if slot < 4 {
            (25_132_741.0, 2.0 * core::f32::consts::PI * 20.0, 16e6)
        } else {
            (63_148_388.0, 2.0 * core::f32::consts::PI * 100.503_784, 8e6)
        };
        let a = (gain * q[s + 2] - pole * q[s]).clamp(-limit, limit);
        let b = (gain * (q[s + 2] + rhs[s + 2]) - pole * (q[s] + rhs[s])).clamp(-limit, limit);
        norm = norm.max((b - a).abs() / limit);
    }
    norm
}

fn rows(q: &[f32; 19], n: &NonlinearEvaluation) -> ([[u8; 3]; 14], [[f32; 3]; 14], [u8; 14]) {
    let mut idx = [[0; 3]; 14];
    let mut val = [[0.0; 3]; 14];
    let mut count = [0; 14];
    idx[0][0] = 0;
    val[0][0] = n.pair_conductance;
    count[0] = 1;
    idx[1][0] = 1;
    val[1][0] = n.g6;
    count[1] = 1;
    idx[2][0] = 1;
    val[2][0] = -n.g7;
    count[2] = 1;
    idx[3] = [2, 3, 0];
    val[3] = [n.jfet_gradient_27, n.jfet_gradient_40, 0.0];
    count[3] = 2;
    for slot in 0..5 {
        let s = 4 + 3 * slot;
        let p = 4 + 2 * slot;
        let (law, gain, pole, slew) = if slot < 4 {
            (
                n.op_laws[slot],
                25_132_741.0,
                2.0 * core::f32::consts::PI * 20.0,
                16e6,
            )
        } else {
            (
                n.power_law,
                63_148_388.0,
                2.0 * core::f32::consts::PI * 100.503_784,
                8e6,
            )
        };
        idx[p] = [s as u8, (s + 1) as u8, 0];
        val[p] = [-law.1, -law.2, 0.0];
        count[p] = 2;
        if (gain * q[s + 2] - pole * q[s]).abs() < slew {
            idx[p + 1] = [s as u8, (s + 2) as u8, 0];
            val[p + 1] = [pole, -gain, 0.0];
            count[p + 1] = 2;
        }
    }
    (idx, val, count)
}

impl DspState {
    /// Кандидат, не замена квалифицированному рабочему пути.
    pub fn step_control_with_math<M: NonlinearMath>(
        &mut self,
        input_v: f32,
        sample_rate: f32,
    ) -> StepResult {
        self.step_control_diagnostic_with_math::<M>(input_v, sample_rate)
            .0
    }

    /// Второе поле: пришлось повторить шаг рабочим физическим решателем.
    pub fn step_control_diagnostic_with_math<M: NonlinearMath>(
        &mut self,
        input_v: f32,
        sample_rate: f32,
    ) -> (StepResult, bool) {
        if sample_rate != 96000.0 {
            return (
                StepResult {
                    output_v: self.current[31],
                    residual_norm: f32::INFINITY,
                    iterations: 0,
                    converged: false,
                },
                false,
            );
        }
        let mut history = [0.0; 56];
        let mut predicted_x = [0.0; 56];
        for i in 0..56 {
            history[i] = if self.steps == 0 {
                self.current[i]
            } else {
                2.0 * self.current[i] - 0.5 * self.previous[i]
            };
            predicted_x[i] = if self.steps == 0 {
                self.current[i]
            } else {
                2.0 * self.current[i] - self.previous[i]
            };
        }
        let origin = generated_model::control_origin(&history, input_v);
        let mut q = generated_model::control_select(&predicted_x);
        let mut x = generated_model::control_expand(&q);
        let mut n = evaluate_nonlinear::<M>(&x);
        let mut phi = port_values(&x, &n);
        let mut rhs = generated_model::control_rhs(&q, &origin, &phi);
        let mut error = norm(&q, &rhs);
        let mut iterations = 0;
        for iteration in 1..=2 {
            if error <= 1e-4 {
                break;
            }
            if iteration > 1 {
                n = evaluate_nonlinear::<M>(&x);
            }
            let (idx, val, count) = rows(&q, &n);
            let mut delta = rhs;
            if generated_model::solve_control_ports(&mut delta, &idx, &val, &count).is_none() {
                break;
            }
            let mut damping = 1.0;
            let mut accepted = false;
            for _ in 0..8 {
                let mut trial = q;
                for i in 0..19 {
                    trial[i] += damping * delta[i];
                }
                let tx = generated_model::control_expand(&trial);
                let tn = evaluate_nonlinear_values::<M>(&tx);
                let tp = port_values(&tx, &tn);
                let tr = generated_model::control_rhs(&trial, &origin, &tp);
                let te = norm(&trial, &tr);
                if te.is_finite() && te < error {
                    q = trial;
                    x = tx;
                    phi = tp;
                    rhs = tr;
                    error = te;
                    accepted = true;
                    break;
                }
                damping *= 0.5;
            }
            if !accepted {
                break;
            }
            iterations = iteration;
        }
        // Здесь q(recovered) != q_trial при ненулевом дефекте: законы вычисляем ЗАНОВО.
        let recovered = generated_model::control_recover(&history, input_v, &phi);
        let final_n = evaluate_nonlinear_values::<M>(&recovered);
        let residual =
            assemble_residual_evaluated(&recovered, &history, input_v, 96000.0, 1.5, &final_n);
        let full_norm = if residual.iter().all(|v| v.is_finite()) {
            physical_residual_norm(&residual)
        } else {
            f32::INFINITY
        };
        error = error.max(full_norm);
        if recovered.iter().all(|v| v.is_finite()) && error <= 1e-4 {
            self.previous = self.current;
            self.current = recovered;
            self.steps = self.steps.saturating_add(1);
        } else {
            // Никакая часть пробного состояния ещё не записана в предысторию.
            return (
                self.step_physical_with_math::<M, true>(input_v, sample_rate),
                true,
            );
        }
        (
            StepResult {
                output_v: self.current[31],
                residual_norm: error,
                iterations,
                converged: error <= 1e-4,
            },
            false,
        )
    }
}

#[cfg(test)]
mod tests {
    extern crate std;
    use super::*;
    #[test]
    fn control_blocks_match_dense_f64_jacobian() {
        for branch in 0..6 {
            let mut x = generated_model::FIXTURE_X;
            match branch {
                0 => x.fill(0.0),
                1 => {
                    x[27] = -0.5;
                    x[40] = 0.5;
                }
                2 => {
                    x[27] = 0.5;
                    x[40] = -0.5;
                }
                3 => {
                    x[5] = 0.25;
                    x[3] = 0.25;
                    x[14] = -0.25;
                    x[12] = -0.25;
                }
                4 => {
                    x[5] = 10.0;
                    x[3] = -10.0;
                    x[18] = -10.0;
                    x[16] = 10.0;
                }
                _ => {
                    x[32] = x[30];
                    x[54] = 4.0;
                    x[55] = 20.0;
                }
            }
            let q = generated_model::control_select(&x);
            let expanded = generated_model::control_expand(&q);
            let n = evaluate_nonlinear::<FpuRootMath>(&expanded);
            let origin =
                generated_model::control_origin(&generated_model::FIXTURE_HISTORY, 0.03125);
            let mut rhs = generated_model::control_rhs(&q, &origin, &port_values(&expanded, &n));
            let (idx, val, count) = rows(&q, &n);
            let mut matrix = [[0.0_f64; 19]; 19];
            let mut expected = [0.0_f64; 19];
            for i in 0..19 {
                matrix[i][i] = 1.0;
                expected[i] = rhs[i] as f64;
                for p in 0..14 {
                    for k in 0..count[p] as usize {
                        matrix[i][idx[p][k] as usize] +=
                            generated_model::CONTROL_RESPONSE[i][p] * val[p][k] as f64;
                    }
                }
            }
            for p in 0..19 {
                let best = (p..19)
                    .max_by(|&a, &b| matrix[a][p].abs().partial_cmp(&matrix[b][p].abs()).unwrap())
                    .unwrap();
                matrix.swap(p, best);
                expected.swap(p, best);
                for i in p + 1..19 {
                    let f = matrix[i][p] / matrix[p][p];
                    for j in p + 1..19 {
                        matrix[i][j] -= f * matrix[p][j];
                    }
                    expected[i] -= f * expected[p];
                }
            }
            for i in (0..19).rev() {
                for j in i + 1..19 {
                    expected[i] -= matrix[i][j] * expected[j];
                }
                expected[i] /= matrix[i][i];
            }
            generated_model::solve_control_ports(&mut rhs, &idx, &val, &count).unwrap();
            for i in 0..19 {
                assert!(
                    (rhs[i] as f64 - expected[i]).abs() <= (0.003 * expected[i].abs()).max(2e-5),
                    "branch {branch} q{i}: {} vs {}",
                    rhs[i],
                    expected[i]
                );
            }
        }
    }
    #[test]
    fn controls_preserve_all_nonlinear_values() {
        let x = generated_model::FIXTURE_X;
        let q = generated_model::control_select(&x);
        let expanded = generated_model::control_expand(&q);
        assert_eq!(q, generated_model::control_select(&expanded));
        let a = port_values(&x, &evaluate_nonlinear::<FpuRootMath>(&x));
        let b = port_values(&expanded, &evaluate_nonlinear::<FpuRootMath>(&expanded));
        assert_eq!(a, b);
    }
    #[test]
    fn fallback_uses_unchanged_history_bit_for_bit() {
        let mut state = DspState::default();
        let mut fallbacks = 0;
        for i in 0..1024 {
            let mut old = DspState {
                current: state.current,
                previous: state.previous,
                steps: state.steps,
            };
            let input = 1.0 - 4.0 * (((i + 96) % 384) as f32 / 384.0 - 0.5).abs();
            let (a, fallback) =
                state.step_control_diagnostic_with_math::<FpuRootMath>(input, 96000.0);
            if fallback {
                let b = old.step_physical_with_math::<FpuRootMath, true>(input, 96000.0);
                assert_eq!(a.output_v.to_bits(), b.output_v.to_bits());
                assert_eq!(a.residual_norm.to_bits(), b.residual_norm.to_bits());
                assert_eq!((a.iterations, a.converged), (b.iterations, b.converged));
                assert_eq!(
                    state.current.map(f32::to_bits),
                    old.current.map(f32::to_bits)
                );
                assert_eq!(
                    state.previous.map(f32::to_bits),
                    old.previous.map(f32::to_bits)
                );
                assert_eq!(state.steps, old.steps);
                fallbacks += 1;
            }
        }
        assert!(fallbacks > 0);
    }
    #[test]
    fn control_reports_independently_checked_full_residual() {
        let mut state = DspState::default();
        for i in 0..1024 {
            let mut history = [0.0; 56];
            for j in 0..56 {
                history[j] = if state.steps == 0 {
                    state.current[j]
                } else {
                    2.0 * state.current[j] - 0.5 * state.previous[j]
                };
            }
            let input = 0.1 * (1.0 - 4.0 * (((i + 96) % 384) as f32 / 384.0 - 0.5).abs());
            let result = state.step_control_with_math::<FpuRootMath>(input, 96000.0);
            let n = evaluate_nonlinear::<FpuRootMath>(&state.current);
            let r = assemble_residual_evaluated(&state.current, &history, input, 96000.0, 1.5, &n);
            let full = physical_residual_norm(&r);
            assert!(result.output_v.is_finite());
            assert!(result.residual_norm >= full);
            if result.converged {
                assert!(full <= 1e-4);
            }
        }
    }
    #[test]
    #[ignore = "независимый эталон: run_absolute_ports_reference.py"]
    fn control_compare_full_f64() {
        for mv in [100, 1000] {
            let path = std::format!(
                "{}/../../simulation/experiments/absolute_ports/reference_{}mv.txt",
                env!("CARGO_MANIFEST_DIR"),
                mv
            );
            let data = std::fs::read_to_string(path).unwrap();
            let mut state = DspState::default();
            let (mut energy, mut error, mut peak) = (0.0_f64, 0.0_f64, 0.0_f64);
            let mut failures = 0;
            let mut worst_rows = [0_u32; 56];
            let mut iters = [0_u32; 3];
            let mut fallbacks = 0;
            for line in data.lines() {
                let v: std::vec::Vec<f64> = line
                    .split_whitespace()
                    .map(|s| s.parse().unwrap())
                    .collect();
                let mut history = [0.0; 56];
                for j in 0..56 {
                    history[j] = if state.steps == 0 {
                        state.current[j]
                    } else {
                        2.0 * state.current[j] - 0.5 * state.previous[j]
                    };
                }
                let (r, fallback) =
                    state.step_control_diagnostic_with_math::<FpuRootMath>(v[0] as f32, 96000.0);
                fallbacks += fallback as usize;
                let n = evaluate_nonlinear::<FpuRootMath>(&state.current);
                let full = assemble_residual_evaluated(
                    &state.current,
                    &history,
                    v[0] as f32,
                    96000.0,
                    1.5,
                    &n,
                );
                if !r.converged {
                    let row = (0..56)
                        .max_by(|&a, &b| {
                            (full[a] / generated_model::ROW_SCALE[a])
                                .abs()
                                .partial_cmp(&(full[b] / generated_model::ROW_SCALE[b]).abs())
                                .unwrap()
                        })
                        .unwrap();
                    worst_rows[row] += 1;
                }
                iters[r.iterations as usize] += 1;
                let e = r.output_v as f64 - v[32];
                assert!(e.is_finite());
                energy += v[32] * v[32];
                error += e * e;
                peak = peak.max(e.abs());
                failures += (!r.converged) as usize;
            }
            std::println!(
                "control f64 {mv}mV rms={} peak={peak} failures={failures}",
                (error / energy).sqrt()
            );
            std::println!("rows={worst_rows:?} iterations={iters:?} fallbacks={fallbacks}");
            if mv == 100 {
                assert!((error / energy).sqrt() < 1e-4);
                assert!(peak < 0.002);
                assert_eq!((failures, fallbacks), (0, 0));
            }
        }
    }
}
