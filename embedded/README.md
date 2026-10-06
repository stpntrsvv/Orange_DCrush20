# Аппаратные сценарии

WeAct Studio STM32H7R3Zx CoreBoard V1.0, STM32H7R3Z8J6.
Сохранённый аудит: [hardware_audit.md](hardware_audit.md).
Подключение перед каждым новым запуском проверять заново.

## Правила пуска

- Только RAM; flash и option bytes не писать.
- Rust `no_std`, CMSIS и прямые регистры; без HAL/LL/PAC/Embassy.
- Свежая успешная сборка, снимок исходников и SHA-256 до аппаратного пуска.
- После пробы `reset run`, штатное приложение в Thread mode, нулевые faults.
- `weact_stm32h7r3.cfg` выбирает Access Port 1 и не описывает flash-банки.

Основной аппаратный кандидат — `tda48-probe`, BDF2/48 с полировкой TDA.
Новые парные серии запускаются через `simulation/run_tda48_hardware.py`;
сырые входы/ELF прежних серий восстанавливаются из Releases.
Прежняя подробная инструкция и старые команды сохранены
[в истории](../docs/history/embedded_README_2026-09-30.md).
Не использовать старый `control-ports` как рабочее ядро.

## Синий светодиод

Заводской `01-Blink` использует PB2. Временное погашение без записи flash,
после запуска штатной программы и вне RAM-пробы:

```sh
openocd -f embedded/openocd/weact_stm32h7r3.cfg -f embedded/openocd/quiet_blue_led.cfg -c 'init; quiet_blue_led; shutdown'
```

После reset/power cycle мигание вернётся. Это действие уже проверено
2026-09-30, не постоянная настройка прошивки.

## Следующая сборка

Выбран первый оконечник LM1875 от 24 В. Непрерывный ADC/DMA/TIM1-тракт,
его пины, гитарный вход и датчики пока не реализованы.
[Порядок работ и задачи владельца](../docs/HARDWARE_NEXT.md).
