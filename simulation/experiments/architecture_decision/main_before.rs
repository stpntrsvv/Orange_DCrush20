#![no_std]
#![no_main]

mod cordic;

use core::panic::PanicInfo;
use core::ptr::{read_volatile, write_volatile};

const COREDEBUG_DEMCR: *mut u32 = 0xE000_EDFC as *mut u32;
const DWT_CTRL: *mut u32 = 0xE000_1000 as *mut u32;
const DWT_CYCCNT: *mut u32 = 0xE000_1004 as *mut u32;
#[cfg(feature = "icache")]
const SCB_CCR: *mut u32 = 0xE000_ED14 as *mut u32;
#[cfg(feature = "icache")]
const SCB_ICIALLU: *mut u32 = 0xE000_EF50 as *mut u32;

#[cfg(feature = "icache")]
unsafe fn enable_instruction_cache() {
    unsafe {
        core::arch::asm!("dsb", options(nostack, preserves_flags));
        write_volatile(SCB_ICIALLU, 0);
        core::arch::asm!("dsb", "isb", options(nostack, preserves_flags));
        write_volatile(SCB_CCR, read_volatile(SCB_CCR) | (1 << 17));
        core::arch::asm!("dsb", "isb", options(nostack, preserves_flags));
    }
}

// Результаты лежат в конце DTCM: этот банк не кэшируется, и ST-LINK
// видит запись сразу. После опыта выполняется системный Reset.
const RESULT_NONLINEAR_CYCLES: *mut u32 = 0x2000_FFD8 as *mut u32;
const RESULT_RESIDUAL_CYCLES: *mut u32 = 0x2000_FFDC as *mut u32;
const RESULT_JACOBIAN_CYCLES: *mut u32 = 0x2000_FFE0 as *mut u32;
const RESULT_SOLVE_CYCLES: *mut u32 = 0x2000_FFE4 as *mut u32;
const RESULT_RECOVER_APPLY_CYCLES: *mut u32 = 0x2000_FFE8 as *mut u32;
const RESULT_PORT_RECOVER_CYCLES: *mut u32 = 0x2000_FFEC as *mut u32;
const RESULT_MAGIC: *mut u32 = 0x2000_FFF0 as *mut u32;
const RESULT_CYCLES: *mut u32 = 0x2000_FFF4 as *mut u32;
const RESULT_VALUE: *mut u32 = 0x2000_FFF8 as *mut u32;
const RESULT_DONE: *mut u32 = 0x2000_FFFC as *mut u32;

