"""Свежие фиксированные Newton-пробы; RAM-only, парный P7, проверка возврата."""
import argparse
from pathlib import Path
import run_analytic_batch as batch
ROOT=Path(__file__).resolve().parents[1]
batch.OUT=ROOT/'simulation/experiments/newton_tracking'
batch.PACKAGES += ['tracking-one','tracking-two','tracking-three']
_original_sources=batch.sources
def sources():
    result=_original_sources()
    for name in ['simulation/run_tracking_batch.py','simulation/analyze_tracking.py']:
        result[name]=batch.sha(ROOT/name)
    return result
batch.sources=sources
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--packages',nargs='+',type=int,choices=[14,15,16],default=[14,15,16])
    p.add_argument('--output',action='store_true');p.add_argument('--stress',action='store_true')
    group=p.add_mutually_exclusive_group(required=True)
    group.add_argument('--prepare',action='store_true');group.add_argument('--run',type=Path);group.add_argument('--analyze',type=Path)
    a=p.parse_args()
    if a.prepare:batch.prepare(a.packages,a.stress,a.output)
    elif a.run:batch.run_hardware(a.run.resolve())
    else:batch.analyze(a.analyze.resolve())
