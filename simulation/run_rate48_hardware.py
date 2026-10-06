"""Полная непрерывная PCM через RAM; парный 48к/P7-96к, без записи flash."""
from pathlib import Path
import os,sys,json,hashlib,subprocess,shutil,argparse
from datetime import datetime,timezone
import numpy as np
from analyze_condensed_hardware import sections
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/rate48'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def execute(cmd,log,cwd=R,env=None):
 with log.open('w') as f:r=subprocess.run(cmd,cwd=cwd,env=env,stdout=f,stderr=subprocess.STDOUT)
 if r.returncode:raise RuntimeError(f'{cmd}: {r.returncode}: {log}')
def sourcefiles():return sorted(list((R/'firmware').glob('**/src/*.rs'))+list((R/'firmware').glob('**/Cargo.toml'))+[R/'firmware/Cargo.lock',R/'firmware/.cargo/config.toml',R/'firmware/h7r3-runtime/memory-itcm.x',R/'simulation/run_rate48_hardware.py',R/'embedded/openocd/run_rate48_probe.cfg',R/'simulation/generate_rate48.py'])
def prepare():
 d=O/datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ');d.mkdir()
 env=dict(os.environ);env['PATH']='/opt/homebrew/Cellar/rustup/1.29.1/bin:'+env['PATH']
 sources={str(p.relative_to(R)):sha(p) for p in sourcefiles()}
 execute(['cargo','test','-p','orange-dsp','--release','--target','aarch64-apple-darwin','--','--include-ignored'],d/'host_tests.log',R/'firmware',env)
 execute(['cargo','build','-p','h7r3-runtime','--bin','rate48-probe','--release','--features','fpu-roots'],d/'build.log',R/'firmware',env)
 shutil.copy2(R/'firmware/target/thumbv7em-none-eabihf/release/rate48-probe',d/'probe.elf');sec=sections(d/'probe.elf')
 assert sec['.text']['address']+sec['.text']['size']<=0x10000
 assert all(sec.get(k,{}).get('size',0)==0 for k in ['.bss','.data','.etd_coeff'])
 pcm=np.fromfile(O/'input.pcm16',dtype='<i2');chunks=O/'chunks';chunks.mkdir(exist_ok=True)
 for i,start in enumerate(range(0,len(pcm),16384)):pcm[start:start+16384].tofile(chunks/f'{i:04d}.bin')
 for name,h in sources.items():assert sha(R/name)==h;target=d/'source'/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(R/name,target)
 j={'sources':sources,'elf_sha256':sha(d/'probe.elf'),'sections':sec,'input_sha256':sha(O/'input.pcm16'),'frames':len(pcm),'chunks':(len(pcm)+16383)//16384,'peak_bits':int(np.array([max(abs(pcm.astype(np.int32)))],dtype='<f4').view('<u4')[0]),'levels_v':[0.1,0.25,1.0],'candidate':'unchanged BoundedState<3,7>, BDF2/48k','control':'P7 BDF2/96k two steps with linear interpolation'}
 (d/'manifest.json').write_text(json.dumps(j,indent=2)+'\n');print(d,flush=True)
def run(d,smoke):
 m=json.loads((d/'manifest.json').read_text());assert sha(d/'probe.elf')==m['elf_sha256'];assert sha(O/'input.pcm16')==m['input_sha256']
 for f,h in m['sources'].items():assert sha(R/f)==h,f
 usb=subprocess.check_output(['ioreg','-p','IOUSB','-l','-w','0'],text=True);(d/'usb.log').write_text(usb);assert 'STM32 STLink' in usb
 stage=d/('smoke' if smoke else 'full');stage.mkdir()
 env=dict(os.environ,RATE_ELF=str(d/'probe.elf'),RATE_OUT=str(stage),RATE_CHUNKS=str(O/'chunks'),RATE_COUNT=str(min(m['chunks'],2) if smoke else m['chunks']),RATE_PEAK=str(m['peak_bits']))
 execute(['/opt/homebrew/bin/openocd','-f','embedded/openocd/weact_stm32h7r3.cfg','-f','embedded/openocd/run_rate48_probe.cfg','-c','run_rate48_probe'],stage/'openocd.log',env=env)
 log=(stage/'openocd.log').read_text();assert 'RATE_ERROR' not in log and 'PACK_RESET_VERIFIED' in log and 'RATE_COMPLETE' in log
 print('completed and reset verified',stage,flush=True)
if __name__=='__main__':
 a=argparse.ArgumentParser();a.add_argument('--prepare',action='store_true');a.add_argument('--run',type=Path);a.add_argument('--smoke',action='store_true');v=a.parse_args()
 if v.prepare:prepare()
 else:run(v.run.resolve(),v.smoke)