#[unsafe(link_section = ".text.Reset")]
#[unsafe(no_mangle)]
#[cfg(not(feature = "reuse-probe"))]
pub unsafe extern "C" fn Reset() -> ! {
    // TRCENA и CYCCNT — регистры ядра Cortex-M7, периферийный HAL не нужен.
    unsafe {
        #[cfg(feature = "icache")]
        enable_instruction_cache();
        cordic::enable();
        write_volatile(COREDEBUG_DEMCR, read_volatile(COREDEBUG_DEMCR) | (1 << 24));
        write_volatile(DWT_CYCCNT, 0);
        write_volatile(DWT_CTRL, read_volatile(DWT_CTRL) | 1);

        write_volatile(RESULT_MAGIC, 0x4F52_4E47); // "ORNG"
        write_volatile(RESULT_DONE, 0);

        let x = &orange_dsp::generated_model::FIXTURE_X;
        let warm = orange_dsp::newton_iteration_physical_blocks_profiled_with_math::<
            cordic::H7r3Cordic,
            _,
        >(
            x,
            &orange_dsp::generated_model::FIXTURE_HISTORY,
            0.03125,
            96_000.0,
            1.5,
            |_| {},
        );
        core::hint::black_box(&warm);
        let mut corrected = [0.0_f32; 56];
        let mut stage_cycles = [0_u32; 6];
        let start = read_volatile(DWT_CYCCNT);
        for _ in 0..32 {
            let mut stamps = [0_u32; 9];
            corrected = orange_dsp::newton_iteration_physical_blocks_profiled_with_math::<
                cordic::H7r3Cordic,
                _,
            >(
                core::hint::black_box(x),
                &orange_dsp::generated_model::FIXTURE_HISTORY,
                0.03125,
                96_000.0,
                1.5,
                |index| stamps[index] = read_volatile(DWT_CYCCNT),
            )
            .unwrap_or([0.0; 56]);
            stage_cycles[0] += stamps[1].wrapping_sub(stamps[0]);
            stage_cycles[1] += stamps[2].wrapping_sub(stamps[1]);
            stage_cycles[2] += stamps[4].wrapping_sub(stamps[3]);
            stage_cycles[3] += stamps[5].wrapping_sub(stamps[4]);
            stage_cycles[4] += stamps[6].wrapping_sub(stamps[5]);
            stage_cycles[5] += stamps[8].wrapping_sub(stamps[6]);
            core::hint::black_box(&corrected);
        }
        let elapsed = read_volatile(DWT_CYCCNT).wrapping_sub(start);
        core::hint::black_box(
            orange_dsp::newton_iteration_with_math::<cordic::H7r3Cordic>(
                x,
                &orange_dsp::generated_model::FIXTURE_HISTORY,
                0.03125,
                96_000.0,
                1.5,
            ),
        );
        let baseline_start = read_volatile(DWT_CYCCNT);
        for _ in 0..32 {
            core::hint::black_box(
                orange_dsp::newton_iteration_with_math::<cordic::H7r3Cordic>(
                    core::hint::black_box(x),
                    &orange_dsp::generated_model::FIXTURE_HISTORY,
                    0.03125,
                    96_000.0,
                    1.5,
                ),
            );
        }
        let baseline_elapsed = read_volatile(DWT_CYCCNT).wrapping_sub(baseline_start);
        let mut maximum_error_ratio = 0.0_f32;
        for index in 0..56 {
            let reference_delta = orange_dsp::generated_model::FIXTURE_FULL_DELTA[index];
            let candidate_delta = corrected[index] - x[index];
            let tolerance = (reference_delta.abs() * 3.0e-3).max(2.0e-5);
            maximum_error_ratio =
                maximum_error_ratio.max((candidate_delta - reference_delta).abs() / tolerance);
        }
        write_volatile(RESULT_NONLINEAR_CYCLES, stage_cycles[0]);
        for case in 0..6 {
            let mut trial = *x;
            match case {
                0 => trial.fill(0.0),
                1 => {
                    trial[27] = -0.5;
                    trial[40] = 0.5;
                }
                2 => {
                    trial[27] = 0.5;
                    trial[40] = -0.5;
                }
                3 => {
                    trial[5] = 0.25;
                    trial[3] = 0.25;
                    trial[14] = -0.25;
                    trial[12] = -0.25;
                }
                4 => {
                    trial[5] = 10.0;
                    trial[3] = -10.0;
                    trial[18] = -10.0;
                    trial[16] = 10.0;
                }
                _ => {
                    trial[32] = trial[30];
                    trial[54] = 4.0;
                    trial[55] = 20.0;
                }
            }
            let result = orange_dsp::newton_iteration_physical_blocks_profiled_with_math::<
                cordic::H7r3Cordic,
                _,
            >(
                &trial,
                &orange_dsp::generated_model::FIXTURE_HISTORY,
                0.03125,
                96_000.0,
                1.5,
                |_| {},
            );
            if let Some(result) = result {
                for i in 0..56 {
                    let reference =
                        orange_dsp::generated_model::FIXTURE_BRANCH_FULL_DELTAS[case * 56 + i];
                    let ratio = ((result[i] - trial[i]) - reference).abs()
                        / (reference.abs() * 0.003).max(2e-5);
                    maximum_error_ratio = if ratio.is_finite() {
                        maximum_error_ratio.max(ratio)
                    } else {
                        f32::INFINITY
                    };
                }
            } else {
                maximum_error_ratio = f32::INFINITY;
            }
        }
        write_volatile(RESULT_RESIDUAL_CYCLES, stage_cycles[1]);
        write_volatile(RESULT_JACOBIAN_CYCLES, stage_cycles[2]);
        write_volatile(RESULT_SOLVE_CYCLES, baseline_elapsed);
        write_volatile(RESULT_RECOVER_APPLY_CYCLES, stage_cycles[4]);
        write_volatile(RESULT_PORT_RECOVER_CYCLES, stage_cycles[5]);
        write_volatile(RESULT_CYCLES, elapsed);
        write_volatile(RESULT_VALUE, maximum_error_ratio.to_bits());
        write_volatile(RESULT_DONE, 0x444F_4E45); // "DONE"
    }

    loop {
        core::hint::spin_loop();
    }
}

