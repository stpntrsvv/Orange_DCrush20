"""Проверка транскрипции и аналитические ориентиры; только стандартная библиотека.

Не физическая валидация, не runtime-модель и не оценка тактов MCU.
Запуск из любого каталога: .venv/bin/python simulation/audit_schematic.py.
"""
import hashlib
import json
import math
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

def main():
    source = ROOT / 'reference/components.json'
    data = json.loads(source.read_text())
    pdf = ROOT / 'reference' / data['source']
    if hashlib.sha256(pdf.read_bytes()).hexdigest() != data['source_sha256']:
        raise ValueError('Изменился исходный PDF')
    components = data['components']
    refs = [c['ref'] for c in components]
    if len(set(refs)) != len(refs):
        raise ValueError('Повтор позиционного обозначения')
    by_ref = {c['ref']: c for c in components}
    # Номера с пропусками на исходном листе допустимы; это явный перечень,
    # сверенный визуально, а не требование заполнить всю последовательность.
    expected = {
        'R': [1,2,4,6,8,9,12,13,15,16,17,18,19,20,21,22,23,24,25,29,30,33,34,35,36,37,38,39,40,41,42,43,45,46,47,48,50],
        'C': [3,5,6,8,9,10,12,13,14,15,18,19,20,21,22,23,24,25],
        'E': [1,2,3,5,6,7,8,9,10,12,13,14,15,16,17,18,21],
        'D': [2,3,4,5,6,7,8,9,10,11,12],
        'VR': [1,2,3,4,5,6],
    }
    for prefix, numbers in expected.items():
        for n in numbers:
            if f'{prefix}{n}' not in by_ref:
                raise ValueError(f'Пропущен {prefix}{n}')
    for c in components:
        if c['kind'] in ('R','C','pot'):
            if not (isinstance(c['value'], (int,float)) and math.isfinite(c['value']) and c['value'] > 0):
                raise ValueError(c['ref'])
    def value(ref):
        return by_ref[ref]['value']
    def stage_b(f, od_resistance=None):
        s=2j*math.pi*f
        zf=1/(1/value('R22')+s*value('C18'))
        rground=value('R37')
        if od_resistance is not None:
            rground=0 if od_resistance == 0 else 1/(1/rground+1/od_resistance)
        zg=1/(s*value('E13'))+value('R34')+1/(1/value('R33')+s*value('C12'))+rground
        return 1+zf/zg
    cases=[('разомкнут',None),('замкнут, VR2=50 кОм',50000),('замкнут, VR2=0 Ом',0)]
    metrics={'source_sha256':data['source_sha256'],'component_count':len(components),
             'conditions':'IC3B ideal, D4/D5 open, input = b_plus; not full amplifier',
             'ic3b_gain_db':{label:{str(f):20*math.log10(abs(stage_b(f,r))) for f in (20,100,1000,10000)} for label,r in cases},
             'ic4a_resistive_gain':1+value('R16')/value('R15'),
             'ic4b_main_resistive_gain':-value('R17')/value('R21'),
             'tda2050_resistive_gain':1+value('R9')/value('R38')}
    out=ROOT/'simulation/experiments/schematic_audit'
    out.mkdir(parents=True,exist_ok=True)
    (out/'metrics.json').write_text(json.dumps(metrics,ensure_ascii=False,indent=2)+'\n')
    lines=['# Инвентаризация схемы','',
           'Сгенерировано `simulation/audit_schematic.py` из `reference/components.json`.',
           'Номиналы R/pot в Ом, C в Ф; узлы и специальные обозначения описаны в JSON.',
           'Это ручная транскрипция стороннего листа, не аттестованный netlist.','',
           '| Обозначение | Тип | Номинал / маркировка | Узлы | Примечание |',
           '|---|---|---|---|---|']
    for c in components:
        v=c['value']
        val='не указан' if v is None else format(v,'.9g') if isinstance(v,(int,float)) else v
        lines.append(f"| {c['ref']} | {c['kind']} | {val} | {' → '.join(c['nodes'])} | {c['note']} |")
    (ROOT/'reference/components.md').write_text('\n'.join(lines)+'\n')
    print(json.dumps(metrics,ensure_ascii=False,indent=2))

if __name__=='__main__':
    main()
