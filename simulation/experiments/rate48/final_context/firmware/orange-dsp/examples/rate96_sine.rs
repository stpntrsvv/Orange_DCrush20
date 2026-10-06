//! Контроль тех же синусоидальных входов прежними Bounded/96 и P7/96.
use orange_dsp::{bounded::BoundedState,packed::{PackedState,ExtraMath},FpuRootMath};
use std::io::Write;
fn main(){
 let d=std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../simulation/experiments/rate48/sine");
 for item in std::fs::read_dir(&d).unwrap(){let p=item.unwrap().path();if p.extension().and_then(|s|s.to_str())!=Some("input"){continue;}
  let input=std::fs::read(&p).unwrap();let mut a=BoundedState::<3,7>::default();let mut b=PackedState::default();let mut old=0.;let mut w=std::io::BufWriter::new(std::fs::File::create(p.with_extension("control96")).unwrap());
  for v in input.chunks_exact(4){let u=f32::from_le_bytes(v.try_into().unwrap());
   for q in [0.5*(old+u),u]{let x=a.step::<ExtraMath<FpuRootMath,2>,5>(q);let y=b.step::<ExtraMath<FpuRootMath,2>,5>(q);
    for f in [q,x.output_v,y.output_v,x.residual_norm,y.residual_norm]{w.write_all(&f.to_le_bytes()).unwrap();}
   }old=u;
  }
 }
}
