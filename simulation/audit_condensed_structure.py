"""Воспроизводимая инвентаризация памяти и структурных зависимостей."""
import json
from pathlib import Path
import numpy as np
from condensed_physical import *
from orange_full_mna import ROOT
OUT=ROOT/'simulation/experiments/architecture_decision'
rows=[]
for name,kw in [('nominal',{}),('clean',{'overdrive_enabled':False}),('gain0',{'gain':0.}),('gain1',{'gain':1.}),('od0',{'overdrive':0.}),('od1',{'overdrive':1.}),('tone_a',{'treble':0.,'middle':1.,'bass':0.}),('tone_b',{'treble':1.,'middle':0.,'bass':1.}),('volume0',{'volume':0.}),('volume1',{'volume':1.}),('reactive',{'load':'reactive_speaker'})]:
 p=CondensedPhysical(FullMNAParameters(**({'load':'resistive'}|kw)))
 graph=p.id[3:,3:]!=0
 for slot,port in enumerate(p.amp_ports):graph[port]|=p.dd[slot,3:]!=0
 for node in ['mute_input','volume_top']:graph[6]|=p.nd[p.model.index[p.model.canonical(node)],3:]!=0
 np.fill_diagonal(graph,True)
 group=np.array([0,1,2,2,3,3,3,4])
 assert not np.any(graph & (group[None,:]>group[:,None]))
 # Булево транзитивное замыкание даёт компоненты сильной связности.
 reach=graph.copy()
 for k in range(8):reach|=reach[:,k,None]&reach[None,k,:]
 scc=[];remaining=set(range(8))
 while remaining:
  i=min(remaining);c=[j for j in remaining if reach[i,j] and reach[j,i]];scc.append(c);remaining-=set(c)
 island=np.zeros(p.model.n_nodes)
 for node in ['tone_in','tone_low']:island[p.model.index[p.model.canonical(node)]]=1.
 # Этот остров не имеет резистивной/нелинейной связи наружу; сумма его
 # KCL даёт dQ/dt=0. Проверка G и источников нужна отдельно от rank(C).
 assert np.max(abs(island@p.model.G))<1e-18
 assert np.max(abs(island@p.b))==0
 charge=island@p.memory_injection[:,:p.nc]/p.fs
 row=dict(name=name,mna=p.model.size,capacitor_rank=p.nc,inductors=len(p.inductors),dynamic_memory=p.nz+5,capacitor_basis=[x[0] for x in p.caps],passive_components=list(map(len,p.passive_components)),graph=graph.astype(int).tolist(),scc=scc)
 row['conserved_charge']={ref:float(q)for (ref,_,_),q in zip(p.caps,charge)if q!=0}
 row['evolving_states_with_fixed_initial_charge']=p.nz+4
 rows.append(row)
 if name=='nominal':
  np.savetxt(OUT/'current_influence.csv',p.id[3:,3:],delimiter=',',fmt='%.17g')
  np.savetxt(OUT/'input_difference_influence.csv',p.dd[:,3:],delimiter=',',fmt='%.17g')
  row['capacitor_groups']=[dict(caps=[p.caps[i][0] for i in c],ports=np.flatnonzero(np.any(p.zd[c,3:]!=0,axis=0)).tolist()) for c in components(p.zh)]
(OUT/'structure.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2)+'\n')
print([(r['name'],r['dynamic_memory'],r['scc']) for r in rows])
