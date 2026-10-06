"""Построение R2 из сохранённого отрицательного R1. Обычное развитие — repeated.rs."""
from pathlib import Path
root=Path(__file__).resolve().parents[1]
p=root/'firmware/orange-dsp/src/repeated.rs'
s=(root/'simulation/experiments/repeated_work/rejected_r1/repeated.rs').read_text()
a=s.index('// Та же функция');b=s.index('#[derive(Clone)]',a)
# Keep independent full laws for test diagnostics only.
old=s[a:b]
s=s[:a]+'''// Значение закона и общие величины для последующей производной.
// Корни/exp здесь вычисляются единожды, независимо от принятия пробы.
#[inline(always)]
fn rail_value<M:NonlinearMath>(s:f32,sw:f32)->(f32,f32,f32,f32) {
    if sw<=0.0 {return (0.0,0.0,0.0,0.0);}
    let deep=s.abs()>sw;
    let ratio=if deep {sw/s.abs()} else {s/sw};
    let p=pow16(ratio.abs());
    let f=1.0/M::sixteenth_root(1.0+p);
    (if deep {s.signum()*sw*f} else {s*f},p,f,ratio)
}
#[inline(always)]
fn rail_slope(s:f32,sw:f32,p:f32,f:f32,ratio:f32)->(f32,f32) {
    if sw<=0.0 {return (0.0,0.0);}
    let common=f/(1.0+p);
    if s.abs()>sw {(p*ratio*common,s.signum()*common)}
    else {(common,s*p/sw*common)}
}

''' + s[b:]
a=s.index('#[inline(always)]\nfn equation');b=s.index('#[inline(always)]\nfn solve',a)
s=s[:a]+'''#[derive(Clone, Copy)]
struct Row {
    f:f32,
    state:f32,
    // AMP: free,current,swing,pRail,fRail,vRail,rawLimit,pLimit,fLimit,
    // signed current ratio (negative means deep),railRatio.
    // Diodes: exp+ / exp-. Q1: va / vb / conductance.
    cache:[f32;11],
}
#[inline(always)]
fn equation<M:PackageMath,const P:usize,const F:u8>(
    r:&[f32;8],o:&[f64;15],poles:&[Pole;5]
)->Row {
    let current=observe::<F>(P,o,r);
    let mut c=[0.0;11];
    if let Some(slot)=AMP.iter().position(|&p|p==P) {
        let diff=observe::<F>(8+slot,o,r);
        let gain=(g::GAIN[slot]/(g::ORDER as f64*g::FS as f64+g::POLE[slot])) as f32;
        let free=poles[slot].free_history+gain*diff;
        let state=free.clamp(poles[slot].lower,poles[slot].upper);
        let swing=if slot<4 {opamp_swing_derivative(current).0} else {21.0};
        let (v,p,f,ratio)=rail_value::<M>(state,swing);
        c[0]=free; c[1]=current; c[2]=swing; c[3]=p; c[4]=f; c[5]=v; c[10]=ratio;
        if slot<4 {return Row{f:r[P]-v,state,cache:c};}
        let vce=(24.0-v.abs()).max(8.0);
        let raw_limit=60.0/vce;
        let limit=raw_limit.min(5.0);
        let ratio=current.abs()/limit;
        let deep=ratio>1.0;
        let q=if deep {limit/current.abs()} else {ratio};
        let p=pow16(q);
        let f=1.0/M::sixteenth_root(1.0+p);
        c[6]=raw_limit; c[7]=p; c[8]=f; c[9]=if deep {-q} else {q};
        let factor=if deep {q*f} else {f};
        return Row {f:r[P]-v*factor,state,cache:c};
    }
    if P==0 || P==3 {
        let scale=1.75*0.02585;
        let (a,b)=if P==0 {((r[0]-15.0)/scale,(-r[0]-15.0)/scale)}
                   else {(r[3]/scale,-r[3]/scale)};
        let (ep,en)=if P==3 && a.abs()>=0.5 {
            let positive=M::exp(a.abs().min(80.0));
            let negative=1.0/positive;
            if a>=0.0 {(positive,negative)} else {(negative,positive)}
        } else {(M::exp(a.clamp(-80.0,80.0)),M::exp(b.clamp(-80.0,80.0)))};
        c[0]=ep;c[1]=en;
        return Row{f:2.5e-9*(ep-en)-current,state:0.0,cache:c};
    }
    let va=observe::<F>(13,o,r);let vb=observe::<F>(14,o,r);
    let vgs=0.5-va.min(vb);
    let conductance=if vgs<=-2.0 {1e-7} else {(0.00455*(1.0+vgs.min(0.0)/2.0)).max(1e-7)};
    c[0]=va;c[1]=vb;c[2]=conductance;
    Row {f:conductance*r[6]-current,state:0.0,cache:c}
}
#[inline(always)]
fn derivative<const P:usize,const B:usize,const N:usize>(
    row:&Row,r:&[f32;8],poles:&[Pole;5]
)->[f32;N] {
    let c=&row.cache;
    let mut j=[0.0;N];
    if let Some(slot)=AMP.iter().position(|&p|p==P) {
        let ds=if c[0]>poles[slot].lower && c[0]<poles[slot].upper {
            (g::GAIN[slot]/(g::ORDER as f64*g::FS as f64+g::POLE[slot])) as f32
        } else {0.0};
        let (rs,rw)=rail_slope(row.state,c[2],c[3],c[4],c[10]);
        let (vs,vi)=if slot<4 {(rs,rw*opamp_swing_derivative(c[1]).1)} else {
            let current=c[1];let v=c[5];let limit=c[6].min(5.0);
            let p=c[7];let f=c[8];let common=f/(1.0+p);
            let (factor,di,dl)=if c[9]>=0.0 {
                (f,if current==0.0 {0.0} else {-p/current*common},p/limit*common)
            } else {
                let q=-c[9];(q*f,-q/current*common,q/limit*common)
            };
            let vce=(24.0-v.abs()).max(8.0);
            let limit_v=if c[6]<5.0 && 24.0-v.abs()>8.0 && v!=0.0 {
                60.0*v.signum()/(vce*vce)
            } else {0.0};
            ((factor+v*dl*limit_v)*rs,v*di)
        };
        for k in 0..N {
            let p=BLOCKS[B][k];
            j[k]=-(vs*ds)*g::DERIV[8+slot][p] as f32-vi*g::DERIV[P][p] as f32;
            if p==P {j[k]+=1.0;}
        }
    } else {
        for k in 0..N {j[k]=-g::DERIV[P][BLOCKS[B][k]] as f32;}
        if P==0 || P==3 {
            for k in 0..N {if BLOCKS[B][k]==P {j[k]+=2.5e-9*(c[0]+c[1])/(1.75*0.02585);}}
        } else {
            let src=if c[0]<=c[1] {13} else {14};
            let vgs=0.5-c[0].min(c[1]);
            let dg=if vgs > -2.0 && vgs<0.0 && 0.00455*(1.0+vgs/2.0)>1e-7 {0.002275} else {0.0};
            for k in 0..N {
                let p=BLOCKS[B][k];
                j[k]-=r[6]*dg*g::DERIV[src][p] as f32;
                if p==6 {j[k]+=c[2];}
            }
        }
    }
    j
}

''' +s[b:]
a=s.index('#[derive(Clone, Copy)]\nstruct Evaluation');b=s.index('#[inline(never)]\nfn solve_block',a)
s=s[:a]+'''#[derive(Clone, Copy)]
struct Evaluation<const N:usize> {
    rows:[Row;N],error:f32,
}
#[inline(always)]
fn evaluate_block<M:PackageMath,const B:usize,const F:u8,const N:usize>(
    r:&[f32;8],o:&[f64;15],poles:&[Pole;5]
)->Evaluation<N> {
    let mut e=Evaluation {rows:[Row {f:0.0,state:0.0,cache:[0.0;11]};N],error:0.0};
    macro_rules! row {($i:literal,$p:literal)=>{{
        let row=equation::<M,$p,F>(r,o,poles);
        e.error=if row.f.is_finite() {e.error.max((row.f/SCALE[$p]).abs())} else {f32::INFINITY};
        e.rows[$i]=row;
    }}}
    match B {0=>{row!(0,0);},1=>{row!(0,1);},2=>{row!(0,2);row!(1,3);},
        3=>{row!(0,4);row!(1,5);row!(2,6);},4=>{row!(0,7);},_=>unreachable!()}
    e
}
#[inline(always)]
fn jacobian<const B:usize,const N:usize>(e:&Evaluation<N>,r:&[f32;8],poles:&[Pole;5])->[[f32;N];N] {
    let mut j=[[0.0;N];N];
    macro_rules! row {($i:literal,$p:literal)=>{j[$i]=derivative::<$p,B,N>(&e.rows[$i],r,poles);}}
    match B {0=>{row!(0,0);},1=>{row!(0,1);},2=>{row!(0,2);row!(1,3);},
        3=>{row!(0,4);row!(1,5);row!(2,6);},4=>{row!(0,7);},_=>unreachable!()}
    j
}
''' +s[b:]
s=s.replace('evaluate_block::<M, B, F, N, true>', 'evaluate_block::<M, B, F, N>').replace('evaluate_block::<M, B, F, N, false>', 'evaluate_block::<M, B, F, N>')
s=s.replace('let mut f = e.f;\n        let mut j = e.j;', 'let mut f=core::array::from_fn::<_,N,_>(|i| -e.rows[i].f);\n        let mut j=jacobian::<B,N>(&e,r,poles);')
s=s.replace('e = evaluate_block::<M, B, F, N>(r, o, poles);\n                    accepted = true;', 'e = t;\n                    accepted = true;')
s=s.replace('s[slot] = e.s[i];','s[slot] = e.rows[i].state;')
# direct block replace whole sections
for block,port,slot in [(1,1,0),(4,7,4)]:
 a=s.index(f'        {block} => {{',s.index('fn direct_block'))
 b=s.index('\n        }',a)+10
 s=s[:a]+f'''        {block} => {{
            amp_candidate::<{port}>(r,o,poles);
            let row=equation::<M,{port},F>(r,o,poles);
            if row.f.is_finite() && row.f.abs()/SCALE[{port}]<=TOL {{
                let j=derivative::<{port},{block},1>(&row,r,poles);
                if voltage_small(row.f/j[0],r[{port}]) {{s[{slot}]=row.state;return Some(row.f.abs()/SCALE[{port}]);}}
            }}
        }}''' +s[b:]
