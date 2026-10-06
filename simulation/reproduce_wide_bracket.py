"""Preserved negative scalar-solver experiment: wide bracket, 100 iterations.

Expected failure on the 384th sample, 0.5 V mixed/switching input, VR2=0.
The current solver uses an analytical diode-law bound instead.
"""
import json
import numpy as np
from orange_clip import ClipModel, Parameters, ROOT
from run_physical_clip import waveform

def main():
    m=ClipModel(Parameters(od_ohm=0))
    for k in range(1152):
        u=waveform((k+1)/48000,.5)
        b=m.rhs(u); x0=m.inv@b; d0=float(m.e@x0)
        lo,hi=min(0.,d0),max(0.,d0)
        d=float(np.clip(m.e@m.state,lo,hi))
        for iteration in range(1,101):
            current,g=m.diode(d); f=d+m.r*current-d0
            if abs(f)<2e-13: break
            if f>0: hi=d
            else: lo=d
            candidate=d-f/(1+m.r*g)
            d=candidate if lo<candidate<hi else (lo+hi)/2
        else:
            result=dict(status='expected_failure_reproduced',sample_zero_based=k,
                        input_v=u,drive_without_diode_v=d0,port_resistance_ohm=m.r,
                        iterations=100,scalar_residual_v=float(f),diode_voltage_v=float(d),
                        reason='Wide voltage bracket permits long exponential Newton descent')
            path=ROOT/'simulation/experiments/physical_clip/negative_wide_bracket.json'
            path.write_text(json.dumps(result,indent=2)+'\n')
            print(json.dumps(result,indent=2)); return
        m.state=x0-m.z*m.diode(d)[0]
    raise RuntimeError('Expected historical failure no longer reproduced')

if __name__=='__main__': main()
