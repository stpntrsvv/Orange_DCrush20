"""Фиксированные три Newton-поправки IC3B из физического аналитического старта."""
from pathlib import Path
import numpy as np,json
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/bounded_newton'
d=np.fromfile(O/'clip_samples_f64.bin').reshape(-1,8);c=json.loads((O/'conditioning.json').read_text())['coefficients']
A=c['diode_v'];B=c['diode_q'];G=c['gain'];E=c['feedback_v'];F=c['feedback_q'];scale=1.75*.02585;Is=2.5e-9
H=d[:,4]*96000/(144000+125.66370614359172)+G*d[:,2];L=H/(1-E);Q=F/(1-E)
def inverse_seed(I,g):
 return np.sign(I)*np.minimum(abs(I)/g,scale*np.arcsinh(abs(I)/(2*Is)))
def law(v,q):
 free=H+E*v+F*q;lo=(96000*d[:,4]-16e6)/144000;hi=(96000*d[:,4]+16e6)/144000
 s=np.clip(free,lo,hi);active=(free>lo)&(free<hi)
 t=s/13.5;p=t**16;fac=(1+p)**(-1/16);out=s*fac;ds=fac/(1+p)
 i=2*Is*np.sinh(np.clip(q/scale,-80,80));gd=2*Is/scale*np.cosh(np.clip(q/scale,-80,80))
 f0=v-out;f1=i-d[:,1]-A*v-B*q
 j00=1-ds*active*E;j01=-ds*active*F;j10=-A;j11=gd-B
 return f0,f1,j00,j01,j10,j11,s
results={}
for mode in [0,1,2]:
 q=inverse_seed(d[:,1]+A*L,-B-A*Q);v=L+Q*q
 # Выбор физически ограниченного выхода для повторного явного старта диода.
 saturated=abs(v)>13.5
 qsat=inverse_seed(d[:,1]+A*np.clip(v,-13.5,13.5),-B)
 q=np.where(saturated,qsat,q);v=np.clip(L+Q*q,-13.5,13.5)
 if mode==1:
  # Одна явная корректировка стартовой формулы параллельного R+диода;
  # она будет засчитана как первая из трёх, не скрытый четвёртый Newton.
  pass
 hist=[]
 for k in range(3):
  f0,f1,a,b,cj,e,st=law(v,q)
  det=a*e-b*cj;dv=(-f0*e+b*f1)/det;dq=(-a*f1+cj*f0)/det
  v+=dv;q+=dq
  if mode==2:v=np.clip(v,-13.5,13.5)
  f0,f1,*_,st=law(v,q)
  hist.append({'v_error':float(max(abs(v-d[:,5]))),'q_error':float(max(abs(q-d[:,6]))),'s_error':float(max(abs(st-d[:,7]))),'norm':float(max(np.maximum(abs(f0)/15,abs(f1)/.01)))})
 results[str(mode)]=hist
 bad=np.argmax(abs(st-d[:,7]));print(mode,hist,'worst',bad,d[bad],v[bad],q[bad],st[bad])
(O/'seed_prototype.json').write_text(json.dumps(results,indent=2)+'\n')
