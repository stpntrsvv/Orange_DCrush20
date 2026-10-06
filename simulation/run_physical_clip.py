"""Reproducible physical-port experiment: full Newton vs exact linear elimination.

Also checks small-signal AC using independent ngspice and BE grid refinement.
All voltages are V, currents A, times s. Input drives IC3B + pin, NOT amp jack.
"""
from dataclasses import asdict, replace
import itertools
import json
import math
from pathlib import Path
import shutil
import subprocess
import tempfile
import numpy as np
from orange_clip import ClipModel, Parameters, ROOT

OUT=ROOT/'simulation/experiments/physical_clip'

def waveform(t,level):
    if t < 0.008:
        return level*(0.7*math.sin(2*math.pi*197*t)+0.3*math.sin(2*math.pi*1703*t))
    if t < 0.012:
        return level*(1 if t < 0.010 else -1)
    return 0.

def compare(p,level,duration=0.024):
    full, reduced=ClipModel(p),ClipModel(p)
    count=round(duration*p.sample_rate)
    max_v=max_i=max_kcl=max_constraint=0.
    peak_b=peak_diode=0.; max_full=max_reduced=0
    rail_exceeded=0; input_square=output_square=0.
    for k in range(count):
        u=waveform((k+1)/p.sample_rate,level)
        x,diag=full.step(u,'full'); y,other=reduced.step(u,'reduced')
        max_v=max(max_v,float(np.max(np.abs(x[:full.n]-y[:full.n]))))
        max_i=max(max_i,abs(float(x[-1]-y[-1])))
        max_kcl=max(max_kcl,diag['kcl_a'],other['kcl_a'])
        max_constraint=max(max_constraint,diag['constraint_v'],other['constraint_v'])
        max_full=max(max_full,diag['iterations']); max_reduced=max(max_reduced,other['iterations'])
        bout=abs(full.voltage(x,'b_out')); peak_b=max(peak_b,bout)
        peak_diode=max(peak_diode,abs(full.diode(float(full.e@x))[0]))
        rail_exceeded+=int(bout>15.)
        input_square+=u*u; output_square+=full.voltage(x,'c_plus')**2
    if max_v>1e-7 or max_kcl>1e-9 or max_constraint>1e-9:
        raise RuntimeError('Equivalence gate failed')
    return dict(parameters=asdict(p),input_level_v=level,samples=count,
                max_voltage_difference_v=max_v,max_source_current_difference_a=max_i,
                max_kcl_a=max_kcl,max_constraint_v=max_constraint,
                max_full_iterations=max_full,max_scalar_iterations=max_reduced,
                peak_ideal_opamp_output_v=peak_b,peak_diode_current_a=peak_diode,
                samples_outside_nominal_15v_rails=rail_exceeded,
                tone_output_rms_v=math.sqrt(output_square/count),
                reduced_port_resistance_ohm=reduced.r)

