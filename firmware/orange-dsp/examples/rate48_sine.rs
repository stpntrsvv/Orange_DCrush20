use orange_dsp::{bounded48::BoundedState,packed::ExtraMath,FpuRootMath};
use std::io::Write;
fn main(){
 let d=std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../simulation/experiments/rate48/sine");
 for item in std::fs::read_dir(&d).unwrap(){let p=item.unwrap().path();if p.extension().and_then(|s|s.to_str())!=Some("input"){continue;}
  let input=std::fs::read(&p).unwrap();let mut s=BoundedState::<3,7>::default();let mut w=std::io::BufWriter::new(std::fs::File::create(p.with_extension("candidate")).unwrap());
  for v in input.chunks_exact(4){let u=f32::from_le_bytes(v.try_into().unwrap());let before=s.counts;let r=s.step::<ExtraMath<FpuRootMath,2>,5>(u);
   for b in 0..5{assert!(s.counts[b][1]-before[b][1]<=3);}
   for f in [u,r.output_v,r.residual_norm,r.iterations as f32]{w.write_all(&f.to_le_bytes()).unwrap();}
   for a in [&s.ports[..],&s.current[..],&s.previous[..]]{for f in a{w.write_all(&f.to_le_bytes()).unwrap();}}
  }
 }
}
