"""Разбор всех порций непрерывного RAM-замера. p95/p99 ограничены интервалами 128 тактов."""
from pathlib import Path
import json,re,sys,hashlib,numpy as np
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/rate48'
d=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else O/'20260927T193028Z/full'
files=sorted(p for p in d.glob('chunk*.bin') if p.stat().st_size==14592);assert files
rows=np.stack([np.fromfile(p,dtype='<u4').reshape(6,608) for p in files]);idxs=[int(p.stem[5:]) for p in files];assert idxs==list(range(len(files)))
manifest=json.loads((d.parent/'manifest.json').read_text());n=np.array([min(16384,manifest['frames']-16384*i) for i in idxs],dtype=np.uint64);N=int(sum(n));assert np.all(rows[:,:,32:544].sum(axis=2)==n[:,None])
log=(d/'openocd.log').read_text();events={int(l.split()[1]):[int(v,16) for v in l.split()[2:]] for l in log.splitlines() if l.startswith('RATE_CHUNK ')}
for i in idxs:
 assert events[i][0]==0x52454144 and events[i][1]==n[i] and events[i][3]==sum(n[:i+1])
 # Проверяет каждый входной отсчёт, не только размер порции.
 h=2166136261
 for v in np.fromfile(O/'chunks'/f'{i:04d}.bin',dtype='<u2'):h=((h^int(v))*16777619)&0xffffffff
 assert h==events[i][5],i
data_complete=N==manifest['frames'] and 'RATE_COMPLETE' in log and 'RATE_ERROR' not in log
initial_reset_verified='PACK_RESET_VERIFIED' in log and 'PACK_ERROR' not in log
recovery=d.parent/'restore_after_full.log'
recovery_verified=False
if d.name=='full' and recovery.exists():
 recovery_log=recovery.read_text()
 pcs=re.findall(r'POST_(?:RESET|RESUME)_PC pc \(/32\): 0x([0-9a-fA-F]+)',recovery_log)
 psrs=re.findall(r'POST_RESET_XPSR xPSR \(/32\): 0x([0-9a-fA-F]+)',recovery_log)
 faults=re.findall(r'POST_RESET_FAULTS (0x[0-9a-fA-F]+) (0x[0-9a-fA-F]+)',recovery_log)
 recovery_verified=('PACK_RESET_VERIFIED' in recovery_log and 'PACK_ERROR' not in recovery_log
  and len(pcs)==2 and all(0x90000000<=int(p,16)<0x91000000 for p in pcs)
  and len(psrs)==1 and int(psrs[0],16)&0x1ff==0
  and len(faults)==1 and all(int(v,16)==0 for v in faults[0]))
reset_verified=initial_reset_verified or recovery_verified
out={'measurement_valid':not (d.parent/'INVALID_ARITHMETIC.md').exists(),'complete':data_complete and reset_verified,'data_complete':data_complete,'initial_reset_verified':initial_reset_verified,'reset_verified':reset_verified,'reset_recovery_log':str(recovery.relative_to(O)) if recovery_verified else None,'reset_recovery_log_sha256':hashlib.sha256(recovery.read_bytes()).hexdigest() if recovery_verified else None,'samples_each':N,'duration_s':N/48000,'chunks':len(files),'planned_samples':manifest['frames'],'histogram_bin_cycles':128,'note':'All samples included, startup retained. Units CPU cycles per output sample at 48k. Candidate one 48k step, P7 two 96k steps with interpolation. Continuous own history across RAM chunks. p95/p99 are histogram intervals, not exact values. Full audio I/O not measured. Initial reset failure is retained in original log; a separate verified recovery is explicitly recorded when present.','levels':{}}
for c,level in enumerate(['100mv','250mv','1000mv']):
 out['levels'][level]={};host=np.fromfile(O/f'{level}_checkpoints.bin',dtype='<f4').reshape(-1,4,28)
 for k,name in enumerate(['48','P7_96']):
  w=rows[:,2*c+k];cy=w[:,0].astype(np.uint64)+(w[:,1].astype(np.uint64)<<32);hist=w[:,32:544].sum(axis=0);cumulative=hist.cumsum()
  def interval(q):
   b=int(np.searchsorted(cumulative,np.ceil(q*N)));return [128*b,None if b==511 else 128*b+127]
  worst=int(np.argmax(w[:,2]));block=int(np.argmax(w[:,11]));mem=w[:,544:600].copy().view('<f4').reshape(-1,2,28);assert np.isfinite(mem).all();e=abs(mem-host[:len(files),2*k:2*k+2])
  v={'mean_cycles':float(sum(cy)/N),'maximum_cycles':int(w[worst,2]),'maximum_at_sample':int(w[worst,3]),'p50_cycles_interval':interval(.5),'p95_cycles_interval':interval(.95),'p99_cycles_interval':interval(.99),'over_12500_samples':int(w[:,4].sum()),'over_10000_samples':int(w[:,5].sum()),'local_overruns':int(w[:,6].sum()),'stops':int(w[:,7].sum()),'maximum_local_norm':float(w[:,10].copy().view('<f4').max()),'max_rolling64_cycles':int(w[block,11]),'max_rolling64_start':int(w[block,12]),'rolling64_over_cpu_budget_count':int(w[:,13].sum()),'rolling64_over_dsp_budget_count':int(w[:,14].sum()),'checkpoint_memory_host_difference_v':float(e.max()),'checkpoint_memory_difference_by_coordinate_v':e.max(axis=(0,1)).tolist(),'histogram':hist.tolist()}
  out['levels'][level][name]=v
  print(level,name,'mean',round(v['mean_cycles'],1),'max',v['maximum_cycles'],'max64/sample',round(v['max_rolling64_cycles']/64,1),'stops',v['stops'],'hostmem',v['checkpoint_memory_host_difference_v'],flush=True)
 out['levels'][level]['mean_saving_percent']=100*(1-out['levels'][level]['48']['mean_cycles']/out['levels'][level]['P7_96']['mean_cycles'])
(d/'results.json').write_text(json.dumps(out,indent=2)+'\n');print('complete',out['complete'],'samples',N,'chunks',len(files))
