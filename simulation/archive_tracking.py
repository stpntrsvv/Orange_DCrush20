from pathlib import Path
import json,hashlib,shutil
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/newton_tracking'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
prior=json.loads((R/'simulation/experiments/analytic_simplification/20260927T165730Z/manifest.json').read_text())
for n in ['firmware/orange-dsp/src/packed.rs','firmware/orange-dsp/src/generated_packed.rs']:
 assert sha(R/n)==prior['sources'][n],n
for d in O.glob('20*'):
 m=json.loads((d/'manifest.json').read_text())
 for p in m['packages']:
  assert sha(d/(p['name']+'.elf'))==p['sha256']
  log=(d/(p['name']+'.log')).read_text()
  assert 'PACK_RESET_VERIFIED' in log and 'PACK_ERROR' not in log and 'verified' in log.lower()
  for n,h in m['sources'].items():assert sha(d/'source'/n)==h
last=O/'20260927T172646Z/package16.elf'
assert sha(last)==sha(R/'firmware/target/thumbv7em-none-eabihf/release/ram-probe')
files=list((R/'firmware').glob('**/src/*.rs'))+list((R/'firmware/orange-dsp/examples').glob('*.rs'))+list((R/'firmware').glob('**/Cargo.toml'))
files += [R/'firmware/Cargo.lock',R/'firmware/.cargo/config.toml',R/'firmware/h7r3-runtime/memory-itcm.x',R/'embedded/openocd/run_analytic_probe.cfg',R/'AGENTS.md',R/'NEXT_CHAT.md']
files += [p for p in (R/'simulation').glob('*tracking*.py')]
files += [R/'simulation/analyze_scalar.py',R/'simulation/run_analytic_batch.py']
files += [p for p in (R/'docs').glob('*.md') if p.name[:2] in ['10','11','12']]
for p in files:
 target=O/'final_context'/p.relative_to(R);target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,target)
for p in [R/'firmware/target/aarch64-apple-darwin/release/examples/tracking_di']:
 target=O/'host_binaries'/p.name;target.parent.mkdir(exist_ok=True);shutil.copy2(p,target)
manifest={str(p.relative_to(O)):{'bytes':p.stat().st_size,'sha256':sha(p)} for p in sorted(O.rglob('*')) if p.is_file() and p.name!='artifact_manifest.json'}
(O/'artifact_manifest.json').write_text(json.dumps({'files':manifest,'file_count':len(manifest),'total_bytes':sum(v['bytes'] for v in manifest.values()),'last_measured_elf':str(last.relative_to(R)),'last_measured_sha256':sha(last),'P7_unchanged':True},indent=2)+'\n')
print(len(manifest),'files;',sum(v['bytes'] for v in manifest.values()),'bytes; last ELF',sha(last))
