"""Расширенные описательные метрики candidate/P7; старые gates отдельны, слуховых новых нет."""
from pathlib import Path
import json,hashlib
import numpy as np
from audit_error_metrics import summarize
from condensed_physical import CondensedPhysical
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'simulation/experiments/solver_time'
CASES={'triangle100':'absolute_ports/reference_100mv.txt','triangle1000':'absolute_ports/reference_1000mv.txt',
       'noise250':'architecture_decision/reference_noise.txt','step025':'batched_optimization/reference_step025.txt',
       'step1':'batched_optimization/reference_step1.txt','multitone':'batched_optimization/reference_multitone.txt'}
CASES.update({f'output{i}':f'repeated_work/reference_output{i}.txt' for i in range(3)})
FS=96000

def expanded(ref,c):
    m=summarize(ref,c,FS);e=c-ref;n=len(e)
    m['window_max_rms_v']={}
    for ms in [1,10,100]:
        w=int(FS*ms/1000)
        m['window_max_rms_v'][str(ms)]=float(np.sqrt(np.convolve(e*e,np.ones(w)/w,'valid').max())) if n>=w else None
    win=np.hanning(n);a=np.fft.rfft(e*win);ps=(a.real*a.real+a.imag*a.imag)/(n*n*np.mean(win*win))
    ps[1:-1]*=2
    freq=np.fft.rfftfreq(n,1/FS)
    m['hann_band_error_rms_v']={f'{lo}-{hi}':float(np.sqrt(ps[(freq>=lo)&(freq<hi)].sum())) for lo,hi in [(0,20),(20,200),(200,2000),(2000,20000),(20000,48001)]}
    m['frequency_resolution_hz']=FS/n
    m['max_window_rms_error_note']='Sliding rectangular windows; diagnostic resolutions, not audibility gates.'
    return m

def main():
    p=CondensedPhysical();names=p.model.state_names()
    scales=p.model.state_scale.astype(float)
    charge=np.zeros(28)
    for ref,sign in [('E12',-1),('C8',1),('C5',1),('C6',1)]:
        i=next(i for i,c in enumerate(p.caps) if c[0]==ref);charge[i]=sign*p.caps[i][2]
    result={'note':'Same BDF2/96k, nominal fixed configuration. Raw electrical output. No hearing test or new thresholds.',
            'format':'236 little-endian f64: input,reference, candidate,P7 outputs, local norms, iterations, full norms, KCL maxima; candidate/P7 x56; current candidate/P7 z28; previous candidate/P7 z28.',
            'counter_columns_if_matrix':['equations','derivative_rows','corrections','rejected_trials','direct_trials','direct_accepted','retries','root16_nontrivial','exp','sqrt64','solve'],
            'counter_columns_if_vector':['scalar_attempts','scalar_iterations','scalar_fallbacks'], 'cases':{},'sha256':{}}
    for name,file in CASES.items():
        path=OUT/'host'/f'{name}.bin';data=np.fromfile(path,dtype='<f8').reshape(-1,236)
        refpath=ROOT/'simulation/experiments'/file;ref=np.loadtxt(refpath)
        assert len(data)==len(ref)
        assert np.array_equal(data[:,1],ref[:,32])
        xref=ref[:,1:];zref=np.c_[xref[:,:p.model.n_nodes]@p.e,xref[:,p.internal_indices]]
        row={'candidate_vs_P7':expanded(data[:,3],data[:,2]),'counts':json.loads((OUT/'host'/f'{name}_counts.json').read_text()),'variants':{}}
        for idx,label in enumerate(['candidate','P7']):
            x=data[:,12+idx*56:68+idx*56];z=data[:,124+idx*28:152+idx*28]
            prev=data[:,180+idx*28:208+idx*28]
            e=x-xref;scaled=np.abs(e)/scales
            worst=np.unravel_index(np.argmax(scaled),scaled.shape)
            m=expanded(data[:,1],data[:,2+idx])
            m.update(max_full_residual=float(data[:,8+idx].max()),max_kcl_a=float(data[:,10+idx].max()),
                     max_scaled_state_error=float(scaled.max()),worst_state={'name':names[worst[1]],'sample':int(worst[0])},
                     per_state_max_error=np.max(np.abs(e),axis=0).tolist(),state_names=names,
                     cap_memory_peak_error_v=float(np.max(np.abs(z[:,:23]-zref[:,:23]))),
                     pole_memory_peak_error_v=float(np.max(np.abs(z[:,23:]-zref[:,23:]))),
                     charge_invariant_max_c=float(np.max(np.abs(z@charge))),
                     previous_memory_shift_exact=bool(np.array_equal(prev[1:],z[:-1])),
                     max_iterations=int(data[:,6+idx].max()))
            # The resistor is at power_out in this generated 6.5-ohm configuration.
            r=data[:,1];c=data[:,2+idx]
            m['load_current_error_rms_a']=m['error_rms_v']/6.5
            m['load_current_error_peak_a']=m['peak_v']/6.5
            m['load_power_error_rms_w']=float(np.sqrt(np.mean(((c*c-r*r)/6.5)**2)))
            m['load_power_error_peak_w']=float(np.max(np.abs((c*c-r*r)/6.5)))
            m['old_strict_gates_pass']=bool(m['relative_rms']<1e-4 and m['peak_v']<.01 and m['max_scaled_state_error']<.003 and m['max_full_residual']<1e-4)
            # Report failures too; the Rust acceptance tests enforce unchanged gates.
            if name in ['step025','step1','multitone']:
                m['recovery_last_4ms']=expanded(r[-384:],c[-384:])
            if name in ['step025','step1']:
                m['one_ms_after_edges']={str(i):expanded(r[i:i+96],c[i:i+96]) for i in [96,384,768]}
            row['variants'][label]=m
        row['memory_peak_candidate_vs_P7_v']=np.max(np.abs(data[:,124:152]-data[:,152:180]),axis=0).tolist()
        result['cases'][name]=row
        for path in [path,refpath]:result['sha256'][str(path.relative_to(ROOT))]=hashlib.sha256(path.read_bytes()).hexdigest()
        for v in ['candidate','P7']:
            m=row['variants'][v]
            print(name,v,'RMS mV',m['error_rms_v']*1000,'peak mV',m['peak_v']*1000,'scaled',m['max_scaled_state_error'],'KCL A',m['max_kcl_a'])
    (OUT/'metrics.json').write_text(json.dumps(result,indent=2)+'\n')
if __name__=='__main__':
    import argparse
    parser=argparse.ArgumentParser()
    parser.add_argument('--dir',type=Path,default=OUT)
    args=parser.parse_args();OUT=args.dir
    main()
