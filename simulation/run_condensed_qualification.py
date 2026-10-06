"""Ограниченная независимая сетка сокращения: параметры, состояния, KCL, отказ."""
import json
from dataclasses import replace
import numpy as np
from condensed_physical import CondensedPhysical,FullMNAParameters
from orange_full_mna import OrangeFullMNA,ROOT
from run_full_qualification import input_wave

out=ROOT/'simulation/experiments/architecture_decision'
cases=[('nominal',{},.1),('strong',{},1.),('recovery',{},1.),('noise',{},.25),('dc',{},.01),('clean',{'overdrive_enabled':False},.25),('gain_zero',{'gain':0.},.1),('gain_max',{'gain':1.,'overdrive':1.},.1),('tone_a',{'treble':0.,'middle':1.,'bass':0.},.1),('tone_b',{'treble':1.,'middle':0.,'bass':1.},.1),('volume_zero',{'volume':0.},.1),('volume_max',{'volume':1.},.1),('load_4',{'speaker_re_ohm':4.},.25),('load_16',{'speaker_re_ohm':16.},.25),('mute',{'mute_enabled':True},.25),('reactive',{'load':'reactive_speaker'},.25)]
results=[]
for name,kw,amp in cases:
 row=dict(name=name,parameters=kw,level=amp,samples=384)
 try:
  p=FullMNAParameters(**({'load':'resistive'}|kw));c=CondensedPhysical(p);m=OrangeFullMNA(p);m.steps=1;checker=OrangeFullMNA(p);checker.steps=1;old=np.zeros(m.size);prev=old.copy()
  peak=scaled=kcl=res=0.;energy=error=0.;failures=0;its=np.zeros(5);rng=1
  for i in range(384):
   rng=(1664525*rng+1013904223)&0xffffffff
   u=input_wave((i+1)/96000,amp)
   if name=='noise':u=amp*(rng if rng<2**31 else rng-2**32)/2**31
   if name=='dc':u=amp
   if name=='recovery':u=amp*np.sin(2*np.pi*997*i/96000) if i<192 else 0.
   x,d=c.step(u);checker.state_delta=old/checker.state_scale;checker.previous_delta=prev/checker.state_scale
   rr,_=checker.residual_jacobian_physical(x,u,False);prev=old;old=x.copy();y,dm=m.step(u)
   e=x-y;scaled=max(scaled,float(np.max(np.abs(e)/m.state_scale)));kcl=max(kcl,float(np.max(np.abs(rr[:m.n_nodes]))));res=max(res,float(np.max(np.abs(rr)/m.row_scale)))
   iy=m.index[m.canonical('power_out')];energy+=y[iy]**2;error+=e[iy]**2;peak=max(peak,abs(e[iy]));failures+=d['error']>1e-8;its=np.maximum(its,d['iterations'])
  row.update(status='completed',relative_rms=float(np.sqrt(error/max(energy,1e-30))),peak_v=float(peak),scaled_state_error=scaled,max_full_residual=res,max_kcl=kcl,failures=failures,max_iters=its.tolist(),memory=c.nz+5)
 except Exception as e:row.update(status='failed',exception=str(e))
 results.append(row); print(row,flush=True)
 (out/'qualification_f64.json').write_text(json.dumps(results,indent=2)+'\n')
