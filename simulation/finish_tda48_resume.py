"""Дополнение аппаратного контроля 2026-09-30, без изменения архива 2026-09-29."""
import hashlib
import json
import math
from pathlib import Path
import numpy as np

R = Path(__file__).resolve().parents[1]
O = R / 'simulation/experiments/tda48'

def read(path):
    return json.loads(path.read_text())

def sha(path):
    digest = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1 << 20), b''):
            digest.update(block)
    return digest.hexdigest()

if __name__ == '__main__':
    noise_dir = O / '20260930T015821Z'
    guitar_dir = O / '20260930T022541Z'
    interrupted_dir = O / '20260930T020104Z'
    summary_path = O / 'hardware_addendum_20260930.json'
    report_path = O / 'hardware_addendum_20260930.md'
    manifest_path = O / 'artifact_manifest_20260930.json'
    assert not any(p.exists() for p in [summary_path, report_path, manifest_path])
    old = read(O / 'summary.json')
    old_files = read(O / 'artifact_manifest.json')['files']
    for name, fingerprint in old_files.items():
        path = O / name
        assert path.stat().st_size == fingerprint['bytes'] and sha(path) == fingerprint['sha256'], name
    noise_manifest, guitar_manifest = [read(d / 'manifest.json') for d in [noise_dir, guitar_dir]]
    interrupted = read(interrupted_dir / 'full/results.json')
    assert not interrupted['complete'] and not interrupted['data_complete']
    assert interrupted['reset_verified'] and interrupted['samples_each'] == 8798208
    assert noise_manifest['variant'] == guitar_manifest['variant'] == 'noise'
    assert noise_manifest['sources'] == guitar_manifest['sources']
    assert noise_manifest['elf_sha256'] == guitar_manifest['elf_sha256']
    assert noise_manifest['input_sha256'] == sha(O / 'noise.pcm16')
    assert guitar_manifest['input_sha256'] == sha(R / 'simulation/experiments/rate48/input.pcm16')
    assert noise_manifest['baseline_source_sha256'] == guitar_manifest['baseline_source_sha256']
    for source, digest in noise_manifest['sources'].items():
        assert sha(noise_dir / 'source' / source) == sha(guitar_dir / 'source' / source) == digest
    noise, guitar = [read(d / 'full/results.json') for d in [noise_dir, guitar_dir]]
    for result, expected in [(noise, 528000), (guitar, 10643479)]:
        assert all(result[k] for k in ['measurement_valid', 'complete', 'data_complete',
                                        'initial_reset_verified', 'reset_verified'])
        assert result['samples_each'] == expected
        for row in result['levels'].values():
            assert all(row[role]['checkpoint_memory_host_difference_v'] == 0.0
                       for role in ['optimized48', 'accepted48'])
            assert all(row[role]['stops'] == 0 for role in ['optimized48', 'accepted48'])
    assert noise['levels']['1000mv']['optimized48']['local_overruns'] == 0
    assert noise['levels']['1000mv']['accepted48']['local_overruns'] == 5
    assert all(row['optimized48']['local_overruns'] == 0 for row in guitar['levels'].values())
    assert all(row['optimized48']['local_overruns'] == 0 for row in noise['levels'].values())
    prior_files = sorted((interrupted_dir / 'full').glob('chunk*.bin'))
    retry_files = sorted((guitar_dir / 'full').glob('chunk*.bin'))[:len(prior_files)]
    assert len(prior_files) == len(retry_files) == interrupted['chunks']
    first = np.stack([np.fromfile(path, dtype='<u4').reshape(6, 608) for path in prior_files])
    retry = np.stack([np.fromfile(path, dtype='<u4').reshape(6, 608) for path in retry_files])
    assert np.array_equal(first[:, :, 544:600], retry[:, :, 544:600])
    repeat = dict(common_chunks=len(prior_files), memory_bits_equal=True, paired_mean_difference_cycles={})
    for c, level in enumerate(['100mv', '250mv', '1000mv']):
        measurements = []
        for array in [first, retry]:
            means = []
            for k in [0, 1]:
                row = array[:, 2*c+k]
                sums = row[:, 0].astype(np.uint64) + (row[:, 1].astype(np.uint64) << 32)
                means.append(float(sums.sum() / (len(array)*16384)))
            measurements.append(means[0] - means[1])
        repeat['paired_mean_difference_cycles'][level] = measurements
    for host_dir in [O / 'guitar_noise_repair', O / 'noise_repair']:
        for entry in host_dir.glob('*.json'):
            host = read(entry)
            if host_dir.name == 'guitar_noise_repair':
                assert host['mismatches_output_current_previous_decisions'][:3] == [0, 0, 0]
            assert host['stops'] == [0, 0]
            assert all(all(n <= 3 for n in participant) for participant in host['max_attempts'])
    result = dict(noise_run=str(noise_dir.relative_to(R)),
                  guitar_run=str(guitar_dir.relative_to(R)),
                  interrupted_guitar_run=str(interrupted_dir.relative_to(R)),
                  interrupted_guitar=interrupted,
                  interrupted_repeatability=repeat,
                  noise=noise, guitar=guitar,
                  noise_queue_bounds=read(noise_dir / 'full/queue_bounds.json'),
                  noise_block_bounds=read(noise_dir / 'full/block_bounds.json'),
                  guitar_queue_bounds=read(guitar_dir / 'full/queue_bounds.json'),
                  guitar_block_bounds=read(guitar_dir / 'full/block_bounds.json'),
                  f64_accuracy=old['noise_accuracy'],
                  prior_default_tda_guitar=old['tda_guitar'],
                  same_noise_candidate_elf_for_both_new_runs=True,
                  old_20260929_archive_untouched=True,
                  full_audio_runtime_qualified=False)
    summary_path.write_text(json.dumps(result, indent=2, ensure_ascii=False) + '\n')
    lines = ['# Дополнение: цена шумового старта на H7R3, 2026-09-30', '',
             'Парный RAM-замер `noise48-candidate` против точной копии принятой Bounded/48 завершён на шуме и полной гитаре. Оба прогона используют один ELF и одинаковые хеши исходников; контролируется вход, непрерывность обеих историй, концы всех порций, защита стека и возврат штатного приложения после `reset run`. Flash не писалась. Кандидат сохраняет BDF2/48 кГц, причинные блоки, ранний выход, не более трёх попыток, без LUT и временных подшагов.', '',
             'Первый гитарный RAM-прогон оборвался после 537 порций из-за потери связи OpenOCD со ST-Link (`Fail reading CTRL/STAT register`), а не из-за остановки численного шага. Этот прогон сохранён как неполный: 8 798 208 отсчётов каждого уровня, без приписанного полного результата. Отдельный `restore_after_full.log` подтвердил штатное приложение в Thread mode и нулевые fault-регистры. Повтор начат из нулевой истории новым каталогом; серии не склеены.', '',
             '## Длинный шум: 528000 отсчётов, 10 с PCM + 1 с отпускания', '',
             '| Уровень | Кандидат / база, средние такты | Выигрыш | Пики тактов | Отсчёты >12500, кандидат / база | Локальные превышения, кандидат / база |',
             '|---|---:|---:|---:|---:|---:|']
    for name, row in noise['levels'].items():
        x, y = row['optimized48'], row['accepted48']
        lines.append(f"| {name} | {x['mean_cycles']:.1f} / {y['mean_cycles']:.1f} | {row['mean_saving_percent']:.3f}% | {x['maximum_cycles']} / {y['maximum_cycles']} | {x['over_12500_samples']} / {y['over_12500_samples']} | {x['local_overruns']} / {y['local_overruns']} |")
    strong_queue = result['noise_queue_bounds']['cases']['1000mv']
    lines += ['', 'На сильном шуме пять прежних превышений локальной невязки исчезли, остановок нет; выход и память кандидата в контрольных точках совпали с host. Все фактические окна 64 отсчёта укладываются в общий бюджет 12500, но многие отдельные отсчёты дороже него.', '',
              f"При общем бюджете 12500 консервативная верхняя граница дополнительной очереди сильной записи — {strong_queue['12500']['upper_extra_samples']} отсчётов. При целевом бюджете ядра 10000 уже точные суммы порций доказывают накопление не менее {math.ceil(strong_queue['10000']['observed_lower_backlog_cycles']/10000)} отсчётов; верхняя граница по гистограмме {strong_queue['10000']['upper_extra_samples']}, или {strong_queue['10000']['upper_extra_delay_ms']:.1f} мс. Это расчёт очереди по измеренной записи с равномерными поступлениями, не задержка DMA и не WCET всех входов. Среднее 1-В шума превышает 10000 ещё без FIR и кабинета.", '',
              'Численная точность — отдельная проверка: к точной сокращённой f64/48 от нулевой памяти RMS 0,371 мВ, пик 72,581 мВ, 117 отсчётов выше прежних 10 мВ. Улучшение относительно базы не делает старую пиковую проверку пройденной. Слухового теста этого шума не было.', '',
              '## Полная гитара: 10 643 479 отсчётов на каждом уровне', '',
              '| Уровень | Кандидат / база, средние такты | Выигрыш | Пики тактов | Худшее фактическое окно 64, тактов/выход |',
              '|---|---:|---:|---:|---:|']
    for name, row in guitar['levels'].items():
        x, y = row['optimized48'], row['accepted48']
        lines.append(f"| {name} | {x['mean_cycles']:.1f} / {y['mean_cycles']:.1f} | {row['mean_saving_percent']:.3f}% | {x['maximum_cycles']} / {y['maximum_cycles']} | {x['max_rolling64_cycles']/64:.1f} / {y['max_rolling64_cycles']/64:.1f} |")
    lines += ['', 'На host выход и обе памяти шумового варианта побитово совпали с базой на каждом шаге гитары; на MCU обе памяти в конце каждой порции совпали с host, остановок и локальных превышений нет. Счётчики некоторых попыток/вычислений закона отличаются: они не объявляются побитово прежними.', '',
              f"Первые {repeat['common_chunks']} порций прерванной серии и повтора дали побитово одинаковые контрольные точки обеих моделей. Разности парного среднего кандидата и базы на одинаковом префиксе (первая серия / повтор): " + ', '.join(f"{level} {values[0]:+.3f} / {values[1]:+.3f} такта" for level, values in repeat['paired_mean_difference_cycles'].items()) + '. Это проверка воспроизводимости префикса, не замена полному прогону.', '',
              'Отдельный исходный пакет TDA измерен в серии `20260929T100924Z`: 8673 / 8878 / 9229 тактов. Сопоставление его абсолютных тактов с новой шумовой сборкой не является прямым парным замером двух новых вариантов; надёжное парное сравнение каждой серии — с её принятой базой. Вопрос включения шумового старта решать с учётом старого непрохода 10 мВ и полного бюджета.', '',
              'Кабинет, выходной FIR и DMA/I/O не включены. Новых слуховых допусков нет. Исходный [отчёт](report.md) и архив 2026-09-29 сохранены как отдельный законченный этап.']
    report_path.write_text('\n'.join(lines) + '\n')
    paths = [summary_path, report_path, Path(__file__)]
    paths += [p for d in [noise_dir, guitar_dir, interrupted_dir] for p in d.rglob('*') if p.is_file()]
    manifest = {str(p.relative_to(R)): dict(bytes=p.stat().st_size, sha256=sha(p))
                for p in sorted(set(paths))}
    manifest_path.write_text(json.dumps(dict(files=manifest, note='Only new 2026-09-30 artifacts; 2026-09-29 manifest remains unchanged.'), indent=2, ensure_ascii=False) + '\n')
    print(report_path)
