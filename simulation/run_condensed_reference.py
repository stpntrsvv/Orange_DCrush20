"""Полная f64-MNA для архитектурного опыта: никакого сокращённого решателя."""
import argparse,json
import numpy as np
from orange_full_mna import *
from run_full_qualification import input_wave

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--rates',nargs='+',type=int,default=[3072000,6144000]);a=ap.parse_args()
    out=ROOT/'simulation/experiments/architecture_decision';out.mkdir(exist_ok=True)
    for fs in a.rates:
        m=OrangeFullMNA(FullMNAParameters(sample_rate=fs,load='resistive'))
        n=round(fs*.016);x=np.empty((n,m.size));metrics=dict(fs=fs,load='resistive',level=.1,max_kcl=0.,max_residual=0.,max_iterations=0,continuations=0)
        for i in range(n):
            x[i],d=m.step(input_wave((i+1)/fs,.1))
            metrics['max_kcl']=max(metrics['max_kcl'],d['kcl_a']);metrics['max_residual']=max(metrics['max_residual'],d['scaled_residual'])
            metrics['max_iterations']=max(metrics['max_iterations'],d['iterations']);metrics['continuations']+=d['continuation_steps']>0
        np.savez_compressed(out/f'full_reference_{fs}.npz',states=x,fs=fs)
        (out/f'full_reference_{fs}.json').write_text(json.dumps(metrics,indent=2)+'\n');print(metrics,flush=True)
if __name__=='__main__':main()
