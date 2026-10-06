"""Те же коэффициенты P7: подготовленные наблюдения и запись памяти без caps-копии."""
import numpy as np
from condensed_physical import CondensedPhysical, FullMNAParameters
from orange_full_mna import ROOT
p=CondensedPhysical(FullMNAParameters(sample_rate=96000,load='resistive'))
od=np.concatenate([p.id[3:],p.dd,p.nd[[27,40]]])[:,3:]
def dot(row,arg,double=True):
    return ' + '.join(f'({float(v):.17e}_f64)*{arg}[{i}] as f64' if double else f'({float(np.float32(v)):.9e}_f32)*{arg}[{i}]' for i,v in enumerate(row) if v!=0) or ('0.0_f64' if double else '0.0_f32')
code=['// Сгенерировано simulation/generate_repeated.py; не редактировать.', '#[inline(always)] pub fn observe(i:usize,o:&[f64;15],r:&[f32;8])->f32 {match i {']
for i,row in enumerate(od.copy()):
    if i in [8,9,10,12]:
        row[:{8:1,9:2,10:4,12:7}[i]]=0
    double=8<=i<=12
    expr=f'o[{i}] + {dot(row,"r")}' if double else f'o[{i}] as f32 + {dot(row,"r",False)}'
    code +=[f'{i} => ({expr}) as f32,']
code +=['_=>unreachable!(),}}', '#[inline(never)] pub fn update_into(h:&[f32;28],input:f32,r:&[f32;8],next:&mut [f32;28]) {']
for i,(a,b) in enumerate(zip(p.zh,p.zd)):
    code +=[f'next[{i}]=({dot(a,"h")}+({b[0]:.17e}_f64)*input as f64+({dot(b[3:],"r")})) as f32;']
code+=['}']
(ROOT/'firmware/orange-dsp/src/generated_repeated.rs').write_text('\n'.join(code)+'\n')
