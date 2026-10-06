"""Итог аппаратной серии и аудит машинного кода; исходники DSP не меняет."""
from pathlib import Path
import json,hashlib,re,subprocess
import numpy as np
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'simulation/experiments/repeated_work'
RUNS={'inner_first':'20260927T113624Z','inner_repeat':'20260927T113747Z','stress':'20260927T113738Z','output':'20260927T113735Z','counted':'20260927T113745Z'}

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    result={'runs':RUNS,'hardware':{},'long_di':{},'short_bit_equivalence':{},'assembly':{}}
    for label,stamp in RUNS.items():
        rows=json.loads((OUT/stamp/'results.json').read_text());raw=np.fromfile(OUT/stamp/'package8_trace.bin',dtype='<u4').reshape(3,1024,4)
        result['hardware'][label]={'outputs_bit_exact':bool(np.array_equal(raw[:,:,0],raw[:,:,1])),'cases':rows}
        for r in rows:
            r['saved_percent']=100*(1-r['mean'][0]/r['mean'][1])
            r['output_cpu_budget_ratio']=r['mean_output_cycles'][0]/12500
            r['output_dsp_budget_ratio']=r['mean_output_cycles'][0]/10000
            r['remaining_cpu_cycles_per_output']=12500-r['mean_output_cycles'][0]
    for path in sorted((OUT/'host').glob('*.bin')):
        d=np.fromfile(path,dtype='<u8').reshape(-1,236)
        result['short_bit_equivalence'][path.stem]={label:bool(np.array_equal(d[:,a:b],d[:,c:e])) for label,a,b,c,e in [('output',2,3,3,4),('recovered56',12,68,68,124),('current28',124,152,152,180),('previous28',180,208,208,236)]}
    for path in sorted((OUT/'long_di').glob('*.bin')):
        d=np.memmap(path,mode='r',dtype='<u4').reshape(-1,2)
        result['long_di'][path.stem]={'steps':len(d),'different_output_bits':int(np.count_nonzero(d[:,0]!=d[:,1])),'sha256':sha(path),'note':'Compared with P7, not independent long f64.'}
    objdump=Path.home()/'.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/aarch64-apple-darwin/bin/llvm-objdump'
    for label,path in [('baseline',OUT/'baseline/p7.elf'),('paired_final',OUT/RUNS['inner_repeat']/'package8.elf')]:
        text=subprocess.check_output([str(objdump),'-d','--demangle','--mcpu=cortex-m7',str(path)],text=True)
        assert '<unknown>' not in text
        asm=OUT/f'{label}.asm';asm.write_text(text)
        functions={};name=''
        for line in text.splitlines():
            m=re.match(r'^[0-9a-f]+ <(.+)>:',line)
            if m:name=m[1];functions[name]={'vdiv_f32':0,'vdiv_f64':0,'mem_calls':[]}
            if name:
                for op in ['f32','f64']:
                    if f'vdiv.{op}' in line:functions[name][f'vdiv_{op}']+=1
                if '\tbl\t' in line and ('memcpy' in line or 'memclr' in line):functions[name]['mem_calls'].append(line.strip())
        result['assembly'][label]={'elf_sha256':sha(path),'asm_sha256':sha(asm),'functions':{k:v for k,v in functions.items() if 'packed' in k or 'repeated' in k}}
    result['final_source_checks']={'packed_rs_unchanged':sha(ROOT/'firmware/orange-dsp/src/packed.rs')==sha(OUT/'baseline/packed.rs'),
        'generated_packed_unchanged':sha(ROOT/'firmware/orange-dsp/src/generated_packed.rs')==sha(OUT/'baseline/generated_packed.rs')}
    assert all(result['final_source_checks'].values())
    (OUT/'summary.json').write_text(json.dumps(result,indent=2)+'\n')
    print('final',result['assembly']['paired_final']['elf_sha256'])
    print('long DI',result['long_di'])
    for k,v in result['assembly']['paired_final']['functions'].items():
        print(k,v)
if __name__=='__main__':main()
