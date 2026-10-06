"""Независимые скалярные проверки форм, производных и точек стыка без LUT."""
import json,numpy as np
from pathlib import Path
OUT=Path(__file__).resolve().parent/'experiments/analytic_simplification'
w=4*(1-2**(-1/16))
t=np.r_[np.linspace(0,2,200001),np.geomspace(2,1e4,20000)]
f=t/(1+t**16)**(1/16)
a=np.where(t<=1-w,t,np.where(t>=1+w,1,1-(1+w-t)**2/(4*w)))
def rational(t):
 q=np.where(t<=1,t,1/np.maximum(t,1));p=q**16
 inv=1/(1+p*(1.03125+p*.1826171875));v=(1+p*(.96875+p*.1513671875))*inv
 dp=(-.0625+p*(-.0625-p*.02081298828125))*inv**2;d=16*p*dp
 return np.where(t<=1,t*v,v),np.where(t<=1,v+d,-q*d)
b,db=rational(t)
# Производная каждого аналитического участка проверяется вне стыков.
x=np.r_[np.linspace(.01,.999,1000),np.linspace(1.001,4,2000)]
y,d=rational(x);eps=1e-6
fd=(rational(x+eps)[0]-rational(x-eps)[0])/(2*eps)
assert np.max(abs(fd-d))<1e-7
_,left=rational(np.array([1-1e-10]));_,right=rational(np.array([1+1e-10]))
r=np.linspace(-np.log(2)/2,np.log(2)/2,100001)
p=1+r*(1+r*(.5+r*(1/6+r/24)))
metrics=dict(no_lut=True,knee_half_width=w,quadratic_max_normalized_error=float(max(abs(a-f))),rational_max_normalized_error=float(max(abs(b-f))),rational_derivative_fd_error=float(max(abs(fd-d))),rational_derivative_jump_at_unity=float(right[0]-left[0]),exp4_relative_error=float(max(abs(p/np.exp(r)-1))),note='Static normalized law errors are not sound thresholds; complete trajectory errors measured separately. A2 joins continuously in value but has a small derivative jump at unity.')
(OUT/'law_audit.json').write_text(json.dumps(metrics,indent=2)+'\n');print(metrics)
