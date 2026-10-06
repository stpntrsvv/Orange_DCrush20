"""Генерация исследовательского физического ядра без полной MNA-истории."""
import argparse,hashlib,json
from pathlib import Path
import numpy as np
from condensed_physical import CondensedPhysical,FullMNAParameters
from orange_full_mna import ROOT

def generate(fs,method):
 p=CondensedPhysical(FullMNAParameters(sample_rate=fs,load='resistive'),method)
 assert p.nc==23
 oh=np.concatenate([p.ih[3:],p.dh,p.nh[[27,40]]]); od=np.concatenate([p.id[3:],p.dd,p.nd[[27,40]]])
 def dot(row,arg):return ' + '.join(f'({v:.17e}_f64)*{arg}[{i}] as f64' for i,v in enumerate(row) if v!=0) or '0.0_f64'
 def arr(a):
  if a.ndim==1:return '['+','.join(f'{v:.17e}_f64' for v in a)+']'
  return '['+','.join(arr(row) for row in a)+']'
 code=['// Сгенерировано simulation/generate_condensed.py; не редактировать.',f'pub const FS: f32 = {fs}.0;',f'pub const ORDER: f32 = {p.order};',f'pub const TRAP: bool = {str(method=="trap").lower()};',f'pub const DERIV: [[f64;8];15] = {arr(od[:,3:])};',f'pub const GAIN: [f64;5] = {arr(p.gain)};',f'pub const POLE: [f64;5] = {arr(p.pole)};']
 code+=['#[inline(never)] pub fn origin(h: &[f32;28], input: f32) -> [f64;15] { [']
 for a,b in zip(oh,od[:,0]): code+=[f'{dot(a,"h")} + ({b:.17e}_f64)*input as f64,']
 code+= ['] }','#[inline] pub fn observe(i: usize, o: &[f64;15], r: &[f32;8]) -> f32 { match i {']
 for i,row in enumerate(od[:,3:]):code += [f'{i} => (o[{i}] + {dot(row,"r")}) as f32,']
 code+=['_ => unreachable!(), } }','#[inline(never)] pub fn update(h: &[f32;28], input: f32, r: &[f32;8]) -> [f32;23] { [']
 for a,b in zip(p.zh,p.zd):code +=[f'({dot(a,"h")}+({b[0]:.17e}_f64)*input as f64+({dot(b[3:],"r")})) as f32,']
 code +=['] }','#[cfg(test)] pub fn recover(h: &[f32;28], input: f32, r: &[f32;8], s: &[f32;5]) -> [f32;56] { let mut x = [0.0;56];']
 for i,(a,b) in enumerate(zip(p.nh,p.nd)):code +=[f'x[{i}]=({dot(a,"h")}+({b[0]:.17e}_f64)*input as f64+({dot(b[3:],"r")})) as f32;']
 for j,node in enumerate(p.model.source_nodes):
  i=p.model.i_voltage_source[node];a=p.ih[j];b=p.id[j];code +=[f'x[{i}]=({dot(a,"h")}+({b[0]:.17e}_f64)*input as f64+({dot(b[3:],"r")})) as f32;']
 code+=['let o=origin(h,input);']
 for slot,port in enumerate(p.amp_ports):code +=[f'x[{p.internal_indices[slot]}]=s[{slot}];x[{p.source_indices[slot]}]=observe({port},&o,r);']
 code+=['x }']
 path=ROOT/'firmware/orange-dsp/src/generated_condensed.rs';path.write_text('\n'.join(code)+'\n')
 metadata=dict(fs=fs,method=method,memory_states=28,capacitors=[ref for ref,_,_ in p.caps],passive_component_sizes=list(map(len,p.passive_components)),nonzero_coefficients={a:int(np.count_nonzero(getattr(p,a))) for a in ['nh','nd','ih','id','zh','zd','dh','dd']},coefficient_sha256=hashlib.sha256(path.read_bytes()).hexdigest())
 (ROOT/'simulation/experiments/architecture_decision/coefficients.json').write_text(json.dumps(metadata,indent=2)+'\n')
 print(metadata)
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--rate',type=int,default=96000);ap.add_argument('--method',choices=['bdf2','trap','be'],default='bdf2');a=ap.parse_args();generate(a.rate,a.method)
