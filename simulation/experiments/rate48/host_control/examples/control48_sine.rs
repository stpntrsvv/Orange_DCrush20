use orange_dsp::{packed::PackedState as BoundedState,packed::ExtraMath,FpuRootMath};
use std::io::Write;
fn main(){
 let d=std::path::Path::new("/Users/stpntrsvv/OrangeDCrush20/simulation/experiments/rate48/sine").to_path_buf();
 for item in std::fs::read_dir(&d).unwrap(){let p=item.unwrap().path();if p.extension().and_then(|s|s.to_str())!=Some("input"){continue;}
  let input=std::fs::read(&p).unwrap();let mut s=BoundedState::default();let mut w=std::io::BufWriter::new(std::fs::File::create(p.with_extension("P7_48")).unwrap());
  for v in input.chunks_exact(4){let u=f32::from_le_bytes(v.try_into().unwrap());let r=s.step::<ExtraMath<FpuRootMath,2>,5>(u);
   
   for f in [u,r.output_v,r.residual_norm,r.iterations as f32]{w.write_all(&f.to_le_bytes()).unwrap();}
   for a in [&s.ports[..],&s.current[..],&s.previous[..]]{for f in a{w.write_all(&f.to_le_bytes()).unwrap();}}
  }
 }
}
