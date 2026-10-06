"""Консервативная граница цены блоков по измеренной гистограмме.
Для N<=16384 любое окно лежит в одной порции RAM или паре соседних.
Сумма N самых дорогих значений объединённой гистограммы ограничивает
любое такое окно сверху, независимо от порядка. Верхние границы корзин
округляют цену вверх; точный максимум порции дополнительно ограничивает их.
Это верхняя граница по измеренной записи, не измеренный максимум окна
и не глобальное WCET для любого будущего входа.
"""
from pathlib import Path
import json,numpy as np
R=Path(__file__).resolve().parents[1];D=R/'simulation/experiments/rate48/20260927T193028Z/full'
files=sorted(p for p in D.glob('chunk*.bin') if p.stat().st_size==14592);a=np.stack([np.fromfile(p,dtype='<u4').reshape(6,608) for p in files])
result={'chunks':len(files),'complete':json.loads((D/'results.json').read_text())['complete'],'method':'For each N<=16384, bound every contiguous window by the sum of N highest bin-upper-bound costs from each adjacent RAM-chunk pair; cap bin bounds by exact measured maximum. Max across pairs. Conservative bound for recorded samples, not measured window maximum or WCET for arbitrary input.','cases':{}}
for c,name in enumerate(['100mv','250mv','1000mv']):
 result['cases'][name]={};hist=a[:,2*c,32:544].astype(np.int64)
 for n in [64,128,256,512,1024]:
  worst=0;where=0
  for i in range(len(a)):
   h=hist[i:i+2].sum(axis=0);maximum=int(a[i:i+2,2*c,2].max());costs=np.minimum((np.arange(512)+1)*128-1,maximum);costs[-1]=maximum
   remaining=n;total=0
   for k in range(511,-1,-1):
    use=min(remaining,int(h[k]));total+=use*int(costs[k]);remaining-=use
    if not remaining:break
   if total>worst:worst=total;where=i
  result['cases'][name][str(n)]={'upper_cycles':worst,'upper_cycles_per_output':worst/n,'budget_cpu_cycles':12500*n,'upper_bound_within_cpu':worst<=12500*n,'upper_cpu_margin_per_output':12500-worst/n,'buffer_duration_ms':n/48,'worst_chunk_pair_start':where}
 print(name,{n:round(v['upper_cycles_per_output'],1) for n,v in result['cases'][name].items()},flush=True)
(D/'block_bounds.json').write_text(json.dumps(result,indent=2)+'\n')