/// Парный замер полных шагов с одинаковым входом, включая проверки и историю.
#[cfg(all(feature = "reuse-probe", not(feature = "step-profile")))]
#[unsafe(link_section = ".text.Reset")]
#[unsafe(no_mangle)]
pub unsafe extern "C" fn Reset() -> ! {
    unsafe {
        cordic::enable();
        write_volatile(COREDEBUG_DEMCR, read_volatile(COREDEBUG_DEMCR) | (1 << 24));
        write_volatile(DWT_CYCCNT, 0);
        write_volatile(DWT_CTRL, read_volatile(DWT_CTRL) | 1);
        write_volatile(RESULT_MAGIC, 0x5245_5553); // REUS
        write_volatile(RESULT_DONE, 0);
        let mut cached = orange_dsp::DspState::default();
        let mut original = orange_dsp::DspState::default();
        let mut times = [0_u32; 2];
        let mut maximum = [0_u32; 2];
        let mut mismatches = 0_u32;
        let mut iterations = 0_u32;
        let mut failures = 0_u32;
        #[cfg(feature = "reuse-noise")]
        let mut random = 1_u32;
        for index in 0..1024 {
            let phase = ((index + 96) % 384) as f32 / 384.0;
            let input = 0.1 * (1.0 - 4.0 * (phase - 0.5).abs());
            #[cfg(feature = "reuse-noise")]
            let input = {
                let _ = input;
                random = random.wrapping_mul(1664525).wrapping_add(1013904223);
                0.25 * (random as i32 as f32 / 2147483648.0)
            };
            let start = read_volatile(DWT_CYCCNT);
            let a = cached.step_physical_with_math::<cordic::H7r3Cordic, true>(
                core::hint::black_box(input),
                96000.0,
            );
            let middle = read_volatile(DWT_CYCCNT);
            let b = original.step_physical_with_math::<cordic::H7r3Cordic, false>(
                core::hint::black_box(input),
                96000.0,
            );
            let end = read_volatile(DWT_CYCCNT);
            if index >= 32 {
                let elapsed = [middle.wrapping_sub(start), end.wrapping_sub(middle)];
                for i in 0..2 {
                    times[i] += elapsed[i];
                    maximum[i] = maximum[i].max(elapsed[i]);
                }
                iterations += a.iterations as u32;
                failures += (!a.converged) as u32;
            }
            if a.output_v.to_bits() != b.output_v.to_bits()
                || a.residual_norm.to_bits() != b.residual_norm.to_bits()
                || a.iterations != b.iterations
                || a.converged != b.converged
            {
                mismatches += 1;
            }
            core::hint::black_box((a, b));
        }
        write_volatile(RESULT_NONLINEAR_CYCLES, times[0]);
        write_volatile(RESULT_RESIDUAL_CYCLES, times[1]);
        write_volatile(RESULT_JACOBIAN_CYCLES, maximum[0]);
        write_volatile(RESULT_SOLVE_CYCLES, maximum[1]);
        write_volatile(RESULT_RECOVER_APPLY_CYCLES, iterations);
        write_volatile(RESULT_PORT_RECOVER_CYCLES, failures);
        write_volatile(RESULT_CYCLES, 992);
        write_volatile(RESULT_VALUE, mismatches);
        write_volatile(RESULT_DONE, 0x444F_4E45);
    }
    loop {
        core::hint::spin_loop();
    }
}

