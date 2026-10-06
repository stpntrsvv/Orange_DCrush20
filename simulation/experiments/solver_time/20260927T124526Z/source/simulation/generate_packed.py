"""Генератор пакетного опыта: f32 и несколько явных вариантов смешанной точности.

P=1: все линейные суммы f32; 2: origin/observe f64;
3: update f64; 4: разности ОУ и входная память f64;
5: разности ОУ и вся update f64;
6: разности ОУ, входная память и TDA f64; 7: разности ОУ и память TDA f64. Выбор константный, без ветвления в аудиошаге.
Базовый generated_condensed не меняется.
"""
import numpy as np
from condensed_physical import CondensedPhysical, FullMNAParameters
from orange_full_mna import ROOT

p = CondensedPhysical(FullMNAParameters(sample_rate=96000, load='resistive'))
oh = np.concatenate([p.ih[3:], p.dh, p.nh[[27, 40]]])
od = np.concatenate([p.id[3:], p.dd, p.nd[[27, 40]]])

def dot(row, arg, double=False):
    if double:
        return ' + '.join(f'({float(v):.17e}_f64)*{arg}[{i}] as f64' for i,v in enumerate(row) if v != 0) or '0.0_f64'
    return ' + '.join(f'({float(np.float32(v)):.9e}_f32)*{arg}[{i}]' for i,v in enumerate(row) if v != 0) or '0.0_f32'

code = ['// Сгенерировано simulation/generate_packed.py; не редактировать.',
        '#[inline(never)] pub fn origin<const P:u8>(h:&[f32;28],input:f32)->[f64;15]{',
        'if P==2 {return super::generated_condensed::origin(h,input);} [']
for i,(a,b) in enumerate(zip(oh,od[:,0])):
    single=f'({dot(a,"h")}+({float(np.float32(b)):.9e}_f32)*input) as f64'
    double=f'{dot(a,"h",True)}+({float(b):.17e}_f64)*input as f64'
    code.append(f'if P>=4 {{{double}}} else {{{single}}},' if 8<=i<=12 else single+',')
code += [']}', '#[inline(always)] pub fn observe<const P:u8>(i:usize,o:&[f64;15],r:&[f32;8])->f32{',
         'if P==2 || (P>=4 && i>=8 && i<=12) {return super::generated_condensed::observe(i,o,r);} match i{']
for i,row in enumerate(od[:,3:]):
    code.append(f'{i}=>o[{i}] as f32+{dot(row,"r")},')
code += ['_=>unreachable!(),}}', '#[inline(never)] pub fn update<const P:u8>(h:&[f32;28],input:f32,r:&[f32;8])->[f32;23]{',
         'if P==3 || P==5 {return super::generated_condensed::update(h,input,r);} [']
for i,(a,b) in enumerate(zip(p.zh,p.zd)):
    single=f'{dot(a,"h")}+({float(np.float32(b[0])):.9e}_f32)*input+{dot(b[3:],"r")}'
    double=f'({dot(a,"h",True)}+({float(b[0]):.17e}_f64)*input as f64+{dot(b[3:],"r",True)}) as f32'
    condition = 'P==4 || P==6' if i<6 else 'P>=6' if i>=21 else 'false'
    code.append(f'if {condition} {{{double}}} else {{{single}}},' if condition != 'false' else single+',')
code += [']}']
(ROOT/'firmware/orange-dsp/src/generated_packed.rs').write_text('\n'.join(code)+'\n')
