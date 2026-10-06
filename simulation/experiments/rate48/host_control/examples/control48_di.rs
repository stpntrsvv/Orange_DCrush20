//! Полная DI: прежний BoundedState<3,7>, только коэффициенты 48к; P7/96к контроль.
use orange_dsp::{bounded48::BoundedState,packed::{PackedState,ExtraMath},FpuRootMath};
use std::{io::Write,path::Path};
type Math=ExtraMath<FpuRootMath,2>;
fn main(){
 let root=Path::new("/Users/stpntrsvv/OrangeDCrush20").to_path_buf();
 let out=root.join("simulation/experiments/rate48/control48"); std::fs::create_dir_all(&out).unwrap();
 let pcm=std::fs::read(root.join("simulation/experiments/rate48/input.pcm16")).unwrap();
 let peak=pcm.chunks_exact(2).map(|v|(i16::from_le_bytes(v.try_into().unwrap()) as f32).abs()).fold(0.,f32::max);
 for level in [0.1f32,0.25,1.0]{
  let key=format!("{:.0}mv",level*1000.);let mut a=BoundedState::<3,7>::default();let mut b=PackedState::default();let mut old=0.;
  let mut file=std::io::BufWriter::new(std::fs::File::create(out.join(format!("{key}.bin"))).unwrap());
  let mut checkpoints=std::io::BufWriter::new(std::fs::File::create(out.join(format!("{key}_checkpoints.bin"))).unwrap());
  let mut fails=[0u32;2];let mut stops=[0u32;2];let mut maxnorm=0f32;let mut maxattempt=[0u32;5];let mut memory=[0f32;28];let mut previous=[0f32;28];let mut worst=0f32;let mut wi=0;let mut events=Vec::new();
  for (n,v) in pcm.chunks_exact(2).enumerate(){
   let u=i16::from_le_bytes(v.try_into().unwrap()) as f32/peak*level;
   let counts=a.counts;let steps=[a.steps,b.steps];let x=a.step::<Math,5>(u);let y=b.step::<Math,5>(u);let mid=orange_dsp::StepResult{output_v:y.output_v,residual_norm:y.residual_norm,iterations:y.iterations,converged:y.converged};
   fails[0]+=(!x.converged) as u32;fails[1]+=(!mid.converged || !y.converged) as u32;stops[0]+=(a.steps!=steps[0]+1) as u32;stops[1]+=(b.steps!=steps[1]+1) as u32;
   assert!(x.output_v.is_finite() && y.output_v.is_finite());
   maxnorm=maxnorm.max(x.residual_norm);
   for i in 0..5 {let k=a.counts[i][1]-counts[i][1];maxattempt[i]=maxattempt[i].max(k);assert!(k<=3);}
   if !x.converged && events.len()<100 {events.push(format!("{{\"sample\":{n},\"input\":{u},\"norm\":{}}}",x.residual_norm));}
   for i in 0..28 {memory[i]=memory[i].max((a.current[i]-b.current[i]).abs());previous[i]=previous[i].max((a.previous[i]-b.previous[i]).abs());}
   if (x.output_v-y.output_v).abs()>worst{worst=(x.output_v-y.output_v).abs();wi=n;}
   for f in [x.output_v,mid.output_v,y.output_v]{file.write_all(&f.to_le_bytes()).unwrap();}
   if (n+1)%16384==0 || n+1==pcm.len()/2 {
    for state in [&a.current,&a.previous,&b.current,&b.previous]{for f in state{checkpoints.write_all(&f.to_le_bytes()).unwrap();}}
   }
   old=u;
  }
  let j=format!("{{\"samples\":{},\"rate\":48000,\"failures\":{fails:?},\"stops\":{stops:?},\"max_local_norm\":{maxnorm},\"max_attempts_per_block\":{maxattempt:?},\"peak_raw_endpoint_difference_v\":{worst},\"peak_sample\":{wi},\"memory_peak_v\":{memory:?},\"previous_memory_different_time_offsets_peak_v\":{previous:?},\"work_counts\":{:?},\"events\":[{}]}}\n",pcm.len()/2,a.counts,events.join(","));
  std::fs::write(out.join(format!("{key}.json")),&j).unwrap();println!("{key}: {j}");
 }
}