def spice_ac(p,label):
    exe=shutil.which('ngspice')
    if not exe: raise RuntimeError('ngspice is required for the independent AC gate')
    m=ClipModel(p)
    def node(n): return '0' if n=='G' else n
    lines=['Orange physical clipping stage AC cross-check']
    for ref,kind,a,b,value in m.rows:
        # Electrolytic names E* must become C* in SPICE syntax.
        lines.append(f'{kind}_{ref} {node(a)} {node(b)} {value:.17g}')
    lines+=['Vin bin 0 AC 1', 'Eop b_out 0 bin b_minus 1e9',
            f'Dpos {node(m.canonical("clip"))} {node(m.canonical("clip_ref"))} fixture',
            f'Dneg {node(m.canonical("clip_ref"))} {node(m.canonical("clip"))} fixture',
            f'.model fixture D(Is={p.diode_is} N={p.diode_n} Cjo=0 Tt=0)',
            '.options gmin=1e-15 temp=26.85 tnom=26.85',
            '.control','set noaskquit','ac dec 10 20 20000',
            'wrdata ac.txt v(b_out) v(c_plus)','quit','.endc','.end']
    deck='\n'.join(lines)+'\n'
    (OUT/f'ac_{label}.cir').write_text(deck)
    with tempfile.TemporaryDirectory(prefix='orange-ac-') as folder:
        path=Path(folder); (path/'check.cir').write_text(deck)
        run=subprocess.run([exe,'-b','check.cir'],cwd=path,text=True,capture_output=True,timeout=30)
        if run.returncode or not (path/'ac.txt').exists():
            raise RuntimeError(run.stdout+run.stderr)
        data=np.loadtxt(path/'ac.txt')
    errors=[]
    for row in data:
        f=row[0]; x=m.ac(f)
        for idx,offset in ((m.index['b_out'],1),(m.index['c_plus'],4)):
            expected=x[idx]; actual=complex(row[offset],row[offset+1])
            errors.append(abs(actual-expected)/max(abs(expected),1e-12))
    err=max(errors)
    if err>2e-5: raise RuntimeError(f'ngspice AC mismatch: {err}')
    return dict(label=label,points=len(data),max_relative_complex_error=err,
                spice_opamp_gain=1e9,python_opamp='ideal infinite gain')

def spice_transient():
    # Use the saved independent-engine circuit, same declared physics.
    deck=(OUT/'ac_od_zero_r.cir').read_text()
    deck=deck.replace('Vin bin 0 AC 1','Vin bin 0 SIN(0 0.1 997)')
    deck=deck.replace('Eop b_out 0 bin b_minus 1e9','Eop b_out 0 bin b_minus 1e6')
    deck=deck.replace('.options gmin=1e-15 temp=26.85 tnom=26.85',
        '.options gmin=1e-15 temp=26.85 tnom=26.85 method=gear maxord=1 reltol=1e-6 abstol=1e-12 vntol=1e-8')
    deck=deck.replace('ac dec 10 20 20000', 'tran 1.3020833333333333u 8m 0 1.3020833333333333u uic')
    deck=deck.replace('wrdata ac.txt v(b_out) v(c_plus)',
                      'wrdata transient.txt v(b_out) v(c_plus) v(clip)')
    (OUT/'transient_od_zero_r.cir').write_text(deck)
    with tempfile.TemporaryDirectory(prefix='orange-transient-') as folder:
        path=Path(folder); (path/'check.cir').write_text(deck)
        run=subprocess.run([shutil.which('ngspice'),'-b','check.cir'],cwd=path,text=True,capture_output=True,timeout=60)
        if run.returncode or not (path/'transient.txt').exists():
            raise RuntimeError(run.stdout+run.stderr)
        data=np.loadtxt(path/'transient.txt')
        if data[-1,0] < .008*(1-1e-8) or 'aborted' in (run.stdout+run.stderr).lower():
            raise RuntimeError('Incomplete ngspice transient: '+run.stdout+run.stderr)
    rows=[]
    for method,fs in itertools.product(("be","bdf2"),(48000,96000,192000,384000)):
        m=ClipModel(Parameters(sample_rate=fs,od_ohm=0,integration=method))
        t=np.arange(1,round(.008*fs)+1)/fs
        trace=[]
        for time in t:
            x,_=m.step(.1*math.sin(2*math.pi*997*time))
            trace.append([m.voltage(x,n) for n in ('b_out','c_plus','clip')])
        trace=np.array(trace)
        reference=np.column_stack([np.interp(t,data[:,0],data[:,c]) for c in (1,3,5)])
        rms=np.sqrt(np.mean((trace-reference)**2,axis=0))
        relative=rms/np.maximum(np.sqrt(np.mean(reference**2,axis=0)),1e-12)
        rows.append(dict(integration=method,sample_rate_hz=fs,rms_error_v=rms.tolist(),relative_rms_error=relative.tolist()))
    if not all(rows[j+1]['rms_error_v'][1]<rows[j]['rms_error_v'][1] for j in (0,1,2,4,5,6)):
        raise RuntimeError('Nonlinear SPICE convergence failed: '+json.dumps(rows))
    if rows[3]['relative_rms_error'][1]>.02 or rows[7]['relative_rms_error'][1]>.02:
        raise RuntimeError('Nonlinear SPICE error: '+json.dumps(rows))
    return dict(nodes=['b_out','c_plus','clip'],input='0.1 V peak sine 997 Hz at IC3B +IN',
                native_48k_2percent_gate={'be':bool(rows[0]['relative_rms_error'][1]<=.02),'bdf2':bool(rows[4]['relative_rms_error'][1]<=.02)},
                duration_s=.008,spice_opamp_gain=1e6,spice_initial_state='UIC, zero capacitor voltage',spice_points=len(data),spice_max_step_s=1/768000,results=rows)

