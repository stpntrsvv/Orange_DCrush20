"""RAM-only ETD2/48k против двух шагов P7/96k. Только проверенные 100 мВ.

1 В и шум не допускаются: их отрицательные результаты сохранены отдельно.
Среднее этого диагностического f64-ядра не является временем готового устройства.
"""
import argparse,json,os,shutil,subprocess
from datetime import datetime,timezone
from pathlib import Path
import numpy as np
import run_solver_batch as common
ROOT=common.ROOT;OUT=ROOT/'simulation/experiments/solver_time'
CFG=ROOT/'embedded/openocd/run_exponential_probe.cfg'
REF=OUT/'temporal/reference_etd_0.txt'
BASE=ROOT/'simulation/experiments/repeated_work/reference_output0.txt'
def sources():
    d=common.sources()
    for p in [CFG,Path(__file__),ROOT/'simulation/generate_exponential_kernel.py',ROOT/'simulation/run_exponential_kernel_reference.py']:
        d[str(p.relative_to(ROOT))]=common.sha(p)
    return d
def prepare():
    run=OUT/('etd_'+datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ'));run.mkdir()
    env=dict(os.environ);env['PATH']='/opt/homebrew/Cellar/rustup/1.29.1/bin:'+env['PATH']
    before=sources()
    common.execute(['cargo','test','-p','orange-dsp','--release','--target','aarch64-apple-darwin','--','--include-ignored','--nocapture'],run/'host_tests.log',ROOT/'firmware',env)
    common.execute(['cargo','build','-p','h7r3-runtime','--bin','ram-probe','--release','--features','exponential-probe'],run/'build.log',ROOT/'firmware',env)
    elf=run/'exponential.elf';shutil.copy2(ROOT/'firmware/target/thumbv7em-none-eabihf/release/ram-probe',elf)
    sections=common.sections(elf)
    assert sections['.text']['address']+sections['.text']['size']<=0x10000
    assert sections['.etd_coeff']['address']>=0x20005000 and sections['.etd_coeff']['address']+sections['.etd_coeff']['size']<=0x2000d000
    assert all(v['address']+v['size']<=0x20001000 for k,v in sections.items() if k in ['.data','.bss'])
    assert sources()==before
    manifest=dict(sources=before,sha256=common.sha(elf),sections=sections,nominal_only=True,fs_candidate=48000,fs_control=96000,
                  references={str(p.relative_to(ROOT)):common.sha(p) for p in [REF,BASE]})
    (run/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    for name in before:
        target=run/'source'/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(ROOT/name,target)
    print(run,flush=True)
def analyze(run):
    raw=np.fromfile(run/'trace.bin',dtype='<u4').reshape(1024,4);floats=raw.view('<f4');cycles=raw[32:,2:].astype(np.uint64)
    text=(run/'run.log').read_text();assert 'PACK_ERROR' not in text and 'PACK_DONE 0x444f4e45' in text
    line=[l for l in text.splitlines() if l.startswith('PACK_PROFILE_')];assert len(line)==1
    w=[int(v,16) for v in line[0].split()[1:]];assert w[35]==10 and w[27]==992 and w[36:38]==[0,0]
    refs=[np.loadtxt(REF)[:,32],np.loadtxt(BASE)[1::2,32]]
    errors=[floats[:,i].astype(float)-refs[i] for i in range(2)]
    row=dict(unit='full_output_48k',mode='nominal 100mV only',candidate='ETD2 physical memory f64 48k',control='P7 96k, two steps and interpolation',
        mean=cycles.mean(axis=0).tolist(),maximum=cycles.max(axis=0).tolist(),percentiles=np.percentile(cycles,[50,95,99],axis=0).tolist(),
        max_block64=cycles[:960].reshape(15,64,2).sum(axis=1).max(axis=0).tolist(),
        relative_rms=[float(np.linalg.norm(e)/np.linalg.norm(r)) for e,r in zip(errors,refs)],peak_v=[float(max(abs(e))) for e in errors],
        failures=w[36:38],raw=w)
    assert row['relative_rms'][0]<1e-4 and row['peak_v'][0]<.01
    (run/'results.json').write_text(json.dumps(row,indent=2)+'\n');print(row)
def hardware(run):
    m=json.loads((run/'manifest.json').read_text());assert sources()==m['sources'];assert common.sha(run/'exponential.elf')==m['sha256']
    for p,h in m['references'].items():assert common.sha(ROOT/p)==h
    usb=subprocess.check_output(['ioreg','-p','IOUSB','-l','-w','0'],text=True);assert 'STM32 STLink' in usb
    (run/'usb.txt').write_text('\n'.join(v for v in usb.splitlines() if 'STLink' in v or 'USB Serial Number' in v)+'\n')
    assert not (run/'run.log').exists()
    env=dict(os.environ,PACK_ELF=str(run/'exponential.elf'),PACK_TRACE=str(run/'trace.bin'))
    common.execute(['/opt/homebrew/bin/openocd','-f','embedded/openocd/weact_stm32h7r3.cfg','-f',str(CFG),'-c','run_packed_probe'],run/'run.log',env=env)
    analyze(run)
if __name__=='__main__':
    ap=argparse.ArgumentParser();group=ap.add_mutually_exclusive_group(required=True);group.add_argument('--prepare',action='store_true');group.add_argument('--run',type=Path);group.add_argument('--analyze',type=Path);a=ap.parse_args()
    if a.prepare:prepare()
    elif a.run:hardware(a.run.resolve())
    else:analyze(a.analyze.resolve())
