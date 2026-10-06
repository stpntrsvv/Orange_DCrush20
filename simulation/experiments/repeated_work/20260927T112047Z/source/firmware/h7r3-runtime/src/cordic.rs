use core::ptr::{read_volatile, write_volatile};

const RCC_AHB2ENR: *mut u32 = 0x5802_453C as *mut u32;
const RCC_CORDICEN: u32 = 1 << 14;

const CORDIC_CSR: *mut u32 = 0x4800_4400 as *mut u32;
const CORDIC_WDATA: *mut u32 = 0x4800_4404 as *mut u32;
const CORDIC_RDATA: *const u32 = 0x4800_4408 as *const u32;

// PRECISION stores cycles minus one: field value 5 selects six iterations.
const CSR_PRECISION_6: u32 = 5 << 4;
const CSR_NRES_2: u32 = 1 << 19;
const FUNC_HCOS: u32 = 5;
#[cfg(any(not(feature = "fpu-roots"), feature = "compare-roots"))]
const FUNC_SQRT: u32 = 9;

pub struct H7r3Cordic;

#[cfg(feature = "compare-roots")]
pub struct CordicOnlyMath;
#[cfg(feature = "compare-roots")]
impl orange_dsp::NonlinearMath for CordicOnlyMath {
    fn exp(value: f32) -> f32 {
        <H7r3Cordic as orange_dsp::NonlinearMath>::exp(value)
    }
    fn sinh_cosh(value: f32) -> (f32, f32) {
        <H7r3Cordic as orange_dsp::NonlinearMath>::sinh_cosh(value)
    }
    fn sixteenth_root(value: f32) -> f32 {
        cordic_sqrt(cordic_sqrt(cordic_sqrt(cordic_sqrt(value))))
    }
}

#[cfg(feature = "compare-roots")]
pub type ComparisonMath = CordicOnlyMath;
#[cfg(not(feature = "compare-roots"))]
#[allow(dead_code)]
pub type ComparisonMath = H7r3Cordic;

pub unsafe fn enable() {
    unsafe {
        write_volatile(RCC_AHB2ENR, read_volatile(RCC_AHB2ENR) | RCC_CORDICEN);
        // Read-back guarantees that the peripheral clock is live before CSR access.
        let _ = read_volatile(RCC_AHB2ENR);
    }
}

#[inline]
fn to_q31(value: f32) -> u32 {
    (value.clamp(-1.0, 1.0 - f32::EPSILON) * 2_147_483_648.0) as i32 as u32
}

#[inline]
fn from_q31(value: u32) -> f32 {
    value as i32 as f32 * (1.0 / 2_147_483_648.0)
}

#[inline]
fn power_of_two(exponent: i32) -> f32 {
    f32::from_bits(((exponent + 127) as u32) << 23)
}

#[inline]
fn cordic_exp_remainder(value: f32) -> f32 {
    unsafe {
        // SCALE=1: argument is value/2, both results are divided by two.
        write_volatile(
            CORDIC_CSR,
            FUNC_HCOS | CSR_PRECISION_6 | (1 << 8) | CSR_NRES_2,
        );
        write_volatile(CORDIC_WDATA, to_q31(value * 0.5));
        let cosh_scaled = from_q31(read_volatile(CORDIC_RDATA));
        let sinh_scaled = from_q31(read_volatile(CORDIC_RDATA));
        2.0 * (cosh_scaled + sinh_scaled)
    }
}

#[inline]
fn cordic_direct_sinh_cosh(value: f32) -> (f32, f32) {
    unsafe {
        // SCALE=1 допускает прямой аргумент в используемом диапазоне и
        // возвращает оба результата, делённые на два.
        write_volatile(
            CORDIC_CSR,
            FUNC_HCOS | CSR_PRECISION_6 | (1 << 8) | CSR_NRES_2,
        );
        write_volatile(CORDIC_WDATA, to_q31(value * 0.5));
        let cosh = 2.0 * from_q31(read_volatile(CORDIC_RDATA));
        let sinh = 2.0 * from_q31(read_volatile(CORDIC_RDATA));
        (sinh, cosh)
    }
}

#[inline]
#[cfg(any(not(feature = "fpu-roots"), feature = "compare-roots"))]
fn cordic_sqrt(value: f32) -> f32 {
    if value <= 0.0 {
        return 0.0;
    }
    if !value.is_finite() {
        return value;
    }

    let bits = value.to_bits();
    let biased_exponent = ((bits >> 23) & 0xff) as i32;
    // The nonlinear model calls this with values >= 1, so no subnormal path is needed.
    let mut mantissa = f32::from_bits((bits & 0x007f_ffff) | (126 << 23));
    let mut exponent = biased_exponent - 126;
    if exponent & 1 != 0 {
        mantissa *= 0.5;
        exponent += 1;
    }

    unsafe {
        write_volatile(CORDIC_CSR, FUNC_SQRT | CSR_PRECISION_6);
        write_volatile(CORDIC_WDATA, to_q31(mantissa));
        from_q31(read_volatile(CORDIC_RDATA)) * power_of_two(exponent / 2)
    }
}

impl orange_dsp::NonlinearMath for H7r3Cordic {
    #[inline]
    fn exp(value: f32) -> f32 {
        let value = value.clamp(-80.0, 80.0);
        let scaled = value * core::f32::consts::LOG2_E;
        let exponent = if scaled >= 0.0 {
            (scaled + 0.5) as i32
        } else {
            (scaled - 0.5) as i32
        };
        let remainder = value - exponent as f32 * core::f32::consts::LN_2;
        cordic_exp_remainder(remainder) * power_of_two(exponent)
    }

    #[inline]
    fn sinh_cosh(value: f32) -> (f32, f32) {
        cordic_direct_sinh_cosh(value)
    }

    #[inline]
    fn sixteenth_root(value: f32) -> f32 {
        #[cfg(feature = "fpu-roots")]
        {
            // Тот же корень 16-й степени: четыре аппаратных sqrt f32,
            // без нормализации в Q31 и обмена с периферией CORDIC.
            return orange_dsp::native_sixteenth_root(value);
        }
        #[cfg(not(feature = "fpu-roots"))]
        cordic_sqrt(cordic_sqrt(cordic_sqrt(cordic_sqrt(value))))
    }
}
