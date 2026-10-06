"""Полная независимая f64 MNA для реального двухшагового вызова с интерполяцией."""
import json
import numpy as np
from orange_full_mna import FullMNAParameters,OrangeFullMNA,ROOT
OUT=ROOT/'simulation/experiments/repeated_work'
for case in range(3):
    m=OrangeFullMNA(FullMNAParameters(sample_rate=96000,load='resistive'));m.steps=1
    rows=[];old=np.float32(0);random=1;stats={'max_residual':0.0,'max_kcl':0.0,'max_iterations':0,'continuations':0}
    for i in range(1024):
        random=(random*1664525+1013904223)&0xffffffff
        phase=np.float32(np.float32((2*i+96)%384)/np.float32(384))
        triangle=np.float32(np.float32(1)-np.float32(4)*np.abs(np.float32(phase-np.float32(.5))))
        u=np.float32(np.float32(.1)*triangle) if case==0 else triangle if case==1 else np.float32(np.float32(.25)*np.float32(np.float32(random if random<2**31 else random-2**32)/np.float32(2147483648)))
        for value in [np.float32(np.float32(.5)*np.float32(old+u)),u]:
            x,d=m.step(float(value));rows.append([value,*x])
            stats['max_residual']=max(stats['max_residual'],d['scaled_residual']);stats['max_kcl']=max(stats['max_kcl'],d['kcl_a'])
            stats['max_iterations']=max(stats['max_iterations'],d['iterations']);stats['continuations']+=d['continuation_steps']>0
        old=u
    np.savetxt(OUT/f'reference_output{case}.txt',rows,fmt='%.17g')
    (OUT/f'reference_output{case}.json').write_text(json.dumps(stats,indent=2)+'\n')
    print(case,stats,flush=True)
