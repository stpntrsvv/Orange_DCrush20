"""Разбор сохранённых RAM-журналов и f64-сравнение трёх коротких траекторий."""
import argparse,hashlib,json,struct
from pathlib import Path
import numpy as np
from orange_full_mna import ROOT
OUT=ROOT/'simulation/experiments/architecture_decision'

def sections(path):
 data=path.read_bytes();assert data[:5]==b'\x7fELF\x01'
 off=struct.unpack_from('<I',data,32)[0];size,n,si=struct.unpack_from('<HHH',data,46)
 headers=[struct.unpack_from('<10I',data,off+i*size) for i in range(n)]
 st=headers[si];names=data[st[4]:st[4]+st[5]]
 return {names[h[0]:].split(b'\0',1)[0].decode():dict(address=h[3],size=h[5]) for h in headers if h[1]!=0}

def analyze(log,elf=None,trace=None,rate=96000):
 rows=[]
 for line in log.read_text().splitlines():
  if not line.startswith('STEP_PROFILE_'):continue
  w=[int(t,16)for t in line.split()[1:]]
  row=dict(raw=w,cycles=w[18]/w[27],control_cycles=w[19]/w[27],maximum=w[20],control_maximum=w[21],failures=w[22],control_failures=w[28],retries_total_1024=w[3],mean_iterations=w[0]/w[27],max_iterations=w[1],state_bytes=w[7],maximum_two_inner=w[4],maximum_128_inner=w[5],retry_steps_measured=w[9],retry_cycles_total=w[8],retry_step_maximum=w[10])
  rows.append(row)
 if trace:
  data=np.fromfile(trace,dtype='<f4').reshape(3,1024,2)
  for case,row in enumerate(rows):
   ref=np.loadtxt(OUT/'reference_noise.txt' if case==2 else OUT.parent/f'absolute_ports/reference_{100 if case==0 else 1000}mv.txt')[:,32]
   e=data[case,:,0]-ref;row.update(relative_rms=float(np.linalg.norm(e)/np.linalg.norm(ref)),peak_v=float(max(abs(e))))
 result=dict(sample_rate=rate,input_triangle_hz=rate/384,measured_steps=992,warmup=32,rows=rows)
 if elf:result.update(elf_sha256=hashlib.sha256(elf.read_bytes()).hexdigest(),elf_sections=sections(elf))
 log.with_suffix('.json').write_text(json.dumps(result,indent=2)+'\n')
 print(json.dumps(result,indent=2))
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('log',type=Path);ap.add_argument('--elf',type=Path);ap.add_argument('--trace',type=Path);ap.add_argument('--rate',type=int,default=96000);a=ap.parse_args();analyze(a.log,a.elf,a.trace,a.rate)
