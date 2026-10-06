"""Physical IC3B / D4-D5 / passive tone block, float64 research model.

SI units, zero-charge initial state, BE or BDF2 with a BE starting step. Ideal unsaturated IC3B
is a declared stage assumption, NOT a TL072 large-signal model. Diode parameters
are an explicit engineering fixture, NOT identified 1N4148 parameters.
"""
from dataclasses import dataclass
import json
from pathlib import Path
import numpy as np
from potentiometers import split_resistances

ROOT = Path(__file__).resolve().parents[1]

@dataclass(frozen=True)
class Parameters:
    sample_rate: float = 48000.0
    integration: str = "be"
    overdrive: bool = True
    od_ohm: float = 10000.0
    treble: float = 0.5
    middle: float = 0.5
    bass: float = 0.5
    diode_is: float = 2.5e-9
    diode_n: float = 1.75
    thermal_voltage: float = 0.02585

class ClipModel:
    def __init__(self, p=Parameters()):
        self.p = p
        if p.integration not in ("be", "bdf2"):
            raise ValueError("Unknown integration method")
        if not (p.sample_rate > 0 and 0 <= p.od_ohm <= 50000):
            raise ValueError('Invalid sample rate or Overdrive resistance')
        if not all(0 <= v <= 1 for v in (p.treble,p.middle,p.bass)):
            raise ValueError('Pot electrical coordinates must be in [0,1]')
        if not all(np.isfinite(v) and v > 0 for v in (p.diode_is,p.diode_n,p.thermal_voltage)):
            raise ValueError('Invalid diode parameters')
        data = json.loads((ROOT/'reference/components.json').read_text())
        self.source_sha256 = data['source_sha256']
        rows = []
        for c in data['components']:
            if c['block']=='IC3B_clip' or (c['block']=='tone_IC4A' and c['ref'] not in ('R16','C14','R15','E9')):
                rows.append((c['ref'], c['kind'], *c['nodes'], c['value']))
        by_ref={c['ref']:c for c in data['components']}
        for ref,q in [('VR4',p.treble),('VR5',p.middle),('VR6',p.bass)]:
            c=by_ref[ref]; a,w,b=c['nodes']
            ra,rb=split_resistances(ref,q)
            rows.extend([(ref+'A','R',a,w,ra),(ref+'B','R',w,b,rb)])
        if p.overdrive:
            rows.append(('VR2effective','R','clip_ref','G',p.od_ohm))
        # Exact short-circuit elimination, including pot endpoints.
        parent={}
        def find(a):
            parent.setdefault(a,a)
            if parent[a]!=a: parent[a]=find(parent[a])
            return parent[a]
        for _,kind,a,b,value in rows:
            if kind=='R' and value==0:
                aa,bb=find(a),find(b)
                if aa!=bb:
                    if aa=='G': parent[bb]=aa
                    else: parent[aa]=bb
        self.canonical=find
        self.rows=[(ref,kind,find(a),find(b),v) for ref,kind,a,b,v in rows
                   if not (kind=='R' and v==0) and find(a)!=find(b)]
        self.nodes=sorted({node for _,_,a,b,_ in self.rows for node in (a,b)}-{'G'})
        self.index={n:i for i,n in enumerate(self.nodes)}
        self.n=len(self.nodes); self.size=self.n+1
        self.G=np.zeros((self.size,self.size)); self.C=np.zeros_like(self.G)
        for _,kind,a,b,value in self.rows:
            e=self.incidence(a,b)
            if kind=='R': self.G+=np.outer(e,e)/value
            elif kind=='C': self.C+=value*np.outer(e,e)
            else: raise ValueError(kind)
        # Output-source current is an MNA unknown; ideal op-amp constraint v-=u.
        self.G[self.index['b_out'],self.n]=1
        self.G[self.n,self.index['b_minus']]=1
        self.e=self.incidence('clip','clip_ref')
        # All factorizations are preparation-only; no per-sample factorization
        # in the reduced path. Two matrices support the BE startup of BDF2.
        self.prepared={}
        for alpha in (1.,1.5):
            A=self.G+alpha*p.sample_rate*self.C
            inv=np.linalg.inv(A)
            z=np.linalg.solve(A,self.e)
            r=float(self.e@z)
            if not np.isfinite(r) or r<=0:
                raise ValueError(f'Non-monotone reduced port: {r}')
            self.prepared[alpha]=(A,inv,z,r)
        self.A,self.inv,self.z,self.r=self.prepared[1.]
        self.state=np.zeros(self.size)
        self.previous_state=np.zeros(self.size)
        self.steps=0

    def incidence(self,a,b):
        e=np.zeros(self.size)
        for node,sign in ((self.canonical(a),1),(self.canonical(b),-1)):
            if node!='G': e[self.index[node]]+=sign
        return e

    def diode(self,v):
        q=v/(self.p.diode_n*self.p.thermal_voltage)
        if abs(q)>700: return np.copysign(np.inf,q),np.inf
        return (2*self.p.diode_is*np.sinh(q),
                2*self.p.diode_is*np.cosh(q)/(self.p.diode_n*self.p.thermal_voltage))

    def rhs(self,u):
        history=(2*self.state-.5*self.previous_state) if self.p.integration=='bdf2' and self.steps else self.state
        b=self.p.sample_rate*self.C@history
        b[self.n]=u
        return b

    def residual(self,x,b):
        return self.A@x+self.e*self.diode(float(self.e@x))[0]-b

    def step(self,u,method='reduced'):
        if not np.isfinite(u):
            raise ValueError('Nonfinite input')
        alpha=1.5 if self.p.integration=='bdf2' and self.steps else 1.
        self.A,self.inv,self.z,self.r=self.prepared[alpha]
        b=self.rhs(u)
        if method=='reduced':
            x0=self.inv@b; d0=float(self.e@x0)
            # Both terms have the sign of d. Bound the exponential contribution
            # analytically; a wide [0,d0] bracket wastes iterations on large steps.
            bound=min(abs(d0), self.p.diode_n*self.p.thermal_voltage*
                      np.arcsinh(abs(d0)/(2*self.r*self.p.diode_is)))
            lo,hi=(-bound,0.) if d0<0 else (0.,bound)
            d=float(np.clip(self.e@self.state,lo,hi))
            for iterations in range(1,101):
                current,g=self.diode(d)
                f=d+self.r*current-d0
                if abs(f)<2e-13: break
                if f>0: hi=d
                else: lo=d
                candidate=d-f/(1+self.r*g)
                d=candidate if lo<candidate<hi else (lo+hi)/2
            else: raise RuntimeError('Scalar solve did not converge')
            x=x0-self.z*self.diode(d)[0]
        elif method=='full':
            x=self.state.copy()
            for iterations in range(1,101):
                res=self.residual(x,b)
                if np.max(np.abs(res))<2e-13: break
                _,g=self.diode(float(self.e@x))
                delta=np.linalg.solve(self.A+g*np.outer(self.e,self.e),-res)
                dv=abs(float(self.e@delta))
                alpha=min(1.,0.1/dv) if dv else 1.
                old=np.linalg.norm(res)
                for _ in range(50):
                    candidate=x+alpha*delta
                    if np.linalg.norm(self.residual(candidate,b))<old: break
                    alpha*=0.5
                else: raise RuntimeError('Full Newton line search failed')
                x=candidate
            else: raise RuntimeError('Full Newton did not converge')
        else: raise ValueError(method)
        res=self.residual(x,b)
        if not np.all(np.isfinite(x)) or np.max(np.abs(res))>1e-9:
            raise RuntimeError('Nonfinite state or excessive residual')
        self.previous_state=self.state
        self.state=x
        self.steps+=1
        return x.copy(), {'iterations':iterations,'kcl_a':float(np.max(np.abs(res[:self.n]))),
                           'constraint_v':float(abs(res[self.n]))}

    def voltage(self,x,node):
        node=self.canonical(node)
        return 0. if node=='G' else float(x[self.index[node]])

    def ac(self,frequency):
        b=np.zeros(self.size,dtype=complex); b[self.n]=1
        _,g=self.diode(0.)
        return np.linalg.solve(self.G+2j*np.pi*frequency*self.C+g*np.outer(self.e,self.e),b)
