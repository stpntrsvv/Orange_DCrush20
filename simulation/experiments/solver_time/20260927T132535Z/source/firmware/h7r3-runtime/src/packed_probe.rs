use super::cordic::H7r3Cordic;
use core::ptr::{read_volatile, write_volatile};
use orange_dsp::StepResult;
#[cfg(feature = "repeated-counted")]
use orange_dsp::repeated::RepeatedState as CondensedState;
#[cfg(feature = "repeated-counted")]
use orange_dsp::repeated::RepeatedState as PackedState;
#[cfg(not(feature = "repeated-probe"))]
use orange_dsp::{condensed::CondensedState, packed::PackedState};
#[cfg(feature = "exponential-probe")]
use orange_dsp::{
    exponential::ExponentialState as PackedState, packed::PackedState as CondensedState,
};
#[cfg(all(
    feature = "repeated-probe",
    not(feature = "repeated-counted"),
    not(feature = "scalar-probe"),
    not(feature = "exponential-probe")
))]
use orange_dsp::{packed::PackedState as CondensedState, repeated::RepeatedState as PackedState};
#[cfg(feature = "scalar-probe")]
use orange_dsp::{packed::PackedState as CondensedState, scalar::ScalarState as PackedState};

#[cfg(all(
    feature = "packed-fast-math",
    not(feature = "packed-root"),
    not(feature = "packed-extra")
))]
type Math = orange_dsp::packed::FastMath<H7r3Cordic>;
#[cfg(feature = "packed-root")]
type Math = orange_dsp::packed::RootMath<H7r3Cordic>;
#[cfg(not(feature = "packed-fast-math"))]
type Math = H7r3Cordic;
impl orange_dsp::packed::PackageMath for H7r3Cordic {}
#[cfg(all(feature = "packed-extra", not(feature = "packed-pole")))]
type Math = orange_dsp::packed::ExtraMath<H7r3Cordic, 1>;
#[cfg(feature = "packed-pole")]
type Math = orange_dsp::packed::ExtraMath<H7r3Cordic, 2>;
const F: u8 = if cfg!(feature = "packed-mixed") {
    5
} else if cfg!(feature = "packed-f32") {
    1
} else {
    0
};
const COUNTER: *const u32 = 0xe0001004 as *const u32;

const INNER: usize = if cfg!(feature = "repeated-output") {
    2
} else {
    1
};
fn combine(a: StepResult, b: StepResult) -> StepResult {
    StepResult {
        output_v: b.output_v,
        residual_norm: a.residual_norm.max(b.residual_norm),
        iterations: a.iterations + b.iterations,
        converged: a.converged && b.converged,
    }
}
#[inline(never)]
fn candidate(
    s: &mut PackedState,
    input: f32,
    previous: f32,
    counts: &mut orange_dsp::repeated::Counters,
) -> StepResult {
    #[cfg(feature = "repeated-counted")]
    {
        return s.step_profiled::<Math, F>(input, counts);
    }
    #[cfg(feature = "exponential-probe")]
    {
        let _ = (previous, counts);
        return s.step::<false>(input);
    }
    #[cfg(all(not(feature = "repeated-counted"), not(feature = "exponential-probe")))]
    {
        let _ = counts;
        if INNER == 2 {
            let a = s.step::<Math, F>(0.5 * (previous + input));
            let b = s.step::<Math, F>(input);
            combine(a, b)
        } else {
            s.step::<Math, F>(input)
        }
    }
}
#[inline(never)]
fn control(s: &mut CondensedState, input: f32, previous: f32) -> StepResult {
    #[cfg(not(feature = "repeated-probe"))]
    {
        let _ = previous;
        s.step::<H7r3Cordic>(input)
    }
    #[cfg(feature = "repeated-probe")]
    {
        if INNER == 2 {
            let a = s.step::<Math, 5>(0.5 * (previous + input));
            let b = s.step::<Math, 5>(input);
            combine(a, b)
        } else {
            s.step::<Math, 5>(input)
        }
    }
}

