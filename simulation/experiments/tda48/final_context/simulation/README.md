# Simulation

Физический float64-эталон и точное сокращение одной принятой системы.

Полировка принятой структуры 48 кГц, 2026-09-29:

- `run_tda48_hardware.py` — свежие тесты/сборка, снимок исходников и парный
  RAM-прогон TDA или отдельного `noise48-candidate` против принятой базы.
- `analyze_tda48_hardware.py` — исходные проверки входа, обеих памятей,
  времени, стека и возвращения штатного приложения в новой серии.
- `bound_tda48_work.py` — прежние консервативные оценки окон и очереди,
  перенаправленные в каталог нового опыта.
- `diagnose_tda48_noise.py` — сохранённый первый проблемный шаг IC3A.
- `check_tda48_noise_long.py` — исходный глобальный f64-контроль; его отказ
  на отсчёте 80 сильного шума сохранён.
- `check_tda48_noise_condensed.py` / `check_tda48_noise_fast.py` — точное
  сокращённое f64 с собственной историей и полной MNA-невязкой в каждом шаге.
- `analyze_tda48_noise_accuracy.py` — все состояния кандидата, выход, окна
  и отпускание к завершённому длинному f64, без нового слухового порога.
- `generate_rate48_coefficients.py --out НОВЫЙ_КАТАЛОГ` — только коэффициенты,
  без перезаписи алгоритма и старых измерений.

Результат: [TDA и шум](experiments/tda48/report.md). Аппаратный прогон гитары
завершён; запуск шумовой RAM-пробы заблокирован сбоем токена проверки доступа.
Команды продолжения: [NEXT_CHAT.md](../NEXT_CHAT.md).

- `audit_schematic.py` — реестр и аналитические малосигнальные ориентиры.
- `orange_clip.py` — совместный физический блок IC3B/диоды/Overdrive/Tone.
- `run_physical_clip.py` — полный Newton против сокращения, ngspice и сетки BE/BDF2.
- `reproduce_wide_bracket.py` — сохранённый отрицательный опыт скалярного решателя.
- `device_models.py` — паспортные динамические модели TL072C и TDA2050.
- `run_device_model_validation.py` — отдельные проверки моделей микросхем.
- `orange_clip_tl072.py` — связанный IC3B с конечной динамикой TL072C.
- `run_finite_tl072_clip.py` — малый/сильный сигнал против идеального контроля.
- `orange_full_mna.py` — полный быстрый тракт до электрической нагрузки, f64/f32.
- `run_frontend_mna.py` — сверка INPUT→Tone на ручках и уровнях.
- `run_full_signal_path.py` — IC4/AUX/Volume/TDA и reactive/resistive load.
- `orange_supply.py` — медленный двухполярный bridge/reservoir/zener блок.
- `run_supply_validation.py` — установление и пульсации питания.
- `run_coupled_full.py` — multirate-связь питания 4 кГц и аудио 96 кГц.
- `orange_mute.py` — MNA цепи D10/D11/D12/C25 и модель канала 2SK30GR.
- `run_mute_topology.py` — аудит полярностей и power-on/off режимов Q1.
- `run_power_on_mute.py` — отрицательный cold-start опыт полной системы.
- `potentiometers.py` — единые законы VR1–VR6 и механическая координата 0…1.
- `run_potentiometer_validation.py` — номиналы, законы и точные endpoints ручек.
- `run_full_qualification.py` — сетка шага, ручек, нагрузки, восстановления и f32.
- `run_timestep_convergence.py` — сгущение float64 BDF2 выше 768 кГц до
  офлайн-арбитра 6,144 МГц.
- `run_exact_linear_reduction.py` — полный Newton против точного Schur-шага с
  восстановлением всех исключённых координат.
- `experiments/solver_hot_path/` — профиль горячей сборки перед компактным ядром.
- `run_float32_reduction.py` — чистый Schur-f32 и отрицательные смешанные варианты.

Запускать Python из `.venv`; NumPy закреплён в `requirements.txt`. Для независимой
проверки нужен ngspice. Отчёты находятся в `experiments/`. Связная MNA использует
поведенческий TL072C и проверочные параметры диодов; ограничения и f32-ошибка
подробно описаны в соответствующих отчётах.
