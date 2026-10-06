"""Предварительный аудит сохранённых данных и ELF; новых траекторий/замеров нет."""
from pathlib import Path
import collections
import hashlib
import json
import re
import subprocess

import numpy as np

from condensed_physical import CondensedPhysical, FullMNAParameters
from orange_full_mna import ROOT

OLD = ROOT / "simulation/experiments/architecture_decision"
OUT = ROOT / "simulation/experiments/optimization_inventory"


def regimes(x, model):
    idx = model.index
    amps = []
    def root_needed(ratio):
        ratio=np.asarray(ratio,dtype=np.float32)
        safe=np.where(ratio <= 1,ratio,1/np.maximum(ratio,np.float32(1e-30)))
        p=safe*safe; p=p*p; p=p*p; p=p*p
        return float(np.mean(np.float32(1)+p != np.float32(1)))
    for slot, name in enumerate([v[0] for v in model.OPAMPS]):
        s = x[:, model.i_op_internal[name]]
        current = np.abs(x[:, model.i_op_source[name]])
        swing = np.where(current <= .00135, 13.5,
                         np.where(current <= .006,
                                  13.5-(current-.00135)*1.5/(.006-.00135),
                                  np.maximum(0., 12.-(current-.006)*12./.034)))
        ratio = np.divide(abs(s), swing, out=np.full_like(s, np.inf), where=swing > 0)
        amps.append(dict(name=name, constant_swing_fraction=float(np.mean(current <= .00135)),
                         internal_below_half_swing_fraction=float(np.mean(ratio <= .5)),
                         internal_above_swing_fraction=float(np.mean(ratio > 1)),
                         accepted_root_not_skipped_fraction=root_needed(ratio),
                         max_abs_internal_v=float(max(abs(s)))))
    va = x[:, idx['mute_input']]; vb = x[:, idx['volume_top']]
    vgs = .5-np.minimum(va, vb)
    # max(g,1e-7) добавляет маленький участок пола до vgs=-2.
    graw = .00455*(1+np.minimum(vgs, 0)/2)
    ps=x[:,model.i_power_internal]
    absratio=abs(ps)/21
    # Устойчивая форма закона в f64 для определения диапазона тока.
    pr=np.minimum(absratio,1/np.maximum(absratio,1e-300))
    power_v=np.sign(ps)*np.minimum(abs(ps),21)/(1+pr**16)**(1/16)
    limit=np.minimum(60/np.maximum(24-abs(power_v),8),5)
    power_i=x[:,model.i_power_source]
    return dict(count=len(x), accepted_states_only=True,
                input_both_exp_clamped_fraction=float(np.mean(abs(x[:,idx['input_protected']]) <= 15-80*1.75*.02585)),
                q1_on_plateau_fraction=float(np.mean(vgs >= 0)),
                q1_off_plateau_fraction=float(np.mean(graw <= 1e-7)),
                q1_transition_fraction=float(np.mean((vgs < 0) & (graw > 1e-7))),
                power_voltage_root_not_skipped_fraction=root_needed(absratio),
                power_current_root_not_skipped_fraction=root_needed(abs(power_i)/limit),
                amplifiers=amps)


def assembly(elf):
    tool = Path.home()/'.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/aarch64-apple-darwin/bin/llvm-objdump'
    listing = subprocess.check_output([str(tool), '-d', '--demangle', '--mcpu=cortex-m7', str(elf)], text=True)
    (OUT/'current_elf.asm').write_text(listing)
    parts = re.split(r'^([0-9a-f]+) <(.+)>:\n', listing, flags=re.M)
    result = []
    for k in range(1,len(parts),3):
        address, name, body = parts[k:k+3]
        if 'condensed' not in name: continue
        instructions=[]
        for line in body.splitlines():
            match=re.match(r'^\s*[0-9a-f]+:\s+(?:[0-9a-f]{2,4}\s+)+\t([^\t ]+)',line)
            if match: instructions.append(match[1])
        c=collections.Counter(instructions)
        calls=collections.Counter(re.findall(r'\tbl\s+0x[0-9a-f]+ <(.+)>',body))
        result.append(dict(name=name,address=address,static_instructions=len(instructions),
                           f64_including_conversions=sum(v for n,v in c.items() if '.f64' in n),
                           division_sites={n:v for n,v in c.items() if 'div' in n},
                           sqrt_f32_sites=c['vsqrt.f32'],calls=dict(calls)))
    return dict(elf_sha256=hashlib.sha256(elf.read_bytes()).hexdigest(),
                note='Static instruction sites include mutually exclusive branches and loops; these are not cycles or dynamic counts.',
                software_double_helpers=sorted(set(re.findall(r'__aeabi_d\w+',listing))),functions=result)


