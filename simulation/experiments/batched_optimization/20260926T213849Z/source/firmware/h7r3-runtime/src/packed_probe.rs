use super::cordic::H7r3Cordic;
use core::ptr::{read_volatile, write_volatile};
use orange_dsp::{StepResult, condensed::CondensedState, packed::PackedState};

#[cfg(all(feature = "packed-fast-math", not(feature = "packed-root")))]
type Math = orange_dsp::packed::FastMath<H7r3Cordic>;
#[cfg(feature = "packed-root")]
type Math = orange_dsp::packed::RootMath<H7r3Cordic>;
#[cfg(not(feature = "packed-fast-math"))]
type Math = H7r3Cordic;
const F: bool = cfg!(feature = "packed-f32");
const COUNTER: *const u32 = 0xe0001004 as *const u32;

#[inline(never)]
fn candidate(s: &mut PackedState, input: f32) -> StepResult {
    s.step::<Math, F>(input)
}
#[inline(never)]
fn control(s: &mut CondensedState, input: f32) -> StepResult {
    s.step::<H7r3Cordic>(input)
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
        for case in 0..3 {
            let mut a = PackedState::default();
            let mut b = CondensedState::default();
            let mut w = [0u32; 40];
            let mut random = 1u32;
            let (mut pair, mut block, mut base_pair, mut base_block) = (0, 0, 0, 0);
            for i in 0..1024 {
                random = random.wrapping_mul(1664525).wrapping_add(1013904223);
                let phase = ((i + 96) % 384) as f32 / 384.0;
                let input = match case {
                    0 => 0.1 * (1.0 - 4.0 * (phase - 0.5).abs()),
                    1 => 1.0 - 4.0 * (phase - 0.5).abs(),
                    _ => 0.25 * (random as i32 as f32 / 2147483648.0),
                };
                let before = a.retries;
                let (ar, br, ca, cb) = if i % 2 == 0 {
                    let t = read_volatile(COUNTER);
                    let ar = candidate(&mut a, core::hint::black_box(input));
                    let u = read_volatile(COUNTER);
                    let br = control(&mut b, core::hint::black_box(input));
                    let v = read_volatile(COUNTER);
                    (ar, br, u.wrapping_sub(t), v.wrapping_sub(u))
                } else {
                    let t = read_volatile(COUNTER);
                    let br = control(&mut b, core::hint::black_box(input));
                    let u = read_volatile(COUNTER);
                    let ar = candidate(&mut a, core::hint::black_box(input));
                    let v = read_volatile(COUNTER);
                    (ar, br, v.wrapping_sub(u), u.wrapping_sub(t))
                };
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
            w[3] = a.retries;
            w[7] = core::mem::size_of::<PackedState>() as u32;
            w[29] = b.retries;
            w[30..35].copy_from_slice(&a.direct);
            w[35] = if cfg!(feature = "packed-root") {
                4
            } else if F {
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
