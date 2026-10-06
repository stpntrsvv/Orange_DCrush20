"""Физическое отличие A1 от полной исходной модели: ручки, нагрузки, восстановление."""
import json
import numpy as np
from run_analytic_reference import SimplifiedMNA,OrangeFullMNA,FullMNAParameters,ROOT
from run_full_qualification import input_wave
from analyze_scalar import expanded
OUT=ROOT/'simulation/experiments/analytic_simplification/corners';OUT.mkdir(exist_ok=True)
cases=[('strong',{},1.,False),('recovery',{},1.,True),('clean',{'overdrive_enabled':False},.25,False),('gain_max',{'gain':1.,'overdrive':1.},.25,False),('tone_a',{'treble':0.,'middle':1.,'bass':0.},.25,False),('tone_b',{'treble':1.,'middle':0.,'bass':1.},.25,False),('volume_max',{'volume':1.},.25,False),('load4',{'speaker_re_ohm':4.},.25,False),('reactive',{'load':'reactive_speaker'},.25,False)]
results=[]
for name,kw,amp,recovery in cases:
    p=FullMNAParameters(**({'load':'resistive'}|kw));a=SimplifiedMNA(p);b=OrangeFullMNA(p);a.steps=b.steps=1
    xa=[];xb=[];ds=[];row={'name':name,'parameters':kw,'input_level':amp,'recovery':recovery}
    try:
        for i in range(1536):
            u=float(np.float32(input_wave((i+1)/96000,amp,recovery)))
            x,da=a.step(u);y,db=b.step(u);xa.append(x);xb.append(y);ds.append([da['scaled_residual'],db['scaled_residual'],da['continuation_steps'],db['continuation_steps']])
        x=np.array(xa);y=np.array(xb);j=b.index['power_out']
        row.update(status='completed',steps=len(x),output=expanded(y[:,j],x[:,j]),scaled_state_peak=float(np.max(abs(x-y)/b.state_scale)),maximum_residual=np.max(ds,axis=0)[:2].tolist(),continuation_samples=np.count_nonzero(np.array(ds)[:,2:],axis=0).tolist())
        if recovery:row['last_4ms']=expanded(y[-384:,j],x[-384:,j])
    except Exception as e:row.update(status='failed',steps=len(xa),error=str(e))
    np.savez_compressed(OUT/f'{name}.npz',candidate=xa,reference=xb,diagnostics=ds)
    results.append(row);(OUT/'metrics.json').write_text(json.dumps(results,indent=2)+'\n');print(name,row['status'],row.get('output',{}).get('peak_v'),flush=True)
