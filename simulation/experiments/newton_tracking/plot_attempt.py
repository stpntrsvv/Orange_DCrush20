"""Статическая диагностика: хорошая невязка на неверной траектории."""
from pathlib import Path
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
R=Path(__file__).resolve().parents[1];O=R/'simulation/experiments/newton_tracking'
d=np.fromfile(O/'m3_k3/host/triangle1000.bin',dtype='<f8').reshape(-1,236);t=np.arange(len(d))/96
f,ax=plt.subplots(3,1,figsize=(10,8),sharex=True,layout='constrained')
ax[0].plot(t,d[:,1],label='Полная f64');ax[0].plot(t,d[:,2],label='3 поправки',alpha=.85);ax[0].set_ylabel('Выход, В');ax[0].legend()
ax[1].plot(t,np.abs(d[:,2]-d[:,1]),label='Ошибка выхода к f64');ax[1].plot(t,np.max(np.abs(d[:,147:152]-d[:,175:180]),axis=1),label='Ошибка памяти полюсов к P7');ax[1].set_ylabel('Ошибка, В');ax[1].legend()
ax[2].semilogy(t,np.maximum(d[:,8],1e-12),label='Полная невязка');ax[2].axhline(1e-4,color='gray',ls='--',label='Старая численная граница');ax[2].set_ylabel('Нормированная невязка');ax[2].set_xlabel('Время, мс');ax[2].legend()
for a in ax:a.grid(alpha=.2);a.axvline(820/96,color='red',alpha=.4)
f.suptitle('BDF2 / 96 кГц, треугольник 1 В: память переносит ошибку\nОтмеченный шаг: невязка 1,9·10⁻⁵, ошибка выхода 9,57 В')
f.savefig(O/'memory_error.png',dpi=160);f.savefig(O/'memory_error.svg')
