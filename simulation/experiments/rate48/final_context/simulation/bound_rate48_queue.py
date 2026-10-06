"""Консервативная граница накопленной работы по полному DWT-следу-гистограмме.
P_i — сумма положительных (верхняя граница корзины - бюджет) в порции.
Q_i — точная сумма тактов порции минус бюджет*число отсчётов.
Любой непрерывный интервал: суффикс первой порции + целые порции + префикс
последней. Его превышение <= P_first + sum(Q_middle) + P_last.
Сравниваем все интервалы линейной рекурсией. Для одной порции граница P_i.
Нет предположения о порядке отсчётов в гистограмме. Граница консервативна.
Это модель непрерывно работающей очереди с ровными поступлениями; фактический
DMA-планировщик, его пакетные поступления и накладные расходы не проверены.
"""
from pathlib import Path
import json,math,numpy as np
R=Path(__file__).resolve().parents[1];D=R/'simulation/experiments/rate48/20260927T193028Z/full'
fs=sorted(p for p in D.glob('chunk*.bin') if p.stat().st_size==14592);a=np.stack([np.fromfile(p,dtype='<u4').reshape(6,608) for p in fs]);meta=json.loads((D.parent/'manifest.json').read_text());N=np.array([min(16384,meta['frames']-i*16384) for i in range(len(fs))],dtype=np.int64)
out={'chunks':len(fs),'complete':json.loads((D/'results.json').read_text())['complete'],'note':'Upper bound on workload excursion over all contiguous intervals, using exact whole-chunk totals and conservatively histogram-bounded positive surplus on interval end chunks. Not observed exact latency. Assumes work-conserving sample queue with uniform arrivals. DMA batching/overheads not tested. Clock 600MHz. No extra numerical steps or model change.','cases':{}}
for c,name in enumerate(['100mv','250mv','1000mv']):
 w=a[:,2*c];hist=w[:,32:544].astype(np.int64);sums=w[:,0].astype(np.uint64)+(w[:,1].astype(np.uint64)<<32);out['cases'][name]={}
 for budget in [12500,10000]:
  # bins capped by exact maximum; bin511 is unbounded above without it.
  P=[]
  for i in range(len(w)):
   upper=np.minimum((np.arange(512)+1)*128-1,int(w[i,2]));upper[-1]=int(w[i,2]);P.append(int(np.dot(hist[i],np.maximum(0,upper-budget))))
  Q=sums.astype(np.int64)-N*budget;carry=None;bound=0
  for pos,total in zip(P,Q):
   bound=max(bound,pos,(carry+pos) if carry is not None else pos)
   carry=max(pos,carry+int(total)) if carry is not None else pos
  aligned=0;lower=0
  for q in Q:aligned=max(0,aligned+int(q));lower=max(lower,aligned)
  lower=max(lower,int(w[:,2].max())-budget,int(w[:,11].max())-64*budget,0)
  v={'observed_lower_backlog_cycles':lower,'lower_extra_delay_ms':lower/budget/48,'service_budget_cycles_per_sample':budget,'upper_backlog_cycles':int(bound),'upper_cpu_work_ms':bound/600000,'upper_extra_delay_ms':bound/budget/48,'upper_extra_samples':math.ceil(bound/budget),'minimum_total_sample_delay_bound':1+math.ceil(bound/budget),'chunk_mean_max_cycles':float(max(sums/N)),'chunks_with_positive_total_surplus':int(sum(Q>0)),'total_measured_surplus_cycles':int(sum(Q))}
  out['cases'][name][str(budget)]=v
  print(name,budget,'upper extra samples',v['upper_extra_samples'],'upper extra delay ms',round(v['upper_extra_delay_ms'],3),'max chunk mean',round(v['chunk_mean_max_cycles'],1),flush=True)
(D/'queue_bounds.json').write_text(json.dumps(out,indent=2)+'\n')
# Exhaustive check of the multi-chunk recurrence on short signed sequences.
from itertools import product
for xs in product([-2,1,4],repeat=6):
 chunks=[xs[:2],xs[2:4],xs[4:]];P=[sum(max(v,0) for v in x) for x in chunks];Q=[sum(x) for x in chunks]
 carry=None;bound=0
 for pos,total in zip(P,Q):
  bound=max(bound,pos,(carry+pos) if carry is not None else pos)
  carry=max(pos,carry+total) if carry is not None else pos
 actual=max(0,max(sum(xs[i:j]) for i in range(6) for j in range(i+1,7)))
 assert actual<=bound,(xs,actual,bound)
