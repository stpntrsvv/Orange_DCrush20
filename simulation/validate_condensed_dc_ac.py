"""Установившийся DC и независимый линейный AC, включая память сокращения."""
import json
import numpy as np
from condensed_physical import *
from orange_full_mna import ROOT
out=ROOT/'simulation/experiments/architecture_decision'
dc=[]
for value in [-1.,-.1,0.,.1,1.]:
 m=OrangeFullMNA(FullMNAParameters(load='resistive',sample_rate=0.,integration='be'))
 # tone_in/tone_low — плавающий по DC остров. Его суммарный заряд
 # постоянен; выбираем Q0=0, соответствующий нулевому пуску.
 island=np.zeros(m.size);island[m.index['tone_in']]=1;island[m.index['tone_low']]=1
 charge=np.zeros(m.size);charge[:m.n_nodes]=island[:m.n_nodes]@m.C
 charge/=max(abs(charge));row=m.index['tone_in'];x=np.zeros(m.size)
 for _ in range(8):
  rr,jj=m.residual_jacobian_physical(x,value)
  rr[row]=charge@x;jj[row]=charge
  dx=np.linalg.solve(jj,-rr);x+=dx
  if max(abs(dx)/m.state_scale)<1e-10:break
 residual,_=m.residual_jacobian_physical(x,value,False)
 p=CondensedPhysical();p.current=np.r_[p.e.T@x[:m.n_nodes],x[p.internal_indices]];p.previous=p.current.copy()
 p.r=(p.b.T@x[:m.n_nodes])[3:];p.rprev=p.r.copy()
 new,info=p.step(value)
 drift=float(np.max(abs(new-x)/p.model.state_scale));assert drift<1e-8
 dc.append(dict(input=value,max_scaled_residual=float(max(abs(residual)/m.row_scale)),max_scaled_step_drift=drift,output=float(new[31])))
p=CondensedPhysical();z0=np.zeros(28)
def origin(h,u):
 p.current=h/2;p.previous=z0.copy();return p.prepare_step(u)
r0=np.zeros(8);j=p.evaluate(r0,origin(z0,0.))[1];eps=1e-7
fh=np.empty((8,28))
for k in range(28):
 h=z0.copy();h[k]=eps
 fh[:,k]=(p.evaluate(r0,origin(h,0.))[0]-p.evaluate(r0,origin(-h,0.))[0])/(2*eps)
fu=(p.evaluate(r0,origin(z0,eps))[0]-p.evaluate(r0,origin(z0,-eps))[0])/(2*eps)
rh=-np.linalg.solve(j,fh);ru=-np.linalg.solve(j,fu)
a0=np.zeros((28,28));a0[:23,:23]=p.zh
b0=np.zeros((28,8));b0[:23]=p.zd[:,3:]
u0=np.zeros(28);u0[:23]=p.zd[:,0]
rate=p.gain/(p.order*p.fs+p.pole)
a0[23:,:23]=rate[:,None]*p.dh
for k in range(5):a0[23+k,23+k]=p.fs/(p.order*p.fs+p.pole)[k]
b0[23:]=rate[:,None]*p.dd[:,3:];u0[23:]=rate*p.dd[:,0]
a=a0+b0@rh;b=u0+b0@ru
m=OrangeFullMNA(FullMNAParameters(load='resistive',sample_rate=0.,integration='be'))
_,j0=m.residual_jacobian_physical(np.zeros(m.size),0.)
c=np.zeros_like(j0);c[:m.n_nodes,:m.n_nodes]=m.C
for k in p.internal_indices:c[k,k]=1.
u=np.zeros(m.size);u[m.i_input_source]=1.
ac=[]
for f in [20.,97.,997.,5000.,9991.,20000.]:
 w=2*np.pi*f/p.fs;delay=np.exp(-1j*w);hist=2*delay-.5*delay**2
 state=np.linalg.solve(np.eye(28)-hist*a,b);y=(rh@(hist*state)+ru)[7]
 s=p.fs*(1.5-hist);full=np.linalg.solve(j0+s*c,u)[31]
 analogue=np.linalg.solve(j0+2j*np.pi*f*c,u)[31]
 error=abs(y-full)/abs(full);assert error<1e-6
 ac.append(dict(hz=f,relative_reduction_error=float(error),discrete_gain=float(abs(y)),analogue_gain=float(abs(analogue)),discrete_phase_deg=float(np.angle(y)*180/np.pi),analogue_phase_deg=float(np.angle(analogue)*180/np.pi)))
(out/'dc_ac.json').write_text(json.dumps(dict(dc=dc,ac=ac),indent=2)+'\n');print('DC/AC passed',max(v['relative_reduction_error']for v in ac))
