"""Неявная экспоненциальная трапеция полной линейной части Orange.

Линеаризация в нуле включает ООС всех ОУ. Полный нелинейный остаток N(x)
сохраняет диоды, slew, насыщение, токовые ограничения и Q1. Алгебраические
связи исключаются точно; новая точка решается до строгого f64-допуска.
Это офлайн-опыт пригодности метода, не контроллерный dense-solve.
"""
import math
import numpy as np
from dataclasses import replace
from orange_full_mna import OrangeFullMNA,FullMNAParameters

def exponential(a):
    # Диагональная аппроксимация Паде [13/13], коэффициенты из факториальной формулы.
    n=len(a);m=13
    scale=max(0,int(np.ceil(np.log2(max(np.linalg.norm(a,np.inf),.5)/.5))))
    a=a/(2.**scale);power=np.eye(n);p=power.copy();q=power.copy()
    for k in range(1,m+1):
        power=power@a
        c=math.factorial(2*m-k)*math.factorial(m)/(math.factorial(2*m)*math.factorial(k)*math.factorial(m-k))
        p+=c*power;q+=(-1)**k*c*power
    e=np.linalg.solve(q,p)
    for _ in range(scale):e=e@e
    return e

class ExponentialClosed:
    def __init__(self,parameters=FullMNAParameters(load='resistive')):
        self.model=m=OrangeFullMNA(replace(parameters,sample_rate=0,integration='be'));self.fs=parameters.sample_rate
        self.scales=m.state_scale;self.rows=m.row_scale
        z=np.zeros(m.size)
        _,j=m.residual_jacobian_physical(z,0.)
        mass=np.zeros_like(j);mass[:m.n_nodes,:m.n_nodes]=m.C
        for i in list(m.i_op_internal.values())+[m.i_power_internal]:mass[i,i]=1
        e=mass*self.scales[None,:]/self.rows[:,None]
        self.j0=j*self.scales[None,:]/self.rows[:,None]
        u,s,vh=np.linalg.svd(e)
        rank=np.linalg.matrix_rank(e)
        assert rank==28
        ud,ua=u[:,:rank],u[:,rank:];vd,va=vh[:rank].T,vh[rank:].T
        jaa=ua.T@self.j0@va
        self.Q=va@np.linalg.solve(jaa,ua.T)
        self.P=vd-self.Q@self.j0@vd
        self.K=(ud.T-ud.T@self.j0@self.Q)/s[:rank,None]
        self.A=-self.K@self.j0@vd
        self.projection=vd.T
        self.mass=e
        dt=1/self.fs;n=rank
        augmented=np.zeros((3*n,3*n));augmented[:n,:n]=self.A
        augmented[:n,n:2*n]=np.eye(n);augmented[n:2*n,2*n:]=np.eye(n)
        exp=exponential(augmented*dt)
        self.decay=exp[:n,:n]
        self.H1=exp[:n,2*n:]/dt@self.K
        self.H0=(exp[:n,n:2*n]-exp[:n,2*n:]/dt)@self.K
        self.W=self.P@self.H1+self.Q
        self.x=z.copy();self.y=np.zeros(rank);self.fprev=z.copy()
        self.force=z.copy();self.force[m.i_input_source]=1/self.rows[m.i_input_source]
        self.steps=0
        self.audit=dict(rank=int(rank),mass_reconstruction=float(np.max(abs(e-e@vd@vd.T))),
            algebraic_condition=float(np.linalg.cond(jaa)),largest_real_eigenvalue=float(np.linalg.eigvals(self.A).real.max()),
            smallest_real_eigenvalue=float(np.linalg.eigvals(self.A).real.min()),
            linear_step_consistency=float(np.max(abs(self.decay-(np.eye(n)+self.A@(exp[:n,n:2*n]))))))
    def nonlinear(self,x,jacobian=True):
        f,j=self.model.residual_jacobian_physical(x*self.scales,0.,jacobian)
        n=f/self.rows-self.j0@x
        return n,None if j is None else j*self.scales[None,:]/self.rows[:,None]-self.j0
    def step(self,input,tolerance=2e-11,max_iterations=32):
        origin=self.P@(self.decay@self.y+self.H0@self.fprev)+self.W@(self.force*input)
        x=self.x.copy();total=0;rejected=0
        for iteration in range(max_iterations+1):
            n,dn=self.nonlinear(x)
            f=x+self.W@n-origin;error=np.max(abs(f))
            if error<tolerance or iteration==max_iterations:break
            delta=np.linalg.solve(np.eye(len(x))+self.W@dn,-f)
            accepted=False
            for back in range(20):
                trial=x+delta*2.**-back
                nt,_=self.nonlinear(trial,False);ft=trial+self.W@nt-origin
                if np.max(abs(ft))<error:
                    x=trial;accepted=True;break
                rejected+=1
            total+=1
            if not accepted:break
        self.fprev=self.force*input-n
        self.y=self.projection@x
        self.x=x;self.steps+=1
        rate=self.A@self.y+self.K@self.fprev
        # Полная исходная DAE в конечной точке, включая все физические строки.
        dae=self.mass@(self.projection.T@rate)+self.j0@x-self.fprev
        return x*self.scales,dict(error=float(error),dae=float(np.max(abs(dae))),iterations=total,rejected=rejected)