/// Три независимых пуска: плавный 100 мВ, плавный 1 В, шум 250 мВ.
#[cfg(feature = "step-profile")]
#[unsafe(link_section = ".text.Reset")]
#[unsafe(no_mangle)]
pub unsafe extern "C" fn Reset() -> ! {
    unsafe {
        cordic::enable();
        write_volatile(COREDEBUG_DEMCR, read_volatile(COREDEBUG_DEMCR) | (1 << 24));
        write_volatile(DWT_CYCCNT, 0);
        write_volatile(DWT_CTRL, read_volatile(DWT_CTRL) | 1);
        write_volatile(RESULT_MAGIC, 0x5354_4550); // STEP
        write_volatile(RESULT_DONE, 0);
        for address in [
            RESULT_NONLINEAR_CYCLES,
            RESULT_RESIDUAL_CYCLES,
            RESULT_JACOBIAN_CYCLES,
            RESULT_SOLVE_CYCLES,
            RESULT_RECOVER_APPLY_CYCLES,
            RESULT_PORT_RECOVER_CYCLES,
            RESULT_CYCLES,
            RESULT_VALUE,
        ] {
            write_volatile(address, 0);
        }
        for case in 0..3 {
            let mut state = orange_dsp::DspState::default();
            let mut control = orange_dsp::DspState::default();
            let mut totals = [0_u32; 9];
            let mut counts = [0_u32; 9];
            let mut summary = [0_u32; 10];
            let mut control_failures = 0_u32;
            let mut maximum_difference = 0.0_f32;
            let mut random = 1_u32;
            for index in 0..1024 {
                let phase = ((index + 96) % 384) as f32 / 384.0;
                random = random.wrapping_mul(1664525).wrapping_add(1013904223);
                let input = match case {
                    0 => 0.1 * (1.0 - 4.0 * (phase - 0.5).abs()),
                    1 => 1.0 - 4.0 * (phase - 0.5).abs(),
                    _ => 0.25 * (random as i32 as f32 / 2147483648.0),
                };
                #[cfg(not(any(feature = "absolute-ports", feature = "control-ports")))]
                let mut starts = [0_u32; 9];
                #[allow(unused_mut)]
                let mut elapsed = [0_u32; 9];
                #[allow(unused_mut)]
                let mut calls = [0_u32; 9];
                let begin = read_volatile(DWT_CYCCNT);
                #[cfg(not(any(feature = "absolute-ports", feature = "control-ports")))]
                let a = state.step_physical_profiled_with_math::<cordic::H7r3Cordic, _>(
                    core::hint::black_box(input),
                    96000.0,
                    |id, start| {
                        let now = read_volatile(DWT_CYCCNT);
                        if start {
                            starts[id] = now;
                        } else {
                            elapsed[id] += now.wrapping_sub(starts[id]);
                            calls[id] += 1;
                        }
                    },
                );
                #[cfg(all(feature = "absolute-ports", not(feature = "control-ports")))]
                let a = state.step_absolute_with_math::<cordic::H7r3Cordic>(
                    core::hint::black_box(input),
                    96000.0,
                );
                #[cfg(feature = "control-ports")]
                let (a, fallback) = state.step_control_diagnostic_with_math::<cordic::H7r3Cordic>(
                    core::hint::black_box(input),
                    96000.0,
                );
                let middle = read_volatile(DWT_CYCCNT);
                #[cfg(not(feature = "compare-deferred"))]
                let b = control.step_physical_with_math::<cordic::ComparisonMath, true>(
                    core::hint::black_box(input),
                    96000.0,
                );
                #[cfg(feature = "compare-deferred")]
                let b = control.step_physical_eager_with_math::<cordic::H7r3Cordic>(
                    core::hint::black_box(input),
                    96000.0,
                );
                let end = read_volatile(DWT_CYCCNT);
                if index >= 32 {
                    #[cfg(feature = "control-ports")]
                    {
                        calls[0] += fallback as u32;
                    }
                    control_failures += (!b.converged) as u32;
                    maximum_difference = maximum_difference.max((a.output_v - b.output_v).abs());
                    for i in 0..9 {
                        totals[i] += elapsed[i];
                        counts[i] += calls[i];
                    }
                    let profiled = middle.wrapping_sub(begin);
                    let plain = end.wrapping_sub(middle);
                    summary[0] += profiled;
                    summary[1] += plain;
                    summary[2] = summary[2].max(profiled);
                    summary[3] = summary[3].max(plain);
                    summary[4] += (!a.converged) as u32;
                    summary[5 + a.iterations as usize] += 1;
                    summary[9] += 1;
                }
                if a.output_v.to_bits() != b.output_v.to_bits()
                    || a.residual_norm.to_bits() != b.residual_norm.to_bits()
                    || a.iterations != b.iterations
                    || a.converged != b.converged
                {
                    summary[8] += 1;
                }
                core::hint::black_box((a, b));
            }
            let result = (0x2000_F800 + case * 128) as *mut u32;
            for i in 0..9 {
                write_volatile(result.add(i), totals[i]);
                write_volatile(result.add(9 + i), counts[i]);
            }
            for i in 0..10 {
                write_volatile(result.add(18 + i), summary[i]);
            }
            write_volatile(result.add(28), control_failures);
            write_volatile(result.add(29), maximum_difference.to_bits());
        }
        write_volatile(RESULT_DONE, 0x444F_4E45);
    }
    loop {
        core::hint::spin_loop();
    }
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {
        core::hint::spin_loop();
    }
}