#[unsafe(link_section = ".text.Reset")]
#[unsafe(no_mangle)]
pub unsafe extern "C" fn Reset() -> ! {
    unsafe {
        super::cordic::enable();
        write_volatile(
            super::COREDEBUG_DEMCR,
            read_volatile(super::COREDEBUG_DEMCR) | (1 << 24),
        );
        write_volatile(super::DWT_CYCCNT, 0);
        write_volatile(super::DWT_CTRL, read_volatile(super::DWT_CTRL) | 1);
        write_volatile(super::RESULT_MAGIC, 0x5041434b);
        write_volatile(super::RESULT_DONE, 0);
        for case in 0..(if cfg!(feature = "exponential-probe") {
            1
        } else {
            3
        }) {
            let mut a = PackedState::default();
            let mut b = CondensedState::default();
            let mut w = [0u32; 40];
            let mut random = 1u32;
            let mut previous = 0.0_f32;
            let mut counts = orange_dsp::repeated::Counters::default();
            let (mut pair, mut block, mut base_pair, mut base_block) = (0, 0, 0, 0);
            for i in 0..1024 {
                random = random.wrapping_mul(1664525).wrapping_add(1013904223);
                let phase = ((i * INNER + 96) % 384) as f32 / 384.0;
                let input = if cfg!(feature = "packed-stress") {
                    match case {
                        0 | 1 => {
                            let level = if case == 0 { 0.25 } else { 1.0 };
                            level
                                * if i >= 96 && i < 384 {
                                    1.0
                                } else if i >= 384 && i < 768 {
                                    -1.0
                                } else {
                                    0.0
                                }
                        }
                        _ => f32::from_bits(read_volatile((0x20000000 + i * 4) as *const u32)),
                    }
                } else {
                    match case {
                        0 => 0.1 * (1.0 - 4.0 * (phase - 0.5).abs()),
                        1 => 1.0 - 4.0 * (phase - 0.5).abs(),
                        _ => 0.25 * (random as i32 as f32 / 2147483648.0),
                    }
                };
                let before = a.retries;
                let (ar, br, ca, cb) = if i % 2 == 0 {
                    let t = read_volatile(COUNTER);
                    let ar = candidate(&mut a, core::hint::black_box(input), previous, &mut counts);
                    let u = read_volatile(COUNTER);
                    let br = control(&mut b, core::hint::black_box(input), previous);
                    let v = read_volatile(COUNTER);
                    (ar, br, u.wrapping_sub(t), v.wrapping_sub(u))
                } else {
                    let t = read_volatile(COUNTER);
                    let br = control(&mut b, core::hint::black_box(input), previous);
                    let u = read_volatile(COUNTER);
                    let ar = candidate(&mut a, core::hint::black_box(input), previous, &mut counts);
                    let v = read_volatile(COUNTER);
                    (ar, br, v.wrapping_sub(u), u.wrapping_sub(t))
                };
                previous = input;
                if i >= 32 {
                    w[18] += ca;
                    w[19] += cb;
                    w[20] = w[20].max(ca);
                    w[21] = w[21].max(cb);
                    w[22] += (!ar.converged) as u32;
                    w[28] += (!br.converged) as u32;
                    w[27] += 1;
                    w[0] += ar.iterations as u32;
                    w[1] = w[1].max(ar.iterations as u32);
                    w[2] = w[2].max(ar.residual_norm.to_bits());
                    pair += ca;
                    block += ca;
                    base_pair += cb;
                    base_block += cb;
                    if (i - 32) % 2 == 1 {
                        w[4] = w[4].max(pair);
                        w[11] = w[11].max(base_pair);
                        pair = 0;
                        base_pair = 0;
                    }
                    if (i - 32) % 128 == 127 {
                        w[5] = w[5].max(block);
                        w[12] = w[12].max(base_block);
                        block = 0;
                        base_block = 0;
                    }
                    if a.retries > before {
                        w[8] += ca;
                        w[9] += 1;
                        w[10] = w[10].max(ca);
                    }
                }
                w[36] += (!ar.converged) as u32;
                w[37] += (!br.converged) as u32;
                let trace = (0x20001000 + case * 16384 + i * 16) as *mut u32;
                for (j, value) in [ar.output_v.to_bits(), br.output_v.to_bits(), ca, cb]
                    .iter()
                    .enumerate()
                {
                    write_volatile(trace.add(j), *value);
                }
                core::hint::black_box((ar, br));
            }
            w[39] = INNER as u32;
            #[cfg(feature = "repeated-counted")]
            for (i, value) in counts.blocks.iter().flatten().enumerate() {
                write_volatile((0x2000fb00 + case * 256 + i * 4) as *mut u32, *value);
            }
            #[cfg(feature = "scalar-probe")]
            w[13..16].copy_from_slice(&a.scalar_counts);
            w[3] = a.retries;
            w[7] = core::mem::size_of::<PackedState>() as u32;
            w[29] = b.retries;
            w[30..35].copy_from_slice(&a.direct[..5]);
            w[38] = a.direct[5];
            w[35] = if cfg!(feature = "exponential-probe") {
                10
            } else if cfg!(feature = "scalar-probe") {
                9
            } else if cfg!(feature = "repeated-probe") {
                8
            } else if cfg!(feature = "packed-mixed") {
                7
            } else if cfg!(feature = "packed-pole") {
                6
            } else if cfg!(feature = "packed-extra") {
                5
            } else if cfg!(feature = "packed-root") {
                4
            } else if F != 0 {
                3
            } else if cfg!(feature = "packed-fast-math") {
                2
            } else {
                1
            };
            let base = (0x2000f800 + case * 256) as *mut u32;
            for i in 0..40 {
                write_volatile(base.add(i), w[i]);
            }
        }
        write_volatile(super::RESULT_DONE, 0x444f4e45);
    }
    loop {
        core::hint::spin_loop();
    }
}
