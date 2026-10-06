# Инвентаризация схемы

Сгенерировано `simulation/audit_schematic.py` из `reference/components.json`.
Номиналы R/pot в Ом, C в Ф; узлы и специальные обозначения описаны в JSON.
Это ручная транскрипция стороннего листа, не аттестованный netlist.

| Обозначение | Тип | Номинал / маркировка | Узлы | Примечание |
|---|---|---|---|---|
| R25 | R | 47000 | in → input_protected |  |
| C21 | C | 1e-10 | input_protected → G |  |
| C20 | C | 4.7e-08 | input_protected → a_plus |  |
| R24 | R | 1000000 | a_plus → G |  |
| R23 | R | 100000 | a_out → a_minus |  |
| C22 | C | 2.2e-08 | G → a_low |  |
| R29 | R | 4700 | a_low → a_minus |  |
| E15 | C | 2.2e-06 | a_minus → a_gain_c |  |
| R18 | R | 1500 | a_gain_c → gain_left |  |
| E10 | C | 2.2e-06 | a_out → a_coupled |  |
| R20 | R | 10000 | a_coupled → gain_right |  |
| C19 | C | 4.7e-08 | gain_right → b_plus |  |
| R19 | R | 470000 | b_plus → G |  |
| R22 | R | 47000 | b_minus → b_out |  |
| C18 | C | 4.7e-10 | b_minus → b_out |  |
| E13 | C | 2.2e-06 | b_minus → b_feedback_c |  |
| R34 | R | 1000 | b_feedback_c → b_feedback_r |  |
| R33 | R | 6800 | b_feedback_r → clip_ref |  |
| C12 | C | 2.2e-07 | b_feedback_r → clip_ref |  |
| E14 | C | 2.2e-06 | b_out → b_coupled |  |
| R35 | R | 2700 | b_coupled → clip |  |
| R37 | R | 100000 | clip_ref → G |  |
| R36 | R | 1000 | clip → tone_coupled |  |
| E12 | C | 2.2e-06 | tone_coupled → tone_in |  |
| C8 | C | 2.2e-10 | tone_in → treble_left |  |
| R12 | R | 68000 | tone_in → tone_low |  |
| C5 | C | 1e-07 | tone_low → tone_high |  |
| C6 | C | 4.7e-08 | tone_low → tone_mid |  |
| C9 | C | 1e-07 | treble_wiper → c_plus |  |
| R13 | R | 1000000 | c_plus → G |  |
| R16 | R | 10000 | c_minus → c_out |  |
| C14 | C | 1e-10 | c_minus → c_out |  |
| R15 | R | 10000 | c_minus → c_feedback_c |  |
| E9 | C | 2.2e-06 | c_feedback_c → G |  |
| R21 | R | 47000 | c_out → d_minus |  |
| R17 | R | 47000 | d_minus → d_out |  |
| C15 | C | 2.2e-10 | d_minus → d_out |  |
| R43 | R | 22000 | aux_l → aux_sum |  |
| R40 | R | 22000 | aux_r → aux_sum |  |
| R41 | R | 100000 | aux_l → G |  |
| R42 | R | 100000 | aux_r → G |  |
| E18 | C | 2.2e-06 | aux_link → d_minus |  |
| E8 | C | 2.2e-06 | d_out → mute_input |  |
| R50 | R | 10000 | volume_top → G |  |
| C10 | C | 2.2e-07 | volume_wiper → power_plus |  |
| R30 | R | 47000 | power_plus → G |  |
| R9 | R | 22000 | power_minus → power_out |  |
| R38 | R | 470 | power_minus → power_feedback_c |  |
| E7 | C | 2.2e-05 | power_feedback_c → G |  |
| C13 | C | 1e-07 | VP24 → VN24 |  |
| C3 | C | 1e-07 | speaker_hot → zobel |  |
| R8 | R | 1 | zobel → G |  |
| R6 | R | 220 | speaker_hot → phones_feed |  |
| R1 | R | 330 | VN24 → VN15 |  |
| R2 | R | 330 | VP24 → VP15 |  |
| E1 | C | 0.0022 | VN24 → G |  |
| E2 | C | 0.0022 | VP24 → G |  |
| E5 | C | 0.0001 | VN15 → G |  |
| E6 | C | 0.0001 | VP15 → G |  |
| R4 | R | 47000 | VN24 → led_k |  |
| R48 | R | 6800 | mute_bias → mute_zener |  |
| R47 | R | 47000 | mute_bias → VN24 |  |
| R46 | R | 2200000 | mute_bias → mute_delay |  |
| R45 | R | 10000000 | mute_delay → mute_gate |  |
| C25 | C | 1e-06 | mute_gate → G |  |
| E21 | C | 2.2e-06 | mute_rect → G |  |
| D6 | diode | 1N4148 | input_protected → VP15 | Порядок узлов: анод, катод; закон тока пока не выбран. |
| D7 | diode | 1N4148 | VN15 → input_protected | Порядок узлов: анод, катод; закон тока пока не выбран. |
| D4 | diode | 1N4148 | clip_ref → clip | Порядок узлов: анод, катод; закон тока пока не выбран. |
| D5 | diode | 1N4148 | clip → clip_ref | Порядок узлов: анод, катод; закон тока пока не выбран. |
| D11 | diode | 1N4148 | mute_delay → mute_bias | Порядок узлов: анод, катод; закон тока пока не выбран. |
| D2 | diode | 1N4744A | VN15 → G | Анод, катод. |
| D3 | diode | 1N4744A | G → VP15 | Анод, катод. |
| D10 | diode | 1N4004 | ac_b → mute_rect | Анод, катод. |
| D12 | diode | 1N4744A? | mute_zener → mute_rect | Анод, катод. Знак ? у D12 присутствует на исходном листе. |
| VR1 | pot | 10000 | gain_left → G → gain_right | Порядок: конец A, движок W, конец B. B10K; движок заземлён. Два плеча одновременно меняют ООС IC3A и нагрузку его выхода. |
| VR2 | pot | 50000 | od_top → G → G | Порядок: конец A, движок W, конец B. C50K; движок соединён с правым концом и землёй. Закон C пока не задан. |
| VR3 | pot | 50000 | volume_top → volume_wiper → G | Порядок: конец A, движок W, конец B. B50K |
| VR4 | pot | 250000 | treble_left → treble_wiper → tone_high | Порядок: конец A, движок W, конец B. B250K |
| VR5 | pot | 25000 | tone_mid → G → G | Порядок: конец A, движок W, конец B. B25K; движок соединён с нижним концом и землёй. |
| VR6 | pot | 250000 | tone_high → tone_high → tone_mid | Порядок: конец A, движок W, конец B. B250K; движок соединён с верхним концом. |
| IC3A | opamp | TL072CN | a_plus → a_minus → a_out → VP15 → VN15 | Порядок: +IN, -IN, OUT, V+, V-. Внутренняя модель пока не задана. |
| IC3B | opamp | TL072CN | b_plus → b_minus → b_out → VP15 → VN15 | Порядок: +IN, -IN, OUT, V+, V-. Внутренняя модель пока не задана. |
| IC4A | opamp | TL072CN | c_plus → c_minus → c_out → VP15 → VN15 | Порядок: +IN, -IN, OUT, V+, V-. Внутренняя модель пока не задана. |
| IC4B | opamp | TL072CN | G → d_minus → d_out → VP15 → VN15 | Порядок: +IN, -IN, OUT, V+, V-. Внутренняя модель пока не задана. |
| IC1 | poweramp | TDA2050 | power_plus → power_minus → power_out → VP24 → VN24 | Порядок: +IN, -IN, OUT, V+, V-. |
| Q1 | jfet | 2SK30GR | mute_input → volume_top → mute_gate | Порядок: два сигнальных вывода канала, затвор. На увеличенном листе Q1 стоит последовательно между E8 и Volume; D/S не назначены. |
| BD1 | bridge | 2W10 | ac_a → ac_b → VP24 → VN24 | Средняя точка вторички трансформатора — G. |
| LED1 | led | RD | G → led_k | Анод, катод; параметры не заданы. |
| TR | transformer | 230/2x18V; EI60/35 |  | Данные надписи; модель сопротивлений и рассеяния отсутствует. |
| C23 | optional | не указан | VN24 → G | []*; установка/значение не подтверждены, не включать по умолчанию. |
| C24 | optional | не указан | VP24 → G | []*; установка/значение не подтверждены, не включать по умолчанию. |
| D8 | optional | не указан | ac_b → optional_rect | []*; анод, катод; установка/значение не подтверждены, не включать по умолчанию. |
| D9 | optional | не указан | ac_a → optional_rect | []*; анод, катод; установка/значение не подтверждены, не включать по умолчанию. |
| E3 | optional | не указан | optional_rect → G | []*; установка/значение не подтверждены, не включать по умолчанию. |
| R39 | optional | 100 | optional_rect → optional_reg_in | [100/5W]*; установка/значение не подтверждены, не включать по умолчанию. |
| E16 | optional | 0.0001 | optional_reg_in → G | [100/25]*; установка/значение не подтверждены, не включать по умолчанию. |
| E17 | optional | 2.2e-05 | optional_5v → G | [22/50]*; установка/значение не подтверждены, не включать по умолчанию. |
| IC5 | optional | 7805 | optional_reg_in → G → optional_5v | [7805]*; установка/значение не подтверждены, не включать по умолчанию. |
| J7 | link | 0 | power_out → speaker_hot | Перемычка на листе. |
| J9 | link | 0 | aux_sum → aux_link | Перемычка на листе. |
| J12 | optional | не указан | optional_rect → VN24 | []*; назначение/установка требуют сверки. |
| J8 | optional | не указан | cn7_2 → G | []*; опциональная перемычка контакта 2 CN7 на G. |
| J3 | optional | не указан | cn7_1 → d_minus | []*; опциональная перемычка контакта 1 CN7 на суммирующий узел IC4B. |
| CN7 | connector | не указан | VN15 → VP15 → c_out → cn7_2 → cn7_1 | Контакты 5,4,3,2,1; []*, внешняя плата неизвестна. |
| CON1 | connector | SP | speaker_hot → speaker_return | Возврат динамика идёт через контакт JK2, не прямо на G. |
| CON2 | connector | AC | G → ac_a → ac_b | Контакты 1,2,3. |
| JK1 | jack | INPUT | in → G | Входной замыкающий контакт на землю без штекера; проверить механику. |
| JK4 | jack | AUX IN | aux_l → aux_r → G | Стереовход; параметры источника не заданы. |
| JK2 | jack | PHONES | phones_feed → speaker_return → G | Коммутирует возврат динамика; точную механику гнезда подтвердить по аппарату. |
| SW_OD | switch | DPDT | clip_ref → od_top | Оба верхних контакта clip_ref; средние и нижние объединены с od_top. Показанное положение размыкает clip_ref/od_top; другое замыкает. |
