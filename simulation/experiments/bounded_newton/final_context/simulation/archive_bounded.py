"""Сохранить финальный контекст и проверить целостность RAM-серии без запуска платы."""
from pathlib import Path
import json,hashlib,shutil,numpy as np
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/bounded_newton'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for part in iter(lambda:f.read(4*1024*1024),b''):h.update(part)
 return h.hexdigest()
def entry(p):return {'bytes':p.stat().st_size,'sha256':sha(p)}
checks={};source_names=set()
for name in ['20260927T180931Z','20260927T181100Z']:
 d=O/name;m=json.loads((d/'manifest.json').read_text());source_names.update(m['sources'])
 for f,h in m['sources'].items():assert sha(d/'source'/f)==h,(name,f,'archived source')
 for f,h in m['references'].items():assert sha(R/f)==h,(name,f,'reference')
 assert sha(d/'package17.elf')==m['packages'][0]['sha256']
 log=(d/'package17.log').read_text();assert all(x in log for x in ['PACK_DONE','PACK_RESET_VERIFIED','PACK_STACK_GUARD_OK','POST_RESET_FAULTS 0x0 0x0']);assert 'PACK_ERROR' not in log
 trace=np.fromfile(d/'package17_trace.bin',dtype='<u4').reshape(3,1024,4);assert np.isfinite(trace[:,:,2:].copy().view('<f4')).all()
 assert '50 passed; 0 failed' in (d/'host_tests.log').read_text()
 checks[name]={'elf_sha256':sha(d/'package17.elf'),'archived_sources_verified':len(m['sources']),'references_verified':len(m['references']),'trace_rows':3072,'reset_verified':True,'tests_passed':50}
for f,h in m['sources'].items():assert sha(R/f)==h,(f,'current measured source differs')
base=json.loads((R/'simulation/experiments/analytic_simplification/20260927T165730Z/manifest.json').read_text())
for f in ['firmware/orange-dsp/src/packed.rs','firmware/orange-dsp/src/generated_packed.rs']:assert sha(R/f)==base['sources'][f]
assert sha(R/'firmware/target/thumbv7em-none-eabihf/release/ram-probe')==sha(O/'20260927T181100Z/package17.elf')
for p in (O/'long_di').glob('*mv.json'):
 j=json.loads(p.read_text());assert j['steps']==21286958 and j['above_local_tol']==0
 assert p.with_suffix('.bin').stat().st_size==j['steps']*8
 a=np.memmap(p.with_suffix('.bin'),dtype='<f4',mode='r');assert np.isfinite(a).all()
for name in ['20260927T180245Z','20260927T180719Z']:
 d=O/name;m0=json.loads((d/'manifest.json').read_text());assert sha(d/'package17.elf')==m0['packages'][0]['sha256'];assert not (d/'package17.log').exists()
assert not list((O/'20260927T175328Z').glob('*.elf'))
source_names.update(['AGENTS.md','NEXT_CHAT.md','docs/10 Архитектурное решение.md','docs/11 Где сокращать вычисления.md','docs/12 Метрики точности и обоснование допусков.md'])
source_names.update(str(p.relative_to(R)) for p in (R/'simulation').glob('*bounded*.py'))
source_names.add('simulation/analyze_tracking.py')
for name in sorted(source_names):
 d=O/'final_context'/name;d.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(R/name,d)
shutil.copy2(R/'firmware/target/aarch64-apple-darwin/release/examples/bounded_di',O/'final_context/bounded_di_host')
old=R/'simulation/experiments/newton_tracking';p=old/'artifact_manifest.json';j=json.loads(p.read_text())
for n in ['report.md','report_before_cap_clarification.md']:j['files'][n]=entry(old/n)
j['file_count']=len(j['files']);j['total_bytes']=sum(v['bytes'] for v in j['files'].values());j['report_clarification']='Original report retained; cap versus exact-K clarification links bounded_newton. Measurement files unchanged.'
p.write_text(json.dumps(j,indent=2,ensure_ascii=False)+'\n')
checks['P7_unchanged']=True;checks['current_arm_matches_last_measured']=True;checks['long_di_steps_each']=21286958;checks['long_di_all_finite']=True
(O/'final_verification.json').write_text(json.dumps(checks,indent=2)+'\n')
files={str(p.relative_to(O)):entry(p) for p in sorted(O.rglob('*')) if p.is_file() and p.name!='artifact_manifest.json'}
manifest={'files':files,'file_count':len(files),'total_bytes':sum(v['bytes'] for v in files.values()),'measured_runs':['20260927T180931Z','20260927T181100Z'],'built_not_run':['20260927T180245Z','20260927T180719Z'],'failed_preparation_no_elf':['20260927T175328Z'],'last_measured_elf':'20260927T181100Z/package17.elf','last_measured_sha256':checks['20260927T181100Z']['elf_sha256'],'P7_unchanged':True}
(O/'artifact_manifest.json').write_text(json.dumps(manifest,indent=2,ensure_ascii=False)+'\n')
print(json.dumps({'checks':checks,'file_count':manifest['file_count'],'total_bytes':manifest['total_bytes']},indent=2))