a=s.index('                let trial =',s.index('fn direct_block'));b=s.index('                if e.error <= TOL',a)
s=s[:a]+'''                let e=evaluate_block::<M,3,F,3>(r,o,poles);
                if e.error>TOL {for (i,&p) in BLOCKS[B].iter().enumerate() {r[p]=old[i];} return None;}
                let mut j=jacobian::<3,3>(&e,r,poles);
                let mut correction=core::array::from_fn::<_,3,_>(|i| -e.rows[i].f);
''' +s[b:]
s=s.replace('s[2] = e.s[0];','s[2] = e.rows[0].state;').replace('s[3] = e.s[1];','s[3] = e.rows[1].state;')
# Append diagnostic old laws used only by tests; no active references.
s=s.replace('#[cfg(test)]\nmod tests', '#[cfg(test)]\nmod diagnostic_laws {\nuse super::*;\n'+old.replace('fn rail<','pub(super) fn rail<').replace('fn power<','pub(super) fn power<')+'}\n#[cfg(test)]\nmod tests')
s=s.replace('    use super::*;\n    use crate::FpuRootMath;', '    use super::*;\n    use super::diagnostic_laws::{rail,power};\n    use crate::FpuRootMath;')
s=s.replace('//! R1:', '//! R2:')
p.write_text(s)
