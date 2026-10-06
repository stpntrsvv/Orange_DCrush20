#![no_std]
#![no_main]
#[cfg(not(feature="fpu-roots"))]
compile_error!("tda48-probe requires the pinned P7 FPU root arithmetic");
mod cordic;
use core::{ptr::{read_volatile as rd,write_volatile as wr},hint::black_box};
use orange_dsp::{packed::ExtraMath,bounded48_baseline::BoundedState as Baseline,StepResult};
#[cfg(not(feature="noise48-candidate"))]
use orange_dsp::bounded48::BoundedState;
#[cfg(feature="noise48-candidate")]
use orange_dsp::bounded48_noise::BoundedState;
impl orange_dsp::packed::PackageMath for cordic::H7r3Cordic {}
type Math=ExtraMath<cordic::H7r3Cordic,2>;
const CLOCK:*const u32=0xe0001004 as *const u32;
const MAIL:*mut u32=0x2000ff00 as *mut u32;
const STRIDE:usize=0x980/4;
#[inline(never)] fn candidate(s:&mut BoundedState<3,7>,u:f32)->StepResult{s.step::<Math,5>(black_box(u))}
#[inline(never)] fn control(s:&mut Baseline<3,7>,u:f32,_old:f32)->StepResult{
 s.step::<Math,5>(black_box(u))
}
#[unsafe(link_section=".text.Reset")]
#[unsafe(no_mangle)]
pub unsafe extern "C" fn Reset()->!{unsafe{
 cordic::enable();wr(0xe000edfc as *mut u32,rd(0xe000edfc as *const u32)|(1<<24));wr(0xe0001004 as *mut u32,0);wr(0xe0001000 as *mut u32,rd(0xe0001000 as *const u32)|1);
 let mut a:[BoundedState<3,7>;3]=core::array::from_fn(|_|BoundedState::default());
 let mut b:[Baseline<3,7>;3]=core::array::from_fn(|_|Baseline::default());
 let mut old=[0f32;3];let mut ring=[[0u32;64];6];let mut rolling=[0u32;6];let mut total=0u32;
 wr(MAIL,0x52454144);
 loop{
  while rd(MAIL)!=0x474f474f{core::hint::spin_loop();}
  let n=rd(MAIL.add(1)) as usize;let peak=f32::from_bits(rd(MAIL.add(2)));
  if n==0{wr(MAIL,0x444f4e45);loop{core::hint::spin_loop();}}
  if n>16384 || peak<=0.{wr(MAIL,0x45525221);loop{core::hint::spin_loop();}}
  let stats=0x20008000 as *mut u32;for i in 0..6*STRIDE{wr(stats.add(i),0);}
  let start_all=rd(CLOCK);let mut hash=2166136261u32;
  for i in 0..n{
   let pcm=rd((0x20000000 as *const i16).add(i));hash=(hash^(pcm as u16 as u32)).wrapping_mul(16777619);
   for c in 0..3{
    let u=pcm as f32/peak*[0.1f32,0.25,1.0][c];let before=[a[c].steps,b[c].steps];let x;let y;let ca;let cb;
    if (total+i as u32)&1==0{
     let t=rd(CLOCK);x=candidate(&mut a[c],u);let m=rd(CLOCK);y=control(&mut b[c],u,old[c]);let e=rd(CLOCK);ca=m.wrapping_sub(t);cb=e.wrapping_sub(m);
    }else{
     let t=rd(CLOCK);y=control(&mut b[c],u,old[c]);let m=rd(CLOCK);x=candidate(&mut a[c],u);let e=rd(CLOCK);cb=m.wrapping_sub(t);ca=e.wrapping_sub(m);
    }
    for (k,(r,cy)) in [(x,ca),(y,cb)].into_iter().enumerate(){
     let row=c*2+k;let p=stats.add(row*STRIDE);let idx=total+i as u32;
     let sum=(rd(p) as u64)|((rd(p.add(1)) as u64)<<32);let sum=sum+cy as u64;wr(p,sum as u32);wr(p.add(1),(sum>>32) as u32);
     if cy>rd(p.add(2)){wr(p.add(2),cy);wr(p.add(3),idx);}
     for (f,v) in [(4,(cy>12500) as u32),(5,(cy>10000) as u32),(6,(!r.converged) as u32),(8,r.iterations as u32)]{wr(p.add(f),rd(p.add(f))+v);}
     wr(p.add(9),rd(p.add(9)).max(r.iterations as u32));wr(p.add(10),rd(p.add(10)).max(r.residual_norm.to_bits()));
     let stopped=if k==0{a[c].steps!=before[0]+1}else{b[c].steps!=before[1]+1};wr(p.add(7),rd(p.add(7))+stopped as u32);
     let bin=(cy/128).min(511) as usize;wr(p.add(32+bin),rd(p.add(32+bin))+1);
     let pos=idx as usize%64;rolling[row]=rolling[row]+cy-ring[row][pos];ring[row][pos]=cy;
     if idx>=63 && rolling[row]>rd(p.add(11)){wr(p.add(11),rolling[row]);wr(p.add(12),idx-63);}
     if idx>=63 && rolling[row]>800000{wr(p.add(13),rd(p.add(13))+1);}
     if idx>=63 && rolling[row]>640000{wr(p.add(14),rd(p.add(14))+1);}
     wr(p.add(15),r.output_v.to_bits());
    }
    old[c]=u;
   }
  }
  let elapsed=rd(CLOCK).wrapping_sub(start_all);total+=n as u32;
  for c in 0..3{for k in 0..2{
   let p=stats.add((c*2+k)*STRIDE);let (cur,prev)=if k==0{(&a[c].current,&a[c].previous)}else{(&b[c].current,&b[c].previous)};
   for j in 0..28{wr(p.add(544+j),cur[j].to_bits());wr(p.add(572+j),prev[j].to_bits());}
  }}
  wr(MAIL.add(3),total);wr(MAIL.add(4),elapsed);wr(MAIL.add(5),hash);wr(MAIL,0x52454144);
 }
}}
#[panic_handler] fn panic(_: &core::panic::PanicInfo)->!{unsafe{wr(MAIL,0x50414e49);}loop{core::hint::spin_loop();}}
