from pathlib import Path
r=Path(__file__).resolve().parents[1]
p=r/'firmware/h7r3-runtime/Cargo.toml';s=p.read_text();s+='\nanalytic-probe = ["repeated-probe"]\nanalytic-rail = ["analytic-probe"]\n';p.write_text(s)
p=r/'firmware/h7r3-runtime/src/packed_probe.rs';s=p.read_text().replace('not(feature = "exponential-probe")\n))]','not(feature = "exponential-probe"),\n    not(feature = "analytic-probe")\n))]',1)
s=s.replace('#[cfg(feature = "scalar-probe")]\nuse orange_dsp', '#[cfg(feature = "analytic-probe")]\nuse orange_dsp::{packed::PackedState as CondensedState,analytic::AnalyticState as PackedState};\n#[cfg(feature = "scalar-probe")]\nuse orange_dsp',1)
s=s.replace('#[cfg(feature = "packed-pole")]\ntype Math', '#[cfg(all(feature = "packed-pole",not(feature="analytic-probe")))]\ntype Math',1)
s=s.replace('const F: u8 =', '''#[cfg(all(feature="analytic-probe",not(feature="analytic-rail")))]
type Math = orange_dsp::analytic::AnalyticMath<0>;
#[cfg(feature="analytic-rail")]
type Math = orange_dsp::analytic::AnalyticMath<1>;
#[cfg(feature="analytic-probe")]
type ControlMath = orange_dsp::packed::ExtraMath<H7r3Cordic,2>;
#[cfg(not(feature="analytic-probe"))]
type ControlMath = Math;
const F: u8 =''')
a=s.index('fn control(');b=s.index('#[unsafe(link_section',a)
s=s[:a]+s[a:b].replace('::<Math, 5>','::<ControlMath, 5>')+s[b:]
s=s.replace('#[cfg(feature = "scalar-probe")]\n            w[13', '#[cfg(any(feature = "scalar-probe",feature="analytic-probe"))]\n            w[13')
s=s.replace('w[35] = if cfg!(feature = "exponential-probe") {','w[35] = if cfg!(feature="analytic-rail") {12} else if cfg!(feature="analytic-probe") {11} else if cfg!(feature = "exponential-probe") {')
p.write_text(s)
s=(r/'embedded/openocd/run_repeated_probe.cfg').read_text()
s=s.replace('    reset run\n', '''    reset run
    sleep 300
    halt
    echo "POST_RESET_PC [reg pc]"
    echo "POST_RESET_XPSR [reg xPSR]"
    set faults [read_memory 0xe000ed28 32 2]
    echo "POST_RESET_FAULTS $faults"
    set pc_text [reg pc]
    set psr_text [reg xPSR]
    set reset_ok 1
    if {![regexp {0x([0-9a-fA-F]+)} $pc_text all hex]} {set reset_ok 0} else {
        set pc [expr "0x$hex"]
        if {$pc < 0x90000000 || $pc >= 0x91000000} {set reset_ok 0}
    }
    if {![regexp {0x([0-9a-fA-F]+)} $psr_text all hex]} {set reset_ok 0} else {
        if {[expr "0x$hex & 0x1ff"] != 0} {set reset_ok 0}
    }
    foreach word $faults {if {$word != 0} {set reset_ok 0}}
    resume
    sleep 17
    halt
    echo "POST_RESUME_PC [reg pc]"
    resume
    if {$reset_ok} {echo "PACK_RESET_VERIFIED"} else {echo "PACK_ERROR reset verification failed"}
''')
(r/'embedded/openocd/run_analytic_probe.cfg').write_text(s)
s=(r/'simulation/run_solver_batch.py').read_text().replace("OUT = ROOT / 'simulation/experiments/solver_time'","OUT = ROOT / 'simulation/experiments/analytic_simplification'")
s=s.replace("'scalar-probe']","'scalar-probe', 'exponential-probe', 'analytic-probe', 'analytic-rail']")
s=s.replace("ROOT / 'simulation/run_solver_batch.py', ROOT / 'simulation/analyze_scalar.py'", "ROOT / 'simulation/run_solver_batch.py', ROOT / 'simulation/run_analytic_batch.py', ROOT / 'simulation/run_analytic_reference.py', ROOT / 'simulation/analyze_scalar.py', ROOT/'embedded/openocd/run_analytic_probe.cfg'")
s=s.replace("'embedded/openocd/run_repeated_probe.cfg', '-c'","'embedded/openocd/run_analytic_probe.cfg', '-c'")
s=s.replace("int(name[-1])","int(name.removeprefix('package'))")
s=s.replace("choices=[9], default=[9]","choices=[11,12], default=[11,12]")
s=s.replace("assert 'PACK_ERROR' not in log and 'PACK_DONE 0x444f4e45' in log, log", "assert 'PACK_ERROR' not in log and 'PACK_DONE 0x444f4e45' in log and 'PACK_RESET_VERIFIED' in log, log")
s=s.replace("feature = PACKAGES[number - 1]", "feature = PACKAGES[number - 1]")
s=s.replace("'sources changed during builds'", "'sources changed during builds'")
# Хеши новой полной модели и всех независимых коротких траекторий.
s=s.replace("initial_sources = sources()", "initial_sources = sources()")
s=s.replace("references={str(p.relative_to(ROOT)): sha(p) for p in references(False) + references(True) + references(False,True)},", "references={str(p.relative_to(ROOT)): sha(p) for p in references(False) + references(True) + references(False,True) + list((OUT/'reference').glob('*.txt'))},")
s=s.replace("print(f'{name}: build OK", "print(f'{name}: build OK")
(r/'simulation/run_analytic_batch.py').write_text(s)
