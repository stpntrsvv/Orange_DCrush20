"""Полная f64 MNA новой формы насыщения. Исходный эталон не изменяется."""
from pathlib import Path
import json,numpy as np
from orange_full_mna import OrangeFullMNA,FullMNAParameters,ROOT
from analyze_scalar import CASES
OUT=ROOT/'simulation/experiments/analytic_simplification/reference';OUT.mkdir(parents=True,exist_ok=True)
W=4*(1-2**(-1/16))
def knee(t):
    if t<=1-W:return t,1.
    if t>=1+W:return 1.,0.
    a=1+W-t
    return 1-a*a/(4*W),a/(2*W)
class SimplifiedMNA(OrangeFullMNA):
    @staticmethod
    def _smooth_rail_with_derivatives(s,sw):
        if sw<=0:return 0.,0.,0.
        t=abs(s)/sw;y,d=knee(t);sign=np.sign(s)
        return sign*sw*y,d,sign*(y-t*d)
    @staticmethod
    def _smooth_rail(s,sw):return SimplifiedMNA._smooth_rail_with_derivatives(s,sw)[0]
    def _power_output_law_with_derivatives(self,s,i):
        v,ds,_=self._smooth_rail_with_derivatives(s,21.)
        vce=max(24-abs(v),8.);lim=min(60/vce,5.);t=abs(i)/lim
        if t<=1-W:f,di,dl=1.,0.,0.
        else:
            y,d=knee(t);f=y/t;df=(d-f)/t
            di=df*np.sign(i)/lim;dl=-df*t/lim
        lv=60*np.sign(v)/vce**2 if 60/vce<5 and 24-abs(v)>8 and v!=0 else 0.
        return v*f,(f+v*dl*lv)*ds,v*di
    def _power_output_law(self,s,i):return self._power_output_law_with_derivatives(s,i)[0]
if __name__=='__main__':
    result={}
    for name,path in CASES.items():
        m=SimplifiedMNA(FullMNAParameters(sample_rate=96000,load='resistive'));m.steps=1
        inputs=np.loadtxt(ROOT/'simulation/experiments'/path)[:,0].astype(np.float32)
        rows=[];stats=[]
        for u in inputs:
            x,d=m.step(float(u));rows.append(np.r_[float(u),x]);stats.append(d)
        np.savetxt(OUT/f'{name}.txt',rows,fmt='%.17g')
        result[name]={k:max(d[k] for d in stats) for k in ['scaled_residual','kcl_a','iterations','continuation_steps']}
        print(name,result[name],flush=True)
        (OUT/'metrics.json').write_text(json.dumps(result,indent=2)+'\n')
