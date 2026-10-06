# Rust и RAM-стенды STM32H7R3

Актуально 2026-10-06 по результатам до 2026-09-30.
[Состояние](../docs/STATUS.md), [установка](../docs/REPOSITORY.md),
[история переноса и первых замеров](../docs/history/firmware_README_2026-09-30.md).

## Рабочий код

- `orange-dsp/src/bounded48.rs` — основное ядро `BoundedState<3,7>`, BDF2/48.
- `tda48_reuse.rs` — полировка арифметики TDA, включена в основное ядро.
- `generated_condensed48.rs` / `generated_packed48.rs` — сгенерированные коэффициенты.
- `bounded48_baseline.rs`, признак `tda48-baseline` — принятая база для парного контроля.
- `bounded48_noise.rs`, признак `noise48-candidate` — отдельный эксперимент IC3A.
- Остальные решатели — предыдущие опыты и сравнения; рабочую архитектуру не заменяют.

Workspace содержит `orange-dsp`, `h7r3-runtime` и `orange-render`.
`orange-render` — исторический рендер с шагом 96 кГц; не текущий 48-кГц путь.
`h7r3-runtime` содержит **измерительные RAM-стенды**, непрерывных ADC/DMA/PWM
в нём пока нет. Аппаратная часть только на прямых регистрах Rust, без HAL/LL/PAC.

## Проверки и сборка

Из `firmware/`, на Apple Silicon:

```sh
cargo test -p orange-dsp --lib --release --target aarch64-apple-darwin --features noise48-candidate -- --include-ignored
cargo build -p h7r3-runtime --bin tda48-probe --release --features fpu-roots,orange-dsp/tda48-baseline
```

Target контроллера задан в `.cargo/config.toml`. ARM/AArch64-арифметику
не считать проверенной на x86 простой заменой target. Требования к инструментам,
fixtures и ограничения переносимости — в общей инструкции.

`tda48-probe` измеряет основной TDA против принятой базы; с признаком
`noise48-candidate` — отдельный шумовой вариант. `rate48-probe` сравнивает
48 кГц с историческим P7/96; старые `ram-probe` и другие признаки относятся
к прежним архитектурам. Готовую старую сборку не путать со свежим ELF.

## Новый парный host-контроль

После восстановления архива PCM16, из `firmware/`:

```sh
cargo run -p orange-dsp --release --target aarch64-apple-darwin --features tda48-baseline --example tda48_compare -- /tmp/orange-compare-new ../simulation/experiments/rate48/input.pcm16
```

Использовать **новый** выходной каталог. Пример сравнивает выход и оба слоя
памяти, лимит попыток, локальные превышения и остановки. Время компьютера
не является временем H7R3. Старые примеры с фиксированным выводом не запускать
поверх принятых результатов.

## Аппаратный пуск

Свежую RAM-серию готовит `simulation/run_tda48_hardware.py`, проверяет
`analyze_tda48_hardware.py`. Требуются восстановленные входы и host-контрольные
точки, ST-Link и проверенное подключение. Не писать flash; после опыта
`reset run`, штатная программа, Thread mode, CFSR/HFSR=0. Сценарии — `embedded/`.

Следующий этап — непрерывный аудиотракт с полным оконным замером,
[документ 13](../docs/13%20Аудиотракт%20DMA%20и%20силовой%20выход.md).
