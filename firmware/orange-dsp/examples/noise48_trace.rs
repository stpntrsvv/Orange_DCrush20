use orange_dsp::{bounded48_noise::BoundedState,packed::ExtraMath,FpuRootMath};
fn main(){
 let args:Vec<_>=std::env::args().collect();let bytes=std::fs::read(&args[1]).unwrap();
 let v:Vec<f32>=bytes.chunks_exact(4).map(|v|f32::from_le_bytes(v.try_into().unwrap())).collect();
 let mut state=BoundedState::<3,7>::default();state.current.copy_from_slice(&v[1..29]);
 state.previous.copy_from_slice(&v[29..57]);state.ports.copy_from_slice(&v[57..65]);
 println!("{{\"original_start\":{:?},\"slew_start\":{:?}}}",state.trace_ic3a::<ExtraMath<FpuRootMath,2>,5>(v[0],false),state.trace_ic3a::<ExtraMath<FpuRootMath,2>,5>(v[0],true));
}