def main():
    OUT.mkdir(exist_ok=True)
    p=CondensedPhysical(FullMNAParameters(sample_rate=96000,load='resistive'))
    m=p.model
    ref=np.load(OLD/'full_reference_6144000.npz')['states']
    stage_names=['input_protected','a_out','b_out','clip','c_plus','c_out','d_out','volume_wiper','power_out','speaker_hot']
    stage_names=[s for s in stage_names if m.canonical(s) in m.index]
    output=m.index[m.canonical('speaker_hot')]
    errors=[]
    for method,rate in [('bdf2',96000),('trap',96000),('trap',192000),('trap',384000)]:
        x=np.load(OLD/f'condensed_{method}_{rate}.npz')['states']
        r=ref[6144000//rate-1::6144000//rate]
        t=(np.arange(len(x))+1)/rate
        mask=np.zeros(len(t),dtype=bool)
        for edge in [.004,.006,.008]: mask |= abs(t-edge) <= .0001
        e=x[:,output]-r[:,output]
        def rms(a): return float(np.sqrt(np.mean(a*a)))
        errors.append(dict(method=method,fs=rate,
            output_error_energy_near_edges_fraction=float(np.sum(e[mask]**2)/np.sum(e**2)),
            edge_window_us_each_side=100,edge_window_sample_fraction=float(np.mean(mask)),
            output_relative_rms_away_from_edges=float(np.linalg.norm(e[~mask])/np.linalg.norm(r[~mask,output])),
            stages=[dict(node=s,rms_error_v=rms(x[:,m.index[m.canonical(s)]]-r[:,m.index[m.canonical(s)]]),
                         relative_rms=float(np.linalg.norm(x[:,m.index[m.canonical(s)]]-r[:,m.index[m.canonical(s)]])/np.linalg.norm(r[:,m.index[m.canonical(s)]]))) for s in stage_names]))
    cases={}
    for name,path in [('triangle100',ROOT/'simulation/experiments/absolute_ports/reference_100mv.txt'),
                      ('triangle1000',ROOT/'simulation/experiments/absolute_ports/reference_1000mv.txt'),
                      ('noise250',OLD/'reference_noise.txt')]:
        cases[name]=regimes(np.loadtxt(path)[:,1:],m)
    cases['fine_16ms']=regimes(ref,m)
    oh=np.concatenate([p.ih[3:],p.dh,p.nh[[27,40]]])
    od=np.concatenate([p.id[3:],p.dd,p.nd[[27,40]]])
    blocks=[0,1,2,2,3,3,3,4]
    obs_blocks=blocks+[1,2,3,3,4,3,3]
    local_terms=upstream_terms=0
    for row,b in zip(od[:,3:],obs_blocks):
        for port,value in enumerate(row):
            if value:
                assert blocks[port] <= b
                if blocks[port] == b: local_terms+=1
                else: upstream_terms+=1
    # F(t)=(1+t)^(-1/16), t in [0,1]: standard cubic Hermite value remainder.
    exponent=-1/16
    fourth=abs(exponent*(exponent-1)*(exponent-2)*(exponent-3))
    result=dict(scope='Read-only analysis of saved trajectories and ELF; no MCU run, no new integration method, no firmware changes.',
        branches=cases,temporal_error=errors,
        linear_work=dict(origin_history_products=int(np.count_nonzero(oh)),
                         origin_input_products=int(np.count_nonzero(od[:,0])),
                         observations_local_port_products=local_terms,
                         observations_upstream_port_products=upstream_terms,
                         update_history_products=int(np.count_nonzero(p.zh)),
                         update_drive_products=int(np.count_nonzero(p.zd[:,[0,*range(3,11)]]))),
        inv_root_hermite=dict(interval=[0,1],segments=32,value_derivative_knots=33,
                             f32_table_bytes=33*2*4,
                             exact_arithmetic_value_error_bound=fourth/(384*32**4),
                             note='This only bounds interpolation with exact knots/arithmetic, not f32 error, derivative error, circuit error or MCU cycles.'),
        assembly=assembly(OLD/'condensed_release_96.elf'))
    (OUT/'audit.json').write_text(json.dumps(result,indent=2,ensure_ascii=False)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k not in ['branches','assembly','temporal_error']},indent=2))
    for row in errors: print(row['method'],row['fs'],'edge_error_share',row['output_error_energy_near_edges_fraction'],'away_rms',row['output_relative_rms_away_from_edges'])
    for name,row in cases.items(): print(name,'input_guard',row['input_both_exp_clamped_fraction'],'Q1 constant branches',row['q1_on_plateau_fraction']+row['q1_off_plateau_fraction'])


if __name__=='__main__':
    main()
