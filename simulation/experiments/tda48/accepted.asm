
simulation/experiments/rate48/20260927T193028Z/probe.elf:	file format elf32-littlearm

Disassembly of section .text:

00000408 <Reset>:
     408: b580         	push	{r7, lr}
     40a: 466f         	mov	r7, sp
     40c: f5ad 6d61    	sub.w	sp, sp, #0xe10
     410: f244 503c    	movw	r0, #0x453c
     414: f241 0204    	movw	r2, #0x1004
     418: f6c5 0002    	movt	r0, #0x5802
     41c: f2ce 0200    	movt	r2, #0xe000
     420: 2500         	movs	r5, #0x0
     422: f10d 0b54    	add.w	r11, sp, #0x54
     426: 6801         	ldr	r1, [r0]
     428: f244 1944    	movw	r9, #0x4144
     42c: f441 4180    	orr	r1, r1, #0x4000
     430: 6001         	str	r1, [r0]
     432: f64e 51fc    	movw	r1, #0xedfc
     436: 6800         	ldr	r0, [r0]
     438: f2ce 0100    	movt	r1, #0xe000
     43c: f244 764f    	movw	r6, #0x474f
     440: f64f 7400    	movw	r4, #0xff00
     444: f248 0800    	movw	r8, #0x8000
     448: 6808         	ldr	r0, [r1]
     44a: f2c5 2945    	movt	r9, #0x5245
     44e: f040 7080    	orr	r0, r0, #0x1000000
     452: 6008         	str	r0, [r1]
     454: 6015         	str	r5, [r2]
     456: f240 4114    	movw	r1, #0x414
     45a: f852 0c04    	ldr	r0, [r2, #-4]
     45e: f2c4 764f    	movt	r6, #0x474f
     462: f040 0001    	orr	r0, r0, #0x1
     466: f842 0c04    	str	r0, [r2, #-4]
     46a: 4658         	mov	r0, r11
     46c: f2c2 0400    	movt	r4, #0x2000
     470: f2c2 0800    	movt	r8, #0x2000
     474: f00d f945    	bl	0xd702 <__aeabi_memclr4> @ imm = #0xd28a
     478: f50d 6a8d    	add.w	r10, sp, #0x468
     47c: f44f 7158    	mov.w	r1, #0x360
     480: 4650         	mov	r0, r10
     482: f00d f93e    	bl	0xd702 <__aeabi_memclr4> @ imm = #0xd27c
     486: f20d 70d4    	addw	r0, sp, #0x7d4
     48a: f44f 61c0    	mov.w	r1, #0x600
     48e: f8cd 57d0    	str.w	r5, [sp, #0x7d0]
     492: f8cd 57cc    	str.w	r5, [sp, #0x7cc]
     496: f8cd 57c8    	str.w	r5, [sp, #0x7c8]
     49a: f00d f932    	bl	0xd702 <__aeabi_memclr4> @ imm = #0xd264
     49e: 46d4         	mov	r12, r10
     4a0: f1a7 003c    	sub.w	r0, r7, #0x3c
     4a4: e947 550b    	strd	r5, r5, [r7, #-44]
     4a8: e947 550d    	strd	r5, r5, [r7, #-52]
     4ac: e947 550f    	strd	r5, r5, [r7, #-60]
     4b0: 3004         	adds	r0, #0x4
     4b2: 9002         	str	r0, [sp, #0x8]
     4b4: f8c4 9000    	str.w	r9, [r4]
     4b8: 2000         	movs	r0, #0x0
     4ba: 9004         	str	r0, [sp, #0x10]
     4bc: 6820         	ldr	r0, [r4]
     4be: 42b0         	cmp	r0, r6
     4c0: f040 84b0    	bne.w	0xe24 <Reset+0xa1c>     @ imm = #0x960
     4c4: e008         	b	0x4d8 <Reset+0xd0>      @ imm = #0x10
     4c6: bf00         	nop
     4c8: bf10         	yield
     4ca: 6820         	ldr	r0, [r4]
     4cc: 42b0         	cmp	r0, r6
     4ce: f040 84a9    	bne.w	0xe24 <Reset+0xa1c>     @ imm = #0x952
     4d2: bf00         	nop
     4d4: bf00         	nop
     4d6: bf00         	nop
     4d8: 6860         	ldr	r0, [r4, #0x4]
     4da: ed94 9a02    	vldr	s18, [r4, #8]
     4de: 2800         	cmp	r0, #0x0
     4e0: f000 84b2    	beq.w	0xe48 <Reset+0xa40>     @ imm = #0x964
     4e4: f5b0 4f80    	cmp.w	r0, #0x4000
     4e8: f200 84be    	bhi.w	0xe68 <Reset+0xa60>     @ imm = #0x97c
     4ec: eeb5 9a40    	vcmp.f32	s18, #0
     4f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     4f4: f240 84b8    	bls.w	0xe68 <Reset+0xa60>     @ imm = #0x970
     4f8: 9003         	str	r0, [sp, #0xc]
     4fa: f06f 00ff    	mvn	r0, #0xff
     4fe: bf00         	nop
     500: eb08 0100    	add.w	r1, r8, r0
     504: f500 7080    	add.w	r0, r0, #0x100
     508: f5b0 5f60    	cmp.w	r0, #0x3800
     50c: f8c1 5100    	str.w	r5, [r1, #0x100]
     510: f8c1 5104    	str.w	r5, [r1, #0x104]
     514: f8c1 5108    	str.w	r5, [r1, #0x108]
     518: f8c1 510c    	str.w	r5, [r1, #0x10c]
     51c: f8c1 5110    	str.w	r5, [r1, #0x110]
     520: f8c1 5114    	str.w	r5, [r1, #0x114]
     524: f8c1 5118    	str.w	r5, [r1, #0x118]
     528: f8c1 511c    	str.w	r5, [r1, #0x11c]
     52c: f8c1 5120    	str.w	r5, [r1, #0x120]
     530: f8c1 5124    	str.w	r5, [r1, #0x124]
     534: f8c1 5128    	str.w	r5, [r1, #0x128]
     538: f8c1 512c    	str.w	r5, [r1, #0x12c]
     53c: f8c1 5130    	str.w	r5, [r1, #0x130]
     540: f8c1 5134    	str.w	r5, [r1, #0x134]
     544: f8c1 5138    	str.w	r5, [r1, #0x138]
     548: f8c1 513c    	str.w	r5, [r1, #0x13c]
     54c: f8c1 5140    	str.w	r5, [r1, #0x140]
     550: f8c1 5144    	str.w	r5, [r1, #0x144]
     554: f8c1 5148    	str.w	r5, [r1, #0x148]
     558: f8c1 514c    	str.w	r5, [r1, #0x14c]
     55c: f8c1 5150    	str.w	r5, [r1, #0x150]
     560: f8c1 5154    	str.w	r5, [r1, #0x154]
     564: f8c1 5158    	str.w	r5, [r1, #0x158]
     568: f8c1 515c    	str.w	r5, [r1, #0x15c]
     56c: f8c1 5160    	str.w	r5, [r1, #0x160]
     570: f8c1 5164    	str.w	r5, [r1, #0x164]
     574: f8c1 5168    	str.w	r5, [r1, #0x168]
     578: f8c1 516c    	str.w	r5, [r1, #0x16c]
     57c: f8c1 5170    	str.w	r5, [r1, #0x170]
     580: f8c1 5174    	str.w	r5, [r1, #0x174]
     584: f8c1 5178    	str.w	r5, [r1, #0x178]
     588: f8c1 517c    	str.w	r5, [r1, #0x17c]
     58c: f8c1 5180    	str.w	r5, [r1, #0x180]
     590: f8c1 5184    	str.w	r5, [r1, #0x184]
     594: f8c1 5188    	str.w	r5, [r1, #0x188]
     598: f8c1 518c    	str.w	r5, [r1, #0x18c]
     59c: f8c1 5190    	str.w	r5, [r1, #0x190]
     5a0: f8c1 5194    	str.w	r5, [r1, #0x194]
     5a4: f8c1 5198    	str.w	r5, [r1, #0x198]
     5a8: f8c1 519c    	str.w	r5, [r1, #0x19c]
     5ac: f8c1 51a0    	str.w	r5, [r1, #0x1a0]
     5b0: f8c1 51a4    	str.w	r5, [r1, #0x1a4]
     5b4: f8c1 51a8    	str.w	r5, [r1, #0x1a8]
     5b8: f8c1 51ac    	str.w	r5, [r1, #0x1ac]
     5bc: f8c1 51b0    	str.w	r5, [r1, #0x1b0]
     5c0: f8c1 51b4    	str.w	r5, [r1, #0x1b4]
     5c4: f8c1 51b8    	str.w	r5, [r1, #0x1b8]
     5c8: f8c1 51bc    	str.w	r5, [r1, #0x1bc]
     5cc: f8c1 51c0    	str.w	r5, [r1, #0x1c0]
     5d0: f8c1 51c4    	str.w	r5, [r1, #0x1c4]
     5d4: f8c1 51c8    	str.w	r5, [r1, #0x1c8]
     5d8: f8c1 51cc    	str.w	r5, [r1, #0x1cc]
     5dc: f8c1 51d0    	str.w	r5, [r1, #0x1d0]
     5e0: f8c1 51d4    	str.w	r5, [r1, #0x1d4]
     5e4: f8c1 51d8    	str.w	r5, [r1, #0x1d8]
     5e8: f8c1 51dc    	str.w	r5, [r1, #0x1dc]
     5ec: f8c1 51e0    	str.w	r5, [r1, #0x1e0]
     5f0: f8c1 51e4    	str.w	r5, [r1, #0x1e4]
     5f4: f8c1 51e8    	str.w	r5, [r1, #0x1e8]
     5f8: f8c1 51ec    	str.w	r5, [r1, #0x1ec]
     5fc: f8c1 51f0    	str.w	r5, [r1, #0x1f0]
     600: f8c1 51f4    	str.w	r5, [r1, #0x1f4]
     604: f8c1 51f8    	str.w	r5, [r1, #0x1f8]
     608: f8c1 51fc    	str.w	r5, [r1, #0x1fc]
     60c: f47f af78    	bne.w	0x500 <Reset+0xf8>      @ imm = #-0x110
     610: f241 0004    	movw	r0, #0x1004
     614: 2200         	movs	r2, #0x0
     616: f2ce 0000    	movt	r0, #0xe000
     61a: f50d 65f9    	add.w	r5, sp, #0x7c8
     61e: 6800         	ldr	r0, [r0]
     620: 9001         	str	r0, [sp, #0x4]
     622: 9904         	ldr	r1, [sp, #0x10]
     624: f649 50c5    	movw	r0, #0x9dc5
     628: f2c8 101c    	movt	r0, #0x811c
     62c: 9008         	str	r0, [sp, #0x20]
     62e: e015         	b	0x65c <Reset+0x254>     @ imm = #0x2a
     630: 9808         	ldr	r0, [sp, #0x20]
     632: 9905         	ldr	r1, [sp, #0x14]
     634: 4048         	eors	r0, r1
     636: f240 1193    	movw	r1, #0x193
     63a: f2c0 1100    	movt	r1, #0x100
     63e: 9a07         	ldr	r2, [sp, #0x1c]
     640: 4348         	muls	r0, r1, r0
     642: 3201         	adds	r2, #0x1
     644: 9008         	str	r0, [sp, #0x20]
     646: 9803         	ldr	r0, [sp, #0xc]
     648: 9906         	ldr	r1, [sp, #0x18]
     64a: 4282         	cmp	r2, r0
     64c: f101 0101    	add.w	r1, r1, #0x1
     650: f10d 0b54    	add.w	r11, sp, #0x54
     654: f50d 6c8d    	add.w	r12, sp, #0x468
     658: f000 81de    	beq.w	0xa18 <Reset+0x610>     @ imm = #0x3bc
     65c: f04f 5000    	mov.w	r0, #0x20000000
     660: f04f 0a00    	mov.w	r10, #0x0
     664: f04f 0800    	mov.w	r8, #0x0
     668: f930 0012    	ldrsh.w	r0, [r0, r2, lsl #1]
     66c: 9106         	str	r1, [sp, #0x18]
     66e: f001 013f    	and	r1, r1, #0x3f
     672: 9207         	str	r2, [sp, #0x1c]
     674: ee00 0a10    	vmov	s0, r0
     678: b280         	uxth	r0, r0
     67a: 9005         	str	r0, [sp, #0x14]
     67c: 9804         	ldr	r0, [sp, #0x10]
     67e: eeb8 0ac0    	vcvt.f32.s32	s0, s0
     682: eb02 0900    	add.w	r9, r2, r0
     686: f20d 70d4    	addw	r0, sp, #0x7d4
     68a: f8cd 903c    	str.w	r9, [sp, #0x3c]
     68e: eb00 0081    	add.w	r0, r0, r1, lsl #2
     692: 9014         	str	r0, [sp, #0x50]
     694: ee80 aa09    	vdiv.f32	s20, s0, s18
     698: f1a9 003f    	sub.w	r0, r9, #0x3f
     69c: 9009         	str	r0, [sp, #0x24]
     69e: 9802         	ldr	r0, [sp, #0x8]
     6a0: 9013         	str	r0, [sp, #0x4c]
     6a2: e027         	b	0x6f4 <Reset+0x2ec>     @ imm = #0x4e
     6a4: bf00         	nop
     6a6: bf00         	nop
     6a8: f8d1 09b4    	ldr.w	r0, [r1, #0x9b4]
     6ac: 3001         	adds	r0, #0x1
     6ae: f8c1 09b4    	str.w	r0, [r1, #0x9b4]
     6b2: f8d1 09b8    	ldr.w	r0, [r1, #0x9b8]
     6b6: 3001         	adds	r0, #0x1
     6b8: f8c1 09b8    	str.w	r0, [r1, #0x9b8]
     6bc: 980c         	ldr	r0, [sp, #0x30]
     6be: f8c1 09bc    	str.w	r0, [r1, #0x9bc]
     6c2: eb05 000a    	add.w	r0, r5, r10
     6c6: f508 5898    	add.w	r8, r8, #0x1300
     6ca: f8dd c048    	ldr.w	r12, [sp, #0x48]
     6ce: f10a 0a04    	add.w	r10, r10, #0x4
     6d2: ed80 8a00    	vstr	s16, [r0]
     6d6: 9813         	ldr	r0, [sp, #0x4c]
     6d8: f50c 7c90    	add.w	r12, r12, #0x120
     6dc: f50b 7bae    	add.w	r11, r11, #0x15c
     6e0: f5b8 5f64    	cmp.w	r8, #0x3900
     6e4: f100 0008    	add.w	r0, r0, #0x8
     6e8: 9013         	str	r0, [sp, #0x4c]
     6ea: 9814         	ldr	r0, [sp, #0x50]
     6ec: f500 7000    	add.w	r0, r0, #0x200
     6f0: 9014         	str	r0, [sp, #0x50]
     6f2: d09d         	beq	0x630 <Reset+0x228>     @ imm = #-0xc6
     6f4: f64c 40cd    	movw	r0, #0xcccd
     6f8: f04f 517e    	mov.w	r1, #0x3f800000
     6fc: f6c3 50cc    	movt	r0, #0x3dcc
     700: f847 0c24    	str	r0, [r7, #-36]
     704: f04f 507a    	mov.w	r0, #0x3e800000
     708: f847 0c20    	str	r0, [r7, #-32]
     70c: f1a7 0024    	sub.w	r0, r7, #0x24
     710: f847 1c1c    	str	r1, [r7, #-28]
     714: 4450         	add	r0, r10
     716: ed90 0a00    	vldr	s0, [r0]
     71a: f8db 0118    	ldr.w	r0, [r11, #0x118]
     71e: 9011         	str	r0, [sp, #0x44]
     720: ea5f 70c9    	lsls.w	r0, r9, #0x1f
     724: f8dc 0118    	ldr.w	r0, [r12, #0x118]
     728: 9010         	str	r0, [sp, #0x40]
     72a: f241 0004    	movw	r0, #0x1004
     72e: ee2a 8a00    	vmul.f32	s16, s20, s0
     732: f2ce 0000    	movt	r0, #0xe000
     736: 6804         	ldr	r4, [r0]
     738: f8cd c048    	str.w	r12, [sp, #0x48]
     73c: d12c         	bne	0x798 <Reset+0x390>     @ imm = #0x58
     73e: eeb0 0a48    	vmov.f32	s0, s16
     742: f1a7 000c    	sub.w	r0, r7, #0xc
     746: 4659         	mov	r1, r11
     748: f8cd b038    	str.w	r11, [sp, #0x38]
     74c: 46c3         	mov	r11, r8
     74e: 46a8         	mov	r8, r5
     750: 4665         	mov	r5, r12
     752: f00a fd21    	bl	0xb198 <rate48_probe::candidate> @ imm = #0xaa42
     756: f241 0604    	movw	r6, #0x1004
     75a: eb08 000a    	add.w	r0, r8, r10
     75e: f2ce 0600    	movt	r6, #0xe000
     762: eeb0 0a48    	vmov.f32	s0, s16
     766: 4629         	mov	r1, r5
     768: 4645         	mov	r5, r8
     76a: f8d6 9000    	ldr.w	r9, [r6]
     76e: edd0 0a00    	vldr	s1, [r0]
     772: f1a7 0018    	sub.w	r0, r7, #0x18
     776: 46d8         	mov	r8, r11
     778: f8dd b038    	ldr.w	r11, [sp, #0x38]
     77c: f00a fcc8    	bl	0xb110 <rate48_probe::control> @ imm = #0xa990
     780: 6830         	ldr	r0, [r6]
     782: eba9 0e04    	sub.w	lr, r9, r4
     786: eba0 0209    	sub.w	r2, r0, r9
     78a: f8dd 903c    	ldr.w	r9, [sp, #0x3c]
     78e: f817 0c03    	ldrb	r0, [r7, #-3]
     792: 2802         	cmp	r0, #0x2
     794: d095         	beq	0x6c2 <Reset+0x2ba>     @ imm = #-0xd6
     796: e021         	b	0x7dc <Reset+0x3d4>     @ imm = #0x42
     798: eb05 000a    	add.w	r0, r5, r10
     79c: eeb0 0a48    	vmov.f32	s0, s16
     7a0: 4661         	mov	r1, r12
     7a2: edd0 0a00    	vldr	s1, [r0]
     7a6: f1a7 0018    	sub.w	r0, r7, #0x18
     7aa: f00a fcb1    	bl	0xb110 <rate48_probe::control> @ imm = #0xa962
     7ae: f241 0504    	movw	r5, #0x1004
     7b2: eeb0 0a48    	vmov.f32	s0, s16
     7b6: f2ce 0500    	movt	r5, #0xe000
     7ba: f1a7 000c    	sub.w	r0, r7, #0xc
     7be: 4659         	mov	r1, r11
     7c0: 682e         	ldr	r6, [r5]
     7c2: f00a fce9    	bl	0xb198 <rate48_probe::candidate> @ imm = #0xa9d2
     7c6: 6828         	ldr	r0, [r5]
     7c8: f50d 65f9    	add.w	r5, sp, #0x7c8
     7cc: 1b32         	subs	r2, r6, r4
     7ce: eba0 0e06    	sub.w	lr, r0, r6
     7d2: f817 0c03    	ldrb	r0, [r7, #-3]
     7d6: 2802         	cmp	r0, #0x2
     7d8: f43f af73    	beq.w	0x6c2 <Reset+0x2ba>     @ imm = #-0x11a
     7dc: f248 0900    	movw	r9, #0x8000
     7e0: f817 4c10    	ldrb	r4, [r7, #-16]
     7e4: f2c2 0900    	movt	r9, #0x2000
     7e8: 940a         	str	r4, [sp, #0x28]
     7ea: f817 4c0f    	ldrb	r4, [r7, #-15]
     7ee: f857 1c0c    	ldr	r1, [r7, #-12]
     7f2: 910d         	str	r1, [sp, #0x34]
     7f4: f857 1c18    	ldr	r1, [r7, #-24]
     7f8: 910c         	str	r1, [sp, #0x30]
     7fa: f857 1c14    	ldr	r1, [r7, #-20]
     7fe: 910b         	str	r1, [sp, #0x2c]
     800: eb09 0108    	add.w	r1, r9, r8
     804: 940e         	str	r4, [sp, #0x38]
     806: f857 cc08    	ldr	r12, [r7, #-8]
     80a: f817 3c04    	ldrb	r3, [r7, #-4]
     80e: f859 4008    	ldr.w	r4, [r9, r8]
     812: 684e         	ldr	r6, [r1, #0x4]
     814: eb14 040e    	adds.w	r4, r4, lr
     818: f849 4008    	str.w	r4, [r9, r8]
     81c: f146 0400    	adc	r4, r6, #0x0
     820: f8dd 903c    	ldr.w	r9, [sp, #0x3c]
     824: 604c         	str	r4, [r1, #0x4]
     826: 688c         	ldr	r4, [r1, #0x8]
     828: 45a6         	cmp	lr, r4
     82a: 9c11         	ldr	r4, [sp, #0x44]
     82c: f104 0401    	add.w	r4, r4, #0x1
     830: d903         	bls	0x83a <Reset+0x432>     @ imm = #0x6
     832: f8c1 e008    	str.w	lr, [r1, #0x8]
     836: f8c1 900c    	str.w	r9, [r1, #0xc]
     83a: 690e         	ldr	r6, [r1, #0x10]
     83c: f243 05d4    	movw	r5, #0x30d4
     840: 45ae         	cmp	lr, r5
     842: f242 7510    	movw	r5, #0x2710
     846: bf88         	it	hi
     848: 3601         	addhi	r6, #0x1
     84a: 45ae         	cmp	lr, r5
     84c: 610e         	str	r6, [r1, #0x10]
     84e: 694e         	ldr	r6, [r1, #0x14]
     850: bf88         	it	hi
     852: 3601         	addhi	r6, #0x1
     854: 614e         	str	r6, [r1, #0x14]
     856: 2601         	movs	r6, #0x1
     858: ea26 0000    	bic.w	r0, r6, r0
     85c: 698e         	ldr	r6, [r1, #0x18]
     85e: 4430         	add	r0, r6
     860: 6188         	str	r0, [r1, #0x18]
     862: 6a08         	ldr	r0, [r1, #0x20]
     864: 4418         	add	r0, r3
     866: 6208         	str	r0, [r1, #0x20]
     868: 6a48         	ldr	r0, [r1, #0x24]
     86a: 4298         	cmp	r0, r3
     86c: bf88         	it	hi
     86e: 4603         	movhi	r3, r0
     870: 624b         	str	r3, [r1, #0x24]
     872: 6a88         	ldr	r0, [r1, #0x28]
     874: 4584         	cmp	r12, r0
     876: bf88         	it	hi
     878: 4660         	movhi	r0, r12
     87a: 6288         	str	r0, [r1, #0x28]
     87c: f8db 0118    	ldr.w	r0, [r11, #0x118]
     880: 69cb         	ldr	r3, [r1, #0x1c]
     882: 42a0         	cmp	r0, r4
     884: ea4f 10de    	lsr.w	r0, lr, #0x7
     888: bf18         	it	ne
     88a: 3301         	addne	r3, #0x1
     88c: f5b0 7fff    	cmp.w	r0, #0x1fe
     890: f240 10ff    	movw	r0, #0x1ff
     894: bf98         	it	ls
     896: ea4f 10de    	lsrls.w	r0, lr, #0x7
     89a: 61cb         	str	r3, [r1, #0x1c]
     89c: f1b9 0f3f    	cmp.w	r9, #0x3f
     8a0: eb01 0080    	add.w	r0, r1, r0, lsl #2
     8a4: f8d0 3080    	ldr.w	r3, [r0, #0x80]
     8a8: f103 0301    	add.w	r3, r3, #0x1
     8ac: f8c0 3080    	str.w	r3, [r0, #0x80]
     8b0: 9d13         	ldr	r5, [sp, #0x4c]
     8b2: 9e14         	ldr	r6, [sp, #0x50]
     8b4: 9c0e         	ldr	r4, [sp, #0x38]
     8b6: f855 0c04    	ldr	r0, [r5, #-4]
     8ba: 6833         	ldr	r3, [r6]
     8bc: 4470         	add	r0, lr
     8be: f8c6 e000    	str.w	lr, [r6]
     8c2: eba0 0003    	sub.w	r0, r0, r3
     8c6: f845 0c04    	str	r0, [r5, #-4]
     8ca: f50d 65f9    	add.w	r5, sp, #0x7c8
     8ce: d318         	blo	0x902 <Reset+0x4fa>     @ imm = #0x30
     8d0: 6acb         	ldr	r3, [r1, #0x2c]
     8d2: 4298         	cmp	r0, r3
     8d4: d902         	bls	0x8dc <Reset+0x4d4>     @ imm = #0x4
     8d6: 62c8         	str	r0, [r1, #0x2c]
     8d8: 9b09         	ldr	r3, [sp, #0x24]
     8da: 630b         	str	r3, [r1, #0x30]
     8dc: f243 5300    	movw	r3, #0x3500
     8e0: f2c0 030c    	movt	r3, #0xc
     8e4: 4298         	cmp	r0, r3
     8e6: d903         	bls	0x8f0 <Reset+0x4e8>     @ imm = #0x6
     8e8: 6b48         	ldr	r0, [r1, #0x34]
     8ea: 3001         	adds	r0, #0x1
     8ec: 6348         	str	r0, [r1, #0x34]
     8ee: e005         	b	0x8fc <Reset+0x4f4>     @ imm = #0xa
     8f0: f24c 4300    	movw	r3, #0xc400
     8f4: f2c0 0309    	movt	r3, #0x9
     8f8: 4298         	cmp	r0, r3
     8fa: d902         	bls	0x902 <Reset+0x4fa>     @ imm = #0x4
     8fc: 6b88         	ldr	r0, [r1, #0x38]
     8fe: 3001         	adds	r0, #0x1
     900: 6388         	str	r0, [r1, #0x38]
     902: 2c02         	cmp	r4, #0x2
     904: 980d         	ldr	r0, [sp, #0x34]
     906: 63c8         	str	r0, [r1, #0x3c]
     908: f43f aedb    	beq.w	0x6c2 <Reset+0x2ba>     @ imm = #-0x24a
     90c: f8d1 0980    	ldr.w	r0, [r1, #0x980]
     910: f8d1 3984    	ldr.w	r3, [r1, #0x984]
     914: 1880         	adds	r0, r0, r2
     916: f8c1 0980    	str.w	r0, [r1, #0x980]
     91a: f143 0000    	adc	r0, r3, #0x0
     91e: f8c1 0984    	str.w	r0, [r1, #0x984]
     922: f8d1 0988    	ldr.w	r0, [r1, #0x988]
     926: 4282         	cmp	r2, r0
     928: 9810         	ldr	r0, [sp, #0x40]
     92a: f100 0002    	add.w	r0, r0, #0x2
     92e: d903         	bls	0x938 <Reset+0x530>     @ imm = #0x6
     930: f8c1 2988    	str.w	r2, [r1, #0x988]
     934: f8c1 998c    	str.w	r9, [r1, #0x98c]
     938: f8d1 3990    	ldr.w	r3, [r1, #0x990]
     93c: f243 06d4    	movw	r6, #0x30d4
     940: 42b2         	cmp	r2, r6
     942: f242 7610    	movw	r6, #0x2710
     946: bf88         	it	hi
     948: 3301         	addhi	r3, #0x1
     94a: 42b2         	cmp	r2, r6
     94c: f8c1 3990    	str.w	r3, [r1, #0x990]
     950: f8d1 3994    	ldr.w	r3, [r1, #0x994]
     954: bf88         	it	hi
     956: 3301         	addhi	r3, #0x1
     958: f8c1 3994    	str.w	r3, [r1, #0x994]
     95c: 2301         	movs	r3, #0x1
     95e: 43a3         	bics	r3, r4
     960: f8d1 6998    	ldr.w	r6, [r1, #0x998]
     964: 4433         	add	r3, r6
     966: f8c1 3998    	str.w	r3, [r1, #0x998]
     96a: f8d1 39a0    	ldr.w	r3, [r1, #0x9a0]
     96e: 9e0a         	ldr	r6, [sp, #0x28]
     970: 4433         	add	r3, r6
     972: f8c1 39a0    	str.w	r3, [r1, #0x9a0]
     976: f8d1 39a4    	ldr.w	r3, [r1, #0x9a4]
     97a: 42b3         	cmp	r3, r6
     97c: bf88         	it	hi
     97e: 461e         	movhi	r6, r3
     980: f8c1 69a4    	str.w	r6, [r1, #0x9a4]
     984: f8d1 39a8    	ldr.w	r3, [r1, #0x9a8]
     988: 9e0b         	ldr	r6, [sp, #0x2c]
     98a: 429e         	cmp	r6, r3
     98c: bf88         	it	hi
     98e: 4633         	movhi	r3, r6
     990: f8c1 39a8    	str.w	r3, [r1, #0x9a8]
     994: 9b12         	ldr	r3, [sp, #0x48]
     996: f8d3 3118    	ldr.w	r3, [r3, #0x118]
     99a: f8d1 699c    	ldr.w	r6, [r1, #0x99c]
     99e: 4283         	cmp	r3, r0
     9a0: ea4f 10d2    	lsr.w	r0, r2, #0x7
     9a4: bf18         	it	ne
     9a6: 3601         	addne	r6, #0x1
     9a8: f5b0 7fff    	cmp.w	r0, #0x1fe
     9ac: f240 10ff    	movw	r0, #0x1ff
     9b0: bf98         	it	ls
     9b2: 09d0         	lsrls	r0, r2, #0x7
     9b4: f8c1 699c    	str.w	r6, [r1, #0x99c]
     9b8: f1b9 0f3e    	cmp.w	r9, #0x3e
     9bc: eb01 0080    	add.w	r0, r1, r0, lsl #2
     9c0: f8d0 3a00    	ldr.w	r3, [r0, #0xa00]
     9c4: f103 0301    	add.w	r3, r3, #0x1
     9c8: f8c0 3a00    	str.w	r3, [r0, #0xa00]
     9cc: 9c13         	ldr	r4, [sp, #0x4c]
     9ce: 9e14         	ldr	r6, [sp, #0x50]
     9d0: 6820         	ldr	r0, [r4]
     9d2: f8d6 3100    	ldr.w	r3, [r6, #0x100]
     9d6: 4410         	add	r0, r2
     9d8: f8c6 2100    	str.w	r2, [r6, #0x100]
     9dc: eba0 0003    	sub.w	r0, r0, r3
     9e0: 6020         	str	r0, [r4]
     9e2: f67f ae6b    	bls.w	0x6bc <Reset+0x2b4>     @ imm = #-0x32a
     9e6: f8d1 29ac    	ldr.w	r2, [r1, #0x9ac]
     9ea: 4290         	cmp	r0, r2
     9ec: d904         	bls	0x9f8 <Reset+0x5f0>     @ imm = #0x8
     9ee: f8c1 09ac    	str.w	r0, [r1, #0x9ac]
     9f2: 9a09         	ldr	r2, [sp, #0x24]
     9f4: f8c1 29b0    	str.w	r2, [r1, #0x9b0]
     9f8: f243 5200    	movw	r2, #0x3500
     9fc: f2c0 020c    	movt	r2, #0xc
     a00: 4290         	cmp	r0, r2
     a02: f63f ae51    	bhi.w	0x6a8 <Reset+0x2a0>     @ imm = #-0x35e
     a06: f24c 4200    	movw	r2, #0xc400
     a0a: f2c0 0209    	movt	r2, #0x9
     a0e: 4290         	cmp	r0, r2
     a10: f63f ae4f    	bhi.w	0x6b2 <Reset+0x2aa>     @ imm = #-0x362
     a14: e652         	b	0x6bc <Reset+0x2b4>     @ imm = #-0x35c
     a16: bf00         	nop
     a18: f241 0004    	movw	r0, #0x1004
     a1c: f248 0800    	movw	r8, #0x8000
     a20: f2ce 0000    	movt	r0, #0xe000
     a24: 2100         	movs	r1, #0x0
     a26: f2c2 0800    	movt	r8, #0x2000
     a2a: f241 2468    	movw	r4, #0x1268
     a2e: 6800         	ldr	r0, [r0]
     a30: 9014         	str	r0, [sp, #0x50]
     a32: f241 20d4    	movw	r0, #0x12d4
     a36: f241 2ad8    	movw	r10, #0x12d8
     a3a: f241 2e6c    	movw	lr, #0x126c
     a3e: f241 29dc    	movw	r9, #0x12dc
     a42: bf00         	nop
     a44: bf00         	nop
     a46: bf00         	nop
     a48: f44f 72ae    	mov.w	r2, #0x15c
     a4c: eb01 03c1    	add.w	r3, r1, r1, lsl #3
     a50: fb01 b602    	mla	r6, r1, r2, r11
     a54: f44f 5298    	mov.w	r2, #0x1300
     a58: fb01 8202    	mla	r2, r1, r2, r8
     a5c: eb0c 1343    	add.w	r3, r12, r3, lsl #5
     a60: 3101         	adds	r1, #0x1
     a62: 2903         	cmp	r1, #0x3
     a64: 6a35         	ldr	r5, [r6, #0x20]
     a66: f8c2 5880    	str.w	r5, [r2, #0x880]
     a6a: f8d6 5090    	ldr.w	r5, [r6, #0x90]
     a6e: f8c2 58f0    	str.w	r5, [r2, #0x8f0]
     a72: 6a75         	ldr	r5, [r6, #0x24]
     a74: f8c2 5884    	str.w	r5, [r2, #0x884]
     a78: f8d6 5094    	ldr.w	r5, [r6, #0x94]
     a7c: f8c2 58f4    	str.w	r5, [r2, #0x8f4]
     a80: 6ab5         	ldr	r5, [r6, #0x28]
     a82: f8c2 5888    	str.w	r5, [r2, #0x888]
     a86: f8d6 5098    	ldr.w	r5, [r6, #0x98]
     a8a: f8c2 58f8    	str.w	r5, [r2, #0x8f8]
     a8e: 6af5         	ldr	r5, [r6, #0x2c]
     a90: f8c2 588c    	str.w	r5, [r2, #0x88c]
     a94: f8d6 509c    	ldr.w	r5, [r6, #0x9c]
     a98: f8c2 58fc    	str.w	r5, [r2, #0x8fc]
     a9c: 6b35         	ldr	r5, [r6, #0x30]
     a9e: f8c2 5890    	str.w	r5, [r2, #0x890]
     aa2: f8d6 50a0    	ldr.w	r5, [r6, #0xa0]
     aa6: f8c2 5900    	str.w	r5, [r2, #0x900]
     aaa: 6b75         	ldr	r5, [r6, #0x34]
     aac: f8c2 5894    	str.w	r5, [r2, #0x894]
     ab0: f8d6 50a4    	ldr.w	r5, [r6, #0xa4]
     ab4: f8c2 5904    	str.w	r5, [r2, #0x904]
     ab8: 6bb5         	ldr	r5, [r6, #0x38]
     aba: f8c2 5898    	str.w	r5, [r2, #0x898]
     abe: f8d6 50a8    	ldr.w	r5, [r6, #0xa8]
     ac2: f8c2 5908    	str.w	r5, [r2, #0x908]
     ac6: 6bf5         	ldr	r5, [r6, #0x3c]
     ac8: f8c2 589c    	str.w	r5, [r2, #0x89c]
     acc: f8d6 50ac    	ldr.w	r5, [r6, #0xac]
     ad0: f8c2 590c    	str.w	r5, [r2, #0x90c]
     ad4: 6c35         	ldr	r5, [r6, #0x40]
     ad6: f8c2 58a0    	str.w	r5, [r2, #0x8a0]
     ada: f8d6 50b0    	ldr.w	r5, [r6, #0xb0]
     ade: f8c2 5910    	str.w	r5, [r2, #0x910]
     ae2: 6c75         	ldr	r5, [r6, #0x44]
     ae4: f8c2 58a4    	str.w	r5, [r2, #0x8a4]
     ae8: f8d6 50b4    	ldr.w	r5, [r6, #0xb4]
     aec: f8c2 5914    	str.w	r5, [r2, #0x914]
     af0: 6cb5         	ldr	r5, [r6, #0x48]
     af2: f8c2 58a8    	str.w	r5, [r2, #0x8a8]
     af6: f8d6 50b8    	ldr.w	r5, [r6, #0xb8]
     afa: f8c2 5918    	str.w	r5, [r2, #0x918]
     afe: 6cf5         	ldr	r5, [r6, #0x4c]
     b00: f8c2 58ac    	str.w	r5, [r2, #0x8ac]
     b04: f8d6 50bc    	ldr.w	r5, [r6, #0xbc]
     b08: f8c2 591c    	str.w	r5, [r2, #0x91c]
     b0c: 6d35         	ldr	r5, [r6, #0x50]
     b0e: f8c2 58b0    	str.w	r5, [r2, #0x8b0]
     b12: f8d6 50c0    	ldr.w	r5, [r6, #0xc0]
     b16: f8c2 5920    	str.w	r5, [r2, #0x920]
     b1a: 6d75         	ldr	r5, [r6, #0x54]
     b1c: f8c2 58b4    	str.w	r5, [r2, #0x8b4]
     b20: f8d6 50c4    	ldr.w	r5, [r6, #0xc4]
     b24: f8c2 5924    	str.w	r5, [r2, #0x924]
     b28: 6db5         	ldr	r5, [r6, #0x58]
     b2a: f8c2 58b8    	str.w	r5, [r2, #0x8b8]
     b2e: f8d6 50c8    	ldr.w	r5, [r6, #0xc8]
     b32: f8c2 5928    	str.w	r5, [r2, #0x928]
     b36: 6df5         	ldr	r5, [r6, #0x5c]
     b38: f8c2 58bc    	str.w	r5, [r2, #0x8bc]
     b3c: f8d6 50cc    	ldr.w	r5, [r6, #0xcc]
     b40: f8c2 592c    	str.w	r5, [r2, #0x92c]
     b44: 6e35         	ldr	r5, [r6, #0x60]
     b46: f8c2 58c0    	str.w	r5, [r2, #0x8c0]
     b4a: f8d6 50d0    	ldr.w	r5, [r6, #0xd0]
     b4e: f8c2 5930    	str.w	r5, [r2, #0x930]
     b52: 6e75         	ldr	r5, [r6, #0x64]
     b54: f8c2 58c4    	str.w	r5, [r2, #0x8c4]
     b58: f8d6 50d4    	ldr.w	r5, [r6, #0xd4]
     b5c: f8c2 5934    	str.w	r5, [r2, #0x934]
     b60: 6eb5         	ldr	r5, [r6, #0x68]
     b62: f8c2 58c8    	str.w	r5, [r2, #0x8c8]
     b66: f8d6 50d8    	ldr.w	r5, [r6, #0xd8]
     b6a: f8c2 5938    	str.w	r5, [r2, #0x938]
     b6e: 6ef5         	ldr	r5, [r6, #0x6c]
     b70: f8c2 58cc    	str.w	r5, [r2, #0x8cc]
     b74: f8d6 50dc    	ldr.w	r5, [r6, #0xdc]
     b78: f8c2 593c    	str.w	r5, [r2, #0x93c]
     b7c: 6f35         	ldr	r5, [r6, #0x70]
     b7e: f8c2 58d0    	str.w	r5, [r2, #0x8d0]
     b82: f8d6 50e0    	ldr.w	r5, [r6, #0xe0]
     b86: f8c2 5940    	str.w	r5, [r2, #0x940]
     b8a: 6f75         	ldr	r5, [r6, #0x74]
     b8c: f8c2 58d4    	str.w	r5, [r2, #0x8d4]
     b90: f8d6 50e4    	ldr.w	r5, [r6, #0xe4]
     b94: f8c2 5944    	str.w	r5, [r2, #0x944]
     b98: 6fb5         	ldr	r5, [r6, #0x78]
     b9a: f8c2 58d8    	str.w	r5, [r2, #0x8d8]
     b9e: f8d6 50e8    	ldr.w	r5, [r6, #0xe8]
     ba2: f8c2 5948    	str.w	r5, [r2, #0x948]
     ba6: 6ff5         	ldr	r5, [r6, #0x7c]
     ba8: f8c2 58dc    	str.w	r5, [r2, #0x8dc]
     bac: f8d6 50ec    	ldr.w	r5, [r6, #0xec]
     bb0: f8c2 594c    	str.w	r5, [r2, #0x94c]
     bb4: f8d6 5080    	ldr.w	r5, [r6, #0x80]
     bb8: f8c2 58e0    	str.w	r5, [r2, #0x8e0]
     bbc: f8d6 50f0    	ldr.w	r5, [r6, #0xf0]
     bc0: f8c2 5950    	str.w	r5, [r2, #0x950]
     bc4: f8d6 5084    	ldr.w	r5, [r6, #0x84]
     bc8: f8c2 58e4    	str.w	r5, [r2, #0x8e4]
     bcc: f8d6 50f4    	ldr.w	r5, [r6, #0xf4]
     bd0: f8c2 5954    	str.w	r5, [r2, #0x954]
     bd4: f8d6 5088    	ldr.w	r5, [r6, #0x88]
     bd8: f8c2 58e8    	str.w	r5, [r2, #0x8e8]
     bdc: f8d6 50f8    	ldr.w	r5, [r6, #0xf8]
     be0: f8c2 5958    	str.w	r5, [r2, #0x958]
     be4: f8d6 508c    	ldr.w	r5, [r6, #0x8c]
     be8: f8c2 58ec    	str.w	r5, [r2, #0x8ec]
     bec: f44f 5590    	mov.w	r5, #0x1200
     bf0: f8d6 60fc    	ldr.w	r6, [r6, #0xfc]
     bf4: f8c2 695c    	str.w	r6, [r2, #0x95c]
     bf8: 6a1e         	ldr	r6, [r3, #0x20]
     bfa: 5156         	str	r6, [r2, r5]
     bfc: f241 2570    	movw	r5, #0x1270
     c00: f8d3 6090    	ldr.w	r6, [r3, #0x90]
     c04: 5156         	str	r6, [r2, r5]
     c06: f241 2504    	movw	r5, #0x1204
     c0a: 6a5e         	ldr	r6, [r3, #0x24]
     c0c: 5156         	str	r6, [r2, r5]
     c0e: f241 2574    	movw	r5, #0x1274
     c12: f8d3 6094    	ldr.w	r6, [r3, #0x94]
     c16: 5156         	str	r6, [r2, r5]
     c18: f241 2508    	movw	r5, #0x1208
     c1c: 6a9e         	ldr	r6, [r3, #0x28]
     c1e: 5156         	str	r6, [r2, r5]
     c20: f241 2578    	movw	r5, #0x1278
     c24: f8d3 6098    	ldr.w	r6, [r3, #0x98]
     c28: 5156         	str	r6, [r2, r5]
     c2a: f241 250c    	movw	r5, #0x120c
     c2e: 6ade         	ldr	r6, [r3, #0x2c]
     c30: 5156         	str	r6, [r2, r5]
     c32: f241 257c    	movw	r5, #0x127c
     c36: f8d3 609c    	ldr.w	r6, [r3, #0x9c]
     c3a: 5156         	str	r6, [r2, r5]
     c3c: f241 2510    	movw	r5, #0x1210
     c40: 6b1e         	ldr	r6, [r3, #0x30]
     c42: 5156         	str	r6, [r2, r5]
     c44: f44f 5594    	mov.w	r5, #0x1280
     c48: f8d3 60a0    	ldr.w	r6, [r3, #0xa0]
     c4c: 5156         	str	r6, [r2, r5]
     c4e: f241 2514    	movw	r5, #0x1214
     c52: 6b5e         	ldr	r6, [r3, #0x34]
     c54: 5156         	str	r6, [r2, r5]
     c56: f241 2584    	movw	r5, #0x1284
     c5a: f8d3 60a4    	ldr.w	r6, [r3, #0xa4]
     c5e: 5156         	str	r6, [r2, r5]
     c60: f241 2518    	movw	r5, #0x1218
     c64: 6b9e         	ldr	r6, [r3, #0x38]
     c66: 5156         	str	r6, [r2, r5]
     c68: f241 2588    	movw	r5, #0x1288
     c6c: f8d3 60a8    	ldr.w	r6, [r3, #0xa8]
     c70: 5156         	str	r6, [r2, r5]
     c72: f241 251c    	movw	r5, #0x121c
     c76: 6bde         	ldr	r6, [r3, #0x3c]
     c78: 5156         	str	r6, [r2, r5]
     c7a: f241 258c    	movw	r5, #0x128c
     c7e: f8d3 60ac    	ldr.w	r6, [r3, #0xac]
     c82: 5156         	str	r6, [r2, r5]
     c84: f44f 5591    	mov.w	r5, #0x1220
     c88: 6c1e         	ldr	r6, [r3, #0x40]
     c8a: 5156         	str	r6, [r2, r5]
     c8c: f241 2590    	movw	r5, #0x1290
     c90: f8d3 60b0    	ldr.w	r6, [r3, #0xb0]
     c94: 5156         	str	r6, [r2, r5]
     c96: f241 2524    	movw	r5, #0x1224
     c9a: 6c5e         	ldr	r6, [r3, #0x44]
     c9c: 5156         	str	r6, [r2, r5]
     c9e: f241 2594    	movw	r5, #0x1294
     ca2: f8d3 60b4    	ldr.w	r6, [r3, #0xb4]
     ca6: 5156         	str	r6, [r2, r5]
     ca8: f241 2528    	movw	r5, #0x1228
     cac: 6c9e         	ldr	r6, [r3, #0x48]
     cae: 5156         	str	r6, [r2, r5]
     cb0: f241 2598    	movw	r5, #0x1298
     cb4: f8d3 60b8    	ldr.w	r6, [r3, #0xb8]
     cb8: 5156         	str	r6, [r2, r5]
     cba: f241 252c    	movw	r5, #0x122c
     cbe: 6cde         	ldr	r6, [r3, #0x4c]
     cc0: 5156         	str	r6, [r2, r5]
     cc2: f241 259c    	movw	r5, #0x129c
     cc6: f8d3 60bc    	ldr.w	r6, [r3, #0xbc]
     cca: 5156         	str	r6, [r2, r5]
     ccc: f241 2530    	movw	r5, #0x1230
     cd0: 6d1e         	ldr	r6, [r3, #0x50]
     cd2: 5156         	str	r6, [r2, r5]
     cd4: f44f 5595    	mov.w	r5, #0x12a0
     cd8: f8d3 60c0    	ldr.w	r6, [r3, #0xc0]
     cdc: 5156         	str	r6, [r2, r5]
     cde: f241 2534    	movw	r5, #0x1234
     ce2: 6d5e         	ldr	r6, [r3, #0x54]
     ce4: 5156         	str	r6, [r2, r5]
     ce6: f241 25a4    	movw	r5, #0x12a4
     cea: f8d3 60c4    	ldr.w	r6, [r3, #0xc4]
     cee: 5156         	str	r6, [r2, r5]
     cf0: f241 2538    	movw	r5, #0x1238
     cf4: 6d9e         	ldr	r6, [r3, #0x58]
     cf6: 5156         	str	r6, [r2, r5]
     cf8: f241 25a8    	movw	r5, #0x12a8
     cfc: f8d3 60c8    	ldr.w	r6, [r3, #0xc8]
     d00: 5156         	str	r6, [r2, r5]
     d02: f241 253c    	movw	r5, #0x123c
     d06: 6dde         	ldr	r6, [r3, #0x5c]
     d08: 5156         	str	r6, [r2, r5]
     d0a: f241 25ac    	movw	r5, #0x12ac
     d0e: f8d3 60cc    	ldr.w	r6, [r3, #0xcc]
     d12: 5156         	str	r6, [r2, r5]
     d14: f44f 5592    	mov.w	r5, #0x1240
     d18: 6e1e         	ldr	r6, [r3, #0x60]
     d1a: 5156         	str	r6, [r2, r5]
     d1c: f241 25b0    	movw	r5, #0x12b0
     d20: f8d3 60d0    	ldr.w	r6, [r3, #0xd0]
     d24: 5156         	str	r6, [r2, r5]
     d26: f241 2544    	movw	r5, #0x1244
     d2a: 6e5e         	ldr	r6, [r3, #0x64]
     d2c: 5156         	str	r6, [r2, r5]
     d2e: f241 25b4    	movw	r5, #0x12b4
     d32: f8d3 60d4    	ldr.w	r6, [r3, #0xd4]
     d36: 5156         	str	r6, [r2, r5]
     d38: f241 2548    	movw	r5, #0x1248
     d3c: 6e9e         	ldr	r6, [r3, #0x68]
     d3e: 5156         	str	r6, [r2, r5]
     d40: f241 25b8    	movw	r5, #0x12b8
     d44: f8d3 60d8    	ldr.w	r6, [r3, #0xd8]
     d48: 5156         	str	r6, [r2, r5]
     d4a: f241 254c    	movw	r5, #0x124c
     d4e: 6ede         	ldr	r6, [r3, #0x6c]
     d50: 5156         	str	r6, [r2, r5]
     d52: f241 25bc    	movw	r5, #0x12bc
     d56: f8d3 60dc    	ldr.w	r6, [r3, #0xdc]
     d5a: 5156         	str	r6, [r2, r5]
     d5c: f241 2550    	movw	r5, #0x1250
     d60: 6f1e         	ldr	r6, [r3, #0x70]
     d62: 5156         	str	r6, [r2, r5]
     d64: f44f 5596    	mov.w	r5, #0x12c0
     d68: f8d3 60e0    	ldr.w	r6, [r3, #0xe0]
     d6c: 5156         	str	r6, [r2, r5]
     d6e: f241 2554    	movw	r5, #0x1254
     d72: 6f5e         	ldr	r6, [r3, #0x74]
     d74: 5156         	str	r6, [r2, r5]
     d76: f241 25c4    	movw	r5, #0x12c4
     d7a: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
     d7e: 5156         	str	r6, [r2, r5]
     d80: f241 2558    	movw	r5, #0x1258
     d84: 6f9e         	ldr	r6, [r3, #0x78]
     d86: 5156         	str	r6, [r2, r5]
     d88: f241 25c8    	movw	r5, #0x12c8
     d8c: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
     d90: 5156         	str	r6, [r2, r5]
     d92: f241 255c    	movw	r5, #0x125c
     d96: 6fde         	ldr	r6, [r3, #0x7c]
     d98: 5156         	str	r6, [r2, r5]
     d9a: f241 25cc    	movw	r5, #0x12cc
     d9e: f8d3 60ec    	ldr.w	r6, [r3, #0xec]
     da2: 5156         	str	r6, [r2, r5]
     da4: f44f 5593    	mov.w	r5, #0x1260
     da8: f8d3 6080    	ldr.w	r6, [r3, #0x80]
     dac: 5156         	str	r6, [r2, r5]
     dae: f241 25d0    	movw	r5, #0x12d0
     db2: f8d3 60f0    	ldr.w	r6, [r3, #0xf0]
     db6: 5156         	str	r6, [r2, r5]
     db8: f241 2564    	movw	r5, #0x1264
     dbc: f8d3 6084    	ldr.w	r6, [r3, #0x84]
     dc0: 5156         	str	r6, [r2, r5]
     dc2: f8d3 60f4    	ldr.w	r6, [r3, #0xf4]
     dc6: 5016         	str	r6, [r2, r0]
     dc8: f8d3 6088    	ldr.w	r6, [r3, #0x88]
     dcc: 5116         	str	r6, [r2, r4]
     dce: f8d3 60f8    	ldr.w	r6, [r3, #0xf8]
     dd2: f842 600a    	str.w	r6, [r2, r10]
     dd6: f8d3 608c    	ldr.w	r6, [r3, #0x8c]
     dda: f842 600e    	str.w	r6, [r2, lr]
     dde: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
     de2: f842 3009    	str.w	r3, [r2, r9]
     de6: f47f ae2f    	bne.w	0xa48 <Reset+0x640>     @ imm = #-0x3a2
     dea: f64f 7400    	movw	r4, #0xff00
     dee: f244 764f    	movw	r6, #0x474f
     df2: f2c2 0400    	movt	r4, #0x2000
     df6: f2c4 764f    	movt	r6, #0x474f
     dfa: e9dd 1003    	ldrd	r1, r0, [sp, #12]
     dfe: 4408         	add	r0, r1
     e00: 9004         	str	r0, [sp, #0x10]
     e02: 60e0         	str	r0, [r4, #0xc]
     e04: 2500         	movs	r5, #0x0
     e06: 9801         	ldr	r0, [sp, #0x4]
     e08: 9914         	ldr	r1, [sp, #0x50]
     e0a: 1a08         	subs	r0, r1, r0
     e0c: 6120         	str	r0, [r4, #0x10]
     e0e: 9808         	ldr	r0, [sp, #0x20]
     e10: 6160         	str	r0, [r4, #0x14]
     e12: f244 1044    	movw	r0, #0x4144
     e16: f2c5 2045    	movt	r0, #0x5245
     e1a: 6020         	str	r0, [r4]
     e1c: 6820         	ldr	r0, [r4]
     e1e: 42b0         	cmp	r0, r6
     e20: f43f ab5a    	beq.w	0x4d8 <Reset+0xd0>      @ imm = #-0x94c
     e24: bf10         	yield
     e26: 6820         	ldr	r0, [r4]
     e28: 42b0         	cmp	r0, r6
     e2a: f43f ab55    	beq.w	0x4d8 <Reset+0xd0>      @ imm = #-0x956
     e2e: bf10         	yield
     e30: 6820         	ldr	r0, [r4]
     e32: 42b0         	cmp	r0, r6
     e34: bf1e         	ittt	ne
     e36: bf10         	yieldne
     e38: 6820         	ldrne	r0, [r4]
     e3a: 42b0         	cmpne	r0, r6
     e3c: f43f ab4c    	beq.w	0x4d8 <Reset+0xd0>      @ imm = #-0x968
     e40: f7ff bb42    	b.w	0x4c8 <Reset+0xc0>      @ imm = #-0x97c
     e44: bf00         	nop
     e46: bf00         	nop
     e48: f644 6045    	movw	r0, #0x4e45
     e4c: f2c4 404f    	movt	r0, #0x444f
     e50: 6020         	str	r0, [r4]
     e52: bf00         	nop
     e54: bf00         	nop
     e56: bf00         	nop
     e58: bf10         	yield
     e5a: bf10         	yield
     e5c: bf10         	yield
     e5e: bf10         	yield
     e60: e7fa         	b	0xe58 <Reset+0xa50>     @ imm = #-0xc
     e62: bf00         	nop
     e64: bf00         	nop
     e66: bf00         	nop
     e68: f245 2021    	movw	r0, #0x5221
     e6c: f2c4 5052    	movt	r0, #0x4552
     e70: 6020         	str	r0, [r4]
     e72: bf00         	nop
     e74: bf00         	nop
     e76: bf00         	nop
     e78: bf10         	yield
     e7a: bf10         	yield
     e7c: bf10         	yield
     e7e: bf10         	yield
     e80: e7fa         	b	0xe78 <Reset+0xa70>     @ imm = #-0xc
     e82: d4d4         	bmi	0xe2e <Reset+0xa26>     @ imm = #-0x58
     e84: d4d4         	bmi	0xe30 <Reset+0xa28>     @ imm = #-0x58
     e86: d4d4         	bmi	0xe32 <Reset+0xa2a>     @ imm = #-0x58

00000e88 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>>:
     e88: b5f0         	push	{r4, r5, r6, r7, lr}
     e8a: af03         	add	r7, sp, #0xc
     e8c: e92d 0f00    	push.w	{r8, r9, r10, r11}
     e90: b081         	sub	sp, #0x4
     e92: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
     e96: f5ad 7d0a    	sub.w	sp, sp, #0x228
     e9a: eef6 aa00    	vmov.f32	s21, #5.000000e-01
     e9e: ed91 1a08    	vldr	s2, [r1, #32]
     ea2: ed91 2a24    	vldr	s4, [r1, #144]
     ea6: ed91 3a09    	vldr	s6, [r1, #36]
     eaa: ee31 1a01    	vadd.f32	s2, s2, s2
     eae: ed91 4a0a    	vldr	s8, [r1, #40]
     eb2: ee02 1a6a    	vmls.f32	s2, s4, s21
     eb6: ed91 5a0b    	vldr	s10, [r1, #44]
     eba: ee33 2a03    	vadd.f32	s4, s6, s6
     ebe: ed91 3a25    	vldr	s6, [r1, #148]
     ec2: ee03 2a6a    	vmls.f32	s4, s6, s21
     ec6: ed91 6a30    	vldr	s12, [r1, #192]
     eca: ee34 3a04    	vadd.f32	s6, s8, s8
     ece: ed91 4a26    	vldr	s8, [r1, #152]
     ed2: ee04 3a6a    	vmls.f32	s6, s8, s21
     ed6: ed8d 1a1e    	vstr	s2, [sp, #120]
     eda: ee35 4a05    	vadd.f32	s8, s10, s10
     ede: ed91 5a27    	vldr	s10, [r1, #156]
     ee2: ee05 4a6a    	vmls.f32	s8, s10, s21
     ee6: ed8d 2a1f    	vstr	s4, [sp, #124]
     eea: ed91 1a0c    	vldr	s2, [r1, #48]
     eee: ed91 5a0f    	vldr	s10, [r1, #60]
     ef2: ed91 2a28    	vldr	s4, [r1, #160]
     ef6: ed8d 3a20    	vstr	s6, [sp, #128]
     efa: ee31 1a01    	vadd.f32	s2, s2, s2
     efe: ed91 3a29    	vldr	s6, [r1, #164]
     f02: ee02 1a6a    	vmls.f32	s2, s4, s21
     f06: ed91 2a0d    	vldr	s4, [r1, #52]
     f0a: ed8d 4a21    	vstr	s8, [sp, #132]
     f0e: ee32 2a02    	vadd.f32	s4, s4, s4
     f12: ee03 2a6a    	vmls.f32	s4, s6, s21
     f16: ed91 3a0e    	vldr	s6, [r1, #56]
     f1a: ed91 4a2a    	vldr	s8, [r1, #168]
     f1e: ee33 3a03    	vadd.f32	s6, s6, s6
     f22: ee04 3a6a    	vmls.f32	s6, s8, s21
     f26: ed8d 1a22    	vstr	s2, [sp, #136]
     f2a: ee35 4a05    	vadd.f32	s8, s10, s10
     f2e: ed91 5a2b    	vldr	s10, [r1, #172]
     f32: ee05 4a6a    	vmls.f32	s8, s10, s21
     f36: ed91 1a10    	vldr	s2, [r1, #64]
     f3a: ed8d 2a23    	vstr	s4, [sp, #140]
     f3e: ed91 2a11    	vldr	s4, [r1, #68]
     f42: ed8d 3a24    	vstr	s6, [sp, #144]
     f46: ed91 3a2c    	vldr	s6, [r1, #176]
     f4a: ee31 1a01    	vadd.f32	s2, s2, s2
     f4e: ed91 5a2f    	vldr	s10, [r1, #188]
     f52: ee03 1a6a    	vmls.f32	s2, s6, s21
     f56: ed91 3a2d    	vldr	s6, [r1, #180]
     f5a: ed8d 4a25    	vstr	s8, [sp, #148]
     f5e: ee32 2a02    	vadd.f32	s4, s4, s4
     f62: ee03 2a6a    	vmls.f32	s4, s6, s21
     f66: ed91 3a12    	vldr	s6, [r1, #72]
     f6a: ed91 4a2e    	vldr	s8, [r1, #184]
     f6e: ee33 3a03    	vadd.f32	s6, s6, s6
     f72: ee04 3a6a    	vmls.f32	s6, s8, s21
     f76: ed91 4a13    	vldr	s8, [r1, #76]
     f7a: ee34 4a04    	vadd.f32	s8, s8, s8
     f7e: ed8d 1a26    	vstr	s2, [sp, #152]
     f82: ee05 4a6a    	vmls.f32	s8, s10, s21
     f86: ed8d 2a27    	vstr	s4, [sp, #156]
     f8a: ed91 1a15    	vldr	s2, [r1, #84]
     f8e: ed91 5a14    	vldr	s10, [r1, #80]
     f92: ed91 2a31    	vldr	s4, [r1, #196]
     f96: ed8d 3a28    	vstr	s6, [sp, #160]
     f9a: ee31 1a01    	vadd.f32	s2, s2, s2
     f9e: ed91 3a32    	vldr	s6, [r1, #200]
     fa2: ee02 1a6a    	vmls.f32	s2, s4, s21
     fa6: ed91 2a16    	vldr	s4, [r1, #88]
     faa: ed8d 4a29    	vstr	s8, [sp, #164]
     fae: ee32 2a02    	vadd.f32	s4, s4, s4
     fb2: ee03 2a6a    	vmls.f32	s4, s6, s21
     fb6: ed91 3a17    	vldr	s6, [r1, #92]
     fba: ed91 4a33    	vldr	s8, [r1, #204]
     fbe: ee33 3a03    	vadd.f32	s6, s6, s6
     fc2: ee04 3a6a    	vmls.f32	s6, s8, s21
     fc6: ed8d 1a2b    	vstr	s2, [sp, #172]
     fca: ee35 5a05    	vadd.f32	s10, s10, s10
     fce: ed91 1a1a    	vldr	s2, [r1, #104]
     fd2: ee06 5a6a    	vmls.f32	s10, s12, s21
     fd6: ed8d 2a2c    	vstr	s4, [sp, #176]
     fda: ed91 2a36    	vldr	s4, [r1, #216]
     fde: ee31 1a01    	vadd.f32	s2, s2, s2
     fe2: ed8d 3a2d    	vstr	s6, [sp, #180]
     fe6: ee02 1a6a    	vmls.f32	s2, s4, s21
     fea: ed91 2a1b    	vldr	s4, [r1, #108]
     fee: ed91 4a18    	vldr	s8, [r1, #96]
     ff2: ed91 3a37    	vldr	s6, [r1, #220]
     ff6: ee32 2a02    	vadd.f32	s4, s4, s4
     ffa: ee03 2a6a    	vmls.f32	s4, s6, s21
     ffe: ed8d 5a2a    	vstr	s10, [sp, #168]
    1002: ed91 5a34    	vldr	s10, [r1, #208]
    1006: ee34 4a04    	vadd.f32	s8, s8, s8
    100a: ee05 4a6a    	vmls.f32	s8, s10, s21
    100e: ed91 5a19    	vldr	s10, [r1, #100]
    1012: ed91 6a35    	vldr	s12, [r1, #212]
    1016: ee35 5a05    	vadd.f32	s10, s10, s10
    101a: ee06 5a6a    	vmls.f32	s10, s12, s21
    101e: ed8d 1a30    	vstr	s2, [sp, #192]
    1022: ed8d 2a31    	vstr	s4, [sp, #196]
    1026: ed91 1a1f    	vldr	s2, [r1, #124]
    102a: ed91 2a3b    	vldr	s4, [r1, #236]
    102e: ee31 da01    	vadd.f32	s26, s2, s2
    1032: ee02 da6a    	vmls.f32	s26, s4, s21
    1036: ed91 1a20    	vldr	s2, [r1, #128]
    103a: ed91 2a3c    	vldr	s4, [r1, #240]
    103e: ed8d 4a2e    	vstr	s8, [sp, #184]
    1042: ed91 3a1c    	vldr	s6, [r1, #112]
    1046: ee31 ca01    	vadd.f32	s24, s2, s2
    104a: ed91 4a38    	vldr	s8, [r1, #224]
    104e: ee02 ca6a    	vmls.f32	s24, s4, s21
    1052: ed91 1a21    	vldr	s2, [r1, #132]
    1056: ed8d 5a2f    	vstr	s10, [sp, #188]
    105a: ed91 2a3d    	vldr	s4, [r1, #244]
    105e: ee33 3a03    	vadd.f32	s6, s6, s6
    1062: ee04 3a6a    	vmls.f32	s6, s8, s21
    1066: ed91 4a1d    	vldr	s8, [r1, #116]
    106a: ed91 5a39    	vldr	s10, [r1, #228]
    106e: ee71 8a01    	vadd.f32	s17, s2, s2
    1072: ee42 8a6a    	vmls.f32	s17, s4, s21
    1076: ed91 1a22    	vldr	s2, [r1, #136]
    107a: ed91 2a3e    	vldr	s4, [r1, #248]
    107e: ee34 4a04    	vadd.f32	s8, s8, s8
    1082: ee05 4a6a    	vmls.f32	s8, s10, s21
    1086: ed91 5a1e    	vldr	s10, [r1, #120]
    108a: ed91 6a3a    	vldr	s12, [r1, #232]
    108e: ee31 aa01    	vadd.f32	s20, s2, s2
    1092: ee02 aa6a    	vmls.f32	s20, s4, s21
    1096: ed91 1a23    	vldr	s2, [r1, #140]
    109a: ed91 2a3f    	vldr	s4, [r1, #252]
    109e: ee35 5a05    	vadd.f32	s10, s10, s10
    10a2: ee06 5a6a    	vmls.f32	s10, s12, s21
    10a6: 460c         	mov	r4, r1
    10a8: ee31 9a01    	vadd.f32	s18, s2, s2
    10ac: 4683         	mov	r11, r0
    10ae: ee02 9a6a    	vmls.f32	s18, s4, s21
    10b2: a83a         	add	r0, sp, #0xe8
    10b4: a91e         	add	r1, sp, #0x78
    10b6: ed8d 3a32    	vstr	s6, [sp, #200]
    10ba: ed8d 4a33    	vstr	s8, [sp, #204]
    10be: eeb0 8a40    	vmov.f32	s16, s0
    10c2: ed8d 5a34    	vstr	s10, [sp, #208]
    10c6: ed8d da35    	vstr	s26, [sp, #212]
    10ca: ed8d ca36    	vstr	s24, [sp, #216]
    10ce: edcd 8a37    	vstr	s17, [sp, #220]
    10d2: ed8d aa38    	vstr	s20, [sp, #224]
    10d6: ed8d 9a39    	vstr	s18, [sp, #228]
    10da: f002 f885    	bl	0x31e8 <orange_dsp::generated_packed::origin::<5>> @ imm = #0x210a
    10de: f50d 78b0    	add.w	r8, sp, #0x160
    10e2: 4620         	mov	r0, r4
    10e4: 4641         	mov	r1, r8
    10e6: ed9f 2ad5    	vldr	s4, [pc, #852]          @ 0x143c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x5b4>
    10ea: c86c         	ldm	r0!, {r2, r3, r5, r6}
    10ec: c16c         	stm	r1!, {r2, r3, r5, r6}
    10ee: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
    10f2: c16c         	stm	r1!, {r2, r3, r5, r6}
    10f4: ed9d eb3a    	vldr	d14, [sp, #232]
    10f8: 2000         	movs	r0, #0x0
    10fa: 9060         	str	r0, [sp, #0x180]
    10fc: ed9f 0bd0    	vldr	d0, [pc, #832]          @ 0x1440 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x5b8>
    1100: e9cd 0063    	strd	r0, r0, [sp, #396]
    1104: ee8e 0b00    	vdiv.f64	d0, d14, d0
    1108: e9cd 0061    	strd	r0, r0, [sp, #388]
    110c: eeb7 1bc0    	vcvt.f32.f64	s2, d0
    1110: ed8d 1a58    	vstr	s2, [sp, #352]
    1114: eeb0 0ac1    	vabs.f32	s0, s2
    1118: eeb4 0a42    	vcmp.f32	s0, s4
    111c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1120: d838         	bhi	0x1194 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x30c> @ imm = #0x70
    1122: ed9f 3ac2    	vldr	s6, [pc, #776]          @ 0x142c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x5a4>
    1126: eeb7 2bce    	vcvt.f32.f64	s4, d14
    112a: ee01 2a03    	vmla.f32	s4, s2, s6
    112e: ee12 0a10    	vmov	r0, s4
    1132: f020 4000    	bic	r0, r0, #0x80000000
    1136: f1b0 4fff    	cmp.w	r0, #0x7f800000
    113a: da2b         	bge	0x1194 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x30c> @ imm = #0x56
    113c: eeb0 1ac2    	vabs.f32	s2, s4
    1140: ed9f 4af0    	vldr	s8, [pc, #960]          @ 0x1504 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x67c>
    1144: ee81 1a04    	vdiv.f32	s2, s2, s8
    1148: ed9f 4aef    	vldr	s8, [pc, #956]          @ 0x1508 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x680>
    114c: eeb4 1a44    	vcmp.f32	s2, s8
    1150: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1154: d81e         	bhi	0x1194 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x30c> @ imm = #0x3c
    1156: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    115a: eeb4 0a40    	vcmp.f32	s0, s0
    115e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1162: ee82 2a03    	vdiv.f32	s4, s4, s6
    1166: ed9f 3aef    	vldr	s6, [pc, #956]          @ 0x1524 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x69c>
    116a: fe14 0a00    	vselvs.f32	s0, s8, s0
    116e: eeb0 2ac2    	vabs.f32	s4, s4
    1172: eeb4 0a44    	vcmp.f32	s0, s8
    1176: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    117a: fe30 0a04    	vselgt.f32	s0, s0, s8
    117e: ee20 0a03    	vmul.f32	s0, s0, s6
    1182: ed9f 3ae9    	vldr	s6, [pc, #932]          @ 0x1528 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6a0>
    1186: fe80 0a43    	vminnm.f32	s0, s0, s6
    118a: eeb4 2a40    	vcmp.f32	s4, s0
    118e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1192: d951         	bls	0x1238 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x3b0> @ imm = #0xa2
    1194: 4620         	mov	r0, r4
    1196: 4641         	mov	r1, r8
    1198: eeb0 0b4e    	vmov.f64	d0, d14
    119c: c86c         	ldm	r0!, {r2, r3, r5, r6}
    119e: c16c         	stm	r1!, {r2, r3, r5, r6}
    11a0: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
    11a4: c16c         	stm	r1!, {r2, r3, r5, r6}
    11a6: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    11aa: 4641         	mov	r1, r8
    11ac: 3001         	adds	r0, #0x1
    11ae: f8c4 010c    	str.w	r0, [r4, #0x10c]
    11b2: a865         	add	r0, sp, #0x194
    11b4: f002 fd70    	bl	0x3c98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>> @ imm = #0x2ae0
    11b8: f89d 0199    	ldrb.w	r0, [sp, #0x199]
    11bc: f89d 9198    	ldrb.w	r9, [sp, #0x198]
    11c0: b190         	cbz	r0, 0x11e8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x360> @ imm = #0x24
    11c2: ed9d 0a65    	vldr	s0, [sp, #404]
    11c6: ed9f 1ad9    	vldr	s2, [pc, #868]          @ 0x152c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6a4>
    11ca: eeb4 0a40    	vcmp.f32	s0, s0
    11ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    11d2: fe11 0a00    	vselvs.f32	s0, s2, s0
    11d6: eeb5 0a40    	vcmp.f32	s0, #0
    11da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    11de: fe70 da01    	vselgt.f32	s27, s0, s2
    11e2: e03e         	b	0x1262 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x3da> @ imm = #0x7c
    11e4: bf00         	nop
    11e6: bf00         	nop
    11e8: eeb0 0b4e    	vmov.f64	d0, d14
    11ec: a865         	add	r0, sp, #0x194
    11ee: a958         	add	r1, sp, #0x160
    11f0: 2600         	movs	r6, #0x0
    11f2: 9658         	str	r6, [sp, #0x160]
    11f4: f002 fd50    	bl	0x3c98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>> @ imm = #0x2aa0
    11f8: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    11fc: ed9d 0a65    	vldr	s0, [sp, #404]
    1200: 3001         	adds	r0, #0x1
    1202: eeb4 0a40    	vcmp.f32	s0, s0
    1206: bf28         	it	hs
    1208: f04f 30ff    	movhs.w	r0, #0xffffffff
    120c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1210: ed9f 1ac6    	vldr	s2, [pc, #792]          @ 0x152c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6a4>
    1214: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    1218: fe11 2a00    	vselvs.f32	s4, s2, s0
    121c: f89d 2199    	ldrb.w	r2, [sp, #0x199]
    1220: 4489         	add	r9, r1
    1222: f8c4 011c    	str.w	r0, [r4, #0x11c]
    1226: eeb5 2a40    	vcmp.f32	s4, #0
    122a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    122e: fe72 da01    	vselgt.f32	s27, s4, s2
    1232: b9b2         	cbnz	r2, 0x1262 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x3da> @ imm = #0x2c
    1234: e287         	b	0x1746 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x8be> @ imm = #0x50e
    1236: bf00         	nop
    1238: eeb4 1a41    	vcmp.f32	s2, s2
    123c: ed9f 0abb    	vldr	s0, [pc, #748]          @ 0x152c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6a4>
    1240: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1244: f8d4 0100    	ldr.w	r0, [r4, #0x100]
    1248: f04f 0900    	mov.w	r9, #0x0
    124c: fe10 1a01    	vselvs.f32	s2, s0, s2
    1250: 3001         	adds	r0, #0x1
    1252: f8c4 0100    	str.w	r0, [r4, #0x100]
    1256: eeb5 1a40    	vcmp.f32	s2, #0
    125a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    125e: fe71 da00    	vselgt.f32	s27, s2, s0
    1262: f50d 7cca    	add.w	r12, sp, #0x194
    1266: 4642         	mov	r2, r8
    1268: 4661         	mov	r1, r12
    126a: eddf 9ab1    	vldr	s19, [pc, #708]         @ 0x1530 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6a8>
    126e: ca69         	ldm	r2!, {r0, r3, r5, r6}
    1270: c169         	stm	r1!, {r0, r3, r5, r6}
    1272: e892 0069    	ldm.w	r2, {r0, r3, r5, r6}
    1276: c169         	stm	r1!, {r0, r3, r5, r6}
    1278: ed9d 0a58    	vldr	s0, [sp, #352]
    127c: eefa ca0b    	vmov.f32	s25, #-1.350000e+01
    1280: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    1284: ed9d 3a5a    	vldr	s6, [sp, #360]
    1288: ed9d eb4a    	vldr	d14, [sp, #296]
    128c: eef2 ba0b    	vmov.f32	s23, #1.350000e+01
    1290: ed9f 6aa8    	vldr	s12, [pc, #672]         @ 0x1534 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6ac>
    1294: ed9f 2ba8    	vldr	d2, [pc, #672]          @ 0x1538 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6b0>
    1298: eeb0 0b4e    	vmov.f64	d0, d14
    129c: ee01 0b02    	vmla.f64	d0, d1, d2
    12a0: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    12a4: ed9d 1a5b    	vldr	s2, [sp, #364]
    12a8: ed9f 5ba5    	vldr	d5, [pc, #660]          @ 0x1540 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6b8>
    12ac: ed9d 3a5c    	vldr	s6, [sp, #368]
    12b0: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    12b4: eeb0 4b40    	vmov.f64	d4, d0
    12b8: ee02 4b05    	vmla.f64	d4, d2, d5
    12bc: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    12c0: ee01 4b05    	vmla.f64	d4, d1, d5
    12c4: ed9d 1a5d    	vldr	s2, [sp, #372]
    12c8: ee02 4b05    	vmla.f64	d4, d2, d5
    12cc: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    12d0: ed9d 2a5e    	vldr	s4, [sp, #376]
    12d4: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    12d8: ed9f 3b9b    	vldr	d3, [pc, #620]          @ 0x1548 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6c0>
    12dc: ee01 4b05    	vmla.f64	d4, d1, d5
    12e0: ed9d 1a5f    	vldr	s2, [sp, #380]
    12e4: ee02 4b05    	vmla.f64	d4, d2, d5
    12e8: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    12ec: ee2d 2a29    	vmul.f32	s4, s26, s19
    12f0: ee01 4b05    	vmla.f64	d4, d1, d5
    12f4: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    12f8: ee81 1b03    	vdiv.f64	d1, d1, d3
    12fc: ed9f 3b94    	vldr	d3, [pc, #592]          @ 0x1550 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6c8>
    1300: ee04 1b03    	vmla.f64	d1, d4, d3
    1304: ed9f 4a81    	vldr	s8, [pc, #516]          @ 0x150c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x684>
    1308: ed9f 3b93    	vldr	d3, [pc, #588]          @ 0x1558 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6d0>
    130c: ee32 5a04    	vadd.f32	s10, s4, s8
    1310: ee81 1b03    	vdiv.f64	d1, d1, d3
    1314: ed9f 3a7e    	vldr	s6, [pc, #504]          @ 0x1510 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x688>
    1318: ee32 3a03    	vadd.f32	s6, s4, s6
    131c: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    1320: ee83 4a06    	vdiv.f32	s8, s6, s12
    1324: eef4 ca41    	vcmp.f32	s25, s2
    1328: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    132c: ee85 3a06    	vdiv.f32	s6, s10, s12
    1330: fe3c 1a81    	vselgt.f32	s2, s25, s2
    1334: eeb4 1a6b    	vcmp.f32	s2, s23
    1338: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    133c: eeb4 4a43    	vcmp.f32	s8, s6
    1340: fe3b 1a81    	vselgt.f32	s2, s23, s2
    1344: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1348: ed8d 1a59    	vstr	s2, [sp, #356]
    134c: f201 866c    	bhi.w	0x3028 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x21a0> @ imm = #0x1cd8
    1350: eeb7 5ac1    	vcvt.f64.f32	d5, s2
    1354: 2100         	movs	r1, #0x0
    1356: ed9f 6b82    	vldr	d6, [pc, #520]          @ 0x1560 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6d8>
    135a: 2000         	movs	r0, #0x0
    135c: ee05 0b06    	vmla.f64	d0, d5, d6
    1360: ed9f 5ade    	vldr	s10, [pc, #888]         @ 0x16dc <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x854>
    1364: ed9d fb3c    	vldr	d15, [sp, #240]
    1368: ed9f 6add    	vldr	s12, [pc, #884]         @ 0x16e0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x858>
    136c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    1370: ee20 5a05    	vmul.f32	s10, s0, s10
    1374: ed9f 0adb    	vldr	s0, [pc, #876]          @ 0x16e4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x85c>
    1378: ee02 5a00    	vmla.f32	s10, s4, s0
    137c: eeb7 2bcf    	vcvt.f32.f64	s4, d15
    1380: ee01 2a06    	vmla.f32	s4, s2, s12
    1384: eeb4 4a45    	vcmp.f32	s8, s10
    1388: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    138c: eeb0 6ac2    	vabs.f32	s12, s4
    1390: fe34 0a05    	vselgt.f32	s0, s8, s10
    1394: eeb4 0a43    	vcmp.f32	s0, s6
    1398: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    139c: eeb4 5a44    	vcmp.f32	s10, s8
    13a0: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    13a4: fe33 0a00    	vselgt.f32	s0, s6, s0
    13a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13ac: bfc8         	it	gt
    13ae: 2101         	movgt	r1, #0x1
    13b0: eeb4 5a43    	vcmp.f32	s10, s6
    13b4: eebf 5a00    	vmov.f32	s10, #-1.000000e+00
    13b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13bc: eeb5 2a40    	vcmp.f32	s4, #0
    13c0: ed9f 2a5a    	vldr	s4, [pc, #360]          @ 0x152c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6a4>
    13c4: eeb0 3a42    	vmov.f32	s6, s4
    13c8: bf48         	it	mi
    13ca: 2001         	movmi	r0, #0x1
    13cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13d0: bf48         	it	mi
    13d2: eeb0 3a45    	vmovmi.f32	s6, s10
    13d6: eeb0 5a42    	vmov.f32	s10, s4
    13da: ea01 0100    	and.w	r1, r1, r0
    13de: fe34 7a03    	vselgt.f32	s14, s8, s6
    13e2: ed9f 3ade    	vldr	s6, [pc, #888]          @ 0x175c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x8d4>
    13e6: eeb4 6a43    	vcmp.f32	s12, s6
    13ea: eeb0 3a42    	vmov.f32	s6, s4
    13ee: eeb0 4a42    	vmov.f32	s8, s4
    13f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13f6: f280 80f2    	bge.w	0x15de <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x756> @ imm = #0x1e4
    13fa: ed9f 2ad9    	vldr	s4, [pc, #868]          @ 0x1760 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x8d8>
    13fe: eeb4 6a42    	vcmp.f32	s12, s4
    1402: ed9f 3a4a    	vldr	s6, [pc, #296]          @ 0x152c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6a4>
    1406: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    140a: d911         	bls	0x1430 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x5a8> @ imm = #0x22
    140c: ed9f 2ad5    	vldr	s4, [pc, #852]          @ 0x1764 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x8dc>
    1410: eeb4 6a42    	vcmp.f32	s12, s4
    1414: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1418: d916         	bls	0x1448 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x5c0> @ imm = #0x2c
    141a: ed9f 2ad3    	vldr	s4, [pc, #844]          @ 0x1768 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x8e0>
    141e: ee36 4a02    	vadd.f32	s8, s12, s4
    1422: ed9f 5ad2    	vldr	s10, [pc, #840]         @ 0x176c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x8e4>
    1426: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    142a: e015         	b	0x1458 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x5d0> @ imm = #0x2a
    142c: 09 d5 19 b8  	.word	0xb819d509
    1430: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    1434: eeb0 5a43    	vmov.f32	s10, s6
    1438: e012         	b	0x1460 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x5d8> @ imm = #0x24
    143a: bf00         	nop
    143c: 93 18 36 41  	.word	0x41361893
    1440: 80 e5 70 28  	.word	0x2870e580
    1444: a1 3a 03 3f  	.word	0x3f033aa1
    1448: ed9f 2aed    	vldr	s4, [pc, #948]          @ 0x1800 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x978>
    144c: ee36 4a02    	vadd.f32	s8, s12, s4
    1450: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    1454: ed9f 5aeb    	vldr	s10, [pc, #940]         @ 0x1804 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x97c>
    1458: ee04 2a05    	vmla.f32	s4, s8, s10
    145c: ee27 5a05    	vmul.f32	s10, s14, s10
    1460: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    1464: ee34 2a42    	vsub.f32	s4, s8, s4
    1468: fe82 4a03    	vmaxnm.f32	s8, s4, s6
    146c: eeb1 2a45    	vneg.f32	s4, s10
    1470: eeb5 4a40    	vcmp.f32	s8, #0
    1474: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1478: d94e         	bls	0x1518 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x690> @ imm = #0x9c
    147a: eeb0 3ac0    	vabs.f32	s6, s0
    147e: eeb4 3a44    	vcmp.f32	s6, s8
    1482: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1486: f240 807f    	bls.w	0x1588 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x700> @ imm = #0xfe
    148a: ee84 5a03    	vdiv.f32	s10, s8, s6
    148e: ee25 3a05    	vmul.f32	s6, s10, s10
    1492: ee23 3a03    	vmul.f32	s6, s6, s6
    1496: ee23 3a03    	vmul.f32	s6, s6, s6
    149a: ee23 6a03    	vmul.f32	s12, s6, s6
    149e: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    14a2: ee36 7a03    	vadd.f32	s14, s12, s6
    14a6: eef0 0a43    	vmov.f32	s1, s6
    14aa: eeb4 7a43    	vcmp.f32	s14, s6
    14ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    14b2: d009         	beq	0x14c8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x640> @ imm = #0x12
    14b4: eef0 0a47    	vmov.f32	s1, s14
    14b8: eef1 0ae0    	vsqrt.f32	s1, s1
    14bc: eef1 0ae0    	vsqrt.f32	s1, s1
    14c0: eef1 0ae0    	vsqrt.f32	s1, s1
    14c4: eef1 0ae0    	vsqrt.f32	s1, s1
    14c8: ee83 3a20    	vdiv.f32	s6, s6, s1
    14cc: eeb4 0a40    	vcmp.f32	s0, s0
    14d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    14d4: ee83 7a07    	vdiv.f32	s14, s6, s14
    14d8: f181 8662    	bvs.w	0x31a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2318> @ imm = #0x1cc4
    14dc: ee10 0a10    	vmov	r0, s0
    14e0: f04f 527e    	mov.w	r2, #0x3f800000
    14e4: f362 001e    	bfi	r0, r2, #0, #31
    14e8: ee00 0a90    	vmov	s1, r0
    14ec: ee20 4a84    	vmul.f32	s8, s1, s8
    14f0: ee24 3a03    	vmul.f32	s6, s8, s6
    14f4: ee20 4a87    	vmul.f32	s8, s1, s14
    14f8: ee25 5a06    	vmul.f32	s10, s10, s12
    14fc: ee25 5a07    	vmul.f32	s10, s10, s14
    1500: e06d         	b	0x15de <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x756> @ imm = #0xda
    1502: bf00         	nop
    1504: 0a d7 23 3c  	.word	0x3c23d70a
    1508: 17 b7 d1 38  	.word	0x38d1b717
    150c: 00 24 74 4b  	.word	0x4b742400
    1510: 00 24 74 cb  	.word	0xcb742400
    1514: 00 bf 00 bf  	.word	0xbf00bf00
    1518: eeb0 5a43    	vmov.f32	s10, s6
    151c: eeb0 4a43    	vmov.f32	s8, s6
    1520: e05d         	b	0x15de <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x756> @ imm = #0xba
    1522: bf00         	nop
    1524: bd 37 06 36  	.word	0x360637bd
    1528: ac c5 a7 37  	.word	0x37a7c5ac
    152c: 00 00 00 00  	.word	0x00000000
    1530: 00 80 bb 47  	.word	0x47bb8000
    1534: 00 a0 0c 48  	.word	0x480ca000
    1538: a2 0c d2 2e  	.word	0x2ed20ca2
    153c: ca fe ef 3f  	.word	0x3feffeca
    1540: 00 00 00 00  	.word	0x00000000
    1544: 00 00 00 00  	.word	0x00000000
    1548: a7 2a 45 4f  	.word	0x4f452aa7
    154c: ed 97 01 41  	.word	0x410197ed
    1550: 26 88 21 19  	.word	0x19218826
    1554: 2f cc 65 40  	.word	0x4065cc2f
    1558: e7 0c 1b 48  	.word	0x481b0ce7
    155c: 2d 35 17 40  	.word	0x4017352d
    1560: 1f 89 9b cf  	.word	0xcf9b891f
    1564: ab 32 9c bf  	.word	0xbf9c32ab
    1568: ab 14 f2 db  	.word	0xdbf214ab
    156c: ec cd d7 3f  	.word	0x3fd7cdec
    1570: c4 a9 9f 7b  	.word	0x7b9fa9c4
    1574: 67 dd c7 3f  	.word	0x3fc7dd67
    1578: 26 88 21 19  	.word	0x19218826
    157c: 2f cc 65 40  	.word	0x4065cc2f
    1580: c6 e6 eb 5a  	.word	0x5aebe6c6
    1584: d9 83 57 40  	.word	0x405783d9
    1588: ee80 3a04    	vdiv.f32	s6, s0, s8
    158c: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    1590: ee23 3a03    	vmul.f32	s6, s6, s6
    1594: eeb0 7a46    	vmov.f32	s14, s12
    1598: ee23 3a03    	vmul.f32	s6, s6, s6
    159c: ee23 3a03    	vmul.f32	s6, s6, s6
    15a0: ee23 3a03    	vmul.f32	s6, s6, s6
    15a4: ee33 5a06    	vadd.f32	s10, s6, s12
    15a8: eeb4 5a46    	vcmp.f32	s10, s12
    15ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    15b0: d009         	beq	0x15c6 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x73e> @ imm = #0x12
    15b2: eeb0 7a45    	vmov.f32	s14, s10
    15b6: eeb1 7ac7    	vsqrt.f32	s14, s14
    15ba: eeb1 7ac7    	vsqrt.f32	s14, s14
    15be: eeb1 7ac7    	vsqrt.f32	s14, s14
    15c2: eeb1 7ac7    	vsqrt.f32	s14, s14
    15c6: ee86 6a07    	vdiv.f32	s12, s12, s14
    15ca: ee20 3a03    	vmul.f32	s6, s0, s6
    15ce: ee86 5a05    	vdiv.f32	s10, s12, s10
    15d2: ee83 4a04    	vdiv.f32	s8, s6, s8
    15d6: ee20 3a06    	vmul.f32	s6, s0, s12
    15da: ee24 4a05    	vmul.f32	s8, s8, s10
    15de: ee31 6a43    	vsub.f32	s12, s2, s6
    15e2: 2900         	cmp	r1, #0x0
    15e4: ed9f 7a88    	vldr	s14, [pc, #544]         @ 0x1808 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x980>
    15e8: ed9f 3a88    	vldr	s6, [pc, #544]          @ 0x180c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x984>
    15ec: ee16 0a10    	vmov	r0, s12
    15f0: fe03 7a07    	vseleq.f32	s14, s6, s14
    15f4: f020 4000    	bic	r0, r0, #0x80000000
    15f8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    15fc: da3c         	bge	0x1678 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x7f0> @ imm = #0x78
    15fe: eeb0 3ac6    	vabs.f32	s6, s12
    1602: eef2 0a0e    	vmov.f32	s1, #1.500000e+01
    1606: ee83 3a20    	vdiv.f32	s6, s6, s1
    160a: ed5f 0a41    	vldr	s1, [pc, #-260]         @ 0x1508 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x680>
    160e: eeb4 3a60    	vcmp.f32	s6, s1
    1612: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1616: d82f         	bhi	0x1678 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x7f0> @ imm = #0x5e
    1618: ee22 2a04    	vmul.f32	s4, s4, s8
    161c: ee27 4a05    	vmul.f32	s8, s14, s10
    1620: ed9f 5a7b    	vldr	s10, [pc, #492]         @ 0x1810 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x988>
    1624: eeb0 1ac1    	vabs.f32	s2, s2
    1628: ee22 2a05    	vmul.f32	s4, s4, s10
    162c: ed9f 5a79    	vldr	s10, [pc, #484]         @ 0x1814 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x98c>
    1630: ee04 2a05    	vmla.f32	s4, s8, s10
    1634: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    1638: eeb4 1a41    	vcmp.f32	s2, s2
    163c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1640: fe14 1a01    	vselvs.f32	s2, s8, s2
    1644: ee32 2a04    	vadd.f32	s4, s4, s8
    1648: eeb4 1a44    	vcmp.f32	s2, s8
    164c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1650: ee86 2a02    	vdiv.f32	s4, s12, s4
    1654: fe31 1a04    	vselgt.f32	s2, s2, s8
    1658: ed1f 4a4e    	vldr	s8, [pc, #-312]         @ 0x1524 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x69c>
    165c: eeb0 2ac2    	vabs.f32	s4, s4
    1660: ee21 1a04    	vmul.f32	s2, s2, s8
    1664: ed1f 4a50    	vldr	s8, [pc, #-320]         @ 0x1528 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6a0>
    1668: fe81 1a44    	vminnm.f32	s2, s2, s8
    166c: eeb4 2a41    	vcmp.f32	s4, s2
    1670: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1674: f240 807c    	bls.w	0x1770 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x8e8> @ imm = #0xf8
    1678: 4640         	mov	r0, r8
    167a: eeb0 2a4d    	vmov.f32	s4, s26
    167e: e8bc 004e    	ldm.w	r12!, {r1, r2, r3, r6}
    1682: c04e         	stm	r0!, {r1, r2, r3, r6}
    1684: e89c 004e    	ldm.w	r12, {r1, r2, r3, r6}
    1688: c04e         	stm	r0!, {r1, r2, r3, r6}
    168a: eeb0 0b4f    	vmov.f64	d0, d15
    168e: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    1692: eeb0 1b4e    	vmov.f64	d1, d14
    1696: 3001         	adds	r0, #0x1
    1698: f8c4 010c    	str.w	r0, [r4, #0x10c]
    169c: a865         	add	r0, sp, #0x194
    169e: aa60         	add	r2, sp, #0x180
    16a0: 4641         	mov	r1, r8
    16a2: f002 fd51    	bl	0x4148 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>> @ imm = #0x2aa2
    16a6: f89d 0199    	ldrb.w	r0, [sp, #0x199]
    16aa: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    16ae: 4489         	add	r9, r1
    16b0: b1d0         	cbz	r0, 0x16e8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x860> @ imm = #0x34
    16b2: eef4 da6d    	vcmp.f32	s27, s27
    16b6: ed9d 0a65    	vldr	s0, [sp, #404]
    16ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16be: eeb4 0a40    	vcmp.f32	s0, s0
    16c2: fe10 1a2d    	vselvs.f32	s2, s0, s27
    16c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16ca: fe11 0a00    	vselvs.f32	s0, s2, s0
    16ce: eeb4 1a40    	vcmp.f32	s2, s0
    16d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16d6: fe31 da00    	vselgt.f32	s26, s2, s0
    16da: e062         	b	0x17a2 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x91a> @ imm = #0xc4
    16dc: 79 61 2e 43  	.word	0x432e6179
    16e0: ab aa a0 b8  	.word	0xb8a0aaab
    16e4: 50 d0 e8 36  	.word	0x36e8d050
    16e8: eeb0 0b4f    	vmov.f64	d0, d15
    16ec: a865         	add	r0, sp, #0x194
    16ee: eeb0 1b4e    	vmov.f64	d1, d14
    16f2: a958         	add	r1, sp, #0x160
    16f4: eeb0 2a4d    	vmov.f32	s4, s26
    16f8: aa60         	add	r2, sp, #0x180
    16fa: 2600         	movs	r6, #0x0
    16fc: 9659         	str	r6, [sp, #0x164]
    16fe: f002 fd23    	bl	0x4148 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>> @ imm = #0x2a46
    1702: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    1706: eef4 da6d    	vcmp.f32	s27, s27
    170a: 3001         	adds	r0, #0x1
    170c: bf28         	it	hs
    170e: f04f 30ff    	movhs.w	r0, #0xffffffff
    1712: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1716: ed9d 0a65    	vldr	s0, [sp, #404]
    171a: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    171e: fe10 1a2d    	vselvs.f32	s2, s0, s27
    1722: f89d 2199    	ldrb.w	r2, [sp, #0x199]
    1726: eeb4 0a40    	vcmp.f32	s0, s0
    172a: 4489         	add	r9, r1
    172c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1730: f8c4 011c    	str.w	r0, [r4, #0x11c]
    1734: fe11 2a00    	vselvs.f32	s4, s2, s0
    1738: eeb4 1a42    	vcmp.f32	s2, s4
    173c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1740: fe31 da02    	vselgt.f32	s26, s2, s4
    1744: bb6a         	cbnz	r2, 0x17a2 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x91a> @ imm = #0x5a
    1746: 69e0         	ldr	r0, [r4, #0x1c]
    1748: f8cb 0000    	str.w	r0, [r11]
    174c: ed8b 0a01    	vstr	s0, [r11, #4]
    1750: f88b 9008    	strb.w	r9, [r11, #0x8]
    1754: f88b 6009    	strb.w	r6, [r11, #0x9]
    1758: f001 bbae    	b.w	0x2eb8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2030> @ imm = #0x175c
    175c: 0a d7 23 3d  	.word	0x3d23d70a
    1760: 7c f2 b0 3a  	.word	0x3ab0f27c
    1764: a6 9b c4 3b  	.word	0x3bc49ba6
    1768: a6 9b c4 bb  	.word	0xbbc49ba6
    176c: 79 78 b0 43  	.word	0x43b07879
    1770: eef4 da6d    	vcmp.f32	s27, s27
    1774: f8d4 0104    	ldr.w	r0, [r4, #0x104]
    1778: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    177c: eeb4 3a43    	vcmp.f32	s6, s6
    1780: ed8d 0a60    	vstr	s0, [sp, #384]
    1784: fe13 1a2d    	vselvs.f32	s2, s6, s27
    1788: 3001         	adds	r0, #0x1
    178a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    178e: f8c4 0104    	str.w	r0, [r4, #0x104]
    1792: fe11 2a03    	vselvs.f32	s4, s2, s6
    1796: eeb4 1a42    	vcmp.f32	s2, s4
    179a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    179e: fe31 da02    	vselgt.f32	s26, s2, s4
    17a2: eeb0 0a4c    	vmov.f32	s0, s24
    17a6: f50d 7aca    	add.w	r10, sp, #0x194
    17aa: f50d 78b0    	add.w	r8, sp, #0x160
    17ae: aa3a         	add	r2, sp, #0xe8
    17b0: ab60         	add	r3, sp, #0x180
    17b2: 4650         	mov	r0, r10
    17b4: 4641         	mov	r1, r8
    17b6: f003 f8bb    	bl	0x4930 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>> @ imm = #0x3176
    17ba: f89d 0199    	ldrb.w	r0, [sp, #0x199]
    17be: ed8d 9a1d    	vstr	s18, [sp, #116]
    17c2: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    17c6: 2801         	cmp	r0, #0x1
    17c8: 4489         	add	r9, r1
    17ca: d125         	bne	0x1818 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x990> @ imm = #0x4a
    17cc: eeb4 da4d    	vcmp.f32	s26, s26
    17d0: ed9d 0a65    	vldr	s0, [sp, #404]
    17d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17d8: eeb4 0a40    	vcmp.f32	s0, s0
    17dc: ed8d 8a0d    	vstr	s16, [sp, #52]
    17e0: fe10 1a0d    	vselvs.f32	s2, s0, s26
    17e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17e8: fe11 0a00    	vselvs.f32	s0, s2, s0
    17ec: eeb4 1a40    	vcmp.f32	s2, s0
    17f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17f4: fe31 0a00    	vselgt.f32	s0, s2, s0
    17f8: ed8d 0a1c    	vstr	s0, [sp, #112]
    17fc: e03f         	b	0x187e <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x9f6> @ imm = #0x7e
    17fe: bf00         	nop
    1800: 7c f2 b0 ba  	.word	0xbab0f27c
    1804: 53 4a a1 43  	.word	0x43a14a53
    1808: 79 61 2e c3  	.word	0xc32e6179
    180c: 00 00 00 80  	.word	0x80000000
    1810: ab aa a0 38  	.word	0x38a0aaab
    1814: 5e 95 e1 bc  	.word	0xbce1955e
    1818: eeb0 0a4c    	vmov.f32	s0, s24
    181c: a865         	add	r0, sp, #0x194
    181e: a958         	add	r1, sp, #0x160
    1820: aa3a         	add	r2, sp, #0xe8
    1822: ab60         	add	r3, sp, #0x180
    1824: 2500         	movs	r5, #0x0
    1826: e9cd 555a    	strd	r5, r5, [sp, #360]
    182a: f003 f881    	bl	0x4930 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>> @ imm = #0x3102
    182e: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    1832: eeb4 da4d    	vcmp.f32	s26, s26
    1836: 3001         	adds	r0, #0x1
    1838: bf28         	it	hs
    183a: f04f 30ff    	movhs.w	r0, #0xffffffff
    183e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1842: ed9d 0a65    	vldr	s0, [sp, #404]
    1846: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    184a: fe10 1a0d    	vselvs.f32	s2, s0, s26
    184e: f89d 2199    	ldrb.w	r2, [sp, #0x199]
    1852: eeb4 0a40    	vcmp.f32	s0, s0
    1856: 4489         	add	r9, r1
    1858: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    185c: f8c4 011c    	str.w	r0, [r4, #0x11c]
    1860: fe11 2a00    	vselvs.f32	s4, s2, s0
    1864: eeb4 1a42    	vcmp.f32	s2, s4
    1868: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    186c: fe31 1a02    	vselgt.f32	s2, s2, s4
    1870: 2a00         	cmp	r2, #0x0
    1872: f001 8129    	beq.w	0x2ac8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c40> @ imm = #0x1252
    1876: ed8d 1a1c    	vstr	s2, [sp, #112]
    187a: ed8d 8a0d    	vstr	s16, [sp, #52]
    187e: f50d 7cf8    	add.w	r12, sp, #0x1f0
    1882: 4641         	mov	r1, r8
    1884: 4662         	mov	r2, r12
    1886: eeb0 8a69    	vmov.f32	s16, s19
    188a: c969         	ldm	r1!, {r0, r3, r5, r6}
    188c: c269         	stm	r2!, {r0, r3, r5, r6}
    188e: e891 0069    	ldm.w	r1, {r0, r3, r5, r6}
    1892: c269         	stm	r2!, {r0, r3, r5, r6}
    1894: ed9d 0a58    	vldr	s0, [sp, #352]
    1898: ed9d 1a59    	vldr	s2, [sp, #356]
    189c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    18a0: ed9d ba5e    	vldr	s22, [sp, #376]
    18a4: ed1f 3bda    	vldr	d3, [pc, #-872]         @ 0x1540 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6b8>
    18a8: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    18ac: edcd 8a1b    	vstr	s17, [sp, #108]
    18b0: ee20 0b03    	vmul.f64	d0, d0, d3
    18b4: eeb7 eacb    	vcvt.f64.f32	d14, s22
    18b8: ed9d ba5f    	vldr	s22, [sp, #380]
    18bc: ed9d 2b4e    	vldr	d2, [sp, #312]
    18c0: ed8d 2b18    	vstr	d2, [sp, #96]
    18c4: ee32 4b00    	vadd.f64	d4, d2, d0
    18c8: ee21 2b03    	vmul.f64	d2, d1, d3
    18cc: ed1f 5bda    	vldr	d5, [pc, #-872]         @ 0x1568 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6e0>
    18d0: ee34 1b02    	vadd.f64	d1, d4, d2
    18d4: ed9d 4a5a    	vldr	s8, [sp, #360]
    18d8: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    18dc: ed1f 6bdc    	vldr	d6, [pc, #-880]         @ 0x1570 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6e8>
    18e0: ee24 5b05    	vmul.f64	d5, d4, d5
    18e4: ed8d 5b16    	vstr	d5, [sp, #88]
    18e8: ee31 1b05    	vadd.f64	d1, d1, d5
    18ec: ed9d 5a5b    	vldr	s10, [sp, #364]
    18f0: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    18f4: ed1f dbec    	vldr	d13, [pc, #-944]        @ 0x1548 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6c0>
    18f8: ee25 7b06    	vmul.f64	d7, d5, d6
    18fc: ed9d 6a5d    	vldr	s12, [sp, #372]
    1900: eeb7 6ac6    	vcvt.f64.f32	d6, s12
    1904: ee31 1b07    	vadd.f64	d1, d1, d7
    1908: ee06 1b03    	vmla.f64	d1, d6, d3
    190c: ee2e 6b03    	vmul.f64	d6, d14, d3
    1910: eeb7 eacb    	vcvt.f64.f32	d14, s22
    1914: ed8d 7b14    	vstr	d7, [sp, #80]
    1918: ee31 fb06    	vadd.f64	d15, d1, d6
    191c: ee68 1aa9    	vmul.f32	s3, s17, s19
    1920: ee2e eb03    	vmul.f64	d14, d14, d3
    1924: eeb7 9ae1    	vcvt.f64.f32	d9, s3
    1928: ee3f fb0e    	vadd.f64	d15, d15, d14
    192c: ed1f 7bee    	vldr	d7, [pc, #-952]         @ 0x1578 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6f0>
    1930: ee89 9b0d    	vdiv.f64	d9, d9, d13
    1934: ee0f 9b07    	vmla.f64	d9, d15, d7
    1938: ed1f fbef    	vldr	d15, [pc, #-956]        @ 0x1580 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x6f8>
    193c: ee89 9b0f    	vdiv.f64	d9, d9, d15
    1940: ed9d fb56    	vldr	d15, [sp, #344]
    1944: eeb7 1bc9    	vcvt.f32.f64	s2, d9
    1948: ed9d 9b50    	vldr	d9, [sp, #320]
    194c: eef4 ca41    	vcmp.f32	s25, s2
    1950: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1954: ee30 0b09    	vadd.f64	d0, d0, d9
    1958: fe3c 1a81    	vselgt.f32	s2, s25, s2
    195c: ed8d 9b12    	vstr	d9, [sp, #72]
    1960: eeb4 1a6b    	vcmp.f32	s2, s23
    1964: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1968: ee32 2b00    	vadd.f64	d2, d2, d0
    196c: fe3b 0a81    	vselgt.f32	s0, s23, s2
    1970: ee04 2b03    	vmla.f64	d2, d4, d3
    1974: ee6a 0a08    	vmul.f32	s1, s20, s16
    1978: ed8d 0a5c    	vstr	s0, [sp, #368]
    197c: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    1980: ee05 2b03    	vmla.f64	d2, d5, d3
    1984: ed9f 5bf2    	vldr	d5, [pc, #968]          @ 0x1d50 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xec8>
    1988: ee24 3b05    	vmul.f64	d3, d4, d5
    198c: eeb7 5ae0    	vcvt.f64.f32	d5, s1
    1990: ed8d 3b10    	vstr	d3, [sp, #64]
    1994: ee32 2b43    	vsub.f64	d2, d2, d3
    1998: ee85 5b0d    	vdiv.f64	d5, d5, d13
    199c: ee36 2b02    	vadd.f64	d2, d6, d2
    19a0: ed9d 3b46    	vldr	d3, [sp, #280]
    19a4: ee3e 2b02    	vadd.f64	d2, d14, d2
    19a8: eeb0 eb43    	vmov.f64	d14, d3
    19ac: ee02 5b07    	vmla.f64	d5, d2, d7
    19b0: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0x1d58 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xed0>
    19b4: ee85 2b02    	vdiv.f64	d2, d5, d2
    19b8: eddf 5af4    	vldr	s11, [pc, #976]         @ 0x1d8c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf04>
    19bc: ed9d 9b54    	vldr	d9, [sp, #336]
    19c0: eeb7 1bc2    	vcvt.f32.f64	s2, d2
    19c4: ed9f 2be6    	vldr	d2, [pc, #920]          @ 0x1d60 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xed8>
    19c8: eef4 ca41    	vcmp.f32	s25, s2
    19cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19d0: eeb7 5bc9    	vcvt.f32.f64	s10, d9
    19d4: fe3c 1a81    	vselgt.f32	s2, s25, s2
    19d8: eef7 6bcf    	vcvt.f32.f64	s13, d15
    19dc: eeb4 1a6b    	vcmp.f32	s2, s23
    19e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19e4: fe3b 1a81    	vselgt.f32	s2, s23, s2
    19e8: ed9f bbdf    	vldr	d11, [pc, #892]         @ 0x1d68 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xee0>
    19ec: ed8d 1a5d    	vstr	s2, [sp, #372]
    19f0: eeb7 7ac1    	vcvt.f64.f32	d7, s2
    19f4: ee21 6a25    	vmul.f32	s12, s2, s11
    19f8: ee07 eb0b    	vmla.f64	d14, d7, d11
    19fc: ee36 5a05    	vadd.f32	s10, s12, s10
    1a00: ee36 6a26    	vadd.f32	s12, s12, s13
    1a04: eddf 6ae2    	vldr	s13, [pc, #904]         @ 0x1d90 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf08>
    1a08: ee8e 2b02    	vdiv.f64	d2, d14, d2
    1a0c: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    1a10: eef0 2a46    	vmov.f32	s5, s12
    1a14: ee42 2a65    	vmls.f32	s5, s4, s11
    1a18: eef0 5a45    	vmov.f32	s11, s10
    1a1c: ee42 5a26    	vmla.f32	s11, s4, s13
    1a20: fec5 2ae2    	vminnm.f32	s5, s11, s5
    1a24: eef4 2a6a    	vcmp.f32	s5, s21
    1a28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a2c: f240 80f4    	bls.w	0x1c18 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xd90> @ imm = #0x1e8
    1a30: ed9f 2bcf    	vldr	d2, [pc, #828]          @ 0x1d70 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xee8>
    1a34: eddf 5ad7    	vldr	s11, [pc, #860]         @ 0x1d94 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf0c>
    1a38: ee8e 2b02    	vdiv.f64	d2, d14, d2
    1a3c: ed9f cad6    	vldr	s24, [pc, #856]         @ 0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    1a40: ed9f 8ad6    	vldr	s16, [pc, #856]         @ 0x1d9c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf14>
    1a44: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    1a48: eef0 2a45    	vmov.f32	s5, s10
    1a4c: ee42 2a26    	vmla.f32	s5, s4, s13
    1a50: eef0 6a46    	vmov.f32	s13, s12
    1a54: ee42 6a25    	vmla.f32	s13, s4, s11
    1a58: fec2 2ae6    	vminnm.f32	s5, s5, s13
    1a5c: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    1a60: ee7a 2ae2    	vsub.f32	s5, s21, s5
    1a64: fec2 2acc    	vminnm.f32	s5, s5, s24
    1a68: eeb0 ca66    	vmov.f32	s24, s13
    1a6c: ee02 caaa    	vmla.f32	s24, s5, s21
    1a70: eddf 2acb    	vldr	s5, [pc, #812]          @ 0x1da0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf18>
    1a74: ee6c 2a22    	vmul.f32	s5, s24, s5
    1a78: eef4 2a48    	vcmp.f32	s5, s16
    1a7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a80: f240 80ca    	bls.w	0x1c18 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xd90> @ imm = #0x194
    1a84: ed9f 2bbc    	vldr	d2, [pc, #752]          @ 0x1d78 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xef0>
    1a88: eeb6 cb00    	vmov.f64	d12, #5.000000e-01
    1a8c: eeb7 8b00    	vmov.f64	d8, #1.000000e+00
    1a90: ee27 2b02    	vmul.f64	d2, d7, d2
    1a94: eeb0 db42    	vmov.f64	d13, d2
    1a98: ee39 2b02    	vadd.f64	d2, d9, d2
    1a9c: eeb0 9b48    	vmov.f64	d9, d8
    1aa0: ee3c 2b42    	vsub.f64	d2, d12, d2
    1aa4: ee02 9b0c    	vmla.f64	d9, d2, d12
    1aa8: eeb0 cb4b    	vmov.f64	d12, d11
    1aac: ed9f 2bec    	vldr	d2, [pc, #944]          @ 0x1e60 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xfd8>
    1ab0: ee09 cb02    	vmla.f64	d12, d9, d2
    1ab4: ed9f 2bec    	vldr	d2, [pc, #944]          @ 0x1e68 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xfe0>
    1ab8: ee2e 2b02    	vmul.f64	d2, d14, d2
    1abc: ee0c 2b0c    	vmla.f64	d2, d12, d12
    1ac0: eeb1 9b4e    	vneg.f64	d9, d14
    1ac4: eeb5 2b40    	vcmp.f64	d2, #0
    1ac8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1acc: ed8d 9b0e    	vstr	d9, [sp, #56]
    1ad0: d42a         	bmi	0x1b28 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xca0> @ imm = #0x54
    1ad2: ec51 0b1c    	vmov	r0, r1, d12
    1ad6: eeb1 2bc2    	vsqrt.f64	d2, d2
    1ada: ec52 0b12    	vmov	r0, r2, d2
    1ade: 0fc9         	lsrs	r1, r1, #0x1f
    1ae0: eebe 9b00    	vmov.f64	d9, #-5.000000e-01
    1ae4: f361 72df    	bfi	r2, r1, #31, #1
    1ae8: ec42 0b12    	vmov	d2, r0, r2
    1aec: ee3c 2b02    	vadd.f64	d2, d12, d2
    1af0: ee22 9b09    	vmul.f64	d9, d2, d9
    1af4: ed9f 2bde    	vldr	d2, [pc, #888]          @ 0x1e70 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xfe8>
    1af8: ee89 2b02    	vdiv.f64	d2, d9, d2
    1afc: ec51 0b12    	vmov	r0, r1, d2
    1b00: f021 4000    	bic	r0, r1, #0x80000000
    1b04: f64f 71ff    	movw	r1, #0xffff
    1b08: f6c7 71ef    	movt	r1, #0x7fef
    1b0c: 4288         	cmp	r0, r1
    1b0e: f341 81db    	ble.w	0x2ec8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2040> @ imm = #0x13b6
    1b12: ed9d 2b0e    	vldr	d2, [sp, #56]
    1b16: ee82 2b09    	vdiv.f64	d2, d2, d9
    1b1a: ec52 0b12    	vmov	r0, r2, d2
    1b1e: f022 4000    	bic	r0, r2, #0x80000000
    1b22: 4288         	cmp	r0, r1
    1b24: f341 8248    	ble.w	0x2fb8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2130> @ imm = #0x1490
    1b28: ee3f 2b0d    	vadd.f64	d2, d15, d13
    1b2c: eeb6 9b00    	vmov.f64	d9, #5.000000e-01
    1b30: ee39 2b42    	vsub.f64	d2, d9, d2
    1b34: ee02 8b09    	vmla.f64	d8, d2, d9
    1b38: ed9f 2bc9    	vldr	d2, [pc, #804]          @ 0x1e60 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xfd8>
    1b3c: ee08 bb02    	vmla.f64	d11, d8, d2
    1b40: ed9f 8bcd    	vldr	d8, [pc, #820]          @ 0x1e78 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xff0>
    1b44: ee2b 2b0b    	vmul.f64	d2, d11, d11
    1b48: ee0e 2b08    	vmla.f64	d2, d14, d8
    1b4c: eeb5 2b40    	vcmp.f64	d2, #0
    1b50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b54: f100 8464    	bmi.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x8c8
    1b58: ec51 0b1b    	vmov	r0, r1, d11
    1b5c: eeb1 2bc2    	vsqrt.f64	d2, d2
    1b60: ec52 0b12    	vmov	r0, r2, d2
    1b64: 0fc9         	lsrs	r1, r1, #0x1f
    1b66: eebe 8b00    	vmov.f64	d8, #-5.000000e-01
    1b6a: f361 72df    	bfi	r2, r1, #31, #1
    1b6e: ec42 0b12    	vmov	d2, r0, r2
    1b72: ee3b 2b02    	vadd.f64	d2, d11, d2
    1b76: ee22 9b08    	vmul.f64	d9, d2, d8
    1b7a: ed9f 2bc1    	vldr	d2, [pc, #772]          @ 0x1e80 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xff8>
    1b7e: ee89 2b02    	vdiv.f64	d2, d9, d2
    1b82: ec51 0b12    	vmov	r0, r1, d2
    1b86: f021 4000    	bic	r0, r1, #0x80000000
    1b8a: f64f 71ff    	movw	r1, #0xffff
    1b8e: f6c7 71ef    	movt	r1, #0x7fef
    1b92: 4288         	cmp	r0, r1
    1b94: f341 81d8    	ble.w	0x2f48 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x20c0> @ imm = #0x13b0
    1b98: ed9d 2b0e    	vldr	d2, [sp, #56]
    1b9c: ee82 2b09    	vdiv.f64	d2, d2, d9
    1ba0: ec52 0b12    	vmov	r0, r2, d2
    1ba4: f022 4000    	bic	r0, r2, #0x80000000
    1ba8: 4288         	cmp	r0, r1
    1baa: f300 8439    	bgt.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x872
    1bae: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    1bb2: eef0 2a46    	vmov.f32	s5, s12
    1bb6: eeb0 9a45    	vmov.f32	s18, s10
    1bba: eeb8 8a00    	vmov.f32	s16, #-2.000000e+00
    1bbe: ed8d 2a5e    	vstr	s4, [sp, #376]
    1bc2: ee42 2a25    	vmla.f32	s5, s4, s11
    1bc6: eddf 5a72    	vldr	s11, [pc, #456]         @ 0x1d90 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf08>
    1bca: ee02 9a25    	vmla.f32	s18, s4, s11
    1bce: fec9 5a62    	vminnm.f32	s11, s18, s5
    1bd2: ee7a 5ae5    	vsub.f32	s11, s21, s11
    1bd6: eef4 5a48    	vcmp.f32	s11, s16
    1bda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bde: f340 841f    	ble.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x83e
    1be2: eef4 2a49    	vcmp.f32	s5, s18
    1be6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bea: f200 8419    	bhi.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x832
    1bee: eef5 5a40    	vcmp.f32	s11, #0
    1bf2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bf6: f140 8413    	bpl.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x826
    1bfa: ee45 6aaa    	vmla.f32	s13, s11, s21
    1bfe: eddf 2a68    	vldr	s5, [pc, #416]          @ 0x1da0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf18>
    1c02: eddf 5a66    	vldr	s11, [pc, #408]         @ 0x1d9c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf14>
    1c06: ee66 2aa2    	vmul.f32	s5, s13, s5
    1c0a: eef4 2a65    	vcmp.f32	s5, s11
    1c0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c12: dc03         	bgt	0x1c1c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xd94> @ imm = #0x6
    1c14: f000 bc04    	b.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x808
    1c18: ed8d 2a5e    	vstr	s4, [sp, #376]
    1c1c: ed9f 9abf    	vldr	s18, [pc, #764]         @ 0x1f1c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1094>
    1c20: ed9f babf    	vldr	s22, [pc, #764]         @ 0x1f20 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1098>
    1c24: ee71 2a89    	vadd.f32	s5, s3, s18
    1c28: ee71 6a8b    	vadd.f32	s13, s3, s22
    1c2c: ed9f 8abd    	vldr	s16, [pc, #756]         @ 0x1f24 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x109c>
    1c30: eec2 5a88    	vdiv.f32	s11, s5, s16
    1c34: eec6 2a88    	vdiv.f32	s5, s13, s16
    1c38: eef4 5a62    	vcmp.f32	s11, s5
    1c3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c40: f201 81fe    	bhi.w	0x3040 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x21b8> @ imm = #0x13fc
    1c44: eeb0 db47    	vmov.f64	d13, d7
    1c48: 2000         	movs	r0, #0x0
    1c4a: ed9f fab7    	vldr	s30, [pc, #732]         @ 0x1f28 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x10a0>
    1c4e: 2100         	movs	r1, #0x0
    1c50: ed8d 3b0e    	vstr	d3, [sp, #56]
    1c54: eddf 9ab5    	vldr	s19, [pc, #724]         @ 0x1f2c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x10a4>
    1c58: eebf ca00    	vmov.f32	s24, #-1.000000e+00
    1c5c: ed9d 3b18    	vldr	d3, [sp, #96]
    1c60: eef7 ea00    	vmov.f32	s29, #1.000000e+00
    1c64: ed9f eab2    	vldr	s28, [pc, #712]         @ 0x1f30 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x10a8>
    1c68: ed9d 7b16    	vldr	d7, [sp, #88]
    1c6c: eddf fab1    	vldr	s31, [pc, #708]         @ 0x1f34 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x10ac>
    1c70: ee33 3b07    	vadd.f64	d3, d3, d7
    1c74: eddf cab0    	vldr	s25, [pc, #704]         @ 0x1f38 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x10b0>
    1c78: ed9d 7b14    	vldr	d7, [sp, #80]
    1c7c: ee33 3b07    	vadd.f64	d3, d3, d7
    1c80: ed9f 7b81    	vldr	d7, [pc, #516]          @ 0x1e88 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1000>
    1c84: ee04 3b07    	vmla.f64	d3, d4, d7
    1c88: ed9f 4aac    	vldr	s8, [pc, #688]          @ 0x1f3c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x10b4>
    1c8c: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    1c90: ee23 7a0f    	vmul.f32	s14, s6, s30
    1c94: ee01 7aa9    	vmla.f32	s14, s3, s19
    1c98: ed9d 3b42    	vldr	d3, [sp, #264]
    1c9c: eef7 1bc3    	vcvt.f32.f64	s3, d3
    1ca0: ee40 1a04    	vmla.f32	s3, s0, s8
    1ca4: ed9f 4aee    	vldr	s8, [pc, #952]          @ 0x2060 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x11d8>
    1ca8: eef4 5a47    	vcmp.f32	s11, s14
    1cac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1cb0: ee41 1a04    	vmla.f32	s3, s2, s8
    1cb4: fe35 3a87    	vselgt.f32	s6, s11, s14
    1cb8: eeb4 3a62    	vcmp.f32	s6, s5
    1cbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1cc0: eeb4 7a65    	vcmp.f32	s14, s11
    1cc4: fe72 8a83    	vselgt.f32	s17, s5, s6
    1cc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ccc: eeb4 7a62    	vcmp.f32	s14, s5
    1cd0: bfc8         	it	gt
    1cd2: 2001         	movgt	r0, #0x1
    1cd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1cd8: eef5 1a40    	vcmp.f32	s3, #0
    1cdc: eef0 6ae1    	vabs.f32	s13, s3
    1ce0: eddf 1a2d    	vldr	s3, [pc, #180]          @ 0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    1ce4: eeb0 7a61    	vmov.f32	s14, s3
    1ce8: eef0 3a61    	vmov.f32	s7, s3
    1cec: bf48         	it	mi
    1cee: 2101         	movmi	r1, #0x1
    1cf0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1cf4: bf48         	it	mi
    1cf6: eeb0 7a4c    	vmovmi.f32	s14, s24
    1cfa: eef0 4a61    	vmov.f32	s9, s3
    1cfe: eef0 5a61    	vmov.f32	s11, s3
    1d02: fe7e 2a87    	vselgt.f32	s5, s29, s14
    1d06: eeb0 7a61    	vmov.f32	s14, s3
    1d0a: eef4 6a4e    	vcmp.f32	s13, s28
    1d0e: 4001         	ands	r1, r0
    1d10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d14: f280 80f3    	bge.w	0x1efe <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1076> @ imm = #0x1e6
    1d18: ed9f 7ad6    	vldr	s14, [pc, #856]         @ 0x2074 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x11ec>
    1d1c: eef4 6a47    	vcmp.f32	s13, s14
    1d20: ed9f 7a1d    	vldr	s14, [pc, #116]         @ 0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    1d24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d28: d92a         	bls	0x1d80 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xef8> @ imm = #0x54
    1d2a: eddf 3ad3    	vldr	s7, [pc, #844]          @ 0x2078 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x11f0>
    1d2e: eef4 6a63    	vcmp.f32	s13, s7
    1d32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d36: d937         	bls	0x1da8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf20> @ imm = #0x6e
    1d38: eddf 3ad0    	vldr	s7, [pc, #832]          @ 0x207c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x11f4>
    1d3c: ee76 4aa3    	vadd.f32	s9, s13, s7
    1d40: eddf 5acf    	vldr	s11, [pc, #828]         @ 0x2080 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x11f8>
    1d44: eef0 3a08    	vmov.f32	s7, #3.000000e+00
    1d48: e036         	b	0x1db8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf30> @ imm = #0x6c
    1d4a: bf00         	nop
    1d4c: bf00         	nop
    1d4e: bf00         	nop
    1d50: 15 be b6 e5  	.word	0xe5b6be15
    1d54: 6d 7e c0 3f  	.word	0x3fc07e6d
    1d58: 33 5a 1f 17  	.word	0x171f5a33
    1d5c: c7 76 4c 40  	.word	0x404c76c7
    1d60: 39 0e ce cb  	.word	0xcbce0e39
    1d64: 33 25 73 3f  	.word	0x3f732533
    1d68: d2 ce fe 14  	.word	0x14feced2
    1d6c: cf 45 20 3f  	.word	0x3f2045cf
    1d70: 68 26 52 13  	.word	0x13522668
    1d74: 2a 49 20 3f  	.word	0x3f20492a
    1d78: 10 43 9c 25  	.word	0x259c4310
    1d7c: ca fc ef 3f  	.word	0x3feffcca
    1d80: eef7 3a08    	vmov.f32	s7, #1.500000e+00
    1d84: eef0 4a47    	vmov.f32	s9, s14
    1d88: e01a         	b	0x1dc0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf38> @ imm = #0x34
    1d8a: bf00         	nop
    1d8c: 51 e6 7f 3f  	.word	0x3f7fe651
    1d90: 99 76 cd 39  	.word	0x39cd7699
    1d94: 51 e6 7f bf  	.word	0xbf7fe651
    1d98: 00 00 00 00  	.word	0x00000000
    1d9c: 95 bf d6 33  	.word	0x33d6bf95
    1da0: 2b 18 95 3b  	.word	0x3b95182b
    1da4: 00 bf 00 bf  	.word	0xbf00bf00
    1da8: eddf 3ae8    	vldr	s7, [pc, #928]          @ 0x214c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x12c4>
    1dac: ee76 4aa3    	vadd.f32	s9, s13, s7
    1db0: eef7 3a08    	vmov.f32	s7, #1.500000e+00
    1db4: eddf 5ae6    	vldr	s11, [pc, #920]         @ 0x2150 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x12c8>
    1db8: ee44 3aa5    	vmla.f32	s7, s9, s11
    1dbc: ee62 4aa5    	vmul.f32	s9, s5, s11
    1dc0: eef2 2a0e    	vmov.f32	s5, #1.500000e+01
    1dc4: ee72 2ae3    	vsub.f32	s5, s5, s7
    1dc8: eef1 3a64    	vneg.f32	s7, s9
    1dcc: fec2 2a87    	vmaxnm.f32	s5, s5, s14
    1dd0: eef5 2a40    	vcmp.f32	s5, #0
    1dd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1dd8: d95e         	bls	0x1e98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1010> @ imm = #0xbc
    1dda: eeb0 7ae8    	vabs.f32	s14, s17
    1dde: eeb4 7a62    	vcmp.f32	s14, s5
    1de2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1de6: d95f         	bls	0x1ea8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1020> @ imm = #0xbe
    1de8: eec2 4a87    	vdiv.f32	s9, s5, s14
    1dec: ee24 7aa4    	vmul.f32	s14, s9, s9
    1df0: ee27 7a07    	vmul.f32	s14, s14, s14
    1df4: ee27 7a07    	vmul.f32	s14, s14, s14
    1df8: ee67 6a07    	vmul.f32	s13, s14, s14
    1dfc: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    1e00: ee76 5a87    	vadd.f32	s11, s13, s14
    1e04: eef0 7a47    	vmov.f32	s15, s14
    1e08: eef4 5a47    	vcmp.f32	s11, s14
    1e0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e10: d009         	beq	0x1e26 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf9e> @ imm = #0x12
    1e12: eef0 7a65    	vmov.f32	s15, s11
    1e16: eef1 7ae7    	vsqrt.f32	s15, s15
    1e1a: eef1 7ae7    	vsqrt.f32	s15, s15
    1e1e: eef1 7ae7    	vsqrt.f32	s15, s15
    1e22: eef1 7ae7    	vsqrt.f32	s15, s15
    1e26: ee87 7a27    	vdiv.f32	s14, s14, s15
    1e2a: eef4 8a68    	vcmp.f32	s17, s17
    1e2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e32: eec7 7a25    	vdiv.f32	s15, s14, s11
    1e36: f181 81bb    	bvs.w	0x31b0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2328> @ imm = #0x1376
    1e3a: ee18 0a90    	vmov	r0, s17
    1e3e: f04f 527e    	mov.w	r2, #0x3f800000
    1e42: f362 001e    	bfi	r0, r2, #0, #31
    1e46: ee05 0a90    	vmov	s11, r0
    1e4a: ee65 2aa2    	vmul.f32	s5, s11, s5
    1e4e: ee65 5aa7    	vmul.f32	s11, s11, s15
    1e52: ee22 7a87    	vmul.f32	s14, s5, s14
    1e56: ee64 2aa6    	vmul.f32	s5, s9, s13
    1e5a: ee62 4aa7    	vmul.f32	s9, s5, s15
    1e5e: e04e         	b	0x1efe <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1076> @ imm = #0x9c
    1e60: c2 17 26 53  	.word	0x532617c2
    1e64: 05 a3 72 3f  	.word	0x3f72a305
    1e68: 44 1c 7f 14  	.word	0x147f1c44
    1e6c: 5b ea cd be  	.word	0xbecdea5b
    1e70: 44 1c 7f 14  	.word	0x147f1c44
    1e74: 5b ea ad be  	.word	0xbeadea5b
    1e78: d0 cf 74 ad  	.word	0xad74cfd0
    1e7c: 26 a1 82 3f  	.word	0x3f82a126
    1e80: d0 cf 74 ad  	.word	0xad74cfd0
    1e84: 26 a1 62 3f  	.word	0x3f62a126
    1e88: 1c 38 88 77  	.word	0x7788381c
    1e8c: bf 13 e1 bf  	.word	0xbfe113bf
    1e90: 67 42 87 92  	.word	0x92874267
    1e94: ba 86 d4 bf  	.word	0xbfd486ba
    1e98: eef0 4a47    	vmov.f32	s9, s14
    1e9c: eef0 5a47    	vmov.f32	s11, s14
    1ea0: e02d         	b	0x1efe <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1076> @ imm = #0x5a
    1ea2: bf00         	nop
    1ea4: bf00         	nop
    1ea6: bf00         	nop
    1ea8: ee88 7aa2    	vdiv.f32	s14, s17, s5
    1eac: eef7 5a00    	vmov.f32	s11, #1.000000e+00
    1eb0: ee27 7a07    	vmul.f32	s14, s14, s14
    1eb4: eef0 6a65    	vmov.f32	s13, s11
    1eb8: ee27 7a07    	vmul.f32	s14, s14, s14
    1ebc: ee27 7a07    	vmul.f32	s14, s14, s14
    1ec0: ee27 7a07    	vmul.f32	s14, s14, s14
    1ec4: ee77 4a25    	vadd.f32	s9, s14, s11
    1ec8: eef4 4a65    	vcmp.f32	s9, s11
    1ecc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ed0: d009         	beq	0x1ee6 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x105e> @ imm = #0x12
    1ed2: eef0 6a64    	vmov.f32	s13, s9
    1ed6: eef1 6ae6    	vsqrt.f32	s13, s13
    1eda: eef1 6ae6    	vsqrt.f32	s13, s13
    1ede: eef1 6ae6    	vsqrt.f32	s13, s13
    1ee2: eef1 6ae6    	vsqrt.f32	s13, s13
    1ee6: eec5 5aa6    	vdiv.f32	s11, s11, s13
    1eea: ee28 7a87    	vmul.f32	s14, s17, s14
    1eee: eec5 4aa4    	vdiv.f32	s9, s11, s9
    1ef2: eec7 2a22    	vdiv.f32	s5, s14, s5
    1ef6: ee28 7aa5    	vmul.f32	s14, s17, s11
    1efa: ee62 5aa4    	vmul.f32	s11, s5, s9
    1efe: ee70 2a47    	vsub.f32	s5, s0, s14
    1f02: 2900         	cmp	r1, #0x0
    1f04: fe0f 3aac    	vseleq.f32	s6, s31, s25
    1f08: ee12 0a90    	vmov	r0, s5
    1f0c: f020 4000    	bic	r0, r0, #0x80000000
    1f10: f1b0 4fff    	cmp.w	r0, #0x7f800000
    1f14: db14         	blt	0x1f40 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x10b8> @ imm = #0x28
    1f16: eddf 6ab6    	vldr	s13, [pc, #728]         @ 0x21f0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1368>
    1f1a: e01b         	b	0x1f54 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x10cc> @ imm = #0x36
    1f1c: 00 24 74 cb  	.word	0xcb742400
    1f20: 00 24 74 4b  	.word	0x4b742400
    1f24: 00 a0 0c 48  	.word	0x480ca000
    1f28: 79 61 2e 43  	.word	0x432e6179
    1f2c: 50 d0 e8 36  	.word	0x36e8d050
    1f30: 0a d7 23 3d  	.word	0x3d23d70a
    1f34: 00 00 00 80  	.word	0x80000000
    1f38: 79 61 2e c3  	.word	0xc32e6179
    1f3c: 83 c0 96 b8  	.word	0xb896c083
    1f40: eeb2 7a0e    	vmov.f32	s14, #1.500000e+01
    1f44: ed5f 6a6c    	vldr	s13, [pc, #-432]        @ 0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    1f48: ee82 7a87    	vdiv.f32	s14, s5, s14
    1f4c: eeb0 7ac7    	vabs.f32	s14, s14
    1f50: fec7 6a26    	vmaxnm.f32	s13, s14, s13
    1f54: ee30 7a89    	vadd.f32	s14, s1, s18
    1f58: ee70 7a8b    	vadd.f32	s15, s1, s22
    1f5c: ee87 7a08    	vdiv.f32	s14, s14, s16
    1f60: ee87 9a88    	vdiv.f32	s18, s15, s16
    1f64: eeb4 7a49    	vcmp.f32	s14, s18
    1f68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f6c: f201 8068    	bhi.w	0x3040 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x21b8> @ imm = #0x10d0
    1f70: edcd 8a18    	vstr	s17, [sp, #96]
    1f74: 2000         	movs	r0, #0x0
    1f76: ed9d 8b12    	vldr	d8, [sp, #72]
    1f7a: ee63 3aa5    	vmul.f32	s7, s7, s11
    1f7e: 2100         	movs	r1, #0x0
    1f80: ed9d bb10    	vldr	d11, [sp, #64]
    1f84: ee38 8b4b    	vsub.f64	d8, d8, d11
    1f88: ed1f bb3f    	vldr	d11, [pc, #-252]        @ 0x1e90 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1008>
    1f8c: ee0d 8b0b    	vmla.f64	d8, d13, d11
    1f90: ed9d bb44    	vldr	d11, [sp, #272]
    1f94: eef7 7bc8    	vcvt.f32.f64	s15, d8
    1f98: eeb7 bbcb    	vcvt.f32.f64	s22, d11
    1f9c: ee27 8a8f    	vmul.f32	s16, s15, s30
    1fa0: ee00 8aa9    	vmla.f32	s16, s1, s19
    1fa4: eddf 0acf    	vldr	s1, [pc, #828]          @ 0x22e4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x145c>
    1fa8: ee00 ba04    	vmla.f32	s22, s0, s8
    1fac: ee01 ba20    	vmla.f32	s22, s2, s1
    1fb0: eeb4 7a48    	vcmp.f32	s14, s16
    1fb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fb8: fe37 4a08    	vselgt.f32	s8, s14, s16
    1fbc: eeb4 4a49    	vcmp.f32	s8, s18
    1fc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fc4: eeb4 8a47    	vcmp.f32	s16, s14
    1fc8: ed9f 7ae8    	vldr	s14, [pc, #928]         @ 0x236c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x14e4>
    1fcc: ee62 7a07    	vmul.f32	s15, s4, s14
    1fd0: fe79 0a04    	vselgt.f32	s1, s18, s8
    1fd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fd8: ee37 4a8b    	vadd.f32	s8, s15, s22
    1fdc: eeb4 8a49    	vcmp.f32	s16, s18
    1fe0: bfc8         	it	gt
    1fe2: 2001         	movgt	r0, #0x1
    1fe4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fe8: eeb5 4a40    	vcmp.f32	s8, #0
    1fec: eef0 9ac4    	vabs.f32	s19, s8
    1ff0: ed1f 4a97    	vldr	s8, [pc, #-604]         @ 0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    1ff4: eef0 5a44    	vmov.f32	s11, s8
    1ff8: eeb0 9a44    	vmov.f32	s18, s8
    1ffc: bf48         	it	mi
    1ffe: 2101         	movmi	r1, #0x1
    2000: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2004: bf48         	it	mi
    2006: eef0 5a4c    	vmovmi.f32	s11, s24
    200a: eef4 9a4e    	vcmp.f32	s19, s28
    200e: eeb0 ca44    	vmov.f32	s24, s8
    2012: fe3e faa5    	vselgt.f32	s30, s29, s11
    2016: eef0 ba44    	vmov.f32	s23, s8
    201a: eeb0 ea44    	vmov.f32	s28, s8
    201e: 4001         	ands	r1, r0
    2020: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2024: eddf 5ad2    	vldr	s11, [pc, #840]         @ 0x2370 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x14e8>
    2028: f280 80bf    	bge.w	0x21aa <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1322> @ imm = #0x17e
    202c: ed9f 8a11    	vldr	s16, [pc, #68]          @ 0x2074 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x11ec>
    2030: eef4 9a48    	vcmp.f32	s19, s16
    2034: ed1f 9aa8    	vldr	s18, [pc, #-672]        @ 0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    2038: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    203c: d914         	bls	0x2068 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x11e0> @ imm = #0x28
    203e: ed9f 8a0e    	vldr	s16, [pc, #56]          @ 0x2078 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x11f0>
    2042: eef4 9a48    	vcmp.f32	s19, s16
    2046: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    204a: d91d         	bls	0x2088 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1200> @ imm = #0x3a
    204c: ed9f 8a0b    	vldr	s16, [pc, #44]          @ 0x207c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x11f4>
    2050: eeb0 ba08    	vmov.f32	s22, #3.000000e+00
    2054: ee39 8a88    	vadd.f32	s16, s19, s16
    2058: ed9f ca09    	vldr	s24, [pc, #36]          @ 0x2080 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x11f8>
    205c: e01c         	b	0x2098 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1210> @ imm = #0x38
    205e: bf00         	nop
    2060: d6 f8 e4 36  	.word	0x36e4f8d6
    2064: 00 bf 00 bf  	.word	0xbf00bf00
    2068: eeb7 ba08    	vmov.f32	s22, #1.500000e+00
    206c: eeb0 ca49    	vmov.f32	s24, s18
    2070: e016         	b	0x20a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1218> @ imm = #0x2c
    2072: bf00         	nop
    2074: 7c f2 b0 3a  	.word	0x3ab0f27c
    2078: a6 9b c4 3b  	.word	0x3bc49ba6
    207c: a6 9b c4 bb  	.word	0xbbc49ba6
    2080: 79 78 b0 43  	.word	0x43b07879
    2084: 00 bf 00 bf  	.word	0xbf00bf00
    2088: ed9f 8a30    	vldr	s16, [pc, #192]         @ 0x214c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x12c4>
    208c: eeb7 ba08    	vmov.f32	s22, #1.500000e+00
    2090: ee39 8a88    	vadd.f32	s16, s19, s16
    2094: ed9f ca2e    	vldr	s24, [pc, #184]         @ 0x2150 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x12c8>
    2098: ee08 ba0c    	vmla.f32	s22, s16, s24
    209c: ee2f ca0c    	vmul.f32	s24, s30, s24
    20a0: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    20a4: eeb1 ca4c    	vneg.f32	s24, s24
    20a8: ee38 8a4b    	vsub.f32	s16, s16, s22
    20ac: fe88 ea09    	vmaxnm.f32	s28, s16, s18
    20b0: eeb5 ea40    	vcmp.f32	s28, #0
    20b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    20b8: d942         	bls	0x2140 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x12b8> @ imm = #0x84
    20ba: eeb0 9ae0    	vabs.f32	s18, s1
    20be: eeb4 9a4e    	vcmp.f32	s18, s28
    20c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    20c6: d947         	bls	0x2158 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x12d0> @ imm = #0x8e
    20c8: ee8e fa09    	vdiv.f32	s30, s28, s18
    20cc: eeb7 9a00    	vmov.f32	s18, #1.000000e+00
    20d0: ee2f 8a0f    	vmul.f32	s16, s30, s30
    20d4: eef0 ba49    	vmov.f32	s23, s18
    20d8: ee28 8a08    	vmul.f32	s16, s16, s16
    20dc: ee28 8a08    	vmul.f32	s16, s16, s16
    20e0: ee68 9a08    	vmul.f32	s19, s16, s16
    20e4: ee39 ba89    	vadd.f32	s22, s19, s18
    20e8: eeb4 ba49    	vcmp.f32	s22, s18
    20ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    20f0: d009         	beq	0x2106 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x127e> @ imm = #0x12
    20f2: eef0 ba4b    	vmov.f32	s23, s22
    20f6: eef1 baeb    	vsqrt.f32	s23, s23
    20fa: eef1 baeb    	vsqrt.f32	s23, s23
    20fe: eef1 baeb    	vsqrt.f32	s23, s23
    2102: eef1 baeb    	vsqrt.f32	s23, s23
    2106: ee89 9a2b    	vdiv.f32	s18, s18, s23
    210a: eef4 0a60    	vcmp.f32	s1, s1
    210e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2112: eec9 ba0b    	vdiv.f32	s23, s18, s22
    2116: f181 8053    	bvs.w	0x31c0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2338> @ imm = #0x10a6
    211a: ee10 0a90    	vmov	r0, s1
    211e: f04f 527e    	mov.w	r2, #0x3f800000
    2122: f362 001e    	bfi	r0, r2, #0, #31
    2126: ee08 0a10    	vmov	s16, r0
    212a: ee28 ba0e    	vmul.f32	s22, s16, s28
    212e: ee28 ea2b    	vmul.f32	s28, s16, s23
    2132: ee2b 9a09    	vmul.f32	s18, s22, s18
    2136: ee2f 8a29    	vmul.f32	s16, s30, s19
    213a: ee68 ba2b    	vmul.f32	s23, s16, s23
    213e: e034         	b	0x21aa <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1322> @ imm = #0x68
    2140: eef0 ba49    	vmov.f32	s23, s18
    2144: eeb0 ea49    	vmov.f32	s28, s18
    2148: e02f         	b	0x21aa <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1322> @ imm = #0x5e
    214a: bf00         	nop
    214c: 7c f2 b0 ba  	.word	0xbab0f27c
    2150: 53 4a a1 43  	.word	0x43a14a53
    2154: 00 bf 00 bf  	.word	0xbf00bf00
    2158: ee80 8a8e    	vdiv.f32	s16, s1, s28
    215c: eeb0 fa6e    	vmov.f32	s30, s29
    2160: ee28 8a08    	vmul.f32	s16, s16, s16
    2164: ee28 8a08    	vmul.f32	s16, s16, s16
    2168: ee28 8a08    	vmul.f32	s16, s16, s16
    216c: ee28 9a08    	vmul.f32	s18, s16, s16
    2170: ee39 ba2e    	vadd.f32	s22, s18, s29
    2174: eeb4 ba6e    	vcmp.f32	s22, s29
    2178: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    217c: d009         	beq	0x2192 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x130a> @ imm = #0x12
    217e: eeb0 fa4b    	vmov.f32	s30, s22
    2182: eeb1 facf    	vsqrt.f32	s30, s30
    2186: eeb1 facf    	vsqrt.f32	s30, s30
    218a: eeb1 facf    	vsqrt.f32	s30, s30
    218e: eeb1 facf    	vsqrt.f32	s30, s30
    2192: ee8e 8a8f    	vdiv.f32	s16, s29, s30
    2196: ee20 9a89    	vmul.f32	s18, s1, s18
    219a: eec8 ba0b    	vdiv.f32	s23, s16, s22
    219e: ee89 ba0e    	vdiv.f32	s22, s18, s28
    21a2: ee20 9a88    	vmul.f32	s18, s1, s16
    21a6: ee2b ea2b    	vmul.f32	s28, s22, s23
    21aa: 2900         	cmp	r1, #0x0
    21ac: ee31 9a49    	vsub.f32	s18, s2, s18
    21b0: ee63 9a24    	vmul.f32	s19, s6, s9
    21b4: ed9f dab7    	vldr	s26, [pc, #732]         @ 0x2494 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x160c>
    21b8: fe4f 4aac    	vseleq.f32	s9, s31, s25
    21bc: eddf cab6    	vldr	s25, [pc, #728]         @ 0x2498 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1610>
    21c0: ee2c fa0e    	vmul.f32	s30, s24, s28
    21c4: ee19 0a10    	vmov	r0, s18
    21c8: ee63 5aa5    	vmul.f32	s11, s7, s11
    21cc: ee24 eaab    	vmul.f32	s28, s9, s23
    21d0: eddf 4ab2    	vldr	s9, [pc, #712]          @ 0x249c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1614>
    21d4: ee2f ca24    	vmul.f32	s24, s30, s9
    21d8: f020 4000    	bic	r0, r0, #0x80000000
    21dc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    21e0: eddf baaf    	vldr	s23, [pc, #700]         @ 0x24a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1618>
    21e4: eddf 4aaf    	vldr	s9, [pc, #700]          @ 0x24a4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x161c>
    21e8: db06         	blt	0x21f8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1370> @ imm = #0xc
    21ea: eddf 6a01    	vldr	s13, [pc, #4]           @ 0x21f0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1368>
    21ee: e01b         	b	0x2228 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x13a0> @ imm = #0x36
    21f0: 00 00 80 7f  	.word	0x7f800000
    21f4: 00 bf 00 bf  	.word	0xbf00bf00
    21f8: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    21fc: eef4 6a66    	vcmp.f32	s13, s13
    2200: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2204: ee89 8a08    	vdiv.f32	s16, s18, s16
    2208: eeb0 8ac8    	vabs.f32	s16, s16
    220c: fe58 6a26    	vselvs.f32	s13, s16, s13
    2210: eeb4 8a48    	vcmp.f32	s16, s16
    2214: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2218: fe16 8a88    	vselvs.f32	s16, s13, s16
    221c: eef4 6a48    	vcmp.f32	s13, s16
    2220: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2224: fe76 6a88    	vselgt.f32	s13, s13, s16
    2228: ed9f 8a9f    	vldr	s16, [pc, #636]         @ 0x24a8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1620>
    222c: ee49 5aac    	vmla.f32	s11, s19, s25
    2230: ee02 5a08    	vmla.f32	s10, s4, s16
    2234: ed9f 8a9d    	vldr	s16, [pc, #628]         @ 0x24ac <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1624>
    2238: ee02 6a08    	vmla.f32	s12, s4, s16
    223c: 210d         	movs	r1, #0xd
    223e: ed9d 8b0e    	vldr	d8, [sp, #56]
    2242: ee0e ca2b    	vmla.f32	s24, s28, s23
    2246: eeb7 8bc8    	vcvt.f32.f64	s16, d8
    224a: ee01 8a07    	vmla.f32	s16, s2, s14
    224e: eeb4 5a46    	vcmp.f32	s10, s12
    2252: fe85 6a46    	vminnm.f32	s12, s10, s12
    2256: ee29 5aa1    	vmul.f32	s10, s19, s3
    225a: eddf 9a95    	vldr	s19, [pc, #596]         @ 0x24b0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1628>
    225e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2262: ee7a cac6    	vsub.f32	s25, s21, s12
    2266: eeb8 6a00    	vmov.f32	s12, #-2.000000e+00
    226a: ee78 7a67    	vsub.f32	s15, s16, s15
    226e: ee6f 1a24    	vmul.f32	s3, s30, s9
    2272: eef4 ca46    	vcmp.f32	s25, s12
    2276: ee2f 6a0d    	vmul.f32	s12, s30, s26
    227a: bf88         	it	hi
    227c: 210e         	movhi	r1, #0xe
    227e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2282: d931         	bls	0x22e8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1460> @ imm = #0x62
    2284: eef4 ca6c    	vcmp.f32	s25, s25
    2288: eddf ba8a    	vldr	s23, [pc, #552]         @ 0x24b4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x162c>
    228c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2290: eeb0 ba6b    	vmov.f32	s22, s23
    2294: eddf da88    	vldr	s27, [pc, #544]         @ 0x24b8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1630>
    2298: fe1b 8aac    	vselvs.f32	s16, s23, s25
    229c: eeb5 8a40    	vcmp.f32	s16, #0
    22a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    22a4: bfb8         	it	lt
    22a6: eeb0 ba48    	vmovlt.f32	s22, s16
    22aa: eeb0 8a6e    	vmov.f32	s16, s29
    22ae: eef5 ca40    	vcmp.f32	s25, #0
    22b2: ee0b 8a2a    	vmla.f32	s16, s22, s21
    22b6: ed9f ba81    	vldr	s22, [pc, #516]         @ 0x24bc <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1634>
    22ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    22be: ee28 8a0b    	vmul.f32	s16, s16, s22
    22c2: fe88 fa2d    	vmaxnm.f32	s30, s16, s27
    22c6: d513         	bpl	0x22f0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1468> @ imm = #0x26
    22c8: eeb0 8a6e    	vmov.f32	s16, s29
    22cc: ee0c 8aaa    	vmla.f32	s16, s25, s21
    22d0: ee28 8a0b    	vmul.f32	s16, s16, s22
    22d4: eeb4 8a6d    	vcmp.f32	s16, s27
    22d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    22dc: bfc8         	it	gt
    22de: eddf ba78    	vldrgt	s23, [pc, #480]         @ 0x24c0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1638>
    22e2: e005         	b	0x22f0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1468> @ imm = #0xa
    22e4: af e6 27 b9  	.word	0xb927e6af
    22e8: eddf ba72    	vldr	s23, [pc, #456]         @ 0x24b4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x162c>
    22ec: ed9f fa72    	vldr	s30, [pc, #456]         @ 0x24b8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1630>
    22f0: f64d 0070    	movw	r0, #0xd870
    22f4: ee0e 6a29    	vmla.f32	s12, s28, s19
    22f8: f2c0 0000    	movt	r0, #0x0
    22fc: ee4e 1a04    	vmla.f32	s3, s28, s8
    2300: eb00 1081    	add.w	r0, r0, r1, lsl #6
    2304: ee22 4a2b    	vmul.f32	s8, s4, s23
    2308: ee52 7a0f    	vnmls.f32	s15, s4, s30
    230c: ed90 eb0c    	vldr	d14, [r0, #48]
    2310: eeb7 bbce    	vcvt.f32.f64	s22, d14
    2314: eeb0 ea45    	vmov.f32	s28, s10
    2318: ee03 5a8d    	vmla.f32	s10, s7, s26
    231c: ed90 db0a    	vldr	d13, [r0, #40]
    2320: ee04 7a4b    	vmls.f32	s14, s8, s22
    2324: eeb7 bbcd    	vcvt.f32.f64	s22, d13
    2328: ee03 eaaf    	vmla.f32	s28, s7, s31
    232c: ed90 8b08    	vldr	d8, [r0, #32]
    2330: ee44 4a4b    	vmls.f32	s9, s8, s22
    2334: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    2338: eeb7 8bc8    	vcvt.f32.f64	s16, d8
    233c: ee17 0a90    	vmov	r0, s15
    2340: ee3f fa07    	vadd.f32	s30, s30, s14
    2344: ee75 3a8b    	vadd.f32	s7, s11, s22
    2348: ee28 da44    	vnmul.f32	s26, s16, s8
    234c: eeb1 7a62    	vneg.f32	s14, s5
    2350: f020 4000    	bic	r0, r0, #0x80000000
    2354: ee3c ca0b    	vadd.f32	s24, s24, s22
    2358: f1b0 4fff    	cmp.w	r0, #0x7f800000
    235c: eef1 2a49    	vneg.f32	s5, s18
    2360: eef1 5a67    	vneg.f32	s11, s15
    2364: db20         	blt	0x23a8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1520> @ imm = #0x40
    2366: ed1f 4a5e    	vldr	s8, [pc, #-376]         @ 0x21f0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1368>
    236a: e035         	b	0x23d8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1550> @ imm = #0x6a
    236c: 79 2e 02 39  	.word	0x39022e79
    2370: 83 c0 96 38  	.word	0x3896c083
    2374: 00 bf 00 bf  	.word	0xbf00bf00
    2378: 00 00 00 00  	.word	0x00000000
    237c: 00 00 00 00  	.word	0x00000000
    2380: e6 a7 5c a0  	.word	0xa05ca7e6
    2384: 06 41 d9 3f  	.word	0x3fd94106
    2388: 85 42 fe de  	.word	0xdefe4285
    238c: bb a7 01 41  	.word	0x4101a7bb
    2390: b4 cf 84 3d  	.word	0x3d84cfb4
    2394: da 49 7b 40  	.word	0x407b49da
    2398: d1 a7 00 a5  	.word	0xa500a7d1
    239c: f6 46 24 40  	.word	0x402446f6
    23a0: 19 d5 65 36  	.word	0x3665d519
    23a4: d0 6e 95 bf  	.word	0xbf956ed0
    23a8: ed9f 4af9    	vldr	s8, [pc, #996]          @ 0x2790 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1908>
    23ac: eef4 6a66    	vcmp.f32	s13, s13
    23b0: ee87 4a84    	vdiv.f32	s8, s15, s8
    23b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23b8: eeb0 4ac4    	vabs.f32	s8, s8
    23bc: fe54 6a26    	vselvs.f32	s13, s8, s13
    23c0: eeb4 4a44    	vcmp.f32	s8, s8
    23c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23c8: fe16 4a84    	vselvs.f32	s8, s13, s8
    23cc: eef4 6a44    	vcmp.f32	s13, s8
    23d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23d4: fe36 4a84    	vselgt.f32	s8, s13, s8
    23d8: edcd 1a6a    	vstr	s3, [sp, #424]
    23dc: eddf 1aed    	vldr	s3, [pc, #948]          @ 0x2794 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x190c>
    23e0: eddd 9a1d    	vldr	s19, [sp, #116]
    23e4: ed9d 3a18    	vldr	s6, [sp, #96]
    23e8: eeb4 4a61    	vcmp.f32	s8, s3
    23ec: ed8d ca69    	vstr	s24, [sp, #420]
    23f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23f4: edcd 4a6c    	vstr	s9, [sp, #432]
    23f8: ed8d fa6d    	vstr	s30, [sp, #436]
    23fc: edcd 2a85    	vstr	s5, [sp, #532]
    2400: edcd 5a86    	vstr	s11, [sp, #536]
    2404: edcd 3a65    	vstr	s7, [sp, #404]
    2408: ed8d 5a66    	vstr	s10, [sp, #408]
    240c: ed8d ea67    	vstr	s28, [sp, #412]
    2410: ed8d 6a68    	vstr	s12, [sp, #416]
    2414: ed8d da6b    	vstr	s26, [sp, #428]
    2418: ed8d 7a84    	vstr	s14, [sp, #528]
    241c: f240 81cc    	bls.w	0x27b8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1930> @ imm = #0x398
    2420: 4640         	mov	r0, r8
    2422: eef0 0a4a    	vmov.f32	s1, s20
    2426: e8bc 004e    	ldm.w	r12!, {r1, r2, r3, r6}
    242a: c04e         	stm	r0!, {r1, r2, r3, r6}
    242c: e89c 004e    	ldm.w	r12, {r1, r2, r3, r6}
    2430: c04e         	stm	r0!, {r1, r2, r3, r6}
    2432: ed9d 8a1b    	vldr	s16, [sp, #108]
    2436: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    243a: eeb0 0a48    	vmov.f32	s0, s16
    243e: 3001         	adds	r0, #0x1
    2440: f8c4 010c    	str.w	r0, [r4, #0x10c]
    2444: a865         	add	r0, sp, #0x194
    2446: aa3a         	add	r2, sp, #0xe8
    2448: ab60         	add	r3, sp, #0x180
    244a: 4641         	mov	r1, r8
    244c: f003 f9a8    	bl	0x57a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>> @ imm = #0x3350
    2450: f89d 0199    	ldrb.w	r0, [sp, #0x199]
    2454: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    2458: 2801         	cmp	r0, #0x1
    245a: 4489         	add	r9, r1
    245c: d134         	bne	0x24c8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1640> @ imm = #0x68
    245e: ed9d 1a1c    	vldr	s2, [sp, #112]
    2462: ed9d 0a65    	vldr	s0, [sp, #404]
    2466: eeb4 1a41    	vcmp.f32	s2, s2
    246a: eddd 9a1d    	vldr	s19, [sp, #116]
    246e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2472: eeb4 0a40    	vcmp.f32	s0, s0
    2476: eddf fac8    	vldr	s31, [pc, #800]         @ 0x2798 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1910>
    247a: fe10 1a01    	vselvs.f32	s2, s0, s2
    247e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2482: fe11 0a00    	vselvs.f32	s0, s2, s0
    2486: eeb4 1a40    	vcmp.f32	s2, s0
    248a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    248e: fe31 9a00    	vselgt.f32	s18, s2, s0
    2492: e051         	b	0x2538 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x16b0> @ imm = #0xa2
    2494: d6 f8 e4 b6  	.word	0xb6e4f8d6
    2498: fc 9d 08 bf  	.word	0xbf089dfc
    249c: af e6 27 39  	.word	0x3927e6af
    24a0: d5 35 a4 be  	.word	0xbea435d5
    24a4: 79 2e 02 b9  	.word	0xb9022e79
    24a8: 99 76 cd 39  	.word	0x39cd7699
    24ac: 51 e6 7f bf  	.word	0xbf7fe651
    24b0: 6f f3 03 be  	.word	0xbe03f36f
    24b4: 00 00 00 00  	.word	0x00000000
    24b8: 95 bf d6 33  	.word	0x33d6bf95
    24bc: 2b 18 95 3b  	.word	0x3b95182b
    24c0: 2b 18 15 3b  	.word	0x3b15182b
    24c4: 00 bf 00 bf  	.word	0xbf00bf00
    24c8: eeb0 0a48    	vmov.f32	s0, s16
    24cc: eef0 0a4a    	vmov.f32	s1, s20
    24d0: a865         	add	r0, sp, #0x194
    24d2: a958         	add	r1, sp, #0x160
    24d4: aa3a         	add	r2, sp, #0xe8
    24d6: ab60         	add	r3, sp, #0x180
    24d8: 2500         	movs	r5, #0x0
    24da: 955e         	str	r5, [sp, #0x178]
    24dc: e9cd 555c    	strd	r5, r5, [sp, #368]
    24e0: f003 f95e    	bl	0x57a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>> @ imm = #0x32bc
    24e4: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    24e8: eddf faab    	vldr	s31, [pc, #684]         @ 0x2798 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1910>
    24ec: 3001         	adds	r0, #0x1
    24ee: bf28         	it	hs
    24f0: f04f 30ff    	movhs.w	r0, #0xffffffff
    24f4: ed9d 1a1c    	vldr	s2, [sp, #112]
    24f8: ed9d 0a65    	vldr	s0, [sp, #404]
    24fc: eeb4 1a41    	vcmp.f32	s2, s2
    2500: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    2504: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2508: eeb4 0a40    	vcmp.f32	s0, s0
    250c: f89d 2199    	ldrb.w	r2, [sp, #0x199]
    2510: fe10 1a01    	vselvs.f32	s2, s0, s2
    2514: 4489         	add	r9, r1
    2516: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    251a: eddd 9a1d    	vldr	s19, [sp, #116]
    251e: f8c4 011c    	str.w	r0, [r4, #0x11c]
    2522: fe11 2a00    	vselvs.f32	s4, s2, s0
    2526: eeb4 1a42    	vcmp.f32	s2, s4
    252a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    252e: fe31 9a02    	vselgt.f32	s18, s2, s4
    2532: 2a00         	cmp	r2, #0x0
    2534: f000 82c8    	beq.w	0x2ac8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c40> @ imm = #0x590
    2538: 4641         	mov	r1, r8
    253a: 4650         	mov	r0, r10
    253c: ed1f 4b72    	vldr	d4, [pc, #-456]         @ 0x2378 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x14f0>
    2540: c96c         	ldm	r1!, {r2, r3, r5, r6}
    2542: c06c         	stm	r0!, {r2, r3, r5, r6}
    2544: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
    2548: c06c         	stm	r0!, {r2, r3, r5, r6}
    254a: ed9d 0a58    	vldr	s0, [sp, #352]
    254e: ed9d 1a59    	vldr	s2, [sp, #356]
    2552: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    2556: ed9d 2a5a    	vldr	s4, [sp, #360]
    255a: ed9d ab52    	vldr	d10, [sp, #328]
    255e: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    2562: ed9f 6a8e    	vldr	s12, [pc, #568]         @ 0x279c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1914>
    2566: eeb0 3b4a    	vmov.f64	d3, d10
    256a: ed9f 7a8d    	vldr	s14, [pc, #564]         @ 0x27a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1918>
    256e: ee00 3b04    	vmla.f64	d3, d0, d4
    2572: eeb7 0ac2    	vcvt.f64.f32	d0, s4
    2576: ee01 3b04    	vmla.f64	d3, d1, d4
    257a: ed9d 1a5b    	vldr	s2, [sp, #364]
    257e: ee00 3b04    	vmla.f64	d3, d0, d4
    2582: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    2586: ed9d 1a5c    	vldr	s2, [sp, #368]
    258a: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    258e: ed1f 2b84    	vldr	d2, [pc, #-528]         @ 0x2380 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x14f8>
    2592: ee00 3b04    	vmla.f64	d3, d0, d4
    2596: ed9d 0a5d    	vldr	s0, [sp, #372]
    259a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    259e: ee01 3b04    	vmla.f64	d3, d1, d4
    25a2: ee20 1b02    	vmul.f64	d1, d0, d2
    25a6: ed9d 0a5e    	vldr	s0, [sp, #376]
    25aa: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    25ae: ee33 3b01    	vadd.f64	d3, d3, d1
    25b2: ee20 2b02    	vmul.f64	d2, d0, d2
    25b6: ed9f 0a7b    	vldr	s0, [pc, #492]          @ 0x27a4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x191c>
    25ba: ee29 0a80    	vmul.f32	s0, s19, s0
    25be: ed1f 5b8e    	vldr	d5, [pc, #-568]         @ 0x2388 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1500>
    25c2: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    25c6: ee33 3b42    	vsub.f64	d3, d3, d2
    25ca: ee30 6a06    	vadd.f32	s12, s0, s12
    25ce: ee84 4b05    	vdiv.f64	d4, d4, d5
    25d2: ed1f 5b91    	vldr	d5, [pc, #-580]         @ 0x2390 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1508>
    25d6: ee86 fa07    	vdiv.f32	s30, s12, s14
    25da: ee03 4b05    	vmla.f64	d4, d3, d5
    25de: ed9f 5a72    	vldr	s10, [pc, #456]         @ 0x27a8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1920>
    25e2: ed1f 3b93    	vldr	d3, [pc, #-588]         @ 0x2398 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1510>
    25e6: ee30 5a05    	vadd.f32	s10, s0, s10
    25ea: ee84 3b03    	vdiv.f64	d3, d4, d3
    25ee: eebb 4a05    	vmov.f32	s8, #-2.100000e+01
    25f2: ee85 ea07    	vdiv.f32	s28, s10, s14
    25f6: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    25fa: eeb4 4a43    	vcmp.f32	s8, s6
    25fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2602: fe34 3a03    	vselgt.f32	s6, s8, s6
    2606: eeb3 4a05    	vmov.f32	s8, #2.100000e+01
    260a: eeb4 3a44    	vcmp.f32	s6, s8
    260e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2612: eeb4 ea4f    	vcmp.f32	s28, s30
    2616: fe34 8a03    	vselgt.f32	s16, s8, s6
    261a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    261e: ed8d 8a5f    	vstr	s16, [sp, #380]
    2622: f200 8501    	bhi.w	0x3028 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x21a0> @ imm = #0xa02
    2626: ee3a 1b01    	vadd.f64	d1, d10, d1
    262a: a87c         	add	r0, sp, #0x1f0
    262c: ed9f da5f    	vldr	s26, [pc, #380]         @ 0x27ac <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1924>
    2630: ed1f 3ba5    	vldr	d3, [pc, #-660]         @ 0x23a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1518>
    2634: ee31 1b42    	vsub.f64	d1, d1, d2
    2638: eeb7 2ac8    	vcvt.f64.f32	d2, s16
    263c: ed9d bb48    	vldr	d11, [sp, #288]
    2640: ee02 1b03    	vmla.f64	d1, d2, d3
    2644: ed9f 2a5a    	vldr	s4, [pc, #360]          @ 0x27b0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1928>
    2648: eef7 0bcb    	vcvt.f32.f64	s1, d11
    264c: ee48 0a4d    	vmls.f32	s1, s16, s26
    2650: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    2654: ee61 8a02    	vmul.f32	s17, s2, s4
    2658: ed9f 1a56    	vldr	s2, [pc, #344]          @ 0x27b4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x192c>
    265c: ee40 8a01    	vmla.f32	s17, s0, s2
    2660: eeb4 ea68    	vcmp.f32	s28, s17
    2664: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2668: fe3e 0a28    	vselgt.f32	s0, s28, s17
    266c: eeb4 0a4f    	vcmp.f32	s0, s30
    2670: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2674: fe3f ca00    	vselgt.f32	s24, s30, s0
    2678: eeb0 0a4c    	vmov.f32	s0, s24
    267c: f004 fcc8    	bl	0x7010 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x4990
    2680: ed9d 0a7c    	vldr	s0, [sp, #496]
    2684: f60f 3054    	adr.w	r0, #2900
    2688: ee38 1a40    	vsub.f32	s2, s16, s0
    268c: eef4 8a4f    	vcmp.f32	s17, s30
    2690: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2694: bf48         	it	mi
    2696: 3004         	addmi	r0, #0x4
    2698: eef4 8a4e    	vcmp.f32	s17, s28
    269c: ee11 1a10    	vmov	r1, s2
    26a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    26a4: ed90 0a00    	vldr	s0, [r0]
    26a8: fe30 2a2f    	vselgt.f32	s4, s0, s31
    26ac: f021 4000    	bic	r0, r1, #0x80000000
    26b0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    26b4: da3c         	bge	0x2730 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x18a8> @ imm = #0x78
    26b6: eeb0 0ac1    	vabs.f32	s0, s2
    26ba: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    26be: ee80 0a03    	vdiv.f32	s0, s0, s6
    26c2: ed9f 3a34    	vldr	s6, [pc, #208]          @ 0x2794 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x190c>
    26c6: eeb4 0a43    	vcmp.f32	s0, s6
    26ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    26ce: d82f         	bhi	0x2730 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x18a8> @ imm = #0x5e
    26d0: ed9d 3a7d    	vldr	s6, [sp, #500]
    26d4: eeb0 4ac8    	vabs.f32	s8, s16
    26d8: ee22 2a03    	vmul.f32	s4, s4, s6
    26dc: ed9d 5a7e    	vldr	s10, [sp, #504]
    26e0: ee25 3a0d    	vmul.f32	s6, s10, s26
    26e4: ed9f 5af6    	vldr	s10, [pc, #984]         @ 0x2ac0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c38>
    26e8: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    26ec: eeb4 4a44    	vcmp.f32	s8, s8
    26f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    26f4: ee02 3a05    	vmla.f32	s6, s4, s10
    26f8: fe16 2a04    	vselvs.f32	s4, s12, s8
    26fc: eeb4 2a46    	vcmp.f32	s4, s12
    2700: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2704: ee33 3a06    	vadd.f32	s6, s6, s12
    2708: fe32 2a06    	vselgt.f32	s4, s4, s12
    270c: ee81 1a03    	vdiv.f32	s2, s2, s6
    2710: ed9f 3af2    	vldr	s6, [pc, #968]          @ 0x2adc <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c54>
    2714: ee22 2a03    	vmul.f32	s4, s4, s6
    2718: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x2ae0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c58>
    271c: eeb0 1ac1    	vabs.f32	s2, s2
    2720: fe82 2a43    	vminnm.f32	s4, s4, s6
    2724: eeb4 1a42    	vcmp.f32	s2, s4
    2728: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    272c: f240 81dc    	bls.w	0x2ae8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c60> @ imm = #0x3b8
    2730: 4640         	mov	r0, r8
    2732: eeb0 2a69    	vmov.f32	s4, s19
    2736: e8ba 004e    	ldm.w	r10!, {r1, r2, r3, r6}
    273a: c04e         	stm	r0!, {r1, r2, r3, r6}
    273c: e89a 004e    	ldm.w	r10, {r1, r2, r3, r6}
    2740: c04e         	stm	r0!, {r1, r2, r3, r6}
    2742: eeb0 0b4b    	vmov.f64	d0, d11
    2746: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    274a: eeb0 1b4a    	vmov.f64	d1, d10
    274e: 3001         	adds	r0, #0x1
    2750: f8c4 010c    	str.w	r0, [r4, #0x10c]
    2754: a865         	add	r0, sp, #0x194
    2756: aa60         	add	r2, sp, #0x180
    2758: 4641         	mov	r1, r8
    275a: f004 fa51    	bl	0x6c00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>> @ imm = #0x44a2
    275e: f89d 0199    	ldrb.w	r0, [sp, #0x199]
    2762: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    2766: 2800         	cmp	r0, #0x0
    2768: 4489         	add	r9, r1
    276a: f000 8175    	beq.w	0x2a58 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1bd0> @ imm = #0x2ea
    276e: eeb4 9a49    	vcmp.f32	s18, s18
    2772: ed9d 0a65    	vldr	s0, [sp, #404]
    2776: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    277a: eeb4 0a40    	vcmp.f32	s0, s0
    277e: fe10 1a09    	vselvs.f32	s2, s0, s18
    2782: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2786: e9cd 9b1c    	strd	r9, r11, [sp, #112]
    278a: fe11 0a00    	vselvs.f32	s0, s2, s0
    278e: e1c0         	b	0x2b12 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c8a> @ imm = #0x380
    2790: 0a d7 23 3c  	.word	0x3c23d70a
    2794: 17 b7 d1 38  	.word	0x38d1b717
    2798: 00 00 00 80  	.word	0x80000000
    279c: 00 24 f4 4a  	.word	0x4af42400
    27a0: 00 a0 0c 48  	.word	0x480ca000
    27a4: 00 80 bb 47  	.word	0x47bb8000
    27a8: 00 24 f4 ca  	.word	0xcaf42400
    27ac: cd 1e 2c 3e  	.word	0x3e2c1ecd
    27b0: d2 4e da 43  	.word	0x43da4ed2
    27b4: df ff e7 36  	.word	0x36e7ffdf
    27b8: eef0 1ac6    	vabs.f32	s3, s12
    27bc: 2200         	movs	r2, #0x0
    27be: eef0 2ae3    	vabs.f32	s5, s7
    27c2: f50d 7eca    	add.w	lr, sp, #0x194
    27c6: eef4 1a62    	vcmp.f32	s3, s5
    27ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    27ce: eef0 1acd    	vabs.f32	s3, s26
    27d2: fe36 6a23    	vselgt.f32	s12, s12, s7
    27d6: bfc8         	it	gt
    27d8: 2201         	movgt	r2, #0x1
    27da: eeb0 6ac6    	vabs.f32	s12, s12
    27de: eef4 1a46    	vcmp.f32	s3, s12
    27e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    27e6: bfc8         	it	gt
    27e8: 2202         	movgt	r2, #0x2
    27ea: eb02 0042    	add.w	r0, r2, r2, lsl #1
    27ee: eb0a 0180    	add.w	r1, r10, r0, lsl #2
    27f2: f85a 0020    	ldr.w	r0, [r10, r0, lsl #2]
    27f6: e9d1 3601    	ldrd	r3, r6, [r1, #4]
    27fa: e88e 0049    	stm.w	lr, {r0, r3, r6}
    27fe: edc1 3a00    	vstr	s7, [r1]
    2802: f50d 7e04    	add.w	lr, sp, #0x210
    2806: ed81 5a01    	vstr	s10, [r1, #4]
    280a: ed81 ea02    	vstr	s28, [r1, #8]
    280e: eb0e 0182    	add.w	r1, lr, r2, lsl #2
    2812: ed9d 6a65    	vldr	s12, [sp, #404]
    2816: f85e 2022    	ldr.w	r2, [lr, r2, lsl #2]
    281a: ee16 0a10    	vmov	r0, s12
    281e: 9284         	str	r2, [sp, #0x210]
    2820: ed81 7a00    	vstr	s14, [r1]
    2824: f020 4000    	bic	r0, r0, #0x80000000
    2828: f1b0 4fff    	cmp.w	r0, #0x7f800000
    282c: f6bf adf8    	bge.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x410
    2830: eeb0 7ac6    	vabs.f32	s14, s12
    2834: ed9f 5aab    	vldr	s10, [pc, #684]         @ 0x2ae4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c5c>
    2838: eeb4 7a45    	vcmp.f32	s14, s10
    283c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2840: f53f adee    	bmi.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x424
    2844: ed9d 7a6b    	vldr	s14, [sp, #428]
    2848: eddd 1a68    	vldr	s3, [sp, #416]
    284c: eec7 3a06    	vdiv.f32	s7, s14, s12
    2850: ed9d 7a66    	vldr	s14, [sp, #408]
    2854: eec1 4a86    	vdiv.f32	s9, s3, s12
    2858: eddd 5a6c    	vldr	s11, [sp, #432]
    285c: eddd 6a69    	vldr	s13, [sp, #420]
    2860: eddd 1a84    	vldr	s3, [sp, #528]
    2864: ee47 5a63    	vmls.f32	s11, s14, s7
    2868: eddd 2a67    	vldr	s5, [sp, #412]
    286c: ee44 6ac7    	vmls.f32	s13, s9, s14
    2870: eddd 7a6a    	vldr	s15, [sp, #424]
    2874: ee44 7ae2    	vmls.f32	s15, s9, s5
    2878: ed9d 8a85    	vldr	s16, [sp, #532]
    287c: ee04 8ae1    	vmls.f32	s16, s9, s3
    2880: f10a 000c    	add.w	r0, r10, #0xc
    2884: 4602         	mov	r2, r0
    2886: edcd 5a6c    	vstr	s11, [sp, #432]
    288a: edcd 6a69    	vstr	s13, [sp, #420]
    288e: eef0 4ae5    	vabs.f32	s9, s11
    2892: edcd 7a6a    	vstr	s15, [sp, #424]
    2896: eeb0 9ae6    	vabs.f32	s18, s13
    289a: eddd 6a6d    	vldr	s13, [sp, #436]
    289e: ee42 6ae3    	vmls.f32	s13, s5, s7
    28a2: ed8d 8a85    	vstr	s16, [sp, #532]
    28a6: eef4 4a49    	vcmp.f32	s9, s18
    28aa: eddd 4a86    	vldr	s9, [sp, #536]
    28ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    28b2: bfc8         	it	gt
    28b4: f10a 0218    	addgt.w	r2, r10, #0x18
    28b8: edcd 6a6d    	vstr	s13, [sp, #436]
    28bc: 6803         	ldr	r3, [r0]
    28be: e9d2 6500    	ldrd	r6, r5, [r2]
    28c2: 6891         	ldr	r1, [r2, #0x8]
    28c4: 6006         	str	r6, [r0]
    28c6: 6846         	ldr	r6, [r0, #0x4]
    28c8: 6045         	str	r5, [r0, #0x4]
    28ca: 6885         	ldr	r5, [r0, #0x8]
    28cc: 6081         	str	r1, [r0, #0x8]
    28ce: ee41 4ae3    	vmls.f32	s9, s3, s7
    28d2: f04f 0004    	mov.w	r0, #0x4
    28d6: e9c2 6501    	strd	r6, r5, [r2, #4]
    28da: eddd 3a69    	vldr	s7, [sp, #420]
    28de: ee13 1a90    	vmov	r1, s7
    28e2: bfc8         	it	gt
    28e4: 2008         	movgt	r0, #0x8
    28e6: edcd 4a86    	vstr	s9, [sp, #536]
    28ea: 6013         	str	r3, [r2]
    28ec: f85e 2000    	ldr.w	r2, [lr, r0]
    28f0: 4470         	add	r0, lr
    28f2: f021 4100    	bic	r1, r1, #0x80000000
    28f6: f1b1 4fff    	cmp.w	r1, #0x7f800000
    28fa: 9285         	str	r2, [sp, #0x214]
    28fc: ed80 8a00    	vstr	s16, [r0]
    2900: f6bf ad8e    	bge.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x4e4
    2904: eef0 4ae3    	vabs.f32	s9, s7
    2908: eef4 4a45    	vcmp.f32	s9, s10
    290c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2910: f53f ad86    	bmi.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x4f4
    2914: eddd 4a6c    	vldr	s9, [sp, #432]
    2918: eddd 6a6d    	vldr	s13, [sp, #436]
    291c: eec4 5aa3    	vdiv.f32	s11, s9, s7
    2920: eddd 4a6a    	vldr	s9, [sp, #424]
    2924: ee45 6ae4    	vmls.f32	s13, s11, s9
    2928: ee16 0a90    	vmov	r0, s13
    292c: f020 4000    	bic	r0, r0, #0x80000000
    2930: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2934: f6bf ad74    	bge.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x518
    2938: eef0 7ae6    	vabs.f32	s15, s13
    293c: eef4 7a45    	vcmp.f32	s15, s10
    2940: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2944: f53f ad6c    	bmi.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x528
    2948: eddd 7a85    	vldr	s15, [sp, #532]
    294c: ed9d 5a86    	vldr	s10, [sp, #536]
    2950: ee05 5ae7    	vmls.f32	s10, s11, s15
    2954: eeb0 0ac0    	vabs.f32	s0, s0
    2958: eeb4 0a40    	vcmp.f32	s0, s0
    295c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2960: ee85 5a26    	vdiv.f32	s10, s10, s13
    2964: fe1b 0a00    	vselvs.f32	s0, s22, s0
    2968: ee44 7ac5    	vmls.f32	s15, s9, s10
    296c: eeb4 0a4b    	vcmp.f32	s0, s22
    2970: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2974: eec7 3aa3    	vdiv.f32	s7, s15, s7
    2978: ee47 1a63    	vmls.f32	s3, s14, s7
    297c: fe30 7a0b    	vselgt.f32	s14, s0, s22
    2980: ed9f 0a56    	vldr	s0, [pc, #344]          @ 0x2adc <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c54>
    2984: ee42 1ac5    	vmls.f32	s3, s5, s10
    2988: ee27 7a00    	vmul.f32	s14, s14, s0
    298c: ee81 6a86    	vdiv.f32	s12, s3, s12
    2990: eef0 1ac6    	vabs.f32	s3, s12
    2994: ed9f 6a52    	vldr	s12, [pc, #328]         @ 0x2ae0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c58>
    2998: fe87 7a46    	vminnm.f32	s14, s14, s12
    299c: eef4 1a47    	vcmp.f32	s3, s14
    29a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29a4: f63f ad3c    	bhi.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x588
    29a8: eeb0 1ac1    	vabs.f32	s2, s2
    29ac: eeb0 7ae3    	vabs.f32	s14, s7
    29b0: eeb4 1a41    	vcmp.f32	s2, s2
    29b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29b8: fe1b 1a01    	vselvs.f32	s2, s22, s2
    29bc: eeb4 1a4b    	vcmp.f32	s2, s22
    29c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29c4: fe31 1a0b    	vselgt.f32	s2, s2, s22
    29c8: ee21 1a00    	vmul.f32	s2, s2, s0
    29cc: fe81 1a46    	vminnm.f32	s2, s2, s12
    29d0: eeb4 7a41    	vcmp.f32	s14, s2
    29d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29d8: f63f ad22    	bhi.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x5bc
    29dc: eeb0 1ac2    	vabs.f32	s2, s4
    29e0: eeb4 1a41    	vcmp.f32	s2, s2
    29e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29e8: fe1b 1a01    	vselvs.f32	s2, s22, s2
    29ec: eeb4 1a4b    	vcmp.f32	s2, s22
    29f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29f4: fe31 1a0b    	vselgt.f32	s2, s2, s22
    29f8: ee21 0a00    	vmul.f32	s0, s2, s0
    29fc: eeb0 1ac5    	vabs.f32	s2, s10
    2a00: fe80 0a46    	vminnm.f32	s0, s0, s12
    2a04: eeb4 1a40    	vcmp.f32	s2, s0
    2a08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a0c: f63f ad08    	bhi.w	0x2420 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x5f0
    2a10: ed9d 0a1c    	vldr	s0, [sp, #112]
    2a14: f8d4 0108    	ldr.w	r0, [r4, #0x108]
    2a18: eeb4 0a40    	vcmp.f32	s0, s0
    2a1c: f8d4 1110    	ldr.w	r1, [r4, #0x110]
    2a20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a24: eeb4 4a44    	vcmp.f32	s8, s8
    2a28: ed8d 3a62    	vstr	s6, [sp, #392]
    2a2c: fe14 0a00    	vselvs.f32	s0, s8, s0
    2a30: edcd 0a63    	vstr	s1, [sp, #396]
    2a34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a38: f100 0001    	add.w	r0, r0, #0x1
    2a3c: f8c4 0108    	str.w	r0, [r4, #0x108]
    2a40: fe10 1a04    	vselvs.f32	s2, s0, s8
    2a44: 1c48         	adds	r0, r1, #0x1
    2a46: f8c4 0110    	str.w	r0, [r4, #0x110]
    2a4a: eeb4 0a41    	vcmp.f32	s0, s2
    2a4e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a52: fe30 9a01    	vselgt.f32	s18, s0, s2
    2a56: e56f         	b	0x2538 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x16b0> @ imm = #-0x522
    2a58: eeb0 0b4b    	vmov.f64	d0, d11
    2a5c: a865         	add	r0, sp, #0x194
    2a5e: eeb0 1b4a    	vmov.f64	d1, d10
    2a62: a958         	add	r1, sp, #0x160
    2a64: eeb0 2a69    	vmov.f32	s4, s19
    2a68: aa60         	add	r2, sp, #0x180
    2a6a: 2500         	movs	r5, #0x0
    2a6c: 955f         	str	r5, [sp, #0x17c]
    2a6e: f004 f8c7    	bl	0x6c00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>> @ imm = #0x418e
    2a72: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    2a76: eeb4 9a49    	vcmp.f32	s18, s18
    2a7a: 3001         	adds	r0, #0x1
    2a7c: bf28         	it	hs
    2a7e: f04f 30ff    	movhs.w	r0, #0xffffffff
    2a82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a86: ed9d 0a65    	vldr	s0, [sp, #404]
    2a8a: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    2a8e: fe10 1a09    	vselvs.f32	s2, s0, s18
    2a92: f89d 2199    	ldrb.w	r2, [sp, #0x199]
    2a96: eeb4 0a40    	vcmp.f32	s0, s0
    2a9a: 4489         	add	r9, r1
    2a9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2aa0: f8c4 011c    	str.w	r0, [r4, #0x11c]
    2aa4: fe11 2a00    	vselvs.f32	s4, s2, s0
    2aa8: eeb4 1a42    	vcmp.f32	s2, s4
    2aac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ab0: fe31 1a02    	vselgt.f32	s2, s2, s4
    2ab4: b142         	cbz	r2, 0x2ac8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c40> @ imm = #0x10
    2ab6: ed8d 1a01    	vstr	s2, [sp, #4]
    2aba: e9cd 9b1c    	strd	r9, r11, [sp, #112]
    2abe: e030         	b	0x2b22 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x1c9a> @ imm = #0x60
    2ac0: 82 76 ab bc  	.word	0xbcab7682
    2ac4: 00 bf 00 bf  	.word	0xbf00bf00
    2ac8: 69e0         	ldr	r0, [r4, #0x1c]
    2aca: f8cb 0000    	str.w	r0, [r11]
    2ace: ed8b 0a01    	vstr	s0, [r11, #4]
    2ad2: f88b 9008    	strb.w	r9, [r11, #0x8]
    2ad6: f88b 5009    	strb.w	r5, [r11, #0x9]
    2ada: e1ed         	b	0x2eb8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2030> @ imm = #0x3da
    2adc: bd 37 06 36  	.word	0x360637bd
    2ae0: ac c5 a7 37  	.word	0x37a7c5ac
    2ae4: 08 e5 3c 1e  	.word	0x1e3ce508
    2ae8: eeb4 9a49    	vcmp.f32	s18, s18
    2aec: f8d4 0114    	ldr.w	r0, [r4, #0x114]
    2af0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2af4: eeb4 0a40    	vcmp.f32	s0, s0
    2af8: ed8d ca64    	vstr	s24, [sp, #400]
    2afc: fe10 1a09    	vselvs.f32	s2, s0, s18
    2b00: 3001         	adds	r0, #0x1
    2b02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b06: e9cd 9b1c    	strd	r9, r11, [sp, #112]
    2b0a: fe11 0a00    	vselvs.f32	s0, s2, s0
    2b0e: f8c4 0114    	str.w	r0, [r4, #0x114]
    2b12: eeb4 1a40    	vcmp.f32	s2, s0
    2b16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b1a: fe31 0a00    	vselgt.f32	s0, s2, s0
    2b1e: ed8d 0a01    	vstr	s0, [sp, #4]
    2b22: a865         	add	r0, sp, #0x194
    2b24: a91e         	add	r1, sp, #0x78
    2b26: aa58         	add	r2, sp, #0x160
    2b28: ed9d 0a0d    	vldr	s0, [sp, #52]
    2b2c: f000 fe00    	bl	0x3730 <orange_dsp::generated_packed::update::<5>> @ imm = #0xc00
    2b30: eddd 2a70    	vldr	s5, [sp, #448]
    2b34: eddd 3a71    	vldr	s7, [sp, #452]
    2b38: eddd da66    	vldr	s27, [sp, #408]
    2b3c: ee12 2a90    	vmov	r2, s5
    2b40: ee1d 0a90    	vmov	r0, s27
    2b44: eddd 4a72    	vldr	s9, [sp, #456]
    2b48: 9209         	str	r2, [sp, #0x24]
    2b4a: ee13 2a90    	vmov	r2, s7
    2b4e: eddd 5a73    	vldr	s11, [sp, #460]
    2b52: eddd fa68    	vldr	s31, [sp, #416]
    2b56: eddd ea67    	vldr	s29, [sp, #412]
    2b5a: 920a         	str	r2, [sp, #0x28]
    2b5c: ee14 2a90    	vmov	r2, s9
    2b60: ee15 8a90    	vmov	r8, s11
    2b64: f020 4000    	bic	r0, r0, #0x80000000
    2b68: ee1e 1a90    	vmov	r1, s29
    2b6c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2b70: f04f 0000    	mov.w	r0, #0x0
    2b74: ed9d 3a69    	vldr	s6, [sp, #420]
    2b78: ed9d 4a6a    	vldr	s8, [sp, #424]
    2b7c: ed9d 5a6b    	vldr	s10, [sp, #428]
    2b80: ed9d 6a6c    	vldr	s12, [sp, #432]
    2b84: ed9d 7a6d    	vldr	s14, [sp, #436]
    2b88: eddd 0a6e    	vldr	s1, [sp, #440]
    2b8c: eddd 1a6f    	vldr	s3, [sp, #444]
    2b90: 920d         	str	r2, [sp, #0x34]
    2b92: f8cd 8038    	str.w	r8, [sp, #0x38]
    2b96: ee1f 5a90    	vmov	r5, s31
    2b9a: bfa8         	it	ge
    2b9c: 2001         	movge	r0, #0x1
    2b9e: ee13 6a10    	vmov	r6, s6
    2ba2: ee14 3a10    	vmov	r3, s8
    2ba6: 901b         	str	r0, [sp, #0x6c]
    2ba8: f021 4000    	bic	r0, r1, #0x80000000
    2bac: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2bb0: f04f 0000    	mov.w	r0, #0x0
    2bb4: bfa8         	it	ge
    2bb6: 2001         	movge	r0, #0x1
    2bb8: ee15 ca10    	vmov	r12, s10
    2bbc: ee16 ea10    	vmov	lr, s12
    2bc0: 9018         	str	r0, [sp, #0x60]
    2bc2: f025 4000    	bic	r0, r5, #0x80000000
    2bc6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2bca: f04f 0000    	mov.w	r0, #0x0
    2bce: bfa8         	it	ge
    2bd0: 2001         	movge	r0, #0x1
    2bd2: ee17 9a10    	vmov	r9, s14
    2bd6: ee10 ba90    	vmov	r11, s1
    2bda: 9016         	str	r0, [sp, #0x58]
    2bdc: f026 4000    	bic	r0, r6, #0x80000000
    2be0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2be4: f04f 0000    	mov.w	r0, #0x0
    2be8: bfa8         	it	ge
    2bea: 2001         	movge	r0, #0x1
    2bec: ee11 aa90    	vmov	r10, s3
    2bf0: f04f 0800    	mov.w	r8, #0x0
    2bf4: 9014         	str	r0, [sp, #0x50]
    2bf6: f023 4000    	bic	r0, r3, #0x80000000
    2bfa: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2bfe: f04f 0000    	mov.w	r0, #0x0
    2c02: bfa8         	it	ge
    2c04: 2001         	movge	r0, #0x1
    2c06: 9012         	str	r0, [sp, #0x48]
    2c08: f02c 4000    	bic	r0, r12, #0x80000000
    2c0c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2c10: f04f 0000    	mov.w	r0, #0x0
    2c14: bfa8         	it	ge
    2c16: 2001         	movge	r0, #0x1
    2c18: f04f 0c00    	mov.w	r12, #0x0
    2c1c: 9010         	str	r0, [sp, #0x40]
    2c1e: f02e 4000    	bic	r0, lr, #0x80000000
    2c22: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2c26: f04f 0000    	mov.w	r0, #0x0
    2c2a: bfa8         	it	ge
    2c2c: 2001         	movge	r0, #0x1
    2c2e: f04f 0e00    	mov.w	lr, #0x0
    2c32: 9008         	str	r0, [sp, #0x20]
    2c34: f029 4000    	bic	r0, r9, #0x80000000
    2c38: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2c3c: f04f 0000    	mov.w	r0, #0x0
    2c40: bfa8         	it	ge
    2c42: 2001         	movge	r0, #0x1
    2c44: f04f 0900    	mov.w	r9, #0x0
    2c48: 9007         	str	r0, [sp, #0x1c]
    2c4a: f02b 4000    	bic	r0, r11, #0x80000000
    2c4e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2c52: f04f 0000    	mov.w	r0, #0x0
    2c56: bfa8         	it	ge
    2c58: 2001         	movge	r0, #0x1
    2c5a: f04f 0b00    	mov.w	r11, #0x0
    2c5e: 9006         	str	r0, [sp, #0x18]
    2c60: f02a 4000    	bic	r0, r10, #0x80000000
    2c64: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2c68: f04f 0000    	mov.w	r0, #0x0
    2c6c: bfa8         	it	ge
    2c6e: 2001         	movge	r0, #0x1
    2c70: f04f 0a00    	mov.w	r10, #0x0
    2c74: 9005         	str	r0, [sp, #0x14]
    2c76: 9809         	ldr	r0, [sp, #0x24]
    2c78: f020 4000    	bic	r0, r0, #0x80000000
    2c7c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2c80: f04f 0000    	mov.w	r0, #0x0
    2c84: bfa8         	it	ge
    2c86: 2001         	movge	r0, #0x1
    2c88: 9009         	str	r0, [sp, #0x24]
    2c8a: 980a         	ldr	r0, [sp, #0x28]
    2c8c: f020 4000    	bic	r0, r0, #0x80000000
    2c90: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2c94: f04f 0000    	mov.w	r0, #0x0
    2c98: bfa8         	it	ge
    2c9a: 2001         	movge	r0, #0x1
    2c9c: 900a         	str	r0, [sp, #0x28]
    2c9e: 980d         	ldr	r0, [sp, #0x34]
    2ca0: f020 4000    	bic	r0, r0, #0x80000000
    2ca4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2ca8: f04f 0000    	mov.w	r0, #0x0
    2cac: bfa8         	it	ge
    2cae: 2001         	movge	r0, #0x1
    2cb0: eddd ca74    	vldr	s25, [sp, #464]
    2cb4: 900d         	str	r0, [sp, #0x34]
    2cb6: 980e         	ldr	r0, [sp, #0x38]
    2cb8: f020 4000    	bic	r0, r0, #0x80000000
    2cbc: ee1c 1a90    	vmov	r1, s25
    2cc0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2cc4: f04f 0000    	mov.w	r0, #0x0
    2cc8: bfa8         	it	ge
    2cca: 2001         	movge	r0, #0x1
    2ccc: eddd 7a75    	vldr	s15, [sp, #468]
    2cd0: 900e         	str	r0, [sp, #0x38]
    2cd2: f021 4000    	bic	r0, r1, #0x80000000
    2cd6: ee17 1a90    	vmov	r1, s15
    2cda: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2cde: f04f 0000    	mov.w	r0, #0x0
    2ce2: bfa8         	it	ge
    2ce4: 2001         	movge	r0, #0x1
    2ce6: ed9d 8a76    	vldr	s16, [sp, #472]
    2cea: 9004         	str	r0, [sp, #0x10]
    2cec: f021 4000    	bic	r0, r1, #0x80000000
    2cf0: ee18 1a10    	vmov	r1, s16
    2cf4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2cf8: f04f 0000    	mov.w	r0, #0x0
    2cfc: bfa8         	it	ge
    2cfe: 2001         	movge	r0, #0x1
    2d00: ed9d 9a77    	vldr	s18, [sp, #476]
    2d04: 9003         	str	r0, [sp, #0xc]
    2d06: f021 4000    	bic	r0, r1, #0x80000000
    2d0a: ee19 1a10    	vmov	r1, s18
    2d0e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2d12: f04f 0000    	mov.w	r0, #0x0
    2d16: bfa8         	it	ge
    2d18: 2001         	movge	r0, #0x1
    2d1a: ed9d aa78    	vldr	s20, [sp, #480]
    2d1e: 9002         	str	r0, [sp, #0x8]
    2d20: f021 4000    	bic	r0, r1, #0x80000000
    2d24: ee1a 1a10    	vmov	r1, s20
    2d28: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2d2c: bfa8         	it	ge
    2d2e: f04f 0e01    	movge.w	lr, #0x1
    2d32: ed9d ba79    	vldr	s22, [sp, #484]
    2d36: f021 4000    	bic	r0, r1, #0x80000000
    2d3a: ee1b 1a10    	vmov	r1, s22
    2d3e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2d42: bfa8         	it	ge
    2d44: f04f 0901    	movge.w	r9, #0x1
    2d48: ed9d ca7a    	vldr	s24, [sp, #488]
    2d4c: f021 4100    	bic	r1, r1, #0x80000000
    2d50: ee1c 2a10    	vmov	r2, s24
    2d54: f1b1 4fff    	cmp.w	r1, #0x7f800000
    2d58: bfa8         	it	ge
    2d5a: f04f 0b01    	movge.w	r11, #0x1
    2d5e: ed9d da7b    	vldr	s26, [sp, #492]
    2d62: ee1d 3a10    	vmov	r3, s26
    2d66: f022 4200    	bic	r2, r2, #0x80000000
    2d6a: f1b2 4fff    	cmp.w	r2, #0x7f800000
    2d6e: f04f 0200    	mov.w	r2, #0x0
    2d72: bfa8         	it	ge
    2d74: 2201         	movge	r2, #0x1
    2d76: f023 4300    	bic	r3, r3, #0x80000000
    2d7a: ed9d ea60    	vldr	s28, [sp, #384]
    2d7e: f1b3 4fff    	cmp.w	r3, #0x7f800000
    2d82: f04f 0300    	mov.w	r3, #0x0
    2d86: ee1e 6a10    	vmov	r6, s28
    2d8a: bfa8         	it	ge
    2d8c: 2301         	movge	r3, #0x1
    2d8e: ed9d fa61    	vldr	s30, [sp, #388]
    2d92: ee1f 5a10    	vmov	r5, s30
    2d96: f026 4600    	bic	r6, r6, #0x80000000
    2d9a: f1b6 4fff    	cmp.w	r6, #0x7f800000
    2d9e: bfa8         	it	ge
    2da0: f04f 0c01    	movge.w	r12, #0x1
    2da4: eddd 8a62    	vldr	s17, [sp, #392]
    2da8: f025 4500    	bic	r5, r5, #0x80000000
    2dac: ee18 6a90    	vmov	r6, s17
    2db0: f1b5 4fff    	cmp.w	r5, #0x7f800000
    2db4: f04f 0500    	mov.w	r5, #0x0
    2db8: bfa8         	it	ge
    2dba: 2501         	movge	r5, #0x1
    2dbc: eddd 9a63    	vldr	s19, [sp, #396]
    2dc0: f026 4600    	bic	r6, r6, #0x80000000
    2dc4: ee19 0a90    	vmov	r0, s19
    2dc8: f1b6 4fff    	cmp.w	r6, #0x7f800000
    2dcc: f04f 0600    	mov.w	r6, #0x0
    2dd0: eddd aa64    	vldr	s21, [sp, #400]
    2dd4: bfa8         	it	ge
    2dd6: 2601         	movge	r6, #0x1
    2dd8: f020 4000    	bic	r0, r0, #0x80000000
    2ddc: eddd ba65    	vldr	s23, [sp, #404]
    2de0: ee1a 1a90    	vmov	r1, s21
    2de4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2de8: ee1b 0a90    	vmov	r0, s23
    2dec: bfa8         	it	ge
    2dee: f04f 0801    	movge.w	r8, #0x1
    2df2: f021 4100    	bic	r1, r1, #0x80000000
    2df6: f020 4000    	bic	r0, r0, #0x80000000
    2dfa: f1b1 4fff    	cmp.w	r1, #0x7f800000
    2dfe: bfa8         	it	ge
    2e00: f04f 0a01    	movge.w	r10, #0x1
    2e04: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2e08: f04f 0100    	mov.w	r1, #0x0
    2e0c: da4a         	bge	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x94
    2e0e: 981b         	ldr	r0, [sp, #0x6c]
    2e10: 2800         	cmp	r0, #0x0
    2e12: bf04         	itt	eq
    2e14: 9818         	ldreq	r0, [sp, #0x60]
    2e16: 2800         	cmpeq	r0, #0x0
    2e18: d144         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x88
    2e1a: 9816         	ldr	r0, [sp, #0x58]
    2e1c: 2800         	cmp	r0, #0x0
    2e1e: bf04         	itt	eq
    2e20: 9814         	ldreq	r0, [sp, #0x50]
    2e22: 2800         	cmpeq	r0, #0x0
    2e24: d13e         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x7c
    2e26: 9812         	ldr	r0, [sp, #0x48]
    2e28: 2800         	cmp	r0, #0x0
    2e2a: bf04         	itt	eq
    2e2c: 9810         	ldreq	r0, [sp, #0x40]
    2e2e: 2800         	cmpeq	r0, #0x0
    2e30: d138         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x70
    2e32: 9808         	ldr	r0, [sp, #0x20]
    2e34: 2800         	cmp	r0, #0x0
    2e36: bf04         	itt	eq
    2e38: 9807         	ldreq	r0, [sp, #0x1c]
    2e3a: 2800         	cmpeq	r0, #0x0
    2e3c: d132         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x64
    2e3e: 9806         	ldr	r0, [sp, #0x18]
    2e40: 2800         	cmp	r0, #0x0
    2e42: bf04         	itt	eq
    2e44: 9805         	ldreq	r0, [sp, #0x14]
    2e46: 2800         	cmpeq	r0, #0x0
    2e48: d12c         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x58
    2e4a: 9809         	ldr	r0, [sp, #0x24]
    2e4c: 2800         	cmp	r0, #0x0
    2e4e: bf04         	itt	eq
    2e50: 980a         	ldreq	r0, [sp, #0x28]
    2e52: 2800         	cmpeq	r0, #0x0
    2e54: d126         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x4c
    2e56: 980d         	ldr	r0, [sp, #0x34]
    2e58: 2800         	cmp	r0, #0x0
    2e5a: bf04         	itt	eq
    2e5c: 980e         	ldreq	r0, [sp, #0x38]
    2e5e: 2800         	cmpeq	r0, #0x0
    2e60: d120         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x40
    2e62: 9804         	ldr	r0, [sp, #0x10]
    2e64: 2800         	cmp	r0, #0x0
    2e66: bf04         	itt	eq
    2e68: 9803         	ldreq	r0, [sp, #0xc]
    2e6a: 2800         	cmpeq	r0, #0x0
    2e6c: d11a         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x34
    2e6e: 9802         	ldr	r0, [sp, #0x8]
    2e70: 2800         	cmp	r0, #0x0
    2e72: bf08         	it	eq
    2e74: f1be 0f00    	cmpeq.w	lr, #0x0
    2e78: d114         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x28
    2e7a: f1b9 0f00    	cmp.w	r9, #0x0
    2e7e: bf08         	it	eq
    2e80: f1bb 0f00    	cmpeq.w	r11, #0x0
    2e84: d10e         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x1c
    2e86: 2a00         	cmp	r2, #0x0
    2e88: bf08         	it	eq
    2e8a: 2b00         	cmpeq	r3, #0x0
    2e8c: d10a         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x14
    2e8e: f1bc 0f00    	cmp.w	r12, #0x0
    2e92: bf08         	it	eq
    2e94: 2d00         	cmpeq	r5, #0x0
    2e96: d105         	bne	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0xa
    2e98: 2e00         	cmp	r6, #0x0
    2e9a: bf08         	it	eq
    2e9c: f1b8 0f00    	cmpeq.w	r8, #0x0
    2ea0: f000 80da    	beq.w	0x3058 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x21d0> @ imm = #0x1b4
    2ea4: 9a1d         	ldr	r2, [sp, #0x74]
    2ea6: 69e0         	ldr	r0, [r4, #0x1c]
    2ea8: 460b         	mov	r3, r1
    2eaa: f04f 41ff    	mov.w	r1, #0x7f800000
    2eae: e9c2 0100    	strd	r0, r1, [r2]
    2eb2: 981c         	ldr	r0, [sp, #0x70]
    2eb4: 7210         	strb	r0, [r2, #0x8]
    2eb6: 7253         	strb	r3, [r2, #0x9]
    2eb8: f50d 7d0a    	add.w	sp, sp, #0x228
    2ebc: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    2ec0: b001         	add	sp, #0x4
    2ec2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    2ec6: bdf0         	pop	{r4, r5, r6, r7, pc}
    2ec8: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    2ecc: eef0 2a45    	vmov.f32	s5, s10
    2ed0: eef0 ca46    	vmov.f32	s25, s12
    2ed4: ed8d 9b0a    	vstr	d9, [sp, #40]
    2ed8: ed9f 9abd    	vldr	s18, [pc, #756]         @ 0x31d0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2348>
    2edc: ee42 ca25    	vmla.f32	s25, s4, s11
    2ee0: ee42 2a09    	vmla.f32	s5, s4, s18
    2ee4: ed8d 2a5e    	vstr	s4, [sp, #376]
    2ee8: fe82 9aec    	vminnm.f32	s18, s5, s25
    2eec: ee3a cac9    	vsub.f32	s24, s21, s18
    2ef0: eeb8 9a00    	vmov.f32	s18, #-2.000000e+00
    2ef4: eeb4 ca49    	vcmp.f32	s24, s18
    2ef8: ed9d 9b0a    	vldr	d9, [sp, #40]
    2efc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f00: f77e ae07    	ble.w	0x1b12 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xc8a> @ imm = #-0x13f2
    2f04: eef4 2a6c    	vcmp.f32	s5, s25
    2f08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f0c: f63e ae01    	bhi.w	0x1b12 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xc8a> @ imm = #-0x13fe
    2f10: eeb5 ca40    	vcmp.f32	s24, #0
    2f14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f18: f57e adfb    	bpl.w	0x1b12 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xc8a> @ imm = #-0x140a
    2f1c: eef0 2a66    	vmov.f32	s5, s13
    2f20: ee4c 2a2a    	vmla.f32	s5, s24, s21
    2f24: ed9f 9aab    	vldr	s18, [pc, #684]         @ 0x31d4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x234c>
    2f28: ee62 2a89    	vmul.f32	s5, s5, s18
    2f2c: ed9f 9aaa    	vldr	s18, [pc, #680]         @ 0x31d8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2350>
    2f30: eef4 2a49    	vcmp.f32	s5, s18
    2f34: ed9d 9b0a    	vldr	d9, [sp, #40]
    2f38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f3c: f77e ade9    	ble.w	0x1b12 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xc8a> @ imm = #-0x142e
    2f40: f7fe be6c    	b.w	0x1c1c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xd94> @ imm = #-0x1328
    2f44: bf00         	nop
    2f46: bf00         	nop
    2f48: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    2f4c: ed9f 8aa0    	vldr	s16, [pc, #640]         @ 0x31d0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2348>
    2f50: eef0 2a45    	vmov.f32	s5, s10
    2f54: eeb0 ca46    	vmov.f32	s24, s12
    2f58: ed8d 2a5e    	vstr	s4, [sp, #376]
    2f5c: ee42 2a08    	vmla.f32	s5, s4, s16
    2f60: ee02 ca25    	vmla.f32	s24, s4, s11
    2f64: fe82 8acc    	vminnm.f32	s16, s5, s24
    2f68: ee3a bac8    	vsub.f32	s22, s21, s16
    2f6c: eeb8 8a00    	vmov.f32	s16, #-2.000000e+00
    2f70: eeb4 ba48    	vcmp.f32	s22, s16
    2f74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f78: f77e ae0e    	ble.w	0x1b98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xd10> @ imm = #-0x13e4
    2f7c: eeb4 ca62    	vcmp.f32	s24, s5
    2f80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f84: f63e ae08    	bhi.w	0x1b98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xd10> @ imm = #-0x13f0
    2f88: eeb5 ba40    	vcmp.f32	s22, #0
    2f8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f90: f57e ae02    	bpl.w	0x1b98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xd10> @ imm = #-0x13fc
    2f94: eef0 2a66    	vmov.f32	s5, s13
    2f98: ee4b 2a2a    	vmla.f32	s5, s22, s21
    2f9c: ed9f 8a8d    	vldr	s16, [pc, #564]         @ 0x31d4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x234c>
    2fa0: ee62 2a88    	vmul.f32	s5, s5, s16
    2fa4: ed9f 8a8c    	vldr	s16, [pc, #560]         @ 0x31d8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2350>
    2fa8: eef4 2a48    	vcmp.f32	s5, s16
    2fac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fb0: f77e adf2    	ble.w	0x1b98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xd10> @ imm = #-0x141c
    2fb4: f7fe be32    	b.w	0x1c1c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xd94> @ imm = #-0x139c
    2fb8: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    2fbc: ed9f 9a84    	vldr	s18, [pc, #528]         @ 0x31d0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2348>
    2fc0: eef0 2a45    	vmov.f32	s5, s10
    2fc4: eef0 ca46    	vmov.f32	s25, s12
    2fc8: ed8d 2a5e    	vstr	s4, [sp, #376]
    2fcc: ee42 2a09    	vmla.f32	s5, s4, s18
    2fd0: ee42 ca25    	vmla.f32	s25, s4, s11
    2fd4: fe82 9aec    	vminnm.f32	s18, s5, s25
    2fd8: ee3a cac9    	vsub.f32	s24, s21, s18
    2fdc: eeb8 9a00    	vmov.f32	s18, #-2.000000e+00
    2fe0: eeb4 ca49    	vcmp.f32	s24, s18
    2fe4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fe8: f77e ad9e    	ble.w	0x1b28 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xca0> @ imm = #-0x14c4
    2fec: eef4 2a6c    	vcmp.f32	s5, s25
    2ff0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ff4: f63e ad98    	bhi.w	0x1b28 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xca0> @ imm = #-0x14d0
    2ff8: eeb5 ca40    	vcmp.f32	s24, #0
    2ffc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3000: f57e ad92    	bpl.w	0x1b28 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xca0> @ imm = #-0x14dc
    3004: eef0 2a66    	vmov.f32	s5, s13
    3008: ee4c 2a2a    	vmla.f32	s5, s24, s21
    300c: ed9f 9a71    	vldr	s18, [pc, #452]         @ 0x31d4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x234c>
    3010: ee62 2a89    	vmul.f32	s5, s5, s18
    3014: ed9f 9a70    	vldr	s18, [pc, #448]         @ 0x31d8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2350>
    3018: eef4 2a49    	vcmp.f32	s5, s18
    301c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3020: f77e ad82    	ble.w	0x1b28 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xca0> @ imm = #-0x14fc
    3024: f7fe bdfa    	b.w	0x1c1c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xd94> @ imm = #-0x140c
    3028: f24d 70b0    	movw	r0, #0xd7b0
    302c: f24e 0200    	movw	r2, #0xe000
    3030: f2c0 0000    	movt	r0, #0x0
    3034: f2c0 0200    	movt	r2, #0x0
    3038: a97c         	add	r1, sp, #0x1f0
    303a: f008 fdbd    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #0x8b7a
    303e: bf00         	nop
    3040: f24d 70b0    	movw	r0, #0xd7b0
    3044: f24e 0200    	movw	r2, #0xe000
    3048: f2c0 0000    	movt	r0, #0x0
    304c: f2c0 0200    	movt	r2, #0x0
    3050: a965         	add	r1, sp, #0x194
    3052: f008 fdb1    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #0x8b62
    3056: bf00         	nop
    3058: f1ba 0f00    	cmp.w	r10, #0x0
    305c: f47f af22    	bne.w	0x2ea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #-0x1bc
    3060: f104 0120    	add.w	r1, r4, #0x20
    3064: f104 0090    	add.w	r0, r4, #0x90
    3068: 2270         	movs	r2, #0x70
    306a: ed8d 8a08    	vstr	s16, [sp, #32]
    306e: eeb0 8a43    	vmov.f32	s16, s6
    3072: ed8d 9a09    	vstr	s18, [sp, #36]
    3076: eeb0 9a44    	vmov.f32	s18, s8
    307a: ed8d aa0a    	vstr	s20, [sp, #40]
    307e: eeb0 aa45    	vmov.f32	s20, s10
    3082: ed8d ba0d    	vstr	s22, [sp, #52]
    3086: eeb0 ba46    	vmov.f32	s22, s12
    308a: ed8d ca0e    	vstr	s24, [sp, #56]
    308e: eeb0 ca47    	vmov.f32	s24, s14
    3092: ed8d da10    	vstr	s26, [sp, #64]
    3096: eeb0 da60    	vmov.f32	s26, s1
    309a: ed8d ea12    	vstr	s28, [sp, #72]
    309e: eeb0 ea61    	vmov.f32	s28, s3
    30a2: ed8d fa14    	vstr	s30, [sp, #80]
    30a6: eeb0 fa62    	vmov.f32	s30, s5
    30aa: edcd 8a16    	vstr	s17, [sp, #88]
    30ae: eef0 8a63    	vmov.f32	s17, s7
    30b2: edcd 9a18    	vstr	s19, [sp, #96]
    30b6: eef0 9a64    	vmov.f32	s19, s9
    30ba: edcd aa1b    	vstr	s21, [sp, #108]
    30be: eef0 aa65    	vmov.f32	s21, s11
    30c2: edcd 7a07    	vstr	s15, [sp, #28]
    30c6: f00a f983    	bl	0xd3d0 <__aeabi_memcpy4> @ imm = #0xa306
    30ca: ad58         	add	r5, sp, #0x160
    30cc: edc4 ba08    	vstr	s23, [r4, #32]
    30d0: edc4 da09    	vstr	s27, [r4, #36]
    30d4: ed9d 0a07    	vldr	s0, [sp, #28]
    30d8: edc4 ea0a    	vstr	s29, [r4, #40]
    30dc: 4620         	mov	r0, r4
    30de: edc4 fa0b    	vstr	s31, [r4, #44]
    30e2: ed84 8a0c    	vstr	s16, [r4, #48]
    30e6: ed84 9a0d    	vstr	s18, [r4, #52]
    30ea: ed84 aa0e    	vstr	s20, [r4, #56]
    30ee: ed84 ba0f    	vstr	s22, [r4, #60]
    30f2: ed84 ca10    	vstr	s24, [r4, #64]
    30f6: ed84 da11    	vstr	s26, [r4, #68]
    30fa: ed84 ea12    	vstr	s28, [r4, #72]
    30fe: ed84 fa13    	vstr	s30, [r4, #76]
    3102: edc4 8a14    	vstr	s17, [r4, #80]
    3106: edc4 9a15    	vstr	s19, [r4, #84]
    310a: edc4 aa16    	vstr	s21, [r4, #88]
    310e: edc4 ca17    	vstr	s25, [r4, #92]
    3112: ed84 0a18    	vstr	s0, [r4, #96]
    3116: ed9d 0a08    	vldr	s0, [sp, #32]
    311a: ed84 0a19    	vstr	s0, [r4, #100]
    311e: ed9d 0a09    	vldr	s0, [sp, #36]
    3122: ed84 0a1a    	vstr	s0, [r4, #104]
    3126: ed9d 0a0a    	vldr	s0, [sp, #40]
    312a: ed84 0a1b    	vstr	s0, [r4, #108]
    312e: ed9d 0a0d    	vldr	s0, [sp, #52]
    3132: ed84 0a1c    	vstr	s0, [r4, #112]
    3136: ed9d 0a0e    	vldr	s0, [sp, #56]
    313a: ed84 0a1d    	vstr	s0, [r4, #116]
    313e: ed9d 0a10    	vldr	s0, [sp, #64]
    3142: ed84 0a1e    	vstr	s0, [r4, #120]
    3146: ed9d 0a12    	vldr	s0, [sp, #72]
    314a: ed84 0a1f    	vstr	s0, [r4, #124]
    314e: ed9d 0a14    	vldr	s0, [sp, #80]
    3152: ed84 0a20    	vstr	s0, [r4, #128]
    3156: ed9d 0a16    	vldr	s0, [sp, #88]
    315a: ed84 0a21    	vstr	s0, [r4, #132]
    315e: ed9d 0a18    	vldr	s0, [sp, #96]
    3162: ed84 0a22    	vstr	s0, [r4, #136]
    3166: ed9d 0a1b    	vldr	s0, [sp, #108]
    316a: ed84 0a23    	vstr	s0, [r4, #140]
    316e: cd4e         	ldm	r5!, {r1, r2, r3, r6}
    3170: c04e         	stm	r0!, {r1, r2, r3, r6}
    3172: e895 004e    	ldm.w	r5, {r1, r2, r3, r6}
    3176: c04e         	stm	r0!, {r1, r2, r3, r6}
    3178: f8d4 0118    	ldr.w	r0, [r4, #0x118]
    317c: 991d         	ldr	r1, [sp, #0x74]
    317e: 3001         	adds	r0, #0x1
    3180: ed9d 0a01    	vldr	s0, [sp, #4]
    3184: ed81 0a01    	vstr	s0, [r1, #4]
    3188: bf28         	it	hs
    318a: f04f 30ff    	movhs.w	r0, #0xffffffff
    318e: f8c4 0118    	str.w	r0, [r4, #0x118]
    3192: 985f         	ldr	r0, [sp, #0x17c]
    3194: 6008         	str	r0, [r1]
    3196: 981c         	ldr	r0, [sp, #0x70]
    3198: 7208         	strb	r0, [r1, #0x8]
    319a: 2001         	movs	r0, #0x1
    319c: 7248         	strb	r0, [r1, #0x9]
    319e: e68b         	b	0x2eb8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2030> @ imm = #-0x2ea
    31a0: ed9f 4a0a    	vldr	s8, [pc, #40]           @ 0x31cc <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2344>
    31a4: eeb0 3a44    	vmov.f32	s6, s8
    31a8: f7fe b9a6    	b.w	0x14f8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x670> @ imm = #-0x1cb4
    31ac: bf00         	nop
    31ae: bf00         	nop
    31b0: eddf 5a06    	vldr	s11, [pc, #24]          @ 0x31cc <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2344>
    31b4: eeb0 7a65    	vmov.f32	s14, s11
    31b8: f7fe be4d    	b.w	0x1e56 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0xfce> @ imm = #-0x1366
    31bc: bf00         	nop
    31be: bf00         	nop
    31c0: ed9f ea02    	vldr	s28, [pc, #8]           @ 0x31cc <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x2344>
    31c4: eeb0 9a4e    	vmov.f32	s18, s28
    31c8: f7fe bfb5    	b.w	0x2136 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>+0x12ae> @ imm = #-0x1096
    31cc: 00 00 c0 7f  	.word	0x7fc00000
    31d0: 99 76 cd 39  	.word	0x39cd7699
    31d4: 2b 18 95 3b  	.word	0x3b95182b
    31d8: 95 bf d6 33  	.word	0x33d6bf95
    31dc: 00 00 00 80  	.word	0x80000000
    31e0: d2 4e da c3  	.word	0xc3da4ed2
    31e4: d4 d4 d4 d4  	.word	0xd4d4d4d4

000031e8 <orange_dsp::generated_packed::origin::<5>>:
    31e8: b580         	push	{r7, lr}
    31ea: 466f         	mov	r7, sp
    31ec: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    31f0: b084         	sub	sp, #0x10
    31f2: edd1 ba01    	vldr	s23, [r1, #4]
    31f6: ed91 1a02    	vldr	s2, [r1, #8]
    31fa: eeb7 2aeb    	vcvt.f64.f32	d2, s23
    31fe: edd1 6a03    	vldr	s13, [r1, #12]
    3202: ed9f 3be5    	vldr	d3, [pc, #916]          @ 0x3598 <orange_dsp::generated_packed::origin::<5>+0x3b0>
    3206: eef0 7a40    	vmov.f32	s15, s0
    320a: edd1 ea04    	vldr	s29, [r1, #16]
    320e: ee22 8b03    	vmul.f64	d8, d2, d3
    3212: eeb7 2ac1    	vcvt.f64.f32	d2, s2
    3216: ed91 6a06    	vldr	s12, [r1, #24]
    321a: ed9f 3be1    	vldr	d3, [pc, #900]          @ 0x35a0 <orange_dsp::generated_packed::origin::<5>+0x3b8>
    321e: edd1 aa07    	vldr	s21, [r1, #28]
    3222: ed91 fa08    	vldr	s30, [r1, #32]
    3226: ee02 8b03    	vmla.f64	d8, d2, d3
    322a: eeb7 2ae6    	vcvt.f64.f32	d2, s13
    322e: ed91 ea09    	vldr	s28, [r1, #36]
    3232: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0x35a8 <orange_dsp::generated_packed::origin::<5>+0x3c0>
    3236: eeb7 cacf    	vcvt.f64.f32	d12, s30
    323a: ed91 ba0a    	vldr	s22, [r1, #40]
    323e: ee02 8b03    	vmla.f64	d8, d2, d3
    3242: eeb7 2ac0    	vcvt.f64.f32	d2, s0
    3246: ed91 0a05    	vldr	s0, [r1, #20]
    324a: ed9f 3bd9    	vldr	d3, [pc, #868]          @ 0x35b0 <orange_dsp::generated_packed::origin::<5>+0x3c8>
    324e: eeb7 dace    	vcvt.f64.f32	d13, s28
    3252: ed8d 1a02    	vstr	s2, [sp, #8]
    3256: ee22 3b03    	vmul.f64	d3, d2, d3
    325a: eeb7 2ac0    	vcvt.f64.f32	d2, s0
    325e: ed91 aa0b    	vldr	s20, [r1, #44]
    3262: ed9f 4bd5    	vldr	d4, [pc, #852]          @ 0x35b8 <orange_dsp::generated_packed::origin::<5>+0x3d0>
    3266: ed8d 0a03    	vstr	s0, [sp, #12]
    326a: eeb7 0aca    	vcvt.f64.f32	d0, s20
    326e: ee22 4b04    	vmul.f64	d4, d2, d4
    3272: eeb7 2aee    	vcvt.f64.f32	d2, s29
    3276: edd1 fa0c    	vldr	s31, [r1, #48]
    327a: ed9f 5bd1    	vldr	d5, [pc, #836]          @ 0x35c0 <orange_dsp::generated_packed::origin::<5>+0x3d8>
    327e: ee02 4b05    	vmla.f64	d4, d2, d5
    3282: eeb7 2ac6    	vcvt.f64.f32	d2, s12
    3286: ed9f 5bd0    	vldr	d5, [pc, #832]          @ 0x35c8 <orange_dsp::generated_packed::origin::<5>+0x3e0>
    328a: ee02 4b05    	vmla.f64	d4, d2, d5
    328e: eeb7 5aea    	vcvt.f64.f32	d5, s21
    3292: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x35d0 <orange_dsp::generated_packed::origin::<5>+0x3e8>
    3296: ee05 4b09    	vmla.f64	d4, d5, d9
    329a: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x35d8 <orange_dsp::generated_packed::origin::<5>+0x3f0>
    329e: ee0c 4b09    	vmla.f64	d4, d12, d9
    32a2: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x35e0 <orange_dsp::generated_packed::origin::<5>+0x3f8>
    32a6: ee0d 4b09    	vmla.f64	d4, d13, d9
    32aa: eeb7 9acb    	vcvt.f64.f32	d9, s22
    32ae: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0x35e8 <orange_dsp::generated_packed::origin::<5>+0x400>
    32b2: ee09 4b01    	vmla.f64	d4, d9, d1
    32b6: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0x35f0 <orange_dsp::generated_packed::origin::<5>+0x408>
    32ba: ee00 4b01    	vmla.f64	d4, d0, d1
    32be: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x3610 <orange_dsp::generated_packed::origin::<5>+0x428>
    32c2: ee25 5b01    	vmul.f64	d5, d5, d1
    32c6: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x3618 <orange_dsp::generated_packed::origin::<5>+0x430>
    32ca: ee02 5b01    	vmla.f64	d5, d2, d1
    32ce: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x3620 <orange_dsp::generated_packed::origin::<5>+0x438>
    32d2: ee0c 5b01    	vmla.f64	d5, d12, d1
    32d6: eeb7 caef    	vcvt.f64.f32	d12, s31
    32da: ed9f 1bc7    	vldr	d1, [pc, #796]          @ 0x35f8 <orange_dsp::generated_packed::origin::<5>+0x410>
    32de: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0x3628 <orange_dsp::generated_packed::origin::<5>+0x440>
    32e2: ee0c 4b01    	vmla.f64	d4, d12, d1
    32e6: ed91 1a0d    	vldr	s2, [r1, #52]
    32ea: eddf 1afc    	vldr	s3, [pc, #1008]         @ 0x36dc <orange_dsp::generated_packed::origin::<5>+0x4f4>
    32ee: ee0d 5b02    	vmla.f64	d5, d13, d2
    32f2: eeb7 dac1    	vcvt.f64.f32	d13, s2
    32f6: ed9f 2bc2    	vldr	d2, [pc, #776]          @ 0x3600 <orange_dsp::generated_packed::origin::<5>+0x418>
    32fa: ee0d 4b02    	vmla.f64	d4, d13, d2
    32fe: ed9f 2aec    	vldr	s4, [pc, #944]          @ 0x36b0 <orange_dsp::generated_packed::origin::<5>+0x4c8>
    3302: ee26 7a02    	vmul.f32	s14, s12, s4
    3306: ed9f 2aeb    	vldr	s4, [pc, #940]          @ 0x36b4 <orange_dsp::generated_packed::origin::<5>+0x4cc>
    330a: ee0a 7a82    	vmla.f32	s14, s21, s4
    330e: ed9f 2af1    	vldr	s4, [pc, #964]          @ 0x36d4 <orange_dsp::generated_packed::origin::<5>+0x4ec>
    3312: ee26 6a02    	vmul.f32	s12, s12, s4
    3316: ed9f 2af0    	vldr	s4, [pc, #960]          @ 0x36d8 <orange_dsp::generated_packed::origin::<5>+0x4f0>
    331a: ee0a 6a82    	vmla.f32	s12, s21, s4
    331e: ed9f 2ae6    	vldr	s4, [pc, #920]          @ 0x36b8 <orange_dsp::generated_packed::origin::<5>+0x4d0>
    3322: ee0f 7a02    	vmla.f32	s14, s30, s4
    3326: edd1 aa0e    	vldr	s21, [r1, #56]
    332a: eeb7 2aea    	vcvt.f64.f32	d2, s21
    332e: ee0f 6a21    	vmla.f32	s12, s30, s3
    3332: eddf 1ad7    	vldr	s3, [pc, #860]          @ 0x3690 <orange_dsp::generated_packed::origin::<5>+0x4a8>
    3336: ee2b faa1    	vmul.f32	s30, s23, s3
    333a: edd1 1a00    	vldr	s3, [r1]
    333e: eddf bad5    	vldr	s23, [pc, #852]         @ 0x3694 <orange_dsp::generated_packed::origin::<5>+0x4ac>
    3342: ed8d 0b00    	vstr	d0, [sp]
    3346: ee01 faab    	vmla.f32	s30, s3, s23
    334a: eddf 1adc    	vldr	s3, [pc, #880]          @ 0x36bc <orange_dsp::generated_packed::origin::<5>+0x4d4>
    334e: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0x3608 <orange_dsp::generated_packed::origin::<5>+0x420>
    3352: ee0e 7a21    	vmla.f32	s14, s28, s3
    3356: eddf 1ae2    	vldr	s3, [pc, #904]          @ 0x36e0 <orange_dsp::generated_packed::origin::<5>+0x4f8>
    335a: ee02 4b00    	vmla.f64	d4, d2, d0
    335e: ee0e 6a21    	vmla.f32	s12, s28, s3
    3362: eddf 1ace    	vldr	s3, [pc, #824]          @ 0x369c <orange_dsp::generated_packed::origin::<5>+0x4b4>
    3366: ed9d 0a02    	vldr	s0, [sp, #8]
    336a: ed9f eacd    	vldr	s28, [pc, #820]         @ 0x36a0 <orange_dsp::generated_packed::origin::<5>+0x4b8>
    336e: ee60 1a21    	vmul.f32	s3, s0, s3
    3372: eddf 0ad5    	vldr	s1, [pc, #852]          @ 0x36c8 <orange_dsp::generated_packed::origin::<5>+0x4e0>
    3376: ee46 1a8e    	vmla.f32	s3, s13, s28
    337a: eddf 6ad1    	vldr	s13, [pc, #836]         @ 0x36c0 <orange_dsp::generated_packed::origin::<5>+0x4d8>
    337e: ee0b 7a26    	vmla.f32	s14, s22, s13
    3382: eddf 6ad8    	vldr	s13, [pc, #864]         @ 0x36e4 <orange_dsp::generated_packed::origin::<5>+0x4fc>
    3386: ee0b 6a26    	vmla.f32	s12, s22, s13
    338a: eddf 6ac6    	vldr	s13, [pc, #792]         @ 0x36a4 <orange_dsp::generated_packed::origin::<5>+0x4bc>
    338e: ee4e 1aa6    	vmla.f32	s3, s29, s13
    3392: eddf 6acc    	vldr	s13, [pc, #816]         @ 0x36c4 <orange_dsp::generated_packed::origin::<5>+0x4dc>
    3396: ee0a 7a26    	vmla.f32	s14, s20, s13
    339a: eddf 6ad3    	vldr	s13, [pc, #844]         @ 0x36e8 <orange_dsp::generated_packed::origin::<5>+0x500>
    339e: ee0a 6a26    	vmla.f32	s12, s20, s13
    33a2: eddf 6abd    	vldr	s13, [pc, #756]         @ 0x3698 <orange_dsp::generated_packed::origin::<5>+0x4b0>
    33a6: ed9f bba2    	vldr	d11, [pc, #648]         @ 0x3630 <orange_dsp::generated_packed::origin::<5>+0x448>
    33aa: ee0f 7aa0    	vmla.f32	s14, s31, s1
    33ae: eddf 0acf    	vldr	s1, [pc, #828]          @ 0x36ec <orange_dsp::generated_packed::origin::<5>+0x504>
    33b2: ee09 5b0b    	vmla.f64	d5, d9, d11
    33b6: ee0f 6aa0    	vmla.f32	s12, s31, s1
    33ba: eddf 0ac4    	vldr	s1, [pc, #784]          @ 0x36cc <orange_dsp::generated_packed::origin::<5>+0x4e4>
    33be: ed9f 9b9e    	vldr	d9, [pc, #632]          @ 0x3638 <orange_dsp::generated_packed::origin::<5>+0x450>
    33c2: ee01 7a20    	vmla.f32	s14, s2, s1
    33c6: eddf 0aca    	vldr	s1, [pc, #808]          @ 0x36f0 <orange_dsp::generated_packed::origin::<5>+0x508>
    33ca: ed9d bb00    	vldr	d11, [sp]
    33ce: ee01 6a20    	vmla.f32	s12, s2, s1
    33d2: ed9d 0a03    	vldr	s0, [sp, #12]
    33d6: ee0b 5b09    	vmla.f64	d5, d11, d9
    33da: ee07 faa6    	vmla.f32	s30, s15, s13
    33de: eddf 6ab2    	vldr	s13, [pc, #712]         @ 0x36a8 <orange_dsp::generated_packed::origin::<5>+0x4c0>
    33e2: ed9f 9b97    	vldr	d9, [pc, #604]          @ 0x3640 <orange_dsp::generated_packed::origin::<5>+0x458>
    33e6: ed9f 1ac3    	vldr	s2, [pc, #780]          @ 0x36f4 <orange_dsp::generated_packed::origin::<5>+0x50c>
    33ea: ee40 1a26    	vmla.f32	s3, s0, s13
    33ee: ee0c 5b09    	vmla.f64	d5, d12, d9
    33f2: eddf 6aae    	vldr	s13, [pc, #696]         @ 0x36ac <orange_dsp::generated_packed::origin::<5>+0x4c4>
    33f6: ee0a 6a81    	vmla.f32	s12, s21, s2
    33fa: ed9f 9b93    	vldr	d9, [pc, #588]          @ 0x3648 <orange_dsp::generated_packed::origin::<5>+0x460>
    33fe: ed91 1a0f    	vldr	s2, [r1, #60]
    3402: ee27 0aa6    	vmul.f32	s0, s15, s13
    3406: ee0d 5b09    	vmla.f64	d5, d13, d9
    340a: eddf 6ab1    	vldr	s13, [pc, #708]         @ 0x36d0 <orange_dsp::generated_packed::origin::<5>+0x4e8>
    340e: ed9f 9b90    	vldr	d9, [pc, #576]          @ 0x3650 <orange_dsp::generated_packed::origin::<5>+0x468>
    3412: ee0a 7aa6    	vmla.f32	s14, s21, s13
    3416: eddf 0ab8    	vldr	s1, [pc, #736]          @ 0x36f8 <orange_dsp::generated_packed::origin::<5>+0x510>
    341a: ee02 5b09    	vmla.f64	d5, d2, d9
    341e: eeb7 9ac1    	vcvt.f64.f32	d9, s2
    3422: edd1 6a10    	vldr	s13, [r1, #64]
    3426: ed9f ab8c    	vldr	d10, [pc, #560]         @ 0x3658 <orange_dsp::generated_packed::origin::<5>+0x470>
    342a: eddf 7ab4    	vldr	s15, [pc, #720]         @ 0x36fc <orange_dsp::generated_packed::origin::<5>+0x514>
    342e: ee61 0a20    	vmul.f32	s1, s2, s1
    3432: ee46 0aa7    	vmla.f32	s1, s13, s15
    3436: edd1 7a11    	vldr	s15, [r1, #68]
    343a: ee09 5b0a    	vmla.f64	d5, d9, d10
    343e: eeb7 9ae6    	vcvt.f64.f32	d9, s13
    3442: ed9f 2aaf    	vldr	s4, [pc, #700]          @ 0x3700 <orange_dsp::generated_packed::origin::<5>+0x518>
    3446: ed9f ab86    	vldr	d10, [pc, #536]         @ 0x3660 <orange_dsp::generated_packed::origin::<5>+0x478>
    344a: ee47 0a82    	vmla.f32	s1, s15, s4
    344e: ed91 1a12    	vldr	s2, [r1, #72]
    3452: ee09 5b0a    	vmla.f64	d5, d9, d10
    3456: eeb7 9ae7    	vcvt.f64.f32	d9, s15
    345a: ed9f 2aaa    	vldr	s4, [pc, #680]          @ 0x3704 <orange_dsp::generated_packed::origin::<5>+0x51c>
    345e: ed9f ab82    	vldr	d10, [pc, #520]         @ 0x3668 <orange_dsp::generated_packed::origin::<5>+0x480>
    3462: ee41 0a02    	vmla.f32	s1, s2, s4
    3466: ed9f 2aa8    	vldr	s4, [pc, #672]          @ 0x3708 <orange_dsp::generated_packed::origin::<5>+0x520>
    346a: ee29 9b0a    	vmul.f64	d9, d9, d10
    346e: eeb7 aac1    	vcvt.f64.f32	d10, s2
    3472: edd1 6a14    	vldr	s13, [r1, #80]
    3476: ee21 ba02    	vmul.f32	s22, s2, s4
    347a: ed9f 2aa4    	vldr	s4, [pc, #656]          @ 0x370c <orange_dsp::generated_packed::origin::<5>+0x524>
    347e: ed9f cb7c    	vldr	d12, [pc, #496]         @ 0x3670 <orange_dsp::generated_packed::origin::<5>+0x488>
    3482: ee07 ba82    	vmla.f32	s22, s15, s4
    3486: edd1 7a13    	vldr	s15, [r1, #76]
    348a: eeb7 2ae6    	vcvt.f64.f32	d2, s13
    348e: ed91 1a16    	vldr	s2, [r1, #88]
    3492: ee0a 9b0c    	vmla.f64	d9, d10, d12
    3496: eeb7 cae7    	vcvt.f64.f32	d12, s15
    349a: ed9f ab77    	vldr	d10, [pc, #476]         @ 0x3678 <orange_dsp::generated_packed::origin::<5>+0x490>
    349e: ee30 7a07    	vadd.f32	s14, s0, s14
    34a2: ed9f db77    	vldr	d13, [pc, #476]         @ 0x3680 <orange_dsp::generated_packed::origin::<5>+0x498>
    34a6: ee30 6a06    	vadd.f32	s12, s0, s12
    34aa: ee22 ab0a    	vmul.f64	d10, d2, d10
    34ae: edd1 2a15    	vldr	s5, [r1, #84]
    34b2: ed9f 2a9a    	vldr	s4, [pc, #616]          @ 0x371c <orange_dsp::generated_packed::origin::<5>+0x534>
    34b6: ee0c ab0d    	vmla.f64	d10, d12, d13
    34ba: eeb7 cae2    	vcvt.f64.f32	d12, s5
    34be: ed9f db72    	vldr	d13, [pc, #456]         @ 0x3688 <orange_dsp::generated_packed::origin::<5>+0x4a0>
    34c2: ee21 ea02    	vmul.f32	s28, s2, s4
    34c6: ed9f 1a96    	vldr	s2, [pc, #600]          @ 0x3720 <orange_dsp::generated_packed::origin::<5>+0x538>
    34ca: ee0c ab0d    	vmla.f64	d10, d12, d13
    34ce: ed9f da90    	vldr	s26, [pc, #576]         @ 0x3710 <orange_dsp::generated_packed::origin::<5>+0x528>
    34d2: ee02 ea81    	vmla.f32	s28, s5, s2
    34d6: ee07 ba8d    	vmla.f32	s22, s15, s26
    34da: ee30 ca21    	vadd.f32	s24, s0, s3
    34de: ee33 1b04    	vadd.f64	d1, d3, d4
    34e2: ee70 0a20    	vadd.f32	s1, s0, s1
    34e6: ee33 4b05    	vadd.f64	d4, d3, d5
    34ea: eeb7 cacc    	vcvt.f64.f32	d12, s24
    34ee: ee33 5b09    	vadd.f64	d5, d3, d9
    34f2: eeb7 9ac7    	vcvt.f64.f32	d9, s14
    34f6: ed9f 7a87    	vldr	s14, [pc, #540]         @ 0x3714 <orange_dsp::generated_packed::origin::<5>+0x52c>
    34fa: ee26 7a87    	vmul.f32	s14, s13, s14
    34fe: ee33 2b08    	vadd.f64	d2, d3, d8
    3502: eeb7 8acf    	vcvt.f64.f32	d8, s30
    3506: ee33 3b0a    	vadd.f64	d3, d3, d10
    350a: ed9f aa83    	vldr	s20, [pc, #524]         @ 0x3718 <orange_dsp::generated_packed::origin::<5>+0x530>
    350e: ed80 8b00    	vstr	d8, [r0]
    3512: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    3516: ee3b 6a07    	vadd.f32	s12, s22, s14
    351a: ee17 7a8a    	vnmls.f32	s14, s15, s20
    351e: ed80 8b06    	vstr	d8, [r0, #24]
    3522: ee30 6a06    	vadd.f32	s12, s0, s12
    3526: ed80 9b04    	vstr	d9, [r0, #16]
    352a: eeb7 9ae0    	vcvt.f64.f32	d9, s1
    352e: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    3532: ee30 6a07    	vadd.f32	s12, s0, s14
    3536: ee30 7a0e    	vadd.f32	s14, s0, s28
    353a: ed80 8b0a    	vstr	d8, [r0, #40]
    353e: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    3542: ed9f 6a78    	vldr	s12, [pc, #480]         @ 0x3724 <orange_dsp::generated_packed::origin::<5>+0x53c>
    3546: ed80 8b0c    	vstr	d8, [r0, #48]
    354a: eeb7 8ac7    	vcvt.f64.f32	d8, s14
    354e: ed9f 7a76    	vldr	s14, [pc, #472]         @ 0x3728 <orange_dsp::generated_packed::origin::<5>+0x540>
    3552: ee27 6a86    	vmul.f32	s12, s15, s12
    3556: ee06 6a87    	vmla.f32	s12, s13, s14
    355a: ed80 cb02    	vstr	d12, [r0, #8]
    355e: ed80 9b08    	vstr	d9, [r0, #32]
    3562: ed80 8b0e    	vstr	d8, [r0, #56]
    3566: ee30 0a06    	vadd.f32	s0, s0, s12
    356a: ed80 2b10    	vstr	d2, [r0, #64]
    356e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    3572: ed80 1b12    	vstr	d1, [r0, #72]
    3576: ed80 4b14    	vstr	d4, [r0, #80]
    357a: ed80 5b16    	vstr	d5, [r0, #88]
    357e: ed80 3b18    	vstr	d3, [r0, #96]
    3582: ed80 0b1a    	vstr	d0, [r0, #104]
    3586: ed80 0b1c    	vstr	d0, [r0, #112]
    358a: b004         	add	sp, #0x10
    358c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    3590: bd80         	pop	{r7, pc}
    3592: bf00         	nop
    3594: bf00         	nop
    3596: bf00         	nop
    3598: c1 5d e1 c9  	.word	0xc9e15dc1
    359c: 86 54 e5 bf  	.word	0xbfe55486
    35a0: 86 0c 11 0f  	.word	0x0f110c86
    35a4: c8 6c d7 3f  	.word	0x3fd76cc8
    35a8: 7d 24 f3 72  	.word	0x72f3247d
    35ac: 1b 11 d2 bf  	.word	0xbfd2111b
    35b0: 00 00 00 00  	.word	0x00000000
    35b4: 00 00 00 00  	.word	0x00000000
    35b8: 3d 68 b5 4d  	.word	0x4db5683d
    35bc: 2d 2d e5 bf  	.word	0xbfe52d2d
    35c0: 30 c6 34 16  	.word	0x1634c630
    35c4: b7 3a cc bf  	.word	0xbfcc3ab7
    35c8: 75 22 80 1e  	.word	0x1e802275
    35cc: ff ca ba bf  	.word	0xbfbacaff
    35d0: 06 42 bd ec  	.word	0xecbd4206
    35d4: 6c ee e0 bf  	.word	0xbfe0ee6c
    35d8: 94 54 5e e4  	.word	0xe45e5494
    35dc: 65 da e0 bf  	.word	0xbfe0da65
    35e0: 7f 02 92 0b  	.word	0x0b92027f
    35e4: f9 a6 d7 3f  	.word	0x3fd7a6f9
    35e8: 49 ec 9f 20  	.word	0x209fec49
    35ec: fa 74 8e bf  	.word	0xbf8e74fa
    35f0: 47 e4 bd ce  	.word	0xcebde447
    35f4: 0e 2b 69 bf  	.word	0xbf692b0e
    35f8: f4 24 ee df  	.word	0xdfee24f4
    35fc: 96 e5 64 3f  	.word	0x3f64e596
    3600: cf 1e ec 24  	.word	0x24ec1ecf
    3604: 9c 63 8d bf  	.word	0xbf8d639c
    3608: 30 f8 ed 0a  	.word	0x0aedf830
    360c: b2 7b 40 bf  	.word	0xbf407bb2
    3610: d7 f6 ca fa  	.word	0xfacaf6d7
    3614: 26 e9 a6 bf  	.word	0xbfa6e926
    3618: 3a 53 cc f5  	.word	0xf5cc533a
    361c: 53 6e a1 3f  	.word	0x3fa16e53
    3620: d2 bc 75 4e  	.word	0x4e75bcd2
    3624: 0d ce a6 bf  	.word	0xbfa6ce0d
    3628: 08 aa 3a 11  	.word	0x113aaa08
    362c: f2 02 ca bf  	.word	0xbfca02f2
    3630: 3b 35 7d dc  	.word	0xdc7d353b
    3634: f0 f5 d4 bf  	.word	0xbfd4f5f0
    3638: 8a 7e 40 15  	.word	0x15407e8a
    363c: 20 4b d2 bf  	.word	0xbfd24b20
    3640: 58 aa ae 17  	.word	0x17aeaa58
    3644: 84 6a d5 bf  	.word	0xbfd56a84
    3648: 1d ef 71 50  	.word	0x5071ef1d
    364c: b3 bf d2 3f  	.word	0x3fd2bfb3
    3650: 59 b9 c0 26  	.word	0x26c0b959
    3654: 2e df e3 bf  	.word	0xbfe3df2e
    3658: 3b cc c8 6a  	.word	0x6ac8cc3b
    365c: c2 ed a6 bf  	.word	0xbfa6edc2
    3660: 30 b5 9f 60  	.word	0x609fb530
    3664: ab e5 d3 bf  	.word	0xbfd3e5ab
    3668: 7b 84 3a 2a  	.word	0x2a3a847b
    366c: 5a 5f c0 bf  	.word	0xbfc05f5a
    3670: f7 82 13 a7  	.word	0xa71382f7
    3674: 09 7c d7 3f  	.word	0x3fd77c09
    3678: 34 38 d2 5b  	.word	0x5bd23834
    367c: a6 d7 e0 bf  	.word	0xbfe0d7a6
    3680: ee 6f e8 6a  	.word	0x6ae86fee
    3684: 04 d6 d0 bf  	.word	0xbfd0d604
    3688: 3b 36 33 54  	.word	0x5433363b
    368c: 06 e3 e4 bf  	.word	0xbfe4e306
    3690: 37 ee 32 35  	.word	0x3532ee37
    3694: b0 0f 21 37  	.word	0x37210fb0
    3698: 24 7b b2 37  	.word	0x37b27b24
    369c: d0 a0 75 b6  	.word	0xb675a0d0
    36a0: c4 71 3d 36  	.word	0x363d71c4
    36a4: bb 07 3b 38  	.word	0x383b07bb
    36a8: 93 eb fb 34  	.word	0x34fbeb93
    36ac: 00 00 00 00  	.word	0x00000000
    36b0: 2e 27 35 b7  	.word	0xb735272e
    36b4: 2b 1a 6e 37  	.word	0x376e1a2b
    36b8: 87 00 6d 37  	.word	0x376d0087
    36bc: df 29 87 38  	.word	0x388729df
    36c0: 0c fb f5 36  	.word	0x36f5fb0c
    36c4: 55 44 cb 35  	.word	0x35cb4455
    36c8: 1c c5 a8 b5  	.word	0xb5a8c51c
    36cc: 3d 5b ed 36  	.word	0x36ed5b3d
    36d0: b3 1f 85 34  	.word	0x34851fb3
    36d4: d6 42 da b7  	.word	0xb7da42d6
    36d8: 1e 70 0f 38  	.word	0x380f701e
    36dc: 73 c6 0e 38  	.word	0x380ec673
    36e0: 3e 82 bf b8  	.word	0xb8bf823e
    36e4: ff 9a 76 36  	.word	0x36769aff
    36e8: 82 c8 4b 35  	.word	0x354bc882
    36ec: da 32 29 b5  	.word	0xb52932da
    36f0: 95 f5 6d 36  	.word	0x366df595
    36f4: 44 76 05 34  	.word	0x34057644
    36f8: eb 37 96 b6  	.word	0xb69637eb
    36fc: dd 2c 15 38  	.word	0x38152cdd
    3700: cd a2 36 36  	.word	0x3636a2cd
    3704: 55 fc 02 b7  	.word	0xb702fc55
    3708: 51 02 a3 b7  	.word	0xb7a30251
    370c: 00 b1 70 b7  	.word	0xb770b100
    3710: 4c 93 ad 38  	.word	0x38ad934c
    3714: 85 ce bb 36  	.word	0x36bbce85
    3718: 4c 93 ad b8  	.word	0xb8ad934c
    371c: bb 0d 1b 3c  	.word	0x3c1b0dbb
    3720: 34 e1 f8 37  	.word	0x37f8e134
    3724: 8b 99 2a bf  	.word	0xbf2a998b
    3728: c0 34 94 37  	.word	0x379434c0
    372c: d4 d4 d4 d4  	.word	0xd4d4d4d4

00003730 <orange_dsp::generated_packed::update::<5>>:
    3730: b580         	push	{r7, lr}
    3732: 466f         	mov	r7, sp
    3734: e8bd 4080    	pop.w	{r7, lr}
    3738: f008 ba4a    	b.w	0xbbd0 <orange_dsp::generated_condensed::update> @ imm = #0x8494
    373c: d4d4         	bmi	0x36e8 <orange_dsp::generated_packed::origin::<5>+0x500> @ imm = #-0x58
    373e: d4d4         	bmi	0x36ea <orange_dsp::generated_packed::origin::<5>+0x502> @ imm = #-0x58

00003740 <orange_dsp::generated_packed48::origin::<5>>:
    3740: b580         	push	{r7, lr}
    3742: 466f         	mov	r7, sp
    3744: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    3748: b084         	sub	sp, #0x10
    374a: edd1 ba01    	vldr	s23, [r1, #4]
    374e: ed91 1a02    	vldr	s2, [r1, #8]
    3752: eeb7 2aeb    	vcvt.f64.f32	d2, s23
    3756: edd1 6a03    	vldr	s13, [r1, #12]
    375a: ed9f 3be5    	vldr	d3, [pc, #916]          @ 0x3af0 <orange_dsp::generated_packed48::origin::<5>+0x3b0>
    375e: eef0 7a40    	vmov.f32	s15, s0
    3762: edd1 ea04    	vldr	s29, [r1, #16]
    3766: ee22 8b03    	vmul.f64	d8, d2, d3
    376a: eeb7 2ac1    	vcvt.f64.f32	d2, s2
    376e: ed91 6a06    	vldr	s12, [r1, #24]
    3772: ed9f 3be1    	vldr	d3, [pc, #900]          @ 0x3af8 <orange_dsp::generated_packed48::origin::<5>+0x3b8>
    3776: edd1 aa07    	vldr	s21, [r1, #28]
    377a: ed91 fa08    	vldr	s30, [r1, #32]
    377e: ee02 8b03    	vmla.f64	d8, d2, d3
    3782: eeb7 2ae6    	vcvt.f64.f32	d2, s13
    3786: ed91 ea09    	vldr	s28, [r1, #36]
    378a: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0x3b00 <orange_dsp::generated_packed48::origin::<5>+0x3c0>
    378e: eeb7 cacf    	vcvt.f64.f32	d12, s30
    3792: ed91 ba0a    	vldr	s22, [r1, #40]
    3796: ee02 8b03    	vmla.f64	d8, d2, d3
    379a: eeb7 2ac0    	vcvt.f64.f32	d2, s0
    379e: ed91 0a05    	vldr	s0, [r1, #20]
    37a2: ed9f 3bd9    	vldr	d3, [pc, #868]          @ 0x3b08 <orange_dsp::generated_packed48::origin::<5>+0x3c8>
    37a6: eeb7 dace    	vcvt.f64.f32	d13, s28
    37aa: ed8d 1a02    	vstr	s2, [sp, #8]
    37ae: ee22 3b03    	vmul.f64	d3, d2, d3
    37b2: eeb7 2ac0    	vcvt.f64.f32	d2, s0
    37b6: ed91 aa0b    	vldr	s20, [r1, #44]
    37ba: ed9f 4bd5    	vldr	d4, [pc, #852]          @ 0x3b10 <orange_dsp::generated_packed48::origin::<5>+0x3d0>
    37be: ed8d 0a03    	vstr	s0, [sp, #12]
    37c2: eeb7 0aca    	vcvt.f64.f32	d0, s20
    37c6: ee22 4b04    	vmul.f64	d4, d2, d4
    37ca: eeb7 2aee    	vcvt.f64.f32	d2, s29
    37ce: edd1 fa0c    	vldr	s31, [r1, #48]
    37d2: ed9f 5bd1    	vldr	d5, [pc, #836]          @ 0x3b18 <orange_dsp::generated_packed48::origin::<5>+0x3d8>
    37d6: ee02 4b05    	vmla.f64	d4, d2, d5
    37da: eeb7 2ac6    	vcvt.f64.f32	d2, s12
    37de: ed9f 5bd0    	vldr	d5, [pc, #832]          @ 0x3b20 <orange_dsp::generated_packed48::origin::<5>+0x3e0>
    37e2: ee02 4b05    	vmla.f64	d4, d2, d5
    37e6: eeb7 5aea    	vcvt.f64.f32	d5, s21
    37ea: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x3b28 <orange_dsp::generated_packed48::origin::<5>+0x3e8>
    37ee: ee05 4b09    	vmla.f64	d4, d5, d9
    37f2: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x3b30 <orange_dsp::generated_packed48::origin::<5>+0x3f0>
    37f6: ee0c 4b09    	vmla.f64	d4, d12, d9
    37fa: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x3b38 <orange_dsp::generated_packed48::origin::<5>+0x3f8>
    37fe: ee0d 4b09    	vmla.f64	d4, d13, d9
    3802: eeb7 9acb    	vcvt.f64.f32	d9, s22
    3806: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0x3b40 <orange_dsp::generated_packed48::origin::<5>+0x400>
    380a: ee09 4b01    	vmla.f64	d4, d9, d1
    380e: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0x3b48 <orange_dsp::generated_packed48::origin::<5>+0x408>
    3812: ee00 4b01    	vmla.f64	d4, d0, d1
    3816: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x3b68 <orange_dsp::generated_packed48::origin::<5>+0x428>
    381a: ee25 5b01    	vmul.f64	d5, d5, d1
    381e: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x3b70 <orange_dsp::generated_packed48::origin::<5>+0x430>
    3822: ee02 5b01    	vmla.f64	d5, d2, d1
    3826: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x3b78 <orange_dsp::generated_packed48::origin::<5>+0x438>
    382a: ee0c 5b01    	vmla.f64	d5, d12, d1
    382e: eeb7 caef    	vcvt.f64.f32	d12, s31
    3832: ed9f 1bc7    	vldr	d1, [pc, #796]          @ 0x3b50 <orange_dsp::generated_packed48::origin::<5>+0x410>
    3836: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0x3b80 <orange_dsp::generated_packed48::origin::<5>+0x440>
    383a: ee0c 4b01    	vmla.f64	d4, d12, d1
    383e: ed91 1a0d    	vldr	s2, [r1, #52]
    3842: eddf 1afc    	vldr	s3, [pc, #1008]         @ 0x3c34 <orange_dsp::generated_packed48::origin::<5>+0x4f4>
    3846: ee0d 5b02    	vmla.f64	d5, d13, d2
    384a: eeb7 dac1    	vcvt.f64.f32	d13, s2
    384e: ed9f 2bc2    	vldr	d2, [pc, #776]          @ 0x3b58 <orange_dsp::generated_packed48::origin::<5>+0x418>
    3852: ee0d 4b02    	vmla.f64	d4, d13, d2
    3856: ed9f 2aec    	vldr	s4, [pc, #944]          @ 0x3c08 <orange_dsp::generated_packed48::origin::<5>+0x4c8>
    385a: ee26 7a02    	vmul.f32	s14, s12, s4
    385e: ed9f 2aeb    	vldr	s4, [pc, #940]          @ 0x3c0c <orange_dsp::generated_packed48::origin::<5>+0x4cc>
    3862: ee0a 7a82    	vmla.f32	s14, s21, s4
    3866: ed9f 2af1    	vldr	s4, [pc, #964]          @ 0x3c2c <orange_dsp::generated_packed48::origin::<5>+0x4ec>
    386a: ee26 6a02    	vmul.f32	s12, s12, s4
    386e: ed9f 2af0    	vldr	s4, [pc, #960]          @ 0x3c30 <orange_dsp::generated_packed48::origin::<5>+0x4f0>
    3872: ee0a 6a82    	vmla.f32	s12, s21, s4
    3876: ed9f 2ae6    	vldr	s4, [pc, #920]          @ 0x3c10 <orange_dsp::generated_packed48::origin::<5>+0x4d0>
    387a: ee0f 7a02    	vmla.f32	s14, s30, s4
    387e: edd1 aa0e    	vldr	s21, [r1, #56]
    3882: eeb7 2aea    	vcvt.f64.f32	d2, s21
    3886: ee0f 6a21    	vmla.f32	s12, s30, s3
    388a: eddf 1ad7    	vldr	s3, [pc, #860]          @ 0x3be8 <orange_dsp::generated_packed48::origin::<5>+0x4a8>
    388e: ee2b faa1    	vmul.f32	s30, s23, s3
    3892: edd1 1a00    	vldr	s3, [r1]
    3896: eddf bad5    	vldr	s23, [pc, #852]         @ 0x3bec <orange_dsp::generated_packed48::origin::<5>+0x4ac>
    389a: ed8d 0b00    	vstr	d0, [sp]
    389e: ee01 faab    	vmla.f32	s30, s3, s23
    38a2: eddf 1adc    	vldr	s3, [pc, #880]          @ 0x3c14 <orange_dsp::generated_packed48::origin::<5>+0x4d4>
    38a6: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0x3b60 <orange_dsp::generated_packed48::origin::<5>+0x420>
    38aa: ee0e 7a21    	vmla.f32	s14, s28, s3
    38ae: eddf 1ae2    	vldr	s3, [pc, #904]          @ 0x3c38 <orange_dsp::generated_packed48::origin::<5>+0x4f8>
    38b2: ee02 4b00    	vmla.f64	d4, d2, d0
    38b6: ee0e 6a21    	vmla.f32	s12, s28, s3
    38ba: eddf 1ace    	vldr	s3, [pc, #824]          @ 0x3bf4 <orange_dsp::generated_packed48::origin::<5>+0x4b4>
    38be: ed9d 0a02    	vldr	s0, [sp, #8]
    38c2: ed9f eacd    	vldr	s28, [pc, #820]         @ 0x3bf8 <orange_dsp::generated_packed48::origin::<5>+0x4b8>
    38c6: ee60 1a21    	vmul.f32	s3, s0, s3
    38ca: eddf 0ad5    	vldr	s1, [pc, #852]          @ 0x3c20 <orange_dsp::generated_packed48::origin::<5>+0x4e0>
    38ce: ee46 1a8e    	vmla.f32	s3, s13, s28
    38d2: eddf 6ad1    	vldr	s13, [pc, #836]         @ 0x3c18 <orange_dsp::generated_packed48::origin::<5>+0x4d8>
    38d6: ee0b 7a26    	vmla.f32	s14, s22, s13
    38da: eddf 6ad8    	vldr	s13, [pc, #864]         @ 0x3c3c <orange_dsp::generated_packed48::origin::<5>+0x4fc>
    38de: ee0b 6a26    	vmla.f32	s12, s22, s13
    38e2: eddf 6ac6    	vldr	s13, [pc, #792]         @ 0x3bfc <orange_dsp::generated_packed48::origin::<5>+0x4bc>
    38e6: ee4e 1aa6    	vmla.f32	s3, s29, s13
    38ea: eddf 6acc    	vldr	s13, [pc, #816]         @ 0x3c1c <orange_dsp::generated_packed48::origin::<5>+0x4dc>
    38ee: ee0a 7a26    	vmla.f32	s14, s20, s13
    38f2: eddf 6ad3    	vldr	s13, [pc, #844]         @ 0x3c40 <orange_dsp::generated_packed48::origin::<5>+0x500>
    38f6: ee0a 6a26    	vmla.f32	s12, s20, s13
    38fa: eddf 6abd    	vldr	s13, [pc, #756]         @ 0x3bf0 <orange_dsp::generated_packed48::origin::<5>+0x4b0>
    38fe: ed9f bba2    	vldr	d11, [pc, #648]         @ 0x3b88 <orange_dsp::generated_packed48::origin::<5>+0x448>
    3902: ee0f 7aa0    	vmla.f32	s14, s31, s1
    3906: eddf 0acf    	vldr	s1, [pc, #828]          @ 0x3c44 <orange_dsp::generated_packed48::origin::<5>+0x504>
    390a: ee09 5b0b    	vmla.f64	d5, d9, d11
    390e: ee0f 6aa0    	vmla.f32	s12, s31, s1
    3912: eddf 0ac4    	vldr	s1, [pc, #784]          @ 0x3c24 <orange_dsp::generated_packed48::origin::<5>+0x4e4>
    3916: ed9f 9b9e    	vldr	d9, [pc, #632]          @ 0x3b90 <orange_dsp::generated_packed48::origin::<5>+0x450>
    391a: ee01 7a20    	vmla.f32	s14, s2, s1
    391e: eddf 0aca    	vldr	s1, [pc, #808]          @ 0x3c48 <orange_dsp::generated_packed48::origin::<5>+0x508>
    3922: ed9d bb00    	vldr	d11, [sp]
    3926: ee01 6a20    	vmla.f32	s12, s2, s1
    392a: ed9d 0a03    	vldr	s0, [sp, #12]
    392e: ee0b 5b09    	vmla.f64	d5, d11, d9
    3932: ee07 faa6    	vmla.f32	s30, s15, s13
    3936: eddf 6ab2    	vldr	s13, [pc, #712]         @ 0x3c00 <orange_dsp::generated_packed48::origin::<5>+0x4c0>
    393a: ed9f 9b97    	vldr	d9, [pc, #604]          @ 0x3b98 <orange_dsp::generated_packed48::origin::<5>+0x458>
    393e: ed9f 1ac3    	vldr	s2, [pc, #780]          @ 0x3c4c <orange_dsp::generated_packed48::origin::<5>+0x50c>
    3942: ee40 1a26    	vmla.f32	s3, s0, s13
    3946: ee0c 5b09    	vmla.f64	d5, d12, d9
    394a: eddf 6aae    	vldr	s13, [pc, #696]         @ 0x3c04 <orange_dsp::generated_packed48::origin::<5>+0x4c4>
    394e: ee0a 6a81    	vmla.f32	s12, s21, s2
    3952: ed9f 9b93    	vldr	d9, [pc, #588]          @ 0x3ba0 <orange_dsp::generated_packed48::origin::<5>+0x460>
    3956: ed91 1a0f    	vldr	s2, [r1, #60]
    395a: ee27 0aa6    	vmul.f32	s0, s15, s13
    395e: ee0d 5b09    	vmla.f64	d5, d13, d9
    3962: eddf 6ab1    	vldr	s13, [pc, #708]         @ 0x3c28 <orange_dsp::generated_packed48::origin::<5>+0x4e8>
    3966: ed9f 9b90    	vldr	d9, [pc, #576]          @ 0x3ba8 <orange_dsp::generated_packed48::origin::<5>+0x468>
    396a: ee0a 7aa6    	vmla.f32	s14, s21, s13
    396e: eddf 0ab8    	vldr	s1, [pc, #736]          @ 0x3c50 <orange_dsp::generated_packed48::origin::<5>+0x510>
    3972: ee02 5b09    	vmla.f64	d5, d2, d9
    3976: eeb7 9ac1    	vcvt.f64.f32	d9, s2
    397a: edd1 6a10    	vldr	s13, [r1, #64]
    397e: ed9f ab8c    	vldr	d10, [pc, #560]         @ 0x3bb0 <orange_dsp::generated_packed48::origin::<5>+0x470>
    3982: eddf 7ab4    	vldr	s15, [pc, #720]         @ 0x3c54 <orange_dsp::generated_packed48::origin::<5>+0x514>
    3986: ee61 0a20    	vmul.f32	s1, s2, s1
    398a: ee46 0aa7    	vmla.f32	s1, s13, s15
    398e: edd1 7a11    	vldr	s15, [r1, #68]
    3992: ee09 5b0a    	vmla.f64	d5, d9, d10
    3996: eeb7 9ae6    	vcvt.f64.f32	d9, s13
    399a: ed9f 2aaf    	vldr	s4, [pc, #700]          @ 0x3c58 <orange_dsp::generated_packed48::origin::<5>+0x518>
    399e: ed9f ab86    	vldr	d10, [pc, #536]         @ 0x3bb8 <orange_dsp::generated_packed48::origin::<5>+0x478>
    39a2: ee47 0a82    	vmla.f32	s1, s15, s4
    39a6: ed91 1a12    	vldr	s2, [r1, #72]
    39aa: ee09 5b0a    	vmla.f64	d5, d9, d10
    39ae: eeb7 9ae7    	vcvt.f64.f32	d9, s15
    39b2: ed9f 2aaa    	vldr	s4, [pc, #680]          @ 0x3c5c <orange_dsp::generated_packed48::origin::<5>+0x51c>
    39b6: ed9f ab82    	vldr	d10, [pc, #520]         @ 0x3bc0 <orange_dsp::generated_packed48::origin::<5>+0x480>
    39ba: ee41 0a02    	vmla.f32	s1, s2, s4
    39be: ed9f 2aa8    	vldr	s4, [pc, #672]          @ 0x3c60 <orange_dsp::generated_packed48::origin::<5>+0x520>
    39c2: ee29 9b0a    	vmul.f64	d9, d9, d10
    39c6: eeb7 aac1    	vcvt.f64.f32	d10, s2
    39ca: edd1 6a14    	vldr	s13, [r1, #80]
    39ce: ee21 ba02    	vmul.f32	s22, s2, s4
    39d2: ed9f 2aa4    	vldr	s4, [pc, #656]          @ 0x3c64 <orange_dsp::generated_packed48::origin::<5>+0x524>
    39d6: ed9f cb7c    	vldr	d12, [pc, #496]         @ 0x3bc8 <orange_dsp::generated_packed48::origin::<5>+0x488>
    39da: ee07 ba82    	vmla.f32	s22, s15, s4
    39de: edd1 7a13    	vldr	s15, [r1, #76]
    39e2: eeb7 2ae6    	vcvt.f64.f32	d2, s13
    39e6: ed91 1a16    	vldr	s2, [r1, #88]
    39ea: ee0a 9b0c    	vmla.f64	d9, d10, d12
    39ee: eeb7 cae7    	vcvt.f64.f32	d12, s15
    39f2: ed9f ab77    	vldr	d10, [pc, #476]         @ 0x3bd0 <orange_dsp::generated_packed48::origin::<5>+0x490>
    39f6: ee30 7a07    	vadd.f32	s14, s0, s14
    39fa: ed9f db77    	vldr	d13, [pc, #476]         @ 0x3bd8 <orange_dsp::generated_packed48::origin::<5>+0x498>
    39fe: ee30 6a06    	vadd.f32	s12, s0, s12
    3a02: ee22 ab0a    	vmul.f64	d10, d2, d10
    3a06: edd1 2a15    	vldr	s5, [r1, #84]
    3a0a: ed9f 2a9a    	vldr	s4, [pc, #616]          @ 0x3c74 <orange_dsp::generated_packed48::origin::<5>+0x534>
    3a0e: ee0c ab0d    	vmla.f64	d10, d12, d13
    3a12: eeb7 cae2    	vcvt.f64.f32	d12, s5
    3a16: ed9f db72    	vldr	d13, [pc, #456]         @ 0x3be0 <orange_dsp::generated_packed48::origin::<5>+0x4a0>
    3a1a: ee21 ea02    	vmul.f32	s28, s2, s4
    3a1e: ed9f 1a96    	vldr	s2, [pc, #600]          @ 0x3c78 <orange_dsp::generated_packed48::origin::<5>+0x538>
    3a22: ee0c ab0d    	vmla.f64	d10, d12, d13
    3a26: ed9f da90    	vldr	s26, [pc, #576]         @ 0x3c68 <orange_dsp::generated_packed48::origin::<5>+0x528>
    3a2a: ee02 ea81    	vmla.f32	s28, s5, s2
    3a2e: ee07 ba8d    	vmla.f32	s22, s15, s26
    3a32: ee30 ca21    	vadd.f32	s24, s0, s3
    3a36: ee33 1b04    	vadd.f64	d1, d3, d4
    3a3a: ee70 0a20    	vadd.f32	s1, s0, s1
    3a3e: ee33 4b05    	vadd.f64	d4, d3, d5
    3a42: eeb7 cacc    	vcvt.f64.f32	d12, s24
    3a46: ee33 5b09    	vadd.f64	d5, d3, d9
    3a4a: eeb7 9ac7    	vcvt.f64.f32	d9, s14
    3a4e: ed9f 7a87    	vldr	s14, [pc, #540]         @ 0x3c6c <orange_dsp::generated_packed48::origin::<5>+0x52c>
    3a52: ee26 7a87    	vmul.f32	s14, s13, s14
    3a56: ee33 2b08    	vadd.f64	d2, d3, d8
    3a5a: eeb7 8acf    	vcvt.f64.f32	d8, s30
    3a5e: ee33 3b0a    	vadd.f64	d3, d3, d10
    3a62: ed9f aa83    	vldr	s20, [pc, #524]         @ 0x3c70 <orange_dsp::generated_packed48::origin::<5>+0x530>
    3a66: ed80 8b00    	vstr	d8, [r0]
    3a6a: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    3a6e: ee3b 6a07    	vadd.f32	s12, s22, s14
    3a72: ee17 7a8a    	vnmls.f32	s14, s15, s20
    3a76: ed80 8b06    	vstr	d8, [r0, #24]
    3a7a: ee30 6a06    	vadd.f32	s12, s0, s12
    3a7e: ed80 9b04    	vstr	d9, [r0, #16]
    3a82: eeb7 9ae0    	vcvt.f64.f32	d9, s1
    3a86: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    3a8a: ee30 6a07    	vadd.f32	s12, s0, s14
    3a8e: ee30 7a0e    	vadd.f32	s14, s0, s28
    3a92: ed80 8b0a    	vstr	d8, [r0, #40]
    3a96: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    3a9a: ed9f 6a78    	vldr	s12, [pc, #480]         @ 0x3c7c <orange_dsp::generated_packed48::origin::<5>+0x53c>
    3a9e: ed80 8b0c    	vstr	d8, [r0, #48]
    3aa2: eeb7 8ac7    	vcvt.f64.f32	d8, s14
    3aa6: ed9f 7a76    	vldr	s14, [pc, #472]         @ 0x3c80 <orange_dsp::generated_packed48::origin::<5>+0x540>
    3aaa: ee27 6a86    	vmul.f32	s12, s15, s12
    3aae: ee06 6a87    	vmla.f32	s12, s13, s14
    3ab2: ed80 cb02    	vstr	d12, [r0, #8]
    3ab6: ed80 9b08    	vstr	d9, [r0, #32]
    3aba: ed80 8b0e    	vstr	d8, [r0, #56]
    3abe: ee30 0a06    	vadd.f32	s0, s0, s12
    3ac2: ed80 2b10    	vstr	d2, [r0, #64]
    3ac6: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    3aca: ed80 1b12    	vstr	d1, [r0, #72]
    3ace: ed80 4b14    	vstr	d4, [r0, #80]
    3ad2: ed80 5b16    	vstr	d5, [r0, #88]
    3ad6: ed80 3b18    	vstr	d3, [r0, #96]
    3ada: ed80 0b1a    	vstr	d0, [r0, #104]
    3ade: ed80 0b1c    	vstr	d0, [r0, #112]
    3ae2: b004         	add	sp, #0x10
    3ae4: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    3ae8: bd80         	pop	{r7, pc}
    3aea: bf00         	nop
    3aec: bf00         	nop
    3aee: bf00         	nop
    3af0: 6e 40 0c 4e  	.word	0x4e0c406e
    3af4: b8 53 e5 bf  	.word	0xbfe553b8
    3af8: b5 18 92 48  	.word	0x489218b5
    3afc: 84 c8 d6 3f  	.word	0x3fd6c884
    3b00: 22 e0 8f 40  	.word	0x408fe022
    3b04: 33 ab d2 bf  	.word	0xbfd2ab33
    3b08: 00 00 00 00  	.word	0x00000000
    3b0c: 00 00 00 00  	.word	0x00000000
    3b10: e0 ac 6e 54  	.word	0x546eace0
    3b14: 7b 2b e5 bf  	.word	0xbfe52b7b
    3b18: 14 98 58 8b  	.word	0x8b589814
    3b1c: ef 36 cc bf  	.word	0xbfcc36ef
    3b20: ad 60 98 e7  	.word	0xe79860ad
    3b24: 08 64 ad bf  	.word	0xbfad6408
    3b28: d3 eb b9 11  	.word	0x11b9ebd3
    3b2c: 6a 57 e2 bf  	.word	0xbfe2576a
    3b30: e1 e9 a5 17  	.word	0x17a5e9e1
    3b34: 39 2c e2 bf  	.word	0xbfe22c39
    3b38: a4 ed d1 ac  	.word	0xacd1eda4
    3b3c: a5 a0 d9 3f  	.word	0x3fd9a0a5
    3b40: 9c fd 2d 0f  	.word	0x0f2dfd9c
    3b44: 37 30 90 bf  	.word	0xbf903037
    3b48: 1d 38 33 59  	.word	0x5933381d
    3b4c: 56 75 68 bf  	.word	0xbf687556
    3b50: 8f 2d 3e ae  	.word	0xae3e2d8f
    3b54: c6 fe 63 3f  	.word	0x3f63fec6
    3b58: dc 27 9e 33  	.word	0x339e27dc
    3b5c: ca 42 8f bf  	.word	0xbf8f42ca
    3b60: 13 ae df e7  	.word	0xe7dfae13
    3b64: c9 94 40 bf  	.word	0xbf4094c9
    3b68: 5f fc 7e 6b  	.word	0x6b7efc5f
    3b6c: 32 8f 9c bf  	.word	0xbf9c8f32
    3b70: 9a 8c 01 32  	.word	0x32018c9a
    3b74: dd 88 91 3f  	.word	0x3f9188dd
    3b78: 4e 36 a1 ad  	.word	0xada1364e
    3b7c: f1 4b 9c bf  	.word	0xbf9c4bf1
    3b80: e9 e7 2b d9  	.word	0xd92be7e9
    3b84: ce 57 c9 bf  	.word	0xbfc957ce
    3b88: 17 b3 4c 2b  	.word	0x2b4cb317
    3b8c: 2a 6c d3 bf  	.word	0xbfd36c2a
    3b90: da f6 1c 8e  	.word	0x8e1cf6da
    3b94: 04 6f d0 bf  	.word	0xbfd06f04
    3b98: 80 a2 82 14  	.word	0x1482a280
    3b9c: 54 02 d7 bf  	.word	0xbfd70254
    3ba0: bd e1 52 77  	.word	0x7752e1bd
    3ba4: 2e 05 d4 3f  	.word	0x3fd4052e
    3ba8: e2 9d 81 ef  	.word	0xef819de2
    3bac: 00 c2 e3 bf  	.word	0xbfe3c200
    3bb0: 2e a6 61 06  	.word	0x0661a62e
    3bb4: af ba 97 bf  	.word	0xbf97baaf
    3bb8: 21 77 ba 04  	.word	0x04ba7721
    3bbc: d6 95 d4 bf  	.word	0xbfd495d6
    3bc0: c5 06 ea 2a  	.word	0x2aea06c5
    3bc4: ea 1c b2 bf  	.word	0xbfb21cea
    3bc8: cc 3c 73 b3  	.word	0xb3733ccc
    3bcc: 3d f9 d9 3f  	.word	0x3fd9f93d
    3bd0: c1 9c 8b d0  	.word	0xd08b9cc1
    3bd4: 4e d5 e0 bf  	.word	0xbfe0d54e
    3bd8: de 65 e6 b3  	.word	0xb3e665de
    3bdc: 0b d2 d0 bf  	.word	0xbfd0d20b
    3be0: ca f1 a1 19  	.word	0x19a1f1ca
    3be4: f3 e2 e4 bf  	.word	0xbfe4e2f3
    3be8: 73 e7 32 35  	.word	0x3532e773
    3bec: b0 0f a1 36  	.word	0x36a10fb0
    3bf0: 24 7b b2 37  	.word	0x37b27b24
    3bf4: 5f e6 6e b6  	.word	0xb66ee65f
    3bf8: 8c c1 43 36  	.word	0x3643c18c
    3bfc: 92 fd 3a 38  	.word	0x383afd92
    3c00: d9 c9 fb 34  	.word	0x34fbc9d9
    3c04: 00 00 00 00  	.word	0x00000000
    3c08: d0 24 c4 b6  	.word	0xb6c424d0
    3c0c: d6 bb 1f 37  	.word	0x371fbbd6
    3c10: b0 43 1e 37  	.word	0x371e43b0
    3c14: 96 be 8d 38  	.word	0x388dbe96
    3c18: e6 ca ec 36  	.word	0x36eccae6
    3c1c: 65 e1 b2 35  	.word	0x35b2e165
    3c20: 13 3d 92 b5  	.word	0xb5923d13
    3c24: d1 a1 e4 36  	.word	0x36e4a1d1
    3c28: 06 8a 72 34  	.word	0x34728a06
    3c2c: e3 50 6c b7  	.word	0xb76c50e3
    3c30: e2 72 c0 37  	.word	0x37c072e2
    3c34: b2 ad be 37  	.word	0x37beadb2
    3c38: a0 0e af b8  	.word	0xb8af0ea0
    3c3c: ce 28 5d 36  	.word	0x365d28ce
    3c40: 17 12 27 35  	.word	0x35271217
    3c44: 75 95 08 b5  	.word	0xb5089575
    3c48: a6 89 55 36  	.word	0x365589a6
    3c4c: cf 86 e2 33  	.word	0x33e286cf
    3c50: ee 69 1b b6  	.word	0xb61b69ee
    3c54: 05 9f 10 38  	.word	0x38109f05
    3c58: 14 0d ca 35  	.word	0x35ca0d14
    3c5c: 5b de 10 b7  	.word	0xb710de5b
    3c60: 67 b8 7c b7  	.word	0xb77cb867
    3c64: af 1b 05 b7  	.word	0xb7051baf
    3c68: 18 81 ad 38  	.word	0x38ad8118
    3c6c: 37 a2 bb 36  	.word	0x36bba237
    3c70: 18 81 ad b8  	.word	0xb8ad8118
    3c74: 7b 29 9c 3b  	.word	0x3b9c297b
    3c78: 4f e0 f8 37  	.word	0x37f8e04f
    3c7c: 70 88 2a bf  	.word	0xbf2a8870
    3c80: ca 11 14 38  	.word	0x381411ca
    3c84: d4 d4 d4 d4  	.word	0xd4d4d4d4

00003c88 <orange_dsp::generated_packed48::update::<5>>:
    3c88: b580         	push	{r7, lr}
    3c8a: 466f         	mov	r7, sp
    3c8c: e8bd 4080    	pop.w	{r7, lr}
    3c90: f008 bd9e    	b.w	0xc7d0 <orange_dsp::generated_condensed48::update> @ imm = #0x8b3c
    3c94: d4d4         	bmi	0x3c40 <orange_dsp::generated_packed48::origin::<5>+0x500> @ imm = #-0x58
    3c96: d4d4         	bmi	0x3c42 <orange_dsp::generated_packed48::origin::<5>+0x502> @ imm = #-0x58

00003c98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>>:
    3c98: b5f0         	push	{r4, r5, r6, r7, lr}
    3c9a: af03         	add	r7, sp, #0xc
    3c9c: f84d 8d04    	str	r8, [sp, #-4]!
    3ca0: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    3ca4: eeba 1a0e    	vmov.f32	s2, #-1.500000e+01
    3ca8: ed91 5a00    	vldr	s10, [r1]
    3cac: ed9f 2a96    	vldr	s4, [pc, #600]          @ 0x3f08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x270>
    3cb0: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    3cb4: eefe 1a00    	vmov.f32	s3, #-5.000000e-01
    3cb8: ee35 3a01    	vadd.f32	s6, s10, s2
    3cbc: ee71 5a45    	vsub.f32	s11, s2, s10
    3cc0: eef7 0bc0    	vcvt.f32.f64	s1, d0
    3cc4: ee83 4a02    	vdiv.f32	s8, s6, s4
    3cc8: ed9f 3af7    	vldr	s6, [pc, #988]          @ 0x40a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x410>
    3ccc: eec5 5a82    	vdiv.f32	s11, s11, s4
    3cd0: eeb4 3a44    	vcmp.f32	s6, s8
    3cd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3cd8: fe33 6a04    	vselgt.f32	s12, s6, s8
    3cdc: ed9f 4af3    	vldr	s8, [pc, #972]          @ 0x40ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x414>
    3ce0: eeb4 6a44    	vcmp.f32	s12, s8
    3ce4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ce8: fe74 7a06    	vselgt.f32	s15, s8, s12
    3cec: ed9f 6af0    	vldr	s12, [pc, #960]         @ 0x40b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x418>
    3cf0: ee67 2a86    	vmul.f32	s5, s15, s12
    3cf4: ee72 3a87    	vadd.f32	s7, s5, s14
    3cf8: eef5 2a40    	vcmp.f32	s5, #0
    3cfc: ee72 4aa1    	vadd.f32	s9, s5, s3
    3d00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d04: eefd 3ae3    	vcvt.s32.f32	s7, s7
    3d08: eefd 4ae4    	vcvt.s32.f32	s9, s9
    3d0c: eeb4 3a65    	vcmp.f32	s6, s11
    3d10: ee13 3a90    	vmov	r3, s7
    3d14: ee14 2a90    	vmov	r2, s9
    3d18: bfa8         	it	ge
    3d1a: 461a         	movge	r2, r3
    3d1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d20: fe73 2a25    	vselgt.f32	s5, s6, s11
    3d24: eddf 5af8    	vldr	s11, [pc, #992]         @ 0x4108 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x470>
    3d28: eeb0 aa65    	vmov.f32	s20, s11
    3d2c: eeb0 ba65    	vmov.f32	s22, s11
    3d30: eef4 2a44    	vcmp.f32	s5, s8
    3d34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d38: fe34 8a22    	vselgt.f32	s16, s8, s5
    3d3c: ee68 2a06    	vmul.f32	s5, s16, s12
    3d40: ee72 3aa1    	vadd.f32	s7, s5, s3
    3d44: eef5 2a40    	vcmp.f32	s5, #0
    3d48: ee72 4a87    	vadd.f32	s9, s5, s14
    3d4c: ee02 2a90    	vmov	s5, r2
    3d50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d54: eefd 3ae3    	vcvt.s32.f32	s7, s7
    3d58: eefd 4ae4    	vcvt.s32.f32	s9, s9
    3d5c: ee13 5a90    	vmov	r5, s7
    3d60: eef8 3ae2    	vcvt.f32.s32	s7, s5
    3d64: ee14 3a90    	vmov	r3, s9
    3d68: bfa8         	it	ge
    3d6a: 461d         	movge	r5, r3
    3d6c: f04f 537e    	mov.w	r3, #0x3f800000
    3d70: ee02 5a90    	vmov	s5, r5
    3d74: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    3d78: eb03 56c5    	add.w	r6, r3, r5, lsl #23
    3d7c: eef8 4ae2    	vcvt.f32.s32	s9, s5
    3d80: eddf 2ae5    	vldr	s5, [pc, #916]          @ 0x4118 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x480>
    3d84: ee43 7ae2    	vmls.f32	s15, s7, s5
    3d88: eddf 3ae5    	vldr	s7, [pc, #916]          @ 0x4120 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x488>
    3d8c: eef0 6a63    	vmov.f32	s13, s7
    3d90: eeb0 9a63    	vmov.f32	s18, s7
    3d94: ee04 8ae2    	vmls.f32	s16, s9, s5
    3d98: eddf 4ae0    	vldr	s9, [pc, #896]          @ 0x411c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x484>
    3d9c: ee47 6aa4    	vmla.f32	s13, s15, s9
    3da0: ee08 9a24    	vmla.f32	s18, s16, s9
    3da4: ee28 ca08    	vmul.f32	s24, s16, s16
    3da8: ee07 aaa6    	vmla.f32	s20, s15, s13
    3dac: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    3db0: ee08 ba09    	vmla.f32	s22, s16, s18
    3db4: eeb0 9a47    	vmov.f32	s18, s14
    3db8: ee07 9a8a    	vmla.f32	s18, s15, s20
    3dbc: eeb0 aa47    	vmov.f32	s20, s14
    3dc0: ee08 aa0b    	vmla.f32	s20, s16, s22
    3dc4: ee27 baa7    	vmul.f32	s22, s15, s15
    3dc8: ee77 7aa6    	vadd.f32	s15, s15, s13
    3dcc: ee38 8a26    	vadd.f32	s16, s16, s13
    3dd0: ee4b 7a09    	vmla.f32	s15, s22, s18
    3dd4: ee09 2a10    	vmov	s18, r2
    3dd8: eeb0 ba60    	vmov.f32	s22, s1
    3ddc: ee0c 8a0a    	vmla.f32	s16, s24, s20
    3de0: ee0a 6a10    	vmov	s20, r6
    3de4: ee27 9a89    	vmul.f32	s18, s15, s18
    3de8: eddf 7aca    	vldr	s15, [pc, #808]         @ 0x4114 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x47c>
    3dec: ee05 ba27    	vmla.f32	s22, s10, s15
    3df0: ee28 aa0a    	vmul.f32	s20, s16, s20
    3df4: ed9f 8acb    	vldr	s16, [pc, #812]         @ 0x4124 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x48c>
    3df8: ee39 0a4a    	vsub.f32	s0, s18, s20
    3dfc: ee10 ba08    	vnmls.f32	s22, s0, s16
    3e00: ee1b 2a10    	vmov	r2, s22
    3e04: f022 4200    	bic	r2, r2, #0x80000000
    3e08: f1b2 4fff    	cmp.w	r2, #0x7f800000
    3e0c: db04         	blt	0x3e18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x180> @ imm = #0x8
    3e0e: ed9f 0ac6    	vldr	s0, [pc, #792]          @ 0x4128 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x490>
    3e12: e00b         	b	0x3e2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x194> @ imm = #0x16
    3e14: bf00         	nop
    3e16: bf00         	nop
    3e18: ed9f 0ac4    	vldr	s0, [pc, #784]          @ 0x412c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x494>
    3e1c: ee8b 0a00    	vdiv.f32	s0, s22, s0
    3e20: ed9f cac3    	vldr	s24, [pc, #780]         @ 0x4130 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x498>
    3e24: eeb0 0ac0    	vabs.f32	s0, s0
    3e28: fe80 0a0c    	vmaxnm.f32	s0, s0, s24
    3e2c: ee79 9a0a    	vadd.f32	s19, s18, s20
    3e30: f04f 0e00    	mov.w	lr, #0x0
    3e34: eef1 8a4b    	vneg.f32	s17, s22
    3e38: f04f 0c00    	mov.w	r12, #0x0
    3e3c: ed9f aabd    	vldr	s20, [pc, #756]         @ 0x4134 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x49c>
    3e40: 46f0         	mov	r8, lr
    3e42: ed9f babd    	vldr	s22, [pc, #756]         @ 0x4138 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a0>
    3e46: ed9f 9abd    	vldr	s18, [pc, #756]         @ 0x413c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a4>
    3e4a: ed9f dab8    	vldr	s26, [pc, #736]         @ 0x412c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x494>
    3e4e: ed9f eab8    	vldr	s28, [pc, #736]         @ 0x4130 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x498>
    3e52: ed9f cabc    	vldr	s24, [pc, #752]         @ 0x4144 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4ac>
    3e56: ee69 9a88    	vmul.f32	s19, s19, s16
    3e5a: f1be 0f10    	cmp.w	lr, #0x10
    3e5e: bf18         	it	ne
    3e60: f108 0801    	addne.w	r8, r8, #0x1
    3e64: 2500         	movs	r5, #0x0
    3e66: eec9 9a82    	vdiv.f32	s19, s19, s4
    3e6a: ee79 9a8a    	vadd.f32	s19, s19, s20
    3e6e: ee19 4a90    	vmov	r4, s19
    3e72: eef0 aae9    	vabs.f32	s21, s19
    3e76: f024 4400    	bic	r4, r4, #0x80000000
    3e7a: eef4 aa4b    	vcmp.f32	s21, s22
    3e7e: f1b4 4fff    	cmp.w	r4, #0x7f800000
    3e82: f04f 0400    	mov.w	r4, #0x0
    3e86: bfa8         	it	ge
    3e88: 2401         	movge	r4, #0x1
    3e8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e8e: bf48         	it	mi
    3e90: 2501         	movmi	r5, #0x1
    3e92: 432c         	orrs	r4, r5
    3e94: f040 812c    	bne.w	0x40f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x458> @ imm = #0x258
    3e98: eec8 9aa9    	vdiv.f32	s19, s17, s19
    3e9c: eeb4 0a49    	vcmp.f32	s0, s18
    3ea0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ea4: eef0 8ae9    	vabs.f32	s17, s19
    3ea8: d906         	bls	0x3eb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x220> @ imm = #0xc
    3eaa: f1be 0f10    	cmp.w	lr, #0x10
    3eae: d127         	bne	0x3f00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x268> @ imm = #0x4e
    3eb0: e12e         	b	0x4110 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x478> @ imm = #0x25c
    3eb2: bf00         	nop
    3eb4: bf00         	nop
    3eb6: bf00         	nop
    3eb8: eef0 aac5    	vabs.f32	s21, s10
    3ebc: ed9f faa0    	vldr	s30, [pc, #640]         @ 0x4140 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a8>
    3ec0: 2400         	movs	r4, #0x0
    3ec2: eef4 aa6a    	vcmp.f32	s21, s21
    3ec6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3eca: fe56 aaaa    	vselvs.f32	s21, s13, s21
    3ece: eef4 aa66    	vcmp.f32	s21, s13
    3ed2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ed6: fe7a aaa6    	vselgt.f32	s21, s21, s13
    3eda: ee6a aa8f    	vmul.f32	s21, s21, s30
    3ede: feca aacc    	vminnm.f32	s21, s21, s24
    3ee2: eef4 8a6a    	vcmp.f32	s17, s21
    3ee6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3eea: bf98         	it	ls
    3eec: 2401         	movls	r4, #0x1
    3eee: f1be 0f10    	cmp.w	lr, #0x10
    3ef2: bf1c         	itt	ne
    3ef4: eef4 8a6a    	vcmpne.f32	s17, s21
    3ef8: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    3efc: f240 80eb    	bls.w	0x40d6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #0x1d6
    3f00: f04f 547e    	mov.w	r4, #0x3f800000
    3f04: e00a         	b	0x3f1c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x284> @ imm = #0x14
    3f06: bf00         	nop
    3f08: f5 4a 39 3d  	.word	0x3d394af5
    3f0c: 00 bf 00 bf  	.word	0xbf00bf00
    3f10: f5a4 0400    	sub.w	r4, r4, #0x800000
    3f14: f1b4 5f66    	cmp.w	r4, #0x39800000
    3f18: f000 80ce    	beq.w	0x40b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x420> @ imm = #0x19c
    3f1c: ee0b 4a90    	vmov	s23, r4
    3f20: eef0 aa45    	vmov.f32	s21, s10
    3f24: ee49 aaab    	vmla.f32	s21, s19, s23
    3f28: ee7a ba81    	vadd.f32	s23, s21, s2
    3f2c: ee71 fa6a    	vsub.f32	s31, s2, s21
    3f30: eecb ba82    	vdiv.f32	s23, s23, s4
    3f34: eecf fa82    	vdiv.f32	s31, s31, s4
    3f38: eeb4 3a6b    	vcmp.f32	s6, s23
    3f3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f40: fe73 ba2b    	vselgt.f32	s23, s6, s23
    3f44: eef4 ba44    	vcmp.f32	s23, s8
    3f48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f4c: fe74 ba2b    	vselgt.f32	s23, s8, s23
    3f50: ee6b ca86    	vmul.f32	s25, s23, s12
    3f54: ee7c da87    	vadd.f32	s27, s25, s14
    3f58: eef5 ca40    	vcmp.f32	s25, #0
    3f5c: ee7c eaa1    	vadd.f32	s29, s25, s3
    3f60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f64: eefd daed    	vcvt.s32.f32	s27, s27
    3f68: eefd eaee    	vcvt.s32.f32	s29, s29
    3f6c: eeb4 3a6f    	vcmp.f32	s6, s31
    3f70: ee1d 6a90    	vmov	r6, s27
    3f74: ee1e 5a90    	vmov	r5, s29
    3f78: bfa8         	it	ge
    3f7a: 4635         	movge	r5, r6
    3f7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f80: fe73 ca2f    	vselgt.f32	s25, s6, s31
    3f84: eef4 ca44    	vcmp.f32	s25, s8
    3f88: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f8c: fe74 ca2c    	vselgt.f32	s25, s8, s25
    3f90: ee6c da86    	vmul.f32	s27, s25, s12
    3f94: ee7d eaa1    	vadd.f32	s29, s27, s3
    3f98: eef5 da40    	vcmp.f32	s27, #0
    3f9c: ee7d fa87    	vadd.f32	s31, s27, s14
    3fa0: ee0d 5a90    	vmov	s27, r5
    3fa4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3fa8: eefd eaee    	vcvt.s32.f32	s29, s29
    3fac: eef8 daed    	vcvt.f32.s32	s27, s27
    3fb0: ee1e 6a90    	vmov	r6, s29
    3fb4: eefd eaef    	vcvt.s32.f32	s29, s31
    3fb8: ee4d bae2    	vmls.f32	s23, s27, s5
    3fbc: eef0 da63    	vmov.f32	s27, s7
    3fc0: eef0 fa65    	vmov.f32	s31, s11
    3fc4: ee1e 2a90    	vmov	r2, s29
    3fc8: bfa8         	it	ge
    3fca: 4616         	movge	r6, r2
    3fcc: eb03 52c5    	add.w	r2, r3, r5, lsl #23
    3fd0: ee0e 6a90    	vmov	s29, r6
    3fd4: eb03 55c6    	add.w	r5, r3, r6, lsl #23
    3fd8: ee4b daa4    	vmla.f32	s27, s23, s9
    3fdc: eef8 eaee    	vcvt.f32.s32	s29, s29
    3fe0: ee4e cae2    	vmls.f32	s25, s29, s5
    3fe4: eef0 ea63    	vmov.f32	s29, s7
    3fe8: ee4b faad    	vmla.f32	s31, s23, s27
    3fec: eef0 da65    	vmov.f32	s27, s11
    3ff0: ee4c eaa4    	vmla.f32	s29, s25, s9
    3ff4: ee2c faac    	vmul.f32	s30, s25, s25
    3ff8: ee4c daae    	vmla.f32	s27, s25, s29
    3ffc: eef0 ea47    	vmov.f32	s29, s14
    4000: ee4b eaaf    	vmla.f32	s29, s23, s31
    4004: eef0 fa47    	vmov.f32	s31, s14
    4008: ee4c faad    	vmla.f32	s31, s25, s27
    400c: ee6b daab    	vmul.f32	s27, s23, s23
    4010: ee7b baa6    	vadd.f32	s23, s23, s13
    4014: ee7c caa6    	vadd.f32	s25, s25, s13
    4018: ee4d baae    	vmla.f32	s23, s27, s29
    401c: ee0d 5a90    	vmov	s27, r5
    4020: ee4f ca2f    	vmla.f32	s25, s30, s31
    4024: ee0f 2a10    	vmov	s30, r2
    4028: ee6b ba8f    	vmul.f32	s23, s23, s30
    402c: ee6c caad    	vmul.f32	s25, s25, s27
    4030: eef0 da60    	vmov.f32	s27, s1
    4034: ee4a daa7    	vmla.f32	s27, s21, s15
    4038: ee3b faec    	vsub.f32	s30, s23, s25
    403c: ee5f da08    	vnmls.f32	s27, s30, s16
    4040: ee1d 2a90    	vmov	r2, s27
    4044: f022 4200    	bic	r2, r2, #0x80000000
    4048: f1b2 4fff    	cmp.w	r2, #0x7f800000
    404c: f6bf af60    	bge.w	0x3f10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x278> @ imm = #-0x140
    4050: ee8d fa8d    	vdiv.f32	s30, s27, s26
    4054: eeb0 facf    	vabs.f32	s30, s30
    4058: fecf ea0e    	vmaxnm.f32	s29, s30, s28
    405c: eef4 ea40    	vcmp.f32	s29, s0
    4060: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4064: f57f af54    	bpl.w	0x3f10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x278> @ imm = #-0x158
    4068: f1be 0f10    	cmp.w	lr, #0x10
    406c: edc1 aa00    	vstr	s21, [r1]
    4070: d00e         	beq	0x4090 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x3f8> @ imm = #0x1c
    4072: ee7b 9aac    	vadd.f32	s19, s23, s25
    4076: eeb0 5a6a    	vmov.f32	s10, s21
    407a: eef1 8a6d    	vneg.f32	s17, s27
    407e: eeb0 0a6e    	vmov.f32	s0, s29
    4082: f1b8 0f10    	cmp.w	r8, #0x10
    4086: f10c 0c01    	add.w	r12, r12, #0x1
    408a: 46c6         	mov	lr, r8
    408c: f77f aee3    	ble.w	0x3e56 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x1be> @ imm = #-0x23a
    4090: f64d 0046    	movw	r0, #0xd846
    4094: f64d 4230    	movw	r2, #0xdc30
    4098: f2c0 0000    	movt	r0, #0x0
    409c: f2c0 0200    	movt	r2, #0x0
    40a0: 2128         	movs	r1, #0x28
    40a2: f007 fd8d    	bl	0xbbc0 <core::panicking::panic> @ imm = #0x7b1a
    40a6: bf00         	nop
    40a8: 00 00 a0 c2  	.word	0xc2a00000
    40ac: 00 00 a0 42  	.word	0x42a00000
    40b0: 3b aa b8 3f  	.word	0x3fb8aa3b
    40b4: 00 bf 00 bf  	.word	0xbf00bf00
    40b8: eeb4 0a49    	vcmp.f32	s0, s18
    40bc: f10c 0c01    	add.w	r12, r12, #0x1
    40c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    40c4: f04f 0400    	mov.w	r4, #0x0
    40c8: d805         	bhi	0x40d6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #0xa
    40ca: eef4 8a4c    	vcmp.f32	s17, s24
    40ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    40d2: bf98         	it	ls
    40d4: 2401         	movls	r4, #0x1
    40d6: ed80 0a00    	vstr	s0, [r0]
    40da: f880 c004    	strb.w	r12, [r0, #0x4]
    40de: 7144         	strb	r4, [r0, #0x5]
    40e0: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    40e4: f85d 8b04    	ldr	r8, [sp], #4
    40e8: bdf0         	pop	{r4, r5, r6, r7, pc}
    40ea: bf00         	nop
    40ec: bf00         	nop
    40ee: bf00         	nop
    40f0: ed80 0a00    	vstr	s0, [r0]
    40f4: 2100         	movs	r1, #0x0
    40f6: f880 c004    	strb.w	r12, [r0, #0x4]
    40fa: 7141         	strb	r1, [r0, #0x5]
    40fc: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    4100: f85d 8b04    	ldr	r8, [sp], #4
    4104: bdf0         	pop	{r4, r5, r6, r7, pc}
    4106: bf00         	nop
    4108: ab aa 2a 3e  	.word	0x3e2aaaab
    410c: 00 bf 00 bf  	.word	0xbf00bf00
    4110: 2400         	movs	r4, #0x0
    4112: e7e0         	b	0x40d6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #-0x40
    4114: 09 d5 19 b8  	.word	0xb819d509
    4118: 18 72 31 3f  	.word	0x3f317218
    411c: 89 88 08 3c  	.word	0x3c088889
    4120: ab aa 2a 3d  	.word	0x3d2aaaab
    4124: 77 cc 2b 31  	.word	0x312bcc77
    4128: 00 00 80 7f  	.word	0x7f800000
    412c: 0a d7 23 3c  	.word	0x3c23d70a
    4130: 00 00 00 00  	.word	0x00000000
    4134: 09 d5 19 38  	.word	0x3819d509
    4138: 08 e5 3c 1e  	.word	0x1e3ce508
    413c: 17 b7 d1 38  	.word	0x38d1b717
    4140: bd 37 06 36  	.word	0x360637bd
    4144: ac c5 a7 37  	.word	0x37a7c5ac

00004148 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>>:
    4148: b5f0         	push	{r4, r5, r6, r7, lr}
    414a: af03         	add	r7, sp, #0xc
    414c: f84d 8d04    	str	r8, [sp, #-4]!
    4150: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    4154: b088         	sub	sp, #0x20
    4156: ed9f 3ae6    	vldr	s6, [pc, #920]          @ 0x44f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3a8>
    415a: ee22 4a03    	vmul.f32	s8, s4, s6
    415e: ed9f 2ae5    	vldr	s4, [pc, #916]          @ 0x44f4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3ac>
    4162: ed9f 3ae5    	vldr	s6, [pc, #916]          @ 0x44f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b0>
    4166: ed9f 5ae5    	vldr	s10, [pc, #916]         @ 0x44fc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b4>
    416a: ee34 2a02    	vadd.f32	s4, s8, s4
    416e: ee34 3a03    	vadd.f32	s6, s8, s6
    4172: ee82 2a05    	vdiv.f32	s4, s4, s10
    4176: ee83 3a05    	vdiv.f32	s6, s6, s10
    417a: eeb4 2a43    	vcmp.f32	s4, s6
    417e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4182: f200 83a1    	bhi.w	0x48c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x780> @ imm = #0x742
    4186: ed91 5a00    	vldr	s10, [r1]
    418a: ed8d 5a01    	vstr	s10, [sp, #4]
    418e: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    4192: ed91 ea01    	vldr	s28, [r1, #4]
    4196: ed9f 6b72    	vldr	d6, [pc, #456]          @ 0x4360 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x218>
    419a: 2600         	movs	r6, #0x0
    419c: 2300         	movs	r3, #0x0
    419e: ee05 1b06    	vmla.f64	d1, d5, d6
    41a2: eeb7 6ace    	vcvt.f64.f32	d6, s28
    41a6: eeff 4a00    	vmov.f32	s9, #-1.000000e+00
    41aa: ed9f 5b6f    	vldr	d5, [pc, #444]          @ 0x4368 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x220>
    41ae: eeb0 7b41    	vmov.f64	d7, d1
    41b2: eddf 2ad3    	vldr	s5, [pc, #844]          @ 0x4500 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b8>
    41b6: ee06 7b05    	vmla.f64	d7, d6, d5
    41ba: ed9f 6ad2    	vldr	s12, [pc, #840]         @ 0x4504 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3bc>
    41be: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    41c2: ee24 ca06    	vmul.f32	s24, s8, s12
    41c6: ed9f 5ad0    	vldr	s10, [pc, #832]         @ 0x4508 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c0>
    41ca: eeb7 4bc7    	vcvt.f32.f64	s8, d7
    41ce: eddf 5acf    	vldr	s11, [pc, #828]         @ 0x450c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c4>
    41d2: eeb0 6a4c    	vmov.f32	s12, s24
    41d6: ee04 6a05    	vmla.f32	s12, s8, s10
    41da: eef7 0bc0    	vcvt.f32.f64	s1, d0
    41de: eeb0 4a60    	vmov.f32	s8, s1
    41e2: ee0e 4a25    	vmla.f32	s8, s28, s11
    41e6: eeb4 2a46    	vcmp.f32	s4, s12
    41ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    41ee: fe32 0a06    	vselgt.f32	s0, s4, s12
    41f2: eef0 3ac4    	vabs.f32	s7, s8
    41f6: eeb4 0a43    	vcmp.f32	s0, s6
    41fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    41fe: eeb4 6a42    	vcmp.f32	s12, s4
    4202: fe33 fa00    	vselgt.f32	s30, s6, s0
    4206: ed9f 0ac2    	vldr	s0, [pc, #776]          @ 0x4510 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    420a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    420e: bfc8         	it	gt
    4210: 2601         	movgt	r6, #0x1
    4212: eeb4 6a43    	vcmp.f32	s12, s6
    4216: eeb0 6a40    	vmov.f32	s12, s0
    421a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    421e: eeb5 4a40    	vcmp.f32	s8, #0
    4222: eeb0 4a40    	vmov.f32	s8, s0
    4226: bf48         	it	mi
    4228: 2301         	movmi	r3, #0x1
    422a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    422e: bf48         	it	mi
    4230: eeb0 4a64    	vmovmi.f32	s8, s9
    4234: eeb0 8a40    	vmov.f32	s16, s0
    4238: eef4 3a62    	vcmp.f32	s7, s5
    423c: fe36 9a84    	vselgt.f32	s18, s13, s8
    4240: eeb0 4a40    	vmov.f32	s8, s0
    4244: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4248: ea03 0306    	and.w	r3, r3, r6
    424c: f280 80bb    	bge.w	0x43c6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x176
    4250: ed9f 0ae0    	vldr	s0, [pc, #896]          @ 0x45d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x48c>
    4254: eef4 3a40    	vcmp.f32	s7, s0
    4258: ed9f 6aad    	vldr	s12, [pc, #692]         @ 0x4510 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    425c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4260: d912         	bls	0x4288 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x140> @ imm = #0x24
    4262: ed9f 0add    	vldr	s0, [pc, #884]          @ 0x45d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x490>
    4266: eef4 3a40    	vcmp.f32	s7, s0
    426a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    426e: d913         	bls	0x4298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x150> @ imm = #0x26
    4270: ed9f 0ada    	vldr	s0, [pc, #872]          @ 0x45dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x494>
    4274: ee33 4a80    	vadd.f32	s8, s7, s0
    4278: eddf 3ad9    	vldr	s7, [pc, #868]          @ 0x45e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x498>
    427c: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    4280: e012         	b	0x42a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x160> @ imm = #0x24
    4282: bf00         	nop
    4284: bf00         	nop
    4286: bf00         	nop
    4288: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    428c: eeb0 4a46    	vmov.f32	s8, s12
    4290: e00e         	b	0x42b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x168> @ imm = #0x1c
    4292: bf00         	nop
    4294: bf00         	nop
    4296: bf00         	nop
    4298: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x45e4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x49c>
    429c: ee33 4a80    	vadd.f32	s8, s7, s0
    42a0: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    42a4: eddf 3ad0    	vldr	s7, [pc, #832]          @ 0x45e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4a0>
    42a8: ee04 0a23    	vmla.f32	s0, s8, s7
    42ac: ee29 4a23    	vmul.f32	s8, s18, s7
    42b0: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    42b4: ee33 0ac0    	vsub.f32	s0, s7, s0
    42b8: fec0 3a06    	vmaxnm.f32	s7, s0, s12
    42bc: eeb1 0a44    	vneg.f32	s0, s8
    42c0: eef5 3a40    	vcmp.f32	s7, #0
    42c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42c8: d942         	bls	0x4350 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x208> @ imm = #0x84
    42ca: eeb0 4acf    	vabs.f32	s8, s30
    42ce: eeb4 4a63    	vcmp.f32	s8, s7
    42d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42d6: d94b         	bls	0x4370 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x228> @ imm = #0x96
    42d8: ee83 8a84    	vdiv.f32	s16, s7, s8
    42dc: ee28 4a08    	vmul.f32	s8, s16, s16
    42e0: ee24 4a04    	vmul.f32	s8, s8, s8
    42e4: ee24 4a04    	vmul.f32	s8, s8, s8
    42e8: ee24 9a04    	vmul.f32	s18, s8, s8
    42ec: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    42f0: ee39 6a04    	vadd.f32	s12, s18, s8
    42f4: eeb0 aa44    	vmov.f32	s20, s8
    42f8: eeb4 6a44    	vcmp.f32	s12, s8
    42fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4300: d009         	beq	0x4316 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x1ce> @ imm = #0x12
    4302: eeb0 aa46    	vmov.f32	s20, s12
    4306: eeb1 aaca    	vsqrt.f32	s20, s20
    430a: eeb1 aaca    	vsqrt.f32	s20, s20
    430e: eeb1 aaca    	vsqrt.f32	s20, s20
    4312: eeb1 aaca    	vsqrt.f32	s20, s20
    4316: ee84 4a0a    	vdiv.f32	s8, s8, s20
    431a: eeb4 fa4f    	vcmp.f32	s30, s30
    431e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4322: ee84 aa06    	vdiv.f32	s20, s8, s12
    4326: f180 82db    	bvs.w	0x48e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x798> @ imm = #0x5b6
    432a: ee1f 6a10    	vmov	r6, s30
    432e: f04f 557e    	mov.w	r5, #0x3f800000
    4332: f365 061e    	bfi	r6, r5, #0, #31
    4336: ee0b 6a10    	vmov	s22, r6
    433a: ee2b 6a23    	vmul.f32	s12, s22, s7
    433e: ee26 6a04    	vmul.f32	s12, s12, s8
    4342: ee2b 4a0a    	vmul.f32	s8, s22, s20
    4346: ee68 3a09    	vmul.f32	s7, s16, s18
    434a: ee23 8a8a    	vmul.f32	s16, s7, s20
    434e: e03a         	b	0x43c6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x74
    4350: eeb0 8a46    	vmov.f32	s16, s12
    4354: eeb0 4a46    	vmov.f32	s8, s12
    4358: e035         	b	0x43c6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x6a
    435a: bf00         	nop
    435c: bf00         	nop
    435e: bf00         	nop
    4360: a2 0c d2 2e  	.word	0x2ed20ca2
    4364: ca fe ef 3f  	.word	0x3feffeca
    4368: 1f 89 9b cf  	.word	0xcf9b891f
    436c: ab 32 9c bf  	.word	0xbf9c32ab
    4370: ee8f 4a23    	vdiv.f32	s8, s30, s7
    4374: eeb7 8a00    	vmov.f32	s16, #1.000000e+00
    4378: ee24 4a04    	vmul.f32	s8, s8, s8
    437c: eeb0 9a48    	vmov.f32	s18, s16
    4380: ee24 4a04    	vmul.f32	s8, s8, s8
    4384: ee24 4a04    	vmul.f32	s8, s8, s8
    4388: ee24 4a04    	vmul.f32	s8, s8, s8
    438c: ee34 6a08    	vadd.f32	s12, s8, s16
    4390: eeb4 6a48    	vcmp.f32	s12, s16
    4394: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4398: d009         	beq	0x43ae <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x266> @ imm = #0x12
    439a: eeb0 9a46    	vmov.f32	s18, s12
    439e: eeb1 9ac9    	vsqrt.f32	s18, s18
    43a2: eeb1 9ac9    	vsqrt.f32	s18, s18
    43a6: eeb1 9ac9    	vsqrt.f32	s18, s18
    43aa: eeb1 9ac9    	vsqrt.f32	s18, s18
    43ae: ee88 9a09    	vdiv.f32	s18, s16, s18
    43b2: ee2f 4a04    	vmul.f32	s8, s30, s8
    43b6: ee89 8a06    	vdiv.f32	s16, s18, s12
    43ba: ee84 4a23    	vdiv.f32	s8, s8, s7
    43be: ee2f 6a09    	vmul.f32	s12, s30, s18
    43c2: ee24 4a08    	vmul.f32	s8, s8, s16
    43c6: 2b00         	cmp	r3, #0x0
    43c8: ee7e 3a46    	vsub.f32	s7, s28, s12
    43cc: ed9f 6ad6    	vldr	s12, [pc, #856]         @ 0x4728 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e0>
    43d0: ee20 4a04    	vmul.f32	s8, s0, s8
    43d4: ed9f 9ad5    	vldr	s18, [pc, #852]         @ 0x472c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e4>
    43d8: fe09 6a06    	vseleq.f32	s12, s18, s12
    43dc: ee13 3a90    	vmov	r3, s7
    43e0: ed9f aad3    	vldr	s20, [pc, #844]         @ 0x4730 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e8>
    43e4: ee26 0a08    	vmul.f32	s0, s12, s16
    43e8: ed9f 6ad2    	vldr	s12, [pc, #840]         @ 0x4734 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5ec>
    43ec: ee24 6a06    	vmul.f32	s12, s8, s12
    43f0: f023 4300    	bic	r3, r3, #0x80000000
    43f4: f1b3 4fff    	cmp.w	r3, #0x7f800000
    43f8: db02         	blt	0x4400 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2b8> @ imm = #0x4
    43fa: ed9f 9acf    	vldr	s18, [pc, #828]         @ 0x4738 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f0>
    43fe: e009         	b	0x4414 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2cc> @ imm = #0x12
    4400: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    4404: ed9f 8a42    	vldr	s16, [pc, #264]         @ 0x4510 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    4408: ee83 4a84    	vdiv.f32	s8, s7, s8
    440c: eeb0 4ac4    	vabs.f32	s8, s8
    4410: fe84 9a08    	vmaxnm.f32	s18, s8, s16
    4414: ee00 6a0a    	vmla.f32	s12, s0, s20
    4418: eeb7 da08    	vmov.f32	s26, #1.500000e+00
    441c: eeb1 aa63    	vneg.f32	s20, s7
    4420: 2500         	movs	r5, #0x0
    4422: f04f 0800    	mov.w	r8, #0x0
    4426: ed9f bac5    	vldr	s22, [pc, #788]         @ 0x473c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f4>
    442a: eddf cac5    	vldr	s25, [pc, #788]         @ 0x4740 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f8>
    442e: f04f 5c7e    	mov.w	r12, #0x3f800000
    4432: ed9f 4a37    	vldr	s8, [pc, #220]          @ 0x4510 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    4436: f20f 4eec    	adr.w	lr, #1260
    443a: eddf ea66    	vldr	s29, [pc, #408]         @ 0x45d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x48c>
    443e: 462c         	mov	r4, r5
    4440: eddf fa65    	vldr	s31, [pc, #404]         @ 0x45d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x490>
    4444: ee36 0a26    	vadd.f32	s0, s12, s13
    4448: 2d10         	cmp	r5, #0x10
    444a: bf18         	it	ne
    444c: 3401         	addne	r4, #0x1
    444e: 2300         	movs	r3, #0x0
    4450: ee10 6a10    	vmov	r6, s0
    4454: eeb0 6ac0    	vabs.f32	s12, s0
    4458: f026 4600    	bic	r6, r6, #0x80000000
    445c: eeb4 6a4b    	vcmp.f32	s12, s22
    4460: f1b6 4fff    	cmp.w	r6, #0x7f800000
    4464: f04f 0600    	mov.w	r6, #0x0
    4468: bfa8         	it	ge
    446a: 2601         	movge	r6, #0x1
    446c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4470: bf48         	it	mi
    4472: 2301         	movmi	r3, #0x1
    4474: 4333         	orrs	r3, r6
    4476: f040 8217    	bne.w	0x48a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x760> @ imm = #0x42e
    447a: ee8a ba00    	vdiv.f32	s22, s20, s0
    447e: eeb4 9a6c    	vcmp.f32	s18, s25
    4482: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4486: eeb0 7acb    	vabs.f32	s14, s22
    448a: d905         	bls	0x4498 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x350> @ imm = #0xa
    448c: 2d10         	cmp	r5, #0x10
    448e: d128         	bne	0x44e2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x39a> @ imm = #0x50
    4490: e216         	b	0x48c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x778> @ imm = #0x42c
    4492: bf00         	nop
    4494: bf00         	nop
    4496: bf00         	nop
    4498: eeb0 0ace    	vabs.f32	s0, s28
    449c: ed9f 6aee    	vldr	s12, [pc, #952]         @ 0x4858 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x710>
    44a0: 2600         	movs	r6, #0x0
    44a2: eeb4 0a40    	vcmp.f32	s0, s0
    44a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    44aa: fe16 0a80    	vselvs.f32	s0, s13, s0
    44ae: eeb4 0a66    	vcmp.f32	s0, s13
    44b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    44b6: fe30 0a26    	vselgt.f32	s0, s0, s13
    44ba: ee20 0a06    	vmul.f32	s0, s0, s12
    44be: ed9f 6ae7    	vldr	s12, [pc, #924]         @ 0x485c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x714>
    44c2: fe80 0a46    	vminnm.f32	s0, s0, s12
    44c6: eeb4 7a40    	vcmp.f32	s14, s0
    44ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    44ce: bf98         	it	ls
    44d0: 2601         	movls	r6, #0x1
    44d2: 2d10         	cmp	r5, #0x10
    44d4: bf1c         	itt	ne
    44d6: eeb4 7a40    	vcmpne.f32	s14, s0
    44da: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    44de: f240 81d5    	bls.w	0x488c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x744> @ imm = #0x3aa
    44e2: f04f 567e    	mov.w	r6, #0x3f800000
    44e6: ed8d 7a02    	vstr	s14, [sp, #8]
    44ea: ed8d fa03    	vstr	s30, [sp, #12]
    44ee: e01b         	b	0x4528 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3e0> @ imm = #0x36
    44f0: 00 80 bb 47  	.word	0x47bb8000
    44f4: 00 24 74 cb  	.word	0xcb742400
    44f8: 00 24 74 4b  	.word	0x4b742400
    44fc: 00 a0 0c 48  	.word	0x480ca000
    4500: 0a d7 23 3d  	.word	0x3d23d70a
    4504: 50 d0 e8 36  	.word	0x36e8d050
    4508: 79 61 2e 43  	.word	0x432e6179
    450c: ab aa a0 b8  	.word	0xb8a0aaab
    4510: 00 00 00 00  	.word	0x00000000
    4514: 00 bf 00 bf  	.word	0xbf00bf00
    4518: eeb0 1b48    	vmov.f64	d1, d8
    451c: f5a6 0600    	sub.w	r6, r6, #0x800000
    4520: f1b6 5f66    	cmp.w	r6, #0x39800000
    4524: f000 819c    	beq.w	0x4860 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x718> @ imm = #0x338
    4528: ee00 6a10    	vmov	s0, r6
    452c: eef0 3a4e    	vmov.f32	s7, s28
    4530: ed9f 7bef    	vldr	d7, [pc, #956]          @ 0x48f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7a8>
    4534: eeb0 8b41    	vmov.f64	d8, d1
    4538: eeb0 6a4c    	vmov.f32	s12, s24
    453c: ee4b 3a00    	vmla.f32	s7, s22, s0
    4540: eef0 9a44    	vmov.f32	s19, s8
    4544: eef0 ca44    	vmov.f32	s25, s8
    4548: eeb0 fa44    	vmov.f32	s30, s8
    454c: eeb7 aae3    	vcvt.f64.f32	d10, s7
    4550: ee0a 1b07    	vmla.f64	d1, d10, d7
    4554: eef0 aa44    	vmov.f32	s21, s8
    4558: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    455c: eeb0 1a60    	vmov.f32	s2, s1
    4560: ee03 1aa5    	vmla.f32	s2, s7, s11
    4564: ee00 6a05    	vmla.f32	s12, s0, s10
    4568: eef0 dac1    	vabs.f32	s27, s2
    456c: eeb4 2a46    	vcmp.f32	s4, s12
    4570: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4574: fe32 0a06    	vselgt.f32	s0, s4, s12
    4578: eeb4 0a43    	vcmp.f32	s0, s6
    457c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4580: eeb5 1a40    	vcmp.f32	s2, #0
    4584: eeb0 1a44    	vmov.f32	s2, s8
    4588: fe33 0a00    	vselgt.f32	s0, s6, s0
    458c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4590: bf48         	it	mi
    4592: eeb0 1a64    	vmovmi.f32	s2, s9
    4596: eef4 da62    	vcmp.f32	s27, s5
    459a: fe76 ba81    	vselgt.f32	s23, s13, s2
    459e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45a2: f280 80fd    	bge.w	0x47a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x1fa
    45a6: eeb0 fa44    	vmov.f32	s30, s8
    45aa: eeb0 aa4d    	vmov.f32	s20, s26
    45ae: eef4 da6e    	vcmp.f32	s27, s29
    45b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45b6: d927         	bls	0x4608 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4c0> @ imm = #0x4e
    45b8: eef4 da6f    	vcmp.f32	s27, s31
    45bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45c0: d916         	bls	0x45f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4a8> @ imm = #0x2c
    45c2: ed9f 1acf    	vldr	s2, [pc, #828]          @ 0x4900 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b8>
    45c6: eeb0 aa08    	vmov.f32	s20, #3.000000e+00
    45ca: ee3d 1a81    	vadd.f32	s2, s27, s2
    45ce: ed9f 7acd    	vldr	s14, [pc, #820]         @ 0x4904 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7bc>
    45d2: e015         	b	0x4600 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4b8> @ imm = #0x2a
    45d4: 7c f2 b0 3a  	.word	0x3ab0f27c
    45d8: a6 9b c4 3b  	.word	0x3bc49ba6
    45dc: a6 9b c4 bb  	.word	0xbbc49ba6
    45e0: 79 78 b0 43  	.word	0x43b07879
    45e4: 7c f2 b0 ba  	.word	0xbab0f27c
    45e8: 53 4a a1 43  	.word	0x43a14a53
    45ec: 00 bf 00 bf  	.word	0xbf00bf00
    45f0: ed9f 1ac1    	vldr	s2, [pc, #772]          @ 0x48f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b0>
    45f4: eeb0 aa4d    	vmov.f32	s20, s26
    45f8: ee3d 1a81    	vadd.f32	s2, s27, s2
    45fc: ed9f 7abf    	vldr	s14, [pc, #764]         @ 0x48fc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b4>
    4600: ee01 aa07    	vmla.f32	s20, s2, s14
    4604: ee2b fa87    	vmul.f32	s30, s23, s14
    4608: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    460c: eef1 9a4f    	vneg.f32	s19, s30
    4610: ee31 1a4a    	vsub.f32	s2, s2, s20
    4614: fec1 da04    	vmaxnm.f32	s27, s2, s8
    4618: eef5 da40    	vcmp.f32	s27, #0
    461c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4620: d97a         	bls	0x4718 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5d0> @ imm = #0xf4
    4622: eeb0 aac0    	vabs.f32	s20, s0
    4626: eeb4 aa6d    	vcmp.f32	s20, s27
    462a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    462e: f240 808b    	bls.w	0x4748 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x600> @ imm = #0x116
    4632: eeb0 1a65    	vmov.f32	s2, s11
    4636: eecd aa8a    	vdiv.f32	s21, s27, s20
    463a: eeb0 7a6f    	vmov.f32	s14, s31
    463e: eef0 fa62    	vmov.f32	s31, s5
    4642: eef0 2a64    	vmov.f32	s5, s9
    4646: eef0 5a4e    	vmov.f32	s11, s28
    464a: eef0 4a41    	vmov.f32	s9, s2
    464e: ee2a 1aaa    	vmul.f32	s2, s21, s21
    4652: eef0 1a66    	vmov.f32	s3, s13
    4656: eeb0 ea49    	vmov.f32	s28, s18
    465a: eeb0 9a60    	vmov.f32	s18, s1
    465e: eef0 0a4c    	vmov.f32	s1, s24
    4662: ee21 1a01    	vmul.f32	s2, s2, s2
    4666: eeb0 ca4d    	vmov.f32	s24, s26
    466a: eeb0 da45    	vmov.f32	s26, s10
    466e: eeb0 5a6e    	vmov.f32	s10, s29
    4672: eeb0 fa66    	vmov.f32	s30, s13
    4676: ee21 1a01    	vmul.f32	s2, s2, s2
    467a: ee61 ba01    	vmul.f32	s23, s2, s2
    467e: ee3b aaa6    	vadd.f32	s20, s23, s13
    4682: eeb4 aa66    	vcmp.f32	s20, s13
    4686: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    468a: d009         	beq	0x46a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x558> @ imm = #0x12
    468c: eeb0 fa4a    	vmov.f32	s30, s20
    4690: eeb1 facf    	vsqrt.f32	s30, s30
    4694: eeb1 facf    	vsqrt.f32	s30, s30
    4698: eeb1 facf    	vsqrt.f32	s30, s30
    469c: eeb1 facf    	vsqrt.f32	s30, s30
    46a0: eec1 ea8f    	vdiv.f32	s29, s3, s30
    46a4: eddf ca98    	vldr	s25, [pc, #608]         @ 0x4908 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c0>
    46a8: eef0 6a61    	vmov.f32	s13, s3
    46ac: eeb4 0a40    	vcmp.f32	s0, s0
    46b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46b4: ee8e aa8a    	vdiv.f32	s20, s29, s20
    46b8: eeb0 fa6c    	vmov.f32	s30, s25
    46bc: bf7f         	itttt	vc
    46be: ee10 3a10    	vmovvc	r3, s0
    46c2: f36c 031e    	bfivc	r3, r12, #0, #31
    46c6: ee01 3a10    	vmovvc	s2, r3
    46ca: ee61 1a2d    	vmulvc.f32	s3, s2, s27
    46ce: bf7c         	itt	vc
    46d0: ee61 caae    	vmulvc.f32	s25, s3, s29
    46d4: ee21 fa0a    	vmulvc.f32	s30, s2, s20
    46d8: ee2a 1aab    	vmul.f32	s2, s21, s23
    46dc: eef0 ea45    	vmov.f32	s29, s10
    46e0: eeb0 5a4d    	vmov.f32	s10, s26
    46e4: eeb0 da4c    	vmov.f32	s26, s24
    46e8: eeb0 ca60    	vmov.f32	s24, s1
    46ec: eef0 0a49    	vmov.f32	s1, s18
    46f0: ee61 aa0a    	vmul.f32	s21, s2, s20
    46f4: eeb0 1a64    	vmov.f32	s2, s9
    46f8: eef0 4a62    	vmov.f32	s9, s5
    46fc: eef0 2a6f    	vmov.f32	s5, s31
    4700: eeb0 9a4e    	vmov.f32	s18, s28
    4704: eeb0 ea65    	vmov.f32	s28, s11
    4708: eef0 5a41    	vmov.f32	s11, s2
    470c: eef0 fa47    	vmov.f32	s31, s14
    4710: e046         	b	0x47a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x8c
    4712: bf00         	nop
    4714: bf00         	nop
    4716: bf00         	nop
    4718: eef0 ca44    	vmov.f32	s25, s8
    471c: eef0 aa44    	vmov.f32	s21, s8
    4720: eeb0 fa44    	vmov.f32	s30, s8
    4724: e03c         	b	0x47a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x78
    4726: bf00         	nop
    4728: 79 61 2e c3  	.word	0xc32e6179
    472c: 00 00 00 80  	.word	0x80000000
    4730: 5e 95 e1 bc  	.word	0xbce1955e
    4734: ab aa a0 38  	.word	0x38a0aaab
    4738: 00 00 80 7f  	.word	0x7f800000
    473c: 08 e5 3c 1e  	.word	0x1e3ce508
    4740: 17 b7 d1 38  	.word	0x38d1b717
    4744: 00 bf 00 bf  	.word	0xbf00bf00
    4748: ee80 1a2d    	vdiv.f32	s2, s0, s27
    474c: eef0 aa66    	vmov.f32	s21, s13
    4750: ee21 1a01    	vmul.f32	s2, s2, s2
    4754: ee21 1a01    	vmul.f32	s2, s2, s2
    4758: ee21 1a01    	vmul.f32	s2, s2, s2
    475c: ee21 aa01    	vmul.f32	s20, s2, s2
    4760: ee3a fa26    	vadd.f32	s30, s20, s13
    4764: eeb4 fa66    	vcmp.f32	s30, s13
    4768: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    476c: d009         	beq	0x4782 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x63a> @ imm = #0x12
    476e: eef0 aa4f    	vmov.f32	s21, s30
    4772: eef1 aaea    	vsqrt.f32	s21, s21
    4776: eef1 aaea    	vsqrt.f32	s21, s21
    477a: eef1 aaea    	vsqrt.f32	s21, s21
    477e: eef1 aaea    	vsqrt.f32	s21, s21
    4782: ee86 1aaa    	vdiv.f32	s2, s13, s21
    4786: ee60 1a0a    	vmul.f32	s3, s0, s20
    478a: eec1 aa0f    	vdiv.f32	s21, s2, s30
    478e: eec1 1aad    	vdiv.f32	s3, s3, s27
    4792: ee60 ca01    	vmul.f32	s25, s0, s2
    4796: ee21 faaa    	vmul.f32	s30, s3, s21
    479a: bf00         	nop
    479c: bf00         	nop
    479e: bf00         	nop
    47a0: ee73 daec    	vsub.f32	s27, s7, s25
    47a4: ee1d 3a90    	vmov	r3, s27
    47a8: f023 4300    	bic	r3, r3, #0x80000000
    47ac: f1b3 4fff    	cmp.w	r3, #0x7f800000
    47b0: f6bf aeb2    	bge.w	0x4518 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3d0> @ imm = #-0x29c
    47b4: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    47b8: ee8d 1a81    	vdiv.f32	s2, s27, s2
    47bc: eeb0 1ac1    	vabs.f32	s2, s2
    47c0: fec1 ba04    	vmaxnm.f32	s23, s2, s8
    47c4: eef4 ba49    	vcmp.f32	s23, s18
    47c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47cc: f57f aea4    	bpl.w	0x4518 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3d0> @ imm = #-0x2b8
    47d0: 4673         	mov	r3, lr
    47d2: eeb4 6a43    	vcmp.f32	s12, s6
    47d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47da: bf48         	it	mi
    47dc: 3304         	addmi	r3, #0x4
    47de: eeb4 6a42    	vcmp.f32	s12, s4
    47e2: ed9f 6a4a    	vldr	s12, [pc, #296]         @ 0x490c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c4>
    47e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47ea: ed93 1a00    	vldr	s2, [r3]
    47ee: edc1 3a01    	vstr	s7, [r1, #4]
    47f2: fe31 6a06    	vselgt.f32	s12, s2, s12
    47f6: 2d10         	cmp	r5, #0x10
    47f8: ed9f 9a46    	vldr	s18, [pc, #280]         @ 0x4914 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7cc>
    47fc: ed9d 1a01    	vldr	s2, [sp, #4]
    4800: eddf ca46    	vldr	s25, [pc, #280]         @ 0x491c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d4>
    4804: ed81 1a00    	vstr	s2, [r1]
    4808: ed9f ba43    	vldr	s22, [pc, #268]         @ 0x4918 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d0>
    480c: d019         	beq	0x4842 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x6fa> @ imm = #0x32
    480e: ee29 1a8f    	vmul.f32	s2, s19, s30
    4812: eeb0 ea63    	vmov.f32	s28, s7
    4816: ee66 1a2a    	vmul.f32	s3, s12, s21
    481a: ed9f 6a3d    	vldr	s12, [pc, #244]         @ 0x4910 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c8>
    481e: eeb1 aa6d    	vneg.f32	s20, s27
    4822: eeb0 fa40    	vmov.f32	s30, s0
    4826: ee21 6a06    	vmul.f32	s12, s2, s12
    482a: 2c10         	cmp	r4, #0x10
    482c: ee01 6a89    	vmla.f32	s12, s3, s18
    4830: eeb0 9a6b    	vmov.f32	s18, s23
    4834: eeb0 1b48    	vmov.f64	d1, d8
    4838: f108 0801    	add.w	r8, r8, #0x1
    483c: 4625         	mov	r5, r4
    483e: f77f ae01    	ble.w	0x4444 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2fc> @ imm = #-0x3fe
    4842: f64d 0046    	movw	r0, #0xd846
    4846: f64d 4230    	movw	r2, #0xdc30
    484a: f2c0 0000    	movt	r0, #0x0
    484e: f2c0 0200    	movt	r2, #0x0
    4852: 2128         	movs	r1, #0x28
    4854: f007 f9b4    	bl	0xbbc0 <core::panicking::panic> @ imm = #0x7368
    4858: bd 37 06 36  	.word	0x360637bd
    485c: ac c5 a7 37  	.word	0x37a7c5ac
    4860: ed9f 0a2e    	vldr	s0, [pc, #184]          @ 0x491c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d4>
    4864: f108 0801    	add.w	r8, r8, #0x1
    4868: eeb4 9a40    	vcmp.f32	s18, s0
    486c: 2600         	movs	r6, #0x0
    486e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4872: d809         	bhi	0x4888 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x740> @ imm = #0x12
    4874: ed9f 0a2a    	vldr	s0, [pc, #168]          @ 0x4920 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d8>
    4878: ed9d 1a02    	vldr	s2, [sp, #8]
    487c: eeb4 1a40    	vcmp.f32	s2, s0
    4880: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4884: bf98         	it	ls
    4886: 2601         	movls	r6, #0x1
    4888: ed9d fa03    	vldr	s30, [sp, #12]
    488c: ed82 fa00    	vstr	s30, [r2]
    4890: ed80 9a00    	vstr	s18, [r0]
    4894: f880 8004    	strb.w	r8, [r0, #0x4]
    4898: 7146         	strb	r6, [r0, #0x5]
    489a: b008         	add	sp, #0x20
    489c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    48a0: f85d 8b04    	ldr	r8, [sp], #4
    48a4: bdf0         	pop	{r4, r5, r6, r7, pc}
    48a6: bf00         	nop
    48a8: ed80 9a00    	vstr	s18, [r0]
    48ac: 2100         	movs	r1, #0x0
    48ae: f880 8004    	strb.w	r8, [r0, #0x4]
    48b2: 7141         	strb	r1, [r0, #0x5]
    48b4: b008         	add	sp, #0x20
    48b6: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    48ba: f85d 8b04    	ldr	r8, [sp], #4
    48be: bdf0         	pop	{r4, r5, r6, r7, pc}
    48c0: 2600         	movs	r6, #0x0
    48c2: e7e3         	b	0x488c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x744> @ imm = #-0x3a
    48c4: bf00         	nop
    48c6: bf00         	nop
    48c8: f24d 70b0    	movw	r0, #0xd7b0
    48cc: f24e 0200    	movw	r2, #0xe000
    48d0: f2c0 0000    	movt	r0, #0x0
    48d4: f2c0 0200    	movt	r2, #0x0
    48d8: a904         	add	r1, sp, #0x10
    48da: f007 f96d    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #0x72da
    48de: bf00         	nop
    48e0: ed9f 4a09    	vldr	s8, [pc, #36]           @ 0x4908 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c0>
    48e4: eeb0 6a44    	vmov.f32	s12, s8
    48e8: e52d         	b	0x4346 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x1fe> @ imm = #-0x5a6
    48ea: bf00         	nop
    48ec: bf00         	nop
    48ee: bf00         	nop
    48f0: 1f 89 9b cf  	.word	0xcf9b891f
    48f4: ab 32 9c bf  	.word	0xbf9c32ab
    48f8: 7c f2 b0 ba  	.word	0xbab0f27c
    48fc: 53 4a a1 43  	.word	0x43a14a53
    4900: a6 9b c4 bb  	.word	0xbbc49ba6
    4904: 79 78 b0 43  	.word	0x43b07879
    4908: 00 00 c0 7f  	.word	0x7fc00000
    490c: 00 00 00 80  	.word	0x80000000
    4910: ab aa a0 38  	.word	0x38a0aaab
    4914: 5e 95 e1 bc  	.word	0xbce1955e
    4918: 08 e5 3c 1e  	.word	0x1e3ce508
    491c: 17 b7 d1 38  	.word	0x38d1b717
    4920: ac c5 a7 37  	.word	0x37a7c5ac
    4924: 00 00 00 80  	.word	0x80000000
    4928: 79 61 2e c3  	.word	0xc32e6179
    492c: d4 d4 d4 d4  	.word	0xd4d4d4d4

00004930 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>>:
    4930: b5f0         	push	{r4, r5, r6, r7, lr}
    4932: af03         	add	r7, sp, #0xc
    4934: e92d 0f00    	push.w	{r8, r9, r10, r11}
    4938: b081         	sub	sp, #0x4
    493a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    493e: b09a         	sub	sp, #0x68
    4940: ed9f 1ab5    	vldr	s2, [pc, #724]          @ 0x4c18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2e8>
    4944: 2600         	movs	r6, #0x0
    4946: ee20 2a01    	vmul.f32	s4, s0, s2
    494a: ed9f 0ab4    	vldr	s0, [pc, #720]          @ 0x4c1c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2ec>
    494e: ed9f 1ab4    	vldr	s2, [pc, #720]          @ 0x4c20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f0>
    4952: 9610         	str	r6, [sp, #0x40]
    4954: ed9f 3ab3    	vldr	s6, [pc, #716]          @ 0x4c24 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f4>
    4958: 960f         	str	r6, [sp, #0x3c]
    495a: ee32 0a00    	vadd.f32	s0, s4, s0
    495e: 960c         	str	r6, [sp, #0x30]
    4960: ee32 1a01    	vadd.f32	s2, s4, s2
    4964: e9cd 660d    	strd	r6, r6, [sp, #52]
    4968: ee80 0a03    	vdiv.f32	s0, s0, s6
    496c: ee81 1a03    	vdiv.f32	s2, s2, s6
    4970: eeb4 0a41    	vcmp.f32	s0, s2
    4974: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4978: f200 86da    	bhi.w	0x5730 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe00> @ imm = #0xdb4
    497c: ed91 3a01    	vldr	s6, [r1, #4]
    4980: ed91 7a02    	vldr	s14, [r1, #8]
    4984: eeb7 4ac3    	vcvt.f64.f32	d4, s6
    4988: ed8d 3a01    	vstr	s6, [sp, #4]
    498c: ed9f 5b7c    	vldr	d5, [pc, #496]          @ 0x4b80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x250>
    4990: edd1 ba03    	vldr	s23, [r1, #12]
    4994: eddf faa4    	vldr	s31, [pc, #656]         @ 0x4c28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f8>
    4998: ed92 6b12    	vldr	d6, [r2, #72]
    499c: e9cd 3002    	strd	r3, r0, [sp, #8]
    49a0: ee04 6b05    	vmla.f64	d6, d4, d5
    49a4: 2300         	movs	r3, #0x0
    49a6: eeb7 4ac7    	vcvt.f64.f32	d4, s14
    49aa: eddf 1aa0    	vldr	s3, [pc, #640]          @ 0x4c2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    49ae: ed9f 3b76    	vldr	d3, [pc, #472]          @ 0x4b88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x258>
    49b2: eeb0 5b46    	vmov.f64	d5, d6
    49b6: ed8d 7a0b    	vstr	s14, [sp, #44]
    49ba: eeb7 aa00    	vmov.f32	s20, #1.000000e+00
    49be: ee04 5b03    	vmla.f64	d5, d4, d3
    49c2: eeb7 4aeb    	vcvt.f64.f32	d4, s23
    49c6: ed9f 3b72    	vldr	d3, [pc, #456]          @ 0x4b90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x260>
    49ca: ee04 5b03    	vmla.f64	d5, d4, d3
    49ce: ed9f 4a98    	vldr	s8, [pc, #608]          @ 0x4c30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x300>
    49d2: eef0 4a61    	vmov.f32	s9, s3
    49d6: ee22 4a04    	vmul.f32	s8, s4, s8
    49da: ed9f 3a96    	vldr	s6, [pc, #600]          @ 0x4c34 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x304>
    49de: eeb7 2bc5    	vcvt.f32.f64	s4, d5
    49e2: ed8d 4a07    	vstr	s8, [sp, #28]
    49e6: ed8d 6b08    	vstr	d6, [sp, #32]
    49ea: ee02 4a03    	vmla.f32	s8, s4, s6
    49ee: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x4db4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x484>
    49f2: ed92 2b04    	vldr	d2, [r2, #16]
    49f6: eeb7 6bc2    	vcvt.f32.f64	s12, d2
    49fa: ed8d 6a06    	vstr	s12, [sp, #24]
    49fe: ee07 6a03    	vmla.f32	s12, s14, s6
    4a02: eebf 3a00    	vmov.f32	s6, #-1.000000e+00
    4a06: eeb4 0a44    	vcmp.f32	s0, s8
    4a0a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a0e: ee0b 6aaf    	vmla.f32	s12, s23, s31
    4a12: fe30 2a04    	vselgt.f32	s4, s0, s8
    4a16: eeb4 2a41    	vcmp.f32	s4, s2
    4a1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a1e: eeb4 4a40    	vcmp.f32	s8, s0
    4a22: fe71 9a02    	vselgt.f32	s19, s2, s4
    4a26: eeb0 2a61    	vmov.f32	s4, s3
    4a2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a2e: bfc8         	it	gt
    4a30: 2301         	movgt	r3, #0x1
    4a32: eeb4 4a41    	vcmp.f32	s8, s2
    4a36: eeb0 4a61    	vmov.f32	s8, s3
    4a3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a3e: eeb5 6a40    	vcmp.f32	s12, #0
    4a42: eeb0 5ac6    	vabs.f32	s10, s12
    4a46: bf48         	it	mi
    4a48: 2601         	movmi	r6, #0x1
    4a4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a4e: bf48         	it	mi
    4a50: eeb0 2a43    	vmovmi.f32	s4, s6
    4a54: ea06 0603    	and.w	r6, r6, r3
    4a58: fe3a 6a02    	vselgt.f32	s12, s20, s4
    4a5c: ed9f 2ad6    	vldr	s4, [pc, #856]          @ 0x4db8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x488>
    4a60: eeb4 5a42    	vcmp.f32	s10, s4
    4a64: eeb0 2a61    	vmov.f32	s4, s3
    4a68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a6c: f280 80bf    	bge.w	0x4bee <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x17e
    4a70: ed9f 2ad2    	vldr	s4, [pc, #840]          @ 0x4dbc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x48c>
    4a74: eeb4 5a42    	vcmp.f32	s10, s4
    4a78: ed9f 2a6c    	vldr	s4, [pc, #432]          @ 0x4c2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    4a7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a80: d912         	bls	0x4aa8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x178> @ imm = #0x24
    4a82: ed9f 4acf    	vldr	s8, [pc, #828]          @ 0x4dc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x490>
    4a86: eeb4 5a44    	vcmp.f32	s10, s8
    4a8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a8e: d913         	bls	0x4ab8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x188> @ imm = #0x26
    4a90: ed9f 4acc    	vldr	s8, [pc, #816]          @ 0x4dc4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x494>
    4a94: ee35 5a04    	vadd.f32	s10, s10, s8
    4a98: ed9f 7acb    	vldr	s14, [pc, #812]         @ 0x4dc8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x498>
    4a9c: eeb0 4a08    	vmov.f32	s8, #3.000000e+00
    4aa0: e012         	b	0x4ac8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x198> @ imm = #0x24
    4aa2: bf00         	nop
    4aa4: bf00         	nop
    4aa6: bf00         	nop
    4aa8: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    4aac: eeb0 6a42    	vmov.f32	s12, s4
    4ab0: e00e         	b	0x4ad0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x1a0> @ imm = #0x1c
    4ab2: bf00         	nop
    4ab4: bf00         	nop
    4ab6: bf00         	nop
    4ab8: ed9f 4ac4    	vldr	s8, [pc, #784]          @ 0x4dcc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x49c>
    4abc: ee35 5a04    	vadd.f32	s10, s10, s8
    4ac0: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    4ac4: ed9f 7ac2    	vldr	s14, [pc, #776]         @ 0x4dd0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a0>
    4ac8: ee05 4a07    	vmla.f32	s8, s10, s14
    4acc: ee26 6a07    	vmul.f32	s12, s12, s14
    4ad0: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    4ad4: eef1 1a46    	vneg.f32	s3, s12
    4ad8: ee35 4a44    	vsub.f32	s8, s10, s8
    4adc: fe84 5a02    	vmaxnm.f32	s10, s8, s4
    4ae0: eeb5 5a40    	vcmp.f32	s10, #0
    4ae4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ae8: d942         	bls	0x4b70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x240> @ imm = #0x84
    4aea: eeb0 2ae9    	vabs.f32	s4, s19
    4aee: eeb4 2a45    	vcmp.f32	s4, s10
    4af2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4af6: d94f         	bls	0x4b98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x268> @ imm = #0x9e
    4af8: ee85 4a02    	vdiv.f32	s8, s10, s4
    4afc: ee24 2a04    	vmul.f32	s4, s8, s8
    4b00: ee22 2a02    	vmul.f32	s4, s4, s4
    4b04: ee22 2a02    	vmul.f32	s4, s4, s4
    4b08: ee22 6a02    	vmul.f32	s12, s4, s4
    4b0c: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    4b10: ee36 7a02    	vadd.f32	s14, s12, s4
    4b14: eef0 0a42    	vmov.f32	s1, s4
    4b18: eeb4 7a42    	vcmp.f32	s14, s4
    4b1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b20: d009         	beq	0x4b36 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x206> @ imm = #0x12
    4b22: eef0 0a47    	vmov.f32	s1, s14
    4b26: eef1 0ae0    	vsqrt.f32	s1, s1
    4b2a: eef1 0ae0    	vsqrt.f32	s1, s1
    4b2e: eef1 0ae0    	vsqrt.f32	s1, s1
    4b32: eef1 0ae0    	vsqrt.f32	s1, s1
    4b36: ee82 2a20    	vdiv.f32	s4, s4, s1
    4b3a: eef4 9a69    	vcmp.f32	s19, s19
    4b3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b42: ee82 7a07    	vdiv.f32	s14, s4, s14
    4b46: f180 85ff    	bvs.w	0x5748 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe18> @ imm = #0xbfe
    4b4a: ee19 3a90    	vmov	r3, s19
    4b4e: f04f 557e    	mov.w	r5, #0x3f800000
    4b52: f365 031e    	bfi	r3, r5, #0, #31
    4b56: ee00 3a90    	vmov	s1, r3
    4b5a: ee20 5a85    	vmul.f32	s10, s1, s10
    4b5e: ee60 4a87    	vmul.f32	s9, s1, s14
    4b62: ee25 2a02    	vmul.f32	s4, s10, s4
    4b66: ee24 4a06    	vmul.f32	s8, s8, s12
    4b6a: ee24 4a07    	vmul.f32	s8, s8, s14
    4b6e: e03e         	b	0x4bee <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x7c
    4b70: eeb0 4a42    	vmov.f32	s8, s4
    4b74: eef0 4a42    	vmov.f32	s9, s4
    4b78: e039         	b	0x4bee <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x72
    4b7a: bf00         	nop
    4b7c: bf00         	nop
    4b7e: bf00         	nop
    4b80: a5 94 a7 50  	.word	0x50a794a5
    4b84: 09 2c d5 3f  	.word	0x3fd52c09
    4b88: 9c 9e 91 65  	.word	0x65919e9c
    4b8c: 97 57 e8 bf  	.word	0xbfe85797
    4b90: 76 43 71 a5  	.word	0xa5714376
    4b94: f8 73 e2 3f  	.word	0x3fe273f8
    4b98: ee89 2a85    	vdiv.f32	s4, s19, s10
    4b9c: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    4ba0: ee22 2a02    	vmul.f32	s4, s4, s4
    4ba4: eeb0 7a46    	vmov.f32	s14, s12
    4ba8: ee22 2a02    	vmul.f32	s4, s4, s4
    4bac: ee22 2a02    	vmul.f32	s4, s4, s4
    4bb0: ee22 2a02    	vmul.f32	s4, s4, s4
    4bb4: ee32 4a06    	vadd.f32	s8, s4, s12
    4bb8: eeb4 4a46    	vcmp.f32	s8, s12
    4bbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bc0: d009         	beq	0x4bd6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2a6> @ imm = #0x12
    4bc2: eeb0 7a44    	vmov.f32	s14, s8
    4bc6: eeb1 7ac7    	vsqrt.f32	s14, s14
    4bca: eeb1 7ac7    	vsqrt.f32	s14, s14
    4bce: eeb1 7ac7    	vsqrt.f32	s14, s14
    4bd2: eeb1 7ac7    	vsqrt.f32	s14, s14
    4bd6: ee86 6a07    	vdiv.f32	s12, s12, s14
    4bda: ee29 2a82    	vmul.f32	s4, s19, s4
    4bde: ee86 4a04    	vdiv.f32	s8, s12, s8
    4be2: ee82 5a05    	vdiv.f32	s10, s4, s10
    4be6: ee29 2a86    	vmul.f32	s4, s19, s12
    4bea: ee65 4a04    	vmul.f32	s9, s10, s8
    4bee: ed9d 3a0b    	vldr	s6, [sp, #44]
    4bf2: 2e00         	cmp	r6, #0x0
    4bf4: ee33 2a42    	vsub.f32	s4, s6, s4
    4bf8: ed9f 5a76    	vldr	s10, [pc, #472]         @ 0x4dd4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a4>
    4bfc: ed9f 3a76    	vldr	s6, [pc, #472]          @ 0x4dd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a8>
    4c00: fe03 7a05    	vseleq.f32	s14, s6, s10
    4c04: ee12 3a10    	vmov	r3, s4
    4c08: f023 4300    	bic	r3, r3, #0x80000000
    4c0c: f1b3 4fff    	cmp.w	r3, #0x7f800000
    4c10: db12         	blt	0x4c38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x308> @ imm = #0x24
    4c12: ed9f 6a72    	vldr	s12, [pc, #456]         @ 0x4ddc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4ac>
    4c16: e019         	b	0x4c4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x31c> @ imm = #0x32
    4c18: 00 80 bb 47  	.word	0x47bb8000
    4c1c: 00 24 74 cb  	.word	0xcb742400
    4c20: 00 24 74 4b  	.word	0x4b742400
    4c24: 00 a0 0c 48  	.word	0x480ca000
    4c28: 46 af b3 38  	.word	0x38b3af46
    4c2c: 00 00 00 00  	.word	0x00000000
    4c30: 50 d0 e8 36  	.word	0x36e8d050
    4c34: 79 61 2e 43  	.word	0x432e6179
    4c38: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    4c3c: ed1f 6a05    	vldr	s12, [pc, #-20]         @ 0x4c2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    4c40: ee82 5a05    	vdiv.f32	s10, s4, s10
    4c44: eeb0 5ac5    	vabs.f32	s10, s10
    4c48: fe85 6a06    	vmaxnm.f32	s12, s10, s12
    4c4c: ed92 5b06    	vldr	d5, [r2, #24]
    4c50: ed9d 3a0b    	vldr	s6, [sp, #44]
    4c54: eef6 8a00    	vmov.f32	s17, #5.000000e-01
    4c58: eef7 0bc5    	vcvt.f32.f64	s1, d5
    4c5c: ee61 1aa4    	vmul.f32	s3, s3, s9
    4c60: eddf 2a5f    	vldr	s5, [pc, #380]          @ 0x4de0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b0>
    4c64: eeb0 5a60    	vmov.f32	s10, s1
    4c68: ee03 5a2f    	vmla.f32	s10, s6, s31
    4c6c: ed9f 3a5d    	vldr	s6, [pc, #372]          @ 0x4de4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b4>
    4c70: eecb 5a83    	vdiv.f32	s11, s23, s6
    4c74: ed9f 3a5c    	vldr	s6, [pc, #368]          @ 0x4de8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b8>
    4c78: ee0b 5a83    	vmla.f32	s10, s23, s6
    4c7c: ed9f 3a5b    	vldr	s6, [pc, #364]          @ 0x4dec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4bc>
    4c80: eef0 6ae5    	vabs.f32	s13, s11
    4c84: eef4 6a68    	vcmp.f32	s13, s17
    4c88: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c8c: f280 80b8    	bge.w	0x4e00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4d0> @ imm = #0x170
    4c90: eddf 6a57    	vldr	s13, [pc, #348]         @ 0x4df0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c0>
    4c94: eebe ca00    	vmov.f32	s24, #-5.000000e-01
    4c98: eef4 6a65    	vcmp.f32	s13, s11
    4c9c: eddf 7a55    	vldr	s15, [pc, #340]         @ 0x4df4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    4ca0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ca4: ed9f fa54    	vldr	s30, [pc, #336]         @ 0x4df8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c8>
    4ca8: fe76 4aa5    	vselgt.f32	s9, s13, s11
    4cac: eddf 5a53    	vldr	s11, [pc, #332]         @ 0x4dfc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    4cb0: ee8b fa8f    	vdiv.f32	s30, s23, s30
    4cb4: eef4 4a65    	vcmp.f32	s9, s11
    4cb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cbc: fe75 4aa4    	vselgt.f32	s9, s11, s9
    4cc0: ee24 9aa7    	vmul.f32	s18, s9, s15
    4cc4: ee39 da28    	vadd.f32	s26, s18, s17
    4cc8: eeb5 9a40    	vcmp.f32	s18, #0
    4ccc: ee39 ea0c    	vadd.f32	s28, s18, s24
    4cd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cd4: eebd dacd    	vcvt.s32.f32	s26, s26
    4cd8: eebd eace    	vcvt.s32.f32	s28, s28
    4cdc: eef4 6a4f    	vcmp.f32	s13, s30
    4ce0: ee1d 3a10    	vmov	r3, s26
    4ce4: ee1e 2a10    	vmov	r2, s28
    4ce8: bfa8         	it	ge
    4cea: 461a         	movge	r2, r3
    4cec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cf0: fe76 6a8f    	vselgt.f32	s13, s13, s30
    4cf4: eef4 6a65    	vcmp.f32	s13, s11
    4cf8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cfc: fe75 5aa6    	vselgt.f32	s11, s11, s13
    4d00: ee65 6aa7    	vmul.f32	s13, s11, s15
    4d04: ee76 7a8c    	vadd.f32	s15, s13, s24
    4d08: eef5 6a40    	vcmp.f32	s13, #0
    4d0c: ee36 9aa8    	vadd.f32	s18, s13, s17
    4d10: ee0c 2a10    	vmov	s24, r2
    4d14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d18: eefd 7ae7    	vcvt.s32.f32	s15, s15
    4d1c: eddf 6af2    	vldr	s13, [pc, #968]         @ 0x50e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7b8>
    4d20: eebd 9ac9    	vcvt.s32.f32	s18, s18
    4d24: eeb8 cacc    	vcvt.f32.s32	s24, s24
    4d28: ee17 3a90    	vmov	r3, s15
    4d2c: ee19 6a10    	vmov	r6, s18
    4d30: bfa8         	it	ge
    4d32: 4633         	movge	r3, r6
    4d34: ee4c 4a66    	vmls.f32	s9, s24, s13
    4d38: f04f 567e    	mov.w	r6, #0x3f800000
    4d3c: ee07 3a90    	vmov	s15, r3
    4d40: eb06 52c2    	add.w	r2, r6, r2, lsl #23
    4d44: eb06 53c3    	add.w	r3, r6, r3, lsl #23
    4d48: eef8 7ae7    	vcvt.f32.s32	s15, s15
    4d4c: ee47 5ae6    	vmls.f32	s11, s15, s13
    4d50: eddf 6af2    	vldr	s13, [pc, #968]         @ 0x511c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    4d54: eddf 7af2    	vldr	s15, [pc, #968]         @ 0x5120 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    4d58: eeb0 9a66    	vmov.f32	s18, s13
    4d5c: ee04 9aa7    	vmla.f32	s18, s9, s15
    4d60: ee45 6aa7    	vmla.f32	s13, s11, s15
    4d64: eddf 7aef    	vldr	s15, [pc, #956]         @ 0x5124 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    4d68: eeb0 ca67    	vmov.f32	s24, s15
    4d6c: ee25 daa5    	vmul.f32	s26, s11, s11
    4d70: ee04 ca89    	vmla.f32	s24, s9, s18
    4d74: eeb7 9a00    	vmov.f32	s18, #1.000000e+00
    4d78: ee45 7aa6    	vmla.f32	s15, s11, s13
    4d7c: eef0 6a68    	vmov.f32	s13, s17
    4d80: ee44 6a8c    	vmla.f32	s13, s9, s24
    4d84: eeb0 ca68    	vmov.f32	s24, s17
    4d88: ee05 caa7    	vmla.f32	s24, s11, s15
    4d8c: ee64 7aa4    	vmul.f32	s15, s9, s9
    4d90: ee74 4a89    	vadd.f32	s9, s9, s18
    4d94: ee47 4aa6    	vmla.f32	s9, s15, s13
    4d98: ee07 3a90    	vmov	s15, r3
    4d9c: ee75 6a89    	vadd.f32	s13, s11, s18
    4da0: ee05 2a90    	vmov	s11, r2
    4da4: ee4d 6a0c    	vmla.f32	s13, s26, s24
    4da8: ee64 5aa5    	vmul.f32	s11, s9, s11
    4dac: ee66 4aa7    	vmul.f32	s9, s13, s15
    4db0: e073         	b	0x4e9a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x56a> @ imm = #0xe6
    4db2: bf00         	nop
    4db4: b7 63 f7 b8  	.word	0xb8f763b7
    4db8: 0a d7 23 3d  	.word	0x3d23d70a
    4dbc: 7c f2 b0 3a  	.word	0x3ab0f27c
    4dc0: a6 9b c4 3b  	.word	0x3bc49ba6
    4dc4: a6 9b c4 bb  	.word	0xbbc49ba6
    4dc8: 79 78 b0 43  	.word	0x43b07879
    4dcc: 7c f2 b0 ba  	.word	0xbab0f27c
    4dd0: 53 4a a1 43  	.word	0x43a14a53
    4dd4: 79 61 2e c3  	.word	0xc32e6179
    4dd8: 00 00 00 80  	.word	0x80000000
    4ddc: 00 00 80 7f  	.word	0x7f800000
    4de0: 46 af b3 b8  	.word	0xb8b3af46
    4de4: f5 4a 39 3d  	.word	0x3d394af5
    4de8: 50 69 15 b9  	.word	0xb9156950
    4dec: b7 63 f7 38  	.word	0x38f763b7
    4df0: 00 00 a0 c2  	.word	0xc2a00000
    4df4: 3b aa b8 3f  	.word	0x3fb8aa3b
    4df8: f5 4a 39 bd  	.word	0xbd394af5
    4dfc: 00 00 a0 42  	.word	0x42a00000
    4e00: eef4 6a66    	vcmp.f32	s13, s13
    4e04: ed5f 4a03    	vldr	s9, [pc, #-12]          @ 0x4dfc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    4e08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e0c: eef0 7a68    	vmov.f32	s15, s17
    4e10: ed9f 9ac5    	vldr	s18, [pc, #788]         @ 0x5128 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f8>
    4e14: fe54 6aa6    	vselvs.f32	s13, s9, s13
    4e18: f04f 527e    	mov.w	r2, #0x3f800000
    4e1c: eef4 4a66    	vcmp.f32	s9, s13
    4e20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e24: fe76 6aa4    	vselgt.f32	s13, s13, s9
    4e28: eef4 6a64    	vcmp.f32	s13, s9
    4e2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e30: eef5 5a40    	vcmp.f32	s11, #0
    4e34: fe74 4aa6    	vselgt.f32	s9, s9, s13
    4e38: ed5f 6a12    	vldr	s13, [pc, #-72]         @ 0x4df4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    4e3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e40: ee44 7aa6    	vmla.f32	s15, s9, s13
    4e44: eefd 6ae7    	vcvt.s32.f32	s13, s15
    4e48: eef8 7ae6    	vcvt.f32.s32	s15, s13
    4e4c: ee16 3a90    	vmov	r3, s13
    4e50: ee47 4a89    	vmla.f32	s9, s15, s18
    4e54: eddf 7ab2    	vldr	s15, [pc, #712]         @ 0x5120 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    4e58: ed9f 9ab0    	vldr	s18, [pc, #704]         @ 0x511c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    4e5c: eb02 52c3    	add.w	r2, r2, r3, lsl #23
    4e60: ee06 2a90    	vmov	s13, r2
    4e64: ee04 9aa7    	vmla.f32	s18, s9, s15
    4e68: eddf 7aae    	vldr	s15, [pc, #696]         @ 0x5124 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    4e6c: ee44 7a89    	vmla.f32	s15, s9, s18
    4e70: eeb0 9a68    	vmov.f32	s18, s17
    4e74: ee04 9aa7    	vmla.f32	s18, s9, s15
    4e78: ee64 7aa4    	vmul.f32	s15, s9, s9
    4e7c: ee74 4a8a    	vadd.f32	s9, s9, s20
    4e80: ee47 4a89    	vmla.f32	s9, s15, s18
    4e84: ee64 6aa6    	vmul.f32	s13, s9, s13
    4e88: eeca 4a26    	vdiv.f32	s9, s20, s13
    4e8c: eef0 5a66    	vmov.f32	s11, s13
    4e90: bfbc         	itt	lt
    4e92: eef0 5a64    	vmovlt.f32	s11, s9
    4e96: eef0 4a66    	vmovlt.f32	s9, s13
    4e9a: ee75 6ae4    	vsub.f32	s13, s11, s9
    4e9e: eddf 3ae2    	vldr	s7, [pc, #904]          @ 0x5228 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8f8>
    4ea2: ee27 4a04    	vmul.f32	s8, s14, s8
    4ea6: ed1f ba33    	vldr	s22, [pc, #-204]        @ 0x4ddc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4ac>
    4eaa: ee21 ea83    	vmul.f32	s28, s3, s6
    4eae: ee16 5aa3    	vnmls.f32	s10, s13, s7
    4eb2: eddf 3ade    	vldr	s7, [pc, #888]          @ 0x522c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8fc>
    4eb6: ee21 7aa2    	vmul.f32	s14, s3, s5
    4eba: eddf 2add    	vldr	s5, [pc, #884]          @ 0x5230 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x900>
    4ebe: ee15 2a10    	vmov	r2, s10
    4ec2: f022 4200    	bic	r2, r2, #0x80000000
    4ec6: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4eca: da17         	bge	0x4efc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x5cc> @ imm = #0x2e
    4ecc: eddf 1ad9    	vldr	s3, [pc, #868]          @ 0x5234 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x904>
    4ed0: eeb4 6a46    	vcmp.f32	s12, s12
    4ed4: eec5 1a21    	vdiv.f32	s3, s10, s3
    4ed8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4edc: eef0 1ae1    	vabs.f32	s3, s3
    4ee0: fe11 6a86    	vselvs.f32	s12, s3, s12
    4ee4: eef4 1a61    	vcmp.f32	s3, s3
    4ee8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4eec: fe56 1a21    	vselvs.f32	s3, s12, s3
    4ef0: eeb4 6a61    	vcmp.f32	s12, s3
    4ef4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ef8: fe36 ba21    	vselgt.f32	s22, s12, s3
    4efc: ee04 ea22    	vmla.f32	s28, s8, s5
    4f00: f10d 0844    	add.w	r8, sp, #0x44
    4f04: ee04 7a23    	vmla.f32	s14, s8, s7
    4f08: 6808         	ldr	r0, [r1]
    4f0a: ee75 1aa4    	vadd.f32	s3, s11, s9
    4f0e: 9000         	str	r0, [sp]
    4f10: eeb1 2a42    	vneg.f32	s4, s4
    4f14: f64a 7046    	movw	r0, #0xaf46
    4f18: eeb1 6a45    	vneg.f32	s12, s10
    4f1c: f04f 0c00    	mov.w	r12, #0x0
    4f20: f108 0e14    	add.w	lr, r8, #0x14
    4f24: 2400         	movs	r4, #0x0
    4f26: f6cb 00b3    	movt	r0, #0xb8b3
    4f2a: f04f 567e    	mov.w	r6, #0x3f800000
    4f2e: f04f 0a00    	mov.w	r10, #0x0
    4f32: 46e3         	mov	r11, r12
    4f34: ed9f 8aee    	vldr	s16, [pc, #952]         @ 0x52f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c0>
    4f38: eddf 5aee    	vldr	s11, [pc, #952]         @ 0x52f4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c4>
    4f3c: ed5f cac5    	vldr	s25, [pc, #-788]        @ 0x4c2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    4f40: ed1f ca55    	vldr	s24, [pc, #-340]        @ 0x4df0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c0>
    4f44: ed5f aa53    	vldr	s21, [pc, #-332]        @ 0x4dfc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    4f48: ed5f ea56    	vldr	s29, [pc, #-344]        @ 0x4df4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    4f4c: eddf 4a74    	vldr	s9, [pc, #464]          @ 0x5120 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    4f50: ed9f 5a72    	vldr	s10, [pc, #456]         @ 0x511c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    4f54: ed9f 3a73    	vldr	s6, [pc, #460]          @ 0x5124 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    4f58: ed9f 4ab3    	vldr	s8, [pc, #716]          @ 0x5228 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8f8>
    4f5c: 4643         	mov	r3, r8
    4f5e: ee21 4a84    	vmul.f32	s8, s3, s8
    4f62: ed5f 1a60    	vldr	s3, [pc, #-384]         @ 0x4de4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b4>
    4f66: f1bc 0f10    	cmp.w	r12, #0x10
    4f6a: eddf 2af1    	vldr	s5, [pc, #964]          @ 0x5330 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa00>
    4f6e: ee84 4a21    	vdiv.f32	s8, s8, s3
    4f72: ee7e 1a0a    	vadd.f32	s3, s28, s20
    4f76: edcd 1a11    	vstr	s3, [sp, #68]
    4f7a: ee34 4a08    	vadd.f32	s8, s8, s16
    4f7e: ed8d 4a15    	vstr	s8, [sp, #84]
    4f82: eeb0 4ae1    	vabs.f32	s8, s3
    4f86: bf18         	it	ne
    4f88: f10b 0b01    	addne.w	r11, r11, #0x1
    4f8c: ed8d 7a12    	vstr	s14, [sp, #72]
    4f90: 9413         	str	r4, [sp, #0x4c]
    4f92: eeb4 4a6f    	vcmp.f32	s8, s31
    4f96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4f9a: 9014         	str	r0, [sp, #0x50]
    4f9c: eef4 fa44    	vcmp.f32	s31, s8
    4fa0: bf48         	it	mi
    4fa2: 330c         	addmi	r3, #0xc
    4fa4: 9a0c         	ldr	r2, [sp, #0x30]
    4fa6: f8ce 2000    	str.w	r2, [lr]
    4faa: e9d3 2500    	ldrd	r2, r5, [r3]
    4fae: 6898         	ldr	r0, [r3, #0x8]
    4fb0: 9013         	str	r0, [sp, #0x4c]
    4fb2: f04f 0004    	mov.w	r0, #0x4
    4fb6: e9cd 2511    	strd	r2, r5, [sp, #68]
    4fba: edc3 1a00    	vstr	s3, [r3]
    4fbe: f04f 0208    	mov.w	r2, #0x8
    4fc2: bf48         	it	mi
    4fc4: 2010         	movmi	r0, #0x10
    4fc6: ed9d 4a11    	vldr	s8, [sp, #68]
    4fca: ee14 3a10    	vmov	r3, s8
    4fce: 4440         	add	r0, r8
    4fd0: bf48         	it	mi
    4fd2: 2214         	movmi	r2, #0x14
    4fd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fd8: ed80 7a00    	vstr	s14, [r0]
    4fdc: f023 4000    	bic	r0, r3, #0x80000000
    4fe0: fe76 1a02    	vselgt.f32	s3, s12, s4
    4fe4: fe32 2a06    	vselgt.f32	s4, s4, s12
    4fe8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    4fec: 980d         	ldr	r0, [sp, #0x34]
    4fee: f8ce 0004    	str.w	r0, [lr, #0x4]
    4ff2: 980e         	ldr	r0, [sp, #0x38]
    4ff4: f8ce 0008    	str.w	r0, [lr, #0x8]
    4ff8: 980f         	ldr	r0, [sp, #0x3c]
    4ffa: f8ce 000c    	str.w	r0, [lr, #0xc]
    4ffe: f848 4002    	str.w	r4, [r8, r2]
    5002: f280 8389    	bge.w	0x5718 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x712
    5006: eeb0 6ac4    	vabs.f32	s12, s8
    500a: eeb4 6a62    	vcmp.f32	s12, s5
    500e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5012: f100 8381    	bmi.w	0x5718 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x702
    5016: ed9d 6a14    	vldr	s12, [sp, #80]
    501a: ed9d 7a15    	vldr	s14, [sp, #84]
    501e: eec6 6a04    	vdiv.f32	s13, s12, s8
    5022: ed9d 6a12    	vldr	s12, [sp, #72]
    5026: ee06 7ac6    	vmls.f32	s14, s13, s12
    502a: ee17 3a10    	vmov	r3, s14
    502e: f023 4300    	bic	r3, r3, #0x80000000
    5032: f1b3 4fff    	cmp.w	r3, #0x7f800000
    5036: f280 836f    	bge.w	0x5718 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x6de
    503a: eef0 7ac7    	vabs.f32	s15, s14
    503e: eef4 7a62    	vcmp.f32	s15, s5
    5042: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5046: f100 8367    	bmi.w	0x5718 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x6ce
    504a: ee06 2ae1    	vmls.f32	s4, s13, s3
    504e: eddd 2a0b    	vldr	s5, [sp, #44]
    5052: eef0 6ae2    	vabs.f32	s13, s5
    5056: eef4 6a66    	vcmp.f32	s13, s13
    505a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    505e: ee82 7a07    	vdiv.f32	s14, s4, s14
    5062: fe1a 2a26    	vselvs.f32	s4, s20, s13
    5066: ee46 1a47    	vmls.f32	s3, s12, s14
    506a: ed9f 6ab2    	vldr	s12, [pc, #712]         @ 0x5334 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa04>
    506e: eeb4 2a4a    	vcmp.f32	s4, s20
    5072: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5076: fe32 2a0a    	vselgt.f32	s4, s4, s20
    507a: eec1 1a84    	vdiv.f32	s3, s3, s8
    507e: ee22 2a06    	vmul.f32	s4, s4, s12
    5082: eef0 2ae1    	vabs.f32	s5, s3
    5086: fe82 2a65    	vminnm.f32	s4, s4, s11
    508a: eef4 2a42    	vcmp.f32	s5, s4
    508e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5092: d818         	bhi	0x50c6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x796> @ imm = #0x30
    5094: eeb0 2aeb    	vabs.f32	s4, s23
    5098: eeb0 4ac7    	vabs.f32	s8, s14
    509c: eeb4 2a42    	vcmp.f32	s4, s4
    50a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    50a4: fe1a 2a02    	vselvs.f32	s4, s20, s4
    50a8: eeb4 2a4a    	vcmp.f32	s4, s20
    50ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    50b0: fe32 2a0a    	vselgt.f32	s4, s4, s20
    50b4: ee22 2a06    	vmul.f32	s4, s4, s12
    50b8: fe82 2a65    	vminnm.f32	s4, s4, s11
    50bc: eeb4 4a42    	vcmp.f32	s8, s4
    50c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    50c4: d914         	bls	0x50f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7c0> @ imm = #0x28
    50c6: 2300         	movs	r3, #0x0
    50c8: ed9f 2a9b    	vldr	s4, [pc, #620]          @ 0x5338 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa08>
    50cc: eeb4 ba42    	vcmp.f32	s22, s4
    50d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    50d4: d814         	bhi	0x5100 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7d0> @ imm = #0x28
    50d6: f1ac 0010    	sub.w	r0, r12, #0x10
    50da: fab0 f080    	clz	r0, r0
    50de: 0940         	lsrs	r0, r0, #0x5
    50e0: 4318         	orrs	r0, r3
    50e2: d011         	beq	0x5108 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7d8> @ imm = #0x22
    50e4: e305         	b	0x56f2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdc2> @ imm = #0x60a
    50e6: bf00         	nop
    50e8: 18 72 31 3f  	.word	0x3f317218
    50ec: 00 bf 00 bf  	.word	0xbf00bf00
    50f0: 2301         	movs	r3, #0x1
    50f2: ed9f 2a91    	vldr	s4, [pc, #580]          @ 0x5338 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa08>
    50f6: eeb4 ba42    	vcmp.f32	s22, s4
    50fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    50fe: d9ea         	bls	0x50d6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7a6> @ imm = #-0x2c
    5100: f1bc 0f10    	cmp.w	r12, #0x10
    5104: f000 8310    	beq.w	0x5728 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdf8> @ imm = #0x620
    5108: 4645         	mov	r5, r8
    510a: 2400         	movs	r4, #0x0
    510c: f04f 597e    	mov.w	r9, #0x3f800000
    5110: edcd 2a04    	vstr	s5, [sp, #16]
    5114: edcd 9a05    	vstr	s19, [sp, #20]
    5118: e012         	b	0x5140 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x810> @ imm = #0x24
    511a: bf00         	nop
    511c: ab aa 2a 3d  	.word	0x3d2aaaab
    5120: 89 88 08 3c  	.word	0x3c088889
    5124: ab aa 2a 3e  	.word	0x3e2aaaab
    5128: 18 72 31 bf  	.word	0xbf317218
    512c: 00 bf 00 bf  	.word	0xbf00bf00
    5130: eef0 ba48    	vmov.f32	s23, s16
    5134: f5a9 0900    	sub.w	r9, r9, #0x800000
    5138: f1b9 5f66    	cmp.w	r9, #0x39800000
    513c: f000 82b4    	beq.w	0x56a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd78> @ imm = #0x568
    5140: ee02 9a10    	vmov	s4, r9
    5144: eddd 7a0b    	vldr	s15, [sp, #44]
    5148: eeb0 9a6b    	vmov.f32	s18, s23
    514c: eeb0 4a6f    	vmov.f32	s8, s31
    5150: ed9f fb7b    	vldr	d15, [pc, #492]         @ 0x5340 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa10>
    5154: ee41 7a82    	vmla.f32	s15, s3, s4
    5158: eeb0 8a6b    	vmov.f32	s16, s23
    515c: ee07 9a02    	vmla.f32	s18, s14, s4
    5160: eef0 ba6c    	vmov.f32	s23, s25
    5164: ed9d db08    	vldr	d13, [sp, #32]
    5168: eeb0 ea6c    	vmov.f32	s28, s25
    516c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
    5170: eeb7 2ac9    	vcvt.f64.f32	d2, s18
    5174: ee06 db0f    	vmla.f64	d13, d6, d15
    5178: eef0 fa44    	vmov.f32	s31, s8
    517c: ed9f 4ada    	vldr	s8, [pc, #872]          @ 0x54e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbb8>
    5180: ed9f 6bdb    	vldr	d6, [pc, #876]          @ 0x54f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbc0>
    5184: ee02 db06    	vmla.f64	d13, d2, d6
    5188: ed9d 6a07    	vldr	s12, [sp, #28]
    518c: eeb7 2bcd    	vcvt.f32.f64	s4, d13
    5190: eeb0 da6c    	vmov.f32	s26, s25
    5194: ee02 6a04    	vmla.f32	s12, s4, s8
    5198: ed9f 4a57    	vldr	s8, [pc, #348]          @ 0x52f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c8>
    519c: ed9d 2a06    	vldr	s4, [sp, #24]
    51a0: ee07 2a84    	vmla.f32	s4, s15, s8
    51a4: ee09 2a2f    	vmla.f32	s4, s18, s31
    51a8: eeb4 0a46    	vcmp.f32	s0, s12
    51ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51b0: fe30 4a06    	vselgt.f32	s8, s0, s12
    51b4: eef0 6ac2    	vabs.f32	s13, s4
    51b8: eeb4 4a41    	vcmp.f32	s8, s2
    51bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51c0: eeb5 2a40    	vcmp.f32	s4, #0
    51c4: eeb0 2a6c    	vmov.f32	s4, s25
    51c8: fe71 9a04    	vselgt.f32	s19, s2, s8
    51cc: eebf 4a00    	vmov.f32	s8, #-1.000000e+00
    51d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51d4: bf48         	it	mi
    51d6: eeb0 2a44    	vmovmi.f32	s4, s8
    51da: fe3a 4a02    	vselgt.f32	s8, s20, s4
    51de: ed9f 2a47    	vldr	s4, [pc, #284]          @ 0x52fc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9cc>
    51e2: eef4 6a42    	vcmp.f32	s13, s4
    51e6: eeb0 2a6c    	vmov.f32	s4, s25
    51ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51ee: f280 80d7    	bge.w	0x53a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0x1ae
    51f2: ed9f 2a43    	vldr	s4, [pc, #268]          @ 0x5300 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d0>
    51f6: eeb0 da6c    	vmov.f32	s26, s25
    51fa: eef4 6a42    	vcmp.f32	s13, s4
    51fe: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    5202: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5206: d923         	bls	0x5250 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x920> @ imm = #0x46
    5208: ed9f 2a3e    	vldr	s4, [pc, #248]          @ 0x5304 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d4>
    520c: eef4 6a42    	vcmp.f32	s13, s4
    5210: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5214: d910         	bls	0x5238 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x908> @ imm = #0x20
    5216: ed9f 2a3c    	vldr	s4, [pc, #240]          @ 0x5308 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d8>
    521a: ee76 2a82    	vadd.f32	s5, s13, s4
    521e: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    5222: eddf 3a3a    	vldr	s7, [pc, #232]          @ 0x530c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9dc>
    5226: e00f         	b	0x5248 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x918> @ imm = #0x1e
    5228: 77 cc 2b 31  	.word	0x312bcc77
    522c: c5 9f 13 3f  	.word	0x3f139fc5
    5230: bb bc 42 bf  	.word	0xbf42bcbb
    5234: 0a d7 23 3c  	.word	0x3c23d70a
    5238: ed9f 2a35    	vldr	s4, [pc, #212]          @ 0x5310 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e0>
    523c: ee76 2a82    	vadd.f32	s5, s13, s4
    5240: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    5244: eddf 3a33    	vldr	s7, [pc, #204]          @ 0x5314 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e4>
    5248: ee02 2aa3    	vmla.f32	s4, s5, s7
    524c: ee24 da23    	vmul.f32	s26, s8, s7
    5250: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    5254: eef1 ba4d    	vneg.f32	s23, s26
    5258: ee34 2a42    	vsub.f32	s4, s8, s4
    525c: fe82 4a2c    	vmaxnm.f32	s8, s4, s25
    5260: eeb5 4a40    	vcmp.f32	s8, #0
    5264: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5268: d95a         	bls	0x5320 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9f0> @ imm = #0xb4
    526a: eeb0 2ae9    	vabs.f32	s4, s19
    526e: eeb4 2a44    	vcmp.f32	s4, s8
    5272: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5276: d967         	bls	0x5348 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa18> @ imm = #0xce
    5278: eec4 6a02    	vdiv.f32	s13, s8, s4
    527c: eeb0 da4a    	vmov.f32	s26, s20
    5280: ee26 2aa6    	vmul.f32	s4, s13, s13
    5284: ee22 2a02    	vmul.f32	s4, s4, s4
    5288: ee22 2a02    	vmul.f32	s4, s4, s4
    528c: ee22 ea02    	vmul.f32	s28, s4, s4
    5290: ee3e 2a0a    	vadd.f32	s4, s28, s20
    5294: eeb4 2a4a    	vcmp.f32	s4, s20
    5298: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    529c: d009         	beq	0x52b2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x982> @ imm = #0x12
    529e: eeb0 da42    	vmov.f32	s26, s4
    52a2: eeb1 dacd    	vsqrt.f32	s26, s26
    52a6: eeb1 dacd    	vsqrt.f32	s26, s26
    52aa: eeb1 dacd    	vsqrt.f32	s26, s26
    52ae: eeb1 dacd    	vsqrt.f32	s26, s26
    52b2: eeca da0d    	vdiv.f32	s27, s20, s26
    52b6: ed9f da18    	vldr	s26, [pc, #96]          @ 0x5318 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e8>
    52ba: eef4 9a69    	vcmp.f32	s19, s19
    52be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    52c2: ee8d fa82    	vdiv.f32	s30, s27, s4
    52c6: eeb0 2a4d    	vmov.f32	s4, s26
    52ca: bf7f         	itttt	vc
    52cc: ee19 0a90    	vmovvc	r0, s19
    52d0: f366 001e    	bfivc	r0, r6, #0, #31
    52d4: ee02 0a10    	vmovvc	s4, r0
    52d8: ee22 4a04    	vmulvc.f32	s8, s4, s8
    52dc: bf7c         	itt	vc
    52de: ee24 da2d    	vmulvc.f32	s26, s8, s27
    52e2: ee22 2a0f    	vmulvc.f32	s4, s4, s30
    52e6: ee26 4a8e    	vmul.f32	s8, s13, s28
    52ea: ee24 ea0f    	vmul.f32	s28, s8, s30
    52ee: e057         	b	0x53a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0xae
    52f0: 50 69 15 39  	.word	0x39156950
    52f4: ac c5 a7 37  	.word	0x37a7c5ac
    52f8: b7 63 f7 b8  	.word	0xb8f763b7
    52fc: 0a d7 23 3d  	.word	0x3d23d70a
    5300: 7c f2 b0 3a  	.word	0x3ab0f27c
    5304: a6 9b c4 3b  	.word	0x3bc49ba6
    5308: a6 9b c4 bb  	.word	0xbbc49ba6
    530c: 79 78 b0 43  	.word	0x43b07879
    5310: 7c f2 b0 ba  	.word	0xbab0f27c
    5314: 53 4a a1 43  	.word	0x43a14a53
    5318: 00 00 c0 7f  	.word	0x7fc00000
    531c: 00 bf 00 bf  	.word	0xbf00bf00
    5320: eeb0 da6c    	vmov.f32	s26, s25
    5324: eeb0 ea6c    	vmov.f32	s28, s25
    5328: eeb0 2a6c    	vmov.f32	s4, s25
    532c: e038         	b	0x53a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0x70
    532e: bf00         	nop
    5330: 08 e5 3c 1e  	.word	0x1e3ce508
    5334: bd 37 06 36  	.word	0x360637bd
    5338: 17 b7 d1 38  	.word	0x38d1b717
    533c: 00 bf 00 bf  	.word	0xbf00bf00
    5340: 9c 9e 91 65  	.word	0x65919e9c
    5344: 97 57 e8 bf  	.word	0xbfe85797
    5348: ee89 2a84    	vdiv.f32	s4, s19, s8
    534c: eeb0 da4a    	vmov.f32	s26, s20
    5350: ee22 2a02    	vmul.f32	s4, s4, s4
    5354: ee22 2a02    	vmul.f32	s4, s4, s4
    5358: ee22 2a02    	vmul.f32	s4, s4, s4
    535c: ee22 2a02    	vmul.f32	s4, s4, s4
    5360: ee72 6a0a    	vadd.f32	s13, s4, s20
    5364: eef4 6a4a    	vcmp.f32	s13, s20
    5368: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    536c: d009         	beq	0x5382 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa52> @ imm = #0x12
    536e: eeb0 da66    	vmov.f32	s26, s13
    5372: eeb1 dacd    	vsqrt.f32	s26, s26
    5376: eeb1 dacd    	vsqrt.f32	s26, s26
    537a: eeb1 dacd    	vsqrt.f32	s26, s26
    537e: eeb1 dacd    	vsqrt.f32	s26, s26
    5382: eeca 2a0d    	vdiv.f32	s5, s20, s26
    5386: ee29 2a82    	vmul.f32	s4, s19, s4
    538a: ee82 eaa6    	vdiv.f32	s28, s5, s13
    538e: ee82 2a04    	vdiv.f32	s4, s4, s8
    5392: ee29 daa2    	vmul.f32	s26, s19, s5
    5396: ee22 2a0e    	vmul.f32	s4, s4, s28
    539a: bf00         	nop
    539c: bf00         	nop
    539e: bf00         	nop
    53a0: ee77 6acd    	vsub.f32	s13, s15, s26
    53a4: eddf daf1    	vldr	s27, [pc, #964]         @ 0x576c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe3c>
    53a8: ee16 0a90    	vmov	r0, s13
    53ac: f020 4000    	bic	r0, r0, #0x80000000
    53b0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    53b4: da07         	bge	0x53c6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa96> @ imm = #0xe
    53b6: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    53ba: ee86 4a84    	vdiv.f32	s8, s13, s8
    53be: eeb0 4ac4    	vabs.f32	s8, s8
    53c2: fec4 da2c    	vmaxnm.f32	s27, s8, s25
    53c6: ed9f 4aeb    	vldr	s8, [pc, #940]          @ 0x5774 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe44>
    53ca: ee89 da04    	vdiv.f32	s26, s18, s8
    53ce: eeb0 4acd    	vabs.f32	s8, s26
    53d2: eeb4 4a68    	vcmp.f32	s8, s17
    53d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53da: f280 808d    	bge.w	0x54f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbc8> @ imm = #0x11a
    53de: eeb4 ca4d    	vcmp.f32	s24, s26
    53e2: eebe fa00    	vmov.f32	s30, #-5.000000e-01
    53e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53ea: fe3c 4a0d    	vselgt.f32	s8, s24, s26
    53ee: ed9f dae3    	vldr	s26, [pc, #908]         @ 0x577c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe4c>
    53f2: ee89 da0d    	vdiv.f32	s26, s18, s26
    53f6: eeb4 4a6a    	vcmp.f32	s8, s21
    53fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53fe: fe3a 4a84    	vselgt.f32	s8, s21, s8
    5402: ee64 2a2e    	vmul.f32	s5, s8, s29
    5406: ee72 3aa8    	vadd.f32	s7, s5, s17
    540a: eef5 2a40    	vcmp.f32	s5, #0
    540e: ee72 5a8f    	vadd.f32	s11, s5, s30
    5412: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5416: eefd 3ae3    	vcvt.s32.f32	s7, s7
    541a: eefd 5ae5    	vcvt.s32.f32	s11, s11
    541e: eeb4 ca4d    	vcmp.f32	s24, s26
    5422: ee13 0a90    	vmov	r0, s7
    5426: ee15 8a90    	vmov	r8, s11
    542a: bfa8         	it	ge
    542c: 4680         	movge	r8, r0
    542e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5432: fe7c 2a0d    	vselgt.f32	s5, s24, s26
    5436: eef4 2a6a    	vcmp.f32	s5, s21
    543a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    543e: fe7a 2aa2    	vselgt.f32	s5, s21, s5
    5442: ee62 3aae    	vmul.f32	s7, s5, s29
    5446: ee73 5a8f    	vadd.f32	s11, s7, s30
    544a: eef5 3a40    	vcmp.f32	s7, #0
    544e: ee33 daa8    	vadd.f32	s26, s7, s17
    5452: ee03 8a90    	vmov	s7, r8
    5456: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    545a: eefd 5ae5    	vcvt.s32.f32	s11, s11
    545e: eef8 3ae3    	vcvt.f32.s32	s7, s7
    5462: ee15 3a90    	vmov	r3, s11
    5466: eefd 5acd    	vcvt.s32.f32	s11, s26
    546a: ed9f dac5    	vldr	s26, [pc, #788]         @ 0x5780 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe50>
    546e: ee03 4acd    	vmls.f32	s8, s7, s26
    5472: eef0 3a45    	vmov.f32	s7, s10
    5476: ee15 0a90    	vmov	r0, s11
    547a: bfa8         	it	ge
    547c: 4603         	movge	r3, r0
    547e: eb06 50c8    	add.w	r0, r6, r8, lsl #23
    5482: ee05 3a90    	vmov	s11, r3
    5486: eb06 52c3    	add.w	r2, r6, r3, lsl #23
    548a: ee44 3a24    	vmla.f32	s7, s8, s9
    548e: eef8 5ae5    	vcvt.f32.s32	s11, s11
    5492: ee45 2acd    	vmls.f32	s5, s11, s26
    5496: eef0 5a45    	vmov.f32	s11, s10
    549a: eeb0 da43    	vmov.f32	s26, s6
    549e: ee04 da23    	vmla.f32	s26, s8, s7
    54a2: eef0 3a43    	vmov.f32	s7, s6
    54a6: ee42 5aa4    	vmla.f32	s11, s5, s9
    54aa: ee22 faa2    	vmul.f32	s30, s5, s5
    54ae: ee42 3aa5    	vmla.f32	s7, s5, s11
    54b2: eef0 5a68    	vmov.f32	s11, s17
    54b6: ee44 5a0d    	vmla.f32	s11, s8, s26
    54ba: eeb0 da68    	vmov.f32	s26, s17
    54be: ee02 daa3    	vmla.f32	s26, s5, s7
    54c2: ee64 3a04    	vmul.f32	s7, s8, s8
    54c6: ee34 4a0a    	vadd.f32	s8, s8, s20
    54ca: ee72 2a8a    	vadd.f32	s5, s5, s20
    54ce: ee03 4aa5    	vmla.f32	s8, s7, s11
    54d2: ee03 0a90    	vmov	s7, r0
    54d6: ee05 2a90    	vmov	s11, r2
    54da: ee4f 2a0d    	vmla.f32	s5, s30, s26
    54de: ee24 fa23    	vmul.f32	s30, s8, s7
    54e2: ee22 4aa5    	vmul.f32	s8, s5, s11
    54e6: e04c         	b	0x5582 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xc52> @ imm = #0x98
    54e8: 79 61 2e 43  	.word	0x432e6179
    54ec: 00 bf 00 bf  	.word	0xbf00bf00
    54f0: 76 43 71 a5  	.word	0xa5714376
    54f4: f8 73 e2 3f  	.word	0x3fe273f8
    54f8: eeb4 4a44    	vcmp.f32	s8, s8
    54fc: eef0 2a68    	vmov.f32	s5, s17
    5500: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5504: eddf 3a9c    	vldr	s7, [pc, #624]          @ 0x5778 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe48>
    5508: eef0 5a43    	vmov.f32	s11, s6
    550c: fe1a 4a84    	vselvs.f32	s8, s21, s8
    5510: eef4 aa44    	vcmp.f32	s21, s8
    5514: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5518: fe34 4a2a    	vselgt.f32	s8, s8, s21
    551c: eeb4 4a6a    	vcmp.f32	s8, s21
    5520: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5524: eeb5 da40    	vcmp.f32	s26, #0
    5528: fe3a 4a84    	vselgt.f32	s8, s21, s8
    552c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5530: ee44 2a2e    	vmla.f32	s5, s8, s29
    5534: eefd 2ae2    	vcvt.s32.f32	s5, s5
    5538: eeb8 fae2    	vcvt.f32.s32	s30, s5
    553c: ee12 0a90    	vmov	r0, s5
    5540: ee0f 4a23    	vmla.f32	s8, s30, s7
    5544: eeb0 fa45    	vmov.f32	s30, s10
    5548: eef0 3a68    	vmov.f32	s7, s17
    554c: eb06 50c0    	add.w	r0, r6, r0, lsl #23
    5550: ee02 0a90    	vmov	s5, r0
    5554: ee04 fa24    	vmla.f32	s30, s8, s9
    5558: ee44 5a0f    	vmla.f32	s11, s8, s30
    555c: ee44 3a25    	vmla.f32	s7, s8, s11
    5560: ee64 5a04    	vmul.f32	s11, s8, s8
    5564: ee34 4a0a    	vadd.f32	s8, s8, s20
    5568: ee05 4aa3    	vmla.f32	s8, s11, s7
    556c: ee64 2a22    	vmul.f32	s5, s8, s5
    5570: ee8a 4a22    	vdiv.f32	s8, s20, s5
    5574: eeb0 fa62    	vmov.f32	s30, s5
    5578: bfbc         	itt	lt
    557a: eeb0 fa44    	vmovlt.f32	s30, s8
    557e: eeb0 4a62    	vmovlt.f32	s8, s5
    5582: eeb0 da60    	vmov.f32	s26, s1
    5586: ee07 daaf    	vmla.f32	s26, s15, s31
    558a: eddf 2a79    	vldr	s5, [pc, #484]          @ 0x5770 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe40>
    558e: eddf 3a7d    	vldr	s7, [pc, #500]          @ 0x5784 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe54>
    5592: ee09 da22    	vmla.f32	s26, s18, s5
    5596: ee7f 2a44    	vsub.f32	s5, s30, s8
    559a: ee12 daa3    	vnmls.f32	s26, s5, s7
    559e: ee1d 0a10    	vmov	r0, s26
    55a2: f020 4000    	bic	r0, r0, #0x80000000
    55a6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    55aa: f6bf adc1    	bge.w	0x5130 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x800> @ imm = #-0x47e
    55ae: eddf 2a76    	vldr	s5, [pc, #472]          @ 0x5788 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe58>
    55b2: eef4 da6d    	vcmp.f32	s27, s27
    55b6: eecd 2a22    	vdiv.f32	s5, s26, s5
    55ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55be: eef0 2ae2    	vabs.f32	s5, s5
    55c2: fe52 3aad    	vselvs.f32	s7, s5, s27
    55c6: eef4 2a62    	vcmp.f32	s5, s5
    55ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55ce: fe53 2aa2    	vselvs.f32	s5, s7, s5
    55d2: eef4 3a62    	vcmp.f32	s7, s5
    55d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55da: fe73 daa2    	vselgt.f32	s27, s7, s5
    55de: eef4 da4b    	vcmp.f32	s27, s22
    55e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55e6: f57f ada3    	bpl.w	0x5130 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x800> @ imm = #-0x4ba
    55ea: a06b         	adr	r0, #428 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd29>
    55ec: eeb4 6a41    	vcmp.f32	s12, s2
    55f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55f4: bf48         	it	mi
    55f6: 3004         	addmi	r0, #0x4
    55f8: eeb4 6a40    	vcmp.f32	s12, s0
    55fc: ed9d 6a01    	vldr	s12, [sp, #4]
    5600: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5604: ed81 6a01    	vstr	s12, [r1, #4]
    5608: ed90 6a00    	vldr	s12, [r0]
    560c: ed9f 7a52    	vldr	s14, [pc, #328]         @ 0x5758 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe28>
    5610: f64a 7046    	movw	r0, #0xaf46
    5614: fe36 6a07    	vselgt.f32	s12, s12, s14
    5618: f1bc 0f10    	cmp.w	r12, #0x10
    561c: ed9f 7a4f    	vldr	s14, [pc, #316]         @ 0x575c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe2c>
    5620: f6cb 00b3    	movt	r0, #0xb8b3
    5624: eddf 1a4f    	vldr	s3, [pc, #316]          @ 0x5764 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe34>
    5628: 9a00         	ldr	r2, [sp]
    562a: eddf 2a4d    	vldr	s5, [pc, #308]          @ 0x5760 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe30>
    562e: 600a         	str	r2, [r1]
    5630: eddf 3a4d    	vldr	s7, [pc, #308]          @ 0x5768 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe38>
    5634: edc1 7a02    	vstr	s15, [r1, #8]
    5638: eddf 5a55    	vldr	s11, [pc, #340]         @ 0x5790 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe60>
    563c: ed81 9a03    	vstr	s18, [r1, #12]
    5640: ed9f 8a52    	vldr	s16, [pc, #328]         @ 0x578c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe5c>
    5644: 9410         	str	r4, [sp, #0x40]
    5646: e9cd 440c    	strd	r4, r4, [sp, #48]
    564a: e9cd 440e    	strd	r4, r4, [sp, #56]
    564e: d01f         	beq	0x5690 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd60> @ imm = #0x3e
    5650: ee2b 2a82    	vmul.f32	s4, s23, s4
    5654: eef0 ba49    	vmov.f32	s23, s18
    5658: ee26 6a0e    	vmul.f32	s12, s12, s28
    565c: eeb0 ba6d    	vmov.f32	s22, s27
    5660: 46a8         	mov	r8, r5
    5662: f1bb 0f10    	cmp.w	r11, #0x10
    5666: ee22 ea07    	vmul.f32	s28, s4, s14
    566a: f10a 0a01    	add.w	r10, r10, #0x1
    566e: ee06 ea22    	vmla.f32	s28, s12, s5
    5672: 46dc         	mov	r12, r11
    5674: ee22 7a21    	vmul.f32	s14, s4, s3
    5678: edcd 7a0b    	vstr	s15, [sp, #44]
    567c: ee06 7a23    	vmla.f32	s14, s12, s7
    5680: ee7f 1a04    	vadd.f32	s3, s30, s8
    5684: eeb1 2a66    	vneg.f32	s4, s13
    5688: eeb1 6a4d    	vneg.f32	s12, s26
    568c: f77f ac64    	ble.w	0x4f58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x628> @ imm = #-0x738
    5690: f64d 0046    	movw	r0, #0xd846
    5694: f64d 4230    	movw	r2, #0xdc30
    5698: f2c0 0000    	movt	r0, #0x0
    569c: f2c0 0200    	movt	r2, #0x0
    56a0: 2128         	movs	r1, #0x28
    56a2: f006 fa8d    	bl	0xbbc0 <core::panicking::panic> @ imm = #0x651a
    56a6: bf00         	nop
    56a8: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x5794 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe64>
    56ac: 2000         	movs	r0, #0x0
    56ae: eeb4 ba40    	vcmp.f32	s22, s0
    56b2: ed9f 1a37    	vldr	s2, [pc, #220]          @ 0x5790 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe60>
    56b6: ed9d 0a04    	vldr	s0, [sp, #16]
    56ba: 2200         	movs	r2, #0x0
    56bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56c0: eeb4 0a41    	vcmp.f32	s0, s2
    56c4: f04f 0100    	mov.w	r1, #0x0
    56c8: eeb0 0ac7    	vabs.f32	s0, s14
    56cc: f10a 0a01    	add.w	r10, r10, #0x1
    56d0: bf98         	it	ls
    56d2: 2001         	movls	r0, #0x1
    56d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56d8: bf98         	it	ls
    56da: 2201         	movls	r2, #0x1
    56dc: eeb4 0a41    	vcmp.f32	s0, s2
    56e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56e4: bf98         	it	ls
    56e6: 2101         	movls	r1, #0x1
    56e8: 4010         	ands	r0, r2
    56ea: eddd 9a05    	vldr	s19, [sp, #20]
    56ee: ea00 0301    	and.w	r3, r0, r1
    56f2: 9802         	ldr	r0, [sp, #0x8]
    56f4: edc0 9a01    	vstr	s19, [r0, #4]
    56f8: 9803         	ldr	r0, [sp, #0xc]
    56fa: ed80 ba00    	vstr	s22, [r0]
    56fe: f880 a004    	strb.w	r10, [r0, #0x4]
    5702: 7143         	strb	r3, [r0, #0x5]
    5704: b01a         	add	sp, #0x68
    5706: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    570a: b001         	add	sp, #0x4
    570c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    5710: bdf0         	pop	{r4, r5, r6, r7, pc}
    5712: bf00         	nop
    5714: bf00         	nop
    5716: bf00         	nop
    5718: 9903         	ldr	r1, [sp, #0xc]
    571a: 2000         	movs	r0, #0x0
    571c: ed81 ba00    	vstr	s22, [r1]
    5720: f881 a004    	strb.w	r10, [r1, #0x4]
    5724: 7148         	strb	r0, [r1, #0x5]
    5726: e7ed         	b	0x5704 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdd4> @ imm = #-0x26
    5728: 2300         	movs	r3, #0x0
    572a: e7e2         	b	0x56f2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdc2> @ imm = #-0x3c
    572c: bf00         	nop
    572e: bf00         	nop
    5730: f24d 70b0    	movw	r0, #0xd7b0
    5734: f24e 0200    	movw	r2, #0xe000
    5738: f2c0 0000    	movt	r0, #0x0
    573c: f2c0 0200    	movt	r2, #0x0
    5740: a911         	add	r1, sp, #0x44
    5742: f006 fa39    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #0x6472
    5746: bf00         	nop
    5748: eddf 4a02    	vldr	s9, [pc, #8]            @ 0x5754 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe24>
    574c: eeb0 2a64    	vmov.f32	s4, s9
    5750: f7ff ba09    	b.w	0x4b66 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x236> @ imm = #-0xbee
    5754: 00 00 c0 7f  	.word	0x7fc00000
    5758: 00 00 00 80  	.word	0x80000000
    575c: b7 63 f7 38  	.word	0x38f763b7
    5760: bb bc 42 bf  	.word	0xbf42bcbb
    5764: 46 af b3 b8  	.word	0xb8b3af46
    5768: c5 9f 13 3f  	.word	0x3f139fc5
    576c: 00 00 80 7f  	.word	0x7f800000
    5770: 50 69 15 b9  	.word	0xb9156950
    5774: f5 4a 39 3d  	.word	0x3d394af5
    5778: 18 72 31 bf  	.word	0xbf317218
    577c: f5 4a 39 bd  	.word	0xbd394af5
    5780: 18 72 31 3f  	.word	0x3f317218
    5784: 77 cc 2b 31  	.word	0x312bcc77
    5788: 0a d7 23 3c  	.word	0x3c23d70a
    578c: 50 69 15 39  	.word	0x39156950
    5790: ac c5 a7 37  	.word	0x37a7c5ac
    5794: 17 b7 d1 38  	.word	0x38d1b717
    5798: 00 00 00 80  	.word	0x80000000
    579c: 79 61 2e c3  	.word	0xc32e6179

000057a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>>:
    57a0: b5f0         	push	{r4, r5, r6, r7, lr}
    57a2: af03         	add	r7, sp, #0xc
    57a4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    57a8: b081         	sub	sp, #0x4
    57aa: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    57ae: b0ae         	sub	sp, #0xb8
    57b0: ed9f 2ab1    	vldr	s4, [pc, #708]          @ 0x5a78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2d8>
    57b4: ee20 3a02    	vmul.f32	s6, s0, s4
    57b8: ed9f 4ab0    	vldr	s8, [pc, #704]          @ 0x5a7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2dc>
    57bc: eddf 3ab0    	vldr	s7, [pc, #704]          @ 0x5a80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e0>
    57c0: ed9f 5ab0    	vldr	s10, [pc, #704]         @ 0x5a84 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e4>
    57c4: ee33 0a04    	vadd.f32	s0, s6, s8
    57c8: ee33 1a23    	vadd.f32	s2, s6, s7
    57cc: eec0 fa05    	vdiv.f32	s31, s0, s10
    57d0: ee81 ea05    	vdiv.f32	s28, s2, s10
    57d4: eef4 fa4e    	vcmp.f32	s31, s28
    57d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    57dc: f201 81c8    	bhi.w	0x6b70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13d0> @ imm = #0x1390
    57e0: ed91 6a02    	vldr	s12, [r1, #8]
    57e4: ed8d 6a03    	vstr	s12, [sp, #12]
    57e8: eeb7 6ac6    	vcvt.f64.f32	d6, s12
    57ec: edd1 1a03    	vldr	s3, [r1, #12]
    57f0: ed9f 7ba5    	vldr	d7, [pc, #660]          @ 0x5a88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e8>
    57f4: edd1 2a04    	vldr	s5, [r1, #16]
    57f8: eddf ba7c    	vldr	s23, [pc, #496]         @ 0x59ec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x24c>
    57fc: ed92 8b14    	vldr	d8, [r2, #80]
    5800: eeb7 9ae2    	vcvt.f64.f32	d9, s5
    5804: edcd 1a02    	vstr	s3, [sp, #8]
    5808: ee06 8b07    	vmla.f64	d8, d6, d7
    580c: 2500         	movs	r5, #0x0
    580e: eeb7 6ae1    	vcvt.f64.f32	d6, s3
    5812: eddf 1a77    	vldr	s3, [pc, #476]          @ 0x59f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x250>
    5816: ed9f 7b9e    	vldr	d7, [pc, #632]          @ 0x5a90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2f0>
    581a: edd1 4a05    	vldr	s9, [r1, #20]
    581e: edcd 2a1a    	vstr	s5, [sp, #104]
    5822: ee06 8b07    	vmla.f64	d8, d6, d7
    5826: 2600         	movs	r6, #0x0
    5828: edcd 4a1c    	vstr	s9, [sp, #112]
    582c: eebf ba00    	vmov.f32	s22, #-1.000000e+00
    5830: ed9f 7b99    	vldr	d7, [pc, #612]          @ 0x5a98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2f8>
    5834: eeb0 6b48    	vmov.f64	d6, d8
    5838: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    583c: ed9f caea    	vldr	s24, [pc, #936]         @ 0x5be8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x448>
    5840: ee09 6b07    	vmla.f64	d6, d9, d7
    5844: ed8d 8b14    	vstr	d8, [sp, #80]
    5848: ed9f 8a6a    	vldr	s16, [pc, #424]         @ 0x59f4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x254>
    584c: ee23 7a08    	vmul.f32	s14, s6, s16
    5850: eeb7 3bc6    	vcvt.f32.f64	s6, d6
    5854: ed8d 7a13    	vstr	s14, [sp, #76]
    5858: eeb0 6a47    	vmov.f32	s12, s14
    585c: ee03 6a2b    	vmla.f32	s12, s6, s23
    5860: ed92 7b08    	vldr	d7, [r2, #32]
    5864: eeb7 7bc7    	vcvt.f32.f64	s14, d7
    5868: ed8d 7a12    	vstr	s14, [sp, #72]
    586c: ee02 7aa1    	vmla.f32	s14, s5, s3
    5870: eddf 1ae4    	vldr	s3, [pc, #912]          @ 0x5c04 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x464>
    5874: eef4 fa46    	vcmp.f32	s31, s12
    5878: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    587c: ee04 7aa1    	vmla.f32	s14, s9, s3
    5880: fe3f 3a86    	vselgt.f32	s6, s31, s12
    5884: eeb4 3a4e    	vcmp.f32	s6, s28
    5888: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    588c: eeb4 6a6f    	vcmp.f32	s12, s31
    5890: fe3e da03    	vselgt.f32	s26, s28, s6
    5894: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5898: bfc8         	it	gt
    589a: 2501         	movgt	r5, #0x1
    589c: eeb4 6a4e    	vcmp.f32	s12, s28
    58a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58a4: eef0 1ac7    	vabs.f32	s3, s14
    58a8: eeb5 7a40    	vcmp.f32	s14, #0
    58ac: ed9f 7ad6    	vldr	s14, [pc, #856]         @ 0x5c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    58b0: eeb0 3a47    	vmov.f32	s6, s14
    58b4: eeb0 6a47    	vmov.f32	s12, s14
    58b8: bf48         	it	mi
    58ba: 2601         	movmi	r6, #0x1
    58bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58c0: bf48         	it	mi
    58c2: eeb0 3a4b    	vmovmi.f32	s6, s22
    58c6: eef0 5a47    	vmov.f32	s11, s14
    58ca: eef0 2a47    	vmov.f32	s5, s14
    58ce: fe70 4a03    	vselgt.f32	s9, s0, s6
    58d2: eeb0 3a47    	vmov.f32	s6, s14
    58d6: eef4 1a4c    	vcmp.f32	s3, s24
    58da: 402e         	ands	r6, r5
    58dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58e0: f280 80b5    	bge.w	0x5a4e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x16a
    58e4: ed9f 3ac9    	vldr	s6, [pc, #804]          @ 0x5c0c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x46c>
    58e8: eef4 1a43    	vcmp.f32	s3, s6
    58ec: ed9f 6ac6    	vldr	s12, [pc, #792]         @ 0x5c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    58f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58f4: d910         	bls	0x5918 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x178> @ imm = #0x20
    58f6: ed9f 3ac6    	vldr	s6, [pc, #792]          @ 0x5c10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x470>
    58fa: eef4 1a43    	vcmp.f32	s3, s6
    58fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5902: d911         	bls	0x5928 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x188> @ imm = #0x22
    5904: ed9f 3ac3    	vldr	s6, [pc, #780]          @ 0x5c14 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x474>
    5908: ee71 1a83    	vadd.f32	s3, s3, s6
    590c: eddf 2ac2    	vldr	s5, [pc, #776]          @ 0x5c18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x478>
    5910: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    5914: e010         	b	0x5938 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x198> @ imm = #0x20
    5916: bf00         	nop
    5918: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    591c: eef0 2a46    	vmov.f32	s5, s12
    5920: e00e         	b	0x5940 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1a0> @ imm = #0x1c
    5922: bf00         	nop
    5924: bf00         	nop
    5926: bf00         	nop
    5928: ed9f 3abd    	vldr	s6, [pc, #756]          @ 0x5c20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x480>
    592c: ee71 1a83    	vadd.f32	s3, s3, s6
    5930: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    5934: eddf 2ab9    	vldr	s5, [pc, #740]          @ 0x5c1c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x47c>
    5938: ee01 3aa2    	vmla.f32	s6, s3, s5
    593c: ee64 2aa2    	vmul.f32	s5, s9, s5
    5940: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    5944: ee31 3ac3    	vsub.f32	s6, s3, s6
    5948: fec3 1a06    	vmaxnm.f32	s3, s6, s12
    594c: eeb1 3a62    	vneg.f32	s6, s5
    5950: eef5 1a40    	vcmp.f32	s3, #0
    5954: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5958: d942         	bls	0x59e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x240> @ imm = #0x84
    595a: eeb0 6acd    	vabs.f32	s12, s26
    595e: eeb4 6a61    	vcmp.f32	s12, s3
    5962: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5966: d947         	bls	0x59f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x258> @ imm = #0x8e
    5968: eec1 4a86    	vdiv.f32	s9, s3, s12
    596c: ee24 6aa4    	vmul.f32	s12, s9, s9
    5970: ee26 6a06    	vmul.f32	s12, s12, s12
    5974: ee26 6a06    	vmul.f32	s12, s12, s12
    5978: ee66 5a06    	vmul.f32	s11, s12, s12
    597c: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    5980: ee75 2a86    	vadd.f32	s5, s11, s12
    5984: eef0 6a46    	vmov.f32	s13, s12
    5988: eef4 2a46    	vcmp.f32	s5, s12
    598c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5990: d009         	beq	0x59a6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x206> @ imm = #0x12
    5992: eef0 6a62    	vmov.f32	s13, s5
    5996: eef1 6ae6    	vsqrt.f32	s13, s13
    599a: eef1 6ae6    	vsqrt.f32	s13, s13
    599e: eef1 6ae6    	vsqrt.f32	s13, s13
    59a2: eef1 6ae6    	vsqrt.f32	s13, s13
    59a6: ee86 6a26    	vdiv.f32	s12, s12, s13
    59aa: eeb4 da4d    	vcmp.f32	s26, s26
    59ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59b2: eec6 6a22    	vdiv.f32	s13, s12, s5
    59b6: f181 80f3    	bvs.w	0x6ba0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1400> @ imm = #0x11e6
    59ba: ee1d 5a10    	vmov	r5, s26
    59be: f04f 547e    	mov.w	r4, #0x3f800000
    59c2: f364 051e    	bfi	r5, r4, #0, #31
    59c6: ee02 5a90    	vmov	s5, r5
    59ca: ee62 1aa1    	vmul.f32	s3, s5, s3
    59ce: ee62 2aa6    	vmul.f32	s5, s5, s13
    59d2: ee21 6a86    	vmul.f32	s12, s3, s12
    59d6: ee64 1aa5    	vmul.f32	s3, s9, s11
    59da: ee61 5aa6    	vmul.f32	s11, s3, s13
    59de: e036         	b	0x5a4e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x6c
    59e0: eef0 5a46    	vmov.f32	s11, s12
    59e4: eef0 2a46    	vmov.f32	s5, s12
    59e8: e031         	b	0x5a4e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x62
    59ea: bf00         	nop
    59ec: 79 61 2e 43  	.word	0x432e6179
    59f0: 83 c0 96 b8  	.word	0xb896c083
    59f4: 50 d0 e8 36  	.word	0x36e8d050
    59f8: ee8d 6a21    	vdiv.f32	s12, s26, s3
    59fc: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    5a00: ee26 6a06    	vmul.f32	s12, s12, s12
    5a04: eef0 5a64    	vmov.f32	s11, s9
    5a08: ee26 6a06    	vmul.f32	s12, s12, s12
    5a0c: ee26 6a06    	vmul.f32	s12, s12, s12
    5a10: ee26 6a06    	vmul.f32	s12, s12, s12
    5a14: ee76 2a24    	vadd.f32	s5, s12, s9
    5a18: eef4 2a64    	vcmp.f32	s5, s9
    5a1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a20: d009         	beq	0x5a36 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x296> @ imm = #0x12
    5a22: eef0 5a62    	vmov.f32	s11, s5
    5a26: eef1 5ae5    	vsqrt.f32	s11, s11
    5a2a: eef1 5ae5    	vsqrt.f32	s11, s11
    5a2e: eef1 5ae5    	vsqrt.f32	s11, s11
    5a32: eef1 5ae5    	vsqrt.f32	s11, s11
    5a36: eec4 4aa5    	vdiv.f32	s9, s9, s11
    5a3a: ee2d 6a06    	vmul.f32	s12, s26, s12
    5a3e: eec4 5aa2    	vdiv.f32	s11, s9, s5
    5a42: eec6 1a21    	vdiv.f32	s3, s12, s3
    5a46: ee2d 6a24    	vmul.f32	s12, s26, s9
    5a4a: ee61 2aa5    	vmul.f32	s5, s3, s11
    5a4e: eddd 1a1a    	vldr	s3, [sp, #104]
    5a52: 2e00         	cmp	r6, #0x0
    5a54: ee71 1ac6    	vsub.f32	s3, s3, s12
    5a58: ed9f fac8    	vldr	s30, [pc, #800]         @ 0x5d7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5dc>
    5a5c: ed9f 6ac8    	vldr	s12, [pc, #800]         @ 0x5d80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    5a60: fe46 6a0f    	vseleq.f32	s13, s12, s30
    5a64: ee11 5a90    	vmov	r5, s3
    5a68: f025 4600    	bic	r6, r5, #0x80000000
    5a6c: f1b6 4fff    	cmp.w	r6, #0x7f800000
    5a70: db16         	blt	0x5aa0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x300> @ imm = #0x2c
    5a72: ed9f aac4    	vldr	s20, [pc, #784]         @ 0x5d84 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    5a76: e01d         	b	0x5ab4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x314> @ imm = #0x3a
    5a78: 00 80 bb 47  	.word	0x47bb8000
    5a7c: 00 24 74 cb  	.word	0xcb742400
    5a80: 00 24 74 4b  	.word	0x4b742400
    5a84: 00 a0 0c 48  	.word	0x480ca000
    5a88: ab 14 f2 db  	.word	0xdbf214ab
    5a8c: ec cd d7 3f  	.word	0x3fd7cdec
    5a90: c4 a9 9f 7b  	.word	0x7b9fa9c4
    5a94: 67 dd c7 3f  	.word	0x3fc7dd67
    5a98: 1c 38 88 77  	.word	0x7788381c
    5a9c: bf 13 e1 bf  	.word	0xbfe113bf
    5aa0: eeb2 6a0e    	vmov.f32	s12, #1.500000e+01
    5aa4: eddf 4a58    	vldr	s9, [pc, #352]          @ 0x5c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    5aa8: ee81 6a86    	vdiv.f32	s12, s3, s12
    5aac: eeb0 6ac6    	vabs.f32	s12, s12
    5ab0: fe86 aa24    	vmaxnm.f32	s20, s12, s9
    5ab4: ee20 2a82    	vmul.f32	s4, s1, s4
    5ab8: ee32 4a04    	vadd.f32	s8, s4, s8
    5abc: ee32 6a23    	vadd.f32	s12, s4, s7
    5ac0: eec4 7a05    	vdiv.f32	s15, s8, s10
    5ac4: ee86 1a05    	vdiv.f32	s2, s12, s10
    5ac8: eef4 7a41    	vcmp.f32	s15, s2
    5acc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ad0: f201 804e    	bhi.w	0x6b70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13d0> @ imm = #0x109c
    5ad4: ed9f 0b84    	vldr	d0, [pc, #528]          @ 0x5ce8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x548>
    5ad8: ed8d da09    	vstr	s26, [sp, #36]
    5adc: ed9d da1c    	vldr	s26, [sp, #112]
    5ae0: ed92 4b16    	vldr	d4, [r2, #88]
    5ae4: ed9f 6a47    	vldr	s12, [pc, #284]         @ 0x5c04 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x464>
    5ae8: eddd 3a1a    	vldr	s7, [sp, #104]
    5aec: ed8d 4b10    	vstr	d4, [sp, #64]
    5af0: 2600         	movs	r6, #0x0
    5af2: 2500         	movs	r5, #0x0
    5af4: ee09 4b00    	vmla.f64	d4, d9, d0
    5af8: eeb7 9acd    	vcvt.f64.f32	d9, s26
    5afc: ed9f 0b3c    	vldr	d0, [pc, #240]          @ 0x5bf0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x450>
    5b00: ee09 4b00    	vmla.f64	d4, d9, d0
    5b04: ee22 0a08    	vmul.f32	s0, s4, s16
    5b08: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    5b0c: ed92 8b0a    	vldr	d8, [r2, #40]
    5b10: ed8d 0a0f    	vstr	s0, [sp, #60]
    5b14: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    5b18: eeb0 4a40    	vmov.f32	s8, s0
    5b1c: ed9f 0ae8    	vldr	s0, [pc, #928]          @ 0x5ec0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x720>
    5b20: eeb7 5bc8    	vcvt.f32.f64	s10, d8
    5b24: ee02 4a2b    	vmla.f32	s8, s4, s23
    5b28: ed8d 5a0e    	vstr	s10, [sp, #56]
    5b2c: ee03 5a86    	vmla.f32	s10, s7, s12
    5b30: eddf 3a35    	vldr	s7, [pc, #212]          @ 0x5c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    5b34: eeb0 6a63    	vmov.f32	s12, s7
    5b38: ee0d 5a00    	vmla.f32	s10, s26, s0
    5b3c: ed9f 0ae7    	vldr	s0, [pc, #924]          @ 0x5edc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    5b40: eef4 7a44    	vcmp.f32	s15, s8
    5b44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b48: fe37 2a84    	vselgt.f32	s4, s15, s8
    5b4c: eeb4 2a41    	vcmp.f32	s4, s2
    5b50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b54: eeb4 4a67    	vcmp.f32	s8, s15
    5b58: fe71 ea02    	vselgt.f32	s29, s2, s4
    5b5c: ed91 2a06    	vldr	s4, [r1, #24]
    5b60: ee22 8a00    	vmul.f32	s16, s4, s0
    5b64: ed8d 2a19    	vstr	s4, [sp, #100]
    5b68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b6c: eeb4 4a41    	vcmp.f32	s8, s2
    5b70: eeb0 4a63    	vmov.f32	s8, s7
    5b74: ee38 2a05    	vadd.f32	s4, s16, s10
    5b78: eeb0 5a63    	vmov.f32	s10, s7
    5b7c: bfc8         	it	gt
    5b7e: 2601         	movgt	r6, #0x1
    5b80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b84: eeb5 2a40    	vcmp.f32	s4, #0
    5b88: eeb0 9ac2    	vabs.f32	s18, s4
    5b8c: eeb0 2a63    	vmov.f32	s4, s7
    5b90: bf48         	it	mi
    5b92: 2501         	movmi	r5, #0x1
    5b94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b98: bf48         	it	mi
    5b9a: eeb0 2a4b    	vmovmi.f32	s4, s22
    5b9e: eeb4 9a4c    	vcmp.f32	s18, s24
    5ba2: ea06 0605    	and.w	r6, r6, r5
    5ba6: fe70 4a82    	vselgt.f32	s9, s1, s4
    5baa: eeb0 2a63    	vmov.f32	s4, s7
    5bae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5bb2: f280 80d0    	bge.w	0x5d56 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x1a0
    5bb6: ed9f 2a15    	vldr	s4, [pc, #84]           @ 0x5c0c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x46c>
    5bba: eeb4 9a42    	vcmp.f32	s18, s4
    5bbe: ed9f 4a12    	vldr	s8, [pc, #72]           @ 0x5c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    5bc2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5bc6: d917         	bls	0x5bf8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x458> @ imm = #0x2e
    5bc8: ed9f 2a11    	vldr	s4, [pc, #68]           @ 0x5c10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x470>
    5bcc: eeb4 9a42    	vcmp.f32	s18, s4
    5bd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5bd4: d928         	bls	0x5c28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x488> @ imm = #0x50
    5bd6: ed9f 2a0f    	vldr	s4, [pc, #60]           @ 0x5c14 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x474>
    5bda: ee39 5a02    	vadd.f32	s10, s18, s4
    5bde: ed9f 6a0e    	vldr	s12, [pc, #56]          @ 0x5c18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x478>
    5be2: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    5be6: e027         	b	0x5c38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x498> @ imm = #0x4e
    5be8: 0a d7 23 3d  	.word	0x3d23d70a
    5bec: 00 bf 00 bf  	.word	0xbf00bf00
    5bf0: 67 42 87 92  	.word	0x92874267
    5bf4: ba 86 d4 bf  	.word	0xbfd486ba
    5bf8: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    5bfc: eeb0 6a44    	vmov.f32	s12, s8
    5c00: e01e         	b	0x5c40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x4a0> @ imm = #0x3c
    5c02: bf00         	nop
    5c04: d6 f8 e4 36  	.word	0x36e4f8d6
    5c08: 00 00 00 00  	.word	0x00000000
    5c0c: 7c f2 b0 3a  	.word	0x3ab0f27c
    5c10: a6 9b c4 3b  	.word	0x3bc49ba6
    5c14: a6 9b c4 bb  	.word	0xbbc49ba6
    5c18: 79 78 b0 43  	.word	0x43b07879
    5c1c: 53 4a a1 43  	.word	0x43a14a53
    5c20: 7c f2 b0 ba  	.word	0xbab0f27c
    5c24: 00 bf 00 bf  	.word	0xbf00bf00
    5c28: ed9f 2a2d    	vldr	s4, [pc, #180]          @ 0x5ce0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x540>
    5c2c: ee39 5a02    	vadd.f32	s10, s18, s4
    5c30: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    5c34: ed9f 6a31    	vldr	s12, [pc, #196]         @ 0x5cfc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x55c>
    5c38: ee05 2a06    	vmla.f32	s4, s10, s12
    5c3c: ee24 6a86    	vmul.f32	s12, s9, s12
    5c40: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    5c44: eeb1 6a46    	vneg.f32	s12, s12
    5c48: ee35 2a42    	vsub.f32	s4, s10, s4
    5c4c: fe82 5a04    	vmaxnm.f32	s10, s4, s8
    5c50: eeb5 5a40    	vcmp.f32	s10, #0
    5c54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c58: d94a         	bls	0x5cf0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x550> @ imm = #0x94
    5c5a: eeb0 2aee    	vabs.f32	s4, s29
    5c5e: eeb4 2a45    	vcmp.f32	s4, s10
    5c62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c66: d94b         	bls	0x5d00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x560> @ imm = #0x96
    5c68: ee85 2a02    	vdiv.f32	s4, s10, s4
    5c6c: ee22 4a02    	vmul.f32	s8, s4, s4
    5c70: ee24 4a04    	vmul.f32	s8, s8, s8
    5c74: ee24 4a04    	vmul.f32	s8, s8, s8
    5c78: ee64 4a04    	vmul.f32	s9, s8, s8
    5c7c: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    5c80: ee34 9a84    	vadd.f32	s18, s9, s8
    5c84: eeb0 ba44    	vmov.f32	s22, s8
    5c88: eeb4 9a44    	vcmp.f32	s18, s8
    5c8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c90: d009         	beq	0x5ca6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x506> @ imm = #0x12
    5c92: eeb0 ba49    	vmov.f32	s22, s18
    5c96: eeb1 bacb    	vsqrt.f32	s22, s22
    5c9a: eeb1 bacb    	vsqrt.f32	s22, s22
    5c9e: eeb1 bacb    	vsqrt.f32	s22, s22
    5ca2: eeb1 bacb    	vsqrt.f32	s22, s22
    5ca6: ee84 4a0b    	vdiv.f32	s8, s8, s22
    5caa: eef4 ea6e    	vcmp.f32	s29, s29
    5cae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5cb2: ee84 9a09    	vdiv.f32	s18, s8, s18
    5cb6: f180 877b    	bvs.w	0x6bb0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1410> @ imm = #0xef6
    5cba: ee1e 5a90    	vmov	r5, s29
    5cbe: f04f 547e    	mov.w	r4, #0x3f800000
    5cc2: f364 051e    	bfi	r5, r4, #0, #31
    5cc6: ee0b 5a10    	vmov	s22, r5
    5cca: ee2b 5a05    	vmul.f32	s10, s22, s10
    5cce: ee25 4a04    	vmul.f32	s8, s10, s8
    5cd2: ee2b 5a09    	vmul.f32	s10, s22, s18
    5cd6: ee22 2a24    	vmul.f32	s4, s4, s9
    5cda: ee22 2a09    	vmul.f32	s4, s4, s18
    5cde: e03a         	b	0x5d56 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x74
    5ce0: 7c f2 b0 ba  	.word	0xbab0f27c
    5ce4: 00 bf 00 bf  	.word	0xbf00bf00
    5ce8: 15 be b6 e5  	.word	0xe5b6be15
    5cec: 6d 7e c0 bf  	.word	0xbfc07e6d
    5cf0: eeb0 2a44    	vmov.f32	s4, s8
    5cf4: eeb0 5a44    	vmov.f32	s10, s8
    5cf8: e02d         	b	0x5d56 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x5a
    5cfa: bf00         	nop
    5cfc: 53 4a a1 43  	.word	0x43a14a53
    5d00: ee8e 2a85    	vdiv.f32	s4, s29, s10
    5d04: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    5d08: ee22 2a02    	vmul.f32	s4, s4, s4
    5d0c: eeb0 9a64    	vmov.f32	s18, s9
    5d10: ee22 2a02    	vmul.f32	s4, s4, s4
    5d14: ee22 2a02    	vmul.f32	s4, s4, s4
    5d18: ee22 2a02    	vmul.f32	s4, s4, s4
    5d1c: ee32 4a24    	vadd.f32	s8, s4, s9
    5d20: eeb4 4a64    	vcmp.f32	s8, s9
    5d24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d28: d009         	beq	0x5d3e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x59e> @ imm = #0x12
    5d2a: eeb0 9a44    	vmov.f32	s18, s8
    5d2e: eeb1 9ac9    	vsqrt.f32	s18, s18
    5d32: eeb1 9ac9    	vsqrt.f32	s18, s18
    5d36: eeb1 9ac9    	vsqrt.f32	s18, s18
    5d3a: eeb1 9ac9    	vsqrt.f32	s18, s18
    5d3e: eec4 4a89    	vdiv.f32	s9, s9, s18
    5d42: ee2e 9a82    	vmul.f32	s18, s29, s4
    5d46: ee84 2a84    	vdiv.f32	s4, s9, s8
    5d4a: ee89 5a05    	vdiv.f32	s10, s18, s10
    5d4e: ee2e 4aa4    	vmul.f32	s8, s29, s9
    5d52: ee25 5a02    	vmul.f32	s10, s10, s4
    5d56: eddd 4a1c    	vldr	s9, [sp, #112]
    5d5a: 2e00         	cmp	r6, #0x0
    5d5c: ee74 9ac4    	vsub.f32	s19, s9, s8
    5d60: ed9f 4a07    	vldr	s8, [pc, #28]           @ 0x5d80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    5d64: fe04 9a0f    	vseleq.f32	s18, s8, s30
    5d68: ee19 5a90    	vmov	r5, s19
    5d6c: f025 4600    	bic	r6, r5, #0x80000000
    5d70: f1b6 4fff    	cmp.w	r6, #0x7f800000
    5d74: db08         	blt	0x5d88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e8> @ imm = #0x10
    5d76: eddf 4a03    	vldr	s9, [pc, #12]           @ 0x5d84 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    5d7a: e01d         	b	0x5db8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x618> @ imm = #0x3a
    5d7c: 79 61 2e c3  	.word	0xc32e6179
    5d80: 00 00 00 80  	.word	0x80000000
    5d84: 00 00 80 7f  	.word	0x7f800000
    5d88: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    5d8c: eeb4 aa4a    	vcmp.f32	s20, s20
    5d90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d94: ee89 4a84    	vdiv.f32	s8, s19, s8
    5d98: eeb0 4ac4    	vabs.f32	s8, s8
    5d9c: fe54 4a0a    	vselvs.f32	s9, s8, s20
    5da0: eeb4 4a44    	vcmp.f32	s8, s8
    5da4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5da8: fe14 4a84    	vselvs.f32	s8, s9, s8
    5dac: eef4 4a44    	vcmp.f32	s9, s8
    5db0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5db4: fe74 4a84    	vselgt.f32	s9, s9, s8
    5db8: ed92 ab0c    	vldr	d10, [r2, #48]
    5dbc: ed9f ba48    	vldr	s22, [pc, #288]         @ 0x5ee0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x740>
    5dc0: ee26 6a05    	vmul.f32	s12, s12, s10
    5dc4: ed92 cb1a    	vldr	d12, [r2, #104]
    5dc8: eddf 8a46    	vldr	s17, [pc, #280]         @ 0x5ee4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x744>
    5dcc: ed92 db1c    	vldr	d13, [r2, #112]
    5dd0: 220d         	movs	r2, #0xd
    5dd2: ed9f 5a45    	vldr	s10, [pc, #276]         @ 0x5ee8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x748>
    5dd6: eeb7 fbca    	vcvt.f32.f64	s30, d10
    5dda: ed9d aa1c    	vldr	s20, [sp, #112]
    5dde: ed8d fa0d    	vstr	s30, [sp, #52]
    5de2: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    5de6: ee2a 4a0b    	vmul.f32	s8, s20, s22
    5dea: ed8d 0a0c    	vstr	s0, [sp, #48]
    5dee: eeb7 cbcd    	vcvt.f32.f64	s24, d13
    5df2: ee66 aaa5    	vmul.f32	s21, s13, s11
    5df6: ed8d ca0b    	vstr	s24, [sp, #44]
    5dfa: ee34 da00    	vadd.f32	s26, s8, s0
    5dfe: ed9d 0a19    	vldr	s0, [sp, #100]
    5e02: ee00 da28    	vmla.f32	s26, s0, s17
    5e06: eddf ca39    	vldr	s25, [pc, #228]         @ 0x5eec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x74c>
    5e0a: ee34 4a0c    	vadd.f32	s8, s8, s24
    5e0e: eddf da38    	vldr	s27, [pc, #224]         @ 0x5ef0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x750>
    5e12: ee00 4a4b    	vmls.f32	s8, s0, s22
    5e16: ed9f 0a31    	vldr	s0, [pc, #196]          @ 0x5edc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    5e1a: ee0a fa00    	vmla.f32	s30, s20, s0
    5e1e: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    5e22: ee23 aa22    	vmul.f32	s20, s6, s5
    5e26: fe8d 3a44    	vminnm.f32	s6, s26, s8
    5e2a: eeb4 da44    	vcmp.f32	s26, s8
    5e2e: ee7f 5a48    	vsub.f32	s11, s30, s16
    5e32: ee30 4a43    	vsub.f32	s8, s0, s6
    5e36: eeb8 3a00    	vmov.f32	s6, #-2.000000e+00
    5e3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e3e: bf88         	it	hi
    5e40: 220e         	movhi	r2, #0xe
    5e42: eeb4 4a43    	vcmp.f32	s8, s6
    5e46: ed8d 1a18    	vstr	s2, [sp, #96]
    5e4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e4e: ed8d ea17    	vstr	s28, [sp, #92]
    5e52: edcd 7a16    	vstr	s15, [sp, #88]
    5e56: d937         	bls	0x5ec8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x728> @ imm = #0x6e
    5e58: eeb4 4a44    	vcmp.f32	s8, s8
    5e5c: ed1f 3a96    	vldr	s6, [pc, #-600]         @ 0x5c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    5e60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e64: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    5e68: eeb0 8a43    	vmov.f32	s16, s6
    5e6c: fe53 6a04    	vselvs.f32	s13, s6, s8
    5e70: eeb0 da62    	vmov.f32	s26, s5
    5e74: eef5 6a40    	vcmp.f32	s13, #0
    5e78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e7c: bfb8         	it	lt
    5e7e: eeb0 8a66    	vmovlt.f32	s16, s13
    5e82: eddf 6a1c    	vldr	s13, [pc, #112]         @ 0x5ef4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x754>
    5e86: eeb5 4a40    	vcmp.f32	s8, #0
    5e8a: ee08 da00    	vmla.f32	s26, s16, s0
    5e8e: ed9f 8a1a    	vldr	s16, [pc, #104]         @ 0x5ef8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x758>
    5e92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e96: ee2d da26    	vmul.f32	s26, s26, s13
    5e9a: fe8d da08    	vmaxnm.f32	s26, s26, s16
    5e9e: d52f         	bpl	0x5f00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x760> @ imm = #0x5e
    5ea0: ee44 2a00    	vmla.f32	s5, s8, s0
    5ea4: ee22 4aa6    	vmul.f32	s8, s5, s13
    5ea8: eeb4 4a48    	vcmp.f32	s8, s16
    5eac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5eb0: dd26         	ble	0x5f00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x760> @ imm = #0x4c
    5eb2: eeb0 1a6f    	vmov.f32	s2, s31
    5eb6: eeb0 ca6b    	vmov.f32	s24, s23
    5eba: ed9f 3af6    	vldr	s6, [pc, #984]          @ 0x6294 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf4>
    5ebe: e023         	b	0x5f08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x768> @ imm = #0x46
    5ec0: af e6 27 b9  	.word	0xb927e6af
    5ec4: 00 bf 00 bf  	.word	0xbf00bf00
    5ec8: eeb0 1a6f    	vmov.f32	s2, s31
    5ecc: eeb0 ca6b    	vmov.f32	s24, s23
    5ed0: ed1f 3ab3    	vldr	s6, [pc, #-716]         @ 0x5c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    5ed4: ed9f da08    	vldr	s26, [pc, #32]          @ 0x5ef8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x758>
    5ed8: e016         	b	0x5f08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x768> @ imm = #0x2c
    5eda: bf00         	nop
    5edc: 79 2e 02 39  	.word	0x39022e79
    5ee0: 51 e6 7f 3f  	.word	0x3f7fe651
    5ee4: 99 76 cd 39  	.word	0x39cd7699
    5ee8: d6 f8 e4 b6  	.word	0xb6e4f8d6
    5eec: 83 c0 96 38  	.word	0x3896c083
    5ef0: af e6 27 39  	.word	0x3927e6af
    5ef4: 2b 18 95 3b  	.word	0x3b95182b
    5ef8: 95 bf d6 33  	.word	0x33d6bf95
    5efc: 00 bf 00 bf  	.word	0xbf00bf00
    5f00: eeb0 1a6f    	vmov.f32	s2, s31
    5f04: eeb0 ca6b    	vmov.f32	s24, s23
    5f08: e9cd 3004    	strd	r3, r0, [sp, #16]
    5f0c: f64d 0070    	movw	r0, #0xd870
    5f10: ed9d 0a19    	vldr	s0, [sp, #100]
    5f14: f2c0 0000    	movt	r0, #0x0
    5f18: ee50 5a0d    	vnmls.f32	s11, s0, s26
    5f1c: eb00 1282    	add.w	r2, r0, r2, lsl #6
    5f20: ee20 4a03    	vmul.f32	s8, s0, s6
    5f24: ee29 9a02    	vmul.f32	s18, s18, s4
    5f28: ed1f 2a14    	vldr	s4, [pc, #-80]          @ 0x5edc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    5f2c: ed92 8b0c    	vldr	d8, [r2, #48]
    5f30: ed9f 0ad9    	vldr	s0, [pc, #868]          @ 0x6298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf8>
    5f34: ee66 6a05    	vmul.f32	s13, s12, s10
    5f38: eeb7 3bc8    	vcvt.f32.f64	s6, d8
    5f3c: ee26 8a2d    	vmul.f32	s16, s12, s27
    5f40: ed92 fb08    	vldr	d15, [r2, #32]
    5f44: ee04 2a43    	vmls.f32	s4, s8, s6
    5f48: ed92 bb0a    	vldr	d11, [r2, #40]
    5f4c: ee15 2a90    	vmov	r2, s11
    5f50: ee2a 3a87    	vmul.f32	s6, s21, s14
    5f54: eef7 8bcf    	vcvt.f32.f64	s17, d15
    5f58: ee66 7a00    	vmul.f32	s15, s12, s0
    5f5c: ed9f 0af8    	vldr	s0, [pc, #992]          @ 0x6340 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba0>
    5f60: eeb7 6bcb    	vcvt.f32.f64	s12, d11
    5f64: f022 4200    	bic	r2, r2, #0x80000000
    5f68: ee2a fa2c    	vmul.f32	s30, s20, s25
    5f6c: f1b2 4fff    	cmp.w	r2, #0x7f800000
    5f70: ed5f ca7c    	vldr	s25, [pc, #-496]        @ 0x5d84 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    5f74: ed9f baf3    	vldr	s22, [pc, #972]         @ 0x6344 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba4>
    5f78: eddf baf3    	vldr	s23, [pc, #972]         @ 0x6348 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba8>
    5f7c: da17         	bge	0x5fae <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x80e> @ imm = #0x2e
    5f7e: ed9f 7af3    	vldr	s14, [pc, #972]         @ 0x634c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbac>
    5f82: eef4 4a64    	vcmp.f32	s9, s9
    5f86: ee85 7a87    	vdiv.f32	s14, s11, s14
    5f8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5f8e: eeb0 7ac7    	vabs.f32	s14, s14
    5f92: fe57 4a24    	vselvs.f32	s9, s14, s9
    5f96: eeb4 7a47    	vcmp.f32	s14, s14
    5f9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5f9e: fe14 7a87    	vselvs.f32	s14, s9, s14
    5fa2: eef4 4a47    	vcmp.f32	s9, s14
    5fa6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5faa: fe74 ca87    	vselgt.f32	s25, s9, s14
    5fae: eeb0 7a43    	vmov.f32	s14, s6
    5fb2: ee0a 3a05    	vmla.f32	s6, s20, s10
    5fb6: ed1f 5a8e    	vldr	s10, [pc, #-568]        @ 0x5d80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    5fba: ee0a fa80    	vmla.f32	s30, s21, s0
    5fbe: ee0a 7a05    	vmla.f32	s14, s20, s10
    5fc2: ae22         	add	r6, sp, #0x88
    5fc4: ee49 7a23    	vmla.f32	s15, s18, s7
    5fc8: f106 000c    	add.w	r0, r6, #0xc
    5fcc: ee49 6a0b    	vmla.f32	s13, s18, s22
    5fd0: 9008         	str	r0, [sp, #0x20]
    5fd2: ee09 8a2b    	vmla.f32	s16, s18, s23
    5fd6: 9100         	str	r1, [sp]
    5fd8: ee68 8ac4    	vnmul.f32	s17, s17, s8
    5fdc: 69c8         	ldr	r0, [r1, #0x1c]
    5fde: ee64 da06    	vmul.f32	s27, s8, s12
    5fe2: 2100         	movs	r1, #0x0
    5fe4: ee7d ba02    	vadd.f32	s23, s26, s4
    5fe8: f04f 0e00    	mov.w	lr, #0x0
    5fec: eef1 4a61    	vneg.f32	s9, s3
    5ff0: f10d 097c    	add.w	r9, sp, #0x7c
    5ff4: eeb1 9a69    	vneg.f32	s18, s19
    5ff8: eef0 9a6c    	vmov.f32	s19, s25
    5ffc: eeb1 2a65    	vneg.f32	s4, s11
    6000: f04f 5b7e    	mov.w	r11, #0x3f800000
    6004: 468a         	mov	r10, r1
    6006: eddf fad2    	vldr	s31, [pc, #840]         @ 0x6350 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb0>
    600a: ed1f ea46    	vldr	s28, [pc, #-280]        @ 0x5ef4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x754>
    600e: ed9d aa09    	vldr	s20, [sp, #36]
    6012: 9001         	str	r0, [sp, #0x4]
    6014: ee3f 4a20    	vadd.f32	s8, s30, s1
    6018: 2910         	cmp	r1, #0x10
    601a: eeb0 5ae6    	vabs.f32	s10, s13
    601e: f04f 0400    	mov.w	r4, #0x0
    6022: bf18         	it	ne
    6024: f10a 0a01    	addne.w	r10, r10, #0x1
    6028: eeb0 6ac4    	vabs.f32	s12, s8
    602c: edcd 4a1f    	vstr	s9, [sp, #124]
    6030: ed8d 4a22    	vstr	s8, [sp, #136]
    6034: ed9f 0a98    	vldr	s0, [pc, #608]          @ 0x6298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf8>
    6038: ed8d 3a23    	vstr	s6, [sp, #140]
    603c: f10d 0c88    	add.w	r12, sp, #0x88
    6040: eeb4 5a46    	vcmp.f32	s10, s12
    6044: ed8d 7a24    	vstr	s14, [sp, #144]
    6048: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    604c: eeb0 6ae8    	vabs.f32	s12, s17
    6050: fe36 5a84    	vselgt.f32	s10, s13, s8
    6054: bfc8         	it	gt
    6056: 2401         	movgt	r4, #0x1
    6058: edcd 6a25    	vstr	s13, [sp, #148]
    605c: eeb0 5ac5    	vabs.f32	s10, s10
    6060: eeb4 6a45    	vcmp.f32	s12, s10
    6064: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6068: bfc8         	it	gt
    606a: 2402         	movgt	r4, #0x2
    606c: ee38 5a20    	vadd.f32	s10, s16, s1
    6070: edcd 8a28    	vstr	s17, [sp, #160]
    6074: ed8d 5a26    	vstr	s10, [sp, #152]
    6078: ee30 5a6d    	vsub.f32	s10, s0, s27
    607c: eb04 0044    	add.w	r0, r4, r4, lsl #1
    6080: edcd 7a27    	vstr	s15, [sp, #156]
    6084: ed8d 5a29    	vstr	s10, [sp, #164]
    6088: ed9f 0aec    	vldr	s0, [pc, #944]          @ 0x643c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xc9c>
    608c: eb06 0280    	add.w	r2, r6, r0, lsl #2
    6090: edcd ba2a    	vstr	s23, [sp, #168]
    6094: f856 0020    	ldr.w	r0, [r6, r0, lsl #2]
    6098: ed8d 9a20    	vstr	s18, [sp, #128]
    609c: e9d2 3501    	ldrd	r3, r5, [r2, #4]
    60a0: e88c 0029    	stm.w	r12, {r0, r3, r5}
    60a4: ed82 4a00    	vstr	s8, [r2]
    60a8: ed82 3a01    	vstr	s6, [r2, #4]
    60ac: ed82 7a02    	vstr	s14, [r2, #8]
    60b0: eb09 0284    	add.w	r2, r9, r4, lsl #2
    60b4: eddd 1a22    	vldr	s3, [sp, #136]
    60b8: ed8d 2a21    	vstr	s4, [sp, #132]
    60bc: ee11 0a90    	vmov	r0, s3
    60c0: f859 3024    	ldr.w	r3, [r9, r4, lsl #2]
    60c4: 931f         	str	r3, [sp, #0x7c]
    60c6: edc2 4a00    	vstr	s9, [r2]
    60ca: f020 4000    	bic	r0, r0, #0x80000000
    60ce: f1b0 4fff    	cmp.w	r0, #0x7f800000
    60d2: f280 8541    	bge.w	0x6b58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0xa82
    60d6: eeb0 2ae1    	vabs.f32	s4, s3
    60da: eeb4 2a40    	vcmp.f32	s4, s0
    60de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    60e2: f100 8539    	bmi.w	0x6b58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0xa72
    60e6: ed9d 2a28    	vldr	s4, [sp, #160]
    60ea: ed9d 3a25    	vldr	s6, [sp, #148]
    60ee: ee82 4a21    	vdiv.f32	s8, s4, s3
    60f2: ed9d 2a23    	vldr	s4, [sp, #140]
    60f6: ee83 5a21    	vdiv.f32	s10, s6, s3
    60fa: ed9d 6a29    	vldr	s12, [sp, #164]
    60fe: ed9d 7a26    	vldr	s14, [sp, #152]
    6102: ed9d 3a1f    	vldr	s6, [sp, #124]
    6106: ee04 6a42    	vmls.f32	s12, s8, s4
    610a: eddd 2a24    	vldr	s5, [sp, #144]
    610e: ee05 7a42    	vmls.f32	s14, s10, s4
    6112: eddd 3a27    	vldr	s7, [sp, #156]
    6116: ee45 3a62    	vmls.f32	s7, s10, s5
    611a: eddd 4a20    	vldr	s9, [sp, #128]
    611e: ee45 4a43    	vmls.f32	s9, s10, s6
    6122: eddd 6a2a    	vldr	s13, [sp, #168]
    6126: ee44 6a62    	vmls.f32	s13, s8, s5
    612a: 9d08         	ldr	r5, [sp, #0x20]
    612c: 462c         	mov	r4, r5
    612e: ed8d 7a26    	vstr	s14, [sp, #152]
    6132: eeb0 5ac6    	vabs.f32	s10, s12
    6136: edcd 3a27    	vstr	s7, [sp, #156]
    613a: eef0 5ac7    	vabs.f32	s11, s14
    613e: edcd 4a20    	vstr	s9, [sp, #128]
    6142: ed8d 6a29    	vstr	s12, [sp, #164]
    6146: 4672         	mov	r2, lr
    6148: eeb4 5a65    	vcmp.f32	s10, s11
    614c: ed9d 5a21    	vldr	s10, [sp, #132]
    6150: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6154: bfc8         	it	gt
    6156: f106 0418    	addgt.w	r4, r6, #0x18
    615a: edcd 6a2a    	vstr	s13, [sp, #168]
    615e: f8d5 c000    	ldr.w	r12, [r5]
    6162: f8d4 8000    	ldr.w	r8, [r4]
    6166: 6868         	ldr	r0, [r5, #0x4]
    6168: e9d4 e301    	ldrd	lr, r3, [r4, #4]
    616c: f8c5 8000    	str.w	r8, [r5]
    6170: ee04 5a43    	vmls.f32	s10, s8, s6
    6174: f8c5 e004    	str.w	lr, [r5, #0x4]
    6178: 4696         	mov	lr, r2
    617a: 68aa         	ldr	r2, [r5, #0x8]
    617c: 60ab         	str	r3, [r5, #0x8]
    617e: e9c4 0201    	strd	r0, r2, [r4, #4]
    6182: ed9d 4a26    	vldr	s8, [sp, #152]
    6186: f04f 0004    	mov.w	r0, #0x4
    618a: ee14 2a10    	vmov	r2, s8
    618e: bfc8         	it	gt
    6190: 2008         	movgt	r0, #0x8
    6192: ed8d 5a21    	vstr	s10, [sp, #132]
    6196: f859 3000    	ldr.w	r3, [r9, r0]
    619a: 4448         	add	r0, r9
    619c: f022 4200    	bic	r2, r2, #0x80000000
    61a0: f8c4 c000    	str.w	r12, [r4]
    61a4: f1b2 4fff    	cmp.w	r2, #0x7f800000
    61a8: 9320         	str	r3, [sp, #0x80]
    61aa: edc0 4a00    	vstr	s9, [r0]
    61ae: f280 84d3    	bge.w	0x6b58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x9a6
    61b2: eeb0 5ac4    	vabs.f32	s10, s8
    61b6: eeb4 5a40    	vcmp.f32	s10, s0
    61ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    61be: f100 84cb    	bmi.w	0x6b58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x996
    61c2: ed9d 5a29    	vldr	s10, [sp, #164]
    61c6: ed9d 7a2a    	vldr	s14, [sp, #168]
    61ca: ee85 6a04    	vdiv.f32	s12, s10, s8
    61ce: ed9d 5a27    	vldr	s10, [sp, #156]
    61d2: ee06 7a45    	vmls.f32	s14, s12, s10
    61d6: ee17 0a10    	vmov	r0, s14
    61da: f020 4000    	bic	r0, r0, #0x80000000
    61de: f1b0 4fff    	cmp.w	r0, #0x7f800000
    61e2: f280 84b9    	bge.w	0x6b58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x972
    61e6: eef0 3ac7    	vabs.f32	s7, s14
    61ea: eef4 3a40    	vcmp.f32	s7, s0
    61ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    61f2: f100 84b1    	bmi.w	0x6b58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x962
    61f6: eddd 3a20    	vldr	s7, [sp, #128]
    61fa: eddd 4a21    	vldr	s9, [sp, #132]
    61fe: ee46 4a63    	vmls.f32	s9, s12, s7
    6202: edcd ea07    	vstr	s29, [sp, #28]
    6206: ed8d aa09    	vstr	s20, [sp, #36]
    620a: ee84 7a87    	vdiv.f32	s14, s9, s14
    620e: ed8d 7a21    	vstr	s14, [sp, #132]
    6212: ee45 3a47    	vmls.f32	s7, s10, s14
    6216: ed9d 5a1a    	vldr	s10, [sp, #104]
    621a: eeb0 5ac5    	vabs.f32	s10, s10
    621e: eeb4 5a45    	vcmp.f32	s10, s10
    6222: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6226: eec3 6a84    	vdiv.f32	s13, s7, s8
    622a: ed9f 4ab7    	vldr	s8, [pc, #732]          @ 0x6508 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd68>
    622e: ee02 3a66    	vmls.f32	s6, s4, s13
    6232: fe10 2a85    	vselvs.f32	s4, s1, s10
    6236: ed9f 5ab5    	vldr	s10, [pc, #724]         @ 0x650c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd6c>
    623a: ee02 3ac7    	vmls.f32	s6, s5, s14
    623e: eeb4 2a60    	vcmp.f32	s4, s1
    6242: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6246: fe32 2a20    	vselgt.f32	s4, s4, s1
    624a: ee83 8a21    	vdiv.f32	s16, s6, s3
    624e: ee22 2a05    	vmul.f32	s4, s4, s10
    6252: eeb0 6ac8    	vabs.f32	s12, s16
    6256: fe82 2a44    	vminnm.f32	s4, s4, s8
    625a: eeb4 6a42    	vcmp.f32	s12, s4
    625e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6262: d91d         	bls	0x62a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb00> @ imm = #0x3a
    6264: 2400         	movs	r4, #0x0
    6266: eef0 aa4c    	vmov.f32	s21, s24
    626a: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    626e: eddf eaa8    	vldr	s29, [pc, #672]         @ 0x6510 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    6272: ed9f 0aa8    	vldr	s0, [pc, #672]          @ 0x6514 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd74>
    6276: eef4 9a40    	vcmp.f32	s19, s0
    627a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    627e: d854         	bhi	0x632a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb8a> @ imm = #0xa8
    6280: f1a1 0010    	sub.w	r0, r1, #0x10
    6284: fab0 f080    	clz	r0, r0
    6288: 0940         	lsrs	r0, r0, #0x5
    628a: 4320         	orrs	r0, r4
    628c: d050         	beq	0x6330 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb90> @ imm = #0xa0
    628e: f000 bc4d    	b.w	0x6b2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x138c> @ imm = #0x89a
    6292: bf00         	nop
    6294: 2b 18 15 3b  	.word	0x3b15182b
    6298: 79 2e 02 b9  	.word	0xb9022e79
    629c: 00 bf 00 bf  	.word	0xbf00bf00
    62a0: ed9d 2a1c    	vldr	s4, [sp, #112]
    62a4: eeb0 3ae6    	vabs.f32	s6, s13
    62a8: eeb0 2ac2    	vabs.f32	s4, s4
    62ac: eef0 aa4c    	vmov.f32	s21, s24
    62b0: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    62b4: eddf ea96    	vldr	s29, [pc, #600]         @ 0x6510 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    62b8: eeb4 2a42    	vcmp.f32	s4, s4
    62bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    62c0: fe10 2a82    	vselvs.f32	s4, s1, s4
    62c4: eeb4 2a60    	vcmp.f32	s4, s1
    62c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    62cc: fe32 2a20    	vselgt.f32	s4, s4, s1
    62d0: ee22 2a05    	vmul.f32	s4, s4, s10
    62d4: fe82 2a44    	vminnm.f32	s4, s4, s8
    62d8: eeb4 3a42    	vcmp.f32	s6, s4
    62dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    62e0: d81b         	bhi	0x631a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb7a> @ imm = #0x36
    62e2: ed9d 0a19    	vldr	s0, [sp, #100]
    62e6: eeb0 3ac7    	vabs.f32	s6, s14
    62ea: eeb0 2ac0    	vabs.f32	s4, s0
    62ee: eeb4 2a42    	vcmp.f32	s4, s4
    62f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    62f6: fe10 2a82    	vselvs.f32	s4, s1, s4
    62fa: eeb4 2a60    	vcmp.f32	s4, s1
    62fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6302: fe32 2a20    	vselgt.f32	s4, s4, s1
    6306: ee22 2a05    	vmul.f32	s4, s4, s10
    630a: fe82 2a44    	vminnm.f32	s4, s4, s8
    630e: eeb4 3a42    	vcmp.f32	s6, s4
    6312: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6316: f240 83cf    	bls.w	0x6ab8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1318> @ imm = #0x79e
    631a: 2400         	movs	r4, #0x0
    631c: ed9f 0a7d    	vldr	s0, [pc, #500]          @ 0x6514 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd74>
    6320: eef4 9a40    	vcmp.f32	s19, s0
    6324: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6328: d9aa         	bls	0x6280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xae0> @ imm = #-0xac
    632a: 2910         	cmp	r1, #0x10
    632c: f000 841c    	beq.w	0x6b68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13c8> @ imm = #0x838
    6330: f04f 547e    	mov.w	r4, #0x3f800000
    6334: ed8d 6a06    	vstr	s12, [sp, #24]
    6338: edcd 9a0a    	vstr	s19, [sp, #40]
    633c: e018         	b	0x6370 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbd0> @ imm = #0x30
    633e: bf00         	nop
    6340: fc 9d 08 bf  	.word	0xbf089dfc
    6344: 6f f3 03 be  	.word	0xbe03f36f
    6348: d5 35 a4 be  	.word	0xbea435d5
    634c: 0a d7 23 3c  	.word	0x3c23d70a
    6350: 00 00 00 00  	.word	0x00000000
    6354: 00 bf 00 bf  	.word	0xbf00bf00
    6358: eef0 aa4c    	vmov.f32	s21, s24
    635c: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    6360: f5a4 0400    	sub.w	r4, r4, #0x800000
    6364: eddf ea6a    	vldr	s29, [pc, #424]         @ 0x6510 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    6368: f1b4 5f66    	cmp.w	r4, #0x39800000
    636c: f000 83b0    	beq.w	0x6ad0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1330> @ imm = #0x760
    6370: ee04 4a90    	vmov	s9, r4
    6374: ed9d aa1a    	vldr	s20, [sp, #104]
    6378: ed9f 5b67    	vldr	d5, [pc, #412]          @ 0x6518 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd78>
    637c: eddd da13    	vldr	s27, [sp, #76]
    6380: ed9d ba1c    	vldr	s22, [sp, #112]
    6384: ee08 aa24    	vmla.f32	s20, s16, s9
    6388: ed9f 4abf    	vldr	s8, [pc, #764]          @ 0x6688 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xee8>
    638c: ed9d 3b14    	vldr	d3, [sp, #80]
    6390: ee06 baa4    	vmla.f32	s22, s13, s9
    6394: ed9d 0a17    	vldr	s0, [sp, #92]
    6398: eeb0 6a6f    	vmov.f32	s12, s31
    639c: eeb0 fa6f    	vmov.f32	s30, s31
    63a0: eeb7 2aca    	vcvt.f64.f32	d2, s20
    63a4: ee02 3b05    	vmla.f64	d3, d2, d5
    63a8: ed9f 5ab6    	vldr	s10, [pc, #728]         @ 0x6684 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xee4>
    63ac: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    63b0: ee43 da2a    	vmla.f32	s27, s6, s21
    63b4: ed9d 3a12    	vldr	s6, [sp, #72]
    63b8: ee0a 3a04    	vmla.f32	s6, s20, s8
    63bc: ee0b 3a05    	vmla.f32	s6, s22, s10
    63c0: eeb0 5a6f    	vmov.f32	s10, s31
    63c4: eeb4 1a6d    	vcmp.f32	s2, s27
    63c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63cc: fe31 4a2d    	vselgt.f32	s8, s2, s27
    63d0: eef0 3ac3    	vabs.f32	s7, s6
    63d4: eeb4 4a40    	vcmp.f32	s8, s0
    63d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63dc: eeb5 3a40    	vcmp.f32	s6, #0
    63e0: eeb0 3a6f    	vmov.f32	s6, s31
    63e4: fe70 1a04    	vselgt.f32	s3, s0, s8
    63e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63ec: bf48         	it	mi
    63ee: eeb0 3a6b    	vmovmi.f32	s6, s23
    63f2: eef4 3a6e    	vcmp.f32	s7, s29
    63f6: fe30 4a83    	vselgt.f32	s8, s1, s6
    63fa: eeb0 3a6f    	vmov.f32	s6, s31
    63fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6402: f280 80b9    	bge.w	0x6578 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x172
    6406: eeb0 5a6f    	vmov.f32	s10, s31
    640a: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    640e: ed9f 0ad7    	vldr	s0, [pc, #860]          @ 0x676c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfcc>
    6412: eef4 3a40    	vcmp.f32	s7, s0
    6416: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    641a: d91b         	bls	0x6454 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xcb4> @ imm = #0x36
    641c: ed9f 0ad4    	vldr	s0, [pc, #848]          @ 0x6770 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd0>
    6420: eef4 3a40    	vcmp.f32	s7, s0
    6424: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6428: d90a         	bls	0x6440 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xca0> @ imm = #0x14
    642a: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x6774 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd4>
    642e: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    6432: ee33 5a80    	vadd.f32	s10, s7, s0
    6436: ed9f 0ad0    	vldr	s0, [pc, #832]          @ 0x6778 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd8>
    643a: e007         	b	0x644c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xcac> @ imm = #0xe
    643c: 08 e5 3c 1e  	.word	0x1e3ce508
    6440: ed9f 0ace    	vldr	s0, [pc, #824]          @ 0x677c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfdc>
    6444: ee33 5a80    	vadd.f32	s10, s7, s0
    6448: ed9f 0acd    	vldr	s0, [pc, #820]          @ 0x6780 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe0>
    644c: ee05 3a00    	vmla.f32	s6, s10, s0
    6450: ee24 5a00    	vmul.f32	s10, s8, s0
    6454: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    6458: ee30 3a43    	vsub.f32	s6, s0, s6
    645c: fe83 4a2f    	vmaxnm.f32	s8, s6, s31
    6460: eeb1 3a45    	vneg.f32	s6, s10
    6464: eeb5 4a40    	vcmp.f32	s8, #0
    6468: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    646c: d944         	bls	0x64f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd58> @ imm = #0x88
    646e: eeb0 5ae1    	vabs.f32	s10, s3
    6472: eeb4 5a44    	vcmp.f32	s10, s8
    6476: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    647a: d951         	bls	0x6520 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd80> @ imm = #0xa2
    647c: ee84 5a05    	vdiv.f32	s10, s8, s10
    6480: eef0 5a60    	vmov.f32	s11, s1
    6484: ee25 6a05    	vmul.f32	s12, s10, s10
    6488: ee26 6a06    	vmul.f32	s12, s12, s12
    648c: ee26 6a06    	vmul.f32	s12, s12, s12
    6490: ee66 3a06    	vmul.f32	s7, s12, s12
    6494: ee33 6aa0    	vadd.f32	s12, s7, s1
    6498: eeb4 6a60    	vcmp.f32	s12, s1
    649c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64a0: d009         	beq	0x64b6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd16> @ imm = #0x12
    64a2: eef0 5a46    	vmov.f32	s11, s12
    64a6: eef1 5ae5    	vsqrt.f32	s11, s11
    64aa: eef1 5ae5    	vsqrt.f32	s11, s11
    64ae: eef1 5ae5    	vsqrt.f32	s11, s11
    64b2: eef1 5ae5    	vsqrt.f32	s11, s11
    64b6: ee80 9aa5    	vdiv.f32	s18, s1, s11
    64ba: eef4 1a61    	vcmp.f32	s3, s3
    64be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64c2: eec9 5a06    	vdiv.f32	s11, s18, s12
    64c6: ed9f 6aaf    	vldr	s12, [pc, #700]         @ 0x6784 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe4>
    64ca: eeb0 fa46    	vmov.f32	s30, s12
    64ce: bf7f         	itttt	vc
    64d0: ee11 0a90    	vmovvc	r0, s3
    64d4: f36b 001e    	bfivc	r0, r11, #0, #31
    64d8: ee0d 0a10    	vmovvc	s26, r0
    64dc: ee2d 4a04    	vmulvc.f32	s8, s26, s8
    64e0: bf7c         	itt	vc
    64e2: ee24 6a09    	vmulvc.f32	s12, s8, s18
    64e6: ee2d fa25    	vmulvc.f32	s30, s26, s11
    64ea: ee25 4a23    	vmul.f32	s8, s10, s7
    64ee: ee24 5a25    	vmul.f32	s10, s8, s11
    64f2: e041         	b	0x6578 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x82
    64f4: bf00         	nop
    64f6: bf00         	nop
    64f8: eeb0 6a6f    	vmov.f32	s12, s31
    64fc: eeb0 5a6f    	vmov.f32	s10, s31
    6500: eeb0 fa6f    	vmov.f32	s30, s31
    6504: e038         	b	0x6578 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x70
    6506: bf00         	nop
    6508: ac c5 a7 37  	.word	0x37a7c5ac
    650c: bd 37 06 36  	.word	0x360637bd
    6510: 0a d7 23 3d  	.word	0x3d23d70a
    6514: 17 b7 d1 38  	.word	0x38d1b717
    6518: 1c 38 88 77  	.word	0x7788381c
    651c: bf 13 e1 bf  	.word	0xbfe113bf
    6520: ee81 5a84    	vdiv.f32	s10, s3, s8
    6524: eef0 3a60    	vmov.f32	s7, s1
    6528: ee25 5a05    	vmul.f32	s10, s10, s10
    652c: ee25 5a05    	vmul.f32	s10, s10, s10
    6530: ee25 5a05    	vmul.f32	s10, s10, s10
    6534: ee25 5a05    	vmul.f32	s10, s10, s10
    6538: ee35 6a20    	vadd.f32	s12, s10, s1
    653c: eeb4 6a60    	vcmp.f32	s12, s1
    6540: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6544: d009         	beq	0x655a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdba> @ imm = #0x12
    6546: eef0 3a46    	vmov.f32	s7, s12
    654a: eef1 3ae3    	vsqrt.f32	s7, s7
    654e: eef1 3ae3    	vsqrt.f32	s7, s7
    6552: eef1 3ae3    	vsqrt.f32	s7, s7
    6556: eef1 3ae3    	vsqrt.f32	s7, s7
    655a: eec0 3aa3    	vdiv.f32	s7, s1, s7
    655e: ee61 5a85    	vmul.f32	s11, s3, s10
    6562: ee83 5a86    	vdiv.f32	s10, s7, s12
    6566: ee85 4a84    	vdiv.f32	s8, s11, s8
    656a: ee21 6aa3    	vmul.f32	s12, s3, s7
    656e: ee24 fa05    	vmul.f32	s30, s8, s10
    6572: bf00         	nop
    6574: bf00         	nop
    6576: bf00         	nop
    6578: ee3a da46    	vsub.f32	s26, s20, s12
    657c: eddd 3a19    	vldr	s7, [sp, #100]
    6580: ee47 3a24    	vmla.f32	s7, s14, s9
    6584: eddf cad5    	vldr	s25, [pc, #852]         @ 0x68dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x113c>
    6588: ee1d 0a10    	vmov	r0, s26
    658c: f020 4000    	bic	r0, r0, #0x80000000
    6590: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6594: da07         	bge	0x65a6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xe06> @ imm = #0xe
    6596: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    659a: ee8d 4a00    	vdiv.f32	s8, s26, s0
    659e: eeb0 4ac4    	vabs.f32	s8, s8
    65a2: fec4 ca2f    	vmaxnm.f32	s25, s8, s31
    65a6: ed9f 0b68    	vldr	d0, [pc, #416]          @ 0x6748 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfa8>
    65aa: eeb7 9acb    	vcvt.f64.f32	d9, s22
    65ae: eddd 8a0f    	vldr	s17, [sp, #60]
    65b2: ed9d 4b10    	vldr	d4, [sp, #64]
    65b6: eeb0 ca6a    	vmov.f32	s24, s21
    65ba: eeb0 6a6f    	vmov.f32	s12, s31
    65be: ee02 4b00    	vmla.f64	d4, d2, d0
    65c2: ed9f 0b63    	vldr	d0, [pc, #396]          @ 0x6750 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfb0>
    65c6: ee09 4b00    	vmla.f64	d4, d9, d0
    65ca: ed9f 0ac5    	vldr	s0, [pc, #788]          @ 0x68e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1140>
    65ce: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    65d2: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    65d6: ed9f 4a64    	vldr	s8, [pc, #400]          @ 0x6768 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfc8>
    65da: eef0 4a6f    	vmov.f32	s9, s31
    65de: ee42 8a2a    	vmla.f32	s17, s4, s21
    65e2: ed9d 2a0e    	vldr	s4, [sp, #56]
    65e6: ee0a 2a04    	vmla.f32	s4, s20, s8
    65ea: ed9f 4abe    	vldr	s8, [pc, #760]          @ 0x68e4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1144>
    65ee: ee63 2a84    	vmul.f32	s5, s7, s8
    65f2: ee0b 2a00    	vmla.f32	s4, s22, s0
    65f6: ed9d 0a16    	vldr	s0, [sp, #88]
    65fa: eeb4 0a68    	vcmp.f32	s0, s17
    65fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6602: fe30 4a28    	vselgt.f32	s8, s0, s17
    6606: ed9d 0a18    	vldr	s0, [sp, #96]
    660a: ee32 2a22    	vadd.f32	s4, s4, s5
    660e: eeb4 4a40    	vcmp.f32	s8, s0
    6612: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6616: eeb5 2a40    	vcmp.f32	s4, #0
    661a: eef0 5ac2    	vabs.f32	s11, s4
    661e: eeb0 2a6f    	vmov.f32	s4, s31
    6622: fe70 aa04    	vselgt.f32	s21, s0, s8
    6626: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    662a: bf48         	it	mi
    662c: eeb0 2a6b    	vmovmi.f32	s4, s23
    6630: eef0 ba6f    	vmov.f32	s23, s31
    6634: eef4 5a6e    	vcmp.f32	s11, s29
    6638: fe30 4a82    	vselgt.f32	s8, s1, s4
    663c: eeb0 2a6f    	vmov.f32	s4, s31
    6640: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6644: eddf eaa8    	vldr	s29, [pc, #672]         @ 0x68e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1148>
    6648: f280 80ca    	bge.w	0x67e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x194
    664c: eeb0 6a6f    	vmov.f32	s12, s31
    6650: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    6654: ed9f 0a45    	vldr	s0, [pc, #276]          @ 0x676c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfcc>
    6658: eef4 5a40    	vcmp.f32	s11, s0
    665c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6660: d920         	bls	0x66a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xf04> @ imm = #0x40
    6662: ed9f 0a43    	vldr	s0, [pc, #268]          @ 0x6770 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd0>
    6666: eef4 5a40    	vcmp.f32	s11, s0
    666a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    666e: d90f         	bls	0x6690 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xef0> @ imm = #0x1e
    6670: ed9f 0a40    	vldr	s0, [pc, #256]          @ 0x6774 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd4>
    6674: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    6678: ee35 6a80    	vadd.f32	s12, s11, s0
    667c: ed9f 0a3e    	vldr	s0, [pc, #248]          @ 0x6778 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd8>
    6680: e00c         	b	0x669c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xefc> @ imm = #0x18
    6682: bf00         	nop
    6684: d6 f8 e4 36  	.word	0x36e4f8d6
    6688: 83 c0 96 b8  	.word	0xb896c083
    668c: 00 bf 00 bf  	.word	0xbf00bf00
    6690: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x677c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfdc>
    6694: ee35 6a80    	vadd.f32	s12, s11, s0
    6698: ed9f 0a39    	vldr	s0, [pc, #228]          @ 0x6780 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe0>
    669c: ee06 2a00    	vmla.f32	s4, s12, s0
    66a0: ee24 6a00    	vmul.f32	s12, s8, s0
    66a4: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    66a8: eef1 ba46    	vneg.f32	s23, s12
    66ac: ee30 2a42    	vsub.f32	s4, s0, s4
    66b0: fe82 4a2f    	vmaxnm.f32	s8, s4, s31
    66b4: eeb5 4a40    	vcmp.f32	s8, #0
    66b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66bc: d94c         	bls	0x6758 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfb8> @ imm = #0x98
    66be: eeb0 2aea    	vabs.f32	s4, s21
    66c2: eeb4 2a44    	vcmp.f32	s4, s8
    66c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66ca: d95d         	bls	0x6788 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe8> @ imm = #0xba
    66cc: ee84 2a02    	vdiv.f32	s4, s8, s4
    66d0: eef0 4a60    	vmov.f32	s9, s1
    66d4: ee22 6a02    	vmul.f32	s12, s4, s4
    66d8: ee26 6a06    	vmul.f32	s12, s12, s12
    66dc: ee26 6a06    	vmul.f32	s12, s12, s12
    66e0: ee66 5a06    	vmul.f32	s11, s12, s12
    66e4: ee35 6aa0    	vadd.f32	s12, s11, s1
    66e8: eeb4 6a60    	vcmp.f32	s12, s1
    66ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66f0: d009         	beq	0x6706 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xf66> @ imm = #0x12
    66f2: eef0 4a46    	vmov.f32	s9, s12
    66f6: eef1 4ae4    	vsqrt.f32	s9, s9
    66fa: eef1 4ae4    	vsqrt.f32	s9, s9
    66fe: eef1 4ae4    	vsqrt.f32	s9, s9
    6702: eef1 4ae4    	vsqrt.f32	s9, s9
    6706: eec0 9aa4    	vdiv.f32	s19, s1, s9
    670a: ee22 2a25    	vmul.f32	s4, s4, s11
    670e: eef4 aa6a    	vcmp.f32	s21, s21
    6712: ee89 9a86    	vdiv.f32	s18, s19, s12
    6716: ed9f 6a1b    	vldr	s12, [pc, #108]         @ 0x6784 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe4>
    671a: eef0 4a46    	vmov.f32	s9, s12
    671e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6722: bf7f         	itttt	vc
    6724: ee1a 0a90    	vmovvc	r0, s21
    6728: f36b 001e    	bfivc	r0, r11, #0, #31
    672c: ee04 0a90    	vmovvc	s9, r0
    6730: ee24 4a84    	vmulvc.f32	s8, s9, s8
    6734: bf7c         	itt	vc
    6736: ee24 6a29    	vmulvc.f32	s12, s8, s19
    673a: ee64 4a89    	vmulvc.f32	s9, s9, s18
    673e: ee22 2a09    	vmul.f32	s4, s4, s18
    6742: e04d         	b	0x67e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x9a
    6744: bf00         	nop
    6746: bf00         	nop
    6748: 15 be b6 e5  	.word	0xe5b6be15
    674c: 6d 7e c0 bf  	.word	0xbfc07e6d
    6750: 67 42 87 92  	.word	0x92874267
    6754: ba 86 d4 bf  	.word	0xbfd486ba
    6758: eeb0 6a6f    	vmov.f32	s12, s31
    675c: eeb0 2a6f    	vmov.f32	s4, s31
    6760: eef0 4a6f    	vmov.f32	s9, s31
    6764: e03c         	b	0x67e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x78
    6766: bf00         	nop
    6768: d6 f8 e4 36  	.word	0x36e4f8d6
    676c: 7c f2 b0 3a  	.word	0x3ab0f27c
    6770: a6 9b c4 3b  	.word	0x3bc49ba6
    6774: a6 9b c4 bb  	.word	0xbbc49ba6
    6778: 79 78 b0 43  	.word	0x43b07879
    677c: 7c f2 b0 ba  	.word	0xbab0f27c
    6780: 53 4a a1 43  	.word	0x43a14a53
    6784: 00 00 c0 7f  	.word	0x7fc00000
    6788: ee8a 2a84    	vdiv.f32	s4, s21, s8
    678c: eef0 4a60    	vmov.f32	s9, s1
    6790: ee22 2a02    	vmul.f32	s4, s4, s4
    6794: ee22 2a02    	vmul.f32	s4, s4, s4
    6798: ee22 2a02    	vmul.f32	s4, s4, s4
    679c: ee22 2a02    	vmul.f32	s4, s4, s4
    67a0: ee32 6a20    	vadd.f32	s12, s4, s1
    67a4: eeb4 6a60    	vcmp.f32	s12, s1
    67a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67ac: d009         	beq	0x67c2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1022> @ imm = #0x12
    67ae: eef0 4a46    	vmov.f32	s9, s12
    67b2: eef1 4ae4    	vsqrt.f32	s9, s9
    67b6: eef1 4ae4    	vsqrt.f32	s9, s9
    67ba: eef1 4ae4    	vsqrt.f32	s9, s9
    67be: eef1 4ae4    	vsqrt.f32	s9, s9
    67c2: eec0 4aa4    	vdiv.f32	s9, s1, s9
    67c6: ee6a 5a82    	vmul.f32	s11, s21, s4
    67ca: ee84 2a86    	vdiv.f32	s4, s9, s12
    67ce: ee85 4a84    	vdiv.f32	s8, s11, s8
    67d2: ee2a 6aa4    	vmul.f32	s12, s21, s9
    67d6: ee64 4a02    	vmul.f32	s9, s8, s4
    67da: bf00         	nop
    67dc: bf00         	nop
    67de: bf00         	nop
    67e0: ee3b 9a46    	vsub.f32	s18, s22, s12
    67e4: eddf 9a3d    	vldr	s19, [pc, #244]         @ 0x68dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x113c>
    67e8: ee19 0a10    	vmov	r0, s18
    67ec: f020 4000    	bic	r0, r0, #0x80000000
    67f0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    67f4: da17         	bge	0x6826 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1086> @ imm = #0x2e
    67f6: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    67fa: eef4 ca6c    	vcmp.f32	s25, s25
    67fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6802: ee89 4a00    	vdiv.f32	s8, s18, s0
    6806: eeb0 4ac4    	vabs.f32	s8, s8
    680a: fe14 6a2c    	vselvs.f32	s12, s8, s25
    680e: eeb4 4a44    	vcmp.f32	s8, s8
    6812: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6816: fe16 4a04    	vselvs.f32	s8, s12, s8
    681a: eeb4 6a44    	vcmp.f32	s12, s8
    681e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6822: fe76 9a04    	vselgt.f32	s19, s12, s8
    6826: eddf 5aef    	vldr	s11, [pc, #956]         @ 0x6be4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1444>
    682a: ed9d 0a0c    	vldr	s0, [sp, #48]
    682e: ee2b 6a25    	vmul.f32	s12, s22, s11
    6832: ee36 4a00    	vadd.f32	s8, s12, s0
    6836: ed9f 0aec    	vldr	s0, [pc, #944]          @ 0x6be8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1448>
    683a: ee03 4a80    	vmla.f32	s8, s7, s0
    683e: ed9d 0a0b    	vldr	s0, [sp, #44]
    6842: ee36 6a00    	vadd.f32	s12, s12, s0
    6846: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    684a: ee03 6ae5    	vmls.f32	s12, s7, s11
    684e: fec4 5a46    	vminnm.f32	s11, s8, s12
    6852: ee70 ca65    	vsub.f32	s25, s0, s11
    6856: eef8 5a00    	vmov.f32	s11, #-2.000000e+00
    685a: eef4 ca65    	vcmp.f32	s25, s11
    685e: eef0 5a6e    	vmov.f32	s11, s29
    6862: eef0 ea6f    	vmov.f32	s29, s31
    6866: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    686a: d945         	bls	0x68f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1158> @ imm = #0x8a
    686c: eef4 ca6c    	vcmp.f32	s25, s25
    6870: eef0 ea6f    	vmov.f32	s29, s31
    6874: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6878: eef0 7a4e    	vmov.f32	s15, s28
    687c: fe5f 5aac    	vselvs.f32	s11, s31, s25
    6880: eef5 5a40    	vcmp.f32	s11, #0
    6884: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6888: bfb8         	it	lt
    688a: eef0 ea65    	vmovlt.f32	s29, s11
    688e: eef0 5a60    	vmov.f32	s11, s1
    6892: eef5 ca40    	vcmp.f32	s25, #0
    6896: ee4e 5a80    	vmla.f32	s11, s29, s0
    689a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    689e: ee65 5a8e    	vmul.f32	s11, s11, s28
    68a2: ed9f ead2    	vldr	s28, [pc, #840]         @ 0x6bec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x144c>
    68a6: fec5 5a8e    	vmaxnm.f32	s11, s11, s28
    68aa: d511         	bpl	0x68d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1130> @ imm = #0x22
    68ac: eef0 ea60    	vmov.f32	s29, s1
    68b0: ee4c ea80    	vmla.f32	s29, s25, s0
    68b4: eeb0 0a67    	vmov.f32	s0, s15
    68b8: ee6e caa7    	vmul.f32	s25, s29, s15
    68bc: eef4 ca4e    	vcmp.f32	s25, s28
    68c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68c4: dd14         	ble	0x68f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1150> @ imm = #0x28
    68c6: eddf eaca    	vldr	s29, [pc, #808]         @ 0x6bf0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1450>
    68ca: e013         	b	0x68f4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1154> @ imm = #0x26
    68cc: bf00         	nop
    68ce: bf00         	nop
    68d0: eef0 ea6f    	vmov.f32	s29, s31
    68d4: eeb0 ea67    	vmov.f32	s28, s15
    68d8: e00e         	b	0x68f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1158> @ imm = #0x1c
    68da: bf00         	nop
    68dc: 00 00 80 7f  	.word	0x7f800000
    68e0: af e6 27 b9  	.word	0xb927e6af
    68e4: 79 2e 02 39  	.word	0x39022e79
    68e8: 95 bf d6 33  	.word	0x33d6bf95
    68ec: 00 bf 00 bf  	.word	0xbf00bf00
    68f0: eef0 ea6f    	vmov.f32	s29, s31
    68f4: eeb0 ea40    	vmov.f32	s28, s0
    68f8: ed9f 0ab6    	vldr	s0, [pc, #728]          @ 0x6bd4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1434>
    68fc: eddd ca0d    	vldr	s25, [sp, #52]
    6900: ee4b ca00    	vmla.f32	s25, s22, s0
    6904: ee7c cae2    	vsub.f32	s25, s25, s5
    6908: ee53 caa5    	vnmls.f32	s25, s7, s11
    690c: ee1c 0a90    	vmov	r0, s25
    6910: f020 4000    	bic	r0, r0, #0x80000000
    6914: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6918: f6bf ad1e    	bge.w	0x6358 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb8> @ imm = #-0x5c4
    691c: ed9f 0ab5    	vldr	s0, [pc, #724]          @ 0x6bf4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1454>
    6920: eef4 9a69    	vcmp.f32	s19, s19
    6924: eecc 2a80    	vdiv.f32	s5, s25, s0
    6928: ed9d 0a0a    	vldr	s0, [sp, #40]
    692c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6930: eef0 2ae2    	vabs.f32	s5, s5
    6934: fe52 9aa9    	vselvs.f32	s19, s5, s19
    6938: eef4 2a62    	vcmp.f32	s5, s5
    693c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6940: fe59 2aa2    	vselvs.f32	s5, s19, s5
    6944: eef4 9a62    	vcmp.f32	s19, s5
    6948: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    694c: fe79 9aa2    	vselgt.f32	s19, s19, s5
    6950: eef4 9a40    	vcmp.f32	s19, s0
    6954: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6958: f57f acfe    	bpl.w	0x6358 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb8> @ imm = #-0x604
    695c: ed9d 0a17    	vldr	s0, [sp, #92]
    6960: eddf 2a98    	vldr	s5, [pc, #608]          @ 0x6bc4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1424>
    6964: eeb4 0a6d    	vcmp.f32	s0, s27
    6968: eddf 6a97    	vldr	s13, [pc, #604]         @ 0x6bc8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1428>
    696c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6970: eef4 da41    	vcmp.f32	s27, s2
    6974: ed9d 0a18    	vldr	s0, [sp, #96]
    6978: fe32 7aa6    	vselgt.f32	s14, s5, s13
    697c: f44f 7050    	mov.w	r0, #0x340
    6980: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6984: eeb4 0a68    	vcmp.f32	s0, s17
    6988: ed9d 0a16    	vldr	s0, [sp, #88]
    698c: fe37 7a26    	vselgt.f32	s14, s14, s13
    6990: f64d 0270    	movw	r2, #0xd870
    6994: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6998: eef4 8a40    	vcmp.f32	s17, s0
    699c: f2c0 0200    	movt	r2, #0x0
    69a0: fe72 2aa6    	vselgt.f32	s5, s5, s13
    69a4: f04f 5b7e    	mov.w	r11, #0x3f800000
    69a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    69ac: eeb4 4a46    	vcmp.f32	s8, s12
    69b0: fe32 4aa6    	vselgt.f32	s8, s5, s13
    69b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    69b8: bf88         	it	hi
    69ba: f44f 7060    	movhi.w	r0, #0x380
    69be: 2910         	cmp	r1, #0x10
    69c0: eddd 2a03    	vldr	s5, [sp, #12]
    69c4: 4410         	add	r0, r2
    69c6: 9a00         	ldr	r2, [sp]
    69c8: ed90 6b08    	vldr	d6, [r0, #32]
    69cc: edc2 2a02    	vstr	s5, [r2, #8]
    69d0: eddd 2a02    	vldr	s5, [sp, #8]
    69d4: ed8d 6b1a    	vstr	d6, [sp, #104]
    69d8: edc2 2a03    	vstr	s5, [r2, #12]
    69dc: ed90 6b0a    	vldr	d6, [r0, #40]
    69e0: ed82 aa04    	vstr	s20, [r2, #16]
    69e4: ed8d 6b1c    	vstr	d6, [sp, #112]
    69e8: ed82 ba05    	vstr	s22, [r2, #20]
    69ec: ed90 6b0c    	vldr	d6, [r0, #48]
    69f0: edc2 3a06    	vstr	s7, [r2, #24]
    69f4: 9801         	ldr	r0, [sp, #0x4]
    69f6: 61d0         	str	r0, [r2, #0x1c]
    69f8: f000 80c6    	beq.w	0x6b88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13e8> @ imm = #0x18c
    69fc: ee27 5a05    	vmul.f32	s10, s14, s10
    6a00: ed9f 0a72    	vldr	s0, [pc, #456]          @ 0x6bcc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x142c>
    6a04: ee63 2a0f    	vmul.f32	s5, s6, s30
    6a08: eddf 8a6c    	vldr	s17, [pc, #432]         @ 0x6bbc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x141c>
    6a0c: eeb7 6bc6    	vcvt.f32.f64	s12, d6
    6a10: f1ba 0f10    	cmp.w	r10, #0x10
    6a14: ee25 3a2f    	vmul.f32	s6, s10, s31
    6a18: f10e 0e01    	add.w	lr, lr, #0x1
    6a1c: ee22 fa80    	vmul.f32	s30, s5, s0
    6a20: ed9f 0a6b    	vldr	s0, [pc, #428]          @ 0x6bd0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1430>
    6a24: ee05 fa00    	vmla.f32	s30, s10, s0
    6a28: ed9f 5a67    	vldr	s10, [pc, #412]         @ 0x6bc8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1428>
    6a2c: eeb0 7a43    	vmov.f32	s14, s6
    6a30: ee02 7a85    	vmla.f32	s14, s5, s10
    6a34: ee23 5aae    	vmul.f32	s10, s7, s29
    6a38: ed9f 0a66    	vldr	s0, [pc, #408]          @ 0x6bd4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1434>
    6a3c: ee6b 4aa4    	vmul.f32	s9, s23, s9
    6a40: eef0 ea6a    	vmov.f32	s29, s21
    6a44: ee24 2a02    	vmul.f32	s4, s8, s4
    6a48: eeb0 4a40    	vmov.f32	s8, s0
    6a4c: ee05 4a46    	vmls.f32	s8, s10, s12
    6a50: ed9f 6a62    	vldr	s12, [pc, #392]         @ 0x6bdc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x143c>
    6a54: ee24 8a86    	vmul.f32	s16, s9, s12
    6a58: ed9f 6a61    	vldr	s12, [pc, #388]         @ 0x6be0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1440>
    6a5c: ee02 8a06    	vmla.f32	s16, s4, s12
    6a60: ed9f 6a5d    	vldr	s12, [pc, #372]         @ 0x6bd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1438>
    6a64: ee02 3ae8    	vmls.f32	s6, s5, s17
    6a68: 4651         	mov	r1, r10
    6a6a: ee62 7a2f    	vmul.f32	s15, s4, s31
    6a6e: edcd 3a19    	vstr	s7, [sp, #100]
    6a72: ee62 6a06    	vmul.f32	s13, s4, s12
    6a76: ed9d 2b1a    	vldr	d2, [sp, #104]
    6a7a: ee44 6ae8    	vmls.f32	s13, s9, s17
    6a7e: ed8d aa1a    	vstr	s20, [sp, #104]
    6a82: eef7 bbc2    	vcvt.f32.f64	s23, d2
    6a86: ee44 7ac0    	vmls.f32	s15, s9, s0
    6a8a: eeb0 aa61    	vmov.f32	s20, s3
    6a8e: ed9d 2b1c    	vldr	d2, [sp, #112]
    6a92: ee6b 8ac5    	vnmul.f32	s17, s23, s10
    6a96: ed8d ba1c    	vstr	s22, [sp, #112]
    6a9a: eeb7 6bc2    	vcvt.f32.f64	s12, d2
    6a9e: ee75 ba84    	vadd.f32	s23, s11, s8
    6aa2: eef1 4a4d    	vneg.f32	s9, s26
    6aa6: ee65 da06    	vmul.f32	s27, s10, s12
    6aaa: eeb1 9a49    	vneg.f32	s18, s18
    6aae: eeb1 2a6c    	vneg.f32	s4, s25
    6ab2: f77f aaaf    	ble.w	0x6014 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x874> @ imm = #-0xaa2
    6ab6: e067         	b	0x6b88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13e8> @ imm = #0xce
    6ab8: 2401         	movs	r4, #0x1
    6aba: ed9f 0a50    	vldr	s0, [pc, #320]          @ 0x6bfc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x145c>
    6abe: eef4 9a40    	vcmp.f32	s19, s0
    6ac2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ac6: f63f ac30    	bhi.w	0x632a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb8a> @ imm = #-0x7a0
    6aca: f7ff bbd9    	b.w	0x6280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xae0> @ imm = #-0x84e
    6ace: bf00         	nop
    6ad0: eddd 9a0a    	vldr	s19, [sp, #40]
    6ad4: ed9f 0a49    	vldr	s0, [pc, #292]          @ 0x6bfc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x145c>
    6ad8: eef4 9a40    	vcmp.f32	s19, s0
    6adc: 2000         	movs	r0, #0x0
    6ade: eeb0 0ae6    	vabs.f32	s0, s13
    6ae2: ed9f 1a45    	vldr	s2, [pc, #276]          @ 0x6bf8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1458>
    6ae6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6aea: bf98         	it	ls
    6aec: 2001         	movls	r0, #0x1
    6aee: ed9d 2a06    	vldr	s4, [sp, #24]
    6af2: 2200         	movs	r2, #0x0
    6af4: eeb4 2a41    	vcmp.f32	s4, s2
    6af8: 2100         	movs	r1, #0x0
    6afa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6afe: bf98         	it	ls
    6b00: 2201         	movls	r2, #0x1
    6b02: eeb4 0a41    	vcmp.f32	s0, s2
    6b06: f10e 0e01    	add.w	lr, lr, #0x1
    6b0a: eeb0 0ac7    	vabs.f32	s0, s14
    6b0e: 4010         	ands	r0, r2
    6b10: 2200         	movs	r2, #0x0
    6b12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b16: bf98         	it	ls
    6b18: 2201         	movls	r2, #0x1
    6b1a: eeb4 0a41    	vcmp.f32	s0, s2
    6b1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b22: bf98         	it	ls
    6b24: 2101         	movls	r1, #0x1
    6b26: 4010         	ands	r0, r2
    6b28: ea00 0401    	and.w	r4, r0, r1
    6b2c: 9804         	ldr	r0, [sp, #0x10]
    6b2e: ed9d 0a09    	vldr	s0, [sp, #36]
    6b32: ed80 0a02    	vstr	s0, [r0, #8]
    6b36: ed9d 0a07    	vldr	s0, [sp, #28]
    6b3a: ed80 0a03    	vstr	s0, [r0, #12]
    6b3e: 9805         	ldr	r0, [sp, #0x14]
    6b40: edc0 9a00    	vstr	s19, [r0]
    6b44: f880 e004    	strb.w	lr, [r0, #0x4]
    6b48: 7144         	strb	r4, [r0, #0x5]
    6b4a: b02e         	add	sp, #0xb8
    6b4c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    6b50: b001         	add	sp, #0x4
    6b52: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    6b56: bdf0         	pop	{r4, r5, r6, r7, pc}
    6b58: 9905         	ldr	r1, [sp, #0x14]
    6b5a: 2000         	movs	r0, #0x0
    6b5c: edc1 9a00    	vstr	s19, [r1]
    6b60: f881 e004    	strb.w	lr, [r1, #0x4]
    6b64: 7148         	strb	r0, [r1, #0x5]
    6b66: e7f0         	b	0x6b4a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13aa> @ imm = #-0x20
    6b68: 2400         	movs	r4, #0x0
    6b6a: e7df         	b	0x6b2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x138c> @ imm = #-0x42
    6b6c: bf00         	nop
    6b6e: bf00         	nop
    6b70: f24d 70b0    	movw	r0, #0xd7b0
    6b74: f24e 0200    	movw	r2, #0xe000
    6b78: f2c0 0000    	movt	r0, #0x0
    6b7c: f2c0 0200    	movt	r2, #0x0
    6b80: a922         	add	r1, sp, #0x88
    6b82: f005 f819    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #0x5032
    6b86: bf00         	nop
    6b88: f64d 0046    	movw	r0, #0xd846
    6b8c: f64d 4230    	movw	r2, #0xdc30
    6b90: f2c0 0000    	movt	r0, #0x0
    6b94: f2c0 0200    	movt	r2, #0x0
    6b98: 2128         	movs	r1, #0x28
    6b9a: f005 f811    	bl	0xbbc0 <core::panicking::panic> @ imm = #0x5022
    6b9e: bf00         	nop
    6ba0: eddf 2a07    	vldr	s5, [pc, #28]           @ 0x6bc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1420>
    6ba4: eeb0 6a62    	vmov.f32	s12, s5
    6ba8: f7fe bf15    	b.w	0x59d6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x236> @ imm = #-0x11d6
    6bac: bf00         	nop
    6bae: bf00         	nop
    6bb0: ed9f 5a03    	vldr	s10, [pc, #12]          @ 0x6bc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1420>
    6bb4: eeb0 4a45    	vmov.f32	s8, s10
    6bb8: f7ff b88d    	b.w	0x5cd6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x536> @ imm = #-0xee6
    6bbc: d6 f8 e4 36  	.word	0x36e4f8d6
    6bc0: 00 00 c0 7f  	.word	0x7fc00000
    6bc4: 79 61 2e c3  	.word	0xc32e6179
    6bc8: 00 00 00 80  	.word	0x80000000
    6bcc: 83 c0 96 38  	.word	0x3896c083
    6bd0: fc 9d 08 bf  	.word	0xbf089dfc
    6bd4: 79 2e 02 39  	.word	0x39022e79
    6bd8: 6f f3 03 be  	.word	0xbe03f36f
    6bdc: af e6 27 39  	.word	0x3927e6af
    6be0: d5 35 a4 be  	.word	0xbea435d5
    6be4: 51 e6 7f 3f  	.word	0x3f7fe651
    6be8: 99 76 cd 39  	.word	0x39cd7699
    6bec: 95 bf d6 33  	.word	0x33d6bf95
    6bf0: 2b 18 15 3b  	.word	0x3b15182b
    6bf4: 0a d7 23 3c  	.word	0x3c23d70a
    6bf8: ac c5 a7 37  	.word	0x37a7c5ac
    6bfc: 17 b7 d1 38  	.word	0x38d1b717

00006c00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>>:
    6c00: b5f0         	push	{r4, r5, r6, r7, lr}
    6c02: af03         	add	r7, sp, #0xc
    6c04: e92d 0f00    	push.w	{r8, r9, r10, r11}
    6c08: b081         	sub	sp, #0x4
    6c0a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    6c0e: b08a         	sub	sp, #0x28
    6c10: ed9f 3aed    	vldr	s6, [pc, #948]          @ 0x6fc8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3c8>
    6c14: ee22 2a03    	vmul.f32	s4, s4, s6
    6c18: ed9f 3aec    	vldr	s6, [pc, #944]          @ 0x6fcc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3cc>
    6c1c: ed9f 4aed    	vldr	s8, [pc, #948]          @ 0x6fd4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d4>
    6c20: ed9f 5aeb    	vldr	s10, [pc, #940]         @ 0x6fd0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d0>
    6c24: ee32 3a03    	vadd.f32	s6, s4, s6
    6c28: ee32 4a04    	vadd.f32	s8, s4, s8
    6c2c: ee83 ba05    	vdiv.f32	s22, s6, s10
    6c30: ee84 ca05    	vdiv.f32	s24, s8, s10
    6c34: eeb4 ba4c    	vcmp.f32	s22, s24
    6c38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c3c: f200 81b0    	bhi.w	0x6fa0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3a0> @ imm = #0x360
    6c40: eeb0 8b41    	vmov.f64	d8, d1
    6c44: 4681         	mov	r9, r0
    6c46: ed91 1a05    	vldr	s2, [r1, #20]
    6c4a: a806         	add	r0, sp, #0x18
    6c4c: ed91 4a06    	vldr	s8, [r1, #24]
    6c50: ed8d 1a02    	vstr	s2, [sp, #8]
    6c54: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    6c58: ed8d 4a01    	vstr	s8, [sp, #4]
    6c5c: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    6c60: ed91 ea07    	vldr	s28, [r1, #28]
    6c64: ed9f 3bd4    	vldr	d3, [pc, #848]          @ 0x6fb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3b8>
    6c68: eddf aadd    	vldr	s21, [pc, #884]         @ 0x6fe0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3e0>
    6c6c: 4614         	mov	r4, r2
    6c6e: ee01 8b03    	vmla.f64	d8, d1, d3
    6c72: 460e         	mov	r6, r1
    6c74: eeb7 1ace    	vcvt.f64.f32	d1, s28
    6c78: ed9f dad7    	vldr	s26, [pc, #860]         @ 0x6fd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d8>
    6c7c: ee04 8b43    	vmls.f64	d8, d4, d3
    6c80: ed9f fbcf    	vldr	d15, [pc, #828]         @ 0x6fc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3c0>
    6c84: eeb0 3b48    	vmov.f64	d3, d8
    6c88: ee01 3b0f    	vmla.f64	d3, d1, d15
    6c8c: ed9f 1ad3    	vldr	s2, [pc, #844]          @ 0x6fdc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3dc>
    6c90: ee62 ca01    	vmul.f32	s25, s4, s2
    6c94: eeb7 1bc3    	vcvt.f32.f64	s2, d3
    6c98: eeb0 9a6c    	vmov.f32	s18, s25
    6c9c: ee01 9a2a    	vmla.f32	s18, s2, s21
    6ca0: eef7 bbc0    	vcvt.f32.f64	s23, d0
    6ca4: eef0 0a6b    	vmov.f32	s1, s23
    6ca8: ee4e 0a4d    	vmls.f32	s1, s28, s26
    6cac: eeb4 ba49    	vcmp.f32	s22, s18
    6cb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6cb4: fe3b 0a09    	vselgt.f32	s0, s22, s18
    6cb8: eeb4 0a4c    	vcmp.f32	s0, s24
    6cbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6cc0: fe3c aa00    	vselgt.f32	s20, s24, s0
    6cc4: eeb0 0a4a    	vmov.f32	s0, s20
    6cc8: f000 f9a2    	bl	0x7010 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x344
    6ccc: a0c5         	adr	r0, #788 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x195>
    6cce: eeb4 9a4c    	vcmp.f32	s18, s24
    6cd2: 1d01         	adds	r1, r0, #0x4
    6cd4: 9100         	str	r1, [sp]
    6cd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6cda: bf48         	it	mi
    6cdc: 4608         	movmi	r0, r1
    6cde: eeb4 9a4b    	vcmp.f32	s18, s22
    6ce2: ed9d 0a06    	vldr	s0, [sp, #24]
    6ce6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6cea: ee3e 1a40    	vsub.f32	s2, s28, s0
    6cee: ed90 0a00    	vldr	s0, [r0]
    6cf2: ed9f 2abe    	vldr	s4, [pc, #760]          @ 0x6fec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3ec>
    6cf6: 9404         	str	r4, [sp, #0x10]
    6cf8: fe30 0a02    	vselgt.f32	s0, s0, s4
    6cfc: ed9d 2a07    	vldr	s4, [sp, #28]
    6d00: ee11 0a10    	vmov	r0, s2
    6d04: ed9f 5aba    	vldr	s10, [pc, #744]         @ 0x6ff0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f0>
    6d08: ee20 2a02    	vmul.f32	s4, s0, s4
    6d0c: ed9d 0a08    	vldr	s0, [sp, #32]
    6d10: ee20 0a0d    	vmul.f32	s0, s0, s26
    6d14: f020 4000    	bic	r0, r0, #0x80000000
    6d18: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6d1c: db04         	blt	0x6d28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x128> @ imm = #0x8
    6d1e: eddf eab5    	vldr	s29, [pc, #724]         @ 0x6ff4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f4>
    6d22: e00b         	b	0x6d3c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x13c> @ imm = #0x16
    6d24: bf00         	nop
    6d26: bf00         	nop
    6d28: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    6d2c: ed9f 4ab2    	vldr	s8, [pc, #712]          @ 0x6ff8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f8>
    6d30: ee81 3a03    	vdiv.f32	s6, s2, s6
    6d34: eeb0 3ac3    	vabs.f32	s6, s6
    6d38: fec3 ea04    	vmaxnm.f32	s29, s6, s8
    6d3c: ee02 0a05    	vmla.f32	s0, s4, s10
    6d40: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    6d44: eeb1 1a41    	vneg.f32	s2, s2
    6d48: f04f 0800    	mov.w	r8, #0x0
    6d4c: 2400         	movs	r4, #0x0
    6d4e: eddf 0aab    	vldr	s1, [pc, #684]          @ 0x6ffc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3fc>
    6d52: ed9f 6aab    	vldr	s12, [pc, #684]         @ 0x7000 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    6d56: ad06         	add	r5, sp, #0x18
    6d58: ed9f daac    	vldr	s26, [pc, #688]         @ 0x700c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x40c>
    6d5c: 46c3         	mov	r11, r8
    6d5e: ee30 0a07    	vadd.f32	s0, s0, s14
    6d62: f1b8 0f10    	cmp.w	r8, #0x10
    6d66: bf18         	it	ne
    6d68: f10b 0b01    	addne.w	r11, r11, #0x1
    6d6c: 2100         	movs	r1, #0x0
    6d6e: ee10 0a10    	vmov	r0, s0
    6d72: eeb0 2ac0    	vabs.f32	s4, s0
    6d76: f020 4000    	bic	r0, r0, #0x80000000
    6d7a: eeb4 2a60    	vcmp.f32	s4, s1
    6d7e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6d82: f04f 0000    	mov.w	r0, #0x0
    6d86: bfa8         	it	ge
    6d88: 2001         	movge	r0, #0x1
    6d8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d8e: bf48         	it	mi
    6d90: 2101         	movmi	r1, #0x1
    6d92: 4308         	orrs	r0, r1
    6d94: f040 80ec    	bne.w	0x6f70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x370> @ imm = #0x1d8
    6d98: ee81 9a00    	vdiv.f32	s18, s2, s0
    6d9c: eef4 ea46    	vcmp.f32	s29, s12
    6da0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6da4: eeb0 2ac9    	vabs.f32	s4, s18
    6da8: d906         	bls	0x6db8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x1b8> @ imm = #0xc
    6daa: f1b8 0f10    	cmp.w	r8, #0x10
    6dae: d129         	bne	0x6e04 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x204> @ imm = #0x52
    6db0: e0e2         	b	0x6f78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x378> @ imm = #0x1c4
    6db2: bf00         	nop
    6db4: bf00         	nop
    6db6: bf00         	nop
    6db8: eeb0 0ace    	vabs.f32	s0, s28
    6dbc: ed9f 1a91    	vldr	s2, [pc, #580]          @ 0x7004 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x404>
    6dc0: 2000         	movs	r0, #0x0
    6dc2: eeb4 0a40    	vcmp.f32	s0, s0
    6dc6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6dca: fe17 0a00    	vselvs.f32	s0, s14, s0
    6dce: eeb4 0a47    	vcmp.f32	s0, s14
    6dd2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6dd6: fe30 0a07    	vselgt.f32	s0, s0, s14
    6dda: ee20 0a01    	vmul.f32	s0, s0, s2
    6dde: ed9f 1a8a    	vldr	s2, [pc, #552]          @ 0x7008 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x408>
    6de2: fe80 0a41    	vminnm.f32	s0, s0, s2
    6de6: eeb4 2a40    	vcmp.f32	s4, s0
    6dea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6dee: bf98         	it	ls
    6df0: 2001         	movls	r0, #0x1
    6df2: f1b8 0f10    	cmp.w	r8, #0x10
    6df6: bf1c         	itt	ne
    6df8: eeb4 2a40    	vcmpne.f32	s4, s0
    6dfc: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    6e00: f240 80bb    	bls.w	0x6f7a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x37a> @ imm = #0x176
    6e04: f04f 5a7e    	mov.w	r10, #0x3f800000
    6e08: ed8d 2a03    	vstr	s4, [sp, #12]
    6e0c: ed8d aa05    	vstr	s20, [sp, #20]
    6e10: e008         	b	0x6e24 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x224> @ imm = #0x10
    6e12: bf00         	nop
    6e14: bf00         	nop
    6e16: bf00         	nop
    6e18: f5aa 0a00    	sub.w	r10, r10, #0x800000
    6e1c: f1ba 5f66    	cmp.w	r10, #0x39800000
    6e20: f000 808e    	beq.w	0x6f40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x340> @ imm = #0x11c
    6e24: ee00 aa10    	vmov	s0, r10
    6e28: eef0 da4e    	vmov.f32	s27, s28
    6e2c: eeb0 1b48    	vmov.f64	d1, d8
    6e30: 4628         	mov	r0, r5
    6e32: eef0 9a6c    	vmov.f32	s19, s25
    6e36: ee49 da00    	vmla.f32	s27, s18, s0
    6e3a: eeb7 0aed    	vcvt.f64.f32	d0, s27
    6e3e: ee00 1b0f    	vmla.f64	d1, d0, d15
    6e42: eef0 0a6b    	vmov.f32	s1, s23
    6e46: ee4d 0a8d    	vmla.f32	s1, s27, s26
    6e4a: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    6e4e: ee40 9a2a    	vmla.f32	s19, s0, s21
    6e52: eeb4 ba69    	vcmp.f32	s22, s19
    6e56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e5a: fe3b 0a29    	vselgt.f32	s0, s22, s19
    6e5e: eeb4 0a4c    	vcmp.f32	s0, s24
    6e62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e66: fe3c aa00    	vselgt.f32	s20, s24, s0
    6e6a: eeb0 0a4a    	vmov.f32	s0, s20
    6e6e: f000 f8cf    	bl	0x7010 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x19e
    6e72: ed9d 0a06    	vldr	s0, [sp, #24]
    6e76: ee3d 1ac0    	vsub.f32	s2, s27, s0
    6e7a: ee11 0a10    	vmov	r0, s2
    6e7e: f020 4000    	bic	r0, r0, #0x80000000
    6e82: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6e86: dac7         	bge	0x6e18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x218> @ imm = #-0x72
    6e88: eeb3 0a08    	vmov.f32	s0, #2.400000e+01
    6e8c: ed9f 2a5a    	vldr	s4, [pc, #360]          @ 0x6ff8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f8>
    6e90: ee81 0a00    	vdiv.f32	s0, s2, s0
    6e94: eeb0 0ac0    	vabs.f32	s0, s0
    6e98: fe80 2a02    	vmaxnm.f32	s4, s0, s4
    6e9c: eeb4 2a6e    	vcmp.f32	s4, s29
    6ea0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ea4: d5b8         	bpl	0x6e18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x218> @ imm = #-0x90
    6ea6: a04f         	adr	r0, #316 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x2f9>
    6ea8: 9900         	ldr	r1, [sp]
    6eaa: eef4 9a4c    	vcmp.f32	s19, s24
    6eae: ed9f 3a4f    	vldr	s6, [pc, #316]          @ 0x6fec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3ec>
    6eb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6eb6: bf48         	it	mi
    6eb8: 4608         	movmi	r0, r1
    6eba: eef4 9a4b    	vcmp.f32	s19, s22
    6ebe: ed9d 0a02    	vldr	s0, [sp, #8]
    6ec2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ec6: ed86 0a05    	vstr	s0, [r6, #20]
    6eca: ed90 0a00    	vldr	s0, [r0]
    6ece: fe30 0a03    	vselgt.f32	s0, s0, s6
    6ed2: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    6ed6: ed9d 3a01    	vldr	s6, [sp, #4]
    6eda: ed86 3a06    	vstr	s6, [r6, #24]
    6ede: f1b8 0f10    	cmp.w	r8, #0x10
    6ee2: ed9d 4a07    	vldr	s8, [sp, #28]
    6ee6: ed9d 3a08    	vldr	s6, [sp, #32]
    6eea: ed9f 5a41    	vldr	s10, [pc, #260]         @ 0x6ff0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f0>
    6eee: ed9f 6a44    	vldr	s12, [pc, #272]         @ 0x7000 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    6ef2: edc6 da07    	vstr	s27, [r6, #28]
    6ef6: eddf 0a41    	vldr	s1, [pc, #260]          @ 0x6ffc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3fc>
    6efa: d014         	beq	0x6f26 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x326> @ imm = #0x28
    6efc: ee20 4a04    	vmul.f32	s8, s0, s8
    6f00: ed9f 0a35    	vldr	s0, [pc, #212]          @ 0x6fd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d8>
    6f04: ee23 0a00    	vmul.f32	s0, s6, s0
    6f08: eeb0 ea6d    	vmov.f32	s28, s27
    6f0c: eeb1 1a41    	vneg.f32	s2, s2
    6f10: eef0 ea42    	vmov.f32	s29, s4
    6f14: ee04 0a05    	vmla.f32	s0, s8, s10
    6f18: f1bb 0f10    	cmp.w	r11, #0x10
    6f1c: f104 0401    	add.w	r4, r4, #0x1
    6f20: 46d8         	mov	r8, r11
    6f22: f77f af1c    	ble.w	0x6d5e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x15e> @ imm = #-0x1c8
    6f26: f64d 0046    	movw	r0, #0xd846
    6f2a: f64d 4230    	movw	r2, #0xdc30
    6f2e: f2c0 0000    	movt	r0, #0x0
    6f32: f2c0 0200    	movt	r2, #0x0
    6f36: 2128         	movs	r1, #0x28
    6f38: f004 fe42    	bl	0xbbc0 <core::panicking::panic> @ imm = #0x4c84
    6f3c: bf00         	nop
    6f3e: bf00         	nop
    6f40: ed9f 0a2f    	vldr	s0, [pc, #188]          @ 0x7000 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    6f44: 3401         	adds	r4, #0x1
    6f46: eef4 ea40    	vcmp.f32	s29, s0
    6f4a: 2000         	movs	r0, #0x0
    6f4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f50: 9904         	ldr	r1, [sp, #0x10]
    6f52: d809         	bhi	0x6f68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x368> @ imm = #0x12
    6f54: ed9f 0a2c    	vldr	s0, [pc, #176]          @ 0x7008 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x408>
    6f58: ed9d 1a03    	vldr	s2, [sp, #12]
    6f5c: eeb4 1a40    	vcmp.f32	s2, s0
    6f60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f64: bf98         	it	ls
    6f66: 2001         	movls	r0, #0x1
    6f68: ed9d aa05    	vldr	s20, [sp, #20]
    6f6c: e006         	b	0x6f7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x37c> @ imm = #0xc
    6f6e: bf00         	nop
    6f70: 2000         	movs	r0, #0x0
    6f72: e005         	b	0x6f80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x380> @ imm = #0xa
    6f74: bf00         	nop
    6f76: bf00         	nop
    6f78: 2000         	movs	r0, #0x0
    6f7a: 9904         	ldr	r1, [sp, #0x10]
    6f7c: ed81 aa04    	vstr	s20, [r1, #16]
    6f80: edc9 ea00    	vstr	s29, [r9]
    6f84: f889 4004    	strb.w	r4, [r9, #0x4]
    6f88: f889 0005    	strb.w	r0, [r9, #0x5]
    6f8c: b00a         	add	sp, #0x28
    6f8e: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    6f92: b001         	add	sp, #0x4
    6f94: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    6f98: bdf0         	pop	{r4, r5, r6, r7, pc}
    6f9a: bf00         	nop
    6f9c: bf00         	nop
    6f9e: bf00         	nop
    6fa0: f24d 70b0    	movw	r0, #0xd7b0
    6fa4: f24e 0200    	movw	r2, #0xe000
    6fa8: f2c0 0000    	movt	r0, #0x0
    6fac: f2c0 0200    	movt	r2, #0x0
    6fb0: a906         	add	r1, sp, #0x18
    6fb2: f004 fe01    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #0x4c02
    6fb6: bf00         	nop
    6fb8: e6 a7 5c a0  	.word	0xa05ca7e6
    6fbc: 06 41 d9 3f  	.word	0x3fd94106
    6fc0: 19 d5 65 36  	.word	0x3665d519
    6fc4: d0 6e 95 bf  	.word	0xbf956ed0
    6fc8: 00 80 bb 47  	.word	0x47bb8000
    6fcc: 00 24 f4 ca  	.word	0xcaf42400
    6fd0: 00 a0 0c 48  	.word	0x480ca000
    6fd4: 00 24 f4 4a  	.word	0x4af42400
    6fd8: cd 1e 2c 3e  	.word	0x3e2c1ecd
    6fdc: df ff e7 36  	.word	0x36e7ffdf
    6fe0: d2 4e da 43  	.word	0x43da4ed2
    6fe4: 00 00 00 80  	.word	0x80000000
    6fe8: d2 4e da c3  	.word	0xc3da4ed2
    6fec: 00 00 00 80  	.word	0x80000000
    6ff0: 82 76 ab bc  	.word	0xbcab7682
    6ff4: 00 00 80 7f  	.word	0x7f800000
    6ff8: 00 00 00 00  	.word	0x00000000
    6ffc: 08 e5 3c 1e  	.word	0x1e3ce508
    7000: 17 b7 d1 38  	.word	0x38d1b717
    7004: bd 37 06 36  	.word	0x360637bd
    7008: ac c5 a7 37  	.word	0x37a7c5ac
    700c: cd 1e 2c be  	.word	0xbe2c1ecd

00007010 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>>:
    7010: b580         	push	{r7, lr}
    7012: 466f         	mov	r7, sp
    7014: eeb0 2ac0    	vabs.f32	s4, s0
    7018: eeb3 1a05    	vmov.f32	s2, #2.100000e+01
    701c: eeb4 2a41    	vcmp.f32	s4, s2
    7020: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7024: d93c         	bls	0x70a0 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x90> @ imm = #0x78
    7026: ee81 2a02    	vdiv.f32	s4, s2, s4
    702a: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    702e: ee22 3a02    	vmul.f32	s6, s4, s4
    7032: eeb0 6a45    	vmov.f32	s12, s10
    7036: ee23 3a03    	vmul.f32	s6, s6, s6
    703a: ee23 3a03    	vmul.f32	s6, s6, s6
    703e: ee23 3a03    	vmul.f32	s6, s6, s6
    7042: ee33 4a05    	vadd.f32	s8, s6, s10
    7046: eeb4 4a45    	vcmp.f32	s8, s10
    704a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    704e: d009         	beq	0x7064 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x54> @ imm = #0x12
    7050: eeb0 6a44    	vmov.f32	s12, s8
    7054: eeb1 6ac6    	vsqrt.f32	s12, s12
    7058: eeb1 6ac6    	vsqrt.f32	s12, s12
    705c: eeb1 6ac6    	vsqrt.f32	s12, s12
    7060: eeb1 6ac6    	vsqrt.f32	s12, s12
    7064: ee10 1a10    	vmov	r1, s0
    7068: f04f 527e    	mov.w	r2, #0x3f800000
    706c: ee85 5a06    	vdiv.f32	s10, s10, s12
    7070: ee22 2a03    	vmul.f32	s4, s4, s6
    7074: f362 011e    	bfi	r1, r2, #0, #31
    7078: eeb4 0a40    	vcmp.f32	s0, s0
    707c: ee07 1a10    	vmov	s14, r1
    7080: ee85 4a04    	vdiv.f32	s8, s10, s8
    7084: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7088: ed9f 0a76    	vldr	s0, [pc, #472]          @ 0x7264 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x254>
    708c: ee27 1a01    	vmul.f32	s2, s14, s2
    7090: ee21 1a05    	vmul.f32	s2, s2, s10
    7094: fe10 0a01    	vselvs.f32	s0, s0, s2
    7098: ee22 1a04    	vmul.f32	s2, s4, s8
    709c: e025         	b	0x70ea <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0xda> @ imm = #0x4a
    709e: bf00         	nop
    70a0: ee80 1a01    	vdiv.f32	s2, s0, s2
    70a4: ee21 1a01    	vmul.f32	s2, s2, s2
    70a8: ee21 2a01    	vmul.f32	s4, s2, s2
    70ac: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    70b0: ee22 3a02    	vmul.f32	s6, s4, s4
    70b4: eeb0 2a41    	vmov.f32	s4, s2
    70b8: ee03 2a03    	vmla.f32	s4, s6, s6
    70bc: eeb0 3a41    	vmov.f32	s6, s2
    70c0: eeb4 2a41    	vcmp.f32	s4, s2
    70c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70c8: d009         	beq	0x70de <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0xce> @ imm = #0x12
    70ca: eeb0 3a42    	vmov.f32	s6, s4
    70ce: eeb1 3ac3    	vsqrt.f32	s6, s6
    70d2: eeb1 3ac3    	vsqrt.f32	s6, s6
    70d6: eeb1 3ac3    	vsqrt.f32	s6, s6
    70da: eeb1 3ac3    	vsqrt.f32	s6, s6
    70de: ee81 3a03    	vdiv.f32	s6, s2, s6
    70e2: ee83 1a02    	vdiv.f32	s2, s6, s4
    70e6: ee20 0a03    	vmul.f32	s0, s0, s6
    70ea: eeb0 2ac0    	vabs.f32	s4, s0
    70ee: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    70f2: eeb2 7a00    	vmov.f32	s14, #8.000000e+00
    70f6: ed9f 4a5c    	vldr	s8, [pc, #368]          @ 0x7268 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x258>
    70fa: eef1 2a04    	vmov.f32	s5, #5.000000e+00
    70fe: eeb0 5ae0    	vabs.f32	s10, s1
    7102: ee33 6a42    	vsub.f32	s12, s6, s4
    7106: eef7 3a00    	vmov.f32	s7, #1.000000e+00
    710a: fe86 3a07    	vmaxnm.f32	s6, s12, s14
    710e: eec4 1a03    	vdiv.f32	s3, s8, s6
    7112: fe81 2ae2    	vminnm.f32	s4, s3, s5
    7116: eec5 4a02    	vdiv.f32	s9, s10, s4
    711a: eef4 4a63    	vcmp.f32	s9, s7
    711e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7122: d935         	bls	0x7190 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x180> @ imm = #0x6a
    7124: ee82 5a05    	vdiv.f32	s10, s4, s10
    7128: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    712c: ee65 3a05    	vmul.f32	s7, s10, s10
    7130: ee63 3aa3    	vmul.f32	s7, s7, s7
    7134: ee63 5aa3    	vmul.f32	s11, s7, s7
    7138: eef0 3a64    	vmov.f32	s7, s9
    713c: ee45 3aa5    	vmla.f32	s7, s11, s11
    7140: eef0 5a64    	vmov.f32	s11, s9
    7144: eef4 3a64    	vcmp.f32	s7, s9
    7148: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    714c: d009         	beq	0x7162 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x152> @ imm = #0x12
    714e: eef0 5a63    	vmov.f32	s11, s7
    7152: eef1 5ae5    	vsqrt.f32	s11, s11
    7156: eef1 5ae5    	vsqrt.f32	s11, s11
    715a: eef1 5ae5    	vsqrt.f32	s11, s11
    715e: eef1 5ae5    	vsqrt.f32	s11, s11
    7162: eec4 5aa5    	vdiv.f32	s11, s9, s11
    7166: eef1 6a45    	vneg.f32	s13, s10
    716a: eec5 4aa3    	vdiv.f32	s9, s11, s7
    716e: eec6 0aa0    	vdiv.f32	s1, s13, s1
    7172: ee65 3a25    	vmul.f32	s7, s10, s11
    7176: ee60 0aa4    	vmul.f32	s1, s1, s9
    717a: eef4 1a62    	vcmp.f32	s3, s5
    717e: eddf 1a3b    	vldr	s3, [pc, #236]          @ 0x726c <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x25c>
    7182: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7186: d437         	bmi	0x71f8 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x1e8> @ imm = #0x6e
    7188: e056         	b	0x7238 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0xac
    718a: bf00         	nop
    718c: bf00         	nop
    718e: bf00         	nop
    7190: ee24 5aa4    	vmul.f32	s10, s9, s9
    7194: eef0 5a63    	vmov.f32	s11, s7
    7198: ee25 5a05    	vmul.f32	s10, s10, s10
    719c: ee25 5a05    	vmul.f32	s10, s10, s10
    71a0: ee25 5a05    	vmul.f32	s10, s10, s10
    71a4: ee75 4a23    	vadd.f32	s9, s10, s7
    71a8: eef4 4a63    	vcmp.f32	s9, s7
    71ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71b0: d009         	beq	0x71c6 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x1b6> @ imm = #0x12
    71b2: eef0 5a64    	vmov.f32	s11, s9
    71b6: eef1 5ae5    	vsqrt.f32	s11, s11
    71ba: eef1 5ae5    	vsqrt.f32	s11, s11
    71be: eef1 5ae5    	vsqrt.f32	s11, s11
    71c2: eef1 5ae5    	vsqrt.f32	s11, s11
    71c6: eec3 3aa5    	vdiv.f32	s7, s7, s11
    71ca: eef5 0a40    	vcmp.f32	s1, #0
    71ce: eef1 5a45    	vneg.f32	s11, s10
    71d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71d6: eec3 4aa4    	vdiv.f32	s9, s7, s9
    71da: eec5 5aa0    	vdiv.f32	s11, s11, s1
    71de: eddf 0a23    	vldr	s1, [pc, #140]          @ 0x726c <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x25c>
    71e2: ee65 5aa4    	vmul.f32	s11, s11, s9
    71e6: fe40 0aa5    	vseleq.f32	s1, s1, s11
    71ea: eef4 1a62    	vcmp.f32	s3, s5
    71ee: eddf 1a1f    	vldr	s3, [pc, #124]          @ 0x726c <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x25c>
    71f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71f6: d51f         	bpl	0x7238 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x3e
    71f8: eeb5 0a40    	vcmp.f32	s0, #0
    71fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7200: d01a         	beq	0x7238 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x34
    7202: eeb4 6a47    	vcmp.f32	s12, s14
    7206: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    720a: dd15         	ble	0x7238 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x2a
    720c: ee10 1a10    	vmov	r1, s0
    7210: f04f 527e    	mov.w	r2, #0x3f800000
    7214: eeb4 0a40    	vcmp.f32	s0, s0
    7218: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    721c: f362 011e    	bfi	r1, r2, #0, #31
    7220: ee23 3a03    	vmul.f32	s6, s6, s6
    7224: ee06 1a10    	vmov	s12, r1
    7228: ee26 4a04    	vmul.f32	s8, s12, s8
    722c: ed9f 6a0d    	vldr	s12, [pc, #52]          @ 0x7264 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>+0x254>
    7230: fe16 4a04    	vselvs.f32	s8, s12, s8
    7234: eec4 1a03    	vdiv.f32	s3, s8, s6
    7238: ee85 2a02    	vdiv.f32	s4, s10, s4
    723c: ee20 3a23    	vmul.f32	s6, s0, s7
    7240: ed80 3a00    	vstr	s6, [r0]
    7244: ee22 2a24    	vmul.f32	s4, s4, s9
    7248: ee20 2a02    	vmul.f32	s4, s0, s4
    724c: ee20 0a20    	vmul.f32	s0, s0, s1
    7250: ed80 0a02    	vstr	s0, [r0, #8]
    7254: ee42 3a21    	vmla.f32	s7, s4, s3
    7258: ee21 1a23    	vmul.f32	s2, s2, s7
    725c: ed80 1a01    	vstr	s2, [r0, #4]
    7260: bd80         	pop	{r7, pc}
    7262: bf00         	nop
    7264: 00 00 c0 7f  	.word	0x7fc00000
    7268: 00 00 70 42  	.word	0x42700000
    726c: 00 00 00 00  	.word	0x00000000

00007270 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>>:
    7270: b5f0         	push	{r4, r5, r6, r7, lr}
    7272: af03         	add	r7, sp, #0xc
    7274: e92d 0f00    	push.w	{r8, r9, r10, r11}
    7278: b081         	sub	sp, #0x4
    727a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    727e: eeba 1a0e    	vmov.f32	s2, #-1.500000e+01
    7282: ed91 2a00    	vldr	s4, [r1]
    7286: ed9f 3af5    	vldr	s6, [pc, #980]          @ 0x765c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3ec>
    728a: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    728e: eefe 1a00    	vmov.f32	s3, #-5.000000e-01
    7292: f04f 5c7e    	mov.w	r12, #0x3f800000
    7296: ee32 4a01    	vadd.f32	s8, s4, s2
    729a: ee71 5a42    	vsub.f32	s11, s2, s4
    729e: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    72a2: ee84 5a03    	vdiv.f32	s10, s8, s6
    72a6: ed9f 4aee    	vldr	s8, [pc, #952]          @ 0x7660 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3f0>
    72aa: eec5 5a83    	vdiv.f32	s11, s11, s6
    72ae: eddf 0aed    	vldr	s1, [pc, #948]          @ 0x7664 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3f4>
    72b2: eeb4 4a45    	vcmp.f32	s8, s10
    72b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72ba: fe34 6a05    	vselgt.f32	s12, s8, s10
    72be: ed9f 5af7    	vldr	s10, [pc, #988]         @ 0x769c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x42c>
    72c2: eeb4 6a45    	vcmp.f32	s12, s10
    72c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72ca: fe75 7a06    	vselgt.f32	s15, s10, s12
    72ce: ed9f 6af4    	vldr	s12, [pc, #976]         @ 0x76a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x430>
    72d2: ee67 2a86    	vmul.f32	s5, s15, s12
    72d6: ee72 3a87    	vadd.f32	s7, s5, s14
    72da: eef5 2a40    	vcmp.f32	s5, #0
    72de: ee72 4aa1    	vadd.f32	s9, s5, s3
    72e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72e6: eefd 3ae3    	vcvt.s32.f32	s7, s7
    72ea: eefd 4ae4    	vcvt.s32.f32	s9, s9
    72ee: eeb4 4a65    	vcmp.f32	s8, s11
    72f2: ee13 6a90    	vmov	r6, s7
    72f6: ee14 3a90    	vmov	r3, s9
    72fa: bfa8         	it	ge
    72fc: 4633         	movge	r3, r6
    72fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7302: fe74 2a25    	vselgt.f32	s5, s8, s11
    7306: eddf 5aea    	vldr	s11, [pc, #936]         @ 0x76b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x440>
    730a: eeb0 aa65    	vmov.f32	s20, s11
    730e: eeb0 ba65    	vmov.f32	s22, s11
    7312: eef4 2a45    	vcmp.f32	s5, s10
    7316: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    731a: fe35 8a22    	vselgt.f32	s16, s10, s5
    731e: ee68 2a06    	vmul.f32	s5, s16, s12
    7322: ee72 3aa1    	vadd.f32	s7, s5, s3
    7326: eef5 2a40    	vcmp.f32	s5, #0
    732a: ee72 4a87    	vadd.f32	s9, s5, s14
    732e: ee02 3a90    	vmov	s5, r3
    7332: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7336: eefd 3ae3    	vcvt.s32.f32	s7, s7
    733a: eb0c 53c3    	add.w	r3, r12, r3, lsl #23
    733e: eefd 4ae4    	vcvt.s32.f32	s9, s9
    7342: ee13 6a90    	vmov	r6, s7
    7346: eef8 3ae2    	vcvt.f32.s32	s7, s5
    734a: ee14 5a90    	vmov	r5, s9
    734e: bfa8         	it	ge
    7350: 462e         	movge	r6, r5
    7352: ee02 6a90    	vmov	s5, r6
    7356: eb0c 56c6    	add.w	r6, r12, r6, lsl #23
    735a: eef8 4ae2    	vcvt.f32.s32	s9, s5
    735e: eddf 2ad1    	vldr	s5, [pc, #836]          @ 0x76a4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x434>
    7362: ee43 7ae2    	vmls.f32	s15, s7, s5
    7366: eddf 3ad1    	vldr	s7, [pc, #836]          @ 0x76ac <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x43c>
    736a: eef0 6a63    	vmov.f32	s13, s7
    736e: eeb0 9a63    	vmov.f32	s18, s7
    7372: ee04 8ae2    	vmls.f32	s16, s9, s5
    7376: eddf 4acc    	vldr	s9, [pc, #816]          @ 0x76a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x438>
    737a: ee47 6aa4    	vmla.f32	s13, s15, s9
    737e: ee08 9a24    	vmla.f32	s18, s16, s9
    7382: ee28 ca08    	vmul.f32	s24, s16, s16
    7386: ee07 aaa6    	vmla.f32	s20, s15, s13
    738a: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    738e: ee08 ba09    	vmla.f32	s22, s16, s18
    7392: eeb0 9a47    	vmov.f32	s18, s14
    7396: ee07 9a8a    	vmla.f32	s18, s15, s20
    739a: eeb0 aa47    	vmov.f32	s20, s14
    739e: ee08 aa0b    	vmla.f32	s20, s16, s22
    73a2: ee27 baa7    	vmul.f32	s22, s15, s15
    73a6: ee77 7aa6    	vadd.f32	s15, s15, s13
    73aa: ee38 8a26    	vadd.f32	s16, s16, s13
    73ae: ee4b 7a09    	vmla.f32	s15, s22, s18
    73b2: ee09 3a10    	vmov	s18, r3
    73b6: eeb0 ba40    	vmov.f32	s22, s0
    73ba: ee02 ba20    	vmla.f32	s22, s4, s1
    73be: ee0c 8a0a    	vmla.f32	s16, s24, s20
    73c2: ee0a 6a10    	vmov	s20, r6
    73c6: ee27 9a89    	vmul.f32	s18, s15, s18
    73ca: eddf 7aba    	vldr	s15, [pc, #744]         @ 0x76b4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x444>
    73ce: ee28 aa0a    	vmul.f32	s20, s16, s20
    73d2: ee39 8a4a    	vsub.f32	s16, s18, s20
    73d6: ee18 ba27    	vnmls.f32	s22, s16, s15
    73da: ed9f 8ab7    	vldr	s16, [pc, #732]         @ 0x76b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x448>
    73de: eef0 8a48    	vmov.f32	s17, s16
    73e2: ee1b 3a10    	vmov	r3, s22
    73e6: f023 4300    	bic	r3, r3, #0x80000000
    73ea: f1b3 4fff    	cmp.w	r3, #0x7f800000
    73ee: da09         	bge	0x7404 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x194> @ imm = #0x12
    73f0: ed9f cab2    	vldr	s24, [pc, #712]         @ 0x76bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x44c>
    73f4: ee8b ca0c    	vdiv.f32	s24, s22, s24
    73f8: ed9f dab1    	vldr	s26, [pc, #708]         @ 0x76c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x450>
    73fc: eeb0 cacc    	vabs.f32	s24, s24
    7400: fecc 8a0d    	vmaxnm.f32	s17, s24, s26
    7404: ee79 aa0a    	vadd.f32	s21, s18, s20
    7408: 6894         	ldr	r4, [r2, #0x8]
    740a: eef1 9a4b    	vneg.f32	s19, s22
    740e: f104 0901    	add.w	r9, r4, #0x1
    7412: e9d2 3800    	ldrd	r3, r8, [r2]
    7416: f108 0e03    	add.w	lr, r8, #0x3
    741a: f103 0a02    	add.w	r10, r3, #0x2
    741e: f04f 0b00    	mov.w	r11, #0x0
    7422: ed9f 9aa8    	vldr	s18, [pc, #672]         @ 0x76c4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x454>
    7426: ed9f aaa8    	vldr	s20, [pc, #672]         @ 0x76c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x458>
    742a: 2400         	movs	r4, #0x0
    742c: ed9f baa7    	vldr	s22, [pc, #668]         @ 0x76cc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x45c>
    7430: 1c5e         	adds	r6, r3, #0x1
    7432: ed9f caa7    	vldr	s24, [pc, #668]         @ 0x76d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x460>
    7436: 6016         	str	r6, [r2]
    7438: ed9f daa6    	vldr	s26, [pc, #664]         @ 0x76d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x464>
    743c: ed9f ea9f    	vldr	s28, [pc, #636]         @ 0x76bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x44c>
    7440: ed9f fa9f    	vldr	s30, [pc, #636]         @ 0x76c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x450>
    7444: e00d         	b	0x7462 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x1f2> @ imm = #0x1a
    7446: bf00         	nop
    7448: ee7a aaab    	vadd.f32	s21, s21, s23
    744c: 1c63         	adds	r3, r4, #0x1
    744e: eef1 9a69    	vneg.f32	s19, s19
    7452: 4454         	add	r4, r10
    7454: 2b03         	cmp	r3, #0x3
    7456: 6014         	str	r4, [r2]
    7458: f10b 0b01    	add.w	r11, r11, #0x1
    745c: 461c         	mov	r4, r3
    745e: f000 8103    	beq.w	0x7668 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3f8> @ imm = #0x206
    7462: ee6a aaa7    	vmul.f32	s21, s21, s15
    7466: 2600         	movs	r6, #0x0
    7468: eeca aa83    	vdiv.f32	s21, s21, s6
    746c: ee7a aa89    	vadd.f32	s21, s21, s18
    7470: ee1a 5a90    	vmov	r5, s21
    7474: eef0 baea    	vabs.f32	s23, s21
    7478: f025 4500    	bic	r5, r5, #0x80000000
    747c: eef4 ba4a    	vcmp.f32	s23, s20
    7480: f1b5 4fff    	cmp.w	r5, #0x7f800000
    7484: f04f 0500    	mov.w	r5, #0x0
    7488: bfa8         	it	ge
    748a: 2501         	movge	r5, #0x1
    748c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7490: bf48         	it	mi
    7492: 2601         	movmi	r6, #0x1
    7494: 4335         	orrs	r5, r6
    7496: f040 80cf    	bne.w	0x7638 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3c8> @ imm = #0x19e
    749a: eec9 9aaa    	vdiv.f32	s19, s19, s21
    749e: ee19 5a90    	vmov	r5, s19
    74a2: f025 4500    	bic	r5, r5, #0x80000000
    74a6: f1b5 4fff    	cmp.w	r5, #0x7f800000
    74aa: f280 80c5    	bge.w	0x7638 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3c8> @ imm = #0x18a
    74ae: eef0 aac2    	vabs.f32	s21, s4
    74b2: eef0 bae9    	vabs.f32	s23, s19
    74b6: eef4 aa6a    	vcmp.f32	s21, s21
    74ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74be: fe56 aaaa    	vselvs.f32	s21, s13, s21
    74c2: eef4 aa66    	vcmp.f32	s21, s13
    74c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74ca: fe7a aaa6    	vselgt.f32	s21, s21, s13
    74ce: ee6a aa8b    	vmul.f32	s21, s21, s22
    74d2: feca aacc    	vminnm.f32	s21, s21, s24
    74d6: eef4 ba6a    	vcmp.f32	s23, s21
    74da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74de: d805         	bhi	0x74ec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x27c> @ imm = #0xa
    74e0: eef4 8a4d    	vcmp.f32	s17, s26
    74e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74e8: f240 80b2    	bls.w	0x7650 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3e0> @ imm = #0x164
    74ec: ee39 2a82    	vadd.f32	s4, s19, s4
    74f0: ee72 8a01    	vadd.f32	s17, s4, s2
    74f4: ee71 ca42    	vsub.f32	s25, s2, s4
    74f8: eec8 8a83    	vdiv.f32	s17, s17, s6
    74fc: eecc ca83    	vdiv.f32	s25, s25, s6
    7500: eeb4 4a68    	vcmp.f32	s8, s17
    7504: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7508: fe74 8a28    	vselgt.f32	s17, s8, s17
    750c: eef4 8a45    	vcmp.f32	s17, s10
    7510: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7514: fe75 8a28    	vselgt.f32	s17, s10, s17
    7518: ee68 9a86    	vmul.f32	s19, s17, s12
    751c: ee79 aa87    	vadd.f32	s21, s19, s14
    7520: eef5 9a40    	vcmp.f32	s19, #0
    7524: ee79 baa1    	vadd.f32	s23, s19, s3
    7528: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    752c: eefd aaea    	vcvt.s32.f32	s21, s21
    7530: eefd baeb    	vcvt.s32.f32	s23, s23
    7534: eeb4 4a6c    	vcmp.f32	s8, s25
    7538: ee1a 6a90    	vmov	r6, s21
    753c: ee1b 5a90    	vmov	r5, s23
    7540: bfa8         	it	ge
    7542: 4635         	movge	r5, r6
    7544: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7548: fe74 9a2c    	vselgt.f32	s19, s8, s25
    754c: eef4 9a45    	vcmp.f32	s19, s10
    7550: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7554: fe75 9a29    	vselgt.f32	s19, s10, s19
    7558: ee69 aa86    	vmul.f32	s21, s19, s12
    755c: ee7a baa1    	vadd.f32	s23, s21, s3
    7560: eef5 aa40    	vcmp.f32	s21, #0
    7564: ee7a ca87    	vadd.f32	s25, s21, s14
    7568: ee0a 5a90    	vmov	s21, r5
    756c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7570: eefd baeb    	vcvt.s32.f32	s23, s23
    7574: eef8 aaea    	vcvt.f32.s32	s21, s21
    7578: ee1b 6a90    	vmov	r6, s23
    757c: eefd baec    	vcvt.s32.f32	s23, s25
    7580: ee4a 8ae2    	vmls.f32	s17, s21, s5
    7584: eef0 aa63    	vmov.f32	s21, s7
    7588: eef0 ca65    	vmov.f32	s25, s11
    758c: ee1b 3a90    	vmov	r3, s23
    7590: bfa8         	it	ge
    7592: 461e         	movge	r6, r3
    7594: eb0c 53c5    	add.w	r3, r12, r5, lsl #23
    7598: ed81 2a00    	vstr	s4, [r1]
    759c: ee0b 6a90    	vmov	s23, r6
    75a0: eb0c 55c6    	add.w	r5, r12, r6, lsl #23
    75a4: ee48 aaa4    	vmla.f32	s21, s17, s9
    75a8: eef8 baeb    	vcvt.f32.s32	s23, s23
    75ac: ee4b 9ae2    	vmls.f32	s19, s23, s5
    75b0: eef0 ba63    	vmov.f32	s23, s7
    75b4: ee48 caaa    	vmla.f32	s25, s17, s21
    75b8: eef0 aa65    	vmov.f32	s21, s11
    75bc: ee49 baa4    	vmla.f32	s23, s19, s9
    75c0: ee69 daa9    	vmul.f32	s27, s19, s19
    75c4: ee49 aaab    	vmla.f32	s21, s19, s23
    75c8: eef0 ba47    	vmov.f32	s23, s14
    75cc: ee48 baac    	vmla.f32	s23, s17, s25
    75d0: eef0 ca47    	vmov.f32	s25, s14
    75d4: ee49 caaa    	vmla.f32	s25, s19, s21
    75d8: ee68 aaa8    	vmul.f32	s21, s17, s17
    75dc: ee78 8aa6    	vadd.f32	s17, s17, s13
    75e0: ee79 9aa6    	vadd.f32	s19, s19, s13
    75e4: ee4a 8aab    	vmla.f32	s17, s21, s23
    75e8: ee0a 3a90    	vmov	s21, r3
    75ec: ee0b 5a90    	vmov	s23, r5
    75f0: ee4d 9aac    	vmla.f32	s19, s27, s25
    75f4: ee68 aaaa    	vmul.f32	s21, s17, s21
    75f8: ee69 baab    	vmul.f32	s23, s19, s23
    75fc: eef0 9a40    	vmov.f32	s19, s0
    7600: ee42 9a20    	vmla.f32	s19, s4, s1
    7604: ee7a 8aeb    	vsub.f32	s17, s21, s23
    7608: ee58 9aa7    	vnmls.f32	s19, s17, s15
    760c: eef0 8a48    	vmov.f32	s17, s16
    7610: ee19 3a90    	vmov	r3, s19
    7614: f023 4300    	bic	r3, r3, #0x80000000
    7618: f1b3 4fff    	cmp.w	r3, #0x7f800000
    761c: eb09 0304    	add.w	r3, r9, r4
    7620: 6093         	str	r3, [r2, #0x8]
    7622: f6bf af11    	bge.w	0x7448 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x1d8> @ imm = #-0x1de
    7626: eec9 8a8e    	vdiv.f32	s17, s19, s28
    762a: eef0 8ae8    	vabs.f32	s17, s17
    762e: fec8 8a8f    	vmaxnm.f32	s17, s17, s30
    7632: e709         	b	0x7448 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x1d8> @ imm = #-0x1ee
    7634: bf00         	nop
    7636: bf00         	nop
    7638: eb08 0104    	add.w	r1, r8, r4
    763c: f880 b004    	strb.w	r11, [r0, #0x4]
    7640: 3101         	adds	r1, #0x1
    7642: 6051         	str	r1, [r2, #0x4]
    7644: f04f 41ff    	mov.w	r1, #0x7f800000
    7648: 6001         	str	r1, [r0]
    764a: 2100         	movs	r1, #0x0
    764c: e01e         	b	0x768c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x41c> @ imm = #0x3c
    764e: bf00         	nop
    7650: eb08 0104    	add.w	r1, r8, r4
    7654: f101 0e01    	add.w	lr, r1, #0x1
    7658: e008         	b	0x766c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3fc> @ imm = #0x10
    765a: bf00         	nop
    765c: f5 4a 39 3d  	.word	0x3d394af5
    7660: 00 00 a0 c2  	.word	0xc2a00000
    7664: df 43 f7 b7  	.word	0xb7f743df
    7668: f04f 0b03    	mov.w	r11, #0x3
    766c: ee18 1a90    	vmov	r1, s17
    7670: f8c2 e004    	str.w	lr, [r2, #0x4]
    7674: edc0 8a00    	vstr	s17, [r0]
    7678: f880 b004    	strb.w	r11, [r0, #0x4]
    767c: f021 4100    	bic	r1, r1, #0x80000000
    7680: f1b1 4fff    	cmp.w	r1, #0x7f800000
    7684: f04f 0100    	mov.w	r1, #0x0
    7688: bfb8         	it	lt
    768a: 2101         	movlt	r1, #0x1
    768c: 7141         	strb	r1, [r0, #0x5]
    768e: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    7692: b001         	add	sp, #0x4
    7694: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    7698: bdf0         	pop	{r4, r5, r6, r7, pc}
    769a: bf00         	nop
    769c: 00 00 a0 42  	.word	0x42a00000
    76a0: 3b aa b8 3f  	.word	0x3fb8aa3b
    76a4: 18 72 31 3f  	.word	0x3f317218
    76a8: 89 88 08 3c  	.word	0x3c088889
    76ac: ab aa 2a 3d  	.word	0x3d2aaaab
    76b0: ab aa 2a 3e  	.word	0x3e2aaaab
    76b4: 77 cc 2b 31  	.word	0x312bcc77
    76b8: 00 00 80 7f  	.word	0x7f800000
    76bc: 0a d7 23 3c  	.word	0x3c23d70a
    76c0: 00 00 00 00  	.word	0x00000000
    76c4: df 43 f7 37  	.word	0x37f743df
    76c8: 08 e5 3c 1e  	.word	0x1e3ce508
    76cc: bd 37 06 36  	.word	0x360637bd
    76d0: ac c5 a7 37  	.word	0x37a7c5ac
    76d4: 17 b7 d1 38  	.word	0x38d1b717

000076d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>>:
    76d8: b5f0         	push	{r4, r5, r6, r7, lr}
    76da: af03         	add	r7, sp, #0xc
    76dc: e92d 0f00    	push.w	{r8, r9, r10, r11}
    76e0: b081         	sub	sp, #0x4
    76e2: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    76e6: b084         	sub	sp, #0x10
    76e8: ed91 3a00    	vldr	s6, [r1]
    76ec: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    76f0: ed91 5a02    	vldr	s10, [r1, #8]
    76f4: ed9f 4bea    	vldr	d4, [pc, #936]          @ 0x7aa0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3c8>
    76f8: ee03 1b04    	vmla.f64	d1, d3, d4
    76fc: eeb7 3ac5    	vcvt.f64.f32	d3, s10
    7700: ed91 5a03    	vldr	s10, [r1, #12]
    7704: ed9f 4be8    	vldr	d4, [pc, #928]          @ 0x7aa8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3d0>
    7708: eeb0 7b41    	vmov.f64	d7, d1
    770c: ee03 7b04    	vmla.f64	d7, d3, d4
    7710: eeb7 3ac5    	vcvt.f64.f32	d3, s10
    7714: ed91 5a04    	vldr	s10, [r1, #16]
    7718: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    771c: ee03 7b04    	vmla.f64	d7, d3, d4
    7720: ed91 3a05    	vldr	s6, [r1, #20]
    7724: ee05 7b04    	vmla.f64	d7, d5, d4
    7728: ed91 5a06    	vldr	s10, [r1, #24]
    772c: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    7730: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    7734: ee03 7b04    	vmla.f64	d7, d3, d4
    7738: ed91 3a07    	vldr	s6, [r1, #28]
    773c: ee05 7b04    	vmla.f64	d7, d5, d4
    7740: ed9f 5a90    	vldr	s10, [pc, #576]         @ 0x7984 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2ac>
    7744: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    7748: ee22 6a05    	vmul.f32	s12, s4, s10
    774c: eeb2 5a0b    	vmov.f32	s10, #1.350000e+01
    7750: ee03 7b04    	vmla.f64	d7, d3, d4
    7754: eeb7 2ac6    	vcvt.f64.f32	d2, s12
    7758: ed9f 3b55    	vldr	d3, [pc, #340]          @ 0x78b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x1d8>
    775c: ee82 2b03    	vdiv.f64	d2, d2, d3
    7760: ed9f 3b55    	vldr	d3, [pc, #340]          @ 0x78b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x1e0>
    7764: ee07 2b03    	vmla.f64	d2, d7, d3
    7768: ed9f 7a87    	vldr	s14, [pc, #540]         @ 0x7988 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2b0>
    776c: ed9f 3bd0    	vldr	d3, [pc, #832]          @ 0x7ab0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3d8>
    7770: ee82 2b03    	vdiv.f64	d2, d2, d3
    7774: eeba 3a0b    	vmov.f32	s6, #-1.350000e+01
    7778: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    777c: eeb4 3a42    	vcmp.f32	s6, s4
    7780: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7784: fe33 4a02    	vselgt.f32	s8, s6, s4
    7788: ed9f 2a80    	vldr	s4, [pc, #512]          @ 0x798c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2b4>
    778c: ed9f 3a80    	vldr	s6, [pc, #512]          @ 0x7990 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2b8>
    7790: ee36 2a02    	vadd.f32	s4, s12, s4
    7794: ee36 3a03    	vadd.f32	s6, s12, s6
    7798: eeb4 4a45    	vcmp.f32	s8, s10
    779c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    77a0: ee82 2a07    	vdiv.f32	s4, s4, s14
    77a4: ee83 3a07    	vdiv.f32	s6, s6, s14
    77a8: fe35 4a04    	vselgt.f32	s8, s10, s8
    77ac: ed81 4a01    	vstr	s8, [r1, #4]
    77b0: eeb4 2a43    	vcmp.f32	s4, s6
    77b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    77b8: f200 832a    	bhi.w	0x7e10 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x738> @ imm = #0x654
    77bc: eeb7 5ac4    	vcvt.f64.f32	d5, s8
    77c0: 2500         	movs	r5, #0x0
    77c2: ed9f 8bbd    	vldr	d8, [pc, #756]          @ 0x7ab8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3e0>
    77c6: eeb0 7b41    	vmov.f64	d7, d1
    77ca: ed9f 9a72    	vldr	s18, [pc, #456]         @ 0x7994 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2bc>
    77ce: 2600         	movs	r6, #0x0
    77d0: eeb0 ba49    	vmov.f32	s22, s18
    77d4: ee05 7b08    	vmla.f64	d7, d5, d8
    77d8: ed9f 5a6f    	vldr	s10, [pc, #444]         @ 0x7998 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2c0>
    77dc: eeb0 aa49    	vmov.f32	s20, s18
    77e0: ee26 6a05    	vmul.f32	s12, s12, s10
    77e4: eddf 6a6d    	vldr	s13, [pc, #436]         @ 0x799c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2c4>
    77e8: eeb7 5bc7    	vcvt.f32.f64	s10, d7
    77ec: ed9f 7a6c    	vldr	s14, [pc, #432]         @ 0x79a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2c8>
    77f0: eef0 7a49    	vmov.f32	s15, s18
    77f4: eef0 3a46    	vmov.f32	s7, s12
    77f8: ee45 3a07    	vmla.f32	s7, s10, s14
    77fc: ed9f 7a69    	vldr	s14, [pc, #420]         @ 0x79a4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2cc>
    7800: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    7804: eef0 4a40    	vmov.f32	s9, s0
    7808: ee44 4a07    	vmla.f32	s9, s8, s14
    780c: eeb4 2a63    	vcmp.f32	s4, s7
    7810: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7814: fe32 5a23    	vselgt.f32	s10, s4, s7
    7818: eeb0 8ae4    	vabs.f32	s16, s9
    781c: eeb4 5a43    	vcmp.f32	s10, s6
    7820: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7824: eef4 3a42    	vcmp.f32	s7, s4
    7828: fe73 2a05    	vselgt.f32	s5, s6, s10
    782c: eeb0 5a49    	vmov.f32	s10, s18
    7830: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7834: bfc8         	it	gt
    7836: 2501         	movgt	r5, #0x1
    7838: eef4 3a43    	vcmp.f32	s7, s6
    783c: eeff 3a00    	vmov.f32	s7, #-1.000000e+00
    7840: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7844: eef5 4a40    	vcmp.f32	s9, #0
    7848: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    784c: bf48         	it	mi
    784e: 2601         	movmi	r6, #0x1
    7850: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7854: bf48         	it	mi
    7856: eeb0 5a63    	vmovmi.f32	s10, s7
    785a: eeb4 8a66    	vcmp.f32	s16, s13
    785e: ea06 0605    	and.w	r6, r6, r5
    7862: fe34 ca85    	vselgt.f32	s24, s9, s10
    7866: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    786a: f280 80d0    	bge.w	0x7a0e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x336> @ imm = #0x1a0
    786e: ed9f 5a4e    	vldr	s10, [pc, #312]         @ 0x79a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2d0>
    7872: eeb4 8a45    	vcmp.f32	s16, s10
    7876: eddf 7a47    	vldr	s15, [pc, #284]         @ 0x7994 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2bc>
    787a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    787e: d90f         	bls	0x78a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x1c8> @ imm = #0x1e
    7880: ed9f 5a4a    	vldr	s10, [pc, #296]         @ 0x79ac <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2d4>
    7884: eeb4 8a45    	vcmp.f32	s16, s10
    7888: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    788c: d918         	bls	0x78c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x1e8> @ imm = #0x30
    788e: ed9f 5a48    	vldr	s10, [pc, #288]         @ 0x79b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2d8>
    7892: ee78 5a05    	vadd.f32	s11, s16, s10
    7896: ed9f 8af0    	vldr	s16, [pc, #960]         @ 0x7c58 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x580>
    789a: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    789e: e017         	b	0x78d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x1f8> @ imm = #0x2e
    78a0: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    78a4: eef0 5a67    	vmov.f32	s11, s15
    78a8: e016         	b	0x78d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x200> @ imm = #0x2c
    78aa: bf00         	nop
    78ac: bf00         	nop
    78ae: bf00         	nop
    78b0: 4e 55 8a 9e  	.word	0x9e8a554e
    78b4: da 9b f1 40  	.word	0x40f19bda
    78b8: 3e 1f 24 a5  	.word	0xa5241f3e
    78bc: 52 c7 75 40  	.word	0x4075c752
    78c0: ed9f 5ae6    	vldr	s10, [pc, #920]         @ 0x7c5c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x584>
    78c4: ee78 5a05    	vadd.f32	s11, s16, s10
    78c8: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    78cc: ed9f 8ae4    	vldr	s16, [pc, #912]         @ 0x7c60 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x588>
    78d0: ee05 5a88    	vmla.f32	s10, s11, s16
    78d4: ee6c 5a08    	vmul.f32	s11, s24, s16
    78d8: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    78dc: eeb1 9a65    	vneg.f32	s18, s11
    78e0: ee38 5a45    	vsub.f32	s10, s16, s10
    78e4: fe85 8a27    	vmaxnm.f32	s16, s10, s15
    78e8: eeb5 8a40    	vcmp.f32	s16, #0
    78ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    78f0: d942         	bls	0x7978 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2a0> @ imm = #0x84
    78f2: eeb0 5ae2    	vabs.f32	s10, s5
    78f6: eeb4 5a48    	vcmp.f32	s10, s16
    78fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    78fe: d95b         	bls	0x79b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2e0> @ imm = #0xb6
    7900: ee88 ba05    	vdiv.f32	s22, s16, s10
    7904: ee2b 5a0b    	vmul.f32	s10, s22, s22
    7908: ee25 5a05    	vmul.f32	s10, s10, s10
    790c: ee25 5a05    	vmul.f32	s10, s10, s10
    7910: ee25 ca05    	vmul.f32	s24, s10, s10
    7914: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    7918: ee7c 5a05    	vadd.f32	s11, s24, s10
    791c: eef0 7a45    	vmov.f32	s15, s10
    7920: eef4 5a45    	vcmp.f32	s11, s10
    7924: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7928: d009         	beq	0x793e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x266> @ imm = #0x12
    792a: eef0 7a65    	vmov.f32	s15, s11
    792e: eef1 7ae7    	vsqrt.f32	s15, s15
    7932: eef1 7ae7    	vsqrt.f32	s15, s15
    7936: eef1 7ae7    	vsqrt.f32	s15, s15
    793a: eef1 7ae7    	vsqrt.f32	s15, s15
    793e: ee85 5a27    	vdiv.f32	s10, s10, s15
    7942: eef4 2a62    	vcmp.f32	s5, s5
    7946: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    794a: ee85 da25    	vdiv.f32	s26, s10, s11
    794e: f180 826b    	bvs.w	0x7e28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x750> @ imm = #0x4d6
    7952: ee12 5a90    	vmov	r5, s5
    7956: f04f 547e    	mov.w	r4, #0x3f800000
    795a: f364 051e    	bfi	r5, r4, #0, #31
    795e: ee05 5a90    	vmov	s11, r5
    7962: ee65 7a88    	vmul.f32	s15, s11, s16
    7966: ee25 aa8d    	vmul.f32	s20, s11, s26
    796a: ee67 7a85    	vmul.f32	s15, s15, s10
    796e: ee2b 5a0c    	vmul.f32	s10, s22, s24
    7972: ee25 ba0d    	vmul.f32	s22, s10, s26
    7976: e04a         	b	0x7a0e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x336> @ imm = #0x94
    7978: eeb0 ba67    	vmov.f32	s22, s15
    797c: eeb0 aa67    	vmov.f32	s20, s15
    7980: e045         	b	0x7a0e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x336> @ imm = #0x8a
    7982: bf00         	nop
    7984: 00 80 3b 47  	.word	0x473b8000
    7988: 00 a0 8c 47  	.word	0x478ca000
    798c: 00 24 74 cb  	.word	0xcb742400
    7990: 00 24 74 4b  	.word	0x4b742400
    7994: 00 00 00 00  	.word	0x00000000
    7998: 64 9c 68 37  	.word	0x37689c64
    799c: 0a d7 23 3d  	.word	0x3d23d70a
    79a0: 95 3a ae 43  	.word	0x43ae3a95
    79a4: 0d 9e a0 b8  	.word	0xb8a09e0d
    79a8: 7c f2 b0 3a  	.word	0x3ab0f27c
    79ac: a6 9b c4 3b  	.word	0x3bc49ba6
    79b0: a6 9b c4 bb  	.word	0xbbc49ba6
    79b4: 00 bf 00 bf  	.word	0xbf00bf00
    79b8: ee82 5a88    	vdiv.f32	s10, s5, s16
    79bc: eef7 7a00    	vmov.f32	s15, #1.000000e+00
    79c0: ee25 5a05    	vmul.f32	s10, s10, s10
    79c4: eeb0 aa67    	vmov.f32	s20, s15
    79c8: ee25 5a05    	vmul.f32	s10, s10, s10
    79cc: ee25 5a05    	vmul.f32	s10, s10, s10
    79d0: ee25 5a05    	vmul.f32	s10, s10, s10
    79d4: ee75 5a27    	vadd.f32	s11, s10, s15
    79d8: eef4 5a67    	vcmp.f32	s11, s15
    79dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79e0: d009         	beq	0x79f6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x31e> @ imm = #0x12
    79e2: eeb0 aa65    	vmov.f32	s20, s11
    79e6: eeb1 aaca    	vsqrt.f32	s20, s20
    79ea: eeb1 aaca    	vsqrt.f32	s20, s20
    79ee: eeb1 aaca    	vsqrt.f32	s20, s20
    79f2: eeb1 aaca    	vsqrt.f32	s20, s20
    79f6: eec7 7a8a    	vdiv.f32	s15, s15, s20
    79fa: ee22 5a85    	vmul.f32	s10, s5, s10
    79fe: ee87 baa5    	vdiv.f32	s22, s15, s11
    7a02: ee85 5a08    	vdiv.f32	s10, s10, s16
    7a06: ee62 7aa7    	vmul.f32	s15, s5, s15
    7a0a: ee25 aa0b    	vmul.f32	s20, s10, s22
    7a0e: 2e00         	cmp	r6, #0x0
    7a10: ee34 da67    	vsub.f32	s26, s8, s15
    7a14: eddf 0aea    	vldr	s1, [pc, #936]          @ 0x7dc0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6e8>
    7a18: ee69 5a0a    	vmul.f32	s11, s18, s20
    7a1c: ed9f cae9    	vldr	s24, [pc, #932]         @ 0x7dc4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6ec>
    7a20: fe0c 5a20    	vseleq.f32	s10, s24, s1
    7a24: ee1d 6a10    	vmov	r6, s26
    7a28: ed9f 9ae7    	vldr	s18, [pc, #924]         @ 0x7dc8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6f0>
    7a2c: eddf bae7    	vldr	s23, [pc, #924]         @ 0x7dcc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6f4>
    7a30: ee65 9a89    	vmul.f32	s19, s11, s18
    7a34: ee25 5a0b    	vmul.f32	s10, s10, s22
    7a38: eeb0 aa6b    	vmov.f32	s20, s23
    7a3c: f026 4600    	bic	r6, r6, #0x80000000
    7a40: ed9f bae3    	vldr	s22, [pc, #908]         @ 0x7dd0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6f8>
    7a44: f1b6 4fff    	cmp.w	r6, #0x7f800000
    7a48: da09         	bge	0x7a5e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x386> @ imm = #0x12
    7a4a: eef2 5a0e    	vmov.f32	s11, #1.500000e+01
    7a4e: ed1f aa2f    	vldr	s20, [pc, #-188]        @ 0x7994 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2bc>
    7a52: eecd 5a25    	vdiv.f32	s11, s26, s11
    7a56: eef0 5ae5    	vabs.f32	s11, s11
    7a5a: fe85 aa8a    	vmaxnm.f32	s20, s11, s20
    7a5e: ee45 9a0b    	vmla.f32	s19, s10, s22
    7a62: eef2 ca0e    	vmov.f32	s25, #1.500000e+01
    7a66: eef1 fa4d    	vneg.f32	s31, s26
    7a6a: 689c         	ldr	r4, [r3, #0x8]
    7a6c: e9d3 6c00    	ldrd	r6, r12, [r3]
    7a70: 1c75         	adds	r5, r6, #0x1
    7a72: f104 0e01    	add.w	lr, r4, #0x1
    7a76: f10c 0a01    	add.w	r10, r12, #0x1
    7a7a: f106 0902    	add.w	r9, r6, #0x2
    7a7e: f04f 0c00    	mov.w	r12, #0x0
    7a82: ed9f daec    	vldr	s26, [pc, #944]         @ 0x7e34 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x75c>
    7a86: ed9f eaec    	vldr	s28, [pc, #944]         @ 0x7e38 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x760>
    7a8a: f04f 587e    	mov.w	r8, #0x3f800000
    7a8e: ed9f faeb    	vldr	s30, [pc, #940]         @ 0x7e3c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x764>
    7a92: 2600         	movs	r6, #0x0
    7a94: ed5f aa41    	vldr	s21, [pc, #-260]        @ 0x7994 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2bc>
    7a98: 601d         	str	r5, [r3]
    7a9a: e027         	b	0x7aec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x414> @ imm = #0x4e
    7a9c: bf00         	nop
    7a9e: bf00         	nop
    7aa0: a6 60 12 75  	.word	0x751260a6
    7aa4: 94 fd ef 3f  	.word	0x3feffd94
    7aa8: 00 00 00 00  	.word	0x00000000
    7aac: 00 00 00 00  	.word	0x00000000
    7ab0: b3 47 4f d9  	.word	0xd94f47b3
    7ab4: 09 d7 25 40  	.word	0x4025d709
    7ab8: 9f 87 d0 24  	.word	0x24d0879f
    7abc: cb 26 9d bf  	.word	0xbf9d26cb
    7ac0: ee29 1aaf    	vmul.f32	s2, s19, s31
    7ac4: 1c74         	adds	r4, r6, #0x1
    7ac6: ee25 5a2d    	vmul.f32	s10, s10, s27
    7aca: eb09 0506    	add.w	r5, r9, r6
    7ace: eef1 fa68    	vneg.f32	s31, s17
    7ad2: 2c03         	cmp	r4, #0x3
    7ad4: ee61 9a09    	vmul.f32	s19, s2, s18
    7ad8: f10c 0c01    	add.w	r12, r12, #0x1
    7adc: ee45 9a0b    	vmla.f32	s19, s10, s22
    7ae0: 4626         	mov	r6, r4
    7ae2: eeb0 1b47    	vmov.f64	d1, d7
    7ae6: 601d         	str	r5, [r3]
    7ae8: f000 8176    	beq.w	0x7dd8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x700> @ imm = #0x2ec
    7aec: ee39 5aa4    	vadd.f32	s10, s19, s9
    7af0: 2500         	movs	r5, #0x0
    7af2: ee15 4a10    	vmov	r4, s10
    7af6: eef0 5ac5    	vabs.f32	s11, s10
    7afa: f024 4400    	bic	r4, r4, #0x80000000
    7afe: eef4 5a4d    	vcmp.f32	s11, s26
    7b02: f1b4 4fff    	cmp.w	r4, #0x7f800000
    7b06: f04f 0400    	mov.w	r4, #0x0
    7b0a: bfa8         	it	ge
    7b0c: 2401         	movge	r4, #0x1
    7b0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b12: bf48         	it	mi
    7b14: 2501         	movmi	r5, #0x1
    7b16: 432c         	orrs	r4, r5
    7b18: eb0a 0406    	add.w	r4, r10, r6
    7b1c: 605c         	str	r4, [r3, #0x4]
    7b1e: f040 8147    	bne.w	0x7db0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6d8> @ imm = #0x28e
    7b22: eecf 8a85    	vdiv.f32	s17, s31, s10
    7b26: ee18 4a90    	vmov	r4, s17
    7b2a: f024 4400    	bic	r4, r4, #0x80000000
    7b2e: f1b4 4fff    	cmp.w	r4, #0x7f800000
    7b32: f280 813d    	bge.w	0x7db0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6d8> @ imm = #0x27a
    7b36: eeb0 5ac4    	vabs.f32	s10, s8
    7b3a: eef0 5ae8    	vabs.f32	s11, s17
    7b3e: eeb4 5a45    	vcmp.f32	s10, s10
    7b42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b46: fe14 5a85    	vselvs.f32	s10, s9, s10
    7b4a: eeb4 5a64    	vcmp.f32	s10, s9
    7b4e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b52: fe35 5a24    	vselgt.f32	s10, s10, s9
    7b56: ee25 5a0e    	vmul.f32	s10, s10, s28
    7b5a: fe85 5a4f    	vminnm.f32	s10, s10, s30
    7b5e: eef4 5a45    	vcmp.f32	s11, s10
    7b62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b66: d807         	bhi	0x7b78 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x4a0> @ imm = #0xe
    7b68: ed9f 5ac0    	vldr	s10, [pc, #768]         @ 0x7e6c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x794>
    7b6c: eeb4 aa45    	vcmp.f32	s20, s10
    7b70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b74: f240 8132    	bls.w	0x7ddc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x704> @ imm = #0x264
    7b78: ee38 4a84    	vadd.f32	s8, s17, s8
    7b7c: eddf 2ab2    	vldr	s5, [pc, #712]          @ 0x7e48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x770>
    7b80: ed9f 8baf    	vldr	d8, [pc, #700]          @ 0x7e40 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x768>
    7b84: eeb0 7b41    	vmov.f64	d7, d1
    7b88: f04f 0b00    	mov.w	r11, #0x0
    7b8c: eeb7 5ac4    	vcvt.f64.f32	d5, s8
    7b90: 2400         	movs	r4, #0x0
    7b92: eef0 9a6a    	vmov.f32	s19, s21
    7b96: eef0 ea6a    	vmov.f32	s29, s21
    7b9a: eef0 da6a    	vmov.f32	s27, s21
    7b9e: eef0 fa6a    	vmov.f32	s31, s21
    7ba2: ee05 1b08    	vmla.f64	d1, d5, d8
    7ba6: eb0e 0506    	add.w	r5, lr, r6
    7baa: eeb0 5a46    	vmov.f32	s10, s12
    7bae: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    7bb2: eddf 1aa6    	vldr	s3, [pc, #664]          @ 0x7e4c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x774>
    7bb6: ee01 5a21    	vmla.f32	s10, s2, s3
    7bba: eef0 1a40    	vmov.f32	s3, s0
    7bbe: ee44 1a22    	vmla.f32	s3, s8, s5
    7bc2: eeb4 2a45    	vcmp.f32	s4, s10
    7bc6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bca: eef0 8ae1    	vabs.f32	s17, s3
    7bce: fe32 1a05    	vselgt.f32	s2, s4, s10
    7bd2: eeb4 1a43    	vcmp.f32	s2, s6
    7bd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bda: eeb4 5a42    	vcmp.f32	s10, s4
    7bde: fe73 2a01    	vselgt.f32	s5, s6, s2
    7be2: eeb0 1a6a    	vmov.f32	s2, s21
    7be6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bea: eeb4 5a43    	vcmp.f32	s10, s6
    7bee: bfc8         	it	gt
    7bf0: f04f 0b01    	movgt.w	r11, #0x1
    7bf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bf8: eef5 1a40    	vcmp.f32	s3, #0
    7bfc: bf48         	it	mi
    7bfe: 2401         	movmi	r4, #0x1
    7c00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c04: bf48         	it	mi
    7c06: eeb0 1a63    	vmovmi.f32	s2, s7
    7c0a: eef4 8a66    	vcmp.f32	s17, s13
    7c0e: 609d         	str	r5, [r3, #0x8]
    7c10: fe34 aa81    	vselgt.f32	s20, s9, s2
    7c14: ed81 4a01    	vstr	s8, [r1, #4]
    7c18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c1c: f280 80b0    	bge.w	0x7d80 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6a8> @ imm = #0x160
    7c20: eef0 5a6a    	vmov.f32	s11, s21
    7c24: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    7c28: ed9f 1a89    	vldr	s2, [pc, #548]          @ 0x7e50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x778>
    7c2c: eef4 8a41    	vcmp.f32	s17, s2
    7c30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c34: d922         	bls	0x7c7c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x5a4> @ imm = #0x44
    7c36: ed9f 1a87    	vldr	s2, [pc, #540]          @ 0x7e54 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x77c>
    7c3a: eef4 8a41    	vcmp.f32	s17, s2
    7c3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c42: d911         	bls	0x7c68 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x590> @ imm = #0x22
    7c44: ed9f 1a86    	vldr	s2, [pc, #536]          @ 0x7e60 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x788>
    7c48: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    7c4c: ee38 1a81    	vadd.f32	s2, s17, s2
    7c50: eddf 1a84    	vldr	s3, [pc, #528]          @ 0x7e64 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x78c>
    7c54: e00e         	b	0x7c74 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x59c> @ imm = #0x1c
    7c56: bf00         	nop
    7c58: 79 78 b0 43  	.word	0x43b07879
    7c5c: 7c f2 b0 ba  	.word	0xbab0f27c
    7c60: 53 4a a1 43  	.word	0x43a14a53
    7c64: 00 bf 00 bf  	.word	0xbf00bf00
    7c68: ed9f 1a7b    	vldr	s2, [pc, #492]          @ 0x7e58 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x780>
    7c6c: ee38 1a81    	vadd.f32	s2, s17, s2
    7c70: eddf 1a7a    	vldr	s3, [pc, #488]          @ 0x7e5c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x784>
    7c74: ee01 5a21    	vmla.f32	s10, s2, s3
    7c78: ee6a 5a21    	vmul.f32	s11, s20, s3
    7c7c: ee3c 1ac5    	vsub.f32	s2, s25, s10
    7c80: eef1 9a65    	vneg.f32	s19, s11
    7c84: fe81 aa2a    	vmaxnm.f32	s20, s2, s21
    7c88: eeb5 aa40    	vcmp.f32	s20, #0
    7c8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c90: d942         	bls	0x7d18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x640> @ imm = #0x84
    7c92: eeb0 5ae2    	vabs.f32	s10, s5
    7c96: eeb4 5a4a    	vcmp.f32	s10, s20
    7c9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c9e: d943         	bls	0x7d28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x650> @ imm = #0x86
    7ca0: eeca da05    	vdiv.f32	s27, s20, s10
    7ca4: eef0 5a64    	vmov.f32	s11, s9
    7ca8: ee2d 1aad    	vmul.f32	s2, s27, s27
    7cac: ee21 1a01    	vmul.f32	s2, s2, s2
    7cb0: ee21 1a01    	vmul.f32	s2, s2, s2
    7cb4: ee61 8a01    	vmul.f32	s17, s2, s2
    7cb8: ee38 5aa4    	vadd.f32	s10, s17, s9
    7cbc: eeb4 5a64    	vcmp.f32	s10, s9
    7cc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7cc4: d009         	beq	0x7cda <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x602> @ imm = #0x12
    7cc6: eef0 5a45    	vmov.f32	s11, s10
    7cca: eef1 5ae5    	vsqrt.f32	s11, s11
    7cce: eef1 5ae5    	vsqrt.f32	s11, s11
    7cd2: eef1 5ae5    	vsqrt.f32	s11, s11
    7cd6: eef1 5ae5    	vsqrt.f32	s11, s11
    7cda: eec4 5aa5    	vdiv.f32	s11, s9, s11
    7cde: eddf ea62    	vldr	s29, [pc, #392]         @ 0x7e68 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x790>
    7ce2: eef4 2a62    	vcmp.f32	s5, s5
    7ce6: eef0 fa6e    	vmov.f32	s31, s29
    7cea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7cee: ee85 5a85    	vdiv.f32	s10, s11, s10
    7cf2: bf7f         	itttt	vc
    7cf4: ee12 5a90    	vmovvc	r5, s5
    7cf8: f368 051e    	bfivc	r5, r8, #0, #31
    7cfc: ee01 5a10    	vmovvc	s2, r5
    7d00: ee61 1a0a    	vmulvc.f32	s3, s2, s20
    7d04: bf7c         	itt	vc
    7d06: ee61 eaa5    	vmulvc.f32	s29, s3, s11
    7d0a: ee61 fa05    	vmulvc.f32	s31, s2, s10
    7d0e: ee2d 1aa8    	vmul.f32	s2, s27, s17
    7d12: ee61 da05    	vmul.f32	s27, s2, s10
    7d16: e033         	b	0x7d80 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6a8> @ imm = #0x66
    7d18: eef0 ea6a    	vmov.f32	s29, s21
    7d1c: eef0 da6a    	vmov.f32	s27, s21
    7d20: eef0 fa6a    	vmov.f32	s31, s21
    7d24: e02c         	b	0x7d80 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6a8> @ imm = #0x58
    7d26: bf00         	nop
    7d28: ee82 1a8a    	vdiv.f32	s2, s5, s20
    7d2c: eef0 8a64    	vmov.f32	s17, s9
    7d30: ee21 1a01    	vmul.f32	s2, s2, s2
    7d34: ee21 1a01    	vmul.f32	s2, s2, s2
    7d38: ee21 1a01    	vmul.f32	s2, s2, s2
    7d3c: ee21 5a01    	vmul.f32	s10, s2, s2
    7d40: ee75 5a24    	vadd.f32	s11, s10, s9
    7d44: eef4 5a64    	vcmp.f32	s11, s9
    7d48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d4c: d009         	beq	0x7d62 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x68a> @ imm = #0x12
    7d4e: eef0 8a65    	vmov.f32	s17, s11
    7d52: eef1 8ae8    	vsqrt.f32	s17, s17
    7d56: eef1 8ae8    	vsqrt.f32	s17, s17
    7d5a: eef1 8ae8    	vsqrt.f32	s17, s17
    7d5e: eef1 8ae8    	vsqrt.f32	s17, s17
    7d62: ee84 1aa8    	vdiv.f32	s2, s9, s17
    7d66: ee22 5a85    	vmul.f32	s10, s5, s10
    7d6a: eec1 da25    	vdiv.f32	s27, s2, s11
    7d6e: ee85 5a0a    	vdiv.f32	s10, s10, s20
    7d72: ee62 ea81    	vmul.f32	s29, s5, s2
    7d76: ee65 fa2d    	vmul.f32	s31, s10, s27
    7d7a: bf00         	nop
    7d7c: bf00         	nop
    7d7e: bf00         	nop
    7d80: ee74 8a6e    	vsub.f32	s17, s8, s29
    7d84: ea14 040b    	ands.w	r4, r4, r11
    7d88: fe0c 5a20    	vseleq.f32	s10, s24, s1
    7d8c: eeb0 aa6b    	vmov.f32	s20, s23
    7d90: ee18 5a90    	vmov	r5, s17
    7d94: f025 4400    	bic	r4, r5, #0x80000000
    7d98: f1b4 4fff    	cmp.w	r4, #0x7f800000
    7d9c: f6bf ae90    	bge.w	0x7ac0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3e8> @ imm = #-0x2e0
    7da0: ee88 1aac    	vdiv.f32	s2, s17, s25
    7da4: eeb0 1ac1    	vabs.f32	s2, s2
    7da8: fe81 aa2a    	vmaxnm.f32	s20, s2, s21
    7dac: e688         	b	0x7ac0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3e8> @ imm = #-0x2f0
    7dae: bf00         	nop
    7db0: f04f 41ff    	mov.w	r1, #0x7f800000
    7db4: 6001         	str	r1, [r0]
    7db6: 2100         	movs	r1, #0x0
    7db8: f880 c004    	strb.w	r12, [r0, #0x4]
    7dbc: e01e         	b	0x7dfc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x724> @ imm = #0x3c
    7dbe: bf00         	nop
    7dc0: 95 3a ae c3  	.word	0xc3ae3a95
    7dc4: 00 00 00 80  	.word	0x80000000
    7dc8: 0d 9e a0 38  	.word	0x38a09e0d
    7dcc: 00 00 80 7f  	.word	0x7f800000
    7dd0: 59 36 e9 bc  	.word	0xbce93659
    7dd4: 00 bf 00 bf  	.word	0xbf00bf00
    7dd8: f04f 0c03    	mov.w	r12, #0x3
    7ddc: ee1a 1a10    	vmov	r1, s20
    7de0: edc2 2a00    	vstr	s5, [r2]
    7de4: ed80 aa00    	vstr	s20, [r0]
    7de8: f880 c004    	strb.w	r12, [r0, #0x4]
    7dec: f021 4100    	bic	r1, r1, #0x80000000
    7df0: f1b1 4fff    	cmp.w	r1, #0x7f800000
    7df4: f04f 0100    	mov.w	r1, #0x0
    7df8: bfb8         	it	lt
    7dfa: 2101         	movlt	r1, #0x1
    7dfc: 7141         	strb	r1, [r0, #0x5]
    7dfe: b004         	add	sp, #0x10
    7e00: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    7e04: b001         	add	sp, #0x4
    7e06: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    7e0a: bdf0         	pop	{r4, r5, r6, r7, pc}
    7e0c: bf00         	nop
    7e0e: bf00         	nop
    7e10: f24d 70b0    	movw	r0, #0xd7b0
    7e14: f24e 0200    	movw	r2, #0xe000
    7e18: f2c0 0000    	movt	r0, #0x0
    7e1c: f2c0 0200    	movt	r2, #0x0
    7e20: 4669         	mov	r1, sp
    7e22: f003 fec9    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #0x3d92
    7e26: bf00         	nop
    7e28: ed9f aa0f    	vldr	s20, [pc, #60]          @ 0x7e68 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x790>
    7e2c: eef0 7a4a    	vmov.f32	s15, s20
    7e30: e59d         	b	0x796e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x296> @ imm = #-0x4c6
    7e32: bf00         	nop
    7e34: 08 e5 3c 1e  	.word	0x1e3ce508
    7e38: bd 37 06 36  	.word	0x360637bd
    7e3c: ac c5 a7 37  	.word	0x37a7c5ac
    7e40: 9f 87 d0 24  	.word	0x24d0879f
    7e44: cb 26 9d bf  	.word	0xbf9d26cb
    7e48: 0d 9e a0 b8  	.word	0xb8a09e0d
    7e4c: 95 3a ae 43  	.word	0x43ae3a95
    7e50: 7c f2 b0 3a  	.word	0x3ab0f27c
    7e54: a6 9b c4 3b  	.word	0x3bc49ba6
    7e58: 7c f2 b0 ba  	.word	0xbab0f27c
    7e5c: 53 4a a1 43  	.word	0x43a14a53
    7e60: a6 9b c4 bb  	.word	0xbbc49ba6
    7e64: 79 78 b0 43  	.word	0x43b07879
    7e68: 00 00 c0 7f  	.word	0x7fc00000
    7e6c: 17 b7 d1 38  	.word	0x38d1b717

00007e70 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>>:
    7e70: b5f0         	push	{r4, r5, r6, r7, lr}
    7e72: af03         	add	r7, sp, #0xc
    7e74: e92d 0f00    	push.w	{r8, r9, r10, r11}
    7e78: b081         	sub	sp, #0x4
    7e7a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    7e7e: b098         	sub	sp, #0x60
    7e80: ed9f 1ab1    	vldr	s2, [pc, #708]          @ 0x8148 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2d8>
    7e84: 247f         	movs	r4, #0x7f
    7e86: ee20 2a01    	vmul.f32	s4, s0, s2
    7e8a: eeff ea00    	vmov.f32	s29, #-1.000000e+00
    7e8e: ed9f 4bb0    	vldr	d4, [pc, #704]          @ 0x8150 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2e0>
    7e92: eddf 2a3f    	vldr	s5, [pc, #252]          @ 0x7f90 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x120>
    7e96: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    7e9a: ed9f 5b3f    	vldr	d5, [pc, #252]          @ 0x7f98 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x128>
    7e9e: ee81 1b04    	vdiv.f64	d1, d1, d4
    7ea2: ed91 4a01    	vldr	s8, [r1, #4]
    7ea6: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    7eaa: ed92 0b12    	vldr	d0, [r2, #72]
    7eae: ee04 0b05    	vmla.f64	d0, d4, d5
    7eb2: ed9f 4b3b    	vldr	d4, [pc, #236]          @ 0x7fa0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x130>
    7eb6: ee00 1b04    	vmla.f64	d1, d0, d4
    7eba: ed9f 4b3b    	vldr	d4, [pc, #236]          @ 0x7fa8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x138>
    7ebe: ee21 9b04    	vmul.f64	d9, d1, d4
    7ec2: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    7ec6: eddf 1aa4    	vldr	s3, [pc, #656]          @ 0x8158 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2e8>
    7eca: ed92 3b06    	vldr	d3, [r2, #24]
    7ece: eeb0 ba61    	vmov.f32	s22, s3
    7ed2: ed9f 4b37    	vldr	d4, [pc, #220]          @ 0x7fb0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x140>
    7ed6: eeb0 6b43    	vmov.f64	d6, d3
    7eda: eeb0 7a41    	vmov.f32	s14, s2
    7ede: ee09 6b04    	vmla.f64	d6, d9, d4
    7ee2: ed9f 8b35    	vldr	d8, [pc, #212]          @ 0x7fb8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x148>
    7ee6: eeb0 abc6    	vabs.f64	d10, d6
    7eea: ed8d 0b08    	vstr	d0, [sp, #32]
    7eee: ed9f 0a9b    	vldr	s0, [pc, #620]          @ 0x815c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2ec>
    7ef2: ee8a 5b08    	vdiv.f64	d5, d10, d8
    7ef6: eeb7 5bc5    	vcvt.f32.f64	s10, d5
    7efa: ee05 7a05    	vmla.f32	s14, s10, s10
    7efe: eeb1 7ac7    	vsqrt.f32	s14, s14
    7f02: ee37 5a05    	vadd.f32	s10, s14, s10
    7f06: ee15 6a10    	vmov	r6, s10
    7f0a: 0df5         	lsrs	r5, r6, #0x17
    7f0c: f364 56df    	bfi	r6, r4, #23, #9
    7f10: ee05 6a10    	vmov	s10, r6
    7f14: f06f 067e    	mvn	r6, #0x7e
    7f18: fa56 f685    	uxtab	r6, r6, r5
    7f1c: ee35 7a2e    	vadd.f32	s14, s10, s29
    7f20: ee35 5a01    	vadd.f32	s10, s10, s2
    7f24: ee87 5a05    	vdiv.f32	s10, s14, s10
    7f28: ed9f 7a8f    	vldr	s14, [pc, #572]         @ 0x8168 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2f8>
    7f2c: eef0 5a47    	vmov.f32	s11, s14
    7f30: ee65 7a05    	vmul.f32	s15, s10, s10
    7f34: ee35 5a05    	vadd.f32	s10, s10, s10
    7f38: ee47 5aa2    	vmla.f32	s11, s15, s5
    7f3c: ee07 baa5    	vmla.f32	s22, s15, s11
    7f40: eddf 5af9    	vldr	s11, [pc, #996]         @ 0x8328 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4b8>
    7f44: eeb0 ca65    	vmov.f32	s24, s11
    7f48: ee07 ca8b    	vmla.f32	s24, s15, s22
    7f4c: eeb0 ba41    	vmov.f32	s22, s2
    7f50: ee07 ba8c    	vmla.f32	s22, s15, s24
    7f54: ee07 6a90    	vmov	s15, r6
    7f58: ed9f cb81    	vldr	d12, [pc, #516]         @ 0x8160 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2f0>
    7f5c: 4606         	mov	r6, r0
    7f5e: eef8 7ae7    	vcvt.f32.s32	s15, s15
    7f62: ee8a ab0c    	vdiv.f64	d10, d10, d12
    7f66: ee25 5a0b    	vmul.f32	s10, s10, s22
    7f6a: ee07 5a80    	vmla.f32	s10, s15, s0
    7f6e: ed9f 0af3    	vldr	s0, [pc, #972]          @ 0x833c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4cc>
    7f72: eeb7 abca    	vcvt.f32.f64	s20, d10
    7f76: ee65 7a00    	vmul.f32	s15, s10, s0
    7f7a: fe8a 5a27    	vmaxnm.f32	s10, s20, s15
    7f7e: eeb5 5a40    	vcmp.f32	s10, #0
    7f82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f86: d11b         	bne	0x7fc0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x150> @ imm = #0x36
    7f88: ed9f 6aed    	vldr	s12, [pc, #948]         @ 0x8340 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    7f8c: e05d         	b	0x804a <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1da> @ imm = #0xba
    7f8e: bf00         	nop
    7f90: 39 8e e3 3d  	.word	0x3de38e39
    7f94: 00 bf 00 bf  	.word	0xbf00bf00
    7f98: 10 72 82 a8  	.word	0xa8827210
    7f9c: 33 29 d5 3f  	.word	0x3fd52933
    7fa0: 3e 1f 24 a5  	.word	0xa5241f3e
    7fa4: 52 c7 75 40  	.word	0x4075c752
    7fa8: 3e 40 c4 e5  	.word	0xe5c4403e
    7fac: d8 9b 6f 3f  	.word	0x3f6f9bd8
    7fb0: 83 16 e3 65  	.word	0x65e31683
    7fb4: 5b cd 17 3f  	.word	0x3f17cd5b
    7fb8: 3a 8c 30 e2  	.word	0xe2308c3a
    7fbc: 8e 79 35 3e  	.word	0x3e35798e
    7fc0: eeb4 aa4a    	vcmp.f32	s20, s20
    7fc4: eeb0 ba6e    	vmov.f32	s22, s29
    7fc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7fcc: eef4 7a67    	vcmp.f32	s15, s15
    7fd0: ed9f cadc    	vldr	s24, [pc, #880]         @ 0x8344 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d4>
    7fd4: fe17 aa8a    	vselvs.f32	s20, s15, s20
    7fd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7fdc: ec55 0b16    	vmov	r0, r5, d6
    7fe0: fe5a 7a27    	vselvs.f32	s15, s20, s15
    7fe4: 0fed         	lsrs	r5, r5, #0x1f
    7fe6: eef4 7a4a    	vcmp.f32	s15, s20
    7fea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7fee: fe7a 7a27    	vselgt.f32	s15, s20, s15
    7ff2: ee87 5a85    	vdiv.f32	s10, s15, s10
    7ff6: ee25 aa05    	vmul.f32	s20, s10, s10
    7ffa: ee3a aa0a    	vadd.f32	s20, s20, s20
    7ffe: ee05 ba0a    	vmla.f32	s22, s10, s20
    8002: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    8006: ed9f aad0    	vldr	s20, [pc, #832]         @ 0x8348 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d8>
    800a: ee8b 5a05    	vdiv.f32	s10, s22, s10
    800e: ed9f bacf    	vldr	s22, [pc, #828]         @ 0x834c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4dc>
    8012: ee05 ba0a    	vmla.f32	s22, s10, s20
    8016: ed9f aace    	vldr	s20, [pc, #824]         @ 0x8350 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e0>
    801a: ee05 ca0a    	vmla.f32	s24, s10, s20
    801e: eeb0 aa41    	vmov.f32	s20, s2
    8022: ee05 aa0b    	vmla.f32	s20, s10, s22
    8026: eeb0 ba41    	vmov.f32	s22, s2
    802a: ee05 ba0c    	vmla.f32	s22, s10, s24
    802e: ed9f 5ac9    	vldr	s10, [pc, #804]         @ 0x8354 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e4>
    8032: ee27 5a85    	vmul.f32	s10, s15, s10
    8036: eeca 7a0b    	vdiv.f32	s15, s20, s22
    803a: ee25 5a27    	vmul.f32	s10, s10, s15
    803e: ee15 0a10    	vmov	r0, s10
    8042: f365 70df    	bfi	r0, r5, #31, #1
    8046: ee06 0a10    	vmov	s12, r0
    804a: eeb7 aac6    	vcvt.f64.f32	d10, s12
    804e: eef2 6a0b    	vmov.f32	s13, #1.350000e+01
    8052: ed9f bb47    	vldr	d11, [pc, #284]         @ 0x8170 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x300>
    8056: ed81 6a03    	vstr	s12, [r1, #12]
    805a: ee0a 9b0b    	vmla.f64	d9, d10, d11
    805e: eeb7 5bc9    	vcvt.f32.f64	s10, d9
    8062: ed81 5a02    	vstr	s10, [r1, #8]
    8066: eef0 7ac5    	vabs.f32	s15, s10
    806a: eef4 7a66    	vcmp.f32	s15, s13
    806e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8072: f340 80c6    	ble.w	0x8202 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x392> @ imm = #0x18c
    8076: eeba 6a0b    	vmov.f32	s12, #-1.350000e+01
    807a: f64f 75ff    	movw	r5, #0xffff
    807e: f2c0 057f    	movt	r5, #0x7f
    8082: ed9f 0a36    	vldr	s0, [pc, #216]          @ 0x815c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2ec>
    8086: eeb4 6a45    	vcmp.f32	s12, s10
    808a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    808e: fe36 5a05    	vselgt.f32	s10, s12, s10
    8092: eeb4 5a66    	vcmp.f32	s10, s13
    8096: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    809a: fe36 5a85    	vselgt.f32	s10, s13, s10
    809e: eeb0 6b43    	vmov.f64	d6, d3
    80a2: ed81 5a02    	vstr	s10, [r1, #8]
    80a6: eeb7 9ac5    	vcvt.f64.f32	d9, s10
    80aa: ee09 6b04    	vmla.f64	d6, d9, d4
    80ae: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    80b2: eeb0 9bc6    	vabs.f64	d9, d6
    80b6: eef0 7a44    	vmov.f32	s15, s8
    80ba: ee89 8b08    	vdiv.f64	d8, d9, d8
    80be: eef7 4bc8    	vcvt.f32.f64	s9, d8
    80c2: ed9f 8bdd    	vldr	d8, [pc, #884]          @ 0x8438 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5c8>
    80c6: ee44 7aa4    	vmla.f32	s15, s9, s9
    80ca: eef1 7ae7    	vsqrt.f32	s15, s15
    80ce: ee77 4aa4    	vadd.f32	s9, s15, s9
    80d2: ee89 8b08    	vdiv.f64	d8, d9, d8
    80d6: ee14 0a90    	vmov	r0, s9
    80da: 4005         	ands	r5, r0
    80dc: 0dc0         	lsrs	r0, r0, #0x17
    80de: f105 557e    	add.w	r5, r5, #0x3f800000
    80e2: ee04 5a90    	vmov	s9, r5
    80e6: f06f 057e    	mvn	r5, #0x7e
    80ea: fa55 f080    	uxtab	r0, r5, r0
    80ee: ee74 7aae    	vadd.f32	s15, s9, s29
    80f2: ee74 4a84    	vadd.f32	s9, s9, s8
    80f6: eec7 4aa4    	vdiv.f32	s9, s15, s9
    80fa: ee64 7aa4    	vmul.f32	s15, s9, s9
    80fe: ee07 7aa2    	vmla.f32	s14, s15, s5
    8102: ee02 0a90    	vmov	s5, r0
    8106: eef8 2ae2    	vcvt.f32.s32	s5, s5
    810a: ee47 1a87    	vmla.f32	s3, s15, s14
    810e: eeb0 7a44    	vmov.f32	s14, s8
    8112: ee47 5aa1    	vmla.f32	s11, s15, s3
    8116: ee74 1aa4    	vadd.f32	s3, s9, s9
    811a: ee07 7aa5    	vmla.f32	s14, s15, s11
    811e: ee21 7a87    	vmul.f32	s14, s3, s14
    8122: ee02 7a80    	vmla.f32	s14, s5, s0
    8126: ed9f 0a85    	vldr	s0, [pc, #532]          @ 0x833c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4cc>
    812a: eef7 2bc8    	vcvt.f32.f64	s5, d8
    812e: ee67 1a00    	vmul.f32	s3, s14, s0
    8132: fe82 7aa1    	vmaxnm.f32	s14, s5, s3
    8136: eeb5 7a40    	vcmp.f32	s14, #0
    813a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    813e: d11b         	bne	0x8178 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x308> @ imm = #0x36
    8140: ed9f 6a7f    	vldr	s12, [pc, #508]         @ 0x8340 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    8144: e05b         	b	0x81fe <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x38e> @ imm = #0xb6
    8146: bf00         	nop
    8148: 00 80 3b 47  	.word	0x473b8000
    814c: 00 bf 00 bf  	.word	0xbf00bf00
    8150: 4e 55 8a 9e  	.word	0x9e8a554e
    8154: da 9b f1 40  	.word	0x40f19bda
    8158: cd cc 4c 3e  	.word	0x3e4ccccd
    815c: 18 72 31 3f  	.word	0x3f317218
    8160: 7a 8d 57 72  	.word	0x72578d7a
    8164: 7e 55 0c 3f  	.word	0x3f0c557e
    8168: 25 49 12 3e  	.word	0x3e124925
    816c: 00 bf 00 bf  	.word	0xbf00bf00
    8170: 1a ed e3 d5  	.word	0xd5e3ed1a
    8174: e2 dc ea 3f  	.word	0x3feadce2
    8178: eef4 2a62    	vcmp.f32	s5, s5
    817c: eef0 4a6e    	vmov.f32	s9, s29
    8180: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8184: eef4 1a61    	vcmp.f32	s3, s3
    8188: eddf 5a6e    	vldr	s11, [pc, #440]         @ 0x8344 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d4>
    818c: fe51 2aa2    	vselvs.f32	s5, s3, s5
    8190: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8194: ec55 0b16    	vmov	r0, r5, d6
    8198: fe52 1aa1    	vselvs.f32	s3, s5, s3
    819c: 0fed         	lsrs	r5, r5, #0x1f
    819e: eef4 1a62    	vcmp.f32	s3, s5
    81a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    81a6: fe72 1aa1    	vselgt.f32	s3, s5, s3
    81aa: ee81 7a87    	vdiv.f32	s14, s3, s14
    81ae: ee67 2a07    	vmul.f32	s5, s14, s14
    81b2: ee72 2aa2    	vadd.f32	s5, s5, s5
    81b6: ee47 4a22    	vmla.f32	s9, s14, s5
    81ba: eeb0 7a08    	vmov.f32	s14, #3.000000e+00
    81be: eddf 2a62    	vldr	s5, [pc, #392]          @ 0x8348 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d8>
    81c2: ee84 7a87    	vdiv.f32	s14, s9, s14
    81c6: eddf 4a61    	vldr	s9, [pc, #388]          @ 0x834c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4dc>
    81ca: ee47 4a22    	vmla.f32	s9, s14, s5
    81ce: eddf 2a60    	vldr	s5, [pc, #384]          @ 0x8350 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e0>
    81d2: ee47 5a22    	vmla.f32	s11, s14, s5
    81d6: eef0 2a44    	vmov.f32	s5, s8
    81da: ee47 2a24    	vmla.f32	s5, s14, s9
    81de: ee07 4a25    	vmla.f32	s8, s14, s11
    81e2: ed9f 7a8b    	vldr	s14, [pc, #556]         @ 0x8410 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5a0>
    81e6: ee21 7a87    	vmul.f32	s14, s3, s14
    81ea: ee82 4a84    	vdiv.f32	s8, s5, s8
    81ee: ee27 4a04    	vmul.f32	s8, s14, s8
    81f2: ee14 0a10    	vmov	r0, s8
    81f6: f365 70df    	bfi	r0, r5, #31, #1
    81fa: ee06 0a10    	vmov	s12, r0
    81fe: ed81 6a03    	vstr	s12, [r1, #12]
    8202: ed9f 4aae    	vldr	s8, [pc, #696]          @ 0x84bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x64c>
    8206: 2000         	movs	r0, #0x0
    8208: ed9f 7aad    	vldr	s14, [pc, #692]         @ 0x84c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x650>
    820c: ee32 4a04    	vadd.f32	s8, s4, s8
    8210: ee72 1a07    	vadd.f32	s3, s4, s14
    8214: eddf 2aab    	vldr	s5, [pc, #684]          @ 0x84c4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x654>
    8218: 9017         	str	r0, [sp, #0x5c]
    821a: ee84 7a22    	vdiv.f32	s14, s8, s5
    821e: 9016         	str	r0, [sp, #0x58]
    8220: eec1 1aa2    	vdiv.f32	s3, s3, s5
    8224: 9013         	str	r0, [sp, #0x4c]
    8226: e9cd 0014    	strd	r0, r0, [sp, #80]
    822a: eeb4 7a61    	vcmp.f32	s14, s3
    822e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8232: f200 868d    	bhi.w	0x8f50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10e0> @ imm = #0xd1a
    8236: eeb7 4ac5    	vcvt.f64.f32	d4, s10
    823a: eddf 6aa3    	vldr	s13, [pc, #652]         @ 0x84c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x658>
    823e: ed9f 0ba4    	vldr	d0, [pc, #656]          @ 0x84d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x660>
    8242: ed9d 8b08    	vldr	d8, [sp, #32]
    8246: ee04 8b00    	vmla.f64	d8, d4, d0
    824a: eeb7 4ac6    	vcvt.f64.f32	d4, s12
    824e: ed9f 0ba2    	vldr	d0, [pc, #648]          @ 0x84d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x668>
    8252: ee04 8b00    	vmla.f64	d8, d4, d0
    8256: ed9f 4a6f    	vldr	s8, [pc, #444]          @ 0x8414 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5a4>
    825a: ee22 4a04    	vmul.f32	s8, s4, s8
    825e: ed9f 0a6e    	vldr	s0, [pc, #440]          @ 0x8418 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5a8>
    8262: eeb7 2bc8    	vcvt.f32.f64	s4, d8
    8266: ed8d 4a06    	vstr	s8, [sp, #24]
    826a: ee02 4a00    	vmla.f32	s8, s4, s0
    826e: ed9f 0a6b    	vldr	s0, [pc, #428]          @ 0x841c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5ac>
    8272: ed92 2b04    	vldr	d2, [r2, #16]
    8276: 2200         	movs	r2, #0x0
    8278: eef7 2bc2    	vcvt.f32.f64	s5, d2
    827c: edcd 2a05    	vstr	s5, [sp, #20]
    8280: ee45 2a00    	vmla.f32	s5, s10, s0
    8284: ed9f 0a66    	vldr	s0, [pc, #408]          @ 0x8420 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5b0>
    8288: eeb4 7a44    	vcmp.f32	s14, s8
    828c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8290: ee46 2a26    	vmla.f32	s5, s12, s13
    8294: fe37 2a04    	vselgt.f32	s4, s14, s8
    8298: eeb4 2a61    	vcmp.f32	s4, s3
    829c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82a0: eeb4 4a47    	vcmp.f32	s8, s14
    82a4: fe71 7a82    	vselgt.f32	s15, s3, s4
    82a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82ac: eeb4 4a61    	vcmp.f32	s8, s3
    82b0: ed9f 4a23    	vldr	s8, [pc, #140]          @ 0x8340 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    82b4: bfc8         	it	gt
    82b6: 2201         	movgt	r2, #0x1
    82b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82bc: eef5 2a40    	vcmp.f32	s5, #0
    82c0: eeb0 2a44    	vmov.f32	s4, s8
    82c4: bf48         	it	mi
    82c6: 2001         	movmi	r0, #0x1
    82c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82cc: bf48         	it	mi
    82ce: eeb0 2a6e    	vmovmi.f32	s4, s29
    82d2: eef0 4ae2    	vabs.f32	s9, s5
    82d6: eef0 5a44    	vmov.f32	s11, s8
    82da: fe71 2a02    	vselgt.f32	s5, s2, s4
    82de: eeb0 2a44    	vmov.f32	s4, s8
    82e2: eeb0 aa44    	vmov.f32	s20, s8
    82e6: 4002         	ands	r2, r0
    82e8: eef4 4a40    	vcmp.f32	s9, s0
    82ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82f0: f280 80d1    	bge.w	0x8496 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x626> @ imm = #0x1a2
    82f4: ed9f 2ad6    	vldr	s4, [pc, #856]          @ 0x8650 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7e0>
    82f8: eef4 4a42    	vcmp.f32	s9, s4
    82fc: ed9f 2a10    	vldr	s4, [pc, #64]           @ 0x8340 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    8300: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8304: d914         	bls	0x8330 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4c0> @ imm = #0x28
    8306: ed9f 4ad3    	vldr	s8, [pc, #844]          @ 0x8654 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7e4>
    830a: eef4 4a44    	vcmp.f32	s9, s8
    830e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8312: d921         	bls	0x8358 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e8> @ imm = #0x42
    8314: ed9f 4ad0    	vldr	s8, [pc, #832]          @ 0x8658 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7e8>
    8318: ee74 4a84    	vadd.f32	s9, s9, s8
    831c: eddf 5acf    	vldr	s11, [pc, #828]         @ 0x865c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7ec>
    8320: eeb0 4a08    	vmov.f32	s8, #3.000000e+00
    8324: e020         	b	0x8368 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4f8> @ imm = #0x40
    8326: bf00         	nop
    8328: ab aa aa 3e  	.word	0x3eaaaaab
    832c: 00 bf 00 bf  	.word	0xbf00bf00
    8330: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    8334: eef0 2a42    	vmov.f32	s5, s4
    8338: e01a         	b	0x8370 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x500> @ imm = #0x34
    833a: bf00         	nop
    833c: f5 4a 39 3d  	.word	0x3d394af5
    8340: 00 00 00 00  	.word	0x00000000
    8344: 55 55 95 3f  	.word	0x3f955555
    8348: 2f a1 bd 3d  	.word	0x3dbda12f
    834c: 55 55 55 3f  	.word	0x3f555555
    8350: a1 bd 84 3e  	.word	0x3e84bda1
    8354: f8 a2 5f 3f  	.word	0x3f5fa2f8
    8358: ed9f 4ac1    	vldr	s8, [pc, #772]          @ 0x8660 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7f0>
    835c: ee74 4a84    	vadd.f32	s9, s9, s8
    8360: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    8364: eddf 5abf    	vldr	s11, [pc, #764]         @ 0x8664 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7f4>
    8368: ee04 4aa5    	vmla.f32	s8, s9, s11
    836c: ee62 2aa5    	vmul.f32	s5, s5, s11
    8370: eef2 4a0e    	vmov.f32	s9, #1.500000e+01
    8374: ee34 4ac4    	vsub.f32	s8, s9, s8
    8378: fe84 8a02    	vmaxnm.f32	s16, s8, s4
    837c: eeb1 4a62    	vneg.f32	s8, s5
    8380: eeb5 8a40    	vcmp.f32	s16, #0
    8384: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8388: d94e         	bls	0x8428 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5b8> @ imm = #0x9c
    838a: eeb0 2ae7    	vabs.f32	s4, s15
    838e: eeb4 2a48    	vcmp.f32	s4, s16
    8392: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8396: d953         	bls	0x8440 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5d0> @ imm = #0xa6
    8398: eec8 2a02    	vdiv.f32	s5, s16, s4
    839c: ee22 2aa2    	vmul.f32	s4, s5, s5
    83a0: ee22 2a02    	vmul.f32	s4, s4, s4
    83a4: ee22 2a02    	vmul.f32	s4, s4, s4
    83a8: ee62 4a02    	vmul.f32	s9, s4, s4
    83ac: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    83b0: ee74 5a82    	vadd.f32	s11, s9, s4
    83b4: eeb0 9a42    	vmov.f32	s18, s4
    83b8: eef4 5a42    	vcmp.f32	s11, s4
    83bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83c0: d009         	beq	0x83d6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x566> @ imm = #0x12
    83c2: eeb0 9a65    	vmov.f32	s18, s11
    83c6: eeb1 9ac9    	vsqrt.f32	s18, s18
    83ca: eeb1 9ac9    	vsqrt.f32	s18, s18
    83ce: eeb1 9ac9    	vsqrt.f32	s18, s18
    83d2: eeb1 9ac9    	vsqrt.f32	s18, s18
    83d6: ee82 2a09    	vdiv.f32	s4, s4, s18
    83da: eef4 7a67    	vcmp.f32	s15, s15
    83de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83e2: eec2 5a25    	vdiv.f32	s11, s4, s11
    83e6: f180 85c3    	bvs.w	0x8f70 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1100> @ imm = #0xb86
    83ea: ee17 0a90    	vmov	r0, s15
    83ee: f04f 557e    	mov.w	r5, #0x3f800000
    83f2: f365 001e    	bfi	r0, r5, #0, #31
    83f6: ee09 0a10    	vmov	s18, r0
    83fa: ee29 8a08    	vmul.f32	s16, s18, s16
    83fe: ee29 aa25    	vmul.f32	s20, s18, s11
    8402: ee28 2a02    	vmul.f32	s4, s16, s4
    8406: ee62 2aa4    	vmul.f32	s5, s5, s9
    840a: ee62 5aa5    	vmul.f32	s11, s5, s11
    840e: e042         	b	0x8496 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x626> @ imm = #0x84
    8410: f8 a2 5f 3f  	.word	0x3f5fa2f8
    8414: 64 9c 68 37  	.word	0x37689c64
    8418: 95 3a ae 43  	.word	0x43ae3a95
    841c: 19 91 f2 b8  	.word	0xb8f29119
    8420: 0a d7 23 3d  	.word	0x3d23d70a
    8424: 00 bf 00 bf  	.word	0xbf00bf00
    8428: eef0 5a42    	vmov.f32	s11, s4
    842c: eeb0 aa42    	vmov.f32	s20, s4
    8430: e031         	b	0x8496 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x626> @ imm = #0x62
    8432: bf00         	nop
    8434: bf00         	nop
    8436: bf00         	nop
    8438: a9 59 df 04  	.word	0x04df59a9
    843c: f3 12 21 3f  	.word	0x3f2112f3
    8440: ee87 2a88    	vdiv.f32	s4, s15, s16
    8444: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    8448: ee22 2a02    	vmul.f32	s4, s4, s4
    844c: eef0 5a64    	vmov.f32	s11, s9
    8450: ee22 2a02    	vmul.f32	s4, s4, s4
    8454: ee22 2a02    	vmul.f32	s4, s4, s4
    8458: ee22 2a02    	vmul.f32	s4, s4, s4
    845c: ee72 2a24    	vadd.f32	s5, s4, s9
    8460: eef4 2a64    	vcmp.f32	s5, s9
    8464: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8468: d009         	beq	0x847e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x60e> @ imm = #0x12
    846a: eef0 5a62    	vmov.f32	s11, s5
    846e: eef1 5ae5    	vsqrt.f32	s11, s11
    8472: eef1 5ae5    	vsqrt.f32	s11, s11
    8476: eef1 5ae5    	vsqrt.f32	s11, s11
    847a: eef1 5ae5    	vsqrt.f32	s11, s11
    847e: eec4 4aa5    	vdiv.f32	s9, s9, s11
    8482: ee27 2a82    	vmul.f32	s4, s15, s4
    8486: eec4 5aa2    	vdiv.f32	s11, s9, s5
    848a: eec2 2a08    	vdiv.f32	s5, s4, s16
    848e: ee27 2aa4    	vmul.f32	s4, s15, s9
    8492: ee22 aaa5    	vmul.f32	s20, s5, s11
    8496: ee35 2a42    	vsub.f32	s4, s10, s4
    849a: 2a00         	cmp	r2, #0x0
    849c: ed9f 0aca    	vldr	s0, [pc, #808]          @ 0x87c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x958>
    84a0: eddf 0aca    	vldr	s1, [pc, #808]          @ 0x87cc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x95c>
    84a4: ee12 0a10    	vmov	r0, s4
    84a8: fe00 9a80    	vseleq.f32	s18, s1, s0
    84ac: f020 4000    	bic	r0, r0, #0x80000000
    84b0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    84b4: db14         	blt	0x84e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x670> @ imm = #0x28
    84b6: ed9f 8ac6    	vldr	s16, [pc, #792]         @ 0x87d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x960>
    84ba: e01b         	b	0x84f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x684> @ imm = #0x36
    84bc: 00 24 74 cb  	.word	0xcb742400
    84c0: 00 24 74 4b  	.word	0x4b742400
    84c4: 00 a0 8c 47  	.word	0x478ca000
    84c8: db 6a be 38  	.word	0x38be6adb
    84cc: 00 bf 00 bf  	.word	0xbf00bf00
    84d0: 57 95 06 27  	.word	0x27069557
    84d4: 5d b5 e7 bf  	.word	0xbfe7b55d
    84d8: b0 98 53 d6  	.word	0xd65398b0
    84dc: be fa e3 3f  	.word	0x3fe3fabe
    84e0: eef2 2a0e    	vmov.f32	s5, #1.500000e+01
    84e4: ed5f 4a6a    	vldr	s9, [pc, #-424]         @ 0x8340 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    84e8: eec2 2a22    	vdiv.f32	s5, s4, s5
    84ec: eef0 2ae2    	vabs.f32	s5, s5
    84f0: fe82 8aa4    	vmaxnm.f32	s16, s5, s9
    84f4: eef7 4bc3    	vcvt.f32.f64	s9, d3
    84f8: ed1f 0a70    	vldr	s0, [pc, #-448]         @ 0x833c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4cc>
    84fc: eeb6 fa00    	vmov.f32	s30, #5.000000e-01
    8500: ee86 ba00    	vdiv.f32	s22, s12, s0
    8504: ed9f 0ab3    	vldr	s0, [pc, #716]          @ 0x87d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x964>
    8508: eeb0 3a64    	vmov.f32	s6, s9
    850c: ee05 3a26    	vmla.f32	s6, s10, s13
    8510: ee64 3a0a    	vmul.f32	s7, s8, s20
    8514: eef0 2acb    	vabs.f32	s5, s22
    8518: ee06 3a00    	vmla.f32	s6, s12, s0
    851c: e9cd 3601    	strd	r3, r6, [sp, #4]
    8520: eef4 2a4f    	vcmp.f32	s5, s30
    8524: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8528: f280 809e    	bge.w	0x8668 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7f8> @ imm = #0x13c
    852c: eddf 2aaa    	vldr	s5, [pc, #680]          @ 0x87d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x968>
    8530: eebe da00    	vmov.f32	s26, #-5.000000e-01
    8534: eef4 2a4b    	vcmp.f32	s5, s22
    8538: ed9f aaa8    	vldr	s20, [pc, #672]         @ 0x87dc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x96c>
    853c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8540: eddf 9aa7    	vldr	s19, [pc, #668]         @ 0x87e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x970>
    8544: fe32 4a8b    	vselgt.f32	s8, s5, s22
    8548: ed9f baa6    	vldr	s22, [pc, #664]         @ 0x87e4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x974>
    854c: eec6 9a29    	vdiv.f32	s19, s12, s19
    8550: ed9f 0aa5    	vldr	s0, [pc, #660]          @ 0x87e8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x978>
    8554: eeb4 4a4a    	vcmp.f32	s8, s20
    8558: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    855c: fe3a 4a04    	vselgt.f32	s8, s20, s8
    8560: ee24 ca0b    	vmul.f32	s24, s8, s22
    8564: ee3c ea0f    	vadd.f32	s28, s24, s30
    8568: eeb5 ca40    	vcmp.f32	s24, #0
    856c: ee7c 8a0d    	vadd.f32	s17, s24, s26
    8570: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8574: eebd eace    	vcvt.s32.f32	s28, s28
    8578: eefd 8ae8    	vcvt.s32.f32	s17, s17
    857c: eef4 2a69    	vcmp.f32	s5, s19
    8580: ee1e 2a10    	vmov	r2, s28
    8584: ee18 0a90    	vmov	r0, s17
    8588: bfa8         	it	ge
    858a: 4610         	movge	r0, r2
    858c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8590: fe72 2aa9    	vselgt.f32	s5, s5, s19
    8594: eef4 2a4a    	vcmp.f32	s5, s20
    8598: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    859c: fe7a 2a22    	vselgt.f32	s5, s20, s5
    85a0: ee22 aa8b    	vmul.f32	s20, s5, s22
    85a4: ee3a ba0d    	vadd.f32	s22, s20, s26
    85a8: eeb5 aa40    	vcmp.f32	s20, #0
    85ac: ee3a ca0f    	vadd.f32	s24, s20, s30
    85b0: ee0d 0a10    	vmov	s26, r0
    85b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85b8: eebd bacb    	vcvt.s32.f32	s22, s22
    85bc: eebd cacc    	vcvt.s32.f32	s24, s24
    85c0: eeb8 dacd    	vcvt.f32.s32	s26, s26
    85c4: ee1b 2a10    	vmov	r2, s22
    85c8: ed9f ba88    	vldr	s22, [pc, #544]         @ 0x87ec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x97c>
    85cc: ee1c 3a10    	vmov	r3, s24
    85d0: bfa8         	it	ge
    85d2: 461a         	movge	r2, r3
    85d4: ee0d 4a40    	vmls.f32	s8, s26, s0
    85d8: f04f 537e    	mov.w	r3, #0x3f800000
    85dc: ee0a 2a10    	vmov	s20, r2
    85e0: eb03 50c0    	add.w	r0, r3, r0, lsl #23
    85e4: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    85e8: eeb8 aaca    	vcvt.f32.s32	s20, s20
    85ec: ee4a 2a40    	vmls.f32	s5, s20, s0
    85f0: ed9f aa7f    	vldr	s20, [pc, #508]         @ 0x87f0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x980>
    85f4: eeb0 ca4a    	vmov.f32	s24, s20
    85f8: ee04 ca0b    	vmla.f32	s24, s8, s22
    85fc: ee02 aa8b    	vmla.f32	s20, s5, s22
    8600: ed9f ba7c    	vldr	s22, [pc, #496]         @ 0x87f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x984>
    8604: eeb0 da4b    	vmov.f32	s26, s22
    8608: ee04 da0c    	vmla.f32	s26, s8, s24
    860c: eeb7 ca00    	vmov.f32	s24, #1.000000e+00
    8610: ee22 eaa2    	vmul.f32	s28, s5, s5
    8614: ee02 ba8a    	vmla.f32	s22, s5, s20
    8618: eeb0 aa4f    	vmov.f32	s20, s30
    861c: ee04 aa0d    	vmla.f32	s20, s8, s26
    8620: eeb0 da4f    	vmov.f32	s26, s30
    8624: ee02 da8b    	vmla.f32	s26, s5, s22
    8628: ee24 ba04    	vmul.f32	s22, s8, s8
    862c: ee34 4a0c    	vadd.f32	s8, s8, s24
    8630: ee72 2a8c    	vadd.f32	s5, s5, s24
    8634: ee0c 2a10    	vmov	s24, r2
    8638: ee0b 4a0a    	vmla.f32	s8, s22, s20
    863c: ee0a 0a10    	vmov	s20, r0
    8640: ee4e 2a0d    	vmla.f32	s5, s28, s26
    8644: ee24 ba0a    	vmul.f32	s22, s8, s20
    8648: ee22 aa8c    	vmul.f32	s20, s5, s24
    864c: e059         	b	0x8702 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x892> @ imm = #0xb2
    864e: bf00         	nop
    8650: 7c f2 b0 3a  	.word	0x3ab0f27c
    8654: a6 9b c4 3b  	.word	0x3bc49ba6
    8658: a6 9b c4 bb  	.word	0xbbc49ba6
    865c: 79 78 b0 43  	.word	0x43b07879
    8660: 7c f2 b0 ba  	.word	0xbab0f27c
    8664: 53 4a a1 43  	.word	0x43a14a53
    8668: eef4 2a62    	vcmp.f32	s5, s5
    866c: ed9f 4a5b    	vldr	s8, [pc, #364]          @ 0x87dc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x96c>
    8670: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8674: eeb0 aa4f    	vmov.f32	s20, s30
    8678: ed9f ca5f    	vldr	s24, [pc, #380]         @ 0x87f8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x988>
    867c: fe54 2a22    	vselvs.f32	s5, s8, s5
    8680: f04f 507e    	mov.w	r0, #0x3f800000
    8684: eeb4 4a62    	vcmp.f32	s8, s5
    8688: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    868c: fe72 2a84    	vselgt.f32	s5, s5, s8
    8690: eef4 2a44    	vcmp.f32	s5, s8
    8694: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8698: eeb5 ba40    	vcmp.f32	s22, #0
    869c: fe34 4a22    	vselgt.f32	s8, s8, s5
    86a0: eddf 2a50    	vldr	s5, [pc, #320]          @ 0x87e4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x974>
    86a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86a8: ee04 aa22    	vmla.f32	s20, s8, s5
    86ac: eefd 2aca    	vcvt.s32.f32	s5, s20
    86b0: eeb8 aae2    	vcvt.f32.s32	s20, s5
    86b4: ee12 2a90    	vmov	r2, s5
    86b8: ee0a 4a0c    	vmla.f32	s8, s20, s24
    86bc: ed9f aa4b    	vldr	s20, [pc, #300]         @ 0x87ec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x97c>
    86c0: ed9f ca4b    	vldr	s24, [pc, #300]         @ 0x87f0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x980>
    86c4: eb00 50c2    	add.w	r0, r0, r2, lsl #23
    86c8: ee02 0a90    	vmov	s5, r0
    86cc: ee04 ca0a    	vmla.f32	s24, s8, s20
    86d0: ed9f aa48    	vldr	s20, [pc, #288]         @ 0x87f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x984>
    86d4: ee04 aa0c    	vmla.f32	s20, s8, s24
    86d8: eeb0 ca4f    	vmov.f32	s24, s30
    86dc: ee04 ca0a    	vmla.f32	s24, s8, s20
    86e0: ee24 aa04    	vmul.f32	s20, s8, s8
    86e4: ee34 4a01    	vadd.f32	s8, s8, s2
    86e8: ee0a 4a0c    	vmla.f32	s8, s20, s24
    86ec: ee24 4a22    	vmul.f32	s8, s8, s5
    86f0: ee81 aa04    	vdiv.f32	s20, s2, s8
    86f4: eeb0 ba44    	vmov.f32	s22, s8
    86f8: bfbc         	itt	lt
    86fa: eeb0 ba4a    	vmovlt.f32	s22, s20
    86fe: eeb0 aa44    	vmovlt.f32	s20, s8
    8702: ee3b 4a4a    	vsub.f32	s8, s22, s20
    8706: eddf ca3d    	vldr	s25, [pc, #244]         @ 0x87fc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x98c>
    870a: ed9f 0a3d    	vldr	s0, [pc, #244]          @ 0x8800 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x990>
    870e: ee69 2a25    	vmul.f32	s5, s18, s11
    8712: ee63 ba80    	vmul.f32	s23, s7, s0
    8716: ed9f 0afa    	vldr	s0, [pc, #1000]         @ 0x8b00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc90>
    871a: ee14 3a2c    	vnmls.f32	s6, s8, s25
    871e: ed9f 4a2c    	vldr	s8, [pc, #176]          @ 0x87d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x960>
    8722: ee63 3a80    	vmul.f32	s7, s7, s0
    8726: eef0 da44    	vmov.f32	s27, s8
    872a: f8d7 c008    	ldr.w	r12, [r7, #0x8]
    872e: ee13 0a10    	vmov	r0, s6
    8732: f020 4000    	bic	r0, r0, #0x80000000
    8736: f1b0 4fff    	cmp.w	r0, #0x7f800000
    873a: da17         	bge	0x876c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x8fc> @ imm = #0x2e
    873c: eddf 5af1    	vldr	s11, [pc, #964]         @ 0x8b04 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc94>
    8740: eeb4 8a48    	vcmp.f32	s16, s16
    8744: eec3 5a25    	vdiv.f32	s11, s6, s11
    8748: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    874c: eef0 5ae5    	vabs.f32	s11, s11
    8750: fe15 8a88    	vselvs.f32	s16, s11, s16
    8754: eef4 5a65    	vcmp.f32	s11, s11
    8758: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    875c: fe58 5a25    	vselvs.f32	s11, s16, s11
    8760: eeb4 8a65    	vcmp.f32	s16, s11
    8764: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8768: fe78 da25    	vselgt.f32	s27, s16, s11
    876c: ed9f 0ae6    	vldr	s0, [pc, #920]          @ 0x8b08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc98>
    8770: ee3b 8a0a    	vadd.f32	s16, s22, s20
    8774: ee42 ba80    	vmla.f32	s23, s5, s0
    8778: ed9f 0ae4    	vldr	s0, [pc, #912]          @ 0x8b0c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc9c>
    877c: ee42 3a80    	vmla.f32	s7, s5, s0
    8780: f10d 0e28    	add.w	lr, sp, #0x28
    8784: eef1 5a42    	vneg.f32	s11, s4
    8788: f10e 0a14    	add.w	r10, lr, #0x14
    878c: eeb1 ba43    	vneg.f32	s22, s6
    8790: 2600         	movs	r6, #0x0
    8792: e89c 0019    	ldm.w	r12, {r0, r3, r4}
    8796: 3401         	adds	r4, #0x1
    8798: 9404         	str	r4, [sp, #0x10]
    879a: 2400         	movs	r4, #0x0
    879c: f04f 0900    	mov.w	r9, #0x0
    87a0: ed9f aadb    	vldr	s20, [pc, #876]         @ 0x8b10 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xca0>
    87a4: 1c42         	adds	r2, r0, #0x1
    87a6: eddf 8adb    	vldr	s17, [pc, #876]         @ 0x8b14 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xca4>
    87aa: f8cc 2000    	str.w	r2, [r12]
    87ae: ed9f ca0f    	vldr	s24, [pc, #60]          @ 0x87ec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x97c>
    87b2: 1c5a         	adds	r2, r3, #0x1
    87b4: ed9f ea0e    	vldr	s28, [pc, #56]          @ 0x87f0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x980>
    87b8: 9207         	str	r2, [sp, #0x1c]
    87ba: eddf aa0e    	vldr	s21, [pc, #56]          @ 0x87f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x984>
    87be: 3002         	adds	r0, #0x2
    87c0: ed9f 9ad5    	vldr	s18, [pc, #852]         @ 0x8b18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xca8>
    87c4: 9003         	str	r0, [sp, #0xc]
    87c6: e045         	b	0x8854 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x9e4> @ imm = #0x8a
    87c8: 95 3a ae c3  	.word	0xc3ae3a95
    87cc: 00 00 00 80  	.word	0x80000000
    87d0: 00 00 80 7f  	.word	0x7f800000
    87d4: ed 79 08 b9  	.word	0xb90879ed
    87d8: 00 00 a0 c2  	.word	0xc2a00000
    87dc: 00 00 a0 42  	.word	0x42a00000
    87e0: f5 4a 39 bd  	.word	0xbd394af5
    87e4: 3b aa b8 3f  	.word	0x3fb8aa3b
    87e8: 18 72 31 3f  	.word	0x3f317218
    87ec: 89 88 08 3c  	.word	0x3c088889
    87f0: ab aa 2a 3d  	.word	0x3d2aaaab
    87f4: ab aa 2a 3e  	.word	0x3e2aaaab
    87f8: 18 72 31 bf  	.word	0xbf317218
    87fc: 77 cc 2b 31  	.word	0x312bcc77
    8800: 19 91 f2 38  	.word	0x38f29119
    8804: 00 bf 00 bf  	.word	0xbf00bf00
    8808: ee2b 0a23    	vmul.f32	s0, s22, s7
    880c: ed1f 3a04    	vldr	s6, [pc, #-16]          @ 0x8800 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x990>
    8810: ee65 ba83    	vmul.f32	s23, s11, s6
    8814: ed9f 3aba    	vldr	s6, [pc, #744]          @ 0x8b00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc90>
    8818: ee65 3a83    	vmul.f32	s7, s11, s6
    881c: ed9f 3aba    	vldr	s6, [pc, #744]          @ 0x8b08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc98>
    8820: ee40 ba03    	vmla.f32	s23, s0, s6
    8824: ed9f 3ab9    	vldr	s6, [pc, #740]          @ 0x8b0c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc9c>
    8828: ee40 3a03    	vmla.f32	s7, s0, s6
    882c: eeff ea00    	vmov.f32	s29, #-1.000000e+00
    8830: ee32 8a88    	vadd.f32	s16, s5, s16
    8834: f109 0001    	add.w	r0, r9, #0x1
    8838: eef1 5a6f    	vneg.f32	s11, s31
    883c: 9b03         	ldr	r3, [sp, #0xc]
    883e: eeb1 ba4d    	vneg.f32	s22, s26
    8842: 444b         	add	r3, r9
    8844: 2803         	cmp	r0, #0x3
    8846: f106 0601    	add.w	r6, r6, #0x1
    884a: 4681         	mov	r9, r0
    884c: f8cc 3000    	str.w	r3, [r12]
    8850: f000 8362    	beq.w	0x8f18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10a8> @ imm = #0x6c4
    8854: ee68 2a2c    	vmul.f32	s5, s16, s25
    8858: ed9f 0ae7    	vldr	s0, [pc, #924]          @ 0x8bf8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd88>
    885c: ee3b 8a81    	vadd.f32	s16, s23, s2
    8860: 4670         	mov	r0, lr
    8862: f646 23db    	movw	r3, #0x6adb
    8866: ed8d 8a0a    	vstr	s16, [sp, #40]
    886a: eec2 2a89    	vdiv.f32	s5, s5, s18
    886e: edcd 3a0b    	vstr	s7, [sp, #44]
    8872: 940c         	str	r4, [sp, #0x30]
    8874: f6cb 03be    	movt	r3, #0xb8be
    8878: 930d         	str	r3, [sp, #0x34]
    887a: ee72 2a80    	vadd.f32	s5, s5, s0
    887e: edcd 2a0e    	vstr	s5, [sp, #56]
    8882: eef0 2ac8    	vabs.f32	s5, s16
    8886: eef4 2a66    	vcmp.f32	s5, s13
    888a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    888e: bf48         	it	mi
    8890: 300c         	addmi	r0, #0xc
    8892: 9b13         	ldr	r3, [sp, #0x4c]
    8894: f8ca 3000    	str.w	r3, [r10]
    8898: e9d0 3b00    	ldrd	r3, r11, [r0]
    889c: f8d0 8008    	ldr.w	r8, [r0, #0x8]
    88a0: f8cd 8030    	str.w	r8, [sp, #0x30]
    88a4: e9cd 3b0a    	strd	r3, r11, [sp, #40]
    88a8: ed80 8a00    	vstr	s16, [r0]
    88ac: f04f 0004    	mov.w	r0, #0x4
    88b0: bf48         	it	mi
    88b2: 2010         	movmi	r0, #0x10
    88b4: f04f 0308    	mov.w	r3, #0x8
    88b8: eef4 6a62    	vcmp.f32	s13, s5
    88bc: 4470         	add	r0, lr
    88be: bf48         	it	mi
    88c0: 2314         	movmi	r3, #0x14
    88c2: eddd 2a0a    	vldr	s5, [sp, #40]
    88c6: edc0 3a00    	vstr	s7, [r0]
    88ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88ce: ee12 0a90    	vmov	r0, s5
    88d2: 9a07         	ldr	r2, [sp, #0x1c]
    88d4: fe3b 8a25    	vselgt.f32	s16, s22, s11
    88d8: eb02 0509    	add.w	r5, r2, r9
    88dc: fe75 3a8b    	vselgt.f32	s7, s11, s22
    88e0: f8cc 5004    	str.w	r5, [r12, #0x4]
    88e4: f020 4000    	bic	r0, r0, #0x80000000
    88e8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    88ec: 9814         	ldr	r0, [sp, #0x50]
    88ee: f8ca 0004    	str.w	r0, [r10, #0x4]
    88f2: 9815         	ldr	r0, [sp, #0x54]
    88f4: f8ca 0008    	str.w	r0, [r10, #0x8]
    88f8: 9816         	ldr	r0, [sp, #0x58]
    88fa: f8ca 000c    	str.w	r0, [r10, #0xc]
    88fe: f84e 4003    	str.w	r4, [lr, r3]
    8902: f280 8301    	bge.w	0x8f08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x602
    8906: eef0 5ae2    	vabs.f32	s11, s5
    890a: eef4 5a4a    	vcmp.f32	s11, s20
    890e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8912: f100 82f9    	bmi.w	0x8f08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x5f2
    8916: eddd 5a0d    	vldr	s11, [sp, #52]
    891a: ed9d da0e    	vldr	s26, [sp, #56]
    891e: ee85 baa2    	vdiv.f32	s22, s11, s5
    8922: eddd 5a0b    	vldr	s11, [sp, #44]
    8926: ee0b da65    	vmls.f32	s26, s22, s11
    892a: ee1d 0a10    	vmov	r0, s26
    892e: f020 4000    	bic	r0, r0, #0x80000000
    8932: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8936: f280 82e7    	bge.w	0x8f08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x5ce
    893a: eef0 bacd    	vabs.f32	s23, s26
    893e: eef4 ba4a    	vcmp.f32	s23, s20
    8942: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8946: f100 82df    	bmi.w	0x8f08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x5be
    894a: ee4b 3a48    	vmls.f32	s7, s22, s16
    894e: eec3 3a8d    	vdiv.f32	s7, s7, s26
    8952: ee05 8ae3    	vmls.f32	s16, s11, s7
    8956: eec8 2a22    	vdiv.f32	s5, s16, s5
    895a: ee12 0a90    	vmov	r0, s5
    895e: f020 4000    	bic	r0, r0, #0x80000000
    8962: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8966: bfbe         	ittt	lt
    8968: ee13 0a90    	vmovlt	r0, s7
    896c: f020 4000    	biclt	r0, r0, #0x80000000
    8970: f1b0 4fff    	cmplt.w	r0, #0x7f800000
    8974: f280 82c8    	bge.w	0x8f08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x590
    8978: eef0 5ac5    	vabs.f32	s11, s10
    897c: ed9f 0a9f    	vldr	s0, [pc, #636]          @ 0x8bfc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd8c>
    8980: eeb0 8ae2    	vabs.f32	s16, s5
    8984: eef4 5a65    	vcmp.f32	s11, s11
    8988: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    898c: fe51 5a25    	vselvs.f32	s11, s2, s11
    8990: eef4 5a41    	vcmp.f32	s11, s2
    8994: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8998: fe75 5a81    	vselgt.f32	s11, s11, s2
    899c: ee65 5a80    	vmul.f32	s11, s11, s0
    89a0: ed9f 0a97    	vldr	s0, [pc, #604]          @ 0x8c00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd90>
    89a4: fec5 5ac0    	vminnm.f32	s11, s11, s0
    89a8: eeb4 8a65    	vcmp.f32	s16, s11
    89ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89b0: d824         	bhi	0x89fc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xb8c> @ imm = #0x48
    89b2: eef0 5ac6    	vabs.f32	s11, s12
    89b6: ed9f 0a91    	vldr	s0, [pc, #580]          @ 0x8bfc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd8c>
    89ba: eeb0 8ae3    	vabs.f32	s16, s7
    89be: eef4 5a65    	vcmp.f32	s11, s11
    89c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89c6: fe51 5a25    	vselvs.f32	s11, s2, s11
    89ca: eef4 5a41    	vcmp.f32	s11, s2
    89ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89d2: fe75 5a81    	vselgt.f32	s11, s11, s2
    89d6: ee65 5a80    	vmul.f32	s11, s11, s0
    89da: ed9f 0a89    	vldr	s0, [pc, #548]          @ 0x8c00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd90>
    89de: fec5 5ac0    	vminnm.f32	s11, s11, s0
    89e2: eeb4 8a65    	vcmp.f32	s16, s11
    89e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89ea: d807         	bhi	0x89fc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xb8c> @ imm = #0xe
    89ec: ed9f 0a85    	vldr	s0, [pc, #532]          @ 0x8c04 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd94>
    89f0: eef4 da40    	vcmp.f32	s27, s0
    89f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89f8: f240 828f    	bls.w	0x8f1a <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10aa> @ imm = #0x51e
    89fc: ee32 5a85    	vadd.f32	s10, s5, s10
    8a00: eddd 2a05    	vldr	s5, [sp, #20]
    8a04: ee33 6a86    	vadd.f32	s12, s7, s12
    8a08: 9804         	ldr	r0, [sp, #0x10]
    8a0a: ed9f 3b45    	vldr	d3, [pc, #276]          @ 0x8b20 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcb0>
    8a0e: eeb7 bac5    	vcvt.f64.f32	d11, s10
    8a12: 2300         	movs	r3, #0x0
    8a14: eeb7 0ac6    	vcvt.f64.f32	d0, s12
    8a18: ed81 5a02    	vstr	s10, [r1, #8]
    8a1c: ed9d db08    	vldr	d13, [sp, #32]
    8a20: ed81 6a03    	vstr	s12, [r1, #12]
    8a24: 4448         	add	r0, r9
    8a26: ee0b db03    	vmla.f64	d13, d11, d3
    8a2a: f8cc 0008    	str.w	r0, [r12, #0x8]
    8a2e: 2000         	movs	r0, #0x0
    8a30: eeb0 ba68    	vmov.f32	s22, s17
    8a34: ed9f 3b3c    	vldr	d3, [pc, #240]          @ 0x8b28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcb8>
    8a38: eef0 5a68    	vmov.f32	s11, s17
    8a3c: ee00 db03    	vmla.f64	d13, d0, d3
    8a40: ed9f 3ae9    	vldr	s6, [pc, #932]          @ 0x8de8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf78>
    8a44: eddd 0a06    	vldr	s1, [sp, #24]
    8a48: eef0 3a68    	vmov.f32	s7, s17
    8a4c: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    8a50: eef0 da68    	vmov.f32	s27, s17
    8a54: ee40 0a03    	vmla.f32	s1, s0, s6
    8a58: ed9f 3ae4    	vldr	s6, [pc, #912]          @ 0x8dec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf7c>
    8a5c: ee45 2a03    	vmla.f32	s5, s10, s6
    8a60: ee46 2a26    	vmla.f32	s5, s12, s13
    8a64: eeb4 7a60    	vcmp.f32	s14, s1
    8a68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a6c: fe37 0a20    	vselgt.f32	s0, s14, s1
    8a70: eeb0 8ae2    	vabs.f32	s16, s5
    8a74: eeb4 0a61    	vcmp.f32	s0, s3
    8a78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a7c: eef4 0a47    	vcmp.f32	s1, s14
    8a80: fe71 7a80    	vselgt.f32	s15, s3, s0
    8a84: eeb0 0a68    	vmov.f32	s0, s17
    8a88: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a8c: eef4 0a61    	vcmp.f32	s1, s3
    8a90: bfc8         	it	gt
    8a92: 2301         	movgt	r3, #0x1
    8a94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a98: eef5 2a40    	vcmp.f32	s5, #0
    8a9c: 9413         	str	r4, [sp, #0x4c]
    8a9e: 9414         	str	r4, [sp, #0x50]
    8aa0: bf48         	it	mi
    8aa2: 2001         	movmi	r0, #0x1
    8aa4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8aa8: 9415         	str	r4, [sp, #0x54]
    8aaa: bf48         	it	mi
    8aac: eeb0 0a6e    	vmovmi.f32	s0, s29
    8ab0: 9416         	str	r4, [sp, #0x58]
    8ab2: fe71 2a00    	vselgt.f32	s5, s2, s0
    8ab6: ed9f 0ace    	vldr	s0, [pc, #824]          @ 0x8df0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf80>
    8aba: eeb4 8a40    	vcmp.f32	s16, s0
    8abe: 9417         	str	r4, [sp, #0x5c]
    8ac0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ac4: f280 80cc    	bge.w	0x8c60 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdf0> @ imm = #0x198
    8ac8: eef0 5a68    	vmov.f32	s11, s17
    8acc: eef7 3a08    	vmov.f32	s7, #1.500000e+00
    8ad0: ed9f 0ac8    	vldr	s0, [pc, #800]          @ 0x8df4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf84>
    8ad4: eeb4 8a40    	vcmp.f32	s16, s0
    8ad8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8adc: d932         	bls	0x8b44 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcd4> @ imm = #0x64
    8ade: ed9f 0ac6    	vldr	s0, [pc, #792]          @ 0x8df8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf88>
    8ae2: eeb4 8a40    	vcmp.f32	s16, s0
    8ae6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8aea: d921         	bls	0x8b30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcc0> @ imm = #0x42
    8aec: ed9f 0ac3    	vldr	s0, [pc, #780]          @ 0x8dfc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf8c>
    8af0: eef0 3a08    	vmov.f32	s7, #3.000000e+00
    8af4: ee38 0a00    	vadd.f32	s0, s16, s0
    8af8: ed9f 3ac1    	vldr	s6, [pc, #772]          @ 0x8e00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf90>
    8afc: e01e         	b	0x8b3c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xccc> @ imm = #0x3c
    8afe: bf00         	nop
    8b00: db 6a be b8  	.word	0xb8be6adb
    8b04: 0a d7 23 3c  	.word	0x3c23d70a
    8b08: e9 aa 3d bf  	.word	0xbf3daae9
    8b0c: f7 d5 1f 3f  	.word	0x3f1fd5f7
    8b10: 08 e5 3c 1e  	.word	0x1e3ce508
    8b14: 00 00 00 00  	.word	0x00000000
    8b18: f5 4a 39 3d  	.word	0x3d394af5
    8b1c: 00 bf 00 bf  	.word	0xbf00bf00
    8b20: 57 95 06 27  	.word	0x27069557
    8b24: 5d b5 e7 bf  	.word	0xbfe7b55d
    8b28: b0 98 53 d6  	.word	0xd65398b0
    8b2c: be fa e3 3f  	.word	0x3fe3fabe
    8b30: ed9f 0ab4    	vldr	s0, [pc, #720]          @ 0x8e04 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf94>
    8b34: ee38 0a00    	vadd.f32	s0, s16, s0
    8b38: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x8f00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1090>
    8b3c: ee40 3a03    	vmla.f32	s7, s0, s6
    8b40: ee62 5a83    	vmul.f32	s11, s5, s6
    8b44: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    8b48: eef1 da65    	vneg.f32	s27, s11
    8b4c: ee30 0a63    	vsub.f32	s0, s0, s7
    8b50: fe80 8a28    	vmaxnm.f32	s16, s0, s17
    8b54: eeb5 8a40    	vcmp.f32	s16, #0
    8b58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b5c: d944         	bls	0x8be8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd78> @ imm = #0x88
    8b5e: eef0 2ae7    	vabs.f32	s5, s15
    8b62: eef4 2a48    	vcmp.f32	s5, s16
    8b66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b6a: d94d         	bls	0x8c08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd98> @ imm = #0x9a
    8b6c: eec8 2a22    	vdiv.f32	s5, s16, s5
    8b70: eeb0 ba41    	vmov.f32	s22, s2
    8b74: ee22 0aa2    	vmul.f32	s0, s5, s5
    8b78: ee20 0a00    	vmul.f32	s0, s0, s0
    8b7c: ee20 0a00    	vmul.f32	s0, s0, s0
    8b80: ee60 3a00    	vmul.f32	s7, s0, s0
    8b84: ee73 5a81    	vadd.f32	s11, s7, s2
    8b88: eef4 5a41    	vcmp.f32	s11, s2
    8b8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b90: d009         	beq	0x8ba6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd36> @ imm = #0x12
    8b92: eeb0 ba65    	vmov.f32	s22, s11
    8b96: eeb1 bacb    	vsqrt.f32	s22, s22
    8b9a: eeb1 bacb    	vsqrt.f32	s22, s22
    8b9e: eeb1 bacb    	vsqrt.f32	s22, s22
    8ba2: eeb1 bacb    	vsqrt.f32	s22, s22
    8ba6: eec1 ba0b    	vdiv.f32	s23, s2, s22
    8baa: ed9f baef    	vldr	s22, [pc, #956]         @ 0x8f68 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10f8>
    8bae: eef4 7a67    	vcmp.f32	s15, s15
    8bb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8bb6: ee8b daa5    	vdiv.f32	s26, s23, s11
    8bba: eef0 5a4b    	vmov.f32	s11, s22
    8bbe: bf7f         	itttt	vc
    8bc0: ee17 5a90    	vmovvc	r5, s15
    8bc4: f04f 527e    	movvc.w	r2, #0x3f800000
    8bc8: f362 051e    	bfivc	r5, r2, #0, #31
    8bcc: ee00 5a10    	vmovvc	s0, r5
    8bd0: bf7e         	ittt	vc
    8bd2: ee60 0a08    	vmulvc.f32	s1, s0, s16
    8bd6: ee20 baab    	vmulvc.f32	s22, s1, s23
    8bda: ee60 5a0d    	vmulvc.f32	s11, s0, s26
    8bde: ee22 0aa3    	vmul.f32	s0, s5, s7
    8be2: ee60 3a0d    	vmul.f32	s7, s0, s26
    8be6: e03b         	b	0x8c60 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdf0> @ imm = #0x76
    8be8: eeb0 ba68    	vmov.f32	s22, s17
    8bec: eef0 3a68    	vmov.f32	s7, s17
    8bf0: eef0 5a68    	vmov.f32	s11, s17
    8bf4: e034         	b	0x8c60 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdf0> @ imm = #0x68
    8bf6: bf00         	nop
    8bf8: ed 79 08 39  	.word	0x390879ed
    8bfc: bd 37 06 36  	.word	0x360637bd
    8c00: ac c5 a7 37  	.word	0x37a7c5ac
    8c04: 17 b7 d1 38  	.word	0x38d1b717
    8c08: ee87 0a88    	vdiv.f32	s0, s15, s16
    8c0c: eef0 5a41    	vmov.f32	s11, s2
    8c10: ee20 0a00    	vmul.f32	s0, s0, s0
    8c14: ee20 0a00    	vmul.f32	s0, s0, s0
    8c18: ee20 0a00    	vmul.f32	s0, s0, s0
    8c1c: ee60 2a00    	vmul.f32	s5, s0, s0
    8c20: ee72 3a81    	vadd.f32	s7, s5, s2
    8c24: eef4 3a41    	vcmp.f32	s7, s2
    8c28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c2c: d009         	beq	0x8c42 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdd2> @ imm = #0x12
    8c2e: eef0 5a63    	vmov.f32	s11, s7
    8c32: eef1 5ae5    	vsqrt.f32	s11, s11
    8c36: eef1 5ae5    	vsqrt.f32	s11, s11
    8c3a: eef1 5ae5    	vsqrt.f32	s11, s11
    8c3e: eef1 5ae5    	vsqrt.f32	s11, s11
    8c42: ee81 0a25    	vdiv.f32	s0, s2, s11
    8c46: ee67 0aa2    	vmul.f32	s1, s15, s5
    8c4a: eec0 3a23    	vdiv.f32	s7, s0, s7
    8c4e: eec0 0a88    	vdiv.f32	s1, s1, s16
    8c52: ee27 ba80    	vmul.f32	s22, s15, s0
    8c56: ee60 5aa3    	vmul.f32	s11, s1, s7
    8c5a: bf00         	nop
    8c5c: bf00         	nop
    8c5e: bf00         	nop
    8c60: ee75 fa4b    	vsub.f32	s31, s10, s22
    8c64: 4018         	ands	r0, r3
    8c66: ed9f 0ac8    	vldr	s0, [pc, #800]          @ 0x8f88 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1118>
    8c6a: eef0 ba44    	vmov.f32	s23, s8
    8c6e: ed9f 3ac7    	vldr	s6, [pc, #796]          @ 0x8f8c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x111c>
    8c72: ee1f 5a90    	vmov	r5, s31
    8c76: fe03 ba00    	vseleq.f32	s22, s6, s0
    8c7a: f025 4000    	bic	r0, r5, #0x80000000
    8c7e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8c82: da07         	bge	0x8c94 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xe24> @ imm = #0xe
    8c84: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    8c88: ee8f 0a80    	vdiv.f32	s0, s31, s0
    8c8c: eeb0 0ac0    	vabs.f32	s0, s0
    8c90: fec0 ba28    	vmaxnm.f32	s23, s0, s17
    8c94: eec6 2a09    	vdiv.f32	s5, s12, s18
    8c98: eeb0 8ae2    	vabs.f32	s16, s5
    8c9c: eeb4 8a4f    	vcmp.f32	s16, s30
    8ca0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ca4: f280 80b0    	bge.w	0x8e08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf98> @ imm = #0x160
    8ca8: ed9f 0abe    	vldr	s0, [pc, #760]          @ 0x8fa4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1134>
    8cac: eef0 9a45    	vmov.f32	s19, s10
    8cb0: eeb4 0a62    	vcmp.f32	s0, s5
    8cb4: eeb0 5a68    	vmov.f32	s10, s17
    8cb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cbc: eef0 8a40    	vmov.f32	s17, s0
    8cc0: ed9f 2ab4    	vldr	s4, [pc, #720]          @ 0x8f94 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1124>
    8cc4: fe30 0a22    	vselgt.f32	s0, s0, s5
    8cc8: ed9f 9ab3    	vldr	s18, [pc, #716]         @ 0x8f98 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1128>
    8ccc: eef0 ea41    	vmov.f32	s29, s2
    8cd0: eeb0 1a42    	vmov.f32	s2, s4
    8cd4: ed9f 3ab2    	vldr	s6, [pc, #712]          @ 0x8fa0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1130>
    8cd8: f04f 527e    	mov.w	r2, #0x3f800000
    8cdc: eeb4 0a42    	vcmp.f32	s0, s4
    8ce0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ce4: ee86 da03    	vdiv.f32	s26, s12, s6
    8ce8: fe32 8a00    	vselgt.f32	s16, s4, s0
    8cec: eebe 2a00    	vmov.f32	s4, #-5.000000e-01
    8cf0: ee28 0a09    	vmul.f32	s0, s16, s18
    8cf4: ee70 0a0f    	vadd.f32	s1, s0, s30
    8cf8: eeb5 0a40    	vcmp.f32	s0, #0
    8cfc: ee70 2a02    	vadd.f32	s5, s0, s4
    8d00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d04: eefd 0ae0    	vcvt.s32.f32	s1, s1
    8d08: eefd 2ae2    	vcvt.s32.f32	s5, s5
    8d0c: eef4 8a4d    	vcmp.f32	s17, s26
    8d10: ee10 3a90    	vmov	r3, s1
    8d14: ee12 0a90    	vmov	r0, s5
    8d18: bfa8         	it	ge
    8d1a: 4618         	movge	r0, r3
    8d1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d20: fe38 0a8d    	vselgt.f32	s0, s17, s26
    8d24: eef0 8a45    	vmov.f32	s17, s10
    8d28: eeb0 5a69    	vmov.f32	s10, s19
    8d2c: eeb4 0a41    	vcmp.f32	s0, s2
    8d30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d34: fe31 0a00    	vselgt.f32	s0, s2, s0
    8d38: eeb0 1a6e    	vmov.f32	s2, s29
    8d3c: ee60 0a09    	vmul.f32	s1, s0, s18
    8d40: ed9f 9a8e    	vldr	s18, [pc, #568]         @ 0x8f7c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x110c>
    8d44: ee70 2a82    	vadd.f32	s5, s1, s4
    8d48: eef5 0a40    	vcmp.f32	s1, #0
    8d4c: ee30 da8f    	vadd.f32	s26, s1, s30
    8d50: ee00 0a90    	vmov	s1, r0
    8d54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d58: eefd 2ae2    	vcvt.s32.f32	s5, s5
    8d5c: eb02 50c0    	add.w	r0, r2, r0, lsl #23
    8d60: eef8 0ae0    	vcvt.f32.s32	s1, s1
    8d64: ee12 3a90    	vmov	r3, s5
    8d68: eefd 2acd    	vcvt.s32.f32	s5, s26
    8d6c: ee00 8ac9    	vmls.f32	s16, s1, s18
    8d70: eef0 0a4e    	vmov.f32	s1, s28
    8d74: eeb0 da6a    	vmov.f32	s26, s21
    8d78: ee12 5a90    	vmov	r5, s5
    8d7c: bfa8         	it	ge
    8d7e: 462b         	movge	r3, r5
    8d80: ee02 3a90    	vmov	s5, r3
    8d84: eb02 53c3    	add.w	r3, r2, r3, lsl #23
    8d88: ee48 0a0c    	vmla.f32	s1, s16, s24
    8d8c: eef8 2ae2    	vcvt.f32.s32	s5, s5
    8d90: ee02 0ac9    	vmls.f32	s0, s5, s18
    8d94: eef0 2a4e    	vmov.f32	s5, s28
    8d98: ee08 da20    	vmla.f32	s26, s16, s1
    8d9c: eef0 0a6a    	vmov.f32	s1, s21
    8da0: ee40 2a0c    	vmla.f32	s5, s0, s24
    8da4: ee20 9a00    	vmul.f32	s18, s0, s0
    8da8: ee40 0a22    	vmla.f32	s1, s0, s5
    8dac: eef0 2a4f    	vmov.f32	s5, s30
    8db0: ee48 2a0d    	vmla.f32	s5, s16, s26
    8db4: eeb0 da4f    	vmov.f32	s26, s30
    8db8: ee00 da20    	vmla.f32	s26, s0, s1
    8dbc: ee68 0a08    	vmul.f32	s1, s16, s16
    8dc0: ee38 8a2e    	vadd.f32	s16, s16, s29
    8dc4: ee30 0a2e    	vadd.f32	s0, s0, s29
    8dc8: ee00 8aa2    	vmla.f32	s16, s1, s5
    8dcc: ee00 0a90    	vmov	s1, r0
    8dd0: ee09 0a0d    	vmla.f32	s0, s18, s26
    8dd4: ee09 3a10    	vmov	s18, r3
    8dd8: ee68 2a20    	vmul.f32	s5, s16, s1
    8ddc: ee20 8a09    	vmul.f32	s16, s0, s18
    8de0: ed9f 9a67    	vldr	s18, [pc, #412]         @ 0x8f80 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1110>
    8de4: e05b         	b	0x8e9e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x102e> @ imm = #0xb6
    8de6: bf00         	nop
    8de8: 95 3a ae 43  	.word	0x43ae3a95
    8dec: 19 91 f2 b8  	.word	0xb8f29119
    8df0: 0a d7 23 3d  	.word	0x3d23d70a
    8df4: 7c f2 b0 3a  	.word	0x3ab0f27c
    8df8: a6 9b c4 3b  	.word	0x3bc49ba6
    8dfc: a6 9b c4 bb  	.word	0xbbc49ba6
    8e00: 79 78 b0 43  	.word	0x43b07879
    8e04: 7c f2 b0 ba  	.word	0xbab0f27c
    8e08: eeb4 8a48    	vcmp.f32	s16, s16
    8e0c: ed9f 2a61    	vldr	s4, [pc, #388]          @ 0x8f94 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1124>
    8e10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e14: ed9f 3a60    	vldr	s6, [pc, #384]          @ 0x8f98 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1128>
    8e18: eef0 0a4f    	vmov.f32	s1, s30
    8e1c: fe12 0a08    	vselvs.f32	s0, s4, s16
    8e20: eeb0 da6a    	vmov.f32	s26, s21
    8e24: f04f 527e    	mov.w	r2, #0x3f800000
    8e28: eeb4 2a40    	vcmp.f32	s4, s0
    8e2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e30: fe30 0a02    	vselgt.f32	s0, s0, s4
    8e34: eeb4 0a42    	vcmp.f32	s0, s4
    8e38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e3c: eef5 2a40    	vcmp.f32	s5, #0
    8e40: fe32 0a00    	vselgt.f32	s0, s4, s0
    8e44: ed9f 2a55    	vldr	s4, [pc, #340]          @ 0x8f9c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x112c>
    8e48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e4c: ee40 0a03    	vmla.f32	s1, s0, s6
    8e50: eefd 0ae0    	vcvt.s32.f32	s1, s1
    8e54: eeb8 8ae0    	vcvt.f32.s32	s16, s1
    8e58: ee10 0a90    	vmov	r0, s1
    8e5c: ee08 0a02    	vmla.f32	s0, s16, s4
    8e60: eeb0 8a4e    	vmov.f32	s16, s28
    8e64: eb02 50c0    	add.w	r0, r2, r0, lsl #23
    8e68: ee00 0a90    	vmov	s1, r0
    8e6c: ee00 8a0c    	vmla.f32	s16, s0, s24
    8e70: ee00 da08    	vmla.f32	s26, s0, s16
    8e74: eeb0 8a4f    	vmov.f32	s16, s30
    8e78: ee00 8a0d    	vmla.f32	s16, s0, s26
    8e7c: ee20 da00    	vmul.f32	s26, s0, s0
    8e80: ee30 0a01    	vadd.f32	s0, s0, s2
    8e84: ee0d 0a08    	vmla.f32	s0, s26, s16
    8e88: ee20 0a20    	vmul.f32	s0, s0, s1
    8e8c: ee81 8a00    	vdiv.f32	s16, s2, s0
    8e90: eef0 2a40    	vmov.f32	s5, s0
    8e94: bfbc         	itt	lt
    8e96: eef0 2a48    	vmovlt.f32	s5, s16
    8e9a: eeb0 8a40    	vmovlt.f32	s16, s0
    8e9e: eeb0 da64    	vmov.f32	s26, s9
    8ea2: ee05 da26    	vmla.f32	s26, s10, s13
    8ea6: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x8f90 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1120>
    8eaa: ee6d 5aa5    	vmul.f32	s11, s27, s11
    8eae: eef0 da44    	vmov.f32	s27, s8
    8eb2: ee06 da00    	vmla.f32	s26, s12, s0
    8eb6: ee32 0ac8    	vsub.f32	s0, s5, s16
    8eba: ee10 da2c    	vnmls.f32	s26, s0, s25
    8ebe: ee1d 0a10    	vmov	r0, s26
    8ec2: f020 4000    	bic	r0, r0, #0x80000000
    8ec6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8eca: f6bf ac9d    	bge.w	0x8808 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x998> @ imm = #-0x6c6
    8ece: ed9f 0a36    	vldr	s0, [pc, #216]          @ 0x8fa8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1138>
    8ed2: eef4 ba6b    	vcmp.f32	s23, s23
    8ed6: ee8d 0a00    	vdiv.f32	s0, s26, s0
    8eda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ede: eeb0 0ac0    	vabs.f32	s0, s0
    8ee2: fe50 0a2b    	vselvs.f32	s1, s0, s23
    8ee6: eeb4 0a40    	vcmp.f32	s0, s0
    8eea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8eee: fe10 0a80    	vselvs.f32	s0, s1, s0
    8ef2: eef4 0a40    	vcmp.f32	s1, s0
    8ef6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8efa: fe70 da80    	vselgt.f32	s27, s1, s0
    8efe: e483         	b	0x8808 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x998> @ imm = #-0x6fa
    8f00: 53 4a a1 43  	.word	0x43a14a53
    8f04: 00 bf 00 bf  	.word	0xbf00bf00
    8f08: 9902         	ldr	r1, [sp, #0x8]
    8f0a: f04f 40ff    	mov.w	r0, #0x7f800000
    8f0e: 6008         	str	r0, [r1]
    8f10: 2000         	movs	r0, #0x0
    8f12: 710e         	strb	r6, [r1, #0x4]
    8f14: e012         	b	0x8f3c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10cc> @ imm = #0x24
    8f16: bf00         	nop
    8f18: 2603         	movs	r6, #0x3
    8f1a: ee1d 0a90    	vmov	r0, s27
    8f1e: 9901         	ldr	r1, [sp, #0x4]
    8f20: edc1 7a01    	vstr	s15, [r1, #4]
    8f24: 9902         	ldr	r1, [sp, #0x8]
    8f26: f020 4000    	bic	r0, r0, #0x80000000
    8f2a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8f2e: f04f 0000    	mov.w	r0, #0x0
    8f32: edc1 da00    	vstr	s27, [r1]
    8f36: 710e         	strb	r6, [r1, #0x4]
    8f38: bfb8         	it	lt
    8f3a: 2001         	movlt	r0, #0x1
    8f3c: 7148         	strb	r0, [r1, #0x5]
    8f3e: b018         	add	sp, #0x60
    8f40: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    8f44: b001         	add	sp, #0x4
    8f46: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    8f4a: bdf0         	pop	{r4, r5, r6, r7, pc}
    8f4c: bf00         	nop
    8f4e: bf00         	nop
    8f50: f24d 70b0    	movw	r0, #0xd7b0
    8f54: f24e 0200    	movw	r2, #0xe000
    8f58: f2c0 0000    	movt	r0, #0x0
    8f5c: f2c0 0200    	movt	r2, #0x0
    8f60: a90a         	add	r1, sp, #0x28
    8f62: f002 fe29    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #0x2c52
    8f66: bf00         	nop
    8f68: 00 00 c0 7f  	.word	0x7fc00000
    8f6c: 00 bf 00 bf  	.word	0xbf00bf00
    8f70: ed9f aa04    	vldr	s20, [pc, #16]          @ 0x8f84 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1114>
    8f74: eeb0 2a4a    	vmov.f32	s4, s20
    8f78: f7ff ba45    	b.w	0x8406 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x596> @ imm = #-0xb76
    8f7c: 18 72 31 3f  	.word	0x3f317218
    8f80: f5 4a 39 3d  	.word	0x3d394af5
    8f84: 00 00 c0 7f  	.word	0x7fc00000
    8f88: 95 3a ae c3  	.word	0xc3ae3a95
    8f8c: 00 00 00 80  	.word	0x80000000
    8f90: ed 79 08 b9  	.word	0xb90879ed
    8f94: 00 00 a0 42  	.word	0x42a00000
    8f98: 3b aa b8 3f  	.word	0x3fb8aa3b
    8f9c: 18 72 31 bf  	.word	0xbf317218
    8fa0: f5 4a 39 bd  	.word	0xbd394af5
    8fa4: 00 00 a0 c2  	.word	0xc2a00000
    8fa8: 0a d7 23 3c  	.word	0x3c23d70a
    8fac: d4 d4 d4 d4  	.word	0xd4d4d4d4

00008fb0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>>:
    8fb0: b5f0         	push	{r4, r5, r6, r7, lr}
    8fb2: af03         	add	r7, sp, #0xc
    8fb4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    8fb8: b081         	sub	sp, #0x4
    8fba: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    8fbe: b0aa         	sub	sp, #0xa8
    8fc0: ed91 1a00    	vldr	s2, [r1]
    8fc4: 461c         	mov	r4, r3
    8fc6: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    8fca: 4605         	mov	r5, r0
    8fcc: ed9f 2b66    	vldr	d2, [pc, #408]          @ 0x9168 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1b8>
    8fd0: ee21 3b02    	vmul.f64	d3, d1, d2
    8fd4: ed91 1a01    	vldr	s2, [r1, #4]
    8fd8: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    8fdc: ed92 4b14    	vldr	d4, [r2, #80]
    8fe0: ee34 5b03    	vadd.f64	d5, d4, d3
    8fe4: ee21 4b02    	vmul.f64	d4, d1, d2
    8fe8: ed91 1a02    	vldr	s2, [r1, #8]
    8fec: ee35 6b04    	vadd.f64	d6, d5, d4
    8ff0: eeb7 5ac1    	vcvt.f64.f32	d5, s2
    8ff4: ed9f 1b5e    	vldr	d1, [pc, #376]          @ 0x9170 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1c0>
    8ff8: ee25 8b01    	vmul.f64	d8, d5, d1
    8ffc: ed91 1a03    	vldr	s2, [r1, #12]
    9000: eeb7 7ac1    	vcvt.f64.f32	d7, s2
    9004: ed9f 1b5c    	vldr	d1, [pc, #368]          @ 0x9178 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1c8>
    9008: ee27 ab01    	vmul.f64	d10, d7, d1
    900c: ed91 1a05    	vldr	s2, [r1, #20]
    9010: eeb7 9ac1    	vcvt.f64.f32	d9, s2
    9014: ed91 1a06    	vldr	s2, [r1, #24]
    9018: ee36 6b08    	vadd.f64	d6, d6, d8
    901c: eeb7 bac1    	vcvt.f64.f32	d11, s2
    9020: edd1 1a07    	vldr	s3, [r1, #28]
    9024: ee36 6b0a    	vadd.f64	d6, d6, d10
    9028: ee09 6b02    	vmla.f64	d6, d9, d2
    902c: eeb7 9ae1    	vcvt.f64.f32	d9, s3
    9030: eefa 1a0b    	vmov.f32	s3, #-1.350000e+01
    9034: ee2b bb02    	vmul.f64	d11, d11, d2
    9038: ee29 cb02    	vmul.f64	d12, d9, d2
    903c: ee36 db0b    	vadd.f64	d13, d6, d11
    9040: ed9f 6a4f    	vldr	s12, [pc, #316]         @ 0x9180 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1d0>
    9044: ee60 6a06    	vmul.f32	s13, s0, s12
    9048: ee3d 9b0c    	vadd.f64	d9, d13, d12
    904c: ee20 6a86    	vmul.f32	s12, s1, s12
    9050: eddf 0a61    	vldr	s1, [pc, #388]          @ 0x91d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x228>
    9054: eeb7 eae6    	vcvt.f64.f32	d14, s13
    9058: ed9f db4b    	vldr	d13, [pc, #300]         @ 0x9188 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1d8>
    905c: ee8e fb0d    	vdiv.f64	d15, d14, d13
    9060: ed9f eb4b    	vldr	d14, [pc, #300]         @ 0x9190 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1e0>
    9064: ee09 fb0e    	vmla.f64	d15, d9, d14
    9068: ed9f 9b4b    	vldr	d9, [pc, #300]          @ 0x9198 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1e8>
    906c: ee8f 9b09    	vdiv.f64	d9, d15, d9
    9070: eeb2 fa0b    	vmov.f32	s30, #1.350000e+01
    9074: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    9078: ed92 9b16    	vldr	d9, [r2, #88]
    907c: eef4 1a40    	vcmp.f32	s3, s0
    9080: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9084: ee39 3b03    	vadd.f64	d3, d9, d3
    9088: fe31 0a80    	vselgt.f32	s0, s3, s0
    908c: ed8d 9b18    	vstr	d9, [sp, #96]
    9090: eeb4 0a4f    	vcmp.f32	s0, s30
    9094: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9098: ee33 3b04    	vadd.f64	d3, d3, d4
    909c: fe3f 0a00    	vselgt.f32	s0, s30, s0
    90a0: ee05 3b02    	vmla.f64	d3, d5, d2
    90a4: ed81 0a04    	vstr	s0, [r1, #16]
    90a8: eeb7 9ac0    	vcvt.f64.f32	d9, s0
    90ac: ee07 3b02    	vmla.f64	d3, d7, d2
    90b0: ed9f 2b4b    	vldr	d2, [pc, #300]          @ 0x91e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x230>
    90b4: ee09 3b02    	vmla.f64	d3, d9, d2
    90b8: ee33 2b0b    	vadd.f64	d2, d3, d11
    90bc: eeb7 3ac6    	vcvt.f64.f32	d3, s12
    90c0: ed9f bb49    	vldr	d11, [pc, #292]         @ 0x91e8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x238>
    90c4: ee32 2b0c    	vadd.f64	d2, d2, d12
    90c8: ee83 3b0d    	vdiv.f64	d3, d3, d13
    90cc: ee02 3b0e    	vmla.f64	d3, d2, d14
    90d0: ed9f 2b47    	vldr	d2, [pc, #284]          @ 0x91f0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x240>
    90d4: ee83 2b02    	vdiv.f64	d2, d3, d2
    90d8: ed92 cb0c    	vldr	d12, [r2, #48]
    90dc: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    90e0: ed8d cb06    	vstr	d12, [sp, #24]
    90e4: eef4 1a42    	vcmp.f32	s3, s4
    90e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    90ec: ed92 eb1a    	vldr	d14, [r2, #104]
    90f0: fe31 2a82    	vselgt.f32	s4, s3, s4
    90f4: ed92 db1c    	vldr	d13, [r2, #112]
    90f8: eeb4 2a4f    	vcmp.f32	s4, s30
    90fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9100: eeb7 4bce    	vcvt.f32.f64	s8, d14
    9104: fe3f 3a02    	vselgt.f32	s6, s30, s4
    9108: ed8d 4a11    	vstr	s8, [sp, #68]
    910c: eeb7 7bcd    	vcvt.f32.f64	s14, d13
    9110: ed8d 7a10    	vstr	s14, [sp, #64]
    9114: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    9118: ed81 3a05    	vstr	s6, [r1, #20]
    911c: ed8d 2b16    	vstr	d2, [sp, #88]
    9120: ee23 5a20    	vmul.f32	s10, s6, s1
    9124: ee02 cb0b    	vmla.f64	d12, d2, d11
    9128: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0x94c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x518>
    912c: ee35 4a04    	vadd.f32	s8, s10, s8
    9130: ee8c 2b02    	vdiv.f64	d2, d12, d2
    9134: ee35 5a07    	vadd.f32	s10, s10, s14
    9138: ed9f 7adb    	vldr	s14, [pc, #876]         @ 0x94a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x4f8>
    913c: eef7 4bc2    	vcvt.f32.f64	s9, d2
    9140: eeb0 2a44    	vmov.f32	s4, s8
    9144: ee04 2a87    	vmla.f32	s4, s9, s14
    9148: eeb0 7a45    	vmov.f32	s14, s10
    914c: ee04 7ae0    	vmls.f32	s14, s9, s1
    9150: fe82 2a47    	vminnm.f32	s4, s4, s14
    9154: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    9158: eeb4 2a47    	vcmp.f32	s4, s14
    915c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9160: f240 810c    	bls.w	0x937c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3cc> @ imm = #0x218
    9164: e048         	b	0x91f8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x248> @ imm = #0x90
    9166: bf00         	nop
    9168: 00 00 00 00  	.word	0x00000000
    916c: 00 00 00 00  	.word	0x00000000
    9170: 35 d7 f4 dc  	.word	0xdcf4d735
    9174: 47 af d5 3f  	.word	0x3fd5af47
    9178: 65 44 24 3c  	.word	0x3c244465
    917c: c8 40 c4 3f  	.word	0x3fc440c8
    9180: 00 80 3b 47  	.word	0x473b8000
    9184: 00 bf 00 bf  	.word	0xbf00bf00
    9188: 4e 55 8a 9e  	.word	0x9e8a554e
    918c: da 9b f1 40  	.word	0x40f19bda
    9190: 3e 1f 24 a5  	.word	0xa5241f3e
    9194: 52 c7 75 40  	.word	0x4075c752
    9198: 5f 35 f4 2d  	.word	0x2df4355f
    919c: d1 aa 66 40  	.word	0x4066aad1
    91a0: cf a4 da 38  	.word	0x38daa4cf
    91a4: 75 47 20 3f  	.word	0x3f204775
    91a8: eb 20 97 f7  	.word	0xf79720eb
    91ac: 94 f9 ef 3f  	.word	0x3feff994
    91b0: c2 17 26 53  	.word	0x532617c2
    91b4: 05 a3 72 3f  	.word	0x3f72a305
    91b8: 9d f1 d1 f9  	.word	0xf9d1f19d
    91bc: 37 e7 dd be  	.word	0xbedde737
    91c0: 9d f1 d1 f9  	.word	0xf9d1f19d
    91c4: 37 e7 bd be  	.word	0xbebde737
    91c8: 84 dd 26 6c  	.word	0x6c26dd84
    91cc: 48 9f 82 3f  	.word	0x3f829f48
    91d0: 84 dd 26 6c  	.word	0x6c26dd84
    91d4: 48 9f 62 3f  	.word	0x3f629f48
    91d8: a8 cc 7f 3f  	.word	0x3f7fcca8
    91dc: 00 bf 00 bf  	.word	0xbf00bf00
    91e0: 8e 66 bb a2  	.word	0xa2bb668e
    91e4: 4b 3f c2 bf  	.word	0xbfc23f4b
    91e8: 39 4d 87 3a  	.word	0x3a874d39
    91ec: 1a 44 20 3f  	.word	0x3f20441a
    91f0: 47 49 7c 94  	.word	0x947c4947
    91f4: 0b ea 55 40  	.word	0x4055ea0b
    91f8: ed1f 2b17    	vldr	d2, [pc, #-92]          @ 0x91a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1f0>
    91fc: ed9f 7aaa    	vldr	s14, [pc, #680]         @ 0x94a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x4f8>
    9200: eef6 1a00    	vmov.f32	s3, #5.000000e-01
    9204: ee8c 2b02    	vdiv.f64	d2, d12, d2
    9208: eddf 0ae2    	vldr	s1, [pc, #904]          @ 0x9594 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e4>
    920c: eef7 5a00    	vmov.f32	s11, #1.000000e+00
    9210: eef7 4bc2    	vcvt.f32.f64	s9, d2
    9214: eeb0 2a44    	vmov.f32	s4, s8
    9218: ee04 2a87    	vmla.f32	s4, s9, s14
    921c: eeb0 7a45    	vmov.f32	s14, s10
    9220: ee04 7aa0    	vmla.f32	s14, s9, s1
    9224: fe82 2a47    	vminnm.f32	s4, s4, s14
    9228: ed9f 7adb    	vldr	s14, [pc, #876]         @ 0x9598 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    922c: ee31 2ac2    	vsub.f32	s4, s3, s4
    9230: fe82 2a47    	vminnm.f32	s4, s4, s14
    9234: eeb0 7a65    	vmov.f32	s14, s11
    9238: ee02 7a21    	vmla.f32	s14, s4, s3
    923c: ed9f 2ad7    	vldr	s4, [pc, #860]          @ 0x959c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5ec>
    9240: eddf 1ad7    	vldr	s3, [pc, #860]          @ 0x95a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5f0>
    9244: ee27 2a02    	vmul.f32	s4, s14, s4
    9248: eeb4 2a61    	vcmp.f32	s4, s3
    924c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9250: f240 8094    	bls.w	0x937c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3cc> @ imm = #0x128
    9254: ed1f 2b2c    	vldr	d2, [pc, #-176]         @ 0x91a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1f8>
    9258: eeb7 fb00    	vmov.f64	d15, #1.000000e+00
    925c: ed9d 7b16    	vldr	d7, [sp, #88]
    9260: ee27 2b02    	vmul.f64	d2, d7, d2
    9264: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
    9268: ed8d 2b14    	vstr	d2, [sp, #80]
    926c: ee3e 2b02    	vadd.f64	d2, d14, d2
    9270: eeb0 eb4f    	vmov.f64	d14, d15
    9274: ee37 2b42    	vsub.f64	d2, d7, d2
    9278: ee02 eb07    	vmla.f64	d14, d2, d7
    927c: eeb0 7b4b    	vmov.f64	d7, d11
    9280: ed1f 2b35    	vldr	d2, [pc, #-212]         @ 0x91b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x200>
    9284: ee0e 7b02    	vmla.f64	d7, d14, d2
    9288: ed1f 2b35    	vldr	d2, [pc, #-212]         @ 0x91b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x208>
    928c: ee2c 2b02    	vmul.f64	d2, d12, d2
    9290: ee07 2b07    	vmla.f64	d2, d7, d7
    9294: eeb1 eb4c    	vneg.f64	d14, d12
    9298: eeb5 2b40    	vcmp.f64	d2, #0
    929c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92a0: d428         	bmi	0x92f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #0x50
    92a2: ec53 0b17    	vmov	r0, r3, d7
    92a6: eeb1 2bc2    	vsqrt.f64	d2, d2
    92aa: ec56 0b12    	vmov	r0, r6, d2
    92ae: 0fdb         	lsrs	r3, r3, #0x1f
    92b0: f363 76df    	bfi	r6, r3, #31, #1
    92b4: ec46 0b12    	vmov	d2, r0, r6
    92b8: ee37 2b02    	vadd.f64	d2, d7, d2
    92bc: eebe 7b00    	vmov.f64	d7, #-5.000000e-01
    92c0: ee22 7b07    	vmul.f64	d7, d2, d7
    92c4: ed1f 2b42    	vldr	d2, [pc, #-264]         @ 0x91c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x210>
    92c8: ee87 2b02    	vdiv.f64	d2, d7, d2
    92cc: ec53 0b12    	vmov	r0, r3, d2
    92d0: f64f 70ff    	movw	r0, #0xffff
    92d4: f6c7 70ef    	movt	r0, #0x7fef
    92d8: f023 4300    	bic	r3, r3, #0x80000000
    92dc: 4283         	cmp	r3, r0
    92de: f341 815f    	ble.w	0xa5a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15f0> @ imm = #0x12be
    92e2: ee8e 2b07    	vdiv.f64	d2, d14, d7
    92e6: ec56 3b12    	vmov	r3, r6, d2
    92ea: f026 4300    	bic	r3, r6, #0x80000000
    92ee: 4283         	cmp	r3, r0
    92f0: f341 81d2    	ble.w	0xa698 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x16e8> @ imm = #0x13a4
    92f4: ed9d 2b14    	vldr	d2, [sp, #80]
    92f8: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
    92fc: ee3d 2b02    	vadd.f64	d2, d13, d2
    9300: ee37 2b42    	vsub.f64	d2, d7, d2
    9304: ee02 fb07    	vmla.f64	d15, d2, d7
    9308: ed1f 2b57    	vldr	d2, [pc, #-348]         @ 0x91b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x200>
    930c: ee0f bb02    	vmla.f64	d11, d15, d2
    9310: ed1f 7b53    	vldr	d7, [pc, #-332]         @ 0x91c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x218>
    9314: ee2b 2b0b    	vmul.f64	d2, d11, d11
    9318: ee0c 2b07    	vmla.f64	d2, d12, d7
    931c: eeb5 2b40    	vcmp.f64	d2, #0
    9320: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9324: d428         	bmi	0x9378 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #0x50
    9326: ec53 0b1b    	vmov	r0, r3, d11
    932a: eeb1 2bc2    	vsqrt.f64	d2, d2
    932e: ec56 0b12    	vmov	r0, r6, d2
    9332: 0fdb         	lsrs	r3, r3, #0x1f
    9334: eebe 7b00    	vmov.f64	d7, #-5.000000e-01
    9338: f363 76df    	bfi	r6, r3, #31, #1
    933c: ec46 0b12    	vmov	d2, r0, r6
    9340: ee3b 2b02    	vadd.f64	d2, d11, d2
    9344: ee22 7b07    	vmul.f64	d7, d2, d7
    9348: ed1f 2b5f    	vldr	d2, [pc, #-380]         @ 0x91d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x220>
    934c: ee87 2b02    	vdiv.f64	d2, d7, d2
    9350: ec53 0b12    	vmov	r0, r3, d2
    9354: f64f 70ff    	movw	r0, #0xffff
    9358: f6c7 70ef    	movt	r0, #0x7fef
    935c: f023 4300    	bic	r3, r3, #0x80000000
    9360: 4283         	cmp	r3, r0
    9362: f341 815d    	ble.w	0xa620 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1670> @ imm = #0x12ba
    9366: ee8e 2b07    	vdiv.f64	d2, d14, d7
    936a: ec56 3b12    	vmov	r3, r6, d2
    936e: f026 4300    	bic	r3, r6, #0x80000000
    9372: 4283         	cmp	r3, r0
    9374: f341 81d0    	ble.w	0xa718 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1768> @ imm = #0x13a0
    9378: eef0 4a41    	vmov.f32	s9, s2
    937c: edc1 4a06    	vstr	s9, [r1, #24]
    9380: eef0 3a64    	vmov.f32	s7, s9
    9384: ed9f 1aa7    	vldr	s2, [pc, #668]          @ 0x9624 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x674>
    9388: eddf 4aa7    	vldr	s9, [pc, #668]          @ 0x9628 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x678>
    938c: ee36 7a81    	vadd.f32	s14, s13, s2
    9390: ee76 0aa4    	vadd.f32	s1, s13, s9
    9394: ed9f 2aa5    	vldr	s4, [pc, #660]          @ 0x962c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x67c>
    9398: eec7 5a02    	vdiv.f32	s11, s14, s4
    939c: eec0 ba82    	vdiv.f32	s23, s1, s4
    93a0: eef4 5a6b    	vcmp.f32	s11, s23
    93a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93a8: f201 81ee    	bhi.w	0xa788 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x17d8> @ imm = #0x13dc
    93ac: ed92 7b14    	vldr	d7, [r2, #80]
    93b0: ed9f ba9f    	vldr	s22, [pc, #636]         @ 0x9630 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x680>
    93b4: 2000         	movs	r0, #0x0
    93b6: ee37 7b08    	vadd.f64	d7, d7, d8
    93ba: 2300         	movs	r3, #0x0
    93bc: eddf 2a9d    	vldr	s5, [pc, #628]          @ 0x9634 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x684>
    93c0: eeb7 fa00    	vmov.f32	s30, #1.000000e+00
    93c4: ed9f 8b9c    	vldr	d8, [pc, #624]          @ 0x9638 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x688>
    93c8: eddf fa76    	vldr	s31, [pc, #472]         @ 0x95a4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5f4>
    93cc: ee37 7b0a    	vadd.f64	d7, d7, d10
    93d0: ed8d 7b0e    	vstr	d7, [sp, #56]
    93d4: ee09 7b08    	vmla.f64	d7, d9, d8
    93d8: ed9f 8ae8    	vldr	s16, [pc, #928]         @ 0x977c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7cc>
    93dc: ee66 0a88    	vmul.f32	s1, s13, s16
    93e0: eeb7 7bc7    	vcvt.f32.f64	s14, d7
    93e4: edcd 0a0d    	vstr	s1, [sp, #52]
    93e8: ee47 0a0b    	vmla.f32	s1, s14, s22
    93ec: ed92 7b08    	vldr	d7, [r2, #32]
    93f0: eef7 1bc7    	vcvt.f32.f64	s3, d7
    93f4: edcd 1a0c    	vstr	s3, [sp, #48]
    93f8: ee40 1a22    	vmla.f32	s3, s0, s5
    93fc: eeff 2a00    	vmov.f32	s5, #-1.000000e+00
    9400: eef4 5a60    	vcmp.f32	s11, s1
    9404: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9408: ee43 1a2f    	vmla.f32	s3, s6, s31
    940c: fe35 7aa0    	vselgt.f32	s14, s11, s1
    9410: eeb4 7a6b    	vcmp.f32	s14, s23
    9414: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9418: eef4 0a65    	vcmp.f32	s1, s11
    941c: fe3b ca87    	vselgt.f32	s24, s23, s14
    9420: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9424: eef4 0a6b    	vcmp.f32	s1, s23
    9428: eddf 0a5b    	vldr	s1, [pc, #364]          @ 0x9598 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    942c: bfc8         	it	gt
    942e: 2001         	movgt	r0, #0x1
    9430: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9434: eef5 1a40    	vcmp.f32	s3, #0
    9438: eeb0 7ae1    	vabs.f32	s14, s3
    943c: eef0 1a60    	vmov.f32	s3, s1
    9440: eeb0 ea60    	vmov.f32	s28, s1
    9444: bf48         	it	mi
    9446: 2301         	movmi	r3, #0x1
    9448: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    944c: bf48         	it	mi
    944e: eef0 1a62    	vmovmi.f32	s3, s5
    9452: eef0 2a60    	vmov.f32	s5, s1
    9456: eef0 aa60    	vmov.f32	s21, s1
    945a: fe7f 6a21    	vselgt.f32	s13, s30, s3
    945e: eddf 1acb    	vldr	s3, [pc, #812]          @ 0x978c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7dc>
    9462: eeb4 7a61    	vcmp.f32	s14, s3
    9466: eef0 1a60    	vmov.f32	s3, s1
    946a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    946e: ea03 0300    	and.w	r3, r3, r0
    9472: f280 80c4    	bge.w	0x95fe <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x64e> @ imm = #0x188
    9476: eddf 1ac6    	vldr	s3, [pc, #792]          @ 0x9790 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e0>
    947a: eeb4 7a61    	vcmp.f32	s14, s3
    947e: eddf 2a46    	vldr	s5, [pc, #280]          @ 0x9598 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    9482: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9486: d913         	bls	0x94b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x500> @ imm = #0x26
    9488: eddf 1ac2    	vldr	s3, [pc, #776]          @ 0x9794 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e4>
    948c: eeb4 7a61    	vcmp.f32	s14, s3
    9490: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9494: d91c         	bls	0x94d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x520> @ imm = #0x38
    9496: eddf 1ac0    	vldr	s3, [pc, #768]          @ 0x9798 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e8>
    949a: ee77 1a21    	vadd.f32	s3, s14, s3
    949e: eddf 7abf    	vldr	s15, [pc, #764]         @ 0x979c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7ec>
    94a2: eeb0 7a08    	vmov.f32	s14, #3.000000e+00
    94a6: e01b         	b	0x94e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x530> @ imm = #0x36
    94a8: 0d 61 4d 3a  	.word	0x3a4d610d
    94ac: 00 bf 00 bf  	.word	0xbf00bf00
    94b0: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    94b4: eef0 1a62    	vmov.f32	s3, s5
    94b8: e016         	b	0x94e8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x538> @ imm = #0x2c
    94ba: bf00         	nop
    94bc: bf00         	nop
    94be: bf00         	nop
    94c0: 8e 66 bb a2  	.word	0xa2bb668e
    94c4: 4b 3f c2 bf  	.word	0xbfc23f4b
    94c8: 2c 52 fa 24  	.word	0x24fa522c
    94cc: 26 25 73 3f  	.word	0x3f732526
    94d0: eddf 1ae8    	vldr	s3, [pc, #928]          @ 0x9874 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c4>
    94d4: ee77 1a21    	vadd.f32	s3, s14, s3
    94d8: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    94dc: eddf 7ae6    	vldr	s15, [pc, #920]         @ 0x9878 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c8>
    94e0: ee01 7aa7    	vmla.f32	s14, s3, s15
    94e4: ee66 1aa7    	vmul.f32	s3, s13, s15
    94e8: eef2 6a0e    	vmov.f32	s13, #1.500000e+01
    94ec: eeb1 ea61    	vneg.f32	s28, s3
    94f0: ee36 7ac7    	vsub.f32	s14, s13, s14
    94f4: fec7 6a22    	vmaxnm.f32	s13, s14, s5
    94f8: eef5 6a40    	vcmp.f32	s13, #0
    94fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9500: d942         	bls	0x9588 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5d8> @ imm = #0x84
    9502: eeb0 7acc    	vabs.f32	s14, s24
    9506: eeb4 7a66    	vcmp.f32	s14, s13
    950a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    950e: d94b         	bls	0x95a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5f8> @ imm = #0x96
    9510: ee86 7a87    	vdiv.f32	s14, s13, s14
    9514: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    9518: ee67 1a07    	vmul.f32	s3, s14, s14
    951c: eeb0 aa62    	vmov.f32	s20, s5
    9520: ee61 1aa1    	vmul.f32	s3, s3, s3
    9524: ee61 1aa1    	vmul.f32	s3, s3, s3
    9528: ee61 1aa1    	vmul.f32	s3, s3, s3
    952c: ee71 7aa2    	vadd.f32	s15, s3, s5
    9530: eef4 7a62    	vcmp.f32	s15, s5
    9534: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9538: d009         	beq	0x954e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x59e> @ imm = #0x12
    953a: eeb0 aa67    	vmov.f32	s20, s15
    953e: eeb1 aaca    	vsqrt.f32	s20, s20
    9542: eeb1 aaca    	vsqrt.f32	s20, s20
    9546: eeb1 aaca    	vsqrt.f32	s20, s20
    954a: eeb1 aaca    	vsqrt.f32	s20, s20
    954e: eec2 2a8a    	vdiv.f32	s5, s5, s20
    9552: eeb4 ca4c    	vcmp.f32	s24, s24
    9556: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    955a: eec2 7aa7    	vdiv.f32	s15, s5, s15
    955e: f181 811f    	bvs.w	0xa7a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x17f0> @ imm = #0x123e
    9562: ee1c 0a10    	vmov	r0, s24
    9566: f04f 567e    	mov.w	r6, #0x3f800000
    956a: f366 001e    	bfi	r0, r6, #0, #31
    956e: ee0a 0a10    	vmov	s20, r0
    9572: ee6a 6a26    	vmul.f32	s13, s20, s13
    9576: ee6a aa27    	vmul.f32	s21, s20, s15
    957a: ee66 2aa2    	vmul.f32	s5, s13, s5
    957e: ee27 7a21    	vmul.f32	s14, s14, s3
    9582: ee67 1a27    	vmul.f32	s3, s14, s15
    9586: e03a         	b	0x95fe <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x64e> @ imm = #0x74
    9588: eef0 1a62    	vmov.f32	s3, s5
    958c: eef0 aa62    	vmov.f32	s21, s5
    9590: e035         	b	0x95fe <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x64e> @ imm = #0x6a
    9592: bf00         	nop
    9594: a8 cc 7f bf  	.word	0xbf7fcca8
    9598: 00 00 00 00  	.word	0x00000000
    959c: 2b 18 95 3b  	.word	0x3b95182b
    95a0: 95 bf d6 33  	.word	0x33d6bf95
    95a4: 34 8b b1 36  	.word	0x36b18b34
    95a8: ee8c 7a26    	vdiv.f32	s14, s24, s13
    95ac: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    95b0: ee27 7a07    	vmul.f32	s14, s14, s14
    95b4: eef0 7a62    	vmov.f32	s15, s5
    95b8: ee27 7a07    	vmul.f32	s14, s14, s14
    95bc: ee27 7a07    	vmul.f32	s14, s14, s14
    95c0: ee27 7a07    	vmul.f32	s14, s14, s14
    95c4: ee77 1a22    	vadd.f32	s3, s14, s5
    95c8: eef4 1a62    	vcmp.f32	s3, s5
    95cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    95d0: d009         	beq	0x95e6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x636> @ imm = #0x12
    95d2: eef0 7a61    	vmov.f32	s15, s3
    95d6: eef1 7ae7    	vsqrt.f32	s15, s15
    95da: eef1 7ae7    	vsqrt.f32	s15, s15
    95de: eef1 7ae7    	vsqrt.f32	s15, s15
    95e2: eef1 7ae7    	vsqrt.f32	s15, s15
    95e6: eec2 2aa7    	vdiv.f32	s5, s5, s15
    95ea: ee2c 7a07    	vmul.f32	s14, s24, s14
    95ee: eec2 1aa1    	vdiv.f32	s3, s5, s3
    95f2: ee87 7a26    	vdiv.f32	s14, s14, s13
    95f6: ee6c 2a22    	vmul.f32	s5, s24, s5
    95fa: ee67 aa21    	vmul.f32	s21, s14, s3
    95fe: ee70 ea62    	vsub.f32	s29, s0, s5
    9602: 2b00         	cmp	r3, #0x0
    9604: ed9f 7abd    	vldr	s14, [pc, #756]         @ 0x98fc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x94c>
    9608: eddf 2abd    	vldr	s5, [pc, #756]          @ 0x9900 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x950>
    960c: ee1e 0a90    	vmov	r0, s29
    9610: fe42 2a87    	vseleq.f32	s5, s5, s14
    9614: f020 4000    	bic	r0, r0, #0x80000000
    9618: f1b0 4fff    	cmp.w	r0, #0x7f800000
    961c: db10         	blt	0x9640 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x690> @ imm = #0x20
    961e: eddf 6ab9    	vldr	s13, [pc, #740]         @ 0x9904 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x954>
    9622: e017         	b	0x9654 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x6a4> @ imm = #0x2e
    9624: 00 24 74 cb  	.word	0xcb742400
    9628: 00 24 74 4b  	.word	0x4b742400
    962c: 00 a0 8c 47  	.word	0x478ca000
    9630: 95 3a ae 43  	.word	0x43ae3a95
    9634: a8 b9 92 b8  	.word	0xb892b9a8
    9638: a6 26 74 7c  	.word	0x7c7426a6
    963c: 9f 8f e0 bf  	.word	0xbfe08f9f
    9640: eeb2 7a0e    	vmov.f32	s14, #1.500000e+01
    9644: ed5f 6a2c    	vldr	s13, [pc, #-176]        @ 0x9598 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    9648: ee8e 7a87    	vdiv.f32	s14, s29, s14
    964c: eeb0 7ac7    	vabs.f32	s14, s14
    9650: fec7 6a26    	vmaxnm.f32	s13, s14, s13
    9654: ee36 1a01    	vadd.f32	s2, s12, s2
    9658: ee76 4a24    	vadd.f32	s9, s12, s9
    965c: ee81 7a02    	vdiv.f32	s14, s2, s4
    9660: eec4 7a82    	vdiv.f32	s15, s9, s4
    9664: eeb4 7a67    	vcmp.f32	s14, s15
    9668: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    966c: f201 808c    	bhi.w	0xa788 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x17d8> @ imm = #0x1118
    9670: ed8d ca12    	vstr	s24, [sp, #72]
    9674: ee26 2a08    	vmul.f32	s4, s12, s16
    9678: ed1f cb6f    	vldr	d12, [pc, #-444]        @ 0x94c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x510>
    967c: ed8d 2a0a    	vstr	s4, [sp, #40]
    9680: ed9f 6ae1    	vldr	s12, [pc, #900]         @ 0x9a08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa58>
    9684: ed9d db18    	vldr	d13, [sp, #96]
    9688: 2000         	movs	r0, #0x0
    968a: ed8d 7a0b    	vstr	s14, [sp, #44]
    968e: ee09 db0c    	vmla.f64	d13, d9, d12
    9692: edcd 7a03    	vstr	s15, [sp, #12]
    9696: ed9f 9b72    	vldr	d9, [pc, #456]          @ 0x9860 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8b0>
    969a: ed9d cb16    	vldr	d12, [sp, #88]
    969e: ee0c db09    	vmla.f64	d13, d12, d9
    96a2: eeb6 ca00    	vmov.f32	s24, #5.000000e-01
    96a6: ed92 8b0a    	vldr	d8, [r2, #40]
    96aa: 2200         	movs	r2, #0x0
    96ac: eeb7 1bcd    	vcvt.f32.f64	s2, d13
    96b0: eef7 4bc8    	vcvt.f32.f64	s9, d8
    96b4: ee01 2a0b    	vmla.f32	s4, s2, s22
    96b8: edcd 4a09    	vstr	s9, [sp, #36]
    96bc: ee40 4a2f    	vmla.f32	s9, s0, s31
    96c0: ee43 4a06    	vmla.f32	s9, s6, s12
    96c4: eeb4 7a42    	vcmp.f32	s14, s4
    96c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    96cc: fe37 1a02    	vselgt.f32	s2, s14, s4
    96d0: eeb4 1a67    	vcmp.f32	s2, s15
    96d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    96d8: eeb4 2a47    	vcmp.f32	s4, s14
    96dc: eebf 7a00    	vmov.f32	s14, #-1.000000e+00
    96e0: fe37 da81    	vselgt.f32	s26, s15, s2
    96e4: ed9f 1ac9    	vldr	s2, [pc, #804]          @ 0x9a0c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa5c>
    96e8: ee23 6a81    	vmul.f32	s12, s7, s2
    96ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    96f0: eeb4 2a67    	vcmp.f32	s4, s15
    96f4: ee36 1a24    	vadd.f32	s2, s12, s9
    96f8: bfc8         	it	gt
    96fa: 2001         	movgt	r0, #0x1
    96fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9700: eeb5 1a40    	vcmp.f32	s2, #0
    9704: eef0 7ac1    	vabs.f32	s15, s2
    9708: ed1f 1a5d    	vldr	s2, [pc, #-372]         @ 0x9598 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    970c: eeb0 2a41    	vmov.f32	s4, s2
    9710: eeb0 8a41    	vmov.f32	s16, s2
    9714: bf48         	it	mi
    9716: 2201         	movmi	r2, #0x1
    9718: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    971c: bf48         	it	mi
    971e: eeb0 2a47    	vmovmi.f32	s4, s14
    9722: eeb0 9a41    	vmov.f32	s18, s2
    9726: eef0 8a41    	vmov.f32	s17, s2
    972a: fe7f 4a02    	vselgt.f32	s9, s30, s4
    972e: ed9f 2a17    	vldr	s4, [pc, #92]           @ 0x978c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7dc>
    9732: eef4 7a42    	vcmp.f32	s15, s4
    9736: eeb0 2a41    	vmov.f32	s4, s2
    973a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    973e: ea02 0200    	and.w	r2, r2, r0
    9742: ed8d da14    	vstr	s26, [sp, #80]
    9746: f280 80c6    	bge.w	0x98d6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x926> @ imm = #0x18c
    974a: ed9f 2a11    	vldr	s4, [pc, #68]           @ 0x9790 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e0>
    974e: eef4 7a42    	vcmp.f32	s15, s4
    9752: ed1f 2a6f    	vldr	s4, [pc, #-444]         @ 0x9598 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    9756: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    975a: d911         	bls	0x9780 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7d0> @ imm = #0x22
    975c: ed9f 8a0d    	vldr	s16, [pc, #52]          @ 0x9794 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e4>
    9760: eef4 7a48    	vcmp.f32	s15, s16
    9764: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9768: d91a         	bls	0x97a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7f0> @ imm = #0x34
    976a: ed9f 8a0b    	vldr	s16, [pc, #44]          @ 0x9798 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e8>
    976e: ee37 8a88    	vadd.f32	s16, s15, s16
    9772: ed9f 9a0a    	vldr	s18, [pc, #40]          @ 0x979c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7ec>
    9776: eef0 7a08    	vmov.f32	s15, #3.000000e+00
    977a: e019         	b	0x97b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x800> @ imm = #0x32
    977c: 64 9c 68 37  	.word	0x37689c64
    9780: eef7 7a08    	vmov.f32	s15, #1.500000e+00
    9784: eef0 4a42    	vmov.f32	s9, s4
    9788: e016         	b	0x97b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x808> @ imm = #0x2c
    978a: bf00         	nop
    978c: 0a d7 23 3d  	.word	0x3d23d70a
    9790: 7c f2 b0 3a  	.word	0x3ab0f27c
    9794: a6 9b c4 3b  	.word	0x3bc49ba6
    9798: a6 9b c4 bb  	.word	0xbbc49ba6
    979c: 79 78 b0 43  	.word	0x43b07879
    97a0: ed9f 8a34    	vldr	s16, [pc, #208]         @ 0x9874 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c4>
    97a4: ee37 8a88    	vadd.f32	s16, s15, s16
    97a8: eef7 7a08    	vmov.f32	s15, #1.500000e+00
    97ac: ed9f 9a32    	vldr	s18, [pc, #200]         @ 0x9878 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c8>
    97b0: ee48 7a09    	vmla.f32	s15, s16, s18
    97b4: ee64 4a89    	vmul.f32	s9, s9, s18
    97b8: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    97bc: ee78 7a67    	vsub.f32	s15, s16, s15
    97c0: eeb1 8a64    	vneg.f32	s16, s9
    97c4: fec7 7a82    	vmaxnm.f32	s15, s15, s4
    97c8: eef5 7a40    	vcmp.f32	s15, #0
    97cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97d0: d94a         	bls	0x9868 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8b8> @ imm = #0x94
    97d2: eeb0 2acd    	vabs.f32	s4, s26
    97d6: eeb4 2a67    	vcmp.f32	s4, s15
    97da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97de: d94f         	bls	0x9880 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8d0> @ imm = #0x9e
    97e0: eec7 4a82    	vdiv.f32	s9, s15, s4
    97e4: ee24 2aa4    	vmul.f32	s4, s9, s9
    97e8: ee22 2a02    	vmul.f32	s4, s4, s4
    97ec: ee22 2a02    	vmul.f32	s4, s4, s4
    97f0: ee22 9a02    	vmul.f32	s18, s4, s4
    97f4: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    97f8: ee39 aa02    	vadd.f32	s20, s18, s4
    97fc: eeb0 da42    	vmov.f32	s26, s4
    9800: eeb4 aa42    	vcmp.f32	s20, s4
    9804: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9808: d009         	beq	0x981e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x86e> @ imm = #0x12
    980a: eeb0 da4a    	vmov.f32	s26, s20
    980e: eeb1 dacd    	vsqrt.f32	s26, s26
    9812: eeb1 dacd    	vsqrt.f32	s26, s26
    9816: eeb1 dacd    	vsqrt.f32	s26, s26
    981a: eeb1 dacd    	vsqrt.f32	s26, s26
    981e: ee82 2a0d    	vdiv.f32	s4, s4, s26
    9822: ed9d 7a14    	vldr	s14, [sp, #80]
    9826: eeb4 7a47    	vcmp.f32	s14, s14
    982a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    982e: ee82 aa0a    	vdiv.f32	s20, s4, s20
    9832: f180 87bd    	bvs.w	0xa7b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1800> @ imm = #0xf7a
    9836: ee17 0a10    	vmov	r0, s14
    983a: f04f 537e    	mov.w	r3, #0x3f800000
    983e: f363 001e    	bfi	r0, r3, #0, #31
    9842: ee0d 0a10    	vmov	s26, r0
    9846: ee6d 7a27    	vmul.f32	s15, s26, s15
    984a: ee6d 8a0a    	vmul.f32	s17, s26, s20
    984e: ee27 2a82    	vmul.f32	s4, s15, s4
    9852: ee64 4a89    	vmul.f32	s9, s9, s18
    9856: ee24 9a8a    	vmul.f32	s18, s9, s20
    985a: e03c         	b	0x98d6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x926> @ imm = #0x78
    985c: bf00         	nop
    985e: bf00         	nop
    9860: a4 eb ea 42  	.word	0x42eaeba4
    9864: fb d4 cf bf  	.word	0xbfcfd4fb
    9868: eeb0 9a42    	vmov.f32	s18, s4
    986c: eef0 8a42    	vmov.f32	s17, s4
    9870: e031         	b	0x98d6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x926> @ imm = #0x62
    9872: bf00         	nop
    9874: 7c f2 b0 ba  	.word	0xbab0f27c
    9878: 53 4a a1 43  	.word	0x43a14a53
    987c: 00 bf 00 bf  	.word	0xbf00bf00
    9880: ee8d 2a27    	vdiv.f32	s4, s26, s15
    9884: eeb7 9a00    	vmov.f32	s18, #1.000000e+00
    9888: ee22 2a02    	vmul.f32	s4, s4, s4
    988c: eeb0 aa49    	vmov.f32	s20, s18
    9890: ee22 2a02    	vmul.f32	s4, s4, s4
    9894: ee22 2a02    	vmul.f32	s4, s4, s4
    9898: ee22 2a02    	vmul.f32	s4, s4, s4
    989c: ee72 4a09    	vadd.f32	s9, s4, s18
    98a0: eef4 4a49    	vcmp.f32	s9, s18
    98a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    98a8: d009         	beq	0x98be <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x90e> @ imm = #0x12
    98aa: eeb0 aa64    	vmov.f32	s20, s9
    98ae: eeb1 aaca    	vsqrt.f32	s20, s20
    98b2: eeb1 aaca    	vsqrt.f32	s20, s20
    98b6: eeb1 aaca    	vsqrt.f32	s20, s20
    98ba: eeb1 aaca    	vsqrt.f32	s20, s20
    98be: ee89 aa0a    	vdiv.f32	s20, s18, s20
    98c2: ee2d 2a02    	vmul.f32	s4, s26, s4
    98c6: ee8a 9a24    	vdiv.f32	s18, s20, s9
    98ca: eec2 4a27    	vdiv.f32	s9, s4, s15
    98ce: ee2d 2a0a    	vmul.f32	s4, s26, s20
    98d2: ee64 8a89    	vmul.f32	s17, s9, s18
    98d6: ee73 7a42    	vsub.f32	s15, s6, s4
    98da: 2a00         	cmp	r2, #0x0
    98dc: ed9f 2a07    	vldr	s4, [pc, #28]           @ 0x98fc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x94c>
    98e0: ed9f 7a07    	vldr	s14, [pc, #28]          @ 0x9900 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x950>
    98e4: ee17 0a90    	vmov	r0, s15
    98e8: fe07 aa02    	vseleq.f32	s20, s14, s4
    98ec: f020 4000    	bic	r0, r0, #0x80000000
    98f0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    98f4: db08         	blt	0x9908 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x958> @ imm = #0x10
    98f6: eddf 9a03    	vldr	s19, [pc, #12]          @ 0x9904 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x954>
    98fa: e01d         	b	0x9938 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x988> @ imm = #0x3a
    98fc: 95 3a ae c3  	.word	0xc3ae3a95
    9900: 00 00 00 80  	.word	0x80000000
    9904: 00 00 80 7f  	.word	0x7f800000
    9908: eeb2 2a0e    	vmov.f32	s4, #1.500000e+01
    990c: eef4 6a66    	vcmp.f32	s13, s13
    9910: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9914: ee87 2a82    	vdiv.f32	s4, s15, s4
    9918: eeb0 2ac2    	vabs.f32	s4, s4
    991c: fe52 4a26    	vselvs.f32	s9, s4, s13
    9920: eeb4 2a42    	vcmp.f32	s4, s4
    9924: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9928: fe14 2a82    	vselvs.f32	s4, s9, s4
    992c: eef4 4a42    	vcmp.f32	s9, s4
    9930: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9934: fe74 9a82    	vselgt.f32	s19, s9, s4
    9938: ed9f 2a35    	vldr	s4, [pc, #212]          @ 0x9a10 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa60>
    993c: ee2e ea2a    	vmul.f32	s28, s28, s21
    9940: ee03 5a82    	vmla.f32	s10, s7, s4
    9944: ed9f 2a33    	vldr	s4, [pc, #204]          @ 0x9a14 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa64>
    9948: ee03 4a82    	vmla.f32	s8, s7, s4
    994c: ed9f 2a2f    	vldr	s4, [pc, #188]          @ 0x9a0c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa5c>
    9950: ed9d db06    	vldr	d13, [sp, #24]
    9954: ee62 1aa1    	vmul.f32	s3, s5, s3
    9958: 200d         	movs	r0, #0xd
    995a: eef7 4bcd    	vcvt.f32.f64	s9, d13
    995e: edcd 4a06    	vstr	s9, [sp, #24]
    9962: ee43 4a02    	vmla.f32	s9, s6, s4
    9966: fe84 2a45    	vminnm.f32	s4, s8, s10
    996a: eeb4 4a45    	vcmp.f32	s8, s10
    996e: eeb8 5a00    	vmov.f32	s10, #-2.000000e+00
    9972: ee28 4a28    	vmul.f32	s8, s16, s17
    9976: ee3c 2a42    	vsub.f32	s4, s24, s4
    997a: ee34 6ac6    	vsub.f32	s12, s9, s12
    997e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9982: bf88         	it	hi
    9984: 200e         	movhi	r0, #0xe
    9986: eeb4 2a45    	vcmp.f32	s4, s10
    998a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    998e: e9cd 4501    	strd	r4, r5, [sp, #4]
    9992: d931         	bls	0x99f8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa48> @ imm = #0x62
    9994: eeb4 2a42    	vcmp.f32	s4, s4
    9998: ed9f 5a1f    	vldr	s10, [pc, #124]         @ 0x9a18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa68>
    999c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    99a0: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    99a4: eef0 6a45    	vmov.f32	s13, s10
    99a8: fe55 4a02    	vselvs.f32	s9, s10, s4
    99ac: eeb0 8a62    	vmov.f32	s16, s5
    99b0: eef5 4a40    	vcmp.f32	s9, #0
    99b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    99b8: bfb8         	it	lt
    99ba: eef0 6a64    	vmovlt.f32	s13, s9
    99be: eddf 4a17    	vldr	s9, [pc, #92]           @ 0x9a1c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa6c>
    99c2: eeb5 2a40    	vcmp.f32	s4, #0
    99c6: ee06 8a8c    	vmla.f32	s16, s13, s24
    99ca: eddf 6a15    	vldr	s13, [pc, #84]          @ 0x9a20 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa70>
    99ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    99d2: ee28 8a24    	vmul.f32	s16, s16, s9
    99d6: fec8 fa26    	vmaxnm.f32	s31, s16, s13
    99da: d539         	bpl	0x9a50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xaa0> @ imm = #0x72
    99dc: ee42 2a0c    	vmla.f32	s5, s4, s24
    99e0: eeb0 7a6b    	vmov.f32	s14, s23
    99e4: ee22 2aa4    	vmul.f32	s4, s5, s9
    99e8: eeb4 2a66    	vcmp.f32	s4, s13
    99ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    99f0: bfc8         	it	gt
    99f2: ed9f 5a0c    	vldrgt	s10, [pc, #48]          @ 0x9a24 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa74>
    99f6: e02d         	b	0x9a54 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xaa4> @ imm = #0x5a
    99f8: eeb0 7a6b    	vmov.f32	s14, s23
    99fc: ed9f 5a06    	vldr	s10, [pc, #24]          @ 0x9a18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa68>
    9a00: eddf fa07    	vldr	s31, [pc, #28]          @ 0x9a20 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa70>
    9a04: e026         	b	0x9a54 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xaa4> @ imm = #0x4c
    9a06: bf00         	nop
    9a08: 75 5e 1f b9  	.word	0xb91f5e75
    9a0c: d2 20 02 39  	.word	0x390220d2
    9a10: a8 cc 7f bf  	.word	0xbf7fcca8
    9a14: 0d 61 4d 3a  	.word	0x3a4d610d
    9a18: 00 00 00 00  	.word	0x00000000
    9a1c: 2b 18 95 3b  	.word	0x3b95182b
    9a20: 95 bf d6 33  	.word	0x33d6bf95
    9a24: 2b 18 15 3b  	.word	0x3b15182b
    9a28: 34 8b b1 b6  	.word	0xb6b18b34
    9a2c: 75 5e 1f 39  	.word	0x391f5e75
    9a30: d2 20 02 b9  	.word	0xb90220d2
    9a34: a8 b9 92 38  	.word	0x3892b9a8
    9a38: 0a d7 23 3c  	.word	0x3c23d70a
    9a3c: fc 7c 04 bf  	.word	0xbf047cfc
    9a40: 5d fa 11 be  	.word	0xbe11fa5d
    9a44: da a7 7e be  	.word	0xbe7ea7da
    9a48: bd 37 06 36  	.word	0x360637bd
    9a4c: 08 e5 3c 1e  	.word	0x1e3ce508
    9a50: eeb0 7a6b    	vmov.f32	s14, s23
    9a54: f64d 4240    	movw	r2, #0xdc40
    9a58: ee13 6aaf    	vnmls.f32	s12, s7, s31
    9a5c: f2c0 0200    	movt	r2, #0x0
    9a60: ee63 2a85    	vmul.f32	s5, s7, s10
    9a64: eb02 1080    	add.w	r0, r2, r0, lsl #6
    9a68: ed5f aa18    	vldr	s21, [pc, #-96]         @ 0x9a0c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa5c>
    9a6c: ee2a 9a09    	vmul.f32	s18, s20, s18
    9a70: f8d7 e008    	ldr.w	lr, [r7, #0x8]
    9a74: ed90 8b0c    	vldr	d8, [r0, #48]
    9a78: ee21 aaa0    	vmul.f32	s20, s3, s1
    9a7c: ed1f 5a5f    	vldr	s10, [pc, #-380]        @ 0x9904 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x954>
    9a80: eeb7 2bc8    	vcvt.f32.f64	s4, d8
    9a84: ed90 db08    	vldr	d13, [r0, #32]
    9a88: ee42 aac2    	vmls.f32	s21, s5, s4
    9a8c: ed1f 2a1a    	vldr	s4, [pc, #-104]         @ 0x9a28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa78>
    9a90: ee24 8a02    	vmul.f32	s16, s8, s4
    9a94: ed1f 2a1b    	vldr	s4, [pc, #-108]         @ 0x9a2c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa7c>
    9a98: ed90 cb0a    	vldr	d12, [r0, #40]
    9a9c: ee16 0a10    	vmov	r0, s12
    9aa0: ee64 6a02    	vmul.f32	s13, s8, s4
    9aa4: ed1f 2a1e    	vldr	s4, [pc, #-120]         @ 0x9a30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa80>
    9aa8: ee64 8a02    	vmul.f32	s17, s8, s4
    9aac: ed1f 2a1f    	vldr	s4, [pc, #-124]         @ 0x9a34 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa84>
    9ab0: eeb7 4bcd    	vcvt.f32.f64	s8, d13
    9ab4: f020 4000    	bic	r0, r0, #0x80000000
    9ab8: ee6e ba02    	vmul.f32	s23, s28, s4
    9abc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9ac0: eef7 0bcc    	vcvt.f32.f64	s1, d12
    9ac4: da17         	bge	0x9af6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xb46> @ imm = #0x2e
    9ac6: ed1f 5a24    	vldr	s10, [pc, #-144]        @ 0x9a38 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa88>
    9aca: eef4 9a69    	vcmp.f32	s19, s19
    9ace: ee86 5a05    	vdiv.f32	s10, s12, s10
    9ad2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ad6: eeb0 5ac5    	vabs.f32	s10, s10
    9ada: fe55 4a29    	vselvs.f32	s9, s10, s19
    9ade: eeb4 5a45    	vcmp.f32	s10, s10
    9ae2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ae6: fe14 5a85    	vselvs.f32	s10, s9, s10
    9aea: eef4 4a45    	vcmp.f32	s9, s10
    9aee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9af2: fe34 5a85    	vselgt.f32	s10, s9, s10
    9af6: ed5f 4a2f    	vldr	s9, [pc, #-188]         @ 0x9a3c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa8c>
    9afa: ee49 8a01    	vmla.f32	s17, s18, s2
    9afe: ee41 baa4    	vmla.f32	s23, s3, s9
    9b02: ed5f 4a81    	vldr	s9, [pc, #-516]         @ 0x9900 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x950>
    9b06: ed1f 1a32    	vldr	s2, [pc, #-200]         @ 0x9a40 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa90>
    9b0a: eef0 1a4a    	vmov.f32	s3, s20
    9b0e: ee4e 1a24    	vmla.f32	s3, s28, s9
    9b12: ed5f 4a3b    	vldr	s9, [pc, #-236]         @ 0x9a28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa78>
    9b16: ee09 8a01    	vmla.f32	s16, s18, s2
    9b1a: ed1f 1a36    	vldr	s2, [pc, #-216]         @ 0x9a44 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa94>
    9b1e: ee0e aa24    	vmla.f32	s20, s28, s9
    9b22: f10d 0878    	add.w	r8, sp, #0x78
    9b26: ee49 6a01    	vmla.f32	s13, s18, s2
    9b2a: f108 0a0c    	add.w	r10, r8, #0xc
    9b2e: ee24 9a62    	vnmul.f32	s18, s8, s5
    9b32: f10d 096c    	add.w	r9, sp, #0x6c
    9b36: ee62 0aa0    	vmul.f32	s1, s5, s1
    9b3a: f04f 0b00    	mov.w	r11, #0x0
    9b3e: ee7f 9aaa    	vadd.f32	s19, s31, s21
    9b42: ed1f 2a3f    	vldr	s4, [pc, #-252]         @ 0x9a48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa98>
    9b46: eeb1 1a6e    	vneg.f32	s2, s29
    9b4a: ed5f ea40    	vldr	s29, [pc, #-256]        @ 0x9a4c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa9c>
    9b4e: eeb1 ea67    	vneg.f32	s28, s15
    9b52: ed5f 7a4f    	vldr	s15, [pc, #-316]        @ 0x9a18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa68>
    9b56: eef1 fa46    	vneg.f32	s31, s12
    9b5a: ed9f 6afa    	vldr	s12, [pc, #1000]        @ 0x9f44 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xf94>
    9b5e: e89e 000d    	ldm.w	lr, {r0, r2, r3}
    9b62: 3201         	adds	r2, #0x1
    9b64: 9216         	str	r2, [sp, #0x58]
    9b66: 2200         	movs	r2, #0x0
    9b68: 1c46         	adds	r6, r0, #0x1
    9b6a: f8ce 6000    	str.w	r6, [lr]
    9b6e: 3301         	adds	r3, #0x1
    9b70: 9305         	str	r3, [sp, #0x14]
    9b72: 3002         	adds	r0, #0x2
    9b74: 9004         	str	r0, [sp, #0x10]
    9b76: ee3b 4a8f    	vadd.f32	s8, s23, s30
    9b7a: 2000         	movs	r0, #0x0
    9b7c: eef0 2ac8    	vabs.f32	s5, s16
    9b80: ed8d ea1c    	vstr	s28, [sp, #112]
    9b84: ed8d 1a1b    	vstr	s2, [sp, #108]
    9b88: ee76 6a8f    	vadd.f32	s13, s13, s30
    9b8c: eef0 4ac4    	vabs.f32	s9, s8
    9b90: edcd fa1d    	vstr	s31, [sp, #116]
    9b94: ed8d 4a1e    	vstr	s8, [sp, #120]
    9b98: ed8d aa1f    	vstr	s20, [sp, #124]
    9b9c: eef4 2a64    	vcmp.f32	s5, s9
    9ba0: edcd 1a20    	vstr	s3, [sp, #128]
    9ba4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ba8: eef0 4ac9    	vabs.f32	s9, s18
    9bac: fe78 2a04    	vselgt.f32	s5, s16, s8
    9bb0: bfc8         	it	gt
    9bb2: 2001         	movgt	r0, #0x1
    9bb4: ed8d 8a21    	vstr	s16, [sp, #132]
    9bb8: eef0 2ae2    	vabs.f32	s5, s5
    9bbc: eef4 4a62    	vcmp.f32	s9, s5
    9bc0: ed5f 2a65    	vldr	s5, [pc, #-404]         @ 0x9a30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa80>
    9bc4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9bc8: bfc8         	it	gt
    9bca: 2002         	movgt	r0, #0x2
    9bcc: ee72 0ae0    	vsub.f32	s1, s5, s1
    9bd0: edcd 6a22    	vstr	s13, [sp, #136]
    9bd4: edcd 8a23    	vstr	s17, [sp, #140]
    9bd8: eb00 0340    	add.w	r3, r0, r0, lsl #1
    9bdc: ed8d 9a24    	vstr	s18, [sp, #144]
    9be0: edcd 0a25    	vstr	s1, [sp, #148]
    9be4: eb08 0683    	add.w	r6, r8, r3, lsl #2
    9be8: edcd 9a26    	vstr	s19, [sp, #152]
    9bec: f858 3023    	ldr.w	r3, [r8, r3, lsl #2]
    9bf0: e9d6 5401    	ldrd	r5, r4, [r6, #4]
    9bf4: e9cd 351e    	strd	r3, r5, [sp, #120]
    9bf8: 9420         	str	r4, [sp, #0x80]
    9bfa: 9b16         	ldr	r3, [sp, #0x58]
    9bfc: ed86 4a00    	vstr	s8, [r6]
    9c00: 445b         	add	r3, r11
    9c02: f8ce 3004    	str.w	r3, [lr, #0x4]
    9c06: eddd 0a1e    	vldr	s1, [sp, #120]
    9c0a: ed86 aa01    	vstr	s20, [r6, #4]
    9c0e: ee10 3a90    	vmov	r3, s1
    9c12: edc6 1a02    	vstr	s3, [r6, #8]
    9c16: eb09 0680    	add.w	r6, r9, r0, lsl #2
    9c1a: f859 0020    	ldr.w	r0, [r9, r0, lsl #2]
    9c1e: 901b         	str	r0, [sp, #0x6c]
    9c20: f023 4300    	bic	r3, r3, #0x80000000
    9c24: ed86 1a00    	vstr	s2, [r6]
    9c28: f1b3 4fff    	cmp.w	r3, #0x7f800000
    9c2c: f280 84a8    	bge.w	0xa580 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x950
    9c30: eeb0 1ae0    	vabs.f32	s2, s1
    9c34: eeb4 1a6e    	vcmp.f32	s2, s29
    9c38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9c3c: f100 84a0    	bmi.w	0xa580 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x940
    9c40: ed9d 1a24    	vldr	s2, [sp, #144]
    9c44: ed9d 4a21    	vldr	s8, [sp, #132]
    9c48: ee81 1a20    	vdiv.f32	s2, s2, s1
    9c4c: eddd 1a1f    	vldr	s3, [sp, #124]
    9c50: ee84 4a20    	vdiv.f32	s8, s8, s1
    9c54: eddd 2a25    	vldr	s5, [sp, #148]
    9c58: eddd 4a22    	vldr	s9, [sp, #136]
    9c5c: ed9d 9a1b    	vldr	s18, [sp, #108]
    9c60: ee41 2a61    	vmls.f32	s5, s2, s3
    9c64: eddd 6a20    	vldr	s13, [sp, #128]
    9c68: ee44 4a61    	vmls.f32	s9, s8, s3
    9c6c: ed9d 8a23    	vldr	s16, [sp, #140]
    9c70: ee04 8a66    	vmls.f32	s16, s8, s13
    9c74: ed9d aa1c    	vldr	s20, [sp, #112]
    9c78: ee04 aa49    	vmls.f32	s20, s8, s18
    9c7c: ed9d da26    	vldr	s26, [sp, #152]
    9c80: ee01 da66    	vmls.f32	s26, s2, s13
    9c84: 4650         	mov	r0, r10
    9c86: edcd 4a22    	vstr	s9, [sp, #136]
    9c8a: eeb0 4ae2    	vabs.f32	s8, s5
    9c8e: ed8d 8a23    	vstr	s16, [sp, #140]
    9c92: eeb0 cae4    	vabs.f32	s24, s9
    9c96: eddd 4a1d    	vldr	s9, [sp, #116]
    9c9a: ed8d aa1c    	vstr	s20, [sp, #112]
    9c9e: ee41 4a49    	vmls.f32	s9, s2, s18
    9ca2: edcd 2a25    	vstr	s5, [sp, #148]
    9ca6: eeb4 4a4c    	vcmp.f32	s8, s24
    9caa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9cae: bfc8         	it	gt
    9cb0: f108 0018    	addgt.w	r0, r8, #0x18
    9cb4: ed8d da26    	vstr	s26, [sp, #152]
    9cb8: f8da 3000    	ldr.w	r3, [r10]
    9cbc: e9d0 4600    	ldrd	r4, r6, [r0]
    9cc0: 6885         	ldr	r5, [r0, #0x8]
    9cc2: f8ca 4000    	str.w	r4, [r10]
    9cc6: f8da 4004    	ldr.w	r4, [r10, #0x4]
    9cca: f8ca 6004    	str.w	r6, [r10, #0x4]
    9cce: f8da 6008    	ldr.w	r6, [r10, #0x8]
    9cd2: f8ca 5008    	str.w	r5, [r10, #0x8]
    9cd6: e9c0 4601    	strd	r4, r6, [r0, #4]
    9cda: ed9d 4a22    	vldr	s8, [sp, #136]
    9cde: f04f 0604    	mov.w	r6, #0x4
    9ce2: ee14 5a10    	vmov	r5, s8
    9ce6: bfc8         	it	gt
    9ce8: 2608         	movgt	r6, #0x8
    9cea: edcd 4a1d    	vstr	s9, [sp, #116]
    9cee: 6003         	str	r3, [r0]
    9cf0: f859 0006    	ldr.w	r0, [r9, r6]
    9cf4: eb09 0306    	add.w	r3, r9, r6
    9cf8: f025 4600    	bic	r6, r5, #0x80000000
    9cfc: f1b6 4fff    	cmp.w	r6, #0x7f800000
    9d00: 901c         	str	r0, [sp, #0x70]
    9d02: ed83 aa00    	vstr	s20, [r3]
    9d06: f280 843b    	bge.w	0xa580 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x876
    9d0a: eeb0 1ac4    	vabs.f32	s2, s8
    9d0e: eeb4 1a6e    	vcmp.f32	s2, s29
    9d12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d16: f100 8433    	bmi.w	0xa580 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x866
    9d1a: ed9d 1a25    	vldr	s2, [sp, #148]
    9d1e: eddd 4a26    	vldr	s9, [sp, #152]
    9d22: ee81 1a04    	vdiv.f32	s2, s2, s8
    9d26: eddd 2a23    	vldr	s5, [sp, #140]
    9d2a: ee41 4a62    	vmls.f32	s9, s2, s5
    9d2e: ee14 0a90    	vmov	r0, s9
    9d32: f020 4000    	bic	r0, r0, #0x80000000
    9d36: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9d3a: f280 8421    	bge.w	0xa580 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x842
    9d3e: eeb0 8ae4    	vabs.f32	s16, s9
    9d42: eeb4 8a6e    	vcmp.f32	s16, s29
    9d46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d4a: f100 8419    	bmi.w	0xa580 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x832
    9d4e: ed9d 8a1c    	vldr	s16, [sp, #112]
    9d52: ed9d aa1d    	vldr	s20, [sp, #116]
    9d56: ee01 aa48    	vmls.f32	s20, s2, s16
    9d5a: ee8a 1a24    	vdiv.f32	s2, s20, s9
    9d5e: ee02 8ac1    	vmls.f32	s16, s5, s2
    9d62: ee88 8a04    	vdiv.f32	s16, s16, s8
    9d66: ee01 9ac8    	vmls.f32	s18, s3, s16
    9d6a: ee06 9ac1    	vmls.f32	s18, s13, s2
    9d6e: eec9 0a20    	vdiv.f32	s1, s18, s1
    9d72: ee10 0a90    	vmov	r0, s1
    9d76: f020 4000    	bic	r0, r0, #0x80000000
    9d7a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9d7e: bfbe         	ittt	lt
    9d80: ee18 0a10    	vmovlt	r0, s16
    9d84: f020 4000    	biclt	r0, r0, #0x80000000
    9d88: f1b0 4fff    	cmplt.w	r0, #0x7f800000
    9d8c: f280 83f8    	bge.w	0xa580 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x7f0
    9d90: ee11 0a10    	vmov	r0, s2
    9d94: f020 4000    	bic	r0, r0, #0x80000000
    9d98: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9d9c: f280 83f0    	bge.w	0xa580 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x7e0
    9da0: eeb0 4ac0    	vabs.f32	s8, s0
    9da4: eef0 1ae0    	vabs.f32	s3, s1
    9da8: eeb4 4a44    	vcmp.f32	s8, s8
    9dac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9db0: fe1f 4a04    	vselvs.f32	s8, s30, s8
    9db4: eeb4 4a4f    	vcmp.f32	s8, s30
    9db8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dbc: fe34 4a0f    	vselgt.f32	s8, s8, s30
    9dc0: ee24 4a02    	vmul.f32	s8, s8, s4
    9dc4: fe84 4a46    	vminnm.f32	s8, s8, s12
    9dc8: eef4 1a44    	vcmp.f32	s3, s8
    9dcc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dd0: d83a         	bhi	0x9e48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xe98> @ imm = #0x74
    9dd2: eeb0 4ac3    	vabs.f32	s8, s6
    9dd6: eef0 1ac8    	vabs.f32	s3, s16
    9dda: eeb4 4a44    	vcmp.f32	s8, s8
    9dde: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9de2: fe1f 4a04    	vselvs.f32	s8, s30, s8
    9de6: eeb4 4a4f    	vcmp.f32	s8, s30
    9dea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dee: fe34 4a0f    	vselgt.f32	s8, s8, s30
    9df2: ee24 4a02    	vmul.f32	s8, s8, s4
    9df6: fe84 4a46    	vminnm.f32	s8, s8, s12
    9dfa: eef4 1a44    	vcmp.f32	s3, s8
    9dfe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e02: d821         	bhi	0x9e48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xe98> @ imm = #0x42
    9e04: eeb0 4ae3    	vabs.f32	s8, s7
    9e08: eef0 1ac1    	vabs.f32	s3, s2
    9e0c: eeb4 4a44    	vcmp.f32	s8, s8
    9e10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e14: fe1f 4a04    	vselvs.f32	s8, s30, s8
    9e18: eeb4 4a4f    	vcmp.f32	s8, s30
    9e1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e20: fe34 4a0f    	vselgt.f32	s8, s8, s30
    9e24: ee24 4a02    	vmul.f32	s8, s8, s4
    9e28: fe84 4a46    	vminnm.f32	s8, s8, s12
    9e2c: eef4 1a44    	vcmp.f32	s3, s8
    9e30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e34: d808         	bhi	0x9e48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xe98> @ imm = #0x10
    9e36: ed9f 4adf    	vldr	s8, [pc, #892]          @ 0xa1b4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1204>
    9e3a: eeb4 5a44    	vcmp.f32	s10, s8
    9e3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e42: f240 8383    	bls.w	0xa54c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x159c> @ imm = #0x706
    9e46: bf00         	nop
    9e48: ee30 0a80    	vadd.f32	s0, s1, s0
    9e4c: ed9d 5a0d    	vldr	s10, [sp, #52]
    9e50: ed9f ab71    	vldr	d10, [pc, #452]         @ 0xa018 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1068>
    9e54: eddf 1ad8    	vldr	s3, [pc, #864]          @ 0xa1b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1208>
    9e58: ee38 3a03    	vadd.f32	s6, s16, s6
    9e5c: eeb7 9ac0    	vcvt.f64.f32	d9, s0
    9e60: eddd 0a0c    	vldr	s1, [sp, #48]
    9e64: ed9d 4b0e    	vldr	d4, [sp, #56]
    9e68: ee40 0a21    	vmla.f32	s1, s0, s3
    9e6c: ed9f 8ad3    	vldr	s16, [pc, #844]         @ 0xa1bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x120c>
    9e70: ee09 4b0a    	vmla.f64	d4, d9, d10
    9e74: 2300         	movs	r3, #0x0
    9e76: ee71 3a23    	vadd.f32	s7, s2, s7
    9e7a: f04f 0c00    	mov.w	r12, #0x0
    9e7e: ee43 0a08    	vmla.f32	s1, s6, s16
    9e82: eeb0 1a67    	vmov.f32	s2, s15
    9e86: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    9e8a: eef0 6a67    	vmov.f32	s13, s15
    9e8e: eef0 1a67    	vmov.f32	s3, s15
    9e92: ee04 5a0b    	vmla.f32	s10, s8, s22
    9e96: eef4 5a45    	vcmp.f32	s11, s10
    9e9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e9e: fe35 4a85    	vselgt.f32	s8, s11, s10
    9ea2: eeb4 4a47    	vcmp.f32	s8, s14
    9ea6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9eaa: eeb4 5a65    	vcmp.f32	s10, s11
    9eae: fe37 aa04    	vselgt.f32	s20, s14, s8
    9eb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9eb6: eeb4 5a47    	vcmp.f32	s10, s14
    9eba: eebf 5a00    	vmov.f32	s10, #-1.000000e+00
    9ebe: bfc8         	it	gt
    9ec0: 2301         	movgt	r3, #0x1
    9ec2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ec6: 9805         	ldr	r0, [sp, #0x14]
    9ec8: eef5 0a40    	vcmp.f32	s1, #0
    9ecc: eeb0 4ae0    	vabs.f32	s8, s1
    9ed0: 4458         	add	r0, r11
    9ed2: f8ce 0008    	str.w	r0, [lr, #0x8]
    9ed6: eef0 0a67    	vmov.f32	s1, s15
    9eda: bf48         	it	mi
    9edc: f04f 0c01    	movmi.w	r12, #0x1
    9ee0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ee4: ed81 0a04    	vstr	s0, [r1, #16]
    9ee8: bf48         	it	mi
    9eea: eeb0 1a45    	vmovmi.f32	s2, s10
    9eee: ed9f 5ae8    	vldr	s10, [pc, #928]         @ 0xa290 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e0>
    9ef2: ed81 3a05    	vstr	s6, [r1, #20]
    9ef6: fe3f 1a01    	vselgt.f32	s2, s30, s2
    9efa: edc1 3a06    	vstr	s7, [r1, #24]
    9efe: eeb4 4a45    	vcmp.f32	s8, s10
    9f02: eeb0 5a67    	vmov.f32	s10, s15
    9f06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f0a: f280 80b9    	bge.w	0xa080 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10d0> @ imm = #0x172
    9f0e: ed9f 5ae1    	vldr	s10, [pc, #900]         @ 0xa294 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e4>
    9f12: eef0 0a67    	vmov.f32	s1, s15
    9f16: eeb4 4a45    	vcmp.f32	s8, s10
    9f1a: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    9f1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f22: d91d         	bls	0x9f60 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xfb0> @ imm = #0x3a
    9f24: ed9f 5adc    	vldr	s10, [pc, #880]         @ 0xa298 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e8>
    9f28: eeb4 4a45    	vcmp.f32	s8, s10
    9f2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f30: d90a         	bls	0x9f48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xf98> @ imm = #0x14
    9f32: ed9f 5ada    	vldr	s10, [pc, #872]         @ 0xa29c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12ec>
    9f36: ee34 4a05    	vadd.f32	s8, s8, s10
    9f3a: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    9f3e: eddf 0ad8    	vldr	s1, [pc, #864]          @ 0xa2a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f0>
    9f42: e009         	b	0x9f58 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xfa8> @ imm = #0x12
    9f44: ac c5 a7 37  	.word	0x37a7c5ac
    9f48: ed9f 5ad6    	vldr	s10, [pc, #856]         @ 0xa2a4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f4>
    9f4c: ee34 4a05    	vadd.f32	s8, s8, s10
    9f50: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    9f54: eddf 0ad4    	vldr	s1, [pc, #848]          @ 0xa2a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f8>
    9f58: ee04 5a20    	vmla.f32	s10, s8, s1
    9f5c: ee61 0a20    	vmul.f32	s1, s2, s1
    9f60: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    9f64: ee31 1a45    	vsub.f32	s2, s2, s10
    9f68: eeb1 5a60    	vneg.f32	s10, s1
    9f6c: fe81 1a27    	vmaxnm.f32	s2, s2, s15
    9f70: eeb5 1a40    	vcmp.f32	s2, #0
    9f74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f78: d946         	bls	0xa008 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1058> @ imm = #0x8c
    9f7a: eeb0 4aca    	vabs.f32	s8, s20
    9f7e: eeb4 4a41    	vcmp.f32	s8, s2
    9f82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f86: d94f         	bls	0xa028 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1078> @ imm = #0x9e
    9f88: ee81 4a04    	vdiv.f32	s8, s2, s8
    9f8c: eef0 1a4f    	vmov.f32	s3, s30
    9f90: ee64 0a04    	vmul.f32	s1, s8, s8
    9f94: ee60 0aa0    	vmul.f32	s1, s1, s1
    9f98: ee60 0aa0    	vmul.f32	s1, s1, s1
    9f9c: ee60 2aa0    	vmul.f32	s5, s1, s1
    9fa0: ee72 0a8f    	vadd.f32	s1, s5, s30
    9fa4: eef4 0a4f    	vcmp.f32	s1, s30
    9fa8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9fac: d009         	beq	0x9fc2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1012> @ imm = #0x12
    9fae: eef0 1a60    	vmov.f32	s3, s1
    9fb2: eef1 1ae1    	vsqrt.f32	s3, s3
    9fb6: eef1 1ae1    	vsqrt.f32	s3, s3
    9fba: eef1 1ae1    	vsqrt.f32	s3, s3
    9fbe: eef1 1ae1    	vsqrt.f32	s3, s3
    9fc2: eecf 6a21    	vdiv.f32	s13, s30, s3
    9fc6: eeb4 aa4a    	vcmp.f32	s20, s20
    9fca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9fce: eec6 4aa0    	vdiv.f32	s9, s13, s1
    9fd2: eddf 0ab6    	vldr	s1, [pc, #728]          @ 0xa2ac <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12fc>
    9fd6: eef0 1a60    	vmov.f32	s3, s1
    9fda: bf7f         	itttt	vc
    9fdc: ee1a 0a10    	vmovvc	r0, s20
    9fe0: f04f 547e    	movvc.w	r4, #0x3f800000
    9fe4: f364 001e    	bfivc	r0, r4, #0, #31
    9fe8: ee01 0a90    	vmovvc	s3, r0
    9fec: bf7e         	ittt	vc
    9fee: ee21 1a81    	vmulvc.f32	s2, s3, s2
    9ff2: ee61 0a26    	vmulvc.f32	s1, s2, s13
    9ff6: ee61 1aa4    	vmulvc.f32	s3, s3, s9
    9ffa: ee24 1a22    	vmul.f32	s2, s8, s5
    9ffe: ee61 6a24    	vmul.f32	s13, s2, s9
    a002: e03d         	b	0xa080 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10d0> @ imm = #0x7a
    a004: bf00         	nop
    a006: bf00         	nop
    a008: eef0 0a67    	vmov.f32	s1, s15
    a00c: eef0 6a67    	vmov.f32	s13, s15
    a010: eef0 1a67    	vmov.f32	s3, s15
    a014: e034         	b	0xa080 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10d0> @ imm = #0x68
    a016: bf00         	nop
    a018: a6 26 74 7c  	.word	0x7c7426a6
    a01c: 9f 8f e0 bf  	.word	0xbfe08f9f
    a020: 8e 66 bb a2  	.word	0xa2bb668e
    a024: 4b 3f c2 bf  	.word	0xbfc23f4b
    a028: ee8a 4a01    	vdiv.f32	s8, s20, s2
    a02c: eef0 1a4f    	vmov.f32	s3, s30
    a030: ee24 4a04    	vmul.f32	s8, s8, s8
    a034: ee24 4a04    	vmul.f32	s8, s8, s8
    a038: ee24 4a04    	vmul.f32	s8, s8, s8
    a03c: ee24 4a04    	vmul.f32	s8, s8, s8
    a040: ee74 0a0f    	vadd.f32	s1, s8, s30
    a044: eef4 0a4f    	vcmp.f32	s1, s30
    a048: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a04c: d009         	beq	0xa062 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10b2> @ imm = #0x12
    a04e: eef0 1a60    	vmov.f32	s3, s1
    a052: eef1 1ae1    	vsqrt.f32	s3, s3
    a056: eef1 1ae1    	vsqrt.f32	s3, s3
    a05a: eef1 1ae1    	vsqrt.f32	s3, s3
    a05e: eef1 1ae1    	vsqrt.f32	s3, s3
    a062: eecf 1a21    	vdiv.f32	s3, s30, s3
    a066: ee2a 4a04    	vmul.f32	s8, s20, s8
    a06a: eec1 6aa0    	vdiv.f32	s13, s3, s1
    a06e: ee84 1a01    	vdiv.f32	s2, s8, s2
    a072: ee6a 0a21    	vmul.f32	s1, s20, s3
    a076: ee61 1a26    	vmul.f32	s3, s2, s13
    a07a: bf00         	nop
    a07c: bf00         	nop
    a07e: bf00         	nop
    a080: ee30 1a60    	vsub.f32	s2, s0, s1
    a084: ea13 030c    	ands.w	r3, r3, r12
    a088: ed9f 4ae4    	vldr	s8, [pc, #912]          @ 0xa41c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x146c>
    a08c: ed8d aa12    	vstr	s20, [sp, #72]
    a090: eddf 0ae3    	vldr	s1, [pc, #908]          @ 0xa420 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1470>
    a094: ee11 0a10    	vmov	r0, s2
    a098: ed9f aae2    	vldr	s20, [pc, #904]         @ 0xa424 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1474>
    a09c: fe40 8a84    	vseleq.f32	s17, s1, s8
    a0a0: f020 4000    	bic	r0, r0, #0x80000000
    a0a4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a0a8: da07         	bge	0xa0ba <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x110a> @ imm = #0xe
    a0aa: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    a0ae: ee81 4a04    	vdiv.f32	s8, s2, s8
    a0b2: eeb0 4ac4    	vabs.f32	s8, s8
    a0b6: fe84 aa27    	vmaxnm.f32	s20, s8, s15
    a0ba: ed1f db27    	vldr	d13, [pc, #-156]        @ 0xa020 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1070>
    a0be: eeb7 cac3    	vcvt.f64.f32	d12, s6
    a0c2: eddd 0a0a    	vldr	s1, [sp, #40]
    a0c6: ed9d 4b18    	vldr	d4, [sp, #96]
    a0ca: eddd 2a09    	vldr	s5, [sp, #36]
    a0ce: ee40 2a08    	vmla.f32	s5, s0, s16
    a0d2: ee09 4b0d    	vmla.f64	d4, d9, d13
    a0d6: 2300         	movs	r3, #0x0
    a0d8: ed9f 8ad3    	vldr	s16, [pc, #844]         @ 0xa428 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1478>
    a0dc: 2000         	movs	r0, #0x0
    a0de: ed9f 9bd4    	vldr	d9, [pc, #848]          @ 0xa430 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1480>
    a0e2: ee43 2a08    	vmla.f32	s5, s6, s16
    a0e6: ee0c 4b09    	vmla.f64	d4, d12, d9
    a0ea: ed9d 9a03    	vldr	s18, [sp, #12]
    a0ee: eef0 9a67    	vmov.f32	s19, s15
    a0f2: eef6 ca00    	vmov.f32	s25, #5.000000e-01
    a0f6: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    a0fa: eddd 4a0b    	vldr	s9, [sp, #44]
    a0fe: ee44 0a0b    	vmla.f32	s1, s8, s22
    a102: eef4 4a60    	vcmp.f32	s9, s1
    a106: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a10a: fe34 4aa0    	vselgt.f32	s8, s9, s1
    a10e: eeb4 4a49    	vcmp.f32	s8, s18
    a112: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a116: eef4 0a64    	vcmp.f32	s1, s9
    a11a: eef0 4a67    	vmov.f32	s9, s15
    a11e: fe39 da04    	vselgt.f32	s26, s18, s8
    a122: ed9f 4a63    	vldr	s8, [pc, #396]          @ 0xa2b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1300>
    a126: ee23 8a84    	vmul.f32	s16, s7, s8
    a12a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a12e: eef4 0a49    	vcmp.f32	s1, s18
    a132: eeff 0a00    	vmov.f32	s1, #-1.000000e+00
    a136: ee32 4a88    	vadd.f32	s8, s5, s16
    a13a: eeb0 9a67    	vmov.f32	s18, s15
    a13e: bfc8         	it	gt
    a140: 2301         	movgt	r3, #0x1
    a142: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a146: eeb5 4a40    	vcmp.f32	s8, #0
    a14a: eef0 2ac4    	vabs.f32	s5, s8
    a14e: eeb0 4a67    	vmov.f32	s8, s15
    a152: bf48         	it	mi
    a154: 2001         	movmi	r0, #0x1
    a156: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a15a: bf48         	it	mi
    a15c: eeb0 4a60    	vmovmi.f32	s8, s1
    a160: eddf 0a4b    	vldr	s1, [pc, #300]          @ 0xa290 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e0>
    a164: ed8d da14    	vstr	s26, [sp, #80]
    a168: fe3f 4a04    	vselgt.f32	s8, s30, s8
    a16c: eef4 2a60    	vcmp.f32	s5, s1
    a170: eef0 0a67    	vmov.f32	s1, s15
    a174: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a178: f280 80ca    	bge.w	0xa310 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1360> @ imm = #0x194
    a17c: eddf 0a45    	vldr	s1, [pc, #276]          @ 0xa294 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e4>
    a180: eef0 4a67    	vmov.f32	s9, s15
    a184: eef4 2a60    	vcmp.f32	s5, s1
    a188: eef7 0a08    	vmov.f32	s1, #1.500000e+00
    a18c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a190: d922         	bls	0xa1d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1228> @ imm = #0x44
    a192: eddf 0a41    	vldr	s1, [pc, #260]          @ 0xa298 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e8>
    a196: eef4 2a60    	vcmp.f32	s5, s1
    a19a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a19e: d90f         	bls	0xa1c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1210> @ imm = #0x1e
    a1a0: eddf 0a3e    	vldr	s1, [pc, #248]          @ 0xa29c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12ec>
    a1a4: ee72 2aa0    	vadd.f32	s5, s5, s1
    a1a8: eef0 0a08    	vmov.f32	s1, #3.000000e+00
    a1ac: eddf 4a3c    	vldr	s9, [pc, #240]          @ 0xa2a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f0>
    a1b0: e00e         	b	0xa1d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1220> @ imm = #0x1c
    a1b2: bf00         	nop
    a1b4: 17 b7 d1 38  	.word	0x38d1b717
    a1b8: a8 b9 92 b8  	.word	0xb892b9a8
    a1bc: 34 8b b1 36  	.word	0x36b18b34
    a1c0: eddf 0a38    	vldr	s1, [pc, #224]          @ 0xa2a4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f4>
    a1c4: ee72 2aa0    	vadd.f32	s5, s5, s1
    a1c8: eef7 0a08    	vmov.f32	s1, #1.500000e+00
    a1cc: eddf 4a36    	vldr	s9, [pc, #216]          @ 0xa2a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f8>
    a1d0: ee42 0aa4    	vmla.f32	s1, s5, s9
    a1d4: ee64 4a24    	vmul.f32	s9, s8, s9
    a1d8: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    a1dc: ee34 4a60    	vsub.f32	s8, s8, s1
    a1e0: eef1 0a64    	vneg.f32	s1, s9
    a1e4: fec4 2a27    	vmaxnm.f32	s5, s8, s15
    a1e8: eef5 2a40    	vcmp.f32	s5, #0
    a1ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a1f0: d946         	bls	0xa280 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12d0> @ imm = #0x8c
    a1f2: eeb0 4acd    	vabs.f32	s8, s26
    a1f6: eeb4 4a62    	vcmp.f32	s8, s5
    a1fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a1fe: d95b         	bls	0xa2b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1308> @ imm = #0xb6
    a200: ee82 4a84    	vdiv.f32	s8, s5, s8
    a204: eeb0 ca4f    	vmov.f32	s24, s30
    a208: ee64 4a04    	vmul.f32	s9, s8, s8
    a20c: ee64 4aa4    	vmul.f32	s9, s9, s9
    a210: ee64 4aa4    	vmul.f32	s9, s9, s9
    a214: ee24 9aa4    	vmul.f32	s18, s9, s9
    a218: ee79 4a0f    	vadd.f32	s9, s18, s30
    a21c: eef4 4a4f    	vcmp.f32	s9, s30
    a220: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a224: d009         	beq	0xa23a <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x128a> @ imm = #0x12
    a226: eeb0 ca64    	vmov.f32	s24, s9
    a22a: eeb1 cacc    	vsqrt.f32	s24, s24
    a22e: eeb1 cacc    	vsqrt.f32	s24, s24
    a232: eeb1 cacc    	vsqrt.f32	s24, s24
    a236: eeb1 cacc    	vsqrt.f32	s24, s24
    a23a: ee8f da0c    	vdiv.f32	s26, s30, s24
    a23e: ed9d ea14    	vldr	s28, [sp, #80]
    a242: ee24 4a09    	vmul.f32	s8, s8, s18
    a246: eeb4 ea4e    	vcmp.f32	s28, s28
    a24a: ee8d ca24    	vdiv.f32	s24, s26, s9
    a24e: eddf 4a17    	vldr	s9, [pc, #92]           @ 0xa2ac <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12fc>
    a252: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a256: eef0 9a64    	vmov.f32	s19, s9
    a25a: bf7f         	itttt	vc
    a25c: ee1e 6a10    	vmovvc	r6, s28
    a260: f04f 557e    	movvc.w	r5, #0x3f800000
    a264: f365 061e    	bfivc	r6, r5, #0, #31
    a268: ee0e 6a10    	vmovvc	s28, r6
    a26c: bf7e         	ittt	vc
    a26e: ee6e 2a22    	vmulvc.f32	s5, s28, s5
    a272: ee62 4a8d    	vmulvc.f32	s9, s5, s26
    a276: ee6e 9a0c    	vmulvc.f32	s19, s28, s24
    a27a: ee24 9a0c    	vmul.f32	s18, s8, s24
    a27e: e047         	b	0xa310 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1360> @ imm = #0x8e
    a280: eef0 4a67    	vmov.f32	s9, s15
    a284: eeb0 9a67    	vmov.f32	s18, s15
    a288: eef0 9a67    	vmov.f32	s19, s15
    a28c: e040         	b	0xa310 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1360> @ imm = #0x80
    a28e: bf00         	nop
    a290: 0a d7 23 3d  	.word	0x3d23d70a
    a294: 7c f2 b0 3a  	.word	0x3ab0f27c
    a298: a6 9b c4 3b  	.word	0x3bc49ba6
    a29c: a6 9b c4 bb  	.word	0xbbc49ba6
    a2a0: 79 78 b0 43  	.word	0x43b07879
    a2a4: 7c f2 b0 ba  	.word	0xbab0f27c
    a2a8: 53 4a a1 43  	.word	0x43a14a53
    a2ac: 00 00 c0 7f  	.word	0x7fc00000
    a2b0: d2 20 02 39  	.word	0x390220d2
    a2b4: 00 bf 00 bf  	.word	0xbf00bf00
    a2b8: ee8d 4a22    	vdiv.f32	s8, s26, s5
    a2bc: eeb0 9a4f    	vmov.f32	s18, s30
    a2c0: ee24 4a04    	vmul.f32	s8, s8, s8
    a2c4: ee24 4a04    	vmul.f32	s8, s8, s8
    a2c8: ee24 4a04    	vmul.f32	s8, s8, s8
    a2cc: ee24 4a04    	vmul.f32	s8, s8, s8
    a2d0: ee74 4a0f    	vadd.f32	s9, s8, s30
    a2d4: eef4 4a4f    	vcmp.f32	s9, s30
    a2d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a2dc: d009         	beq	0xa2f2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1342> @ imm = #0x12
    a2de: eeb0 9a64    	vmov.f32	s18, s9
    a2e2: eeb1 9ac9    	vsqrt.f32	s18, s18
    a2e6: eeb1 9ac9    	vsqrt.f32	s18, s18
    a2ea: eeb1 9ac9    	vsqrt.f32	s18, s18
    a2ee: eeb1 9ac9    	vsqrt.f32	s18, s18
    a2f2: ee8f ca09    	vdiv.f32	s24, s30, s18
    a2f6: ee2d 4a04    	vmul.f32	s8, s26, s8
    a2fa: ee8c 9a24    	vdiv.f32	s18, s24, s9
    a2fe: ee84 4a22    	vdiv.f32	s8, s8, s5
    a302: ee6d 4a0c    	vmul.f32	s9, s26, s24
    a306: ee64 9a09    	vmul.f32	s19, s8, s18
    a30a: bf00         	nop
    a30c: bf00         	nop
    a30e: bf00         	nop
    a310: ee73 fa64    	vsub.f32	s31, s6, s9
    a314: 4018         	ands	r0, r3
    a316: ed9f 4a41    	vldr	s8, [pc, #260]          @ 0xa41c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x146c>
    a31a: eddf 2a41    	vldr	s5, [pc, #260]          @ 0xa420 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1470>
    a31e: ee1f 6a90    	vmov	r6, s31
    a322: eddf aa40    	vldr	s21, [pc, #256]         @ 0xa424 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1474>
    a326: fe42 ba84    	vseleq.f32	s23, s5, s8
    a32a: f026 4000    	bic	r0, r6, #0x80000000
    a32e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a332: da17         	bge	0xa364 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x13b4> @ imm = #0x2e
    a334: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    a338: eeb4 aa4a    	vcmp.f32	s20, s20
    a33c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a340: ee8f 4a84    	vdiv.f32	s8, s31, s8
    a344: eeb0 4ac4    	vabs.f32	s8, s8
    a348: fe54 2a0a    	vselvs.f32	s5, s8, s20
    a34c: eeb4 4a44    	vcmp.f32	s8, s8
    a350: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a354: fe12 4a84    	vselvs.f32	s8, s5, s8
    a358: eef4 2a44    	vcmp.f32	s5, s8
    a35c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a360: fe72 aa84    	vselgt.f32	s21, s5, s8
    a364: eddf 4ae9    	vldr	s9, [pc, #932]          @ 0xa70c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x175c>
    a368: eddd 2a11    	vldr	s5, [sp, #68]
    a36c: ee23 4a24    	vmul.f32	s8, s6, s9
    a370: ed9f aae7    	vldr	s20, [pc, #924]         @ 0xa710 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1760>
    a374: ee25 ea21    	vmul.f32	s28, s10, s3
    a378: 200d         	movs	r0, #0xd
    a37a: ee20 5aa9    	vmul.f32	s10, s1, s19
    a37e: eef8 0a00    	vmov.f32	s1, #-2.000000e+00
    a382: ee74 2a22    	vadd.f32	s5, s8, s5
    a386: ee43 2a8a    	vmla.f32	s5, s7, s20
    a38a: ed9d aa10    	vldr	s20, [sp, #64]
    a38e: ee34 4a0a    	vadd.f32	s8, s8, s20
    a392: ee03 4ae4    	vmls.f32	s8, s7, s9
    a396: eddf 4adf    	vldr	s9, [pc, #892]          @ 0xa714 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1764>
    a39a: ee68 1aa6    	vmul.f32	s3, s17, s13
    a39e: eef0 9a64    	vmov.f32	s19, s9
    a3a2: eef4 2a44    	vcmp.f32	s5, s8
    a3a6: fe82 4ac4    	vminnm.f32	s8, s5, s8
    a3aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3ae: bf88         	it	hi
    a3b0: 200e         	movhi	r0, #0xe
    a3b2: ee3c 4ac4    	vsub.f32	s8, s25, s8
    a3b6: eeb4 4a60    	vcmp.f32	s8, s1
    a3ba: eef0 0a67    	vmov.f32	s1, s15
    a3be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3c2: d93b         	bls	0xa43c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x148c> @ imm = #0x76
    a3c4: eeb4 4a44    	vcmp.f32	s8, s8
    a3c8: eef0 2a67    	vmov.f32	s5, s15
    a3cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3d0: fe57 0a84    	vselvs.f32	s1, s15, s8
    a3d4: eef5 0a40    	vcmp.f32	s1, #0
    a3d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3dc: bfb8         	it	lt
    a3de: eef0 2a60    	vmovlt.f32	s5, s1
    a3e2: eef0 0a4f    	vmov.f32	s1, s30
    a3e6: eeb5 4a40    	vcmp.f32	s8, #0
    a3ea: ee42 0aac    	vmla.f32	s1, s5, s25
    a3ee: eddf 2af4    	vldr	s5, [pc, #976]          @ 0xa7c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    a3f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3f6: ee60 0aa2    	vmul.f32	s1, s1, s5
    a3fa: fec0 9aa4    	vmaxnm.f32	s19, s1, s9
    a3fe: d51b         	bpl	0xa438 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1488> @ imm = #0x36
    a400: eef0 0a4f    	vmov.f32	s1, s30
    a404: ee44 0a2c    	vmla.f32	s1, s8, s25
    a408: ee20 4aa2    	vmul.f32	s8, s1, s5
    a40c: eeb4 4a64    	vcmp.f32	s8, s9
    a410: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a414: dd10         	ble	0xa438 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1488> @ imm = #0x20
    a416: eddf 0af6    	vldr	s1, [pc, #984]          @ 0xa7f0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1840>
    a41a: e00f         	b	0xa43c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x148c> @ imm = #0x1e
    a41c: 95 3a ae c3  	.word	0xc3ae3a95
    a420: 00 00 00 80  	.word	0x80000000
    a424: 00 00 80 7f  	.word	0x7f800000
    a428: 75 5e 1f b9  	.word	0xb91f5e75
    a42c: 00 bf 00 bf  	.word	0xbf00bf00
    a430: a4 eb ea 42  	.word	0x42eaeba4
    a434: fb d4 cf bf  	.word	0xbfcfd4fb
    a438: eef0 0a67    	vmov.f32	s1, s15
    a43c: eddf 2ae7    	vldr	s5, [pc, #924]          @ 0xa7dc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x182c>
    a440: ed9d 4a06    	vldr	s8, [sp, #24]
    a444: ee03 4a22    	vmla.f32	s8, s6, s5
    a448: f64d 4340    	movw	r3, #0xdc40
    a44c: f2c0 0300    	movt	r3, #0x0
    a450: eddf 6ae0    	vldr	s13, [pc, #896]         @ 0xa7d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1824>
    a454: eb03 1080    	add.w	r0, r3, r0, lsl #6
    a458: ed9f aae4    	vldr	s20, [pc, #912]         @ 0xa7ec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x183c>
    a45c: ee65 8a0a    	vmul.f32	s17, s10, s20
    a460: ed90 cb08    	vldr	d12, [r0, #32]
    a464: ee2b 9a89    	vmul.f32	s18, s23, s18
    a468: ee74 2a48    	vsub.f32	s5, s8, s16
    a46c: ee53 2aa9    	vnmls.f32	s5, s7, s19
    a470: ed90 4b0a    	vldr	d4, [r0, #40]
    a474: ee25 8a26    	vmul.f32	s16, s10, s13
    a478: eddf 6ada    	vldr	s13, [pc, #872]         @ 0xa7e4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1834>
    a47c: ed90 db0c    	vldr	d13, [r0, #48]
    a480: ee65 6a26    	vmul.f32	s13, s10, s13
    a484: ed9f 5ad1    	vldr	s10, [pc, #836]         @ 0xa7cc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x181c>
    a488: ee21 aaa7    	vmul.f32	s20, s3, s15
    a48c: ee12 0a90    	vmov	r0, s5
    a490: ee6e ba05    	vmul.f32	s23, s28, s10
    a494: ed9f 5ad0    	vldr	s10, [pc, #832]         @ 0xa7d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1828>
    a498: f020 4000    	bic	r0, r0, #0x80000000
    a49c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a4a0: da17         	bge	0xa4d2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1522> @ imm = #0x2e
    a4a2: ed9f 5ad4    	vldr	s10, [pc, #848]         @ 0xa7f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1844>
    a4a6: eef4 aa6a    	vcmp.f32	s21, s21
    a4aa: ee82 5a85    	vdiv.f32	s10, s5, s10
    a4ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4b2: eeb0 5ac5    	vabs.f32	s10, s10
    a4b6: fe55 aa2a    	vselvs.f32	s21, s10, s21
    a4ba: eeb4 5a45    	vcmp.f32	s10, s10
    a4be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4c2: fe1a 5a85    	vselvs.f32	s10, s21, s10
    a4c6: eef4 aa45    	vcmp.f32	s21, s10
    a4ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4ce: fe3a 5a85    	vselgt.f32	s10, s21, s10
    a4d2: eddf aabf    	vldr	s21, [pc, #764]         @ 0xa7d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1820>
    a4d6: ee63 0aa0    	vmul.f32	s1, s7, s1
    a4da: eeb7 dbcd    	vcvt.f32.f64	s26, d13
    a4de: f10b 0001    	add.w	r0, r11, #0x1
    a4e2: ee41 baaa    	vmla.f32	s23, s3, s21
    a4e6: eddf aab8    	vldr	s21, [pc, #736]         @ 0xa7c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1818>
    a4ea: eef0 1a4a    	vmov.f32	s3, s20
    a4ee: ee4e 1a2a    	vmla.f32	s3, s28, s21
    a4f2: eddf aab8    	vldr	s21, [pc, #736]         @ 0xa7d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1824>
    a4f6: ee49 8a27    	vmla.f32	s17, s18, s15
    a4fa: ee0e aa2a    	vmla.f32	s20, s28, s21
    a4fe: ed9f eab7    	vldr	s28, [pc, #732]         @ 0xa7dc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x182c>
    a502: ee00 eacd    	vmls.f32	s28, s1, s26
    a506: ed9f dab6    	vldr	s26, [pc, #728]         @ 0xa7e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1830>
    a50a: ee09 8a0d    	vmla.f32	s16, s18, s26
    a50e: ed9f dab6    	vldr	s26, [pc, #728]         @ 0xa7e8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1838>
    a512: eeb7 cbcc    	vcvt.f32.f64	s24, d12
    a516: 9b04         	ldr	r3, [sp, #0x10]
    a518: ee49 6a0d    	vmla.f32	s13, s18, s26
    a51c: 445b         	add	r3, r11
    a51e: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    a522: 2803         	cmp	r0, #0x3
    a524: ee2c 9a60    	vnmul.f32	s18, s24, s1
    a528: f102 0201    	add.w	r2, r2, #0x1
    a52c: ee79 9a8e    	vadd.f32	s19, s19, s28
    a530: 4683         	mov	r11, r0
    a532: ee60 0a84    	vmul.f32	s1, s1, s8
    a536: f8ce 3000    	str.w	r3, [lr]
    a53a: eeb1 1a41    	vneg.f32	s2, s2
    a53e: eeb1 ea6f    	vneg.f32	s28, s31
    a542: eef1 fa62    	vneg.f32	s31, s5
    a546: f47f ab16    	bne.w	0x9b76 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xbc6> @ imm = #-0x9d4
    a54a: 2203         	movs	r2, #0x3
    a54c: ee15 0a10    	vmov	r0, s10
    a550: 9901         	ldr	r1, [sp, #0x4]
    a552: ed9d 0a12    	vldr	s0, [sp, #72]
    a556: ed81 0a02    	vstr	s0, [r1, #8]
    a55a: ed9d 0a14    	vldr	s0, [sp, #80]
    a55e: ed81 0a03    	vstr	s0, [r1, #12]
    a562: f020 4000    	bic	r0, r0, #0x80000000
    a566: 9902         	ldr	r1, [sp, #0x8]
    a568: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a56c: f04f 0000    	mov.w	r0, #0x0
    a570: ed81 5a00    	vstr	s10, [r1]
    a574: 710a         	strb	r2, [r1, #0x4]
    a576: bfb8         	it	lt
    a578: 2001         	movlt	r0, #0x1
    a57a: e007         	b	0xa58c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15dc> @ imm = #0xe
    a57c: bf00         	nop
    a57e: bf00         	nop
    a580: 9902         	ldr	r1, [sp, #0x8]
    a582: f04f 40ff    	mov.w	r0, #0x7f800000
    a586: 6008         	str	r0, [r1]
    a588: 2000         	movs	r0, #0x0
    a58a: 710a         	strb	r2, [r1, #0x4]
    a58c: 7148         	strb	r0, [r1, #0x5]
    a58e: b02a         	add	sp, #0xa8
    a590: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    a594: b001         	add	sp, #0x4
    a596: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    a59a: bdf0         	pop	{r4, r5, r6, r7, pc}
    a59c: bf00         	nop
    a59e: bf00         	nop
    a5a0: eef7 3bc2    	vcvt.f32.f64	s7, d2
    a5a4: eddf 2a85    	vldr	s5, [pc, #532]          @ 0xa7bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    a5a8: eeb0 2a44    	vmov.f32	s4, s8
    a5ac: ed8d eb12    	vstr	d14, [sp, #72]
    a5b0: ee03 2aa2    	vmla.f32	s4, s7, s5
    a5b4: eef0 2a45    	vmov.f32	s5, s10
    a5b8: ee43 2aa0    	vmla.f32	s5, s7, s1
    a5bc: eeb6 ea00    	vmov.f32	s28, #5.000000e-01
    a5c0: edc1 3a06    	vstr	s7, [r1, #24]
    a5c4: fec2 4a62    	vminnm.f32	s9, s4, s5
    a5c8: ee7e 4a64    	vsub.f32	s9, s28, s9
    a5cc: eeb8 ea00    	vmov.f32	s28, #-2.000000e+00
    a5d0: eef4 4a4e    	vcmp.f32	s9, s28
    a5d4: ed9d eb12    	vldr	d14, [sp, #72]
    a5d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5dc: f77e ae81    	ble.w	0x92e2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x12fe
    a5e0: eeb4 2a62    	vcmp.f32	s4, s5
    a5e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5e8: f63e ae7b    	bhi.w	0x92e2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x130a
    a5ec: eef5 4a40    	vcmp.f32	s9, #0
    a5f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5f4: f57e ae75    	bpl.w	0x92e2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x1316
    a5f8: eef6 2a00    	vmov.f32	s5, #5.000000e-01
    a5fc: eeb0 2a65    	vmov.f32	s4, s11
    a600: ee04 2aa2    	vmla.f32	s4, s9, s5
    a604: eddf 2a6e    	vldr	s5, [pc, #440]          @ 0xa7c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    a608: ee22 2a22    	vmul.f32	s4, s4, s5
    a60c: eeb4 2a61    	vcmp.f32	s4, s3
    a610: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a614: f77e ae65    	ble.w	0x92e2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x1336
    a618: f7fe beb4    	b.w	0x9384 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1298
    a61c: bf00         	nop
    a61e: bf00         	nop
    a620: eef7 3bc2    	vcvt.f32.f64	s7, d2
    a624: eddf 2a65    	vldr	s5, [pc, #404]          @ 0xa7bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    a628: eeb0 2a44    	vmov.f32	s4, s8
    a62c: eeb6 ba00    	vmov.f32	s22, #5.000000e-01
    a630: edc1 3a06    	vstr	s7, [r1, #24]
    a634: ee03 2aa2    	vmla.f32	s4, s7, s5
    a638: eef0 2a45    	vmov.f32	s5, s10
    a63c: ee43 2aa0    	vmla.f32	s5, s7, s1
    a640: fec2 4a62    	vminnm.f32	s9, s4, s5
    a644: ee7b 4a64    	vsub.f32	s9, s22, s9
    a648: eeb8 ba00    	vmov.f32	s22, #-2.000000e+00
    a64c: eef4 4a4b    	vcmp.f32	s9, s22
    a650: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a654: f77e ae87    	ble.w	0x9366 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x12f2
    a658: eef4 2a42    	vcmp.f32	s5, s4
    a65c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a660: f63e ae81    	bhi.w	0x9366 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x12fe
    a664: eef5 4a40    	vcmp.f32	s9, #0
    a668: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a66c: f57e ae7b    	bpl.w	0x9366 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x130a
    a670: eef6 2a00    	vmov.f32	s5, #5.000000e-01
    a674: eeb0 2a65    	vmov.f32	s4, s11
    a678: ee04 2aa2    	vmla.f32	s4, s9, s5
    a67c: eddf 2a50    	vldr	s5, [pc, #320]          @ 0xa7c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    a680: ee22 2a22    	vmul.f32	s4, s4, s5
    a684: eeb4 2a61    	vcmp.f32	s4, s3
    a688: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a68c: f77e ae6b    	ble.w	0x9366 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x132a
    a690: f7fe be78    	b.w	0x9384 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1310
    a694: bf00         	nop
    a696: bf00         	nop
    a698: eef7 3bc2    	vcvt.f32.f64	s7, d2
    a69c: ed9f 7a47    	vldr	s14, [pc, #284]         @ 0xa7bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    a6a0: eeb0 2a44    	vmov.f32	s4, s8
    a6a4: eef0 2a45    	vmov.f32	s5, s10
    a6a8: eef6 4a00    	vmov.f32	s9, #5.000000e-01
    a6ac: ee03 2a87    	vmla.f32	s4, s7, s14
    a6b0: edc1 3a06    	vstr	s7, [r1, #24]
    a6b4: ee43 2aa0    	vmla.f32	s5, s7, s1
    a6b8: fe82 7a62    	vminnm.f32	s14, s4, s5
    a6bc: ee34 7ac7    	vsub.f32	s14, s9, s14
    a6c0: eef8 4a00    	vmov.f32	s9, #-2.000000e+00
    a6c4: eeb4 7a64    	vcmp.f32	s14, s9
    a6c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a6cc: f77e ae12    	ble.w	0x92f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x13dc
    a6d0: eeb4 2a62    	vcmp.f32	s4, s5
    a6d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a6d8: f63e ae0c    	bhi.w	0x92f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x13e8
    a6dc: eeb5 7a40    	vcmp.f32	s14, #0
    a6e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a6e4: f57e ae06    	bpl.w	0x92f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x13f4
    a6e8: eef6 2a00    	vmov.f32	s5, #5.000000e-01
    a6ec: eeb0 2a65    	vmov.f32	s4, s11
    a6f0: ee07 2a22    	vmla.f32	s4, s14, s5
    a6f4: ed9f 7a32    	vldr	s14, [pc, #200]         @ 0xa7c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    a6f8: ee22 2a07    	vmul.f32	s4, s4, s14
    a6fc: eeb4 2a61    	vcmp.f32	s4, s3
    a700: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a704: f77e adf6    	ble.w	0x92f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x1414
    a708: f7fe be3c    	b.w	0x9384 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1388
    a70c: a8 cc 7f 3f  	.word	0x3f7fcca8
    a710: 0d 61 4d 3a  	.word	0x3a4d610d
    a714: 95 bf d6 33  	.word	0x33d6bf95
    a718: eef7 3bc2    	vcvt.f32.f64	s7, d2
    a71c: ed9f 7a27    	vldr	s14, [pc, #156]         @ 0xa7bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    a720: eeb0 2a45    	vmov.f32	s4, s10
    a724: eef6 4a00    	vmov.f32	s9, #5.000000e-01
    a728: eef8 2a00    	vmov.f32	s5, #-2.000000e+00
    a72c: ee03 2aa0    	vmla.f32	s4, s7, s1
    a730: eef0 0a44    	vmov.f32	s1, s8
    a734: ee43 0a87    	vmla.f32	s1, s7, s14
    a738: edc1 3a06    	vstr	s7, [r1, #24]
    a73c: fe80 7ac2    	vminnm.f32	s14, s1, s4
    a740: ee34 7ac7    	vsub.f32	s14, s9, s14
    a744: eeb4 7a62    	vcmp.f32	s14, s5
    a748: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a74c: f77e ae14    	ble.w	0x9378 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #-0x13d8
    a750: eeb4 2a60    	vcmp.f32	s4, s1
    a754: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a758: f63e ae0e    	bhi.w	0x9378 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #-0x13e4
    a75c: eeb5 7a40    	vcmp.f32	s14, #0
    a760: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a764: f57e ae08    	bpl.w	0x9378 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #-0x13f0
    a768: ee47 5a24    	vmla.f32	s11, s14, s9
    a76c: ed9f 2a14    	vldr	s4, [pc, #80]           @ 0xa7c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    a770: eef0 4a41    	vmov.f32	s9, s2
    a774: ee25 2a82    	vmul.f32	s4, s11, s4
    a778: eeb4 2a61    	vcmp.f32	s4, s3
    a77c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a780: f77e adfc    	ble.w	0x937c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3cc> @ imm = #-0x1408
    a784: f7fe bdfe    	b.w	0x9384 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1404
    a788: f24d 70b0    	movw	r0, #0xd7b0
    a78c: f24e 0200    	movw	r2, #0xe000
    a790: f2c0 0000    	movt	r0, #0x0
    a794: f2c0 0200    	movt	r2, #0x0
    a798: a91e         	add	r1, sp, #0x78
    a79a: f001 fa0d    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #0x141a
    a79e: bf00         	nop
    a7a0: eddf aa08    	vldr	s21, [pc, #32]          @ 0xa7c4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1814>
    a7a4: eef0 2a6a    	vmov.f32	s5, s21
    a7a8: f7fe bee9    	b.w	0x957e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5ce> @ imm = #-0x122e
    a7ac: bf00         	nop
    a7ae: bf00         	nop
    a7b0: eddf 8a04    	vldr	s17, [pc, #16]          @ 0xa7c4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1814>
    a7b4: eeb0 2a68    	vmov.f32	s4, s17
    a7b8: f7ff b84b    	b.w	0x9852 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8a2> @ imm = #-0xf6a
    a7bc: 0d 61 4d 3a  	.word	0x3a4d610d
    a7c0: 2b 18 95 3b  	.word	0x3b95182b
    a7c4: 00 00 c0 7f  	.word	0x7fc00000
    a7c8: 00 00 00 80  	.word	0x80000000
    a7cc: a8 b9 92 38  	.word	0x3892b9a8
    a7d0: fc 7c 04 bf  	.word	0xbf047cfc
    a7d4: 34 8b b1 b6  	.word	0xb6b18b34
    a7d8: 00 00 80 7f  	.word	0x7f800000
    a7dc: d2 20 02 39  	.word	0x390220d2
    a7e0: 5d fa 11 be  	.word	0xbe11fa5d
    a7e4: 75 5e 1f 39  	.word	0x391f5e75
    a7e8: da a7 7e be  	.word	0xbe7ea7da
    a7ec: d2 20 02 b9  	.word	0xb90220d2
    a7f0: 2b 18 15 3b  	.word	0x3b15182b
    a7f4: 0a d7 23 3c  	.word	0x3c23d70a

0000a7f8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>>:
    a7f8: b5f0         	push	{r4, r5, r6, r7, lr}
    a7fa: af03         	add	r7, sp, #0xc
    a7fc: e92d 0f00    	push.w	{r8, r9, r10, r11}
    a800: b081         	sub	sp, #0x4
    a802: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    a806: b088         	sub	sp, #0x20
    a808: ed91 3a00    	vldr	s6, [r1]
    a80c: ed91 4a01    	vldr	s8, [r1, #4]
    a810: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    a814: ed91 6a02    	vldr	s12, [r1, #8]
    a818: ed9f 5baf    	vldr	d5, [pc, #700]          @ 0xaad8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x2e0>
    a81c: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    a820: eebb 9a05    	vmov.f32	s18, #-2.100000e+01
    a824: eeb0 7b41    	vmov.f64	d7, d1
    a828: 460c         	mov	r4, r1
    a82a: eeb3 aa05    	vmov.f32	s20, #2.100000e+01
    a82e: 461e         	mov	r6, r3
    a830: ee03 7b05    	vmla.f64	d7, d3, d5
    a834: 4690         	mov	r8, r2
    a836: eeb7 3ac6    	vcvt.f64.f32	d3, s12
    a83a: 4605         	mov	r5, r0
    a83c: ee04 7b05    	vmla.f64	d7, d4, d5
    a840: ed91 4a03    	vldr	s8, [r1, #12]
    a844: ee03 7b05    	vmla.f64	d7, d3, d5
    a848: eeb7 3ac4    	vcvt.f64.f32	d3, s8
    a84c: ed91 4a04    	vldr	s8, [r1, #16]
    a850: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    a854: ed9f 6ba2    	vldr	d6, [pc, #648]          @ 0xaae0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x2e8>
    a858: ee03 7b05    	vmla.f64	d7, d3, d5
    a85c: ed91 3a05    	vldr	s6, [r1, #20]
    a860: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    a864: ee04 7b05    	vmla.f64	d7, d4, d5
    a868: ed91 5a06    	vldr	s10, [r1, #24]
    a86c: ed9f 4b9e    	vldr	d4, [pc, #632]          @ 0xaae8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x2f0>
    a870: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    a874: ee23 3b04    	vmul.f64	d3, d3, d4
    a878: ee25 5b06    	vmul.f64	d5, d5, d6
    a87c: ed9f 6a2c    	vldr	s12, [pc, #176]         @ 0xa930 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x138>
    a880: ee37 4b03    	vadd.f64	d4, d7, d3
    a884: ee22 6a06    	vmul.f32	s12, s4, s12
    a888: ed9f 7b99    	vldr	d7, [pc, #612]          @ 0xaaf0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x2f8>
    a88c: ee34 2b05    	vadd.f64	d2, d4, d5
    a890: eeb7 4ac6    	vcvt.f64.f32	d4, s12
    a894: ee31 1b03    	vadd.f64	d1, d1, d3
    a898: ee84 4b07    	vdiv.f64	d4, d4, d7
    a89c: ed9f 7b96    	vldr	d7, [pc, #600]          @ 0xaaf8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x300>
    a8a0: ee02 4b07    	vmla.f64	d4, d2, d7
    a8a4: ed9f 2b96    	vldr	d2, [pc, #600]          @ 0xab00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x308>
    a8a8: ee84 2b02    	vdiv.f64	d2, d4, d2
    a8ac: ee31 bb05    	vadd.f64	d11, d1, d5
    a8b0: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    a8b4: eeb0 3b4b    	vmov.f64	d3, d11
    a8b8: eeb4 9a42    	vcmp.f32	s18, s4
    a8bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a8c0: ed9f 4b91    	vldr	d4, [pc, #580]          @ 0xab08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x310>
    a8c4: fe39 2a02    	vselgt.f32	s4, s18, s4
    a8c8: eeb4 2a4a    	vcmp.f32	s4, s20
    a8cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a8d0: fe7a 9a02    	vselgt.f32	s19, s20, s4
    a8d4: ed9f 2a17    	vldr	s4, [pc, #92]           @ 0xa934 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x13c>
    a8d8: ee36 2a02    	vadd.f32	s4, s12, s4
    a8dc: edc1 9a07    	vstr	s19, [r1, #28]
    a8e0: eeb7 1ae9    	vcvt.f64.f32	d1, s19
    a8e4: ee01 3b04    	vmla.f64	d3, d1, d4
    a8e8: ed9f 1a13    	vldr	s2, [pc, #76]           @ 0xa938 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x140>
    a8ec: ee82 da01    	vdiv.f32	s26, s4, s2
    a8f0: ed9f 2a12    	vldr	s4, [pc, #72]           @ 0xa93c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x144>
    a8f4: ee26 fa02    	vmul.f32	s30, s12, s4
    a8f8: ed9f 4a11    	vldr	s8, [pc, #68]           @ 0xa940 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x148>
    a8fc: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    a900: eeb0 2a4f    	vmov.f32	s4, s30
    a904: ee03 2a04    	vmla.f32	s4, s6, s8
    a908: ed9f 3a0e    	vldr	s6, [pc, #56]           @ 0xa944 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x14c>
    a90c: ee36 3a03    	vadd.f32	s6, s12, s6
    a910: eec3 8a01    	vdiv.f32	s17, s6, s2
    a914: eeb4 2a68    	vcmp.f32	s4, s17
    a918: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a91c: db1c         	blt	0xa958 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x160> @ imm = #0x38
    a91e: eeb4 2a4d    	vcmp.f32	s4, s26
    a922: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a926: d817         	bhi	0xa958 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x160> @ imm = #0x2e
    a928: eef7 abc0    	vcvt.f32.f64	s21, d0
    a92c: e054         	b	0xa9d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x1e0> @ imm = #0xa8
    a92e: bf00         	nop
    a930: 00 80 3b 47  	.word	0x473b8000
    a934: 00 24 f4 4a  	.word	0x4af42400
    a938: 00 a0 8c 47  	.word	0x478ca000
    a93c: af fd 66 37  	.word	0x3766fdaf
    a940: df 5b 59 44  	.word	0x44595bdf
    a944: 00 24 f4 ca  	.word	0xcaf42400
    a948: 7a ad 91 c1  	.word	0xc191ad7a
    a94c: 75 e7 24 be  	.word	0xbe24e775
    a950: 75 e7 24 3e  	.word	0x3e24e775
    a954: 00 00 00 80  	.word	0x80000000
    a958: eef4 8a4d    	vcmp.f32	s17, s26
    a95c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a960: f200 839a    	bhi.w	0xb098 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8a0> @ imm = #0x734
    a964: eef4 8a42    	vcmp.f32	s17, s4
    a968: ed1f 3a09    	vldr	s6, [pc, #-36]          @ 0xa948 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x150>
    a96c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a970: eef7 abc0    	vcvt.f32.f64	s21, d0
    a974: a804         	add	r0, sp, #0x10
    a976: fe38 1a82    	vselgt.f32	s2, s17, s4
    a97a: ed1f 0a0c    	vldr	s0, [pc, #-48]          @ 0xa94c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x154>
    a97e: eef0 0a6a    	vmov.f32	s1, s21
    a982: eeb4 1a4d    	vcmp.f32	s2, s26
    a986: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a98a: fe3d 1a01    	vselgt.f32	s2, s26, s2
    a98e: ee31 2a42    	vsub.f32	s4, s2, s4
    a992: ee82 2a03    	vdiv.f32	s4, s4, s6
    a996: ee39 2a82    	vadd.f32	s4, s19, s4
    a99a: eeb4 9a42    	vcmp.f32	s18, s4
    a99e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9a2: fe39 2a02    	vselgt.f32	s4, s18, s4
    a9a6: eeb4 2a4a    	vcmp.f32	s4, s20
    a9aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9ae: fe3a 8a02    	vselgt.f32	s16, s20, s4
    a9b2: ee48 0a00    	vmla.f32	s1, s16, s0
    a9b6: eeb0 0a41    	vmov.f32	s0, s2
    a9ba: f7fc fb29    	bl	0x7010 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>> @ imm = #-0x39ae
    a9be: ed9d 0a04    	vldr	s0, [sp, #16]
    a9c2: eeb6 1a00    	vmov.f32	s2, #5.000000e-01
    a9c6: ee38 0a00    	vadd.f32	s0, s16, s0
    a9ca: 6830         	ldr	r0, [r6]
    a9cc: 3001         	adds	r0, #0x1
    a9ce: 6030         	str	r0, [r6]
    a9d0: ee60 9a01    	vmul.f32	s19, s0, s2
    a9d4: edc4 9a07    	vstr	s19, [r4, #28]
    a9d8: eef4 8a4d    	vcmp.f32	s17, s26
    a9dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9e0: f200 835a    	bhi.w	0xb098 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8a0> @ imm = #0x6b4
    a9e4: eeb7 0ae9    	vcvt.f64.f32	d0, s19
    a9e8: eeb0 ca4f    	vmov.f32	s24, s30
    a9ec: ed9f 2bb2    	vldr	d2, [pc, #712]          @ 0xacb8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x4c0>
    a9f0: eeb0 1b4b    	vmov.f64	d1, d11
    a9f4: a804         	add	r0, sp, #0x10
    a9f6: ed1f ea2a    	vldr	s28, [pc, #-168]        @ 0xa950 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x158>
    a9fa: ee00 1b02    	vmla.f64	d1, d0, d2
    a9fe: eef0 0a6a    	vmov.f32	s1, s21
    aa02: ee49 0ace    	vmls.f32	s1, s19, s28
    aa06: e9cd 8501    	strd	r8, r5, [sp, #4]
    aa0a: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    aa0e: ed1f 1a34    	vldr	s2, [pc, #-208]         @ 0xa940 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x148>
    aa12: ee00 ca01    	vmla.f32	s24, s0, s2
    aa16: eef4 8a4c    	vcmp.f32	s17, s24
    aa1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa1e: fe38 0a8c    	vselgt.f32	s0, s17, s24
    aa22: eeb4 0a4d    	vcmp.f32	s0, s26
    aa26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa2a: fe3d 8a00    	vselgt.f32	s16, s26, s0
    aa2e: eeb0 0a48    	vmov.f32	s0, s16
    aa32: f7fc faed    	bl	0x7010 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>> @ imm = #-0x3a26
    aa36: f20f 6084    	adr.w	r0, #1668
    aa3a: eeb4 ca4d    	vcmp.f32	s24, s26
    aa3e: 1d01         	adds	r1, r0, #0x4
    aa40: 9103         	str	r1, [sp, #0xc]
    aa42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa46: bf48         	it	mi
    aa48: 4608         	movmi	r0, r1
    aa4a: eeb4 ca68    	vcmp.f32	s24, s17
    aa4e: ed9d 0a04    	vldr	s0, [sp, #16]
    aa52: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa56: ee39 1ac0    	vsub.f32	s2, s19, s0
    aa5a: ed90 0a00    	vldr	s0, [r0]
    aa5e: ed1f 2a43    	vldr	s4, [pc, #-268]         @ 0xa954 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x15c>
    aa62: fe30 0a02    	vselgt.f32	s0, s0, s4
    aa66: ed9d 2a05    	vldr	s4, [sp, #20]
    aa6a: ee11 0a10    	vmov	r0, s2
    aa6e: ee20 3a02    	vmul.f32	s6, s0, s4
    aa72: ed9d 0a06    	vldr	s0, [sp, #24]
    aa76: ee20 0a0e    	vmul.f32	s0, s0, s28
    aa7a: f020 4000    	bic	r0, r0, #0x80000000
    aa7e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    aa82: ed9f 2aef    	vldr	s4, [pc, #956]          @ 0xae40 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x648>
    aa86: da09         	bge	0xaa9c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x2a4> @ imm = #0x12
    aa88: eeb3 2a08    	vmov.f32	s4, #2.400000e+01
    aa8c: ed9f 4aed    	vldr	s8, [pc, #948]          @ 0xae44 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x64c>
    aa90: ee81 2a02    	vdiv.f32	s4, s2, s4
    aa94: eeb0 2ac2    	vabs.f32	s4, s4
    aa98: fe82 2a04    	vmaxnm.f32	s4, s4, s8
    aa9c: ed9f 4aea    	vldr	s8, [pc, #936]          @ 0xae48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x650>
    aaa0: eeb1 1a41    	vneg.f32	s2, s2
    aaa4: ee03 0a04    	vmla.f32	s0, s6, s8
    aaa8: eef7 ea00    	vmov.f32	s29, #1.000000e+00
    aaac: eeb2 ca00    	vmov.f32	s24, #8.000000e+00
    aab0: eef1 ca04    	vmov.f32	s25, #5.000000e+00
    aab4: e896 0007    	ldm.w	r6, {r0, r1, r2}
    aab8: f102 0901    	add.w	r9, r2, #0x1
    aabc: f101 0b01    	add.w	r11, r1, #0x1
    aac0: f100 0a02    	add.w	r10, r0, #0x2
    aac4: f04f 0800    	mov.w	r8, #0x0
    aac8: eddf dade    	vldr	s27, [pc, #888]         @ 0xae44 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x64c>
    aacc: 2500         	movs	r5, #0x0
    aace: ed5f fa61    	vldr	s31, [pc, #-388]        @ 0xa94c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x154>
    aad2: 1c43         	adds	r3, r0, #0x1
    aad4: 6033         	str	r3, [r6]
    aad6: e031         	b	0xab3c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x344> @ imm = #0x62
    aad8: 00 00 00 00  	.word	0x00000000
    aadc: 00 00 00 00  	.word	0x00000000
    aae0: ce 98 d9 8d  	.word	0x8dd998ce
    aae4: 11 3b d9 bf  	.word	0xbfd93b11
    aae8: ce 98 d9 8d  	.word	0x8dd998ce
    aaec: 11 3b d9 3f  	.word	0x3fd93b11
    aaf0: 0a 85 fc bd  	.word	0xbdfc850a
    aaf4: 77 bb f1 40  	.word	0x40f1bb77
    aaf8: 27 0b ca d7  	.word	0xd7ca0b27
    aafc: 7b 2b 8b 40  	.word	0x408b2b7b
    ab00: ed 22 58 32  	.word	0x325822ed
    ab04: af 35 33 40  	.word	0x403335af
    ab08: 34 aa a2 31  	.word	0x31a2aa34
    ab0c: 6b 72 95 bf  	.word	0xbf95726b
    ab10: ee20 3a03    	vmul.f32	s6, s0, s6
    ab14: ed1f 0a72    	vldr	s0, [pc, #-456]         @ 0xa950 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x158>
    ab18: ee24 0a00    	vmul.f32	s0, s8, s0
    ab1c: ed9f 4aca    	vldr	s8, [pc, #808]          @ 0xae48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x650>
    ab20: eeb1 1a41    	vneg.f32	s2, s2
    ab24: 1c68         	adds	r0, r5, #0x1
    ab26: ee03 0a04    	vmla.f32	s0, s6, s8
    ab2a: eb0a 0105    	add.w	r1, r10, r5
    ab2e: 2803         	cmp	r0, #0x3
    ab30: f108 0801    	add.w	r8, r8, #0x1
    ab34: 4605         	mov	r5, r0
    ab36: 6031         	str	r1, [r6]
    ab38: f000 8292    	beq.w	0xb060 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x868> @ imm = #0x524
    ab3c: ee30 0a2e    	vadd.f32	s0, s0, s29
    ab40: ed9f 4ac2    	vldr	s8, [pc, #776]          @ 0xae4c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x654>
    ab44: 2100         	movs	r1, #0x0
    ab46: ee10 0a10    	vmov	r0, s0
    ab4a: eeb0 3ac0    	vabs.f32	s6, s0
    ab4e: f020 4000    	bic	r0, r0, #0x80000000
    ab52: eeb4 3a44    	vcmp.f32	s6, s8
    ab56: f1b0 4fff    	cmp.w	r0, #0x7f800000
    ab5a: f04f 0000    	mov.w	r0, #0x0
    ab5e: bfa8         	it	ge
    ab60: 2001         	movge	r0, #0x1
    ab62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab66: bf48         	it	mi
    ab68: 2101         	movmi	r1, #0x1
    ab6a: 4308         	orrs	r0, r1
    ab6c: eb0b 0005    	add.w	r0, r11, r5
    ab70: 6070         	str	r0, [r6, #0x4]
    ab72: f040 826d    	bne.w	0xb050 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x858> @ imm = #0x4da
    ab76: ee81 1a00    	vdiv.f32	s2, s2, s0
    ab7a: ee11 0a10    	vmov	r0, s2
    ab7e: f020 4000    	bic	r0, r0, #0x80000000
    ab82: f1b0 4fff    	cmp.w	r0, #0x7f800000
    ab86: f280 8263    	bge.w	0xb050 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x858> @ imm = #0x4c6
    ab8a: eeb0 3ae9    	vabs.f32	s6, s19
    ab8e: ed9f 4ab0    	vldr	s8, [pc, #704]          @ 0xae50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x658>
    ab92: eeb4 3a43    	vcmp.f32	s6, s6
    ab96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab9a: fe1e 3a83    	vselvs.f32	s6, s29, s6
    ab9e: eeb4 3a6e    	vcmp.f32	s6, s29
    aba2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aba6: fe33 3a2e    	vselgt.f32	s6, s6, s29
    abaa: ee23 3a04    	vmul.f32	s6, s6, s8
    abae: ed9f 4aa9    	vldr	s8, [pc, #676]          @ 0xae54 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x65c>
    abb2: fe83 3a44    	vminnm.f32	s6, s6, s8
    abb6: eeb0 4ac1    	vabs.f32	s8, s2
    abba: eeb4 4a43    	vcmp.f32	s8, s6
    abbe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    abc2: d807         	bhi	0xabd4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x3dc> @ imm = #0xe
    abc4: ed9f 3aa4    	vldr	s6, [pc, #656]          @ 0xae58 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x660>
    abc8: eeb4 2a43    	vcmp.f32	s4, s6
    abcc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    abd0: f240 8248    	bls.w	0xb064 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x86c> @ imm = #0x490
    abd4: eeb7 2ae9    	vcvt.f64.f32	d2, s19
    abd8: f20f 40f0    	adr.w	r0, #1264
    abdc: ed9f 4b36    	vldr	d4, [pc, #216]          @ 0xacb8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x4c0>
    abe0: eeb0 3b4b    	vmov.f64	d3, d11
    abe4: ee02 3b04    	vmla.f64	d3, d2, d4
    abe8: ed1f 4aab    	vldr	s8, [pc, #-684]         @ 0xa940 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x148>
    abec: eeb7 2bc3    	vcvt.f32.f64	s4, d3
    abf0: eeb0 3a4f    	vmov.f32	s6, s30
    abf4: ee02 3a04    	vmla.f32	s6, s4, s8
    abf8: eeb0 2ac8    	vabs.f32	s4, s16
    abfc: eeb4 3a4d    	vcmp.f32	s6, s26
    ac00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac04: bf48         	it	mi
    ac06: 3004         	addmi	r0, #0x4
    ac08: eeb4 3a68    	vcmp.f32	s6, s17
    ac0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac10: ed90 3a00    	vldr	s6, [r0]
    ac14: eeb4 2a4a    	vcmp.f32	s4, s20
    ac18: fe33 3a2d    	vselgt.f32	s6, s6, s27
    ac1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac20: d94e         	bls	0xacc0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x4c8> @ imm = #0x9c
    ac22: ee8a 2a02    	vdiv.f32	s4, s20, s4
    ac26: eeb0 7a6e    	vmov.f32	s14, s29
    ac2a: ee22 4a02    	vmul.f32	s8, s4, s4
    ac2e: ee24 4a04    	vmul.f32	s8, s8, s8
    ac32: ee24 4a04    	vmul.f32	s8, s8, s8
    ac36: ee24 4a04    	vmul.f32	s8, s8, s8
    ac3a: ee34 5a2e    	vadd.f32	s10, s8, s29
    ac3e: eeb4 5a6e    	vcmp.f32	s10, s29
    ac42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac46: d009         	beq	0xac5c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x464> @ imm = #0x12
    ac48: eeb0 7a45    	vmov.f32	s14, s10
    ac4c: eeb1 7ac7    	vsqrt.f32	s14, s14
    ac50: eeb1 7ac7    	vsqrt.f32	s14, s14
    ac54: eeb1 7ac7    	vsqrt.f32	s14, s14
    ac58: eeb1 7ac7    	vsqrt.f32	s14, s14
    ac5c: ee8a 6a08    	vdiv.f32	s12, s20, s16
    ac60: eef0 0a6e    	vmov.f32	s1, s29
    ac64: ee18 0a10    	vmov	r0, s16
    ac68: f04f 517e    	mov.w	r1, #0x3f800000
    ac6c: ee8e 7a87    	vdiv.f32	s14, s29, s14
    ac70: ee26 6a06    	vmul.f32	s12, s12, s12
    ac74: f361 001e    	bfi	r0, r1, #0, #31
    ac78: ee22 2a04    	vmul.f32	s4, s4, s8
    ac7c: ee87 5a05    	vdiv.f32	s10, s14, s10
    ac80: ee26 6a06    	vmul.f32	s12, s12, s12
    ac84: eeb4 8a48    	vcmp.f32	s16, s16
    ac88: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac8c: ee26 6a06    	vmul.f32	s12, s12, s12
    ac90: ee22 4a05    	vmul.f32	s8, s4, s10
    ac94: ed9f 2aed    	vldr	s4, [pc, #948]          @ 0xb04c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x854>
    ac98: ee46 0a06    	vmla.f32	s1, s12, s12
    ac9c: ee8e 6aa0    	vdiv.f32	s12, s29, s1
    aca0: ee00 0a90    	vmov	s1, r0
    aca4: ee60 0a8a    	vmul.f32	s1, s1, s20
    aca8: ee20 7a87    	vmul.f32	s14, s1, s14
    acac: fe12 2a07    	vselvs.f32	s4, s4, s14
    acb0: e02b         	b	0xad0a <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x512> @ imm = #0x56
    acb2: bf00         	nop
    acb4: bf00         	nop
    acb6: bf00         	nop
    acb8: 34 aa a2 31  	.word	0x31a2aa34
    acbc: 6b 72 95 bf  	.word	0xbf95726b
    acc0: ee88 2a0a    	vdiv.f32	s4, s16, s20
    acc4: eeb0 4a6e    	vmov.f32	s8, s29
    acc8: ee22 2a02    	vmul.f32	s4, s4, s4
    accc: ee22 2a02    	vmul.f32	s4, s4, s4
    acd0: ee22 2a02    	vmul.f32	s4, s4, s4
    acd4: ee22 2a02    	vmul.f32	s4, s4, s4
    acd8: ee32 5a2e    	vadd.f32	s10, s4, s29
    acdc: eeb4 5a6e    	vcmp.f32	s10, s29
    ace0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ace4: d009         	beq	0xacfa <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x502> @ imm = #0x12
    ace6: eeb0 4a45    	vmov.f32	s8, s10
    acea: eeb1 4ac4    	vsqrt.f32	s8, s8
    acee: eeb1 4ac4    	vsqrt.f32	s8, s8
    acf2: eeb1 4ac4    	vsqrt.f32	s8, s8
    acf6: eeb1 4ac4    	vsqrt.f32	s8, s8
    acfa: ee8e 7a84    	vdiv.f32	s14, s29, s8
    acfe: ee82 6a05    	vdiv.f32	s12, s4, s10
    ad02: ee87 4a05    	vdiv.f32	s8, s14, s10
    ad06: ee28 2a07    	vmul.f32	s4, s16, s14
    ad0a: eeb0 5ac2    	vabs.f32	s10, s4
    ad0e: eeb3 7a08    	vmov.f32	s14, #2.400000e+01
    ad12: eeb5 8a40    	vcmp.f32	s16, #0
    ad16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad1a: ee37 5a45    	vsub.f32	s10, s14, s10
    ad1e: eebb 7a01    	vmov.f32	s14, #-1.700000e+01
    ad22: ee24 7a07    	vmul.f32	s14, s8, s14
    ad26: fec5 0a0c    	vmaxnm.f32	s1, s10, s24
    ad2a: ee23 4a04    	vmul.f32	s8, s6, s8
    ad2e: ee27 6a06    	vmul.f32	s12, s14, s12
    ad32: ed9f 7ae9    	vldr	s14, [pc, #932]         @ 0xb0d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8e0>
    ad36: ee87 7a20    	vdiv.f32	s14, s14, s1
    ad3a: eeb4 5a4c    	vcmp.f32	s10, s24
    ad3e: eeb0 5a6d    	vmov.f32	s10, s27
    ad42: ee86 6a08    	vdiv.f32	s12, s12, s16
    ad46: fe0d 6a86    	vseleq.f32	s12, s27, s12
    ad4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad4e: ee23 6a06    	vmul.f32	s12, s6, s12
    ad52: ee23 3a06    	vmul.f32	s6, s6, s12
    ad56: eeb0 6a6d    	vmov.f32	s12, s27
    ad5a: dd3d         	ble	0xadd8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x5e0> @ imm = #0x7a
    ad5c: eeb0 5a6d    	vmov.f32	s10, s27
    ad60: eeb0 6a6d    	vmov.f32	s12, s27
    ad64: eeb4 7a6c    	vcmp.f32	s14, s25
    ad68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad6c: d534         	bpl	0xadd8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x5e0> @ imm = #0x68
    ad6e: eeb0 5a6d    	vmov.f32	s10, s27
    ad72: eeb0 6a6d    	vmov.f32	s12, s27
    ad76: eeb5 2a40    	vcmp.f32	s4, #0
    ad7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad7e: d02b         	beq	0xadd8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x5e0> @ imm = #0x56
    ad80: ee12 0a10    	vmov	r0, s4
    ad84: f04f 517e    	mov.w	r1, #0x3f800000
    ad88: ed9f 6ad3    	vldr	s12, [pc, #844]         @ 0xb0d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8e0>
    ad8c: ee60 1aa0    	vmul.f32	s3, s1, s1
    ad90: eddf 2ad2    	vldr	s5, [pc, #840]          @ 0xb0dc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8e4>
    ad94: eeb4 2a42    	vcmp.f32	s4, s4
    ad98: f361 001e    	bfi	r0, r1, #0, #31
    ad9c: ee64 2a22    	vmul.f32	s5, s8, s5
    ada0: ee05 0a10    	vmov	s10, r0
    ada4: eddf 3acb    	vldr	s7, [pc, #812]          @ 0xb0d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8dc>
    ada8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    adac: ee64 2a22    	vmul.f32	s5, s8, s5
    adb0: ee25 6a06    	vmul.f32	s12, s10, s12
    adb4: ee60 0aa1    	vmul.f32	s1, s1, s3
    adb8: ee24 5a06    	vmul.f32	s10, s8, s12
    adbc: ee26 6a03    	vmul.f32	s12, s12, s6
    adc0: eec2 0aa0    	vdiv.f32	s1, s5, s1
    adc4: fe13 5a85    	vselvs.f32	s10, s7, s10
    adc8: fe13 6a86    	vselvs.f32	s12, s7, s12
    adcc: ee85 5a21    	vdiv.f32	s10, s10, s3
    add0: ee86 6a21    	vdiv.f32	s12, s12, s3
    add4: ee30 6a86    	vadd.f32	s12, s1, s12
    add8: eef0 0a6a    	vmov.f32	s1, s21
    addc: ee49 0aaf    	vmla.f32	s1, s19, s31
    ade0: fec7 1a6c    	vminnm.f32	s3, s14, s25
    ade4: ee8e 7aa1    	vdiv.f32	s14, s29, s3
    ade8: ee60 0a87    	vmul.f32	s1, s1, s14
    adec: eef0 2ae0    	vabs.f32	s5, s1
    adf0: eef4 2a6e    	vcmp.f32	s5, s29
    adf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    adf8: d932         	bls	0xae60 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x668> @ imm = #0x64
    adfa: eece 2aa2    	vdiv.f32	s5, s29, s5
    adfe: ee62 3aa2    	vmul.f32	s7, s5, s5
    ae02: ee63 3aa3    	vmul.f32	s7, s7, s7
    ae06: ee63 4aa3    	vmul.f32	s9, s7, s7
    ae0a: eef0 3a6e    	vmov.f32	s7, s29
    ae0e: ee44 3aa4    	vmla.f32	s7, s9, s9
    ae12: eef0 4a6e    	vmov.f32	s9, s29
    ae16: eef4 3a6e    	vcmp.f32	s7, s29
    ae1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae1e: d009         	beq	0xae34 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x63c> @ imm = #0x12
    ae20: eef0 4a63    	vmov.f32	s9, s7
    ae24: eef1 4ae4    	vsqrt.f32	s9, s9
    ae28: eef1 4ae4    	vsqrt.f32	s9, s9
    ae2c: eef1 4ae4    	vsqrt.f32	s9, s9
    ae30: eef1 4ae4    	vsqrt.f32	s9, s9
    ae34: eec2 2aa4    	vdiv.f32	s5, s5, s9
    ae38: eece 5aa3    	vdiv.f32	s11, s29, s7
    ae3c: e02f         	b	0xae9e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x6a6> @ imm = #0x5e
    ae3e: bf00         	nop
    ae40: 00 00 80 7f  	.word	0x7f800000
    ae44: 00 00 00 00  	.word	0x00000000
    ae48: 5a 93 ab bc  	.word	0xbcab935a
    ae4c: 08 e5 3c 1e  	.word	0x1e3ce508
    ae50: bd 37 06 36  	.word	0x360637bd
    ae54: ac c5 a7 37  	.word	0x37a7c5ac
    ae58: 17 b7 d1 38  	.word	0x38d1b717
    ae5c: 00 bf 00 bf  	.word	0xbf00bf00
    ae60: ee60 2aa0    	vmul.f32	s5, s1, s1
    ae64: ee62 2aa2    	vmul.f32	s5, s5, s5
    ae68: ee62 2aa2    	vmul.f32	s5, s5, s5
    ae6c: ee62 3aa2    	vmul.f32	s7, s5, s5
    ae70: eef0 2a6e    	vmov.f32	s5, s29
    ae74: ee73 4aae    	vadd.f32	s9, s7, s29
    ae78: eef4 4a6e    	vcmp.f32	s9, s29
    ae7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae80: d009         	beq	0xae96 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x69e> @ imm = #0x12
    ae82: eef0 2a64    	vmov.f32	s5, s9
    ae86: eef1 2ae2    	vsqrt.f32	s5, s5
    ae8a: eef1 2ae2    	vsqrt.f32	s5, s5
    ae8e: eef1 2ae2    	vsqrt.f32	s5, s5
    ae92: eef1 2ae2    	vsqrt.f32	s5, s5
    ae96: eece 2aa2    	vdiv.f32	s5, s29, s5
    ae9a: eec3 5aa4    	vdiv.f32	s11, s7, s9
    ae9e: eef0 3a6d    	vmov.f32	s7, s27
    aea2: eef0 4a6d    	vmov.f32	s9, s27
    aea6: eef5 0a40    	vcmp.f32	s1, #0
    aeaa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aeae: d01a         	beq	0xaee6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x6ee> @ imm = #0x34
    aeb0: eef0 3a6d    	vmov.f32	s7, s27
    aeb4: eef0 4a6d    	vmov.f32	s9, s27
    aeb8: eef5 5a40    	vcmp.f32	s11, #0
    aebc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aec0: d011         	beq	0xaee6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x6ee> @ imm = #0x22
    aec2: eef3 4a01    	vmov.f32	s9, #1.700000e+01
    aec6: eefa 3a0e    	vmov.f32	s7, #-1.500000e+01
    aeca: ee45 3aa4    	vmla.f32	s7, s11, s9
    aece: ee65 4aa2    	vmul.f32	s9, s11, s5
    aed2: ee62 5ae5    	vnmul.f32	s11, s5, s11
    aed6: ee64 3aa3    	vmul.f32	s7, s9, s7
    aeda: ee60 4aa0    	vmul.f32	s9, s1, s1
    aede: eec3 3aa4    	vdiv.f32	s7, s7, s9
    aee2: eec5 4aa0    	vdiv.f32	s9, s11, s1
    aee6: ee61 1aa0    	vmul.f32	s3, s3, s1
    aeea: eddf 6a7d    	vldr	s13, [pc, #500]         @ 0xb0e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8e8>
    aeee: ee70 5aa0    	vadd.f32	s11, s1, s1
    aef2: eeb0 ea4f    	vmov.f32	s28, s30
    aef6: ee65 6a26    	vmul.f32	s13, s10, s13
    aefa: ee41 6ac6    	vmls.f32	s13, s3, s12
    aefe: ee25 6a85    	vmul.f32	s12, s11, s10
    af02: ee34 4a04    	vadd.f32	s8, s8, s8
    af06: ee45 6a06    	vmla.f32	s13, s10, s12
    af0a: eeb0 6a6f    	vmov.f32	s12, s31
    af0e: ee00 6ac5    	vmls.f32	s12, s1, s10
    af12: ee24 4a24    	vmul.f32	s8, s8, s9
    af16: ee27 5a26    	vmul.f32	s10, s14, s13
    af1a: ee27 6a06    	vmul.f32	s12, s14, s12
    af1e: ee27 5a05    	vmul.f32	s10, s14, s10
    af22: ee26 7a23    	vmul.f32	s14, s12, s7
    af26: ee26 4a04    	vmul.f32	s8, s12, s8
    af2a: ee25 5a24    	vmul.f32	s10, s10, s9
    af2e: ee06 5a07    	vmla.f32	s10, s12, s14
    af32: ee03 4a22    	vmla.f32	s8, s6, s5
    af36: eeb0 3a6e    	vmov.f32	s6, s29
    af3a: ee02 4a05    	vmla.f32	s8, s4, s10
    af3e: eebe 2a00    	vmov.f32	s4, #-5.000000e-01
    af42: ee21 2a02    	vmul.f32	s4, s2, s4
    af46: ee22 2a04    	vmul.f32	s4, s4, s8
    af4a: ee82 0a00    	vdiv.f32	s0, s4, s0
    af4e: ee30 0a2e    	vadd.f32	s0, s0, s29
    af52: ee10 0a10    	vmov	r0, s0
    af56: 2800         	cmp	r0, #0x0
    af58: f020 4100    	bic	r1, r0, #0x80000000
    af5c: f5a1 0100    	sub.w	r1, r1, #0x800000
    af60: f1a0 0001    	sub.w	r0, r0, #0x1
    af64: fe20 2a2e    	vselge.f32	s4, s0, s29
    af68: f1b1 4ffe    	cmp.w	r1, #0x7f000000
    af6c: f64f 71ff    	movw	r1, #0xffff
    af70: bf38         	it	lo
    af72: eeb0 3a42    	vmovlo.f32	s6, s4
    af76: f2c0 017f    	movt	r1, #0x7f
    af7a: 4288         	cmp	r0, r1
    af7c: eb09 0005    	add.w	r0, r9, r5
    af80: bf38         	it	lo
    af82: eeb0 3a40    	vmovlo.f32	s6, s0
    af86: ed9f 2b4a    	vldr	d2, [pc, #296]          @ 0xb0b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8b8>
    af8a: ee81 0a03    	vdiv.f32	s0, s2, s6
    af8e: 60b0         	str	r0, [r6, #0x8]
    af90: eeb0 1b4b    	vmov.f64	d1, d11
    af94: a804         	add	r0, sp, #0x10
    af96: ee30 0a29    	vadd.f32	s0, s0, s19
    af9a: eeb4 9a40    	vcmp.f32	s18, s0
    af9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    afa2: fe39 0a00    	vselgt.f32	s0, s18, s0
    afa6: eeb4 0a4a    	vcmp.f32	s0, s20
    afaa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    afae: fe7a 9a00    	vselgt.f32	s19, s20, s0
    afb2: edc4 9a07    	vstr	s19, [r4, #28]
    afb6: eeb7 0ae9    	vcvt.f64.f32	d0, s19
    afba: ee00 1b02    	vmla.f64	d1, d0, d2
    afbe: eef0 0a6a    	vmov.f32	s1, s21
    afc2: ee49 0aaf    	vmla.f32	s1, s19, s31
    afc6: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    afca: ed9f 1a3b    	vldr	s2, [pc, #236]          @ 0xb0b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8c0>
    afce: ee00 ea01    	vmla.f32	s28, s0, s2
    afd2: eef4 8a4e    	vcmp.f32	s17, s28
    afd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    afda: fe38 0a8e    	vselgt.f32	s0, s17, s28
    afde: eeb4 0a4d    	vcmp.f32	s0, s26
    afe2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    afe6: fe3d 8a00    	vselgt.f32	s16, s26, s0
    afea: eeb0 0a48    	vmov.f32	s0, s16
    afee: f7fc f80f    	bl	0x7010 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>>> @ imm = #-0x3fe2
    aff2: ed9d 0a04    	vldr	s0, [sp, #16]
    aff6: a031         	adr	r0, #196 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x833>
    aff8: ee39 1ac0    	vsub.f32	s2, s19, s0
    affc: 9903         	ldr	r1, [sp, #0xc]
    affe: eeb4 ea4d    	vcmp.f32	s28, s26
    b002: ed9f 2a30    	vldr	s4, [pc, #192]          @ 0xb0c4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8cc>
    b006: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b00a: bf48         	it	mi
    b00c: 4608         	movmi	r0, r1
    b00e: eeb4 ea68    	vcmp.f32	s28, s17
    b012: ee11 1a10    	vmov	r1, s2
    b016: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b01a: ed90 0a00    	vldr	s0, [r0]
    b01e: ed9d 3a05    	vldr	s6, [sp, #20]
    b022: fe30 0a02    	vselgt.f32	s0, s0, s4
    b026: f021 4000    	bic	r0, r1, #0x80000000
    b02a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b02e: ed9d 4a06    	vldr	s8, [sp, #24]
    b032: ed9f 2a25    	vldr	s4, [pc, #148]          @ 0xb0c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8d0>
    b036: f6bf ad6b    	bge.w	0xab10 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x318> @ imm = #-0x52a
    b03a: eeb3 2a08    	vmov.f32	s4, #2.400000e+01
    b03e: ee81 2a02    	vdiv.f32	s4, s2, s4
    b042: eeb0 2ac2    	vabs.f32	s4, s4
    b046: fe82 2a2d    	vmaxnm.f32	s4, s4, s27
    b04a: e561         	b	0xab10 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x318> @ imm = #-0x53e
    b04c: 00 00 c0 7f  	.word	0x7fc00000
    b050: 9902         	ldr	r1, [sp, #0x8]
    b052: f04f 40ff    	mov.w	r0, #0x7f800000
    b056: 6008         	str	r0, [r1]
    b058: 2000         	movs	r0, #0x0
    b05a: f881 8004    	strb.w	r8, [r1, #0x4]
    b05e: e013         	b	0xb088 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x890> @ imm = #0x26
    b060: f04f 0803    	mov.w	r8, #0x3
    b064: ee12 0a10    	vmov	r0, s4
    b068: 9901         	ldr	r1, [sp, #0x4]
    b06a: ed81 8a04    	vstr	s16, [r1, #16]
    b06e: 9902         	ldr	r1, [sp, #0x8]
    b070: f020 4000    	bic	r0, r0, #0x80000000
    b074: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b078: f04f 0000    	mov.w	r0, #0x0
    b07c: ed81 2a00    	vstr	s4, [r1]
    b080: f881 8004    	strb.w	r8, [r1, #0x4]
    b084: bfb8         	it	lt
    b086: 2001         	movlt	r0, #0x1
    b088: 7148         	strb	r0, [r1, #0x5]
    b08a: b008         	add	sp, #0x20
    b08c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    b090: b001         	add	sp, #0x4
    b092: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    b096: bdf0         	pop	{r4, r5, r6, r7, pc}
    b098: f24d 70b0    	movw	r0, #0xd7b0
    b09c: f24e 0200    	movw	r2, #0xe000
    b0a0: f2c0 0000    	movt	r0, #0x0
    b0a4: f2c0 0200    	movt	r2, #0x0
    b0a8: a904         	add	r1, sp, #0x10
    b0aa: f000 fd85    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #0xb0a
    b0ae: bf00         	nop
    b0b0: 34 aa a2 31  	.word	0x31a2aa34
    b0b4: 6b 72 95 bf  	.word	0xbf95726b
    b0b8: df 5b 59 44  	.word	0x44595bdf
    b0bc: 00 00 00 80  	.word	0x80000000
    b0c0: df 5b 59 c4  	.word	0xc4595bdf
    b0c4: 00 00 00 80  	.word	0x80000000
    b0c8: 00 00 80 7f  	.word	0x7f800000
    b0cc: 00 00 00 00  	.word	0x00000000
    b0d0: 7a ad 91 c1  	.word	0xc191ad7a
    b0d4: 00 00 c0 7f  	.word	0x7fc00000
    b0d8: 00 00 70 42  	.word	0x42700000
    b0dc: 00 00 f0 42  	.word	0x42f00000
    b0e0: 75 e7 a4 3e  	.word	0x3ea4e775
    b0e4: d4 d4 d4 d4  	.word	0xd4d4d4d4

0000b0e8 <__rustc::rust_begin_unwind>:
    b0e8: b580         	push	{r7, lr}
    b0ea: 466f         	mov	r7, sp
    b0ec: f64f 7000    	movw	r0, #0xff00
    b0f0: f644 6149    	movw	r1, #0x4e49
    b0f4: f2c2 0000    	movt	r0, #0x2000
    b0f8: f2c5 0141    	movt	r1, #0x5041
    b0fc: 6001         	str	r1, [r0]
    b0fe: bf00         	nop
    b100: bf10         	yield
    b102: bf10         	yield
    b104: bf10         	yield
    b106: bf10         	yield
    b108: e7fa         	b	0xb100 <__rustc::rust_begin_unwind+0x18> @ imm = #-0xc
    b10a: d4d4         	bmi	0xb0b6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8be> @ imm = #-0x58
    b10c: d4d4         	bmi	0xb0b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8c0> @ imm = #-0x58
    b10e: d4d4         	bmi	0xb0ba <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8c2> @ imm = #-0x58

0000b110 <rate48_probe::control>:
    b110: b5b0         	push	{r4, r5, r7, lr}
    b112: af02         	add	r7, sp, #0x8
    b114: ed2d 8b02    	vpush	{d8}
    b118: b086         	sub	sp, #0x18
    b11a: eeb0 8a40    	vmov.f32	s16, s0
    b11e: ee30 0a20    	vadd.f32	s0, s0, s1
    b122: eeb6 1a00    	vmov.f32	s2, #5.000000e-01
    b126: 4604         	mov	r4, r0
    b128: 4668         	mov	r0, sp
    b12a: 460d         	mov	r5, r1
    b12c: ee20 0a01    	vmul.f32	s0, s0, s2
    b130: f7f5 feaa    	bl	0xe88 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>> @ imm = #-0xa2ac
    b134: eeb0 0a48    	vmov.f32	s0, s16
    b138: a803         	add	r0, sp, #0xc
    b13a: 4629         	mov	r1, r5
    b13c: f7f5 fea4    	bl	0xe88 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 5>> @ imm = #-0xa2b8
    b140: ed9d 0a01    	vldr	s0, [sp, #4]
    b144: ed9d 1a04    	vldr	s2, [sp, #16]
    b148: eeb4 0a40    	vcmp.f32	s0, s0
    b14c: 9803         	ldr	r0, [sp, #0xc]
    b14e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b152: eeb4 1a41    	vcmp.f32	s2, s2
    b156: f89d 1008    	ldrb.w	r1, [sp, #0x8]
    b15a: fe11 0a00    	vselvs.f32	s0, s2, s0
    b15e: f89d 2014    	ldrb.w	r2, [sp, #0x14]
    b162: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b166: f89d 3009    	ldrb.w	r3, [sp, #0x9]
    b16a: 6020         	str	r0, [r4]
    b16c: fe10 1a01    	vselvs.f32	s2, s0, s2
    b170: f89d 0015    	ldrb.w	r0, [sp, #0x15]
    b174: 4411         	add	r1, r2
    b176: 7221         	strb	r1, [r4, #0x8]
    b178: 4018         	ands	r0, r3
    b17a: 7260         	strb	r0, [r4, #0x9]
    b17c: eeb4 0a41    	vcmp.f32	s0, s2
    b180: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b184: fe30 0a01    	vselgt.f32	s0, s0, s2
    b188: ed84 0a01    	vstr	s0, [r4, #4]
    b18c: b006         	add	sp, #0x18
    b18e: ecbd 8b02    	vpop	{d8}
    b192: bdb0         	pop	{r4, r5, r7, pc}
    b194: d4d4         	bmi	0xb140 <rate48_probe::control+0x30> @ imm = #-0x58
    b196: d4d4         	bmi	0xb142 <rate48_probe::control+0x32> @ imm = #-0x58

0000b198 <rate48_probe::candidate>:
    b198: b5f0         	push	{r4, r5, r6, r7, lr}
    b19a: af03         	add	r7, sp, #0xc
    b19c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    b1a0: b081         	sub	sp, #0x4
    b1a2: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    b1a6: b0f4         	sub	sp, #0x1d0
    b1a8: ed8d 0a15    	vstr	s0, [sp, #84]
    b1ac: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    b1b0: aa15         	add	r2, sp, #0x54
    b1b2: ed91 1a08    	vldr	s2, [r1, #32]
    b1b6: ed91 3a09    	vldr	s6, [r1, #36]
    b1ba: ed91 2a24    	vldr	s4, [r1, #144]
    b1be: ee31 1a01    	vadd.f32	s2, s2, s2
    b1c2: ee02 1a40    	vmls.f32	s2, s4, s0
    b1c6: ed91 4a0a    	vldr	s8, [r1, #40]
    b1ca: ee33 2a03    	vadd.f32	s4, s6, s6
    b1ce: ed91 3a25    	vldr	s6, [r1, #148]
    b1d2: ee03 2a40    	vmls.f32	s4, s6, s0
    b1d6: ed91 5a0b    	vldr	s10, [r1, #44]
    b1da: ee34 3a04    	vadd.f32	s6, s8, s8
    b1de: ed91 4a26    	vldr	s8, [r1, #152]
    b1e2: ee04 3a40    	vmls.f32	s6, s8, s0
    b1e6: ed8d 1a16    	vstr	s2, [sp, #88]
    b1ea: ee35 4a05    	vadd.f32	s8, s10, s10
    b1ee: ed91 5a27    	vldr	s10, [r1, #156]
    b1f2: ee05 4a40    	vmls.f32	s8, s10, s0
    b1f6: ed8d 2a17    	vstr	s4, [sp, #92]
    b1fa: ed91 1a0c    	vldr	s2, [r1, #48]
    b1fe: ed91 5a0f    	vldr	s10, [r1, #60]
    b202: ed91 2a28    	vldr	s4, [r1, #160]
    b206: ed8d 3a18    	vstr	s6, [sp, #96]
    b20a: ee31 1a01    	vadd.f32	s2, s2, s2
    b20e: ed91 3a29    	vldr	s6, [r1, #164]
    b212: ee02 1a40    	vmls.f32	s2, s4, s0
    b216: ed91 2a0d    	vldr	s4, [r1, #52]
    b21a: ed8d 4a19    	vstr	s8, [sp, #100]
    b21e: ee32 2a02    	vadd.f32	s4, s4, s4
    b222: ee03 2a40    	vmls.f32	s4, s6, s0
    b226: ed91 3a0e    	vldr	s6, [r1, #56]
    b22a: ed91 4a2a    	vldr	s8, [r1, #168]
    b22e: ee33 3a03    	vadd.f32	s6, s6, s6
    b232: ee04 3a40    	vmls.f32	s6, s8, s0
    b236: ed8d 1a1a    	vstr	s2, [sp, #104]
    b23a: ee35 4a05    	vadd.f32	s8, s10, s10
    b23e: ed91 5a2b    	vldr	s10, [r1, #172]
    b242: ee05 4a40    	vmls.f32	s8, s10, s0
    b246: ed91 1a10    	vldr	s2, [r1, #64]
    b24a: ed8d 2a1b    	vstr	s4, [sp, #108]
    b24e: ed91 2a11    	vldr	s4, [r1, #68]
    b252: ed8d 3a1c    	vstr	s6, [sp, #112]
    b256: ed91 3a2c    	vldr	s6, [r1, #176]
    b25a: ee31 1a01    	vadd.f32	s2, s2, s2
    b25e: ed91 5a2f    	vldr	s10, [r1, #188]
    b262: ee03 1a40    	vmls.f32	s2, s6, s0
    b266: ed91 3a2d    	vldr	s6, [r1, #180]
    b26a: ed8d 4a1d    	vstr	s8, [sp, #116]
    b26e: ee32 2a02    	vadd.f32	s4, s4, s4
    b272: ee03 2a40    	vmls.f32	s4, s6, s0
    b276: ed91 3a12    	vldr	s6, [r1, #72]
    b27a: ed91 4a2e    	vldr	s8, [r1, #184]
    b27e: ee33 3a03    	vadd.f32	s6, s6, s6
    b282: ee04 3a40    	vmls.f32	s6, s8, s0
    b286: ed91 4a13    	vldr	s8, [r1, #76]
    b28a: ee34 4a04    	vadd.f32	s8, s8, s8
    b28e: ed8d 1a1e    	vstr	s2, [sp, #120]
    b292: ee05 4a40    	vmls.f32	s8, s10, s0
    b296: ed8d 2a1f    	vstr	s4, [sp, #124]
    b29a: ed91 1a15    	vldr	s2, [r1, #84]
    b29e: ed91 5a14    	vldr	s10, [r1, #80]
    b2a2: ed91 2a31    	vldr	s4, [r1, #196]
    b2a6: ed8d 3a20    	vstr	s6, [sp, #128]
    b2aa: ee31 1a01    	vadd.f32	s2, s2, s2
    b2ae: ed91 3a32    	vldr	s6, [r1, #200]
    b2b2: ee02 1a40    	vmls.f32	s2, s4, s0
    b2b6: ed91 2a16    	vldr	s4, [r1, #88]
    b2ba: ed8d 4a21    	vstr	s8, [sp, #132]
    b2be: ee32 2a02    	vadd.f32	s4, s4, s4
    b2c2: ee03 2a40    	vmls.f32	s4, s6, s0
    b2c6: ed91 3a17    	vldr	s6, [r1, #92]
    b2ca: ed91 4a33    	vldr	s8, [r1, #204]
    b2ce: ee33 3a03    	vadd.f32	s6, s6, s6
    b2d2: ee04 3a40    	vmls.f32	s6, s8, s0
    b2d6: ed91 6a30    	vldr	s12, [r1, #192]
    b2da: ee35 5a05    	vadd.f32	s10, s10, s10
    b2de: ed8d 1a23    	vstr	s2, [sp, #140]
    b2e2: ee06 5a40    	vmls.f32	s10, s12, s0
    b2e6: ed8d 2a24    	vstr	s4, [sp, #144]
    b2ea: ed91 1a1a    	vldr	s2, [r1, #104]
    b2ee: ed91 6a35    	vldr	s12, [r1, #212]
    b2f2: ed91 2a36    	vldr	s4, [r1, #216]
    b2f6: ed8d 3a25    	vstr	s6, [sp, #148]
    b2fa: ee31 1a01    	vadd.f32	s2, s2, s2
    b2fe: ed91 3a37    	vldr	s6, [r1, #220]
    b302: ee02 1a40    	vmls.f32	s2, s4, s0
    b306: ed91 2a1b    	vldr	s4, [r1, #108]
    b30a: ee32 2a02    	vadd.f32	s4, s4, s4
    b30e: ed8d 5a22    	vstr	s10, [sp, #136]
    b312: ee03 2a40    	vmls.f32	s4, s6, s0
    b316: ed91 4a18    	vldr	s8, [r1, #96]
    b31a: ed91 5a34    	vldr	s10, [r1, #208]
    b31e: ee34 4a04    	vadd.f32	s8, s8, s8
    b322: ee05 4a40    	vmls.f32	s8, s10, s0
    b326: ed91 5a19    	vldr	s10, [r1, #100]
    b32a: ee35 5a05    	vadd.f32	s10, s10, s10
    b32e: ed8d 1a28    	vstr	s2, [sp, #160]
    b332: ee06 5a40    	vmls.f32	s10, s12, s0
    b336: ed8d 2a29    	vstr	s4, [sp, #164]
    b33a: ed91 1a1f    	vldr	s2, [r1, #124]
    b33e: ed91 3a1c    	vldr	s6, [r1, #112]
    b342: ed91 2a3b    	vldr	s4, [r1, #236]
    b346: ee31 da01    	vadd.f32	s26, s2, s2
    b34a: ee02 da40    	vmls.f32	s26, s4, s0
    b34e: ed91 1a20    	vldr	s2, [r1, #128]
    b352: ed91 2a3c    	vldr	s4, [r1, #240]
    b356: ed8d 4a26    	vstr	s8, [sp, #152]
    b35a: ed91 4a38    	vldr	s8, [r1, #224]
    b35e: ee31 ca01    	vadd.f32	s24, s2, s2
    b362: ee02 ca40    	vmls.f32	s24, s4, s0
    b366: ed91 1a21    	vldr	s2, [r1, #132]
    b36a: ed91 2a3d    	vldr	s4, [r1, #244]
    b36e: ed8d 5a27    	vstr	s10, [sp, #156]
    b372: ee33 3a03    	vadd.f32	s6, s6, s6
    b376: ed91 5a39    	vldr	s10, [r1, #228]
    b37a: ee04 3a40    	vmls.f32	s6, s8, s0
    b37e: ed91 4a1d    	vldr	s8, [r1, #116]
    b382: ee31 aa01    	vadd.f32	s20, s2, s2
    b386: ed91 1a22    	vldr	s2, [r1, #136]
    b38a: ee02 aa40    	vmls.f32	s20, s4, s0
    b38e: ed91 2a3e    	vldr	s4, [r1, #248]
    b392: ee34 4a04    	vadd.f32	s8, s8, s8
    b396: ed91 6a3a    	vldr	s12, [r1, #232]
    b39a: ee05 4a40    	vmls.f32	s8, s10, s0
    b39e: ed91 5a1e    	vldr	s10, [r1, #120]
    b3a2: ee31 ba01    	vadd.f32	s22, s2, s2
    b3a6: ed91 1a23    	vldr	s2, [r1, #140]
    b3aa: ee02 ba40    	vmls.f32	s22, s4, s0
    b3ae: ed91 2a3f    	vldr	s4, [r1, #252]
    b3b2: ee35 5a05    	vadd.f32	s10, s10, s10
    b3b6: ed9d 8a15    	vldr	s16, [sp, #84]
    b3ba: ee06 5a40    	vmls.f32	s10, s12, s0
    b3be: 460c         	mov	r4, r1
    b3c0: ee31 9a01    	vadd.f32	s18, s2, s2
    b3c4: 4682         	mov	r10, r0
    b3c6: ee02 9a40    	vmls.f32	s18, s4, s0
    b3ca: eeb0 0a48    	vmov.f32	s0, s16
    b3ce: a832         	add	r0, sp, #0xc8
    b3d0: a916         	add	r1, sp, #0x58
    b3d2: ed8d 3a2a    	vstr	s6, [sp, #168]
    b3d6: ed8d 4a2b    	vstr	s8, [sp, #172]
    b3da: ed8d 5a2c    	vstr	s10, [sp, #176]
    b3de: ed8d da2d    	vstr	s26, [sp, #180]
    b3e2: ed8d ca2e    	vstr	s24, [sp, #184]
    b3e6: ed8d aa2f    	vstr	s20, [sp, #188]
    b3ea: ed8d ba30    	vstr	s22, [sp, #192]
    b3ee: ed8d 9a31    	vstr	s18, [sp, #196]
    b3f2: f7f8 f9a5    	bl	0x3740 <orange_dsp::generated_packed48::origin::<5>> @ imm = #-0x7cb6
    b3f6: 4621         	mov	r1, r4
    b3f8: a850         	add	r0, sp, #0x140
    b3fa: ed9f 1b0f    	vldr	d1, [pc, #60]           @ 0xb438 <rate48_probe::candidate+0x2a0>
    b3fe: c96c         	ldm	r1!, {r2, r3, r5, r6}
    b400: c06c         	stm	r0!, {r2, r3, r5, r6}
    b402: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
    b406: c06c         	stm	r0!, {r2, r3, r5, r6}
    b408: ed9d 0b32    	vldr	d0, [sp, #200]
    b40c: ed9f 3a0c    	vldr	s6, [pc, #48]           @ 0xb440 <rate48_probe::candidate+0x2a8>
    b410: 2000         	movs	r0, #0x0
    b412: ee80 1b01    	vdiv.f64	d1, d0, d1
    b416: 9058         	str	r0, [sp, #0x160]
    b418: e9cd 005b    	strd	r0, r0, [sp, #364]
    b41c: e9cd 0059    	strd	r0, r0, [sp, #356]
    b420: eeb7 2bc1    	vcvt.f32.f64	s4, d1
    b424: ed8d 2a50    	vstr	s4, [sp, #320]
    b428: eeb0 1ac2    	vabs.f32	s2, s4
    b42c: eeb4 1a43    	vcmp.f32	s2, s6
    b430: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b434: d84c         	bhi	0xb4d0 <rate48_probe::candidate+0x338> @ imm = #0x98
    b436: e011         	b	0xb45c <rate48_probe::candidate+0x2c4> @ imm = #0x22
    b438: 00 1b 32 ef  	.word	0xef321b00
    b43c: 7b e8 fe 3e  	.word	0x3efee87b
    b440: 93 18 36 41  	.word	0x41361893
    b444: df 43 f7 b7  	.word	0xb7f743df
    b448: 0a d7 23 3c  	.word	0x3c23d70a
    b44c: 17 b7 d1 38  	.word	0x38d1b717
    b450: bd 37 06 36  	.word	0x360637bd
    b454: ac c5 a7 37  	.word	0x37a7c5ac
    b458: 00 00 00 00  	.word	0x00000000
    b45c: ed1f 4a07    	vldr	s8, [pc, #-28]          @ 0xb444 <rate48_probe::candidate+0x2ac>
    b460: eeb7 3bc0    	vcvt.f32.f64	s6, d0
    b464: ee02 3a04    	vmla.f32	s6, s4, s8
    b468: ee13 0a10    	vmov	r0, s6
    b46c: f020 4000    	bic	r0, r0, #0x80000000
    b470: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b474: da2c         	bge	0xb4d0 <rate48_probe::candidate+0x338> @ imm = #0x58
    b476: eeb0 2ac3    	vabs.f32	s4, s6
    b47a: ed1f 5a0d    	vldr	s10, [pc, #-52]         @ 0xb448 <rate48_probe::candidate+0x2b0>
    b47e: ee82 2a05    	vdiv.f32	s4, s4, s10
    b482: ed1f 5a0e    	vldr	s10, [pc, #-56]         @ 0xb44c <rate48_probe::candidate+0x2b4>
    b486: eeb4 2a45    	vcmp.f32	s4, s10
    b48a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b48e: d81f         	bhi	0xb4d0 <rate48_probe::candidate+0x338> @ imm = #0x3e
    b490: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    b494: eeb4 1a41    	vcmp.f32	s2, s2
    b498: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b49c: ee83 3a04    	vdiv.f32	s6, s6, s8
    b4a0: ed1f 4a15    	vldr	s8, [pc, #-84]          @ 0xb450 <rate48_probe::candidate+0x2b8>
    b4a4: fe15 1a01    	vselvs.f32	s2, s10, s2
    b4a8: eeb0 3ac3    	vabs.f32	s6, s6
    b4ac: eeb4 1a45    	vcmp.f32	s2, s10
    b4b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b4b4: fe31 1a05    	vselgt.f32	s2, s2, s10
    b4b8: ee21 1a04    	vmul.f32	s2, s2, s8
    b4bc: ed1f 4a1b    	vldr	s8, [pc, #-108]         @ 0xb454 <rate48_probe::candidate+0x2bc>
    b4c0: fe81 1a44    	vminnm.f32	s2, s2, s8
    b4c4: eeb4 3a41    	vcmp.f32	s6, s2
    b4c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b4cc: f240 82a4    	bls.w	0xba18 <rate48_probe::candidate+0x880> @ imm = #0x548
    b4d0: f504 7290    	add.w	r2, r4, #0x120
    b4d4: a85d         	add	r0, sp, #0x174
    b4d6: a950         	add	r1, sp, #0x140
    b4d8: f7fb feca    	bl	0x7270 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>> @ imm = #-0x426c
    b4dc: ed9d 0a5d    	vldr	s0, [sp, #372]
    b4e0: ed1f 1a23    	vldr	s2, [pc, #-140]         @ 0xb458 <rate48_probe::candidate+0x2c0>
    b4e4: eeb4 0a40    	vcmp.f32	s0, s0
    b4e8: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    b4ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b4f0: f89d 6178    	ldrb.w	r6, [sp, #0x178]
    b4f4: fe11 0a00    	vselvs.f32	s0, s2, s0
    b4f8: eeb5 0a40    	vcmp.f32	s0, #0
    b4fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b500: fe30 ea01    	vselgt.f32	s28, s0, s2
    b504: 2801         	cmp	r0, #0x1
    b506: f040 8273    	bne.w	0xb9f0 <rate48_probe::candidate+0x858> @ imm = #0x4e6
    b50a: eeb0 2a4d    	vmov.f32	s4, s26
    b50e: f504 7396    	add.w	r3, r4, #0x12c
    b512: ed9d 0b34    	vldr	d0, [sp, #208]
    b516: a85d         	add	r0, sp, #0x174
    b518: a950         	add	r1, sp, #0x140
    b51a: ed9d 1b42    	vldr	d1, [sp, #264]
    b51e: aa58         	add	r2, sp, #0x160
    b520: f7fc f8da    	bl	0x76d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>> @ imm = #-0x3e4c
    b524: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    b528: f89d 1178    	ldrb.w	r1, [sp, #0x178]
    b52c: 2800         	cmp	r0, #0x0
    b52e: 440e         	add	r6, r1
    b530: f000 825e    	beq.w	0xb9f0 <rate48_probe::candidate+0x858> @ imm = #0x4bc
    b534: eeb0 0a4c    	vmov.f32	s0, s24
    b538: a85d         	add	r0, sp, #0x174
    b53a: a950         	add	r1, sp, #0x140
    b53c: aa32         	add	r2, sp, #0xc8
    b53e: ab58         	add	r3, sp, #0x160
    b540: ed9d da5d    	vldr	s26, [sp, #372]
    b544: f504 759c    	add.w	r5, r4, #0x138
    b548: 9500         	str	r5, [sp]
    b54a: f7fc fc91    	bl	0x7e70 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>> @ imm = #-0x36de
    b54e: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    b552: f89d 1178    	ldrb.w	r1, [sp, #0x178]
    b556: 2800         	cmp	r0, #0x0
    b558: 440e         	add	r6, r1
    b55a: f000 8249    	beq.w	0xb9f0 <rate48_probe::candidate+0x858> @ imm = #0x492
    b55e: eeb0 0a4a    	vmov.f32	s0, s20
    b562: eef0 0a4b    	vmov.f32	s1, s22
    b566: a85d         	add	r0, sp, #0x174
    b568: a950         	add	r1, sp, #0x140
    b56a: aa32         	add	r2, sp, #0xc8
    b56c: ab58         	add	r3, sp, #0x160
    b56e: ed9d ca5d    	vldr	s24, [sp, #372]
    b572: f504 75a2    	add.w	r5, r4, #0x144
    b576: 9500         	str	r5, [sp]
    b578: f7fd fd1a    	bl	0x8fb0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>> @ imm = #-0x25cc
    b57c: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    b580: f89d 1178    	ldrb.w	r1, [sp, #0x178]
    b584: 2801         	cmp	r0, #0x1
    b586: 440e         	add	r6, r1
    b588: f040 8232    	bne.w	0xb9f0 <rate48_probe::candidate+0x858> @ imm = #0x464
    b58c: eeb4 ea4e    	vcmp.f32	s28, s28
    b590: f504 73a8    	add.w	r3, r4, #0x150
    b594: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b598: eeb4 da4d    	vcmp.f32	s26, s26
    b59c: a85d         	add	r0, sp, #0x174
    b59e: fe1d 0a0e    	vselvs.f32	s0, s26, s28
    b5a2: a950         	add	r1, sp, #0x140
    b5a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b5a8: aa58         	add	r2, sp, #0x160
    b5aa: fe10 1a0d    	vselvs.f32	s2, s0, s26
    b5ae: eeb4 0a41    	vcmp.f32	s0, s2
    b5b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b5b6: fe30 0a01    	vselgt.f32	s0, s0, s2
    b5ba: eeb4 0a40    	vcmp.f32	s0, s0
    b5be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b5c2: eeb4 ca4c    	vcmp.f32	s24, s24
    b5c6: fe1c 0a00    	vselvs.f32	s0, s24, s0
    b5ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b5ce: fe10 1a0c    	vselvs.f32	s2, s0, s24
    b5d2: eeb4 0a41    	vcmp.f32	s0, s2
    b5d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b5da: fe30 0a01    	vselgt.f32	s0, s0, s2
    b5de: ed9d 1a5d    	vldr	s2, [sp, #372]
    b5e2: eeb4 0a40    	vcmp.f32	s0, s0
    b5e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b5ea: eeb4 1a41    	vcmp.f32	s2, s2
    b5ee: fe11 2a00    	vselvs.f32	s4, s2, s0
    b5f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b5f6: ed9d 0b40    	vldr	d0, [sp, #256]
    b5fa: fe12 1a01    	vselvs.f32	s2, s4, s2
    b5fe: eeb4 2a41    	vcmp.f32	s4, s2
    b602: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b606: fe32 aa01    	vselgt.f32	s20, s4, s2
    b60a: eeb0 2a49    	vmov.f32	s4, s18
    b60e: ed9d 1b4a    	vldr	d1, [sp, #296]
    b612: f7ff f8f1    	bl	0xa7f8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<rate48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>> @ imm = #-0xe1e
    b616: eeb4 aa4a    	vcmp.f32	s20, s20
    b61a: ed9d 0a5d    	vldr	s0, [sp, #372]
    b61e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b622: eeb4 0a40    	vcmp.f32	s0, s0
    b626: f89d 0178    	ldrb.w	r0, [sp, #0x178]
    b62a: fe10 1a0a    	vselvs.f32	s2, s0, s20
    b62e: f89d 1179    	ldrb.w	r1, [sp, #0x179]
    b632: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b636: eb00 0206    	add.w	r2, r0, r6
    b63a: fe11 0a00    	vselvs.f32	s0, s2, s0
    b63e: eeb4 1a40    	vcmp.f32	s2, s0
    b642: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b646: fe31 0a00    	vselgt.f32	s0, s2, s0
    b64a: 2900         	cmp	r1, #0x0
    b64c: f000 81fc    	beq.w	0xba48 <rate48_probe::candidate+0x8b0> @ imm = #0x3f8
    b650: ed8d 0a01    	vstr	s0, [sp, #4]
    b654: eeb0 0a48    	vmov.f32	s0, s16
    b658: 9214         	str	r2, [sp, #0x50]
    b65a: a85d         	add	r0, sp, #0x174
    b65c: a916         	add	r1, sp, #0x58
    b65e: aa50         	add	r2, sp, #0x140
    b660: f7f8 fb12    	bl	0x3c88 <orange_dsp::generated_packed48::update::<5>> @ imm = #-0x79dc
    b664: eddd 1a67    	vldr	s3, [sp, #412]
    b668: eddd 2a68    	vldr	s5, [sp, #416]
    b66c: ee11 5a90    	vmov	r5, s3
    b670: eddd da5e    	vldr	s27, [sp, #376]
    b674: ee1d 0a90    	vmov	r0, s27
    b678: eddd 3a69    	vldr	s7, [sp, #420]
    b67c: 9509         	str	r5, [sp, #0x24]
    b67e: ee12 5a90    	vmov	r5, s5
    b682: eddd 4a6a    	vldr	s9, [sp, #424]
    b686: eddd 5a6b    	vldr	s11, [sp, #428]
    b68a: 950a         	str	r5, [sp, #0x28]
    b68c: ee13 5a90    	vmov	r5, s7
    b690: eddd ea5f    	vldr	s29, [sp, #380]
    b694: ee15 9a90    	vmov	r9, s11
    b698: 950b         	str	r5, [sp, #0x2c]
    b69a: ee14 5a90    	vmov	r5, s9
    b69e: f020 4000    	bic	r0, r0, #0x80000000
    b6a2: ee1e 1a90    	vmov	r1, s29
    b6a6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b6aa: f04f 0000    	mov.w	r0, #0x0
    b6ae: eddd fa60    	vldr	s31, [sp, #384]
    b6b2: ed9d 3a61    	vldr	s6, [sp, #388]
    b6b6: ed9d 4a62    	vldr	s8, [sp, #392]
    b6ba: ed9d 5a63    	vldr	s10, [sp, #396]
    b6be: ed9d 6a64    	vldr	s12, [sp, #400]
    b6c2: ed9d 7a65    	vldr	s14, [sp, #404]
    b6c6: eddd 0a66    	vldr	s1, [sp, #408]
    b6ca: 950c         	str	r5, [sp, #0x30]
    b6cc: f8cd 9034    	str.w	r9, [sp, #0x34]
    b6d0: ee1f 2a90    	vmov	r2, s31
    b6d4: bfa8         	it	ge
    b6d6: 2001         	movge	r0, #0x1
    b6d8: ee13 3a10    	vmov	r3, s6
    b6dc: ee14 6a10    	vmov	r6, s8
    b6e0: 9013         	str	r0, [sp, #0x4c]
    b6e2: f021 4000    	bic	r0, r1, #0x80000000
    b6e6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b6ea: f04f 0000    	mov.w	r0, #0x0
    b6ee: bfa8         	it	ge
    b6f0: 2001         	movge	r0, #0x1
    b6f2: ee15 ca10    	vmov	r12, s10
    b6f6: ee16 ea10    	vmov	lr, s12
    b6fa: 9012         	str	r0, [sp, #0x48]
    b6fc: f022 4000    	bic	r0, r2, #0x80000000
    b700: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b704: f04f 0000    	mov.w	r0, #0x0
    b708: bfa8         	it	ge
    b70a: 2001         	movge	r0, #0x1
    b70c: ee17 8a10    	vmov	r8, s14
    b710: ee10 ba90    	vmov	r11, s1
    b714: 9011         	str	r0, [sp, #0x44]
    b716: f023 4000    	bic	r0, r3, #0x80000000
    b71a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b71e: f04f 0000    	mov.w	r0, #0x0
    b722: bfa8         	it	ge
    b724: 2001         	movge	r0, #0x1
    b726: f04f 0900    	mov.w	r9, #0x0
    b72a: 9010         	str	r0, [sp, #0x40]
    b72c: f026 4000    	bic	r0, r6, #0x80000000
    b730: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b734: f04f 0000    	mov.w	r0, #0x0
    b738: bfa8         	it	ge
    b73a: 2001         	movge	r0, #0x1
    b73c: 900f         	str	r0, [sp, #0x3c]
    b73e: f02c 4000    	bic	r0, r12, #0x80000000
    b742: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b746: f04f 0000    	mov.w	r0, #0x0
    b74a: bfa8         	it	ge
    b74c: 2001         	movge	r0, #0x1
    b74e: f04f 0c00    	mov.w	r12, #0x0
    b752: 900e         	str	r0, [sp, #0x38]
    b754: f02e 4000    	bic	r0, lr, #0x80000000
    b758: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b75c: f04f 0000    	mov.w	r0, #0x0
    b760: bfa8         	it	ge
    b762: 2001         	movge	r0, #0x1
    b764: f04f 0e00    	mov.w	lr, #0x0
    b768: 9008         	str	r0, [sp, #0x20]
    b76a: f028 4000    	bic	r0, r8, #0x80000000
    b76e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b772: f04f 0000    	mov.w	r0, #0x0
    b776: bfa8         	it	ge
    b778: 2001         	movge	r0, #0x1
    b77a: f04f 0800    	mov.w	r8, #0x0
    b77e: 9007         	str	r0, [sp, #0x1c]
    b780: f02b 4000    	bic	r0, r11, #0x80000000
    b784: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b788: f04f 0000    	mov.w	r0, #0x0
    b78c: bfa8         	it	ge
    b78e: 2001         	movge	r0, #0x1
    b790: f04f 0b00    	mov.w	r11, #0x0
    b794: 9006         	str	r0, [sp, #0x18]
    b796: 9809         	ldr	r0, [sp, #0x24]
    b798: f020 4000    	bic	r0, r0, #0x80000000
    b79c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b7a0: f04f 0000    	mov.w	r0, #0x0
    b7a4: bfa8         	it	ge
    b7a6: 2001         	movge	r0, #0x1
    b7a8: 9009         	str	r0, [sp, #0x24]
    b7aa: 980a         	ldr	r0, [sp, #0x28]
    b7ac: f020 4000    	bic	r0, r0, #0x80000000
    b7b0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b7b4: f04f 0000    	mov.w	r0, #0x0
    b7b8: bfa8         	it	ge
    b7ba: 2001         	movge	r0, #0x1
    b7bc: 900a         	str	r0, [sp, #0x28]
    b7be: 980b         	ldr	r0, [sp, #0x2c]
    b7c0: f020 4000    	bic	r0, r0, #0x80000000
    b7c4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b7c8: f04f 0000    	mov.w	r0, #0x0
    b7cc: bfa8         	it	ge
    b7ce: 2001         	movge	r0, #0x1
    b7d0: 900b         	str	r0, [sp, #0x2c]
    b7d2: 980c         	ldr	r0, [sp, #0x30]
    b7d4: f020 4000    	bic	r0, r0, #0x80000000
    b7d8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b7dc: f04f 0000    	mov.w	r0, #0x0
    b7e0: bfa8         	it	ge
    b7e2: 2001         	movge	r0, #0x1
    b7e4: eddd ca6c    	vldr	s25, [sp, #432]
    b7e8: 900c         	str	r0, [sp, #0x30]
    b7ea: 980d         	ldr	r0, [sp, #0x34]
    b7ec: f020 4000    	bic	r0, r0, #0x80000000
    b7f0: ee1c 1a90    	vmov	r1, s25
    b7f4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b7f8: f04f 0000    	mov.w	r0, #0x0
    b7fc: bfa8         	it	ge
    b7fe: 2001         	movge	r0, #0x1
    b800: eddd 7a6d    	vldr	s15, [sp, #436]
    b804: 900d         	str	r0, [sp, #0x34]
    b806: f021 4000    	bic	r0, r1, #0x80000000
    b80a: ee17 1a90    	vmov	r1, s15
    b80e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b812: f04f 0000    	mov.w	r0, #0x0
    b816: bfa8         	it	ge
    b818: 2001         	movge	r0, #0x1
    b81a: ed9d 8a6e    	vldr	s16, [sp, #440]
    b81e: 9005         	str	r0, [sp, #0x14]
    b820: f021 4000    	bic	r0, r1, #0x80000000
    b824: ee18 1a10    	vmov	r1, s16
    b828: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b82c: f04f 0000    	mov.w	r0, #0x0
    b830: bfa8         	it	ge
    b832: 2001         	movge	r0, #0x1
    b834: ed9d 9a6f    	vldr	s18, [sp, #444]
    b838: 9004         	str	r0, [sp, #0x10]
    b83a: f021 4000    	bic	r0, r1, #0x80000000
    b83e: ee19 1a10    	vmov	r1, s18
    b842: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b846: f04f 0000    	mov.w	r0, #0x0
    b84a: bfa8         	it	ge
    b84c: 2001         	movge	r0, #0x1
    b84e: ed9d aa70    	vldr	s20, [sp, #448]
    b852: 9003         	str	r0, [sp, #0xc]
    b854: f021 4000    	bic	r0, r1, #0x80000000
    b858: ee1a 1a10    	vmov	r1, s20
    b85c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b860: f04f 0000    	mov.w	r0, #0x0
    b864: bfa8         	it	ge
    b866: 2001         	movge	r0, #0x1
    b868: f021 4100    	bic	r1, r1, #0x80000000
    b86c: ed9d ba71    	vldr	s22, [sp, #452]
    b870: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b874: f04f 0100    	mov.w	r1, #0x0
    b878: 9002         	str	r0, [sp, #0x8]
    b87a: ee1b 2a10    	vmov	r2, s22
    b87e: bfa8         	it	ge
    b880: 2101         	movge	r1, #0x1
    b882: ed9d ca72    	vldr	s24, [sp, #456]
    b886: ee1c 3a10    	vmov	r3, s24
    b88a: f022 4200    	bic	r2, r2, #0x80000000
    b88e: f1b2 4fff    	cmp.w	r2, #0x7f800000
    b892: f04f 0200    	mov.w	r2, #0x0
    b896: bfa8         	it	ge
    b898: 2201         	movge	r2, #0x1
    b89a: f023 4300    	bic	r3, r3, #0x80000000
    b89e: ed9d da73    	vldr	s26, [sp, #460]
    b8a2: f1b3 4fff    	cmp.w	r3, #0x7f800000
    b8a6: f04f 0300    	mov.w	r3, #0x0
    b8aa: ee1d 6a10    	vmov	r6, s26
    b8ae: bfa8         	it	ge
    b8b0: 2301         	movge	r3, #0x1
    b8b2: ed9d ea58    	vldr	s28, [sp, #352]
    b8b6: ee1e 5a10    	vmov	r5, s28
    b8ba: f026 4600    	bic	r6, r6, #0x80000000
    b8be: f1b6 4fff    	cmp.w	r6, #0x7f800000
    b8c2: bfa8         	it	ge
    b8c4: f04f 0c01    	movge.w	r12, #0x1
    b8c8: ed9d fa59    	vldr	s30, [sp, #356]
    b8cc: f025 4600    	bic	r6, r5, #0x80000000
    b8d0: ee1f 5a10    	vmov	r5, s30
    b8d4: f1b6 4fff    	cmp.w	r6, #0x7f800000
    b8d8: bfa8         	it	ge
    b8da: f04f 0e01    	movge.w	lr, #0x1
    b8de: eddd 8a5a    	vldr	s17, [sp, #360]
    b8e2: 2600         	movs	r6, #0x0
    b8e4: ee18 0a90    	vmov	r0, s17
    b8e8: f025 4500    	bic	r5, r5, #0x80000000
    b8ec: f1b5 4fff    	cmp.w	r5, #0x7f800000
    b8f0: bfa8         	it	ge
    b8f2: 2601         	movge	r6, #0x1
    b8f4: f020 4000    	bic	r0, r0, #0x80000000
    b8f8: eddd 9a5b    	vldr	s19, [sp, #364]
    b8fc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b900: ee19 0a90    	vmov	r0, s19
    b904: eddd aa5c    	vldr	s21, [sp, #368]
    b908: bfa8         	it	ge
    b90a: f04f 0901    	movge.w	r9, #0x1
    b90e: f020 4000    	bic	r0, r0, #0x80000000
    b912: eddd ba5d    	vldr	s23, [sp, #372]
    b916: ee1a 5a90    	vmov	r5, s21
    b91a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b91e: ee1b 0a90    	vmov	r0, s23
    b922: bfa8         	it	ge
    b924: f04f 0801    	movge.w	r8, #0x1
    b928: f025 4500    	bic	r5, r5, #0x80000000
    b92c: f020 4000    	bic	r0, r0, #0x80000000
    b930: f1b5 4fff    	cmp.w	r5, #0x7f800000
    b934: bfa8         	it	ge
    b936: f04f 0b01    	movge.w	r11, #0x1
    b93a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b93e: f04f 0500    	mov.w	r5, #0x0
    b942: da49         	bge	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x92
    b944: 9813         	ldr	r0, [sp, #0x4c]
    b946: 2800         	cmp	r0, #0x0
    b948: bf04         	itt	eq
    b94a: 9812         	ldreq	r0, [sp, #0x48]
    b94c: 2800         	cmpeq	r0, #0x0
    b94e: d143         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x86
    b950: 9811         	ldr	r0, [sp, #0x44]
    b952: 2800         	cmp	r0, #0x0
    b954: bf04         	itt	eq
    b956: 9810         	ldreq	r0, [sp, #0x40]
    b958: 2800         	cmpeq	r0, #0x0
    b95a: d13d         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x7a
    b95c: 980f         	ldr	r0, [sp, #0x3c]
    b95e: 2800         	cmp	r0, #0x0
    b960: bf04         	itt	eq
    b962: 980e         	ldreq	r0, [sp, #0x38]
    b964: 2800         	cmpeq	r0, #0x0
    b966: d137         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x6e
    b968: 9808         	ldr	r0, [sp, #0x20]
    b96a: 2800         	cmp	r0, #0x0
    b96c: bf04         	itt	eq
    b96e: 9807         	ldreq	r0, [sp, #0x1c]
    b970: 2800         	cmpeq	r0, #0x0
    b972: d131         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x62
    b974: 9806         	ldr	r0, [sp, #0x18]
    b976: 2800         	cmp	r0, #0x0
    b978: bf04         	itt	eq
    b97a: 9809         	ldreq	r0, [sp, #0x24]
    b97c: 2800         	cmpeq	r0, #0x0
    b97e: d12b         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x56
    b980: 980a         	ldr	r0, [sp, #0x28]
    b982: 2800         	cmp	r0, #0x0
    b984: bf04         	itt	eq
    b986: 980b         	ldreq	r0, [sp, #0x2c]
    b988: 2800         	cmpeq	r0, #0x0
    b98a: d125         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x4a
    b98c: 980c         	ldr	r0, [sp, #0x30]
    b98e: 2800         	cmp	r0, #0x0
    b990: bf04         	itt	eq
    b992: 980d         	ldreq	r0, [sp, #0x34]
    b994: 2800         	cmpeq	r0, #0x0
    b996: d11f         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x3e
    b998: 9805         	ldr	r0, [sp, #0x14]
    b99a: 2800         	cmp	r0, #0x0
    b99c: bf04         	itt	eq
    b99e: 9804         	ldreq	r0, [sp, #0x10]
    b9a0: 2800         	cmpeq	r0, #0x0
    b9a2: d119         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x32
    b9a4: 9803         	ldr	r0, [sp, #0xc]
    b9a6: 2800         	cmp	r0, #0x0
    b9a8: bf04         	itt	eq
    b9aa: 9802         	ldreq	r0, [sp, #0x8]
    b9ac: 2800         	cmpeq	r0, #0x0
    b9ae: d113         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x26
    b9b0: 2900         	cmp	r1, #0x0
    b9b2: bf08         	it	eq
    b9b4: 2a00         	cmpeq	r2, #0x0
    b9b6: d10f         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x1e
    b9b8: 2b00         	cmp	r3, #0x0
    b9ba: bf08         	it	eq
    b9bc: f1bc 0f00    	cmpeq.w	r12, #0x0
    b9c0: d10a         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0x14
    b9c2: f1be 0f00    	cmp.w	lr, #0x0
    b9c6: bf08         	it	eq
    b9c8: 2e00         	cmpeq	r6, #0x0
    b9ca: d105         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #0xa
    b9cc: f1b9 0f00    	cmp.w	r9, #0x0
    b9d0: bf08         	it	eq
    b9d2: f1b8 0f00    	cmpeq.w	r8, #0x0
    b9d6: d03f         	beq	0xba58 <rate48_probe::candidate+0x8c0> @ imm = #0x7e
    b9d8: 69e0         	ldr	r0, [r4, #0x1c]
    b9da: f04f 41ff    	mov.w	r1, #0x7f800000
    b9de: e9ca 0100    	strd	r0, r1, [r10]
    b9e2: 9814         	ldr	r0, [sp, #0x50]
    b9e4: f88a 0008    	strb.w	r0, [r10, #0x8]
    b9e8: f88a 5009    	strb.w	r5, [r10, #0x9]
    b9ec: e00a         	b	0xba04 <rate48_probe::candidate+0x86c> @ imm = #0x14
    b9ee: bf00         	nop
    b9f0: 69e0         	ldr	r0, [r4, #0x1c]
    b9f2: f04f 41ff    	mov.w	r1, #0x7f800000
    b9f6: e9ca 0100    	strd	r0, r1, [r10]
    b9fa: f88a 6008    	strb.w	r6, [r10, #0x8]
    b9fe: 2000         	movs	r0, #0x0
    ba00: f88a 0009    	strb.w	r0, [r10, #0x9]
    ba04: b074         	add	sp, #0x1d0
    ba06: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    ba0a: b001         	add	sp, #0x4
    ba0c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    ba10: bdf0         	pop	{r4, r5, r6, r7, pc}
    ba12: bf00         	nop
    ba14: bf00         	nop
    ba16: bf00         	nop
    ba18: eeb4 2a42    	vcmp.f32	s4, s4
    ba1c: ed9f 0a65    	vldr	s0, [pc, #404]          @ 0xbbb4 <rate48_probe::candidate+0xa1c>
    ba20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba24: f8d4 0100    	ldr.w	r0, [r4, #0x100]
    ba28: f04f 0600    	mov.w	r6, #0x0
    ba2c: fe10 1a02    	vselvs.f32	s2, s0, s4
    ba30: 3001         	adds	r0, #0x1
    ba32: f8c4 0100    	str.w	r0, [r4, #0x100]
    ba36: eeb5 1a40    	vcmp.f32	s2, #0
    ba3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba3e: fe31 ea00    	vselgt.f32	s28, s2, s0
    ba42: e562         	b	0xb50a <rate48_probe::candidate+0x372> @ imm = #-0x53c
    ba44: bf00         	nop
    ba46: bf00         	nop
    ba48: 69e0         	ldr	r0, [r4, #0x1c]
    ba4a: f04f 41ff    	mov.w	r1, #0x7f800000
    ba4e: e9ca 0100    	strd	r0, r1, [r10]
    ba52: f88a 2008    	strb.w	r2, [r10, #0x8]
    ba56: e7d2         	b	0xb9fe <rate48_probe::candidate+0x866> @ imm = #-0x5c
    ba58: f1bb 0f00    	cmp.w	r11, #0x0
    ba5c: d1bc         	bne	0xb9d8 <rate48_probe::candidate+0x840> @ imm = #-0x88
    ba5e: f104 0120    	add.w	r1, r4, #0x20
    ba62: f104 0090    	add.w	r0, r4, #0x90
    ba66: 2270         	movs	r2, #0x70
    ba68: ed8d 8a0a    	vstr	s16, [sp, #40]
    ba6c: eeb0 8a43    	vmov.f32	s16, s6
    ba70: ed8d aa0b    	vstr	s20, [sp, #44]
    ba74: eeb0 aa44    	vmov.f32	s20, s8
    ba78: ed8d ba0d    	vstr	s22, [sp, #52]
    ba7c: eeb0 ba45    	vmov.f32	s22, s10
    ba80: ed8d 9a09    	vstr	s18, [sp, #36]
    ba84: eeb0 9a46    	vmov.f32	s18, s12
    ba88: ed8d ca0c    	vstr	s24, [sp, #48]
    ba8c: eeb0 ca47    	vmov.f32	s24, s14
    ba90: ed8d da0e    	vstr	s26, [sp, #56]
    ba94: eeb0 da60    	vmov.f32	s26, s1
    ba98: ed8d ea0f    	vstr	s28, [sp, #60]
    ba9c: eeb0 ea61    	vmov.f32	s28, s3
    baa0: ed8d fa10    	vstr	s30, [sp, #64]
    baa4: eeb0 fa62    	vmov.f32	s30, s5
    baa8: edcd 8a11    	vstr	s17, [sp, #68]
    baac: eef0 8a63    	vmov.f32	s17, s7
    bab0: edcd 9a12    	vstr	s19, [sp, #72]
    bab4: eef0 9a64    	vmov.f32	s19, s9
    bab8: edcd aa13    	vstr	s21, [sp, #76]
    babc: eef0 aa65    	vmov.f32	s21, s11
    bac0: edcd 7a08    	vstr	s15, [sp, #32]
    bac4: f001 fc84    	bl	0xd3d0 <__aeabi_memcpy4> @ imm = #0x1908
    bac8: ad50         	add	r5, sp, #0x140
    baca: edc4 ba08    	vstr	s23, [r4, #32]
    bace: edc4 da09    	vstr	s27, [r4, #36]
    bad2: ed9d 0a08    	vldr	s0, [sp, #32]
    bad6: edc4 ea0a    	vstr	s29, [r4, #40]
    bada: 4620         	mov	r0, r4
    badc: edc4 fa0b    	vstr	s31, [r4, #44]
    bae0: ed84 8a0c    	vstr	s16, [r4, #48]
    bae4: ed84 aa0d    	vstr	s20, [r4, #52]
    bae8: ed84 ba0e    	vstr	s22, [r4, #56]
    baec: ed84 9a0f    	vstr	s18, [r4, #60]
    baf0: ed84 ca10    	vstr	s24, [r4, #64]
    baf4: ed84 da11    	vstr	s26, [r4, #68]
    baf8: ed84 ea12    	vstr	s28, [r4, #72]
    bafc: ed84 fa13    	vstr	s30, [r4, #76]
    bb00: edc4 8a14    	vstr	s17, [r4, #80]
    bb04: edc4 9a15    	vstr	s19, [r4, #84]
    bb08: edc4 aa16    	vstr	s21, [r4, #88]
    bb0c: edc4 ca17    	vstr	s25, [r4, #92]
    bb10: ed84 0a18    	vstr	s0, [r4, #96]
    bb14: ed9d 0a0a    	vldr	s0, [sp, #40]
    bb18: ed84 0a19    	vstr	s0, [r4, #100]
    bb1c: ed9d 0a09    	vldr	s0, [sp, #36]
    bb20: ed84 0a1a    	vstr	s0, [r4, #104]
    bb24: ed9d 0a0b    	vldr	s0, [sp, #44]
    bb28: ed84 0a1b    	vstr	s0, [r4, #108]
    bb2c: ed9d 0a0d    	vldr	s0, [sp, #52]
    bb30: ed84 0a1c    	vstr	s0, [r4, #112]
    bb34: ed9d 0a0c    	vldr	s0, [sp, #48]
    bb38: ed84 0a1d    	vstr	s0, [r4, #116]
    bb3c: ed9d 0a0e    	vldr	s0, [sp, #56]
    bb40: ed84 0a1e    	vstr	s0, [r4, #120]
    bb44: ed9d 0a0f    	vldr	s0, [sp, #60]
    bb48: ed84 0a1f    	vstr	s0, [r4, #124]
    bb4c: ed9d 0a10    	vldr	s0, [sp, #64]
    bb50: ed84 0a20    	vstr	s0, [r4, #128]
    bb54: ed9d 0a11    	vldr	s0, [sp, #68]
    bb58: ed84 0a21    	vstr	s0, [r4, #132]
    bb5c: ed9d 0a12    	vldr	s0, [sp, #72]
    bb60: ed84 0a22    	vstr	s0, [r4, #136]
    bb64: ed9d 0a13    	vldr	s0, [sp, #76]
    bb68: ed84 0a23    	vstr	s0, [r4, #140]
    bb6c: ed9f 0a10    	vldr	s0, [pc, #64]           @ 0xbbb0 <rate48_probe::candidate+0xa18>
    bb70: cd4e         	ldm	r5!, {r1, r2, r3, r6}
    bb72: c04e         	stm	r0!, {r1, r2, r3, r6}
    bb74: e895 004e    	ldm.w	r5, {r1, r2, r3, r6}
    bb78: c04e         	stm	r0!, {r1, r2, r3, r6}
    bb7a: f8d4 0118    	ldr.w	r0, [r4, #0x118]
    bb7e: ed9d 1a01    	vldr	s2, [sp, #4]
    bb82: 3001         	adds	r0, #0x1
    bb84: ed8a 1a01    	vstr	s2, [r10, #4]
    bb88: bf28         	it	hs
    bb8a: f04f 30ff    	movhs.w	r0, #0xffffffff
    bb8e: eeb4 1a40    	vcmp.f32	s2, s0
    bb92: 9914         	ldr	r1, [sp, #0x50]
    bb94: f8c4 0118    	str.w	r0, [r4, #0x118]
    bb98: 9857         	ldr	r0, [sp, #0x15c]
    bb9a: f8ca 0000    	str.w	r0, [r10]
    bb9e: 2000         	movs	r0, #0x0
    bba0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bba4: f88a 1008    	strb.w	r1, [r10, #0x8]
    bba8: bf98         	it	ls
    bbaa: 2001         	movls	r0, #0x1
    bbac: e728         	b	0xba00 <rate48_probe::candidate+0x868> @ imm = #-0x1b0
    bbae: bf00         	nop
    bbb0: 17 b7 d1 38  	.word	0x38d1b717
    bbb4: 00 00 00 00  	.word	0x00000000

0000bbb8 <core::panicking::panic_fmt>:
    bbb8: b580         	push	{r7, lr}
    bbba: 466f         	mov	r7, sp
    bbbc: f7ff fa94    	bl	0xb0e8 <__rustc::rust_begin_unwind> @ imm = #-0xad8

0000bbc0 <core::panicking::panic>:
    bbc0: b580         	push	{r7, lr}
    bbc2: 466f         	mov	r7, sp
    bbc4: 0049         	lsls	r1, r1, #0x1
    bbc6: 3101         	adds	r1, #0x1
    bbc8: f7ff fff6    	bl	0xbbb8 <core::panicking::panic_fmt> @ imm = #-0x14
    bbcc: d4d4         	bmi	0xbb78 <rate48_probe::candidate+0x9e0> @ imm = #-0x58
    bbce: d4d4         	bmi	0xbb7a <rate48_probe::candidate+0x9e2> @ imm = #-0x58

0000bbd0 <orange_dsp::generated_condensed::update>:
    bbd0: b580         	push	{r7, lr}
    bbd2: 466f         	mov	r7, sp
    bbd4: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    bbd8: b0b0         	sub	sp, #0xc0
    bbda: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bbde: ed91 3a02    	vldr	s6, [r1, #8]
    bbe2: ed9f 1bfd    	vldr	d1, [pc, #1012]         @ 0xbfd8 <orange_dsp::generated_condensed::update+0x408>
    bbe6: ed91 4a01    	vldr	s8, [r1, #4]
    bbea: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    bbee: ee20 8b01    	vmul.f64	d8, d0, d1
    bbf2: ed91 1a03    	vldr	s2, [r1, #12]
    bbf6: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    bbfa: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    bbfe: ed9f 0bf8    	vldr	d0, [pc, #992]          @ 0xbfe0 <orange_dsp::generated_condensed::update+0x410>
    bc02: ed9f 2bf9    	vldr	d2, [pc, #996]          @ 0xbfe8 <orange_dsp::generated_condensed::update+0x418>
    bc06: ed9f 5bfa    	vldr	d5, [pc, #1000]         @ 0xbff0 <orange_dsp::generated_condensed::update+0x420>
    bc0a: ee21 2b02    	vmul.f64	d2, d1, d2
    bc0e: ee03 2b05    	vmla.f64	d2, d3, d5
    bc12: eeb0 5b48    	vmov.f64	d5, d8
    bc16: ee04 5b00    	vmla.f64	d5, d4, d0
    bc1a: ed9f 0bf7    	vldr	d0, [pc, #988]          @ 0xbff8 <orange_dsp::generated_condensed::update+0x428>
    bc1e: ee23 3b00    	vmul.f64	d3, d3, d0
    bc22: ed92 0a01    	vldr	s0, [r2, #4]
    bc26: ed9f 4bf6    	vldr	d4, [pc, #984]          @ 0xc000 <orange_dsp::generated_condensed::update+0x430>
    bc2a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bc2e: ed8d 5b2c    	vstr	d5, [sp, #176]
    bc32: ee38 5b02    	vadd.f64	d5, d8, d2
    bc36: ed9f 2bf4    	vldr	d2, [pc, #976]          @ 0xc008 <orange_dsp::generated_condensed::update+0x438>
    bc3a: ee01 3b04    	vmla.f64	d3, d1, d4
    bc3e: ed91 4a04    	vldr	s8, [r1, #16]
    bc42: ee00 5b02    	vmla.f64	d5, d0, d2
    bc46: ed91 2a05    	vldr	s4, [r1, #20]
    bc4a: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    bc4e: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    bc52: ed8d 5b2e    	vstr	d5, [sp, #184]
    bc56: ee38 6b03    	vadd.f64	d6, d8, d3
    bc5a: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xc010 <orange_dsp::generated_condensed::update+0x440>
    bc5e: ed9f 5bee    	vldr	d5, [pc, #952]          @ 0xc018 <orange_dsp::generated_condensed::update+0x448>
    bc62: ee22 3b03    	vmul.f64	d3, d2, d3
    bc66: ee04 3b05    	vmla.f64	d3, d4, d5
    bc6a: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xc020 <orange_dsp::generated_condensed::update+0x450>
    bc6e: ee38 5b03    	vadd.f64	d5, d8, d3
    bc72: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xc028 <orange_dsp::generated_condensed::update+0x458>
    bc76: ee24 3b03    	vmul.f64	d3, d4, d3
    bc7a: ed9f 4bed    	vldr	d4, [pc, #948]          @ 0xc030 <orange_dsp::generated_condensed::update+0x460>
    bc7e: ee00 6b01    	vmla.f64	d6, d0, d1
    bc82: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xc038 <orange_dsp::generated_condensed::update+0x468>
    bc86: ee02 3b04    	vmla.f64	d3, d2, d4
    bc8a: ee00 5b01    	vmla.f64	d5, d0, d1
    bc8e: ed9f 1bec    	vldr	d1, [pc, #944]          @ 0xc040 <orange_dsp::generated_condensed::update+0x470>
    bc92: ee38 2b03    	vadd.f64	d2, d8, d3
    bc96: ee00 2b01    	vmla.f64	d2, d0, d1
    bc9a: ed91 0a07    	vldr	s0, [r1, #28]
    bc9e: ed91 1a06    	vldr	s2, [r1, #24]
    bca2: eeb7 fac0    	vcvt.f64.f32	d15, s0
    bca6: ed9f 0be8    	vldr	d0, [pc, #928]          @ 0xc048 <orange_dsp::generated_condensed::update+0x478>
    bcaa: ee2f 9b00    	vmul.f64	d9, d15, d0
    bcae: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    bcb2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc050 <orange_dsp::generated_condensed::update+0x480>
    bcb6: ee00 9b01    	vmla.f64	d9, d0, d1
    bcba: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc058 <orange_dsp::generated_condensed::update+0x488>
    bcbe: ee2f 3b01    	vmul.f64	d3, d15, d1
    bcc2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc060 <orange_dsp::generated_condensed::update+0x490>
    bcc6: ee00 3b01    	vmla.f64	d3, d0, d1
    bcca: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc068 <orange_dsp::generated_condensed::update+0x498>
    bcce: ee2f 4b01    	vmul.f64	d4, d15, d1
    bcd2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc070 <orange_dsp::generated_condensed::update+0x4a0>
    bcd6: ee00 4b01    	vmla.f64	d4, d0, d1
    bcda: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc078 <orange_dsp::generated_condensed::update+0x4a8>
    bcde: ee20 ab01    	vmul.f64	d10, d0, d1
    bce2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc080 <orange_dsp::generated_condensed::update+0x4b0>
    bce6: ee0f ab01    	vmla.f64	d10, d15, d1
    bcea: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc088 <orange_dsp::generated_condensed::update+0x4b8>
    bcee: ee2f bb01    	vmul.f64	d11, d15, d1
    bcf2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc090 <orange_dsp::generated_condensed::update+0x4c0>
    bcf6: ee00 bb01    	vmla.f64	d11, d0, d1
    bcfa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc098 <orange_dsp::generated_condensed::update+0x4c8>
    bcfe: ee2f cb01    	vmul.f64	d12, d15, d1
    bd02: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc0a0 <orange_dsp::generated_condensed::update+0x4d0>
    bd06: ee00 cb01    	vmla.f64	d12, d0, d1
    bd0a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc0a8 <orange_dsp::generated_condensed::update+0x4d8>
    bd0e: ee20 db01    	vmul.f64	d13, d0, d1
    bd12: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc0b0 <orange_dsp::generated_condensed::update+0x4e0>
    bd16: ee0f db01    	vmla.f64	d13, d15, d1
    bd1a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc0b8 <orange_dsp::generated_condensed::update+0x4e8>
    bd1e: ee2f eb01    	vmul.f64	d14, d15, d1
    bd22: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc0c0 <orange_dsp::generated_condensed::update+0x4f0>
    bd26: ee00 eb01    	vmla.f64	d14, d0, d1
    bd2a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc0c8 <orange_dsp::generated_condensed::update+0x4f8>
    bd2e: ee2f fb01    	vmul.f64	d15, d15, d1
    bd32: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc0d0 <orange_dsp::generated_condensed::update+0x500>
    bd36: ee00 fb01    	vmla.f64	d15, d0, d1
    bd3a: ed91 0a08    	vldr	s0, [r1, #32]
    bd3e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bd42: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc0d8 <orange_dsp::generated_condensed::update+0x508>
    bd46: ee00 9b01    	vmla.f64	d9, d0, d1
    bd4a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc0e0 <orange_dsp::generated_condensed::update+0x510>
    bd4e: ee00 3b01    	vmla.f64	d3, d0, d1
    bd52: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc0e8 <orange_dsp::generated_condensed::update+0x518>
    bd56: ee00 4b01    	vmla.f64	d4, d0, d1
    bd5a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc0f0 <orange_dsp::generated_condensed::update+0x520>
    bd5e: ee00 ab01    	vmla.f64	d10, d0, d1
    bd62: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc0f8 <orange_dsp::generated_condensed::update+0x528>
    bd66: ee00 bb01    	vmla.f64	d11, d0, d1
    bd6a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc100 <orange_dsp::generated_condensed::update+0x530>
    bd6e: ee00 cb01    	vmla.f64	d12, d0, d1
    bd72: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc108 <orange_dsp::generated_condensed::update+0x538>
    bd76: ee00 db01    	vmla.f64	d13, d0, d1
    bd7a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc110 <orange_dsp::generated_condensed::update+0x540>
    bd7e: ee00 eb01    	vmla.f64	d14, d0, d1
    bd82: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc118 <orange_dsp::generated_condensed::update+0x548>
    bd86: ee00 fb01    	vmla.f64	d15, d0, d1
    bd8a: ed91 0a09    	vldr	s0, [r1, #36]
    bd8e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bd92: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc120 <orange_dsp::generated_condensed::update+0x550>
    bd96: ee00 9b01    	vmla.f64	d9, d0, d1
    bd9a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc128 <orange_dsp::generated_condensed::update+0x558>
    bd9e: ee00 3b01    	vmla.f64	d3, d0, d1
    bda2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc130 <orange_dsp::generated_condensed::update+0x560>
    bda6: ee00 4b01    	vmla.f64	d4, d0, d1
    bdaa: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc138 <orange_dsp::generated_condensed::update+0x568>
    bdae: ee00 ab01    	vmla.f64	d10, d0, d1
    bdb2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc140 <orange_dsp::generated_condensed::update+0x570>
    bdb6: ee00 bb01    	vmla.f64	d11, d0, d1
    bdba: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc148 <orange_dsp::generated_condensed::update+0x578>
    bdbe: ee00 cb01    	vmla.f64	d12, d0, d1
    bdc2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc150 <orange_dsp::generated_condensed::update+0x580>
    bdc6: ee00 db01    	vmla.f64	d13, d0, d1
    bdca: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc158 <orange_dsp::generated_condensed::update+0x588>
    bdce: ee00 eb01    	vmla.f64	d14, d0, d1
    bdd2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc160 <orange_dsp::generated_condensed::update+0x590>
    bdd6: ee00 fb01    	vmla.f64	d15, d0, d1
    bdda: ed91 0a0a    	vldr	s0, [r1, #40]
    bdde: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bde2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc168 <orange_dsp::generated_condensed::update+0x598>
    bde6: ee00 9b01    	vmla.f64	d9, d0, d1
    bdea: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc170 <orange_dsp::generated_condensed::update+0x5a0>
    bdee: ee00 3b01    	vmla.f64	d3, d0, d1
    bdf2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc178 <orange_dsp::generated_condensed::update+0x5a8>
    bdf6: ee00 4b01    	vmla.f64	d4, d0, d1
    bdfa: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc180 <orange_dsp::generated_condensed::update+0x5b0>
    bdfe: ee00 ab01    	vmla.f64	d10, d0, d1
    be02: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc188 <orange_dsp::generated_condensed::update+0x5b8>
    be06: ee00 bb01    	vmla.f64	d11, d0, d1
    be0a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc190 <orange_dsp::generated_condensed::update+0x5c0>
    be0e: ee00 cb01    	vmla.f64	d12, d0, d1
    be12: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc198 <orange_dsp::generated_condensed::update+0x5c8>
    be16: ee00 db01    	vmla.f64	d13, d0, d1
    be1a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc1a0 <orange_dsp::generated_condensed::update+0x5d0>
    be1e: ee00 eb01    	vmla.f64	d14, d0, d1
    be22: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc1a8 <orange_dsp::generated_condensed::update+0x5d8>
    be26: ee00 fb01    	vmla.f64	d15, d0, d1
    be2a: ed91 0a0b    	vldr	s0, [r1, #44]
    be2e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    be32: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc1b0 <orange_dsp::generated_condensed::update+0x5e0>
    be36: ee00 9b01    	vmla.f64	d9, d0, d1
    be3a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc1b8 <orange_dsp::generated_condensed::update+0x5e8>
    be3e: ee00 3b01    	vmla.f64	d3, d0, d1
    be42: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc1c0 <orange_dsp::generated_condensed::update+0x5f0>
    be46: ee00 4b01    	vmla.f64	d4, d0, d1
    be4a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc1c8 <orange_dsp::generated_condensed::update+0x5f8>
    be4e: ee00 ab01    	vmla.f64	d10, d0, d1
    be52: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc1d0 <orange_dsp::generated_condensed::update+0x600>
    be56: ee00 bb01    	vmla.f64	d11, d0, d1
    be5a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc1d8 <orange_dsp::generated_condensed::update+0x608>
    be5e: ee00 cb01    	vmla.f64	d12, d0, d1
    be62: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc1e0 <orange_dsp::generated_condensed::update+0x610>
    be66: ee00 db01    	vmla.f64	d13, d0, d1
    be6a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc1e8 <orange_dsp::generated_condensed::update+0x618>
    be6e: ee00 eb01    	vmla.f64	d14, d0, d1
    be72: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc1f0 <orange_dsp::generated_condensed::update+0x620>
    be76: ee00 fb01    	vmla.f64	d15, d0, d1
    be7a: ed91 0a0c    	vldr	s0, [r1, #48]
    be7e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    be82: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc1f8 <orange_dsp::generated_condensed::update+0x628>
    be86: ee00 9b01    	vmla.f64	d9, d0, d1
    be8a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc200 <orange_dsp::generated_condensed::update+0x630>
    be8e: ee00 3b01    	vmla.f64	d3, d0, d1
    be92: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc208 <orange_dsp::generated_condensed::update+0x638>
    be96: ee00 4b01    	vmla.f64	d4, d0, d1
    be9a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc210 <orange_dsp::generated_condensed::update+0x640>
    be9e: ee00 ab01    	vmla.f64	d10, d0, d1
    bea2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc218 <orange_dsp::generated_condensed::update+0x648>
    bea6: ee00 bb01    	vmla.f64	d11, d0, d1
    beaa: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc220 <orange_dsp::generated_condensed::update+0x650>
    beae: ee00 cb01    	vmla.f64	d12, d0, d1
    beb2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc228 <orange_dsp::generated_condensed::update+0x658>
    beb6: ee00 db01    	vmla.f64	d13, d0, d1
    beba: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc230 <orange_dsp::generated_condensed::update+0x660>
    bebe: ee00 eb01    	vmla.f64	d14, d0, d1
    bec2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc238 <orange_dsp::generated_condensed::update+0x668>
    bec6: ee00 fb01    	vmla.f64	d15, d0, d1
    beca: ed91 0a0d    	vldr	s0, [r1, #52]
    bece: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bed2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc240 <orange_dsp::generated_condensed::update+0x670>
    bed6: ee00 9b01    	vmla.f64	d9, d0, d1
    beda: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc248 <orange_dsp::generated_condensed::update+0x678>
    bede: ee00 3b01    	vmla.f64	d3, d0, d1
    bee2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc250 <orange_dsp::generated_condensed::update+0x680>
    bee6: ee00 4b01    	vmla.f64	d4, d0, d1
    beea: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc258 <orange_dsp::generated_condensed::update+0x688>
    beee: ee00 ab01    	vmla.f64	d10, d0, d1
    bef2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc260 <orange_dsp::generated_condensed::update+0x690>
    bef6: ee00 bb01    	vmla.f64	d11, d0, d1
    befa: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc268 <orange_dsp::generated_condensed::update+0x698>
    befe: ee00 cb01    	vmla.f64	d12, d0, d1
    bf02: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc270 <orange_dsp::generated_condensed::update+0x6a0>
    bf06: ee00 db01    	vmla.f64	d13, d0, d1
    bf0a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc278 <orange_dsp::generated_condensed::update+0x6a8>
    bf0e: ee00 eb01    	vmla.f64	d14, d0, d1
    bf12: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc280 <orange_dsp::generated_condensed::update+0x6b0>
    bf16: ee00 fb01    	vmla.f64	d15, d0, d1
    bf1a: ed91 0a0e    	vldr	s0, [r1, #56]
    bf1e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bf22: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc288 <orange_dsp::generated_condensed::update+0x6b8>
    bf26: ee00 9b01    	vmla.f64	d9, d0, d1
    bf2a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc290 <orange_dsp::generated_condensed::update+0x6c0>
    bf2e: ee00 3b01    	vmla.f64	d3, d0, d1
    bf32: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc298 <orange_dsp::generated_condensed::update+0x6c8>
    bf36: ee00 4b01    	vmla.f64	d4, d0, d1
    bf3a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc2a0 <orange_dsp::generated_condensed::update+0x6d0>
    bf3e: ee00 ab01    	vmla.f64	d10, d0, d1
    bf42: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc2a8 <orange_dsp::generated_condensed::update+0x6d8>
    bf46: ee00 bb01    	vmla.f64	d11, d0, d1
    bf4a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc2b0 <orange_dsp::generated_condensed::update+0x6e0>
    bf4e: ee00 cb01    	vmla.f64	d12, d0, d1
    bf52: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc2b8 <orange_dsp::generated_condensed::update+0x6e8>
    bf56: ee00 db01    	vmla.f64	d13, d0, d1
    bf5a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc2c0 <orange_dsp::generated_condensed::update+0x6f0>
    bf5e: ee00 eb01    	vmla.f64	d14, d0, d1
    bf62: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc2c8 <orange_dsp::generated_condensed::update+0x6f8>
    bf66: ee00 fb01    	vmla.f64	d15, d0, d1
    bf6a: ed92 0a03    	vldr	s0, [r2, #12]
    bf6e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bf72: ed9f 1bd7    	vldr	d1, [pc, #860]          @ 0xc2d0 <orange_dsp::generated_condensed::update+0x700>
    bf76: ed8d 3b1c    	vstr	d3, [sp, #112]
    bf7a: ee20 3b01    	vmul.f64	d3, d0, d1
    bf7e: ed92 1a02    	vldr	s2, [r2, #8]
    bf82: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    bf86: ed8d 2b26    	vstr	d2, [sp, #152]
    bf8a: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xc2d8 <orange_dsp::generated_condensed::update+0x708>
    bf8e: ee01 3b02    	vmla.f64	d3, d1, d2
    bf92: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xc2e0 <orange_dsp::generated_condensed::update+0x710>
    bf96: ed8d 3b24    	vstr	d3, [sp, #144]
    bf9a: ee20 3b02    	vmul.f64	d3, d0, d2
    bf9e: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xc2e8 <orange_dsp::generated_condensed::update+0x718>
    bfa2: ee01 3b02    	vmla.f64	d3, d1, d2
    bfa6: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xc2f0 <orange_dsp::generated_condensed::update+0x720>
    bfaa: ed8d 3b22    	vstr	d3, [sp, #136]
    bfae: ee20 3b02    	vmul.f64	d3, d0, d2
    bfb2: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xc2f8 <orange_dsp::generated_condensed::update+0x728>
    bfb6: ee01 3b02    	vmla.f64	d3, d1, d2
    bfba: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xc300 <orange_dsp::generated_condensed::update+0x730>
    bfbe: ed8d 3b20    	vstr	d3, [sp, #128]
    bfc2: ee20 3b02    	vmul.f64	d3, d0, d2
    bfc6: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xc308 <orange_dsp::generated_condensed::update+0x738>
    bfca: ee01 3b02    	vmla.f64	d3, d1, d2
    bfce: f000 b99f    	b.w	0xc310 <orange_dsp::generated_condensed::update+0x740> @ imm = #0x33e
    bfd2: bf00         	nop
    bfd4: bf00         	nop
    bfd6: bf00         	nop
    bfd8: 00 00 00 00  	.word	0x00000000
    bfdc: 00 00 00 00  	.word	0x00000000
    bfe0: c1 5d e1 c9  	.word	0xc9e15dc1
    bfe4: 86 54 e5 3f  	.word	0x3fe55486
    bfe8: a9 0f 6b 00  	.word	0x006b0fa9
    bfec: 3e 31 92 bf  	.word	0xbf92313e
    bff0: a2 48 2a 74  	.word	0x742a48a2
    bff4: 54 ba e4 3f  	.word	0x3fe4ba54
    bff8: 00 60 41 1f  	.word	0x1f416000
    bffc: 45 49 27 bf  	.word	0xbf274945
    c000: 1a 5d 10 11  	.word	0x11105d1a
    c004: ce 53 e5 3f  	.word	0x3fe553ce
    c008: 46 6c 1c 77  	.word	0x771c6c46
    c00c: d3 64 5c bf  	.word	0xbf5c64d3
    c010: 80 0d 59 22  	.word	0x22590d80
    c014: 9f d9 b8 be  	.word	0xbeb8d99f
    c018: b0 e5 93 25  	.word	0x2593e5b0
    c01c: 2e 54 e5 3f  	.word	0x3fe5542e
    c020: 00 60 e7 86  	.word	0x86e76000
    c024: ec 07 ec 3e  	.word	0x3eec07ec
    c028: 00 f0 f8 21  	.word	0x21f8f000
    c02c: c8 2c 12 bf  	.word	0xbf122cc8
    c030: 3d 6e 12 0b  	.word	0x0b126e3d
    c034: a1 53 e5 3f  	.word	0x3fe553a1
    c038: 00 80 77 22  	.word	0x22778000
    c03c: 7a ac 2b 3f  	.word	0x3f2bac7a
    c040: 00 60 f5 32  	.word	0x32f56000
    c044: 2c 43 1b 3f  	.word	0x3f1b432c
    c048: 06 42 bd ec  	.word	0xecbd4206
    c04c: 6c ee e0 3f  	.word	0x3fe0ee6c
    c050: 75 22 80 1e  	.word	0x1e802275
    c054: ff ca ba 3f  	.word	0x3fbacaff
    c058: a3 83 c9 c1  	.word	0xc1c983a3
    c05c: 1d 54 e5 3f  	.word	0x3fe5541d
    c060: 00 ac c1 aa  	.word	0xaac1ac00
    c064: b7 a1 1d 3f  	.word	0x3f1da1b7
    c068: 00 8f fc e0  	.word	0xe0fc8f00
    c06c: bb 3a 58 bf  	.word	0xbf583abb
    c070: 80 c5 13 c0  	.word	0xc013c580
    c074: 2a 6f 52 3f  	.word	0x3f526f2a
    c078: 1a c8 c7 76  	.word	0x76c7c81a
    c07c: 6e b2 14 bf  	.word	0xbf14b26e
    c080: e2 63 27 22  	.word	0x222763e2
    c084: 1a 34 1b 3f  	.word	0x3f1b341a
    c088: 00 00 77 9e  	.word	0x9e770000
    c08c: d4 83 d1 be  	.word	0xbed183d4
    c090: 00 80 54 bc  	.word	0xbc548000
    c094: c7 a6 ca 3e  	.word	0x3ecaa6c7
    c098: 78 c9 65 d2  	.word	0xd265c978
    c09c: fb aa 81 bf  	.word	0xbf81aafb
    c0a0: 38 4b 1c 74  	.word	0x741c4b38
    c0a4: 5b e2 7a 3f  	.word	0x3f7ae25b
    c0a8: 00 a8 b7 3b  	.word	0x3bb7a800
    c0ac: a0 24 e9 be  	.word	0xbee924a0
    c0b0: 00 b0 3a 3d  	.word	0x3d3ab000
    c0b4: 0e 86 f0 3e  	.word	0x3ef0860e
    c0b8: 80 45 eb ca  	.word	0xcaeb4580
    c0bc: d6 b8 28 bf  	.word	0xbf28b8d6
    c0c0: 40 1e 97 40  	.word	0x40971e40
    c0c4: 1c cf 22 3f  	.word	0x3f22cf1c
    c0c8: 00 80 9e 71  	.word	0x719e8000
    c0cc: 3d 11 ca be  	.word	0xbeca113d
    c0d0: 00 00 cc 39  	.word	0x39cc0000
    c0d4: 23 d5 c3 3e  	.word	0x3ec3d523
    c0d8: 94 54 5e e4  	.word	0xe45e5494
    c0dc: 65 da e0 3f  	.word	0x3fe0da65
    c0e0: 00 d0 32 e7  	.word	0xe732d000
    c0e4: 2f 62 23 bf  	.word	0xbf23622f
    c0e8: b0 9a 2c 49  	.word	0x492c9ab0
    c0ec: 0a 30 e5 3f  	.word	0x3fe5300a
    c0f0: 6a 59 88 8d  	.word	0x8d88596a
    c0f4: ec 13 1b 3f  	.word	0x3f1b13ec
    c0f8: 00 80 a9 db  	.word	0xdba98000
    c0fc: 1c 6f d1 be  	.word	0xbed16f1c
    c100: 70 a7 27 c0  	.word	0xc027a770
    c104: 15 96 81 bf  	.word	0xbf819615
    c108: 00 10 7b a9  	.word	0xa97b1000
    c10c: 82 72 f0 3e  	.word	0x3ef07282
    c110: 80 84 35 a4  	.word	0xa4358480
    c114: 98 9b 28 bf  	.word	0xbf289b98
    c118: 00 00 11 e3  	.word	0xe3110000
    c11c: 67 f2 c9 be  	.word	0xbec9f267
    c120: 7f 02 92 0b  	.word	0x0b92027f
    c124: f9 a6 d7 bf  	.word	0xbfd7a6f9
    c128: 00 70 27 22  	.word	0x22277000
    c12c: 1a 34 1b 3f  	.word	0x3f1b341a
    c130: 00 37 75 d8  	.word	0xd8753700
    c134: 73 ec 50 3f  	.word	0x3f50ec73
    c138: f9 c7 6f 0d  	.word	0x0d6fc7f9
    c13c: d1 52 e5 3f  	.word	0x3fe552d1
    c140: 00 c0 70 c7  	.word	0xc770c000
    c144: ac e2 f3 be  	.word	0xbef3e2ac
    c148: b8 ba 9c 87  	.word	0x879cbab8
    c14c: 20 0f a4 bf  	.word	0xbfa40f20
    c150: 00 58 ad cf  	.word	0xcfad5800
    c154: 8d c2 12 3f  	.word	0x3f12c28d
    c158: 00 67 c9 53  	.word	0x53c96700
    c15c: 63 11 4c bf  	.word	0xbf4c1163
    c160: 00 00 01 7a  	.word	0x7a010000
    c164: 66 98 ed be  	.word	0xbeed9866
    c168: 49 ec 9f 20  	.word	0x209fec49
    c16c: fa 74 8e 3f  	.word	0x3f8e74fa
    c170: 00 b8 a6 9d  	.word	0x9da6b800
    c174: d4 83 d1 be  	.word	0xbed183d4
    c178: 00 0a 5f 13  	.word	0x135f0a00
    c17c: e4 ca 05 bf  	.word	0xbf05cae4
    c180: 78 b8 70 c7  	.word	0xc770b878
    c184: ac e2 f3 be  	.word	0xbef3e2ac
    c188: 5b ad 92 3c  	.word	0x3c92ad5b
    c18c: 15 55 e5 3f  	.word	0x3fe55515
    c190: 00 25 a5 be  	.word	0xbea52500
    c194: 02 2a b0 bf  	.word	0xbfb02a02
    c198: 00 f8 5d c6  	.word	0xc65df800
    c19c: 07 3c 1e 3f  	.word	0x3f1e3c07
    c1a0: 40 ea 5d 38  	.word	0x385dea40
    c1a4: 29 9e 56 bf  	.word	0xbf569e29
    c1a8: 00 c0 dc 8e  	.word	0x8edcc000
    c1ac: 3f d9 f7 be  	.word	0xbef7d93f
    c1b0: 47 e4 bd ce  	.word	0xcebde447
    c1b4: 0e 2b 69 3f  	.word	0x3f692b0e
    c1b8: 00 40 8f da  	.word	0xda8f4000
    c1bc: 74 f2 ac be  	.word	0xbeacf274
    c1c0: 00 a7 84 8f  	.word	0x8f84a700
    c1c4: 22 02 e2 be  	.word	0xbee20222
    c1c8: 1f bc 4a 33  	.word	0x334abc1f
    c1cc: b2 6e d0 be  	.word	0xbed06eb2
    c1d0: 00 fc fb 7d  	.word	0x7dfbfc00
    c1d4: b7 7b da be  	.word	0xbeda7bb7
    c1d8: 8f e3 b2 48  	.word	0x48b2e38f
    c1dc: 3c e9 e2 3f  	.word	0x3fe2e93c
    c1e0: 00 e4 71 6e  	.word	0x6e71e400
    c1e4: 56 32 23 3f  	.word	0x3f233256
    c1e8: 00 05 e0 bc  	.word	0xbce00500
    c1ec: 17 92 30 bf  	.word	0xbf309217
    c1f0: 00 80 de 1d  	.word	0x1dde8000
    c1f4: 5b d0 f4 be  	.word	0xbef4d05b
    c1f8: f4 24 ee df  	.word	0xdfee24f4
    c1fc: 96 e5 64 bf  	.word	0xbf64e596
    c200: 00 60 1c e5  	.word	0xe51c6000
    c204: ce 08 a8 3e  	.word	0x3ea808ce
    c208: 00 e0 2c 34  	.word	0x342ce000
    c20c: 79 e7 dd 3e  	.word	0x3edde779
    c210: e7 ed e4 73  	.word	0x73e4ede7
    c214: 88 49 cb 3e  	.word	0x3ecb4988
    c218: 00 54 55 ed  	.word	0xed555400
    c21c: 1c fd d5 3e  	.word	0x3ed5fd1c
    c220: 20 1d 0d ea  	.word	0xea0d1d20
    c224: de 0a b1 3f  	.word	0x3fb10ade
    c228: 0e cf 4c 9e  	.word	0x9e4ccf0e
    c22c: ea 50 e5 3f  	.word	0x3fe550ea
    c230: 90 b1 c1 c8  	.word	0xc8c1b190
    c234: ce b5 51 3f  	.word	0x3f51b5ce
    c238: 00 c0 f7 85  	.word	0x85f7c000
    c23c: e2 5d f8 be  	.word	0xbef85de2
    c240: cf 1e ec 24  	.word	0x24ec1ecf
    c244: 9c 63 8d 3f  	.word	0x3f8d639c
    c248: 00 80 67 df  	.word	0xdf678000
    c24c: 9f e6 d0 be  	.word	0xbed0e69f
    c250: 00 ba a2 95  	.word	0x95a2ba00
    c254: 4a 07 05 bf  	.word	0xbf05074a
    c258: 5f e8 1a 49  	.word	0x491ae85f
    c25c: 31 30 f3 be  	.word	0xbef33031
    c260: 00 bc c0 af  	.word	0xafc0bc00
    c264: ba ec fe be  	.word	0xbefeecba
    c268: 40 2a 3d 87  	.word	0x873d2a40
    c26c: 32 a8 ab bf  	.word	0xbfaba832
    c270: 00 58 47 7f  	.word	0x7f475800
    c274: c7 a5 40 3f  	.word	0x3f40a5c7
    c278: c6 60 4c 9c  	.word	0x9c4c60c6
    c27c: 3d 43 e5 3f  	.word	0x3fe5433d
    c280: 00 80 ea 14  	.word	0x14ea8000
    c284: fe 54 f5 3e  	.word	0x3ef554fe
    c288: 30 f8 ed 0a  	.word	0x0aedf830
    c28c: b2 7b 40 3f  	.word	0x3f407bb2
    c290: 00 d0 c0 ef  	.word	0xefc0d000
    c294: 43 f5 82 be  	.word	0xbe82f543
    c298: 00 44 9d fc  	.word	0xfc9d4400
    c29c: 8c 96 b7 be  	.word	0xbeb7968c
    c2a0: 33 60 a3 fb  	.word	0xfba36033
    c2a4: 1b 86 a5 be  	.word	0xbea5861b
    c2a8: 00 9e 73 39  	.word	0x39739e00
    c2ac: 2e 58 b1 be  	.word	0xbeb1582e
    c2b0: a7 94 9b fb  	.word	0xfb9b94a7
    c2b4: 6d 7a 82 bf  	.word	0xbf827a6d
    c2b8: 00 2c 02 86  	.word	0x86022c00
    c2bc: e2 5d f8 be  	.word	0xbef85de2
    c2c0: 40 eb 05 06  	.word	0x0605eb40
    c2c4: 91 b1 06 3f  	.word	0x3f06b191
    c2c8: 03 bd 02 e5  	.word	0xe502bd03
    c2cc: fa 54 e5 3f  	.word	0x3fe554fa
    c2d0: 76 43 71 a5  	.word	0xa5714376
    c2d4: f8 73 e2 bf  	.word	0xbfe273f8
    c2d8: 90 85 b9 69  	.word	0x69b98590
    c2dc: a2 a1 ce bf  	.word	0xbfcea1a2
    c2e0: 00 70 07 91  	.word	0x91077000
    c2e4: 41 39 25 3f  	.word	0x3f253941
    c2e8: 00 80 10 04  	.word	0x04108000
    c2ec: 83 9d 11 3f  	.word	0x3f119d83
    c2f0: 00 b8 93 75  	.word	0x7593b800
    c2f4: 30 68 5a 3f  	.word	0x3f5a6830
    c2f8: 00 5c 9c 19  	.word	0x199c5c00
    c2fc: d8 ea 45 3f  	.word	0x3f45ead8
    c300: 28 b4 ed 8f  	.word	0x8fedb428
    c304: 1e 56 3c bf  	.word	0xbf3c561e
    c308: 00 80 d1 f5  	.word	0xf5d18000
    c30c: d4 ff 33 3f  	.word	0x3f33ffd4
    c310: ed9f 2beb    	vldr	d2, [pc, #940]          @ 0xc6c0 <orange_dsp::generated_condensed::update+0xaf0>
    c314: ed8d 3b1e    	vstr	d3, [sp, #120]
    c318: ee20 3b02    	vmul.f64	d3, d0, d2
    c31c: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xc6c8 <orange_dsp::generated_condensed::update+0xaf8>
    c320: ee01 3b02    	vmla.f64	d3, d1, d2
    c324: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xc6d0 <orange_dsp::generated_condensed::update+0xb00>
    c328: ed8d 3b18    	vstr	d3, [sp, #96]
    c32c: ee20 3b02    	vmul.f64	d3, d0, d2
    c330: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xc6d8 <orange_dsp::generated_condensed::update+0xb08>
    c334: ee01 3b02    	vmla.f64	d3, d1, d2
    c338: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xc6e0 <orange_dsp::generated_condensed::update+0xb10>
    c33c: ed8d 3b16    	vstr	d3, [sp, #88]
    c340: ee20 3b02    	vmul.f64	d3, d0, d2
    c344: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xc6e8 <orange_dsp::generated_condensed::update+0xb18>
    c348: ee01 3b02    	vmla.f64	d3, d1, d2
    c34c: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xc6f0 <orange_dsp::generated_condensed::update+0xb20>
    c350: ed8d 3b14    	vstr	d3, [sp, #80]
    c354: ee20 3b02    	vmul.f64	d3, d0, d2
    c358: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xc6f8 <orange_dsp::generated_condensed::update+0xb28>
    c35c: ee01 3b02    	vmla.f64	d3, d1, d2
    c360: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xc700 <orange_dsp::generated_condensed::update+0xb30>
    c364: ee20 2b02    	vmul.f64	d2, d0, d2
    c368: ed9f 0be7    	vldr	d0, [pc, #924]          @ 0xc708 <orange_dsp::generated_condensed::update+0xb38>
    c36c: ee01 2b00    	vmla.f64	d2, d1, d0
    c370: ed91 0a10    	vldr	s0, [r1, #64]
    c374: ed8d 2b10    	vstr	d2, [sp, #64]
    c378: ed91 2a0f    	vldr	s4, [r1, #60]
    c37c: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    c380: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c384: ed8d 3b12    	vstr	d3, [sp, #72]
    c388: ed9f 0be1    	vldr	d0, [pc, #900]          @ 0xc710 <orange_dsp::generated_condensed::update+0xb40>
    c38c: ed9f 3be2    	vldr	d3, [pc, #904]          @ 0xc718 <orange_dsp::generated_condensed::update+0xb48>
    c390: ee21 0b00    	vmul.f64	d0, d1, d0
    c394: ee02 0b03    	vmla.f64	d0, d2, d3
    c398: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xc728 <orange_dsp::generated_condensed::update+0xb58>
    c39c: ee21 1b03    	vmul.f64	d1, d1, d3
    c3a0: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xc730 <orange_dsp::generated_condensed::update+0xb60>
    c3a4: ee02 1b03    	vmla.f64	d1, d2, d3
    c3a8: ed91 2a12    	vldr	s4, [r1, #72]
    c3ac: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c3b0: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xc740 <orange_dsp::generated_condensed::update+0xb70>
    c3b4: ed8d 5b28    	vstr	d5, [sp, #160]
    c3b8: ee22 5b03    	vmul.f64	d5, d2, d3
    c3bc: ed91 3a11    	vldr	s6, [r1, #68]
    c3c0: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    c3c4: ed8d 4b1a    	vstr	d4, [sp, #104]
    c3c8: ed9f 4bdf    	vldr	d4, [pc, #892]          @ 0xc748 <orange_dsp::generated_condensed::update+0xb78>
    c3cc: ee03 5b04    	vmla.f64	d5, d3, d4
    c3d0: ed9f 4be3    	vldr	d4, [pc, #908]          @ 0xc760 <orange_dsp::generated_condensed::update+0xb90>
    c3d4: ee23 7b04    	vmul.f64	d7, d3, d4
    c3d8: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xc768 <orange_dsp::generated_condensed::update+0xb98>
    c3dc: ee02 7b03    	vmla.f64	d7, d2, d3
    c3e0: ee38 3b00    	vadd.f64	d3, d8, d0
    c3e4: ed92 0a04    	vldr	s0, [r2, #16]
    c3e8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c3ec: ed9f 2bcc    	vldr	d2, [pc, #816]          @ 0xc720 <orange_dsp::generated_condensed::update+0xb50>
    c3f0: ee00 3b02    	vmla.f64	d3, d0, d2
    c3f4: ee38 2b01    	vadd.f64	d2, d8, d1
    c3f8: ed9f 1bcf    	vldr	d1, [pc, #828]          @ 0xc738 <orange_dsp::generated_condensed::update+0xb68>
    c3fc: ee00 2b01    	vmla.f64	d2, d0, d1
    c400: ed92 1a05    	vldr	s2, [r2, #20]
    c404: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    c408: ed8d 2b0c    	vstr	d2, [sp, #48]
    c40c: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xc750 <orange_dsp::generated_condensed::update+0xb80>
    c410: ed8d 3b0e    	vstr	d3, [sp, #56]
    c414: ee21 3b02    	vmul.f64	d3, d1, d2
    c418: ed9f 2bcf    	vldr	d2, [pc, #828]          @ 0xc758 <orange_dsp::generated_condensed::update+0xb88>
    c41c: ee00 3b02    	vmla.f64	d3, d0, d2
    c420: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xc770 <orange_dsp::generated_condensed::update+0xba0>
    c424: ed8d 3b0a    	vstr	d3, [sp, #40]
    c428: ee21 3b02    	vmul.f64	d3, d1, d2
    c42c: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xc778 <orange_dsp::generated_condensed::update+0xba8>
    c430: ee00 3b02    	vmla.f64	d3, d0, d2
    c434: ed91 0a14    	vldr	s0, [r1, #80]
    c438: ed8d 3b06    	vstr	d3, [sp, #24]
    c43c: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    c440: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0xc780 <orange_dsp::generated_condensed::update+0xbb0>
    c444: ee23 2b00    	vmul.f64	d2, d3, d0
    c448: ed91 0a13    	vldr	s0, [r1, #76]
    c44c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c450: ed9f 4bcd    	vldr	d4, [pc, #820]          @ 0xc788 <orange_dsp::generated_condensed::update+0xbb8>
    c454: ee00 2b04    	vmla.f64	d2, d0, d4
    c458: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xc798 <orange_dsp::generated_condensed::update+0xbc8>
    c45c: ee20 0b04    	vmul.f64	d0, d0, d4
    c460: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xc7a0 <orange_dsp::generated_condensed::update+0xbd0>
    c464: ee03 0b04    	vmla.f64	d0, d3, d4
    c468: ed92 3a06    	vldr	s6, [r2, #24]
    c46c: ed8d 5b08    	vstr	d5, [sp, #32]
    c470: eeb0 5b48    	vmov.f64	d5, d8
    c474: eeb7 8ac3    	vcvt.f64.f32	d8, s6
    c478: ed9f 4bc5    	vldr	d4, [pc, #788]          @ 0xc790 <orange_dsp::generated_condensed::update+0xbc0>
    c47c: ed8d 6b2a    	vstr	d6, [sp, #168]
    c480: ee21 6b04    	vmul.f64	d6, d1, d4
    c484: ee08 6b44    	vmls.f64	d6, d8, d4
    c488: ed9f 4bc7    	vldr	d4, [pc, #796]          @ 0xc7a8 <orange_dsp::generated_condensed::update+0xbd8>
    c48c: ee21 3b04    	vmul.f64	d3, d1, d4
    c490: ee08 3b44    	vmls.f64	d3, d8, d4
    c494: ed91 4a15    	vldr	s8, [r1, #84]
    c498: eeb7 8ac4    	vcvt.f64.f32	d8, s8
    c49c: ed9f 1bc4    	vldr	d1, [pc, #784]          @ 0xc7b0 <orange_dsp::generated_condensed::update+0xbe0>
    c4a0: eeb0 4b45    	vmov.f64	d4, d5
    c4a4: ee08 4b01    	vmla.f64	d4, d8, d1
    c4a8: ed9f 1b81    	vldr	d1, [pc, #516]          @ 0xc6b0 <orange_dsp::generated_condensed::update+0xae0>
    c4ac: ee35 8b01    	vadd.f64	d8, d5, d1
    c4b0: eeb0 1b45    	vmov.f64	d1, d5
    c4b4: ee35 9b09    	vadd.f64	d9, d5, d9
    c4b8: ed9d 5b1c    	vldr	d5, [sp, #112]
    c4bc: ee31 5b05    	vadd.f64	d5, d1, d5
    c4c0: ed8d 5b1c    	vstr	d5, [sp, #112]
    c4c4: ed9d 5b1a    	vldr	d5, [sp, #104]
    c4c8: ee31 0b00    	vadd.f64	d0, d1, d0
    c4cc: ee31 5b05    	vadd.f64	d5, d1, d5
    c4d0: ed8d 0b00    	vstr	d0, [sp]
    c4d4: ed91 0a16    	vldr	s0, [r1, #88]
    c4d8: ed8d 5b1a    	vstr	d5, [sp, #104]
    c4dc: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c4e0: ed9d 5b08    	vldr	d5, [sp, #32]
    c4e4: ee31 2b02    	vadd.f64	d2, d1, d2
    c4e8: ed8d 2b02    	vstr	d2, [sp, #8]
    c4ec: ed9f 2bb4    	vldr	d2, [pc, #720]          @ 0xc7c0 <orange_dsp::generated_condensed::update+0xbf0>
    c4f0: ee31 5b05    	vadd.f64	d5, d1, d5
    c4f4: ed8d 5b08    	vstr	d5, [sp, #32]
    c4f8: ee31 5b07    	vadd.f64	d5, d1, d7
    c4fc: eeb0 7b41    	vmov.f64	d7, d1
    c500: ee00 7b02    	vmla.f64	d7, d0, d2
    c504: ed92 0a07    	vldr	s0, [r2, #28]
    c508: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c50c: ed9f 2baa    	vldr	d2, [pc, #680]          @ 0xc7b8 <orange_dsp::generated_condensed::update+0xbe8>
    c510: ee00 4b02    	vmla.f64	d4, d0, d2
    c514: ed9f 2bac    	vldr	d2, [pc, #688]          @ 0xc7c8 <orange_dsp::generated_condensed::update+0xbf8>
    c518: ee00 7b02    	vmla.f64	d7, d0, d2
    c51c: ed92 0a00    	vldr	s0, [r2]
    c520: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c524: ed9f 2b64    	vldr	d2, [pc, #400]          @ 0xc6b8 <orange_dsp::generated_condensed::update+0xae8>
    c528: ee31 ab0a    	vadd.f64	d10, d1, d10
    c52c: ee31 bb0b    	vadd.f64	d11, d1, d11
    c530: ee31 cb0c    	vadd.f64	d12, d1, d12
    c534: ee31 db0d    	vadd.f64	d13, d1, d13
    c538: ee31 eb0e    	vadd.f64	d14, d1, d14
    c53c: ee31 fb0f    	vadd.f64	d15, d1, d15
    c540: ed9d 1b2c    	vldr	d1, [sp, #176]
    c544: ee00 1b02    	vmla.f64	d1, d0, d2
    c548: ee38 0b00    	vadd.f64	d0, d8, d0
    c54c: ed8d 5b04    	vstr	d5, [sp, #16]
    c550: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c554: ed80 0a00    	vstr	s0, [r0]
    c558: ed9d 2b24    	vldr	d2, [sp, #144]
    c55c: ed9d 5b22    	vldr	d5, [sp, #136]
    c560: ed9d 8b1c    	vldr	d8, [sp, #112]
    c564: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    c568: ed80 0a01    	vstr	s0, [r0, #4]
    c56c: ed9d 0b2e    	vldr	d0, [sp, #184]
    c570: ee39 2b02    	vadd.f64	d2, d9, d2
    c574: ee38 8b05    	vadd.f64	d8, d8, d5
    c578: ed9d 5b20    	vldr	d5, [sp, #128]
    c57c: ed9d 9b1a    	vldr	d9, [sp, #104]
    c580: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c584: ed80 0a02    	vstr	s0, [r0, #8]
    c588: ee39 9b05    	vadd.f64	d9, d9, d5
    c58c: ed9d 5b1e    	vldr	d5, [sp, #120]
    c590: ed9d 0b2a    	vldr	d0, [sp, #168]
    c594: ee3a ab05    	vadd.f64	d10, d10, d5
    c598: ed9d 5b18    	vldr	d5, [sp, #96]
    c59c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c5a0: ed80 0a03    	vstr	s0, [r0, #12]
    c5a4: ed9d 0b28    	vldr	d0, [sp, #160]
    c5a8: ee3b bb05    	vadd.f64	d11, d11, d5
    c5ac: ed9d 5b16    	vldr	d5, [sp, #88]
    c5b0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c5b4: ed80 0a04    	vstr	s0, [r0, #16]
    c5b8: ee3c cb05    	vadd.f64	d12, d12, d5
    c5bc: ed9d 5b14    	vldr	d5, [sp, #80]
    c5c0: ed9d 0b26    	vldr	d0, [sp, #152]
    c5c4: ee3d db05    	vadd.f64	d13, d13, d5
    c5c8: ed9d 5b12    	vldr	d5, [sp, #72]
    c5cc: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c5d0: ed80 0a05    	vstr	s0, [r0, #20]
    c5d4: eeb7 0bc2    	vcvt.f32.f64	s0, d2
    c5d8: ed80 0a06    	vstr	s0, [r0, #24]
    c5dc: ee3e eb05    	vadd.f64	d14, d14, d5
    c5e0: ed9d 5b10    	vldr	d5, [sp, #64]
    c5e4: eeb7 0bc8    	vcvt.f32.f64	s0, d8
    c5e8: ed80 0a07    	vstr	s0, [r0, #28]
    c5ec: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    c5f0: ed80 0a08    	vstr	s0, [r0, #32]
    c5f4: ee3f 5b05    	vadd.f64	d5, d15, d5
    c5f8: eeb7 0bca    	vcvt.f32.f64	s0, d10
    c5fc: ed80 0a09    	vstr	s0, [r0, #36]
    c600: ed8d 5b24    	vstr	d5, [sp, #144]
    c604: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    c608: ed80 0a0a    	vstr	s0, [r0, #40]
    c60c: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    c610: ed80 0a0b    	vstr	s0, [r0, #44]
    c614: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    c618: ed80 0a0c    	vstr	s0, [r0, #48]
    c61c: eeb7 0bce    	vcvt.f32.f64	s0, d14
    c620: ed80 0a0d    	vstr	s0, [r0, #52]
    c624: ed9d 0b24    	vldr	d0, [sp, #144]
    c628: ed9d 5b0a    	vldr	d5, [sp, #40]
    c62c: ed9d fb08    	vldr	d15, [sp, #32]
    c630: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c634: ed80 0a0e    	vstr	s0, [r0, #56]
    c638: ed9d 0b0e    	vldr	d0, [sp, #56]
    c63c: ee3f 5b05    	vadd.f64	d5, d15, d5
    c640: ed8d 5b2c    	vstr	d5, [sp, #176]
    c644: ed9d 5b06    	vldr	d5, [sp, #24]
    c648: ed9d fb04    	vldr	d15, [sp, #16]
    c64c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c650: ed80 0a0f    	vstr	s0, [r0, #60]
    c654: ed9d 0b0c    	vldr	d0, [sp, #48]
    c658: ee3f 5b05    	vadd.f64	d5, d15, d5
    c65c: ed9d fb02    	vldr	d15, [sp, #8]
    c660: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c664: ed80 0a10    	vstr	s0, [r0, #64]
    c668: ee3f 6b06    	vadd.f64	d6, d15, d6
    c66c: ed9d fb00    	vldr	d15, [sp]
    c670: ed9d 0b2c    	vldr	d0, [sp, #176]
    c674: ee3f 3b03    	vadd.f64	d3, d15, d3
    c678: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c67c: ed80 0a11    	vstr	s0, [r0, #68]
    c680: eeb7 0bc5    	vcvt.f32.f64	s0, d5
    c684: ed80 0a12    	vstr	s0, [r0, #72]
    c688: eeb7 0bc6    	vcvt.f32.f64	s0, d6
    c68c: ed80 0a13    	vstr	s0, [r0, #76]
    c690: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    c694: ed80 0a14    	vstr	s0, [r0, #80]
    c698: eeb7 0bc4    	vcvt.f32.f64	s0, d4
    c69c: ed80 0a15    	vstr	s0, [r0, #84]
    c6a0: eeb7 0bc7    	vcvt.f32.f64	s0, d7
    c6a4: ed80 0a16    	vstr	s0, [r0, #88]
    c6a8: b030         	add	sp, #0xc0
    c6aa: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    c6ae: bd80         	pop	{r7, pc}
    c6b0: 00 00 00 00  	.word	0x00000000
    c6b4: 00 00 00 00  	.word	0x00000000
    c6b8: 00 e0 35 df  	.word	0xdf35e000
    c6bc: 12 5d 23 3f  	.word	0x3f235d12
    c6c0: 00 40 b2 d2  	.word	0xd2b24000
    c6c4: 8e 3e f2 3e  	.word	0x3ef23e8e
    c6c8: 00 40 3c 73  	.word	0x733c4000
    c6cc: b9 32 02 3f  	.word	0x3f0232b9
    c6d0: 08 f7 83 70  	.word	0x7083f708
    c6d4: 57 67 a2 3f  	.word	0x3fa26757
    c6d8: 70 97 28 9d  	.word	0x9d289770
    c6dc: 67 5b b2 3f  	.word	0x3fb25b67
    c6e0: 00 18 07 f2  	.word	0xf2071800
    c6e4: 36 36 11 bf  	.word	0xbf113636
    c6e8: 00 2c 41 07  	.word	0x07412c00
    c6ec: 0d 2b 21 bf  	.word	0xbf212b0d
    c6f0: 00 11 6e ab  	.word	0xab6e1100
    c6f4: 66 c0 49 3f  	.word	0x3f49c066
    c6f8: 00 57 e3 c4  	.word	0xc4e35700
    c6fc: b2 af 59 3f  	.word	0x3f59afb2
    c700: 00 00 53 f5  	.word	0xf5530000
    c704: 24 27 eb 3e  	.word	0x3eeb2724
    c708: 00 00 83 5f  	.word	0x5f830000
    c70c: 88 15 fb 3e  	.word	0x3efb1588
    c710: 30 b5 9f 60  	.word	0x609fb530
    c714: ab e5 d3 3f  	.word	0x3fd3e5ab
    c718: 3b cc c8 6a  	.word	0x6ac8cc3b
    c71c: c2 ed a6 3f  	.word	0x3fa6edc2
    c720: c8 8f ef 10  	.word	0x10ef8fc8
    c724: 81 d8 dd bf  	.word	0xbfddd881
    c728: 28 3f 82 e4  	.word	0xe4823f28
    c72c: 69 54 e5 3f  	.word	0x3fe55469
    c730: bf 80 ca 02  	.word	0x02ca80bf
    c734: ca a2 ed 3e  	.word	0x3eeda2ca
    c738: e4 27 14 ca  	.word	0xca1427e4
    c73c: 93 12 26 3f  	.word	0x3f261293
    c740: f7 82 13 a7  	.word	0xa71382f7
    c744: 09 7c d7 bf  	.word	0xbfd77c09
    c748: 7b 84 3a 2a  	.word	0x2a3a847b
    c74c: 5a 5f c0 3f  	.word	0x3fc05f5a
    c750: cc 5e bc b6  	.word	0xb6bc5ecc
    c754: a2 bc e5 bf  	.word	0xbfe5bca2
    c758: 15 be b6 e5  	.word	0xe5b6be15
    c75c: 6d 7e c0 3f  	.word	0x3fc07e6d
    c760: 00 90 99 b0  	.word	0xb0999000
    c764: 0f 3d 03 bf  	.word	0xbf033d0f
    c768: 36 0c 56 03  	.word	0x03560c36
    c76c: a1 54 e5 3f  	.word	0x3fe554a1
    c770: 00 60 f1 d0  	.word	0xd0f16000
    c774: 95 1e 18 bf  	.word	0xbf181e95
    c778: 00 70 fc 18  	.word	0x18fc7000
    c77c: 94 61 03 bf  	.word	0xbf036194
    c780: d2 4f d6 fa  	.word	0xfad64fd2
    c784: 97 86 f2 be  	.word	0xbef28697
    c788: b5 2c 68 6e  	.word	0x6e682cb5
    c78c: 31 53 e5 3f  	.word	0x3fe55331
    c790: 00 80 e7 1d  	.word	0x1de78000
    c794: d3 ae 39 3f  	.word	0x3f39aed3
    c798: 00 d8 8b f9  	.word	0xf98bd800
    c79c: 3d 28 27 bf  	.word	0xbf27283d
    c7a0: ca 9f ba 05  	.word	0x05ba9fca
    c7a4: 70 52 e5 3f  	.word	0x3fe55270
    c7a8: 00 e4 28 7b  	.word	0x7b28e400
    c7ac: 2e 5e 31 3f  	.word	0x3f315e2e
    c7b0: 5d ef 75 b1  	.word	0xb175ef5d
    c7b4: 41 55 e5 3f  	.word	0x3fe55541
    c7b8: 77 21 f7 18  	.word	0x18f72177
    c7bc: cf 75 ed 3e  	.word	0x3eed75cf
    c7c0: 21 8e 90 51  	.word	0x51908e21
    c7c4: b7 61 83 3f  	.word	0x3f8361b7
    c7c8: ab 9c 16 b4  	.word	0xb4169cab
    c7cc: b5 8b ef 3f  	.word	0x3fef8bb5

0000c7d0 <orange_dsp::generated_condensed48::update>:
    c7d0: b580         	push	{r7, lr}
    c7d2: 466f         	mov	r7, sp
    c7d4: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    c7d8: b0b0         	sub	sp, #0xc0
    c7da: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c7de: ed91 3a02    	vldr	s6, [r1, #8]
    c7e2: ed9f 1bfd    	vldr	d1, [pc, #1012]         @ 0xcbd8 <orange_dsp::generated_condensed48::update+0x408>
    c7e6: ed91 4a01    	vldr	s8, [r1, #4]
    c7ea: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    c7ee: ee20 8b01    	vmul.f64	d8, d0, d1
    c7f2: ed91 1a03    	vldr	s2, [r1, #12]
    c7f6: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    c7fa: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    c7fe: ed9f 0bf8    	vldr	d0, [pc, #992]          @ 0xcbe0 <orange_dsp::generated_condensed48::update+0x410>
    c802: ed9f 2bf9    	vldr	d2, [pc, #996]          @ 0xcbe8 <orange_dsp::generated_condensed48::update+0x418>
    c806: ed9f 5bfa    	vldr	d5, [pc, #1000]         @ 0xcbf0 <orange_dsp::generated_condensed48::update+0x420>
    c80a: ee21 2b02    	vmul.f64	d2, d1, d2
    c80e: ee03 2b05    	vmla.f64	d2, d3, d5
    c812: eeb0 5b48    	vmov.f64	d5, d8
    c816: ee04 5b00    	vmla.f64	d5, d4, d0
    c81a: ed9f 0bf7    	vldr	d0, [pc, #988]          @ 0xcbf8 <orange_dsp::generated_condensed48::update+0x428>
    c81e: ee23 3b00    	vmul.f64	d3, d3, d0
    c822: ed92 0a01    	vldr	s0, [r2, #4]
    c826: ed9f 4bf6    	vldr	d4, [pc, #984]          @ 0xcc00 <orange_dsp::generated_condensed48::update+0x430>
    c82a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c82e: ed8d 5b2c    	vstr	d5, [sp, #176]
    c832: ee38 5b02    	vadd.f64	d5, d8, d2
    c836: ed9f 2bf4    	vldr	d2, [pc, #976]          @ 0xcc08 <orange_dsp::generated_condensed48::update+0x438>
    c83a: ee01 3b04    	vmla.f64	d3, d1, d4
    c83e: ed91 4a04    	vldr	s8, [r1, #16]
    c842: ee00 5b02    	vmla.f64	d5, d0, d2
    c846: ed91 2a05    	vldr	s4, [r1, #20]
    c84a: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    c84e: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c852: ed8d 5b2e    	vstr	d5, [sp, #184]
    c856: ee38 6b03    	vadd.f64	d6, d8, d3
    c85a: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xcc10 <orange_dsp::generated_condensed48::update+0x440>
    c85e: ed9f 5bee    	vldr	d5, [pc, #952]          @ 0xcc18 <orange_dsp::generated_condensed48::update+0x448>
    c862: ee22 3b03    	vmul.f64	d3, d2, d3
    c866: ee04 3b05    	vmla.f64	d3, d4, d5
    c86a: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xcc20 <orange_dsp::generated_condensed48::update+0x450>
    c86e: ee38 5b03    	vadd.f64	d5, d8, d3
    c872: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xcc28 <orange_dsp::generated_condensed48::update+0x458>
    c876: ee24 3b03    	vmul.f64	d3, d4, d3
    c87a: ed9f 4bed    	vldr	d4, [pc, #948]          @ 0xcc30 <orange_dsp::generated_condensed48::update+0x460>
    c87e: ee00 6b01    	vmla.f64	d6, d0, d1
    c882: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xcc38 <orange_dsp::generated_condensed48::update+0x468>
    c886: ee02 3b04    	vmla.f64	d3, d2, d4
    c88a: ee00 5b01    	vmla.f64	d5, d0, d1
    c88e: ed9f 1bec    	vldr	d1, [pc, #944]          @ 0xcc40 <orange_dsp::generated_condensed48::update+0x470>
    c892: ee38 2b03    	vadd.f64	d2, d8, d3
    c896: ee00 2b01    	vmla.f64	d2, d0, d1
    c89a: ed91 0a07    	vldr	s0, [r1, #28]
    c89e: ed91 1a06    	vldr	s2, [r1, #24]
    c8a2: eeb7 fac0    	vcvt.f64.f32	d15, s0
    c8a6: ed9f 0be8    	vldr	d0, [pc, #928]          @ 0xcc48 <orange_dsp::generated_condensed48::update+0x478>
    c8aa: ee2f 9b00    	vmul.f64	d9, d15, d0
    c8ae: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    c8b2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcc50 <orange_dsp::generated_condensed48::update+0x480>
    c8b6: ee00 9b01    	vmla.f64	d9, d0, d1
    c8ba: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcc58 <orange_dsp::generated_condensed48::update+0x488>
    c8be: ee2f 3b01    	vmul.f64	d3, d15, d1
    c8c2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcc60 <orange_dsp::generated_condensed48::update+0x490>
    c8c6: ee00 3b01    	vmla.f64	d3, d0, d1
    c8ca: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcc68 <orange_dsp::generated_condensed48::update+0x498>
    c8ce: ee2f 4b01    	vmul.f64	d4, d15, d1
    c8d2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcc70 <orange_dsp::generated_condensed48::update+0x4a0>
    c8d6: ee00 4b01    	vmla.f64	d4, d0, d1
    c8da: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcc78 <orange_dsp::generated_condensed48::update+0x4a8>
    c8de: ee20 ab01    	vmul.f64	d10, d0, d1
    c8e2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcc80 <orange_dsp::generated_condensed48::update+0x4b0>
    c8e6: ee0f ab01    	vmla.f64	d10, d15, d1
    c8ea: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcc88 <orange_dsp::generated_condensed48::update+0x4b8>
    c8ee: ee2f bb01    	vmul.f64	d11, d15, d1
    c8f2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcc90 <orange_dsp::generated_condensed48::update+0x4c0>
    c8f6: ee00 bb01    	vmla.f64	d11, d0, d1
    c8fa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcc98 <orange_dsp::generated_condensed48::update+0x4c8>
    c8fe: ee2f cb01    	vmul.f64	d12, d15, d1
    c902: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcca0 <orange_dsp::generated_condensed48::update+0x4d0>
    c906: ee00 cb01    	vmla.f64	d12, d0, d1
    c90a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcca8 <orange_dsp::generated_condensed48::update+0x4d8>
    c90e: ee20 db01    	vmul.f64	d13, d0, d1
    c912: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xccb0 <orange_dsp::generated_condensed48::update+0x4e0>
    c916: ee0f db01    	vmla.f64	d13, d15, d1
    c91a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xccb8 <orange_dsp::generated_condensed48::update+0x4e8>
    c91e: ee2f eb01    	vmul.f64	d14, d15, d1
    c922: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xccc0 <orange_dsp::generated_condensed48::update+0x4f0>
    c926: ee00 eb01    	vmla.f64	d14, d0, d1
    c92a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xccc8 <orange_dsp::generated_condensed48::update+0x4f8>
    c92e: ee2f fb01    	vmul.f64	d15, d15, d1
    c932: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xccd0 <orange_dsp::generated_condensed48::update+0x500>
    c936: ee00 fb01    	vmla.f64	d15, d0, d1
    c93a: ed91 0a08    	vldr	s0, [r1, #32]
    c93e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c942: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xccd8 <orange_dsp::generated_condensed48::update+0x508>
    c946: ee00 9b01    	vmla.f64	d9, d0, d1
    c94a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcce0 <orange_dsp::generated_condensed48::update+0x510>
    c94e: ee00 3b01    	vmla.f64	d3, d0, d1
    c952: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcce8 <orange_dsp::generated_condensed48::update+0x518>
    c956: ee00 4b01    	vmla.f64	d4, d0, d1
    c95a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xccf0 <orange_dsp::generated_condensed48::update+0x520>
    c95e: ee00 ab01    	vmla.f64	d10, d0, d1
    c962: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xccf8 <orange_dsp::generated_condensed48::update+0x528>
    c966: ee00 bb01    	vmla.f64	d11, d0, d1
    c96a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcd00 <orange_dsp::generated_condensed48::update+0x530>
    c96e: ee00 cb01    	vmla.f64	d12, d0, d1
    c972: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcd08 <orange_dsp::generated_condensed48::update+0x538>
    c976: ee00 db01    	vmla.f64	d13, d0, d1
    c97a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcd10 <orange_dsp::generated_condensed48::update+0x540>
    c97e: ee00 eb01    	vmla.f64	d14, d0, d1
    c982: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcd18 <orange_dsp::generated_condensed48::update+0x548>
    c986: ee00 fb01    	vmla.f64	d15, d0, d1
    c98a: ed91 0a09    	vldr	s0, [r1, #36]
    c98e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c992: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcd20 <orange_dsp::generated_condensed48::update+0x550>
    c996: ee00 9b01    	vmla.f64	d9, d0, d1
    c99a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcd28 <orange_dsp::generated_condensed48::update+0x558>
    c99e: ee00 3b01    	vmla.f64	d3, d0, d1
    c9a2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcd30 <orange_dsp::generated_condensed48::update+0x560>
    c9a6: ee00 4b01    	vmla.f64	d4, d0, d1
    c9aa: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcd38 <orange_dsp::generated_condensed48::update+0x568>
    c9ae: ee00 ab01    	vmla.f64	d10, d0, d1
    c9b2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcd40 <orange_dsp::generated_condensed48::update+0x570>
    c9b6: ee00 bb01    	vmla.f64	d11, d0, d1
    c9ba: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcd48 <orange_dsp::generated_condensed48::update+0x578>
    c9be: ee00 cb01    	vmla.f64	d12, d0, d1
    c9c2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcd50 <orange_dsp::generated_condensed48::update+0x580>
    c9c6: ee00 db01    	vmla.f64	d13, d0, d1
    c9ca: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcd58 <orange_dsp::generated_condensed48::update+0x588>
    c9ce: ee00 eb01    	vmla.f64	d14, d0, d1
    c9d2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcd60 <orange_dsp::generated_condensed48::update+0x590>
    c9d6: ee00 fb01    	vmla.f64	d15, d0, d1
    c9da: ed91 0a0a    	vldr	s0, [r1, #40]
    c9de: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c9e2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xcd68 <orange_dsp::generated_condensed48::update+0x598>
    c9e6: ee00 9b01    	vmla.f64	d9, d0, d1
    c9ea: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xcd70 <orange_dsp::generated_condensed48::update+0x5a0>
    c9ee: ee00 3b01    	vmla.f64	d3, d0, d1
    c9f2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xcd78 <orange_dsp::generated_condensed48::update+0x5a8>
    c9f6: ee00 4b01    	vmla.f64	d4, d0, d1
    c9fa: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xcd80 <orange_dsp::generated_condensed48::update+0x5b0>
    c9fe: ee00 ab01    	vmla.f64	d10, d0, d1
    ca02: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xcd88 <orange_dsp::generated_condensed48::update+0x5b8>
    ca06: ee00 bb01    	vmla.f64	d11, d0, d1
    ca0a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xcd90 <orange_dsp::generated_condensed48::update+0x5c0>
    ca0e: ee00 cb01    	vmla.f64	d12, d0, d1
    ca12: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xcd98 <orange_dsp::generated_condensed48::update+0x5c8>
    ca16: ee00 db01    	vmla.f64	d13, d0, d1
    ca1a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xcda0 <orange_dsp::generated_condensed48::update+0x5d0>
    ca1e: ee00 eb01    	vmla.f64	d14, d0, d1
    ca22: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xcda8 <orange_dsp::generated_condensed48::update+0x5d8>
    ca26: ee00 fb01    	vmla.f64	d15, d0, d1
    ca2a: ed91 0a0b    	vldr	s0, [r1, #44]
    ca2e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ca32: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcdb0 <orange_dsp::generated_condensed48::update+0x5e0>
    ca36: ee00 9b01    	vmla.f64	d9, d0, d1
    ca3a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcdb8 <orange_dsp::generated_condensed48::update+0x5e8>
    ca3e: ee00 3b01    	vmla.f64	d3, d0, d1
    ca42: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcdc0 <orange_dsp::generated_condensed48::update+0x5f0>
    ca46: ee00 4b01    	vmla.f64	d4, d0, d1
    ca4a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcdc8 <orange_dsp::generated_condensed48::update+0x5f8>
    ca4e: ee00 ab01    	vmla.f64	d10, d0, d1
    ca52: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcdd0 <orange_dsp::generated_condensed48::update+0x600>
    ca56: ee00 bb01    	vmla.f64	d11, d0, d1
    ca5a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcdd8 <orange_dsp::generated_condensed48::update+0x608>
    ca5e: ee00 cb01    	vmla.f64	d12, d0, d1
    ca62: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcde0 <orange_dsp::generated_condensed48::update+0x610>
    ca66: ee00 db01    	vmla.f64	d13, d0, d1
    ca6a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcde8 <orange_dsp::generated_condensed48::update+0x618>
    ca6e: ee00 eb01    	vmla.f64	d14, d0, d1
    ca72: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcdf0 <orange_dsp::generated_condensed48::update+0x620>
    ca76: ee00 fb01    	vmla.f64	d15, d0, d1
    ca7a: ed91 0a0c    	vldr	s0, [r1, #48]
    ca7e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ca82: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xcdf8 <orange_dsp::generated_condensed48::update+0x628>
    ca86: ee00 9b01    	vmla.f64	d9, d0, d1
    ca8a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xce00 <orange_dsp::generated_condensed48::update+0x630>
    ca8e: ee00 3b01    	vmla.f64	d3, d0, d1
    ca92: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xce08 <orange_dsp::generated_condensed48::update+0x638>
    ca96: ee00 4b01    	vmla.f64	d4, d0, d1
    ca9a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xce10 <orange_dsp::generated_condensed48::update+0x640>
    ca9e: ee00 ab01    	vmla.f64	d10, d0, d1
    caa2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xce18 <orange_dsp::generated_condensed48::update+0x648>
    caa6: ee00 bb01    	vmla.f64	d11, d0, d1
    caaa: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xce20 <orange_dsp::generated_condensed48::update+0x650>
    caae: ee00 cb01    	vmla.f64	d12, d0, d1
    cab2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xce28 <orange_dsp::generated_condensed48::update+0x658>
    cab6: ee00 db01    	vmla.f64	d13, d0, d1
    caba: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xce30 <orange_dsp::generated_condensed48::update+0x660>
    cabe: ee00 eb01    	vmla.f64	d14, d0, d1
    cac2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xce38 <orange_dsp::generated_condensed48::update+0x668>
    cac6: ee00 fb01    	vmla.f64	d15, d0, d1
    caca: ed91 0a0d    	vldr	s0, [r1, #52]
    cace: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cad2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xce40 <orange_dsp::generated_condensed48::update+0x670>
    cad6: ee00 9b01    	vmla.f64	d9, d0, d1
    cada: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xce48 <orange_dsp::generated_condensed48::update+0x678>
    cade: ee00 3b01    	vmla.f64	d3, d0, d1
    cae2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xce50 <orange_dsp::generated_condensed48::update+0x680>
    cae6: ee00 4b01    	vmla.f64	d4, d0, d1
    caea: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xce58 <orange_dsp::generated_condensed48::update+0x688>
    caee: ee00 ab01    	vmla.f64	d10, d0, d1
    caf2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xce60 <orange_dsp::generated_condensed48::update+0x690>
    caf6: ee00 bb01    	vmla.f64	d11, d0, d1
    cafa: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xce68 <orange_dsp::generated_condensed48::update+0x698>
    cafe: ee00 cb01    	vmla.f64	d12, d0, d1
    cb02: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xce70 <orange_dsp::generated_condensed48::update+0x6a0>
    cb06: ee00 db01    	vmla.f64	d13, d0, d1
    cb0a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xce78 <orange_dsp::generated_condensed48::update+0x6a8>
    cb0e: ee00 eb01    	vmla.f64	d14, d0, d1
    cb12: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xce80 <orange_dsp::generated_condensed48::update+0x6b0>
    cb16: ee00 fb01    	vmla.f64	d15, d0, d1
    cb1a: ed91 0a0e    	vldr	s0, [r1, #56]
    cb1e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cb22: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xce88 <orange_dsp::generated_condensed48::update+0x6b8>
    cb26: ee00 9b01    	vmla.f64	d9, d0, d1
    cb2a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xce90 <orange_dsp::generated_condensed48::update+0x6c0>
    cb2e: ee00 3b01    	vmla.f64	d3, d0, d1
    cb32: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xce98 <orange_dsp::generated_condensed48::update+0x6c8>
    cb36: ee00 4b01    	vmla.f64	d4, d0, d1
    cb3a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcea0 <orange_dsp::generated_condensed48::update+0x6d0>
    cb3e: ee00 ab01    	vmla.f64	d10, d0, d1
    cb42: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcea8 <orange_dsp::generated_condensed48::update+0x6d8>
    cb46: ee00 bb01    	vmla.f64	d11, d0, d1
    cb4a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xceb0 <orange_dsp::generated_condensed48::update+0x6e0>
    cb4e: ee00 cb01    	vmla.f64	d12, d0, d1
    cb52: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xceb8 <orange_dsp::generated_condensed48::update+0x6e8>
    cb56: ee00 db01    	vmla.f64	d13, d0, d1
    cb5a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcec0 <orange_dsp::generated_condensed48::update+0x6f0>
    cb5e: ee00 eb01    	vmla.f64	d14, d0, d1
    cb62: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcec8 <orange_dsp::generated_condensed48::update+0x6f8>
    cb66: ee00 fb01    	vmla.f64	d15, d0, d1
    cb6a: ed92 0a03    	vldr	s0, [r2, #12]
    cb6e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cb72: ed9f 1bd7    	vldr	d1, [pc, #860]          @ 0xced0 <orange_dsp::generated_condensed48::update+0x700>
    cb76: ed8d 3b1c    	vstr	d3, [sp, #112]
    cb7a: ee20 3b01    	vmul.f64	d3, d0, d1
    cb7e: ed92 1a02    	vldr	s2, [r2, #8]
    cb82: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    cb86: ed8d 2b26    	vstr	d2, [sp, #152]
    cb8a: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xced8 <orange_dsp::generated_condensed48::update+0x708>
    cb8e: ee01 3b02    	vmla.f64	d3, d1, d2
    cb92: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xcee0 <orange_dsp::generated_condensed48::update+0x710>
    cb96: ed8d 3b24    	vstr	d3, [sp, #144]
    cb9a: ee20 3b02    	vmul.f64	d3, d0, d2
    cb9e: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xcee8 <orange_dsp::generated_condensed48::update+0x718>
    cba2: ee01 3b02    	vmla.f64	d3, d1, d2
    cba6: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xcef0 <orange_dsp::generated_condensed48::update+0x720>
    cbaa: ed8d 3b22    	vstr	d3, [sp, #136]
    cbae: ee20 3b02    	vmul.f64	d3, d0, d2
    cbb2: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xcef8 <orange_dsp::generated_condensed48::update+0x728>
    cbb6: ee01 3b02    	vmla.f64	d3, d1, d2
    cbba: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xcf00 <orange_dsp::generated_condensed48::update+0x730>
    cbbe: ed8d 3b20    	vstr	d3, [sp, #128]
    cbc2: ee20 3b02    	vmul.f64	d3, d0, d2
    cbc6: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xcf08 <orange_dsp::generated_condensed48::update+0x738>
    cbca: ee01 3b02    	vmla.f64	d3, d1, d2
    cbce: f000 b99f    	b.w	0xcf10 <orange_dsp::generated_condensed48::update+0x740> @ imm = #0x33e
    cbd2: bf00         	nop
    cbd4: bf00         	nop
    cbd6: bf00         	nop
    cbd8: 00 00 00 00  	.word	0x00000000
    cbdc: 00 00 00 00  	.word	0x00000000
    cbe0: 6e 40 0c 4e  	.word	0x4e0c406e
    cbe4: b8 53 e5 3f  	.word	0x3fe553b8
    cbe8: 1d fc 37 04  	.word	0x0437fc1d
    cbec: 79 af a1 bf  	.word	0xbfa1af79
    cbf0: b9 fa fd 9f  	.word	0x9ffdfab9
    cbf4: f4 27 e4 3f  	.word	0x3fe427f4
    cbf8: 00 04 d7 42  	.word	0x42d70400
    cbfc: 2a a3 36 bf  	.word	0xbf36a32a
    cc00: 70 c8 61 51  	.word	0x5161c870
    cc04: 5a 52 e5 3f  	.word	0x3fe5525a
    cc08: 02 5c c8 9d  	.word	0x9dc85c02
    cc0c: b7 9d 6b bf  	.word	0xbf6b9db7
    cc10: 1c a9 fe 69  	.word	0x69fea91c
    cc14: 4b d6 c8 be  	.word	0xbec8d64b
    cc18: 86 f6 e3 15  	.word	0x15e3f686
    cc1c: 07 53 e5 3f  	.word	0x3fe55307
    cc20: 00 40 2b 64  	.word	0x642b4000
    cc24: 00 f7 fc 3e  	.word	0x3efcf700
    cc28: 00 38 f8 32  	.word	0x32f83800
    cc2c: 59 2a 22 bf  	.word	0xbf222a59
    cc30: 50 7d a9 06  	.word	0x06a97d50
    cc34: ed 51 e5 3f  	.word	0x3fe551ed
    cc38: 00 b0 71 50  	.word	0x5071b000
    cc3c: f9 aa 3b 3f  	.word	0x3f3baaf9
    cc40: 00 50 74 cc  	.word	0xcc745000
    cc44: 85 3f 2b 3f  	.word	0x3f2b3f85
    cc48: d3 eb b9 11  	.word	0x11b9ebd3
    cc4c: 6a 57 e2 3f  	.word	0x3fe2576a
    cc50: ad 60 98 e7  	.word	0xe79860ad
    cc54: 08 64 ad 3f  	.word	0x3fad6408
    cc58: 7f 94 10 14  	.word	0x1410947f
    cc5c: b3 53 e5 3f  	.word	0x3fe553b3
    cc60: 00 57 2a 60  	.word	0x602a5700
    cc64: be 0c 20 3f  	.word	0x3f200cbe
    cc68: 80 77 28 6d  	.word	0x6d287780
    cc6c: 13 30 60 bf  	.word	0xbf603013
    cc70: c0 73 b0 a5  	.word	0xa5b073c0
    cc74: af e0 53 3f  	.word	0x3f53e0af
    cc78: 7b d9 80 93  	.word	0x9380d97b
    cc7c: ec 6c 16 bf  	.word	0xbf166cec
    cc80: d3 aa 3a 41  	.word	0x413aaad3
    cc84: 3d 43 22 3f  	.word	0x3f22433d
    cc88: 00 e0 4d 56  	.word	0x564de000
    cc8c: 7d 12 d7 be  	.word	0xbed7127d
    cc90: 00 c0 23 17  	.word	0x1723c000
    cc94: d4 54 cc 3e  	.word	0x3ecc54d4
    cc98: e8 ec 6b f7  	.word	0xf76bece8
    cc9c: b5 46 85 bf  	.word	0xbf8546b5
    cca0: ec 9e 19 25  	.word	0x25199eec
    cca4: 3f 20 7a 3f  	.word	0x3f7a203f
    cca8: 00 bc 71 51  	.word	0x5171bc00
    ccac: e9 0e e8 be  	.word	0xbee80ee9
    ccb0: 00 58 7c c2  	.word	0xc27c5800
    ccb4: a2 97 f3 3e  	.word	0x3ef397a2
    ccb8: 40 29 8f f2  	.word	0xf28f2940
    ccbc: 07 4b 30 bf  	.word	0xbf304b07
    ccc0: c0 9e cb 16  	.word	0x16cb9ec0
    ccc4: c9 01 24 3f  	.word	0x3f2401c9
    ccc8: 00 b0 59 3b  	.word	0x3b59b000
    cccc: 42 3f d0 be  	.word	0xbed03f42
    ccd0: 00 20 f5 6a  	.word	0x6af52000
    ccd4: 54 f3 c3 3e  	.word	0x3ec3f354
    ccd8: e1 e9 a5 17  	.word	0x17a5e9e1
    ccdc: 39 2c e2 3f  	.word	0x3fe22c39
    cce0: 00 80 73 7b  	.word	0x7b738000
    cce4: 85 e6 29 bf  	.word	0xbf29e685
    cce8: 38 6a 78 c7  	.word	0xc7786a38
    ccec: 0e 13 e5 3f  	.word	0x3fe5130e
    ccf0: d5 25 7e c9  	.word	0xc97e25d5
    ccf4: 3b 18 22 3f  	.word	0x3f22183b
    ccf8: 00 c0 62 76  	.word	0x7662c000
    ccfc: 28 dc d6 be  	.word	0xbed6dc28
    cd00: 88 a9 60 cd  	.word	0xcd60a988
    cd04: 9b 14 85 bf  	.word	0xbf85149b
    cd08: 00 c6 25 b6  	.word	0xb625c600
    cd0c: 7f 69 f3 3e  	.word	0x3ef3697f
    cd10: 60 59 fb cf  	.word	0xcffb5960
    cd14: a9 24 30 bf  	.word	0xbf3024a9
    cd18: 00 b0 29 d1  	.word	0xd129b000
    cd1c: ff 18 d0 be  	.word	0xbed018ff
    cd20: a4 ed d1 ac  	.word	0xacd1eda4
    cd24: a5 a0 d9 bf  	.word	0xbfd9a0a5
    cd28: 00 a0 3a 41  	.word	0x413aa000
    cd2c: 3d 43 22 3f  	.word	0x3f22433d
    cd30: 00 b1 dd bb  	.word	0xbbddb100
    cd34: 4a 9e 56 3f  	.word	0x3f569e4a
    cd38: f0 00 87 47  	.word	0x478700f0
    cd3c: b2 50 e5 3f  	.word	0x3fe550b2
    cd40: 00 c0 54 95  	.word	0x9554c000
    cd44: 4c 79 04 bf  	.word	0xbf04794c
    cd48: e0 a6 12 00  	.word	0x0012a6e0
    cd4c: 4d e1 b2 bf  	.word	0xbfb2e14d
    cd50: 00 44 eb 06  	.word	0x06eb4400
    cd54: c6 62 21 3f  	.word	0x3f2162c6
    cd58: 00 85 3b ab  	.word	0xab3b8500
    cd5c: 93 ea 5c bf  	.word	0xbf5cea93
    cd60: 00 a0 92 0b  	.word	0x0b92a000
    cd64: af d5 fc be  	.word	0xbefcd5af
    cd68: 9c fd 2d 0f  	.word	0x0f2dfd9c
    cd6c: 37 30 90 3f  	.word	0x3f903037
    cd70: 00 60 96 55  	.word	0x55966000
    cd74: 7d 12 d7 be  	.word	0xbed7127d
    cd78: 00 c4 b5 93  	.word	0x93b5c400
    cd7c: 32 93 0c bf  	.word	0xbf0c9332
    cd80: 6c 10 55 95  	.word	0x9555106c
    cd84: 4c 79 04 bf  	.word	0xbf04794c
    cd88: 41 62 78 ce  	.word	0xce786241
    cd8c: d7 54 e5 3f  	.word	0x3fe554d7
    cd90: 98 55 bc ec  	.word	0xecbc5598
    cd94: 58 f0 bc bf  	.word	0xbfbcf058
    cd98: 00 b8 98 37  	.word	0x3798b800
    cd9c: 05 a6 2a 3f  	.word	0x3f2aa605
    cda0: 80 4d ae 0d  	.word	0x0dae4d80
    cda4: 3b 29 66 bf  	.word	0xbf66293b
    cda8: 00 20 8e f1  	.word	0xf18e2000
    cdac: 37 19 06 bf  	.word	0xbf061937
    cdb0: 1d 38 33 59  	.word	0x5933381d
    cdb4: 56 75 68 3f  	.word	0x3f687556
    cdb8: 00 a8 d0 0b  	.word	0x0bd0a800
    cdbc: f2 6d b1 be  	.word	0xbeb16df2
    cdc0: 00 4d c5 90  	.word	0x90c54d00
    cdc4: 20 96 e5 be  	.word	0xbee59620
    cdc8: 9b a3 cc 47  	.word	0x47cca39b
    cdcc: e1 ee de be  	.word	0xbedeeee1
    cdd0: 00 28 7b 0c  	.word	0x0c7b2800
    cdd4: eb b4 e7 be  	.word	0xbee7b4eb
    cdd8: 99 31 6a 00  	.word	0x006a3199
    cddc: 4a fc e0 3f  	.word	0x3fe0fc4a
    cde0: 00 56 ed 5a  	.word	0x5aed5600
    cde4: 4a 33 31 3f  	.word	0x3f31334a
    cde8: 00 dd 8c 97  	.word	0x978cdd00
    cdec: 0a 98 3d bf  	.word	0xbf3d980a
    cdf0: 00 60 46 bf  	.word	0xbf466000
    cdf4: a6 b2 02 bf  	.word	0xbf02b2a6
    cdf8: 8f 2d 3e ae  	.word	0xae3e2d8f
    cdfc: c6 fe 63 bf  	.word	0xbf63fec6
    ce00: 00 80 14 61  	.word	0x61148000
    ce04: 78 7f ac 3e  	.word	0x3eac7f78
    ce08: 00 99 65 eb  	.word	0xeb659900
    ce0c: b9 a5 e1 3e  	.word	0x3ee1a5b9
    ce10: 42 07 9c 38  	.word	0x389c0742
    ce14: da 49 d9 3e  	.word	0x3ed949da
    ce18: 00 44 6e 28  	.word	0x286e4400
    ce1c: 78 61 e3 3e  	.word	0x3ee36178
    ce20: e8 51 b8 a8  	.word	0xa8b851e8
    ce24: 57 8a be 3f  	.word	0x3fbe8a57
    ce28: 7e 6f 94 1d  	.word	0x1d946f7e
    ce2c: bc 4c e5 3f  	.word	0x3fe54cbc
    ce30: 88 6f ab ab  	.word	0xabab6f88
    ce34: 89 43 61 3f  	.word	0x3f614389
    ce38: 00 a0 46 82  	.word	0x8246a000
    ce3c: e2 2d 0a bf  	.word	0xbf0a2de2
    ce40: dc 27 9e 33  	.word	0x339e27dc
    ce44: ca 42 8f 3f  	.word	0x3f8f42ca
    ce48: 00 28 bb de  	.word	0xdebb2800
    ce4c: ef 46 d6 be  	.word	0xbed646ef
    ce50: 00 3a 71 ea  	.word	0xea713a00
    ce54: 18 97 0b bf  	.word	0xbf0b9718
    ce58: 5c 82 6e b3  	.word	0xb36e825c
    ce5c: ab c4 03 bf  	.word	0xbf03c4ab
    ce60: 00 e0 46 84  	.word	0x8446e000
    ce64: da 4c 0e bf  	.word	0xbf0e4cda
    ce68: ae 8d 1b ee  	.word	0xee1b8dae
    ce6c: 55 b2 b8 bf  	.word	0xbfb8b255
    ce70: 00 0c 02 92  	.word	0x92020c00
    ce74: 5d 3a 50 3f  	.word	0x3f503a5d
    ce78: 1e ed ee 91  	.word	0x91eeed1e
    ce7c: 9b 31 e5 3f  	.word	0x3fe5319b
    ce80: 00 80 08 50  	.word	0x50088000
    ce84: 51 c7 06 3f  	.word	0x3f06c751
    ce88: 13 ae df e7  	.word	0xe7dfae13
    ce8c: c9 94 40 3f  	.word	0x3f4094c9
    ce90: 00 10 e4 b2  	.word	0xb2e41000
    ce94: d4 a1 87 be  	.word	0xbe87a1d4
    ce98: 00 32 34 d9  	.word	0xd9343200
    ce9c: b9 44 bd be  	.word	0xbebd44b9
    cea0: 3e 35 3c 4e  	.word	0x4e3c353e
    cea4: 7f f8 b4 be  	.word	0xbeb4f87f
    cea8: 00 9c 46 3b  	.word	0x3b469c00
    ceac: 57 12 c0 be  	.word	0xbec01257
    ceb0: cb f4 e6 4e  	.word	0x4ee6f4cb
    ceb4: 83 99 90 bf  	.word	0xbf909983
    ceb8: 80 fd 31 82  	.word	0x8231fd80
    cebc: e2 2d 0a bf  	.word	0xbf0a2de2
    cec0: c0 1d 2a 86  	.word	0x862a1dc0
    cec4: 87 3b 18 3f  	.word	0x3f183b87
    cec8: 7b 92 42 7e  	.word	0x7e42927b
    cecc: a1 54 e5 3f  	.word	0x3fe554a1
    ced0: b0 98 53 d6  	.word	0xd65398b0
    ced4: be fa e3 bf  	.word	0xbfe3fabe
    ced8: 52 d5 f2 b1  	.word	0xb1f2d552
    cedc: 45 95 d0 bf  	.word	0xbfd09545
    cee0: 00 d0 da c1  	.word	0xc1dad000
    cee4: b9 79 2c 3f  	.word	0x3f2c79b9
    cee8: 00 80 9b 20  	.word	0x209b8000
    ceec: 85 a2 17 3f  	.word	0x3f17a285
    cef0: 00 fc 5c 3c  	.word	0x3c5cfc00
    cef4: 2b a2 61 3f  	.word	0x3f61a22b
    cef8: 00 8c 5c 5b  	.word	0x5b5c8c00
    cefc: 94 45 4d 3f  	.word	0x3f4d4594
    cf00: 2c 61 fa a7  	.word	0xa7fa612c
    cf04: f3 e6 49 bf  	.word	0xbf49e6f3
    cf08: 00 58 84 dd  	.word	0xdd845800
    cf0c: 1b f9 44 3f  	.word	0x3f44f91b
    cf10: ed9f 2beb    	vldr	d2, [pc, #940]          @ 0xd2c0 <orange_dsp::generated_condensed48::update+0xaf0>
    cf14: ed8d 3b1e    	vstr	d3, [sp, #120]
    cf18: ee20 3b02    	vmul.f64	d3, d0, d2
    cf1c: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xd2c8 <orange_dsp::generated_condensed48::update+0xaf8>
    cf20: ee01 3b02    	vmla.f64	d3, d1, d2
    cf24: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xd2d0 <orange_dsp::generated_condensed48::update+0xb00>
    cf28: ed8d 3b18    	vstr	d3, [sp, #96]
    cf2c: ee20 3b02    	vmul.f64	d3, d0, d2
    cf30: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xd2d8 <orange_dsp::generated_condensed48::update+0xb08>
    cf34: ee01 3b02    	vmla.f64	d3, d1, d2
    cf38: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xd2e0 <orange_dsp::generated_condensed48::update+0xb10>
    cf3c: ed8d 3b16    	vstr	d3, [sp, #88]
    cf40: ee20 3b02    	vmul.f64	d3, d0, d2
    cf44: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xd2e8 <orange_dsp::generated_condensed48::update+0xb18>
    cf48: ee01 3b02    	vmla.f64	d3, d1, d2
    cf4c: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xd2f0 <orange_dsp::generated_condensed48::update+0xb20>
    cf50: ed8d 3b14    	vstr	d3, [sp, #80]
    cf54: ee20 3b02    	vmul.f64	d3, d0, d2
    cf58: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xd2f8 <orange_dsp::generated_condensed48::update+0xb28>
    cf5c: ee01 3b02    	vmla.f64	d3, d1, d2
    cf60: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xd300 <orange_dsp::generated_condensed48::update+0xb30>
    cf64: ee20 2b02    	vmul.f64	d2, d0, d2
    cf68: ed9f 0be7    	vldr	d0, [pc, #924]          @ 0xd308 <orange_dsp::generated_condensed48::update+0xb38>
    cf6c: ee01 2b00    	vmla.f64	d2, d1, d0
    cf70: ed91 0a10    	vldr	s0, [r1, #64]
    cf74: ed8d 2b10    	vstr	d2, [sp, #64]
    cf78: ed91 2a0f    	vldr	s4, [r1, #60]
    cf7c: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    cf80: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    cf84: ed8d 3b12    	vstr	d3, [sp, #72]
    cf88: ed9f 0be1    	vldr	d0, [pc, #900]          @ 0xd310 <orange_dsp::generated_condensed48::update+0xb40>
    cf8c: ed9f 3be2    	vldr	d3, [pc, #904]          @ 0xd318 <orange_dsp::generated_condensed48::update+0xb48>
    cf90: ee21 0b00    	vmul.f64	d0, d1, d0
    cf94: ee02 0b03    	vmla.f64	d0, d2, d3
    cf98: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd328 <orange_dsp::generated_condensed48::update+0xb58>
    cf9c: ee21 1b03    	vmul.f64	d1, d1, d3
    cfa0: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd330 <orange_dsp::generated_condensed48::update+0xb60>
    cfa4: ee02 1b03    	vmla.f64	d1, d2, d3
    cfa8: ed91 2a12    	vldr	s4, [r1, #72]
    cfac: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    cfb0: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd340 <orange_dsp::generated_condensed48::update+0xb70>
    cfb4: ed8d 5b28    	vstr	d5, [sp, #160]
    cfb8: ee22 5b03    	vmul.f64	d5, d2, d3
    cfbc: ed91 3a11    	vldr	s6, [r1, #68]
    cfc0: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    cfc4: ed8d 4b1a    	vstr	d4, [sp, #104]
    cfc8: ed9f 4bdf    	vldr	d4, [pc, #892]          @ 0xd348 <orange_dsp::generated_condensed48::update+0xb78>
    cfcc: ee03 5b04    	vmla.f64	d5, d3, d4
    cfd0: ed9f 4be3    	vldr	d4, [pc, #908]          @ 0xd360 <orange_dsp::generated_condensed48::update+0xb90>
    cfd4: ee23 7b04    	vmul.f64	d7, d3, d4
    cfd8: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd368 <orange_dsp::generated_condensed48::update+0xb98>
    cfdc: ee02 7b03    	vmla.f64	d7, d2, d3
    cfe0: ee38 3b00    	vadd.f64	d3, d8, d0
    cfe4: ed92 0a04    	vldr	s0, [r2, #16]
    cfe8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cfec: ed9f 2bcc    	vldr	d2, [pc, #816]          @ 0xd320 <orange_dsp::generated_condensed48::update+0xb50>
    cff0: ee00 3b02    	vmla.f64	d3, d0, d2
    cff4: ee38 2b01    	vadd.f64	d2, d8, d1
    cff8: ed9f 1bcf    	vldr	d1, [pc, #828]          @ 0xd338 <orange_dsp::generated_condensed48::update+0xb68>
    cffc: ee00 2b01    	vmla.f64	d2, d0, d1
    d000: ed92 1a05    	vldr	s2, [r2, #20]
    d004: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    d008: ed8d 2b0c    	vstr	d2, [sp, #48]
    d00c: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xd350 <orange_dsp::generated_condensed48::update+0xb80>
    d010: ed8d 3b0e    	vstr	d3, [sp, #56]
    d014: ee21 3b02    	vmul.f64	d3, d1, d2
    d018: ed9f 2bcf    	vldr	d2, [pc, #828]          @ 0xd358 <orange_dsp::generated_condensed48::update+0xb88>
    d01c: ee00 3b02    	vmla.f64	d3, d0, d2
    d020: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xd370 <orange_dsp::generated_condensed48::update+0xba0>
    d024: ed8d 3b0a    	vstr	d3, [sp, #40]
    d028: ee21 3b02    	vmul.f64	d3, d1, d2
    d02c: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xd378 <orange_dsp::generated_condensed48::update+0xba8>
    d030: ee00 3b02    	vmla.f64	d3, d0, d2
    d034: ed91 0a14    	vldr	s0, [r1, #80]
    d038: ed8d 3b06    	vstr	d3, [sp, #24]
    d03c: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    d040: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0xd380 <orange_dsp::generated_condensed48::update+0xbb0>
    d044: ee23 2b00    	vmul.f64	d2, d3, d0
    d048: ed91 0a13    	vldr	s0, [r1, #76]
    d04c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d050: ed9f 4bcd    	vldr	d4, [pc, #820]          @ 0xd388 <orange_dsp::generated_condensed48::update+0xbb8>
    d054: ee00 2b04    	vmla.f64	d2, d0, d4
    d058: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xd398 <orange_dsp::generated_condensed48::update+0xbc8>
    d05c: ee20 0b04    	vmul.f64	d0, d0, d4
    d060: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xd3a0 <orange_dsp::generated_condensed48::update+0xbd0>
    d064: ee03 0b04    	vmla.f64	d0, d3, d4
    d068: ed92 3a06    	vldr	s6, [r2, #24]
    d06c: ed8d 5b08    	vstr	d5, [sp, #32]
    d070: eeb0 5b48    	vmov.f64	d5, d8
    d074: eeb7 8ac3    	vcvt.f64.f32	d8, s6
    d078: ed9f 4bc5    	vldr	d4, [pc, #788]          @ 0xd390 <orange_dsp::generated_condensed48::update+0xbc0>
    d07c: ed8d 6b2a    	vstr	d6, [sp, #168]
    d080: ee21 6b04    	vmul.f64	d6, d1, d4
    d084: ee08 6b44    	vmls.f64	d6, d8, d4
    d088: ed9f 4bc7    	vldr	d4, [pc, #796]          @ 0xd3a8 <orange_dsp::generated_condensed48::update+0xbd8>
    d08c: ee21 3b04    	vmul.f64	d3, d1, d4
    d090: ee08 3b44    	vmls.f64	d3, d8, d4
    d094: ed91 4a15    	vldr	s8, [r1, #84]
    d098: eeb7 8ac4    	vcvt.f64.f32	d8, s8
    d09c: ed9f 1bc4    	vldr	d1, [pc, #784]          @ 0xd3b0 <orange_dsp::generated_condensed48::update+0xbe0>
    d0a0: eeb0 4b45    	vmov.f64	d4, d5
    d0a4: ee08 4b01    	vmla.f64	d4, d8, d1
    d0a8: ed9f 1b81    	vldr	d1, [pc, #516]          @ 0xd2b0 <orange_dsp::generated_condensed48::update+0xae0>
    d0ac: ee35 8b01    	vadd.f64	d8, d5, d1
    d0b0: eeb0 1b45    	vmov.f64	d1, d5
    d0b4: ee35 9b09    	vadd.f64	d9, d5, d9
    d0b8: ed9d 5b1c    	vldr	d5, [sp, #112]
    d0bc: ee31 5b05    	vadd.f64	d5, d1, d5
    d0c0: ed8d 5b1c    	vstr	d5, [sp, #112]
    d0c4: ed9d 5b1a    	vldr	d5, [sp, #104]
    d0c8: ee31 0b00    	vadd.f64	d0, d1, d0
    d0cc: ee31 5b05    	vadd.f64	d5, d1, d5
    d0d0: ed8d 0b00    	vstr	d0, [sp]
    d0d4: ed91 0a16    	vldr	s0, [r1, #88]
    d0d8: ed8d 5b1a    	vstr	d5, [sp, #104]
    d0dc: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d0e0: ed9d 5b08    	vldr	d5, [sp, #32]
    d0e4: ee31 2b02    	vadd.f64	d2, d1, d2
    d0e8: ed8d 2b02    	vstr	d2, [sp, #8]
    d0ec: ed9f 2bb4    	vldr	d2, [pc, #720]          @ 0xd3c0 <orange_dsp::generated_condensed48::update+0xbf0>
    d0f0: ee31 5b05    	vadd.f64	d5, d1, d5
    d0f4: ed8d 5b08    	vstr	d5, [sp, #32]
    d0f8: ee31 5b07    	vadd.f64	d5, d1, d7
    d0fc: eeb0 7b41    	vmov.f64	d7, d1
    d100: ee00 7b02    	vmla.f64	d7, d0, d2
    d104: ed92 0a07    	vldr	s0, [r2, #28]
    d108: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d10c: ed9f 2baa    	vldr	d2, [pc, #680]          @ 0xd3b8 <orange_dsp::generated_condensed48::update+0xbe8>
    d110: ee00 4b02    	vmla.f64	d4, d0, d2
    d114: ed9f 2bac    	vldr	d2, [pc, #688]          @ 0xd3c8 <orange_dsp::generated_condensed48::update+0xbf8>
    d118: ee00 7b02    	vmla.f64	d7, d0, d2
    d11c: ed92 0a00    	vldr	s0, [r2]
    d120: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d124: ed9f 2b64    	vldr	d2, [pc, #400]          @ 0xd2b8 <orange_dsp::generated_condensed48::update+0xae8>
    d128: ee31 ab0a    	vadd.f64	d10, d1, d10
    d12c: ee31 bb0b    	vadd.f64	d11, d1, d11
    d130: ee31 cb0c    	vadd.f64	d12, d1, d12
    d134: ee31 db0d    	vadd.f64	d13, d1, d13
    d138: ee31 eb0e    	vadd.f64	d14, d1, d14
    d13c: ee31 fb0f    	vadd.f64	d15, d1, d15
    d140: ed9d 1b2c    	vldr	d1, [sp, #176]
    d144: ee00 1b02    	vmla.f64	d1, d0, d2
    d148: ee38 0b00    	vadd.f64	d0, d8, d0
    d14c: ed8d 5b04    	vstr	d5, [sp, #16]
    d150: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d154: ed80 0a00    	vstr	s0, [r0]
    d158: ed9d 2b24    	vldr	d2, [sp, #144]
    d15c: ed9d 5b22    	vldr	d5, [sp, #136]
    d160: ed9d 8b1c    	vldr	d8, [sp, #112]
    d164: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    d168: ed80 0a01    	vstr	s0, [r0, #4]
    d16c: ed9d 0b2e    	vldr	d0, [sp, #184]
    d170: ee39 2b02    	vadd.f64	d2, d9, d2
    d174: ee38 8b05    	vadd.f64	d8, d8, d5
    d178: ed9d 5b20    	vldr	d5, [sp, #128]
    d17c: ed9d 9b1a    	vldr	d9, [sp, #104]
    d180: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d184: ed80 0a02    	vstr	s0, [r0, #8]
    d188: ee39 9b05    	vadd.f64	d9, d9, d5
    d18c: ed9d 5b1e    	vldr	d5, [sp, #120]
    d190: ed9d 0b2a    	vldr	d0, [sp, #168]
    d194: ee3a ab05    	vadd.f64	d10, d10, d5
    d198: ed9d 5b18    	vldr	d5, [sp, #96]
    d19c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d1a0: ed80 0a03    	vstr	s0, [r0, #12]
    d1a4: ed9d 0b28    	vldr	d0, [sp, #160]
    d1a8: ee3b bb05    	vadd.f64	d11, d11, d5
    d1ac: ed9d 5b16    	vldr	d5, [sp, #88]
    d1b0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d1b4: ed80 0a04    	vstr	s0, [r0, #16]
    d1b8: ee3c cb05    	vadd.f64	d12, d12, d5
    d1bc: ed9d 5b14    	vldr	d5, [sp, #80]
    d1c0: ed9d 0b26    	vldr	d0, [sp, #152]
    d1c4: ee3d db05    	vadd.f64	d13, d13, d5
    d1c8: ed9d 5b12    	vldr	d5, [sp, #72]
    d1cc: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d1d0: ed80 0a05    	vstr	s0, [r0, #20]
    d1d4: eeb7 0bc2    	vcvt.f32.f64	s0, d2
    d1d8: ed80 0a06    	vstr	s0, [r0, #24]
    d1dc: ee3e eb05    	vadd.f64	d14, d14, d5
    d1e0: ed9d 5b10    	vldr	d5, [sp, #64]
    d1e4: eeb7 0bc8    	vcvt.f32.f64	s0, d8
    d1e8: ed80 0a07    	vstr	s0, [r0, #28]
    d1ec: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    d1f0: ed80 0a08    	vstr	s0, [r0, #32]
    d1f4: ee3f 5b05    	vadd.f64	d5, d15, d5
    d1f8: eeb7 0bca    	vcvt.f32.f64	s0, d10
    d1fc: ed80 0a09    	vstr	s0, [r0, #36]
    d200: ed8d 5b24    	vstr	d5, [sp, #144]
    d204: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    d208: ed80 0a0a    	vstr	s0, [r0, #40]
    d20c: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    d210: ed80 0a0b    	vstr	s0, [r0, #44]
    d214: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    d218: ed80 0a0c    	vstr	s0, [r0, #48]
    d21c: eeb7 0bce    	vcvt.f32.f64	s0, d14
    d220: ed80 0a0d    	vstr	s0, [r0, #52]
    d224: ed9d 0b24    	vldr	d0, [sp, #144]
    d228: ed9d 5b0a    	vldr	d5, [sp, #40]
    d22c: ed9d fb08    	vldr	d15, [sp, #32]
    d230: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d234: ed80 0a0e    	vstr	s0, [r0, #56]
    d238: ed9d 0b0e    	vldr	d0, [sp, #56]
    d23c: ee3f 5b05    	vadd.f64	d5, d15, d5
    d240: ed8d 5b2c    	vstr	d5, [sp, #176]
    d244: ed9d 5b06    	vldr	d5, [sp, #24]
    d248: ed9d fb04    	vldr	d15, [sp, #16]
    d24c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d250: ed80 0a0f    	vstr	s0, [r0, #60]
    d254: ed9d 0b0c    	vldr	d0, [sp, #48]
    d258: ee3f 5b05    	vadd.f64	d5, d15, d5
    d25c: ed9d fb02    	vldr	d15, [sp, #8]
    d260: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d264: ed80 0a10    	vstr	s0, [r0, #64]
    d268: ee3f 6b06    	vadd.f64	d6, d15, d6
    d26c: ed9d fb00    	vldr	d15, [sp]
    d270: ed9d 0b2c    	vldr	d0, [sp, #176]
    d274: ee3f 3b03    	vadd.f64	d3, d15, d3
    d278: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d27c: ed80 0a11    	vstr	s0, [r0, #68]
    d280: eeb7 0bc5    	vcvt.f32.f64	s0, d5
    d284: ed80 0a12    	vstr	s0, [r0, #72]
    d288: eeb7 0bc6    	vcvt.f32.f64	s0, d6
    d28c: ed80 0a13    	vstr	s0, [r0, #76]
    d290: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    d294: ed80 0a14    	vstr	s0, [r0, #80]
    d298: eeb7 0bc4    	vcvt.f32.f64	s0, d4
    d29c: ed80 0a15    	vstr	s0, [r0, #84]
    d2a0: eeb7 0bc7    	vcvt.f32.f64	s0, d7
    d2a4: ed80 0a16    	vstr	s0, [r0, #88]
    d2a8: b030         	add	sp, #0xc0
    d2aa: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    d2ae: bd80         	pop	{r7, pc}
    d2b0: 00 00 00 00  	.word	0x00000000
    d2b4: 00 00 00 00  	.word	0x00000000
    d2b8: 00 d0 fa 6c  	.word	0x6cfad000
    d2bc: 57 5c 33 3f  	.word	0x3f335c57
    d2c0: 00 00 f0 fb  	.word	0xfbf00000
    d2c4: 9f 5c 00 3f  	.word	0x3f005c9f
    d2c8: 00 00 05 30  	.word	0x30050000
    d2cc: b5 84 11 3f  	.word	0x3f1184b5
    d2d0: 60 0f fd c5  	.word	0xc5fd0f60
    d2d4: 23 2d ae 3f  	.word	0x3fae2d23
    d2d8: 6c 20 40 cf  	.word	0xcf40206c
    d2dc: 9a 27 c0 3f  	.word	0x3fc0279a
    d2e0: 00 70 09 92  	.word	0x92097000
    d2e4: bd c9 1b bf  	.word	0xbf1bc9bd
    d2e8: 00 dc e1 8e  	.word	0x8ee1dc00
    d2ec: 97 c0 2d bf  	.word	0xbf2dc097
    d2f0: a0 e2 31 a8  	.word	0xa831e2a0
    d2f4: d3 1b 57 3f  	.word	0x3f571bd3
    d2f8: 80 79 e7 3d  	.word	0x3de77980
    d2fc: 00 be 68 3f  	.word	0x3f68be00
    d300: 00 00 4a 43  	.word	0x434a0000
    d304: 21 0b f7 3e  	.word	0x3ef70b21
    d308: 00 20 b8 b3  	.word	0xb3b82000
    d30c: 1f ac 08 3f  	.word	0x3f08ac1f
    d310: 21 77 ba 04  	.word	0x04ba7721
    d314: d6 95 d4 3f  	.word	0x3fd495d6
    d318: 2e a6 61 06  	.word	0x0661a62e
    d31c: af ba 97 3f  	.word	0x3f97baaf
    d320: b4 b2 17 07  	.word	0x0717b2b4
    d324: c1 e0 de bf  	.word	0xbfdee0c1
    d328: 4e 21 bf d3  	.word	0xd3bf214e
    d32c: 8c 53 e5 3f  	.word	0x3fe5538c
    d330: 06 3b 04 63  	.word	0x63043b06
    d334: 2e a9 ee 3e  	.word	0x3eeea92e
    d338: 32 49 70 0a  	.word	0x0a704932
    d33c: 13 66 35 3f  	.word	0x3f356613
    d340: cc 3c 73 b3  	.word	0xb3733ccc
    d344: 3d f9 d9 bf  	.word	0xbfd9f93d
    d348: c5 06 ea 2a  	.word	0x2aea06c5
    d34c: ea 1c b2 3f  	.word	0x3fb21cea
    d350: 17 45 45 2f  	.word	0x2f454517
    d354: c1 0a e8 bf  	.word	0xbfe80ac1
    d358: 8e 66 bb a2  	.word	0xa2bb668e
    d35c: 4b 3f c2 3f  	.word	0x3fc23f4b
    d360: 00 80 05 e9  	.word	0xe9058000
    d364: 0e 47 05 bf  	.word	0xbf05470e
    d368: 15 3d 58 94  	.word	0x94583d15
    d36c: 1b 54 e5 3f  	.word	0x3fe5541b
    d370: 00 28 d1 a8  	.word	0xa8d12800
    d374: 5e b2 22 bf  	.word	0xbf22b25e
    d378: 00 30 de 22  	.word	0x22de3000
    d37c: 72 6f 15 bf  	.word	0xbf156f72
    d380: f8 77 d5 38  	.word	0x38d577f8
    d384: 39 82 02 bf  	.word	0xbf028239
    d388: 9c c0 64 fa  	.word	0xfa64c09c
    d38c: 0d 51 e5 3f  	.word	0x3fe5510d
    d390: 00 54 7c a3  	.word	0xa37c5400
    d394: 21 ac 49 3f  	.word	0x3f49ac21
    d398: 00 d8 0a 87  	.word	0x870ad800
    d39c: c7 22 37 bf  	.word	0xbf3722c7
    d3a0: d3 50 49 84  	.word	0x844950d3
    d3a4: 8b 4f e5 3f  	.word	0x3fe54f8b
    d3a8: 00 20 48 a5  	.word	0xa5482000
    d3ac: 15 5a 41 3f  	.word	0x3f415a15
    d3b0: e1 b2 ba 0d  	.word	0x0dbab2e1
    d3b4: 2e 55 e5 3f  	.word	0x3fe5552e
    d3b8: a3 04 d7 f9  	.word	0xf9d704a3
    d3bc: b3 75 fd 3e  	.word	0x3efd75b3
    d3c0: c0 a7 95 60  	.word	0x6095a7c0
    d3c4: 2f 85 73 3f  	.word	0x3f73852f
    d3c8: 09 3f de 71  	.word	0x71de3f09
    d3cc: 70 c5 ef 3f  	.word	0x3fefc570

0000d3d0 <__aeabi_memcpy4>:
    d3d0: 2a04         	cmp	r2, #0x4
    d3d2: d309         	blo	0xd3e8 <__aeabi_memcpy4+0x18> @ imm = #0x12
    d3d4: b5d0         	push	{r4, r6, r7, lr}
    d3d6: af02         	add	r7, sp, #0x8
    d3d8: f1a2 0e04    	sub.w	lr, r2, #0x4
    d3dc: ea6f 030e    	mvn.w	r3, lr
    d3e0: f013 0f0c    	tst.w	r3, #0xc
    d3e4: d106         	bne	0xd3f4 <__aeabi_memcpy4+0x24> @ imm = #0xc
    d3e6: e023         	b	0xd430 <__aeabi_memcpy4+0x60> @ imm = #0x46
    d3e8: 460b         	mov	r3, r1
    d3ea: 4684         	mov	r12, r0
    d3ec: 4660         	mov	r0, r12
    d3ee: 4619         	mov	r1, r3
    d3f0: f000 b83c    	b.w	0xd46c <compiler_builtins::mem::memcpy> @ imm = #0x78
    d3f4: 460b         	mov	r3, r1
    d3f6: 4684         	mov	r12, r0
    d3f8: f853 4b04    	ldr	r4, [r3], #4
    d3fc: f01e 0f0c    	tst.w	lr, #0xc
    d400: f84c 4b04    	str	r4, [r12], #4
    d404: d009         	beq	0xd41a <__aeabi_memcpy4+0x4a> @ imm = #0x12
    d406: 684b         	ldr	r3, [r1, #0x4]
    d408: 6043         	str	r3, [r0, #0x4]
    d40a: f00e 030c    	and	r3, lr, #0xc
    d40e: 2b04         	cmp	r3, #0x4
    d410: d107         	bne	0xd422 <__aeabi_memcpy4+0x52> @ imm = #0xe
    d412: 3a08         	subs	r2, #0x8
    d414: 3108         	adds	r1, #0x8
    d416: 3008         	adds	r0, #0x8
    d418: e008         	b	0xd42c <__aeabi_memcpy4+0x5c> @ imm = #0x10
    d41a: 4672         	mov	r2, lr
    d41c: 4660         	mov	r0, r12
    d41e: 4619         	mov	r1, r3
    d420: e006         	b	0xd430 <__aeabi_memcpy4+0x60> @ imm = #0xc
    d422: 688b         	ldr	r3, [r1, #0x8]
    d424: 3a0c         	subs	r2, #0xc
    d426: 6083         	str	r3, [r0, #0x8]
    d428: 310c         	adds	r1, #0xc
    d42a: 300c         	adds	r0, #0xc
    d42c: 4684         	mov	r12, r0
    d42e: 460b         	mov	r3, r1
    d430: f1be 0f0c    	cmp.w	lr, #0xc
    d434: d314         	blo	0xd460 <__aeabi_memcpy4+0x90> @ imm = #0x28
    d436: 4684         	mov	r12, r0
    d438: 460b         	mov	r3, r1
    d43a: 6818         	ldr	r0, [r3]
    d43c: 3a10         	subs	r2, #0x10
    d43e: f8cc 0000    	str.w	r0, [r12]
    d442: 2a03         	cmp	r2, #0x3
    d444: 6858         	ldr	r0, [r3, #0x4]
    d446: f8cc 0004    	str.w	r0, [r12, #0x4]
    d44a: 6898         	ldr	r0, [r3, #0x8]
    d44c: f8cc 0008    	str.w	r0, [r12, #0x8]
    d450: 68d8         	ldr	r0, [r3, #0xc]
    d452: f103 0310    	add.w	r3, r3, #0x10
    d456: f8cc 000c    	str.w	r0, [r12, #0xc]
    d45a: f10c 0c10    	add.w	r12, r12, #0x10
    d45e: d8ec         	bhi	0xd43a <__aeabi_memcpy4+0x6a> @ imm = #-0x28
    d460: e8bd 40d0    	pop.w	{r4, r6, r7, lr}
    d464: 4660         	mov	r0, r12
    d466: 4619         	mov	r1, r3
    d468: f000 b800    	b.w	0xd46c <compiler_builtins::mem::memcpy> @ imm = #0x0

0000d46c <compiler_builtins::mem::memcpy>:
    d46c: b5f0         	push	{r4, r5, r6, r7, lr}
    d46e: af03         	add	r7, sp, #0xc
    d470: e92d 0f00    	push.w	{r8, r9, r10, r11}
    d474: b089         	sub	sp, #0x24
    d476: 4680         	mov	r8, r0
    d478: 2a10         	cmp	r2, #0x10
    d47a: d321         	blo	0xd4c0 <compiler_builtins::mem::memcpy+0x54> @ imm = #0x42
    d47c: f1c8 0000    	rsb.w	r0, r8, #0x0
    d480: f000 0a03    	and	r10, r0, #0x3
    d484: eb08 030a    	add.w	r3, r8, r10
    d488: 4598         	cmp	r8, r3
    d48a: d237         	bhs	0xd4fc <compiler_builtins::mem::memcpy+0x90> @ imm = #0x6e
    d48c: f1aa 0601    	sub.w	r6, r10, #0x1
    d490: 4644         	mov	r4, r8
    d492: 460d         	mov	r5, r1
    d494: f1ba 0f00    	cmp.w	r10, #0x0
    d498: d01f         	beq	0xd4da <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x3e
    d49a: 460d         	mov	r5, r1
    d49c: 4644         	mov	r4, r8
    d49e: f815 0b01    	ldrb	r0, [r5], #1
    d4a2: f1ba 0f01    	cmp.w	r10, #0x1
    d4a6: f804 0b01    	strb	r0, [r4], #1
    d4aa: d016         	beq	0xd4da <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x2c
    d4ac: 7848         	ldrb	r0, [r1, #0x1]
    d4ae: f1ba 0f02    	cmp.w	r10, #0x2
    d4b2: f888 0001    	strb.w	r0, [r8, #0x1]
    d4b6: d10a         	bne	0xd4ce <compiler_builtins::mem::memcpy+0x62> @ imm = #0x14
    d4b8: 1c8d         	adds	r5, r1, #0x2
    d4ba: f108 0402    	add.w	r4, r8, #0x2
    d4be: e00c         	b	0xd4da <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x18
    d4c0: 46c4         	mov	r12, r8
    d4c2: eb0c 0302    	add.w	r3, r12, r2
    d4c6: 459c         	cmp	r12, r3
    d4c8: f0c0 80e3    	blo.w	0xd692 <compiler_builtins::mem::memcpy+0x226> @ imm = #0x1c6
    d4cc: e10b         	b	0xd6e6 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x216
    d4ce: 1ccd         	adds	r5, r1, #0x3
    d4d0: f108 0403    	add.w	r4, r8, #0x3
    d4d4: 7888         	ldrb	r0, [r1, #0x2]
    d4d6: f888 0002    	strb.w	r0, [r8, #0x2]
    d4da: 2e03         	cmp	r6, #0x3
    d4dc: d30e         	blo	0xd4fc <compiler_builtins::mem::memcpy+0x90> @ imm = #0x1c
    d4de: 1f2e         	subs	r6, r5, #0x4
    d4e0: 1f25         	subs	r5, r4, #0x4
    d4e2: f816 0f04    	ldrb	r0, [r6, #4]!
    d4e6: f805 0f04    	strb	r0, [r5, #4]!
    d4ea: 7870         	ldrb	r0, [r6, #0x1]
    d4ec: 7068         	strb	r0, [r5, #0x1]
    d4ee: 78b0         	ldrb	r0, [r6, #0x2]
    d4f0: 70a8         	strb	r0, [r5, #0x2]
    d4f2: 78f0         	ldrb	r0, [r6, #0x3]
    d4f4: 70e8         	strb	r0, [r5, #0x3]
    d4f6: 1d28         	adds	r0, r5, #0x4
    d4f8: 4298         	cmp	r0, r3
    d4fa: d1f2         	bne	0xd4e2 <compiler_builtins::mem::memcpy+0x76> @ imm = #-0x1c
    d4fc: eba2 0b0a    	sub.w	r11, r2, r10
    d500: eb01 040a    	add.w	r4, r1, r10
    d504: f02b 0203    	bic	r2, r11, #0x3
    d508: f014 0003    	ands	r0, r4, #0x3
    d50c: eb03 0c02    	add.w	r12, r3, r2
    d510: d063         	beq	0xd5da <compiler_builtins::mem::memcpy+0x16e> @ imm = #0xc6
    d512: f04f 0900    	mov.w	r9, #0x0
    d516: f1c0 0604    	rsb.w	r6, r0, #0x4
    d51a: 9204         	str	r2, [sp, #0x10]
    d51c: aa08         	add	r2, sp, #0x20
    d51e: f8cd 9020    	str.w	r9, [sp, #0x20]
    d522: 4402         	add	r2, r0
    d524: 07f5         	lsls	r5, r6, #0x1f
    d526: bf1e         	ittt	ne
    d528: 7825         	ldrbne	r5, [r4]
    d52a: 7015         	strbne	r5, [r2]
    d52c: f04f 0901    	movne.w	r9, #0x1
    d530: 07b6         	lsls	r6, r6, #0x1e
    d532: bf44         	itt	mi
    d534: f834 6009    	ldrhmi.w	r6, [r4, r9]
    d538: f822 6009    	strhmi.w	r6, [r2, r9]
    d53c: 1a25         	subs	r5, r4, r0
    d53e: 9405         	str	r4, [sp, #0x14]
    d540: 1d1c         	adds	r4, r3, #0x4
    d542: 9a08         	ldr	r2, [sp, #0x20]
    d544: ea4f 0ec0    	lsl.w	lr, r0, #0x3
    d548: 4564         	cmp	r4, r12
    d54a: f1ce 0400    	rsb.w	r4, lr, #0x0
    d54e: e9cd 0402    	strd	r0, r4, [sp, #8]
    d552: d25b         	bhs	0xd60c <compiler_builtins::mem::memcpy+0x1a0> @ imm = #0xb6
    d554: 4243         	rsbs	r3, r0, #0
    d556: 4646         	mov	r6, r8
    d558: f8cd b000    	str.w	r11, [sp]
    d55c: eb01 0803    	add.w	r8, r1, r3
    d560: f004 0b18    	and	r11, r4, #0x18
    d564: 9601         	str	r6, [sp, #0x4]
    d566: eb08 050a    	add.w	r5, r8, r10
    d56a: eb06 040a    	add.w	r4, r6, r10
    d56e: fa22 f10e    	lsr.w	r1, r2, lr
    d572: f8d5 9004    	ldr.w	r9, [r5, #0x4]
    d576: fa09 f20b    	lsl.w	r2, r9, r11
    d57a: 4311         	orrs	r1, r2
    d57c: 4622         	mov	r2, r4
    d57e: f842 1b08    	str	r1, [r2], #8
    d582: 4562         	cmp	r2, r12
    d584: d244         	bhs	0xd610 <compiler_builtins::mem::memcpy+0x1a4> @ imm = #0x88
    d586: 68a9         	ldr	r1, [r5, #0x8]
    d588: fa29 f30e    	lsr.w	r3, r9, lr
    d58c: fa01 f00b    	lsl.w	r0, r1, r11
    d590: 4318         	orrs	r0, r3
    d592: f104 030c    	add.w	r3, r4, #0xc
    d596: 4563         	cmp	r3, r12
    d598: 6060         	str	r0, [r4, #0x4]
    d59a: d23c         	bhs	0xd616 <compiler_builtins::mem::memcpy+0x1aa> @ imm = #0x78
    d59c: f8d5 900c    	ldr.w	r9, [r5, #0xc]
    d5a0: fa21 f00e    	lsr.w	r0, r1, lr
    d5a4: fa09 f10b    	lsl.w	r1, r9, r11
    d5a8: 4308         	orrs	r0, r1
    d5aa: 6010         	str	r0, [r2]
    d5ac: f104 0010    	add.w	r0, r4, #0x10
    d5b0: 4560         	cmp	r0, r12
    d5b2: d235         	bhs	0xd620 <compiler_builtins::mem::memcpy+0x1b4> @ imm = #0x6a
    d5b4: 692a         	ldr	r2, [r5, #0x10]
    d5b6: fa29 f00e    	lsr.w	r0, r9, lr
    d5ba: 3610         	adds	r6, #0x10
    d5bc: f108 0810    	add.w	r8, r8, #0x10
    d5c0: fa02 f10b    	lsl.w	r1, r2, r11
    d5c4: 4308         	orrs	r0, r1
    d5c6: 6018         	str	r0, [r3]
    d5c8: eb06 030a    	add.w	r3, r6, r10
    d5cc: 1d18         	adds	r0, r3, #0x4
    d5ce: 4560         	cmp	r0, r12
    d5d0: d3c9         	blo	0xd566 <compiler_builtins::mem::memcpy+0xfa> @ imm = #-0x6e
    d5d2: eb08 050a    	add.w	r5, r8, r10
    d5d6: 4691         	mov	r9, r2
    d5d8: e023         	b	0xd622 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x46
    d5da: 4563         	cmp	r3, r12
    d5dc: d252         	bhs	0xd684 <compiler_builtins::mem::memcpy+0x218> @ imm = #0xa4
    d5de: 4621         	mov	r1, r4
    d5e0: 6808         	ldr	r0, [r1]
    d5e2: f843 0b04    	str	r0, [r3], #4
    d5e6: 4563         	cmp	r3, r12
    d5e8: d24c         	bhs	0xd684 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x98
    d5ea: 6848         	ldr	r0, [r1, #0x4]
    d5ec: f843 0b04    	str	r0, [r3], #4
    d5f0: 4563         	cmp	r3, r12
    d5f2: bf3e         	ittt	lo
    d5f4: 6888         	ldrlo	r0, [r1, #0x8]
    d5f6: f843 0b04    	strlo	r0, [r3], #4
    d5fa: 4563         	cmplo	r3, r12
    d5fc: d242         	bhs	0xd684 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x84
    d5fe: 68c8         	ldr	r0, [r1, #0xc]
    d600: 3110         	adds	r1, #0x10
    d602: f843 0b04    	str	r0, [r3], #4
    d606: 4563         	cmp	r3, r12
    d608: d3ea         	blo	0xd5e0 <compiler_builtins::mem::memcpy+0x174> @ imm = #-0x2c
    d60a: e03b         	b	0xd684 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x76
    d60c: 4691         	mov	r9, r2
    d60e: e00a         	b	0xd626 <compiler_builtins::mem::memcpy+0x1ba> @ imm = #0x14
    d610: 3504         	adds	r5, #0x4
    d612: 1d23         	adds	r3, r4, #0x4
    d614: e005         	b	0xd622 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0xa
    d616: 3508         	adds	r5, #0x8
    d618: f104 0308    	add.w	r3, r4, #0x8
    d61c: 4689         	mov	r9, r1
    d61e: e000         	b	0xd622 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x0
    d620: 350c         	adds	r5, #0xc
    d622: e9dd b800    	ldrd	r11, r8, [sp]
    d626: 9802         	ldr	r0, [sp, #0x8]
    d628: 2200         	movs	r2, #0x0
    d62a: f88d 201c    	strb.w	r2, [sp, #0x1c]
    d62e: 2801         	cmp	r0, #0x1
    d630: f807 2c26    	strb	r2, [r7, #-38]
    d634: d10e         	bne	0xd654 <compiler_builtins::mem::memcpy+0x1e8> @ imm = #0x1c
    d636: ae07         	add	r6, sp, #0x1c
    d638: 2400         	movs	r4, #0x0
    d63a: 2000         	movs	r0, #0x0
    d63c: 9905         	ldr	r1, [sp, #0x14]
    d63e: 07c9         	lsls	r1, r1, #0x1f
    d640: d013         	beq	0xd66a <compiler_builtins::mem::memcpy+0x1fe> @ imm = #0x26
    d642: 1d29         	adds	r1, r5, #0x4
    d644: 5c08         	ldrb	r0, [r1, r0]
    d646: 7030         	strb	r0, [r6]
    d648: f817 0c26    	ldrb	r0, [r7, #-38]
    d64c: f89d 201c    	ldrb.w	r2, [sp, #0x1c]
    d650: 0400         	lsls	r0, r0, #0x10
    d652: e00b         	b	0xd66c <compiler_builtins::mem::memcpy+0x200> @ imm = #0x16
    d654: 7968         	ldrb	r0, [r5, #0x5]
    d656: f1a7 0626    	sub.w	r6, r7, #0x26
    d65a: 792a         	ldrb	r2, [r5, #0x4]
    d65c: f88d 201c    	strb.w	r2, [sp, #0x1c]
    d660: 0204         	lsls	r4, r0, #0x8
    d662: 2002         	movs	r0, #0x2
    d664: 9905         	ldr	r1, [sp, #0x14]
    d666: 07c9         	lsls	r1, r1, #0x1f
    d668: d1eb         	bne	0xd642 <compiler_builtins::mem::memcpy+0x1d6> @ imm = #-0x2a
    d66a: 2000         	movs	r0, #0x0
    d66c: 4320         	orrs	r0, r4
    d66e: fa29 f10e    	lsr.w	r1, r9, lr
    d672: 4310         	orrs	r0, r2
    d674: 9a03         	ldr	r2, [sp, #0xc]
    d676: f002 0218    	and	r2, r2, #0x18
    d67a: 4090         	lsls	r0, r2
    d67c: e9dd 2404    	ldrd	r2, r4, [sp, #16]
    d680: 4308         	orrs	r0, r1
    d682: 6018         	str	r0, [r3]
    d684: 18a1         	adds	r1, r4, r2
    d686: f00b 0203    	and	r2, r11, #0x3
    d68a: eb0c 0302    	add.w	r3, r12, r2
    d68e: 459c         	cmp	r12, r3
    d690: d229         	bhs	0xd6e6 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x52
    d692: 1e56         	subs	r6, r2, #0x1
    d694: f012 0003    	ands	r0, r2, #0x3
    d698: d012         	beq	0xd6c0 <compiler_builtins::mem::memcpy+0x254> @ imm = #0x24
    d69a: 460a         	mov	r2, r1
    d69c: 4665         	mov	r5, r12
    d69e: f812 4b01    	ldrb	r4, [r2], #1
    d6a2: 2801         	cmp	r0, #0x1
    d6a4: f805 4b01    	strb	r4, [r5], #1
    d6a8: d00c         	beq	0xd6c4 <compiler_builtins::mem::memcpy+0x258> @ imm = #0x18
    d6aa: 784a         	ldrb	r2, [r1, #0x1]
    d6ac: 2802         	cmp	r0, #0x2
    d6ae: f88c 2001    	strb.w	r2, [r12, #0x1]
    d6b2: d11d         	bne	0xd6f0 <compiler_builtins::mem::memcpy+0x284> @ imm = #0x3a
    d6b4: 1c8a         	adds	r2, r1, #0x2
    d6b6: f10c 0502    	add.w	r5, r12, #0x2
    d6ba: 2e03         	cmp	r6, #0x3
    d6bc: d204         	bhs	0xd6c8 <compiler_builtins::mem::memcpy+0x25c> @ imm = #0x8
    d6be: e012         	b	0xd6e6 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x24
    d6c0: 4665         	mov	r5, r12
    d6c2: 460a         	mov	r2, r1
    d6c4: 2e03         	cmp	r6, #0x3
    d6c6: d30e         	blo	0xd6e6 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x1c
    d6c8: 1f11         	subs	r1, r2, #0x4
    d6ca: 1f2a         	subs	r2, r5, #0x4
    d6cc: f811 0f04    	ldrb	r0, [r1, #4]!
    d6d0: f802 0f04    	strb	r0, [r2, #4]!
    d6d4: 7848         	ldrb	r0, [r1, #0x1]
    d6d6: 7050         	strb	r0, [r2, #0x1]
    d6d8: 7888         	ldrb	r0, [r1, #0x2]
    d6da: 7090         	strb	r0, [r2, #0x2]
    d6dc: 78c8         	ldrb	r0, [r1, #0x3]
    d6de: 70d0         	strb	r0, [r2, #0x3]
    d6e0: 1d10         	adds	r0, r2, #0x4
    d6e2: 4298         	cmp	r0, r3
    d6e4: d1f2         	bne	0xd6cc <compiler_builtins::mem::memcpy+0x260> @ imm = #-0x1c
    d6e6: 4640         	mov	r0, r8
    d6e8: b009         	add	sp, #0x24
    d6ea: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    d6ee: bdf0         	pop	{r4, r5, r6, r7, pc}
    d6f0: 1cca         	adds	r2, r1, #0x3
    d6f2: f10c 0503    	add.w	r5, r12, #0x3
    d6f6: 7888         	ldrb	r0, [r1, #0x2]
    d6f8: f88c 0002    	strb.w	r0, [r12, #0x2]
    d6fc: 2e03         	cmp	r6, #0x3
    d6fe: d2e3         	bhs	0xd6c8 <compiler_builtins::mem::memcpy+0x25c> @ imm = #-0x3a
    d700: e7f1         	b	0xd6e6 <compiler_builtins::mem::memcpy+0x27a> @ imm = #-0x1e

0000d702 <__aeabi_memclr4>:
    d702: b580         	push	{r7, lr}
    d704: 466f         	mov	r7, sp
    d706: 2904         	cmp	r1, #0x4
    d708: d305         	blo	0xd716 <__aeabi_memclr4+0x14> @ imm = #0xa
    d70a: 1f0b         	subs	r3, r1, #0x4
    d70c: 43da         	mvns	r2, r3
    d70e: f012 0f0c    	tst.w	r2, #0xc
    d712: d102         	bne	0xd71a <__aeabi_memclr4+0x18> @ imm = #0x4
    d714: e01a         	b	0xd74c <__aeabi_memclr4+0x4a> @ imm = #0x34
    d716: 4602         	mov	r2, r0
    d718: e024         	b	0xd764 <__aeabi_memclr4+0x62> @ imm = #0x48
    d71a: f04f 0c00    	mov.w	r12, #0x0
    d71e: 4602         	mov	r2, r0
    d720: f842 cb04    	str	r12, [r2], #4
    d724: f013 0f0c    	tst.w	r3, #0xc
    d728: d008         	beq	0xd73c <__aeabi_memclr4+0x3a> @ imm = #0x10
    d72a: f003 020c    	and	r2, r3, #0xc
    d72e: f8c0 c004    	str.w	r12, [r0, #0x4]
    d732: 2a04         	cmp	r2, #0x4
    d734: d105         	bne	0xd742 <__aeabi_memclr4+0x40> @ imm = #0xa
    d736: 3908         	subs	r1, #0x8
    d738: 3008         	adds	r0, #0x8
    d73a: e006         	b	0xd74a <__aeabi_memclr4+0x48> @ imm = #0xc
    d73c: 4619         	mov	r1, r3
    d73e: 4610         	mov	r0, r2
    d740: e004         	b	0xd74c <__aeabi_memclr4+0x4a> @ imm = #0x8
    d742: 2200         	movs	r2, #0x0
    d744: 390c         	subs	r1, #0xc
    d746: 6082         	str	r2, [r0, #0x8]
    d748: 300c         	adds	r0, #0xc
    d74a: 4602         	mov	r2, r0
    d74c: 2b0c         	cmp	r3, #0xc
    d74e: d309         	blo	0xd764 <__aeabi_memclr4+0x62> @ imm = #0x12
    d750: 2300         	movs	r3, #0x0
    d752: 4602         	mov	r2, r0
    d754: 3910         	subs	r1, #0x10
    d756: e9c2 3300    	strd	r3, r3, [r2]
    d75a: e9c2 3302    	strd	r3, r3, [r2, #8]
    d75e: 3210         	adds	r2, #0x10
    d760: 2903         	cmp	r1, #0x3
    d762: d8f7         	bhi	0xd754 <__aeabi_memclr4+0x52> @ imm = #-0x12
    d764: 1850         	adds	r0, r2, r1
    d766: 4282         	cmp	r2, r0
    d768: d221         	bhs	0xd7ae <__aeabi_memclr4+0xac> @ imm = #0x42
    d76a: f1a1 0c01    	sub.w	r12, r1, #0x1
    d76e: f011 0303    	ands	r3, r1, #0x3
    d772: d00c         	beq	0xd78e <__aeabi_memclr4+0x8c> @ imm = #0x18
    d774: f04f 0e00    	mov.w	lr, #0x0
    d778: 4611         	mov	r1, r2
    d77a: f801 eb01    	strb	lr, [r1], #1
    d77e: 2b01         	cmp	r3, #0x1
    d780: d00a         	beq	0xd798 <__aeabi_memclr4+0x96> @ imm = #0x14
    d782: 2b02         	cmp	r3, #0x2
    d784: f882 e001    	strb.w	lr, [r2, #0x1]
    d788: d103         	bne	0xd792 <__aeabi_memclr4+0x90> @ imm = #0x6
    d78a: 1c91         	adds	r1, r2, #0x2
    d78c: e004         	b	0xd798 <__aeabi_memclr4+0x96> @ imm = #0x8
    d78e: 4611         	mov	r1, r2
    d790: e002         	b	0xd798 <__aeabi_memclr4+0x96> @ imm = #0x4
    d792: 2100         	movs	r1, #0x0
    d794: 7091         	strb	r1, [r2, #0x2]
    d796: 1cd1         	adds	r1, r2, #0x3
    d798: f1bc 0f03    	cmp.w	r12, #0x3
    d79c: bf38         	it	lo
    d79e: bd80         	poplo	{r7, pc}
    d7a0: 3904         	subs	r1, #0x4
    d7a2: 2200         	movs	r2, #0x0
    d7a4: f841 2f04    	str	r2, [r1, #4]!
    d7a8: 1d0b         	adds	r3, r1, #0x4
    d7aa: 4283         	cmp	r3, r0
    d7ac: d1fa         	bne	0xd7a4 <__aeabi_memclr4+0xa2> @ imm = #-0xc
    d7ae: bd80         	pop	{r7, pc}
    d7b0: 6d24         	ldr	r4, [r4, #0x50]
    d7b2: 6e69         	ldr	r1, [r5, #0x64]
    d7b4: 3e20         	subs	r6, #0x20
    d7b6: 6d20         	ldr	r0, [r4, #0x50]
    d7b8: 7861         	ldrb	r1, [r4, #0x1]
    d7ba: 202c         	movs	r0, #0x2c
    d7bc: 726f         	strb	r7, [r5, #0x9]
    d7be: 6520         	str	r0, [r4, #0x50]
    d7c0: 7469         	strb	r1, [r5, #0x11]
    d7c2: 6568         	str	r0, [r5, #0x54]
    d7c4: 2072         	movs	r0, #0x72
    d7c6: 6177         	str	r7, [r6, #0x14]
    d7c8: 2073         	movs	r0, #0x73
    d7ca: 614e         	str	r6, [r1, #0x14]
    d7cc: 2e4e         	cmp	r6, #0x4e
    d7ce: 6d20         	ldr	r0, [r4, #0x50]
    d7d0: 6e69         	ldr	r1, [r5, #0x64]
    d7d2: 3d20         	subs	r5, #0x20
    d7d4: c020         	stm	r0!, {r5}
    d7d6: 2c08         	cmp	r4, #0x8
    d7d8: 6d20         	ldr	r0, [r4, #0x50]
    d7da: 7861         	ldrb	r1, [r4, #0x1]
    d7dc: 3d20         	subs	r5, #0x20
    d7de: c020         	stm	r0!, {r5}
    d7e0: 2f00         	cmp	r7, #0x0
    d7e2: 7572         	strb	r2, [r6, #0x15]
    d7e4: 7473         	strb	r3, [r6, #0x11]
    d7e6: 2f63         	cmp	r7, #0x63
    d7e8: 3834         	subs	r0, #0x34
    d7ea: 3261         	adds	r2, #0x61
    d7ec: 3932         	subs	r1, #0x32
    d7ee: 6563         	str	r3, [r4, #0x54]
    d7f0: 6561         	str	r1, [r4, #0x54]
    d7f2: 6466         	str	r6, [r4, #0x44]
    d7f4: 3934         	subs	r1, #0x34
    d7f6: 3538         	adds	r5, #0x38
    d7f8: 3563         	adds	r5, #0x63
    d7fa: 3930         	subs	r1, #0x30
    d7fc: 3039         	adds	r0, #0x39
    d7fe: 3162         	adds	r1, #0x62
    d800: 3134         	adds	r1, #0x34
    d802: 3631         	adds	r6, #0x31
    d804: 3662         	adds	r6, #0x62
    d806: 3864         	subs	r0, #0x64
    d808: 3635         	adds	r6, #0x35
    d80a: 6661         	str	r1, [r4, #0x64]
    d80c: 3930         	subs	r1, #0x30
    d80e: 3538         	adds	r5, #0x38
    d810: 6c2f         	ldr	r7, [r5, #0x40]
    d812: 6269         	str	r1, [r5, #0x24]
    d814: 6172         	str	r2, [r6, #0x14]
    d816: 7972         	ldrb	r2, [r6, #0x5]
    d818: 632f         	str	r7, [r5, #0x30]
    d81a: 726f         	strb	r7, [r5, #0x9]
    d81c: 2f65         	cmp	r7, #0x65
    d81e: 7273         	strb	r3, [r6, #0x9]
    d820: 2f63         	cmp	r7, #0x63
    d822: 756e         	strb	r6, [r5, #0x15]
    d824: 2f6d         	cmp	r7, #0x6d
    d826: 3366         	adds	r3, #0x66
    d828: 2e32         	cmp	r6, #0x32
    d82a: 7372         	strb	r2, [r6, #0xd]
    d82c: 6f00         	ldr	r0, [r0, #0x70]
    d82e: 6172         	str	r2, [r6, #0x14]
    d830: 676e         	str	r6, [r5, #0x74]
    d832: 2d65         	cmp	r5, #0x65
    d834: 7364         	strb	r4, [r4, #0xd]
    d836: 2f70         	cmp	r7, #0x70
    d838: 7273         	strb	r3, [r6, #0x9]
    d83a: 2f63         	cmp	r7, #0x63
    d83c: 6170         	str	r0, [r6, #0x14]
    d83e: 6b63         	ldr	r3, [r4, #0x34]
    d840: 6465         	str	r5, [r4, #0x44]
    d842: 722e         	strb	r6, [r5, #0x8]
    d844: 0073         	lsls	r3, r6, #0x1

0000d846 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.1>:
    d846: 69 6e 74 65 72 6e 61 6c         internal
    d84e: 20 65 72 72 6f 72 3a 20          error: 
    d856: 65 6e 74 65 72 65 64 20         entered 
    d85e: 75 6e 72 65 61 63 68 61         unreacha
    d866: 62 6c 65 20 63 6f 64 65         ble code
    d86e: d4 d4                           ..

0000d870 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.2>:
    d870: 80 e5 70 28 a1 3a 03 bf         ..p(.:..
    d878: 00 00 00 00 00 00 00 00         ........
    d880: 00 00 00 00 00 00 00 00         ........
    d888: 00 00 00 00 00 00 00 00         ........
    d890: 00 00 00 00 00 00 00 00         ........
    d898: 00 00 00 00 00 00 00 00         ........
    d8a0: 00 00 00 00 00 00 00 00         ........
    d8a8: 00 00 00 00 00 00 00 00         ........
    d8b0: 00 00 00 00 00 00 00 00         ........
    d8b8: 00 f0 e6 61 55 15 14 bf         ...aU...
    d8c0: 00 00 00 00 00 00 00 00         ........
    d8c8: 00 00 00 00 00 00 00 00         ........
    d8d0: 00 00 00 00 00 00 00 00         ........
    d8d8: 00 00 00 00 00 00 00 00         ........
    d8e0: 00 00 00 00 00 00 00 00         ........
    d8e8: 00 00 00 00 00 00 00 00         ........
    d8f0: 00 00 00 00 00 00 00 00         ........
    d8f8: 00 00 00 00 00 00 00 00         ........
    d900: 00 50 66 db 76 ec 1e bf         .Pf.v...
    d908: 0f 97 9b b4 e8 75 16 3f         .....u.?
    d910: 00 00 00 00 00 00 00 00         ........
    d918: 00 00 00 00 00 00 00 00         ........
    d920: 00 00 00 00 00 00 00 00         ........
    d928: 00 00 00 00 00 00 00 00         ........
    d930: 00 00 00 00 00 00 00 00         ........
    d938: 00 00 00 00 00 00 00 00         ........
    d940: e0 96 9b b4 e8 75 16 3f         .....u.?
    d948: 32 e2 b6 04 2a ad 22 bf         2...*.".
    d950: 00 00 00 00 00 00 00 00         ........
    d958: 00 00 00 00 00 00 00 00         ........
    d960: 00 00 00 00 00 00 00 00         ........
    d968: 00 00 00 00 00 00 00 00         ........
    d970: 00 00 00 00 00 00 00 00         ........
    d978: 00 00 00 00 00 00 00 00         ........
    d980: 00 00 00 00 00 00 00 00         ........
    d988: 00 00 00 00 00 00 00 00         ........
    d990: 61 05 bc 57 10 d8 12 bf         a..W....
    d998: 58 62 94 b9 1a 9f dc 3e         Xb.....>
    d9a0: 00 00 00 00 00 00 00 00         ........
    d9a8: 00 00 00 00 00 00 00 00         ........
    d9b0: 00 00 00 00 00 00 00 00         ........
    d9b8: 00 00 00 00 00 00 00 00         ........
    d9c0: 00 00 00 00 00 00 00 00         ........
    d9c8: 00 00 00 00 00 00 00 00         ........
    d9d0: 59 62 94 b9 1a 9f dc 3e         Yb.....>
    d9d8: 14 90 51 d1 d5 fc 24 bf         ..Q...$.
    d9e0: 14 d0 fe 14 cf 45 20 3f         .....E ?
    d9e8: 00 00 00 00 00 00 00 00         ........
    d9f0: 00 00 00 00 00 00 00 00         ........
    d9f8: 00 00 00 00 00 00 00 00         ........
    da00: 00 00 00 00 00 00 00 00         ........
    da08: 00 00 00 00 00 00 00 00         ........
    da10: 00 00 00 00 00 00 00 00         ........
    da18: d2 ce fe 14 cf 45 20 3f         .....E ?
    da20: d2 ce fe 14 cf 45 20 bf         .....E .
    da28: 00 00 00 00 00 00 00 00         ........
    da30: 00 00 00 00 00 00 00 00         ........
    da38: 00 00 00 00 00 00 00 00         ........
    da40: 00 00 00 00 00 00 00 00         ........
    da48: 00 00 00 00 00 00 00 00         ........
    da50: 00 00 00 00 00 00 00 00         ........
    da58: 00 00 00 00 00 00 00 00         ........
    da60: 00 00 00 00 00 00 00 00         ........
    da68: 42 6f 24 95 d9 83 c5 bf         Bo$.....
    da70: a2 0c d2 2e ca fe ef 3f         .......?
    da78: 1f 89 9b cf ab 32 9c bf         .....2..
    da80: 00 00 00 00 00 00 00 00         ........
    da88: 00 00 00 00 00 00 00 00         ........
    da90: 00 00 00 00 00 00 00 00         ........
    da98: 00 00 00 00 00 00 00 00         ........
    daa0: 00 00 00 00 00 00 00 00         ........
    daa8: 00 00 00 00 00 00 00 00         ........
    dab0: 00 00 00 00 00 00 00 00         ........
    dab8: a5 94 a7 50 09 2c d5 3f         ...P.,.?
    dac0: 9c 9e 91 65 97 57 e8 bf         ...e.W..
    dac8: 76 43 71 a5 f8 73 e2 3f         vCq..s.?
    dad0: 00 00 00 00 00 00 00 00         ........
    dad8: 00 00 00 00 00 00 00 00         ........
    dae0: 00 00 00 00 00 00 00 00         ........
    dae8: 00 00 00 00 00 00 00 00         ........
    daf0: 00 00 00 00 00 00 00 00         ........
    daf8: 00 00 00 00 00 00 00 00         ........
    db00: ab 14 f2 db ec cd d7 3f         .......?
    db08: c4 a9 9f 7b 67 dd c7 3f         ...{g..?
    db10: 1c 38 88 77 bf 13 e1 bf         .8.w....
    db18: 00 00 00 00 00 00 00 00         ........
    db20: 00 00 00 00 00 00 00 00         ........
    db28: 00 00 00 00 00 00 00 00         ........
    db30: 00 00 00 00 00 00 00 00         ........
    db38: 00 00 00 00 00 00 00 00         ........
    db40: 00 00 00 00 00 00 00 00         ........
    db48: 00 00 00 00 00 00 00 00         ........
    db50: 15 be b6 e5 6d 7e c0 bf         ....m~..
    db58: 67 42 87 92 ba 86 d4 bf         gB......
    db60: 00 00 00 00 00 00 00 00         ........
    db68: 00 00 00 00 00 00 00 00         ........
    db70: 00 00 00 00 00 00 00 00         ........
    db78: 00 00 00 00 00 00 00 00         ........
    db80: 00 00 00 00 00 00 00 00         ........
    db88: 00 00 00 00 00 00 00 00         ........
    db90: 00 00 00 00 00 00 00 00         ........
    db98: e6 a7 5c a0 06 41 d9 3f         ..\..A.?
    dba0: e6 a7 5c a0 06 41 d9 bf         ..\..A..
    dba8: 19 d5 65 36 d0 6e 95 bf         ..e6.n..
    dbb0: 00 00 00 00 00 00 00 00         ........
    dbb8: 00 00 00 00 00 00 00 00         ........
    dbc0: 00 00 00 00 00 00 00 00         ........
    dbc8: 00 00 00 00 00 00 00 00         ........
    dbd0: 00 00 00 00 00 00 00 00         ........
    dbd8: 10 43 9c 25 ca fc ef 3f         .C.%...?
    dbe0: 00 80 e7 1d d3 ae 39 3f         ......9?
    dbe8: 00 00 00 00 00 00 00 00         ........
    dbf0: 00 00 00 00 00 00 00 00         ........
    dbf8: 00 00 00 00 00 00 00 00         ........
    dc00: 00 00 00 00 00 00 00 00         ........
    dc08: 00 00 00 00 00 00 00 00         ........
    dc10: 00 00 00 00 00 00 00 00         ........
    dc18: 10 43 9c 25 ca fc ef 3f         .C.%...?
    dc20: 10 43 9c 25 ca fc ef bf         .C.%....
    dc28: 00 00 00 00 00 00 00 00         ........

0000dc30 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.3>:
    dc30: 2d d8 00 00 18 00 00 00         -.......
    dc38: 26 02 00 00 05 00 00 00         &.......

0000dc40 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.4>:
    dc40: 00 1b 32 ef 7b e8 fe be         ..2.{...
    dc48: 00 00 00 00 00 00 00 00         ........
    dc50: 00 00 00 00 00 00 00 00         ........
    dc58: 00 00 00 00 00 00 00 00         ........
    dc60: 00 00 00 00 00 00 00 00         ........
    dc68: 00 00 00 00 00 00 00 00         ........
    dc70: 00 00 00 00 00 00 00 00         ........
    dc78: 00 00 00 00 00 00 00 00         ........
    dc80: 00 00 00 00 00 00 00 00         ........
    dc88: 00 d0 79 92 c1 13 14 bf         ..y.....
    dc90: 00 00 00 00 00 00 00 00         ........
    dc98: 00 00 00 00 00 00 00 00         ........
    dca0: 00 00 00 00 00 00 00 00         ........
    dca8: 00 00 00 00 00 00 00 00         ........
    dcb0: 00 00 00 00 00 00 00 00         ........
    dcb8: 00 00 00 00 00 00 00 00         ........
    dcc0: 00 00 00 00 00 00 00 00         ........
    dcc8: 00 00 00 00 00 00 00 00         ........
    dcd0: 00 90 5d 19 23 52 1e bf         ..].#R..
    dcd8: 91 16 e3 65 5b cd 17 3f         ...e[..?
    dce0: 00 00 00 00 00 00 00 00         ........
    dce8: 00 00 00 00 00 00 00 00         ........
    dcf0: 00 00 00 00 00 00 00 00         ........
    dcf8: 00 00 00 00 00 00 00 00         ........
    dd00: 00 00 00 00 00 00 00 00         ........
    dd08: 00 00 00 00 00 00 00 00         ........
    dd10: 83 16 e3 65 5b cd 17 3f         ...e[..?
    dd18: c5 51 bc 97 3d 0f 21 bf         .Q..=.!.
    dd20: 00 00 00 00 00 00 00 00         ........
    dd28: 00 00 00 00 00 00 00 00         ........
    dd30: 00 00 00 00 00 00 00 00         ........
    dd38: 00 00 00 00 00 00 00 00         ........
    dd40: 00 00 00 00 00 00 00 00         ........
    dd48: 00 00 00 00 00 00 00 00         ........
    dd50: 00 00 00 00 00 00 00 00         ........
    dd58: 00 00 00 00 00 00 00 00         ........
    dd60: a1 75 30 f6 34 57 12 bf         .u0.4W..
    dd68: 52 3c e6 89 66 31 d6 3e         R<..f1.>
    dd70: 00 00 00 00 00 00 00 00         ........
    dd78: 00 00 00 00 00 00 00 00         ........
    dd80: 00 00 00 00 00 00 00 00         ........
    dd88: 00 00 00 00 00 00 00 00         ........
    dd90: 00 00 00 00 00 00 00 00         ........
    dd98: 00 00 00 00 00 00 00 00         ........
    dda0: 51 3c e6 89 66 31 d6 3e         Q<..f1.>
    dda8: 92 d8 33 a4 ce eb 23 bf         ..3...#.
    ddb0: 92 4c 87 3a 1a 44 20 3f         .L.:.D ?
    ddb8: 00 00 00 00 00 00 00 00         ........
    ddc0: 00 00 00 00 00 00 00 00         ........
    ddc8: 00 00 00 00 00 00 00 00         ........
    ddd0: 00 00 00 00 00 00 00 00         ........
    ddd8: 00 00 00 00 00 00 00 00         ........
    dde0: 00 00 00 00 00 00 00 00         ........
    dde8: 39 4d 87 3a 1a 44 20 3f         9M.:.D ?
    ddf0: 39 4d 87 3a 1a 44 20 bf         9M.:.D .
    ddf8: 00 00 00 00 00 00 00 00         ........
    de00: 00 00 00 00 00 00 00 00         ........
    de08: 00 00 00 00 00 00 00 00         ........
    de10: 00 00 00 00 00 00 00 00         ........
    de18: 00 00 00 00 00 00 00 00         ........
    de20: 00 00 00 00 00 00 00 00         ........
    de28: 00 00 00 00 00 00 00 00         ........
    de30: 00 00 00 00 00 00 00 00         ........
    de38: 83 36 ae 9c ee 9c c4 bf         .6......
    de40: a6 60 12 75 94 fd ef 3f         .`.u...?
    de48: 9f 87 d0 24 cb 26 9d bf         ...$.&..
    de50: 00 00 00 00 00 00 00 00         ........
    de58: 00 00 00 00 00 00 00 00         ........
    de60: 00 00 00 00 00 00 00 00         ........
    de68: 00 00 00 00 00 00 00 00         ........
    de70: 00 00 00 00 00 00 00 00         ........
    de78: 00 00 00 00 00 00 00 00         ........
    de80: 00 00 00 00 00 00 00 00         ........
    de88: 10 72 82 a8 33 29 d5 3f         .r..3).?
    de90: 57 95 06 27 5d b5 e7 bf         W..']...
    de98: b0 98 53 d6 be fa e3 3f         ..S....?
    dea0: 00 00 00 00 00 00 00 00         ........
    dea8: 00 00 00 00 00 00 00 00         ........
    deb0: 00 00 00 00 00 00 00 00         ........
    deb8: 00 00 00 00 00 00 00 00         ........
    dec0: 00 00 00 00 00 00 00 00         ........
    dec8: 00 00 00 00 00 00 00 00         ........
    ded0: 35 d7 f4 dc 47 af d5 3f         5...G..?
    ded8: 65 44 24 3c c8 40 c4 3f         eD$<.@.?
    dee0: a6 26 74 7c 9f 8f e0 bf         .&t|....
    dee8: 00 00 00 00 00 00 00 00         ........
    def0: 00 00 00 00 00 00 00 00         ........
    def8: 00 00 00 00 00 00 00 00         ........
    df00: 00 00 00 00 00 00 00 00         ........
    df08: 00 00 00 00 00 00 00 00         ........
    df10: 00 00 00 00 00 00 00 00         ........
    df18: 00 00 00 00 00 00 00 00         ........
    df20: 8e 66 bb a2 4b 3f c2 bf         .f..K?..
    df28: a4 eb ea 42 fb d4 cf bf         ...B....
    df30: 00 00 00 00 00 00 00 00         ........
    df38: 00 00 00 00 00 00 00 00         ........
    df40: 00 00 00 00 00 00 00 00         ........
    df48: 00 00 00 00 00 00 00 00         ........
    df50: 00 00 00 00 00 00 00 00         ........
    df58: 00 00 00 00 00 00 00 00         ........
    df60: 00 00 00 00 00 00 00 00         ........
    df68: ce 98 d9 8d 11 3b d9 3f         .....;.?
    df70: ce 98 d9 8d 11 3b d9 bf         .....;..
    df78: 34 aa a2 31 6b 72 95 bf         4..1kr..
    df80: 00 00 00 00 00 00 00 00         ........
    df88: 00 00 00 00 00 00 00 00         ........
    df90: 00 00 00 00 00 00 00 00         ........
    df98: 00 00 00 00 00 00 00 00         ........
    dfa0: 00 00 00 00 00 00 00 00         ........
    dfa8: eb 20 97 f7 94 f9 ef 3f         . .....?
    dfb0: 00 54 7c a3 21 ac 49 3f         .T|.!.I?
    dfb8: 00 00 00 00 00 00 00 00         ........
    dfc0: 00 00 00 00 00 00 00 00         ........
    dfc8: 00 00 00 00 00 00 00 00         ........
    dfd0: 00 00 00 00 00 00 00 00         ........
    dfd8: 00 00 00 00 00 00 00 00         ........
    dfe0: 00 00 00 00 00 00 00 00         ........
    dfe8: eb 20 97 f7 94 f9 ef 3f         . .....?
    dff0: eb 20 97 f7 94 f9 ef bf         . ......
    dff8: 00 00 00 00 00 00 00 00         ........

0000e000 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.7>:
    e000: e1 d7 00 00 4b 00 00 00         ....K...
    e008: 1e 06 00 00 09 00 00 00         ........
