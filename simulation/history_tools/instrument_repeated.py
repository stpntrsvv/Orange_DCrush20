"""Однократная подготовка наблюдаемых счётчиков, отсутствующих в обычном машинном пути."""
from pathlib import Path
p=Path(__file__).resolve().parents[2]/'firmware/orange-dsp/src/repeated.rs'
s=p.read_text()
s=s.replace('const SCALE: [f32; 8] = [0.01, 15.0, 15.0, 0.01, 15.0, 15.0, 0.01, 24.0];\n','')
a=s.index('pub use super::packed')
s=s[:a]+'''/// По каждому блоку: уравнения, строки производных, поправки, отклонённые пробы,
/// прямые попытки/приёмки, повторы, корни 1/16 (аргумент != 1), exp, sqrt64, solve.
#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct Counters { pub blocks:[[u32;11];5] }
#[inline(always)]
fn count<const C:bool>(c:&mut [u32;11],i:usize,n:u32) {if C {c[i]+=n;}}

''' +s[a:]
s=s.replace('fn q_candidate<const F: u8>(r: &mut [f32; 8], o: &[f64; 15])', 'fn q_candidate<const F: u8,const C:bool>(r: &mut [f32; 8], o: &[f64; 15],stats:&mut [u32;11])')
s=s.replace('let q = -0.5 * (b + sqrt64', 'count::<C>(stats,9,1);\n        let q = -0.5 * (b + sqrt64')
s=s.replace('fn direct_block<M: PackageMath, const B: usize, const F: u8>(', 'fn direct_block<M: PackageMath, const B: usize, const F: u8,const C:bool>(')
s=s.replace('fn equation<M: PackageMath, const P: usize, const F: u8>(', 'fn equation<M: PackageMath, const P: usize, const F: u8,const C:bool>(')
s=s.replace('fn derivative<const P: usize, const B: usize, const N: usize>(', 'fn derivative<const P: usize, const B: usize, const N: usize,const C:bool>(')
s=s.replace('fn evaluate_block<M: PackageMath, const B: usize, const F: u8, const N: usize>(', 'fn evaluate_block<M: PackageMath, const B: usize, const F: u8, const N: usize,const C:bool>(')
s=s.replace('fn jacobian<const B: usize, const N: usize>(', 'fn jacobian<const B: usize, const N: usize,const C:bool>(')
s=s.replace('fn solve_block<M: PackageMath, const B: usize, const F: u8, const N: usize>(', 'fn solve_block<M: PackageMath, const B: usize, const F: u8, const N: usize,const C:bool>(')
for name in ['direct_block','equation','derivative','evaluate_block','jacobian','solve_block']:
 a=s.index('fn '+name);b=s.index(') ->',a)
 s=s[:b]+'stats:&mut [u32;11],\n'+s[b:]
s=s.replace('q_candidate::<F>(r, o)', 'q_candidate::<F,C>(r, o,stats)')
import re
for name in ['equation','derivative','evaluate_block','jacobian']:
 s=re.sub(rf'{name}::<([^>]+)>\(([^;\n]+?)\)', lambda m:f'{name}::<{m[1]},C>({m[2]},stats)',s)
# step macro solve/direct calls are multiline and handled separately
s=s.replace('direct_block::<M, $id, F>(&mut r, &o, &poles, &mut s)', 'direct_block::<M, $id, F,C>(&mut r, &o, &poles, &mut s,&mut counts.blocks[$id])')
s=s.replace('solve_block::<M, $id, F, $n>(&mut r, &o, &poles, &mut s)', 'solve_block::<M, $id, F, $n,C>(&mut r, &o, &poles, &mut s,&mut counts.blocks[$id])')
s=s.replace('    let current = observe::<F>(P, o, r);', '    count::<C>(stats,0,1);\n    let current = observe::<F>(P, o, r);')
s=s.replace('        let (v, p, f, ratio) = rail_value::<M>(state, swing);', '        let (v, p, f, ratio) = rail_value::<M>(state, swing);\n        count::<C>(stats,7,(swing>0.0 && 1.0+p!=1.0) as u32);')
s=s.replace('        let f = 1.0 / M::sixteenth_root(1.0 + p);\n        c[6]', '        let f = 1.0 / M::sixteenth_root(1.0 + p);\n        count::<C>(stats,7,(1.0+p!=1.0) as u32);\n        c[6]')
s=s.replace('        let (ep, en) = if P == 3', '        count::<C>(stats,8,if P==3 && a.abs()>=0.5 {1} else {2});\n        let (ep, en) = if P == 3')
s=s.replace('    let c = &row.cache;', '    count::<C>(stats,1,1);\n    let c = &row.cache;')
s=s.replace('                let residual = observe::<F>(0, o, r);','                count::<C>(stats,0,1);\n                let residual = observe::<F>(0, o, r);')
s=s.replace('                let mut j = jacobian::<3, 3,C>', '                count::<C>(stats,10,1);\n                let mut j = jacobian::<3, 3,C>')
s=s.replace('        if !solve::<N>', '        count::<C>(stats,10,1);\n        if !solve::<N>')
s=s.replace('                    break;\n                }\n            }\n            total += 1;', '                    break;\n                }\n                count::<C>(stats,3,1);\n            }\n            count::<C>(stats,2,1);\n            total += 1;')
s=s.replace('    pub fn step<M: PackageMath, const F: u8>(&mut self, input: f32) -> StepResult {', '''    pub fn step<M:PackageMath,const F:u8>(&mut self,input:f32)->StepResult {
        self.step_inner::<M,F,false>(input,&mut Counters::default())
    }
    pub fn step_profiled<M:PackageMath,const F:u8>(&mut self,input:f32,counts:&mut Counters)->StepResult {
        self.step_inner::<M,F,true>(input,counts)
    }
    #[inline(always)]
    fn step_inner<M:PackageMath,const F:u8,const C:bool>(&mut self,input:f32,counts:&mut Counters)->StepResult {''')
s=s.replace('                let direct = if $id', '                if $id!=2 {count::<C>(&mut counts.blocks[$id],4,1);}\n                let direct = if $id')
s=s.replace('                if let Some(error) = direct {', '                if let Some(error) = direct {\n                    count::<C>(&mut counts.blocks[$id],5,1);')
s=s.replace('                    if !ok {\n                        for &p', '                    if !ok {\n                        count::<C>(&mut counts.blocks[$id],6,1);\n                        for &p')
p.write_text(s)
