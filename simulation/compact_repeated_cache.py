"""История R5: размер общих величин по блоку вместо одиннадцати для каждой строки."""
from pathlib import Path
p=Path(__file__).resolve().parents[1]/'firmware/orange-dsp/src/repeated.rs';s=p.read_text()
s=s.replace('//! R4:', '//! R5:').replace('"R1 uses P7 precision and math"','"Repeated work uses P7 precision and math"')
# Move railRatio next to TL fields. Power-only fields follow it.
a=s.index('fn equation<');b=s.index('#[inline(always)]\nfn solve',a)
t=s[a:b]
import re
mapping={5:6,6:7,7:8,8:9,9:10,10:5}
t=re.sub(r'c\[(5|6|7|8|9|10)\]',lambda m:f'c[{mapping[int(m[1])]}]',t)
s=s[:a]+t+s[b:]
s=s.replace('struct Row {','struct Row<const K:usize> {').replace('cache: [f32; 11]', 'cache: [f32; K]')
s=s.replace('struct Evaluation<const N: usize>', 'struct Evaluation<const N: usize,const K:usize>').replace('rows: [Row; N]', 'rows: [Row<K>; N]')
s=s.replace(') -> Row {', ') -> Row<K> {').replace('row: &Row,','row: &Row<K>,')
s=s.replace('Evaluation<N>', 'Evaluation<N,K>')
s=s.replace('let mut c = [0.0; 11];','let mut c = [0.0; K];').replace('cache: [0.0; 11]', 'cache: [0.0; K]')
for name in ['equation','derivative','evaluate_block','jacobian','solve_block']:
 a=s.index('fn '+name+'<');b=s.index('>(',a);s=s[:b]+', const K:usize'+s[b:]
# generic internal calls
s=s.replace('equation::<M, $p, F, C>', 'equation::<M, $p, F, C,K>')
s=s.replace('derivative::<$p, B, N, C>', 'derivative::<$p, B, N, C,K>')
s=s.replace('evaluate_block::<M, B, F, N, C>', 'evaluate_block::<M, B, F, N, C,K>')
s=s.replace('jacobian::<B, N, C>', 'jacobian::<B, N, C,K>')
# fixed direct calls
s=s.replace('equation::<M, 1, F, C>', 'equation::<M, 1, F, C,6>').replace('equation::<M, 7, F, C>', 'equation::<M, 7, F, C,11>')
s=s.replace('derivative::<1, 1, 1, C>', 'derivative::<1, 1, 1, C,6>').replace('derivative::<7, 4, 1, C>', 'derivative::<7, 4, 1, C,11>')
s=s.replace('evaluate_block::<M, 3, F, 3, C>', 'evaluate_block::<M, 3, F, 3, C,6>').replace('jacobian::<3, 3, C>', 'jacobian::<3, 3, C,6>')
s=s.replace('($id:literal,$n:literal)', '($id:literal,$n:literal,$cache:literal)')
s=s.replace('solve_block::<M, $id, F, $n, C>', 'solve_block::<M, $id, F, $n, C,$cache>')
for i,n,k in [(0,1,2),(1,1,6),(2,2,6),(3,3,6),(4,1,11)]:s=s.replace(f'block!({i}, {n});',f'block!({i}, {n}, {k});')
# c[6] vRail is only used by TDA: don't write it to the six-element TL cache.
s=s.replace('        c[6] = v;\n','')
s=s.replace('        let vce = (24.0 - v.abs()).max(8.0);', '        c[6]=v;\n        let vce = (24.0 - v.abs()).max(8.0);',1)
s=s.replace('// AMP: free,current,swing,pRail,fRail,vRail,rawLimit,pLimit,fLimit,\n    // signed current ratio (negative means deep),railRatio.', '// AMP: free,current,swing,pRail,fRail,railRatio; TDA additionally\n    // vRail,rawLimit,pLimit,fLimit,signed current ratio (negative means deep).')
p.write_text(s)