def refinement():
    # Smooth, no discontinuities, compare aligned endpoints against 384 kHz BE.
    trajectories={}
    for fs in (48000,96000,192000,384000):
        m=ClipModel(Parameters(sample_rate=fs,od_ohm=10000))
        values=[]
        for k in range(round(.016*fs)):
            t=(k+1)/fs
            u=.15*(1-math.exp(-t/.001))*math.sin(2*math.pi*997*t)
            x,_=m.step(u)
            if (k+1)%(fs//48000)==0: values.append(m.voltage(x,'c_plus'))
        trajectories[fs]=np.array(values)
    ref=trajectories[384000]
    result={str(fs):float(np.sqrt(np.mean((v-ref)**2))) for fs,v in trajectories.items() if fs!=384000}
    if not result['192000']<result['96000']<result['48000']:
        raise RuntimeError('Grid refinement did not reduce error')
    return dict(reference_rate_hz=384000,tone_output_rms_error_v=result,
                note='BE discretization error; not isolated aliasing or hardware fidelity')

def main():
    OUT.mkdir(parents=True,exist_ok=True)
    cases=[]
    for on,r in [(False,50000),(True,50000),(True,10000),(True,0)]:
        for level in (.01,.1,.5):
            cases.append(compare(Parameters(overdrive=on,od_ohm=r),level))
    for tone in itertools.product((0.,1.),repeat=3):
        cases.append(compare(Parameters(od_ohm=0,treble=tone[0],middle=tone[1],bass=tone[2]),.1))
    for on,r in [(False,50000),(True,50000),(True,10000),(True,0)]:
        for level in (.01,.1,.5):
            cases.append(compare(Parameters(integration='bdf2',overdrive=on,od_ohm=r),level))
    ac=[spice_ac(Parameters(overdrive=on,od_ohm=r),label) for label,on,r in
        [('clean',False,50000),('od_max_r',True,50000),('od_zero_r',True,0)]]
    metrics={'parameters_status':'Diode law fixture; no fitted 1N4148 model; IC3B ideal unsaturated',
             'input':'IC3B noninverting input; not guitar jack',
             'discretization':'BE and BDF2 float64, initially uncharged capacitors; BDF2 starts with BE',
             'cases':cases,'independent_spice_ac':ac,'independent_spice_transient':spice_transient(),'grid_refinement':refinement(),
             'numpy_version':np.__version__}
    (OUT/'metrics.json').write_text(json.dumps(metrics,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'cases':len(cases),'max_voltage_error_v':max(c['max_voltage_difference_v'] for c in cases),
        'max_kcl_a':max(c['max_kcl_a'] for c in cases),'rail_exceeded_samples':sum(c['samples_outside_nominal_15v_rails'] for c in cases),
        'spice_ac':ac,'spice_transient':metrics['independent_spice_transient'],'refinement':metrics['grid_refinement']},ensure_ascii=False,indent=2))

if __name__=='__main__': main()
