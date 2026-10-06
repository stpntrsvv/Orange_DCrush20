
simulation/experiments/tda48/20260929T100924Z/probe.elf:	file format elf32-littlearm

Disassembly of section .text:

00000408 <Reset>:
     408: b580         	push	{r7, lr}
     40a: 466f         	mov	r7, sp
     40c: f6ad 6db8    	subw	sp, sp, #0xeb8
     410: f244 503c    	movw	r0, #0x453c
     414: f241 0204    	movw	r2, #0x1004
     418: f6c5 0002    	movt	r0, #0x5802
     41c: f2ce 0200    	movt	r2, #0xe000
     420: 2500         	movs	r5, #0x0
     422: f244 1844    	movw	r8, #0x4144
     426: 6801         	ldr	r1, [r0]
     428: f244 764f    	movw	r6, #0x474f
     42c: f441 4180    	orr	r1, r1, #0x4000
     430: 6001         	str	r1, [r0]
     432: f64e 51fc    	movw	r1, #0xedfc
     436: 6800         	ldr	r0, [r0]
     438: f2ce 0100    	movt	r1, #0xe000
     43c: f64f 7400    	movw	r4, #0xff00
     440: f248 0900    	movw	r9, #0x8000
     444: f2c5 2845    	movt	r8, #0x5245
     448: 6808         	ldr	r0, [r1]
     44a: f2c4 764f    	movt	r6, #0x474f
     44e: f040 7080    	orr	r0, r0, #0x1000000
     452: 6008         	str	r0, [r1]
     454: 6015         	str	r5, [r2]
     456: f240 4114    	movw	r1, #0x414
     45a: f852 0c04    	ldr	r0, [r2, #-4]
     45e: f2c2 0400    	movt	r4, #0x2000
     462: f040 0001    	orr	r0, r0, #0x1
     466: f842 0c04    	str	r0, [r2, #-4]
     46a: a815         	add	r0, sp, #0x54
     46c: f2c2 0900    	movt	r9, #0x2000
     470: f00a ff57    	bl	0xb322 <__aeabi_memclr4> @ imm = #0xaeae
     474: f50d 6a8d    	add.w	r10, sp, #0x468
     478: f240 4114    	movw	r1, #0x414
     47c: 4650         	mov	r0, r10
     47e: f00a ff50    	bl	0xb322 <__aeabi_memclr4> @ imm = #0xaea0
     482: f60d 007c    	addw	r0, sp, #0x87c
     486: f44f 61c0    	mov.w	r1, #0x600
     48a: f00a ff4a    	bl	0xb322 <__aeabi_memclr4> @ imm = #0xae94
     48e: 46d4         	mov	r12, r10
     490: f1a7 003c    	sub.w	r0, r7, #0x3c
     494: f847 5c28    	str	r5, [r7, #-40]
     498: 3004         	adds	r0, #0x4
     49a: e947 550c    	strd	r5, r5, [r7, #-48]
     49e: e947 550e    	strd	r5, r5, [r7, #-56]
     4a2: f847 5c3c    	str	r5, [r7, #-60]
     4a6: 9001         	str	r0, [sp, #0x4]
     4a8: 2000         	movs	r0, #0x0
     4aa: f8c4 8000    	str.w	r8, [r4]
     4ae: 9003         	str	r0, [sp, #0xc]
     4b0: 6820         	ldr	r0, [r4]
     4b2: 42b0         	cmp	r0, r6
     4b4: f040 849d    	bne.w	0xdf2 <Reset+0x9ea>     @ imm = #0x93a
     4b8: e00a         	b	0x4d0 <Reset+0xc8>      @ imm = #0x14
     4ba: bf00         	nop
     4bc: bf00         	nop
     4be: bf00         	nop
     4c0: bf10         	yield
     4c2: 6820         	ldr	r0, [r4]
     4c4: 42b0         	cmp	r0, r6
     4c6: f040 8494    	bne.w	0xdf2 <Reset+0x9ea>     @ imm = #0x928
     4ca: bf00         	nop
     4cc: bf00         	nop
     4ce: bf00         	nop
     4d0: 6860         	ldr	r0, [r4, #0x4]
     4d2: ed94 9a02    	vldr	s18, [r4, #8]
     4d6: 2800         	cmp	r0, #0x0
     4d8: f000 849e    	beq.w	0xe18 <Reset+0xa10>     @ imm = #0x93c
     4dc: f5b0 4f80    	cmp.w	r0, #0x4000
     4e0: f200 84aa    	bhi.w	0xe38 <Reset+0xa30>     @ imm = #0x954
     4e4: eeb5 9a40    	vcmp.f32	s18, #0
     4e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     4ec: f240 84a4    	bls.w	0xe38 <Reset+0xa30>     @ imm = #0x948
     4f0: 9002         	str	r0, [sp, #0x8]
     4f2: f06f 00ff    	mvn	r0, #0xff
     4f6: bf00         	nop
     4f8: eb09 0100    	add.w	r1, r9, r0
     4fc: f500 7080    	add.w	r0, r0, #0x100
     500: f5b0 5f60    	cmp.w	r0, #0x3800
     504: f8c1 5100    	str.w	r5, [r1, #0x100]
     508: f8c1 5104    	str.w	r5, [r1, #0x104]
     50c: f8c1 5108    	str.w	r5, [r1, #0x108]
     510: f8c1 510c    	str.w	r5, [r1, #0x10c]
     514: f8c1 5110    	str.w	r5, [r1, #0x110]
     518: f8c1 5114    	str.w	r5, [r1, #0x114]
     51c: f8c1 5118    	str.w	r5, [r1, #0x118]
     520: f8c1 511c    	str.w	r5, [r1, #0x11c]
     524: f8c1 5120    	str.w	r5, [r1, #0x120]
     528: f8c1 5124    	str.w	r5, [r1, #0x124]
     52c: f8c1 5128    	str.w	r5, [r1, #0x128]
     530: f8c1 512c    	str.w	r5, [r1, #0x12c]
     534: f8c1 5130    	str.w	r5, [r1, #0x130]
     538: f8c1 5134    	str.w	r5, [r1, #0x134]
     53c: f8c1 5138    	str.w	r5, [r1, #0x138]
     540: f8c1 513c    	str.w	r5, [r1, #0x13c]
     544: f8c1 5140    	str.w	r5, [r1, #0x140]
     548: f8c1 5144    	str.w	r5, [r1, #0x144]
     54c: f8c1 5148    	str.w	r5, [r1, #0x148]
     550: f8c1 514c    	str.w	r5, [r1, #0x14c]
     554: f8c1 5150    	str.w	r5, [r1, #0x150]
     558: f8c1 5154    	str.w	r5, [r1, #0x154]
     55c: f8c1 5158    	str.w	r5, [r1, #0x158]
     560: f8c1 515c    	str.w	r5, [r1, #0x15c]
     564: f8c1 5160    	str.w	r5, [r1, #0x160]
     568: f8c1 5164    	str.w	r5, [r1, #0x164]
     56c: f8c1 5168    	str.w	r5, [r1, #0x168]
     570: f8c1 516c    	str.w	r5, [r1, #0x16c]
     574: f8c1 5170    	str.w	r5, [r1, #0x170]
     578: f8c1 5174    	str.w	r5, [r1, #0x174]
     57c: f8c1 5178    	str.w	r5, [r1, #0x178]
     580: f8c1 517c    	str.w	r5, [r1, #0x17c]
     584: f8c1 5180    	str.w	r5, [r1, #0x180]
     588: f8c1 5184    	str.w	r5, [r1, #0x184]
     58c: f8c1 5188    	str.w	r5, [r1, #0x188]
     590: f8c1 518c    	str.w	r5, [r1, #0x18c]
     594: f8c1 5190    	str.w	r5, [r1, #0x190]
     598: f8c1 5194    	str.w	r5, [r1, #0x194]
     59c: f8c1 5198    	str.w	r5, [r1, #0x198]
     5a0: f8c1 519c    	str.w	r5, [r1, #0x19c]
     5a4: f8c1 51a0    	str.w	r5, [r1, #0x1a0]
     5a8: f8c1 51a4    	str.w	r5, [r1, #0x1a4]
     5ac: f8c1 51a8    	str.w	r5, [r1, #0x1a8]
     5b0: f8c1 51ac    	str.w	r5, [r1, #0x1ac]
     5b4: f8c1 51b0    	str.w	r5, [r1, #0x1b0]
     5b8: f8c1 51b4    	str.w	r5, [r1, #0x1b4]
     5bc: f8c1 51b8    	str.w	r5, [r1, #0x1b8]
     5c0: f8c1 51bc    	str.w	r5, [r1, #0x1bc]
     5c4: f8c1 51c0    	str.w	r5, [r1, #0x1c0]
     5c8: f8c1 51c4    	str.w	r5, [r1, #0x1c4]
     5cc: f8c1 51c8    	str.w	r5, [r1, #0x1c8]
     5d0: f8c1 51cc    	str.w	r5, [r1, #0x1cc]
     5d4: f8c1 51d0    	str.w	r5, [r1, #0x1d0]
     5d8: f8c1 51d4    	str.w	r5, [r1, #0x1d4]
     5dc: f8c1 51d8    	str.w	r5, [r1, #0x1d8]
     5e0: f8c1 51dc    	str.w	r5, [r1, #0x1dc]
     5e4: f8c1 51e0    	str.w	r5, [r1, #0x1e0]
     5e8: f8c1 51e4    	str.w	r5, [r1, #0x1e4]
     5ec: f8c1 51e8    	str.w	r5, [r1, #0x1e8]
     5f0: f8c1 51ec    	str.w	r5, [r1, #0x1ec]
     5f4: f8c1 51f0    	str.w	r5, [r1, #0x1f0]
     5f8: f8c1 51f4    	str.w	r5, [r1, #0x1f4]
     5fc: f8c1 51f8    	str.w	r5, [r1, #0x1f8]
     600: f8c1 51fc    	str.w	r5, [r1, #0x1fc]
     604: f47f af78    	bne.w	0x4f8 <Reset+0xf0>      @ imm = #-0x110
     608: f241 0004    	movw	r0, #0x1004
     60c: 2200         	movs	r2, #0x0
     60e: f2ce 0000    	movt	r0, #0xe000
     612: ac15         	add	r4, sp, #0x54
     614: 6800         	ldr	r0, [r0]
     616: 9000         	str	r0, [sp]
     618: 9903         	ldr	r1, [sp, #0xc]
     61a: f649 50c5    	movw	r0, #0x9dc5
     61e: f2c8 101c    	movt	r0, #0x811c
     622: 9007         	str	r0, [sp, #0x1c]
     624: e012         	b	0x64c <Reset+0x244>     @ imm = #0x24
     626: bf00         	nop
     628: 9807         	ldr	r0, [sp, #0x1c]
     62a: 9904         	ldr	r1, [sp, #0x10]
     62c: 4048         	eors	r0, r1
     62e: f240 1193    	movw	r1, #0x193
     632: f2c0 1100    	movt	r1, #0x100
     636: 9a06         	ldr	r2, [sp, #0x18]
     638: 4348         	muls	r0, r1, r0
     63a: 3201         	adds	r2, #0x1
     63c: 9007         	str	r0, [sp, #0x1c]
     63e: 9802         	ldr	r0, [sp, #0x8]
     640: 9905         	ldr	r1, [sp, #0x14]
     642: 4282         	cmp	r2, r0
     644: f101 0101    	add.w	r1, r1, #0x1
     648: f000 81ce    	beq.w	0x9e8 <Reset+0x5e0>     @ imm = #0x39c
     64c: f04f 5000    	mov.w	r0, #0x20000000
     650: f04f 0a00    	mov.w	r10, #0x0
     654: f930 0012    	ldrsh.w	r0, [r0, r2, lsl #1]
     658: 9105         	str	r1, [sp, #0x14]
     65a: f001 013f    	and	r1, r1, #0x3f
     65e: 9206         	str	r2, [sp, #0x18]
     660: ee00 0a10    	vmov	s0, r0
     664: b280         	uxth	r0, r0
     666: 9004         	str	r0, [sp, #0x10]
     668: 9803         	ldr	r0, [sp, #0xc]
     66a: eeb8 0ac0    	vcvt.f32.s32	s0, s0
     66e: eb02 0800    	add.w	r8, r2, r0
     672: f60d 007c    	addw	r0, sp, #0x87c
     676: 2200         	movs	r2, #0x0
     678: eb00 0081    	add.w	r0, r0, r1, lsl #2
     67c: f1a7 0124    	sub.w	r1, r7, #0x24
     680: ee80 aa09    	vdiv.f32	s20, s0, s18
     684: 9014         	str	r0, [sp, #0x50]
     686: f1a8 003f    	sub.w	r0, r8, #0x3f
     68a: 9008         	str	r0, [sp, #0x20]
     68c: 9801         	ldr	r0, [sp, #0x4]
     68e: 9013         	str	r0, [sp, #0x4c]
     690: f8cd 8034    	str.w	r8, [sp, #0x34]
     694: e021         	b	0x6da <Reset+0x2d2>     @ imm = #0x42
     696: bf00         	nop
     698: f8d1 09b4    	ldr.w	r0, [r1, #0x9b4]
     69c: 3001         	adds	r0, #0x1
     69e: f8c1 09b4    	str.w	r0, [r1, #0x9b4]
     6a2: f8d1 09b8    	ldr.w	r0, [r1, #0x9b8]
     6a6: 3001         	adds	r0, #0x1
     6a8: f8c1 09b8    	str.w	r0, [r1, #0x9b8]
     6ac: 980b         	ldr	r0, [sp, #0x2c]
     6ae: f8c1 09bc    	str.w	r0, [r1, #0x9bc]
     6b2: f50a 5a98    	add.w	r10, r10, #0x1300
     6b6: 9a11         	ldr	r2, [sp, #0x44]
     6b8: 9912         	ldr	r1, [sp, #0x48]
     6ba: 9813         	ldr	r0, [sp, #0x4c]
     6bc: f502 72ae    	add.w	r2, r2, #0x15c
     6c0: 3104         	adds	r1, #0x4
     6c2: f5ba 5f64    	cmp.w	r10, #0x3900
     6c6: f100 0008    	add.w	r0, r0, #0x8
     6ca: 9013         	str	r0, [sp, #0x4c]
     6cc: 9814         	ldr	r0, [sp, #0x50]
     6ce: f50d 6c8d    	add.w	r12, sp, #0x468
     6d2: f500 7000    	add.w	r0, r0, #0x200
     6d6: 9014         	str	r0, [sp, #0x50]
     6d8: d0a6         	beq	0x628 <Reset+0x220>     @ imm = #-0xb4
     6da: f64c 40cd    	movw	r0, #0xcccd
     6de: 46a1         	mov	r9, r4
     6e0: eb04 0b02    	add.w	r11, r4, r2
     6e4: eb0c 0402    	add.w	r4, r12, r2
     6e8: f6c3 50cc    	movt	r0, #0x3dcc
     6ec: f847 0c24    	str	r0, [r7, #-36]
     6f0: f04f 507a    	mov.w	r0, #0x3e800000
     6f4: f847 0c20    	str	r0, [r7, #-32]
     6f8: f04f 507e    	mov.w	r0, #0x3f800000
     6fc: f847 0c1c    	str	r0, [r7, #-28]
     700: ed91 0a00    	vldr	s0, [r1]
     704: f8db 0118    	ldr.w	r0, [r11, #0x118]
     708: 9010         	str	r0, [sp, #0x40]
     70a: ea5f 70c8    	lsls.w	r0, r8, #0x1f
     70e: f8d4 0118    	ldr.w	r0, [r4, #0x118]
     712: 900e         	str	r0, [sp, #0x38]
     714: f241 0004    	movw	r0, #0x1004
     718: ee2a 8a00    	vmul.f32	s16, s20, s0
     71c: f2ce 0000    	movt	r0, #0xe000
     720: 9112         	str	r1, [sp, #0x48]
     722: 9211         	str	r2, [sp, #0x44]
     724: 6805         	ldr	r5, [r0]
     726: 940f         	str	r4, [sp, #0x3c]
     728: d122         	bne	0x770 <Reset+0x368>     @ imm = #0x44
     72a: eeb0 0a48    	vmov.f32	s0, s16
     72e: f1a7 000c    	sub.w	r0, r7, #0xc
     732: 4659         	mov	r1, r11
     734: f009 f948    	bl	0x99c8 <tda48_probe::candidate> @ imm = #0x9290
     738: f241 0604    	movw	r6, #0x1004
     73c: eeb0 0a48    	vmov.f32	s0, s16
     740: f2ce 0600    	movt	r6, #0xe000
     744: f1a7 0018    	sub.w	r0, r7, #0x18
     748: 4621         	mov	r1, r4
     74a: f8d6 8000    	ldr.w	r8, [r6]
     74e: f008 fc2b    	bl	0x8fa8 <tda48_probe::control> @ imm = #0x8856
     752: 6830         	ldr	r0, [r6]
     754: eba8 0e05    	sub.w	lr, r8, r5
     758: eba0 0208    	sub.w	r2, r0, r8
     75c: f8dd 8034    	ldr.w	r8, [sp, #0x34]
     760: 464c         	mov	r4, r9
     762: f817 0c03    	ldrb	r0, [r7, #-3]
     766: 2802         	cmp	r0, #0x2
     768: d0a3         	beq	0x6b2 <Reset+0x2aa>     @ imm = #-0xba
     76a: e01e         	b	0x7aa <Reset+0x3a2>     @ imm = #0x3c
     76c: bf00         	nop
     76e: bf00         	nop
     770: eeb0 0a48    	vmov.f32	s0, s16
     774: f1a7 0018    	sub.w	r0, r7, #0x18
     778: 4621         	mov	r1, r4
     77a: f008 fc15    	bl	0x8fa8 <tda48_probe::control> @ imm = #0x882a
     77e: f241 0404    	movw	r4, #0x1004
     782: eeb0 0a48    	vmov.f32	s0, s16
     786: f2ce 0400    	movt	r4, #0xe000
     78a: f1a7 000c    	sub.w	r0, r7, #0xc
     78e: 4659         	mov	r1, r11
     790: 6826         	ldr	r6, [r4]
     792: f009 f919    	bl	0x99c8 <tda48_probe::candidate> @ imm = #0x9232
     796: 6820         	ldr	r0, [r4]
     798: ac15         	add	r4, sp, #0x54
     79a: 1b72         	subs	r2, r6, r5
     79c: eba0 0e06    	sub.w	lr, r0, r6
     7a0: f817 0c03    	ldrb	r0, [r7, #-3]
     7a4: 2802         	cmp	r0, #0x2
     7a6: f43f af84    	beq.w	0x6b2 <Reset+0x2aa>     @ imm = #-0xf8
     7aa: f248 0800    	movw	r8, #0x8000
     7ae: f817 4c10    	ldrb	r4, [r7, #-16]
     7b2: f2c2 0800    	movt	r8, #0x2000
     7b6: f857 1c0c    	ldr	r1, [r7, #-12]
     7ba: 910c         	str	r1, [sp, #0x30]
     7bc: f857 1c18    	ldr	r1, [r7, #-24]
     7c0: 910b         	str	r1, [sp, #0x2c]
     7c2: f857 1c14    	ldr	r1, [r7, #-20]
     7c6: 910a         	str	r1, [sp, #0x28]
     7c8: eb08 010a    	add.w	r1, r8, r10
     7cc: 9409         	str	r4, [sp, #0x24]
     7ce: f857 cc08    	ldr	r12, [r7, #-8]
     7d2: f817 3c04    	ldrb	r3, [r7, #-4]
     7d6: f817 9c0f    	ldrb	r9, [r7, #-15]
     7da: f858 500a    	ldr.w	r5, [r8, r10]
     7de: 684e         	ldr	r6, [r1, #0x4]
     7e0: eb15 050e    	adds.w	r5, r5, lr
     7e4: f848 500a    	str.w	r5, [r8, r10]
     7e8: f8dd 8034    	ldr.w	r8, [sp, #0x34]
     7ec: f146 0500    	adc	r5, r6, #0x0
     7f0: 604d         	str	r5, [r1, #0x4]
     7f2: 688d         	ldr	r5, [r1, #0x8]
     7f4: 9c10         	ldr	r4, [sp, #0x40]
     7f6: 45ae         	cmp	lr, r5
     7f8: f104 0501    	add.w	r5, r4, #0x1
     7fc: d903         	bls	0x806 <Reset+0x3fe>     @ imm = #0x6
     7fe: f8c1 e008    	str.w	lr, [r1, #0x8]
     802: f8c1 800c    	str.w	r8, [r1, #0xc]
     806: 690e         	ldr	r6, [r1, #0x10]
     808: f243 04d4    	movw	r4, #0x30d4
     80c: 45a6         	cmp	lr, r4
     80e: f242 7410    	movw	r4, #0x2710
     812: bf88         	it	hi
     814: 3601         	addhi	r6, #0x1
     816: 45a6         	cmp	lr, r4
     818: ac15         	add	r4, sp, #0x54
     81a: 610e         	str	r6, [r1, #0x10]
     81c: 694e         	ldr	r6, [r1, #0x14]
     81e: bf88         	it	hi
     820: 3601         	addhi	r6, #0x1
     822: 614e         	str	r6, [r1, #0x14]
     824: 2601         	movs	r6, #0x1
     826: ea26 0000    	bic.w	r0, r6, r0
     82a: 698e         	ldr	r6, [r1, #0x18]
     82c: 4430         	add	r0, r6
     82e: 6188         	str	r0, [r1, #0x18]
     830: 6a08         	ldr	r0, [r1, #0x20]
     832: 4418         	add	r0, r3
     834: 6208         	str	r0, [r1, #0x20]
     836: 6a48         	ldr	r0, [r1, #0x24]
     838: 4298         	cmp	r0, r3
     83a: bf88         	it	hi
     83c: 4603         	movhi	r3, r0
     83e: 624b         	str	r3, [r1, #0x24]
     840: 6a88         	ldr	r0, [r1, #0x28]
     842: 4584         	cmp	r12, r0
     844: bf88         	it	hi
     846: 4660         	movhi	r0, r12
     848: 6288         	str	r0, [r1, #0x28]
     84a: f8db 0118    	ldr.w	r0, [r11, #0x118]
     84e: 69cb         	ldr	r3, [r1, #0x1c]
     850: 42a8         	cmp	r0, r5
     852: ea4f 10de    	lsr.w	r0, lr, #0x7
     856: bf18         	it	ne
     858: 3301         	addne	r3, #0x1
     85a: f5b0 7fff    	cmp.w	r0, #0x1fe
     85e: f240 10ff    	movw	r0, #0x1ff
     862: bf98         	it	ls
     864: ea4f 10de    	lsrls.w	r0, lr, #0x7
     868: 61cb         	str	r3, [r1, #0x1c]
     86a: f1b8 0f3f    	cmp.w	r8, #0x3f
     86e: eb01 0080    	add.w	r0, r1, r0, lsl #2
     872: f8d0 3080    	ldr.w	r3, [r0, #0x80]
     876: f103 0301    	add.w	r3, r3, #0x1
     87a: f8c0 3080    	str.w	r3, [r0, #0x80]
     87e: 9d13         	ldr	r5, [sp, #0x4c]
     880: 9e14         	ldr	r6, [sp, #0x50]
     882: f855 0c04    	ldr	r0, [r5, #-4]
     886: 6833         	ldr	r3, [r6]
     888: 4470         	add	r0, lr
     88a: f8c6 e000    	str.w	lr, [r6]
     88e: eba0 0003    	sub.w	r0, r0, r3
     892: f845 0c04    	str	r0, [r5, #-4]
     896: d318         	blo	0x8ca <Reset+0x4c2>     @ imm = #0x30
     898: 6acb         	ldr	r3, [r1, #0x2c]
     89a: 4298         	cmp	r0, r3
     89c: d902         	bls	0x8a4 <Reset+0x49c>     @ imm = #0x4
     89e: 62c8         	str	r0, [r1, #0x2c]
     8a0: 9b08         	ldr	r3, [sp, #0x20]
     8a2: 630b         	str	r3, [r1, #0x30]
     8a4: f243 5300    	movw	r3, #0x3500
     8a8: f2c0 030c    	movt	r3, #0xc
     8ac: 4298         	cmp	r0, r3
     8ae: d903         	bls	0x8b8 <Reset+0x4b0>     @ imm = #0x6
     8b0: 6b48         	ldr	r0, [r1, #0x34]
     8b2: 3001         	adds	r0, #0x1
     8b4: 6348         	str	r0, [r1, #0x34]
     8b6: e005         	b	0x8c4 <Reset+0x4bc>     @ imm = #0xa
     8b8: f24c 4300    	movw	r3, #0xc400
     8bc: f2c0 0309    	movt	r3, #0x9
     8c0: 4298         	cmp	r0, r3
     8c2: d902         	bls	0x8ca <Reset+0x4c2>     @ imm = #0x4
     8c4: 6b88         	ldr	r0, [r1, #0x38]
     8c6: 3001         	adds	r0, #0x1
     8c8: 6388         	str	r0, [r1, #0x38]
     8ca: f1b9 0f02    	cmp.w	r9, #0x2
     8ce: 980c         	ldr	r0, [sp, #0x30]
     8d0: 63c8         	str	r0, [r1, #0x3c]
     8d2: f43f aeee    	beq.w	0x6b2 <Reset+0x2aa>     @ imm = #-0x224
     8d6: f8d1 0980    	ldr.w	r0, [r1, #0x980]
     8da: f8d1 3984    	ldr.w	r3, [r1, #0x984]
     8de: 1880         	adds	r0, r0, r2
     8e0: f8c1 0980    	str.w	r0, [r1, #0x980]
     8e4: f143 0000    	adc	r0, r3, #0x0
     8e8: f8c1 0984    	str.w	r0, [r1, #0x984]
     8ec: f8d1 0988    	ldr.w	r0, [r1, #0x988]
     8f0: 4282         	cmp	r2, r0
     8f2: 980e         	ldr	r0, [sp, #0x38]
     8f4: f100 0001    	add.w	r0, r0, #0x1
     8f8: d903         	bls	0x902 <Reset+0x4fa>     @ imm = #0x6
     8fa: f8c1 2988    	str.w	r2, [r1, #0x988]
     8fe: f8c1 898c    	str.w	r8, [r1, #0x98c]
     902: f8d1 3990    	ldr.w	r3, [r1, #0x990]
     906: f243 06d4    	movw	r6, #0x30d4
     90a: 42b2         	cmp	r2, r6
     90c: f242 7610    	movw	r6, #0x2710
     910: bf88         	it	hi
     912: 3301         	addhi	r3, #0x1
     914: 42b2         	cmp	r2, r6
     916: f8c1 3990    	str.w	r3, [r1, #0x990]
     91a: f8d1 3994    	ldr.w	r3, [r1, #0x994]
     91e: bf88         	it	hi
     920: 3301         	addhi	r3, #0x1
     922: f8c1 3994    	str.w	r3, [r1, #0x994]
     926: 2301         	movs	r3, #0x1
     928: ea23 0309    	bic.w	r3, r3, r9
     92c: f8d1 6998    	ldr.w	r6, [r1, #0x998]
     930: 4433         	add	r3, r6
     932: f8c1 3998    	str.w	r3, [r1, #0x998]
     936: f8d1 39a0    	ldr.w	r3, [r1, #0x9a0]
     93a: f8dd 9024    	ldr.w	r9, [sp, #0x24]
     93e: 444b         	add	r3, r9
     940: f8c1 39a0    	str.w	r3, [r1, #0x9a0]
     944: f8d1 39a4    	ldr.w	r3, [r1, #0x9a4]
     948: 454b         	cmp	r3, r9
     94a: bf88         	it	hi
     94c: 4699         	movhi	r9, r3
     94e: f8c1 99a4    	str.w	r9, [r1, #0x9a4]
     952: f8d1 39a8    	ldr.w	r3, [r1, #0x9a8]
     956: f8dd 9028    	ldr.w	r9, [sp, #0x28]
     95a: 4599         	cmp	r9, r3
     95c: bf88         	it	hi
     95e: 464b         	movhi	r3, r9
     960: f8c1 39a8    	str.w	r3, [r1, #0x9a8]
     964: 9b0f         	ldr	r3, [sp, #0x3c]
     966: f8d3 3118    	ldr.w	r3, [r3, #0x118]
     96a: f8d1 699c    	ldr.w	r6, [r1, #0x99c]
     96e: 4283         	cmp	r3, r0
     970: ea4f 10d2    	lsr.w	r0, r2, #0x7
     974: bf18         	it	ne
     976: 3601         	addne	r6, #0x1
     978: f5b0 7fff    	cmp.w	r0, #0x1fe
     97c: f240 10ff    	movw	r0, #0x1ff
     980: bf98         	it	ls
     982: 09d0         	lsrls	r0, r2, #0x7
     984: f8c1 699c    	str.w	r6, [r1, #0x99c]
     988: f1b8 0f3e    	cmp.w	r8, #0x3e
     98c: eb01 0080    	add.w	r0, r1, r0, lsl #2
     990: f8d0 3a00    	ldr.w	r3, [r0, #0xa00]
     994: f103 0301    	add.w	r3, r3, #0x1
     998: f8c0 3a00    	str.w	r3, [r0, #0xa00]
     99c: 9d13         	ldr	r5, [sp, #0x4c]
     99e: 9e14         	ldr	r6, [sp, #0x50]
     9a0: 6828         	ldr	r0, [r5]
     9a2: f8d6 3100    	ldr.w	r3, [r6, #0x100]
     9a6: 4410         	add	r0, r2
     9a8: f8c6 2100    	str.w	r2, [r6, #0x100]
     9ac: eba0 0003    	sub.w	r0, r0, r3
     9b0: 6028         	str	r0, [r5]
     9b2: f67f ae7b    	bls.w	0x6ac <Reset+0x2a4>     @ imm = #-0x30a
     9b6: f8d1 29ac    	ldr.w	r2, [r1, #0x9ac]
     9ba: 4290         	cmp	r0, r2
     9bc: d904         	bls	0x9c8 <Reset+0x5c0>     @ imm = #0x8
     9be: f8c1 09ac    	str.w	r0, [r1, #0x9ac]
     9c2: 9a08         	ldr	r2, [sp, #0x20]
     9c4: f8c1 29b0    	str.w	r2, [r1, #0x9b0]
     9c8: f243 5200    	movw	r2, #0x3500
     9cc: f2c0 020c    	movt	r2, #0xc
     9d0: 4290         	cmp	r0, r2
     9d2: f63f ae61    	bhi.w	0x698 <Reset+0x290>     @ imm = #-0x33e
     9d6: f24c 4200    	movw	r2, #0xc400
     9da: f2c0 0209    	movt	r2, #0x9
     9de: 4290         	cmp	r0, r2
     9e0: f63f ae5f    	bhi.w	0x6a2 <Reset+0x29a>     @ imm = #-0x342
     9e4: e662         	b	0x6ac <Reset+0x2a4>     @ imm = #-0x33c
     9e6: bf00         	nop
     9e8: f241 0004    	movw	r0, #0x1004
     9ec: f248 0900    	movw	r9, #0x8000
     9f0: f2ce 0000    	movt	r0, #0xe000
     9f4: 2100         	movs	r1, #0x0
     9f6: f2c2 0900    	movt	r9, #0x2000
     9fa: f241 2868    	movw	r8, #0x1268
     9fe: 6800         	ldr	r0, [r0]
     a00: 9014         	str	r0, [sp, #0x50]
     a02: f44f 70ae    	mov.w	r0, #0x15c
     a06: f241 2ad8    	movw	r10, #0x12d8
     a0a: f241 2b6c    	movw	r11, #0x126c
     a0e: f241 2edc    	movw	lr, #0x12dc
     a12: bf00         	nop
     a14: bf00         	nop
     a16: bf00         	nop
     a18: f44f 5298    	mov.w	r2, #0x1300
     a1c: fb01 4600    	mla	r6, r1, r0, r4
     a20: fb01 9202    	mla	r2, r1, r2, r9
     a24: 6a33         	ldr	r3, [r6, #0x20]
     a26: f8c2 3880    	str.w	r3, [r2, #0x880]
     a2a: f8d6 3090    	ldr.w	r3, [r6, #0x90]
     a2e: f8c2 38f0    	str.w	r3, [r2, #0x8f0]
     a32: 6a73         	ldr	r3, [r6, #0x24]
     a34: f8c2 3884    	str.w	r3, [r2, #0x884]
     a38: f8d6 3094    	ldr.w	r3, [r6, #0x94]
     a3c: f8c2 38f4    	str.w	r3, [r2, #0x8f4]
     a40: 6ab3         	ldr	r3, [r6, #0x28]
     a42: f8c2 3888    	str.w	r3, [r2, #0x888]
     a46: f8d6 3098    	ldr.w	r3, [r6, #0x98]
     a4a: f8c2 38f8    	str.w	r3, [r2, #0x8f8]
     a4e: 6af3         	ldr	r3, [r6, #0x2c]
     a50: f8c2 388c    	str.w	r3, [r2, #0x88c]
     a54: f8d6 309c    	ldr.w	r3, [r6, #0x9c]
     a58: f8c2 38fc    	str.w	r3, [r2, #0x8fc]
     a5c: 6b33         	ldr	r3, [r6, #0x30]
     a5e: f8c2 3890    	str.w	r3, [r2, #0x890]
     a62: f8d6 30a0    	ldr.w	r3, [r6, #0xa0]
     a66: f8c2 3900    	str.w	r3, [r2, #0x900]
     a6a: 6b73         	ldr	r3, [r6, #0x34]
     a6c: f8c2 3894    	str.w	r3, [r2, #0x894]
     a70: f8d6 30a4    	ldr.w	r3, [r6, #0xa4]
     a74: f8c2 3904    	str.w	r3, [r2, #0x904]
     a78: 6bb3         	ldr	r3, [r6, #0x38]
     a7a: f8c2 3898    	str.w	r3, [r2, #0x898]
     a7e: f8d6 30a8    	ldr.w	r3, [r6, #0xa8]
     a82: f8c2 3908    	str.w	r3, [r2, #0x908]
     a86: 6bf3         	ldr	r3, [r6, #0x3c]
     a88: f8c2 389c    	str.w	r3, [r2, #0x89c]
     a8c: f8d6 30ac    	ldr.w	r3, [r6, #0xac]
     a90: f8c2 390c    	str.w	r3, [r2, #0x90c]
     a94: 6c33         	ldr	r3, [r6, #0x40]
     a96: f8c2 38a0    	str.w	r3, [r2, #0x8a0]
     a9a: f8d6 30b0    	ldr.w	r3, [r6, #0xb0]
     a9e: f8c2 3910    	str.w	r3, [r2, #0x910]
     aa2: 6c73         	ldr	r3, [r6, #0x44]
     aa4: f8c2 38a4    	str.w	r3, [r2, #0x8a4]
     aa8: f8d6 30b4    	ldr.w	r3, [r6, #0xb4]
     aac: f8c2 3914    	str.w	r3, [r2, #0x914]
     ab0: 6cb3         	ldr	r3, [r6, #0x48]
     ab2: f8c2 38a8    	str.w	r3, [r2, #0x8a8]
     ab6: f8d6 30b8    	ldr.w	r3, [r6, #0xb8]
     aba: f8c2 3918    	str.w	r3, [r2, #0x918]
     abe: 6cf3         	ldr	r3, [r6, #0x4c]
     ac0: f8c2 38ac    	str.w	r3, [r2, #0x8ac]
     ac4: f8d6 30bc    	ldr.w	r3, [r6, #0xbc]
     ac8: f8c2 391c    	str.w	r3, [r2, #0x91c]
     acc: 6d33         	ldr	r3, [r6, #0x50]
     ace: f8c2 38b0    	str.w	r3, [r2, #0x8b0]
     ad2: f8d6 30c0    	ldr.w	r3, [r6, #0xc0]
     ad6: f8c2 3920    	str.w	r3, [r2, #0x920]
     ada: 6d73         	ldr	r3, [r6, #0x54]
     adc: f8c2 38b4    	str.w	r3, [r2, #0x8b4]
     ae0: f8d6 30c4    	ldr.w	r3, [r6, #0xc4]
     ae4: f8c2 3924    	str.w	r3, [r2, #0x924]
     ae8: 6db3         	ldr	r3, [r6, #0x58]
     aea: f8c2 38b8    	str.w	r3, [r2, #0x8b8]
     aee: f8d6 30c8    	ldr.w	r3, [r6, #0xc8]
     af2: f8c2 3928    	str.w	r3, [r2, #0x928]
     af6: 6df3         	ldr	r3, [r6, #0x5c]
     af8: f8c2 38bc    	str.w	r3, [r2, #0x8bc]
     afc: f8d6 30cc    	ldr.w	r3, [r6, #0xcc]
     b00: f8c2 392c    	str.w	r3, [r2, #0x92c]
     b04: 6e33         	ldr	r3, [r6, #0x60]
     b06: f8c2 38c0    	str.w	r3, [r2, #0x8c0]
     b0a: f8d6 30d0    	ldr.w	r3, [r6, #0xd0]
     b0e: f8c2 3930    	str.w	r3, [r2, #0x930]
     b12: 6e73         	ldr	r3, [r6, #0x64]
     b14: f8c2 38c4    	str.w	r3, [r2, #0x8c4]
     b18: f8d6 30d4    	ldr.w	r3, [r6, #0xd4]
     b1c: f8c2 3934    	str.w	r3, [r2, #0x934]
     b20: 6eb3         	ldr	r3, [r6, #0x68]
     b22: f8c2 38c8    	str.w	r3, [r2, #0x8c8]
     b26: f8d6 30d8    	ldr.w	r3, [r6, #0xd8]
     b2a: f8c2 3938    	str.w	r3, [r2, #0x938]
     b2e: 6ef3         	ldr	r3, [r6, #0x6c]
     b30: f8c2 38cc    	str.w	r3, [r2, #0x8cc]
     b34: f8d6 30dc    	ldr.w	r3, [r6, #0xdc]
     b38: f8c2 393c    	str.w	r3, [r2, #0x93c]
     b3c: 6f33         	ldr	r3, [r6, #0x70]
     b3e: f8c2 38d0    	str.w	r3, [r2, #0x8d0]
     b42: f8d6 30e0    	ldr.w	r3, [r6, #0xe0]
     b46: f8c2 3940    	str.w	r3, [r2, #0x940]
     b4a: 6f73         	ldr	r3, [r6, #0x74]
     b4c: f8c2 38d4    	str.w	r3, [r2, #0x8d4]
     b50: f8d6 30e4    	ldr.w	r3, [r6, #0xe4]
     b54: f8c2 3944    	str.w	r3, [r2, #0x944]
     b58: 6fb3         	ldr	r3, [r6, #0x78]
     b5a: f8c2 38d8    	str.w	r3, [r2, #0x8d8]
     b5e: f8d6 30e8    	ldr.w	r3, [r6, #0xe8]
     b62: f8c2 3948    	str.w	r3, [r2, #0x948]
     b66: 6ff3         	ldr	r3, [r6, #0x7c]
     b68: f8c2 38dc    	str.w	r3, [r2, #0x8dc]
     b6c: f8d6 30ec    	ldr.w	r3, [r6, #0xec]
     b70: f8c2 394c    	str.w	r3, [r2, #0x94c]
     b74: f8d6 3080    	ldr.w	r3, [r6, #0x80]
     b78: f8c2 38e0    	str.w	r3, [r2, #0x8e0]
     b7c: f8d6 30f0    	ldr.w	r3, [r6, #0xf0]
     b80: f8c2 3950    	str.w	r3, [r2, #0x950]
     b84: f8d6 3084    	ldr.w	r3, [r6, #0x84]
     b88: f8c2 38e4    	str.w	r3, [r2, #0x8e4]
     b8c: f8d6 30f4    	ldr.w	r3, [r6, #0xf4]
     b90: f8c2 3954    	str.w	r3, [r2, #0x954]
     b94: f8d6 3088    	ldr.w	r3, [r6, #0x88]
     b98: f8c2 38e8    	str.w	r3, [r2, #0x8e8]
     b9c: f8d6 30f8    	ldr.w	r3, [r6, #0xf8]
     ba0: f8c2 3958    	str.w	r3, [r2, #0x958]
     ba4: fb01 c300    	mla	r3, r1, r0, r12
     ba8: f8d6 508c    	ldr.w	r5, [r6, #0x8c]
     bac: f8c2 58ec    	str.w	r5, [r2, #0x8ec]
     bb0: f44f 5590    	mov.w	r5, #0x1200
     bb4: f8d6 60fc    	ldr.w	r6, [r6, #0xfc]
     bb8: f8c2 695c    	str.w	r6, [r2, #0x95c]
     bbc: 3101         	adds	r1, #0x1
     bbe: 6a1e         	ldr	r6, [r3, #0x20]
     bc0: 5156         	str	r6, [r2, r5]
     bc2: f241 2570    	movw	r5, #0x1270
     bc6: f8d3 6090    	ldr.w	r6, [r3, #0x90]
     bca: 2903         	cmp	r1, #0x3
     bcc: 5156         	str	r6, [r2, r5]
     bce: f241 2504    	movw	r5, #0x1204
     bd2: 6a5e         	ldr	r6, [r3, #0x24]
     bd4: 5156         	str	r6, [r2, r5]
     bd6: f241 2574    	movw	r5, #0x1274
     bda: f8d3 6094    	ldr.w	r6, [r3, #0x94]
     bde: 5156         	str	r6, [r2, r5]
     be0: f241 2508    	movw	r5, #0x1208
     be4: 6a9e         	ldr	r6, [r3, #0x28]
     be6: 5156         	str	r6, [r2, r5]
     be8: f241 2578    	movw	r5, #0x1278
     bec: f8d3 6098    	ldr.w	r6, [r3, #0x98]
     bf0: 5156         	str	r6, [r2, r5]
     bf2: f241 250c    	movw	r5, #0x120c
     bf6: 6ade         	ldr	r6, [r3, #0x2c]
     bf8: 5156         	str	r6, [r2, r5]
     bfa: f241 257c    	movw	r5, #0x127c
     bfe: f8d3 609c    	ldr.w	r6, [r3, #0x9c]
     c02: 5156         	str	r6, [r2, r5]
     c04: f241 2510    	movw	r5, #0x1210
     c08: 6b1e         	ldr	r6, [r3, #0x30]
     c0a: 5156         	str	r6, [r2, r5]
     c0c: f44f 5594    	mov.w	r5, #0x1280
     c10: f8d3 60a0    	ldr.w	r6, [r3, #0xa0]
     c14: 5156         	str	r6, [r2, r5]
     c16: f241 2514    	movw	r5, #0x1214
     c1a: 6b5e         	ldr	r6, [r3, #0x34]
     c1c: 5156         	str	r6, [r2, r5]
     c1e: f241 2584    	movw	r5, #0x1284
     c22: f8d3 60a4    	ldr.w	r6, [r3, #0xa4]
     c26: 5156         	str	r6, [r2, r5]
     c28: f241 2518    	movw	r5, #0x1218
     c2c: 6b9e         	ldr	r6, [r3, #0x38]
     c2e: 5156         	str	r6, [r2, r5]
     c30: f241 2588    	movw	r5, #0x1288
     c34: f8d3 60a8    	ldr.w	r6, [r3, #0xa8]
     c38: 5156         	str	r6, [r2, r5]
     c3a: f241 251c    	movw	r5, #0x121c
     c3e: 6bde         	ldr	r6, [r3, #0x3c]
     c40: 5156         	str	r6, [r2, r5]
     c42: f241 258c    	movw	r5, #0x128c
     c46: f8d3 60ac    	ldr.w	r6, [r3, #0xac]
     c4a: 5156         	str	r6, [r2, r5]
     c4c: f44f 5591    	mov.w	r5, #0x1220
     c50: 6c1e         	ldr	r6, [r3, #0x40]
     c52: 5156         	str	r6, [r2, r5]
     c54: f241 2590    	movw	r5, #0x1290
     c58: f8d3 60b0    	ldr.w	r6, [r3, #0xb0]
     c5c: 5156         	str	r6, [r2, r5]
     c5e: f241 2524    	movw	r5, #0x1224
     c62: 6c5e         	ldr	r6, [r3, #0x44]
     c64: 5156         	str	r6, [r2, r5]
     c66: f241 2594    	movw	r5, #0x1294
     c6a: f8d3 60b4    	ldr.w	r6, [r3, #0xb4]
     c6e: 5156         	str	r6, [r2, r5]
     c70: f241 2528    	movw	r5, #0x1228
     c74: 6c9e         	ldr	r6, [r3, #0x48]
     c76: 5156         	str	r6, [r2, r5]
     c78: f241 2598    	movw	r5, #0x1298
     c7c: f8d3 60b8    	ldr.w	r6, [r3, #0xb8]
     c80: 5156         	str	r6, [r2, r5]
     c82: f241 252c    	movw	r5, #0x122c
     c86: 6cde         	ldr	r6, [r3, #0x4c]
     c88: 5156         	str	r6, [r2, r5]
     c8a: f241 259c    	movw	r5, #0x129c
     c8e: f8d3 60bc    	ldr.w	r6, [r3, #0xbc]
     c92: 5156         	str	r6, [r2, r5]
     c94: f241 2530    	movw	r5, #0x1230
     c98: 6d1e         	ldr	r6, [r3, #0x50]
     c9a: 5156         	str	r6, [r2, r5]
     c9c: f44f 5595    	mov.w	r5, #0x12a0
     ca0: f8d3 60c0    	ldr.w	r6, [r3, #0xc0]
     ca4: 5156         	str	r6, [r2, r5]
     ca6: f241 2534    	movw	r5, #0x1234
     caa: 6d5e         	ldr	r6, [r3, #0x54]
     cac: 5156         	str	r6, [r2, r5]
     cae: f241 25a4    	movw	r5, #0x12a4
     cb2: f8d3 60c4    	ldr.w	r6, [r3, #0xc4]
     cb6: 5156         	str	r6, [r2, r5]
     cb8: f241 2538    	movw	r5, #0x1238
     cbc: 6d9e         	ldr	r6, [r3, #0x58]
     cbe: 5156         	str	r6, [r2, r5]
     cc0: f241 25a8    	movw	r5, #0x12a8
     cc4: f8d3 60c8    	ldr.w	r6, [r3, #0xc8]
     cc8: 5156         	str	r6, [r2, r5]
     cca: f241 253c    	movw	r5, #0x123c
     cce: 6dde         	ldr	r6, [r3, #0x5c]
     cd0: 5156         	str	r6, [r2, r5]
     cd2: f241 25ac    	movw	r5, #0x12ac
     cd6: f8d3 60cc    	ldr.w	r6, [r3, #0xcc]
     cda: 5156         	str	r6, [r2, r5]
     cdc: f44f 5592    	mov.w	r5, #0x1240
     ce0: 6e1e         	ldr	r6, [r3, #0x60]
     ce2: 5156         	str	r6, [r2, r5]
     ce4: f241 25b0    	movw	r5, #0x12b0
     ce8: f8d3 60d0    	ldr.w	r6, [r3, #0xd0]
     cec: 5156         	str	r6, [r2, r5]
     cee: f241 2544    	movw	r5, #0x1244
     cf2: 6e5e         	ldr	r6, [r3, #0x64]
     cf4: 5156         	str	r6, [r2, r5]
     cf6: f241 25b4    	movw	r5, #0x12b4
     cfa: f8d3 60d4    	ldr.w	r6, [r3, #0xd4]
     cfe: 5156         	str	r6, [r2, r5]
     d00: f241 2548    	movw	r5, #0x1248
     d04: 6e9e         	ldr	r6, [r3, #0x68]
     d06: 5156         	str	r6, [r2, r5]
     d08: f241 25b8    	movw	r5, #0x12b8
     d0c: f8d3 60d8    	ldr.w	r6, [r3, #0xd8]
     d10: 5156         	str	r6, [r2, r5]
     d12: f241 254c    	movw	r5, #0x124c
     d16: 6ede         	ldr	r6, [r3, #0x6c]
     d18: 5156         	str	r6, [r2, r5]
     d1a: f241 25bc    	movw	r5, #0x12bc
     d1e: f8d3 60dc    	ldr.w	r6, [r3, #0xdc]
     d22: 5156         	str	r6, [r2, r5]
     d24: f241 2550    	movw	r5, #0x1250
     d28: 6f1e         	ldr	r6, [r3, #0x70]
     d2a: 5156         	str	r6, [r2, r5]
     d2c: f44f 5596    	mov.w	r5, #0x12c0
     d30: f8d3 60e0    	ldr.w	r6, [r3, #0xe0]
     d34: 5156         	str	r6, [r2, r5]
     d36: f241 2554    	movw	r5, #0x1254
     d3a: 6f5e         	ldr	r6, [r3, #0x74]
     d3c: 5156         	str	r6, [r2, r5]
     d3e: f241 25c4    	movw	r5, #0x12c4
     d42: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
     d46: 5156         	str	r6, [r2, r5]
     d48: f241 2558    	movw	r5, #0x1258
     d4c: 6f9e         	ldr	r6, [r3, #0x78]
     d4e: 5156         	str	r6, [r2, r5]
     d50: f241 25c8    	movw	r5, #0x12c8
     d54: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
     d58: 5156         	str	r6, [r2, r5]
     d5a: f241 255c    	movw	r5, #0x125c
     d5e: 6fde         	ldr	r6, [r3, #0x7c]
     d60: 5156         	str	r6, [r2, r5]
     d62: f241 25cc    	movw	r5, #0x12cc
     d66: f8d3 60ec    	ldr.w	r6, [r3, #0xec]
     d6a: 5156         	str	r6, [r2, r5]
     d6c: f44f 5593    	mov.w	r5, #0x1260
     d70: f8d3 6080    	ldr.w	r6, [r3, #0x80]
     d74: 5156         	str	r6, [r2, r5]
     d76: f241 25d0    	movw	r5, #0x12d0
     d7a: f8d3 60f0    	ldr.w	r6, [r3, #0xf0]
     d7e: 5156         	str	r6, [r2, r5]
     d80: f241 2564    	movw	r5, #0x1264
     d84: f8d3 6084    	ldr.w	r6, [r3, #0x84]
     d88: 5156         	str	r6, [r2, r5]
     d8a: f241 25d4    	movw	r5, #0x12d4
     d8e: f8d3 60f4    	ldr.w	r6, [r3, #0xf4]
     d92: 5156         	str	r6, [r2, r5]
     d94: f8d3 6088    	ldr.w	r6, [r3, #0x88]
     d98: f842 6008    	str.w	r6, [r2, r8]
     d9c: f8d3 60f8    	ldr.w	r6, [r3, #0xf8]
     da0: f842 600a    	str.w	r6, [r2, r10]
     da4: f8d3 608c    	ldr.w	r6, [r3, #0x8c]
     da8: f842 600b    	str.w	r6, [r2, r11]
     dac: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
     db0: f842 300e    	str.w	r3, [r2, lr]
     db4: f47f ae30    	bne.w	0xa18 <Reset+0x610>     @ imm = #-0x3a0
     db8: f64f 7400    	movw	r4, #0xff00
     dbc: f244 764f    	movw	r6, #0x474f
     dc0: f2c2 0400    	movt	r4, #0x2000
     dc4: f2c4 764f    	movt	r6, #0x474f
     dc8: e9dd 1002    	ldrd	r1, r0, [sp, #8]
     dcc: 4408         	add	r0, r1
     dce: 9003         	str	r0, [sp, #0xc]
     dd0: 60e0         	str	r0, [r4, #0xc]
     dd2: 2500         	movs	r5, #0x0
     dd4: 9800         	ldr	r0, [sp]
     dd6: 9914         	ldr	r1, [sp, #0x50]
     dd8: 1a08         	subs	r0, r1, r0
     dda: 6120         	str	r0, [r4, #0x10]
     ddc: 9807         	ldr	r0, [sp, #0x1c]
     dde: 6160         	str	r0, [r4, #0x14]
     de0: f244 1044    	movw	r0, #0x4144
     de4: f2c5 2045    	movt	r0, #0x5245
     de8: 6020         	str	r0, [r4]
     dea: 6820         	ldr	r0, [r4]
     dec: 42b0         	cmp	r0, r6
     dee: f43f ab6f    	beq.w	0x4d0 <Reset+0xc8>      @ imm = #-0x922
     df2: bf10         	yield
     df4: 6820         	ldr	r0, [r4]
     df6: 42b0         	cmp	r0, r6
     df8: f43f ab6a    	beq.w	0x4d0 <Reset+0xc8>      @ imm = #-0x92c
     dfc: bf10         	yield
     dfe: 6820         	ldr	r0, [r4]
     e00: 42b0         	cmp	r0, r6
     e02: bf1e         	ittt	ne
     e04: bf10         	yieldne
     e06: 6820         	ldrne	r0, [r4]
     e08: 42b0         	cmpne	r0, r6
     e0a: f43f ab61    	beq.w	0x4d0 <Reset+0xc8>      @ imm = #-0x93e
     e0e: f7ff bb57    	b.w	0x4c0 <Reset+0xb8>      @ imm = #-0x952
     e12: bf00         	nop
     e14: bf00         	nop
     e16: bf00         	nop
     e18: f644 6045    	movw	r0, #0x4e45
     e1c: f2c4 404f    	movt	r0, #0x444f
     e20: 6020         	str	r0, [r4]
     e22: bf00         	nop
     e24: bf00         	nop
     e26: bf00         	nop
     e28: bf10         	yield
     e2a: bf10         	yield
     e2c: bf10         	yield
     e2e: bf10         	yield
     e30: e7fa         	b	0xe28 <Reset+0xa20>     @ imm = #-0xc
     e32: bf00         	nop
     e34: bf00         	nop
     e36: bf00         	nop
     e38: f245 2021    	movw	r0, #0x5221
     e3c: f2c4 5052    	movt	r0, #0x4552
     e40: 6020         	str	r0, [r4]
     e42: bf00         	nop
     e44: bf00         	nop
     e46: bf00         	nop
     e48: bf10         	yield
     e4a: bf10         	yield
     e4c: bf10         	yield
     e4e: bf10         	yield
     e50: e7fa         	b	0xe48 <Reset+0xa40>     @ imm = #-0xc
     e52: d4d4         	bmi	0xdfe <Reset+0x9f6>     @ imm = #-0x58
     e54: d4d4         	bmi	0xe00 <Reset+0x9f8>     @ imm = #-0x58
     e56: d4d4         	bmi	0xe02 <Reset+0x9fa>     @ imm = #-0x58

00000e58 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>>:
     e58: b5f0         	push	{r4, r5, r6, r7, lr}
     e5a: af03         	add	r7, sp, #0xc
     e5c: e92d 0f00    	push.w	{r8, r9, r10, r11}
     e60: b081         	sub	sp, #0x4
     e62: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
     e66: eeba 1a0e    	vmov.f32	s2, #-1.500000e+01
     e6a: ed91 2a00    	vldr	s4, [r1]
     e6e: ed9f 3af5    	vldr	s6, [pc, #980]          @ 0x1244 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3ec>
     e72: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
     e76: eefe 1a00    	vmov.f32	s3, #-5.000000e-01
     e7a: f04f 5c7e    	mov.w	r12, #0x3f800000
     e7e: ee32 4a01    	vadd.f32	s8, s4, s2
     e82: ee71 5a42    	vsub.f32	s11, s2, s4
     e86: eeb7 0bc0    	vcvt.f32.f64	s0, d0
     e8a: ee84 5a03    	vdiv.f32	s10, s8, s6
     e8e: ed9f 4aee    	vldr	s8, [pc, #952]          @ 0x1248 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3f0>
     e92: eec5 5a83    	vdiv.f32	s11, s11, s6
     e96: eddf 0aed    	vldr	s1, [pc, #948]          @ 0x124c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3f4>
     e9a: eeb4 4a45    	vcmp.f32	s8, s10
     e9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     ea2: fe34 6a05    	vselgt.f32	s12, s8, s10
     ea6: ed9f 5af7    	vldr	s10, [pc, #988]         @ 0x1284 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x42c>
     eaa: eeb4 6a45    	vcmp.f32	s12, s10
     eae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     eb2: fe75 7a06    	vselgt.f32	s15, s10, s12
     eb6: ed9f 6af4    	vldr	s12, [pc, #976]         @ 0x1288 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x430>
     eba: ee67 2a86    	vmul.f32	s5, s15, s12
     ebe: ee72 3a87    	vadd.f32	s7, s5, s14
     ec2: eef5 2a40    	vcmp.f32	s5, #0
     ec6: ee72 4aa1    	vadd.f32	s9, s5, s3
     eca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     ece: eefd 3ae3    	vcvt.s32.f32	s7, s7
     ed2: eefd 4ae4    	vcvt.s32.f32	s9, s9
     ed6: eeb4 4a65    	vcmp.f32	s8, s11
     eda: ee13 6a90    	vmov	r6, s7
     ede: ee14 3a90    	vmov	r3, s9
     ee2: bfa8         	it	ge
     ee4: 4633         	movge	r3, r6
     ee6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     eea: fe74 2a25    	vselgt.f32	s5, s8, s11
     eee: eddf 5aea    	vldr	s11, [pc, #936]         @ 0x1298 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x440>
     ef2: eeb0 aa65    	vmov.f32	s20, s11
     ef6: eeb0 ba65    	vmov.f32	s22, s11
     efa: eef4 2a45    	vcmp.f32	s5, s10
     efe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     f02: fe35 8a22    	vselgt.f32	s16, s10, s5
     f06: ee68 2a06    	vmul.f32	s5, s16, s12
     f0a: ee72 3aa1    	vadd.f32	s7, s5, s3
     f0e: eef5 2a40    	vcmp.f32	s5, #0
     f12: ee72 4a87    	vadd.f32	s9, s5, s14
     f16: ee02 3a90    	vmov	s5, r3
     f1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     f1e: eefd 3ae3    	vcvt.s32.f32	s7, s7
     f22: eb0c 53c3    	add.w	r3, r12, r3, lsl #23
     f26: eefd 4ae4    	vcvt.s32.f32	s9, s9
     f2a: ee13 6a90    	vmov	r6, s7
     f2e: eef8 3ae2    	vcvt.f32.s32	s7, s5
     f32: ee14 5a90    	vmov	r5, s9
     f36: bfa8         	it	ge
     f38: 462e         	movge	r6, r5
     f3a: ee02 6a90    	vmov	s5, r6
     f3e: eb0c 56c6    	add.w	r6, r12, r6, lsl #23
     f42: eef8 4ae2    	vcvt.f32.s32	s9, s5
     f46: eddf 2ad1    	vldr	s5, [pc, #836]          @ 0x128c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x434>
     f4a: ee43 7ae2    	vmls.f32	s15, s7, s5
     f4e: eddf 3ad1    	vldr	s7, [pc, #836]          @ 0x1294 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x43c>
     f52: eef0 6a63    	vmov.f32	s13, s7
     f56: eeb0 9a63    	vmov.f32	s18, s7
     f5a: ee04 8ae2    	vmls.f32	s16, s9, s5
     f5e: eddf 4acc    	vldr	s9, [pc, #816]          @ 0x1290 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x438>
     f62: ee47 6aa4    	vmla.f32	s13, s15, s9
     f66: ee08 9a24    	vmla.f32	s18, s16, s9
     f6a: ee28 ca08    	vmul.f32	s24, s16, s16
     f6e: ee07 aaa6    	vmla.f32	s20, s15, s13
     f72: eef7 6a00    	vmov.f32	s13, #1.000000e+00
     f76: ee08 ba09    	vmla.f32	s22, s16, s18
     f7a: eeb0 9a47    	vmov.f32	s18, s14
     f7e: ee07 9a8a    	vmla.f32	s18, s15, s20
     f82: eeb0 aa47    	vmov.f32	s20, s14
     f86: ee08 aa0b    	vmla.f32	s20, s16, s22
     f8a: ee27 baa7    	vmul.f32	s22, s15, s15
     f8e: ee77 7aa6    	vadd.f32	s15, s15, s13
     f92: ee38 8a26    	vadd.f32	s16, s16, s13
     f96: ee4b 7a09    	vmla.f32	s15, s22, s18
     f9a: ee09 3a10    	vmov	s18, r3
     f9e: eeb0 ba40    	vmov.f32	s22, s0
     fa2: ee02 ba20    	vmla.f32	s22, s4, s1
     fa6: ee0c 8a0a    	vmla.f32	s16, s24, s20
     faa: ee0a 6a10    	vmov	s20, r6
     fae: ee27 9a89    	vmul.f32	s18, s15, s18
     fb2: eddf 7aba    	vldr	s15, [pc, #744]         @ 0x129c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x444>
     fb6: ee28 aa0a    	vmul.f32	s20, s16, s20
     fba: ee39 8a4a    	vsub.f32	s16, s18, s20
     fbe: ee18 ba27    	vnmls.f32	s22, s16, s15
     fc2: ed9f 8ab7    	vldr	s16, [pc, #732]         @ 0x12a0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x448>
     fc6: eef0 8a48    	vmov.f32	s17, s16
     fca: ee1b 3a10    	vmov	r3, s22
     fce: f023 4300    	bic	r3, r3, #0x80000000
     fd2: f1b3 4fff    	cmp.w	r3, #0x7f800000
     fd6: da09         	bge	0xfec <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x194> @ imm = #0x12
     fd8: ed9f cab2    	vldr	s24, [pc, #712]         @ 0x12a4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x44c>
     fdc: ee8b ca0c    	vdiv.f32	s24, s22, s24
     fe0: ed9f dab1    	vldr	s26, [pc, #708]         @ 0x12a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x450>
     fe4: eeb0 cacc    	vabs.f32	s24, s24
     fe8: fecc 8a0d    	vmaxnm.f32	s17, s24, s26
     fec: ee79 aa0a    	vadd.f32	s21, s18, s20
     ff0: 6894         	ldr	r4, [r2, #0x8]
     ff2: eef1 9a4b    	vneg.f32	s19, s22
     ff6: f104 0901    	add.w	r9, r4, #0x1
     ffa: e9d2 3800    	ldrd	r3, r8, [r2]
     ffe: f108 0e03    	add.w	lr, r8, #0x3
    1002: f103 0a02    	add.w	r10, r3, #0x2
    1006: f04f 0b00    	mov.w	r11, #0x0
    100a: ed9f 9aa8    	vldr	s18, [pc, #672]         @ 0x12ac <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x454>
    100e: ed9f aaa8    	vldr	s20, [pc, #672]         @ 0x12b0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x458>
    1012: 2400         	movs	r4, #0x0
    1014: ed9f baa7    	vldr	s22, [pc, #668]         @ 0x12b4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x45c>
    1018: 1c5e         	adds	r6, r3, #0x1
    101a: ed9f caa7    	vldr	s24, [pc, #668]         @ 0x12b8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x460>
    101e: 6016         	str	r6, [r2]
    1020: ed9f daa6    	vldr	s26, [pc, #664]         @ 0x12bc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x464>
    1024: ed9f ea9f    	vldr	s28, [pc, #636]         @ 0x12a4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x44c>
    1028: ed9f fa9f    	vldr	s30, [pc, #636]         @ 0x12a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x450>
    102c: e00d         	b	0x104a <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x1f2> @ imm = #0x1a
    102e: bf00         	nop
    1030: ee7a aaab    	vadd.f32	s21, s21, s23
    1034: 1c63         	adds	r3, r4, #0x1
    1036: eef1 9a69    	vneg.f32	s19, s19
    103a: 4454         	add	r4, r10
    103c: 2b03         	cmp	r3, #0x3
    103e: 6014         	str	r4, [r2]
    1040: f10b 0b01    	add.w	r11, r11, #0x1
    1044: 461c         	mov	r4, r3
    1046: f000 8103    	beq.w	0x1250 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3f8> @ imm = #0x206
    104a: ee6a aaa7    	vmul.f32	s21, s21, s15
    104e: 2600         	movs	r6, #0x0
    1050: eeca aa83    	vdiv.f32	s21, s21, s6
    1054: ee7a aa89    	vadd.f32	s21, s21, s18
    1058: ee1a 5a90    	vmov	r5, s21
    105c: eef0 baea    	vabs.f32	s23, s21
    1060: f025 4500    	bic	r5, r5, #0x80000000
    1064: eef4 ba4a    	vcmp.f32	s23, s20
    1068: f1b5 4fff    	cmp.w	r5, #0x7f800000
    106c: f04f 0500    	mov.w	r5, #0x0
    1070: bfa8         	it	ge
    1072: 2501         	movge	r5, #0x1
    1074: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1078: bf48         	it	mi
    107a: 2601         	movmi	r6, #0x1
    107c: 4335         	orrs	r5, r6
    107e: f040 80cf    	bne.w	0x1220 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3c8> @ imm = #0x19e
    1082: eec9 9aaa    	vdiv.f32	s19, s19, s21
    1086: ee19 5a90    	vmov	r5, s19
    108a: f025 4500    	bic	r5, r5, #0x80000000
    108e: f1b5 4fff    	cmp.w	r5, #0x7f800000
    1092: f280 80c5    	bge.w	0x1220 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3c8> @ imm = #0x18a
    1096: eef0 aac2    	vabs.f32	s21, s4
    109a: eef0 bae9    	vabs.f32	s23, s19
    109e: eef4 aa6a    	vcmp.f32	s21, s21
    10a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10a6: fe56 aaaa    	vselvs.f32	s21, s13, s21
    10aa: eef4 aa66    	vcmp.f32	s21, s13
    10ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10b2: fe7a aaa6    	vselgt.f32	s21, s21, s13
    10b6: ee6a aa8b    	vmul.f32	s21, s21, s22
    10ba: feca aacc    	vminnm.f32	s21, s21, s24
    10be: eef4 ba6a    	vcmp.f32	s23, s21
    10c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10c6: d805         	bhi	0x10d4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x27c> @ imm = #0xa
    10c8: eef4 8a4d    	vcmp.f32	s17, s26
    10cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10d0: f240 80b2    	bls.w	0x1238 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3e0> @ imm = #0x164
    10d4: ee39 2a82    	vadd.f32	s4, s19, s4
    10d8: ee72 8a01    	vadd.f32	s17, s4, s2
    10dc: ee71 ca42    	vsub.f32	s25, s2, s4
    10e0: eec8 8a83    	vdiv.f32	s17, s17, s6
    10e4: eecc ca83    	vdiv.f32	s25, s25, s6
    10e8: eeb4 4a68    	vcmp.f32	s8, s17
    10ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10f0: fe74 8a28    	vselgt.f32	s17, s8, s17
    10f4: eef4 8a45    	vcmp.f32	s17, s10
    10f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10fc: fe75 8a28    	vselgt.f32	s17, s10, s17
    1100: ee68 9a86    	vmul.f32	s19, s17, s12
    1104: ee79 aa87    	vadd.f32	s21, s19, s14
    1108: eef5 9a40    	vcmp.f32	s19, #0
    110c: ee79 baa1    	vadd.f32	s23, s19, s3
    1110: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1114: eefd aaea    	vcvt.s32.f32	s21, s21
    1118: eefd baeb    	vcvt.s32.f32	s23, s23
    111c: eeb4 4a6c    	vcmp.f32	s8, s25
    1120: ee1a 6a90    	vmov	r6, s21
    1124: ee1b 5a90    	vmov	r5, s23
    1128: bfa8         	it	ge
    112a: 4635         	movge	r5, r6
    112c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1130: fe74 9a2c    	vselgt.f32	s19, s8, s25
    1134: eef4 9a45    	vcmp.f32	s19, s10
    1138: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    113c: fe75 9a29    	vselgt.f32	s19, s10, s19
    1140: ee69 aa86    	vmul.f32	s21, s19, s12
    1144: ee7a baa1    	vadd.f32	s23, s21, s3
    1148: eef5 aa40    	vcmp.f32	s21, #0
    114c: ee7a ca87    	vadd.f32	s25, s21, s14
    1150: ee0a 5a90    	vmov	s21, r5
    1154: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1158: eefd baeb    	vcvt.s32.f32	s23, s23
    115c: eef8 aaea    	vcvt.f32.s32	s21, s21
    1160: ee1b 6a90    	vmov	r6, s23
    1164: eefd baec    	vcvt.s32.f32	s23, s25
    1168: ee4a 8ae2    	vmls.f32	s17, s21, s5
    116c: eef0 aa63    	vmov.f32	s21, s7
    1170: eef0 ca65    	vmov.f32	s25, s11
    1174: ee1b 3a90    	vmov	r3, s23
    1178: bfa8         	it	ge
    117a: 461e         	movge	r6, r3
    117c: eb0c 53c5    	add.w	r3, r12, r5, lsl #23
    1180: ed81 2a00    	vstr	s4, [r1]
    1184: ee0b 6a90    	vmov	s23, r6
    1188: eb0c 55c6    	add.w	r5, r12, r6, lsl #23
    118c: ee48 aaa4    	vmla.f32	s21, s17, s9
    1190: eef8 baeb    	vcvt.f32.s32	s23, s23
    1194: ee4b 9ae2    	vmls.f32	s19, s23, s5
    1198: eef0 ba63    	vmov.f32	s23, s7
    119c: ee48 caaa    	vmla.f32	s25, s17, s21
    11a0: eef0 aa65    	vmov.f32	s21, s11
    11a4: ee49 baa4    	vmla.f32	s23, s19, s9
    11a8: ee69 daa9    	vmul.f32	s27, s19, s19
    11ac: ee49 aaab    	vmla.f32	s21, s19, s23
    11b0: eef0 ba47    	vmov.f32	s23, s14
    11b4: ee48 baac    	vmla.f32	s23, s17, s25
    11b8: eef0 ca47    	vmov.f32	s25, s14
    11bc: ee49 caaa    	vmla.f32	s25, s19, s21
    11c0: ee68 aaa8    	vmul.f32	s21, s17, s17
    11c4: ee78 8aa6    	vadd.f32	s17, s17, s13
    11c8: ee79 9aa6    	vadd.f32	s19, s19, s13
    11cc: ee4a 8aab    	vmla.f32	s17, s21, s23
    11d0: ee0a 3a90    	vmov	s21, r3
    11d4: ee0b 5a90    	vmov	s23, r5
    11d8: ee4d 9aac    	vmla.f32	s19, s27, s25
    11dc: ee68 aaaa    	vmul.f32	s21, s17, s21
    11e0: ee69 baab    	vmul.f32	s23, s19, s23
    11e4: eef0 9a40    	vmov.f32	s19, s0
    11e8: ee42 9a20    	vmla.f32	s19, s4, s1
    11ec: ee7a 8aeb    	vsub.f32	s17, s21, s23
    11f0: ee58 9aa7    	vnmls.f32	s19, s17, s15
    11f4: eef0 8a48    	vmov.f32	s17, s16
    11f8: ee19 3a90    	vmov	r3, s19
    11fc: f023 4300    	bic	r3, r3, #0x80000000
    1200: f1b3 4fff    	cmp.w	r3, #0x7f800000
    1204: eb09 0304    	add.w	r3, r9, r4
    1208: 6093         	str	r3, [r2, #0x8]
    120a: f6bf af11    	bge.w	0x1030 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x1d8> @ imm = #-0x1de
    120e: eec9 8a8e    	vdiv.f32	s17, s19, s28
    1212: eef0 8ae8    	vabs.f32	s17, s17
    1216: fec8 8a8f    	vmaxnm.f32	s17, s17, s30
    121a: e709         	b	0x1030 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x1d8> @ imm = #-0x1ee
    121c: bf00         	nop
    121e: bf00         	nop
    1220: eb08 0104    	add.w	r1, r8, r4
    1224: f880 b004    	strb.w	r11, [r0, #0x4]
    1228: 3101         	adds	r1, #0x1
    122a: 6051         	str	r1, [r2, #0x4]
    122c: f04f 41ff    	mov.w	r1, #0x7f800000
    1230: 6001         	str	r1, [r0]
    1232: 2100         	movs	r1, #0x0
    1234: e01e         	b	0x1274 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x41c> @ imm = #0x3c
    1236: bf00         	nop
    1238: eb08 0104    	add.w	r1, r8, r4
    123c: f101 0e01    	add.w	lr, r1, #0x1
    1240: e008         	b	0x1254 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3fc> @ imm = #0x10
    1242: bf00         	nop
    1244: f5 4a 39 3d  	.word	0x3d394af5
    1248: 00 00 a0 c2  	.word	0xc2a00000
    124c: df 43 f7 b7  	.word	0xb7f743df
    1250: f04f 0b03    	mov.w	r11, #0x3
    1254: ee18 1a90    	vmov	r1, s17
    1258: f8c2 e004    	str.w	lr, [r2, #0x4]
    125c: edc0 8a00    	vstr	s17, [r0]
    1260: f880 b004    	strb.w	r11, [r0, #0x4]
    1264: f021 4100    	bic	r1, r1, #0x80000000
    1268: f1b1 4fff    	cmp.w	r1, #0x7f800000
    126c: f04f 0100    	mov.w	r1, #0x0
    1270: bfb8         	it	lt
    1272: 2101         	movlt	r1, #0x1
    1274: 7141         	strb	r1, [r0, #0x5]
    1276: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    127a: b001         	add	sp, #0x4
    127c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    1280: bdf0         	pop	{r4, r5, r6, r7, pc}
    1282: bf00         	nop
    1284: 00 00 a0 42  	.word	0x42a00000
    1288: 3b aa b8 3f  	.word	0x3fb8aa3b
    128c: 18 72 31 3f  	.word	0x3f317218
    1290: 89 88 08 3c  	.word	0x3c088889
    1294: ab aa 2a 3d  	.word	0x3d2aaaab
    1298: ab aa 2a 3e  	.word	0x3e2aaaab
    129c: 77 cc 2b 31  	.word	0x312bcc77
    12a0: 00 00 80 7f  	.word	0x7f800000
    12a4: 0a d7 23 3c  	.word	0x3c23d70a
    12a8: 00 00 00 00  	.word	0x00000000
    12ac: df 43 f7 37  	.word	0x37f743df
    12b0: 08 e5 3c 1e  	.word	0x1e3ce508
    12b4: bd 37 06 36  	.word	0x360637bd
    12b8: ac c5 a7 37  	.word	0x37a7c5ac
    12bc: 17 b7 d1 38  	.word	0x38d1b717

000012c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>>:
    12c0: b5f0         	push	{r4, r5, r6, r7, lr}
    12c2: af03         	add	r7, sp, #0xc
    12c4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    12c8: b081         	sub	sp, #0x4
    12ca: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    12ce: b084         	sub	sp, #0x10
    12d0: ed91 3a00    	vldr	s6, [r1]
    12d4: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    12d8: ed91 5a02    	vldr	s10, [r1, #8]
    12dc: ed9f 4bea    	vldr	d4, [pc, #936]          @ 0x1688 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3c8>
    12e0: ee03 1b04    	vmla.f64	d1, d3, d4
    12e4: eeb7 3ac5    	vcvt.f64.f32	d3, s10
    12e8: ed91 5a03    	vldr	s10, [r1, #12]
    12ec: ed9f 4be8    	vldr	d4, [pc, #928]          @ 0x1690 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3d0>
    12f0: eeb0 7b41    	vmov.f64	d7, d1
    12f4: ee03 7b04    	vmla.f64	d7, d3, d4
    12f8: eeb7 3ac5    	vcvt.f64.f32	d3, s10
    12fc: ed91 5a04    	vldr	s10, [r1, #16]
    1300: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    1304: ee03 7b04    	vmla.f64	d7, d3, d4
    1308: ed91 3a05    	vldr	s6, [r1, #20]
    130c: ee05 7b04    	vmla.f64	d7, d5, d4
    1310: ed91 5a06    	vldr	s10, [r1, #24]
    1314: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    1318: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    131c: ee03 7b04    	vmla.f64	d7, d3, d4
    1320: ed91 3a07    	vldr	s6, [r1, #28]
    1324: ee05 7b04    	vmla.f64	d7, d5, d4
    1328: ed9f 5a90    	vldr	s10, [pc, #576]         @ 0x156c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2ac>
    132c: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    1330: ee22 6a05    	vmul.f32	s12, s4, s10
    1334: eeb2 5a0b    	vmov.f32	s10, #1.350000e+01
    1338: ee03 7b04    	vmla.f64	d7, d3, d4
    133c: eeb7 2ac6    	vcvt.f64.f32	d2, s12
    1340: ed9f 3b55    	vldr	d3, [pc, #340]          @ 0x1498 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x1d8>
    1344: ee82 2b03    	vdiv.f64	d2, d2, d3
    1348: ed9f 3b55    	vldr	d3, [pc, #340]          @ 0x14a0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x1e0>
    134c: ee07 2b03    	vmla.f64	d2, d7, d3
    1350: ed9f 7a87    	vldr	s14, [pc, #540]         @ 0x1570 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2b0>
    1354: ed9f 3bd0    	vldr	d3, [pc, #832]          @ 0x1698 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3d8>
    1358: ee82 2b03    	vdiv.f64	d2, d2, d3
    135c: eeba 3a0b    	vmov.f32	s6, #-1.350000e+01
    1360: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    1364: eeb4 3a42    	vcmp.f32	s6, s4
    1368: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    136c: fe33 4a02    	vselgt.f32	s8, s6, s4
    1370: ed9f 2a80    	vldr	s4, [pc, #512]          @ 0x1574 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2b4>
    1374: ed9f 3a80    	vldr	s6, [pc, #512]          @ 0x1578 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2b8>
    1378: ee36 2a02    	vadd.f32	s4, s12, s4
    137c: ee36 3a03    	vadd.f32	s6, s12, s6
    1380: eeb4 4a45    	vcmp.f32	s8, s10
    1384: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1388: ee82 2a07    	vdiv.f32	s4, s4, s14
    138c: ee83 3a07    	vdiv.f32	s6, s6, s14
    1390: fe35 4a04    	vselgt.f32	s8, s10, s8
    1394: ed81 4a01    	vstr	s8, [r1, #4]
    1398: eeb4 2a43    	vcmp.f32	s4, s6
    139c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13a0: f200 832a    	bhi.w	0x19f8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x738> @ imm = #0x654
    13a4: eeb7 5ac4    	vcvt.f64.f32	d5, s8
    13a8: 2500         	movs	r5, #0x0
    13aa: ed9f 8bbd    	vldr	d8, [pc, #756]          @ 0x16a0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3e0>
    13ae: eeb0 7b41    	vmov.f64	d7, d1
    13b2: ed9f 9a72    	vldr	s18, [pc, #456]         @ 0x157c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2bc>
    13b6: 2600         	movs	r6, #0x0
    13b8: eeb0 ba49    	vmov.f32	s22, s18
    13bc: ee05 7b08    	vmla.f64	d7, d5, d8
    13c0: ed9f 5a6f    	vldr	s10, [pc, #444]         @ 0x1580 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2c0>
    13c4: eeb0 aa49    	vmov.f32	s20, s18
    13c8: ee26 6a05    	vmul.f32	s12, s12, s10
    13cc: eddf 6a6d    	vldr	s13, [pc, #436]         @ 0x1584 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2c4>
    13d0: eeb7 5bc7    	vcvt.f32.f64	s10, d7
    13d4: ed9f 7a6c    	vldr	s14, [pc, #432]         @ 0x1588 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2c8>
    13d8: eef0 7a49    	vmov.f32	s15, s18
    13dc: eef0 3a46    	vmov.f32	s7, s12
    13e0: ee45 3a07    	vmla.f32	s7, s10, s14
    13e4: ed9f 7a69    	vldr	s14, [pc, #420]         @ 0x158c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2cc>
    13e8: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    13ec: eef0 4a40    	vmov.f32	s9, s0
    13f0: ee44 4a07    	vmla.f32	s9, s8, s14
    13f4: eeb4 2a63    	vcmp.f32	s4, s7
    13f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13fc: fe32 5a23    	vselgt.f32	s10, s4, s7
    1400: eeb0 8ae4    	vabs.f32	s16, s9
    1404: eeb4 5a43    	vcmp.f32	s10, s6
    1408: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    140c: eef4 3a42    	vcmp.f32	s7, s4
    1410: fe73 2a05    	vselgt.f32	s5, s6, s10
    1414: eeb0 5a49    	vmov.f32	s10, s18
    1418: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    141c: bfc8         	it	gt
    141e: 2501         	movgt	r5, #0x1
    1420: eef4 3a43    	vcmp.f32	s7, s6
    1424: eeff 3a00    	vmov.f32	s7, #-1.000000e+00
    1428: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    142c: eef5 4a40    	vcmp.f32	s9, #0
    1430: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    1434: bf48         	it	mi
    1436: 2601         	movmi	r6, #0x1
    1438: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    143c: bf48         	it	mi
    143e: eeb0 5a63    	vmovmi.f32	s10, s7
    1442: eeb4 8a66    	vcmp.f32	s16, s13
    1446: ea06 0605    	and.w	r6, r6, r5
    144a: fe34 ca85    	vselgt.f32	s24, s9, s10
    144e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1452: f280 80d0    	bge.w	0x15f6 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x336> @ imm = #0x1a0
    1456: ed9f 5a4e    	vldr	s10, [pc, #312]         @ 0x1590 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2d0>
    145a: eeb4 8a45    	vcmp.f32	s16, s10
    145e: eddf 7a47    	vldr	s15, [pc, #284]         @ 0x157c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2bc>
    1462: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1466: d90f         	bls	0x1488 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x1c8> @ imm = #0x1e
    1468: ed9f 5a4a    	vldr	s10, [pc, #296]         @ 0x1594 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2d4>
    146c: eeb4 8a45    	vcmp.f32	s16, s10
    1470: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1474: d918         	bls	0x14a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x1e8> @ imm = #0x30
    1476: ed9f 5a48    	vldr	s10, [pc, #288]         @ 0x1598 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2d8>
    147a: ee78 5a05    	vadd.f32	s11, s16, s10
    147e: ed9f 8af0    	vldr	s16, [pc, #960]         @ 0x1840 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x580>
    1482: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    1486: e017         	b	0x14b8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x1f8> @ imm = #0x2e
    1488: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    148c: eef0 5a67    	vmov.f32	s11, s15
    1490: e016         	b	0x14c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x200> @ imm = #0x2c
    1492: bf00         	nop
    1494: bf00         	nop
    1496: bf00         	nop
    1498: 4e 55 8a 9e  	.word	0x9e8a554e
    149c: da 9b f1 40  	.word	0x40f19bda
    14a0: 3e 1f 24 a5  	.word	0xa5241f3e
    14a4: 52 c7 75 40  	.word	0x4075c752
    14a8: ed9f 5ae6    	vldr	s10, [pc, #920]         @ 0x1844 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x584>
    14ac: ee78 5a05    	vadd.f32	s11, s16, s10
    14b0: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    14b4: ed9f 8ae4    	vldr	s16, [pc, #912]         @ 0x1848 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x588>
    14b8: ee05 5a88    	vmla.f32	s10, s11, s16
    14bc: ee6c 5a08    	vmul.f32	s11, s24, s16
    14c0: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    14c4: eeb1 9a65    	vneg.f32	s18, s11
    14c8: ee38 5a45    	vsub.f32	s10, s16, s10
    14cc: fe85 8a27    	vmaxnm.f32	s16, s10, s15
    14d0: eeb5 8a40    	vcmp.f32	s16, #0
    14d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    14d8: d942         	bls	0x1560 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2a0> @ imm = #0x84
    14da: eeb0 5ae2    	vabs.f32	s10, s5
    14de: eeb4 5a48    	vcmp.f32	s10, s16
    14e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    14e6: d95b         	bls	0x15a0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2e0> @ imm = #0xb6
    14e8: ee88 ba05    	vdiv.f32	s22, s16, s10
    14ec: ee2b 5a0b    	vmul.f32	s10, s22, s22
    14f0: ee25 5a05    	vmul.f32	s10, s10, s10
    14f4: ee25 5a05    	vmul.f32	s10, s10, s10
    14f8: ee25 ca05    	vmul.f32	s24, s10, s10
    14fc: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    1500: ee7c 5a05    	vadd.f32	s11, s24, s10
    1504: eef0 7a45    	vmov.f32	s15, s10
    1508: eef4 5a45    	vcmp.f32	s11, s10
    150c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1510: d009         	beq	0x1526 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x266> @ imm = #0x12
    1512: eef0 7a65    	vmov.f32	s15, s11
    1516: eef1 7ae7    	vsqrt.f32	s15, s15
    151a: eef1 7ae7    	vsqrt.f32	s15, s15
    151e: eef1 7ae7    	vsqrt.f32	s15, s15
    1522: eef1 7ae7    	vsqrt.f32	s15, s15
    1526: ee85 5a27    	vdiv.f32	s10, s10, s15
    152a: eef4 2a62    	vcmp.f32	s5, s5
    152e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1532: ee85 da25    	vdiv.f32	s26, s10, s11
    1536: f180 826b    	bvs.w	0x1a10 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x750> @ imm = #0x4d6
    153a: ee12 5a90    	vmov	r5, s5
    153e: f04f 547e    	mov.w	r4, #0x3f800000
    1542: f364 051e    	bfi	r5, r4, #0, #31
    1546: ee05 5a90    	vmov	s11, r5
    154a: ee65 7a88    	vmul.f32	s15, s11, s16
    154e: ee25 aa8d    	vmul.f32	s20, s11, s26
    1552: ee67 7a85    	vmul.f32	s15, s15, s10
    1556: ee2b 5a0c    	vmul.f32	s10, s22, s24
    155a: ee25 ba0d    	vmul.f32	s22, s10, s26
    155e: e04a         	b	0x15f6 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x336> @ imm = #0x94
    1560: eeb0 ba67    	vmov.f32	s22, s15
    1564: eeb0 aa67    	vmov.f32	s20, s15
    1568: e045         	b	0x15f6 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x336> @ imm = #0x8a
    156a: bf00         	nop
    156c: 00 80 3b 47  	.word	0x473b8000
    1570: 00 a0 8c 47  	.word	0x478ca000
    1574: 00 24 74 cb  	.word	0xcb742400
    1578: 00 24 74 4b  	.word	0x4b742400
    157c: 00 00 00 00  	.word	0x00000000
    1580: 64 9c 68 37  	.word	0x37689c64
    1584: 0a d7 23 3d  	.word	0x3d23d70a
    1588: 95 3a ae 43  	.word	0x43ae3a95
    158c: 0d 9e a0 b8  	.word	0xb8a09e0d
    1590: 7c f2 b0 3a  	.word	0x3ab0f27c
    1594: a6 9b c4 3b  	.word	0x3bc49ba6
    1598: a6 9b c4 bb  	.word	0xbbc49ba6
    159c: 00 bf 00 bf  	.word	0xbf00bf00
    15a0: ee82 5a88    	vdiv.f32	s10, s5, s16
    15a4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
    15a8: ee25 5a05    	vmul.f32	s10, s10, s10
    15ac: eeb0 aa67    	vmov.f32	s20, s15
    15b0: ee25 5a05    	vmul.f32	s10, s10, s10
    15b4: ee25 5a05    	vmul.f32	s10, s10, s10
    15b8: ee25 5a05    	vmul.f32	s10, s10, s10
    15bc: ee75 5a27    	vadd.f32	s11, s10, s15
    15c0: eef4 5a67    	vcmp.f32	s11, s15
    15c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    15c8: d009         	beq	0x15de <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x31e> @ imm = #0x12
    15ca: eeb0 aa65    	vmov.f32	s20, s11
    15ce: eeb1 aaca    	vsqrt.f32	s20, s20
    15d2: eeb1 aaca    	vsqrt.f32	s20, s20
    15d6: eeb1 aaca    	vsqrt.f32	s20, s20
    15da: eeb1 aaca    	vsqrt.f32	s20, s20
    15de: eec7 7a8a    	vdiv.f32	s15, s15, s20
    15e2: ee22 5a85    	vmul.f32	s10, s5, s10
    15e6: ee87 baa5    	vdiv.f32	s22, s15, s11
    15ea: ee85 5a08    	vdiv.f32	s10, s10, s16
    15ee: ee62 7aa7    	vmul.f32	s15, s5, s15
    15f2: ee25 aa0b    	vmul.f32	s20, s10, s22
    15f6: 2e00         	cmp	r6, #0x0
    15f8: ee34 da67    	vsub.f32	s26, s8, s15
    15fc: eddf 0aea    	vldr	s1, [pc, #936]          @ 0x19a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6e8>
    1600: ee69 5a0a    	vmul.f32	s11, s18, s20
    1604: ed9f cae9    	vldr	s24, [pc, #932]         @ 0x19ac <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6ec>
    1608: fe0c 5a20    	vseleq.f32	s10, s24, s1
    160c: ee1d 6a10    	vmov	r6, s26
    1610: ed9f 9ae7    	vldr	s18, [pc, #924]         @ 0x19b0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6f0>
    1614: eddf bae7    	vldr	s23, [pc, #924]         @ 0x19b4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6f4>
    1618: ee65 9a89    	vmul.f32	s19, s11, s18
    161c: ee25 5a0b    	vmul.f32	s10, s10, s22
    1620: eeb0 aa6b    	vmov.f32	s20, s23
    1624: f026 4600    	bic	r6, r6, #0x80000000
    1628: ed9f bae3    	vldr	s22, [pc, #908]         @ 0x19b8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6f8>
    162c: f1b6 4fff    	cmp.w	r6, #0x7f800000
    1630: da09         	bge	0x1646 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x386> @ imm = #0x12
    1632: eef2 5a0e    	vmov.f32	s11, #1.500000e+01
    1636: ed1f aa2f    	vldr	s20, [pc, #-188]        @ 0x157c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2bc>
    163a: eecd 5a25    	vdiv.f32	s11, s26, s11
    163e: eef0 5ae5    	vabs.f32	s11, s11
    1642: fe85 aa8a    	vmaxnm.f32	s20, s11, s20
    1646: ee45 9a0b    	vmla.f32	s19, s10, s22
    164a: eef2 ca0e    	vmov.f32	s25, #1.500000e+01
    164e: eef1 fa4d    	vneg.f32	s31, s26
    1652: 689c         	ldr	r4, [r3, #0x8]
    1654: e9d3 6c00    	ldrd	r6, r12, [r3]
    1658: 1c75         	adds	r5, r6, #0x1
    165a: f104 0e01    	add.w	lr, r4, #0x1
    165e: f10c 0a01    	add.w	r10, r12, #0x1
    1662: f106 0902    	add.w	r9, r6, #0x2
    1666: f04f 0c00    	mov.w	r12, #0x0
    166a: ed9f daec    	vldr	s26, [pc, #944]         @ 0x1a1c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x75c>
    166e: ed9f eaec    	vldr	s28, [pc, #944]         @ 0x1a20 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x760>
    1672: f04f 587e    	mov.w	r8, #0x3f800000
    1676: ed9f faeb    	vldr	s30, [pc, #940]         @ 0x1a24 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x764>
    167a: 2600         	movs	r6, #0x0
    167c: ed5f aa41    	vldr	s21, [pc, #-260]        @ 0x157c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x2bc>
    1680: 601d         	str	r5, [r3]
    1682: e027         	b	0x16d4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x414> @ imm = #0x4e
    1684: bf00         	nop
    1686: bf00         	nop
    1688: a6 60 12 75  	.word	0x751260a6
    168c: 94 fd ef 3f  	.word	0x3feffd94
    1690: 00 00 00 00  	.word	0x00000000
    1694: 00 00 00 00  	.word	0x00000000
    1698: b3 47 4f d9  	.word	0xd94f47b3
    169c: 09 d7 25 40  	.word	0x4025d709
    16a0: 9f 87 d0 24  	.word	0x24d0879f
    16a4: cb 26 9d bf  	.word	0xbf9d26cb
    16a8: ee29 1aaf    	vmul.f32	s2, s19, s31
    16ac: 1c74         	adds	r4, r6, #0x1
    16ae: ee25 5a2d    	vmul.f32	s10, s10, s27
    16b2: eb09 0506    	add.w	r5, r9, r6
    16b6: eef1 fa68    	vneg.f32	s31, s17
    16ba: 2c03         	cmp	r4, #0x3
    16bc: ee61 9a09    	vmul.f32	s19, s2, s18
    16c0: f10c 0c01    	add.w	r12, r12, #0x1
    16c4: ee45 9a0b    	vmla.f32	s19, s10, s22
    16c8: 4626         	mov	r6, r4
    16ca: eeb0 1b47    	vmov.f64	d1, d7
    16ce: 601d         	str	r5, [r3]
    16d0: f000 8176    	beq.w	0x19c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x700> @ imm = #0x2ec
    16d4: ee39 5aa4    	vadd.f32	s10, s19, s9
    16d8: 2500         	movs	r5, #0x0
    16da: ee15 4a10    	vmov	r4, s10
    16de: eef0 5ac5    	vabs.f32	s11, s10
    16e2: f024 4400    	bic	r4, r4, #0x80000000
    16e6: eef4 5a4d    	vcmp.f32	s11, s26
    16ea: f1b4 4fff    	cmp.w	r4, #0x7f800000
    16ee: f04f 0400    	mov.w	r4, #0x0
    16f2: bfa8         	it	ge
    16f4: 2401         	movge	r4, #0x1
    16f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16fa: bf48         	it	mi
    16fc: 2501         	movmi	r5, #0x1
    16fe: 432c         	orrs	r4, r5
    1700: eb0a 0406    	add.w	r4, r10, r6
    1704: 605c         	str	r4, [r3, #0x4]
    1706: f040 8147    	bne.w	0x1998 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6d8> @ imm = #0x28e
    170a: eecf 8a85    	vdiv.f32	s17, s31, s10
    170e: ee18 4a90    	vmov	r4, s17
    1712: f024 4400    	bic	r4, r4, #0x80000000
    1716: f1b4 4fff    	cmp.w	r4, #0x7f800000
    171a: f280 813d    	bge.w	0x1998 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6d8> @ imm = #0x27a
    171e: eeb0 5ac4    	vabs.f32	s10, s8
    1722: eef0 5ae8    	vabs.f32	s11, s17
    1726: eeb4 5a45    	vcmp.f32	s10, s10
    172a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    172e: fe14 5a85    	vselvs.f32	s10, s9, s10
    1732: eeb4 5a64    	vcmp.f32	s10, s9
    1736: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    173a: fe35 5a24    	vselgt.f32	s10, s10, s9
    173e: ee25 5a0e    	vmul.f32	s10, s10, s28
    1742: fe85 5a4f    	vminnm.f32	s10, s10, s30
    1746: eef4 5a45    	vcmp.f32	s11, s10
    174a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    174e: d807         	bhi	0x1760 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x4a0> @ imm = #0xe
    1750: ed9f 5ac0    	vldr	s10, [pc, #768]         @ 0x1a54 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x794>
    1754: eeb4 aa45    	vcmp.f32	s20, s10
    1758: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    175c: f240 8132    	bls.w	0x19c4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x704> @ imm = #0x264
    1760: ee38 4a84    	vadd.f32	s8, s17, s8
    1764: eddf 2ab2    	vldr	s5, [pc, #712]          @ 0x1a30 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x770>
    1768: ed9f 8baf    	vldr	d8, [pc, #700]          @ 0x1a28 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x768>
    176c: eeb0 7b41    	vmov.f64	d7, d1
    1770: f04f 0b00    	mov.w	r11, #0x0
    1774: eeb7 5ac4    	vcvt.f64.f32	d5, s8
    1778: 2400         	movs	r4, #0x0
    177a: eef0 9a6a    	vmov.f32	s19, s21
    177e: eef0 ea6a    	vmov.f32	s29, s21
    1782: eef0 da6a    	vmov.f32	s27, s21
    1786: eef0 fa6a    	vmov.f32	s31, s21
    178a: ee05 1b08    	vmla.f64	d1, d5, d8
    178e: eb0e 0506    	add.w	r5, lr, r6
    1792: eeb0 5a46    	vmov.f32	s10, s12
    1796: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    179a: eddf 1aa6    	vldr	s3, [pc, #664]          @ 0x1a34 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x774>
    179e: ee01 5a21    	vmla.f32	s10, s2, s3
    17a2: eef0 1a40    	vmov.f32	s3, s0
    17a6: ee44 1a22    	vmla.f32	s3, s8, s5
    17aa: eeb4 2a45    	vcmp.f32	s4, s10
    17ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17b2: eef0 8ae1    	vabs.f32	s17, s3
    17b6: fe32 1a05    	vselgt.f32	s2, s4, s10
    17ba: eeb4 1a43    	vcmp.f32	s2, s6
    17be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17c2: eeb4 5a42    	vcmp.f32	s10, s4
    17c6: fe73 2a01    	vselgt.f32	s5, s6, s2
    17ca: eeb0 1a6a    	vmov.f32	s2, s21
    17ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17d2: eeb4 5a43    	vcmp.f32	s10, s6
    17d6: bfc8         	it	gt
    17d8: f04f 0b01    	movgt.w	r11, #0x1
    17dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17e0: eef5 1a40    	vcmp.f32	s3, #0
    17e4: bf48         	it	mi
    17e6: 2401         	movmi	r4, #0x1
    17e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17ec: bf48         	it	mi
    17ee: eeb0 1a63    	vmovmi.f32	s2, s7
    17f2: eef4 8a66    	vcmp.f32	s17, s13
    17f6: 609d         	str	r5, [r3, #0x8]
    17f8: fe34 aa81    	vselgt.f32	s20, s9, s2
    17fc: ed81 4a01    	vstr	s8, [r1, #4]
    1800: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1804: f280 80b0    	bge.w	0x1968 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6a8> @ imm = #0x160
    1808: eef0 5a6a    	vmov.f32	s11, s21
    180c: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    1810: ed9f 1a89    	vldr	s2, [pc, #548]          @ 0x1a38 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x778>
    1814: eef4 8a41    	vcmp.f32	s17, s2
    1818: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    181c: d922         	bls	0x1864 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x5a4> @ imm = #0x44
    181e: ed9f 1a87    	vldr	s2, [pc, #540]          @ 0x1a3c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x77c>
    1822: eef4 8a41    	vcmp.f32	s17, s2
    1826: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    182a: d911         	bls	0x1850 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x590> @ imm = #0x22
    182c: ed9f 1a86    	vldr	s2, [pc, #536]          @ 0x1a48 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x788>
    1830: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    1834: ee38 1a81    	vadd.f32	s2, s17, s2
    1838: eddf 1a84    	vldr	s3, [pc, #528]          @ 0x1a4c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x78c>
    183c: e00e         	b	0x185c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x59c> @ imm = #0x1c
    183e: bf00         	nop
    1840: 79 78 b0 43  	.word	0x43b07879
    1844: 7c f2 b0 ba  	.word	0xbab0f27c
    1848: 53 4a a1 43  	.word	0x43a14a53
    184c: 00 bf 00 bf  	.word	0xbf00bf00
    1850: ed9f 1a7b    	vldr	s2, [pc, #492]          @ 0x1a40 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x780>
    1854: ee38 1a81    	vadd.f32	s2, s17, s2
    1858: eddf 1a7a    	vldr	s3, [pc, #488]          @ 0x1a44 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x784>
    185c: ee01 5a21    	vmla.f32	s10, s2, s3
    1860: ee6a 5a21    	vmul.f32	s11, s20, s3
    1864: ee3c 1ac5    	vsub.f32	s2, s25, s10
    1868: eef1 9a65    	vneg.f32	s19, s11
    186c: fe81 aa2a    	vmaxnm.f32	s20, s2, s21
    1870: eeb5 aa40    	vcmp.f32	s20, #0
    1874: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1878: d942         	bls	0x1900 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x640> @ imm = #0x84
    187a: eeb0 5ae2    	vabs.f32	s10, s5
    187e: eeb4 5a4a    	vcmp.f32	s10, s20
    1882: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1886: d943         	bls	0x1910 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x650> @ imm = #0x86
    1888: eeca da05    	vdiv.f32	s27, s20, s10
    188c: eef0 5a64    	vmov.f32	s11, s9
    1890: ee2d 1aad    	vmul.f32	s2, s27, s27
    1894: ee21 1a01    	vmul.f32	s2, s2, s2
    1898: ee21 1a01    	vmul.f32	s2, s2, s2
    189c: ee61 8a01    	vmul.f32	s17, s2, s2
    18a0: ee38 5aa4    	vadd.f32	s10, s17, s9
    18a4: eeb4 5a64    	vcmp.f32	s10, s9
    18a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    18ac: d009         	beq	0x18c2 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x602> @ imm = #0x12
    18ae: eef0 5a45    	vmov.f32	s11, s10
    18b2: eef1 5ae5    	vsqrt.f32	s11, s11
    18b6: eef1 5ae5    	vsqrt.f32	s11, s11
    18ba: eef1 5ae5    	vsqrt.f32	s11, s11
    18be: eef1 5ae5    	vsqrt.f32	s11, s11
    18c2: eec4 5aa5    	vdiv.f32	s11, s9, s11
    18c6: eddf ea62    	vldr	s29, [pc, #392]         @ 0x1a50 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x790>
    18ca: eef4 2a62    	vcmp.f32	s5, s5
    18ce: eef0 fa6e    	vmov.f32	s31, s29
    18d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    18d6: ee85 5a85    	vdiv.f32	s10, s11, s10
    18da: bf7f         	itttt	vc
    18dc: ee12 5a90    	vmovvc	r5, s5
    18e0: f368 051e    	bfivc	r5, r8, #0, #31
    18e4: ee01 5a10    	vmovvc	s2, r5
    18e8: ee61 1a0a    	vmulvc.f32	s3, s2, s20
    18ec: bf7c         	itt	vc
    18ee: ee61 eaa5    	vmulvc.f32	s29, s3, s11
    18f2: ee61 fa05    	vmulvc.f32	s31, s2, s10
    18f6: ee2d 1aa8    	vmul.f32	s2, s27, s17
    18fa: ee61 da05    	vmul.f32	s27, s2, s10
    18fe: e033         	b	0x1968 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6a8> @ imm = #0x66
    1900: eef0 ea6a    	vmov.f32	s29, s21
    1904: eef0 da6a    	vmov.f32	s27, s21
    1908: eef0 fa6a    	vmov.f32	s31, s21
    190c: e02c         	b	0x1968 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x6a8> @ imm = #0x58
    190e: bf00         	nop
    1910: ee82 1a8a    	vdiv.f32	s2, s5, s20
    1914: eef0 8a64    	vmov.f32	s17, s9
    1918: ee21 1a01    	vmul.f32	s2, s2, s2
    191c: ee21 1a01    	vmul.f32	s2, s2, s2
    1920: ee21 1a01    	vmul.f32	s2, s2, s2
    1924: ee21 5a01    	vmul.f32	s10, s2, s2
    1928: ee75 5a24    	vadd.f32	s11, s10, s9
    192c: eef4 5a64    	vcmp.f32	s11, s9
    1930: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1934: d009         	beq	0x194a <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x68a> @ imm = #0x12
    1936: eef0 8a65    	vmov.f32	s17, s11
    193a: eef1 8ae8    	vsqrt.f32	s17, s17
    193e: eef1 8ae8    	vsqrt.f32	s17, s17
    1942: eef1 8ae8    	vsqrt.f32	s17, s17
    1946: eef1 8ae8    	vsqrt.f32	s17, s17
    194a: ee84 1aa8    	vdiv.f32	s2, s9, s17
    194e: ee22 5a85    	vmul.f32	s10, s5, s10
    1952: eec1 da25    	vdiv.f32	s27, s2, s11
    1956: ee85 5a0a    	vdiv.f32	s10, s10, s20
    195a: ee62 ea81    	vmul.f32	s29, s5, s2
    195e: ee65 fa2d    	vmul.f32	s31, s10, s27
    1962: bf00         	nop
    1964: bf00         	nop
    1966: bf00         	nop
    1968: ee74 8a6e    	vsub.f32	s17, s8, s29
    196c: ea14 040b    	ands.w	r4, r4, r11
    1970: fe0c 5a20    	vseleq.f32	s10, s24, s1
    1974: eeb0 aa6b    	vmov.f32	s20, s23
    1978: ee18 5a90    	vmov	r5, s17
    197c: f025 4400    	bic	r4, r5, #0x80000000
    1980: f1b4 4fff    	cmp.w	r4, #0x7f800000
    1984: f6bf ae90    	bge.w	0x16a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3e8> @ imm = #-0x2e0
    1988: ee88 1aac    	vdiv.f32	s2, s17, s25
    198c: eeb0 1ac1    	vabs.f32	s2, s2
    1990: fe81 aa2a    	vmaxnm.f32	s20, s2, s21
    1994: e688         	b	0x16a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x3e8> @ imm = #-0x2f0
    1996: bf00         	nop
    1998: f04f 41ff    	mov.w	r1, #0x7f800000
    199c: 6001         	str	r1, [r0]
    199e: 2100         	movs	r1, #0x0
    19a0: f880 c004    	strb.w	r12, [r0, #0x4]
    19a4: e01e         	b	0x19e4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x724> @ imm = #0x3c
    19a6: bf00         	nop
    19a8: 95 3a ae c3  	.word	0xc3ae3a95
    19ac: 00 00 00 80  	.word	0x80000000
    19b0: 0d 9e a0 38  	.word	0x38a09e0d
    19b4: 00 00 80 7f  	.word	0x7f800000
    19b8: 59 36 e9 bc  	.word	0xbce93659
    19bc: 00 bf 00 bf  	.word	0xbf00bf00
    19c0: f04f 0c03    	mov.w	r12, #0x3
    19c4: ee1a 1a10    	vmov	r1, s20
    19c8: edc2 2a00    	vstr	s5, [r2]
    19cc: ed80 aa00    	vstr	s20, [r0]
    19d0: f880 c004    	strb.w	r12, [r0, #0x4]
    19d4: f021 4100    	bic	r1, r1, #0x80000000
    19d8: f1b1 4fff    	cmp.w	r1, #0x7f800000
    19dc: f04f 0100    	mov.w	r1, #0x0
    19e0: bfb8         	it	lt
    19e2: 2101         	movlt	r1, #0x1
    19e4: 7141         	strb	r1, [r0, #0x5]
    19e6: b004         	add	sp, #0x10
    19e8: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    19ec: b001         	add	sp, #0x4
    19ee: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    19f2: bdf0         	pop	{r4, r5, r6, r7, pc}
    19f4: bf00         	nop
    19f6: bf00         	nop
    19f8: f24b 7090    	movw	r0, #0xb790
    19fc: f64b 0210    	movw	r2, #0xb810
    1a00: f2c0 0000    	movt	r0, #0x0
    1a04: f2c0 0200    	movt	r2, #0x0
    1a08: 4669         	mov	r1, sp
    1a0a: f008 fced    	bl	0xa3e8 <core::panicking::panic_fmt> @ imm = #0x89da
    1a0e: bf00         	nop
    1a10: ed9f aa0f    	vldr	s20, [pc, #60]          @ 0x1a50 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x790>
    1a14: eef0 7a4a    	vmov.f32	s15, s20
    1a18: e59d         	b	0x1556 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>+0x296> @ imm = #-0x4c6
    1a1a: bf00         	nop
    1a1c: 08 e5 3c 1e  	.word	0x1e3ce508
    1a20: bd 37 06 36  	.word	0x360637bd
    1a24: ac c5 a7 37  	.word	0x37a7c5ac
    1a28: 9f 87 d0 24  	.word	0x24d0879f
    1a2c: cb 26 9d bf  	.word	0xbf9d26cb
    1a30: 0d 9e a0 b8  	.word	0xb8a09e0d
    1a34: 95 3a ae 43  	.word	0x43ae3a95
    1a38: 7c f2 b0 3a  	.word	0x3ab0f27c
    1a3c: a6 9b c4 3b  	.word	0x3bc49ba6
    1a40: 7c f2 b0 ba  	.word	0xbab0f27c
    1a44: 53 4a a1 43  	.word	0x43a14a53
    1a48: a6 9b c4 bb  	.word	0xbbc49ba6
    1a4c: 79 78 b0 43  	.word	0x43b07879
    1a50: 00 00 c0 7f  	.word	0x7fc00000
    1a54: 17 b7 d1 38  	.word	0x38d1b717

00001a58 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>>:
    1a58: b5f0         	push	{r4, r5, r6, r7, lr}
    1a5a: af03         	add	r7, sp, #0xc
    1a5c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    1a60: b081         	sub	sp, #0x4
    1a62: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    1a66: b098         	sub	sp, #0x60
    1a68: ed9f 1ab1    	vldr	s2, [pc, #708]          @ 0x1d30 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2d8>
    1a6c: 247f         	movs	r4, #0x7f
    1a6e: ee20 2a01    	vmul.f32	s4, s0, s2
    1a72: eeff ea00    	vmov.f32	s29, #-1.000000e+00
    1a76: ed9f 4bb0    	vldr	d4, [pc, #704]          @ 0x1d38 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2e0>
    1a7a: eddf 2a3f    	vldr	s5, [pc, #252]          @ 0x1b78 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x120>
    1a7e: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    1a82: ed9f 5b3f    	vldr	d5, [pc, #252]          @ 0x1b80 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x128>
    1a86: ee81 1b04    	vdiv.f64	d1, d1, d4
    1a8a: ed91 4a01    	vldr	s8, [r1, #4]
    1a8e: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    1a92: ed92 0b12    	vldr	d0, [r2, #72]
    1a96: ee04 0b05    	vmla.f64	d0, d4, d5
    1a9a: ed9f 4b3b    	vldr	d4, [pc, #236]          @ 0x1b88 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x130>
    1a9e: ee00 1b04    	vmla.f64	d1, d0, d4
    1aa2: ed9f 4b3b    	vldr	d4, [pc, #236]          @ 0x1b90 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x138>
    1aa6: ee21 9b04    	vmul.f64	d9, d1, d4
    1aaa: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    1aae: eddf 1aa4    	vldr	s3, [pc, #656]          @ 0x1d40 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2e8>
    1ab2: ed92 3b06    	vldr	d3, [r2, #24]
    1ab6: eeb0 ba61    	vmov.f32	s22, s3
    1aba: ed9f 4b37    	vldr	d4, [pc, #220]          @ 0x1b98 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x140>
    1abe: eeb0 6b43    	vmov.f64	d6, d3
    1ac2: eeb0 7a41    	vmov.f32	s14, s2
    1ac6: ee09 6b04    	vmla.f64	d6, d9, d4
    1aca: ed9f 8b35    	vldr	d8, [pc, #212]          @ 0x1ba0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x148>
    1ace: eeb0 abc6    	vabs.f64	d10, d6
    1ad2: ed8d 0b08    	vstr	d0, [sp, #32]
    1ad6: ed9f 0a9b    	vldr	s0, [pc, #620]          @ 0x1d44 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2ec>
    1ada: ee8a 5b08    	vdiv.f64	d5, d10, d8
    1ade: eeb7 5bc5    	vcvt.f32.f64	s10, d5
    1ae2: ee05 7a05    	vmla.f32	s14, s10, s10
    1ae6: eeb1 7ac7    	vsqrt.f32	s14, s14
    1aea: ee37 5a05    	vadd.f32	s10, s14, s10
    1aee: ee15 6a10    	vmov	r6, s10
    1af2: 0df5         	lsrs	r5, r6, #0x17
    1af4: f364 56df    	bfi	r6, r4, #23, #9
    1af8: ee05 6a10    	vmov	s10, r6
    1afc: f06f 067e    	mvn	r6, #0x7e
    1b00: fa56 f685    	uxtab	r6, r6, r5
    1b04: ee35 7a2e    	vadd.f32	s14, s10, s29
    1b08: ee35 5a01    	vadd.f32	s10, s10, s2
    1b0c: ee87 5a05    	vdiv.f32	s10, s14, s10
    1b10: ed9f 7a8f    	vldr	s14, [pc, #572]         @ 0x1d50 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2f8>
    1b14: eef0 5a47    	vmov.f32	s11, s14
    1b18: ee65 7a05    	vmul.f32	s15, s10, s10
    1b1c: ee35 5a05    	vadd.f32	s10, s10, s10
    1b20: ee47 5aa2    	vmla.f32	s11, s15, s5
    1b24: ee07 baa5    	vmla.f32	s22, s15, s11
    1b28: eddf 5af9    	vldr	s11, [pc, #996]         @ 0x1f10 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4b8>
    1b2c: eeb0 ca65    	vmov.f32	s24, s11
    1b30: ee07 ca8b    	vmla.f32	s24, s15, s22
    1b34: eeb0 ba41    	vmov.f32	s22, s2
    1b38: ee07 ba8c    	vmla.f32	s22, s15, s24
    1b3c: ee07 6a90    	vmov	s15, r6
    1b40: ed9f cb81    	vldr	d12, [pc, #516]         @ 0x1d48 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2f0>
    1b44: 4606         	mov	r6, r0
    1b46: eef8 7ae7    	vcvt.f32.s32	s15, s15
    1b4a: ee8a ab0c    	vdiv.f64	d10, d10, d12
    1b4e: ee25 5a0b    	vmul.f32	s10, s10, s22
    1b52: ee07 5a80    	vmla.f32	s10, s15, s0
    1b56: ed9f 0af3    	vldr	s0, [pc, #972]          @ 0x1f24 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4cc>
    1b5a: eeb7 abca    	vcvt.f32.f64	s20, d10
    1b5e: ee65 7a00    	vmul.f32	s15, s10, s0
    1b62: fe8a 5a27    	vmaxnm.f32	s10, s20, s15
    1b66: eeb5 5a40    	vcmp.f32	s10, #0
    1b6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b6e: d11b         	bne	0x1ba8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x150> @ imm = #0x36
    1b70: ed9f 6aed    	vldr	s12, [pc, #948]         @ 0x1f28 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    1b74: e05d         	b	0x1c32 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1da> @ imm = #0xba
    1b76: bf00         	nop
    1b78: 39 8e e3 3d  	.word	0x3de38e39
    1b7c: 00 bf 00 bf  	.word	0xbf00bf00
    1b80: 10 72 82 a8  	.word	0xa8827210
    1b84: 33 29 d5 3f  	.word	0x3fd52933
    1b88: 3e 1f 24 a5  	.word	0xa5241f3e
    1b8c: 52 c7 75 40  	.word	0x4075c752
    1b90: 3e 40 c4 e5  	.word	0xe5c4403e
    1b94: d8 9b 6f 3f  	.word	0x3f6f9bd8
    1b98: 83 16 e3 65  	.word	0x65e31683
    1b9c: 5b cd 17 3f  	.word	0x3f17cd5b
    1ba0: 3a 8c 30 e2  	.word	0xe2308c3a
    1ba4: 8e 79 35 3e  	.word	0x3e35798e
    1ba8: eeb4 aa4a    	vcmp.f32	s20, s20
    1bac: eeb0 ba6e    	vmov.f32	s22, s29
    1bb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bb4: eef4 7a67    	vcmp.f32	s15, s15
    1bb8: ed9f cadc    	vldr	s24, [pc, #880]         @ 0x1f2c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d4>
    1bbc: fe17 aa8a    	vselvs.f32	s20, s15, s20
    1bc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bc4: ec55 0b16    	vmov	r0, r5, d6
    1bc8: fe5a 7a27    	vselvs.f32	s15, s20, s15
    1bcc: 0fed         	lsrs	r5, r5, #0x1f
    1bce: eef4 7a4a    	vcmp.f32	s15, s20
    1bd2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bd6: fe7a 7a27    	vselgt.f32	s15, s20, s15
    1bda: ee87 5a85    	vdiv.f32	s10, s15, s10
    1bde: ee25 aa05    	vmul.f32	s20, s10, s10
    1be2: ee3a aa0a    	vadd.f32	s20, s20, s20
    1be6: ee05 ba0a    	vmla.f32	s22, s10, s20
    1bea: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    1bee: ed9f aad0    	vldr	s20, [pc, #832]         @ 0x1f30 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d8>
    1bf2: ee8b 5a05    	vdiv.f32	s10, s22, s10
    1bf6: ed9f bacf    	vldr	s22, [pc, #828]         @ 0x1f34 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4dc>
    1bfa: ee05 ba0a    	vmla.f32	s22, s10, s20
    1bfe: ed9f aace    	vldr	s20, [pc, #824]         @ 0x1f38 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e0>
    1c02: ee05 ca0a    	vmla.f32	s24, s10, s20
    1c06: eeb0 aa41    	vmov.f32	s20, s2
    1c0a: ee05 aa0b    	vmla.f32	s20, s10, s22
    1c0e: eeb0 ba41    	vmov.f32	s22, s2
    1c12: ee05 ba0c    	vmla.f32	s22, s10, s24
    1c16: ed9f 5ac9    	vldr	s10, [pc, #804]         @ 0x1f3c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e4>
    1c1a: ee27 5a85    	vmul.f32	s10, s15, s10
    1c1e: eeca 7a0b    	vdiv.f32	s15, s20, s22
    1c22: ee25 5a27    	vmul.f32	s10, s10, s15
    1c26: ee15 0a10    	vmov	r0, s10
    1c2a: f365 70df    	bfi	r0, r5, #31, #1
    1c2e: ee06 0a10    	vmov	s12, r0
    1c32: eeb7 aac6    	vcvt.f64.f32	d10, s12
    1c36: eef2 6a0b    	vmov.f32	s13, #1.350000e+01
    1c3a: ed9f bb47    	vldr	d11, [pc, #284]         @ 0x1d58 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x300>
    1c3e: ed81 6a03    	vstr	s12, [r1, #12]
    1c42: ee0a 9b0b    	vmla.f64	d9, d10, d11
    1c46: eeb7 5bc9    	vcvt.f32.f64	s10, d9
    1c4a: ed81 5a02    	vstr	s10, [r1, #8]
    1c4e: eef0 7ac5    	vabs.f32	s15, s10
    1c52: eef4 7a66    	vcmp.f32	s15, s13
    1c56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c5a: f340 80c6    	ble.w	0x1dea <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x392> @ imm = #0x18c
    1c5e: eeba 6a0b    	vmov.f32	s12, #-1.350000e+01
    1c62: f64f 75ff    	movw	r5, #0xffff
    1c66: f2c0 057f    	movt	r5, #0x7f
    1c6a: ed9f 0a36    	vldr	s0, [pc, #216]          @ 0x1d44 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2ec>
    1c6e: eeb4 6a45    	vcmp.f32	s12, s10
    1c72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c76: fe36 5a05    	vselgt.f32	s10, s12, s10
    1c7a: eeb4 5a66    	vcmp.f32	s10, s13
    1c7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c82: fe36 5a85    	vselgt.f32	s10, s13, s10
    1c86: eeb0 6b43    	vmov.f64	d6, d3
    1c8a: ed81 5a02    	vstr	s10, [r1, #8]
    1c8e: eeb7 9ac5    	vcvt.f64.f32	d9, s10
    1c92: ee09 6b04    	vmla.f64	d6, d9, d4
    1c96: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    1c9a: eeb0 9bc6    	vabs.f64	d9, d6
    1c9e: eef0 7a44    	vmov.f32	s15, s8
    1ca2: ee89 8b08    	vdiv.f64	d8, d9, d8
    1ca6: eef7 4bc8    	vcvt.f32.f64	s9, d8
    1caa: ed9f 8bdd    	vldr	d8, [pc, #884]          @ 0x2020 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5c8>
    1cae: ee44 7aa4    	vmla.f32	s15, s9, s9
    1cb2: eef1 7ae7    	vsqrt.f32	s15, s15
    1cb6: ee77 4aa4    	vadd.f32	s9, s15, s9
    1cba: ee89 8b08    	vdiv.f64	d8, d9, d8
    1cbe: ee14 0a90    	vmov	r0, s9
    1cc2: 4005         	ands	r5, r0
    1cc4: 0dc0         	lsrs	r0, r0, #0x17
    1cc6: f105 557e    	add.w	r5, r5, #0x3f800000
    1cca: ee04 5a90    	vmov	s9, r5
    1cce: f06f 057e    	mvn	r5, #0x7e
    1cd2: fa55 f080    	uxtab	r0, r5, r0
    1cd6: ee74 7aae    	vadd.f32	s15, s9, s29
    1cda: ee74 4a84    	vadd.f32	s9, s9, s8
    1cde: eec7 4aa4    	vdiv.f32	s9, s15, s9
    1ce2: ee64 7aa4    	vmul.f32	s15, s9, s9
    1ce6: ee07 7aa2    	vmla.f32	s14, s15, s5
    1cea: ee02 0a90    	vmov	s5, r0
    1cee: eef8 2ae2    	vcvt.f32.s32	s5, s5
    1cf2: ee47 1a87    	vmla.f32	s3, s15, s14
    1cf6: eeb0 7a44    	vmov.f32	s14, s8
    1cfa: ee47 5aa1    	vmla.f32	s11, s15, s3
    1cfe: ee74 1aa4    	vadd.f32	s3, s9, s9
    1d02: ee07 7aa5    	vmla.f32	s14, s15, s11
    1d06: ee21 7a87    	vmul.f32	s14, s3, s14
    1d0a: ee02 7a80    	vmla.f32	s14, s5, s0
    1d0e: ed9f 0a85    	vldr	s0, [pc, #532]          @ 0x1f24 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4cc>
    1d12: eef7 2bc8    	vcvt.f32.f64	s5, d8
    1d16: ee67 1a00    	vmul.f32	s3, s14, s0
    1d1a: fe82 7aa1    	vmaxnm.f32	s14, s5, s3
    1d1e: eeb5 7a40    	vcmp.f32	s14, #0
    1d22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d26: d11b         	bne	0x1d60 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x308> @ imm = #0x36
    1d28: ed9f 6a7f    	vldr	s12, [pc, #508]         @ 0x1f28 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    1d2c: e05b         	b	0x1de6 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x38e> @ imm = #0xb6
    1d2e: bf00         	nop
    1d30: 00 80 3b 47  	.word	0x473b8000
    1d34: 00 bf 00 bf  	.word	0xbf00bf00
    1d38: 4e 55 8a 9e  	.word	0x9e8a554e
    1d3c: da 9b f1 40  	.word	0x40f19bda
    1d40: cd cc 4c 3e  	.word	0x3e4ccccd
    1d44: 18 72 31 3f  	.word	0x3f317218
    1d48: 7a 8d 57 72  	.word	0x72578d7a
    1d4c: 7e 55 0c 3f  	.word	0x3f0c557e
    1d50: 25 49 12 3e  	.word	0x3e124925
    1d54: 00 bf 00 bf  	.word	0xbf00bf00
    1d58: 1a ed e3 d5  	.word	0xd5e3ed1a
    1d5c: e2 dc ea 3f  	.word	0x3feadce2
    1d60: eef4 2a62    	vcmp.f32	s5, s5
    1d64: eef0 4a6e    	vmov.f32	s9, s29
    1d68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d6c: eef4 1a61    	vcmp.f32	s3, s3
    1d70: eddf 5a6e    	vldr	s11, [pc, #440]         @ 0x1f2c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d4>
    1d74: fe51 2aa2    	vselvs.f32	s5, s3, s5
    1d78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d7c: ec55 0b16    	vmov	r0, r5, d6
    1d80: fe52 1aa1    	vselvs.f32	s3, s5, s3
    1d84: 0fed         	lsrs	r5, r5, #0x1f
    1d86: eef4 1a62    	vcmp.f32	s3, s5
    1d8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d8e: fe72 1aa1    	vselgt.f32	s3, s5, s3
    1d92: ee81 7a87    	vdiv.f32	s14, s3, s14
    1d96: ee67 2a07    	vmul.f32	s5, s14, s14
    1d9a: ee72 2aa2    	vadd.f32	s5, s5, s5
    1d9e: ee47 4a22    	vmla.f32	s9, s14, s5
    1da2: eeb0 7a08    	vmov.f32	s14, #3.000000e+00
    1da6: eddf 2a62    	vldr	s5, [pc, #392]          @ 0x1f30 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d8>
    1daa: ee84 7a87    	vdiv.f32	s14, s9, s14
    1dae: eddf 4a61    	vldr	s9, [pc, #388]          @ 0x1f34 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4dc>
    1db2: ee47 4a22    	vmla.f32	s9, s14, s5
    1db6: eddf 2a60    	vldr	s5, [pc, #384]          @ 0x1f38 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e0>
    1dba: ee47 5a22    	vmla.f32	s11, s14, s5
    1dbe: eef0 2a44    	vmov.f32	s5, s8
    1dc2: ee47 2a24    	vmla.f32	s5, s14, s9
    1dc6: ee07 4a25    	vmla.f32	s8, s14, s11
    1dca: ed9f 7a8b    	vldr	s14, [pc, #556]         @ 0x1ff8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5a0>
    1dce: ee21 7a87    	vmul.f32	s14, s3, s14
    1dd2: ee82 4a84    	vdiv.f32	s8, s5, s8
    1dd6: ee27 4a04    	vmul.f32	s8, s14, s8
    1dda: ee14 0a10    	vmov	r0, s8
    1dde: f365 70df    	bfi	r0, r5, #31, #1
    1de2: ee06 0a10    	vmov	s12, r0
    1de6: ed81 6a03    	vstr	s12, [r1, #12]
    1dea: ed9f 4aae    	vldr	s8, [pc, #696]          @ 0x20a4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x64c>
    1dee: 2000         	movs	r0, #0x0
    1df0: ed9f 7aad    	vldr	s14, [pc, #692]         @ 0x20a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x650>
    1df4: ee32 4a04    	vadd.f32	s8, s4, s8
    1df8: ee72 1a07    	vadd.f32	s3, s4, s14
    1dfc: eddf 2aab    	vldr	s5, [pc, #684]          @ 0x20ac <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x654>
    1e00: 9017         	str	r0, [sp, #0x5c]
    1e02: ee84 7a22    	vdiv.f32	s14, s8, s5
    1e06: 9016         	str	r0, [sp, #0x58]
    1e08: eec1 1aa2    	vdiv.f32	s3, s3, s5
    1e0c: 9013         	str	r0, [sp, #0x4c]
    1e0e: e9cd 0014    	strd	r0, r0, [sp, #80]
    1e12: eeb4 7a61    	vcmp.f32	s14, s3
    1e16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e1a: f200 868d    	bhi.w	0x2b38 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10e0> @ imm = #0xd1a
    1e1e: eeb7 4ac5    	vcvt.f64.f32	d4, s10
    1e22: eddf 6aa3    	vldr	s13, [pc, #652]         @ 0x20b0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x658>
    1e26: ed9f 0ba4    	vldr	d0, [pc, #656]          @ 0x20b8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x660>
    1e2a: ed9d 8b08    	vldr	d8, [sp, #32]
    1e2e: ee04 8b00    	vmla.f64	d8, d4, d0
    1e32: eeb7 4ac6    	vcvt.f64.f32	d4, s12
    1e36: ed9f 0ba2    	vldr	d0, [pc, #648]          @ 0x20c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x668>
    1e3a: ee04 8b00    	vmla.f64	d8, d4, d0
    1e3e: ed9f 4a6f    	vldr	s8, [pc, #444]          @ 0x1ffc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5a4>
    1e42: ee22 4a04    	vmul.f32	s8, s4, s8
    1e46: ed9f 0a6e    	vldr	s0, [pc, #440]          @ 0x2000 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5a8>
    1e4a: eeb7 2bc8    	vcvt.f32.f64	s4, d8
    1e4e: ed8d 4a06    	vstr	s8, [sp, #24]
    1e52: ee02 4a00    	vmla.f32	s8, s4, s0
    1e56: ed9f 0a6b    	vldr	s0, [pc, #428]          @ 0x2004 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5ac>
    1e5a: ed92 2b04    	vldr	d2, [r2, #16]
    1e5e: 2200         	movs	r2, #0x0
    1e60: eef7 2bc2    	vcvt.f32.f64	s5, d2
    1e64: edcd 2a05    	vstr	s5, [sp, #20]
    1e68: ee45 2a00    	vmla.f32	s5, s10, s0
    1e6c: ed9f 0a66    	vldr	s0, [pc, #408]          @ 0x2008 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5b0>
    1e70: eeb4 7a44    	vcmp.f32	s14, s8
    1e74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e78: ee46 2a26    	vmla.f32	s5, s12, s13
    1e7c: fe37 2a04    	vselgt.f32	s4, s14, s8
    1e80: eeb4 2a61    	vcmp.f32	s4, s3
    1e84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e88: eeb4 4a47    	vcmp.f32	s8, s14
    1e8c: fe71 7a82    	vselgt.f32	s15, s3, s4
    1e90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e94: eeb4 4a61    	vcmp.f32	s8, s3
    1e98: ed9f 4a23    	vldr	s8, [pc, #140]          @ 0x1f28 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    1e9c: bfc8         	it	gt
    1e9e: 2201         	movgt	r2, #0x1
    1ea0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ea4: eef5 2a40    	vcmp.f32	s5, #0
    1ea8: eeb0 2a44    	vmov.f32	s4, s8
    1eac: bf48         	it	mi
    1eae: 2001         	movmi	r0, #0x1
    1eb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1eb4: bf48         	it	mi
    1eb6: eeb0 2a6e    	vmovmi.f32	s4, s29
    1eba: eef0 4ae2    	vabs.f32	s9, s5
    1ebe: eef0 5a44    	vmov.f32	s11, s8
    1ec2: fe71 2a02    	vselgt.f32	s5, s2, s4
    1ec6: eeb0 2a44    	vmov.f32	s4, s8
    1eca: eeb0 aa44    	vmov.f32	s20, s8
    1ece: 4002         	ands	r2, r0
    1ed0: eef4 4a40    	vcmp.f32	s9, s0
    1ed4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ed8: f280 80d1    	bge.w	0x207e <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x626> @ imm = #0x1a2
    1edc: ed9f 2ad6    	vldr	s4, [pc, #856]          @ 0x2238 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7e0>
    1ee0: eef4 4a42    	vcmp.f32	s9, s4
    1ee4: ed9f 2a10    	vldr	s4, [pc, #64]           @ 0x1f28 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    1ee8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1eec: d914         	bls	0x1f18 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4c0> @ imm = #0x28
    1eee: ed9f 4ad3    	vldr	s8, [pc, #844]          @ 0x223c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7e4>
    1ef2: eef4 4a44    	vcmp.f32	s9, s8
    1ef6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1efa: d921         	bls	0x1f40 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e8> @ imm = #0x42
    1efc: ed9f 4ad0    	vldr	s8, [pc, #832]          @ 0x2240 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7e8>
    1f00: ee74 4a84    	vadd.f32	s9, s9, s8
    1f04: eddf 5acf    	vldr	s11, [pc, #828]         @ 0x2244 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7ec>
    1f08: eeb0 4a08    	vmov.f32	s8, #3.000000e+00
    1f0c: e020         	b	0x1f50 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4f8> @ imm = #0x40
    1f0e: bf00         	nop
    1f10: ab aa aa 3e  	.word	0x3eaaaaab
    1f14: 00 bf 00 bf  	.word	0xbf00bf00
    1f18: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    1f1c: eef0 2a42    	vmov.f32	s5, s4
    1f20: e01a         	b	0x1f58 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x500> @ imm = #0x34
    1f22: bf00         	nop
    1f24: f5 4a 39 3d  	.word	0x3d394af5
    1f28: 00 00 00 00  	.word	0x00000000
    1f2c: 55 55 95 3f  	.word	0x3f955555
    1f30: 2f a1 bd 3d  	.word	0x3dbda12f
    1f34: 55 55 55 3f  	.word	0x3f555555
    1f38: a1 bd 84 3e  	.word	0x3e84bda1
    1f3c: f8 a2 5f 3f  	.word	0x3f5fa2f8
    1f40: ed9f 4ac1    	vldr	s8, [pc, #772]          @ 0x2248 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7f0>
    1f44: ee74 4a84    	vadd.f32	s9, s9, s8
    1f48: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    1f4c: eddf 5abf    	vldr	s11, [pc, #764]         @ 0x224c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7f4>
    1f50: ee04 4aa5    	vmla.f32	s8, s9, s11
    1f54: ee62 2aa5    	vmul.f32	s5, s5, s11
    1f58: eef2 4a0e    	vmov.f32	s9, #1.500000e+01
    1f5c: ee34 4ac4    	vsub.f32	s8, s9, s8
    1f60: fe84 8a02    	vmaxnm.f32	s16, s8, s4
    1f64: eeb1 4a62    	vneg.f32	s8, s5
    1f68: eeb5 8a40    	vcmp.f32	s16, #0
    1f6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f70: d94e         	bls	0x2010 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5b8> @ imm = #0x9c
    1f72: eeb0 2ae7    	vabs.f32	s4, s15
    1f76: eeb4 2a48    	vcmp.f32	s4, s16
    1f7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f7e: d953         	bls	0x2028 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5d0> @ imm = #0xa6
    1f80: eec8 2a02    	vdiv.f32	s5, s16, s4
    1f84: ee22 2aa2    	vmul.f32	s4, s5, s5
    1f88: ee22 2a02    	vmul.f32	s4, s4, s4
    1f8c: ee22 2a02    	vmul.f32	s4, s4, s4
    1f90: ee62 4a02    	vmul.f32	s9, s4, s4
    1f94: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    1f98: ee74 5a82    	vadd.f32	s11, s9, s4
    1f9c: eeb0 9a42    	vmov.f32	s18, s4
    1fa0: eef4 5a42    	vcmp.f32	s11, s4
    1fa4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fa8: d009         	beq	0x1fbe <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x566> @ imm = #0x12
    1faa: eeb0 9a65    	vmov.f32	s18, s11
    1fae: eeb1 9ac9    	vsqrt.f32	s18, s18
    1fb2: eeb1 9ac9    	vsqrt.f32	s18, s18
    1fb6: eeb1 9ac9    	vsqrt.f32	s18, s18
    1fba: eeb1 9ac9    	vsqrt.f32	s18, s18
    1fbe: ee82 2a09    	vdiv.f32	s4, s4, s18
    1fc2: eef4 7a67    	vcmp.f32	s15, s15
    1fc6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fca: eec2 5a25    	vdiv.f32	s11, s4, s11
    1fce: f180 85c3    	bvs.w	0x2b58 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1100> @ imm = #0xb86
    1fd2: ee17 0a90    	vmov	r0, s15
    1fd6: f04f 557e    	mov.w	r5, #0x3f800000
    1fda: f365 001e    	bfi	r0, r5, #0, #31
    1fde: ee09 0a10    	vmov	s18, r0
    1fe2: ee29 8a08    	vmul.f32	s16, s18, s16
    1fe6: ee29 aa25    	vmul.f32	s20, s18, s11
    1fea: ee28 2a02    	vmul.f32	s4, s16, s4
    1fee: ee62 2aa4    	vmul.f32	s5, s5, s9
    1ff2: ee62 5aa5    	vmul.f32	s11, s5, s11
    1ff6: e042         	b	0x207e <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x626> @ imm = #0x84
    1ff8: f8 a2 5f 3f  	.word	0x3f5fa2f8
    1ffc: 64 9c 68 37  	.word	0x37689c64
    2000: 95 3a ae 43  	.word	0x43ae3a95
    2004: 19 91 f2 b8  	.word	0xb8f29119
    2008: 0a d7 23 3d  	.word	0x3d23d70a
    200c: 00 bf 00 bf  	.word	0xbf00bf00
    2010: eef0 5a42    	vmov.f32	s11, s4
    2014: eeb0 aa42    	vmov.f32	s20, s4
    2018: e031         	b	0x207e <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x626> @ imm = #0x62
    201a: bf00         	nop
    201c: bf00         	nop
    201e: bf00         	nop
    2020: a9 59 df 04  	.word	0x04df59a9
    2024: f3 12 21 3f  	.word	0x3f2112f3
    2028: ee87 2a88    	vdiv.f32	s4, s15, s16
    202c: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    2030: ee22 2a02    	vmul.f32	s4, s4, s4
    2034: eef0 5a64    	vmov.f32	s11, s9
    2038: ee22 2a02    	vmul.f32	s4, s4, s4
    203c: ee22 2a02    	vmul.f32	s4, s4, s4
    2040: ee22 2a02    	vmul.f32	s4, s4, s4
    2044: ee72 2a24    	vadd.f32	s5, s4, s9
    2048: eef4 2a64    	vcmp.f32	s5, s9
    204c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2050: d009         	beq	0x2066 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x60e> @ imm = #0x12
    2052: eef0 5a62    	vmov.f32	s11, s5
    2056: eef1 5ae5    	vsqrt.f32	s11, s11
    205a: eef1 5ae5    	vsqrt.f32	s11, s11
    205e: eef1 5ae5    	vsqrt.f32	s11, s11
    2062: eef1 5ae5    	vsqrt.f32	s11, s11
    2066: eec4 4aa5    	vdiv.f32	s9, s9, s11
    206a: ee27 2a82    	vmul.f32	s4, s15, s4
    206e: eec4 5aa2    	vdiv.f32	s11, s9, s5
    2072: eec2 2a08    	vdiv.f32	s5, s4, s16
    2076: ee27 2aa4    	vmul.f32	s4, s15, s9
    207a: ee22 aaa5    	vmul.f32	s20, s5, s11
    207e: ee35 2a42    	vsub.f32	s4, s10, s4
    2082: 2a00         	cmp	r2, #0x0
    2084: ed9f 0aca    	vldr	s0, [pc, #808]          @ 0x23b0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x958>
    2088: eddf 0aca    	vldr	s1, [pc, #808]          @ 0x23b4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x95c>
    208c: ee12 0a10    	vmov	r0, s4
    2090: fe00 9a80    	vseleq.f32	s18, s1, s0
    2094: f020 4000    	bic	r0, r0, #0x80000000
    2098: f1b0 4fff    	cmp.w	r0, #0x7f800000
    209c: db14         	blt	0x20c8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x670> @ imm = #0x28
    209e: ed9f 8ac6    	vldr	s16, [pc, #792]         @ 0x23b8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x960>
    20a2: e01b         	b	0x20dc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x684> @ imm = #0x36
    20a4: 00 24 74 cb  	.word	0xcb742400
    20a8: 00 24 74 4b  	.word	0x4b742400
    20ac: 00 a0 8c 47  	.word	0x478ca000
    20b0: db 6a be 38  	.word	0x38be6adb
    20b4: 00 bf 00 bf  	.word	0xbf00bf00
    20b8: 57 95 06 27  	.word	0x27069557
    20bc: 5d b5 e7 bf  	.word	0xbfe7b55d
    20c0: b0 98 53 d6  	.word	0xd65398b0
    20c4: be fa e3 3f  	.word	0x3fe3fabe
    20c8: eef2 2a0e    	vmov.f32	s5, #1.500000e+01
    20cc: ed5f 4a6a    	vldr	s9, [pc, #-424]         @ 0x1f28 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    20d0: eec2 2a22    	vdiv.f32	s5, s4, s5
    20d4: eef0 2ae2    	vabs.f32	s5, s5
    20d8: fe82 8aa4    	vmaxnm.f32	s16, s5, s9
    20dc: eef7 4bc3    	vcvt.f32.f64	s9, d3
    20e0: ed1f 0a70    	vldr	s0, [pc, #-448]         @ 0x1f24 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4cc>
    20e4: eeb6 fa00    	vmov.f32	s30, #5.000000e-01
    20e8: ee86 ba00    	vdiv.f32	s22, s12, s0
    20ec: ed9f 0ab3    	vldr	s0, [pc, #716]          @ 0x23bc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x964>
    20f0: eeb0 3a64    	vmov.f32	s6, s9
    20f4: ee05 3a26    	vmla.f32	s6, s10, s13
    20f8: ee64 3a0a    	vmul.f32	s7, s8, s20
    20fc: eef0 2acb    	vabs.f32	s5, s22
    2100: ee06 3a00    	vmla.f32	s6, s12, s0
    2104: e9cd 3601    	strd	r3, r6, [sp, #4]
    2108: eef4 2a4f    	vcmp.f32	s5, s30
    210c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2110: f280 809e    	bge.w	0x2250 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7f8> @ imm = #0x13c
    2114: eddf 2aaa    	vldr	s5, [pc, #680]          @ 0x23c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x968>
    2118: eebe da00    	vmov.f32	s26, #-5.000000e-01
    211c: eef4 2a4b    	vcmp.f32	s5, s22
    2120: ed9f aaa8    	vldr	s20, [pc, #672]         @ 0x23c4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x96c>
    2124: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2128: eddf 9aa7    	vldr	s19, [pc, #668]         @ 0x23c8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x970>
    212c: fe32 4a8b    	vselgt.f32	s8, s5, s22
    2130: ed9f baa6    	vldr	s22, [pc, #664]         @ 0x23cc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x974>
    2134: eec6 9a29    	vdiv.f32	s19, s12, s19
    2138: ed9f 0aa5    	vldr	s0, [pc, #660]          @ 0x23d0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x978>
    213c: eeb4 4a4a    	vcmp.f32	s8, s20
    2140: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2144: fe3a 4a04    	vselgt.f32	s8, s20, s8
    2148: ee24 ca0b    	vmul.f32	s24, s8, s22
    214c: ee3c ea0f    	vadd.f32	s28, s24, s30
    2150: eeb5 ca40    	vcmp.f32	s24, #0
    2154: ee7c 8a0d    	vadd.f32	s17, s24, s26
    2158: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    215c: eebd eace    	vcvt.s32.f32	s28, s28
    2160: eefd 8ae8    	vcvt.s32.f32	s17, s17
    2164: eef4 2a69    	vcmp.f32	s5, s19
    2168: ee1e 2a10    	vmov	r2, s28
    216c: ee18 0a90    	vmov	r0, s17
    2170: bfa8         	it	ge
    2172: 4610         	movge	r0, r2
    2174: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2178: fe72 2aa9    	vselgt.f32	s5, s5, s19
    217c: eef4 2a4a    	vcmp.f32	s5, s20
    2180: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2184: fe7a 2a22    	vselgt.f32	s5, s20, s5
    2188: ee22 aa8b    	vmul.f32	s20, s5, s22
    218c: ee3a ba0d    	vadd.f32	s22, s20, s26
    2190: eeb5 aa40    	vcmp.f32	s20, #0
    2194: ee3a ca0f    	vadd.f32	s24, s20, s30
    2198: ee0d 0a10    	vmov	s26, r0
    219c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    21a0: eebd bacb    	vcvt.s32.f32	s22, s22
    21a4: eebd cacc    	vcvt.s32.f32	s24, s24
    21a8: eeb8 dacd    	vcvt.f32.s32	s26, s26
    21ac: ee1b 2a10    	vmov	r2, s22
    21b0: ed9f ba88    	vldr	s22, [pc, #544]         @ 0x23d4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x97c>
    21b4: ee1c 3a10    	vmov	r3, s24
    21b8: bfa8         	it	ge
    21ba: 461a         	movge	r2, r3
    21bc: ee0d 4a40    	vmls.f32	s8, s26, s0
    21c0: f04f 537e    	mov.w	r3, #0x3f800000
    21c4: ee0a 2a10    	vmov	s20, r2
    21c8: eb03 50c0    	add.w	r0, r3, r0, lsl #23
    21cc: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    21d0: eeb8 aaca    	vcvt.f32.s32	s20, s20
    21d4: ee4a 2a40    	vmls.f32	s5, s20, s0
    21d8: ed9f aa7f    	vldr	s20, [pc, #508]         @ 0x23d8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x980>
    21dc: eeb0 ca4a    	vmov.f32	s24, s20
    21e0: ee04 ca0b    	vmla.f32	s24, s8, s22
    21e4: ee02 aa8b    	vmla.f32	s20, s5, s22
    21e8: ed9f ba7c    	vldr	s22, [pc, #496]         @ 0x23dc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x984>
    21ec: eeb0 da4b    	vmov.f32	s26, s22
    21f0: ee04 da0c    	vmla.f32	s26, s8, s24
    21f4: eeb7 ca00    	vmov.f32	s24, #1.000000e+00
    21f8: ee22 eaa2    	vmul.f32	s28, s5, s5
    21fc: ee02 ba8a    	vmla.f32	s22, s5, s20
    2200: eeb0 aa4f    	vmov.f32	s20, s30
    2204: ee04 aa0d    	vmla.f32	s20, s8, s26
    2208: eeb0 da4f    	vmov.f32	s26, s30
    220c: ee02 da8b    	vmla.f32	s26, s5, s22
    2210: ee24 ba04    	vmul.f32	s22, s8, s8
    2214: ee34 4a0c    	vadd.f32	s8, s8, s24
    2218: ee72 2a8c    	vadd.f32	s5, s5, s24
    221c: ee0c 2a10    	vmov	s24, r2
    2220: ee0b 4a0a    	vmla.f32	s8, s22, s20
    2224: ee0a 0a10    	vmov	s20, r0
    2228: ee4e 2a0d    	vmla.f32	s5, s28, s26
    222c: ee24 ba0a    	vmul.f32	s22, s8, s20
    2230: ee22 aa8c    	vmul.f32	s20, s5, s24
    2234: e059         	b	0x22ea <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x892> @ imm = #0xb2
    2236: bf00         	nop
    2238: 7c f2 b0 3a  	.word	0x3ab0f27c
    223c: a6 9b c4 3b  	.word	0x3bc49ba6
    2240: a6 9b c4 bb  	.word	0xbbc49ba6
    2244: 79 78 b0 43  	.word	0x43b07879
    2248: 7c f2 b0 ba  	.word	0xbab0f27c
    224c: 53 4a a1 43  	.word	0x43a14a53
    2250: eef4 2a62    	vcmp.f32	s5, s5
    2254: ed9f 4a5b    	vldr	s8, [pc, #364]          @ 0x23c4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x96c>
    2258: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    225c: eeb0 aa4f    	vmov.f32	s20, s30
    2260: ed9f ca5f    	vldr	s24, [pc, #380]         @ 0x23e0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x988>
    2264: fe54 2a22    	vselvs.f32	s5, s8, s5
    2268: f04f 507e    	mov.w	r0, #0x3f800000
    226c: eeb4 4a62    	vcmp.f32	s8, s5
    2270: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2274: fe72 2a84    	vselgt.f32	s5, s5, s8
    2278: eef4 2a44    	vcmp.f32	s5, s8
    227c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2280: eeb5 ba40    	vcmp.f32	s22, #0
    2284: fe34 4a22    	vselgt.f32	s8, s8, s5
    2288: eddf 2a50    	vldr	s5, [pc, #320]          @ 0x23cc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x974>
    228c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2290: ee04 aa22    	vmla.f32	s20, s8, s5
    2294: eefd 2aca    	vcvt.s32.f32	s5, s20
    2298: eeb8 aae2    	vcvt.f32.s32	s20, s5
    229c: ee12 2a90    	vmov	r2, s5
    22a0: ee0a 4a0c    	vmla.f32	s8, s20, s24
    22a4: ed9f aa4b    	vldr	s20, [pc, #300]         @ 0x23d4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x97c>
    22a8: ed9f ca4b    	vldr	s24, [pc, #300]         @ 0x23d8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x980>
    22ac: eb00 50c2    	add.w	r0, r0, r2, lsl #23
    22b0: ee02 0a90    	vmov	s5, r0
    22b4: ee04 ca0a    	vmla.f32	s24, s8, s20
    22b8: ed9f aa48    	vldr	s20, [pc, #288]         @ 0x23dc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x984>
    22bc: ee04 aa0c    	vmla.f32	s20, s8, s24
    22c0: eeb0 ca4f    	vmov.f32	s24, s30
    22c4: ee04 ca0a    	vmla.f32	s24, s8, s20
    22c8: ee24 aa04    	vmul.f32	s20, s8, s8
    22cc: ee34 4a01    	vadd.f32	s8, s8, s2
    22d0: ee0a 4a0c    	vmla.f32	s8, s20, s24
    22d4: ee24 4a22    	vmul.f32	s8, s8, s5
    22d8: ee81 aa04    	vdiv.f32	s20, s2, s8
    22dc: eeb0 ba44    	vmov.f32	s22, s8
    22e0: bfbc         	itt	lt
    22e2: eeb0 ba4a    	vmovlt.f32	s22, s20
    22e6: eeb0 aa44    	vmovlt.f32	s20, s8
    22ea: ee3b 4a4a    	vsub.f32	s8, s22, s20
    22ee: eddf ca3d    	vldr	s25, [pc, #244]         @ 0x23e4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x98c>
    22f2: ed9f 0a3d    	vldr	s0, [pc, #244]          @ 0x23e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x990>
    22f6: ee69 2a25    	vmul.f32	s5, s18, s11
    22fa: ee63 ba80    	vmul.f32	s23, s7, s0
    22fe: ed9f 0afa    	vldr	s0, [pc, #1000]         @ 0x26e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc90>
    2302: ee14 3a2c    	vnmls.f32	s6, s8, s25
    2306: ed9f 4a2c    	vldr	s8, [pc, #176]          @ 0x23b8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x960>
    230a: ee63 3a80    	vmul.f32	s7, s7, s0
    230e: eef0 da44    	vmov.f32	s27, s8
    2312: f8d7 c008    	ldr.w	r12, [r7, #0x8]
    2316: ee13 0a10    	vmov	r0, s6
    231a: f020 4000    	bic	r0, r0, #0x80000000
    231e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2322: da17         	bge	0x2354 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x8fc> @ imm = #0x2e
    2324: eddf 5af1    	vldr	s11, [pc, #964]         @ 0x26ec <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc94>
    2328: eeb4 8a48    	vcmp.f32	s16, s16
    232c: eec3 5a25    	vdiv.f32	s11, s6, s11
    2330: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2334: eef0 5ae5    	vabs.f32	s11, s11
    2338: fe15 8a88    	vselvs.f32	s16, s11, s16
    233c: eef4 5a65    	vcmp.f32	s11, s11
    2340: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2344: fe58 5a25    	vselvs.f32	s11, s16, s11
    2348: eeb4 8a65    	vcmp.f32	s16, s11
    234c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2350: fe78 da25    	vselgt.f32	s27, s16, s11
    2354: ed9f 0ae6    	vldr	s0, [pc, #920]          @ 0x26f0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc98>
    2358: ee3b 8a0a    	vadd.f32	s16, s22, s20
    235c: ee42 ba80    	vmla.f32	s23, s5, s0
    2360: ed9f 0ae4    	vldr	s0, [pc, #912]          @ 0x26f4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc9c>
    2364: ee42 3a80    	vmla.f32	s7, s5, s0
    2368: f10d 0e28    	add.w	lr, sp, #0x28
    236c: eef1 5a42    	vneg.f32	s11, s4
    2370: f10e 0a14    	add.w	r10, lr, #0x14
    2374: eeb1 ba43    	vneg.f32	s22, s6
    2378: 2600         	movs	r6, #0x0
    237a: e89c 0019    	ldm.w	r12, {r0, r3, r4}
    237e: 3401         	adds	r4, #0x1
    2380: 9404         	str	r4, [sp, #0x10]
    2382: 2400         	movs	r4, #0x0
    2384: f04f 0900    	mov.w	r9, #0x0
    2388: ed9f aadb    	vldr	s20, [pc, #876]         @ 0x26f8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xca0>
    238c: 1c42         	adds	r2, r0, #0x1
    238e: eddf 8adb    	vldr	s17, [pc, #876]         @ 0x26fc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xca4>
    2392: f8cc 2000    	str.w	r2, [r12]
    2396: ed9f ca0f    	vldr	s24, [pc, #60]          @ 0x23d4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x97c>
    239a: 1c5a         	adds	r2, r3, #0x1
    239c: ed9f ea0e    	vldr	s28, [pc, #56]          @ 0x23d8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x980>
    23a0: 9207         	str	r2, [sp, #0x1c]
    23a2: eddf aa0e    	vldr	s21, [pc, #56]          @ 0x23dc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x984>
    23a6: 3002         	adds	r0, #0x2
    23a8: ed9f 9ad5    	vldr	s18, [pc, #852]         @ 0x2700 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xca8>
    23ac: 9003         	str	r0, [sp, #0xc]
    23ae: e045         	b	0x243c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x9e4> @ imm = #0x8a
    23b0: 95 3a ae c3  	.word	0xc3ae3a95
    23b4: 00 00 00 80  	.word	0x80000000
    23b8: 00 00 80 7f  	.word	0x7f800000
    23bc: ed 79 08 b9  	.word	0xb90879ed
    23c0: 00 00 a0 c2  	.word	0xc2a00000
    23c4: 00 00 a0 42  	.word	0x42a00000
    23c8: f5 4a 39 bd  	.word	0xbd394af5
    23cc: 3b aa b8 3f  	.word	0x3fb8aa3b
    23d0: 18 72 31 3f  	.word	0x3f317218
    23d4: 89 88 08 3c  	.word	0x3c088889
    23d8: ab aa 2a 3d  	.word	0x3d2aaaab
    23dc: ab aa 2a 3e  	.word	0x3e2aaaab
    23e0: 18 72 31 bf  	.word	0xbf317218
    23e4: 77 cc 2b 31  	.word	0x312bcc77
    23e8: 19 91 f2 38  	.word	0x38f29119
    23ec: 00 bf 00 bf  	.word	0xbf00bf00
    23f0: ee2b 0a23    	vmul.f32	s0, s22, s7
    23f4: ed1f 3a04    	vldr	s6, [pc, #-16]          @ 0x23e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x990>
    23f8: ee65 ba83    	vmul.f32	s23, s11, s6
    23fc: ed9f 3aba    	vldr	s6, [pc, #744]          @ 0x26e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc90>
    2400: ee65 3a83    	vmul.f32	s7, s11, s6
    2404: ed9f 3aba    	vldr	s6, [pc, #744]          @ 0x26f0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc98>
    2408: ee40 ba03    	vmla.f32	s23, s0, s6
    240c: ed9f 3ab9    	vldr	s6, [pc, #740]          @ 0x26f4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc9c>
    2410: ee40 3a03    	vmla.f32	s7, s0, s6
    2414: eeff ea00    	vmov.f32	s29, #-1.000000e+00
    2418: ee32 8a88    	vadd.f32	s16, s5, s16
    241c: f109 0001    	add.w	r0, r9, #0x1
    2420: eef1 5a6f    	vneg.f32	s11, s31
    2424: 9b03         	ldr	r3, [sp, #0xc]
    2426: eeb1 ba4d    	vneg.f32	s22, s26
    242a: 444b         	add	r3, r9
    242c: 2803         	cmp	r0, #0x3
    242e: f106 0601    	add.w	r6, r6, #0x1
    2432: 4681         	mov	r9, r0
    2434: f8cc 3000    	str.w	r3, [r12]
    2438: f000 8362    	beq.w	0x2b00 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10a8> @ imm = #0x6c4
    243c: ee68 2a2c    	vmul.f32	s5, s16, s25
    2440: ed9f 0ae7    	vldr	s0, [pc, #924]          @ 0x27e0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd88>
    2444: ee3b 8a81    	vadd.f32	s16, s23, s2
    2448: 4670         	mov	r0, lr
    244a: f646 23db    	movw	r3, #0x6adb
    244e: ed8d 8a0a    	vstr	s16, [sp, #40]
    2452: eec2 2a89    	vdiv.f32	s5, s5, s18
    2456: edcd 3a0b    	vstr	s7, [sp, #44]
    245a: 940c         	str	r4, [sp, #0x30]
    245c: f6cb 03be    	movt	r3, #0xb8be
    2460: 930d         	str	r3, [sp, #0x34]
    2462: ee72 2a80    	vadd.f32	s5, s5, s0
    2466: edcd 2a0e    	vstr	s5, [sp, #56]
    246a: eef0 2ac8    	vabs.f32	s5, s16
    246e: eef4 2a66    	vcmp.f32	s5, s13
    2472: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2476: bf48         	it	mi
    2478: 300c         	addmi	r0, #0xc
    247a: 9b13         	ldr	r3, [sp, #0x4c]
    247c: f8ca 3000    	str.w	r3, [r10]
    2480: e9d0 3b00    	ldrd	r3, r11, [r0]
    2484: f8d0 8008    	ldr.w	r8, [r0, #0x8]
    2488: f8cd 8030    	str.w	r8, [sp, #0x30]
    248c: e9cd 3b0a    	strd	r3, r11, [sp, #40]
    2490: ed80 8a00    	vstr	s16, [r0]
    2494: f04f 0004    	mov.w	r0, #0x4
    2498: bf48         	it	mi
    249a: 2010         	movmi	r0, #0x10
    249c: f04f 0308    	mov.w	r3, #0x8
    24a0: eef4 6a62    	vcmp.f32	s13, s5
    24a4: 4470         	add	r0, lr
    24a6: bf48         	it	mi
    24a8: 2314         	movmi	r3, #0x14
    24aa: eddd 2a0a    	vldr	s5, [sp, #40]
    24ae: edc0 3a00    	vstr	s7, [r0]
    24b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    24b6: ee12 0a90    	vmov	r0, s5
    24ba: 9a07         	ldr	r2, [sp, #0x1c]
    24bc: fe3b 8a25    	vselgt.f32	s16, s22, s11
    24c0: eb02 0509    	add.w	r5, r2, r9
    24c4: fe75 3a8b    	vselgt.f32	s7, s11, s22
    24c8: f8cc 5004    	str.w	r5, [r12, #0x4]
    24cc: f020 4000    	bic	r0, r0, #0x80000000
    24d0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    24d4: 9814         	ldr	r0, [sp, #0x50]
    24d6: f8ca 0004    	str.w	r0, [r10, #0x4]
    24da: 9815         	ldr	r0, [sp, #0x54]
    24dc: f8ca 0008    	str.w	r0, [r10, #0x8]
    24e0: 9816         	ldr	r0, [sp, #0x58]
    24e2: f8ca 000c    	str.w	r0, [r10, #0xc]
    24e6: f84e 4003    	str.w	r4, [lr, r3]
    24ea: f280 8301    	bge.w	0x2af0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x602
    24ee: eef0 5ae2    	vabs.f32	s11, s5
    24f2: eef4 5a4a    	vcmp.f32	s11, s20
    24f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    24fa: f100 82f9    	bmi.w	0x2af0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x5f2
    24fe: eddd 5a0d    	vldr	s11, [sp, #52]
    2502: ed9d da0e    	vldr	s26, [sp, #56]
    2506: ee85 baa2    	vdiv.f32	s22, s11, s5
    250a: eddd 5a0b    	vldr	s11, [sp, #44]
    250e: ee0b da65    	vmls.f32	s26, s22, s11
    2512: ee1d 0a10    	vmov	r0, s26
    2516: f020 4000    	bic	r0, r0, #0x80000000
    251a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    251e: f280 82e7    	bge.w	0x2af0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x5ce
    2522: eef0 bacd    	vabs.f32	s23, s26
    2526: eef4 ba4a    	vcmp.f32	s23, s20
    252a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    252e: f100 82df    	bmi.w	0x2af0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x5be
    2532: ee4b 3a48    	vmls.f32	s7, s22, s16
    2536: eec3 3a8d    	vdiv.f32	s7, s7, s26
    253a: ee05 8ae3    	vmls.f32	s16, s11, s7
    253e: eec8 2a22    	vdiv.f32	s5, s16, s5
    2542: ee12 0a90    	vmov	r0, s5
    2546: f020 4000    	bic	r0, r0, #0x80000000
    254a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    254e: bfbe         	ittt	lt
    2550: ee13 0a90    	vmovlt	r0, s7
    2554: f020 4000    	biclt	r0, r0, #0x80000000
    2558: f1b0 4fff    	cmplt.w	r0, #0x7f800000
    255c: f280 82c8    	bge.w	0x2af0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x590
    2560: eef0 5ac5    	vabs.f32	s11, s10
    2564: ed9f 0a9f    	vldr	s0, [pc, #636]          @ 0x27e4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd8c>
    2568: eeb0 8ae2    	vabs.f32	s16, s5
    256c: eef4 5a65    	vcmp.f32	s11, s11
    2570: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2574: fe51 5a25    	vselvs.f32	s11, s2, s11
    2578: eef4 5a41    	vcmp.f32	s11, s2
    257c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2580: fe75 5a81    	vselgt.f32	s11, s11, s2
    2584: ee65 5a80    	vmul.f32	s11, s11, s0
    2588: ed9f 0a97    	vldr	s0, [pc, #604]          @ 0x27e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd90>
    258c: fec5 5ac0    	vminnm.f32	s11, s11, s0
    2590: eeb4 8a65    	vcmp.f32	s16, s11
    2594: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2598: d824         	bhi	0x25e4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xb8c> @ imm = #0x48
    259a: eef0 5ac6    	vabs.f32	s11, s12
    259e: ed9f 0a91    	vldr	s0, [pc, #580]          @ 0x27e4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd8c>
    25a2: eeb0 8ae3    	vabs.f32	s16, s7
    25a6: eef4 5a65    	vcmp.f32	s11, s11
    25aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    25ae: fe51 5a25    	vselvs.f32	s11, s2, s11
    25b2: eef4 5a41    	vcmp.f32	s11, s2
    25b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    25ba: fe75 5a81    	vselgt.f32	s11, s11, s2
    25be: ee65 5a80    	vmul.f32	s11, s11, s0
    25c2: ed9f 0a89    	vldr	s0, [pc, #548]          @ 0x27e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd90>
    25c6: fec5 5ac0    	vminnm.f32	s11, s11, s0
    25ca: eeb4 8a65    	vcmp.f32	s16, s11
    25ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    25d2: d807         	bhi	0x25e4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xb8c> @ imm = #0xe
    25d4: ed9f 0a85    	vldr	s0, [pc, #532]          @ 0x27ec <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd94>
    25d8: eef4 da40    	vcmp.f32	s27, s0
    25dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    25e0: f240 828f    	bls.w	0x2b02 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10aa> @ imm = #0x51e
    25e4: ee32 5a85    	vadd.f32	s10, s5, s10
    25e8: eddd 2a05    	vldr	s5, [sp, #20]
    25ec: ee33 6a86    	vadd.f32	s12, s7, s12
    25f0: 9804         	ldr	r0, [sp, #0x10]
    25f2: ed9f 3b45    	vldr	d3, [pc, #276]          @ 0x2708 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcb0>
    25f6: eeb7 bac5    	vcvt.f64.f32	d11, s10
    25fa: 2300         	movs	r3, #0x0
    25fc: eeb7 0ac6    	vcvt.f64.f32	d0, s12
    2600: ed81 5a02    	vstr	s10, [r1, #8]
    2604: ed9d db08    	vldr	d13, [sp, #32]
    2608: ed81 6a03    	vstr	s12, [r1, #12]
    260c: 4448         	add	r0, r9
    260e: ee0b db03    	vmla.f64	d13, d11, d3
    2612: f8cc 0008    	str.w	r0, [r12, #0x8]
    2616: 2000         	movs	r0, #0x0
    2618: eeb0 ba68    	vmov.f32	s22, s17
    261c: ed9f 3b3c    	vldr	d3, [pc, #240]          @ 0x2710 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcb8>
    2620: eef0 5a68    	vmov.f32	s11, s17
    2624: ee00 db03    	vmla.f64	d13, d0, d3
    2628: ed9f 3ae9    	vldr	s6, [pc, #932]          @ 0x29d0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf78>
    262c: eddd 0a06    	vldr	s1, [sp, #24]
    2630: eef0 3a68    	vmov.f32	s7, s17
    2634: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    2638: eef0 da68    	vmov.f32	s27, s17
    263c: ee40 0a03    	vmla.f32	s1, s0, s6
    2640: ed9f 3ae4    	vldr	s6, [pc, #912]          @ 0x29d4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf7c>
    2644: ee45 2a03    	vmla.f32	s5, s10, s6
    2648: ee46 2a26    	vmla.f32	s5, s12, s13
    264c: eeb4 7a60    	vcmp.f32	s14, s1
    2650: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2654: fe37 0a20    	vselgt.f32	s0, s14, s1
    2658: eeb0 8ae2    	vabs.f32	s16, s5
    265c: eeb4 0a61    	vcmp.f32	s0, s3
    2660: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2664: eef4 0a47    	vcmp.f32	s1, s14
    2668: fe71 7a80    	vselgt.f32	s15, s3, s0
    266c: eeb0 0a68    	vmov.f32	s0, s17
    2670: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2674: eef4 0a61    	vcmp.f32	s1, s3
    2678: bfc8         	it	gt
    267a: 2301         	movgt	r3, #0x1
    267c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2680: eef5 2a40    	vcmp.f32	s5, #0
    2684: 9413         	str	r4, [sp, #0x4c]
    2686: 9414         	str	r4, [sp, #0x50]
    2688: bf48         	it	mi
    268a: 2001         	movmi	r0, #0x1
    268c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2690: 9415         	str	r4, [sp, #0x54]
    2692: bf48         	it	mi
    2694: eeb0 0a6e    	vmovmi.f32	s0, s29
    2698: 9416         	str	r4, [sp, #0x58]
    269a: fe71 2a00    	vselgt.f32	s5, s2, s0
    269e: ed9f 0ace    	vldr	s0, [pc, #824]          @ 0x29d8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf80>
    26a2: eeb4 8a40    	vcmp.f32	s16, s0
    26a6: 9417         	str	r4, [sp, #0x5c]
    26a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    26ac: f280 80cc    	bge.w	0x2848 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdf0> @ imm = #0x198
    26b0: eef0 5a68    	vmov.f32	s11, s17
    26b4: eef7 3a08    	vmov.f32	s7, #1.500000e+00
    26b8: ed9f 0ac8    	vldr	s0, [pc, #800]          @ 0x29dc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf84>
    26bc: eeb4 8a40    	vcmp.f32	s16, s0
    26c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    26c4: d932         	bls	0x272c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcd4> @ imm = #0x64
    26c6: ed9f 0ac6    	vldr	s0, [pc, #792]          @ 0x29e0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf88>
    26ca: eeb4 8a40    	vcmp.f32	s16, s0
    26ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    26d2: d921         	bls	0x2718 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcc0> @ imm = #0x42
    26d4: ed9f 0ac3    	vldr	s0, [pc, #780]          @ 0x29e4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf8c>
    26d8: eef0 3a08    	vmov.f32	s7, #3.000000e+00
    26dc: ee38 0a00    	vadd.f32	s0, s16, s0
    26e0: ed9f 3ac1    	vldr	s6, [pc, #772]          @ 0x29e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf90>
    26e4: e01e         	b	0x2724 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xccc> @ imm = #0x3c
    26e6: bf00         	nop
    26e8: db 6a be b8  	.word	0xb8be6adb
    26ec: 0a d7 23 3c  	.word	0x3c23d70a
    26f0: e9 aa 3d bf  	.word	0xbf3daae9
    26f4: f7 d5 1f 3f  	.word	0x3f1fd5f7
    26f8: 08 e5 3c 1e  	.word	0x1e3ce508
    26fc: 00 00 00 00  	.word	0x00000000
    2700: f5 4a 39 3d  	.word	0x3d394af5
    2704: 00 bf 00 bf  	.word	0xbf00bf00
    2708: 57 95 06 27  	.word	0x27069557
    270c: 5d b5 e7 bf  	.word	0xbfe7b55d
    2710: b0 98 53 d6  	.word	0xd65398b0
    2714: be fa e3 3f  	.word	0x3fe3fabe
    2718: ed9f 0ab4    	vldr	s0, [pc, #720]          @ 0x29ec <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf94>
    271c: ee38 0a00    	vadd.f32	s0, s16, s0
    2720: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x2ae8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1090>
    2724: ee40 3a03    	vmla.f32	s7, s0, s6
    2728: ee62 5a83    	vmul.f32	s11, s5, s6
    272c: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    2730: eef1 da65    	vneg.f32	s27, s11
    2734: ee30 0a63    	vsub.f32	s0, s0, s7
    2738: fe80 8a28    	vmaxnm.f32	s16, s0, s17
    273c: eeb5 8a40    	vcmp.f32	s16, #0
    2740: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2744: d944         	bls	0x27d0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd78> @ imm = #0x88
    2746: eef0 2ae7    	vabs.f32	s5, s15
    274a: eef4 2a48    	vcmp.f32	s5, s16
    274e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2752: d94d         	bls	0x27f0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd98> @ imm = #0x9a
    2754: eec8 2a22    	vdiv.f32	s5, s16, s5
    2758: eeb0 ba41    	vmov.f32	s22, s2
    275c: ee22 0aa2    	vmul.f32	s0, s5, s5
    2760: ee20 0a00    	vmul.f32	s0, s0, s0
    2764: ee20 0a00    	vmul.f32	s0, s0, s0
    2768: ee60 3a00    	vmul.f32	s7, s0, s0
    276c: ee73 5a81    	vadd.f32	s11, s7, s2
    2770: eef4 5a41    	vcmp.f32	s11, s2
    2774: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2778: d009         	beq	0x278e <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd36> @ imm = #0x12
    277a: eeb0 ba65    	vmov.f32	s22, s11
    277e: eeb1 bacb    	vsqrt.f32	s22, s22
    2782: eeb1 bacb    	vsqrt.f32	s22, s22
    2786: eeb1 bacb    	vsqrt.f32	s22, s22
    278a: eeb1 bacb    	vsqrt.f32	s22, s22
    278e: eec1 ba0b    	vdiv.f32	s23, s2, s22
    2792: ed9f baef    	vldr	s22, [pc, #956]         @ 0x2b50 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10f8>
    2796: eef4 7a67    	vcmp.f32	s15, s15
    279a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    279e: ee8b daa5    	vdiv.f32	s26, s23, s11
    27a2: eef0 5a4b    	vmov.f32	s11, s22
    27a6: bf7f         	itttt	vc
    27a8: ee17 5a90    	vmovvc	r5, s15
    27ac: f04f 527e    	movvc.w	r2, #0x3f800000
    27b0: f362 051e    	bfivc	r5, r2, #0, #31
    27b4: ee00 5a10    	vmovvc	s0, r5
    27b8: bf7e         	ittt	vc
    27ba: ee60 0a08    	vmulvc.f32	s1, s0, s16
    27be: ee20 baab    	vmulvc.f32	s22, s1, s23
    27c2: ee60 5a0d    	vmulvc.f32	s11, s0, s26
    27c6: ee22 0aa3    	vmul.f32	s0, s5, s7
    27ca: ee60 3a0d    	vmul.f32	s7, s0, s26
    27ce: e03b         	b	0x2848 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdf0> @ imm = #0x76
    27d0: eeb0 ba68    	vmov.f32	s22, s17
    27d4: eef0 3a68    	vmov.f32	s7, s17
    27d8: eef0 5a68    	vmov.f32	s11, s17
    27dc: e034         	b	0x2848 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdf0> @ imm = #0x68
    27de: bf00         	nop
    27e0: ed 79 08 39  	.word	0x390879ed
    27e4: bd 37 06 36  	.word	0x360637bd
    27e8: ac c5 a7 37  	.word	0x37a7c5ac
    27ec: 17 b7 d1 38  	.word	0x38d1b717
    27f0: ee87 0a88    	vdiv.f32	s0, s15, s16
    27f4: eef0 5a41    	vmov.f32	s11, s2
    27f8: ee20 0a00    	vmul.f32	s0, s0, s0
    27fc: ee20 0a00    	vmul.f32	s0, s0, s0
    2800: ee20 0a00    	vmul.f32	s0, s0, s0
    2804: ee60 2a00    	vmul.f32	s5, s0, s0
    2808: ee72 3a81    	vadd.f32	s7, s5, s2
    280c: eef4 3a41    	vcmp.f32	s7, s2
    2810: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2814: d009         	beq	0x282a <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdd2> @ imm = #0x12
    2816: eef0 5a63    	vmov.f32	s11, s7
    281a: eef1 5ae5    	vsqrt.f32	s11, s11
    281e: eef1 5ae5    	vsqrt.f32	s11, s11
    2822: eef1 5ae5    	vsqrt.f32	s11, s11
    2826: eef1 5ae5    	vsqrt.f32	s11, s11
    282a: ee81 0a25    	vdiv.f32	s0, s2, s11
    282e: ee67 0aa2    	vmul.f32	s1, s15, s5
    2832: eec0 3a23    	vdiv.f32	s7, s0, s7
    2836: eec0 0a88    	vdiv.f32	s1, s1, s16
    283a: ee27 ba80    	vmul.f32	s22, s15, s0
    283e: ee60 5aa3    	vmul.f32	s11, s1, s7
    2842: bf00         	nop
    2844: bf00         	nop
    2846: bf00         	nop
    2848: ee75 fa4b    	vsub.f32	s31, s10, s22
    284c: 4018         	ands	r0, r3
    284e: ed9f 0ac8    	vldr	s0, [pc, #800]          @ 0x2b70 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1118>
    2852: eef0 ba44    	vmov.f32	s23, s8
    2856: ed9f 3ac7    	vldr	s6, [pc, #796]          @ 0x2b74 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x111c>
    285a: ee1f 5a90    	vmov	r5, s31
    285e: fe03 ba00    	vseleq.f32	s22, s6, s0
    2862: f025 4000    	bic	r0, r5, #0x80000000
    2866: f1b0 4fff    	cmp.w	r0, #0x7f800000
    286a: da07         	bge	0x287c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xe24> @ imm = #0xe
    286c: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    2870: ee8f 0a80    	vdiv.f32	s0, s31, s0
    2874: eeb0 0ac0    	vabs.f32	s0, s0
    2878: fec0 ba28    	vmaxnm.f32	s23, s0, s17
    287c: eec6 2a09    	vdiv.f32	s5, s12, s18
    2880: eeb0 8ae2    	vabs.f32	s16, s5
    2884: eeb4 8a4f    	vcmp.f32	s16, s30
    2888: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    288c: f280 80b0    	bge.w	0x29f0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf98> @ imm = #0x160
    2890: ed9f 0abe    	vldr	s0, [pc, #760]          @ 0x2b8c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1134>
    2894: eef0 9a45    	vmov.f32	s19, s10
    2898: eeb4 0a62    	vcmp.f32	s0, s5
    289c: eeb0 5a68    	vmov.f32	s10, s17
    28a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    28a4: eef0 8a40    	vmov.f32	s17, s0
    28a8: ed9f 2ab4    	vldr	s4, [pc, #720]          @ 0x2b7c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1124>
    28ac: fe30 0a22    	vselgt.f32	s0, s0, s5
    28b0: ed9f 9ab3    	vldr	s18, [pc, #716]         @ 0x2b80 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1128>
    28b4: eef0 ea41    	vmov.f32	s29, s2
    28b8: eeb0 1a42    	vmov.f32	s2, s4
    28bc: ed9f 3ab2    	vldr	s6, [pc, #712]          @ 0x2b88 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1130>
    28c0: f04f 527e    	mov.w	r2, #0x3f800000
    28c4: eeb4 0a42    	vcmp.f32	s0, s4
    28c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    28cc: ee86 da03    	vdiv.f32	s26, s12, s6
    28d0: fe32 8a00    	vselgt.f32	s16, s4, s0
    28d4: eebe 2a00    	vmov.f32	s4, #-5.000000e-01
    28d8: ee28 0a09    	vmul.f32	s0, s16, s18
    28dc: ee70 0a0f    	vadd.f32	s1, s0, s30
    28e0: eeb5 0a40    	vcmp.f32	s0, #0
    28e4: ee70 2a02    	vadd.f32	s5, s0, s4
    28e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    28ec: eefd 0ae0    	vcvt.s32.f32	s1, s1
    28f0: eefd 2ae2    	vcvt.s32.f32	s5, s5
    28f4: eef4 8a4d    	vcmp.f32	s17, s26
    28f8: ee10 3a90    	vmov	r3, s1
    28fc: ee12 0a90    	vmov	r0, s5
    2900: bfa8         	it	ge
    2902: 4618         	movge	r0, r3
    2904: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2908: fe38 0a8d    	vselgt.f32	s0, s17, s26
    290c: eef0 8a45    	vmov.f32	s17, s10
    2910: eeb0 5a69    	vmov.f32	s10, s19
    2914: eeb4 0a41    	vcmp.f32	s0, s2
    2918: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    291c: fe31 0a00    	vselgt.f32	s0, s2, s0
    2920: eeb0 1a6e    	vmov.f32	s2, s29
    2924: ee60 0a09    	vmul.f32	s1, s0, s18
    2928: ed9f 9a8e    	vldr	s18, [pc, #568]         @ 0x2b64 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x110c>
    292c: ee70 2a82    	vadd.f32	s5, s1, s4
    2930: eef5 0a40    	vcmp.f32	s1, #0
    2934: ee30 da8f    	vadd.f32	s26, s1, s30
    2938: ee00 0a90    	vmov	s1, r0
    293c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2940: eefd 2ae2    	vcvt.s32.f32	s5, s5
    2944: eb02 50c0    	add.w	r0, r2, r0, lsl #23
    2948: eef8 0ae0    	vcvt.f32.s32	s1, s1
    294c: ee12 3a90    	vmov	r3, s5
    2950: eefd 2acd    	vcvt.s32.f32	s5, s26
    2954: ee00 8ac9    	vmls.f32	s16, s1, s18
    2958: eef0 0a4e    	vmov.f32	s1, s28
    295c: eeb0 da6a    	vmov.f32	s26, s21
    2960: ee12 5a90    	vmov	r5, s5
    2964: bfa8         	it	ge
    2966: 462b         	movge	r3, r5
    2968: ee02 3a90    	vmov	s5, r3
    296c: eb02 53c3    	add.w	r3, r2, r3, lsl #23
    2970: ee48 0a0c    	vmla.f32	s1, s16, s24
    2974: eef8 2ae2    	vcvt.f32.s32	s5, s5
    2978: ee02 0ac9    	vmls.f32	s0, s5, s18
    297c: eef0 2a4e    	vmov.f32	s5, s28
    2980: ee08 da20    	vmla.f32	s26, s16, s1
    2984: eef0 0a6a    	vmov.f32	s1, s21
    2988: ee40 2a0c    	vmla.f32	s5, s0, s24
    298c: ee20 9a00    	vmul.f32	s18, s0, s0
    2990: ee40 0a22    	vmla.f32	s1, s0, s5
    2994: eef0 2a4f    	vmov.f32	s5, s30
    2998: ee48 2a0d    	vmla.f32	s5, s16, s26
    299c: eeb0 da4f    	vmov.f32	s26, s30
    29a0: ee00 da20    	vmla.f32	s26, s0, s1
    29a4: ee68 0a08    	vmul.f32	s1, s16, s16
    29a8: ee38 8a2e    	vadd.f32	s16, s16, s29
    29ac: ee30 0a2e    	vadd.f32	s0, s0, s29
    29b0: ee00 8aa2    	vmla.f32	s16, s1, s5
    29b4: ee00 0a90    	vmov	s1, r0
    29b8: ee09 0a0d    	vmla.f32	s0, s18, s26
    29bc: ee09 3a10    	vmov	s18, r3
    29c0: ee68 2a20    	vmul.f32	s5, s16, s1
    29c4: ee20 8a09    	vmul.f32	s16, s0, s18
    29c8: ed9f 9a67    	vldr	s18, [pc, #412]         @ 0x2b68 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1110>
    29cc: e05b         	b	0x2a86 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x102e> @ imm = #0xb6
    29ce: bf00         	nop
    29d0: 95 3a ae 43  	.word	0x43ae3a95
    29d4: 19 91 f2 b8  	.word	0xb8f29119
    29d8: 0a d7 23 3d  	.word	0x3d23d70a
    29dc: 7c f2 b0 3a  	.word	0x3ab0f27c
    29e0: a6 9b c4 3b  	.word	0x3bc49ba6
    29e4: a6 9b c4 bb  	.word	0xbbc49ba6
    29e8: 79 78 b0 43  	.word	0x43b07879
    29ec: 7c f2 b0 ba  	.word	0xbab0f27c
    29f0: eeb4 8a48    	vcmp.f32	s16, s16
    29f4: ed9f 2a61    	vldr	s4, [pc, #388]          @ 0x2b7c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1124>
    29f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29fc: ed9f 3a60    	vldr	s6, [pc, #384]          @ 0x2b80 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1128>
    2a00: eef0 0a4f    	vmov.f32	s1, s30
    2a04: fe12 0a08    	vselvs.f32	s0, s4, s16
    2a08: eeb0 da6a    	vmov.f32	s26, s21
    2a0c: f04f 527e    	mov.w	r2, #0x3f800000
    2a10: eeb4 2a40    	vcmp.f32	s4, s0
    2a14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a18: fe30 0a02    	vselgt.f32	s0, s0, s4
    2a1c: eeb4 0a42    	vcmp.f32	s0, s4
    2a20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a24: eef5 2a40    	vcmp.f32	s5, #0
    2a28: fe32 0a00    	vselgt.f32	s0, s4, s0
    2a2c: ed9f 2a55    	vldr	s4, [pc, #340]          @ 0x2b84 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x112c>
    2a30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a34: ee40 0a03    	vmla.f32	s1, s0, s6
    2a38: eefd 0ae0    	vcvt.s32.f32	s1, s1
    2a3c: eeb8 8ae0    	vcvt.f32.s32	s16, s1
    2a40: ee10 0a90    	vmov	r0, s1
    2a44: ee08 0a02    	vmla.f32	s0, s16, s4
    2a48: eeb0 8a4e    	vmov.f32	s16, s28
    2a4c: eb02 50c0    	add.w	r0, r2, r0, lsl #23
    2a50: ee00 0a90    	vmov	s1, r0
    2a54: ee00 8a0c    	vmla.f32	s16, s0, s24
    2a58: ee00 da08    	vmla.f32	s26, s0, s16
    2a5c: eeb0 8a4f    	vmov.f32	s16, s30
    2a60: ee00 8a0d    	vmla.f32	s16, s0, s26
    2a64: ee20 da00    	vmul.f32	s26, s0, s0
    2a68: ee30 0a01    	vadd.f32	s0, s0, s2
    2a6c: ee0d 0a08    	vmla.f32	s0, s26, s16
    2a70: ee20 0a20    	vmul.f32	s0, s0, s1
    2a74: ee81 8a00    	vdiv.f32	s16, s2, s0
    2a78: eef0 2a40    	vmov.f32	s5, s0
    2a7c: bfbc         	itt	lt
    2a7e: eef0 2a48    	vmovlt.f32	s5, s16
    2a82: eeb0 8a40    	vmovlt.f32	s16, s0
    2a86: eeb0 da64    	vmov.f32	s26, s9
    2a8a: ee05 da26    	vmla.f32	s26, s10, s13
    2a8e: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x2b78 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1120>
    2a92: ee6d 5aa5    	vmul.f32	s11, s27, s11
    2a96: eef0 da44    	vmov.f32	s27, s8
    2a9a: ee06 da00    	vmla.f32	s26, s12, s0
    2a9e: ee32 0ac8    	vsub.f32	s0, s5, s16
    2aa2: ee10 da2c    	vnmls.f32	s26, s0, s25
    2aa6: ee1d 0a10    	vmov	r0, s26
    2aaa: f020 4000    	bic	r0, r0, #0x80000000
    2aae: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2ab2: f6bf ac9d    	bge.w	0x23f0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x998> @ imm = #-0x6c6
    2ab6: ed9f 0a36    	vldr	s0, [pc, #216]          @ 0x2b90 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1138>
    2aba: eef4 ba6b    	vcmp.f32	s23, s23
    2abe: ee8d 0a00    	vdiv.f32	s0, s26, s0
    2ac2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ac6: eeb0 0ac0    	vabs.f32	s0, s0
    2aca: fe50 0a2b    	vselvs.f32	s1, s0, s23
    2ace: eeb4 0a40    	vcmp.f32	s0, s0
    2ad2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ad6: fe10 0a80    	vselvs.f32	s0, s1, s0
    2ada: eef4 0a40    	vcmp.f32	s1, s0
    2ade: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ae2: fe70 da80    	vselgt.f32	s27, s1, s0
    2ae6: e483         	b	0x23f0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x998> @ imm = #-0x6fa
    2ae8: 53 4a a1 43  	.word	0x43a14a53
    2aec: 00 bf 00 bf  	.word	0xbf00bf00
    2af0: 9902         	ldr	r1, [sp, #0x8]
    2af2: f04f 40ff    	mov.w	r0, #0x7f800000
    2af6: 6008         	str	r0, [r1]
    2af8: 2000         	movs	r0, #0x0
    2afa: 710e         	strb	r6, [r1, #0x4]
    2afc: e012         	b	0x2b24 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10cc> @ imm = #0x24
    2afe: bf00         	nop
    2b00: 2603         	movs	r6, #0x3
    2b02: ee1d 0a90    	vmov	r0, s27
    2b06: 9901         	ldr	r1, [sp, #0x4]
    2b08: edc1 7a01    	vstr	s15, [r1, #4]
    2b0c: 9902         	ldr	r1, [sp, #0x8]
    2b0e: f020 4000    	bic	r0, r0, #0x80000000
    2b12: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2b16: f04f 0000    	mov.w	r0, #0x0
    2b1a: edc1 da00    	vstr	s27, [r1]
    2b1e: 710e         	strb	r6, [r1, #0x4]
    2b20: bfb8         	it	lt
    2b22: 2001         	movlt	r0, #0x1
    2b24: 7148         	strb	r0, [r1, #0x5]
    2b26: b018         	add	sp, #0x60
    2b28: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    2b2c: b001         	add	sp, #0x4
    2b2e: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    2b32: bdf0         	pop	{r4, r5, r6, r7, pc}
    2b34: bf00         	nop
    2b36: bf00         	nop
    2b38: f24b 7090    	movw	r0, #0xb790
    2b3c: f64b 0210    	movw	r2, #0xb810
    2b40: f2c0 0000    	movt	r0, #0x0
    2b44: f2c0 0200    	movt	r2, #0x0
    2b48: a90a         	add	r1, sp, #0x28
    2b4a: f007 fc4d    	bl	0xa3e8 <core::panicking::panic_fmt> @ imm = #0x789a
    2b4e: bf00         	nop
    2b50: 00 00 c0 7f  	.word	0x7fc00000
    2b54: 00 bf 00 bf  	.word	0xbf00bf00
    2b58: ed9f aa04    	vldr	s20, [pc, #16]          @ 0x2b6c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1114>
    2b5c: eeb0 2a4a    	vmov.f32	s4, s20
    2b60: f7ff ba45    	b.w	0x1fee <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x596> @ imm = #-0xb76
    2b64: 18 72 31 3f  	.word	0x3f317218
    2b68: f5 4a 39 3d  	.word	0x3d394af5
    2b6c: 00 00 c0 7f  	.word	0x7fc00000
    2b70: 95 3a ae c3  	.word	0xc3ae3a95
    2b74: 00 00 00 80  	.word	0x80000000
    2b78: ed 79 08 b9  	.word	0xb90879ed
    2b7c: 00 00 a0 42  	.word	0x42a00000
    2b80: 3b aa b8 3f  	.word	0x3fb8aa3b
    2b84: 18 72 31 bf  	.word	0xbf317218
    2b88: f5 4a 39 bd  	.word	0xbd394af5
    2b8c: 00 00 a0 c2  	.word	0xc2a00000
    2b90: 0a d7 23 3c  	.word	0x3c23d70a
    2b94: d4 d4 d4 d4  	.word	0xd4d4d4d4

00002b98 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>>:
    2b98: b5f0         	push	{r4, r5, r6, r7, lr}
    2b9a: af03         	add	r7, sp, #0xc
    2b9c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    2ba0: b081         	sub	sp, #0x4
    2ba2: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    2ba6: b0aa         	sub	sp, #0xa8
    2ba8: ed91 1a00    	vldr	s2, [r1]
    2bac: 461c         	mov	r4, r3
    2bae: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    2bb2: 4605         	mov	r5, r0
    2bb4: ed9f 2b66    	vldr	d2, [pc, #408]          @ 0x2d50 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1b8>
    2bb8: ee21 3b02    	vmul.f64	d3, d1, d2
    2bbc: ed91 1a01    	vldr	s2, [r1, #4]
    2bc0: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    2bc4: ed92 4b14    	vldr	d4, [r2, #80]
    2bc8: ee34 5b03    	vadd.f64	d5, d4, d3
    2bcc: ee21 4b02    	vmul.f64	d4, d1, d2
    2bd0: ed91 1a02    	vldr	s2, [r1, #8]
    2bd4: ee35 6b04    	vadd.f64	d6, d5, d4
    2bd8: eeb7 5ac1    	vcvt.f64.f32	d5, s2
    2bdc: ed9f 1b5e    	vldr	d1, [pc, #376]          @ 0x2d58 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1c0>
    2be0: ee25 8b01    	vmul.f64	d8, d5, d1
    2be4: ed91 1a03    	vldr	s2, [r1, #12]
    2be8: eeb7 7ac1    	vcvt.f64.f32	d7, s2
    2bec: ed9f 1b5c    	vldr	d1, [pc, #368]          @ 0x2d60 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1c8>
    2bf0: ee27 ab01    	vmul.f64	d10, d7, d1
    2bf4: ed91 1a05    	vldr	s2, [r1, #20]
    2bf8: eeb7 9ac1    	vcvt.f64.f32	d9, s2
    2bfc: ed91 1a06    	vldr	s2, [r1, #24]
    2c00: ee36 6b08    	vadd.f64	d6, d6, d8
    2c04: eeb7 bac1    	vcvt.f64.f32	d11, s2
    2c08: edd1 1a07    	vldr	s3, [r1, #28]
    2c0c: ee36 6b0a    	vadd.f64	d6, d6, d10
    2c10: ee09 6b02    	vmla.f64	d6, d9, d2
    2c14: eeb7 9ae1    	vcvt.f64.f32	d9, s3
    2c18: eefa 1a0b    	vmov.f32	s3, #-1.350000e+01
    2c1c: ee2b bb02    	vmul.f64	d11, d11, d2
    2c20: ee29 cb02    	vmul.f64	d12, d9, d2
    2c24: ee36 db0b    	vadd.f64	d13, d6, d11
    2c28: ed9f 6a4f    	vldr	s12, [pc, #316]         @ 0x2d68 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1d0>
    2c2c: ee60 6a06    	vmul.f32	s13, s0, s12
    2c30: ee3d 9b0c    	vadd.f64	d9, d13, d12
    2c34: ee20 6a86    	vmul.f32	s12, s1, s12
    2c38: eddf 0a61    	vldr	s1, [pc, #388]          @ 0x2dc0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x228>
    2c3c: eeb7 eae6    	vcvt.f64.f32	d14, s13
    2c40: ed9f db4b    	vldr	d13, [pc, #300]         @ 0x2d70 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1d8>
    2c44: ee8e fb0d    	vdiv.f64	d15, d14, d13
    2c48: ed9f eb4b    	vldr	d14, [pc, #300]         @ 0x2d78 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1e0>
    2c4c: ee09 fb0e    	vmla.f64	d15, d9, d14
    2c50: ed9f 9b4b    	vldr	d9, [pc, #300]          @ 0x2d80 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1e8>
    2c54: ee8f 9b09    	vdiv.f64	d9, d15, d9
    2c58: eeb2 fa0b    	vmov.f32	s30, #1.350000e+01
    2c5c: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    2c60: ed92 9b16    	vldr	d9, [r2, #88]
    2c64: eef4 1a40    	vcmp.f32	s3, s0
    2c68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2c6c: ee39 3b03    	vadd.f64	d3, d9, d3
    2c70: fe31 0a80    	vselgt.f32	s0, s3, s0
    2c74: ed8d 9b18    	vstr	d9, [sp, #96]
    2c78: eeb4 0a4f    	vcmp.f32	s0, s30
    2c7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2c80: ee33 3b04    	vadd.f64	d3, d3, d4
    2c84: fe3f 0a00    	vselgt.f32	s0, s30, s0
    2c88: ee05 3b02    	vmla.f64	d3, d5, d2
    2c8c: ed81 0a04    	vstr	s0, [r1, #16]
    2c90: eeb7 9ac0    	vcvt.f64.f32	d9, s0
    2c94: ee07 3b02    	vmla.f64	d3, d7, d2
    2c98: ed9f 2b4b    	vldr	d2, [pc, #300]          @ 0x2dc8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x230>
    2c9c: ee09 3b02    	vmla.f64	d3, d9, d2
    2ca0: ee33 2b0b    	vadd.f64	d2, d3, d11
    2ca4: eeb7 3ac6    	vcvt.f64.f32	d3, s12
    2ca8: ed9f bb49    	vldr	d11, [pc, #292]         @ 0x2dd0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x238>
    2cac: ee32 2b0c    	vadd.f64	d2, d2, d12
    2cb0: ee83 3b0d    	vdiv.f64	d3, d3, d13
    2cb4: ee02 3b0e    	vmla.f64	d3, d2, d14
    2cb8: ed9f 2b47    	vldr	d2, [pc, #284]          @ 0x2dd8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x240>
    2cbc: ee83 2b02    	vdiv.f64	d2, d3, d2
    2cc0: ed92 cb0c    	vldr	d12, [r2, #48]
    2cc4: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    2cc8: ed8d cb06    	vstr	d12, [sp, #24]
    2ccc: eef4 1a42    	vcmp.f32	s3, s4
    2cd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2cd4: ed92 eb1a    	vldr	d14, [r2, #104]
    2cd8: fe31 2a82    	vselgt.f32	s4, s3, s4
    2cdc: ed92 db1c    	vldr	d13, [r2, #112]
    2ce0: eeb4 2a4f    	vcmp.f32	s4, s30
    2ce4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ce8: eeb7 4bce    	vcvt.f32.f64	s8, d14
    2cec: fe3f 3a02    	vselgt.f32	s6, s30, s4
    2cf0: ed8d 4a11    	vstr	s8, [sp, #68]
    2cf4: eeb7 7bcd    	vcvt.f32.f64	s14, d13
    2cf8: ed8d 7a10    	vstr	s14, [sp, #64]
    2cfc: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    2d00: ed81 3a05    	vstr	s6, [r1, #20]
    2d04: ed8d 2b16    	vstr	d2, [sp, #88]
    2d08: ee23 5a20    	vmul.f32	s10, s6, s1
    2d0c: ee02 cb0b    	vmla.f64	d12, d2, d11
    2d10: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0x30b0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x518>
    2d14: ee35 4a04    	vadd.f32	s8, s10, s8
    2d18: ee8c 2b02    	vdiv.f64	d2, d12, d2
    2d1c: ee35 5a07    	vadd.f32	s10, s10, s14
    2d20: ed9f 7adb    	vldr	s14, [pc, #876]         @ 0x3090 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x4f8>
    2d24: eef7 4bc2    	vcvt.f32.f64	s9, d2
    2d28: eeb0 2a44    	vmov.f32	s4, s8
    2d2c: ee04 2a87    	vmla.f32	s4, s9, s14
    2d30: eeb0 7a45    	vmov.f32	s14, s10
    2d34: ee04 7ae0    	vmls.f32	s14, s9, s1
    2d38: fe82 2a47    	vminnm.f32	s4, s4, s14
    2d3c: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    2d40: eeb4 2a47    	vcmp.f32	s4, s14
    2d44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d48: f240 810c    	bls.w	0x2f64 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3cc> @ imm = #0x218
    2d4c: e048         	b	0x2de0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x248> @ imm = #0x90
    2d4e: bf00         	nop
    2d50: 00 00 00 00  	.word	0x00000000
    2d54: 00 00 00 00  	.word	0x00000000
    2d58: 35 d7 f4 dc  	.word	0xdcf4d735
    2d5c: 47 af d5 3f  	.word	0x3fd5af47
    2d60: 65 44 24 3c  	.word	0x3c244465
    2d64: c8 40 c4 3f  	.word	0x3fc440c8
    2d68: 00 80 3b 47  	.word	0x473b8000
    2d6c: 00 bf 00 bf  	.word	0xbf00bf00
    2d70: 4e 55 8a 9e  	.word	0x9e8a554e
    2d74: da 9b f1 40  	.word	0x40f19bda
    2d78: 3e 1f 24 a5  	.word	0xa5241f3e
    2d7c: 52 c7 75 40  	.word	0x4075c752
    2d80: 5f 35 f4 2d  	.word	0x2df4355f
    2d84: d1 aa 66 40  	.word	0x4066aad1
    2d88: cf a4 da 38  	.word	0x38daa4cf
    2d8c: 75 47 20 3f  	.word	0x3f204775
    2d90: eb 20 97 f7  	.word	0xf79720eb
    2d94: 94 f9 ef 3f  	.word	0x3feff994
    2d98: c2 17 26 53  	.word	0x532617c2
    2d9c: 05 a3 72 3f  	.word	0x3f72a305
    2da0: 9d f1 d1 f9  	.word	0xf9d1f19d
    2da4: 37 e7 dd be  	.word	0xbedde737
    2da8: 9d f1 d1 f9  	.word	0xf9d1f19d
    2dac: 37 e7 bd be  	.word	0xbebde737
    2db0: 84 dd 26 6c  	.word	0x6c26dd84
    2db4: 48 9f 82 3f  	.word	0x3f829f48
    2db8: 84 dd 26 6c  	.word	0x6c26dd84
    2dbc: 48 9f 62 3f  	.word	0x3f629f48
    2dc0: a8 cc 7f 3f  	.word	0x3f7fcca8
    2dc4: 00 bf 00 bf  	.word	0xbf00bf00
    2dc8: 8e 66 bb a2  	.word	0xa2bb668e
    2dcc: 4b 3f c2 bf  	.word	0xbfc23f4b
    2dd0: 39 4d 87 3a  	.word	0x3a874d39
    2dd4: 1a 44 20 3f  	.word	0x3f20441a
    2dd8: 47 49 7c 94  	.word	0x947c4947
    2ddc: 0b ea 55 40  	.word	0x4055ea0b
    2de0: ed1f 2b17    	vldr	d2, [pc, #-92]          @ 0x2d88 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1f0>
    2de4: ed9f 7aaa    	vldr	s14, [pc, #680]         @ 0x3090 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x4f8>
    2de8: eef6 1a00    	vmov.f32	s3, #5.000000e-01
    2dec: ee8c 2b02    	vdiv.f64	d2, d12, d2
    2df0: eddf 0ae2    	vldr	s1, [pc, #904]          @ 0x317c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e4>
    2df4: eef7 5a00    	vmov.f32	s11, #1.000000e+00
    2df8: eef7 4bc2    	vcvt.f32.f64	s9, d2
    2dfc: eeb0 2a44    	vmov.f32	s4, s8
    2e00: ee04 2a87    	vmla.f32	s4, s9, s14
    2e04: eeb0 7a45    	vmov.f32	s14, s10
    2e08: ee04 7aa0    	vmla.f32	s14, s9, s1
    2e0c: fe82 2a47    	vminnm.f32	s4, s4, s14
    2e10: ed9f 7adb    	vldr	s14, [pc, #876]         @ 0x3180 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    2e14: ee31 2ac2    	vsub.f32	s4, s3, s4
    2e18: fe82 2a47    	vminnm.f32	s4, s4, s14
    2e1c: eeb0 7a65    	vmov.f32	s14, s11
    2e20: ee02 7a21    	vmla.f32	s14, s4, s3
    2e24: ed9f 2ad7    	vldr	s4, [pc, #860]          @ 0x3184 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5ec>
    2e28: eddf 1ad7    	vldr	s3, [pc, #860]          @ 0x3188 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5f0>
    2e2c: ee27 2a02    	vmul.f32	s4, s14, s4
    2e30: eeb4 2a61    	vcmp.f32	s4, s3
    2e34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e38: f240 8094    	bls.w	0x2f64 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3cc> @ imm = #0x128
    2e3c: ed1f 2b2c    	vldr	d2, [pc, #-176]         @ 0x2d90 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1f8>
    2e40: eeb7 fb00    	vmov.f64	d15, #1.000000e+00
    2e44: ed9d 7b16    	vldr	d7, [sp, #88]
    2e48: ee27 2b02    	vmul.f64	d2, d7, d2
    2e4c: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
    2e50: ed8d 2b14    	vstr	d2, [sp, #80]
    2e54: ee3e 2b02    	vadd.f64	d2, d14, d2
    2e58: eeb0 eb4f    	vmov.f64	d14, d15
    2e5c: ee37 2b42    	vsub.f64	d2, d7, d2
    2e60: ee02 eb07    	vmla.f64	d14, d2, d7
    2e64: eeb0 7b4b    	vmov.f64	d7, d11
    2e68: ed1f 2b35    	vldr	d2, [pc, #-212]         @ 0x2d98 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x200>
    2e6c: ee0e 7b02    	vmla.f64	d7, d14, d2
    2e70: ed1f 2b35    	vldr	d2, [pc, #-212]         @ 0x2da0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x208>
    2e74: ee2c 2b02    	vmul.f64	d2, d12, d2
    2e78: ee07 2b07    	vmla.f64	d2, d7, d7
    2e7c: eeb1 eb4c    	vneg.f64	d14, d12
    2e80: eeb5 2b40    	vcmp.f64	d2, #0
    2e84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e88: d428         	bmi	0x2edc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #0x50
    2e8a: ec53 0b17    	vmov	r0, r3, d7
    2e8e: eeb1 2bc2    	vsqrt.f64	d2, d2
    2e92: ec56 0b12    	vmov	r0, r6, d2
    2e96: 0fdb         	lsrs	r3, r3, #0x1f
    2e98: f363 76df    	bfi	r6, r3, #31, #1
    2e9c: ec46 0b12    	vmov	d2, r0, r6
    2ea0: ee37 2b02    	vadd.f64	d2, d7, d2
    2ea4: eebe 7b00    	vmov.f64	d7, #-5.000000e-01
    2ea8: ee22 7b07    	vmul.f64	d7, d2, d7
    2eac: ed1f 2b42    	vldr	d2, [pc, #-264]         @ 0x2da8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x210>
    2eb0: ee87 2b02    	vdiv.f64	d2, d7, d2
    2eb4: ec53 0b12    	vmov	r0, r3, d2
    2eb8: f64f 70ff    	movw	r0, #0xffff
    2ebc: f6c7 70ef    	movt	r0, #0x7fef
    2ec0: f023 4300    	bic	r3, r3, #0x80000000
    2ec4: 4283         	cmp	r3, r0
    2ec6: f341 815f    	ble.w	0x4188 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15f0> @ imm = #0x12be
    2eca: ee8e 2b07    	vdiv.f64	d2, d14, d7
    2ece: ec56 3b12    	vmov	r3, r6, d2
    2ed2: f026 4300    	bic	r3, r6, #0x80000000
    2ed6: 4283         	cmp	r3, r0
    2ed8: f341 81d2    	ble.w	0x4280 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x16e8> @ imm = #0x13a4
    2edc: ed9d 2b14    	vldr	d2, [sp, #80]
    2ee0: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
    2ee4: ee3d 2b02    	vadd.f64	d2, d13, d2
    2ee8: ee37 2b42    	vsub.f64	d2, d7, d2
    2eec: ee02 fb07    	vmla.f64	d15, d2, d7
    2ef0: ed1f 2b57    	vldr	d2, [pc, #-348]         @ 0x2d98 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x200>
    2ef4: ee0f bb02    	vmla.f64	d11, d15, d2
    2ef8: ed1f 7b53    	vldr	d7, [pc, #-332]         @ 0x2db0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x218>
    2efc: ee2b 2b0b    	vmul.f64	d2, d11, d11
    2f00: ee0c 2b07    	vmla.f64	d2, d12, d7
    2f04: eeb5 2b40    	vcmp.f64	d2, #0
    2f08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f0c: d428         	bmi	0x2f60 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #0x50
    2f0e: ec53 0b1b    	vmov	r0, r3, d11
    2f12: eeb1 2bc2    	vsqrt.f64	d2, d2
    2f16: ec56 0b12    	vmov	r0, r6, d2
    2f1a: 0fdb         	lsrs	r3, r3, #0x1f
    2f1c: eebe 7b00    	vmov.f64	d7, #-5.000000e-01
    2f20: f363 76df    	bfi	r6, r3, #31, #1
    2f24: ec46 0b12    	vmov	d2, r0, r6
    2f28: ee3b 2b02    	vadd.f64	d2, d11, d2
    2f2c: ee22 7b07    	vmul.f64	d7, d2, d7
    2f30: ed1f 2b5f    	vldr	d2, [pc, #-380]         @ 0x2db8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x220>
    2f34: ee87 2b02    	vdiv.f64	d2, d7, d2
    2f38: ec53 0b12    	vmov	r0, r3, d2
    2f3c: f64f 70ff    	movw	r0, #0xffff
    2f40: f6c7 70ef    	movt	r0, #0x7fef
    2f44: f023 4300    	bic	r3, r3, #0x80000000
    2f48: 4283         	cmp	r3, r0
    2f4a: f341 815d    	ble.w	0x4208 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1670> @ imm = #0x12ba
    2f4e: ee8e 2b07    	vdiv.f64	d2, d14, d7
    2f52: ec56 3b12    	vmov	r3, r6, d2
    2f56: f026 4300    	bic	r3, r6, #0x80000000
    2f5a: 4283         	cmp	r3, r0
    2f5c: f341 81d0    	ble.w	0x4300 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1768> @ imm = #0x13a0
    2f60: eef0 4a41    	vmov.f32	s9, s2
    2f64: edc1 4a06    	vstr	s9, [r1, #24]
    2f68: eef0 3a64    	vmov.f32	s7, s9
    2f6c: ed9f 1aa7    	vldr	s2, [pc, #668]          @ 0x320c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x674>
    2f70: eddf 4aa7    	vldr	s9, [pc, #668]          @ 0x3210 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x678>
    2f74: ee36 7a81    	vadd.f32	s14, s13, s2
    2f78: ee76 0aa4    	vadd.f32	s1, s13, s9
    2f7c: ed9f 2aa5    	vldr	s4, [pc, #660]          @ 0x3214 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x67c>
    2f80: eec7 5a02    	vdiv.f32	s11, s14, s4
    2f84: eec0 ba82    	vdiv.f32	s23, s1, s4
    2f88: eef4 5a6b    	vcmp.f32	s11, s23
    2f8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f90: f201 81ee    	bhi.w	0x4370 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x17d8> @ imm = #0x13dc
    2f94: ed92 7b14    	vldr	d7, [r2, #80]
    2f98: ed9f ba9f    	vldr	s22, [pc, #636]         @ 0x3218 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x680>
    2f9c: 2000         	movs	r0, #0x0
    2f9e: ee37 7b08    	vadd.f64	d7, d7, d8
    2fa2: 2300         	movs	r3, #0x0
    2fa4: eddf 2a9d    	vldr	s5, [pc, #628]          @ 0x321c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x684>
    2fa8: eeb7 fa00    	vmov.f32	s30, #1.000000e+00
    2fac: ed9f 8b9c    	vldr	d8, [pc, #624]          @ 0x3220 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x688>
    2fb0: eddf fa76    	vldr	s31, [pc, #472]         @ 0x318c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5f4>
    2fb4: ee37 7b0a    	vadd.f64	d7, d7, d10
    2fb8: ed8d 7b0e    	vstr	d7, [sp, #56]
    2fbc: ee09 7b08    	vmla.f64	d7, d9, d8
    2fc0: ed9f 8ae8    	vldr	s16, [pc, #928]         @ 0x3364 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7cc>
    2fc4: ee66 0a88    	vmul.f32	s1, s13, s16
    2fc8: eeb7 7bc7    	vcvt.f32.f64	s14, d7
    2fcc: edcd 0a0d    	vstr	s1, [sp, #52]
    2fd0: ee47 0a0b    	vmla.f32	s1, s14, s22
    2fd4: ed92 7b08    	vldr	d7, [r2, #32]
    2fd8: eef7 1bc7    	vcvt.f32.f64	s3, d7
    2fdc: edcd 1a0c    	vstr	s3, [sp, #48]
    2fe0: ee40 1a22    	vmla.f32	s3, s0, s5
    2fe4: eeff 2a00    	vmov.f32	s5, #-1.000000e+00
    2fe8: eef4 5a60    	vcmp.f32	s11, s1
    2fec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ff0: ee43 1a2f    	vmla.f32	s3, s6, s31
    2ff4: fe35 7aa0    	vselgt.f32	s14, s11, s1
    2ff8: eeb4 7a6b    	vcmp.f32	s14, s23
    2ffc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3000: eef4 0a65    	vcmp.f32	s1, s11
    3004: fe3b ca87    	vselgt.f32	s24, s23, s14
    3008: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    300c: eef4 0a6b    	vcmp.f32	s1, s23
    3010: eddf 0a5b    	vldr	s1, [pc, #364]          @ 0x3180 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    3014: bfc8         	it	gt
    3016: 2001         	movgt	r0, #0x1
    3018: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    301c: eef5 1a40    	vcmp.f32	s3, #0
    3020: eeb0 7ae1    	vabs.f32	s14, s3
    3024: eef0 1a60    	vmov.f32	s3, s1
    3028: eeb0 ea60    	vmov.f32	s28, s1
    302c: bf48         	it	mi
    302e: 2301         	movmi	r3, #0x1
    3030: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3034: bf48         	it	mi
    3036: eef0 1a62    	vmovmi.f32	s3, s5
    303a: eef0 2a60    	vmov.f32	s5, s1
    303e: eef0 aa60    	vmov.f32	s21, s1
    3042: fe7f 6a21    	vselgt.f32	s13, s30, s3
    3046: eddf 1acb    	vldr	s3, [pc, #812]          @ 0x3374 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7dc>
    304a: eeb4 7a61    	vcmp.f32	s14, s3
    304e: eef0 1a60    	vmov.f32	s3, s1
    3052: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3056: ea03 0300    	and.w	r3, r3, r0
    305a: f280 80c4    	bge.w	0x31e6 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x64e> @ imm = #0x188
    305e: eddf 1ac6    	vldr	s3, [pc, #792]          @ 0x3378 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e0>
    3062: eeb4 7a61    	vcmp.f32	s14, s3
    3066: eddf 2a46    	vldr	s5, [pc, #280]          @ 0x3180 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    306a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    306e: d913         	bls	0x3098 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x500> @ imm = #0x26
    3070: eddf 1ac2    	vldr	s3, [pc, #776]          @ 0x337c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e4>
    3074: eeb4 7a61    	vcmp.f32	s14, s3
    3078: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    307c: d91c         	bls	0x30b8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x520> @ imm = #0x38
    307e: eddf 1ac0    	vldr	s3, [pc, #768]          @ 0x3380 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e8>
    3082: ee77 1a21    	vadd.f32	s3, s14, s3
    3086: eddf 7abf    	vldr	s15, [pc, #764]         @ 0x3384 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7ec>
    308a: eeb0 7a08    	vmov.f32	s14, #3.000000e+00
    308e: e01b         	b	0x30c8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x530> @ imm = #0x36
    3090: 0d 61 4d 3a  	.word	0x3a4d610d
    3094: 00 bf 00 bf  	.word	0xbf00bf00
    3098: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    309c: eef0 1a62    	vmov.f32	s3, s5
    30a0: e016         	b	0x30d0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x538> @ imm = #0x2c
    30a2: bf00         	nop
    30a4: bf00         	nop
    30a6: bf00         	nop
    30a8: 8e 66 bb a2  	.word	0xa2bb668e
    30ac: 4b 3f c2 bf  	.word	0xbfc23f4b
    30b0: 2c 52 fa 24  	.word	0x24fa522c
    30b4: 26 25 73 3f  	.word	0x3f732526
    30b8: eddf 1ae8    	vldr	s3, [pc, #928]          @ 0x345c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c4>
    30bc: ee77 1a21    	vadd.f32	s3, s14, s3
    30c0: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    30c4: eddf 7ae6    	vldr	s15, [pc, #920]         @ 0x3460 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c8>
    30c8: ee01 7aa7    	vmla.f32	s14, s3, s15
    30cc: ee66 1aa7    	vmul.f32	s3, s13, s15
    30d0: eef2 6a0e    	vmov.f32	s13, #1.500000e+01
    30d4: eeb1 ea61    	vneg.f32	s28, s3
    30d8: ee36 7ac7    	vsub.f32	s14, s13, s14
    30dc: fec7 6a22    	vmaxnm.f32	s13, s14, s5
    30e0: eef5 6a40    	vcmp.f32	s13, #0
    30e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    30e8: d942         	bls	0x3170 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5d8> @ imm = #0x84
    30ea: eeb0 7acc    	vabs.f32	s14, s24
    30ee: eeb4 7a66    	vcmp.f32	s14, s13
    30f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    30f6: d94b         	bls	0x3190 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5f8> @ imm = #0x96
    30f8: ee86 7a87    	vdiv.f32	s14, s13, s14
    30fc: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    3100: ee67 1a07    	vmul.f32	s3, s14, s14
    3104: eeb0 aa62    	vmov.f32	s20, s5
    3108: ee61 1aa1    	vmul.f32	s3, s3, s3
    310c: ee61 1aa1    	vmul.f32	s3, s3, s3
    3110: ee61 1aa1    	vmul.f32	s3, s3, s3
    3114: ee71 7aa2    	vadd.f32	s15, s3, s5
    3118: eef4 7a62    	vcmp.f32	s15, s5
    311c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3120: d009         	beq	0x3136 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x59e> @ imm = #0x12
    3122: eeb0 aa67    	vmov.f32	s20, s15
    3126: eeb1 aaca    	vsqrt.f32	s20, s20
    312a: eeb1 aaca    	vsqrt.f32	s20, s20
    312e: eeb1 aaca    	vsqrt.f32	s20, s20
    3132: eeb1 aaca    	vsqrt.f32	s20, s20
    3136: eec2 2a8a    	vdiv.f32	s5, s5, s20
    313a: eeb4 ca4c    	vcmp.f32	s24, s24
    313e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3142: eec2 7aa7    	vdiv.f32	s15, s5, s15
    3146: f181 811f    	bvs.w	0x4388 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x17f0> @ imm = #0x123e
    314a: ee1c 0a10    	vmov	r0, s24
    314e: f04f 567e    	mov.w	r6, #0x3f800000
    3152: f366 001e    	bfi	r0, r6, #0, #31
    3156: ee0a 0a10    	vmov	s20, r0
    315a: ee6a 6a26    	vmul.f32	s13, s20, s13
    315e: ee6a aa27    	vmul.f32	s21, s20, s15
    3162: ee66 2aa2    	vmul.f32	s5, s13, s5
    3166: ee27 7a21    	vmul.f32	s14, s14, s3
    316a: ee67 1a27    	vmul.f32	s3, s14, s15
    316e: e03a         	b	0x31e6 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x64e> @ imm = #0x74
    3170: eef0 1a62    	vmov.f32	s3, s5
    3174: eef0 aa62    	vmov.f32	s21, s5
    3178: e035         	b	0x31e6 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x64e> @ imm = #0x6a
    317a: bf00         	nop
    317c: a8 cc 7f bf  	.word	0xbf7fcca8
    3180: 00 00 00 00  	.word	0x00000000
    3184: 2b 18 95 3b  	.word	0x3b95182b
    3188: 95 bf d6 33  	.word	0x33d6bf95
    318c: 34 8b b1 36  	.word	0x36b18b34
    3190: ee8c 7a26    	vdiv.f32	s14, s24, s13
    3194: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    3198: ee27 7a07    	vmul.f32	s14, s14, s14
    319c: eef0 7a62    	vmov.f32	s15, s5
    31a0: ee27 7a07    	vmul.f32	s14, s14, s14
    31a4: ee27 7a07    	vmul.f32	s14, s14, s14
    31a8: ee27 7a07    	vmul.f32	s14, s14, s14
    31ac: ee77 1a22    	vadd.f32	s3, s14, s5
    31b0: eef4 1a62    	vcmp.f32	s3, s5
    31b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    31b8: d009         	beq	0x31ce <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x636> @ imm = #0x12
    31ba: eef0 7a61    	vmov.f32	s15, s3
    31be: eef1 7ae7    	vsqrt.f32	s15, s15
    31c2: eef1 7ae7    	vsqrt.f32	s15, s15
    31c6: eef1 7ae7    	vsqrt.f32	s15, s15
    31ca: eef1 7ae7    	vsqrt.f32	s15, s15
    31ce: eec2 2aa7    	vdiv.f32	s5, s5, s15
    31d2: ee2c 7a07    	vmul.f32	s14, s24, s14
    31d6: eec2 1aa1    	vdiv.f32	s3, s5, s3
    31da: ee87 7a26    	vdiv.f32	s14, s14, s13
    31de: ee6c 2a22    	vmul.f32	s5, s24, s5
    31e2: ee67 aa21    	vmul.f32	s21, s14, s3
    31e6: ee70 ea62    	vsub.f32	s29, s0, s5
    31ea: 2b00         	cmp	r3, #0x0
    31ec: ed9f 7abd    	vldr	s14, [pc, #756]         @ 0x34e4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x94c>
    31f0: eddf 2abd    	vldr	s5, [pc, #756]          @ 0x34e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x950>
    31f4: ee1e 0a90    	vmov	r0, s29
    31f8: fe42 2a87    	vseleq.f32	s5, s5, s14
    31fc: f020 4000    	bic	r0, r0, #0x80000000
    3200: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3204: db10         	blt	0x3228 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x690> @ imm = #0x20
    3206: eddf 6ab9    	vldr	s13, [pc, #740]         @ 0x34ec <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x954>
    320a: e017         	b	0x323c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x6a4> @ imm = #0x2e
    320c: 00 24 74 cb  	.word	0xcb742400
    3210: 00 24 74 4b  	.word	0x4b742400
    3214: 00 a0 8c 47  	.word	0x478ca000
    3218: 95 3a ae 43  	.word	0x43ae3a95
    321c: a8 b9 92 b8  	.word	0xb892b9a8
    3220: a6 26 74 7c  	.word	0x7c7426a6
    3224: 9f 8f e0 bf  	.word	0xbfe08f9f
    3228: eeb2 7a0e    	vmov.f32	s14, #1.500000e+01
    322c: ed5f 6a2c    	vldr	s13, [pc, #-176]        @ 0x3180 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    3230: ee8e 7a87    	vdiv.f32	s14, s29, s14
    3234: eeb0 7ac7    	vabs.f32	s14, s14
    3238: fec7 6a26    	vmaxnm.f32	s13, s14, s13
    323c: ee36 1a01    	vadd.f32	s2, s12, s2
    3240: ee76 4a24    	vadd.f32	s9, s12, s9
    3244: ee81 7a02    	vdiv.f32	s14, s2, s4
    3248: eec4 7a82    	vdiv.f32	s15, s9, s4
    324c: eeb4 7a67    	vcmp.f32	s14, s15
    3250: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3254: f201 808c    	bhi.w	0x4370 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x17d8> @ imm = #0x1118
    3258: ed8d ca12    	vstr	s24, [sp, #72]
    325c: ee26 2a08    	vmul.f32	s4, s12, s16
    3260: ed1f cb6f    	vldr	d12, [pc, #-444]        @ 0x30a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x510>
    3264: ed8d 2a0a    	vstr	s4, [sp, #40]
    3268: ed9f 6ae1    	vldr	s12, [pc, #900]         @ 0x35f0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa58>
    326c: ed9d db18    	vldr	d13, [sp, #96]
    3270: 2000         	movs	r0, #0x0
    3272: ed8d 7a0b    	vstr	s14, [sp, #44]
    3276: ee09 db0c    	vmla.f64	d13, d9, d12
    327a: edcd 7a03    	vstr	s15, [sp, #12]
    327e: ed9f 9b72    	vldr	d9, [pc, #456]          @ 0x3448 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8b0>
    3282: ed9d cb16    	vldr	d12, [sp, #88]
    3286: ee0c db09    	vmla.f64	d13, d12, d9
    328a: eeb6 ca00    	vmov.f32	s24, #5.000000e-01
    328e: ed92 8b0a    	vldr	d8, [r2, #40]
    3292: 2200         	movs	r2, #0x0
    3294: eeb7 1bcd    	vcvt.f32.f64	s2, d13
    3298: eef7 4bc8    	vcvt.f32.f64	s9, d8
    329c: ee01 2a0b    	vmla.f32	s4, s2, s22
    32a0: edcd 4a09    	vstr	s9, [sp, #36]
    32a4: ee40 4a2f    	vmla.f32	s9, s0, s31
    32a8: ee43 4a06    	vmla.f32	s9, s6, s12
    32ac: eeb4 7a42    	vcmp.f32	s14, s4
    32b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    32b4: fe37 1a02    	vselgt.f32	s2, s14, s4
    32b8: eeb4 1a67    	vcmp.f32	s2, s15
    32bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    32c0: eeb4 2a47    	vcmp.f32	s4, s14
    32c4: eebf 7a00    	vmov.f32	s14, #-1.000000e+00
    32c8: fe37 da81    	vselgt.f32	s26, s15, s2
    32cc: ed9f 1ac9    	vldr	s2, [pc, #804]          @ 0x35f4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa5c>
    32d0: ee23 6a81    	vmul.f32	s12, s7, s2
    32d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    32d8: eeb4 2a67    	vcmp.f32	s4, s15
    32dc: ee36 1a24    	vadd.f32	s2, s12, s9
    32e0: bfc8         	it	gt
    32e2: 2001         	movgt	r0, #0x1
    32e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    32e8: eeb5 1a40    	vcmp.f32	s2, #0
    32ec: eef0 7ac1    	vabs.f32	s15, s2
    32f0: ed1f 1a5d    	vldr	s2, [pc, #-372]         @ 0x3180 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    32f4: eeb0 2a41    	vmov.f32	s4, s2
    32f8: eeb0 8a41    	vmov.f32	s16, s2
    32fc: bf48         	it	mi
    32fe: 2201         	movmi	r2, #0x1
    3300: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3304: bf48         	it	mi
    3306: eeb0 2a47    	vmovmi.f32	s4, s14
    330a: eeb0 9a41    	vmov.f32	s18, s2
    330e: eef0 8a41    	vmov.f32	s17, s2
    3312: fe7f 4a02    	vselgt.f32	s9, s30, s4
    3316: ed9f 2a17    	vldr	s4, [pc, #92]           @ 0x3374 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7dc>
    331a: eef4 7a42    	vcmp.f32	s15, s4
    331e: eeb0 2a41    	vmov.f32	s4, s2
    3322: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3326: ea02 0200    	and.w	r2, r2, r0
    332a: ed8d da14    	vstr	s26, [sp, #80]
    332e: f280 80c6    	bge.w	0x34be <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x926> @ imm = #0x18c
    3332: ed9f 2a11    	vldr	s4, [pc, #68]           @ 0x3378 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e0>
    3336: eef4 7a42    	vcmp.f32	s15, s4
    333a: ed1f 2a6f    	vldr	s4, [pc, #-444]         @ 0x3180 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    333e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3342: d911         	bls	0x3368 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7d0> @ imm = #0x22
    3344: ed9f 8a0d    	vldr	s16, [pc, #52]          @ 0x337c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e4>
    3348: eef4 7a48    	vcmp.f32	s15, s16
    334c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3350: d91a         	bls	0x3388 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7f0> @ imm = #0x34
    3352: ed9f 8a0b    	vldr	s16, [pc, #44]          @ 0x3380 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e8>
    3356: ee37 8a88    	vadd.f32	s16, s15, s16
    335a: ed9f 9a0a    	vldr	s18, [pc, #40]          @ 0x3384 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7ec>
    335e: eef0 7a08    	vmov.f32	s15, #3.000000e+00
    3362: e019         	b	0x3398 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x800> @ imm = #0x32
    3364: 64 9c 68 37  	.word	0x37689c64
    3368: eef7 7a08    	vmov.f32	s15, #1.500000e+00
    336c: eef0 4a42    	vmov.f32	s9, s4
    3370: e016         	b	0x33a0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x808> @ imm = #0x2c
    3372: bf00         	nop
    3374: 0a d7 23 3d  	.word	0x3d23d70a
    3378: 7c f2 b0 3a  	.word	0x3ab0f27c
    337c: a6 9b c4 3b  	.word	0x3bc49ba6
    3380: a6 9b c4 bb  	.word	0xbbc49ba6
    3384: 79 78 b0 43  	.word	0x43b07879
    3388: ed9f 8a34    	vldr	s16, [pc, #208]         @ 0x345c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c4>
    338c: ee37 8a88    	vadd.f32	s16, s15, s16
    3390: eef7 7a08    	vmov.f32	s15, #1.500000e+00
    3394: ed9f 9a32    	vldr	s18, [pc, #200]         @ 0x3460 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c8>
    3398: ee48 7a09    	vmla.f32	s15, s16, s18
    339c: ee64 4a89    	vmul.f32	s9, s9, s18
    33a0: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    33a4: ee78 7a67    	vsub.f32	s15, s16, s15
    33a8: eeb1 8a64    	vneg.f32	s16, s9
    33ac: fec7 7a82    	vmaxnm.f32	s15, s15, s4
    33b0: eef5 7a40    	vcmp.f32	s15, #0
    33b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33b8: d94a         	bls	0x3450 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8b8> @ imm = #0x94
    33ba: eeb0 2acd    	vabs.f32	s4, s26
    33be: eeb4 2a67    	vcmp.f32	s4, s15
    33c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33c6: d94f         	bls	0x3468 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8d0> @ imm = #0x9e
    33c8: eec7 4a82    	vdiv.f32	s9, s15, s4
    33cc: ee24 2aa4    	vmul.f32	s4, s9, s9
    33d0: ee22 2a02    	vmul.f32	s4, s4, s4
    33d4: ee22 2a02    	vmul.f32	s4, s4, s4
    33d8: ee22 9a02    	vmul.f32	s18, s4, s4
    33dc: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    33e0: ee39 aa02    	vadd.f32	s20, s18, s4
    33e4: eeb0 da42    	vmov.f32	s26, s4
    33e8: eeb4 aa42    	vcmp.f32	s20, s4
    33ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33f0: d009         	beq	0x3406 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x86e> @ imm = #0x12
    33f2: eeb0 da4a    	vmov.f32	s26, s20
    33f6: eeb1 dacd    	vsqrt.f32	s26, s26
    33fa: eeb1 dacd    	vsqrt.f32	s26, s26
    33fe: eeb1 dacd    	vsqrt.f32	s26, s26
    3402: eeb1 dacd    	vsqrt.f32	s26, s26
    3406: ee82 2a0d    	vdiv.f32	s4, s4, s26
    340a: ed9d 7a14    	vldr	s14, [sp, #80]
    340e: eeb4 7a47    	vcmp.f32	s14, s14
    3412: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3416: ee82 aa0a    	vdiv.f32	s20, s4, s20
    341a: f180 87bd    	bvs.w	0x4398 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1800> @ imm = #0xf7a
    341e: ee17 0a10    	vmov	r0, s14
    3422: f04f 537e    	mov.w	r3, #0x3f800000
    3426: f363 001e    	bfi	r0, r3, #0, #31
    342a: ee0d 0a10    	vmov	s26, r0
    342e: ee6d 7a27    	vmul.f32	s15, s26, s15
    3432: ee6d 8a0a    	vmul.f32	s17, s26, s20
    3436: ee27 2a82    	vmul.f32	s4, s15, s4
    343a: ee64 4a89    	vmul.f32	s9, s9, s18
    343e: ee24 9a8a    	vmul.f32	s18, s9, s20
    3442: e03c         	b	0x34be <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x926> @ imm = #0x78
    3444: bf00         	nop
    3446: bf00         	nop
    3448: a4 eb ea 42  	.word	0x42eaeba4
    344c: fb d4 cf bf  	.word	0xbfcfd4fb
    3450: eeb0 9a42    	vmov.f32	s18, s4
    3454: eef0 8a42    	vmov.f32	s17, s4
    3458: e031         	b	0x34be <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x926> @ imm = #0x62
    345a: bf00         	nop
    345c: 7c f2 b0 ba  	.word	0xbab0f27c
    3460: 53 4a a1 43  	.word	0x43a14a53
    3464: 00 bf 00 bf  	.word	0xbf00bf00
    3468: ee8d 2a27    	vdiv.f32	s4, s26, s15
    346c: eeb7 9a00    	vmov.f32	s18, #1.000000e+00
    3470: ee22 2a02    	vmul.f32	s4, s4, s4
    3474: eeb0 aa49    	vmov.f32	s20, s18
    3478: ee22 2a02    	vmul.f32	s4, s4, s4
    347c: ee22 2a02    	vmul.f32	s4, s4, s4
    3480: ee22 2a02    	vmul.f32	s4, s4, s4
    3484: ee72 4a09    	vadd.f32	s9, s4, s18
    3488: eef4 4a49    	vcmp.f32	s9, s18
    348c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3490: d009         	beq	0x34a6 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x90e> @ imm = #0x12
    3492: eeb0 aa64    	vmov.f32	s20, s9
    3496: eeb1 aaca    	vsqrt.f32	s20, s20
    349a: eeb1 aaca    	vsqrt.f32	s20, s20
    349e: eeb1 aaca    	vsqrt.f32	s20, s20
    34a2: eeb1 aaca    	vsqrt.f32	s20, s20
    34a6: ee89 aa0a    	vdiv.f32	s20, s18, s20
    34aa: ee2d 2a02    	vmul.f32	s4, s26, s4
    34ae: ee8a 9a24    	vdiv.f32	s18, s20, s9
    34b2: eec2 4a27    	vdiv.f32	s9, s4, s15
    34b6: ee2d 2a0a    	vmul.f32	s4, s26, s20
    34ba: ee64 8a89    	vmul.f32	s17, s9, s18
    34be: ee73 7a42    	vsub.f32	s15, s6, s4
    34c2: 2a00         	cmp	r2, #0x0
    34c4: ed9f 2a07    	vldr	s4, [pc, #28]           @ 0x34e4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x94c>
    34c8: ed9f 7a07    	vldr	s14, [pc, #28]          @ 0x34e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x950>
    34cc: ee17 0a90    	vmov	r0, s15
    34d0: fe07 aa02    	vseleq.f32	s20, s14, s4
    34d4: f020 4000    	bic	r0, r0, #0x80000000
    34d8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    34dc: db08         	blt	0x34f0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x958> @ imm = #0x10
    34de: eddf 9a03    	vldr	s19, [pc, #12]          @ 0x34ec <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x954>
    34e2: e01d         	b	0x3520 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x988> @ imm = #0x3a
    34e4: 95 3a ae c3  	.word	0xc3ae3a95
    34e8: 00 00 00 80  	.word	0x80000000
    34ec: 00 00 80 7f  	.word	0x7f800000
    34f0: eeb2 2a0e    	vmov.f32	s4, #1.500000e+01
    34f4: eef4 6a66    	vcmp.f32	s13, s13
    34f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    34fc: ee87 2a82    	vdiv.f32	s4, s15, s4
    3500: eeb0 2ac2    	vabs.f32	s4, s4
    3504: fe52 4a26    	vselvs.f32	s9, s4, s13
    3508: eeb4 2a42    	vcmp.f32	s4, s4
    350c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3510: fe14 2a82    	vselvs.f32	s4, s9, s4
    3514: eef4 4a42    	vcmp.f32	s9, s4
    3518: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    351c: fe74 9a82    	vselgt.f32	s19, s9, s4
    3520: ed9f 2a35    	vldr	s4, [pc, #212]          @ 0x35f8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa60>
    3524: ee2e ea2a    	vmul.f32	s28, s28, s21
    3528: ee03 5a82    	vmla.f32	s10, s7, s4
    352c: ed9f 2a33    	vldr	s4, [pc, #204]          @ 0x35fc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa64>
    3530: ee03 4a82    	vmla.f32	s8, s7, s4
    3534: ed9f 2a2f    	vldr	s4, [pc, #188]          @ 0x35f4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa5c>
    3538: ed9d db06    	vldr	d13, [sp, #24]
    353c: ee62 1aa1    	vmul.f32	s3, s5, s3
    3540: 200d         	movs	r0, #0xd
    3542: eef7 4bcd    	vcvt.f32.f64	s9, d13
    3546: edcd 4a06    	vstr	s9, [sp, #24]
    354a: ee43 4a02    	vmla.f32	s9, s6, s4
    354e: fe84 2a45    	vminnm.f32	s4, s8, s10
    3552: eeb4 4a45    	vcmp.f32	s8, s10
    3556: eeb8 5a00    	vmov.f32	s10, #-2.000000e+00
    355a: ee28 4a28    	vmul.f32	s8, s16, s17
    355e: ee3c 2a42    	vsub.f32	s4, s24, s4
    3562: ee34 6ac6    	vsub.f32	s12, s9, s12
    3566: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    356a: bf88         	it	hi
    356c: 200e         	movhi	r0, #0xe
    356e: eeb4 2a45    	vcmp.f32	s4, s10
    3572: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3576: e9cd 4501    	strd	r4, r5, [sp, #4]
    357a: d931         	bls	0x35e0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa48> @ imm = #0x62
    357c: eeb4 2a42    	vcmp.f32	s4, s4
    3580: ed9f 5a1f    	vldr	s10, [pc, #124]         @ 0x3600 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa68>
    3584: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3588: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    358c: eef0 6a45    	vmov.f32	s13, s10
    3590: fe55 4a02    	vselvs.f32	s9, s10, s4
    3594: eeb0 8a62    	vmov.f32	s16, s5
    3598: eef5 4a40    	vcmp.f32	s9, #0
    359c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    35a0: bfb8         	it	lt
    35a2: eef0 6a64    	vmovlt.f32	s13, s9
    35a6: eddf 4a17    	vldr	s9, [pc, #92]           @ 0x3604 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa6c>
    35aa: eeb5 2a40    	vcmp.f32	s4, #0
    35ae: ee06 8a8c    	vmla.f32	s16, s13, s24
    35b2: eddf 6a15    	vldr	s13, [pc, #84]          @ 0x3608 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa70>
    35b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    35ba: ee28 8a24    	vmul.f32	s16, s16, s9
    35be: fec8 fa26    	vmaxnm.f32	s31, s16, s13
    35c2: d539         	bpl	0x3638 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xaa0> @ imm = #0x72
    35c4: ee42 2a0c    	vmla.f32	s5, s4, s24
    35c8: eeb0 7a6b    	vmov.f32	s14, s23
    35cc: ee22 2aa4    	vmul.f32	s4, s5, s9
    35d0: eeb4 2a66    	vcmp.f32	s4, s13
    35d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    35d8: bfc8         	it	gt
    35da: ed9f 5a0c    	vldrgt	s10, [pc, #48]          @ 0x360c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa74>
    35de: e02d         	b	0x363c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xaa4> @ imm = #0x5a
    35e0: eeb0 7a6b    	vmov.f32	s14, s23
    35e4: ed9f 5a06    	vldr	s10, [pc, #24]          @ 0x3600 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa68>
    35e8: eddf fa07    	vldr	s31, [pc, #28]          @ 0x3608 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa70>
    35ec: e026         	b	0x363c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xaa4> @ imm = #0x4c
    35ee: bf00         	nop
    35f0: 75 5e 1f b9  	.word	0xb91f5e75
    35f4: d2 20 02 39  	.word	0x390220d2
    35f8: a8 cc 7f bf  	.word	0xbf7fcca8
    35fc: 0d 61 4d 3a  	.word	0x3a4d610d
    3600: 00 00 00 00  	.word	0x00000000
    3604: 2b 18 95 3b  	.word	0x3b95182b
    3608: 95 bf d6 33  	.word	0x33d6bf95
    360c: 2b 18 15 3b  	.word	0x3b15182b
    3610: 34 8b b1 b6  	.word	0xb6b18b34
    3614: 75 5e 1f 39  	.word	0x391f5e75
    3618: d2 20 02 b9  	.word	0xb90220d2
    361c: a8 b9 92 38  	.word	0x3892b9a8
    3620: 0a d7 23 3c  	.word	0x3c23d70a
    3624: fc 7c 04 bf  	.word	0xbf047cfc
    3628: 5d fa 11 be  	.word	0xbe11fa5d
    362c: da a7 7e be  	.word	0xbe7ea7da
    3630: bd 37 06 36  	.word	0x360637bd
    3634: 08 e5 3c 1e  	.word	0x1e3ce508
    3638: eeb0 7a6b    	vmov.f32	s14, s23
    363c: f24b 32d0    	movw	r2, #0xb3d0
    3640: ee13 6aaf    	vnmls.f32	s12, s7, s31
    3644: f2c0 0200    	movt	r2, #0x0
    3648: ee63 2a85    	vmul.f32	s5, s7, s10
    364c: eb02 1080    	add.w	r0, r2, r0, lsl #6
    3650: ed5f aa18    	vldr	s21, [pc, #-96]         @ 0x35f4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa5c>
    3654: ee2a 9a09    	vmul.f32	s18, s20, s18
    3658: f8d7 e008    	ldr.w	lr, [r7, #0x8]
    365c: ed90 8b0c    	vldr	d8, [r0, #48]
    3660: ee21 aaa0    	vmul.f32	s20, s3, s1
    3664: ed1f 5a5f    	vldr	s10, [pc, #-380]        @ 0x34ec <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x954>
    3668: eeb7 2bc8    	vcvt.f32.f64	s4, d8
    366c: ed90 db08    	vldr	d13, [r0, #32]
    3670: ee42 aac2    	vmls.f32	s21, s5, s4
    3674: ed1f 2a1a    	vldr	s4, [pc, #-104]         @ 0x3610 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa78>
    3678: ee24 8a02    	vmul.f32	s16, s8, s4
    367c: ed1f 2a1b    	vldr	s4, [pc, #-108]         @ 0x3614 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa7c>
    3680: ed90 cb0a    	vldr	d12, [r0, #40]
    3684: ee16 0a10    	vmov	r0, s12
    3688: ee64 6a02    	vmul.f32	s13, s8, s4
    368c: ed1f 2a1e    	vldr	s4, [pc, #-120]         @ 0x3618 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa80>
    3690: ee64 8a02    	vmul.f32	s17, s8, s4
    3694: ed1f 2a1f    	vldr	s4, [pc, #-124]         @ 0x361c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa84>
    3698: eeb7 4bcd    	vcvt.f32.f64	s8, d13
    369c: f020 4000    	bic	r0, r0, #0x80000000
    36a0: ee6e ba02    	vmul.f32	s23, s28, s4
    36a4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    36a8: eef7 0bcc    	vcvt.f32.f64	s1, d12
    36ac: da17         	bge	0x36de <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xb46> @ imm = #0x2e
    36ae: ed1f 5a24    	vldr	s10, [pc, #-144]        @ 0x3620 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa88>
    36b2: eef4 9a69    	vcmp.f32	s19, s19
    36b6: ee86 5a05    	vdiv.f32	s10, s12, s10
    36ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    36be: eeb0 5ac5    	vabs.f32	s10, s10
    36c2: fe55 4a29    	vselvs.f32	s9, s10, s19
    36c6: eeb4 5a45    	vcmp.f32	s10, s10
    36ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    36ce: fe14 5a85    	vselvs.f32	s10, s9, s10
    36d2: eef4 4a45    	vcmp.f32	s9, s10
    36d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    36da: fe34 5a85    	vselgt.f32	s10, s9, s10
    36de: ed5f 4a2f    	vldr	s9, [pc, #-188]         @ 0x3624 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa8c>
    36e2: ee49 8a01    	vmla.f32	s17, s18, s2
    36e6: ee41 baa4    	vmla.f32	s23, s3, s9
    36ea: ed5f 4a81    	vldr	s9, [pc, #-516]         @ 0x34e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x950>
    36ee: ed1f 1a32    	vldr	s2, [pc, #-200]         @ 0x3628 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa90>
    36f2: eef0 1a4a    	vmov.f32	s3, s20
    36f6: ee4e 1a24    	vmla.f32	s3, s28, s9
    36fa: ed5f 4a3b    	vldr	s9, [pc, #-236]         @ 0x3610 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa78>
    36fe: ee09 8a01    	vmla.f32	s16, s18, s2
    3702: ed1f 1a36    	vldr	s2, [pc, #-216]         @ 0x362c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa94>
    3706: ee0e aa24    	vmla.f32	s20, s28, s9
    370a: f10d 0878    	add.w	r8, sp, #0x78
    370e: ee49 6a01    	vmla.f32	s13, s18, s2
    3712: f108 0a0c    	add.w	r10, r8, #0xc
    3716: ee24 9a62    	vnmul.f32	s18, s8, s5
    371a: f10d 096c    	add.w	r9, sp, #0x6c
    371e: ee62 0aa0    	vmul.f32	s1, s5, s1
    3722: f04f 0b00    	mov.w	r11, #0x0
    3726: ee7f 9aaa    	vadd.f32	s19, s31, s21
    372a: ed1f 2a3f    	vldr	s4, [pc, #-252]         @ 0x3630 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa98>
    372e: eeb1 1a6e    	vneg.f32	s2, s29
    3732: ed5f ea40    	vldr	s29, [pc, #-256]        @ 0x3634 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa9c>
    3736: eeb1 ea67    	vneg.f32	s28, s15
    373a: ed5f 7a4f    	vldr	s15, [pc, #-316]        @ 0x3600 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa68>
    373e: eef1 fa46    	vneg.f32	s31, s12
    3742: ed9f 6afa    	vldr	s12, [pc, #1000]        @ 0x3b2c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xf94>
    3746: e89e 000d    	ldm.w	lr, {r0, r2, r3}
    374a: 3201         	adds	r2, #0x1
    374c: 9216         	str	r2, [sp, #0x58]
    374e: 2200         	movs	r2, #0x0
    3750: 1c46         	adds	r6, r0, #0x1
    3752: f8ce 6000    	str.w	r6, [lr]
    3756: 3301         	adds	r3, #0x1
    3758: 9305         	str	r3, [sp, #0x14]
    375a: 3002         	adds	r0, #0x2
    375c: 9004         	str	r0, [sp, #0x10]
    375e: ee3b 4a8f    	vadd.f32	s8, s23, s30
    3762: 2000         	movs	r0, #0x0
    3764: eef0 2ac8    	vabs.f32	s5, s16
    3768: ed8d ea1c    	vstr	s28, [sp, #112]
    376c: ed8d 1a1b    	vstr	s2, [sp, #108]
    3770: ee76 6a8f    	vadd.f32	s13, s13, s30
    3774: eef0 4ac4    	vabs.f32	s9, s8
    3778: edcd fa1d    	vstr	s31, [sp, #116]
    377c: ed8d 4a1e    	vstr	s8, [sp, #120]
    3780: ed8d aa1f    	vstr	s20, [sp, #124]
    3784: eef4 2a64    	vcmp.f32	s5, s9
    3788: edcd 1a20    	vstr	s3, [sp, #128]
    378c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3790: eef0 4ac9    	vabs.f32	s9, s18
    3794: fe78 2a04    	vselgt.f32	s5, s16, s8
    3798: bfc8         	it	gt
    379a: 2001         	movgt	r0, #0x1
    379c: ed8d 8a21    	vstr	s16, [sp, #132]
    37a0: eef0 2ae2    	vabs.f32	s5, s5
    37a4: eef4 4a62    	vcmp.f32	s9, s5
    37a8: ed5f 2a65    	vldr	s5, [pc, #-404]         @ 0x3618 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa80>
    37ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    37b0: bfc8         	it	gt
    37b2: 2002         	movgt	r0, #0x2
    37b4: ee72 0ae0    	vsub.f32	s1, s5, s1
    37b8: edcd 6a22    	vstr	s13, [sp, #136]
    37bc: edcd 8a23    	vstr	s17, [sp, #140]
    37c0: eb00 0340    	add.w	r3, r0, r0, lsl #1
    37c4: ed8d 9a24    	vstr	s18, [sp, #144]
    37c8: edcd 0a25    	vstr	s1, [sp, #148]
    37cc: eb08 0683    	add.w	r6, r8, r3, lsl #2
    37d0: edcd 9a26    	vstr	s19, [sp, #152]
    37d4: f858 3023    	ldr.w	r3, [r8, r3, lsl #2]
    37d8: e9d6 5401    	ldrd	r5, r4, [r6, #4]
    37dc: e9cd 351e    	strd	r3, r5, [sp, #120]
    37e0: 9420         	str	r4, [sp, #0x80]
    37e2: 9b16         	ldr	r3, [sp, #0x58]
    37e4: ed86 4a00    	vstr	s8, [r6]
    37e8: 445b         	add	r3, r11
    37ea: f8ce 3004    	str.w	r3, [lr, #0x4]
    37ee: eddd 0a1e    	vldr	s1, [sp, #120]
    37f2: ed86 aa01    	vstr	s20, [r6, #4]
    37f6: ee10 3a90    	vmov	r3, s1
    37fa: edc6 1a02    	vstr	s3, [r6, #8]
    37fe: eb09 0680    	add.w	r6, r9, r0, lsl #2
    3802: f859 0020    	ldr.w	r0, [r9, r0, lsl #2]
    3806: 901b         	str	r0, [sp, #0x6c]
    3808: f023 4300    	bic	r3, r3, #0x80000000
    380c: ed86 1a00    	vstr	s2, [r6]
    3810: f1b3 4fff    	cmp.w	r3, #0x7f800000
    3814: f280 84a8    	bge.w	0x4168 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x950
    3818: eeb0 1ae0    	vabs.f32	s2, s1
    381c: eeb4 1a6e    	vcmp.f32	s2, s29
    3820: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3824: f100 84a0    	bmi.w	0x4168 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x940
    3828: ed9d 1a24    	vldr	s2, [sp, #144]
    382c: ed9d 4a21    	vldr	s8, [sp, #132]
    3830: ee81 1a20    	vdiv.f32	s2, s2, s1
    3834: eddd 1a1f    	vldr	s3, [sp, #124]
    3838: ee84 4a20    	vdiv.f32	s8, s8, s1
    383c: eddd 2a25    	vldr	s5, [sp, #148]
    3840: eddd 4a22    	vldr	s9, [sp, #136]
    3844: ed9d 9a1b    	vldr	s18, [sp, #108]
    3848: ee41 2a61    	vmls.f32	s5, s2, s3
    384c: eddd 6a20    	vldr	s13, [sp, #128]
    3850: ee44 4a61    	vmls.f32	s9, s8, s3
    3854: ed9d 8a23    	vldr	s16, [sp, #140]
    3858: ee04 8a66    	vmls.f32	s16, s8, s13
    385c: ed9d aa1c    	vldr	s20, [sp, #112]
    3860: ee04 aa49    	vmls.f32	s20, s8, s18
    3864: ed9d da26    	vldr	s26, [sp, #152]
    3868: ee01 da66    	vmls.f32	s26, s2, s13
    386c: 4650         	mov	r0, r10
    386e: edcd 4a22    	vstr	s9, [sp, #136]
    3872: eeb0 4ae2    	vabs.f32	s8, s5
    3876: ed8d 8a23    	vstr	s16, [sp, #140]
    387a: eeb0 cae4    	vabs.f32	s24, s9
    387e: eddd 4a1d    	vldr	s9, [sp, #116]
    3882: ed8d aa1c    	vstr	s20, [sp, #112]
    3886: ee41 4a49    	vmls.f32	s9, s2, s18
    388a: edcd 2a25    	vstr	s5, [sp, #148]
    388e: eeb4 4a4c    	vcmp.f32	s8, s24
    3892: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3896: bfc8         	it	gt
    3898: f108 0018    	addgt.w	r0, r8, #0x18
    389c: ed8d da26    	vstr	s26, [sp, #152]
    38a0: f8da 3000    	ldr.w	r3, [r10]
    38a4: e9d0 4600    	ldrd	r4, r6, [r0]
    38a8: 6885         	ldr	r5, [r0, #0x8]
    38aa: f8ca 4000    	str.w	r4, [r10]
    38ae: f8da 4004    	ldr.w	r4, [r10, #0x4]
    38b2: f8ca 6004    	str.w	r6, [r10, #0x4]
    38b6: f8da 6008    	ldr.w	r6, [r10, #0x8]
    38ba: f8ca 5008    	str.w	r5, [r10, #0x8]
    38be: e9c0 4601    	strd	r4, r6, [r0, #4]
    38c2: ed9d 4a22    	vldr	s8, [sp, #136]
    38c6: f04f 0604    	mov.w	r6, #0x4
    38ca: ee14 5a10    	vmov	r5, s8
    38ce: bfc8         	it	gt
    38d0: 2608         	movgt	r6, #0x8
    38d2: edcd 4a1d    	vstr	s9, [sp, #116]
    38d6: 6003         	str	r3, [r0]
    38d8: f859 0006    	ldr.w	r0, [r9, r6]
    38dc: eb09 0306    	add.w	r3, r9, r6
    38e0: f025 4600    	bic	r6, r5, #0x80000000
    38e4: f1b6 4fff    	cmp.w	r6, #0x7f800000
    38e8: 901c         	str	r0, [sp, #0x70]
    38ea: ed83 aa00    	vstr	s20, [r3]
    38ee: f280 843b    	bge.w	0x4168 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x876
    38f2: eeb0 1ac4    	vabs.f32	s2, s8
    38f6: eeb4 1a6e    	vcmp.f32	s2, s29
    38fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    38fe: f100 8433    	bmi.w	0x4168 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x866
    3902: ed9d 1a25    	vldr	s2, [sp, #148]
    3906: eddd 4a26    	vldr	s9, [sp, #152]
    390a: ee81 1a04    	vdiv.f32	s2, s2, s8
    390e: eddd 2a23    	vldr	s5, [sp, #140]
    3912: ee41 4a62    	vmls.f32	s9, s2, s5
    3916: ee14 0a90    	vmov	r0, s9
    391a: f020 4000    	bic	r0, r0, #0x80000000
    391e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3922: f280 8421    	bge.w	0x4168 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x842
    3926: eeb0 8ae4    	vabs.f32	s16, s9
    392a: eeb4 8a6e    	vcmp.f32	s16, s29
    392e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3932: f100 8419    	bmi.w	0x4168 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x832
    3936: ed9d 8a1c    	vldr	s16, [sp, #112]
    393a: ed9d aa1d    	vldr	s20, [sp, #116]
    393e: ee01 aa48    	vmls.f32	s20, s2, s16
    3942: ee8a 1a24    	vdiv.f32	s2, s20, s9
    3946: ee02 8ac1    	vmls.f32	s16, s5, s2
    394a: ee88 8a04    	vdiv.f32	s16, s16, s8
    394e: ee01 9ac8    	vmls.f32	s18, s3, s16
    3952: ee06 9ac1    	vmls.f32	s18, s13, s2
    3956: eec9 0a20    	vdiv.f32	s1, s18, s1
    395a: ee10 0a90    	vmov	r0, s1
    395e: f020 4000    	bic	r0, r0, #0x80000000
    3962: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3966: bfbe         	ittt	lt
    3968: ee18 0a10    	vmovlt	r0, s16
    396c: f020 4000    	biclt	r0, r0, #0x80000000
    3970: f1b0 4fff    	cmplt.w	r0, #0x7f800000
    3974: f280 83f8    	bge.w	0x4168 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x7f0
    3978: ee11 0a10    	vmov	r0, s2
    397c: f020 4000    	bic	r0, r0, #0x80000000
    3980: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3984: f280 83f0    	bge.w	0x4168 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x7e0
    3988: eeb0 4ac0    	vabs.f32	s8, s0
    398c: eef0 1ae0    	vabs.f32	s3, s1
    3990: eeb4 4a44    	vcmp.f32	s8, s8
    3994: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3998: fe1f 4a04    	vselvs.f32	s8, s30, s8
    399c: eeb4 4a4f    	vcmp.f32	s8, s30
    39a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39a4: fe34 4a0f    	vselgt.f32	s8, s8, s30
    39a8: ee24 4a02    	vmul.f32	s8, s8, s4
    39ac: fe84 4a46    	vminnm.f32	s8, s8, s12
    39b0: eef4 1a44    	vcmp.f32	s3, s8
    39b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39b8: d83a         	bhi	0x3a30 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xe98> @ imm = #0x74
    39ba: eeb0 4ac3    	vabs.f32	s8, s6
    39be: eef0 1ac8    	vabs.f32	s3, s16
    39c2: eeb4 4a44    	vcmp.f32	s8, s8
    39c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39ca: fe1f 4a04    	vselvs.f32	s8, s30, s8
    39ce: eeb4 4a4f    	vcmp.f32	s8, s30
    39d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39d6: fe34 4a0f    	vselgt.f32	s8, s8, s30
    39da: ee24 4a02    	vmul.f32	s8, s8, s4
    39de: fe84 4a46    	vminnm.f32	s8, s8, s12
    39e2: eef4 1a44    	vcmp.f32	s3, s8
    39e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39ea: d821         	bhi	0x3a30 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xe98> @ imm = #0x42
    39ec: eeb0 4ae3    	vabs.f32	s8, s7
    39f0: eef0 1ac1    	vabs.f32	s3, s2
    39f4: eeb4 4a44    	vcmp.f32	s8, s8
    39f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39fc: fe1f 4a04    	vselvs.f32	s8, s30, s8
    3a00: eeb4 4a4f    	vcmp.f32	s8, s30
    3a04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a08: fe34 4a0f    	vselgt.f32	s8, s8, s30
    3a0c: ee24 4a02    	vmul.f32	s8, s8, s4
    3a10: fe84 4a46    	vminnm.f32	s8, s8, s12
    3a14: eef4 1a44    	vcmp.f32	s3, s8
    3a18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a1c: d808         	bhi	0x3a30 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xe98> @ imm = #0x10
    3a1e: ed9f 4adf    	vldr	s8, [pc, #892]          @ 0x3d9c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1204>
    3a22: eeb4 5a44    	vcmp.f32	s10, s8
    3a26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a2a: f240 8383    	bls.w	0x4134 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x159c> @ imm = #0x706
    3a2e: bf00         	nop
    3a30: ee30 0a80    	vadd.f32	s0, s1, s0
    3a34: ed9d 5a0d    	vldr	s10, [sp, #52]
    3a38: ed9f ab71    	vldr	d10, [pc, #452]         @ 0x3c00 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1068>
    3a3c: eddf 1ad8    	vldr	s3, [pc, #864]          @ 0x3da0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1208>
    3a40: ee38 3a03    	vadd.f32	s6, s16, s6
    3a44: eeb7 9ac0    	vcvt.f64.f32	d9, s0
    3a48: eddd 0a0c    	vldr	s1, [sp, #48]
    3a4c: ed9d 4b0e    	vldr	d4, [sp, #56]
    3a50: ee40 0a21    	vmla.f32	s1, s0, s3
    3a54: ed9f 8ad3    	vldr	s16, [pc, #844]         @ 0x3da4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x120c>
    3a58: ee09 4b0a    	vmla.f64	d4, d9, d10
    3a5c: 2300         	movs	r3, #0x0
    3a5e: ee71 3a23    	vadd.f32	s7, s2, s7
    3a62: f04f 0c00    	mov.w	r12, #0x0
    3a66: ee43 0a08    	vmla.f32	s1, s6, s16
    3a6a: eeb0 1a67    	vmov.f32	s2, s15
    3a6e: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    3a72: eef0 6a67    	vmov.f32	s13, s15
    3a76: eef0 1a67    	vmov.f32	s3, s15
    3a7a: ee04 5a0b    	vmla.f32	s10, s8, s22
    3a7e: eef4 5a45    	vcmp.f32	s11, s10
    3a82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a86: fe35 4a85    	vselgt.f32	s8, s11, s10
    3a8a: eeb4 4a47    	vcmp.f32	s8, s14
    3a8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a92: eeb4 5a65    	vcmp.f32	s10, s11
    3a96: fe37 aa04    	vselgt.f32	s20, s14, s8
    3a9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a9e: eeb4 5a47    	vcmp.f32	s10, s14
    3aa2: eebf 5a00    	vmov.f32	s10, #-1.000000e+00
    3aa6: bfc8         	it	gt
    3aa8: 2301         	movgt	r3, #0x1
    3aaa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3aae: 9805         	ldr	r0, [sp, #0x14]
    3ab0: eef5 0a40    	vcmp.f32	s1, #0
    3ab4: eeb0 4ae0    	vabs.f32	s8, s1
    3ab8: 4458         	add	r0, r11
    3aba: f8ce 0008    	str.w	r0, [lr, #0x8]
    3abe: eef0 0a67    	vmov.f32	s1, s15
    3ac2: bf48         	it	mi
    3ac4: f04f 0c01    	movmi.w	r12, #0x1
    3ac8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3acc: ed81 0a04    	vstr	s0, [r1, #16]
    3ad0: bf48         	it	mi
    3ad2: eeb0 1a45    	vmovmi.f32	s2, s10
    3ad6: ed9f 5ae8    	vldr	s10, [pc, #928]         @ 0x3e78 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e0>
    3ada: ed81 3a05    	vstr	s6, [r1, #20]
    3ade: fe3f 1a01    	vselgt.f32	s2, s30, s2
    3ae2: edc1 3a06    	vstr	s7, [r1, #24]
    3ae6: eeb4 4a45    	vcmp.f32	s8, s10
    3aea: eeb0 5a67    	vmov.f32	s10, s15
    3aee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3af2: f280 80b9    	bge.w	0x3c68 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10d0> @ imm = #0x172
    3af6: ed9f 5ae1    	vldr	s10, [pc, #900]         @ 0x3e7c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e4>
    3afa: eef0 0a67    	vmov.f32	s1, s15
    3afe: eeb4 4a45    	vcmp.f32	s8, s10
    3b02: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    3b06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b0a: d91d         	bls	0x3b48 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xfb0> @ imm = #0x3a
    3b0c: ed9f 5adc    	vldr	s10, [pc, #880]         @ 0x3e80 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e8>
    3b10: eeb4 4a45    	vcmp.f32	s8, s10
    3b14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b18: d90a         	bls	0x3b30 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xf98> @ imm = #0x14
    3b1a: ed9f 5ada    	vldr	s10, [pc, #872]         @ 0x3e84 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12ec>
    3b1e: ee34 4a05    	vadd.f32	s8, s8, s10
    3b22: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    3b26: eddf 0ad8    	vldr	s1, [pc, #864]          @ 0x3e88 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f0>
    3b2a: e009         	b	0x3b40 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xfa8> @ imm = #0x12
    3b2c: ac c5 a7 37  	.word	0x37a7c5ac
    3b30: ed9f 5ad6    	vldr	s10, [pc, #856]         @ 0x3e8c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f4>
    3b34: ee34 4a05    	vadd.f32	s8, s8, s10
    3b38: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    3b3c: eddf 0ad4    	vldr	s1, [pc, #848]          @ 0x3e90 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f8>
    3b40: ee04 5a20    	vmla.f32	s10, s8, s1
    3b44: ee61 0a20    	vmul.f32	s1, s2, s1
    3b48: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    3b4c: ee31 1a45    	vsub.f32	s2, s2, s10
    3b50: eeb1 5a60    	vneg.f32	s10, s1
    3b54: fe81 1a27    	vmaxnm.f32	s2, s2, s15
    3b58: eeb5 1a40    	vcmp.f32	s2, #0
    3b5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b60: d946         	bls	0x3bf0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1058> @ imm = #0x8c
    3b62: eeb0 4aca    	vabs.f32	s8, s20
    3b66: eeb4 4a41    	vcmp.f32	s8, s2
    3b6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b6e: d94f         	bls	0x3c10 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1078> @ imm = #0x9e
    3b70: ee81 4a04    	vdiv.f32	s8, s2, s8
    3b74: eef0 1a4f    	vmov.f32	s3, s30
    3b78: ee64 0a04    	vmul.f32	s1, s8, s8
    3b7c: ee60 0aa0    	vmul.f32	s1, s1, s1
    3b80: ee60 0aa0    	vmul.f32	s1, s1, s1
    3b84: ee60 2aa0    	vmul.f32	s5, s1, s1
    3b88: ee72 0a8f    	vadd.f32	s1, s5, s30
    3b8c: eef4 0a4f    	vcmp.f32	s1, s30
    3b90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b94: d009         	beq	0x3baa <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1012> @ imm = #0x12
    3b96: eef0 1a60    	vmov.f32	s3, s1
    3b9a: eef1 1ae1    	vsqrt.f32	s3, s3
    3b9e: eef1 1ae1    	vsqrt.f32	s3, s3
    3ba2: eef1 1ae1    	vsqrt.f32	s3, s3
    3ba6: eef1 1ae1    	vsqrt.f32	s3, s3
    3baa: eecf 6a21    	vdiv.f32	s13, s30, s3
    3bae: eeb4 aa4a    	vcmp.f32	s20, s20
    3bb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3bb6: eec6 4aa0    	vdiv.f32	s9, s13, s1
    3bba: eddf 0ab6    	vldr	s1, [pc, #728]          @ 0x3e94 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12fc>
    3bbe: eef0 1a60    	vmov.f32	s3, s1
    3bc2: bf7f         	itttt	vc
    3bc4: ee1a 0a10    	vmovvc	r0, s20
    3bc8: f04f 547e    	movvc.w	r4, #0x3f800000
    3bcc: f364 001e    	bfivc	r0, r4, #0, #31
    3bd0: ee01 0a90    	vmovvc	s3, r0
    3bd4: bf7e         	ittt	vc
    3bd6: ee21 1a81    	vmulvc.f32	s2, s3, s2
    3bda: ee61 0a26    	vmulvc.f32	s1, s2, s13
    3bde: ee61 1aa4    	vmulvc.f32	s3, s3, s9
    3be2: ee24 1a22    	vmul.f32	s2, s8, s5
    3be6: ee61 6a24    	vmul.f32	s13, s2, s9
    3bea: e03d         	b	0x3c68 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10d0> @ imm = #0x7a
    3bec: bf00         	nop
    3bee: bf00         	nop
    3bf0: eef0 0a67    	vmov.f32	s1, s15
    3bf4: eef0 6a67    	vmov.f32	s13, s15
    3bf8: eef0 1a67    	vmov.f32	s3, s15
    3bfc: e034         	b	0x3c68 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10d0> @ imm = #0x68
    3bfe: bf00         	nop
    3c00: a6 26 74 7c  	.word	0x7c7426a6
    3c04: 9f 8f e0 bf  	.word	0xbfe08f9f
    3c08: 8e 66 bb a2  	.word	0xa2bb668e
    3c0c: 4b 3f c2 bf  	.word	0xbfc23f4b
    3c10: ee8a 4a01    	vdiv.f32	s8, s20, s2
    3c14: eef0 1a4f    	vmov.f32	s3, s30
    3c18: ee24 4a04    	vmul.f32	s8, s8, s8
    3c1c: ee24 4a04    	vmul.f32	s8, s8, s8
    3c20: ee24 4a04    	vmul.f32	s8, s8, s8
    3c24: ee24 4a04    	vmul.f32	s8, s8, s8
    3c28: ee74 0a0f    	vadd.f32	s1, s8, s30
    3c2c: eef4 0a4f    	vcmp.f32	s1, s30
    3c30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c34: d009         	beq	0x3c4a <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10b2> @ imm = #0x12
    3c36: eef0 1a60    	vmov.f32	s3, s1
    3c3a: eef1 1ae1    	vsqrt.f32	s3, s3
    3c3e: eef1 1ae1    	vsqrt.f32	s3, s3
    3c42: eef1 1ae1    	vsqrt.f32	s3, s3
    3c46: eef1 1ae1    	vsqrt.f32	s3, s3
    3c4a: eecf 1a21    	vdiv.f32	s3, s30, s3
    3c4e: ee2a 4a04    	vmul.f32	s8, s20, s8
    3c52: eec1 6aa0    	vdiv.f32	s13, s3, s1
    3c56: ee84 1a01    	vdiv.f32	s2, s8, s2
    3c5a: ee6a 0a21    	vmul.f32	s1, s20, s3
    3c5e: ee61 1a26    	vmul.f32	s3, s2, s13
    3c62: bf00         	nop
    3c64: bf00         	nop
    3c66: bf00         	nop
    3c68: ee30 1a60    	vsub.f32	s2, s0, s1
    3c6c: ea13 030c    	ands.w	r3, r3, r12
    3c70: ed9f 4ae4    	vldr	s8, [pc, #912]          @ 0x4004 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x146c>
    3c74: ed8d aa12    	vstr	s20, [sp, #72]
    3c78: eddf 0ae3    	vldr	s1, [pc, #908]          @ 0x4008 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1470>
    3c7c: ee11 0a10    	vmov	r0, s2
    3c80: ed9f aae2    	vldr	s20, [pc, #904]         @ 0x400c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1474>
    3c84: fe40 8a84    	vseleq.f32	s17, s1, s8
    3c88: f020 4000    	bic	r0, r0, #0x80000000
    3c8c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3c90: da07         	bge	0x3ca2 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x110a> @ imm = #0xe
    3c92: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    3c96: ee81 4a04    	vdiv.f32	s8, s2, s8
    3c9a: eeb0 4ac4    	vabs.f32	s8, s8
    3c9e: fe84 aa27    	vmaxnm.f32	s20, s8, s15
    3ca2: ed1f db27    	vldr	d13, [pc, #-156]        @ 0x3c08 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1070>
    3ca6: eeb7 cac3    	vcvt.f64.f32	d12, s6
    3caa: eddd 0a0a    	vldr	s1, [sp, #40]
    3cae: ed9d 4b18    	vldr	d4, [sp, #96]
    3cb2: eddd 2a09    	vldr	s5, [sp, #36]
    3cb6: ee40 2a08    	vmla.f32	s5, s0, s16
    3cba: ee09 4b0d    	vmla.f64	d4, d9, d13
    3cbe: 2300         	movs	r3, #0x0
    3cc0: ed9f 8ad3    	vldr	s16, [pc, #844]         @ 0x4010 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1478>
    3cc4: 2000         	movs	r0, #0x0
    3cc6: ed9f 9bd4    	vldr	d9, [pc, #848]          @ 0x4018 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1480>
    3cca: ee43 2a08    	vmla.f32	s5, s6, s16
    3cce: ee0c 4b09    	vmla.f64	d4, d12, d9
    3cd2: ed9d 9a03    	vldr	s18, [sp, #12]
    3cd6: eef0 9a67    	vmov.f32	s19, s15
    3cda: eef6 ca00    	vmov.f32	s25, #5.000000e-01
    3cde: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    3ce2: eddd 4a0b    	vldr	s9, [sp, #44]
    3ce6: ee44 0a0b    	vmla.f32	s1, s8, s22
    3cea: eef4 4a60    	vcmp.f32	s9, s1
    3cee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3cf2: fe34 4aa0    	vselgt.f32	s8, s9, s1
    3cf6: eeb4 4a49    	vcmp.f32	s8, s18
    3cfa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3cfe: eef4 0a64    	vcmp.f32	s1, s9
    3d02: eef0 4a67    	vmov.f32	s9, s15
    3d06: fe39 da04    	vselgt.f32	s26, s18, s8
    3d0a: ed9f 4a63    	vldr	s8, [pc, #396]          @ 0x3e98 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1300>
    3d0e: ee23 8a84    	vmul.f32	s16, s7, s8
    3d12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d16: eef4 0a49    	vcmp.f32	s1, s18
    3d1a: eeff 0a00    	vmov.f32	s1, #-1.000000e+00
    3d1e: ee32 4a88    	vadd.f32	s8, s5, s16
    3d22: eeb0 9a67    	vmov.f32	s18, s15
    3d26: bfc8         	it	gt
    3d28: 2301         	movgt	r3, #0x1
    3d2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d2e: eeb5 4a40    	vcmp.f32	s8, #0
    3d32: eef0 2ac4    	vabs.f32	s5, s8
    3d36: eeb0 4a67    	vmov.f32	s8, s15
    3d3a: bf48         	it	mi
    3d3c: 2001         	movmi	r0, #0x1
    3d3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d42: bf48         	it	mi
    3d44: eeb0 4a60    	vmovmi.f32	s8, s1
    3d48: eddf 0a4b    	vldr	s1, [pc, #300]          @ 0x3e78 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e0>
    3d4c: ed8d da14    	vstr	s26, [sp, #80]
    3d50: fe3f 4a04    	vselgt.f32	s8, s30, s8
    3d54: eef4 2a60    	vcmp.f32	s5, s1
    3d58: eef0 0a67    	vmov.f32	s1, s15
    3d5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d60: f280 80ca    	bge.w	0x3ef8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1360> @ imm = #0x194
    3d64: eddf 0a45    	vldr	s1, [pc, #276]          @ 0x3e7c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e4>
    3d68: eef0 4a67    	vmov.f32	s9, s15
    3d6c: eef4 2a60    	vcmp.f32	s5, s1
    3d70: eef7 0a08    	vmov.f32	s1, #1.500000e+00
    3d74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d78: d922         	bls	0x3dc0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1228> @ imm = #0x44
    3d7a: eddf 0a41    	vldr	s1, [pc, #260]          @ 0x3e80 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e8>
    3d7e: eef4 2a60    	vcmp.f32	s5, s1
    3d82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d86: d90f         	bls	0x3da8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1210> @ imm = #0x1e
    3d88: eddf 0a3e    	vldr	s1, [pc, #248]          @ 0x3e84 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12ec>
    3d8c: ee72 2aa0    	vadd.f32	s5, s5, s1
    3d90: eef0 0a08    	vmov.f32	s1, #3.000000e+00
    3d94: eddf 4a3c    	vldr	s9, [pc, #240]          @ 0x3e88 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f0>
    3d98: e00e         	b	0x3db8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1220> @ imm = #0x1c
    3d9a: bf00         	nop
    3d9c: 17 b7 d1 38  	.word	0x38d1b717
    3da0: a8 b9 92 b8  	.word	0xb892b9a8
    3da4: 34 8b b1 36  	.word	0x36b18b34
    3da8: eddf 0a38    	vldr	s1, [pc, #224]          @ 0x3e8c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f4>
    3dac: ee72 2aa0    	vadd.f32	s5, s5, s1
    3db0: eef7 0a08    	vmov.f32	s1, #1.500000e+00
    3db4: eddf 4a36    	vldr	s9, [pc, #216]          @ 0x3e90 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f8>
    3db8: ee42 0aa4    	vmla.f32	s1, s5, s9
    3dbc: ee64 4a24    	vmul.f32	s9, s8, s9
    3dc0: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    3dc4: ee34 4a60    	vsub.f32	s8, s8, s1
    3dc8: eef1 0a64    	vneg.f32	s1, s9
    3dcc: fec4 2a27    	vmaxnm.f32	s5, s8, s15
    3dd0: eef5 2a40    	vcmp.f32	s5, #0
    3dd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3dd8: d946         	bls	0x3e68 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12d0> @ imm = #0x8c
    3dda: eeb0 4acd    	vabs.f32	s8, s26
    3dde: eeb4 4a62    	vcmp.f32	s8, s5
    3de2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3de6: d95b         	bls	0x3ea0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1308> @ imm = #0xb6
    3de8: ee82 4a84    	vdiv.f32	s8, s5, s8
    3dec: eeb0 ca4f    	vmov.f32	s24, s30
    3df0: ee64 4a04    	vmul.f32	s9, s8, s8
    3df4: ee64 4aa4    	vmul.f32	s9, s9, s9
    3df8: ee64 4aa4    	vmul.f32	s9, s9, s9
    3dfc: ee24 9aa4    	vmul.f32	s18, s9, s9
    3e00: ee79 4a0f    	vadd.f32	s9, s18, s30
    3e04: eef4 4a4f    	vcmp.f32	s9, s30
    3e08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e0c: d009         	beq	0x3e22 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x128a> @ imm = #0x12
    3e0e: eeb0 ca64    	vmov.f32	s24, s9
    3e12: eeb1 cacc    	vsqrt.f32	s24, s24
    3e16: eeb1 cacc    	vsqrt.f32	s24, s24
    3e1a: eeb1 cacc    	vsqrt.f32	s24, s24
    3e1e: eeb1 cacc    	vsqrt.f32	s24, s24
    3e22: ee8f da0c    	vdiv.f32	s26, s30, s24
    3e26: ed9d ea14    	vldr	s28, [sp, #80]
    3e2a: ee24 4a09    	vmul.f32	s8, s8, s18
    3e2e: eeb4 ea4e    	vcmp.f32	s28, s28
    3e32: ee8d ca24    	vdiv.f32	s24, s26, s9
    3e36: eddf 4a17    	vldr	s9, [pc, #92]           @ 0x3e94 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12fc>
    3e3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e3e: eef0 9a64    	vmov.f32	s19, s9
    3e42: bf7f         	itttt	vc
    3e44: ee1e 6a10    	vmovvc	r6, s28
    3e48: f04f 557e    	movvc.w	r5, #0x3f800000
    3e4c: f365 061e    	bfivc	r6, r5, #0, #31
    3e50: ee0e 6a10    	vmovvc	s28, r6
    3e54: bf7e         	ittt	vc
    3e56: ee6e 2a22    	vmulvc.f32	s5, s28, s5
    3e5a: ee62 4a8d    	vmulvc.f32	s9, s5, s26
    3e5e: ee6e 9a0c    	vmulvc.f32	s19, s28, s24
    3e62: ee24 9a0c    	vmul.f32	s18, s8, s24
    3e66: e047         	b	0x3ef8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1360> @ imm = #0x8e
    3e68: eef0 4a67    	vmov.f32	s9, s15
    3e6c: eeb0 9a67    	vmov.f32	s18, s15
    3e70: eef0 9a67    	vmov.f32	s19, s15
    3e74: e040         	b	0x3ef8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1360> @ imm = #0x80
    3e76: bf00         	nop
    3e78: 0a d7 23 3d  	.word	0x3d23d70a
    3e7c: 7c f2 b0 3a  	.word	0x3ab0f27c
    3e80: a6 9b c4 3b  	.word	0x3bc49ba6
    3e84: a6 9b c4 bb  	.word	0xbbc49ba6
    3e88: 79 78 b0 43  	.word	0x43b07879
    3e8c: 7c f2 b0 ba  	.word	0xbab0f27c
    3e90: 53 4a a1 43  	.word	0x43a14a53
    3e94: 00 00 c0 7f  	.word	0x7fc00000
    3e98: d2 20 02 39  	.word	0x390220d2
    3e9c: 00 bf 00 bf  	.word	0xbf00bf00
    3ea0: ee8d 4a22    	vdiv.f32	s8, s26, s5
    3ea4: eeb0 9a4f    	vmov.f32	s18, s30
    3ea8: ee24 4a04    	vmul.f32	s8, s8, s8
    3eac: ee24 4a04    	vmul.f32	s8, s8, s8
    3eb0: ee24 4a04    	vmul.f32	s8, s8, s8
    3eb4: ee24 4a04    	vmul.f32	s8, s8, s8
    3eb8: ee74 4a0f    	vadd.f32	s9, s8, s30
    3ebc: eef4 4a4f    	vcmp.f32	s9, s30
    3ec0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ec4: d009         	beq	0x3eda <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1342> @ imm = #0x12
    3ec6: eeb0 9a64    	vmov.f32	s18, s9
    3eca: eeb1 9ac9    	vsqrt.f32	s18, s18
    3ece: eeb1 9ac9    	vsqrt.f32	s18, s18
    3ed2: eeb1 9ac9    	vsqrt.f32	s18, s18
    3ed6: eeb1 9ac9    	vsqrt.f32	s18, s18
    3eda: ee8f ca09    	vdiv.f32	s24, s30, s18
    3ede: ee2d 4a04    	vmul.f32	s8, s26, s8
    3ee2: ee8c 9a24    	vdiv.f32	s18, s24, s9
    3ee6: ee84 4a22    	vdiv.f32	s8, s8, s5
    3eea: ee6d 4a0c    	vmul.f32	s9, s26, s24
    3eee: ee64 9a09    	vmul.f32	s19, s8, s18
    3ef2: bf00         	nop
    3ef4: bf00         	nop
    3ef6: bf00         	nop
    3ef8: ee73 fa64    	vsub.f32	s31, s6, s9
    3efc: 4018         	ands	r0, r3
    3efe: ed9f 4a41    	vldr	s8, [pc, #260]          @ 0x4004 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x146c>
    3f02: eddf 2a41    	vldr	s5, [pc, #260]          @ 0x4008 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1470>
    3f06: ee1f 6a90    	vmov	r6, s31
    3f0a: eddf aa40    	vldr	s21, [pc, #256]         @ 0x400c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1474>
    3f0e: fe42 ba84    	vseleq.f32	s23, s5, s8
    3f12: f026 4000    	bic	r0, r6, #0x80000000
    3f16: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3f1a: da17         	bge	0x3f4c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x13b4> @ imm = #0x2e
    3f1c: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    3f20: eeb4 aa4a    	vcmp.f32	s20, s20
    3f24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f28: ee8f 4a84    	vdiv.f32	s8, s31, s8
    3f2c: eeb0 4ac4    	vabs.f32	s8, s8
    3f30: fe54 2a0a    	vselvs.f32	s5, s8, s20
    3f34: eeb4 4a44    	vcmp.f32	s8, s8
    3f38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f3c: fe12 4a84    	vselvs.f32	s8, s5, s8
    3f40: eef4 2a44    	vcmp.f32	s5, s8
    3f44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f48: fe72 aa84    	vselgt.f32	s21, s5, s8
    3f4c: eddf 4ae9    	vldr	s9, [pc, #932]          @ 0x42f4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x175c>
    3f50: eddd 2a11    	vldr	s5, [sp, #68]
    3f54: ee23 4a24    	vmul.f32	s8, s6, s9
    3f58: ed9f aae7    	vldr	s20, [pc, #924]         @ 0x42f8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1760>
    3f5c: ee25 ea21    	vmul.f32	s28, s10, s3
    3f60: 200d         	movs	r0, #0xd
    3f62: ee20 5aa9    	vmul.f32	s10, s1, s19
    3f66: eef8 0a00    	vmov.f32	s1, #-2.000000e+00
    3f6a: ee74 2a22    	vadd.f32	s5, s8, s5
    3f6e: ee43 2a8a    	vmla.f32	s5, s7, s20
    3f72: ed9d aa10    	vldr	s20, [sp, #64]
    3f76: ee34 4a0a    	vadd.f32	s8, s8, s20
    3f7a: ee03 4ae4    	vmls.f32	s8, s7, s9
    3f7e: eddf 4adf    	vldr	s9, [pc, #892]          @ 0x42fc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1764>
    3f82: ee68 1aa6    	vmul.f32	s3, s17, s13
    3f86: eef0 9a64    	vmov.f32	s19, s9
    3f8a: eef4 2a44    	vcmp.f32	s5, s8
    3f8e: fe82 4ac4    	vminnm.f32	s8, s5, s8
    3f92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f96: bf88         	it	hi
    3f98: 200e         	movhi	r0, #0xe
    3f9a: ee3c 4ac4    	vsub.f32	s8, s25, s8
    3f9e: eeb4 4a60    	vcmp.f32	s8, s1
    3fa2: eef0 0a67    	vmov.f32	s1, s15
    3fa6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3faa: d93b         	bls	0x4024 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x148c> @ imm = #0x76
    3fac: eeb4 4a44    	vcmp.f32	s8, s8
    3fb0: eef0 2a67    	vmov.f32	s5, s15
    3fb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3fb8: fe57 0a84    	vselvs.f32	s1, s15, s8
    3fbc: eef5 0a40    	vcmp.f32	s1, #0
    3fc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3fc4: bfb8         	it	lt
    3fc6: eef0 2a60    	vmovlt.f32	s5, s1
    3fca: eef0 0a4f    	vmov.f32	s1, s30
    3fce: eeb5 4a40    	vcmp.f32	s8, #0
    3fd2: ee42 0aac    	vmla.f32	s1, s5, s25
    3fd6: eddf 2af4    	vldr	s5, [pc, #976]          @ 0x43a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    3fda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3fde: ee60 0aa2    	vmul.f32	s1, s1, s5
    3fe2: fec0 9aa4    	vmaxnm.f32	s19, s1, s9
    3fe6: d51b         	bpl	0x4020 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1488> @ imm = #0x36
    3fe8: eef0 0a4f    	vmov.f32	s1, s30
    3fec: ee44 0a2c    	vmla.f32	s1, s8, s25
    3ff0: ee20 4aa2    	vmul.f32	s8, s1, s5
    3ff4: eeb4 4a64    	vcmp.f32	s8, s9
    3ff8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ffc: dd10         	ble	0x4020 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1488> @ imm = #0x20
    3ffe: eddf 0af6    	vldr	s1, [pc, #984]          @ 0x43d8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1840>
    4002: e00f         	b	0x4024 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x148c> @ imm = #0x1e
    4004: 95 3a ae c3  	.word	0xc3ae3a95
    4008: 00 00 00 80  	.word	0x80000000
    400c: 00 00 80 7f  	.word	0x7f800000
    4010: 75 5e 1f b9  	.word	0xb91f5e75
    4014: 00 bf 00 bf  	.word	0xbf00bf00
    4018: a4 eb ea 42  	.word	0x42eaeba4
    401c: fb d4 cf bf  	.word	0xbfcfd4fb
    4020: eef0 0a67    	vmov.f32	s1, s15
    4024: eddf 2ae7    	vldr	s5, [pc, #924]          @ 0x43c4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x182c>
    4028: ed9d 4a06    	vldr	s8, [sp, #24]
    402c: ee03 4a22    	vmla.f32	s8, s6, s5
    4030: f24b 33d0    	movw	r3, #0xb3d0
    4034: f2c0 0300    	movt	r3, #0x0
    4038: eddf 6ae0    	vldr	s13, [pc, #896]         @ 0x43bc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1824>
    403c: eb03 1080    	add.w	r0, r3, r0, lsl #6
    4040: ed9f aae4    	vldr	s20, [pc, #912]         @ 0x43d4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x183c>
    4044: ee65 8a0a    	vmul.f32	s17, s10, s20
    4048: ed90 cb08    	vldr	d12, [r0, #32]
    404c: ee2b 9a89    	vmul.f32	s18, s23, s18
    4050: ee74 2a48    	vsub.f32	s5, s8, s16
    4054: ee53 2aa9    	vnmls.f32	s5, s7, s19
    4058: ed90 4b0a    	vldr	d4, [r0, #40]
    405c: ee25 8a26    	vmul.f32	s16, s10, s13
    4060: eddf 6ada    	vldr	s13, [pc, #872]         @ 0x43cc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1834>
    4064: ed90 db0c    	vldr	d13, [r0, #48]
    4068: ee65 6a26    	vmul.f32	s13, s10, s13
    406c: ed9f 5ad1    	vldr	s10, [pc, #836]         @ 0x43b4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x181c>
    4070: ee21 aaa7    	vmul.f32	s20, s3, s15
    4074: ee12 0a90    	vmov	r0, s5
    4078: ee6e ba05    	vmul.f32	s23, s28, s10
    407c: ed9f 5ad0    	vldr	s10, [pc, #832]         @ 0x43c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1828>
    4080: f020 4000    	bic	r0, r0, #0x80000000
    4084: f1b0 4fff    	cmp.w	r0, #0x7f800000
    4088: da17         	bge	0x40ba <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1522> @ imm = #0x2e
    408a: ed9f 5ad4    	vldr	s10, [pc, #848]         @ 0x43dc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1844>
    408e: eef4 aa6a    	vcmp.f32	s21, s21
    4092: ee82 5a85    	vdiv.f32	s10, s5, s10
    4096: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    409a: eeb0 5ac5    	vabs.f32	s10, s10
    409e: fe55 aa2a    	vselvs.f32	s21, s10, s21
    40a2: eeb4 5a45    	vcmp.f32	s10, s10
    40a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    40aa: fe1a 5a85    	vselvs.f32	s10, s21, s10
    40ae: eef4 aa45    	vcmp.f32	s21, s10
    40b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    40b6: fe3a 5a85    	vselgt.f32	s10, s21, s10
    40ba: eddf aabf    	vldr	s21, [pc, #764]         @ 0x43b8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1820>
    40be: ee63 0aa0    	vmul.f32	s1, s7, s1
    40c2: eeb7 dbcd    	vcvt.f32.f64	s26, d13
    40c6: f10b 0001    	add.w	r0, r11, #0x1
    40ca: ee41 baaa    	vmla.f32	s23, s3, s21
    40ce: eddf aab8    	vldr	s21, [pc, #736]         @ 0x43b0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1818>
    40d2: eef0 1a4a    	vmov.f32	s3, s20
    40d6: ee4e 1a2a    	vmla.f32	s3, s28, s21
    40da: eddf aab8    	vldr	s21, [pc, #736]         @ 0x43bc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1824>
    40de: ee49 8a27    	vmla.f32	s17, s18, s15
    40e2: ee0e aa2a    	vmla.f32	s20, s28, s21
    40e6: ed9f eab7    	vldr	s28, [pc, #732]         @ 0x43c4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x182c>
    40ea: ee00 eacd    	vmls.f32	s28, s1, s26
    40ee: ed9f dab6    	vldr	s26, [pc, #728]         @ 0x43c8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1830>
    40f2: ee09 8a0d    	vmla.f32	s16, s18, s26
    40f6: ed9f dab6    	vldr	s26, [pc, #728]         @ 0x43d0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1838>
    40fa: eeb7 cbcc    	vcvt.f32.f64	s24, d12
    40fe: 9b04         	ldr	r3, [sp, #0x10]
    4100: ee49 6a0d    	vmla.f32	s13, s18, s26
    4104: 445b         	add	r3, r11
    4106: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    410a: 2803         	cmp	r0, #0x3
    410c: ee2c 9a60    	vnmul.f32	s18, s24, s1
    4110: f102 0201    	add.w	r2, r2, #0x1
    4114: ee79 9a8e    	vadd.f32	s19, s19, s28
    4118: 4683         	mov	r11, r0
    411a: ee60 0a84    	vmul.f32	s1, s1, s8
    411e: f8ce 3000    	str.w	r3, [lr]
    4122: eeb1 1a41    	vneg.f32	s2, s2
    4126: eeb1 ea6f    	vneg.f32	s28, s31
    412a: eef1 fa62    	vneg.f32	s31, s5
    412e: f47f ab16    	bne.w	0x375e <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xbc6> @ imm = #-0x9d4
    4132: 2203         	movs	r2, #0x3
    4134: ee15 0a10    	vmov	r0, s10
    4138: 9901         	ldr	r1, [sp, #0x4]
    413a: ed9d 0a12    	vldr	s0, [sp, #72]
    413e: ed81 0a02    	vstr	s0, [r1, #8]
    4142: ed9d 0a14    	vldr	s0, [sp, #80]
    4146: ed81 0a03    	vstr	s0, [r1, #12]
    414a: f020 4000    	bic	r0, r0, #0x80000000
    414e: 9902         	ldr	r1, [sp, #0x8]
    4150: f1b0 4fff    	cmp.w	r0, #0x7f800000
    4154: f04f 0000    	mov.w	r0, #0x0
    4158: ed81 5a00    	vstr	s10, [r1]
    415c: 710a         	strb	r2, [r1, #0x4]
    415e: bfb8         	it	lt
    4160: 2001         	movlt	r0, #0x1
    4162: e007         	b	0x4174 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15dc> @ imm = #0xe
    4164: bf00         	nop
    4166: bf00         	nop
    4168: 9902         	ldr	r1, [sp, #0x8]
    416a: f04f 40ff    	mov.w	r0, #0x7f800000
    416e: 6008         	str	r0, [r1]
    4170: 2000         	movs	r0, #0x0
    4172: 710a         	strb	r2, [r1, #0x4]
    4174: 7148         	strb	r0, [r1, #0x5]
    4176: b02a         	add	sp, #0xa8
    4178: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    417c: b001         	add	sp, #0x4
    417e: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    4182: bdf0         	pop	{r4, r5, r6, r7, pc}
    4184: bf00         	nop
    4186: bf00         	nop
    4188: eef7 3bc2    	vcvt.f32.f64	s7, d2
    418c: eddf 2a85    	vldr	s5, [pc, #532]          @ 0x43a4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    4190: eeb0 2a44    	vmov.f32	s4, s8
    4194: ed8d eb12    	vstr	d14, [sp, #72]
    4198: ee03 2aa2    	vmla.f32	s4, s7, s5
    419c: eef0 2a45    	vmov.f32	s5, s10
    41a0: ee43 2aa0    	vmla.f32	s5, s7, s1
    41a4: eeb6 ea00    	vmov.f32	s28, #5.000000e-01
    41a8: edc1 3a06    	vstr	s7, [r1, #24]
    41ac: fec2 4a62    	vminnm.f32	s9, s4, s5
    41b0: ee7e 4a64    	vsub.f32	s9, s28, s9
    41b4: eeb8 ea00    	vmov.f32	s28, #-2.000000e+00
    41b8: eef4 4a4e    	vcmp.f32	s9, s28
    41bc: ed9d eb12    	vldr	d14, [sp, #72]
    41c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    41c4: f77e ae81    	ble.w	0x2eca <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x12fe
    41c8: eeb4 2a62    	vcmp.f32	s4, s5
    41cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    41d0: f63e ae7b    	bhi.w	0x2eca <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x130a
    41d4: eef5 4a40    	vcmp.f32	s9, #0
    41d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    41dc: f57e ae75    	bpl.w	0x2eca <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x1316
    41e0: eef6 2a00    	vmov.f32	s5, #5.000000e-01
    41e4: eeb0 2a65    	vmov.f32	s4, s11
    41e8: ee04 2aa2    	vmla.f32	s4, s9, s5
    41ec: eddf 2a6e    	vldr	s5, [pc, #440]          @ 0x43a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    41f0: ee22 2a22    	vmul.f32	s4, s4, s5
    41f4: eeb4 2a61    	vcmp.f32	s4, s3
    41f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    41fc: f77e ae65    	ble.w	0x2eca <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x1336
    4200: f7fe beb4    	b.w	0x2f6c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1298
    4204: bf00         	nop
    4206: bf00         	nop
    4208: eef7 3bc2    	vcvt.f32.f64	s7, d2
    420c: eddf 2a65    	vldr	s5, [pc, #404]          @ 0x43a4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    4210: eeb0 2a44    	vmov.f32	s4, s8
    4214: eeb6 ba00    	vmov.f32	s22, #5.000000e-01
    4218: edc1 3a06    	vstr	s7, [r1, #24]
    421c: ee03 2aa2    	vmla.f32	s4, s7, s5
    4220: eef0 2a45    	vmov.f32	s5, s10
    4224: ee43 2aa0    	vmla.f32	s5, s7, s1
    4228: fec2 4a62    	vminnm.f32	s9, s4, s5
    422c: ee7b 4a64    	vsub.f32	s9, s22, s9
    4230: eeb8 ba00    	vmov.f32	s22, #-2.000000e+00
    4234: eef4 4a4b    	vcmp.f32	s9, s22
    4238: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    423c: f77e ae87    	ble.w	0x2f4e <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x12f2
    4240: eef4 2a42    	vcmp.f32	s5, s4
    4244: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4248: f63e ae81    	bhi.w	0x2f4e <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x12fe
    424c: eef5 4a40    	vcmp.f32	s9, #0
    4250: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4254: f57e ae7b    	bpl.w	0x2f4e <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x130a
    4258: eef6 2a00    	vmov.f32	s5, #5.000000e-01
    425c: eeb0 2a65    	vmov.f32	s4, s11
    4260: ee04 2aa2    	vmla.f32	s4, s9, s5
    4264: eddf 2a50    	vldr	s5, [pc, #320]          @ 0x43a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    4268: ee22 2a22    	vmul.f32	s4, s4, s5
    426c: eeb4 2a61    	vcmp.f32	s4, s3
    4270: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4274: f77e ae6b    	ble.w	0x2f4e <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x132a
    4278: f7fe be78    	b.w	0x2f6c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1310
    427c: bf00         	nop
    427e: bf00         	nop
    4280: eef7 3bc2    	vcvt.f32.f64	s7, d2
    4284: ed9f 7a47    	vldr	s14, [pc, #284]         @ 0x43a4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    4288: eeb0 2a44    	vmov.f32	s4, s8
    428c: eef0 2a45    	vmov.f32	s5, s10
    4290: eef6 4a00    	vmov.f32	s9, #5.000000e-01
    4294: ee03 2a87    	vmla.f32	s4, s7, s14
    4298: edc1 3a06    	vstr	s7, [r1, #24]
    429c: ee43 2aa0    	vmla.f32	s5, s7, s1
    42a0: fe82 7a62    	vminnm.f32	s14, s4, s5
    42a4: ee34 7ac7    	vsub.f32	s14, s9, s14
    42a8: eef8 4a00    	vmov.f32	s9, #-2.000000e+00
    42ac: eeb4 7a64    	vcmp.f32	s14, s9
    42b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42b4: f77e ae12    	ble.w	0x2edc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x13dc
    42b8: eeb4 2a62    	vcmp.f32	s4, s5
    42bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42c0: f63e ae0c    	bhi.w	0x2edc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x13e8
    42c4: eeb5 7a40    	vcmp.f32	s14, #0
    42c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42cc: f57e ae06    	bpl.w	0x2edc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x13f4
    42d0: eef6 2a00    	vmov.f32	s5, #5.000000e-01
    42d4: eeb0 2a65    	vmov.f32	s4, s11
    42d8: ee07 2a22    	vmla.f32	s4, s14, s5
    42dc: ed9f 7a32    	vldr	s14, [pc, #200]         @ 0x43a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    42e0: ee22 2a07    	vmul.f32	s4, s4, s14
    42e4: eeb4 2a61    	vcmp.f32	s4, s3
    42e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42ec: f77e adf6    	ble.w	0x2edc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x1414
    42f0: f7fe be3c    	b.w	0x2f6c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1388
    42f4: a8 cc 7f 3f  	.word	0x3f7fcca8
    42f8: 0d 61 4d 3a  	.word	0x3a4d610d
    42fc: 95 bf d6 33  	.word	0x33d6bf95
    4300: eef7 3bc2    	vcvt.f32.f64	s7, d2
    4304: ed9f 7a27    	vldr	s14, [pc, #156]         @ 0x43a4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    4308: eeb0 2a45    	vmov.f32	s4, s10
    430c: eef6 4a00    	vmov.f32	s9, #5.000000e-01
    4310: eef8 2a00    	vmov.f32	s5, #-2.000000e+00
    4314: ee03 2aa0    	vmla.f32	s4, s7, s1
    4318: eef0 0a44    	vmov.f32	s1, s8
    431c: ee43 0a87    	vmla.f32	s1, s7, s14
    4320: edc1 3a06    	vstr	s7, [r1, #24]
    4324: fe80 7ac2    	vminnm.f32	s14, s1, s4
    4328: ee34 7ac7    	vsub.f32	s14, s9, s14
    432c: eeb4 7a62    	vcmp.f32	s14, s5
    4330: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4334: f77e ae14    	ble.w	0x2f60 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #-0x13d8
    4338: eeb4 2a60    	vcmp.f32	s4, s1
    433c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4340: f63e ae0e    	bhi.w	0x2f60 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #-0x13e4
    4344: eeb5 7a40    	vcmp.f32	s14, #0
    4348: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    434c: f57e ae08    	bpl.w	0x2f60 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #-0x13f0
    4350: ee47 5a24    	vmla.f32	s11, s14, s9
    4354: ed9f 2a14    	vldr	s4, [pc, #80]           @ 0x43a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    4358: eef0 4a41    	vmov.f32	s9, s2
    435c: ee25 2a82    	vmul.f32	s4, s11, s4
    4360: eeb4 2a61    	vcmp.f32	s4, s3
    4364: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4368: f77e adfc    	ble.w	0x2f64 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3cc> @ imm = #-0x1408
    436c: f7fe bdfe    	b.w	0x2f6c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1404
    4370: f24b 7090    	movw	r0, #0xb790
    4374: f64b 0210    	movw	r2, #0xb810
    4378: f2c0 0000    	movt	r0, #0x0
    437c: f2c0 0200    	movt	r2, #0x0
    4380: a91e         	add	r1, sp, #0x78
    4382: f006 f831    	bl	0xa3e8 <core::panicking::panic_fmt> @ imm = #0x6062
    4386: bf00         	nop
    4388: eddf aa08    	vldr	s21, [pc, #32]          @ 0x43ac <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1814>
    438c: eef0 2a6a    	vmov.f32	s5, s21
    4390: f7fe bee9    	b.w	0x3166 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5ce> @ imm = #-0x122e
    4394: bf00         	nop
    4396: bf00         	nop
    4398: eddf 8a04    	vldr	s17, [pc, #16]          @ 0x43ac <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1814>
    439c: eeb0 2a68    	vmov.f32	s4, s17
    43a0: f7ff b84b    	b.w	0x343a <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8a2> @ imm = #-0xf6a
    43a4: 0d 61 4d 3a  	.word	0x3a4d610d
    43a8: 2b 18 95 3b  	.word	0x3b95182b
    43ac: 00 00 c0 7f  	.word	0x7fc00000
    43b0: 00 00 00 80  	.word	0x80000000
    43b4: a8 b9 92 38  	.word	0x3892b9a8
    43b8: fc 7c 04 bf  	.word	0xbf047cfc
    43bc: 34 8b b1 b6  	.word	0xb6b18b34
    43c0: 00 00 80 7f  	.word	0x7f800000
    43c4: d2 20 02 39  	.word	0x390220d2
    43c8: 5d fa 11 be  	.word	0xbe11fa5d
    43cc: 75 5e 1f 39  	.word	0x391f5e75
    43d0: da a7 7e be  	.word	0xbe7ea7da
    43d4: d2 20 02 b9  	.word	0xb90220d2
    43d8: 2b 18 15 3b  	.word	0x3b15182b
    43dc: 0a d7 23 3c  	.word	0x3c23d70a

000043e0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>>:
    43e0: b5f0         	push	{r4, r5, r6, r7, lr}
    43e2: af03         	add	r7, sp, #0xc
    43e4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    43e8: b081         	sub	sp, #0x4
    43ea: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    43ee: b088         	sub	sp, #0x20
    43f0: ed91 3a00    	vldr	s6, [r1]
    43f4: ed91 4a01    	vldr	s8, [r1, #4]
    43f8: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    43fc: ed91 6a02    	vldr	s12, [r1, #8]
    4400: ed9f 5baf    	vldr	d5, [pc, #700]          @ 0x46c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x2e0>
    4404: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    4408: eebb 9a05    	vmov.f32	s18, #-2.100000e+01
    440c: eeb0 7b41    	vmov.f64	d7, d1
    4410: 460c         	mov	r4, r1
    4412: eeb3 aa05    	vmov.f32	s20, #2.100000e+01
    4416: 461e         	mov	r6, r3
    4418: ee03 7b05    	vmla.f64	d7, d3, d5
    441c: 4690         	mov	r8, r2
    441e: eeb7 3ac6    	vcvt.f64.f32	d3, s12
    4422: 4605         	mov	r5, r0
    4424: ee04 7b05    	vmla.f64	d7, d4, d5
    4428: ed91 4a03    	vldr	s8, [r1, #12]
    442c: ee03 7b05    	vmla.f64	d7, d3, d5
    4430: eeb7 3ac4    	vcvt.f64.f32	d3, s8
    4434: ed91 4a04    	vldr	s8, [r1, #16]
    4438: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    443c: ed9f 6ba2    	vldr	d6, [pc, #648]          @ 0x46c8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x2e8>
    4440: ee03 7b05    	vmla.f64	d7, d3, d5
    4444: ed91 3a05    	vldr	s6, [r1, #20]
    4448: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    444c: ee04 7b05    	vmla.f64	d7, d4, d5
    4450: ed91 5a06    	vldr	s10, [r1, #24]
    4454: ed9f 4b9e    	vldr	d4, [pc, #632]          @ 0x46d0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x2f0>
    4458: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    445c: ee23 3b04    	vmul.f64	d3, d3, d4
    4460: ee25 5b06    	vmul.f64	d5, d5, d6
    4464: ed9f 6a2c    	vldr	s12, [pc, #176]         @ 0x4518 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x138>
    4468: ee37 4b03    	vadd.f64	d4, d7, d3
    446c: ee22 6a06    	vmul.f32	s12, s4, s12
    4470: ed9f 7b99    	vldr	d7, [pc, #612]          @ 0x46d8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x2f8>
    4474: ee34 2b05    	vadd.f64	d2, d4, d5
    4478: eeb7 4ac6    	vcvt.f64.f32	d4, s12
    447c: ee31 1b03    	vadd.f64	d1, d1, d3
    4480: ee84 4b07    	vdiv.f64	d4, d4, d7
    4484: ed9f 7b96    	vldr	d7, [pc, #600]          @ 0x46e0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x300>
    4488: ee02 4b07    	vmla.f64	d4, d2, d7
    448c: ed9f 2b96    	vldr	d2, [pc, #600]          @ 0x46e8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x308>
    4490: ee84 2b02    	vdiv.f64	d2, d4, d2
    4494: ee31 bb05    	vadd.f64	d11, d1, d5
    4498: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    449c: eeb0 3b4b    	vmov.f64	d3, d11
    44a0: eeb4 9a42    	vcmp.f32	s18, s4
    44a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    44a8: ed9f 4b91    	vldr	d4, [pc, #580]          @ 0x46f0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x310>
    44ac: fe39 2a02    	vselgt.f32	s4, s18, s4
    44b0: eeb4 2a4a    	vcmp.f32	s4, s20
    44b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    44b8: fe7a 9a02    	vselgt.f32	s19, s20, s4
    44bc: ed9f 2a17    	vldr	s4, [pc, #92]           @ 0x451c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x13c>
    44c0: ee36 2a02    	vadd.f32	s4, s12, s4
    44c4: edc1 9a07    	vstr	s19, [r1, #28]
    44c8: eeb7 1ae9    	vcvt.f64.f32	d1, s19
    44cc: ee01 3b04    	vmla.f64	d3, d1, d4
    44d0: ed9f 1a13    	vldr	s2, [pc, #76]           @ 0x4520 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x140>
    44d4: ee82 da01    	vdiv.f32	s26, s4, s2
    44d8: ed9f 2a12    	vldr	s4, [pc, #72]           @ 0x4524 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x144>
    44dc: ee26 fa02    	vmul.f32	s30, s12, s4
    44e0: ed9f 4a11    	vldr	s8, [pc, #68]           @ 0x4528 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x148>
    44e4: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    44e8: eeb0 2a4f    	vmov.f32	s4, s30
    44ec: ee03 2a04    	vmla.f32	s4, s6, s8
    44f0: ed9f 3a0e    	vldr	s6, [pc, #56]           @ 0x452c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x14c>
    44f4: ee36 3a03    	vadd.f32	s6, s12, s6
    44f8: eec3 8a01    	vdiv.f32	s17, s6, s2
    44fc: eeb4 2a68    	vcmp.f32	s4, s17
    4500: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4504: db1c         	blt	0x4540 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x160> @ imm = #0x38
    4506: eeb4 2a4d    	vcmp.f32	s4, s26
    450a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    450e: d817         	bhi	0x4540 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x160> @ imm = #0x2e
    4510: eef7 abc0    	vcvt.f32.f64	s21, d0
    4514: e054         	b	0x45c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x1e0> @ imm = #0xa8
    4516: bf00         	nop
    4518: 00 80 3b 47  	.word	0x473b8000
    451c: 00 24 f4 4a  	.word	0x4af42400
    4520: 00 a0 8c 47  	.word	0x478ca000
    4524: af fd 66 37  	.word	0x3766fdaf
    4528: df 5b 59 44  	.word	0x44595bdf
    452c: 00 24 f4 ca  	.word	0xcaf42400
    4530: 7a ad 91 c1  	.word	0xc191ad7a
    4534: 75 e7 24 be  	.word	0xbe24e775
    4538: 75 e7 24 3e  	.word	0x3e24e775
    453c: 00 00 00 80  	.word	0x80000000
    4540: eef4 8a4d    	vcmp.f32	s17, s26
    4544: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4548: f200 839a    	bhi.w	0x4c80 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8a0> @ imm = #0x734
    454c: eef4 8a42    	vcmp.f32	s17, s4
    4550: ed1f 3a09    	vldr	s6, [pc, #-36]          @ 0x4530 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x150>
    4554: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4558: eef7 abc0    	vcvt.f32.f64	s21, d0
    455c: a804         	add	r0, sp, #0x10
    455e: fe38 1a82    	vselgt.f32	s2, s17, s4
    4562: ed1f 0a0c    	vldr	s0, [pc, #-48]          @ 0x4534 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x154>
    4566: eef0 0a6a    	vmov.f32	s1, s21
    456a: eeb4 1a4d    	vcmp.f32	s2, s26
    456e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4572: fe3d 1a01    	vselgt.f32	s2, s26, s2
    4576: ee31 2a42    	vsub.f32	s4, s2, s4
    457a: ee82 2a03    	vdiv.f32	s4, s4, s6
    457e: ee39 2a82    	vadd.f32	s4, s19, s4
    4582: eeb4 9a42    	vcmp.f32	s18, s4
    4586: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    458a: fe39 2a02    	vselgt.f32	s4, s18, s4
    458e: eeb4 2a4a    	vcmp.f32	s4, s20
    4592: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4596: fe3a 8a02    	vselgt.f32	s16, s20, s4
    459a: ee48 0a00    	vmla.f32	s1, s16, s0
    459e: eeb0 0a41    	vmov.f32	s0, s2
    45a2: f000 fb95    	bl	0x4cd0 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x72a
    45a6: ed9d 0a04    	vldr	s0, [sp, #16]
    45aa: eeb6 1a00    	vmov.f32	s2, #5.000000e-01
    45ae: ee38 0a00    	vadd.f32	s0, s16, s0
    45b2: 6830         	ldr	r0, [r6]
    45b4: 3001         	adds	r0, #0x1
    45b6: 6030         	str	r0, [r6]
    45b8: ee60 9a01    	vmul.f32	s19, s0, s2
    45bc: edc4 9a07    	vstr	s19, [r4, #28]
    45c0: eef4 8a4d    	vcmp.f32	s17, s26
    45c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45c8: f200 835a    	bhi.w	0x4c80 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8a0> @ imm = #0x6b4
    45cc: eeb7 0ae9    	vcvt.f64.f32	d0, s19
    45d0: eeb0 ca4f    	vmov.f32	s24, s30
    45d4: ed9f 2bb2    	vldr	d2, [pc, #712]          @ 0x48a0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x4c0>
    45d8: eeb0 1b4b    	vmov.f64	d1, d11
    45dc: a804         	add	r0, sp, #0x10
    45de: ed1f ea2a    	vldr	s28, [pc, #-168]        @ 0x4538 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x158>
    45e2: ee00 1b02    	vmla.f64	d1, d0, d2
    45e6: eef0 0a6a    	vmov.f32	s1, s21
    45ea: ee49 0ace    	vmls.f32	s1, s19, s28
    45ee: e9cd 8501    	strd	r8, r5, [sp, #4]
    45f2: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    45f6: ed1f 1a34    	vldr	s2, [pc, #-208]         @ 0x4528 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x148>
    45fa: ee00 ca01    	vmla.f32	s24, s0, s2
    45fe: eef4 8a4c    	vcmp.f32	s17, s24
    4602: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4606: fe38 0a8c    	vselgt.f32	s0, s17, s24
    460a: eeb4 0a4d    	vcmp.f32	s0, s26
    460e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4612: fe3d 8a00    	vselgt.f32	s16, s26, s0
    4616: eeb0 0a48    	vmov.f32	s0, s16
    461a: f000 fb59    	bl	0x4cd0 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x6b2
    461e: f20f 6084    	adr.w	r0, #1668
    4622: eeb4 ca4d    	vcmp.f32	s24, s26
    4626: 1d01         	adds	r1, r0, #0x4
    4628: 9103         	str	r1, [sp, #0xc]
    462a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    462e: bf48         	it	mi
    4630: 4608         	movmi	r0, r1
    4632: eeb4 ca68    	vcmp.f32	s24, s17
    4636: ed9d 0a04    	vldr	s0, [sp, #16]
    463a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    463e: ee39 1ac0    	vsub.f32	s2, s19, s0
    4642: ed90 0a00    	vldr	s0, [r0]
    4646: ed1f 2a43    	vldr	s4, [pc, #-268]         @ 0x453c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x15c>
    464a: fe30 0a02    	vselgt.f32	s0, s0, s4
    464e: ed9d 2a05    	vldr	s4, [sp, #20]
    4652: ee11 0a10    	vmov	r0, s2
    4656: ee20 3a02    	vmul.f32	s6, s0, s4
    465a: ed9d 0a06    	vldr	s0, [sp, #24]
    465e: ee20 0a0e    	vmul.f32	s0, s0, s28
    4662: f020 4000    	bic	r0, r0, #0x80000000
    4666: f1b0 4fff    	cmp.w	r0, #0x7f800000
    466a: ed9f 2aef    	vldr	s4, [pc, #956]          @ 0x4a28 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x648>
    466e: da09         	bge	0x4684 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x2a4> @ imm = #0x12
    4670: eeb3 2a08    	vmov.f32	s4, #2.400000e+01
    4674: ed9f 4aed    	vldr	s8, [pc, #948]          @ 0x4a2c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x64c>
    4678: ee81 2a02    	vdiv.f32	s4, s2, s4
    467c: eeb0 2ac2    	vabs.f32	s4, s4
    4680: fe82 2a04    	vmaxnm.f32	s4, s4, s8
    4684: ed9f 4aea    	vldr	s8, [pc, #936]          @ 0x4a30 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x650>
    4688: eeb1 1a41    	vneg.f32	s2, s2
    468c: ee03 0a04    	vmla.f32	s0, s6, s8
    4690: eef7 ea00    	vmov.f32	s29, #1.000000e+00
    4694: eeb2 ca00    	vmov.f32	s24, #8.000000e+00
    4698: eef1 ca04    	vmov.f32	s25, #5.000000e+00
    469c: e896 0007    	ldm.w	r6, {r0, r1, r2}
    46a0: f102 0901    	add.w	r9, r2, #0x1
    46a4: f101 0b01    	add.w	r11, r1, #0x1
    46a8: f100 0a02    	add.w	r10, r0, #0x2
    46ac: f04f 0800    	mov.w	r8, #0x0
    46b0: eddf dade    	vldr	s27, [pc, #888]         @ 0x4a2c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x64c>
    46b4: 2500         	movs	r5, #0x0
    46b6: ed5f fa61    	vldr	s31, [pc, #-388]        @ 0x4534 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x154>
    46ba: 1c43         	adds	r3, r0, #0x1
    46bc: 6033         	str	r3, [r6]
    46be: e031         	b	0x4724 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x344> @ imm = #0x62
    46c0: 00 00 00 00  	.word	0x00000000
    46c4: 00 00 00 00  	.word	0x00000000
    46c8: ce 98 d9 8d  	.word	0x8dd998ce
    46cc: 11 3b d9 bf  	.word	0xbfd93b11
    46d0: ce 98 d9 8d  	.word	0x8dd998ce
    46d4: 11 3b d9 3f  	.word	0x3fd93b11
    46d8: 0a 85 fc bd  	.word	0xbdfc850a
    46dc: 77 bb f1 40  	.word	0x40f1bb77
    46e0: 27 0b ca d7  	.word	0xd7ca0b27
    46e4: 7b 2b 8b 40  	.word	0x408b2b7b
    46e8: ed 22 58 32  	.word	0x325822ed
    46ec: af 35 33 40  	.word	0x403335af
    46f0: 34 aa a2 31  	.word	0x31a2aa34
    46f4: 6b 72 95 bf  	.word	0xbf95726b
    46f8: ee20 3a03    	vmul.f32	s6, s0, s6
    46fc: ed1f 0a72    	vldr	s0, [pc, #-456]         @ 0x4538 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x158>
    4700: ee24 0a00    	vmul.f32	s0, s8, s0
    4704: ed9f 4aca    	vldr	s8, [pc, #808]          @ 0x4a30 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x650>
    4708: eeb1 1a41    	vneg.f32	s2, s2
    470c: 1c68         	adds	r0, r5, #0x1
    470e: ee03 0a04    	vmla.f32	s0, s6, s8
    4712: eb0a 0105    	add.w	r1, r10, r5
    4716: 2803         	cmp	r0, #0x3
    4718: f108 0801    	add.w	r8, r8, #0x1
    471c: 4605         	mov	r5, r0
    471e: 6031         	str	r1, [r6]
    4720: f000 8292    	beq.w	0x4c48 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x868> @ imm = #0x524
    4724: ee30 0a2e    	vadd.f32	s0, s0, s29
    4728: ed9f 4ac2    	vldr	s8, [pc, #776]          @ 0x4a34 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x654>
    472c: 2100         	movs	r1, #0x0
    472e: ee10 0a10    	vmov	r0, s0
    4732: eeb0 3ac0    	vabs.f32	s6, s0
    4736: f020 4000    	bic	r0, r0, #0x80000000
    473a: eeb4 3a44    	vcmp.f32	s6, s8
    473e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    4742: f04f 0000    	mov.w	r0, #0x0
    4746: bfa8         	it	ge
    4748: 2001         	movge	r0, #0x1
    474a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    474e: bf48         	it	mi
    4750: 2101         	movmi	r1, #0x1
    4752: 4308         	orrs	r0, r1
    4754: eb0b 0005    	add.w	r0, r11, r5
    4758: 6070         	str	r0, [r6, #0x4]
    475a: f040 826d    	bne.w	0x4c38 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x858> @ imm = #0x4da
    475e: ee81 1a00    	vdiv.f32	s2, s2, s0
    4762: ee11 0a10    	vmov	r0, s2
    4766: f020 4000    	bic	r0, r0, #0x80000000
    476a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    476e: f280 8263    	bge.w	0x4c38 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x858> @ imm = #0x4c6
    4772: eeb0 3ae9    	vabs.f32	s6, s19
    4776: ed9f 4ab0    	vldr	s8, [pc, #704]          @ 0x4a38 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x658>
    477a: eeb4 3a43    	vcmp.f32	s6, s6
    477e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4782: fe1e 3a83    	vselvs.f32	s6, s29, s6
    4786: eeb4 3a6e    	vcmp.f32	s6, s29
    478a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    478e: fe33 3a2e    	vselgt.f32	s6, s6, s29
    4792: ee23 3a04    	vmul.f32	s6, s6, s8
    4796: ed9f 4aa9    	vldr	s8, [pc, #676]          @ 0x4a3c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x65c>
    479a: fe83 3a44    	vminnm.f32	s6, s6, s8
    479e: eeb0 4ac1    	vabs.f32	s8, s2
    47a2: eeb4 4a43    	vcmp.f32	s8, s6
    47a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47aa: d807         	bhi	0x47bc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x3dc> @ imm = #0xe
    47ac: ed9f 3aa4    	vldr	s6, [pc, #656]          @ 0x4a40 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x660>
    47b0: eeb4 2a43    	vcmp.f32	s4, s6
    47b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47b8: f240 8248    	bls.w	0x4c4c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x86c> @ imm = #0x490
    47bc: eeb7 2ae9    	vcvt.f64.f32	d2, s19
    47c0: f20f 40f0    	adr.w	r0, #1264
    47c4: ed9f 4b36    	vldr	d4, [pc, #216]          @ 0x48a0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x4c0>
    47c8: eeb0 3b4b    	vmov.f64	d3, d11
    47cc: ee02 3b04    	vmla.f64	d3, d2, d4
    47d0: ed1f 4aab    	vldr	s8, [pc, #-684]         @ 0x4528 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x148>
    47d4: eeb7 2bc3    	vcvt.f32.f64	s4, d3
    47d8: eeb0 3a4f    	vmov.f32	s6, s30
    47dc: ee02 3a04    	vmla.f32	s6, s4, s8
    47e0: eeb0 2ac8    	vabs.f32	s4, s16
    47e4: eeb4 3a4d    	vcmp.f32	s6, s26
    47e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47ec: bf48         	it	mi
    47ee: 3004         	addmi	r0, #0x4
    47f0: eeb4 3a68    	vcmp.f32	s6, s17
    47f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47f8: ed90 3a00    	vldr	s6, [r0]
    47fc: eeb4 2a4a    	vcmp.f32	s4, s20
    4800: fe33 3a2d    	vselgt.f32	s6, s6, s27
    4804: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4808: d94e         	bls	0x48a8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x4c8> @ imm = #0x9c
    480a: ee8a 2a02    	vdiv.f32	s4, s20, s4
    480e: eeb0 7a6e    	vmov.f32	s14, s29
    4812: ee22 4a02    	vmul.f32	s8, s4, s4
    4816: ee24 4a04    	vmul.f32	s8, s8, s8
    481a: ee24 4a04    	vmul.f32	s8, s8, s8
    481e: ee24 4a04    	vmul.f32	s8, s8, s8
    4822: ee34 5a2e    	vadd.f32	s10, s8, s29
    4826: eeb4 5a6e    	vcmp.f32	s10, s29
    482a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    482e: d009         	beq	0x4844 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x464> @ imm = #0x12
    4830: eeb0 7a45    	vmov.f32	s14, s10
    4834: eeb1 7ac7    	vsqrt.f32	s14, s14
    4838: eeb1 7ac7    	vsqrt.f32	s14, s14
    483c: eeb1 7ac7    	vsqrt.f32	s14, s14
    4840: eeb1 7ac7    	vsqrt.f32	s14, s14
    4844: ee8a 6a08    	vdiv.f32	s12, s20, s16
    4848: eef0 0a6e    	vmov.f32	s1, s29
    484c: ee18 0a10    	vmov	r0, s16
    4850: f04f 517e    	mov.w	r1, #0x3f800000
    4854: ee8e 7a87    	vdiv.f32	s14, s29, s14
    4858: ee26 6a06    	vmul.f32	s12, s12, s12
    485c: f361 001e    	bfi	r0, r1, #0, #31
    4860: ee22 2a04    	vmul.f32	s4, s4, s8
    4864: ee87 5a05    	vdiv.f32	s10, s14, s10
    4868: ee26 6a06    	vmul.f32	s12, s12, s12
    486c: eeb4 8a48    	vcmp.f32	s16, s16
    4870: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4874: ee26 6a06    	vmul.f32	s12, s12, s12
    4878: ee22 4a05    	vmul.f32	s8, s4, s10
    487c: ed9f 2aed    	vldr	s4, [pc, #948]          @ 0x4c34 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x854>
    4880: ee46 0a06    	vmla.f32	s1, s12, s12
    4884: ee8e 6aa0    	vdiv.f32	s12, s29, s1
    4888: ee00 0a90    	vmov	s1, r0
    488c: ee60 0a8a    	vmul.f32	s1, s1, s20
    4890: ee20 7a87    	vmul.f32	s14, s1, s14
    4894: fe12 2a07    	vselvs.f32	s4, s4, s14
    4898: e02b         	b	0x48f2 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x512> @ imm = #0x56
    489a: bf00         	nop
    489c: bf00         	nop
    489e: bf00         	nop
    48a0: 34 aa a2 31  	.word	0x31a2aa34
    48a4: 6b 72 95 bf  	.word	0xbf95726b
    48a8: ee88 2a0a    	vdiv.f32	s4, s16, s20
    48ac: eeb0 4a6e    	vmov.f32	s8, s29
    48b0: ee22 2a02    	vmul.f32	s4, s4, s4
    48b4: ee22 2a02    	vmul.f32	s4, s4, s4
    48b8: ee22 2a02    	vmul.f32	s4, s4, s4
    48bc: ee22 2a02    	vmul.f32	s4, s4, s4
    48c0: ee32 5a2e    	vadd.f32	s10, s4, s29
    48c4: eeb4 5a6e    	vcmp.f32	s10, s29
    48c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48cc: d009         	beq	0x48e2 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x502> @ imm = #0x12
    48ce: eeb0 4a45    	vmov.f32	s8, s10
    48d2: eeb1 4ac4    	vsqrt.f32	s8, s8
    48d6: eeb1 4ac4    	vsqrt.f32	s8, s8
    48da: eeb1 4ac4    	vsqrt.f32	s8, s8
    48de: eeb1 4ac4    	vsqrt.f32	s8, s8
    48e2: ee8e 7a84    	vdiv.f32	s14, s29, s8
    48e6: ee82 6a05    	vdiv.f32	s12, s4, s10
    48ea: ee87 4a05    	vdiv.f32	s8, s14, s10
    48ee: ee28 2a07    	vmul.f32	s4, s16, s14
    48f2: eeb0 5ac2    	vabs.f32	s10, s4
    48f6: eeb3 7a08    	vmov.f32	s14, #2.400000e+01
    48fa: eeb5 8a40    	vcmp.f32	s16, #0
    48fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4902: ee37 5a45    	vsub.f32	s10, s14, s10
    4906: eebb 7a01    	vmov.f32	s14, #-1.700000e+01
    490a: ee24 7a07    	vmul.f32	s14, s8, s14
    490e: fec5 0a0c    	vmaxnm.f32	s1, s10, s24
    4912: ee23 4a04    	vmul.f32	s8, s6, s8
    4916: ee27 6a06    	vmul.f32	s12, s14, s12
    491a: ed9f 7ae9    	vldr	s14, [pc, #932]         @ 0x4cc0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8e0>
    491e: ee87 7a20    	vdiv.f32	s14, s14, s1
    4922: eeb4 5a4c    	vcmp.f32	s10, s24
    4926: eeb0 5a6d    	vmov.f32	s10, s27
    492a: ee86 6a08    	vdiv.f32	s12, s12, s16
    492e: fe0d 6a86    	vseleq.f32	s12, s27, s12
    4932: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4936: ee23 6a06    	vmul.f32	s12, s6, s12
    493a: ee23 3a06    	vmul.f32	s6, s6, s12
    493e: eeb0 6a6d    	vmov.f32	s12, s27
    4942: dd3d         	ble	0x49c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x5e0> @ imm = #0x7a
    4944: eeb0 5a6d    	vmov.f32	s10, s27
    4948: eeb0 6a6d    	vmov.f32	s12, s27
    494c: eeb4 7a6c    	vcmp.f32	s14, s25
    4950: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4954: d534         	bpl	0x49c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x5e0> @ imm = #0x68
    4956: eeb0 5a6d    	vmov.f32	s10, s27
    495a: eeb0 6a6d    	vmov.f32	s12, s27
    495e: eeb5 2a40    	vcmp.f32	s4, #0
    4962: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4966: d02b         	beq	0x49c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x5e0> @ imm = #0x56
    4968: ee12 0a10    	vmov	r0, s4
    496c: f04f 517e    	mov.w	r1, #0x3f800000
    4970: ed9f 6ad3    	vldr	s12, [pc, #844]         @ 0x4cc0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8e0>
    4974: ee60 1aa0    	vmul.f32	s3, s1, s1
    4978: eddf 2ad2    	vldr	s5, [pc, #840]          @ 0x4cc4 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8e4>
    497c: eeb4 2a42    	vcmp.f32	s4, s4
    4980: f361 001e    	bfi	r0, r1, #0, #31
    4984: ee64 2a22    	vmul.f32	s5, s8, s5
    4988: ee05 0a10    	vmov	s10, r0
    498c: eddf 3acb    	vldr	s7, [pc, #812]          @ 0x4cbc <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8dc>
    4990: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4994: ee64 2a22    	vmul.f32	s5, s8, s5
    4998: ee25 6a06    	vmul.f32	s12, s10, s12
    499c: ee60 0aa1    	vmul.f32	s1, s1, s3
    49a0: ee24 5a06    	vmul.f32	s10, s8, s12
    49a4: ee26 6a03    	vmul.f32	s12, s12, s6
    49a8: eec2 0aa0    	vdiv.f32	s1, s5, s1
    49ac: fe13 5a85    	vselvs.f32	s10, s7, s10
    49b0: fe13 6a86    	vselvs.f32	s12, s7, s12
    49b4: ee85 5a21    	vdiv.f32	s10, s10, s3
    49b8: ee86 6a21    	vdiv.f32	s12, s12, s3
    49bc: ee30 6a86    	vadd.f32	s12, s1, s12
    49c0: eef0 0a6a    	vmov.f32	s1, s21
    49c4: ee49 0aaf    	vmla.f32	s1, s19, s31
    49c8: fec7 1a6c    	vminnm.f32	s3, s14, s25
    49cc: ee8e 7aa1    	vdiv.f32	s14, s29, s3
    49d0: ee60 0a87    	vmul.f32	s1, s1, s14
    49d4: eef0 2ae0    	vabs.f32	s5, s1
    49d8: eef4 2a6e    	vcmp.f32	s5, s29
    49dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    49e0: d932         	bls	0x4a48 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x668> @ imm = #0x64
    49e2: eece 2aa2    	vdiv.f32	s5, s29, s5
    49e6: ee62 3aa2    	vmul.f32	s7, s5, s5
    49ea: ee63 3aa3    	vmul.f32	s7, s7, s7
    49ee: ee63 4aa3    	vmul.f32	s9, s7, s7
    49f2: eef0 3a6e    	vmov.f32	s7, s29
    49f6: ee44 3aa4    	vmla.f32	s7, s9, s9
    49fa: eef0 4a6e    	vmov.f32	s9, s29
    49fe: eef4 3a6e    	vcmp.f32	s7, s29
    4a02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a06: d009         	beq	0x4a1c <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x63c> @ imm = #0x12
    4a08: eef0 4a63    	vmov.f32	s9, s7
    4a0c: eef1 4ae4    	vsqrt.f32	s9, s9
    4a10: eef1 4ae4    	vsqrt.f32	s9, s9
    4a14: eef1 4ae4    	vsqrt.f32	s9, s9
    4a18: eef1 4ae4    	vsqrt.f32	s9, s9
    4a1c: eec2 2aa4    	vdiv.f32	s5, s5, s9
    4a20: eece 5aa3    	vdiv.f32	s11, s29, s7
    4a24: e02f         	b	0x4a86 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x6a6> @ imm = #0x5e
    4a26: bf00         	nop
    4a28: 00 00 80 7f  	.word	0x7f800000
    4a2c: 00 00 00 00  	.word	0x00000000
    4a30: 5a 93 ab bc  	.word	0xbcab935a
    4a34: 08 e5 3c 1e  	.word	0x1e3ce508
    4a38: bd 37 06 36  	.word	0x360637bd
    4a3c: ac c5 a7 37  	.word	0x37a7c5ac
    4a40: 17 b7 d1 38  	.word	0x38d1b717
    4a44: 00 bf 00 bf  	.word	0xbf00bf00
    4a48: ee60 2aa0    	vmul.f32	s5, s1, s1
    4a4c: ee62 2aa2    	vmul.f32	s5, s5, s5
    4a50: ee62 2aa2    	vmul.f32	s5, s5, s5
    4a54: ee62 3aa2    	vmul.f32	s7, s5, s5
    4a58: eef0 2a6e    	vmov.f32	s5, s29
    4a5c: ee73 4aae    	vadd.f32	s9, s7, s29
    4a60: eef4 4a6e    	vcmp.f32	s9, s29
    4a64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a68: d009         	beq	0x4a7e <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x69e> @ imm = #0x12
    4a6a: eef0 2a64    	vmov.f32	s5, s9
    4a6e: eef1 2ae2    	vsqrt.f32	s5, s5
    4a72: eef1 2ae2    	vsqrt.f32	s5, s5
    4a76: eef1 2ae2    	vsqrt.f32	s5, s5
    4a7a: eef1 2ae2    	vsqrt.f32	s5, s5
    4a7e: eece 2aa2    	vdiv.f32	s5, s29, s5
    4a82: eec3 5aa4    	vdiv.f32	s11, s7, s9
    4a86: eef0 3a6d    	vmov.f32	s7, s27
    4a8a: eef0 4a6d    	vmov.f32	s9, s27
    4a8e: eef5 0a40    	vcmp.f32	s1, #0
    4a92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a96: d01a         	beq	0x4ace <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x6ee> @ imm = #0x34
    4a98: eef0 3a6d    	vmov.f32	s7, s27
    4a9c: eef0 4a6d    	vmov.f32	s9, s27
    4aa0: eef5 5a40    	vcmp.f32	s11, #0
    4aa4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4aa8: d011         	beq	0x4ace <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x6ee> @ imm = #0x22
    4aaa: eef3 4a01    	vmov.f32	s9, #1.700000e+01
    4aae: eefa 3a0e    	vmov.f32	s7, #-1.500000e+01
    4ab2: ee45 3aa4    	vmla.f32	s7, s11, s9
    4ab6: ee65 4aa2    	vmul.f32	s9, s11, s5
    4aba: ee62 5ae5    	vnmul.f32	s11, s5, s11
    4abe: ee64 3aa3    	vmul.f32	s7, s9, s7
    4ac2: ee60 4aa0    	vmul.f32	s9, s1, s1
    4ac6: eec3 3aa4    	vdiv.f32	s7, s7, s9
    4aca: eec5 4aa0    	vdiv.f32	s9, s11, s1
    4ace: ee61 1aa0    	vmul.f32	s3, s3, s1
    4ad2: eddf 6a7d    	vldr	s13, [pc, #500]         @ 0x4cc8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8e8>
    4ad6: ee70 5aa0    	vadd.f32	s11, s1, s1
    4ada: eeb0 ea4f    	vmov.f32	s28, s30
    4ade: ee65 6a26    	vmul.f32	s13, s10, s13
    4ae2: ee41 6ac6    	vmls.f32	s13, s3, s12
    4ae6: ee25 6a85    	vmul.f32	s12, s11, s10
    4aea: ee34 4a04    	vadd.f32	s8, s8, s8
    4aee: ee45 6a06    	vmla.f32	s13, s10, s12
    4af2: eeb0 6a6f    	vmov.f32	s12, s31
    4af6: ee00 6ac5    	vmls.f32	s12, s1, s10
    4afa: ee24 4a24    	vmul.f32	s8, s8, s9
    4afe: ee27 5a26    	vmul.f32	s10, s14, s13
    4b02: ee27 6a06    	vmul.f32	s12, s14, s12
    4b06: ee27 5a05    	vmul.f32	s10, s14, s10
    4b0a: ee26 7a23    	vmul.f32	s14, s12, s7
    4b0e: ee26 4a04    	vmul.f32	s8, s12, s8
    4b12: ee25 5a24    	vmul.f32	s10, s10, s9
    4b16: ee06 5a07    	vmla.f32	s10, s12, s14
    4b1a: ee03 4a22    	vmla.f32	s8, s6, s5
    4b1e: eeb0 3a6e    	vmov.f32	s6, s29
    4b22: ee02 4a05    	vmla.f32	s8, s4, s10
    4b26: eebe 2a00    	vmov.f32	s4, #-5.000000e-01
    4b2a: ee21 2a02    	vmul.f32	s4, s2, s4
    4b2e: ee22 2a04    	vmul.f32	s4, s4, s8
    4b32: ee82 0a00    	vdiv.f32	s0, s4, s0
    4b36: ee30 0a2e    	vadd.f32	s0, s0, s29
    4b3a: ee10 0a10    	vmov	r0, s0
    4b3e: 2800         	cmp	r0, #0x0
    4b40: f020 4100    	bic	r1, r0, #0x80000000
    4b44: f5a1 0100    	sub.w	r1, r1, #0x800000
    4b48: f1a0 0001    	sub.w	r0, r0, #0x1
    4b4c: fe20 2a2e    	vselge.f32	s4, s0, s29
    4b50: f1b1 4ffe    	cmp.w	r1, #0x7f000000
    4b54: f64f 71ff    	movw	r1, #0xffff
    4b58: bf38         	it	lo
    4b5a: eeb0 3a42    	vmovlo.f32	s6, s4
    4b5e: f2c0 017f    	movt	r1, #0x7f
    4b62: 4288         	cmp	r0, r1
    4b64: eb09 0005    	add.w	r0, r9, r5
    4b68: bf38         	it	lo
    4b6a: eeb0 3a40    	vmovlo.f32	s6, s0
    4b6e: ed9f 2b4a    	vldr	d2, [pc, #296]          @ 0x4c98 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8b8>
    4b72: ee81 0a03    	vdiv.f32	s0, s2, s6
    4b76: 60b0         	str	r0, [r6, #0x8]
    4b78: eeb0 1b4b    	vmov.f64	d1, d11
    4b7c: a804         	add	r0, sp, #0x10
    4b7e: ee30 0a29    	vadd.f32	s0, s0, s19
    4b82: eeb4 9a40    	vcmp.f32	s18, s0
    4b86: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b8a: fe39 0a00    	vselgt.f32	s0, s18, s0
    4b8e: eeb4 0a4a    	vcmp.f32	s0, s20
    4b92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b96: fe7a 9a00    	vselgt.f32	s19, s20, s0
    4b9a: edc4 9a07    	vstr	s19, [r4, #28]
    4b9e: eeb7 0ae9    	vcvt.f64.f32	d0, s19
    4ba2: ee00 1b02    	vmla.f64	d1, d0, d2
    4ba6: eef0 0a6a    	vmov.f32	s1, s21
    4baa: ee49 0aaf    	vmla.f32	s1, s19, s31
    4bae: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    4bb2: ed9f 1a3b    	vldr	s2, [pc, #236]          @ 0x4ca0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8c0>
    4bb6: ee00 ea01    	vmla.f32	s28, s0, s2
    4bba: eef4 8a4e    	vcmp.f32	s17, s28
    4bbe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bc2: fe38 0a8e    	vselgt.f32	s0, s17, s28
    4bc6: eeb4 0a4d    	vcmp.f32	s0, s26
    4bca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bce: fe3d 8a00    	vselgt.f32	s16, s26, s0
    4bd2: eeb0 0a48    	vmov.f32	s0, s16
    4bd6: f000 f87b    	bl	0x4cd0 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>> @ imm = #0xf6
    4bda: ed9d 0a04    	vldr	s0, [sp, #16]
    4bde: a031         	adr	r0, #196 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x833>
    4be0: ee39 1ac0    	vsub.f32	s2, s19, s0
    4be4: 9903         	ldr	r1, [sp, #0xc]
    4be6: eeb4 ea4d    	vcmp.f32	s28, s26
    4bea: ed9f 2a30    	vldr	s4, [pc, #192]          @ 0x4cac <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8cc>
    4bee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bf2: bf48         	it	mi
    4bf4: 4608         	movmi	r0, r1
    4bf6: eeb4 ea68    	vcmp.f32	s28, s17
    4bfa: ee11 1a10    	vmov	r1, s2
    4bfe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c02: ed90 0a00    	vldr	s0, [r0]
    4c06: ed9d 3a05    	vldr	s6, [sp, #20]
    4c0a: fe30 0a02    	vselgt.f32	s0, s0, s4
    4c0e: f021 4000    	bic	r0, r1, #0x80000000
    4c12: f1b0 4fff    	cmp.w	r0, #0x7f800000
    4c16: ed9d 4a06    	vldr	s8, [sp, #24]
    4c1a: ed9f 2a25    	vldr	s4, [pc, #148]          @ 0x4cb0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8d0>
    4c1e: f6bf ad6b    	bge.w	0x46f8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x318> @ imm = #-0x52a
    4c22: eeb3 2a08    	vmov.f32	s4, #2.400000e+01
    4c26: ee81 2a02    	vdiv.f32	s4, s2, s4
    4c2a: eeb0 2ac2    	vabs.f32	s4, s4
    4c2e: fe82 2a2d    	vmaxnm.f32	s4, s4, s27
    4c32: e561         	b	0x46f8 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x318> @ imm = #-0x53e
    4c34: 00 00 c0 7f  	.word	0x7fc00000
    4c38: 9902         	ldr	r1, [sp, #0x8]
    4c3a: f04f 40ff    	mov.w	r0, #0x7f800000
    4c3e: 6008         	str	r0, [r1]
    4c40: 2000         	movs	r0, #0x0
    4c42: f881 8004    	strb.w	r8, [r1, #0x4]
    4c46: e013         	b	0x4c70 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x890> @ imm = #0x26
    4c48: f04f 0803    	mov.w	r8, #0x3
    4c4c: ee12 0a10    	vmov	r0, s4
    4c50: 9901         	ldr	r1, [sp, #0x4]
    4c52: ed81 8a04    	vstr	s16, [r1, #16]
    4c56: 9902         	ldr	r1, [sp, #0x8]
    4c58: f020 4000    	bic	r0, r0, #0x80000000
    4c5c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    4c60: f04f 0000    	mov.w	r0, #0x0
    4c64: ed81 2a00    	vstr	s4, [r1]
    4c68: f881 8004    	strb.w	r8, [r1, #0x4]
    4c6c: bfb8         	it	lt
    4c6e: 2001         	movlt	r0, #0x1
    4c70: 7148         	strb	r0, [r1, #0x5]
    4c72: b008         	add	sp, #0x20
    4c74: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    4c78: b001         	add	sp, #0x4
    4c7a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    4c7e: bdf0         	pop	{r4, r5, r6, r7, pc}
    4c80: f24b 7090    	movw	r0, #0xb790
    4c84: f64b 0210    	movw	r2, #0xb810
    4c88: f2c0 0000    	movt	r0, #0x0
    4c8c: f2c0 0200    	movt	r2, #0x0
    4c90: a904         	add	r1, sp, #0x10
    4c92: f005 fba9    	bl	0xa3e8 <core::panicking::panic_fmt> @ imm = #0x5752
    4c96: bf00         	nop
    4c98: 34 aa a2 31  	.word	0x31a2aa34
    4c9c: 6b 72 95 bf  	.word	0xbf95726b
    4ca0: df 5b 59 44  	.word	0x44595bdf
    4ca4: 00 00 00 80  	.word	0x80000000
    4ca8: df 5b 59 c4  	.word	0xc4595bdf
    4cac: 00 00 00 80  	.word	0x80000000
    4cb0: 00 00 80 7f  	.word	0x7f800000
    4cb4: 00 00 00 00  	.word	0x00000000
    4cb8: 7a ad 91 c1  	.word	0xc191ad7a
    4cbc: 00 00 c0 7f  	.word	0x7fc00000
    4cc0: 00 00 70 42  	.word	0x42700000
    4cc4: 00 00 f0 42  	.word	0x42f00000
    4cc8: 75 e7 a4 3e  	.word	0x3ea4e775
    4ccc: d4 d4 d4 d4  	.word	0xd4d4d4d4

00004cd0 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>>:
    4cd0: b580         	push	{r7, lr}
    4cd2: 466f         	mov	r7, sp
    4cd4: eeb0 2ac0    	vabs.f32	s4, s0
    4cd8: eeb3 1a05    	vmov.f32	s2, #2.100000e+01
    4cdc: eeb4 2a41    	vcmp.f32	s4, s2
    4ce0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ce4: d93c         	bls	0x4d60 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x90> @ imm = #0x78
    4ce6: ee81 2a02    	vdiv.f32	s4, s2, s4
    4cea: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    4cee: ee22 3a02    	vmul.f32	s6, s4, s4
    4cf2: eeb0 6a45    	vmov.f32	s12, s10
    4cf6: ee23 3a03    	vmul.f32	s6, s6, s6
    4cfa: ee23 3a03    	vmul.f32	s6, s6, s6
    4cfe: ee23 3a03    	vmul.f32	s6, s6, s6
    4d02: ee33 4a05    	vadd.f32	s8, s6, s10
    4d06: eeb4 4a45    	vcmp.f32	s8, s10
    4d0a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d0e: d009         	beq	0x4d24 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x54> @ imm = #0x12
    4d10: eeb0 6a44    	vmov.f32	s12, s8
    4d14: eeb1 6ac6    	vsqrt.f32	s12, s12
    4d18: eeb1 6ac6    	vsqrt.f32	s12, s12
    4d1c: eeb1 6ac6    	vsqrt.f32	s12, s12
    4d20: eeb1 6ac6    	vsqrt.f32	s12, s12
    4d24: ee10 1a10    	vmov	r1, s0
    4d28: f04f 527e    	mov.w	r2, #0x3f800000
    4d2c: ee85 5a06    	vdiv.f32	s10, s10, s12
    4d30: ee22 2a03    	vmul.f32	s4, s4, s6
    4d34: f362 011e    	bfi	r1, r2, #0, #31
    4d38: eeb4 0a40    	vcmp.f32	s0, s0
    4d3c: ee07 1a10    	vmov	s14, r1
    4d40: ee85 4a04    	vdiv.f32	s8, s10, s8
    4d44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d48: ed9f 0a76    	vldr	s0, [pc, #472]          @ 0x4f24 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x254>
    4d4c: ee27 1a01    	vmul.f32	s2, s14, s2
    4d50: ee21 1a05    	vmul.f32	s2, s2, s10
    4d54: fe10 0a01    	vselvs.f32	s0, s0, s2
    4d58: ee22 1a04    	vmul.f32	s2, s4, s8
    4d5c: e025         	b	0x4daa <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0xda> @ imm = #0x4a
    4d5e: bf00         	nop
    4d60: ee80 1a01    	vdiv.f32	s2, s0, s2
    4d64: ee21 1a01    	vmul.f32	s2, s2, s2
    4d68: ee21 2a01    	vmul.f32	s4, s2, s2
    4d6c: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    4d70: ee22 3a02    	vmul.f32	s6, s4, s4
    4d74: eeb0 2a41    	vmov.f32	s4, s2
    4d78: ee03 2a03    	vmla.f32	s4, s6, s6
    4d7c: eeb0 3a41    	vmov.f32	s6, s2
    4d80: eeb4 2a41    	vcmp.f32	s4, s2
    4d84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d88: d009         	beq	0x4d9e <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0xce> @ imm = #0x12
    4d8a: eeb0 3a42    	vmov.f32	s6, s4
    4d8e: eeb1 3ac3    	vsqrt.f32	s6, s6
    4d92: eeb1 3ac3    	vsqrt.f32	s6, s6
    4d96: eeb1 3ac3    	vsqrt.f32	s6, s6
    4d9a: eeb1 3ac3    	vsqrt.f32	s6, s6
    4d9e: ee81 3a03    	vdiv.f32	s6, s2, s6
    4da2: ee83 1a02    	vdiv.f32	s2, s6, s4
    4da6: ee20 0a03    	vmul.f32	s0, s0, s6
    4daa: eeb0 2ac0    	vabs.f32	s4, s0
    4dae: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    4db2: eeb2 7a00    	vmov.f32	s14, #8.000000e+00
    4db6: ed9f 4a5c    	vldr	s8, [pc, #368]          @ 0x4f28 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x258>
    4dba: eef1 2a04    	vmov.f32	s5, #5.000000e+00
    4dbe: eeb0 5ae0    	vabs.f32	s10, s1
    4dc2: ee33 6a42    	vsub.f32	s12, s6, s4
    4dc6: eef7 3a00    	vmov.f32	s7, #1.000000e+00
    4dca: fe86 3a07    	vmaxnm.f32	s6, s12, s14
    4dce: eec4 1a03    	vdiv.f32	s3, s8, s6
    4dd2: fe81 2ae2    	vminnm.f32	s4, s3, s5
    4dd6: eec5 4a02    	vdiv.f32	s9, s10, s4
    4dda: eef4 4a63    	vcmp.f32	s9, s7
    4dde: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4de2: d935         	bls	0x4e50 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x180> @ imm = #0x6a
    4de4: ee82 5a05    	vdiv.f32	s10, s4, s10
    4de8: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    4dec: ee65 3a05    	vmul.f32	s7, s10, s10
    4df0: ee63 3aa3    	vmul.f32	s7, s7, s7
    4df4: ee63 5aa3    	vmul.f32	s11, s7, s7
    4df8: eef0 3a64    	vmov.f32	s7, s9
    4dfc: ee45 3aa5    	vmla.f32	s7, s11, s11
    4e00: eef0 5a64    	vmov.f32	s11, s9
    4e04: eef4 3a64    	vcmp.f32	s7, s9
    4e08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e0c: d009         	beq	0x4e22 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x152> @ imm = #0x12
    4e0e: eef0 5a63    	vmov.f32	s11, s7
    4e12: eef1 5ae5    	vsqrt.f32	s11, s11
    4e16: eef1 5ae5    	vsqrt.f32	s11, s11
    4e1a: eef1 5ae5    	vsqrt.f32	s11, s11
    4e1e: eef1 5ae5    	vsqrt.f32	s11, s11
    4e22: eec4 5aa5    	vdiv.f32	s11, s9, s11
    4e26: eef1 6a45    	vneg.f32	s13, s10
    4e2a: eec5 4aa3    	vdiv.f32	s9, s11, s7
    4e2e: eec6 0aa0    	vdiv.f32	s1, s13, s1
    4e32: ee65 3a25    	vmul.f32	s7, s10, s11
    4e36: ee60 0aa4    	vmul.f32	s1, s1, s9
    4e3a: eef4 1a62    	vcmp.f32	s3, s5
    4e3e: eddf 1a3b    	vldr	s3, [pc, #236]          @ 0x4f2c <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x25c>
    4e42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e46: d437         	bmi	0x4eb8 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x1e8> @ imm = #0x6e
    4e48: e056         	b	0x4ef8 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0xac
    4e4a: bf00         	nop
    4e4c: bf00         	nop
    4e4e: bf00         	nop
    4e50: ee24 5aa4    	vmul.f32	s10, s9, s9
    4e54: eef0 5a63    	vmov.f32	s11, s7
    4e58: ee25 5a05    	vmul.f32	s10, s10, s10
    4e5c: ee25 5a05    	vmul.f32	s10, s10, s10
    4e60: ee25 5a05    	vmul.f32	s10, s10, s10
    4e64: ee75 4a23    	vadd.f32	s9, s10, s7
    4e68: eef4 4a63    	vcmp.f32	s9, s7
    4e6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e70: d009         	beq	0x4e86 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x1b6> @ imm = #0x12
    4e72: eef0 5a64    	vmov.f32	s11, s9
    4e76: eef1 5ae5    	vsqrt.f32	s11, s11
    4e7a: eef1 5ae5    	vsqrt.f32	s11, s11
    4e7e: eef1 5ae5    	vsqrt.f32	s11, s11
    4e82: eef1 5ae5    	vsqrt.f32	s11, s11
    4e86: eec3 3aa5    	vdiv.f32	s7, s7, s11
    4e8a: eef5 0a40    	vcmp.f32	s1, #0
    4e8e: eef1 5a45    	vneg.f32	s11, s10
    4e92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e96: eec3 4aa4    	vdiv.f32	s9, s7, s9
    4e9a: eec5 5aa0    	vdiv.f32	s11, s11, s1
    4e9e: eddf 0a23    	vldr	s1, [pc, #140]          @ 0x4f2c <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x25c>
    4ea2: ee65 5aa4    	vmul.f32	s11, s11, s9
    4ea6: fe40 0aa5    	vseleq.f32	s1, s1, s11
    4eaa: eef4 1a62    	vcmp.f32	s3, s5
    4eae: eddf 1a1f    	vldr	s3, [pc, #124]          @ 0x4f2c <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x25c>
    4eb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4eb6: d51f         	bpl	0x4ef8 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x3e
    4eb8: eeb5 0a40    	vcmp.f32	s0, #0
    4ebc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ec0: d01a         	beq	0x4ef8 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x34
    4ec2: eeb4 6a47    	vcmp.f32	s12, s14
    4ec6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4eca: dd15         	ble	0x4ef8 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x2a
    4ecc: ee10 1a10    	vmov	r1, s0
    4ed0: f04f 527e    	mov.w	r2, #0x3f800000
    4ed4: eeb4 0a40    	vcmp.f32	s0, s0
    4ed8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4edc: f362 011e    	bfi	r1, r2, #0, #31
    4ee0: ee23 3a03    	vmul.f32	s6, s6, s6
    4ee4: ee06 1a10    	vmov	s12, r1
    4ee8: ee26 4a04    	vmul.f32	s8, s12, s8
    4eec: ed9f 6a0d    	vldr	s12, [pc, #52]          @ 0x4f24 <orange_dsp::bounded48_baseline::power::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>>+0x254>
    4ef0: fe16 4a04    	vselvs.f32	s8, s12, s8
    4ef4: eec4 1a03    	vdiv.f32	s3, s8, s6
    4ef8: ee85 2a02    	vdiv.f32	s4, s10, s4
    4efc: ee20 3a23    	vmul.f32	s6, s0, s7
    4f00: ed80 3a00    	vstr	s6, [r0]
    4f04: ee22 2a24    	vmul.f32	s4, s4, s9
    4f08: ee20 2a02    	vmul.f32	s4, s0, s4
    4f0c: ee20 0a20    	vmul.f32	s0, s0, s1
    4f10: ed80 0a02    	vstr	s0, [r0, #8]
    4f14: ee42 3a21    	vmla.f32	s7, s4, s3
    4f18: ee21 1a23    	vmul.f32	s2, s2, s7
    4f1c: ed80 1a01    	vstr	s2, [r0, #4]
    4f20: bd80         	pop	{r7, pc}
    4f22: bf00         	nop
    4f24: 00 00 c0 7f  	.word	0x7fc00000
    4f28: 00 00 70 42  	.word	0x42700000
    4f2c: 00 00 00 00  	.word	0x00000000

00004f30 <orange_dsp::generated_packed48::origin::<5>>:
    4f30: b580         	push	{r7, lr}
    4f32: 466f         	mov	r7, sp
    4f34: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    4f38: b084         	sub	sp, #0x10
    4f3a: edd1 ba01    	vldr	s23, [r1, #4]
    4f3e: ed91 1a02    	vldr	s2, [r1, #8]
    4f42: eeb7 2aeb    	vcvt.f64.f32	d2, s23
    4f46: edd1 6a03    	vldr	s13, [r1, #12]
    4f4a: ed9f 3be5    	vldr	d3, [pc, #916]          @ 0x52e0 <orange_dsp::generated_packed48::origin::<5>+0x3b0>
    4f4e: eef0 7a40    	vmov.f32	s15, s0
    4f52: edd1 ea04    	vldr	s29, [r1, #16]
    4f56: ee22 8b03    	vmul.f64	d8, d2, d3
    4f5a: eeb7 2ac1    	vcvt.f64.f32	d2, s2
    4f5e: ed91 6a06    	vldr	s12, [r1, #24]
    4f62: ed9f 3be1    	vldr	d3, [pc, #900]          @ 0x52e8 <orange_dsp::generated_packed48::origin::<5>+0x3b8>
    4f66: edd1 aa07    	vldr	s21, [r1, #28]
    4f6a: ed91 fa08    	vldr	s30, [r1, #32]
    4f6e: ee02 8b03    	vmla.f64	d8, d2, d3
    4f72: eeb7 2ae6    	vcvt.f64.f32	d2, s13
    4f76: ed91 ea09    	vldr	s28, [r1, #36]
    4f7a: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0x52f0 <orange_dsp::generated_packed48::origin::<5>+0x3c0>
    4f7e: eeb7 cacf    	vcvt.f64.f32	d12, s30
    4f82: ed91 ba0a    	vldr	s22, [r1, #40]
    4f86: ee02 8b03    	vmla.f64	d8, d2, d3
    4f8a: eeb7 2ac0    	vcvt.f64.f32	d2, s0
    4f8e: ed91 0a05    	vldr	s0, [r1, #20]
    4f92: ed9f 3bd9    	vldr	d3, [pc, #868]          @ 0x52f8 <orange_dsp::generated_packed48::origin::<5>+0x3c8>
    4f96: eeb7 dace    	vcvt.f64.f32	d13, s28
    4f9a: ed8d 1a02    	vstr	s2, [sp, #8]
    4f9e: ee22 3b03    	vmul.f64	d3, d2, d3
    4fa2: eeb7 2ac0    	vcvt.f64.f32	d2, s0
    4fa6: ed91 aa0b    	vldr	s20, [r1, #44]
    4faa: ed9f 4bd5    	vldr	d4, [pc, #852]          @ 0x5300 <orange_dsp::generated_packed48::origin::<5>+0x3d0>
    4fae: ed8d 0a03    	vstr	s0, [sp, #12]
    4fb2: eeb7 0aca    	vcvt.f64.f32	d0, s20
    4fb6: ee22 4b04    	vmul.f64	d4, d2, d4
    4fba: eeb7 2aee    	vcvt.f64.f32	d2, s29
    4fbe: edd1 fa0c    	vldr	s31, [r1, #48]
    4fc2: ed9f 5bd1    	vldr	d5, [pc, #836]          @ 0x5308 <orange_dsp::generated_packed48::origin::<5>+0x3d8>
    4fc6: ee02 4b05    	vmla.f64	d4, d2, d5
    4fca: eeb7 2ac6    	vcvt.f64.f32	d2, s12
    4fce: ed9f 5bd0    	vldr	d5, [pc, #832]          @ 0x5310 <orange_dsp::generated_packed48::origin::<5>+0x3e0>
    4fd2: ee02 4b05    	vmla.f64	d4, d2, d5
    4fd6: eeb7 5aea    	vcvt.f64.f32	d5, s21
    4fda: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x5318 <orange_dsp::generated_packed48::origin::<5>+0x3e8>
    4fde: ee05 4b09    	vmla.f64	d4, d5, d9
    4fe2: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x5320 <orange_dsp::generated_packed48::origin::<5>+0x3f0>
    4fe6: ee0c 4b09    	vmla.f64	d4, d12, d9
    4fea: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x5328 <orange_dsp::generated_packed48::origin::<5>+0x3f8>
    4fee: ee0d 4b09    	vmla.f64	d4, d13, d9
    4ff2: eeb7 9acb    	vcvt.f64.f32	d9, s22
    4ff6: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0x5330 <orange_dsp::generated_packed48::origin::<5>+0x400>
    4ffa: ee09 4b01    	vmla.f64	d4, d9, d1
    4ffe: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0x5338 <orange_dsp::generated_packed48::origin::<5>+0x408>
    5002: ee00 4b01    	vmla.f64	d4, d0, d1
    5006: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x5358 <orange_dsp::generated_packed48::origin::<5>+0x428>
    500a: ee25 5b01    	vmul.f64	d5, d5, d1
    500e: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x5360 <orange_dsp::generated_packed48::origin::<5>+0x430>
    5012: ee02 5b01    	vmla.f64	d5, d2, d1
    5016: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x5368 <orange_dsp::generated_packed48::origin::<5>+0x438>
    501a: ee0c 5b01    	vmla.f64	d5, d12, d1
    501e: eeb7 caef    	vcvt.f64.f32	d12, s31
    5022: ed9f 1bc7    	vldr	d1, [pc, #796]          @ 0x5340 <orange_dsp::generated_packed48::origin::<5>+0x410>
    5026: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0x5370 <orange_dsp::generated_packed48::origin::<5>+0x440>
    502a: ee0c 4b01    	vmla.f64	d4, d12, d1
    502e: ed91 1a0d    	vldr	s2, [r1, #52]
    5032: eddf 1afc    	vldr	s3, [pc, #1008]         @ 0x5424 <orange_dsp::generated_packed48::origin::<5>+0x4f4>
    5036: ee0d 5b02    	vmla.f64	d5, d13, d2
    503a: eeb7 dac1    	vcvt.f64.f32	d13, s2
    503e: ed9f 2bc2    	vldr	d2, [pc, #776]          @ 0x5348 <orange_dsp::generated_packed48::origin::<5>+0x418>
    5042: ee0d 4b02    	vmla.f64	d4, d13, d2
    5046: ed9f 2aec    	vldr	s4, [pc, #944]          @ 0x53f8 <orange_dsp::generated_packed48::origin::<5>+0x4c8>
    504a: ee26 7a02    	vmul.f32	s14, s12, s4
    504e: ed9f 2aeb    	vldr	s4, [pc, #940]          @ 0x53fc <orange_dsp::generated_packed48::origin::<5>+0x4cc>
    5052: ee0a 7a82    	vmla.f32	s14, s21, s4
    5056: ed9f 2af1    	vldr	s4, [pc, #964]          @ 0x541c <orange_dsp::generated_packed48::origin::<5>+0x4ec>
    505a: ee26 6a02    	vmul.f32	s12, s12, s4
    505e: ed9f 2af0    	vldr	s4, [pc, #960]          @ 0x5420 <orange_dsp::generated_packed48::origin::<5>+0x4f0>
    5062: ee0a 6a82    	vmla.f32	s12, s21, s4
    5066: ed9f 2ae6    	vldr	s4, [pc, #920]          @ 0x5400 <orange_dsp::generated_packed48::origin::<5>+0x4d0>
    506a: ee0f 7a02    	vmla.f32	s14, s30, s4
    506e: edd1 aa0e    	vldr	s21, [r1, #56]
    5072: eeb7 2aea    	vcvt.f64.f32	d2, s21
    5076: ee0f 6a21    	vmla.f32	s12, s30, s3
    507a: eddf 1ad7    	vldr	s3, [pc, #860]          @ 0x53d8 <orange_dsp::generated_packed48::origin::<5>+0x4a8>
    507e: ee2b faa1    	vmul.f32	s30, s23, s3
    5082: edd1 1a00    	vldr	s3, [r1]
    5086: eddf bad5    	vldr	s23, [pc, #852]         @ 0x53dc <orange_dsp::generated_packed48::origin::<5>+0x4ac>
    508a: ed8d 0b00    	vstr	d0, [sp]
    508e: ee01 faab    	vmla.f32	s30, s3, s23
    5092: eddf 1adc    	vldr	s3, [pc, #880]          @ 0x5404 <orange_dsp::generated_packed48::origin::<5>+0x4d4>
    5096: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0x5350 <orange_dsp::generated_packed48::origin::<5>+0x420>
    509a: ee0e 7a21    	vmla.f32	s14, s28, s3
    509e: eddf 1ae2    	vldr	s3, [pc, #904]          @ 0x5428 <orange_dsp::generated_packed48::origin::<5>+0x4f8>
    50a2: ee02 4b00    	vmla.f64	d4, d2, d0
    50a6: ee0e 6a21    	vmla.f32	s12, s28, s3
    50aa: eddf 1ace    	vldr	s3, [pc, #824]          @ 0x53e4 <orange_dsp::generated_packed48::origin::<5>+0x4b4>
    50ae: ed9d 0a02    	vldr	s0, [sp, #8]
    50b2: ed9f eacd    	vldr	s28, [pc, #820]         @ 0x53e8 <orange_dsp::generated_packed48::origin::<5>+0x4b8>
    50b6: ee60 1a21    	vmul.f32	s3, s0, s3
    50ba: eddf 0ad5    	vldr	s1, [pc, #852]          @ 0x5410 <orange_dsp::generated_packed48::origin::<5>+0x4e0>
    50be: ee46 1a8e    	vmla.f32	s3, s13, s28
    50c2: eddf 6ad1    	vldr	s13, [pc, #836]         @ 0x5408 <orange_dsp::generated_packed48::origin::<5>+0x4d8>
    50c6: ee0b 7a26    	vmla.f32	s14, s22, s13
    50ca: eddf 6ad8    	vldr	s13, [pc, #864]         @ 0x542c <orange_dsp::generated_packed48::origin::<5>+0x4fc>
    50ce: ee0b 6a26    	vmla.f32	s12, s22, s13
    50d2: eddf 6ac6    	vldr	s13, [pc, #792]         @ 0x53ec <orange_dsp::generated_packed48::origin::<5>+0x4bc>
    50d6: ee4e 1aa6    	vmla.f32	s3, s29, s13
    50da: eddf 6acc    	vldr	s13, [pc, #816]         @ 0x540c <orange_dsp::generated_packed48::origin::<5>+0x4dc>
    50de: ee0a 7a26    	vmla.f32	s14, s20, s13
    50e2: eddf 6ad3    	vldr	s13, [pc, #844]         @ 0x5430 <orange_dsp::generated_packed48::origin::<5>+0x500>
    50e6: ee0a 6a26    	vmla.f32	s12, s20, s13
    50ea: eddf 6abd    	vldr	s13, [pc, #756]         @ 0x53e0 <orange_dsp::generated_packed48::origin::<5>+0x4b0>
    50ee: ed9f bba2    	vldr	d11, [pc, #648]         @ 0x5378 <orange_dsp::generated_packed48::origin::<5>+0x448>
    50f2: ee0f 7aa0    	vmla.f32	s14, s31, s1
    50f6: eddf 0acf    	vldr	s1, [pc, #828]          @ 0x5434 <orange_dsp::generated_packed48::origin::<5>+0x504>
    50fa: ee09 5b0b    	vmla.f64	d5, d9, d11
    50fe: ee0f 6aa0    	vmla.f32	s12, s31, s1
    5102: eddf 0ac4    	vldr	s1, [pc, #784]          @ 0x5414 <orange_dsp::generated_packed48::origin::<5>+0x4e4>
    5106: ed9f 9b9e    	vldr	d9, [pc, #632]          @ 0x5380 <orange_dsp::generated_packed48::origin::<5>+0x450>
    510a: ee01 7a20    	vmla.f32	s14, s2, s1
    510e: eddf 0aca    	vldr	s1, [pc, #808]          @ 0x5438 <orange_dsp::generated_packed48::origin::<5>+0x508>
    5112: ed9d bb00    	vldr	d11, [sp]
    5116: ee01 6a20    	vmla.f32	s12, s2, s1
    511a: ed9d 0a03    	vldr	s0, [sp, #12]
    511e: ee0b 5b09    	vmla.f64	d5, d11, d9
    5122: ee07 faa6    	vmla.f32	s30, s15, s13
    5126: eddf 6ab2    	vldr	s13, [pc, #712]         @ 0x53f0 <orange_dsp::generated_packed48::origin::<5>+0x4c0>
    512a: ed9f 9b97    	vldr	d9, [pc, #604]          @ 0x5388 <orange_dsp::generated_packed48::origin::<5>+0x458>
    512e: ed9f 1ac3    	vldr	s2, [pc, #780]          @ 0x543c <orange_dsp::generated_packed48::origin::<5>+0x50c>
    5132: ee40 1a26    	vmla.f32	s3, s0, s13
    5136: ee0c 5b09    	vmla.f64	d5, d12, d9
    513a: eddf 6aae    	vldr	s13, [pc, #696]         @ 0x53f4 <orange_dsp::generated_packed48::origin::<5>+0x4c4>
    513e: ee0a 6a81    	vmla.f32	s12, s21, s2
    5142: ed9f 9b93    	vldr	d9, [pc, #588]          @ 0x5390 <orange_dsp::generated_packed48::origin::<5>+0x460>
    5146: ed91 1a0f    	vldr	s2, [r1, #60]
    514a: ee27 0aa6    	vmul.f32	s0, s15, s13
    514e: ee0d 5b09    	vmla.f64	d5, d13, d9
    5152: eddf 6ab1    	vldr	s13, [pc, #708]         @ 0x5418 <orange_dsp::generated_packed48::origin::<5>+0x4e8>
    5156: ed9f 9b90    	vldr	d9, [pc, #576]          @ 0x5398 <orange_dsp::generated_packed48::origin::<5>+0x468>
    515a: ee0a 7aa6    	vmla.f32	s14, s21, s13
    515e: eddf 0ab8    	vldr	s1, [pc, #736]          @ 0x5440 <orange_dsp::generated_packed48::origin::<5>+0x510>
    5162: ee02 5b09    	vmla.f64	d5, d2, d9
    5166: eeb7 9ac1    	vcvt.f64.f32	d9, s2
    516a: edd1 6a10    	vldr	s13, [r1, #64]
    516e: ed9f ab8c    	vldr	d10, [pc, #560]         @ 0x53a0 <orange_dsp::generated_packed48::origin::<5>+0x470>
    5172: eddf 7ab4    	vldr	s15, [pc, #720]         @ 0x5444 <orange_dsp::generated_packed48::origin::<5>+0x514>
    5176: ee61 0a20    	vmul.f32	s1, s2, s1
    517a: ee46 0aa7    	vmla.f32	s1, s13, s15
    517e: edd1 7a11    	vldr	s15, [r1, #68]
    5182: ee09 5b0a    	vmla.f64	d5, d9, d10
    5186: eeb7 9ae6    	vcvt.f64.f32	d9, s13
    518a: ed9f 2aaf    	vldr	s4, [pc, #700]          @ 0x5448 <orange_dsp::generated_packed48::origin::<5>+0x518>
    518e: ed9f ab86    	vldr	d10, [pc, #536]         @ 0x53a8 <orange_dsp::generated_packed48::origin::<5>+0x478>
    5192: ee47 0a82    	vmla.f32	s1, s15, s4
    5196: ed91 1a12    	vldr	s2, [r1, #72]
    519a: ee09 5b0a    	vmla.f64	d5, d9, d10
    519e: eeb7 9ae7    	vcvt.f64.f32	d9, s15
    51a2: ed9f 2aaa    	vldr	s4, [pc, #680]          @ 0x544c <orange_dsp::generated_packed48::origin::<5>+0x51c>
    51a6: ed9f ab82    	vldr	d10, [pc, #520]         @ 0x53b0 <orange_dsp::generated_packed48::origin::<5>+0x480>
    51aa: ee41 0a02    	vmla.f32	s1, s2, s4
    51ae: ed9f 2aa8    	vldr	s4, [pc, #672]          @ 0x5450 <orange_dsp::generated_packed48::origin::<5>+0x520>
    51b2: ee29 9b0a    	vmul.f64	d9, d9, d10
    51b6: eeb7 aac1    	vcvt.f64.f32	d10, s2
    51ba: edd1 6a14    	vldr	s13, [r1, #80]
    51be: ee21 ba02    	vmul.f32	s22, s2, s4
    51c2: ed9f 2aa4    	vldr	s4, [pc, #656]          @ 0x5454 <orange_dsp::generated_packed48::origin::<5>+0x524>
    51c6: ed9f cb7c    	vldr	d12, [pc, #496]         @ 0x53b8 <orange_dsp::generated_packed48::origin::<5>+0x488>
    51ca: ee07 ba82    	vmla.f32	s22, s15, s4
    51ce: edd1 7a13    	vldr	s15, [r1, #76]
    51d2: eeb7 2ae6    	vcvt.f64.f32	d2, s13
    51d6: ed91 1a16    	vldr	s2, [r1, #88]
    51da: ee0a 9b0c    	vmla.f64	d9, d10, d12
    51de: eeb7 cae7    	vcvt.f64.f32	d12, s15
    51e2: ed9f ab77    	vldr	d10, [pc, #476]         @ 0x53c0 <orange_dsp::generated_packed48::origin::<5>+0x490>
    51e6: ee30 7a07    	vadd.f32	s14, s0, s14
    51ea: ed9f db77    	vldr	d13, [pc, #476]         @ 0x53c8 <orange_dsp::generated_packed48::origin::<5>+0x498>
    51ee: ee30 6a06    	vadd.f32	s12, s0, s12
    51f2: ee22 ab0a    	vmul.f64	d10, d2, d10
    51f6: edd1 2a15    	vldr	s5, [r1, #84]
    51fa: ed9f 2a9a    	vldr	s4, [pc, #616]          @ 0x5464 <orange_dsp::generated_packed48::origin::<5>+0x534>
    51fe: ee0c ab0d    	vmla.f64	d10, d12, d13
    5202: eeb7 cae2    	vcvt.f64.f32	d12, s5
    5206: ed9f db72    	vldr	d13, [pc, #456]         @ 0x53d0 <orange_dsp::generated_packed48::origin::<5>+0x4a0>
    520a: ee21 ea02    	vmul.f32	s28, s2, s4
    520e: ed9f 1a96    	vldr	s2, [pc, #600]          @ 0x5468 <orange_dsp::generated_packed48::origin::<5>+0x538>
    5212: ee0c ab0d    	vmla.f64	d10, d12, d13
    5216: ed9f da90    	vldr	s26, [pc, #576]         @ 0x5458 <orange_dsp::generated_packed48::origin::<5>+0x528>
    521a: ee02 ea81    	vmla.f32	s28, s5, s2
    521e: ee07 ba8d    	vmla.f32	s22, s15, s26
    5222: ee30 ca21    	vadd.f32	s24, s0, s3
    5226: ee33 1b04    	vadd.f64	d1, d3, d4
    522a: ee70 0a20    	vadd.f32	s1, s0, s1
    522e: ee33 4b05    	vadd.f64	d4, d3, d5
    5232: eeb7 cacc    	vcvt.f64.f32	d12, s24
    5236: ee33 5b09    	vadd.f64	d5, d3, d9
    523a: eeb7 9ac7    	vcvt.f64.f32	d9, s14
    523e: ed9f 7a87    	vldr	s14, [pc, #540]         @ 0x545c <orange_dsp::generated_packed48::origin::<5>+0x52c>
    5242: ee26 7a87    	vmul.f32	s14, s13, s14
    5246: ee33 2b08    	vadd.f64	d2, d3, d8
    524a: eeb7 8acf    	vcvt.f64.f32	d8, s30
    524e: ee33 3b0a    	vadd.f64	d3, d3, d10
    5252: ed9f aa83    	vldr	s20, [pc, #524]         @ 0x5460 <orange_dsp::generated_packed48::origin::<5>+0x530>
    5256: ed80 8b00    	vstr	d8, [r0]
    525a: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    525e: ee3b 6a07    	vadd.f32	s12, s22, s14
    5262: ee17 7a8a    	vnmls.f32	s14, s15, s20
    5266: ed80 8b06    	vstr	d8, [r0, #24]
    526a: ee30 6a06    	vadd.f32	s12, s0, s12
    526e: ed80 9b04    	vstr	d9, [r0, #16]
    5272: eeb7 9ae0    	vcvt.f64.f32	d9, s1
    5276: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    527a: ee30 6a07    	vadd.f32	s12, s0, s14
    527e: ee30 7a0e    	vadd.f32	s14, s0, s28
    5282: ed80 8b0a    	vstr	d8, [r0, #40]
    5286: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    528a: ed9f 6a78    	vldr	s12, [pc, #480]         @ 0x546c <orange_dsp::generated_packed48::origin::<5>+0x53c>
    528e: ed80 8b0c    	vstr	d8, [r0, #48]
    5292: eeb7 8ac7    	vcvt.f64.f32	d8, s14
    5296: ed9f 7a76    	vldr	s14, [pc, #472]         @ 0x5470 <orange_dsp::generated_packed48::origin::<5>+0x540>
    529a: ee27 6a86    	vmul.f32	s12, s15, s12
    529e: ee06 6a87    	vmla.f32	s12, s13, s14
    52a2: ed80 cb02    	vstr	d12, [r0, #8]
    52a6: ed80 9b08    	vstr	d9, [r0, #32]
    52aa: ed80 8b0e    	vstr	d8, [r0, #56]
    52ae: ee30 0a06    	vadd.f32	s0, s0, s12
    52b2: ed80 2b10    	vstr	d2, [r0, #64]
    52b6: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    52ba: ed80 1b12    	vstr	d1, [r0, #72]
    52be: ed80 4b14    	vstr	d4, [r0, #80]
    52c2: ed80 5b16    	vstr	d5, [r0, #88]
    52c6: ed80 3b18    	vstr	d3, [r0, #96]
    52ca: ed80 0b1a    	vstr	d0, [r0, #104]
    52ce: ed80 0b1c    	vstr	d0, [r0, #112]
    52d2: b004         	add	sp, #0x10
    52d4: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    52d8: bd80         	pop	{r7, pc}
    52da: bf00         	nop
    52dc: bf00         	nop
    52de: bf00         	nop
    52e0: 6e 40 0c 4e  	.word	0x4e0c406e
    52e4: b8 53 e5 bf  	.word	0xbfe553b8
    52e8: b5 18 92 48  	.word	0x489218b5
    52ec: 84 c8 d6 3f  	.word	0x3fd6c884
    52f0: 22 e0 8f 40  	.word	0x408fe022
    52f4: 33 ab d2 bf  	.word	0xbfd2ab33
    52f8: 00 00 00 00  	.word	0x00000000
    52fc: 00 00 00 00  	.word	0x00000000
    5300: e0 ac 6e 54  	.word	0x546eace0
    5304: 7b 2b e5 bf  	.word	0xbfe52b7b
    5308: 14 98 58 8b  	.word	0x8b589814
    530c: ef 36 cc bf  	.word	0xbfcc36ef
    5310: ad 60 98 e7  	.word	0xe79860ad
    5314: 08 64 ad bf  	.word	0xbfad6408
    5318: d3 eb b9 11  	.word	0x11b9ebd3
    531c: 6a 57 e2 bf  	.word	0xbfe2576a
    5320: e1 e9 a5 17  	.word	0x17a5e9e1
    5324: 39 2c e2 bf  	.word	0xbfe22c39
    5328: a4 ed d1 ac  	.word	0xacd1eda4
    532c: a5 a0 d9 3f  	.word	0x3fd9a0a5
    5330: 9c fd 2d 0f  	.word	0x0f2dfd9c
    5334: 37 30 90 bf  	.word	0xbf903037
    5338: 1d 38 33 59  	.word	0x5933381d
    533c: 56 75 68 bf  	.word	0xbf687556
    5340: 8f 2d 3e ae  	.word	0xae3e2d8f
    5344: c6 fe 63 3f  	.word	0x3f63fec6
    5348: dc 27 9e 33  	.word	0x339e27dc
    534c: ca 42 8f bf  	.word	0xbf8f42ca
    5350: 13 ae df e7  	.word	0xe7dfae13
    5354: c9 94 40 bf  	.word	0xbf4094c9
    5358: 5f fc 7e 6b  	.word	0x6b7efc5f
    535c: 32 8f 9c bf  	.word	0xbf9c8f32
    5360: 9a 8c 01 32  	.word	0x32018c9a
    5364: dd 88 91 3f  	.word	0x3f9188dd
    5368: 4e 36 a1 ad  	.word	0xada1364e
    536c: f1 4b 9c bf  	.word	0xbf9c4bf1
    5370: e9 e7 2b d9  	.word	0xd92be7e9
    5374: ce 57 c9 bf  	.word	0xbfc957ce
    5378: 17 b3 4c 2b  	.word	0x2b4cb317
    537c: 2a 6c d3 bf  	.word	0xbfd36c2a
    5380: da f6 1c 8e  	.word	0x8e1cf6da
    5384: 04 6f d0 bf  	.word	0xbfd06f04
    5388: 80 a2 82 14  	.word	0x1482a280
    538c: 54 02 d7 bf  	.word	0xbfd70254
    5390: bd e1 52 77  	.word	0x7752e1bd
    5394: 2e 05 d4 3f  	.word	0x3fd4052e
    5398: e2 9d 81 ef  	.word	0xef819de2
    539c: 00 c2 e3 bf  	.word	0xbfe3c200
    53a0: 2e a6 61 06  	.word	0x0661a62e
    53a4: af ba 97 bf  	.word	0xbf97baaf
    53a8: 21 77 ba 04  	.word	0x04ba7721
    53ac: d6 95 d4 bf  	.word	0xbfd495d6
    53b0: c5 06 ea 2a  	.word	0x2aea06c5
    53b4: ea 1c b2 bf  	.word	0xbfb21cea
    53b8: cc 3c 73 b3  	.word	0xb3733ccc
    53bc: 3d f9 d9 3f  	.word	0x3fd9f93d
    53c0: c1 9c 8b d0  	.word	0xd08b9cc1
    53c4: 4e d5 e0 bf  	.word	0xbfe0d54e
    53c8: de 65 e6 b3  	.word	0xb3e665de
    53cc: 0b d2 d0 bf  	.word	0xbfd0d20b
    53d0: ca f1 a1 19  	.word	0x19a1f1ca
    53d4: f3 e2 e4 bf  	.word	0xbfe4e2f3
    53d8: 73 e7 32 35  	.word	0x3532e773
    53dc: b0 0f a1 36  	.word	0x36a10fb0
    53e0: 24 7b b2 37  	.word	0x37b27b24
    53e4: 5f e6 6e b6  	.word	0xb66ee65f
    53e8: 8c c1 43 36  	.word	0x3643c18c
    53ec: 92 fd 3a 38  	.word	0x383afd92
    53f0: d9 c9 fb 34  	.word	0x34fbc9d9
    53f4: 00 00 00 00  	.word	0x00000000
    53f8: d0 24 c4 b6  	.word	0xb6c424d0
    53fc: d6 bb 1f 37  	.word	0x371fbbd6
    5400: b0 43 1e 37  	.word	0x371e43b0
    5404: 96 be 8d 38  	.word	0x388dbe96
    5408: e6 ca ec 36  	.word	0x36eccae6
    540c: 65 e1 b2 35  	.word	0x35b2e165
    5410: 13 3d 92 b5  	.word	0xb5923d13
    5414: d1 a1 e4 36  	.word	0x36e4a1d1
    5418: 06 8a 72 34  	.word	0x34728a06
    541c: e3 50 6c b7  	.word	0xb76c50e3
    5420: e2 72 c0 37  	.word	0x37c072e2
    5424: b2 ad be 37  	.word	0x37beadb2
    5428: a0 0e af b8  	.word	0xb8af0ea0
    542c: ce 28 5d 36  	.word	0x365d28ce
    5430: 17 12 27 35  	.word	0x35271217
    5434: 75 95 08 b5  	.word	0xb5089575
    5438: a6 89 55 36  	.word	0x365589a6
    543c: cf 86 e2 33  	.word	0x33e286cf
    5440: ee 69 1b b6  	.word	0xb61b69ee
    5444: 05 9f 10 38  	.word	0x38109f05
    5448: 14 0d ca 35  	.word	0x35ca0d14
    544c: 5b de 10 b7  	.word	0xb710de5b
    5450: 67 b8 7c b7  	.word	0xb77cb867
    5454: af 1b 05 b7  	.word	0xb7051baf
    5458: 18 81 ad 38  	.word	0x38ad8118
    545c: 37 a2 bb 36  	.word	0x36bba237
    5460: 18 81 ad b8  	.word	0xb8ad8118
    5464: 7b 29 9c 3b  	.word	0x3b9c297b
    5468: 4f e0 f8 37  	.word	0x37f8e04f
    546c: 70 88 2a bf  	.word	0xbf2a8870
    5470: ca 11 14 38  	.word	0x381411ca
    5474: d4 d4 d4 d4  	.word	0xd4d4d4d4

00005478 <orange_dsp::generated_packed48::update::<5>>:
    5478: b580         	push	{r7, lr}
    547a: 466f         	mov	r7, sp
    547c: e8bd 4080    	pop.w	{r7, lr}
    5480: f004 bfb6    	b.w	0xa3f0 <orange_dsp::generated_condensed48::update> @ imm = #0x4f6c
    5484: d4d4         	bmi	0x5430 <orange_dsp::generated_packed48::origin::<5>+0x500> @ imm = #-0x58
    5486: d4d4         	bmi	0x5432 <orange_dsp::generated_packed48::origin::<5>+0x502> @ imm = #-0x58

00005488 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>>:
    5488: b5f0         	push	{r4, r5, r6, r7, lr}
    548a: af03         	add	r7, sp, #0xc
    548c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    5490: b081         	sub	sp, #0x4
    5492: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    5496: eeba 1a0e    	vmov.f32	s2, #-1.500000e+01
    549a: ed91 2a00    	vldr	s4, [r1]
    549e: ed9f 3af5    	vldr	s6, [pc, #980]          @ 0x5874 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3ec>
    54a2: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    54a6: eefe 1a00    	vmov.f32	s3, #-5.000000e-01
    54aa: f04f 5c7e    	mov.w	r12, #0x3f800000
    54ae: ee32 4a01    	vadd.f32	s8, s4, s2
    54b2: ee71 5a42    	vsub.f32	s11, s2, s4
    54b6: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    54ba: ee84 5a03    	vdiv.f32	s10, s8, s6
    54be: ed9f 4aee    	vldr	s8, [pc, #952]          @ 0x5878 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3f0>
    54c2: eec5 5a83    	vdiv.f32	s11, s11, s6
    54c6: eddf 0aed    	vldr	s1, [pc, #948]          @ 0x587c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3f4>
    54ca: eeb4 4a45    	vcmp.f32	s8, s10
    54ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54d2: fe34 6a05    	vselgt.f32	s12, s8, s10
    54d6: ed9f 5af7    	vldr	s10, [pc, #988]         @ 0x58b4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x42c>
    54da: eeb4 6a45    	vcmp.f32	s12, s10
    54de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54e2: fe75 7a06    	vselgt.f32	s15, s10, s12
    54e6: ed9f 6af4    	vldr	s12, [pc, #976]         @ 0x58b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x430>
    54ea: ee67 2a86    	vmul.f32	s5, s15, s12
    54ee: ee72 3a87    	vadd.f32	s7, s5, s14
    54f2: eef5 2a40    	vcmp.f32	s5, #0
    54f6: ee72 4aa1    	vadd.f32	s9, s5, s3
    54fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54fe: eefd 3ae3    	vcvt.s32.f32	s7, s7
    5502: eefd 4ae4    	vcvt.s32.f32	s9, s9
    5506: eeb4 4a65    	vcmp.f32	s8, s11
    550a: ee13 6a90    	vmov	r6, s7
    550e: ee14 3a90    	vmov	r3, s9
    5512: bfa8         	it	ge
    5514: 4633         	movge	r3, r6
    5516: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    551a: fe74 2a25    	vselgt.f32	s5, s8, s11
    551e: eddf 5aea    	vldr	s11, [pc, #936]         @ 0x58c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x440>
    5522: eeb0 aa65    	vmov.f32	s20, s11
    5526: eeb0 ba65    	vmov.f32	s22, s11
    552a: eef4 2a45    	vcmp.f32	s5, s10
    552e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5532: fe35 8a22    	vselgt.f32	s16, s10, s5
    5536: ee68 2a06    	vmul.f32	s5, s16, s12
    553a: ee72 3aa1    	vadd.f32	s7, s5, s3
    553e: eef5 2a40    	vcmp.f32	s5, #0
    5542: ee72 4a87    	vadd.f32	s9, s5, s14
    5546: ee02 3a90    	vmov	s5, r3
    554a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    554e: eefd 3ae3    	vcvt.s32.f32	s7, s7
    5552: eb0c 53c3    	add.w	r3, r12, r3, lsl #23
    5556: eefd 4ae4    	vcvt.s32.f32	s9, s9
    555a: ee13 6a90    	vmov	r6, s7
    555e: eef8 3ae2    	vcvt.f32.s32	s7, s5
    5562: ee14 5a90    	vmov	r5, s9
    5566: bfa8         	it	ge
    5568: 462e         	movge	r6, r5
    556a: ee02 6a90    	vmov	s5, r6
    556e: eb0c 56c6    	add.w	r6, r12, r6, lsl #23
    5572: eef8 4ae2    	vcvt.f32.s32	s9, s5
    5576: eddf 2ad1    	vldr	s5, [pc, #836]          @ 0x58bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x434>
    557a: ee43 7ae2    	vmls.f32	s15, s7, s5
    557e: eddf 3ad1    	vldr	s7, [pc, #836]          @ 0x58c4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x43c>
    5582: eef0 6a63    	vmov.f32	s13, s7
    5586: eeb0 9a63    	vmov.f32	s18, s7
    558a: ee04 8ae2    	vmls.f32	s16, s9, s5
    558e: eddf 4acc    	vldr	s9, [pc, #816]          @ 0x58c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x438>
    5592: ee47 6aa4    	vmla.f32	s13, s15, s9
    5596: ee08 9a24    	vmla.f32	s18, s16, s9
    559a: ee28 ca08    	vmul.f32	s24, s16, s16
    559e: ee07 aaa6    	vmla.f32	s20, s15, s13
    55a2: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    55a6: ee08 ba09    	vmla.f32	s22, s16, s18
    55aa: eeb0 9a47    	vmov.f32	s18, s14
    55ae: ee07 9a8a    	vmla.f32	s18, s15, s20
    55b2: eeb0 aa47    	vmov.f32	s20, s14
    55b6: ee08 aa0b    	vmla.f32	s20, s16, s22
    55ba: ee27 baa7    	vmul.f32	s22, s15, s15
    55be: ee77 7aa6    	vadd.f32	s15, s15, s13
    55c2: ee38 8a26    	vadd.f32	s16, s16, s13
    55c6: ee4b 7a09    	vmla.f32	s15, s22, s18
    55ca: ee09 3a10    	vmov	s18, r3
    55ce: eeb0 ba40    	vmov.f32	s22, s0
    55d2: ee02 ba20    	vmla.f32	s22, s4, s1
    55d6: ee0c 8a0a    	vmla.f32	s16, s24, s20
    55da: ee0a 6a10    	vmov	s20, r6
    55de: ee27 9a89    	vmul.f32	s18, s15, s18
    55e2: eddf 7aba    	vldr	s15, [pc, #744]         @ 0x58cc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x444>
    55e6: ee28 aa0a    	vmul.f32	s20, s16, s20
    55ea: ee39 8a4a    	vsub.f32	s16, s18, s20
    55ee: ee18 ba27    	vnmls.f32	s22, s16, s15
    55f2: ed9f 8ab7    	vldr	s16, [pc, #732]         @ 0x58d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x448>
    55f6: eef0 8a48    	vmov.f32	s17, s16
    55fa: ee1b 3a10    	vmov	r3, s22
    55fe: f023 4300    	bic	r3, r3, #0x80000000
    5602: f1b3 4fff    	cmp.w	r3, #0x7f800000
    5606: da09         	bge	0x561c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x194> @ imm = #0x12
    5608: ed9f cab2    	vldr	s24, [pc, #712]         @ 0x58d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x44c>
    560c: ee8b ca0c    	vdiv.f32	s24, s22, s24
    5610: ed9f dab1    	vldr	s26, [pc, #708]         @ 0x58d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x450>
    5614: eeb0 cacc    	vabs.f32	s24, s24
    5618: fecc 8a0d    	vmaxnm.f32	s17, s24, s26
    561c: ee79 aa0a    	vadd.f32	s21, s18, s20
    5620: 6894         	ldr	r4, [r2, #0x8]
    5622: eef1 9a4b    	vneg.f32	s19, s22
    5626: f104 0901    	add.w	r9, r4, #0x1
    562a: e9d2 3800    	ldrd	r3, r8, [r2]
    562e: f108 0e03    	add.w	lr, r8, #0x3
    5632: f103 0a02    	add.w	r10, r3, #0x2
    5636: f04f 0b00    	mov.w	r11, #0x0
    563a: ed9f 9aa8    	vldr	s18, [pc, #672]         @ 0x58dc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x454>
    563e: ed9f aaa8    	vldr	s20, [pc, #672]         @ 0x58e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x458>
    5642: 2400         	movs	r4, #0x0
    5644: ed9f baa7    	vldr	s22, [pc, #668]         @ 0x58e4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x45c>
    5648: 1c5e         	adds	r6, r3, #0x1
    564a: ed9f caa7    	vldr	s24, [pc, #668]         @ 0x58e8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x460>
    564e: 6016         	str	r6, [r2]
    5650: ed9f daa6    	vldr	s26, [pc, #664]         @ 0x58ec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x464>
    5654: ed9f ea9f    	vldr	s28, [pc, #636]         @ 0x58d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x44c>
    5658: ed9f fa9f    	vldr	s30, [pc, #636]         @ 0x58d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x450>
    565c: e00d         	b	0x567a <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x1f2> @ imm = #0x1a
    565e: bf00         	nop
    5660: ee7a aaab    	vadd.f32	s21, s21, s23
    5664: 1c63         	adds	r3, r4, #0x1
    5666: eef1 9a69    	vneg.f32	s19, s19
    566a: 4454         	add	r4, r10
    566c: 2b03         	cmp	r3, #0x3
    566e: 6014         	str	r4, [r2]
    5670: f10b 0b01    	add.w	r11, r11, #0x1
    5674: 461c         	mov	r4, r3
    5676: f000 8103    	beq.w	0x5880 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3f8> @ imm = #0x206
    567a: ee6a aaa7    	vmul.f32	s21, s21, s15
    567e: 2600         	movs	r6, #0x0
    5680: eeca aa83    	vdiv.f32	s21, s21, s6
    5684: ee7a aa89    	vadd.f32	s21, s21, s18
    5688: ee1a 5a90    	vmov	r5, s21
    568c: eef0 baea    	vabs.f32	s23, s21
    5690: f025 4500    	bic	r5, r5, #0x80000000
    5694: eef4 ba4a    	vcmp.f32	s23, s20
    5698: f1b5 4fff    	cmp.w	r5, #0x7f800000
    569c: f04f 0500    	mov.w	r5, #0x0
    56a0: bfa8         	it	ge
    56a2: 2501         	movge	r5, #0x1
    56a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56a8: bf48         	it	mi
    56aa: 2601         	movmi	r6, #0x1
    56ac: 4335         	orrs	r5, r6
    56ae: f040 80cf    	bne.w	0x5850 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3c8> @ imm = #0x19e
    56b2: eec9 9aaa    	vdiv.f32	s19, s19, s21
    56b6: ee19 5a90    	vmov	r5, s19
    56ba: f025 4500    	bic	r5, r5, #0x80000000
    56be: f1b5 4fff    	cmp.w	r5, #0x7f800000
    56c2: f280 80c5    	bge.w	0x5850 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3c8> @ imm = #0x18a
    56c6: eef0 aac2    	vabs.f32	s21, s4
    56ca: eef0 bae9    	vabs.f32	s23, s19
    56ce: eef4 aa6a    	vcmp.f32	s21, s21
    56d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56d6: fe56 aaaa    	vselvs.f32	s21, s13, s21
    56da: eef4 aa66    	vcmp.f32	s21, s13
    56de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56e2: fe7a aaa6    	vselgt.f32	s21, s21, s13
    56e6: ee6a aa8b    	vmul.f32	s21, s21, s22
    56ea: feca aacc    	vminnm.f32	s21, s21, s24
    56ee: eef4 ba6a    	vcmp.f32	s23, s21
    56f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56f6: d805         	bhi	0x5704 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x27c> @ imm = #0xa
    56f8: eef4 8a4d    	vcmp.f32	s17, s26
    56fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5700: f240 80b2    	bls.w	0x5868 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3e0> @ imm = #0x164
    5704: ee39 2a82    	vadd.f32	s4, s19, s4
    5708: ee72 8a01    	vadd.f32	s17, s4, s2
    570c: ee71 ca42    	vsub.f32	s25, s2, s4
    5710: eec8 8a83    	vdiv.f32	s17, s17, s6
    5714: eecc ca83    	vdiv.f32	s25, s25, s6
    5718: eeb4 4a68    	vcmp.f32	s8, s17
    571c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5720: fe74 8a28    	vselgt.f32	s17, s8, s17
    5724: eef4 8a45    	vcmp.f32	s17, s10
    5728: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    572c: fe75 8a28    	vselgt.f32	s17, s10, s17
    5730: ee68 9a86    	vmul.f32	s19, s17, s12
    5734: ee79 aa87    	vadd.f32	s21, s19, s14
    5738: eef5 9a40    	vcmp.f32	s19, #0
    573c: ee79 baa1    	vadd.f32	s23, s19, s3
    5740: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5744: eefd aaea    	vcvt.s32.f32	s21, s21
    5748: eefd baeb    	vcvt.s32.f32	s23, s23
    574c: eeb4 4a6c    	vcmp.f32	s8, s25
    5750: ee1a 6a90    	vmov	r6, s21
    5754: ee1b 5a90    	vmov	r5, s23
    5758: bfa8         	it	ge
    575a: 4635         	movge	r5, r6
    575c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5760: fe74 9a2c    	vselgt.f32	s19, s8, s25
    5764: eef4 9a45    	vcmp.f32	s19, s10
    5768: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    576c: fe75 9a29    	vselgt.f32	s19, s10, s19
    5770: ee69 aa86    	vmul.f32	s21, s19, s12
    5774: ee7a baa1    	vadd.f32	s23, s21, s3
    5778: eef5 aa40    	vcmp.f32	s21, #0
    577c: ee7a ca87    	vadd.f32	s25, s21, s14
    5780: ee0a 5a90    	vmov	s21, r5
    5784: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5788: eefd baeb    	vcvt.s32.f32	s23, s23
    578c: eef8 aaea    	vcvt.f32.s32	s21, s21
    5790: ee1b 6a90    	vmov	r6, s23
    5794: eefd baec    	vcvt.s32.f32	s23, s25
    5798: ee4a 8ae2    	vmls.f32	s17, s21, s5
    579c: eef0 aa63    	vmov.f32	s21, s7
    57a0: eef0 ca65    	vmov.f32	s25, s11
    57a4: ee1b 3a90    	vmov	r3, s23
    57a8: bfa8         	it	ge
    57aa: 461e         	movge	r6, r3
    57ac: eb0c 53c5    	add.w	r3, r12, r5, lsl #23
    57b0: ed81 2a00    	vstr	s4, [r1]
    57b4: ee0b 6a90    	vmov	s23, r6
    57b8: eb0c 55c6    	add.w	r5, r12, r6, lsl #23
    57bc: ee48 aaa4    	vmla.f32	s21, s17, s9
    57c0: eef8 baeb    	vcvt.f32.s32	s23, s23
    57c4: ee4b 9ae2    	vmls.f32	s19, s23, s5
    57c8: eef0 ba63    	vmov.f32	s23, s7
    57cc: ee48 caaa    	vmla.f32	s25, s17, s21
    57d0: eef0 aa65    	vmov.f32	s21, s11
    57d4: ee49 baa4    	vmla.f32	s23, s19, s9
    57d8: ee69 daa9    	vmul.f32	s27, s19, s19
    57dc: ee49 aaab    	vmla.f32	s21, s19, s23
    57e0: eef0 ba47    	vmov.f32	s23, s14
    57e4: ee48 baac    	vmla.f32	s23, s17, s25
    57e8: eef0 ca47    	vmov.f32	s25, s14
    57ec: ee49 caaa    	vmla.f32	s25, s19, s21
    57f0: ee68 aaa8    	vmul.f32	s21, s17, s17
    57f4: ee78 8aa6    	vadd.f32	s17, s17, s13
    57f8: ee79 9aa6    	vadd.f32	s19, s19, s13
    57fc: ee4a 8aab    	vmla.f32	s17, s21, s23
    5800: ee0a 3a90    	vmov	s21, r3
    5804: ee0b 5a90    	vmov	s23, r5
    5808: ee4d 9aac    	vmla.f32	s19, s27, s25
    580c: ee68 aaaa    	vmul.f32	s21, s17, s21
    5810: ee69 baab    	vmul.f32	s23, s19, s23
    5814: eef0 9a40    	vmov.f32	s19, s0
    5818: ee42 9a20    	vmla.f32	s19, s4, s1
    581c: ee7a 8aeb    	vsub.f32	s17, s21, s23
    5820: ee58 9aa7    	vnmls.f32	s19, s17, s15
    5824: eef0 8a48    	vmov.f32	s17, s16
    5828: ee19 3a90    	vmov	r3, s19
    582c: f023 4300    	bic	r3, r3, #0x80000000
    5830: f1b3 4fff    	cmp.w	r3, #0x7f800000
    5834: eb09 0304    	add.w	r3, r9, r4
    5838: 6093         	str	r3, [r2, #0x8]
    583a: f6bf af11    	bge.w	0x5660 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x1d8> @ imm = #-0x1de
    583e: eec9 8a8e    	vdiv.f32	s17, s19, s28
    5842: eef0 8ae8    	vabs.f32	s17, s17
    5846: fec8 8a8f    	vmaxnm.f32	s17, s17, s30
    584a: e709         	b	0x5660 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x1d8> @ imm = #-0x1ee
    584c: bf00         	nop
    584e: bf00         	nop
    5850: eb08 0104    	add.w	r1, r8, r4
    5854: f880 b004    	strb.w	r11, [r0, #0x4]
    5858: 3101         	adds	r1, #0x1
    585a: 6051         	str	r1, [r2, #0x4]
    585c: f04f 41ff    	mov.w	r1, #0x7f800000
    5860: 6001         	str	r1, [r0]
    5862: 2100         	movs	r1, #0x0
    5864: e01e         	b	0x58a4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x41c> @ imm = #0x3c
    5866: bf00         	nop
    5868: eb08 0104    	add.w	r1, r8, r4
    586c: f101 0e01    	add.w	lr, r1, #0x1
    5870: e008         	b	0x5884 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>+0x3fc> @ imm = #0x10
    5872: bf00         	nop
    5874: f5 4a 39 3d  	.word	0x3d394af5
    5878: 00 00 a0 c2  	.word	0xc2a00000
    587c: df 43 f7 b7  	.word	0xb7f743df
    5880: f04f 0b03    	mov.w	r11, #0x3
    5884: ee18 1a90    	vmov	r1, s17
    5888: f8c2 e004    	str.w	lr, [r2, #0x4]
    588c: edc0 8a00    	vstr	s17, [r0]
    5890: f880 b004    	strb.w	r11, [r0, #0x4]
    5894: f021 4100    	bic	r1, r1, #0x80000000
    5898: f1b1 4fff    	cmp.w	r1, #0x7f800000
    589c: f04f 0100    	mov.w	r1, #0x0
    58a0: bfb8         	it	lt
    58a2: 2101         	movlt	r1, #0x1
    58a4: 7141         	strb	r1, [r0, #0x5]
    58a6: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    58aa: b001         	add	sp, #0x4
    58ac: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    58b0: bdf0         	pop	{r4, r5, r6, r7, pc}
    58b2: bf00         	nop
    58b4: 00 00 a0 42  	.word	0x42a00000
    58b8: 3b aa b8 3f  	.word	0x3fb8aa3b
    58bc: 18 72 31 3f  	.word	0x3f317218
    58c0: 89 88 08 3c  	.word	0x3c088889
    58c4: ab aa 2a 3d  	.word	0x3d2aaaab
    58c8: ab aa 2a 3e  	.word	0x3e2aaaab
    58cc: 77 cc 2b 31  	.word	0x312bcc77
    58d0: 00 00 80 7f  	.word	0x7f800000
    58d4: 0a d7 23 3c  	.word	0x3c23d70a
    58d8: 00 00 00 00  	.word	0x00000000
    58dc: df 43 f7 37  	.word	0x37f743df
    58e0: 08 e5 3c 1e  	.word	0x1e3ce508
    58e4: bd 37 06 36  	.word	0x360637bd
    58e8: ac c5 a7 37  	.word	0x37a7c5ac
    58ec: 17 b7 d1 38  	.word	0x38d1b717

000058f0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>>:
    58f0: b5f0         	push	{r4, r5, r6, r7, lr}
    58f2: af03         	add	r7, sp, #0xc
    58f4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    58f8: b081         	sub	sp, #0x4
    58fa: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    58fe: b098         	sub	sp, #0x60
    5900: ed9f 1ab1    	vldr	s2, [pc, #708]          @ 0x5bc8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2d8>
    5904: 247f         	movs	r4, #0x7f
    5906: ee20 2a01    	vmul.f32	s4, s0, s2
    590a: eeff ea00    	vmov.f32	s29, #-1.000000e+00
    590e: ed9f 4bb0    	vldr	d4, [pc, #704]          @ 0x5bd0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2e0>
    5912: eddf 2a3f    	vldr	s5, [pc, #252]          @ 0x5a10 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x120>
    5916: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    591a: ed9f 5b3f    	vldr	d5, [pc, #252]          @ 0x5a18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x128>
    591e: ee81 1b04    	vdiv.f64	d1, d1, d4
    5922: ed91 4a01    	vldr	s8, [r1, #4]
    5926: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    592a: ed92 0b12    	vldr	d0, [r2, #72]
    592e: ee04 0b05    	vmla.f64	d0, d4, d5
    5932: ed9f 4b3b    	vldr	d4, [pc, #236]          @ 0x5a20 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x130>
    5936: ee00 1b04    	vmla.f64	d1, d0, d4
    593a: ed9f 4b3b    	vldr	d4, [pc, #236]          @ 0x5a28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x138>
    593e: ee21 9b04    	vmul.f64	d9, d1, d4
    5942: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    5946: eddf 1aa4    	vldr	s3, [pc, #656]          @ 0x5bd8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2e8>
    594a: ed92 3b06    	vldr	d3, [r2, #24]
    594e: eeb0 ba61    	vmov.f32	s22, s3
    5952: ed9f 4b37    	vldr	d4, [pc, #220]          @ 0x5a30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x140>
    5956: eeb0 6b43    	vmov.f64	d6, d3
    595a: eeb0 7a41    	vmov.f32	s14, s2
    595e: ee09 6b04    	vmla.f64	d6, d9, d4
    5962: ed9f 8b35    	vldr	d8, [pc, #212]          @ 0x5a38 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x148>
    5966: eeb0 abc6    	vabs.f64	d10, d6
    596a: ed8d 0b08    	vstr	d0, [sp, #32]
    596e: ed9f 0a9b    	vldr	s0, [pc, #620]          @ 0x5bdc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2ec>
    5972: ee8a 5b08    	vdiv.f64	d5, d10, d8
    5976: eeb7 5bc5    	vcvt.f32.f64	s10, d5
    597a: ee05 7a05    	vmla.f32	s14, s10, s10
    597e: eeb1 7ac7    	vsqrt.f32	s14, s14
    5982: ee37 5a05    	vadd.f32	s10, s14, s10
    5986: ee15 6a10    	vmov	r6, s10
    598a: 0df5         	lsrs	r5, r6, #0x17
    598c: f364 56df    	bfi	r6, r4, #23, #9
    5990: ee05 6a10    	vmov	s10, r6
    5994: f06f 067e    	mvn	r6, #0x7e
    5998: fa56 f685    	uxtab	r6, r6, r5
    599c: ee35 7a2e    	vadd.f32	s14, s10, s29
    59a0: ee35 5a01    	vadd.f32	s10, s10, s2
    59a4: ee87 5a05    	vdiv.f32	s10, s14, s10
    59a8: ed9f 7a8f    	vldr	s14, [pc, #572]         @ 0x5be8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2f8>
    59ac: eef0 5a47    	vmov.f32	s11, s14
    59b0: ee65 7a05    	vmul.f32	s15, s10, s10
    59b4: ee35 5a05    	vadd.f32	s10, s10, s10
    59b8: ee47 5aa2    	vmla.f32	s11, s15, s5
    59bc: ee07 baa5    	vmla.f32	s22, s15, s11
    59c0: eddf 5af9    	vldr	s11, [pc, #996]         @ 0x5da8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4b8>
    59c4: eeb0 ca65    	vmov.f32	s24, s11
    59c8: ee07 ca8b    	vmla.f32	s24, s15, s22
    59cc: eeb0 ba41    	vmov.f32	s22, s2
    59d0: ee07 ba8c    	vmla.f32	s22, s15, s24
    59d4: ee07 6a90    	vmov	s15, r6
    59d8: ed9f cb81    	vldr	d12, [pc, #516]         @ 0x5be0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2f0>
    59dc: 4606         	mov	r6, r0
    59de: eef8 7ae7    	vcvt.f32.s32	s15, s15
    59e2: ee8a ab0c    	vdiv.f64	d10, d10, d12
    59e6: ee25 5a0b    	vmul.f32	s10, s10, s22
    59ea: ee07 5a80    	vmla.f32	s10, s15, s0
    59ee: ed9f 0af3    	vldr	s0, [pc, #972]          @ 0x5dbc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4cc>
    59f2: eeb7 abca    	vcvt.f32.f64	s20, d10
    59f6: ee65 7a00    	vmul.f32	s15, s10, s0
    59fa: fe8a 5a27    	vmaxnm.f32	s10, s20, s15
    59fe: eeb5 5a40    	vcmp.f32	s10, #0
    5a02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a06: d11b         	bne	0x5a40 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x150> @ imm = #0x36
    5a08: ed9f 6aed    	vldr	s12, [pc, #948]         @ 0x5dc0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    5a0c: e05d         	b	0x5aca <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1da> @ imm = #0xba
    5a0e: bf00         	nop
    5a10: 39 8e e3 3d  	.word	0x3de38e39
    5a14: 00 bf 00 bf  	.word	0xbf00bf00
    5a18: 10 72 82 a8  	.word	0xa8827210
    5a1c: 33 29 d5 3f  	.word	0x3fd52933
    5a20: 3e 1f 24 a5  	.word	0xa5241f3e
    5a24: 52 c7 75 40  	.word	0x4075c752
    5a28: 3e 40 c4 e5  	.word	0xe5c4403e
    5a2c: d8 9b 6f 3f  	.word	0x3f6f9bd8
    5a30: 83 16 e3 65  	.word	0x65e31683
    5a34: 5b cd 17 3f  	.word	0x3f17cd5b
    5a38: 3a 8c 30 e2  	.word	0xe2308c3a
    5a3c: 8e 79 35 3e  	.word	0x3e35798e
    5a40: eeb4 aa4a    	vcmp.f32	s20, s20
    5a44: eeb0 ba6e    	vmov.f32	s22, s29
    5a48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a4c: eef4 7a67    	vcmp.f32	s15, s15
    5a50: ed9f cadc    	vldr	s24, [pc, #880]         @ 0x5dc4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d4>
    5a54: fe17 aa8a    	vselvs.f32	s20, s15, s20
    5a58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a5c: ec55 0b16    	vmov	r0, r5, d6
    5a60: fe5a 7a27    	vselvs.f32	s15, s20, s15
    5a64: 0fed         	lsrs	r5, r5, #0x1f
    5a66: eef4 7a4a    	vcmp.f32	s15, s20
    5a6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a6e: fe7a 7a27    	vselgt.f32	s15, s20, s15
    5a72: ee87 5a85    	vdiv.f32	s10, s15, s10
    5a76: ee25 aa05    	vmul.f32	s20, s10, s10
    5a7a: ee3a aa0a    	vadd.f32	s20, s20, s20
    5a7e: ee05 ba0a    	vmla.f32	s22, s10, s20
    5a82: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    5a86: ed9f aad0    	vldr	s20, [pc, #832]         @ 0x5dc8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d8>
    5a8a: ee8b 5a05    	vdiv.f32	s10, s22, s10
    5a8e: ed9f bacf    	vldr	s22, [pc, #828]         @ 0x5dcc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4dc>
    5a92: ee05 ba0a    	vmla.f32	s22, s10, s20
    5a96: ed9f aace    	vldr	s20, [pc, #824]         @ 0x5dd0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e0>
    5a9a: ee05 ca0a    	vmla.f32	s24, s10, s20
    5a9e: eeb0 aa41    	vmov.f32	s20, s2
    5aa2: ee05 aa0b    	vmla.f32	s20, s10, s22
    5aa6: eeb0 ba41    	vmov.f32	s22, s2
    5aaa: ee05 ba0c    	vmla.f32	s22, s10, s24
    5aae: ed9f 5ac9    	vldr	s10, [pc, #804]         @ 0x5dd4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e4>
    5ab2: ee27 5a85    	vmul.f32	s10, s15, s10
    5ab6: eeca 7a0b    	vdiv.f32	s15, s20, s22
    5aba: ee25 5a27    	vmul.f32	s10, s10, s15
    5abe: ee15 0a10    	vmov	r0, s10
    5ac2: f365 70df    	bfi	r0, r5, #31, #1
    5ac6: ee06 0a10    	vmov	s12, r0
    5aca: eeb7 aac6    	vcvt.f64.f32	d10, s12
    5ace: eef2 6a0b    	vmov.f32	s13, #1.350000e+01
    5ad2: ed9f bb47    	vldr	d11, [pc, #284]         @ 0x5bf0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x300>
    5ad6: ed81 6a03    	vstr	s12, [r1, #12]
    5ada: ee0a 9b0b    	vmla.f64	d9, d10, d11
    5ade: eeb7 5bc9    	vcvt.f32.f64	s10, d9
    5ae2: ed81 5a02    	vstr	s10, [r1, #8]
    5ae6: eef0 7ac5    	vabs.f32	s15, s10
    5aea: eef4 7a66    	vcmp.f32	s15, s13
    5aee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5af2: f340 80c6    	ble.w	0x5c82 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x392> @ imm = #0x18c
    5af6: eeba 6a0b    	vmov.f32	s12, #-1.350000e+01
    5afa: f64f 75ff    	movw	r5, #0xffff
    5afe: f2c0 057f    	movt	r5, #0x7f
    5b02: ed9f 0a36    	vldr	s0, [pc, #216]          @ 0x5bdc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x2ec>
    5b06: eeb4 6a45    	vcmp.f32	s12, s10
    5b0a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b0e: fe36 5a05    	vselgt.f32	s10, s12, s10
    5b12: eeb4 5a66    	vcmp.f32	s10, s13
    5b16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b1a: fe36 5a85    	vselgt.f32	s10, s13, s10
    5b1e: eeb0 6b43    	vmov.f64	d6, d3
    5b22: ed81 5a02    	vstr	s10, [r1, #8]
    5b26: eeb7 9ac5    	vcvt.f64.f32	d9, s10
    5b2a: ee09 6b04    	vmla.f64	d6, d9, d4
    5b2e: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    5b32: eeb0 9bc6    	vabs.f64	d9, d6
    5b36: eef0 7a44    	vmov.f32	s15, s8
    5b3a: ee89 8b08    	vdiv.f64	d8, d9, d8
    5b3e: eef7 4bc8    	vcvt.f32.f64	s9, d8
    5b42: ed9f 8bdd    	vldr	d8, [pc, #884]          @ 0x5eb8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5c8>
    5b46: ee44 7aa4    	vmla.f32	s15, s9, s9
    5b4a: eef1 7ae7    	vsqrt.f32	s15, s15
    5b4e: ee77 4aa4    	vadd.f32	s9, s15, s9
    5b52: ee89 8b08    	vdiv.f64	d8, d9, d8
    5b56: ee14 0a90    	vmov	r0, s9
    5b5a: 4005         	ands	r5, r0
    5b5c: 0dc0         	lsrs	r0, r0, #0x17
    5b5e: f105 557e    	add.w	r5, r5, #0x3f800000
    5b62: ee04 5a90    	vmov	s9, r5
    5b66: f06f 057e    	mvn	r5, #0x7e
    5b6a: fa55 f080    	uxtab	r0, r5, r0
    5b6e: ee74 7aae    	vadd.f32	s15, s9, s29
    5b72: ee74 4a84    	vadd.f32	s9, s9, s8
    5b76: eec7 4aa4    	vdiv.f32	s9, s15, s9
    5b7a: ee64 7aa4    	vmul.f32	s15, s9, s9
    5b7e: ee07 7aa2    	vmla.f32	s14, s15, s5
    5b82: ee02 0a90    	vmov	s5, r0
    5b86: eef8 2ae2    	vcvt.f32.s32	s5, s5
    5b8a: ee47 1a87    	vmla.f32	s3, s15, s14
    5b8e: eeb0 7a44    	vmov.f32	s14, s8
    5b92: ee47 5aa1    	vmla.f32	s11, s15, s3
    5b96: ee74 1aa4    	vadd.f32	s3, s9, s9
    5b9a: ee07 7aa5    	vmla.f32	s14, s15, s11
    5b9e: ee21 7a87    	vmul.f32	s14, s3, s14
    5ba2: ee02 7a80    	vmla.f32	s14, s5, s0
    5ba6: ed9f 0a85    	vldr	s0, [pc, #532]          @ 0x5dbc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4cc>
    5baa: eef7 2bc8    	vcvt.f32.f64	s5, d8
    5bae: ee67 1a00    	vmul.f32	s3, s14, s0
    5bb2: fe82 7aa1    	vmaxnm.f32	s14, s5, s3
    5bb6: eeb5 7a40    	vcmp.f32	s14, #0
    5bba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5bbe: d11b         	bne	0x5bf8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x308> @ imm = #0x36
    5bc0: ed9f 6a7f    	vldr	s12, [pc, #508]         @ 0x5dc0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    5bc4: e05b         	b	0x5c7e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x38e> @ imm = #0xb6
    5bc6: bf00         	nop
    5bc8: 00 80 3b 47  	.word	0x473b8000
    5bcc: 00 bf 00 bf  	.word	0xbf00bf00
    5bd0: 4e 55 8a 9e  	.word	0x9e8a554e
    5bd4: da 9b f1 40  	.word	0x40f19bda
    5bd8: cd cc 4c 3e  	.word	0x3e4ccccd
    5bdc: 18 72 31 3f  	.word	0x3f317218
    5be0: 7a 8d 57 72  	.word	0x72578d7a
    5be4: 7e 55 0c 3f  	.word	0x3f0c557e
    5be8: 25 49 12 3e  	.word	0x3e124925
    5bec: 00 bf 00 bf  	.word	0xbf00bf00
    5bf0: 1a ed e3 d5  	.word	0xd5e3ed1a
    5bf4: e2 dc ea 3f  	.word	0x3feadce2
    5bf8: eef4 2a62    	vcmp.f32	s5, s5
    5bfc: eef0 4a6e    	vmov.f32	s9, s29
    5c00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c04: eef4 1a61    	vcmp.f32	s3, s3
    5c08: eddf 5a6e    	vldr	s11, [pc, #440]         @ 0x5dc4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d4>
    5c0c: fe51 2aa2    	vselvs.f32	s5, s3, s5
    5c10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c14: ec55 0b16    	vmov	r0, r5, d6
    5c18: fe52 1aa1    	vselvs.f32	s3, s5, s3
    5c1c: 0fed         	lsrs	r5, r5, #0x1f
    5c1e: eef4 1a62    	vcmp.f32	s3, s5
    5c22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c26: fe72 1aa1    	vselgt.f32	s3, s5, s3
    5c2a: ee81 7a87    	vdiv.f32	s14, s3, s14
    5c2e: ee67 2a07    	vmul.f32	s5, s14, s14
    5c32: ee72 2aa2    	vadd.f32	s5, s5, s5
    5c36: ee47 4a22    	vmla.f32	s9, s14, s5
    5c3a: eeb0 7a08    	vmov.f32	s14, #3.000000e+00
    5c3e: eddf 2a62    	vldr	s5, [pc, #392]          @ 0x5dc8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d8>
    5c42: ee84 7a87    	vdiv.f32	s14, s9, s14
    5c46: eddf 4a61    	vldr	s9, [pc, #388]          @ 0x5dcc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4dc>
    5c4a: ee47 4a22    	vmla.f32	s9, s14, s5
    5c4e: eddf 2a60    	vldr	s5, [pc, #384]          @ 0x5dd0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e0>
    5c52: ee47 5a22    	vmla.f32	s11, s14, s5
    5c56: eef0 2a44    	vmov.f32	s5, s8
    5c5a: ee47 2a24    	vmla.f32	s5, s14, s9
    5c5e: ee07 4a25    	vmla.f32	s8, s14, s11
    5c62: ed9f 7a8b    	vldr	s14, [pc, #556]         @ 0x5e90 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5a0>
    5c66: ee21 7a87    	vmul.f32	s14, s3, s14
    5c6a: ee82 4a84    	vdiv.f32	s8, s5, s8
    5c6e: ee27 4a04    	vmul.f32	s8, s14, s8
    5c72: ee14 0a10    	vmov	r0, s8
    5c76: f365 70df    	bfi	r0, r5, #31, #1
    5c7a: ee06 0a10    	vmov	s12, r0
    5c7e: ed81 6a03    	vstr	s12, [r1, #12]
    5c82: ed9f 4aae    	vldr	s8, [pc, #696]          @ 0x5f3c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x64c>
    5c86: 2000         	movs	r0, #0x0
    5c88: ed9f 7aad    	vldr	s14, [pc, #692]         @ 0x5f40 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x650>
    5c8c: ee32 4a04    	vadd.f32	s8, s4, s8
    5c90: ee72 1a07    	vadd.f32	s3, s4, s14
    5c94: eddf 2aab    	vldr	s5, [pc, #684]          @ 0x5f44 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x654>
    5c98: 9017         	str	r0, [sp, #0x5c]
    5c9a: ee84 7a22    	vdiv.f32	s14, s8, s5
    5c9e: 9016         	str	r0, [sp, #0x58]
    5ca0: eec1 1aa2    	vdiv.f32	s3, s3, s5
    5ca4: 9013         	str	r0, [sp, #0x4c]
    5ca6: e9cd 0014    	strd	r0, r0, [sp, #80]
    5caa: eeb4 7a61    	vcmp.f32	s14, s3
    5cae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5cb2: f200 868d    	bhi.w	0x69d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10e0> @ imm = #0xd1a
    5cb6: eeb7 4ac5    	vcvt.f64.f32	d4, s10
    5cba: eddf 6aa3    	vldr	s13, [pc, #652]         @ 0x5f48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x658>
    5cbe: ed9f 0ba4    	vldr	d0, [pc, #656]          @ 0x5f50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x660>
    5cc2: ed9d 8b08    	vldr	d8, [sp, #32]
    5cc6: ee04 8b00    	vmla.f64	d8, d4, d0
    5cca: eeb7 4ac6    	vcvt.f64.f32	d4, s12
    5cce: ed9f 0ba2    	vldr	d0, [pc, #648]          @ 0x5f58 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x668>
    5cd2: ee04 8b00    	vmla.f64	d8, d4, d0
    5cd6: ed9f 4a6f    	vldr	s8, [pc, #444]          @ 0x5e94 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5a4>
    5cda: ee22 4a04    	vmul.f32	s8, s4, s8
    5cde: ed9f 0a6e    	vldr	s0, [pc, #440]          @ 0x5e98 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5a8>
    5ce2: eeb7 2bc8    	vcvt.f32.f64	s4, d8
    5ce6: ed8d 4a06    	vstr	s8, [sp, #24]
    5cea: ee02 4a00    	vmla.f32	s8, s4, s0
    5cee: ed9f 0a6b    	vldr	s0, [pc, #428]          @ 0x5e9c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5ac>
    5cf2: ed92 2b04    	vldr	d2, [r2, #16]
    5cf6: 2200         	movs	r2, #0x0
    5cf8: eef7 2bc2    	vcvt.f32.f64	s5, d2
    5cfc: edcd 2a05    	vstr	s5, [sp, #20]
    5d00: ee45 2a00    	vmla.f32	s5, s10, s0
    5d04: ed9f 0a66    	vldr	s0, [pc, #408]          @ 0x5ea0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5b0>
    5d08: eeb4 7a44    	vcmp.f32	s14, s8
    5d0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d10: ee46 2a26    	vmla.f32	s5, s12, s13
    5d14: fe37 2a04    	vselgt.f32	s4, s14, s8
    5d18: eeb4 2a61    	vcmp.f32	s4, s3
    5d1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d20: eeb4 4a47    	vcmp.f32	s8, s14
    5d24: fe71 7a82    	vselgt.f32	s15, s3, s4
    5d28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d2c: eeb4 4a61    	vcmp.f32	s8, s3
    5d30: ed9f 4a23    	vldr	s8, [pc, #140]          @ 0x5dc0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    5d34: bfc8         	it	gt
    5d36: 2201         	movgt	r2, #0x1
    5d38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d3c: eef5 2a40    	vcmp.f32	s5, #0
    5d40: eeb0 2a44    	vmov.f32	s4, s8
    5d44: bf48         	it	mi
    5d46: 2001         	movmi	r0, #0x1
    5d48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d4c: bf48         	it	mi
    5d4e: eeb0 2a6e    	vmovmi.f32	s4, s29
    5d52: eef0 4ae2    	vabs.f32	s9, s5
    5d56: eef0 5a44    	vmov.f32	s11, s8
    5d5a: fe71 2a02    	vselgt.f32	s5, s2, s4
    5d5e: eeb0 2a44    	vmov.f32	s4, s8
    5d62: eeb0 aa44    	vmov.f32	s20, s8
    5d66: 4002         	ands	r2, r0
    5d68: eef4 4a40    	vcmp.f32	s9, s0
    5d6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d70: f280 80d1    	bge.w	0x5f16 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x626> @ imm = #0x1a2
    5d74: ed9f 2ad6    	vldr	s4, [pc, #856]          @ 0x60d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7e0>
    5d78: eef4 4a42    	vcmp.f32	s9, s4
    5d7c: ed9f 2a10    	vldr	s4, [pc, #64]           @ 0x5dc0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    5d80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d84: d914         	bls	0x5db0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4c0> @ imm = #0x28
    5d86: ed9f 4ad3    	vldr	s8, [pc, #844]          @ 0x60d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7e4>
    5d8a: eef4 4a44    	vcmp.f32	s9, s8
    5d8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d92: d921         	bls	0x5dd8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4e8> @ imm = #0x42
    5d94: ed9f 4ad0    	vldr	s8, [pc, #832]          @ 0x60d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7e8>
    5d98: ee74 4a84    	vadd.f32	s9, s9, s8
    5d9c: eddf 5acf    	vldr	s11, [pc, #828]         @ 0x60dc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7ec>
    5da0: eeb0 4a08    	vmov.f32	s8, #3.000000e+00
    5da4: e020         	b	0x5de8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4f8> @ imm = #0x40
    5da6: bf00         	nop
    5da8: ab aa aa 3e  	.word	0x3eaaaaab
    5dac: 00 bf 00 bf  	.word	0xbf00bf00
    5db0: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    5db4: eef0 2a42    	vmov.f32	s5, s4
    5db8: e01a         	b	0x5df0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x500> @ imm = #0x34
    5dba: bf00         	nop
    5dbc: f5 4a 39 3d  	.word	0x3d394af5
    5dc0: 00 00 00 00  	.word	0x00000000
    5dc4: 55 55 95 3f  	.word	0x3f955555
    5dc8: 2f a1 bd 3d  	.word	0x3dbda12f
    5dcc: 55 55 55 3f  	.word	0x3f555555
    5dd0: a1 bd 84 3e  	.word	0x3e84bda1
    5dd4: f8 a2 5f 3f  	.word	0x3f5fa2f8
    5dd8: ed9f 4ac1    	vldr	s8, [pc, #772]          @ 0x60e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7f0>
    5ddc: ee74 4a84    	vadd.f32	s9, s9, s8
    5de0: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    5de4: eddf 5abf    	vldr	s11, [pc, #764]         @ 0x60e4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7f4>
    5de8: ee04 4aa5    	vmla.f32	s8, s9, s11
    5dec: ee62 2aa5    	vmul.f32	s5, s5, s11
    5df0: eef2 4a0e    	vmov.f32	s9, #1.500000e+01
    5df4: ee34 4ac4    	vsub.f32	s8, s9, s8
    5df8: fe84 8a02    	vmaxnm.f32	s16, s8, s4
    5dfc: eeb1 4a62    	vneg.f32	s8, s5
    5e00: eeb5 8a40    	vcmp.f32	s16, #0
    5e04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e08: d94e         	bls	0x5ea8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5b8> @ imm = #0x9c
    5e0a: eeb0 2ae7    	vabs.f32	s4, s15
    5e0e: eeb4 2a48    	vcmp.f32	s4, s16
    5e12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e16: d953         	bls	0x5ec0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x5d0> @ imm = #0xa6
    5e18: eec8 2a02    	vdiv.f32	s5, s16, s4
    5e1c: ee22 2aa2    	vmul.f32	s4, s5, s5
    5e20: ee22 2a02    	vmul.f32	s4, s4, s4
    5e24: ee22 2a02    	vmul.f32	s4, s4, s4
    5e28: ee62 4a02    	vmul.f32	s9, s4, s4
    5e2c: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    5e30: ee74 5a82    	vadd.f32	s11, s9, s4
    5e34: eeb0 9a42    	vmov.f32	s18, s4
    5e38: eef4 5a42    	vcmp.f32	s11, s4
    5e3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e40: d009         	beq	0x5e56 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x566> @ imm = #0x12
    5e42: eeb0 9a65    	vmov.f32	s18, s11
    5e46: eeb1 9ac9    	vsqrt.f32	s18, s18
    5e4a: eeb1 9ac9    	vsqrt.f32	s18, s18
    5e4e: eeb1 9ac9    	vsqrt.f32	s18, s18
    5e52: eeb1 9ac9    	vsqrt.f32	s18, s18
    5e56: ee82 2a09    	vdiv.f32	s4, s4, s18
    5e5a: eef4 7a67    	vcmp.f32	s15, s15
    5e5e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e62: eec2 5a25    	vdiv.f32	s11, s4, s11
    5e66: f180 85c3    	bvs.w	0x69f0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1100> @ imm = #0xb86
    5e6a: ee17 0a90    	vmov	r0, s15
    5e6e: f04f 557e    	mov.w	r5, #0x3f800000
    5e72: f365 001e    	bfi	r0, r5, #0, #31
    5e76: ee09 0a10    	vmov	s18, r0
    5e7a: ee29 8a08    	vmul.f32	s16, s18, s16
    5e7e: ee29 aa25    	vmul.f32	s20, s18, s11
    5e82: ee28 2a02    	vmul.f32	s4, s16, s4
    5e86: ee62 2aa4    	vmul.f32	s5, s5, s9
    5e8a: ee62 5aa5    	vmul.f32	s11, s5, s11
    5e8e: e042         	b	0x5f16 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x626> @ imm = #0x84
    5e90: f8 a2 5f 3f  	.word	0x3f5fa2f8
    5e94: 64 9c 68 37  	.word	0x37689c64
    5e98: 95 3a ae 43  	.word	0x43ae3a95
    5e9c: 19 91 f2 b8  	.word	0xb8f29119
    5ea0: 0a d7 23 3d  	.word	0x3d23d70a
    5ea4: 00 bf 00 bf  	.word	0xbf00bf00
    5ea8: eef0 5a42    	vmov.f32	s11, s4
    5eac: eeb0 aa42    	vmov.f32	s20, s4
    5eb0: e031         	b	0x5f16 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x626> @ imm = #0x62
    5eb2: bf00         	nop
    5eb4: bf00         	nop
    5eb6: bf00         	nop
    5eb8: a9 59 df 04  	.word	0x04df59a9
    5ebc: f3 12 21 3f  	.word	0x3f2112f3
    5ec0: ee87 2a88    	vdiv.f32	s4, s15, s16
    5ec4: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    5ec8: ee22 2a02    	vmul.f32	s4, s4, s4
    5ecc: eef0 5a64    	vmov.f32	s11, s9
    5ed0: ee22 2a02    	vmul.f32	s4, s4, s4
    5ed4: ee22 2a02    	vmul.f32	s4, s4, s4
    5ed8: ee22 2a02    	vmul.f32	s4, s4, s4
    5edc: ee72 2a24    	vadd.f32	s5, s4, s9
    5ee0: eef4 2a64    	vcmp.f32	s5, s9
    5ee4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ee8: d009         	beq	0x5efe <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x60e> @ imm = #0x12
    5eea: eef0 5a62    	vmov.f32	s11, s5
    5eee: eef1 5ae5    	vsqrt.f32	s11, s11
    5ef2: eef1 5ae5    	vsqrt.f32	s11, s11
    5ef6: eef1 5ae5    	vsqrt.f32	s11, s11
    5efa: eef1 5ae5    	vsqrt.f32	s11, s11
    5efe: eec4 4aa5    	vdiv.f32	s9, s9, s11
    5f02: ee27 2a82    	vmul.f32	s4, s15, s4
    5f06: eec4 5aa2    	vdiv.f32	s11, s9, s5
    5f0a: eec2 2a08    	vdiv.f32	s5, s4, s16
    5f0e: ee27 2aa4    	vmul.f32	s4, s15, s9
    5f12: ee22 aaa5    	vmul.f32	s20, s5, s11
    5f16: ee35 2a42    	vsub.f32	s4, s10, s4
    5f1a: 2a00         	cmp	r2, #0x0
    5f1c: ed9f 0aca    	vldr	s0, [pc, #808]          @ 0x6248 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x958>
    5f20: eddf 0aca    	vldr	s1, [pc, #808]          @ 0x624c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x95c>
    5f24: ee12 0a10    	vmov	r0, s4
    5f28: fe00 9a80    	vseleq.f32	s18, s1, s0
    5f2c: f020 4000    	bic	r0, r0, #0x80000000
    5f30: f1b0 4fff    	cmp.w	r0, #0x7f800000
    5f34: db14         	blt	0x5f60 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x670> @ imm = #0x28
    5f36: ed9f 8ac6    	vldr	s16, [pc, #792]         @ 0x6250 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x960>
    5f3a: e01b         	b	0x5f74 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x684> @ imm = #0x36
    5f3c: 00 24 74 cb  	.word	0xcb742400
    5f40: 00 24 74 4b  	.word	0x4b742400
    5f44: 00 a0 8c 47  	.word	0x478ca000
    5f48: db 6a be 38  	.word	0x38be6adb
    5f4c: 00 bf 00 bf  	.word	0xbf00bf00
    5f50: 57 95 06 27  	.word	0x27069557
    5f54: 5d b5 e7 bf  	.word	0xbfe7b55d
    5f58: b0 98 53 d6  	.word	0xd65398b0
    5f5c: be fa e3 3f  	.word	0x3fe3fabe
    5f60: eef2 2a0e    	vmov.f32	s5, #1.500000e+01
    5f64: ed5f 4a6a    	vldr	s9, [pc, #-424]         @ 0x5dc0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4d0>
    5f68: eec2 2a22    	vdiv.f32	s5, s4, s5
    5f6c: eef0 2ae2    	vabs.f32	s5, s5
    5f70: fe82 8aa4    	vmaxnm.f32	s16, s5, s9
    5f74: eef7 4bc3    	vcvt.f32.f64	s9, d3
    5f78: ed1f 0a70    	vldr	s0, [pc, #-448]         @ 0x5dbc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x4cc>
    5f7c: eeb6 fa00    	vmov.f32	s30, #5.000000e-01
    5f80: ee86 ba00    	vdiv.f32	s22, s12, s0
    5f84: ed9f 0ab3    	vldr	s0, [pc, #716]          @ 0x6254 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x964>
    5f88: eeb0 3a64    	vmov.f32	s6, s9
    5f8c: ee05 3a26    	vmla.f32	s6, s10, s13
    5f90: ee64 3a0a    	vmul.f32	s7, s8, s20
    5f94: eef0 2acb    	vabs.f32	s5, s22
    5f98: ee06 3a00    	vmla.f32	s6, s12, s0
    5f9c: e9cd 3601    	strd	r3, r6, [sp, #4]
    5fa0: eef4 2a4f    	vcmp.f32	s5, s30
    5fa4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fa8: f280 809e    	bge.w	0x60e8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x7f8> @ imm = #0x13c
    5fac: eddf 2aaa    	vldr	s5, [pc, #680]          @ 0x6258 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x968>
    5fb0: eebe da00    	vmov.f32	s26, #-5.000000e-01
    5fb4: eef4 2a4b    	vcmp.f32	s5, s22
    5fb8: ed9f aaa8    	vldr	s20, [pc, #672]         @ 0x625c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x96c>
    5fbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fc0: eddf 9aa7    	vldr	s19, [pc, #668]         @ 0x6260 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x970>
    5fc4: fe32 4a8b    	vselgt.f32	s8, s5, s22
    5fc8: ed9f baa6    	vldr	s22, [pc, #664]         @ 0x6264 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x974>
    5fcc: eec6 9a29    	vdiv.f32	s19, s12, s19
    5fd0: ed9f 0aa5    	vldr	s0, [pc, #660]          @ 0x6268 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x978>
    5fd4: eeb4 4a4a    	vcmp.f32	s8, s20
    5fd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fdc: fe3a 4a04    	vselgt.f32	s8, s20, s8
    5fe0: ee24 ca0b    	vmul.f32	s24, s8, s22
    5fe4: ee3c ea0f    	vadd.f32	s28, s24, s30
    5fe8: eeb5 ca40    	vcmp.f32	s24, #0
    5fec: ee7c 8a0d    	vadd.f32	s17, s24, s26
    5ff0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ff4: eebd eace    	vcvt.s32.f32	s28, s28
    5ff8: eefd 8ae8    	vcvt.s32.f32	s17, s17
    5ffc: eef4 2a69    	vcmp.f32	s5, s19
    6000: ee1e 2a10    	vmov	r2, s28
    6004: ee18 0a90    	vmov	r0, s17
    6008: bfa8         	it	ge
    600a: 4610         	movge	r0, r2
    600c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6010: fe72 2aa9    	vselgt.f32	s5, s5, s19
    6014: eef4 2a4a    	vcmp.f32	s5, s20
    6018: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    601c: fe7a 2a22    	vselgt.f32	s5, s20, s5
    6020: ee22 aa8b    	vmul.f32	s20, s5, s22
    6024: ee3a ba0d    	vadd.f32	s22, s20, s26
    6028: eeb5 aa40    	vcmp.f32	s20, #0
    602c: ee3a ca0f    	vadd.f32	s24, s20, s30
    6030: ee0d 0a10    	vmov	s26, r0
    6034: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6038: eebd bacb    	vcvt.s32.f32	s22, s22
    603c: eebd cacc    	vcvt.s32.f32	s24, s24
    6040: eeb8 dacd    	vcvt.f32.s32	s26, s26
    6044: ee1b 2a10    	vmov	r2, s22
    6048: ed9f ba88    	vldr	s22, [pc, #544]         @ 0x626c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x97c>
    604c: ee1c 3a10    	vmov	r3, s24
    6050: bfa8         	it	ge
    6052: 461a         	movge	r2, r3
    6054: ee0d 4a40    	vmls.f32	s8, s26, s0
    6058: f04f 537e    	mov.w	r3, #0x3f800000
    605c: ee0a 2a10    	vmov	s20, r2
    6060: eb03 50c0    	add.w	r0, r3, r0, lsl #23
    6064: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    6068: eeb8 aaca    	vcvt.f32.s32	s20, s20
    606c: ee4a 2a40    	vmls.f32	s5, s20, s0
    6070: ed9f aa7f    	vldr	s20, [pc, #508]         @ 0x6270 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x980>
    6074: eeb0 ca4a    	vmov.f32	s24, s20
    6078: ee04 ca0b    	vmla.f32	s24, s8, s22
    607c: ee02 aa8b    	vmla.f32	s20, s5, s22
    6080: ed9f ba7c    	vldr	s22, [pc, #496]         @ 0x6274 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x984>
    6084: eeb0 da4b    	vmov.f32	s26, s22
    6088: ee04 da0c    	vmla.f32	s26, s8, s24
    608c: eeb7 ca00    	vmov.f32	s24, #1.000000e+00
    6090: ee22 eaa2    	vmul.f32	s28, s5, s5
    6094: ee02 ba8a    	vmla.f32	s22, s5, s20
    6098: eeb0 aa4f    	vmov.f32	s20, s30
    609c: ee04 aa0d    	vmla.f32	s20, s8, s26
    60a0: eeb0 da4f    	vmov.f32	s26, s30
    60a4: ee02 da8b    	vmla.f32	s26, s5, s22
    60a8: ee24 ba04    	vmul.f32	s22, s8, s8
    60ac: ee34 4a0c    	vadd.f32	s8, s8, s24
    60b0: ee72 2a8c    	vadd.f32	s5, s5, s24
    60b4: ee0c 2a10    	vmov	s24, r2
    60b8: ee0b 4a0a    	vmla.f32	s8, s22, s20
    60bc: ee0a 0a10    	vmov	s20, r0
    60c0: ee4e 2a0d    	vmla.f32	s5, s28, s26
    60c4: ee24 ba0a    	vmul.f32	s22, s8, s20
    60c8: ee22 aa8c    	vmul.f32	s20, s5, s24
    60cc: e059         	b	0x6182 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x892> @ imm = #0xb2
    60ce: bf00         	nop
    60d0: 7c f2 b0 3a  	.word	0x3ab0f27c
    60d4: a6 9b c4 3b  	.word	0x3bc49ba6
    60d8: a6 9b c4 bb  	.word	0xbbc49ba6
    60dc: 79 78 b0 43  	.word	0x43b07879
    60e0: 7c f2 b0 ba  	.word	0xbab0f27c
    60e4: 53 4a a1 43  	.word	0x43a14a53
    60e8: eef4 2a62    	vcmp.f32	s5, s5
    60ec: ed9f 4a5b    	vldr	s8, [pc, #364]          @ 0x625c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x96c>
    60f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    60f4: eeb0 aa4f    	vmov.f32	s20, s30
    60f8: ed9f ca5f    	vldr	s24, [pc, #380]         @ 0x6278 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x988>
    60fc: fe54 2a22    	vselvs.f32	s5, s8, s5
    6100: f04f 507e    	mov.w	r0, #0x3f800000
    6104: eeb4 4a62    	vcmp.f32	s8, s5
    6108: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    610c: fe72 2a84    	vselgt.f32	s5, s5, s8
    6110: eef4 2a44    	vcmp.f32	s5, s8
    6114: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6118: eeb5 ba40    	vcmp.f32	s22, #0
    611c: fe34 4a22    	vselgt.f32	s8, s8, s5
    6120: eddf 2a50    	vldr	s5, [pc, #320]          @ 0x6264 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x974>
    6124: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6128: ee04 aa22    	vmla.f32	s20, s8, s5
    612c: eefd 2aca    	vcvt.s32.f32	s5, s20
    6130: eeb8 aae2    	vcvt.f32.s32	s20, s5
    6134: ee12 2a90    	vmov	r2, s5
    6138: ee0a 4a0c    	vmla.f32	s8, s20, s24
    613c: ed9f aa4b    	vldr	s20, [pc, #300]         @ 0x626c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x97c>
    6140: ed9f ca4b    	vldr	s24, [pc, #300]         @ 0x6270 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x980>
    6144: eb00 50c2    	add.w	r0, r0, r2, lsl #23
    6148: ee02 0a90    	vmov	s5, r0
    614c: ee04 ca0a    	vmla.f32	s24, s8, s20
    6150: ed9f aa48    	vldr	s20, [pc, #288]         @ 0x6274 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x984>
    6154: ee04 aa0c    	vmla.f32	s20, s8, s24
    6158: eeb0 ca4f    	vmov.f32	s24, s30
    615c: ee04 ca0a    	vmla.f32	s24, s8, s20
    6160: ee24 aa04    	vmul.f32	s20, s8, s8
    6164: ee34 4a01    	vadd.f32	s8, s8, s2
    6168: ee0a 4a0c    	vmla.f32	s8, s20, s24
    616c: ee24 4a22    	vmul.f32	s8, s8, s5
    6170: ee81 aa04    	vdiv.f32	s20, s2, s8
    6174: eeb0 ba44    	vmov.f32	s22, s8
    6178: bfbc         	itt	lt
    617a: eeb0 ba4a    	vmovlt.f32	s22, s20
    617e: eeb0 aa44    	vmovlt.f32	s20, s8
    6182: ee3b 4a4a    	vsub.f32	s8, s22, s20
    6186: eddf ca3d    	vldr	s25, [pc, #244]         @ 0x627c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x98c>
    618a: ed9f 0a3d    	vldr	s0, [pc, #244]          @ 0x6280 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x990>
    618e: ee69 2a25    	vmul.f32	s5, s18, s11
    6192: ee63 ba80    	vmul.f32	s23, s7, s0
    6196: ed9f 0afa    	vldr	s0, [pc, #1000]         @ 0x6580 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc90>
    619a: ee14 3a2c    	vnmls.f32	s6, s8, s25
    619e: ed9f 4a2c    	vldr	s8, [pc, #176]          @ 0x6250 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x960>
    61a2: ee63 3a80    	vmul.f32	s7, s7, s0
    61a6: eef0 da44    	vmov.f32	s27, s8
    61aa: f8d7 c008    	ldr.w	r12, [r7, #0x8]
    61ae: ee13 0a10    	vmov	r0, s6
    61b2: f020 4000    	bic	r0, r0, #0x80000000
    61b6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    61ba: da17         	bge	0x61ec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x8fc> @ imm = #0x2e
    61bc: eddf 5af1    	vldr	s11, [pc, #964]         @ 0x6584 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc94>
    61c0: eeb4 8a48    	vcmp.f32	s16, s16
    61c4: eec3 5a25    	vdiv.f32	s11, s6, s11
    61c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    61cc: eef0 5ae5    	vabs.f32	s11, s11
    61d0: fe15 8a88    	vselvs.f32	s16, s11, s16
    61d4: eef4 5a65    	vcmp.f32	s11, s11
    61d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    61dc: fe58 5a25    	vselvs.f32	s11, s16, s11
    61e0: eeb4 8a65    	vcmp.f32	s16, s11
    61e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    61e8: fe78 da25    	vselgt.f32	s27, s16, s11
    61ec: ed9f 0ae6    	vldr	s0, [pc, #920]          @ 0x6588 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc98>
    61f0: ee3b 8a0a    	vadd.f32	s16, s22, s20
    61f4: ee42 ba80    	vmla.f32	s23, s5, s0
    61f8: ed9f 0ae4    	vldr	s0, [pc, #912]          @ 0x658c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc9c>
    61fc: ee42 3a80    	vmla.f32	s7, s5, s0
    6200: f10d 0e28    	add.w	lr, sp, #0x28
    6204: eef1 5a42    	vneg.f32	s11, s4
    6208: f10e 0a14    	add.w	r10, lr, #0x14
    620c: eeb1 ba43    	vneg.f32	s22, s6
    6210: 2600         	movs	r6, #0x0
    6212: e89c 0019    	ldm.w	r12, {r0, r3, r4}
    6216: 3401         	adds	r4, #0x1
    6218: 9404         	str	r4, [sp, #0x10]
    621a: 2400         	movs	r4, #0x0
    621c: f04f 0900    	mov.w	r9, #0x0
    6220: ed9f aadb    	vldr	s20, [pc, #876]         @ 0x6590 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xca0>
    6224: 1c42         	adds	r2, r0, #0x1
    6226: eddf 8adb    	vldr	s17, [pc, #876]         @ 0x6594 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xca4>
    622a: f8cc 2000    	str.w	r2, [r12]
    622e: ed9f ca0f    	vldr	s24, [pc, #60]          @ 0x626c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x97c>
    6232: 1c5a         	adds	r2, r3, #0x1
    6234: ed9f ea0e    	vldr	s28, [pc, #56]          @ 0x6270 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x980>
    6238: 9207         	str	r2, [sp, #0x1c]
    623a: eddf aa0e    	vldr	s21, [pc, #56]          @ 0x6274 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x984>
    623e: 3002         	adds	r0, #0x2
    6240: ed9f 9ad5    	vldr	s18, [pc, #852]         @ 0x6598 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xca8>
    6244: 9003         	str	r0, [sp, #0xc]
    6246: e045         	b	0x62d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x9e4> @ imm = #0x8a
    6248: 95 3a ae c3  	.word	0xc3ae3a95
    624c: 00 00 00 80  	.word	0x80000000
    6250: 00 00 80 7f  	.word	0x7f800000
    6254: ed 79 08 b9  	.word	0xb90879ed
    6258: 00 00 a0 c2  	.word	0xc2a00000
    625c: 00 00 a0 42  	.word	0x42a00000
    6260: f5 4a 39 bd  	.word	0xbd394af5
    6264: 3b aa b8 3f  	.word	0x3fb8aa3b
    6268: 18 72 31 3f  	.word	0x3f317218
    626c: 89 88 08 3c  	.word	0x3c088889
    6270: ab aa 2a 3d  	.word	0x3d2aaaab
    6274: ab aa 2a 3e  	.word	0x3e2aaaab
    6278: 18 72 31 bf  	.word	0xbf317218
    627c: 77 cc 2b 31  	.word	0x312bcc77
    6280: 19 91 f2 38  	.word	0x38f29119
    6284: 00 bf 00 bf  	.word	0xbf00bf00
    6288: ee2b 0a23    	vmul.f32	s0, s22, s7
    628c: ed1f 3a04    	vldr	s6, [pc, #-16]          @ 0x6280 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x990>
    6290: ee65 ba83    	vmul.f32	s23, s11, s6
    6294: ed9f 3aba    	vldr	s6, [pc, #744]          @ 0x6580 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc90>
    6298: ee65 3a83    	vmul.f32	s7, s11, s6
    629c: ed9f 3aba    	vldr	s6, [pc, #744]          @ 0x6588 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc98>
    62a0: ee40 ba03    	vmla.f32	s23, s0, s6
    62a4: ed9f 3ab9    	vldr	s6, [pc, #740]          @ 0x658c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xc9c>
    62a8: ee40 3a03    	vmla.f32	s7, s0, s6
    62ac: eeff ea00    	vmov.f32	s29, #-1.000000e+00
    62b0: ee32 8a88    	vadd.f32	s16, s5, s16
    62b4: f109 0001    	add.w	r0, r9, #0x1
    62b8: eef1 5a6f    	vneg.f32	s11, s31
    62bc: 9b03         	ldr	r3, [sp, #0xc]
    62be: eeb1 ba4d    	vneg.f32	s22, s26
    62c2: 444b         	add	r3, r9
    62c4: 2803         	cmp	r0, #0x3
    62c6: f106 0601    	add.w	r6, r6, #0x1
    62ca: 4681         	mov	r9, r0
    62cc: f8cc 3000    	str.w	r3, [r12]
    62d0: f000 8362    	beq.w	0x6998 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10a8> @ imm = #0x6c4
    62d4: ee68 2a2c    	vmul.f32	s5, s16, s25
    62d8: ed9f 0ae7    	vldr	s0, [pc, #924]          @ 0x6678 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd88>
    62dc: ee3b 8a81    	vadd.f32	s16, s23, s2
    62e0: 4670         	mov	r0, lr
    62e2: f646 23db    	movw	r3, #0x6adb
    62e6: ed8d 8a0a    	vstr	s16, [sp, #40]
    62ea: eec2 2a89    	vdiv.f32	s5, s5, s18
    62ee: edcd 3a0b    	vstr	s7, [sp, #44]
    62f2: 940c         	str	r4, [sp, #0x30]
    62f4: f6cb 03be    	movt	r3, #0xb8be
    62f8: 930d         	str	r3, [sp, #0x34]
    62fa: ee72 2a80    	vadd.f32	s5, s5, s0
    62fe: edcd 2a0e    	vstr	s5, [sp, #56]
    6302: eef0 2ac8    	vabs.f32	s5, s16
    6306: eef4 2a66    	vcmp.f32	s5, s13
    630a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    630e: bf48         	it	mi
    6310: 300c         	addmi	r0, #0xc
    6312: 9b13         	ldr	r3, [sp, #0x4c]
    6314: f8ca 3000    	str.w	r3, [r10]
    6318: e9d0 3b00    	ldrd	r3, r11, [r0]
    631c: f8d0 8008    	ldr.w	r8, [r0, #0x8]
    6320: f8cd 8030    	str.w	r8, [sp, #0x30]
    6324: e9cd 3b0a    	strd	r3, r11, [sp, #40]
    6328: ed80 8a00    	vstr	s16, [r0]
    632c: f04f 0004    	mov.w	r0, #0x4
    6330: bf48         	it	mi
    6332: 2010         	movmi	r0, #0x10
    6334: f04f 0308    	mov.w	r3, #0x8
    6338: eef4 6a62    	vcmp.f32	s13, s5
    633c: 4470         	add	r0, lr
    633e: bf48         	it	mi
    6340: 2314         	movmi	r3, #0x14
    6342: eddd 2a0a    	vldr	s5, [sp, #40]
    6346: edc0 3a00    	vstr	s7, [r0]
    634a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    634e: ee12 0a90    	vmov	r0, s5
    6352: 9a07         	ldr	r2, [sp, #0x1c]
    6354: fe3b 8a25    	vselgt.f32	s16, s22, s11
    6358: eb02 0509    	add.w	r5, r2, r9
    635c: fe75 3a8b    	vselgt.f32	s7, s11, s22
    6360: f8cc 5004    	str.w	r5, [r12, #0x4]
    6364: f020 4000    	bic	r0, r0, #0x80000000
    6368: f1b0 4fff    	cmp.w	r0, #0x7f800000
    636c: 9814         	ldr	r0, [sp, #0x50]
    636e: f8ca 0004    	str.w	r0, [r10, #0x4]
    6372: 9815         	ldr	r0, [sp, #0x54]
    6374: f8ca 0008    	str.w	r0, [r10, #0x8]
    6378: 9816         	ldr	r0, [sp, #0x58]
    637a: f8ca 000c    	str.w	r0, [r10, #0xc]
    637e: f84e 4003    	str.w	r4, [lr, r3]
    6382: f280 8301    	bge.w	0x6988 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x602
    6386: eef0 5ae2    	vabs.f32	s11, s5
    638a: eef4 5a4a    	vcmp.f32	s11, s20
    638e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6392: f100 82f9    	bmi.w	0x6988 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x5f2
    6396: eddd 5a0d    	vldr	s11, [sp, #52]
    639a: ed9d da0e    	vldr	s26, [sp, #56]
    639e: ee85 baa2    	vdiv.f32	s22, s11, s5
    63a2: eddd 5a0b    	vldr	s11, [sp, #44]
    63a6: ee0b da65    	vmls.f32	s26, s22, s11
    63aa: ee1d 0a10    	vmov	r0, s26
    63ae: f020 4000    	bic	r0, r0, #0x80000000
    63b2: f1b0 4fff    	cmp.w	r0, #0x7f800000
    63b6: f280 82e7    	bge.w	0x6988 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x5ce
    63ba: eef0 bacd    	vabs.f32	s23, s26
    63be: eef4 ba4a    	vcmp.f32	s23, s20
    63c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63c6: f100 82df    	bmi.w	0x6988 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x5be
    63ca: ee4b 3a48    	vmls.f32	s7, s22, s16
    63ce: eec3 3a8d    	vdiv.f32	s7, s7, s26
    63d2: ee05 8ae3    	vmls.f32	s16, s11, s7
    63d6: eec8 2a22    	vdiv.f32	s5, s16, s5
    63da: ee12 0a90    	vmov	r0, s5
    63de: f020 4000    	bic	r0, r0, #0x80000000
    63e2: f1b0 4fff    	cmp.w	r0, #0x7f800000
    63e6: bfbe         	ittt	lt
    63e8: ee13 0a90    	vmovlt	r0, s7
    63ec: f020 4000    	biclt	r0, r0, #0x80000000
    63f0: f1b0 4fff    	cmplt.w	r0, #0x7f800000
    63f4: f280 82c8    	bge.w	0x6988 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1098> @ imm = #0x590
    63f8: eef0 5ac5    	vabs.f32	s11, s10
    63fc: ed9f 0a9f    	vldr	s0, [pc, #636]          @ 0x667c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd8c>
    6400: eeb0 8ae2    	vabs.f32	s16, s5
    6404: eef4 5a65    	vcmp.f32	s11, s11
    6408: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    640c: fe51 5a25    	vselvs.f32	s11, s2, s11
    6410: eef4 5a41    	vcmp.f32	s11, s2
    6414: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6418: fe75 5a81    	vselgt.f32	s11, s11, s2
    641c: ee65 5a80    	vmul.f32	s11, s11, s0
    6420: ed9f 0a97    	vldr	s0, [pc, #604]          @ 0x6680 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd90>
    6424: fec5 5ac0    	vminnm.f32	s11, s11, s0
    6428: eeb4 8a65    	vcmp.f32	s16, s11
    642c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6430: d824         	bhi	0x647c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xb8c> @ imm = #0x48
    6432: eef0 5ac6    	vabs.f32	s11, s12
    6436: ed9f 0a91    	vldr	s0, [pc, #580]          @ 0x667c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd8c>
    643a: eeb0 8ae3    	vabs.f32	s16, s7
    643e: eef4 5a65    	vcmp.f32	s11, s11
    6442: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6446: fe51 5a25    	vselvs.f32	s11, s2, s11
    644a: eef4 5a41    	vcmp.f32	s11, s2
    644e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6452: fe75 5a81    	vselgt.f32	s11, s11, s2
    6456: ee65 5a80    	vmul.f32	s11, s11, s0
    645a: ed9f 0a89    	vldr	s0, [pc, #548]          @ 0x6680 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd90>
    645e: fec5 5ac0    	vminnm.f32	s11, s11, s0
    6462: eeb4 8a65    	vcmp.f32	s16, s11
    6466: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    646a: d807         	bhi	0x647c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xb8c> @ imm = #0xe
    646c: ed9f 0a85    	vldr	s0, [pc, #532]          @ 0x6684 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd94>
    6470: eef4 da40    	vcmp.f32	s27, s0
    6474: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6478: f240 828f    	bls.w	0x699a <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10aa> @ imm = #0x51e
    647c: ee32 5a85    	vadd.f32	s10, s5, s10
    6480: eddd 2a05    	vldr	s5, [sp, #20]
    6484: ee33 6a86    	vadd.f32	s12, s7, s12
    6488: 9804         	ldr	r0, [sp, #0x10]
    648a: ed9f 3b45    	vldr	d3, [pc, #276]          @ 0x65a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcb0>
    648e: eeb7 bac5    	vcvt.f64.f32	d11, s10
    6492: 2300         	movs	r3, #0x0
    6494: eeb7 0ac6    	vcvt.f64.f32	d0, s12
    6498: ed81 5a02    	vstr	s10, [r1, #8]
    649c: ed9d db08    	vldr	d13, [sp, #32]
    64a0: ed81 6a03    	vstr	s12, [r1, #12]
    64a4: 4448         	add	r0, r9
    64a6: ee0b db03    	vmla.f64	d13, d11, d3
    64aa: f8cc 0008    	str.w	r0, [r12, #0x8]
    64ae: 2000         	movs	r0, #0x0
    64b0: eeb0 ba68    	vmov.f32	s22, s17
    64b4: ed9f 3b3c    	vldr	d3, [pc, #240]          @ 0x65a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcb8>
    64b8: eef0 5a68    	vmov.f32	s11, s17
    64bc: ee00 db03    	vmla.f64	d13, d0, d3
    64c0: ed9f 3ae9    	vldr	s6, [pc, #932]          @ 0x6868 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf78>
    64c4: eddd 0a06    	vldr	s1, [sp, #24]
    64c8: eef0 3a68    	vmov.f32	s7, s17
    64cc: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    64d0: eef0 da68    	vmov.f32	s27, s17
    64d4: ee40 0a03    	vmla.f32	s1, s0, s6
    64d8: ed9f 3ae4    	vldr	s6, [pc, #912]          @ 0x686c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf7c>
    64dc: ee45 2a03    	vmla.f32	s5, s10, s6
    64e0: ee46 2a26    	vmla.f32	s5, s12, s13
    64e4: eeb4 7a60    	vcmp.f32	s14, s1
    64e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64ec: fe37 0a20    	vselgt.f32	s0, s14, s1
    64f0: eeb0 8ae2    	vabs.f32	s16, s5
    64f4: eeb4 0a61    	vcmp.f32	s0, s3
    64f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64fc: eef4 0a47    	vcmp.f32	s1, s14
    6500: fe71 7a80    	vselgt.f32	s15, s3, s0
    6504: eeb0 0a68    	vmov.f32	s0, s17
    6508: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    650c: eef4 0a61    	vcmp.f32	s1, s3
    6510: bfc8         	it	gt
    6512: 2301         	movgt	r3, #0x1
    6514: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6518: eef5 2a40    	vcmp.f32	s5, #0
    651c: 9413         	str	r4, [sp, #0x4c]
    651e: 9414         	str	r4, [sp, #0x50]
    6520: bf48         	it	mi
    6522: 2001         	movmi	r0, #0x1
    6524: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6528: 9415         	str	r4, [sp, #0x54]
    652a: bf48         	it	mi
    652c: eeb0 0a6e    	vmovmi.f32	s0, s29
    6530: 9416         	str	r4, [sp, #0x58]
    6532: fe71 2a00    	vselgt.f32	s5, s2, s0
    6536: ed9f 0ace    	vldr	s0, [pc, #824]          @ 0x6870 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf80>
    653a: eeb4 8a40    	vcmp.f32	s16, s0
    653e: 9417         	str	r4, [sp, #0x5c]
    6540: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6544: f280 80cc    	bge.w	0x66e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdf0> @ imm = #0x198
    6548: eef0 5a68    	vmov.f32	s11, s17
    654c: eef7 3a08    	vmov.f32	s7, #1.500000e+00
    6550: ed9f 0ac8    	vldr	s0, [pc, #800]          @ 0x6874 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf84>
    6554: eeb4 8a40    	vcmp.f32	s16, s0
    6558: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    655c: d932         	bls	0x65c4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcd4> @ imm = #0x64
    655e: ed9f 0ac6    	vldr	s0, [pc, #792]          @ 0x6878 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf88>
    6562: eeb4 8a40    	vcmp.f32	s16, s0
    6566: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    656a: d921         	bls	0x65b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xcc0> @ imm = #0x42
    656c: ed9f 0ac3    	vldr	s0, [pc, #780]          @ 0x687c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf8c>
    6570: eef0 3a08    	vmov.f32	s7, #3.000000e+00
    6574: ee38 0a00    	vadd.f32	s0, s16, s0
    6578: ed9f 3ac1    	vldr	s6, [pc, #772]          @ 0x6880 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf90>
    657c: e01e         	b	0x65bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xccc> @ imm = #0x3c
    657e: bf00         	nop
    6580: db 6a be b8  	.word	0xb8be6adb
    6584: 0a d7 23 3c  	.word	0x3c23d70a
    6588: e9 aa 3d bf  	.word	0xbf3daae9
    658c: f7 d5 1f 3f  	.word	0x3f1fd5f7
    6590: 08 e5 3c 1e  	.word	0x1e3ce508
    6594: 00 00 00 00  	.word	0x00000000
    6598: f5 4a 39 3d  	.word	0x3d394af5
    659c: 00 bf 00 bf  	.word	0xbf00bf00
    65a0: 57 95 06 27  	.word	0x27069557
    65a4: 5d b5 e7 bf  	.word	0xbfe7b55d
    65a8: b0 98 53 d6  	.word	0xd65398b0
    65ac: be fa e3 3f  	.word	0x3fe3fabe
    65b0: ed9f 0ab4    	vldr	s0, [pc, #720]          @ 0x6884 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf94>
    65b4: ee38 0a00    	vadd.f32	s0, s16, s0
    65b8: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x6980 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1090>
    65bc: ee40 3a03    	vmla.f32	s7, s0, s6
    65c0: ee62 5a83    	vmul.f32	s11, s5, s6
    65c4: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    65c8: eef1 da65    	vneg.f32	s27, s11
    65cc: ee30 0a63    	vsub.f32	s0, s0, s7
    65d0: fe80 8a28    	vmaxnm.f32	s16, s0, s17
    65d4: eeb5 8a40    	vcmp.f32	s16, #0
    65d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65dc: d944         	bls	0x6668 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd78> @ imm = #0x88
    65de: eef0 2ae7    	vabs.f32	s5, s15
    65e2: eef4 2a48    	vcmp.f32	s5, s16
    65e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65ea: d94d         	bls	0x6688 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd98> @ imm = #0x9a
    65ec: eec8 2a22    	vdiv.f32	s5, s16, s5
    65f0: eeb0 ba41    	vmov.f32	s22, s2
    65f4: ee22 0aa2    	vmul.f32	s0, s5, s5
    65f8: ee20 0a00    	vmul.f32	s0, s0, s0
    65fc: ee20 0a00    	vmul.f32	s0, s0, s0
    6600: ee60 3a00    	vmul.f32	s7, s0, s0
    6604: ee73 5a81    	vadd.f32	s11, s7, s2
    6608: eef4 5a41    	vcmp.f32	s11, s2
    660c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6610: d009         	beq	0x6626 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xd36> @ imm = #0x12
    6612: eeb0 ba65    	vmov.f32	s22, s11
    6616: eeb1 bacb    	vsqrt.f32	s22, s22
    661a: eeb1 bacb    	vsqrt.f32	s22, s22
    661e: eeb1 bacb    	vsqrt.f32	s22, s22
    6622: eeb1 bacb    	vsqrt.f32	s22, s22
    6626: eec1 ba0b    	vdiv.f32	s23, s2, s22
    662a: ed9f baef    	vldr	s22, [pc, #956]         @ 0x69e8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10f8>
    662e: eef4 7a67    	vcmp.f32	s15, s15
    6632: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6636: ee8b daa5    	vdiv.f32	s26, s23, s11
    663a: eef0 5a4b    	vmov.f32	s11, s22
    663e: bf7f         	itttt	vc
    6640: ee17 5a90    	vmovvc	r5, s15
    6644: f04f 527e    	movvc.w	r2, #0x3f800000
    6648: f362 051e    	bfivc	r5, r2, #0, #31
    664c: ee00 5a10    	vmovvc	s0, r5
    6650: bf7e         	ittt	vc
    6652: ee60 0a08    	vmulvc.f32	s1, s0, s16
    6656: ee20 baab    	vmulvc.f32	s22, s1, s23
    665a: ee60 5a0d    	vmulvc.f32	s11, s0, s26
    665e: ee22 0aa3    	vmul.f32	s0, s5, s7
    6662: ee60 3a0d    	vmul.f32	s7, s0, s26
    6666: e03b         	b	0x66e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdf0> @ imm = #0x76
    6668: eeb0 ba68    	vmov.f32	s22, s17
    666c: eef0 3a68    	vmov.f32	s7, s17
    6670: eef0 5a68    	vmov.f32	s11, s17
    6674: e034         	b	0x66e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdf0> @ imm = #0x68
    6676: bf00         	nop
    6678: ed 79 08 39  	.word	0x390879ed
    667c: bd 37 06 36  	.word	0x360637bd
    6680: ac c5 a7 37  	.word	0x37a7c5ac
    6684: 17 b7 d1 38  	.word	0x38d1b717
    6688: ee87 0a88    	vdiv.f32	s0, s15, s16
    668c: eef0 5a41    	vmov.f32	s11, s2
    6690: ee20 0a00    	vmul.f32	s0, s0, s0
    6694: ee20 0a00    	vmul.f32	s0, s0, s0
    6698: ee20 0a00    	vmul.f32	s0, s0, s0
    669c: ee60 2a00    	vmul.f32	s5, s0, s0
    66a0: ee72 3a81    	vadd.f32	s7, s5, s2
    66a4: eef4 3a41    	vcmp.f32	s7, s2
    66a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66ac: d009         	beq	0x66c2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xdd2> @ imm = #0x12
    66ae: eef0 5a63    	vmov.f32	s11, s7
    66b2: eef1 5ae5    	vsqrt.f32	s11, s11
    66b6: eef1 5ae5    	vsqrt.f32	s11, s11
    66ba: eef1 5ae5    	vsqrt.f32	s11, s11
    66be: eef1 5ae5    	vsqrt.f32	s11, s11
    66c2: ee81 0a25    	vdiv.f32	s0, s2, s11
    66c6: ee67 0aa2    	vmul.f32	s1, s15, s5
    66ca: eec0 3a23    	vdiv.f32	s7, s0, s7
    66ce: eec0 0a88    	vdiv.f32	s1, s1, s16
    66d2: ee27 ba80    	vmul.f32	s22, s15, s0
    66d6: ee60 5aa3    	vmul.f32	s11, s1, s7
    66da: bf00         	nop
    66dc: bf00         	nop
    66de: bf00         	nop
    66e0: ee75 fa4b    	vsub.f32	s31, s10, s22
    66e4: 4018         	ands	r0, r3
    66e6: ed9f 0ac8    	vldr	s0, [pc, #800]          @ 0x6a08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1118>
    66ea: eef0 ba44    	vmov.f32	s23, s8
    66ee: ed9f 3ac7    	vldr	s6, [pc, #796]          @ 0x6a0c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x111c>
    66f2: ee1f 5a90    	vmov	r5, s31
    66f6: fe03 ba00    	vseleq.f32	s22, s6, s0
    66fa: f025 4000    	bic	r0, r5, #0x80000000
    66fe: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6702: da07         	bge	0x6714 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xe24> @ imm = #0xe
    6704: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    6708: ee8f 0a80    	vdiv.f32	s0, s31, s0
    670c: eeb0 0ac0    	vabs.f32	s0, s0
    6710: fec0 ba28    	vmaxnm.f32	s23, s0, s17
    6714: eec6 2a09    	vdiv.f32	s5, s12, s18
    6718: eeb0 8ae2    	vabs.f32	s16, s5
    671c: eeb4 8a4f    	vcmp.f32	s16, s30
    6720: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6724: f280 80b0    	bge.w	0x6888 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0xf98> @ imm = #0x160
    6728: ed9f 0abe    	vldr	s0, [pc, #760]          @ 0x6a24 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1134>
    672c: eef0 9a45    	vmov.f32	s19, s10
    6730: eeb4 0a62    	vcmp.f32	s0, s5
    6734: eeb0 5a68    	vmov.f32	s10, s17
    6738: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    673c: eef0 8a40    	vmov.f32	s17, s0
    6740: ed9f 2ab4    	vldr	s4, [pc, #720]          @ 0x6a14 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1124>
    6744: fe30 0a22    	vselgt.f32	s0, s0, s5
    6748: ed9f 9ab3    	vldr	s18, [pc, #716]         @ 0x6a18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1128>
    674c: eef0 ea41    	vmov.f32	s29, s2
    6750: eeb0 1a42    	vmov.f32	s2, s4
    6754: ed9f 3ab2    	vldr	s6, [pc, #712]          @ 0x6a20 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1130>
    6758: f04f 527e    	mov.w	r2, #0x3f800000
    675c: eeb4 0a42    	vcmp.f32	s0, s4
    6760: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6764: ee86 da03    	vdiv.f32	s26, s12, s6
    6768: fe32 8a00    	vselgt.f32	s16, s4, s0
    676c: eebe 2a00    	vmov.f32	s4, #-5.000000e-01
    6770: ee28 0a09    	vmul.f32	s0, s16, s18
    6774: ee70 0a0f    	vadd.f32	s1, s0, s30
    6778: eeb5 0a40    	vcmp.f32	s0, #0
    677c: ee70 2a02    	vadd.f32	s5, s0, s4
    6780: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6784: eefd 0ae0    	vcvt.s32.f32	s1, s1
    6788: eefd 2ae2    	vcvt.s32.f32	s5, s5
    678c: eef4 8a4d    	vcmp.f32	s17, s26
    6790: ee10 3a90    	vmov	r3, s1
    6794: ee12 0a90    	vmov	r0, s5
    6798: bfa8         	it	ge
    679a: 4618         	movge	r0, r3
    679c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67a0: fe38 0a8d    	vselgt.f32	s0, s17, s26
    67a4: eef0 8a45    	vmov.f32	s17, s10
    67a8: eeb0 5a69    	vmov.f32	s10, s19
    67ac: eeb4 0a41    	vcmp.f32	s0, s2
    67b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67b4: fe31 0a00    	vselgt.f32	s0, s2, s0
    67b8: eeb0 1a6e    	vmov.f32	s2, s29
    67bc: ee60 0a09    	vmul.f32	s1, s0, s18
    67c0: ed9f 9a8e    	vldr	s18, [pc, #568]         @ 0x69fc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x110c>
    67c4: ee70 2a82    	vadd.f32	s5, s1, s4
    67c8: eef5 0a40    	vcmp.f32	s1, #0
    67cc: ee30 da8f    	vadd.f32	s26, s1, s30
    67d0: ee00 0a90    	vmov	s1, r0
    67d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67d8: eefd 2ae2    	vcvt.s32.f32	s5, s5
    67dc: eb02 50c0    	add.w	r0, r2, r0, lsl #23
    67e0: eef8 0ae0    	vcvt.f32.s32	s1, s1
    67e4: ee12 3a90    	vmov	r3, s5
    67e8: eefd 2acd    	vcvt.s32.f32	s5, s26
    67ec: ee00 8ac9    	vmls.f32	s16, s1, s18
    67f0: eef0 0a4e    	vmov.f32	s1, s28
    67f4: eeb0 da6a    	vmov.f32	s26, s21
    67f8: ee12 5a90    	vmov	r5, s5
    67fc: bfa8         	it	ge
    67fe: 462b         	movge	r3, r5
    6800: ee02 3a90    	vmov	s5, r3
    6804: eb02 53c3    	add.w	r3, r2, r3, lsl #23
    6808: ee48 0a0c    	vmla.f32	s1, s16, s24
    680c: eef8 2ae2    	vcvt.f32.s32	s5, s5
    6810: ee02 0ac9    	vmls.f32	s0, s5, s18
    6814: eef0 2a4e    	vmov.f32	s5, s28
    6818: ee08 da20    	vmla.f32	s26, s16, s1
    681c: eef0 0a6a    	vmov.f32	s1, s21
    6820: ee40 2a0c    	vmla.f32	s5, s0, s24
    6824: ee20 9a00    	vmul.f32	s18, s0, s0
    6828: ee40 0a22    	vmla.f32	s1, s0, s5
    682c: eef0 2a4f    	vmov.f32	s5, s30
    6830: ee48 2a0d    	vmla.f32	s5, s16, s26
    6834: eeb0 da4f    	vmov.f32	s26, s30
    6838: ee00 da20    	vmla.f32	s26, s0, s1
    683c: ee68 0a08    	vmul.f32	s1, s16, s16
    6840: ee38 8a2e    	vadd.f32	s16, s16, s29
    6844: ee30 0a2e    	vadd.f32	s0, s0, s29
    6848: ee00 8aa2    	vmla.f32	s16, s1, s5
    684c: ee00 0a90    	vmov	s1, r0
    6850: ee09 0a0d    	vmla.f32	s0, s18, s26
    6854: ee09 3a10    	vmov	s18, r3
    6858: ee68 2a20    	vmul.f32	s5, s16, s1
    685c: ee20 8a09    	vmul.f32	s16, s0, s18
    6860: ed9f 9a67    	vldr	s18, [pc, #412]         @ 0x6a00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1110>
    6864: e05b         	b	0x691e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x102e> @ imm = #0xb6
    6866: bf00         	nop
    6868: 95 3a ae 43  	.word	0x43ae3a95
    686c: 19 91 f2 b8  	.word	0xb8f29119
    6870: 0a d7 23 3d  	.word	0x3d23d70a
    6874: 7c f2 b0 3a  	.word	0x3ab0f27c
    6878: a6 9b c4 3b  	.word	0x3bc49ba6
    687c: a6 9b c4 bb  	.word	0xbbc49ba6
    6880: 79 78 b0 43  	.word	0x43b07879
    6884: 7c f2 b0 ba  	.word	0xbab0f27c
    6888: eeb4 8a48    	vcmp.f32	s16, s16
    688c: ed9f 2a61    	vldr	s4, [pc, #388]          @ 0x6a14 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1124>
    6890: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6894: ed9f 3a60    	vldr	s6, [pc, #384]          @ 0x6a18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1128>
    6898: eef0 0a4f    	vmov.f32	s1, s30
    689c: fe12 0a08    	vselvs.f32	s0, s4, s16
    68a0: eeb0 da6a    	vmov.f32	s26, s21
    68a4: f04f 527e    	mov.w	r2, #0x3f800000
    68a8: eeb4 2a40    	vcmp.f32	s4, s0
    68ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68b0: fe30 0a02    	vselgt.f32	s0, s0, s4
    68b4: eeb4 0a42    	vcmp.f32	s0, s4
    68b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68bc: eef5 2a40    	vcmp.f32	s5, #0
    68c0: fe32 0a00    	vselgt.f32	s0, s4, s0
    68c4: ed9f 2a55    	vldr	s4, [pc, #340]          @ 0x6a1c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x112c>
    68c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68cc: ee40 0a03    	vmla.f32	s1, s0, s6
    68d0: eefd 0ae0    	vcvt.s32.f32	s1, s1
    68d4: eeb8 8ae0    	vcvt.f32.s32	s16, s1
    68d8: ee10 0a90    	vmov	r0, s1
    68dc: ee08 0a02    	vmla.f32	s0, s16, s4
    68e0: eeb0 8a4e    	vmov.f32	s16, s28
    68e4: eb02 50c0    	add.w	r0, r2, r0, lsl #23
    68e8: ee00 0a90    	vmov	s1, r0
    68ec: ee00 8a0c    	vmla.f32	s16, s0, s24
    68f0: ee00 da08    	vmla.f32	s26, s0, s16
    68f4: eeb0 8a4f    	vmov.f32	s16, s30
    68f8: ee00 8a0d    	vmla.f32	s16, s0, s26
    68fc: ee20 da00    	vmul.f32	s26, s0, s0
    6900: ee30 0a01    	vadd.f32	s0, s0, s2
    6904: ee0d 0a08    	vmla.f32	s0, s26, s16
    6908: ee20 0a20    	vmul.f32	s0, s0, s1
    690c: ee81 8a00    	vdiv.f32	s16, s2, s0
    6910: eef0 2a40    	vmov.f32	s5, s0
    6914: bfbc         	itt	lt
    6916: eef0 2a48    	vmovlt.f32	s5, s16
    691a: eeb0 8a40    	vmovlt.f32	s16, s0
    691e: eeb0 da64    	vmov.f32	s26, s9
    6922: ee05 da26    	vmla.f32	s26, s10, s13
    6926: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x6a10 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1120>
    692a: ee6d 5aa5    	vmul.f32	s11, s27, s11
    692e: eef0 da44    	vmov.f32	s27, s8
    6932: ee06 da00    	vmla.f32	s26, s12, s0
    6936: ee32 0ac8    	vsub.f32	s0, s5, s16
    693a: ee10 da2c    	vnmls.f32	s26, s0, s25
    693e: ee1d 0a10    	vmov	r0, s26
    6942: f020 4000    	bic	r0, r0, #0x80000000
    6946: f1b0 4fff    	cmp.w	r0, #0x7f800000
    694a: f6bf ac9d    	bge.w	0x6288 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x998> @ imm = #-0x6c6
    694e: ed9f 0a36    	vldr	s0, [pc, #216]          @ 0x6a28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1138>
    6952: eef4 ba6b    	vcmp.f32	s23, s23
    6956: ee8d 0a00    	vdiv.f32	s0, s26, s0
    695a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    695e: eeb0 0ac0    	vabs.f32	s0, s0
    6962: fe50 0a2b    	vselvs.f32	s1, s0, s23
    6966: eeb4 0a40    	vcmp.f32	s0, s0
    696a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    696e: fe10 0a80    	vselvs.f32	s0, s1, s0
    6972: eef4 0a40    	vcmp.f32	s1, s0
    6976: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    697a: fe70 da80    	vselgt.f32	s27, s1, s0
    697e: e483         	b	0x6288 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x998> @ imm = #-0x6fa
    6980: 53 4a a1 43  	.word	0x43a14a53
    6984: 00 bf 00 bf  	.word	0xbf00bf00
    6988: 9902         	ldr	r1, [sp, #0x8]
    698a: f04f 40ff    	mov.w	r0, #0x7f800000
    698e: 6008         	str	r0, [r1]
    6990: 2000         	movs	r0, #0x0
    6992: 710e         	strb	r6, [r1, #0x4]
    6994: e012         	b	0x69bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x10cc> @ imm = #0x24
    6996: bf00         	nop
    6998: 2603         	movs	r6, #0x3
    699a: ee1d 0a90    	vmov	r0, s27
    699e: 9901         	ldr	r1, [sp, #0x4]
    69a0: edc1 7a01    	vstr	s15, [r1, #4]
    69a4: 9902         	ldr	r1, [sp, #0x8]
    69a6: f020 4000    	bic	r0, r0, #0x80000000
    69aa: f1b0 4fff    	cmp.w	r0, #0x7f800000
    69ae: f04f 0000    	mov.w	r0, #0x0
    69b2: edc1 da00    	vstr	s27, [r1]
    69b6: 710e         	strb	r6, [r1, #0x4]
    69b8: bfb8         	it	lt
    69ba: 2001         	movlt	r0, #0x1
    69bc: 7148         	strb	r0, [r1, #0x5]
    69be: b018         	add	sp, #0x60
    69c0: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    69c4: b001         	add	sp, #0x4
    69c6: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    69ca: bdf0         	pop	{r4, r5, r6, r7, pc}
    69cc: bf00         	nop
    69ce: bf00         	nop
    69d0: f24b 7090    	movw	r0, #0xb790
    69d4: f64b 0210    	movw	r2, #0xb810
    69d8: f2c0 0000    	movt	r0, #0x0
    69dc: f2c0 0200    	movt	r2, #0x0
    69e0: a90a         	add	r1, sp, #0x28
    69e2: f003 fd01    	bl	0xa3e8 <core::panicking::panic_fmt> @ imm = #0x3a02
    69e6: bf00         	nop
    69e8: 00 00 c0 7f  	.word	0x7fc00000
    69ec: 00 bf 00 bf  	.word	0xbf00bf00
    69f0: ed9f aa04    	vldr	s20, [pc, #16]          @ 0x6a04 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x1114>
    69f4: eeb0 2a4a    	vmov.f32	s4, s20
    69f8: f7ff ba45    	b.w	0x5e86 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>+0x596> @ imm = #-0xb76
    69fc: 18 72 31 3f  	.word	0x3f317218
    6a00: f5 4a 39 3d  	.word	0x3d394af5
    6a04: 00 00 c0 7f  	.word	0x7fc00000
    6a08: 95 3a ae c3  	.word	0xc3ae3a95
    6a0c: 00 00 00 80  	.word	0x80000000
    6a10: ed 79 08 b9  	.word	0xb90879ed
    6a14: 00 00 a0 42  	.word	0x42a00000
    6a18: 3b aa b8 3f  	.word	0x3fb8aa3b
    6a1c: 18 72 31 bf  	.word	0xbf317218
    6a20: f5 4a 39 bd  	.word	0xbd394af5
    6a24: 00 00 a0 c2  	.word	0xc2a00000
    6a28: 0a d7 23 3c  	.word	0x3c23d70a
    6a2c: d4 d4 d4 d4  	.word	0xd4d4d4d4

00006a30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>>:
    6a30: b5f0         	push	{r4, r5, r6, r7, lr}
    6a32: af03         	add	r7, sp, #0xc
    6a34: e92d 0f00    	push.w	{r8, r9, r10, r11}
    6a38: b081         	sub	sp, #0x4
    6a3a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    6a3e: b0aa         	sub	sp, #0xa8
    6a40: ed91 1a00    	vldr	s2, [r1]
    6a44: 461c         	mov	r4, r3
    6a46: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    6a4a: 4605         	mov	r5, r0
    6a4c: ed9f 2b66    	vldr	d2, [pc, #408]          @ 0x6be8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1b8>
    6a50: ee21 3b02    	vmul.f64	d3, d1, d2
    6a54: ed91 1a01    	vldr	s2, [r1, #4]
    6a58: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    6a5c: ed92 4b14    	vldr	d4, [r2, #80]
    6a60: ee34 5b03    	vadd.f64	d5, d4, d3
    6a64: ee21 4b02    	vmul.f64	d4, d1, d2
    6a68: ed91 1a02    	vldr	s2, [r1, #8]
    6a6c: ee35 6b04    	vadd.f64	d6, d5, d4
    6a70: eeb7 5ac1    	vcvt.f64.f32	d5, s2
    6a74: ed9f 1b5e    	vldr	d1, [pc, #376]          @ 0x6bf0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1c0>
    6a78: ee25 8b01    	vmul.f64	d8, d5, d1
    6a7c: ed91 1a03    	vldr	s2, [r1, #12]
    6a80: eeb7 7ac1    	vcvt.f64.f32	d7, s2
    6a84: ed9f 1b5c    	vldr	d1, [pc, #368]          @ 0x6bf8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1c8>
    6a88: ee27 ab01    	vmul.f64	d10, d7, d1
    6a8c: ed91 1a05    	vldr	s2, [r1, #20]
    6a90: eeb7 9ac1    	vcvt.f64.f32	d9, s2
    6a94: ed91 1a06    	vldr	s2, [r1, #24]
    6a98: ee36 6b08    	vadd.f64	d6, d6, d8
    6a9c: eeb7 bac1    	vcvt.f64.f32	d11, s2
    6aa0: edd1 1a07    	vldr	s3, [r1, #28]
    6aa4: ee36 6b0a    	vadd.f64	d6, d6, d10
    6aa8: ee09 6b02    	vmla.f64	d6, d9, d2
    6aac: eeb7 9ae1    	vcvt.f64.f32	d9, s3
    6ab0: eefa 1a0b    	vmov.f32	s3, #-1.350000e+01
    6ab4: ee2b bb02    	vmul.f64	d11, d11, d2
    6ab8: ee29 cb02    	vmul.f64	d12, d9, d2
    6abc: ee36 db0b    	vadd.f64	d13, d6, d11
    6ac0: ed9f 6a4f    	vldr	s12, [pc, #316]         @ 0x6c00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1d0>
    6ac4: ee60 6a06    	vmul.f32	s13, s0, s12
    6ac8: ee3d 9b0c    	vadd.f64	d9, d13, d12
    6acc: ee20 6a86    	vmul.f32	s12, s1, s12
    6ad0: eddf 0a61    	vldr	s1, [pc, #388]          @ 0x6c58 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x228>
    6ad4: eeb7 eae6    	vcvt.f64.f32	d14, s13
    6ad8: ed9f db4b    	vldr	d13, [pc, #300]         @ 0x6c08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1d8>
    6adc: ee8e fb0d    	vdiv.f64	d15, d14, d13
    6ae0: ed9f eb4b    	vldr	d14, [pc, #300]         @ 0x6c10 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1e0>
    6ae4: ee09 fb0e    	vmla.f64	d15, d9, d14
    6ae8: ed9f 9b4b    	vldr	d9, [pc, #300]          @ 0x6c18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1e8>
    6aec: ee8f 9b09    	vdiv.f64	d9, d15, d9
    6af0: eeb2 fa0b    	vmov.f32	s30, #1.350000e+01
    6af4: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    6af8: ed92 9b16    	vldr	d9, [r2, #88]
    6afc: eef4 1a40    	vcmp.f32	s3, s0
    6b00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b04: ee39 3b03    	vadd.f64	d3, d9, d3
    6b08: fe31 0a80    	vselgt.f32	s0, s3, s0
    6b0c: ed8d 9b18    	vstr	d9, [sp, #96]
    6b10: eeb4 0a4f    	vcmp.f32	s0, s30
    6b14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b18: ee33 3b04    	vadd.f64	d3, d3, d4
    6b1c: fe3f 0a00    	vselgt.f32	s0, s30, s0
    6b20: ee05 3b02    	vmla.f64	d3, d5, d2
    6b24: ed81 0a04    	vstr	s0, [r1, #16]
    6b28: eeb7 9ac0    	vcvt.f64.f32	d9, s0
    6b2c: ee07 3b02    	vmla.f64	d3, d7, d2
    6b30: ed9f 2b4b    	vldr	d2, [pc, #300]          @ 0x6c60 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x230>
    6b34: ee09 3b02    	vmla.f64	d3, d9, d2
    6b38: ee33 2b0b    	vadd.f64	d2, d3, d11
    6b3c: eeb7 3ac6    	vcvt.f64.f32	d3, s12
    6b40: ed9f bb49    	vldr	d11, [pc, #292]         @ 0x6c68 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x238>
    6b44: ee32 2b0c    	vadd.f64	d2, d2, d12
    6b48: ee83 3b0d    	vdiv.f64	d3, d3, d13
    6b4c: ee02 3b0e    	vmla.f64	d3, d2, d14
    6b50: ed9f 2b47    	vldr	d2, [pc, #284]          @ 0x6c70 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x240>
    6b54: ee83 2b02    	vdiv.f64	d2, d3, d2
    6b58: ed92 cb0c    	vldr	d12, [r2, #48]
    6b5c: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    6b60: ed8d cb06    	vstr	d12, [sp, #24]
    6b64: eef4 1a42    	vcmp.f32	s3, s4
    6b68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b6c: ed92 eb1a    	vldr	d14, [r2, #104]
    6b70: fe31 2a82    	vselgt.f32	s4, s3, s4
    6b74: ed92 db1c    	vldr	d13, [r2, #112]
    6b78: eeb4 2a4f    	vcmp.f32	s4, s30
    6b7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b80: eeb7 4bce    	vcvt.f32.f64	s8, d14
    6b84: fe3f 3a02    	vselgt.f32	s6, s30, s4
    6b88: ed8d 4a11    	vstr	s8, [sp, #68]
    6b8c: eeb7 7bcd    	vcvt.f32.f64	s14, d13
    6b90: ed8d 7a10    	vstr	s14, [sp, #64]
    6b94: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    6b98: ed81 3a05    	vstr	s6, [r1, #20]
    6b9c: ed8d 2b16    	vstr	d2, [sp, #88]
    6ba0: ee23 5a20    	vmul.f32	s10, s6, s1
    6ba4: ee02 cb0b    	vmla.f64	d12, d2, d11
    6ba8: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0x6f48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x518>
    6bac: ee35 4a04    	vadd.f32	s8, s10, s8
    6bb0: ee8c 2b02    	vdiv.f64	d2, d12, d2
    6bb4: ee35 5a07    	vadd.f32	s10, s10, s14
    6bb8: ed9f 7adb    	vldr	s14, [pc, #876]         @ 0x6f28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x4f8>
    6bbc: eef7 4bc2    	vcvt.f32.f64	s9, d2
    6bc0: eeb0 2a44    	vmov.f32	s4, s8
    6bc4: ee04 2a87    	vmla.f32	s4, s9, s14
    6bc8: eeb0 7a45    	vmov.f32	s14, s10
    6bcc: ee04 7ae0    	vmls.f32	s14, s9, s1
    6bd0: fe82 2a47    	vminnm.f32	s4, s4, s14
    6bd4: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    6bd8: eeb4 2a47    	vcmp.f32	s4, s14
    6bdc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6be0: f240 810c    	bls.w	0x6dfc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3cc> @ imm = #0x218
    6be4: e048         	b	0x6c78 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x248> @ imm = #0x90
    6be6: bf00         	nop
    6be8: 00 00 00 00  	.word	0x00000000
    6bec: 00 00 00 00  	.word	0x00000000
    6bf0: 35 d7 f4 dc  	.word	0xdcf4d735
    6bf4: 47 af d5 3f  	.word	0x3fd5af47
    6bf8: 65 44 24 3c  	.word	0x3c244465
    6bfc: c8 40 c4 3f  	.word	0x3fc440c8
    6c00: 00 80 3b 47  	.word	0x473b8000
    6c04: 00 bf 00 bf  	.word	0xbf00bf00
    6c08: 4e 55 8a 9e  	.word	0x9e8a554e
    6c0c: da 9b f1 40  	.word	0x40f19bda
    6c10: 3e 1f 24 a5  	.word	0xa5241f3e
    6c14: 52 c7 75 40  	.word	0x4075c752
    6c18: 5f 35 f4 2d  	.word	0x2df4355f
    6c1c: d1 aa 66 40  	.word	0x4066aad1
    6c20: cf a4 da 38  	.word	0x38daa4cf
    6c24: 75 47 20 3f  	.word	0x3f204775
    6c28: eb 20 97 f7  	.word	0xf79720eb
    6c2c: 94 f9 ef 3f  	.word	0x3feff994
    6c30: c2 17 26 53  	.word	0x532617c2
    6c34: 05 a3 72 3f  	.word	0x3f72a305
    6c38: 9d f1 d1 f9  	.word	0xf9d1f19d
    6c3c: 37 e7 dd be  	.word	0xbedde737
    6c40: 9d f1 d1 f9  	.word	0xf9d1f19d
    6c44: 37 e7 bd be  	.word	0xbebde737
    6c48: 84 dd 26 6c  	.word	0x6c26dd84
    6c4c: 48 9f 82 3f  	.word	0x3f829f48
    6c50: 84 dd 26 6c  	.word	0x6c26dd84
    6c54: 48 9f 62 3f  	.word	0x3f629f48
    6c58: a8 cc 7f 3f  	.word	0x3f7fcca8
    6c5c: 00 bf 00 bf  	.word	0xbf00bf00
    6c60: 8e 66 bb a2  	.word	0xa2bb668e
    6c64: 4b 3f c2 bf  	.word	0xbfc23f4b
    6c68: 39 4d 87 3a  	.word	0x3a874d39
    6c6c: 1a 44 20 3f  	.word	0x3f20441a
    6c70: 47 49 7c 94  	.word	0x947c4947
    6c74: 0b ea 55 40  	.word	0x4055ea0b
    6c78: ed1f 2b17    	vldr	d2, [pc, #-92]          @ 0x6c20 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1f0>
    6c7c: ed9f 7aaa    	vldr	s14, [pc, #680]         @ 0x6f28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x4f8>
    6c80: eef6 1a00    	vmov.f32	s3, #5.000000e-01
    6c84: ee8c 2b02    	vdiv.f64	d2, d12, d2
    6c88: eddf 0ae2    	vldr	s1, [pc, #904]          @ 0x7014 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e4>
    6c8c: eef7 5a00    	vmov.f32	s11, #1.000000e+00
    6c90: eef7 4bc2    	vcvt.f32.f64	s9, d2
    6c94: eeb0 2a44    	vmov.f32	s4, s8
    6c98: ee04 2a87    	vmla.f32	s4, s9, s14
    6c9c: eeb0 7a45    	vmov.f32	s14, s10
    6ca0: ee04 7aa0    	vmla.f32	s14, s9, s1
    6ca4: fe82 2a47    	vminnm.f32	s4, s4, s14
    6ca8: ed9f 7adb    	vldr	s14, [pc, #876]         @ 0x7018 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    6cac: ee31 2ac2    	vsub.f32	s4, s3, s4
    6cb0: fe82 2a47    	vminnm.f32	s4, s4, s14
    6cb4: eeb0 7a65    	vmov.f32	s14, s11
    6cb8: ee02 7a21    	vmla.f32	s14, s4, s3
    6cbc: ed9f 2ad7    	vldr	s4, [pc, #860]          @ 0x701c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5ec>
    6cc0: eddf 1ad7    	vldr	s3, [pc, #860]          @ 0x7020 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5f0>
    6cc4: ee27 2a02    	vmul.f32	s4, s14, s4
    6cc8: eeb4 2a61    	vcmp.f32	s4, s3
    6ccc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6cd0: f240 8094    	bls.w	0x6dfc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3cc> @ imm = #0x128
    6cd4: ed1f 2b2c    	vldr	d2, [pc, #-176]         @ 0x6c28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1f8>
    6cd8: eeb7 fb00    	vmov.f64	d15, #1.000000e+00
    6cdc: ed9d 7b16    	vldr	d7, [sp, #88]
    6ce0: ee27 2b02    	vmul.f64	d2, d7, d2
    6ce4: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
    6ce8: ed8d 2b14    	vstr	d2, [sp, #80]
    6cec: ee3e 2b02    	vadd.f64	d2, d14, d2
    6cf0: eeb0 eb4f    	vmov.f64	d14, d15
    6cf4: ee37 2b42    	vsub.f64	d2, d7, d2
    6cf8: ee02 eb07    	vmla.f64	d14, d2, d7
    6cfc: eeb0 7b4b    	vmov.f64	d7, d11
    6d00: ed1f 2b35    	vldr	d2, [pc, #-212]         @ 0x6c30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x200>
    6d04: ee0e 7b02    	vmla.f64	d7, d14, d2
    6d08: ed1f 2b35    	vldr	d2, [pc, #-212]         @ 0x6c38 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x208>
    6d0c: ee2c 2b02    	vmul.f64	d2, d12, d2
    6d10: ee07 2b07    	vmla.f64	d2, d7, d7
    6d14: eeb1 eb4c    	vneg.f64	d14, d12
    6d18: eeb5 2b40    	vcmp.f64	d2, #0
    6d1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d20: d428         	bmi	0x6d74 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #0x50
    6d22: ec53 0b17    	vmov	r0, r3, d7
    6d26: eeb1 2bc2    	vsqrt.f64	d2, d2
    6d2a: ec56 0b12    	vmov	r0, r6, d2
    6d2e: 0fdb         	lsrs	r3, r3, #0x1f
    6d30: f363 76df    	bfi	r6, r3, #31, #1
    6d34: ec46 0b12    	vmov	d2, r0, r6
    6d38: ee37 2b02    	vadd.f64	d2, d7, d2
    6d3c: eebe 7b00    	vmov.f64	d7, #-5.000000e-01
    6d40: ee22 7b07    	vmul.f64	d7, d2, d7
    6d44: ed1f 2b42    	vldr	d2, [pc, #-264]         @ 0x6c40 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x210>
    6d48: ee87 2b02    	vdiv.f64	d2, d7, d2
    6d4c: ec53 0b12    	vmov	r0, r3, d2
    6d50: f64f 70ff    	movw	r0, #0xffff
    6d54: f6c7 70ef    	movt	r0, #0x7fef
    6d58: f023 4300    	bic	r3, r3, #0x80000000
    6d5c: 4283         	cmp	r3, r0
    6d5e: f341 815f    	ble.w	0x8020 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15f0> @ imm = #0x12be
    6d62: ee8e 2b07    	vdiv.f64	d2, d14, d7
    6d66: ec56 3b12    	vmov	r3, r6, d2
    6d6a: f026 4300    	bic	r3, r6, #0x80000000
    6d6e: 4283         	cmp	r3, r0
    6d70: f341 81d2    	ble.w	0x8118 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x16e8> @ imm = #0x13a4
    6d74: ed9d 2b14    	vldr	d2, [sp, #80]
    6d78: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
    6d7c: ee3d 2b02    	vadd.f64	d2, d13, d2
    6d80: ee37 2b42    	vsub.f64	d2, d7, d2
    6d84: ee02 fb07    	vmla.f64	d15, d2, d7
    6d88: ed1f 2b57    	vldr	d2, [pc, #-348]         @ 0x6c30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x200>
    6d8c: ee0f bb02    	vmla.f64	d11, d15, d2
    6d90: ed1f 7b53    	vldr	d7, [pc, #-332]         @ 0x6c48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x218>
    6d94: ee2b 2b0b    	vmul.f64	d2, d11, d11
    6d98: ee0c 2b07    	vmla.f64	d2, d12, d7
    6d9c: eeb5 2b40    	vcmp.f64	d2, #0
    6da0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6da4: d428         	bmi	0x6df8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #0x50
    6da6: ec53 0b1b    	vmov	r0, r3, d11
    6daa: eeb1 2bc2    	vsqrt.f64	d2, d2
    6dae: ec56 0b12    	vmov	r0, r6, d2
    6db2: 0fdb         	lsrs	r3, r3, #0x1f
    6db4: eebe 7b00    	vmov.f64	d7, #-5.000000e-01
    6db8: f363 76df    	bfi	r6, r3, #31, #1
    6dbc: ec46 0b12    	vmov	d2, r0, r6
    6dc0: ee3b 2b02    	vadd.f64	d2, d11, d2
    6dc4: ee22 7b07    	vmul.f64	d7, d2, d7
    6dc8: ed1f 2b5f    	vldr	d2, [pc, #-380]         @ 0x6c50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x220>
    6dcc: ee87 2b02    	vdiv.f64	d2, d7, d2
    6dd0: ec53 0b12    	vmov	r0, r3, d2
    6dd4: f64f 70ff    	movw	r0, #0xffff
    6dd8: f6c7 70ef    	movt	r0, #0x7fef
    6ddc: f023 4300    	bic	r3, r3, #0x80000000
    6de0: 4283         	cmp	r3, r0
    6de2: f341 815d    	ble.w	0x80a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1670> @ imm = #0x12ba
    6de6: ee8e 2b07    	vdiv.f64	d2, d14, d7
    6dea: ec56 3b12    	vmov	r3, r6, d2
    6dee: f026 4300    	bic	r3, r6, #0x80000000
    6df2: 4283         	cmp	r3, r0
    6df4: f341 81d0    	ble.w	0x8198 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1768> @ imm = #0x13a0
    6df8: eef0 4a41    	vmov.f32	s9, s2
    6dfc: edc1 4a06    	vstr	s9, [r1, #24]
    6e00: eef0 3a64    	vmov.f32	s7, s9
    6e04: ed9f 1aa7    	vldr	s2, [pc, #668]          @ 0x70a4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x674>
    6e08: eddf 4aa7    	vldr	s9, [pc, #668]          @ 0x70a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x678>
    6e0c: ee36 7a81    	vadd.f32	s14, s13, s2
    6e10: ee76 0aa4    	vadd.f32	s1, s13, s9
    6e14: ed9f 2aa5    	vldr	s4, [pc, #660]          @ 0x70ac <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x67c>
    6e18: eec7 5a02    	vdiv.f32	s11, s14, s4
    6e1c: eec0 ba82    	vdiv.f32	s23, s1, s4
    6e20: eef4 5a6b    	vcmp.f32	s11, s23
    6e24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e28: f201 81ee    	bhi.w	0x8208 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x17d8> @ imm = #0x13dc
    6e2c: ed92 7b14    	vldr	d7, [r2, #80]
    6e30: ed9f ba9f    	vldr	s22, [pc, #636]         @ 0x70b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x680>
    6e34: 2000         	movs	r0, #0x0
    6e36: ee37 7b08    	vadd.f64	d7, d7, d8
    6e3a: 2300         	movs	r3, #0x0
    6e3c: eddf 2a9d    	vldr	s5, [pc, #628]          @ 0x70b4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x684>
    6e40: eeb7 fa00    	vmov.f32	s30, #1.000000e+00
    6e44: ed9f 8b9c    	vldr	d8, [pc, #624]          @ 0x70b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x688>
    6e48: eddf fa76    	vldr	s31, [pc, #472]         @ 0x7024 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5f4>
    6e4c: ee37 7b0a    	vadd.f64	d7, d7, d10
    6e50: ed8d 7b0e    	vstr	d7, [sp, #56]
    6e54: ee09 7b08    	vmla.f64	d7, d9, d8
    6e58: ed9f 8ae8    	vldr	s16, [pc, #928]         @ 0x71fc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7cc>
    6e5c: ee66 0a88    	vmul.f32	s1, s13, s16
    6e60: eeb7 7bc7    	vcvt.f32.f64	s14, d7
    6e64: edcd 0a0d    	vstr	s1, [sp, #52]
    6e68: ee47 0a0b    	vmla.f32	s1, s14, s22
    6e6c: ed92 7b08    	vldr	d7, [r2, #32]
    6e70: eef7 1bc7    	vcvt.f32.f64	s3, d7
    6e74: edcd 1a0c    	vstr	s3, [sp, #48]
    6e78: ee40 1a22    	vmla.f32	s3, s0, s5
    6e7c: eeff 2a00    	vmov.f32	s5, #-1.000000e+00
    6e80: eef4 5a60    	vcmp.f32	s11, s1
    6e84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e88: ee43 1a2f    	vmla.f32	s3, s6, s31
    6e8c: fe35 7aa0    	vselgt.f32	s14, s11, s1
    6e90: eeb4 7a6b    	vcmp.f32	s14, s23
    6e94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e98: eef4 0a65    	vcmp.f32	s1, s11
    6e9c: fe3b ca87    	vselgt.f32	s24, s23, s14
    6ea0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ea4: eef4 0a6b    	vcmp.f32	s1, s23
    6ea8: eddf 0a5b    	vldr	s1, [pc, #364]          @ 0x7018 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    6eac: bfc8         	it	gt
    6eae: 2001         	movgt	r0, #0x1
    6eb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6eb4: eef5 1a40    	vcmp.f32	s3, #0
    6eb8: eeb0 7ae1    	vabs.f32	s14, s3
    6ebc: eef0 1a60    	vmov.f32	s3, s1
    6ec0: eeb0 ea60    	vmov.f32	s28, s1
    6ec4: bf48         	it	mi
    6ec6: 2301         	movmi	r3, #0x1
    6ec8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ecc: bf48         	it	mi
    6ece: eef0 1a62    	vmovmi.f32	s3, s5
    6ed2: eef0 2a60    	vmov.f32	s5, s1
    6ed6: eef0 aa60    	vmov.f32	s21, s1
    6eda: fe7f 6a21    	vselgt.f32	s13, s30, s3
    6ede: eddf 1acb    	vldr	s3, [pc, #812]          @ 0x720c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7dc>
    6ee2: eeb4 7a61    	vcmp.f32	s14, s3
    6ee6: eef0 1a60    	vmov.f32	s3, s1
    6eea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6eee: ea03 0300    	and.w	r3, r3, r0
    6ef2: f280 80c4    	bge.w	0x707e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x64e> @ imm = #0x188
    6ef6: eddf 1ac6    	vldr	s3, [pc, #792]          @ 0x7210 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e0>
    6efa: eeb4 7a61    	vcmp.f32	s14, s3
    6efe: eddf 2a46    	vldr	s5, [pc, #280]          @ 0x7018 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    6f02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f06: d913         	bls	0x6f30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x500> @ imm = #0x26
    6f08: eddf 1ac2    	vldr	s3, [pc, #776]          @ 0x7214 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e4>
    6f0c: eeb4 7a61    	vcmp.f32	s14, s3
    6f10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f14: d91c         	bls	0x6f50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x520> @ imm = #0x38
    6f16: eddf 1ac0    	vldr	s3, [pc, #768]          @ 0x7218 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e8>
    6f1a: ee77 1a21    	vadd.f32	s3, s14, s3
    6f1e: eddf 7abf    	vldr	s15, [pc, #764]         @ 0x721c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7ec>
    6f22: eeb0 7a08    	vmov.f32	s14, #3.000000e+00
    6f26: e01b         	b	0x6f60 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x530> @ imm = #0x36
    6f28: 0d 61 4d 3a  	.word	0x3a4d610d
    6f2c: 00 bf 00 bf  	.word	0xbf00bf00
    6f30: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    6f34: eef0 1a62    	vmov.f32	s3, s5
    6f38: e016         	b	0x6f68 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x538> @ imm = #0x2c
    6f3a: bf00         	nop
    6f3c: bf00         	nop
    6f3e: bf00         	nop
    6f40: 8e 66 bb a2  	.word	0xa2bb668e
    6f44: 4b 3f c2 bf  	.word	0xbfc23f4b
    6f48: 2c 52 fa 24  	.word	0x24fa522c
    6f4c: 26 25 73 3f  	.word	0x3f732526
    6f50: eddf 1ae8    	vldr	s3, [pc, #928]          @ 0x72f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c4>
    6f54: ee77 1a21    	vadd.f32	s3, s14, s3
    6f58: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    6f5c: eddf 7ae6    	vldr	s15, [pc, #920]         @ 0x72f8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c8>
    6f60: ee01 7aa7    	vmla.f32	s14, s3, s15
    6f64: ee66 1aa7    	vmul.f32	s3, s13, s15
    6f68: eef2 6a0e    	vmov.f32	s13, #1.500000e+01
    6f6c: eeb1 ea61    	vneg.f32	s28, s3
    6f70: ee36 7ac7    	vsub.f32	s14, s13, s14
    6f74: fec7 6a22    	vmaxnm.f32	s13, s14, s5
    6f78: eef5 6a40    	vcmp.f32	s13, #0
    6f7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f80: d942         	bls	0x7008 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5d8> @ imm = #0x84
    6f82: eeb0 7acc    	vabs.f32	s14, s24
    6f86: eeb4 7a66    	vcmp.f32	s14, s13
    6f8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f8e: d94b         	bls	0x7028 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5f8> @ imm = #0x96
    6f90: ee86 7a87    	vdiv.f32	s14, s13, s14
    6f94: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    6f98: ee67 1a07    	vmul.f32	s3, s14, s14
    6f9c: eeb0 aa62    	vmov.f32	s20, s5
    6fa0: ee61 1aa1    	vmul.f32	s3, s3, s3
    6fa4: ee61 1aa1    	vmul.f32	s3, s3, s3
    6fa8: ee61 1aa1    	vmul.f32	s3, s3, s3
    6fac: ee71 7aa2    	vadd.f32	s15, s3, s5
    6fb0: eef4 7a62    	vcmp.f32	s15, s5
    6fb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6fb8: d009         	beq	0x6fce <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x59e> @ imm = #0x12
    6fba: eeb0 aa67    	vmov.f32	s20, s15
    6fbe: eeb1 aaca    	vsqrt.f32	s20, s20
    6fc2: eeb1 aaca    	vsqrt.f32	s20, s20
    6fc6: eeb1 aaca    	vsqrt.f32	s20, s20
    6fca: eeb1 aaca    	vsqrt.f32	s20, s20
    6fce: eec2 2a8a    	vdiv.f32	s5, s5, s20
    6fd2: eeb4 ca4c    	vcmp.f32	s24, s24
    6fd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6fda: eec2 7aa7    	vdiv.f32	s15, s5, s15
    6fde: f181 811f    	bvs.w	0x8220 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x17f0> @ imm = #0x123e
    6fe2: ee1c 0a10    	vmov	r0, s24
    6fe6: f04f 567e    	mov.w	r6, #0x3f800000
    6fea: f366 001e    	bfi	r0, r6, #0, #31
    6fee: ee0a 0a10    	vmov	s20, r0
    6ff2: ee6a 6a26    	vmul.f32	s13, s20, s13
    6ff6: ee6a aa27    	vmul.f32	s21, s20, s15
    6ffa: ee66 2aa2    	vmul.f32	s5, s13, s5
    6ffe: ee27 7a21    	vmul.f32	s14, s14, s3
    7002: ee67 1a27    	vmul.f32	s3, s14, s15
    7006: e03a         	b	0x707e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x64e> @ imm = #0x74
    7008: eef0 1a62    	vmov.f32	s3, s5
    700c: eef0 aa62    	vmov.f32	s21, s5
    7010: e035         	b	0x707e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x64e> @ imm = #0x6a
    7012: bf00         	nop
    7014: a8 cc 7f bf  	.word	0xbf7fcca8
    7018: 00 00 00 00  	.word	0x00000000
    701c: 2b 18 95 3b  	.word	0x3b95182b
    7020: 95 bf d6 33  	.word	0x33d6bf95
    7024: 34 8b b1 36  	.word	0x36b18b34
    7028: ee8c 7a26    	vdiv.f32	s14, s24, s13
    702c: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    7030: ee27 7a07    	vmul.f32	s14, s14, s14
    7034: eef0 7a62    	vmov.f32	s15, s5
    7038: ee27 7a07    	vmul.f32	s14, s14, s14
    703c: ee27 7a07    	vmul.f32	s14, s14, s14
    7040: ee27 7a07    	vmul.f32	s14, s14, s14
    7044: ee77 1a22    	vadd.f32	s3, s14, s5
    7048: eef4 1a62    	vcmp.f32	s3, s5
    704c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7050: d009         	beq	0x7066 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x636> @ imm = #0x12
    7052: eef0 7a61    	vmov.f32	s15, s3
    7056: eef1 7ae7    	vsqrt.f32	s15, s15
    705a: eef1 7ae7    	vsqrt.f32	s15, s15
    705e: eef1 7ae7    	vsqrt.f32	s15, s15
    7062: eef1 7ae7    	vsqrt.f32	s15, s15
    7066: eec2 2aa7    	vdiv.f32	s5, s5, s15
    706a: ee2c 7a07    	vmul.f32	s14, s24, s14
    706e: eec2 1aa1    	vdiv.f32	s3, s5, s3
    7072: ee87 7a26    	vdiv.f32	s14, s14, s13
    7076: ee6c 2a22    	vmul.f32	s5, s24, s5
    707a: ee67 aa21    	vmul.f32	s21, s14, s3
    707e: ee70 ea62    	vsub.f32	s29, s0, s5
    7082: 2b00         	cmp	r3, #0x0
    7084: ed9f 7abd    	vldr	s14, [pc, #756]         @ 0x737c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x94c>
    7088: eddf 2abd    	vldr	s5, [pc, #756]          @ 0x7380 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x950>
    708c: ee1e 0a90    	vmov	r0, s29
    7090: fe42 2a87    	vseleq.f32	s5, s5, s14
    7094: f020 4000    	bic	r0, r0, #0x80000000
    7098: f1b0 4fff    	cmp.w	r0, #0x7f800000
    709c: db10         	blt	0x70c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x690> @ imm = #0x20
    709e: eddf 6ab9    	vldr	s13, [pc, #740]         @ 0x7384 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x954>
    70a2: e017         	b	0x70d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x6a4> @ imm = #0x2e
    70a4: 00 24 74 cb  	.word	0xcb742400
    70a8: 00 24 74 4b  	.word	0x4b742400
    70ac: 00 a0 8c 47  	.word	0x478ca000
    70b0: 95 3a ae 43  	.word	0x43ae3a95
    70b4: a8 b9 92 b8  	.word	0xb892b9a8
    70b8: a6 26 74 7c  	.word	0x7c7426a6
    70bc: 9f 8f e0 bf  	.word	0xbfe08f9f
    70c0: eeb2 7a0e    	vmov.f32	s14, #1.500000e+01
    70c4: ed5f 6a2c    	vldr	s13, [pc, #-176]        @ 0x7018 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    70c8: ee8e 7a87    	vdiv.f32	s14, s29, s14
    70cc: eeb0 7ac7    	vabs.f32	s14, s14
    70d0: fec7 6a26    	vmaxnm.f32	s13, s14, s13
    70d4: ee36 1a01    	vadd.f32	s2, s12, s2
    70d8: ee76 4a24    	vadd.f32	s9, s12, s9
    70dc: ee81 7a02    	vdiv.f32	s14, s2, s4
    70e0: eec4 7a82    	vdiv.f32	s15, s9, s4
    70e4: eeb4 7a67    	vcmp.f32	s14, s15
    70e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70ec: f201 808c    	bhi.w	0x8208 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x17d8> @ imm = #0x1118
    70f0: ed8d ca12    	vstr	s24, [sp, #72]
    70f4: ee26 2a08    	vmul.f32	s4, s12, s16
    70f8: ed1f cb6f    	vldr	d12, [pc, #-444]        @ 0x6f40 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x510>
    70fc: ed8d 2a0a    	vstr	s4, [sp, #40]
    7100: ed9f 6ae1    	vldr	s12, [pc, #900]         @ 0x7488 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa58>
    7104: ed9d db18    	vldr	d13, [sp, #96]
    7108: 2000         	movs	r0, #0x0
    710a: ed8d 7a0b    	vstr	s14, [sp, #44]
    710e: ee09 db0c    	vmla.f64	d13, d9, d12
    7112: edcd 7a03    	vstr	s15, [sp, #12]
    7116: ed9f 9b72    	vldr	d9, [pc, #456]          @ 0x72e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8b0>
    711a: ed9d cb16    	vldr	d12, [sp, #88]
    711e: ee0c db09    	vmla.f64	d13, d12, d9
    7122: eeb6 ca00    	vmov.f32	s24, #5.000000e-01
    7126: ed92 8b0a    	vldr	d8, [r2, #40]
    712a: 2200         	movs	r2, #0x0
    712c: eeb7 1bcd    	vcvt.f32.f64	s2, d13
    7130: eef7 4bc8    	vcvt.f32.f64	s9, d8
    7134: ee01 2a0b    	vmla.f32	s4, s2, s22
    7138: edcd 4a09    	vstr	s9, [sp, #36]
    713c: ee40 4a2f    	vmla.f32	s9, s0, s31
    7140: ee43 4a06    	vmla.f32	s9, s6, s12
    7144: eeb4 7a42    	vcmp.f32	s14, s4
    7148: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    714c: fe37 1a02    	vselgt.f32	s2, s14, s4
    7150: eeb4 1a67    	vcmp.f32	s2, s15
    7154: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7158: eeb4 2a47    	vcmp.f32	s4, s14
    715c: eebf 7a00    	vmov.f32	s14, #-1.000000e+00
    7160: fe37 da81    	vselgt.f32	s26, s15, s2
    7164: ed9f 1ac9    	vldr	s2, [pc, #804]          @ 0x748c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa5c>
    7168: ee23 6a81    	vmul.f32	s12, s7, s2
    716c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7170: eeb4 2a67    	vcmp.f32	s4, s15
    7174: ee36 1a24    	vadd.f32	s2, s12, s9
    7178: bfc8         	it	gt
    717a: 2001         	movgt	r0, #0x1
    717c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7180: eeb5 1a40    	vcmp.f32	s2, #0
    7184: eef0 7ac1    	vabs.f32	s15, s2
    7188: ed1f 1a5d    	vldr	s2, [pc, #-372]         @ 0x7018 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    718c: eeb0 2a41    	vmov.f32	s4, s2
    7190: eeb0 8a41    	vmov.f32	s16, s2
    7194: bf48         	it	mi
    7196: 2201         	movmi	r2, #0x1
    7198: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    719c: bf48         	it	mi
    719e: eeb0 2a47    	vmovmi.f32	s4, s14
    71a2: eeb0 9a41    	vmov.f32	s18, s2
    71a6: eef0 8a41    	vmov.f32	s17, s2
    71aa: fe7f 4a02    	vselgt.f32	s9, s30, s4
    71ae: ed9f 2a17    	vldr	s4, [pc, #92]           @ 0x720c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7dc>
    71b2: eef4 7a42    	vcmp.f32	s15, s4
    71b6: eeb0 2a41    	vmov.f32	s4, s2
    71ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71be: ea02 0200    	and.w	r2, r2, r0
    71c2: ed8d da14    	vstr	s26, [sp, #80]
    71c6: f280 80c6    	bge.w	0x7356 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x926> @ imm = #0x18c
    71ca: ed9f 2a11    	vldr	s4, [pc, #68]           @ 0x7210 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e0>
    71ce: eef4 7a42    	vcmp.f32	s15, s4
    71d2: ed1f 2a6f    	vldr	s4, [pc, #-444]         @ 0x7018 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5e8>
    71d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71da: d911         	bls	0x7200 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7d0> @ imm = #0x22
    71dc: ed9f 8a0d    	vldr	s16, [pc, #52]          @ 0x7214 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e4>
    71e0: eef4 7a48    	vcmp.f32	s15, s16
    71e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71e8: d91a         	bls	0x7220 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7f0> @ imm = #0x34
    71ea: ed9f 8a0b    	vldr	s16, [pc, #44]          @ 0x7218 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7e8>
    71ee: ee37 8a88    	vadd.f32	s16, s15, s16
    71f2: ed9f 9a0a    	vldr	s18, [pc, #40]          @ 0x721c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x7ec>
    71f6: eef0 7a08    	vmov.f32	s15, #3.000000e+00
    71fa: e019         	b	0x7230 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x800> @ imm = #0x32
    71fc: 64 9c 68 37  	.word	0x37689c64
    7200: eef7 7a08    	vmov.f32	s15, #1.500000e+00
    7204: eef0 4a42    	vmov.f32	s9, s4
    7208: e016         	b	0x7238 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x808> @ imm = #0x2c
    720a: bf00         	nop
    720c: 0a d7 23 3d  	.word	0x3d23d70a
    7210: 7c f2 b0 3a  	.word	0x3ab0f27c
    7214: a6 9b c4 3b  	.word	0x3bc49ba6
    7218: a6 9b c4 bb  	.word	0xbbc49ba6
    721c: 79 78 b0 43  	.word	0x43b07879
    7220: ed9f 8a34    	vldr	s16, [pc, #208]         @ 0x72f4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c4>
    7224: ee37 8a88    	vadd.f32	s16, s15, s16
    7228: eef7 7a08    	vmov.f32	s15, #1.500000e+00
    722c: ed9f 9a32    	vldr	s18, [pc, #200]         @ 0x72f8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8c8>
    7230: ee48 7a09    	vmla.f32	s15, s16, s18
    7234: ee64 4a89    	vmul.f32	s9, s9, s18
    7238: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    723c: ee78 7a67    	vsub.f32	s15, s16, s15
    7240: eeb1 8a64    	vneg.f32	s16, s9
    7244: fec7 7a82    	vmaxnm.f32	s15, s15, s4
    7248: eef5 7a40    	vcmp.f32	s15, #0
    724c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7250: d94a         	bls	0x72e8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8b8> @ imm = #0x94
    7252: eeb0 2acd    	vabs.f32	s4, s26
    7256: eeb4 2a67    	vcmp.f32	s4, s15
    725a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    725e: d94f         	bls	0x7300 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8d0> @ imm = #0x9e
    7260: eec7 4a82    	vdiv.f32	s9, s15, s4
    7264: ee24 2aa4    	vmul.f32	s4, s9, s9
    7268: ee22 2a02    	vmul.f32	s4, s4, s4
    726c: ee22 2a02    	vmul.f32	s4, s4, s4
    7270: ee22 9a02    	vmul.f32	s18, s4, s4
    7274: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    7278: ee39 aa02    	vadd.f32	s20, s18, s4
    727c: eeb0 da42    	vmov.f32	s26, s4
    7280: eeb4 aa42    	vcmp.f32	s20, s4
    7284: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7288: d009         	beq	0x729e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x86e> @ imm = #0x12
    728a: eeb0 da4a    	vmov.f32	s26, s20
    728e: eeb1 dacd    	vsqrt.f32	s26, s26
    7292: eeb1 dacd    	vsqrt.f32	s26, s26
    7296: eeb1 dacd    	vsqrt.f32	s26, s26
    729a: eeb1 dacd    	vsqrt.f32	s26, s26
    729e: ee82 2a0d    	vdiv.f32	s4, s4, s26
    72a2: ed9d 7a14    	vldr	s14, [sp, #80]
    72a6: eeb4 7a47    	vcmp.f32	s14, s14
    72aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72ae: ee82 aa0a    	vdiv.f32	s20, s4, s20
    72b2: f180 87bd    	bvs.w	0x8230 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1800> @ imm = #0xf7a
    72b6: ee17 0a10    	vmov	r0, s14
    72ba: f04f 537e    	mov.w	r3, #0x3f800000
    72be: f363 001e    	bfi	r0, r3, #0, #31
    72c2: ee0d 0a10    	vmov	s26, r0
    72c6: ee6d 7a27    	vmul.f32	s15, s26, s15
    72ca: ee6d 8a0a    	vmul.f32	s17, s26, s20
    72ce: ee27 2a82    	vmul.f32	s4, s15, s4
    72d2: ee64 4a89    	vmul.f32	s9, s9, s18
    72d6: ee24 9a8a    	vmul.f32	s18, s9, s20
    72da: e03c         	b	0x7356 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x926> @ imm = #0x78
    72dc: bf00         	nop
    72de: bf00         	nop
    72e0: a4 eb ea 42  	.word	0x42eaeba4
    72e4: fb d4 cf bf  	.word	0xbfcfd4fb
    72e8: eeb0 9a42    	vmov.f32	s18, s4
    72ec: eef0 8a42    	vmov.f32	s17, s4
    72f0: e031         	b	0x7356 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x926> @ imm = #0x62
    72f2: bf00         	nop
    72f4: 7c f2 b0 ba  	.word	0xbab0f27c
    72f8: 53 4a a1 43  	.word	0x43a14a53
    72fc: 00 bf 00 bf  	.word	0xbf00bf00
    7300: ee8d 2a27    	vdiv.f32	s4, s26, s15
    7304: eeb7 9a00    	vmov.f32	s18, #1.000000e+00
    7308: ee22 2a02    	vmul.f32	s4, s4, s4
    730c: eeb0 aa49    	vmov.f32	s20, s18
    7310: ee22 2a02    	vmul.f32	s4, s4, s4
    7314: ee22 2a02    	vmul.f32	s4, s4, s4
    7318: ee22 2a02    	vmul.f32	s4, s4, s4
    731c: ee72 4a09    	vadd.f32	s9, s4, s18
    7320: eef4 4a49    	vcmp.f32	s9, s18
    7324: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7328: d009         	beq	0x733e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x90e> @ imm = #0x12
    732a: eeb0 aa64    	vmov.f32	s20, s9
    732e: eeb1 aaca    	vsqrt.f32	s20, s20
    7332: eeb1 aaca    	vsqrt.f32	s20, s20
    7336: eeb1 aaca    	vsqrt.f32	s20, s20
    733a: eeb1 aaca    	vsqrt.f32	s20, s20
    733e: ee89 aa0a    	vdiv.f32	s20, s18, s20
    7342: ee2d 2a02    	vmul.f32	s4, s26, s4
    7346: ee8a 9a24    	vdiv.f32	s18, s20, s9
    734a: eec2 4a27    	vdiv.f32	s9, s4, s15
    734e: ee2d 2a0a    	vmul.f32	s4, s26, s20
    7352: ee64 8a89    	vmul.f32	s17, s9, s18
    7356: ee73 7a42    	vsub.f32	s15, s6, s4
    735a: 2a00         	cmp	r2, #0x0
    735c: ed9f 2a07    	vldr	s4, [pc, #28]           @ 0x737c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x94c>
    7360: ed9f 7a07    	vldr	s14, [pc, #28]          @ 0x7380 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x950>
    7364: ee17 0a90    	vmov	r0, s15
    7368: fe07 aa02    	vseleq.f32	s20, s14, s4
    736c: f020 4000    	bic	r0, r0, #0x80000000
    7370: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7374: db08         	blt	0x7388 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x958> @ imm = #0x10
    7376: eddf 9a03    	vldr	s19, [pc, #12]          @ 0x7384 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x954>
    737a: e01d         	b	0x73b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x988> @ imm = #0x3a
    737c: 95 3a ae c3  	.word	0xc3ae3a95
    7380: 00 00 00 80  	.word	0x80000000
    7384: 00 00 80 7f  	.word	0x7f800000
    7388: eeb2 2a0e    	vmov.f32	s4, #1.500000e+01
    738c: eef4 6a66    	vcmp.f32	s13, s13
    7390: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7394: ee87 2a82    	vdiv.f32	s4, s15, s4
    7398: eeb0 2ac2    	vabs.f32	s4, s4
    739c: fe52 4a26    	vselvs.f32	s9, s4, s13
    73a0: eeb4 2a42    	vcmp.f32	s4, s4
    73a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    73a8: fe14 2a82    	vselvs.f32	s4, s9, s4
    73ac: eef4 4a42    	vcmp.f32	s9, s4
    73b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    73b4: fe74 9a82    	vselgt.f32	s19, s9, s4
    73b8: ed9f 2a35    	vldr	s4, [pc, #212]          @ 0x7490 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa60>
    73bc: ee2e ea2a    	vmul.f32	s28, s28, s21
    73c0: ee03 5a82    	vmla.f32	s10, s7, s4
    73c4: ed9f 2a33    	vldr	s4, [pc, #204]          @ 0x7494 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa64>
    73c8: ee03 4a82    	vmla.f32	s8, s7, s4
    73cc: ed9f 2a2f    	vldr	s4, [pc, #188]          @ 0x748c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa5c>
    73d0: ed9d db06    	vldr	d13, [sp, #24]
    73d4: ee62 1aa1    	vmul.f32	s3, s5, s3
    73d8: 200d         	movs	r0, #0xd
    73da: eef7 4bcd    	vcvt.f32.f64	s9, d13
    73de: edcd 4a06    	vstr	s9, [sp, #24]
    73e2: ee43 4a02    	vmla.f32	s9, s6, s4
    73e6: fe84 2a45    	vminnm.f32	s4, s8, s10
    73ea: eeb4 4a45    	vcmp.f32	s8, s10
    73ee: eeb8 5a00    	vmov.f32	s10, #-2.000000e+00
    73f2: ee28 4a28    	vmul.f32	s8, s16, s17
    73f6: ee3c 2a42    	vsub.f32	s4, s24, s4
    73fa: ee34 6ac6    	vsub.f32	s12, s9, s12
    73fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7402: bf88         	it	hi
    7404: 200e         	movhi	r0, #0xe
    7406: eeb4 2a45    	vcmp.f32	s4, s10
    740a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    740e: e9cd 4501    	strd	r4, r5, [sp, #4]
    7412: d931         	bls	0x7478 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa48> @ imm = #0x62
    7414: eeb4 2a42    	vcmp.f32	s4, s4
    7418: ed9f 5a1f    	vldr	s10, [pc, #124]         @ 0x7498 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa68>
    741c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7420: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    7424: eef0 6a45    	vmov.f32	s13, s10
    7428: fe55 4a02    	vselvs.f32	s9, s10, s4
    742c: eeb0 8a62    	vmov.f32	s16, s5
    7430: eef5 4a40    	vcmp.f32	s9, #0
    7434: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7438: bfb8         	it	lt
    743a: eef0 6a64    	vmovlt.f32	s13, s9
    743e: eddf 4a17    	vldr	s9, [pc, #92]           @ 0x749c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa6c>
    7442: eeb5 2a40    	vcmp.f32	s4, #0
    7446: ee06 8a8c    	vmla.f32	s16, s13, s24
    744a: eddf 6a15    	vldr	s13, [pc, #84]          @ 0x74a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa70>
    744e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7452: ee28 8a24    	vmul.f32	s16, s16, s9
    7456: fec8 fa26    	vmaxnm.f32	s31, s16, s13
    745a: d539         	bpl	0x74d0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xaa0> @ imm = #0x72
    745c: ee42 2a0c    	vmla.f32	s5, s4, s24
    7460: eeb0 7a6b    	vmov.f32	s14, s23
    7464: ee22 2aa4    	vmul.f32	s4, s5, s9
    7468: eeb4 2a66    	vcmp.f32	s4, s13
    746c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7470: bfc8         	it	gt
    7472: ed9f 5a0c    	vldrgt	s10, [pc, #48]          @ 0x74a4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa74>
    7476: e02d         	b	0x74d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xaa4> @ imm = #0x5a
    7478: eeb0 7a6b    	vmov.f32	s14, s23
    747c: ed9f 5a06    	vldr	s10, [pc, #24]          @ 0x7498 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa68>
    7480: eddf fa07    	vldr	s31, [pc, #28]          @ 0x74a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa70>
    7484: e026         	b	0x74d4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xaa4> @ imm = #0x4c
    7486: bf00         	nop
    7488: 75 5e 1f b9  	.word	0xb91f5e75
    748c: d2 20 02 39  	.word	0x390220d2
    7490: a8 cc 7f bf  	.word	0xbf7fcca8
    7494: 0d 61 4d 3a  	.word	0x3a4d610d
    7498: 00 00 00 00  	.word	0x00000000
    749c: 2b 18 95 3b  	.word	0x3b95182b
    74a0: 95 bf d6 33  	.word	0x33d6bf95
    74a4: 2b 18 15 3b  	.word	0x3b15182b
    74a8: 34 8b b1 b6  	.word	0xb6b18b34
    74ac: 75 5e 1f 39  	.word	0x391f5e75
    74b0: d2 20 02 b9  	.word	0xb90220d2
    74b4: a8 b9 92 38  	.word	0x3892b9a8
    74b8: 0a d7 23 3c  	.word	0x3c23d70a
    74bc: fc 7c 04 bf  	.word	0xbf047cfc
    74c0: 5d fa 11 be  	.word	0xbe11fa5d
    74c4: da a7 7e be  	.word	0xbe7ea7da
    74c8: bd 37 06 36  	.word	0x360637bd
    74cc: 08 e5 3c 1e  	.word	0x1e3ce508
    74d0: eeb0 7a6b    	vmov.f32	s14, s23
    74d4: f24b 32d0    	movw	r2, #0xb3d0
    74d8: ee13 6aaf    	vnmls.f32	s12, s7, s31
    74dc: f2c0 0200    	movt	r2, #0x0
    74e0: ee63 2a85    	vmul.f32	s5, s7, s10
    74e4: eb02 1080    	add.w	r0, r2, r0, lsl #6
    74e8: ed5f aa18    	vldr	s21, [pc, #-96]         @ 0x748c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa5c>
    74ec: ee2a 9a09    	vmul.f32	s18, s20, s18
    74f0: f8d7 e008    	ldr.w	lr, [r7, #0x8]
    74f4: ed90 8b0c    	vldr	d8, [r0, #48]
    74f8: ee21 aaa0    	vmul.f32	s20, s3, s1
    74fc: ed1f 5a5f    	vldr	s10, [pc, #-380]        @ 0x7384 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x954>
    7500: eeb7 2bc8    	vcvt.f32.f64	s4, d8
    7504: ed90 db08    	vldr	d13, [r0, #32]
    7508: ee42 aac2    	vmls.f32	s21, s5, s4
    750c: ed1f 2a1a    	vldr	s4, [pc, #-104]         @ 0x74a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa78>
    7510: ee24 8a02    	vmul.f32	s16, s8, s4
    7514: ed1f 2a1b    	vldr	s4, [pc, #-108]         @ 0x74ac <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa7c>
    7518: ed90 cb0a    	vldr	d12, [r0, #40]
    751c: ee16 0a10    	vmov	r0, s12
    7520: ee64 6a02    	vmul.f32	s13, s8, s4
    7524: ed1f 2a1e    	vldr	s4, [pc, #-120]         @ 0x74b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa80>
    7528: ee64 8a02    	vmul.f32	s17, s8, s4
    752c: ed1f 2a1f    	vldr	s4, [pc, #-124]         @ 0x74b4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa84>
    7530: eeb7 4bcd    	vcvt.f32.f64	s8, d13
    7534: f020 4000    	bic	r0, r0, #0x80000000
    7538: ee6e ba02    	vmul.f32	s23, s28, s4
    753c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7540: eef7 0bcc    	vcvt.f32.f64	s1, d12
    7544: da17         	bge	0x7576 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xb46> @ imm = #0x2e
    7546: ed1f 5a24    	vldr	s10, [pc, #-144]        @ 0x74b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa88>
    754a: eef4 9a69    	vcmp.f32	s19, s19
    754e: ee86 5a05    	vdiv.f32	s10, s12, s10
    7552: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7556: eeb0 5ac5    	vabs.f32	s10, s10
    755a: fe55 4a29    	vselvs.f32	s9, s10, s19
    755e: eeb4 5a45    	vcmp.f32	s10, s10
    7562: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7566: fe14 5a85    	vselvs.f32	s10, s9, s10
    756a: eef4 4a45    	vcmp.f32	s9, s10
    756e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7572: fe34 5a85    	vselgt.f32	s10, s9, s10
    7576: ed5f 4a2f    	vldr	s9, [pc, #-188]         @ 0x74bc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa8c>
    757a: ee49 8a01    	vmla.f32	s17, s18, s2
    757e: ee41 baa4    	vmla.f32	s23, s3, s9
    7582: ed5f 4a81    	vldr	s9, [pc, #-516]         @ 0x7380 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x950>
    7586: ed1f 1a32    	vldr	s2, [pc, #-200]         @ 0x74c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa90>
    758a: eef0 1a4a    	vmov.f32	s3, s20
    758e: ee4e 1a24    	vmla.f32	s3, s28, s9
    7592: ed5f 4a3b    	vldr	s9, [pc, #-236]         @ 0x74a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa78>
    7596: ee09 8a01    	vmla.f32	s16, s18, s2
    759a: ed1f 1a36    	vldr	s2, [pc, #-216]         @ 0x74c4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa94>
    759e: ee0e aa24    	vmla.f32	s20, s28, s9
    75a2: f10d 0878    	add.w	r8, sp, #0x78
    75a6: ee49 6a01    	vmla.f32	s13, s18, s2
    75aa: f108 0a0c    	add.w	r10, r8, #0xc
    75ae: ee24 9a62    	vnmul.f32	s18, s8, s5
    75b2: f10d 096c    	add.w	r9, sp, #0x6c
    75b6: ee62 0aa0    	vmul.f32	s1, s5, s1
    75ba: f04f 0b00    	mov.w	r11, #0x0
    75be: ee7f 9aaa    	vadd.f32	s19, s31, s21
    75c2: ed1f 2a3f    	vldr	s4, [pc, #-252]         @ 0x74c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa98>
    75c6: eeb1 1a6e    	vneg.f32	s2, s29
    75ca: ed5f ea40    	vldr	s29, [pc, #-256]        @ 0x74cc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa9c>
    75ce: eeb1 ea67    	vneg.f32	s28, s15
    75d2: ed5f 7a4f    	vldr	s15, [pc, #-316]        @ 0x7498 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa68>
    75d6: eef1 fa46    	vneg.f32	s31, s12
    75da: ed9f 6afa    	vldr	s12, [pc, #1000]        @ 0x79c4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xf94>
    75de: e89e 000d    	ldm.w	lr, {r0, r2, r3}
    75e2: 3201         	adds	r2, #0x1
    75e4: 9216         	str	r2, [sp, #0x58]
    75e6: 2200         	movs	r2, #0x0
    75e8: 1c46         	adds	r6, r0, #0x1
    75ea: f8ce 6000    	str.w	r6, [lr]
    75ee: 3301         	adds	r3, #0x1
    75f0: 9305         	str	r3, [sp, #0x14]
    75f2: 3002         	adds	r0, #0x2
    75f4: 9004         	str	r0, [sp, #0x10]
    75f6: ee3b 4a8f    	vadd.f32	s8, s23, s30
    75fa: 2000         	movs	r0, #0x0
    75fc: eef0 2ac8    	vabs.f32	s5, s16
    7600: ed8d ea1c    	vstr	s28, [sp, #112]
    7604: ed8d 1a1b    	vstr	s2, [sp, #108]
    7608: ee76 6a8f    	vadd.f32	s13, s13, s30
    760c: eef0 4ac4    	vabs.f32	s9, s8
    7610: edcd fa1d    	vstr	s31, [sp, #116]
    7614: ed8d 4a1e    	vstr	s8, [sp, #120]
    7618: ed8d aa1f    	vstr	s20, [sp, #124]
    761c: eef4 2a64    	vcmp.f32	s5, s9
    7620: edcd 1a20    	vstr	s3, [sp, #128]
    7624: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7628: eef0 4ac9    	vabs.f32	s9, s18
    762c: fe78 2a04    	vselgt.f32	s5, s16, s8
    7630: bfc8         	it	gt
    7632: 2001         	movgt	r0, #0x1
    7634: ed8d 8a21    	vstr	s16, [sp, #132]
    7638: eef0 2ae2    	vabs.f32	s5, s5
    763c: eef4 4a62    	vcmp.f32	s9, s5
    7640: ed5f 2a65    	vldr	s5, [pc, #-404]         @ 0x74b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xa80>
    7644: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7648: bfc8         	it	gt
    764a: 2002         	movgt	r0, #0x2
    764c: ee72 0ae0    	vsub.f32	s1, s5, s1
    7650: edcd 6a22    	vstr	s13, [sp, #136]
    7654: edcd 8a23    	vstr	s17, [sp, #140]
    7658: eb00 0340    	add.w	r3, r0, r0, lsl #1
    765c: ed8d 9a24    	vstr	s18, [sp, #144]
    7660: edcd 0a25    	vstr	s1, [sp, #148]
    7664: eb08 0683    	add.w	r6, r8, r3, lsl #2
    7668: edcd 9a26    	vstr	s19, [sp, #152]
    766c: f858 3023    	ldr.w	r3, [r8, r3, lsl #2]
    7670: e9d6 5401    	ldrd	r5, r4, [r6, #4]
    7674: e9cd 351e    	strd	r3, r5, [sp, #120]
    7678: 9420         	str	r4, [sp, #0x80]
    767a: 9b16         	ldr	r3, [sp, #0x58]
    767c: ed86 4a00    	vstr	s8, [r6]
    7680: 445b         	add	r3, r11
    7682: f8ce 3004    	str.w	r3, [lr, #0x4]
    7686: eddd 0a1e    	vldr	s1, [sp, #120]
    768a: ed86 aa01    	vstr	s20, [r6, #4]
    768e: ee10 3a90    	vmov	r3, s1
    7692: edc6 1a02    	vstr	s3, [r6, #8]
    7696: eb09 0680    	add.w	r6, r9, r0, lsl #2
    769a: f859 0020    	ldr.w	r0, [r9, r0, lsl #2]
    769e: 901b         	str	r0, [sp, #0x6c]
    76a0: f023 4300    	bic	r3, r3, #0x80000000
    76a4: ed86 1a00    	vstr	s2, [r6]
    76a8: f1b3 4fff    	cmp.w	r3, #0x7f800000
    76ac: f280 84a8    	bge.w	0x8000 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x950
    76b0: eeb0 1ae0    	vabs.f32	s2, s1
    76b4: eeb4 1a6e    	vcmp.f32	s2, s29
    76b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    76bc: f100 84a0    	bmi.w	0x8000 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x940
    76c0: ed9d 1a24    	vldr	s2, [sp, #144]
    76c4: ed9d 4a21    	vldr	s8, [sp, #132]
    76c8: ee81 1a20    	vdiv.f32	s2, s2, s1
    76cc: eddd 1a1f    	vldr	s3, [sp, #124]
    76d0: ee84 4a20    	vdiv.f32	s8, s8, s1
    76d4: eddd 2a25    	vldr	s5, [sp, #148]
    76d8: eddd 4a22    	vldr	s9, [sp, #136]
    76dc: ed9d 9a1b    	vldr	s18, [sp, #108]
    76e0: ee41 2a61    	vmls.f32	s5, s2, s3
    76e4: eddd 6a20    	vldr	s13, [sp, #128]
    76e8: ee44 4a61    	vmls.f32	s9, s8, s3
    76ec: ed9d 8a23    	vldr	s16, [sp, #140]
    76f0: ee04 8a66    	vmls.f32	s16, s8, s13
    76f4: ed9d aa1c    	vldr	s20, [sp, #112]
    76f8: ee04 aa49    	vmls.f32	s20, s8, s18
    76fc: ed9d da26    	vldr	s26, [sp, #152]
    7700: ee01 da66    	vmls.f32	s26, s2, s13
    7704: 4650         	mov	r0, r10
    7706: edcd 4a22    	vstr	s9, [sp, #136]
    770a: eeb0 4ae2    	vabs.f32	s8, s5
    770e: ed8d 8a23    	vstr	s16, [sp, #140]
    7712: eeb0 cae4    	vabs.f32	s24, s9
    7716: eddd 4a1d    	vldr	s9, [sp, #116]
    771a: ed8d aa1c    	vstr	s20, [sp, #112]
    771e: ee41 4a49    	vmls.f32	s9, s2, s18
    7722: edcd 2a25    	vstr	s5, [sp, #148]
    7726: eeb4 4a4c    	vcmp.f32	s8, s24
    772a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    772e: bfc8         	it	gt
    7730: f108 0018    	addgt.w	r0, r8, #0x18
    7734: ed8d da26    	vstr	s26, [sp, #152]
    7738: f8da 3000    	ldr.w	r3, [r10]
    773c: e9d0 4600    	ldrd	r4, r6, [r0]
    7740: 6885         	ldr	r5, [r0, #0x8]
    7742: f8ca 4000    	str.w	r4, [r10]
    7746: f8da 4004    	ldr.w	r4, [r10, #0x4]
    774a: f8ca 6004    	str.w	r6, [r10, #0x4]
    774e: f8da 6008    	ldr.w	r6, [r10, #0x8]
    7752: f8ca 5008    	str.w	r5, [r10, #0x8]
    7756: e9c0 4601    	strd	r4, r6, [r0, #4]
    775a: ed9d 4a22    	vldr	s8, [sp, #136]
    775e: f04f 0604    	mov.w	r6, #0x4
    7762: ee14 5a10    	vmov	r5, s8
    7766: bfc8         	it	gt
    7768: 2608         	movgt	r6, #0x8
    776a: edcd 4a1d    	vstr	s9, [sp, #116]
    776e: 6003         	str	r3, [r0]
    7770: f859 0006    	ldr.w	r0, [r9, r6]
    7774: eb09 0306    	add.w	r3, r9, r6
    7778: f025 4600    	bic	r6, r5, #0x80000000
    777c: f1b6 4fff    	cmp.w	r6, #0x7f800000
    7780: 901c         	str	r0, [sp, #0x70]
    7782: ed83 aa00    	vstr	s20, [r3]
    7786: f280 843b    	bge.w	0x8000 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x876
    778a: eeb0 1ac4    	vabs.f32	s2, s8
    778e: eeb4 1a6e    	vcmp.f32	s2, s29
    7792: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7796: f100 8433    	bmi.w	0x8000 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x866
    779a: ed9d 1a25    	vldr	s2, [sp, #148]
    779e: eddd 4a26    	vldr	s9, [sp, #152]
    77a2: ee81 1a04    	vdiv.f32	s2, s2, s8
    77a6: eddd 2a23    	vldr	s5, [sp, #140]
    77aa: ee41 4a62    	vmls.f32	s9, s2, s5
    77ae: ee14 0a90    	vmov	r0, s9
    77b2: f020 4000    	bic	r0, r0, #0x80000000
    77b6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    77ba: f280 8421    	bge.w	0x8000 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x842
    77be: eeb0 8ae4    	vabs.f32	s16, s9
    77c2: eeb4 8a6e    	vcmp.f32	s16, s29
    77c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    77ca: f100 8419    	bmi.w	0x8000 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x832
    77ce: ed9d 8a1c    	vldr	s16, [sp, #112]
    77d2: ed9d aa1d    	vldr	s20, [sp, #116]
    77d6: ee01 aa48    	vmls.f32	s20, s2, s16
    77da: ee8a 1a24    	vdiv.f32	s2, s20, s9
    77de: ee02 8ac1    	vmls.f32	s16, s5, s2
    77e2: ee88 8a04    	vdiv.f32	s16, s16, s8
    77e6: ee01 9ac8    	vmls.f32	s18, s3, s16
    77ea: ee06 9ac1    	vmls.f32	s18, s13, s2
    77ee: eec9 0a20    	vdiv.f32	s1, s18, s1
    77f2: ee10 0a90    	vmov	r0, s1
    77f6: f020 4000    	bic	r0, r0, #0x80000000
    77fa: f1b0 4fff    	cmp.w	r0, #0x7f800000
    77fe: bfbe         	ittt	lt
    7800: ee18 0a10    	vmovlt	r0, s16
    7804: f020 4000    	biclt	r0, r0, #0x80000000
    7808: f1b0 4fff    	cmplt.w	r0, #0x7f800000
    780c: f280 83f8    	bge.w	0x8000 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x7f0
    7810: ee11 0a10    	vmov	r0, s2
    7814: f020 4000    	bic	r0, r0, #0x80000000
    7818: f1b0 4fff    	cmp.w	r0, #0x7f800000
    781c: f280 83f0    	bge.w	0x8000 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15d0> @ imm = #0x7e0
    7820: eeb0 4ac0    	vabs.f32	s8, s0
    7824: eef0 1ae0    	vabs.f32	s3, s1
    7828: eeb4 4a44    	vcmp.f32	s8, s8
    782c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7830: fe1f 4a04    	vselvs.f32	s8, s30, s8
    7834: eeb4 4a4f    	vcmp.f32	s8, s30
    7838: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    783c: fe34 4a0f    	vselgt.f32	s8, s8, s30
    7840: ee24 4a02    	vmul.f32	s8, s8, s4
    7844: fe84 4a46    	vminnm.f32	s8, s8, s12
    7848: eef4 1a44    	vcmp.f32	s3, s8
    784c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7850: d83a         	bhi	0x78c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xe98> @ imm = #0x74
    7852: eeb0 4ac3    	vabs.f32	s8, s6
    7856: eef0 1ac8    	vabs.f32	s3, s16
    785a: eeb4 4a44    	vcmp.f32	s8, s8
    785e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7862: fe1f 4a04    	vselvs.f32	s8, s30, s8
    7866: eeb4 4a4f    	vcmp.f32	s8, s30
    786a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    786e: fe34 4a0f    	vselgt.f32	s8, s8, s30
    7872: ee24 4a02    	vmul.f32	s8, s8, s4
    7876: fe84 4a46    	vminnm.f32	s8, s8, s12
    787a: eef4 1a44    	vcmp.f32	s3, s8
    787e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7882: d821         	bhi	0x78c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xe98> @ imm = #0x42
    7884: eeb0 4ae3    	vabs.f32	s8, s7
    7888: eef0 1ac1    	vabs.f32	s3, s2
    788c: eeb4 4a44    	vcmp.f32	s8, s8
    7890: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7894: fe1f 4a04    	vselvs.f32	s8, s30, s8
    7898: eeb4 4a4f    	vcmp.f32	s8, s30
    789c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    78a0: fe34 4a0f    	vselgt.f32	s8, s8, s30
    78a4: ee24 4a02    	vmul.f32	s8, s8, s4
    78a8: fe84 4a46    	vminnm.f32	s8, s8, s12
    78ac: eef4 1a44    	vcmp.f32	s3, s8
    78b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    78b4: d808         	bhi	0x78c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xe98> @ imm = #0x10
    78b6: ed9f 4adf    	vldr	s8, [pc, #892]          @ 0x7c34 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1204>
    78ba: eeb4 5a44    	vcmp.f32	s10, s8
    78be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    78c2: f240 8383    	bls.w	0x7fcc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x159c> @ imm = #0x706
    78c6: bf00         	nop
    78c8: ee30 0a80    	vadd.f32	s0, s1, s0
    78cc: ed9d 5a0d    	vldr	s10, [sp, #52]
    78d0: ed9f ab71    	vldr	d10, [pc, #452]         @ 0x7a98 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1068>
    78d4: eddf 1ad8    	vldr	s3, [pc, #864]          @ 0x7c38 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1208>
    78d8: ee38 3a03    	vadd.f32	s6, s16, s6
    78dc: eeb7 9ac0    	vcvt.f64.f32	d9, s0
    78e0: eddd 0a0c    	vldr	s1, [sp, #48]
    78e4: ed9d 4b0e    	vldr	d4, [sp, #56]
    78e8: ee40 0a21    	vmla.f32	s1, s0, s3
    78ec: ed9f 8ad3    	vldr	s16, [pc, #844]         @ 0x7c3c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x120c>
    78f0: ee09 4b0a    	vmla.f64	d4, d9, d10
    78f4: 2300         	movs	r3, #0x0
    78f6: ee71 3a23    	vadd.f32	s7, s2, s7
    78fa: f04f 0c00    	mov.w	r12, #0x0
    78fe: ee43 0a08    	vmla.f32	s1, s6, s16
    7902: eeb0 1a67    	vmov.f32	s2, s15
    7906: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    790a: eef0 6a67    	vmov.f32	s13, s15
    790e: eef0 1a67    	vmov.f32	s3, s15
    7912: ee04 5a0b    	vmla.f32	s10, s8, s22
    7916: eef4 5a45    	vcmp.f32	s11, s10
    791a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    791e: fe35 4a85    	vselgt.f32	s8, s11, s10
    7922: eeb4 4a47    	vcmp.f32	s8, s14
    7926: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    792a: eeb4 5a65    	vcmp.f32	s10, s11
    792e: fe37 aa04    	vselgt.f32	s20, s14, s8
    7932: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7936: eeb4 5a47    	vcmp.f32	s10, s14
    793a: eebf 5a00    	vmov.f32	s10, #-1.000000e+00
    793e: bfc8         	it	gt
    7940: 2301         	movgt	r3, #0x1
    7942: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7946: 9805         	ldr	r0, [sp, #0x14]
    7948: eef5 0a40    	vcmp.f32	s1, #0
    794c: eeb0 4ae0    	vabs.f32	s8, s1
    7950: 4458         	add	r0, r11
    7952: f8ce 0008    	str.w	r0, [lr, #0x8]
    7956: eef0 0a67    	vmov.f32	s1, s15
    795a: bf48         	it	mi
    795c: f04f 0c01    	movmi.w	r12, #0x1
    7960: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7964: ed81 0a04    	vstr	s0, [r1, #16]
    7968: bf48         	it	mi
    796a: eeb0 1a45    	vmovmi.f32	s2, s10
    796e: ed9f 5ae8    	vldr	s10, [pc, #928]         @ 0x7d10 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e0>
    7972: ed81 3a05    	vstr	s6, [r1, #20]
    7976: fe3f 1a01    	vselgt.f32	s2, s30, s2
    797a: edc1 3a06    	vstr	s7, [r1, #24]
    797e: eeb4 4a45    	vcmp.f32	s8, s10
    7982: eeb0 5a67    	vmov.f32	s10, s15
    7986: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    798a: f280 80b9    	bge.w	0x7b00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10d0> @ imm = #0x172
    798e: ed9f 5ae1    	vldr	s10, [pc, #900]         @ 0x7d14 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e4>
    7992: eef0 0a67    	vmov.f32	s1, s15
    7996: eeb4 4a45    	vcmp.f32	s8, s10
    799a: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    799e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79a2: d91d         	bls	0x79e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xfb0> @ imm = #0x3a
    79a4: ed9f 5adc    	vldr	s10, [pc, #880]         @ 0x7d18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e8>
    79a8: eeb4 4a45    	vcmp.f32	s8, s10
    79ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79b0: d90a         	bls	0x79c8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xf98> @ imm = #0x14
    79b2: ed9f 5ada    	vldr	s10, [pc, #872]         @ 0x7d1c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12ec>
    79b6: ee34 4a05    	vadd.f32	s8, s8, s10
    79ba: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    79be: eddf 0ad8    	vldr	s1, [pc, #864]          @ 0x7d20 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f0>
    79c2: e009         	b	0x79d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xfa8> @ imm = #0x12
    79c4: ac c5 a7 37  	.word	0x37a7c5ac
    79c8: ed9f 5ad6    	vldr	s10, [pc, #856]         @ 0x7d24 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f4>
    79cc: ee34 4a05    	vadd.f32	s8, s8, s10
    79d0: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    79d4: eddf 0ad4    	vldr	s1, [pc, #848]          @ 0x7d28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f8>
    79d8: ee04 5a20    	vmla.f32	s10, s8, s1
    79dc: ee61 0a20    	vmul.f32	s1, s2, s1
    79e0: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    79e4: ee31 1a45    	vsub.f32	s2, s2, s10
    79e8: eeb1 5a60    	vneg.f32	s10, s1
    79ec: fe81 1a27    	vmaxnm.f32	s2, s2, s15
    79f0: eeb5 1a40    	vcmp.f32	s2, #0
    79f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79f8: d946         	bls	0x7a88 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1058> @ imm = #0x8c
    79fa: eeb0 4aca    	vabs.f32	s8, s20
    79fe: eeb4 4a41    	vcmp.f32	s8, s2
    7a02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a06: d94f         	bls	0x7aa8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1078> @ imm = #0x9e
    7a08: ee81 4a04    	vdiv.f32	s8, s2, s8
    7a0c: eef0 1a4f    	vmov.f32	s3, s30
    7a10: ee64 0a04    	vmul.f32	s1, s8, s8
    7a14: ee60 0aa0    	vmul.f32	s1, s1, s1
    7a18: ee60 0aa0    	vmul.f32	s1, s1, s1
    7a1c: ee60 2aa0    	vmul.f32	s5, s1, s1
    7a20: ee72 0a8f    	vadd.f32	s1, s5, s30
    7a24: eef4 0a4f    	vcmp.f32	s1, s30
    7a28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a2c: d009         	beq	0x7a42 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1012> @ imm = #0x12
    7a2e: eef0 1a60    	vmov.f32	s3, s1
    7a32: eef1 1ae1    	vsqrt.f32	s3, s3
    7a36: eef1 1ae1    	vsqrt.f32	s3, s3
    7a3a: eef1 1ae1    	vsqrt.f32	s3, s3
    7a3e: eef1 1ae1    	vsqrt.f32	s3, s3
    7a42: eecf 6a21    	vdiv.f32	s13, s30, s3
    7a46: eeb4 aa4a    	vcmp.f32	s20, s20
    7a4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a4e: eec6 4aa0    	vdiv.f32	s9, s13, s1
    7a52: eddf 0ab6    	vldr	s1, [pc, #728]          @ 0x7d2c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12fc>
    7a56: eef0 1a60    	vmov.f32	s3, s1
    7a5a: bf7f         	itttt	vc
    7a5c: ee1a 0a10    	vmovvc	r0, s20
    7a60: f04f 547e    	movvc.w	r4, #0x3f800000
    7a64: f364 001e    	bfivc	r0, r4, #0, #31
    7a68: ee01 0a90    	vmovvc	s3, r0
    7a6c: bf7e         	ittt	vc
    7a6e: ee21 1a81    	vmulvc.f32	s2, s3, s2
    7a72: ee61 0a26    	vmulvc.f32	s1, s2, s13
    7a76: ee61 1aa4    	vmulvc.f32	s3, s3, s9
    7a7a: ee24 1a22    	vmul.f32	s2, s8, s5
    7a7e: ee61 6a24    	vmul.f32	s13, s2, s9
    7a82: e03d         	b	0x7b00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10d0> @ imm = #0x7a
    7a84: bf00         	nop
    7a86: bf00         	nop
    7a88: eef0 0a67    	vmov.f32	s1, s15
    7a8c: eef0 6a67    	vmov.f32	s13, s15
    7a90: eef0 1a67    	vmov.f32	s3, s15
    7a94: e034         	b	0x7b00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10d0> @ imm = #0x68
    7a96: bf00         	nop
    7a98: a6 26 74 7c  	.word	0x7c7426a6
    7a9c: 9f 8f e0 bf  	.word	0xbfe08f9f
    7aa0: 8e 66 bb a2  	.word	0xa2bb668e
    7aa4: 4b 3f c2 bf  	.word	0xbfc23f4b
    7aa8: ee8a 4a01    	vdiv.f32	s8, s20, s2
    7aac: eef0 1a4f    	vmov.f32	s3, s30
    7ab0: ee24 4a04    	vmul.f32	s8, s8, s8
    7ab4: ee24 4a04    	vmul.f32	s8, s8, s8
    7ab8: ee24 4a04    	vmul.f32	s8, s8, s8
    7abc: ee24 4a04    	vmul.f32	s8, s8, s8
    7ac0: ee74 0a0f    	vadd.f32	s1, s8, s30
    7ac4: eef4 0a4f    	vcmp.f32	s1, s30
    7ac8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7acc: d009         	beq	0x7ae2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x10b2> @ imm = #0x12
    7ace: eef0 1a60    	vmov.f32	s3, s1
    7ad2: eef1 1ae1    	vsqrt.f32	s3, s3
    7ad6: eef1 1ae1    	vsqrt.f32	s3, s3
    7ada: eef1 1ae1    	vsqrt.f32	s3, s3
    7ade: eef1 1ae1    	vsqrt.f32	s3, s3
    7ae2: eecf 1a21    	vdiv.f32	s3, s30, s3
    7ae6: ee2a 4a04    	vmul.f32	s8, s20, s8
    7aea: eec1 6aa0    	vdiv.f32	s13, s3, s1
    7aee: ee84 1a01    	vdiv.f32	s2, s8, s2
    7af2: ee6a 0a21    	vmul.f32	s1, s20, s3
    7af6: ee61 1a26    	vmul.f32	s3, s2, s13
    7afa: bf00         	nop
    7afc: bf00         	nop
    7afe: bf00         	nop
    7b00: ee30 1a60    	vsub.f32	s2, s0, s1
    7b04: ea13 030c    	ands.w	r3, r3, r12
    7b08: ed9f 4ae4    	vldr	s8, [pc, #912]          @ 0x7e9c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x146c>
    7b0c: ed8d aa12    	vstr	s20, [sp, #72]
    7b10: eddf 0ae3    	vldr	s1, [pc, #908]          @ 0x7ea0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1470>
    7b14: ee11 0a10    	vmov	r0, s2
    7b18: ed9f aae2    	vldr	s20, [pc, #904]         @ 0x7ea4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1474>
    7b1c: fe40 8a84    	vseleq.f32	s17, s1, s8
    7b20: f020 4000    	bic	r0, r0, #0x80000000
    7b24: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7b28: da07         	bge	0x7b3a <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x110a> @ imm = #0xe
    7b2a: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    7b2e: ee81 4a04    	vdiv.f32	s8, s2, s8
    7b32: eeb0 4ac4    	vabs.f32	s8, s8
    7b36: fe84 aa27    	vmaxnm.f32	s20, s8, s15
    7b3a: ed1f db27    	vldr	d13, [pc, #-156]        @ 0x7aa0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1070>
    7b3e: eeb7 cac3    	vcvt.f64.f32	d12, s6
    7b42: eddd 0a0a    	vldr	s1, [sp, #40]
    7b46: ed9d 4b18    	vldr	d4, [sp, #96]
    7b4a: eddd 2a09    	vldr	s5, [sp, #36]
    7b4e: ee40 2a08    	vmla.f32	s5, s0, s16
    7b52: ee09 4b0d    	vmla.f64	d4, d9, d13
    7b56: 2300         	movs	r3, #0x0
    7b58: ed9f 8ad3    	vldr	s16, [pc, #844]         @ 0x7ea8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1478>
    7b5c: 2000         	movs	r0, #0x0
    7b5e: ed9f 9bd4    	vldr	d9, [pc, #848]          @ 0x7eb0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1480>
    7b62: ee43 2a08    	vmla.f32	s5, s6, s16
    7b66: ee0c 4b09    	vmla.f64	d4, d12, d9
    7b6a: ed9d 9a03    	vldr	s18, [sp, #12]
    7b6e: eef0 9a67    	vmov.f32	s19, s15
    7b72: eef6 ca00    	vmov.f32	s25, #5.000000e-01
    7b76: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    7b7a: eddd 4a0b    	vldr	s9, [sp, #44]
    7b7e: ee44 0a0b    	vmla.f32	s1, s8, s22
    7b82: eef4 4a60    	vcmp.f32	s9, s1
    7b86: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b8a: fe34 4aa0    	vselgt.f32	s8, s9, s1
    7b8e: eeb4 4a49    	vcmp.f32	s8, s18
    7b92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b96: eef4 0a64    	vcmp.f32	s1, s9
    7b9a: eef0 4a67    	vmov.f32	s9, s15
    7b9e: fe39 da04    	vselgt.f32	s26, s18, s8
    7ba2: ed9f 4a63    	vldr	s8, [pc, #396]          @ 0x7d30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1300>
    7ba6: ee23 8a84    	vmul.f32	s16, s7, s8
    7baa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bae: eef4 0a49    	vcmp.f32	s1, s18
    7bb2: eeff 0a00    	vmov.f32	s1, #-1.000000e+00
    7bb6: ee32 4a88    	vadd.f32	s8, s5, s16
    7bba: eeb0 9a67    	vmov.f32	s18, s15
    7bbe: bfc8         	it	gt
    7bc0: 2301         	movgt	r3, #0x1
    7bc2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bc6: eeb5 4a40    	vcmp.f32	s8, #0
    7bca: eef0 2ac4    	vabs.f32	s5, s8
    7bce: eeb0 4a67    	vmov.f32	s8, s15
    7bd2: bf48         	it	mi
    7bd4: 2001         	movmi	r0, #0x1
    7bd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bda: bf48         	it	mi
    7bdc: eeb0 4a60    	vmovmi.f32	s8, s1
    7be0: eddf 0a4b    	vldr	s1, [pc, #300]          @ 0x7d10 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e0>
    7be4: ed8d da14    	vstr	s26, [sp, #80]
    7be8: fe3f 4a04    	vselgt.f32	s8, s30, s8
    7bec: eef4 2a60    	vcmp.f32	s5, s1
    7bf0: eef0 0a67    	vmov.f32	s1, s15
    7bf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bf8: f280 80ca    	bge.w	0x7d90 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1360> @ imm = #0x194
    7bfc: eddf 0a45    	vldr	s1, [pc, #276]          @ 0x7d14 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e4>
    7c00: eef0 4a67    	vmov.f32	s9, s15
    7c04: eef4 2a60    	vcmp.f32	s5, s1
    7c08: eef7 0a08    	vmov.f32	s1, #1.500000e+00
    7c0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c10: d922         	bls	0x7c58 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1228> @ imm = #0x44
    7c12: eddf 0a41    	vldr	s1, [pc, #260]          @ 0x7d18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12e8>
    7c16: eef4 2a60    	vcmp.f32	s5, s1
    7c1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c1e: d90f         	bls	0x7c40 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1210> @ imm = #0x1e
    7c20: eddf 0a3e    	vldr	s1, [pc, #248]          @ 0x7d1c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12ec>
    7c24: ee72 2aa0    	vadd.f32	s5, s5, s1
    7c28: eef0 0a08    	vmov.f32	s1, #3.000000e+00
    7c2c: eddf 4a3c    	vldr	s9, [pc, #240]          @ 0x7d20 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f0>
    7c30: e00e         	b	0x7c50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1220> @ imm = #0x1c
    7c32: bf00         	nop
    7c34: 17 b7 d1 38  	.word	0x38d1b717
    7c38: a8 b9 92 b8  	.word	0xb892b9a8
    7c3c: 34 8b b1 36  	.word	0x36b18b34
    7c40: eddf 0a38    	vldr	s1, [pc, #224]          @ 0x7d24 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f4>
    7c44: ee72 2aa0    	vadd.f32	s5, s5, s1
    7c48: eef7 0a08    	vmov.f32	s1, #1.500000e+00
    7c4c: eddf 4a36    	vldr	s9, [pc, #216]          @ 0x7d28 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12f8>
    7c50: ee42 0aa4    	vmla.f32	s1, s5, s9
    7c54: ee64 4a24    	vmul.f32	s9, s8, s9
    7c58: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    7c5c: ee34 4a60    	vsub.f32	s8, s8, s1
    7c60: eef1 0a64    	vneg.f32	s1, s9
    7c64: fec4 2a27    	vmaxnm.f32	s5, s8, s15
    7c68: eef5 2a40    	vcmp.f32	s5, #0
    7c6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c70: d946         	bls	0x7d00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12d0> @ imm = #0x8c
    7c72: eeb0 4acd    	vabs.f32	s8, s26
    7c76: eeb4 4a62    	vcmp.f32	s8, s5
    7c7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c7e: d95b         	bls	0x7d38 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1308> @ imm = #0xb6
    7c80: ee82 4a84    	vdiv.f32	s8, s5, s8
    7c84: eeb0 ca4f    	vmov.f32	s24, s30
    7c88: ee64 4a04    	vmul.f32	s9, s8, s8
    7c8c: ee64 4aa4    	vmul.f32	s9, s9, s9
    7c90: ee64 4aa4    	vmul.f32	s9, s9, s9
    7c94: ee24 9aa4    	vmul.f32	s18, s9, s9
    7c98: ee79 4a0f    	vadd.f32	s9, s18, s30
    7c9c: eef4 4a4f    	vcmp.f32	s9, s30
    7ca0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ca4: d009         	beq	0x7cba <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x128a> @ imm = #0x12
    7ca6: eeb0 ca64    	vmov.f32	s24, s9
    7caa: eeb1 cacc    	vsqrt.f32	s24, s24
    7cae: eeb1 cacc    	vsqrt.f32	s24, s24
    7cb2: eeb1 cacc    	vsqrt.f32	s24, s24
    7cb6: eeb1 cacc    	vsqrt.f32	s24, s24
    7cba: ee8f da0c    	vdiv.f32	s26, s30, s24
    7cbe: ed9d ea14    	vldr	s28, [sp, #80]
    7cc2: ee24 4a09    	vmul.f32	s8, s8, s18
    7cc6: eeb4 ea4e    	vcmp.f32	s28, s28
    7cca: ee8d ca24    	vdiv.f32	s24, s26, s9
    7cce: eddf 4a17    	vldr	s9, [pc, #92]           @ 0x7d2c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x12fc>
    7cd2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7cd6: eef0 9a64    	vmov.f32	s19, s9
    7cda: bf7f         	itttt	vc
    7cdc: ee1e 6a10    	vmovvc	r6, s28
    7ce0: f04f 557e    	movvc.w	r5, #0x3f800000
    7ce4: f365 061e    	bfivc	r6, r5, #0, #31
    7ce8: ee0e 6a10    	vmovvc	s28, r6
    7cec: bf7e         	ittt	vc
    7cee: ee6e 2a22    	vmulvc.f32	s5, s28, s5
    7cf2: ee62 4a8d    	vmulvc.f32	s9, s5, s26
    7cf6: ee6e 9a0c    	vmulvc.f32	s19, s28, s24
    7cfa: ee24 9a0c    	vmul.f32	s18, s8, s24
    7cfe: e047         	b	0x7d90 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1360> @ imm = #0x8e
    7d00: eef0 4a67    	vmov.f32	s9, s15
    7d04: eeb0 9a67    	vmov.f32	s18, s15
    7d08: eef0 9a67    	vmov.f32	s19, s15
    7d0c: e040         	b	0x7d90 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1360> @ imm = #0x80
    7d0e: bf00         	nop
    7d10: 0a d7 23 3d  	.word	0x3d23d70a
    7d14: 7c f2 b0 3a  	.word	0x3ab0f27c
    7d18: a6 9b c4 3b  	.word	0x3bc49ba6
    7d1c: a6 9b c4 bb  	.word	0xbbc49ba6
    7d20: 79 78 b0 43  	.word	0x43b07879
    7d24: 7c f2 b0 ba  	.word	0xbab0f27c
    7d28: 53 4a a1 43  	.word	0x43a14a53
    7d2c: 00 00 c0 7f  	.word	0x7fc00000
    7d30: d2 20 02 39  	.word	0x390220d2
    7d34: 00 bf 00 bf  	.word	0xbf00bf00
    7d38: ee8d 4a22    	vdiv.f32	s8, s26, s5
    7d3c: eeb0 9a4f    	vmov.f32	s18, s30
    7d40: ee24 4a04    	vmul.f32	s8, s8, s8
    7d44: ee24 4a04    	vmul.f32	s8, s8, s8
    7d48: ee24 4a04    	vmul.f32	s8, s8, s8
    7d4c: ee24 4a04    	vmul.f32	s8, s8, s8
    7d50: ee74 4a0f    	vadd.f32	s9, s8, s30
    7d54: eef4 4a4f    	vcmp.f32	s9, s30
    7d58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d5c: d009         	beq	0x7d72 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1342> @ imm = #0x12
    7d5e: eeb0 9a64    	vmov.f32	s18, s9
    7d62: eeb1 9ac9    	vsqrt.f32	s18, s18
    7d66: eeb1 9ac9    	vsqrt.f32	s18, s18
    7d6a: eeb1 9ac9    	vsqrt.f32	s18, s18
    7d6e: eeb1 9ac9    	vsqrt.f32	s18, s18
    7d72: ee8f ca09    	vdiv.f32	s24, s30, s18
    7d76: ee2d 4a04    	vmul.f32	s8, s26, s8
    7d7a: ee8c 9a24    	vdiv.f32	s18, s24, s9
    7d7e: ee84 4a22    	vdiv.f32	s8, s8, s5
    7d82: ee6d 4a0c    	vmul.f32	s9, s26, s24
    7d86: ee64 9a09    	vmul.f32	s19, s8, s18
    7d8a: bf00         	nop
    7d8c: bf00         	nop
    7d8e: bf00         	nop
    7d90: ee73 fa64    	vsub.f32	s31, s6, s9
    7d94: 4018         	ands	r0, r3
    7d96: ed9f 4a41    	vldr	s8, [pc, #260]          @ 0x7e9c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x146c>
    7d9a: eddf 2a41    	vldr	s5, [pc, #260]          @ 0x7ea0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1470>
    7d9e: ee1f 6a90    	vmov	r6, s31
    7da2: eddf aa40    	vldr	s21, [pc, #256]         @ 0x7ea4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1474>
    7da6: fe42 ba84    	vseleq.f32	s23, s5, s8
    7daa: f026 4000    	bic	r0, r6, #0x80000000
    7dae: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7db2: da17         	bge	0x7de4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x13b4> @ imm = #0x2e
    7db4: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    7db8: eeb4 aa4a    	vcmp.f32	s20, s20
    7dbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7dc0: ee8f 4a84    	vdiv.f32	s8, s31, s8
    7dc4: eeb0 4ac4    	vabs.f32	s8, s8
    7dc8: fe54 2a0a    	vselvs.f32	s5, s8, s20
    7dcc: eeb4 4a44    	vcmp.f32	s8, s8
    7dd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7dd4: fe12 4a84    	vselvs.f32	s8, s5, s8
    7dd8: eef4 2a44    	vcmp.f32	s5, s8
    7ddc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7de0: fe72 aa84    	vselgt.f32	s21, s5, s8
    7de4: eddf 4ae9    	vldr	s9, [pc, #932]          @ 0x818c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x175c>
    7de8: eddd 2a11    	vldr	s5, [sp, #68]
    7dec: ee23 4a24    	vmul.f32	s8, s6, s9
    7df0: ed9f aae7    	vldr	s20, [pc, #924]         @ 0x8190 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1760>
    7df4: ee25 ea21    	vmul.f32	s28, s10, s3
    7df8: 200d         	movs	r0, #0xd
    7dfa: ee20 5aa9    	vmul.f32	s10, s1, s19
    7dfe: eef8 0a00    	vmov.f32	s1, #-2.000000e+00
    7e02: ee74 2a22    	vadd.f32	s5, s8, s5
    7e06: ee43 2a8a    	vmla.f32	s5, s7, s20
    7e0a: ed9d aa10    	vldr	s20, [sp, #64]
    7e0e: ee34 4a0a    	vadd.f32	s8, s8, s20
    7e12: ee03 4ae4    	vmls.f32	s8, s7, s9
    7e16: eddf 4adf    	vldr	s9, [pc, #892]          @ 0x8194 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1764>
    7e1a: ee68 1aa6    	vmul.f32	s3, s17, s13
    7e1e: eef0 9a64    	vmov.f32	s19, s9
    7e22: eef4 2a44    	vcmp.f32	s5, s8
    7e26: fe82 4ac4    	vminnm.f32	s8, s5, s8
    7e2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e2e: bf88         	it	hi
    7e30: 200e         	movhi	r0, #0xe
    7e32: ee3c 4ac4    	vsub.f32	s8, s25, s8
    7e36: eeb4 4a60    	vcmp.f32	s8, s1
    7e3a: eef0 0a67    	vmov.f32	s1, s15
    7e3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e42: d93b         	bls	0x7ebc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x148c> @ imm = #0x76
    7e44: eeb4 4a44    	vcmp.f32	s8, s8
    7e48: eef0 2a67    	vmov.f32	s5, s15
    7e4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e50: fe57 0a84    	vselvs.f32	s1, s15, s8
    7e54: eef5 0a40    	vcmp.f32	s1, #0
    7e58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e5c: bfb8         	it	lt
    7e5e: eef0 2a60    	vmovlt.f32	s5, s1
    7e62: eef0 0a4f    	vmov.f32	s1, s30
    7e66: eeb5 4a40    	vcmp.f32	s8, #0
    7e6a: ee42 0aac    	vmla.f32	s1, s5, s25
    7e6e: eddf 2af4    	vldr	s5, [pc, #976]          @ 0x8240 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    7e72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e76: ee60 0aa2    	vmul.f32	s1, s1, s5
    7e7a: fec0 9aa4    	vmaxnm.f32	s19, s1, s9
    7e7e: d51b         	bpl	0x7eb8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1488> @ imm = #0x36
    7e80: eef0 0a4f    	vmov.f32	s1, s30
    7e84: ee44 0a2c    	vmla.f32	s1, s8, s25
    7e88: ee20 4aa2    	vmul.f32	s8, s1, s5
    7e8c: eeb4 4a64    	vcmp.f32	s8, s9
    7e90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e94: dd10         	ble	0x7eb8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1488> @ imm = #0x20
    7e96: eddf 0af6    	vldr	s1, [pc, #984]          @ 0x8270 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1840>
    7e9a: e00f         	b	0x7ebc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x148c> @ imm = #0x1e
    7e9c: 95 3a ae c3  	.word	0xc3ae3a95
    7ea0: 00 00 00 80  	.word	0x80000000
    7ea4: 00 00 80 7f  	.word	0x7f800000
    7ea8: 75 5e 1f b9  	.word	0xb91f5e75
    7eac: 00 bf 00 bf  	.word	0xbf00bf00
    7eb0: a4 eb ea 42  	.word	0x42eaeba4
    7eb4: fb d4 cf bf  	.word	0xbfcfd4fb
    7eb8: eef0 0a67    	vmov.f32	s1, s15
    7ebc: eddf 2ae7    	vldr	s5, [pc, #924]          @ 0x825c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x182c>
    7ec0: ed9d 4a06    	vldr	s8, [sp, #24]
    7ec4: ee03 4a22    	vmla.f32	s8, s6, s5
    7ec8: f24b 33d0    	movw	r3, #0xb3d0
    7ecc: f2c0 0300    	movt	r3, #0x0
    7ed0: eddf 6ae0    	vldr	s13, [pc, #896]         @ 0x8254 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1824>
    7ed4: eb03 1080    	add.w	r0, r3, r0, lsl #6
    7ed8: ed9f aae4    	vldr	s20, [pc, #912]         @ 0x826c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x183c>
    7edc: ee65 8a0a    	vmul.f32	s17, s10, s20
    7ee0: ed90 cb08    	vldr	d12, [r0, #32]
    7ee4: ee2b 9a89    	vmul.f32	s18, s23, s18
    7ee8: ee74 2a48    	vsub.f32	s5, s8, s16
    7eec: ee53 2aa9    	vnmls.f32	s5, s7, s19
    7ef0: ed90 4b0a    	vldr	d4, [r0, #40]
    7ef4: ee25 8a26    	vmul.f32	s16, s10, s13
    7ef8: eddf 6ada    	vldr	s13, [pc, #872]         @ 0x8264 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1834>
    7efc: ed90 db0c    	vldr	d13, [r0, #48]
    7f00: ee65 6a26    	vmul.f32	s13, s10, s13
    7f04: ed9f 5ad1    	vldr	s10, [pc, #836]         @ 0x824c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x181c>
    7f08: ee21 aaa7    	vmul.f32	s20, s3, s15
    7f0c: ee12 0a90    	vmov	r0, s5
    7f10: ee6e ba05    	vmul.f32	s23, s28, s10
    7f14: ed9f 5ad0    	vldr	s10, [pc, #832]         @ 0x8258 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1828>
    7f18: f020 4000    	bic	r0, r0, #0x80000000
    7f1c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7f20: da17         	bge	0x7f52 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1522> @ imm = #0x2e
    7f22: ed9f 5ad4    	vldr	s10, [pc, #848]         @ 0x8274 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1844>
    7f26: eef4 aa6a    	vcmp.f32	s21, s21
    7f2a: ee82 5a85    	vdiv.f32	s10, s5, s10
    7f2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f32: eeb0 5ac5    	vabs.f32	s10, s10
    7f36: fe55 aa2a    	vselvs.f32	s21, s10, s21
    7f3a: eeb4 5a45    	vcmp.f32	s10, s10
    7f3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f42: fe1a 5a85    	vselvs.f32	s10, s21, s10
    7f46: eef4 aa45    	vcmp.f32	s21, s10
    7f4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f4e: fe3a 5a85    	vselgt.f32	s10, s21, s10
    7f52: eddf aabf    	vldr	s21, [pc, #764]         @ 0x8250 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1820>
    7f56: ee63 0aa0    	vmul.f32	s1, s7, s1
    7f5a: eeb7 dbcd    	vcvt.f32.f64	s26, d13
    7f5e: f10b 0001    	add.w	r0, r11, #0x1
    7f62: ee41 baaa    	vmla.f32	s23, s3, s21
    7f66: eddf aab8    	vldr	s21, [pc, #736]         @ 0x8248 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1818>
    7f6a: eef0 1a4a    	vmov.f32	s3, s20
    7f6e: ee4e 1a2a    	vmla.f32	s3, s28, s21
    7f72: eddf aab8    	vldr	s21, [pc, #736]         @ 0x8254 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1824>
    7f76: ee49 8a27    	vmla.f32	s17, s18, s15
    7f7a: ee0e aa2a    	vmla.f32	s20, s28, s21
    7f7e: ed9f eab7    	vldr	s28, [pc, #732]         @ 0x825c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x182c>
    7f82: ee00 eacd    	vmls.f32	s28, s1, s26
    7f86: ed9f dab6    	vldr	s26, [pc, #728]         @ 0x8260 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1830>
    7f8a: ee09 8a0d    	vmla.f32	s16, s18, s26
    7f8e: ed9f dab6    	vldr	s26, [pc, #728]         @ 0x8268 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1838>
    7f92: eeb7 cbcc    	vcvt.f32.f64	s24, d12
    7f96: 9b04         	ldr	r3, [sp, #0x10]
    7f98: ee49 6a0d    	vmla.f32	s13, s18, s26
    7f9c: 445b         	add	r3, r11
    7f9e: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    7fa2: 2803         	cmp	r0, #0x3
    7fa4: ee2c 9a60    	vnmul.f32	s18, s24, s1
    7fa8: f102 0201    	add.w	r2, r2, #0x1
    7fac: ee79 9a8e    	vadd.f32	s19, s19, s28
    7fb0: 4683         	mov	r11, r0
    7fb2: ee60 0a84    	vmul.f32	s1, s1, s8
    7fb6: f8ce 3000    	str.w	r3, [lr]
    7fba: eeb1 1a41    	vneg.f32	s2, s2
    7fbe: eeb1 ea6f    	vneg.f32	s28, s31
    7fc2: eef1 fa62    	vneg.f32	s31, s5
    7fc6: f47f ab16    	bne.w	0x75f6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0xbc6> @ imm = #-0x9d4
    7fca: 2203         	movs	r2, #0x3
    7fcc: ee15 0a10    	vmov	r0, s10
    7fd0: 9901         	ldr	r1, [sp, #0x4]
    7fd2: ed9d 0a12    	vldr	s0, [sp, #72]
    7fd6: ed81 0a02    	vstr	s0, [r1, #8]
    7fda: ed9d 0a14    	vldr	s0, [sp, #80]
    7fde: ed81 0a03    	vstr	s0, [r1, #12]
    7fe2: f020 4000    	bic	r0, r0, #0x80000000
    7fe6: 9902         	ldr	r1, [sp, #0x8]
    7fe8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7fec: f04f 0000    	mov.w	r0, #0x0
    7ff0: ed81 5a00    	vstr	s10, [r1]
    7ff4: 710a         	strb	r2, [r1, #0x4]
    7ff6: bfb8         	it	lt
    7ff8: 2001         	movlt	r0, #0x1
    7ffa: e007         	b	0x800c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x15dc> @ imm = #0xe
    7ffc: bf00         	nop
    7ffe: bf00         	nop
    8000: 9902         	ldr	r1, [sp, #0x8]
    8002: f04f 40ff    	mov.w	r0, #0x7f800000
    8006: 6008         	str	r0, [r1]
    8008: 2000         	movs	r0, #0x0
    800a: 710a         	strb	r2, [r1, #0x4]
    800c: 7148         	strb	r0, [r1, #0x5]
    800e: b02a         	add	sp, #0xa8
    8010: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    8014: b001         	add	sp, #0x4
    8016: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    801a: bdf0         	pop	{r4, r5, r6, r7, pc}
    801c: bf00         	nop
    801e: bf00         	nop
    8020: eef7 3bc2    	vcvt.f32.f64	s7, d2
    8024: eddf 2a85    	vldr	s5, [pc, #532]          @ 0x823c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    8028: eeb0 2a44    	vmov.f32	s4, s8
    802c: ed8d eb12    	vstr	d14, [sp, #72]
    8030: ee03 2aa2    	vmla.f32	s4, s7, s5
    8034: eef0 2a45    	vmov.f32	s5, s10
    8038: ee43 2aa0    	vmla.f32	s5, s7, s1
    803c: eeb6 ea00    	vmov.f32	s28, #5.000000e-01
    8040: edc1 3a06    	vstr	s7, [r1, #24]
    8044: fec2 4a62    	vminnm.f32	s9, s4, s5
    8048: ee7e 4a64    	vsub.f32	s9, s28, s9
    804c: eeb8 ea00    	vmov.f32	s28, #-2.000000e+00
    8050: eef4 4a4e    	vcmp.f32	s9, s28
    8054: ed9d eb12    	vldr	d14, [sp, #72]
    8058: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    805c: f77e ae81    	ble.w	0x6d62 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x12fe
    8060: eeb4 2a62    	vcmp.f32	s4, s5
    8064: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8068: f63e ae7b    	bhi.w	0x6d62 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x130a
    806c: eef5 4a40    	vcmp.f32	s9, #0
    8070: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8074: f57e ae75    	bpl.w	0x6d62 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x1316
    8078: eef6 2a00    	vmov.f32	s5, #5.000000e-01
    807c: eeb0 2a65    	vmov.f32	s4, s11
    8080: ee04 2aa2    	vmla.f32	s4, s9, s5
    8084: eddf 2a6e    	vldr	s5, [pc, #440]          @ 0x8240 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    8088: ee22 2a22    	vmul.f32	s4, s4, s5
    808c: eeb4 2a61    	vcmp.f32	s4, s3
    8090: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8094: f77e ae65    	ble.w	0x6d62 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x332> @ imm = #-0x1336
    8098: f7fe beb4    	b.w	0x6e04 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1298
    809c: bf00         	nop
    809e: bf00         	nop
    80a0: eef7 3bc2    	vcvt.f32.f64	s7, d2
    80a4: eddf 2a65    	vldr	s5, [pc, #404]          @ 0x823c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    80a8: eeb0 2a44    	vmov.f32	s4, s8
    80ac: eeb6 ba00    	vmov.f32	s22, #5.000000e-01
    80b0: edc1 3a06    	vstr	s7, [r1, #24]
    80b4: ee03 2aa2    	vmla.f32	s4, s7, s5
    80b8: eef0 2a45    	vmov.f32	s5, s10
    80bc: ee43 2aa0    	vmla.f32	s5, s7, s1
    80c0: fec2 4a62    	vminnm.f32	s9, s4, s5
    80c4: ee7b 4a64    	vsub.f32	s9, s22, s9
    80c8: eeb8 ba00    	vmov.f32	s22, #-2.000000e+00
    80cc: eef4 4a4b    	vcmp.f32	s9, s22
    80d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    80d4: f77e ae87    	ble.w	0x6de6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x12f2
    80d8: eef4 2a42    	vcmp.f32	s5, s4
    80dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    80e0: f63e ae81    	bhi.w	0x6de6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x12fe
    80e4: eef5 4a40    	vcmp.f32	s9, #0
    80e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    80ec: f57e ae7b    	bpl.w	0x6de6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x130a
    80f0: eef6 2a00    	vmov.f32	s5, #5.000000e-01
    80f4: eeb0 2a65    	vmov.f32	s4, s11
    80f8: ee04 2aa2    	vmla.f32	s4, s9, s5
    80fc: eddf 2a50    	vldr	s5, [pc, #320]          @ 0x8240 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    8100: ee22 2a22    	vmul.f32	s4, s4, s5
    8104: eeb4 2a61    	vcmp.f32	s4, s3
    8108: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    810c: f77e ae6b    	ble.w	0x6de6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3b6> @ imm = #-0x132a
    8110: f7fe be78    	b.w	0x6e04 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1310
    8114: bf00         	nop
    8116: bf00         	nop
    8118: eef7 3bc2    	vcvt.f32.f64	s7, d2
    811c: ed9f 7a47    	vldr	s14, [pc, #284]         @ 0x823c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    8120: eeb0 2a44    	vmov.f32	s4, s8
    8124: eef0 2a45    	vmov.f32	s5, s10
    8128: eef6 4a00    	vmov.f32	s9, #5.000000e-01
    812c: ee03 2a87    	vmla.f32	s4, s7, s14
    8130: edc1 3a06    	vstr	s7, [r1, #24]
    8134: ee43 2aa0    	vmla.f32	s5, s7, s1
    8138: fe82 7a62    	vminnm.f32	s14, s4, s5
    813c: ee34 7ac7    	vsub.f32	s14, s9, s14
    8140: eef8 4a00    	vmov.f32	s9, #-2.000000e+00
    8144: eeb4 7a64    	vcmp.f32	s14, s9
    8148: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    814c: f77e ae12    	ble.w	0x6d74 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x13dc
    8150: eeb4 2a62    	vcmp.f32	s4, s5
    8154: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8158: f63e ae0c    	bhi.w	0x6d74 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x13e8
    815c: eeb5 7a40    	vcmp.f32	s14, #0
    8160: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8164: f57e ae06    	bpl.w	0x6d74 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x13f4
    8168: eef6 2a00    	vmov.f32	s5, #5.000000e-01
    816c: eeb0 2a65    	vmov.f32	s4, s11
    8170: ee07 2a22    	vmla.f32	s4, s14, s5
    8174: ed9f 7a32    	vldr	s14, [pc, #200]         @ 0x8240 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    8178: ee22 2a07    	vmul.f32	s4, s4, s14
    817c: eeb4 2a61    	vcmp.f32	s4, s3
    8180: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8184: f77e adf6    	ble.w	0x6d74 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x344> @ imm = #-0x1414
    8188: f7fe be3c    	b.w	0x6e04 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1388
    818c: a8 cc 7f 3f  	.word	0x3f7fcca8
    8190: 0d 61 4d 3a  	.word	0x3a4d610d
    8194: 95 bf d6 33  	.word	0x33d6bf95
    8198: eef7 3bc2    	vcvt.f32.f64	s7, d2
    819c: ed9f 7a27    	vldr	s14, [pc, #156]         @ 0x823c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x180c>
    81a0: eeb0 2a45    	vmov.f32	s4, s10
    81a4: eef6 4a00    	vmov.f32	s9, #5.000000e-01
    81a8: eef8 2a00    	vmov.f32	s5, #-2.000000e+00
    81ac: ee03 2aa0    	vmla.f32	s4, s7, s1
    81b0: eef0 0a44    	vmov.f32	s1, s8
    81b4: ee43 0a87    	vmla.f32	s1, s7, s14
    81b8: edc1 3a06    	vstr	s7, [r1, #24]
    81bc: fe80 7ac2    	vminnm.f32	s14, s1, s4
    81c0: ee34 7ac7    	vsub.f32	s14, s9, s14
    81c4: eeb4 7a62    	vcmp.f32	s14, s5
    81c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    81cc: f77e ae14    	ble.w	0x6df8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #-0x13d8
    81d0: eeb4 2a60    	vcmp.f32	s4, s1
    81d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    81d8: f63e ae0e    	bhi.w	0x6df8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #-0x13e4
    81dc: eeb5 7a40    	vcmp.f32	s14, #0
    81e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    81e4: f57e ae08    	bpl.w	0x6df8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3c8> @ imm = #-0x13f0
    81e8: ee47 5a24    	vmla.f32	s11, s14, s9
    81ec: ed9f 2a14    	vldr	s4, [pc, #80]           @ 0x8240 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1810>
    81f0: eef0 4a41    	vmov.f32	s9, s2
    81f4: ee25 2a82    	vmul.f32	s4, s11, s4
    81f8: eeb4 2a61    	vcmp.f32	s4, s3
    81fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8200: f77e adfc    	ble.w	0x6dfc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3cc> @ imm = #-0x1408
    8204: f7fe bdfe    	b.w	0x6e04 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x3d4> @ imm = #-0x1404
    8208: f24b 7090    	movw	r0, #0xb790
    820c: f64b 0210    	movw	r2, #0xb810
    8210: f2c0 0000    	movt	r0, #0x0
    8214: f2c0 0200    	movt	r2, #0x0
    8218: a91e         	add	r1, sp, #0x78
    821a: f002 f8e5    	bl	0xa3e8 <core::panicking::panic_fmt> @ imm = #0x21ca
    821e: bf00         	nop
    8220: eddf aa08    	vldr	s21, [pc, #32]          @ 0x8244 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1814>
    8224: eef0 2a6a    	vmov.f32	s5, s21
    8228: f7fe bee9    	b.w	0x6ffe <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x5ce> @ imm = #-0x122e
    822c: bf00         	nop
    822e: bf00         	nop
    8230: eddf 8a04    	vldr	s17, [pc, #16]          @ 0x8244 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x1814>
    8234: eeb0 2a68    	vmov.f32	s4, s17
    8238: f7ff b84b    	b.w	0x72d2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>+0x8a2> @ imm = #-0xf6a
    823c: 0d 61 4d 3a  	.word	0x3a4d610d
    8240: 2b 18 95 3b  	.word	0x3b95182b
    8244: 00 00 c0 7f  	.word	0x7fc00000
    8248: 00 00 00 80  	.word	0x80000000
    824c: a8 b9 92 38  	.word	0x3892b9a8
    8250: fc 7c 04 bf  	.word	0xbf047cfc
    8254: 34 8b b1 b6  	.word	0xb6b18b34
    8258: 00 00 80 7f  	.word	0x7f800000
    825c: d2 20 02 39  	.word	0x390220d2
    8260: 5d fa 11 be  	.word	0xbe11fa5d
    8264: 75 5e 1f 39  	.word	0x391f5e75
    8268: da a7 7e be  	.word	0xbe7ea7da
    826c: d2 20 02 b9  	.word	0xb90220d2
    8270: 2b 18 15 3b  	.word	0x3b15182b
    8274: 0a d7 23 3c  	.word	0x3c23d70a

00008278 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>>:
    8278: b5f0         	push	{r4, r5, r6, r7, lr}
    827a: af03         	add	r7, sp, #0xc
    827c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    8280: b081         	sub	sp, #0x4
    8282: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    8286: b088         	sub	sp, #0x20
    8288: ed91 3a00    	vldr	s6, [r1]
    828c: ed91 4a01    	vldr	s8, [r1, #4]
    8290: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    8294: ed91 6a02    	vldr	s12, [r1, #8]
    8298: ed9f 5b7b    	vldr	d5, [pc, #492]          @ 0x8488 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x210>
    829c: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    82a0: eeb0 7b41    	vmov.f64	d7, d1
    82a4: ee03 7b05    	vmla.f64	d7, d3, d5
    82a8: eeb7 3ac6    	vcvt.f64.f32	d3, s12
    82ac: ee04 7b05    	vmla.f64	d7, d4, d5
    82b0: ed91 4a03    	vldr	s8, [r1, #12]
    82b4: ee03 7b05    	vmla.f64	d7, d3, d5
    82b8: eeb7 3ac4    	vcvt.f64.f32	d3, s8
    82bc: ed91 4a04    	vldr	s8, [r1, #16]
    82c0: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    82c4: ed9f 6b72    	vldr	d6, [pc, #456]          @ 0x8490 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x218>
    82c8: ee03 7b05    	vmla.f64	d7, d3, d5
    82cc: ed91 3a05    	vldr	s6, [r1, #20]
    82d0: ee04 7b05    	vmla.f64	d7, d4, d5
    82d4: ed91 5a06    	vldr	s10, [r1, #24]
    82d8: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    82dc: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    82e0: ed9f 4b6d    	vldr	d4, [pc, #436]          @ 0x8498 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x220>
    82e4: ee23 4b04    	vmul.f64	d4, d3, d4
    82e8: ee25 5b06    	vmul.f64	d5, d5, d6
    82ec: ed9f 6aa6    	vldr	s12, [pc, #664]         @ 0x8588 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x310>
    82f0: ee22 2a06    	vmul.f32	s4, s4, s12
    82f4: ee37 3b04    	vadd.f64	d3, d7, d4
    82f8: eeb7 6ac2    	vcvt.f64.f32	d6, s4
    82fc: ed9f 7b68    	vldr	d7, [pc, #416]          @ 0x84a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x228>
    8300: ee33 3b05    	vadd.f64	d3, d3, d5
    8304: ee86 6b07    	vdiv.f64	d6, d6, d7
    8308: ed9f 7b67    	vldr	d7, [pc, #412]          @ 0x84a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x230>
    830c: ee03 6b07    	vmla.f64	d6, d3, d7
    8310: ed9f 3b67    	vldr	d3, [pc, #412]          @ 0x84b0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x238>
    8314: ee86 3b03    	vdiv.f64	d3, d6, d3
    8318: eebb 6a05    	vmov.f32	s12, #-2.100000e+01
    831c: ee31 1b04    	vadd.f64	d1, d1, d4
    8320: ed9f 4a9a    	vldr	s8, [pc, #616]          @ 0x858c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x314>
    8324: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    8328: ee32 4a04    	vadd.f32	s8, s4, s8
    832c: ee31 7b05    	vadd.f64	d7, d1, d5
    8330: eeb4 6a43    	vcmp.f32	s12, s6
    8334: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8338: ed9f 5b5f    	vldr	d5, [pc, #380]          @ 0x84b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x240>
    833c: fe36 6a03    	vselgt.f32	s12, s12, s6
    8340: eeb3 3a05    	vmov.f32	s6, #2.100000e+01
    8344: ed8d 7b02    	vstr	d7, [sp, #8]
    8348: eeb4 6a43    	vcmp.f32	s12, s6
    834c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8350: fe73 da06    	vselgt.f32	s27, s6, s12
    8354: edc1 da07    	vstr	s27, [r1, #28]
    8358: eeb7 1aed    	vcvt.f64.f32	d1, s27
    835c: ee01 7b05    	vmla.f64	d7, d1, d5
    8360: eddf 1ade    	vldr	s3, [pc, #888]          @ 0x86dc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x464>
    8364: ed9f 1ade    	vldr	s2, [pc, #888]          @ 0x86e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x468>
    8368: ee84 5a21    	vdiv.f32	s10, s8, s3
    836c: ee22 6a01    	vmul.f32	s12, s4, s2
    8370: eeb7 4bc7    	vcvt.f32.f64	s8, d7
    8374: ed9f 7adb    	vldr	s14, [pc, #876]         @ 0x86e4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x46c>
    8378: eeb0 1a46    	vmov.f32	s2, s12
    837c: ee04 1a07    	vmla.f32	s2, s8, s14
    8380: ed9f 4ad9    	vldr	s8, [pc, #868]          @ 0x86e8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x470>
    8384: ee32 2a04    	vadd.f32	s4, s4, s8
    8388: eec2 2a21    	vdiv.f32	s5, s4, s3
    838c: eeb4 1a62    	vcmp.f32	s2, s5
    8390: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8394: db08         	blt	0x83a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x130> @ imm = #0x10
    8396: eeb4 1a45    	vcmp.f32	s2, s10
    839a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    839e: d803         	bhi	0x83a8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x130> @ imm = #0x6
    83a0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    83a4: e11c         	b	0x85e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x368> @ imm = #0x238
    83a6: bf00         	nop
    83a8: eef4 2a45    	vcmp.f32	s5, s10
    83ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83b0: f200 85d2    	bhi.w	0x8f58 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xce0> @ imm = #0xba4
    83b4: eef4 2a41    	vcmp.f32	s5, s2
    83b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83bc: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    83c0: fe32 2a81    	vselgt.f32	s4, s5, s2
    83c4: eeb4 2a45    	vcmp.f32	s4, s10
    83c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83cc: fe35 7a02    	vselgt.f32	s14, s10, s4
    83d0: ed9f 2ac6    	vldr	s4, [pc, #792]          @ 0x86ec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x474>
    83d4: ee37 1a41    	vsub.f32	s2, s14, s2
    83d8: ee81 1a02    	vdiv.f32	s2, s2, s4
    83dc: eebb 2a05    	vmov.f32	s4, #-2.100000e+01
    83e0: ee3d 1a81    	vadd.f32	s2, s27, s2
    83e4: eeb4 2a41    	vcmp.f32	s4, s2
    83e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83ec: fe32 1a01    	vselgt.f32	s2, s4, s2
    83f0: eeb0 2a40    	vmov.f32	s4, s0
    83f4: eeb4 1a43    	vcmp.f32	s2, s6
    83f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83fc: fe33 4a01    	vselgt.f32	s8, s6, s2
    8400: ed9f 1abb    	vldr	s2, [pc, #748]          @ 0x86f0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x478>
    8404: ee04 2a01    	vmla.f32	s4, s8, s2
    8408: eeb0 1ac7    	vabs.f32	s2, s14
    840c: eeb4 1a43    	vcmp.f32	s2, s6
    8410: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8414: d954         	bls	0x84c0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x248> @ imm = #0xa8
    8416: ee83 1a01    	vdiv.f32	s2, s6, s2
    841a: ee21 1a01    	vmul.f32	s2, s2, s2
    841e: ee61 0a01    	vmul.f32	s1, s2, s2
    8422: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    8426: ee60 1aa0    	vmul.f32	s3, s1, s1
    842a: eef0 0a41    	vmov.f32	s1, s2
    842e: ee41 0aa1    	vmla.f32	s1, s3, s3
    8432: eef0 1a41    	vmov.f32	s3, s2
    8436: eef4 0a41    	vcmp.f32	s1, s2
    843a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    843e: d009         	beq	0x8454 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x1dc> @ imm = #0x12
    8440: eef1 0ae0    	vsqrt.f32	s1, s1
    8444: eef1 0ae0    	vsqrt.f32	s1, s1
    8448: eef1 0ae0    	vsqrt.f32	s1, s1
    844c: eef1 0ae0    	vsqrt.f32	s1, s1
    8450: eef0 1a60    	vmov.f32	s3, s1
    8454: ee17 5a10    	vmov	r5, s14
    8458: f04f 567e    	mov.w	r6, #0x3f800000
    845c: ee81 1a21    	vdiv.f32	s2, s2, s3
    8460: eeb4 7a47    	vcmp.f32	s14, s14
    8464: ed9f 7adc    	vldr	s14, [pc, #880]         @ 0x87d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x560>
    8468: f366 051e    	bfi	r5, r6, #0, #31
    846c: ee00 5a90    	vmov	s1, r5
    8470: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8474: ee60 0a83    	vmul.f32	s1, s1, s6
    8478: ee20 1a81    	vmul.f32	s2, s1, s2
    847c: fe17 7a01    	vselvs.f32	s14, s14, s2
    8480: e041         	b	0x8506 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x28e> @ imm = #0x82
    8482: bf00         	nop
    8484: bf00         	nop
    8486: bf00         	nop
    8488: 00 00 00 00  	.word	0x00000000
    848c: 00 00 00 00  	.word	0x00000000
    8490: ce 98 d9 8d  	.word	0x8dd998ce
    8494: 11 3b d9 bf  	.word	0xbfd93b11
    8498: ce 98 d9 8d  	.word	0x8dd998ce
    849c: 11 3b d9 3f  	.word	0x3fd93b11
    84a0: 0a 85 fc bd  	.word	0xbdfc850a
    84a4: 77 bb f1 40  	.word	0x40f1bb77
    84a8: 27 0b ca d7  	.word	0xd7ca0b27
    84ac: 7b 2b 8b 40  	.word	0x408b2b7b
    84b0: ed 22 58 32  	.word	0x325822ed
    84b4: af 35 33 40  	.word	0x403335af
    84b8: 34 aa a2 31  	.word	0x31a2aa34
    84bc: 6b 72 95 bf  	.word	0xbf95726b
    84c0: ee87 1a03    	vdiv.f32	s2, s14, s6
    84c4: ee21 1a01    	vmul.f32	s2, s2, s2
    84c8: ee61 0a01    	vmul.f32	s1, s2, s2
    84cc: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    84d0: ee60 1aa0    	vmul.f32	s3, s1, s1
    84d4: eef0 0a41    	vmov.f32	s1, s2
    84d8: ee41 0aa1    	vmla.f32	s1, s3, s3
    84dc: eef0 1a41    	vmov.f32	s3, s2
    84e0: eef4 0a41    	vcmp.f32	s1, s2
    84e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84e8: d009         	beq	0x84fe <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x286> @ imm = #0x12
    84ea: eef1 0ae0    	vsqrt.f32	s1, s1
    84ee: eef1 0ae0    	vsqrt.f32	s1, s1
    84f2: eef1 0ae0    	vsqrt.f32	s1, s1
    84f6: eef1 0ae0    	vsqrt.f32	s1, s1
    84fa: eef0 1a60    	vmov.f32	s3, s1
    84fe: ee81 1a21    	vdiv.f32	s2, s2, s3
    8502: ee27 7a01    	vmul.f32	s14, s14, s2
    8506: eeb0 1ac7    	vabs.f32	s2, s14
    850a: eef3 0a08    	vmov.f32	s1, #2.400000e+01
    850e: eeb0 2ac2    	vabs.f32	s4, s4
    8512: ee30 1ac1    	vsub.f32	s2, s1, s2
    8516: eef2 0a00    	vmov.f32	s1, #8.000000e+00
    851a: fe81 1a20    	vmaxnm.f32	s2, s2, s1
    851e: eddf 0aaf    	vldr	s1, [pc, #700]          @ 0x87dc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x564>
    8522: ee80 1a81    	vdiv.f32	s2, s1, s2
    8526: eef1 0a04    	vmov.f32	s1, #5.000000e+00
    852a: fec1 0a60    	vminnm.f32	s1, s2, s1
    852e: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    8532: eec2 1a20    	vdiv.f32	s3, s4, s1
    8536: eef4 1a41    	vcmp.f32	s3, s2
    853a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    853e: d927         	bls	0x8590 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x318> @ imm = #0x4e
    8540: ee80 1a82    	vdiv.f32	s2, s1, s4
    8544: ee21 2a01    	vmul.f32	s4, s2, s2
    8548: ee62 0a02    	vmul.f32	s1, s4, s4
    854c: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    8550: ee60 1aa0    	vmul.f32	s3, s1, s1
    8554: eef0 0a42    	vmov.f32	s1, s4
    8558: ee41 0aa1    	vmla.f32	s1, s3, s3
    855c: eef0 1a42    	vmov.f32	s3, s4
    8560: eef4 0a42    	vcmp.f32	s1, s4
    8564: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8568: d009         	beq	0x857e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x306> @ imm = #0x12
    856a: eef1 0ae0    	vsqrt.f32	s1, s1
    856e: eef1 0ae0    	vsqrt.f32	s1, s1
    8572: eef1 0ae0    	vsqrt.f32	s1, s1
    8576: eef1 0ae0    	vsqrt.f32	s1, s1
    857a: eef0 1a60    	vmov.f32	s3, s1
    857e: ee82 2a21    	vdiv.f32	s4, s4, s3
    8582: ee21 1a02    	vmul.f32	s2, s2, s4
    8586: e020         	b	0x85ca <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x352> @ imm = #0x40
    8588: 00 80 3b 47  	.word	0x473b8000
    858c: 00 24 f4 4a  	.word	0x4af42400
    8590: ee21 2aa1    	vmul.f32	s4, s3, s3
    8594: ee22 2a02    	vmul.f32	s4, s4, s4
    8598: ee62 0a02    	vmul.f32	s1, s4, s4
    859c: eeb0 2a41    	vmov.f32	s4, s2
    85a0: ee00 2aa0    	vmla.f32	s4, s1, s1
    85a4: eef0 0a41    	vmov.f32	s1, s2
    85a8: eeb4 2a41    	vcmp.f32	s4, s2
    85ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85b0: d009         	beq	0x85c6 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x34e> @ imm = #0x12
    85b2: eeb1 2ac2    	vsqrt.f32	s4, s4
    85b6: eeb1 2ac2    	vsqrt.f32	s4, s4
    85ba: eeb1 2ac2    	vsqrt.f32	s4, s4
    85be: eeb1 2ac2    	vsqrt.f32	s4, s4
    85c2: eef0 0a42    	vmov.f32	s1, s4
    85c6: ee81 1a20    	vdiv.f32	s2, s2, s1
    85ca: ee07 4a01    	vmla.f32	s8, s14, s2
    85ce: eeb6 1a00    	vmov.f32	s2, #5.000000e-01
    85d2: 681e         	ldr	r6, [r3]
    85d4: 3601         	adds	r6, #0x1
    85d6: 601e         	str	r6, [r3]
    85d8: ee64 da01    	vmul.f32	s27, s8, s2
    85dc: edc1 da07    	vstr	s27, [r1, #28]
    85e0: eef4 2a45    	vcmp.f32	s5, s10
    85e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85e8: f200 84b6    	bhi.w	0x8f58 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xce0> @ imm = #0x96c
    85ec: eeb7 1aed    	vcvt.f64.f32	d1, s27
    85f0: eeb0 2a46    	vmov.f32	s4, s12
    85f4: ed1f 7b50    	vldr	d7, [pc, #-320]         @ 0x84b8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x240>
    85f8: eddf 0a3d    	vldr	s1, [pc, #244]          @ 0x86f0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x478>
    85fc: eef0 8a40    	vmov.f32	s17, s0
    8600: ed9d 4b02    	vldr	d4, [sp, #8]
    8604: ee4d 8aa0    	vmla.f32	s17, s27, s1
    8608: f04f 0c00    	mov.w	r12, #0x0
    860c: ee01 4b07    	vmla.f64	d4, d1, d7
    8610: 2600         	movs	r6, #0x0
    8612: eeb7 1bc4    	vcvt.f32.f64	s2, d4
    8616: ed9f 4a33    	vldr	s8, [pc, #204]          @ 0x86e4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x46c>
    861a: ee01 2a04    	vmla.f32	s4, s2, s8
    861e: eef4 2a42    	vcmp.f32	s5, s4
    8622: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8626: fe32 1a82    	vselgt.f32	s2, s5, s4
    862a: eeb4 1a45    	vcmp.f32	s2, s10
    862e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8632: eeb4 2a62    	vcmp.f32	s4, s5
    8636: fe35 9a01    	vselgt.f32	s18, s10, s2
    863a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    863e: eeb4 2a45    	vcmp.f32	s4, s10
    8642: eeb0 1ac9    	vabs.f32	s2, s18
    8646: bfc8         	it	gt
    8648: f04f 0c01    	movgt.w	r12, #0x1
    864c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8650: bf48         	it	mi
    8652: 2601         	movmi	r6, #0x1
    8654: eeb4 1a43    	vcmp.f32	s2, s6
    8658: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    865c: e9cd 2000    	strd	r2, r0, [sp]
    8660: d94a         	bls	0x86f8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x480> @ imm = #0x94
    8662: ee83 1a01    	vdiv.f32	s2, s6, s2
    8666: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    866a: ee21 2a01    	vmul.f32	s4, s2, s2
    866e: eeb0 7a44    	vmov.f32	s14, s8
    8672: ee22 2a02    	vmul.f32	s4, s4, s4
    8676: ee22 2a02    	vmul.f32	s4, s4, s4
    867a: ee62 9a02    	vmul.f32	s19, s4, s4
    867e: ee39 2a84    	vadd.f32	s4, s19, s8
    8682: eeb4 2a44    	vcmp.f32	s4, s8
    8686: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    868a: d009         	beq	0x86a0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x428> @ imm = #0x12
    868c: eeb0 7a42    	vmov.f32	s14, s4
    8690: eeb1 7ac7    	vsqrt.f32	s14, s14
    8694: eeb1 7ac7    	vsqrt.f32	s14, s14
    8698: eeb1 7ac7    	vsqrt.f32	s14, s14
    869c: eeb1 7ac7    	vsqrt.f32	s14, s14
    86a0: ee19 5a10    	vmov	r5, s18
    86a4: f04f 547e    	mov.w	r4, #0x3f800000
    86a8: ee84 4a07    	vdiv.f32	s8, s8, s14
    86ac: ee21 1a29    	vmul.f32	s2, s2, s19
    86b0: f364 051e    	bfi	r5, r4, #0, #31
    86b4: eeb4 9a49    	vcmp.f32	s18, s18
    86b8: ee01 5a90    	vmov	s3, r5
    86bc: ee84 2a02    	vdiv.f32	s4, s8, s4
    86c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86c4: ee21 7a83    	vmul.f32	s14, s3, s6
    86c8: ee27 7a04    	vmul.f32	s14, s14, s8
    86cc: ed9f 4a42    	vldr	s8, [pc, #264]          @ 0x87d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x560>
    86d0: fe14 aa07    	vselvs.f32	s20, s8, s14
    86d4: ee21 7a02    	vmul.f32	s14, s2, s4
    86d8: e033         	b	0x8742 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x4ca> @ imm = #0x66
    86da: bf00         	nop
    86dc: 00 a0 8c 47  	.word	0x478ca000
    86e0: af fd 66 37  	.word	0x3766fdaf
    86e4: df 5b 59 44  	.word	0x44595bdf
    86e8: 00 24 f4 ca  	.word	0xcaf42400
    86ec: 7a ad 91 c1  	.word	0xc191ad7a
    86f0: 75 e7 24 be  	.word	0xbe24e775
    86f4: 00 bf 00 bf  	.word	0xbf00bf00
    86f8: ee89 1a03    	vdiv.f32	s2, s18, s6
    86fc: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    8700: ee21 1a01    	vmul.f32	s2, s2, s2
    8704: eeb0 4a42    	vmov.f32	s8, s4
    8708: ee21 1a01    	vmul.f32	s2, s2, s2
    870c: ee21 1a01    	vmul.f32	s2, s2, s2
    8710: ee61 9a01    	vmul.f32	s19, s2, s2
    8714: ee39 1a82    	vadd.f32	s2, s19, s4
    8718: eeb4 1a42    	vcmp.f32	s2, s4
    871c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8720: d009         	beq	0x8736 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x4be> @ imm = #0x12
    8722: eeb0 4a41    	vmov.f32	s8, s2
    8726: eeb1 4ac4    	vsqrt.f32	s8, s8
    872a: eeb1 4ac4    	vsqrt.f32	s8, s8
    872e: eeb1 4ac4    	vsqrt.f32	s8, s8
    8732: eeb1 4ac4    	vsqrt.f32	s8, s8
    8736: ee82 2a04    	vdiv.f32	s4, s4, s8
    873a: ee82 7a01    	vdiv.f32	s14, s4, s2
    873e: ee29 aa02    	vmul.f32	s20, s18, s4
    8742: eeb0 1aca    	vabs.f32	s2, s20
    8746: eef3 5a08    	vmov.f32	s11, #2.400000e+01
    874a: eef2 6a00    	vmov.f32	s13, #8.000000e+00
    874e: eddf 7a23    	vldr	s15, [pc, #140]         @ 0x87dc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x564>
    8752: eeb1 8a04    	vmov.f32	s16, #5.000000e+00
    8756: eeb0 2ae8    	vabs.f32	s4, s17
    875a: ee75 3ac1    	vsub.f32	s7, s11, s2
    875e: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    8762: fec3 eaa6    	vmaxnm.f32	s29, s7, s13
    8766: ee87 baae    	vdiv.f32	s22, s15, s29
    876a: fecb aa48    	vminnm.f32	s21, s22, s16
    876e: ee82 ca2a    	vdiv.f32	s24, s4, s21
    8772: eeb4 ca41    	vcmp.f32	s24, s2
    8776: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    877a: d931         	bls	0x87e0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x568> @ imm = #0x62
    877c: ee8a ea82    	vdiv.f32	s28, s21, s4
    8780: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    8784: ee2e 1a0e    	vmul.f32	s2, s28, s28
    8788: eeb0 4a42    	vmov.f32	s8, s4
    878c: ee21 1a01    	vmul.f32	s2, s2, s2
    8790: ee21 1a01    	vmul.f32	s2, s2, s2
    8794: ee61 4a01    	vmul.f32	s9, s2, s2
    8798: ee34 1a82    	vadd.f32	s2, s9, s4
    879c: eeb4 1a42    	vcmp.f32	s2, s4
    87a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87a4: d009         	beq	0x87ba <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x542> @ imm = #0x12
    87a6: eeb0 4a41    	vmov.f32	s8, s2
    87aa: eeb1 4ac4    	vsqrt.f32	s8, s8
    87ae: eeb1 4ac4    	vsqrt.f32	s8, s8
    87b2: eeb1 4ac4    	vsqrt.f32	s8, s8
    87b6: eeb1 4ac4    	vsqrt.f32	s8, s8
    87ba: ee82 da04    	vdiv.f32	s26, s4, s8
    87be: eeb0 ca4e    	vmov.f32	s24, s28
    87c2: eef1 1a4e    	vneg.f32	s3, s28
    87c6: ee8d 2a01    	vdiv.f32	s4, s26, s2
    87ca: ee81 1aa8    	vdiv.f32	s2, s3, s17
    87ce: ee2e fa0d    	vmul.f32	s30, s28, s26
    87d2: ee61 ba02    	vmul.f32	s23, s2, s4
    87d6: e034         	b	0x8842 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x5ca> @ imm = #0x68
    87d8: 00 00 c0 7f  	.word	0x7fc00000
    87dc: 00 00 70 42  	.word	0x42700000
    87e0: ee2c 2a0c    	vmul.f32	s4, s24, s24
    87e4: eeb0 4a41    	vmov.f32	s8, s2
    87e8: ee22 2a02    	vmul.f32	s4, s4, s4
    87ec: ee22 2a02    	vmul.f32	s4, s4, s4
    87f0: ee22 ea02    	vmul.f32	s28, s4, s4
    87f4: ee3e 2a01    	vadd.f32	s4, s28, s2
    87f8: eeb4 2a41    	vcmp.f32	s4, s2
    87fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8800: d009         	beq	0x8816 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x59e> @ imm = #0x12
    8802: eeb0 4a42    	vmov.f32	s8, s4
    8806: eeb1 4ac4    	vsqrt.f32	s8, s8
    880a: eeb1 4ac4    	vsqrt.f32	s8, s8
    880e: eeb1 4ac4    	vsqrt.f32	s8, s8
    8812: eeb1 4ac4    	vsqrt.f32	s8, s8
    8816: ee81 fa04    	vdiv.f32	s30, s2, s8
    881a: eef5 8a40    	vcmp.f32	s17, #0
    881e: eeb1 1a4e    	vneg.f32	s2, s28
    8822: eddf 1ab4    	vldr	s3, [pc, #720]          @ 0x8af4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x87c>
    8826: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    882a: ee8f 2a02    	vdiv.f32	s4, s30, s4
    882e: eeb0 da4f    	vmov.f32	s26, s30
    8832: ee81 1a28    	vdiv.f32	s2, s2, s17
    8836: eef0 4a4e    	vmov.f32	s9, s28
    883a: ee21 1a02    	vmul.f32	s2, s2, s4
    883e: fe41 ba81    	vseleq.f32	s23, s3, s2
    8842: 2500         	movs	r5, #0x0
    8844: ee8e 1a2a    	vdiv.f32	s2, s28, s21
    8848: 2400         	movs	r4, #0x0
    884a: eeb4 ba48    	vcmp.f32	s22, s16
    884e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8852: eef4 3a66    	vcmp.f32	s7, s13
    8856: f04f 0200    	mov.w	r2, #0x0
    885a: bf48         	it	mi
    885c: 2501         	movmi	r5, #0x1
    885e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8862: bfc8         	it	gt
    8864: 2401         	movgt	r4, #0x1
    8866: eeb5 aa40    	vcmp.f32	s20, #0
    886a: ed9f baa2    	vldr	s22, [pc, #648]         @ 0x8af4 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x87c>
    886e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8872: bf18         	it	ne
    8874: 2201         	movne	r2, #0x1
    8876: 4025         	ands	r5, r4
    8878: ee21 1a02    	vmul.f32	s2, s2, s4
    887c: eeb0 2a4b    	vmov.f32	s4, s22
    8880: 4015         	ands	r5, r2
    8882: 2d01         	cmp	r5, #0x1
    8884: ea0c 0206    	and.w	r2, r12, r6
    8888: f04f 0c00    	mov.w	r12, #0x0
    888c: d115         	bne	0x88ba <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x642> @ imm = #0x2a
    888e: ee1a 6a10    	vmov	r6, s20
    8892: f04f 547e    	mov.w	r4, #0x3f800000
    8896: eeb4 aa4a    	vcmp.f32	s20, s20
    889a: ed5f 1a31    	vldr	s3, [pc, #-196]         @ 0x87d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x560>
    889e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88a2: f364 061e    	bfi	r6, r4, #0, #31
    88a6: ee02 6a10    	vmov	s4, r6
    88aa: ee22 2a27    	vmul.f32	s4, s4, s15
    88ae: fe11 2a82    	vselvs.f32	s4, s3, s4
    88b2: ee6e 1aae    	vmul.f32	s3, s29, s29
    88b6: ee82 2a21    	vdiv.f32	s4, s4, s3
    88ba: ee2a 1a01    	vmul.f32	s2, s20, s2
    88be: eef0 1a4f    	vmov.f32	s3, s30
    88c2: 2a00         	cmp	r2, #0x0
    88c4: eef0 3a6d    	vmov.f32	s7, s27
    88c8: ee4a 3a4f    	vmls.f32	s7, s20, s30
    88cc: eef7 ca00    	vmov.f32	s25, #1.000000e+00
    88d0: ee41 1a02    	vmla.f32	s3, s2, s4
    88d4: ed9f 2a88    	vldr	s4, [pc, #544]          @ 0x8af8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x880>
    88d8: e9d3 2800    	ldrd	r2, r8, [r3]
    88dc: 689e         	ldr	r6, [r3, #0x8]
    88de: f108 0b01    	add.w	r11, r8, #0x1
    88e2: f106 0e01    	add.w	lr, r6, #0x1
    88e6: f102 0a02    	add.w	r10, r2, #0x2
    88ea: f04f 597e    	mov.w	r9, #0x3f800000
    88ee: f04f 0600    	mov.w	r6, #0x0
    88f2: ed5f fa47    	vldr	s31, [pc, #-284]        @ 0x87d8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x560>
    88f6: f102 0401    	add.w	r4, r2, #0x1
    88fa: ee27 1a21    	vmul.f32	s2, s14, s3
    88fe: eddf 1a7f    	vldr	s3, [pc, #508]          @ 0x8afc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x884>
    8902: fe01 2a82    	vseleq.f32	s4, s3, s4
    8906: 601c         	str	r4, [r3]
    8908: ee6a 1a2b    	vmul.f32	s3, s20, s23
    890c: ee22 1a01    	vmul.f32	s2, s4, s2
    8910: ed9f 2a7b    	vldr	s4, [pc, #492]          @ 0x8b00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x888>
    8914: ee21 ea82    	vmul.f32	s28, s3, s4
    8918: ed9f 2a7a    	vldr	s4, [pc, #488]          @ 0x8b04 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x88c>
    891c: ee01 ea02    	vmla.f32	s28, s2, s4
    8920: ed1f 1a8e    	vldr	s2, [pc, #-568]         @ 0x86ec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x474>
    8924: fe4b ba01    	vseleq.f32	s23, s22, s2
    8928: e02f         	b	0x898a <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x712> @ imm = #0x5e
    892a: bf00         	nop
    892c: bf00         	nop
    892e: bf00         	nop
    8930: ee2a 1a01    	vmul.f32	s2, s20, s2
    8934: eef0 3a6d    	vmov.f32	s7, s27
    8938: ee4a 3a6b    	vmls.f32	s7, s20, s23
    893c: ea14 0008    	ands.w	r0, r4, r8
    8940: ed9f ea6e    	vldr	s28, [pc, #440]         @ 0x8afc <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x884>
    8944: ee2a 2a02    	vmul.f32	s4, s20, s4
    8948: ee41 ba21    	vmla.f32	s23, s2, s3
    894c: eddf 1a6a    	vldr	s3, [pc, #424]          @ 0x8af8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x880>
    8950: fe4e 1a21    	vseleq.f32	s3, s28, s3
    8954: f106 0001    	add.w	r0, r6, #0x1
    8958: eb0a 0206    	add.w	r2, r10, r6
    895c: f10c 0c01    	add.w	r12, r12, #0x1
    8960: 4606         	mov	r6, r0
    8962: 601a         	str	r2, [r3]
    8964: ee27 1a2b    	vmul.f32	s2, s14, s23
    8968: ee21 1a81    	vmul.f32	s2, s3, s2
    896c: eddf 1a64    	vldr	s3, [pc, #400]          @ 0x8b00 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x888>
    8970: ee22 ea21    	vmul.f32	s28, s4, s3
    8974: ed9f 2a63    	vldr	s4, [pc, #396]          @ 0x8b04 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x88c>
    8978: ee01 ea02    	vmla.f32	s28, s2, s4
    897c: ed1f 1aa5    	vldr	s2, [pc, #-660]         @ 0x86ec <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x474>
    8980: fe4b ba01    	vseleq.f32	s23, s22, s2
    8984: 2803         	cmp	r0, #0x3
    8986: f000 82b7    	beq.w	0x8ef8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xc80> @ imm = #0x56e
    898a: ee3e ea2c    	vadd.f32	s28, s28, s25
    898e: ee1e 4a10    	vmov	r4, s28
    8992: f024 4400    	bic	r4, r4, #0x80000000
    8996: f1b4 4fff    	cmp.w	r4, #0x7f800000
    899a: eb0b 0406    	add.w	r4, r11, r6
    899e: 605c         	str	r4, [r3, #0x4]
    89a0: f280 82a2    	bge.w	0x8ee8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xc70> @ imm = #0x544
    89a4: eeb0 1ace    	vabs.f32	s2, s28
    89a8: ed9f 2ae4    	vldr	s4, [pc, #912]          @ 0x8d3c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xac4>
    89ac: eeb4 1a42    	vcmp.f32	s2, s4
    89b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89b4: f100 8298    	bmi.w	0x8ee8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xc70> @ imm = #0x530
    89b8: eeb1 1a63    	vneg.f32	s2, s7
    89bc: ee81 fa0e    	vdiv.f32	s30, s2, s28
    89c0: ee1f 4a10    	vmov	r4, s30
    89c4: f024 4400    	bic	r4, r4, #0x80000000
    89c8: f1b4 4fff    	cmp.w	r4, #0x7f800000
    89cc: f280 828c    	bge.w	0x8ee8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xc70> @ imm = #0x518
    89d0: ee13 4a90    	vmov	r4, s7
    89d4: f024 4400    	bic	r4, r4, #0x80000000
    89d8: f1b4 4fff    	cmp.w	r4, #0x7f800000
    89dc: da28         	bge	0x8a30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x7b8> @ imm = #0x50
    89de: eeb0 1ae3    	vabs.f32	s2, s7
    89e2: ed9f 2ad7    	vldr	s4, [pc, #860]          @ 0x8d40 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xac8>
    89e6: ee81 1a25    	vdiv.f32	s2, s2, s11
    89ea: eeb4 1a42    	vcmp.f32	s2, s4
    89ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89f2: d81d         	bhi	0x8a30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x7b8> @ imm = #0x3a
    89f4: eeb0 2aed    	vabs.f32	s4, s27
    89f8: eddf 1ad2    	vldr	s3, [pc, #840]          @ 0x8d44 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xacc>
    89fc: eeb4 2a42    	vcmp.f32	s4, s4
    8a00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a04: fe1c 2a82    	vselvs.f32	s4, s25, s4
    8a08: eeb4 2a6c    	vcmp.f32	s4, s25
    8a0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a10: fe32 2a2c    	vselgt.f32	s4, s4, s25
    8a14: ee22 2a21    	vmul.f32	s4, s4, s3
    8a18: eddf 1acb    	vldr	s3, [pc, #812]          @ 0x8d48 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xad0>
    8a1c: fe82 2a61    	vminnm.f32	s4, s4, s3
    8a20: eef0 1acf    	vabs.f32	s3, s30
    8a24: eef4 1a42    	vcmp.f32	s3, s4
    8a28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a2c: f240 8274    	bls.w	0x8f18 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xca0> @ imm = #0x4e8
    8a30: eeb0 1ac9    	vabs.f32	s2, s18
    8a34: ee67 3a2b    	vmul.f32	s7, s14, s23
    8a38: eeb4 3a41    	vcmp.f32	s6, s2
    8a3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a40: ee39 1aac    	vadd.f32	s2, s19, s25
    8a44: eeb5 9a40    	vcmp.f32	s18, #0
    8a48: fe29 2aac    	vselge.f32	s4, s19, s25
    8a4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a50: ee82 1a01    	vdiv.f32	s2, s4, s2
    8a54: eebb 2a01    	vmov.f32	s4, #-1.700000e+01
    8a58: ee27 2a02    	vmul.f32	s4, s14, s4
    8a5c: ee22 1a01    	vmul.f32	s2, s4, s2
    8a60: ee81 1a09    	vdiv.f32	s2, s2, s18
    8a64: eeb0 9a4b    	vmov.f32	s18, s22
    8a68: fe0b 1a01    	vseleq.f32	s2, s22, s2
    8a6c: 07ec         	lsls	r4, r5, #0x1f
    8a6e: ee2b 1a81    	vmul.f32	s2, s23, s2
    8a72: ee2b 7a81    	vmul.f32	s14, s23, s2
    8a76: eef0 ba4b    	vmov.f32	s23, s22
    8a7a: d025         	beq	0x8ac8 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x850> @ imm = #0x4a
    8a7c: ee1a 4a10    	vmov	r4, s20
    8a80: eeb4 aa4a    	vcmp.f32	s20, s20
    8a84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a88: ee6e 1aae    	vmul.f32	s3, s29, s29
    8a8c: f369 041e    	bfi	r4, r9, #0, #31
    8a90: ee01 4a10    	vmov	s2, r4
    8a94: ee6e 9aa1    	vmul.f32	s19, s29, s3
    8a98: ee21 1a27    	vmul.f32	s2, s2, s15
    8a9c: ee21 2a23    	vmul.f32	s4, s2, s7
    8aa0: ee21 1a07    	vmul.f32	s2, s2, s14
    8aa4: fe1f 2a82    	vselvs.f32	s4, s31, s4
    8aa8: fe1f 1a81    	vselvs.f32	s2, s31, s2
    8aac: ee82 9a21    	vdiv.f32	s18, s4, s3
    8ab0: ed9f 2ada    	vldr	s4, [pc, #872]          @ 0x8e1c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xba4>
    8ab4: ee23 2a82    	vmul.f32	s4, s7, s4
    8ab8: ee81 1a21    	vdiv.f32	s2, s2, s3
    8abc: ee23 2a82    	vmul.f32	s4, s7, s4
    8ac0: ee82 2a29    	vdiv.f32	s4, s4, s19
    8ac4: ee72 ba01    	vadd.f32	s23, s4, s2
    8ac8: eecc 9aaa    	vdiv.f32	s19, s25, s21
    8acc: ee69 8aa8    	vmul.f32	s17, s19, s17
    8ad0: eeb0 1ae8    	vabs.f32	s2, s17
    8ad4: ee8c 2a81    	vdiv.f32	s4, s25, s2
    8ad8: eef4 ca41    	vcmp.f32	s25, s2
    8adc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ae0: fe61 1a02    	vselge.f32	s3, s2, s4
    8ae4: eef4 1a4c    	vcmp.f32	s3, s24
    8ae8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8aec: d10c         	bne	0x8b08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x890> @ imm = #0x18
    8aee: ee74 1aac    	vadd.f32	s3, s9, s25
    8af2: e026         	b	0x8b42 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8ca> @ imm = #0x4c
    8af4: 00 00 00 00  	.word	0x00000000
    8af8: df 5b 59 c4  	.word	0xc4595bdf
    8afc: 00 00 00 80  	.word	0x80000000
    8b00: 75 e7 24 3e  	.word	0x3e24e775
    8b04: 5a 93 ab bc  	.word	0xbcab935a
    8b08: ee21 4aa1    	vmul.f32	s8, s3, s3
    8b0c: ee24 4a04    	vmul.f32	s8, s8, s8
    8b10: ee24 4a04    	vmul.f32	s8, s8, s8
    8b14: ee64 4a04    	vmul.f32	s9, s8, s8
    8b18: eeb0 4a6c    	vmov.f32	s8, s25
    8b1c: ee74 1aac    	vadd.f32	s3, s9, s25
    8b20: eef4 1a6c    	vcmp.f32	s3, s25
    8b24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b28: d009         	beq	0x8b3e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x8c6> @ imm = #0x12
    8b2a: eeb0 4a61    	vmov.f32	s8, s3
    8b2e: eeb1 4ac4    	vsqrt.f32	s8, s8
    8b32: eeb1 4ac4    	vsqrt.f32	s8, s8
    8b36: eeb1 4ac4    	vsqrt.f32	s8, s8
    8b3a: eeb1 4ac4    	vsqrt.f32	s8, s8
    8b3e: ee8c da84    	vdiv.f32	s26, s25, s8
    8b42: ee82 2a04    	vdiv.f32	s4, s4, s8
    8b46: eeb0 4a4b    	vmov.f32	s8, s22
    8b4a: eef4 ca41    	vcmp.f32	s25, s2
    8b4e: eeb0 1a4b    	vmov.f32	s2, s22
    8b52: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b56: eef5 8a40    	vcmp.f32	s17, #0
    8b5a: fe64 4aac    	vselge.f32	s9, s9, s25
    8b5e: fe2d 2a02    	vselge.f32	s4, s26, s4
    8b62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b66: d01c         	beq	0x8ba2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x92a> @ imm = #0x38
    8b68: eec4 1aa1    	vdiv.f32	s3, s9, s3
    8b6c: eeb0 1a4b    	vmov.f32	s2, s22
    8b70: eeb0 4a4b    	vmov.f32	s8, s22
    8b74: eef5 1a40    	vcmp.f32	s3, #0
    8b78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b7c: d011         	beq	0x8ba2 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x92a> @ imm = #0x22
    8b7e: eeb3 4a01    	vmov.f32	s8, #1.700000e+01
    8b82: eeba 1a0e    	vmov.f32	s2, #-1.500000e+01
    8b86: ee01 1a84    	vmla.f32	s2, s3, s8
    8b8a: ee21 4a82    	vmul.f32	s8, s3, s4
    8b8e: ee62 1a61    	vnmul.f32	s3, s4, s3
    8b92: ee24 1a01    	vmul.f32	s2, s8, s2
    8b96: ee28 4aa8    	vmul.f32	s8, s17, s17
    8b9a: ee81 1a04    	vdiv.f32	s2, s2, s8
    8b9e: ee81 4aa8    	vdiv.f32	s8, s3, s17
    8ba2: ee6a 1aa8    	vmul.f32	s3, s21, s17
    8ba6: ed9f caea    	vldr	s24, [pc, #936]         @ 0x8f50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xcd8>
    8baa: ee78 4aa8    	vadd.f32	s9, s17, s17
    8bae: f64f 70ff    	movw	r0, #0xffff
    8bb2: ee29 ca0c    	vmul.f32	s24, s18, s24
    8bb6: f2c0 007f    	movt	r0, #0x7f
    8bba: ee01 caeb    	vmls.f32	s24, s3, s23
    8bbe: f04f 0800    	mov.w	r8, #0x0
    8bc2: ee64 1a89    	vmul.f32	s3, s9, s18
    8bc6: ee73 3aa3    	vadd.f32	s7, s7, s7
    8bca: ee09 ca21    	vmla.f32	s24, s18, s3
    8bce: eef0 1a60    	vmov.f32	s3, s1
    8bd2: ee48 1ac9    	vmls.f32	s3, s17, s18
    8bd6: ee63 3a84    	vmul.f32	s7, s7, s8
    8bda: ee69 4a8c    	vmul.f32	s9, s19, s24
    8bde: ee69 1aa1    	vmul.f32	s3, s19, s3
    8be2: ee69 4aa4    	vmul.f32	s9, s19, s9
    8be6: ee21 1a81    	vmul.f32	s2, s3, s2
    8bea: ed9f 9be1    	vldr	d9, [pc, #900]          @ 0x8f70 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xcf8>
    8bee: ee24 4a84    	vmul.f32	s8, s9, s8
    8bf2: ee01 4a81    	vmla.f32	s8, s3, s2
    8bf6: ee21 1aa3    	vmul.f32	s2, s3, s7
    8bfa: ee07 1a02    	vmla.f32	s2, s14, s4
    8bfe: eebe 2a00    	vmov.f32	s4, #-5.000000e-01
    8c02: ee2f 2a02    	vmul.f32	s4, s30, s4
    8c06: ee0a 1a04    	vmla.f32	s2, s20, s8
    8c0a: eeb0 4a6c    	vmov.f32	s8, s25
    8c0e: ee22 1a01    	vmul.f32	s2, s4, s2
    8c12: ee81 1a0e    	vdiv.f32	s2, s2, s28
    8c16: ee31 1a2c    	vadd.f32	s2, s2, s25
    8c1a: ee11 4a10    	vmov	r4, s2
    8c1e: 2c00         	cmp	r4, #0x0
    8c20: f024 4500    	bic	r5, r4, #0x80000000
    8c24: f5a5 0500    	sub.w	r5, r5, #0x800000
    8c28: f1a4 0401    	sub.w	r4, r4, #0x1
    8c2c: fe21 2a2c    	vselge.f32	s4, s2, s25
    8c30: f1b5 4ffe    	cmp.w	r5, #0x7f000000
    8c34: bf38         	it	lo
    8c36: eeb0 4a42    	vmovlo.f32	s8, s4
    8c3a: 4284         	cmp	r4, r0
    8c3c: eebb 2a05    	vmov.f32	s4, #-2.100000e+01
    8c40: bf38         	it	lo
    8c42: eeb0 4a41    	vmovlo.f32	s8, s2
    8c46: 2400         	movs	r4, #0x0
    8c48: eb0e 0506    	add.w	r5, lr, r6
    8c4c: ee8f 1a04    	vdiv.f32	s2, s30, s8
    8c50: ed9d 4b02    	vldr	d4, [sp, #8]
    8c54: ee3d 1a81    	vadd.f32	s2, s27, s2
    8c58: eeb4 2a41    	vcmp.f32	s4, s2
    8c5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c60: fe32 1a01    	vselgt.f32	s2, s4, s2
    8c64: eeb0 2a46    	vmov.f32	s4, s12
    8c68: eeb4 1a43    	vcmp.f32	s2, s6
    8c6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c70: fe73 da01    	vselgt.f32	s27, s6, s2
    8c74: eeb7 1aed    	vcvt.f64.f32	d1, s27
    8c78: ee01 4b09    	vmla.f64	d4, d1, d9
    8c7c: eeb7 1bc4    	vcvt.f32.f64	s2, d4
    8c80: ed9f 4abd    	vldr	s8, [pc, #756]          @ 0x8f78 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xd00>
    8c84: ee01 2a04    	vmla.f32	s4, s2, s8
    8c88: eef4 2a42    	vcmp.f32	s5, s4
    8c8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c90: fe32 1a82    	vselgt.f32	s2, s5, s4
    8c94: eeb4 1a45    	vcmp.f32	s2, s10
    8c98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c9c: eeb4 2a62    	vcmp.f32	s4, s5
    8ca0: fe35 9a01    	vselgt.f32	s18, s10, s2
    8ca4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ca8: eeb4 2a45    	vcmp.f32	s4, s10
    8cac: eeb0 1ac9    	vabs.f32	s2, s18
    8cb0: bfc8         	it	gt
    8cb2: 2401         	movgt	r4, #0x1
    8cb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cb8: edc1 da07    	vstr	s27, [r1, #28]
    8cbc: eeb4 1a43    	vcmp.f32	s2, s6
    8cc0: bf48         	it	mi
    8cc2: f04f 0801    	movmi.w	r8, #0x1
    8cc6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cca: 609d         	str	r5, [r3, #0x8]
    8ccc: d940         	bls	0x8d50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xad8> @ imm = #0x80
    8cce: ee83 1a01    	vdiv.f32	s2, s6, s2
    8cd2: eeb0 4a6c    	vmov.f32	s8, s25
    8cd6: ee21 2a01    	vmul.f32	s4, s2, s2
    8cda: ee22 2a02    	vmul.f32	s4, s4, s4
    8cde: ee22 2a02    	vmul.f32	s4, s4, s4
    8ce2: ee62 9a02    	vmul.f32	s19, s4, s4
    8ce6: ee39 2aac    	vadd.f32	s4, s19, s25
    8cea: eeb4 2a6c    	vcmp.f32	s4, s25
    8cee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cf2: d009         	beq	0x8d08 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xa90> @ imm = #0x12
    8cf4: eeb0 4a42    	vmov.f32	s8, s4
    8cf8: eeb1 4ac4    	vsqrt.f32	s8, s8
    8cfc: eeb1 4ac4    	vsqrt.f32	s8, s8
    8d00: eeb1 4ac4    	vsqrt.f32	s8, s8
    8d04: eeb1 4ac4    	vsqrt.f32	s8, s8
    8d08: ee19 5a10    	vmov	r5, s18
    8d0c: ee8c 4a84    	vdiv.f32	s8, s25, s8
    8d10: ee21 1a29    	vmul.f32	s2, s2, s19
    8d14: eeb4 9a49    	vcmp.f32	s18, s18
    8d18: f369 051e    	bfi	r5, r9, #0, #31
    8d1c: ee84 2a02    	vdiv.f32	s4, s8, s4
    8d20: ee07 5a10    	vmov	s14, r5
    8d24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d28: ee27 7a03    	vmul.f32	s14, s14, s6
    8d2c: ee67 1a04    	vmul.f32	s3, s14, s8
    8d30: ee21 7a02    	vmul.f32	s14, s2, s4
    8d34: fe1f aaa1    	vselvs.f32	s20, s31, s3
    8d38: e02d         	b	0x8d96 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xb1e> @ imm = #0x5a
    8d3a: bf00         	nop
    8d3c: 08 e5 3c 1e  	.word	0x1e3ce508
    8d40: 17 b7 d1 38  	.word	0x38d1b717
    8d44: bd 37 06 36  	.word	0x360637bd
    8d48: ac c5 a7 37  	.word	0x37a7c5ac
    8d4c: 00 bf 00 bf  	.word	0xbf00bf00
    8d50: ee89 1a03    	vdiv.f32	s2, s18, s6
    8d54: eeb0 2a6c    	vmov.f32	s4, s25
    8d58: ee21 1a01    	vmul.f32	s2, s2, s2
    8d5c: ee21 1a01    	vmul.f32	s2, s2, s2
    8d60: ee21 1a01    	vmul.f32	s2, s2, s2
    8d64: ee61 9a01    	vmul.f32	s19, s2, s2
    8d68: ee39 1aac    	vadd.f32	s2, s19, s25
    8d6c: eeb4 1a6c    	vcmp.f32	s2, s25
    8d70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d74: d009         	beq	0x8d8a <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xb12> @ imm = #0x12
    8d76: eeb0 2a41    	vmov.f32	s4, s2
    8d7a: eeb1 2ac2    	vsqrt.f32	s4, s4
    8d7e: eeb1 2ac2    	vsqrt.f32	s4, s4
    8d82: eeb1 2ac2    	vsqrt.f32	s4, s4
    8d86: eeb1 2ac2    	vsqrt.f32	s4, s4
    8d8a: ee8c 2a82    	vdiv.f32	s4, s25, s4
    8d8e: ee82 7a01    	vdiv.f32	s14, s4, s2
    8d92: ee29 aa02    	vmul.f32	s20, s18, s4
    8d96: eeb0 1aca    	vabs.f32	s2, s20
    8d9a: eef0 8a40    	vmov.f32	s17, s0
    8d9e: ee4d 8aa0    	vmla.f32	s17, s27, s1
    8da2: ee75 3ac1    	vsub.f32	s7, s11, s2
    8da6: fec3 eaa6    	vmaxnm.f32	s29, s7, s13
    8daa: eeb0 1ae8    	vabs.f32	s2, s17
    8dae: ee87 eaae    	vdiv.f32	s28, s15, s29
    8db2: fece aa48    	vminnm.f32	s21, s28, s16
    8db6: ee81 ca2a    	vdiv.f32	s24, s2, s21
    8dba: eeb4 ca6c    	vcmp.f32	s24, s25
    8dbe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8dc2: d92d         	bls	0x8e20 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xba8> @ imm = #0x5a
    8dc4: ee8a fa81    	vdiv.f32	s30, s21, s2
    8dc8: eeb0 4a6c    	vmov.f32	s8, s25
    8dcc: ee2f 1a0f    	vmul.f32	s2, s30, s30
    8dd0: ee21 1a01    	vmul.f32	s2, s2, s2
    8dd4: ee21 1a01    	vmul.f32	s2, s2, s2
    8dd8: ee61 4a01    	vmul.f32	s9, s2, s2
    8ddc: ee34 1aac    	vadd.f32	s2, s9, s25
    8de0: eeb4 1a6c    	vcmp.f32	s2, s25
    8de4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8de8: d009         	beq	0x8dfe <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xb86> @ imm = #0x12
    8dea: eeb0 4a41    	vmov.f32	s8, s2
    8dee: eeb1 4ac4    	vsqrt.f32	s8, s8
    8df2: eeb1 4ac4    	vsqrt.f32	s8, s8
    8df6: eeb1 4ac4    	vsqrt.f32	s8, s8
    8dfa: eeb1 4ac4    	vsqrt.f32	s8, s8
    8dfe: ee8c da84    	vdiv.f32	s26, s25, s8
    8e02: eeb0 ca4f    	vmov.f32	s24, s30
    8e06: eeb1 2a4f    	vneg.f32	s4, s30
    8e0a: ee8d 1a01    	vdiv.f32	s2, s26, s2
    8e0e: ee82 2a28    	vdiv.f32	s4, s4, s17
    8e12: ee6f ba0d    	vmul.f32	s23, s30, s26
    8e16: ee22 2a01    	vmul.f32	s4, s4, s2
    8e1a: e030         	b	0x8e7e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xc06> @ imm = #0x60
    8e1c: 00 00 f0 42  	.word	0x42f00000
    8e20: ee2c 1a0c    	vmul.f32	s2, s24, s24
    8e24: eeb0 4a6c    	vmov.f32	s8, s25
    8e28: ee21 1a01    	vmul.f32	s2, s2, s2
    8e2c: ee21 1a01    	vmul.f32	s2, s2, s2
    8e30: ee21 fa01    	vmul.f32	s30, s2, s2
    8e34: ee3f 1a2c    	vadd.f32	s2, s30, s25
    8e38: eeb4 1a6c    	vcmp.f32	s2, s25
    8e3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e40: d009         	beq	0x8e56 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xbde> @ imm = #0x12
    8e42: eeb0 4a41    	vmov.f32	s8, s2
    8e46: eeb1 4ac4    	vsqrt.f32	s8, s8
    8e4a: eeb1 4ac4    	vsqrt.f32	s8, s8
    8e4e: eeb1 4ac4    	vsqrt.f32	s8, s8
    8e52: eeb1 4ac4    	vsqrt.f32	s8, s8
    8e56: eecc ba84    	vdiv.f32	s23, s25, s8
    8e5a: eef5 8a40    	vcmp.f32	s17, #0
    8e5e: eeb1 2a4f    	vneg.f32	s4, s30
    8e62: eef0 4a4f    	vmov.f32	s9, s30
    8e66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e6a: ee8b 1a81    	vdiv.f32	s2, s23, s2
    8e6e: eeb0 da6b    	vmov.f32	s26, s23
    8e72: ee82 2a28    	vdiv.f32	s4, s4, s17
    8e76: ee22 2a01    	vmul.f32	s4, s4, s2
    8e7a: fe0b 2a02    	vseleq.f32	s4, s22, s4
    8e7e: 2500         	movs	r5, #0x0
    8e80: eecf 1a2a    	vdiv.f32	s3, s30, s21
    8e84: 2200         	movs	r2, #0x0
    8e86: eeb4 ea48    	vcmp.f32	s28, s16
    8e8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e8e: eef4 3a66    	vcmp.f32	s7, s13
    8e92: f04f 0000    	mov.w	r0, #0x0
    8e96: bf48         	it	mi
    8e98: 2501         	movmi	r5, #0x1
    8e9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e9e: bfc8         	it	gt
    8ea0: 2201         	movgt	r2, #0x1
    8ea2: eeb5 aa40    	vcmp.f32	s20, #0
    8ea6: ee21 1a81    	vmul.f32	s2, s3, s2
    8eaa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8eae: bf18         	it	ne
    8eb0: 2001         	movne	r0, #0x1
    8eb2: 402a         	ands	r2, r5
    8eb4: eef0 1a4b    	vmov.f32	s3, s22
    8eb8: ea02 0500    	and.w	r5, r2, r0
    8ebc: 2d01         	cmp	r5, #0x1
    8ebe: f47f ad37    	bne.w	0x8930 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x6b8> @ imm = #-0x592
    8ec2: ee1a 0a10    	vmov	r0, s20
    8ec6: eeb4 aa4a    	vcmp.f32	s20, s20
    8eca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ece: ee6e 3aae    	vmul.f32	s7, s29, s29
    8ed2: f369 001e    	bfi	r0, r9, #0, #31
    8ed6: ee01 0a90    	vmov	s3, r0
    8eda: ee61 1aa7    	vmul.f32	s3, s3, s15
    8ede: fe5f 1aa1    	vselvs.f32	s3, s31, s3
    8ee2: eec1 1aa3    	vdiv.f32	s3, s3, s7
    8ee6: e523         	b	0x8930 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0x6b8> @ imm = #-0x5ba
    8ee8: 9801         	ldr	r0, [sp, #0x4]
    8eea: f04f 41ff    	mov.w	r1, #0x7f800000
    8eee: 6001         	str	r1, [r0]
    8ef0: 2100         	movs	r1, #0x0
    8ef2: f880 c004    	strb.w	r12, [r0, #0x4]
    8ef6: e022         	b	0x8f3e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xcc6> @ imm = #0x44
    8ef8: ee13 0a90    	vmov	r0, s7
    8efc: eeb0 0ae3    	vabs.f32	s0, s7
    8f00: ed9f 1a1e    	vldr	s2, [pc, #120]          @ 0x8f7c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xd04>
    8f04: f04f 0c03    	mov.w	r12, #0x3
    8f08: ee80 0a25    	vdiv.f32	s0, s0, s11
    8f0c: f020 4000    	bic	r0, r0, #0x80000000
    8f10: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8f14: fe21 1a00    	vselge.f32	s2, s2, s0
    8f18: 9800         	ldr	r0, [sp]
    8f1a: ed9f 0a18    	vldr	s0, [pc, #96]           @ 0x8f7c <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xd04>
    8f1e: 2100         	movs	r1, #0x0
    8f20: eeb4 1a40    	vcmp.f32	s2, s0
    8f24: ed80 9a04    	vstr	s18, [r0, #16]
    8f28: 9801         	ldr	r0, [sp, #0x4]
    8f2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f2e: ed80 1a00    	vstr	s2, [r0]
    8f32: bf48         	it	mi
    8f34: 2101         	movmi	r1, #0x1
    8f36: f880 c004    	strb.w	r12, [r0, #0x4]
    8f3a: bfc8         	it	gt
    8f3c: 2101         	movgt	r1, #0x1
    8f3e: 7141         	strb	r1, [r0, #0x5]
    8f40: b008         	add	sp, #0x20
    8f42: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    8f46: b001         	add	sp, #0x4
    8f48: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    8f4c: bdf0         	pop	{r4, r5, r6, r7, pc}
    8f4e: bf00         	nop
    8f50: 75 e7 a4 3e  	.word	0x3ea4e775
    8f54: 00 bf 00 bf  	.word	0xbf00bf00
    8f58: f24b 7090    	movw	r0, #0xb790
    8f5c: f64b 0210    	movw	r2, #0xb810
    8f60: f2c0 0000    	movt	r0, #0x0
    8f64: f2c0 0200    	movt	r2, #0x0
    8f68: a904         	add	r1, sp, #0x10
    8f6a: f001 fa3d    	bl	0xa3e8 <core::panicking::panic_fmt> @ imm = #0x147a
    8f6e: bf00         	nop
    8f70: 34 aa a2 31  	.word	0x31a2aa34
    8f74: 6b 72 95 bf  	.word	0xbf95726b
    8f78: df 5b 59 44  	.word	0x44595bdf
    8f7c: 00 00 80 7f  	.word	0x7f800000

00008f80 <__rustc::rust_begin_unwind>:
    8f80: b580         	push	{r7, lr}
    8f82: 466f         	mov	r7, sp
    8f84: f64f 7000    	movw	r0, #0xff00
    8f88: f644 6149    	movw	r1, #0x4e49
    8f8c: f2c2 0000    	movt	r0, #0x2000
    8f90: f2c5 0141    	movt	r1, #0x5041
    8f94: 6001         	str	r1, [r0]
    8f96: bf00         	nop
    8f98: bf10         	yield
    8f9a: bf10         	yield
    8f9c: bf10         	yield
    8f9e: bf10         	yield
    8fa0: e7fa         	b	0x8f98 <__rustc::rust_begin_unwind+0x18> @ imm = #-0xc
    8fa2: d4d4         	bmi	0x8f4e <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xcd6> @ imm = #-0x58
    8fa4: d4d4         	bmi	0x8f50 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xcd8> @ imm = #-0x58
    8fa6: d4d4         	bmi	0x8f52 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>+0xcda> @ imm = #-0x58

00008fa8 <tda48_probe::control>:
    8fa8: b5f0         	push	{r4, r5, r6, r7, lr}
    8faa: af03         	add	r7, sp, #0xc
    8fac: e92d 0f00    	push.w	{r8, r9, r10, r11}
    8fb0: b081         	sub	sp, #0x4
    8fb2: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    8fb6: b0f4         	sub	sp, #0x1d0
    8fb8: ed8d 0a15    	vstr	s0, [sp, #84]
    8fbc: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    8fc0: aa15         	add	r2, sp, #0x54
    8fc2: ed91 1a08    	vldr	s2, [r1, #32]
    8fc6: ed91 3a09    	vldr	s6, [r1, #36]
    8fca: ed91 2a24    	vldr	s4, [r1, #144]
    8fce: ee31 1a01    	vadd.f32	s2, s2, s2
    8fd2: ee02 1a40    	vmls.f32	s2, s4, s0
    8fd6: ed91 4a0a    	vldr	s8, [r1, #40]
    8fda: ee33 2a03    	vadd.f32	s4, s6, s6
    8fde: ed91 3a25    	vldr	s6, [r1, #148]
    8fe2: ee03 2a40    	vmls.f32	s4, s6, s0
    8fe6: ed91 5a0b    	vldr	s10, [r1, #44]
    8fea: ee34 3a04    	vadd.f32	s6, s8, s8
    8fee: ed91 4a26    	vldr	s8, [r1, #152]
    8ff2: ee04 3a40    	vmls.f32	s6, s8, s0
    8ff6: ed8d 1a16    	vstr	s2, [sp, #88]
    8ffa: ee35 4a05    	vadd.f32	s8, s10, s10
    8ffe: ed91 5a27    	vldr	s10, [r1, #156]
    9002: ee05 4a40    	vmls.f32	s8, s10, s0
    9006: ed8d 2a17    	vstr	s4, [sp, #92]
    900a: ed91 1a0c    	vldr	s2, [r1, #48]
    900e: ed91 5a0f    	vldr	s10, [r1, #60]
    9012: ed91 2a28    	vldr	s4, [r1, #160]
    9016: ed8d 3a18    	vstr	s6, [sp, #96]
    901a: ee31 1a01    	vadd.f32	s2, s2, s2
    901e: ed91 3a29    	vldr	s6, [r1, #164]
    9022: ee02 1a40    	vmls.f32	s2, s4, s0
    9026: ed91 2a0d    	vldr	s4, [r1, #52]
    902a: ed8d 4a19    	vstr	s8, [sp, #100]
    902e: ee32 2a02    	vadd.f32	s4, s4, s4
    9032: ee03 2a40    	vmls.f32	s4, s6, s0
    9036: ed91 3a0e    	vldr	s6, [r1, #56]
    903a: ed91 4a2a    	vldr	s8, [r1, #168]
    903e: ee33 3a03    	vadd.f32	s6, s6, s6
    9042: ee04 3a40    	vmls.f32	s6, s8, s0
    9046: ed8d 1a1a    	vstr	s2, [sp, #104]
    904a: ee35 4a05    	vadd.f32	s8, s10, s10
    904e: ed91 5a2b    	vldr	s10, [r1, #172]
    9052: ee05 4a40    	vmls.f32	s8, s10, s0
    9056: ed91 1a10    	vldr	s2, [r1, #64]
    905a: ed8d 2a1b    	vstr	s4, [sp, #108]
    905e: ed91 2a11    	vldr	s4, [r1, #68]
    9062: ed8d 3a1c    	vstr	s6, [sp, #112]
    9066: ed91 3a2c    	vldr	s6, [r1, #176]
    906a: ee31 1a01    	vadd.f32	s2, s2, s2
    906e: ed91 5a2f    	vldr	s10, [r1, #188]
    9072: ee03 1a40    	vmls.f32	s2, s6, s0
    9076: ed91 3a2d    	vldr	s6, [r1, #180]
    907a: ed8d 4a1d    	vstr	s8, [sp, #116]
    907e: ee32 2a02    	vadd.f32	s4, s4, s4
    9082: ee03 2a40    	vmls.f32	s4, s6, s0
    9086: ed91 3a12    	vldr	s6, [r1, #72]
    908a: ed91 4a2e    	vldr	s8, [r1, #184]
    908e: ee33 3a03    	vadd.f32	s6, s6, s6
    9092: ee04 3a40    	vmls.f32	s6, s8, s0
    9096: ed91 4a13    	vldr	s8, [r1, #76]
    909a: ee34 4a04    	vadd.f32	s8, s8, s8
    909e: ed8d 1a1e    	vstr	s2, [sp, #120]
    90a2: ee05 4a40    	vmls.f32	s8, s10, s0
    90a6: ed8d 2a1f    	vstr	s4, [sp, #124]
    90aa: ed91 1a15    	vldr	s2, [r1, #84]
    90ae: ed91 5a14    	vldr	s10, [r1, #80]
    90b2: ed91 2a31    	vldr	s4, [r1, #196]
    90b6: ed8d 3a20    	vstr	s6, [sp, #128]
    90ba: ee31 1a01    	vadd.f32	s2, s2, s2
    90be: ed91 3a32    	vldr	s6, [r1, #200]
    90c2: ee02 1a40    	vmls.f32	s2, s4, s0
    90c6: ed91 2a16    	vldr	s4, [r1, #88]
    90ca: ed8d 4a21    	vstr	s8, [sp, #132]
    90ce: ee32 2a02    	vadd.f32	s4, s4, s4
    90d2: ee03 2a40    	vmls.f32	s4, s6, s0
    90d6: ed91 3a17    	vldr	s6, [r1, #92]
    90da: ed91 4a33    	vldr	s8, [r1, #204]
    90de: ee33 3a03    	vadd.f32	s6, s6, s6
    90e2: ee04 3a40    	vmls.f32	s6, s8, s0
    90e6: ed91 6a30    	vldr	s12, [r1, #192]
    90ea: ee35 5a05    	vadd.f32	s10, s10, s10
    90ee: ed8d 1a23    	vstr	s2, [sp, #140]
    90f2: ee06 5a40    	vmls.f32	s10, s12, s0
    90f6: ed8d 2a24    	vstr	s4, [sp, #144]
    90fa: ed91 1a1a    	vldr	s2, [r1, #104]
    90fe: ed91 6a35    	vldr	s12, [r1, #212]
    9102: ed91 2a36    	vldr	s4, [r1, #216]
    9106: ed8d 3a25    	vstr	s6, [sp, #148]
    910a: ee31 1a01    	vadd.f32	s2, s2, s2
    910e: ed91 3a37    	vldr	s6, [r1, #220]
    9112: ee02 1a40    	vmls.f32	s2, s4, s0
    9116: ed91 2a1b    	vldr	s4, [r1, #108]
    911a: ee32 2a02    	vadd.f32	s4, s4, s4
    911e: ed8d 5a22    	vstr	s10, [sp, #136]
    9122: ee03 2a40    	vmls.f32	s4, s6, s0
    9126: ed91 4a18    	vldr	s8, [r1, #96]
    912a: ed91 5a34    	vldr	s10, [r1, #208]
    912e: ee34 4a04    	vadd.f32	s8, s8, s8
    9132: ee05 4a40    	vmls.f32	s8, s10, s0
    9136: ed91 5a19    	vldr	s10, [r1, #100]
    913a: ee35 5a05    	vadd.f32	s10, s10, s10
    913e: ed8d 1a28    	vstr	s2, [sp, #160]
    9142: ee06 5a40    	vmls.f32	s10, s12, s0
    9146: ed8d 2a29    	vstr	s4, [sp, #164]
    914a: ed91 1a1f    	vldr	s2, [r1, #124]
    914e: ed91 3a1c    	vldr	s6, [r1, #112]
    9152: ed91 2a3b    	vldr	s4, [r1, #236]
    9156: ee31 da01    	vadd.f32	s26, s2, s2
    915a: ee02 da40    	vmls.f32	s26, s4, s0
    915e: ed91 1a20    	vldr	s2, [r1, #128]
    9162: ed91 2a3c    	vldr	s4, [r1, #240]
    9166: ed8d 4a26    	vstr	s8, [sp, #152]
    916a: ed91 4a38    	vldr	s8, [r1, #224]
    916e: ee31 ca01    	vadd.f32	s24, s2, s2
    9172: ee02 ca40    	vmls.f32	s24, s4, s0
    9176: ed91 1a21    	vldr	s2, [r1, #132]
    917a: ed91 2a3d    	vldr	s4, [r1, #244]
    917e: ed8d 5a27    	vstr	s10, [sp, #156]
    9182: ee33 3a03    	vadd.f32	s6, s6, s6
    9186: ed91 5a39    	vldr	s10, [r1, #228]
    918a: ee04 3a40    	vmls.f32	s6, s8, s0
    918e: ed91 4a1d    	vldr	s8, [r1, #116]
    9192: ee31 aa01    	vadd.f32	s20, s2, s2
    9196: ed91 1a22    	vldr	s2, [r1, #136]
    919a: ee02 aa40    	vmls.f32	s20, s4, s0
    919e: ed91 2a3e    	vldr	s4, [r1, #248]
    91a2: ee34 4a04    	vadd.f32	s8, s8, s8
    91a6: ed91 6a3a    	vldr	s12, [r1, #232]
    91aa: ee05 4a40    	vmls.f32	s8, s10, s0
    91ae: ed91 5a1e    	vldr	s10, [r1, #120]
    91b2: ee31 ba01    	vadd.f32	s22, s2, s2
    91b6: ed91 1a23    	vldr	s2, [r1, #140]
    91ba: ee02 ba40    	vmls.f32	s22, s4, s0
    91be: ed91 2a3f    	vldr	s4, [r1, #252]
    91c2: ee35 5a05    	vadd.f32	s10, s10, s10
    91c6: ed9d 8a15    	vldr	s16, [sp, #84]
    91ca: ee06 5a40    	vmls.f32	s10, s12, s0
    91ce: 460c         	mov	r4, r1
    91d0: ee31 9a01    	vadd.f32	s18, s2, s2
    91d4: 4682         	mov	r10, r0
    91d6: ee02 9a40    	vmls.f32	s18, s4, s0
    91da: eeb0 0a48    	vmov.f32	s0, s16
    91de: a832         	add	r0, sp, #0xc8
    91e0: a916         	add	r1, sp, #0x58
    91e2: ed8d 3a2a    	vstr	s6, [sp, #168]
    91e6: ed8d 4a2b    	vstr	s8, [sp, #172]
    91ea: ed8d 5a2c    	vstr	s10, [sp, #176]
    91ee: ed8d da2d    	vstr	s26, [sp, #180]
    91f2: ed8d ca2e    	vstr	s24, [sp, #184]
    91f6: ed8d aa2f    	vstr	s20, [sp, #188]
    91fa: ed8d ba30    	vstr	s22, [sp, #192]
    91fe: ed8d 9a31    	vstr	s18, [sp, #196]
    9202: f7fb fe95    	bl	0x4f30 <orange_dsp::generated_packed48::origin::<5>> @ imm = #-0x42d6
    9206: 4621         	mov	r1, r4
    9208: a850         	add	r0, sp, #0x140
    920a: ed9f 1b0f    	vldr	d1, [pc, #60]           @ 0x9248 <tda48_probe::control+0x2a0>
    920e: c96c         	ldm	r1!, {r2, r3, r5, r6}
    9210: c06c         	stm	r0!, {r2, r3, r5, r6}
    9212: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
    9216: c06c         	stm	r0!, {r2, r3, r5, r6}
    9218: ed9d 0b32    	vldr	d0, [sp, #200]
    921c: ed9f 3a0c    	vldr	s6, [pc, #48]           @ 0x9250 <tda48_probe::control+0x2a8>
    9220: 2000         	movs	r0, #0x0
    9222: ee80 1b01    	vdiv.f64	d1, d0, d1
    9226: 9058         	str	r0, [sp, #0x160]
    9228: e9cd 005b    	strd	r0, r0, [sp, #364]
    922c: e9cd 0059    	strd	r0, r0, [sp, #356]
    9230: eeb7 2bc1    	vcvt.f32.f64	s4, d1
    9234: ed8d 2a50    	vstr	s4, [sp, #320]
    9238: eeb0 1ac2    	vabs.f32	s2, s4
    923c: eeb4 1a43    	vcmp.f32	s2, s6
    9240: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9244: d84c         	bhi	0x92e0 <tda48_probe::control+0x338> @ imm = #0x98
    9246: e011         	b	0x926c <tda48_probe::control+0x2c4> @ imm = #0x22
    9248: 00 1b 32 ef  	.word	0xef321b00
    924c: 7b e8 fe 3e  	.word	0x3efee87b
    9250: 93 18 36 41  	.word	0x41361893
    9254: df 43 f7 b7  	.word	0xb7f743df
    9258: 0a d7 23 3c  	.word	0x3c23d70a
    925c: 17 b7 d1 38  	.word	0x38d1b717
    9260: bd 37 06 36  	.word	0x360637bd
    9264: ac c5 a7 37  	.word	0x37a7c5ac
    9268: 00 00 00 00  	.word	0x00000000
    926c: ed1f 4a07    	vldr	s8, [pc, #-28]          @ 0x9254 <tda48_probe::control+0x2ac>
    9270: eeb7 3bc0    	vcvt.f32.f64	s6, d0
    9274: ee02 3a04    	vmla.f32	s6, s4, s8
    9278: ee13 0a10    	vmov	r0, s6
    927c: f020 4000    	bic	r0, r0, #0x80000000
    9280: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9284: da2c         	bge	0x92e0 <tda48_probe::control+0x338> @ imm = #0x58
    9286: eeb0 2ac3    	vabs.f32	s4, s6
    928a: ed1f 5a0d    	vldr	s10, [pc, #-52]         @ 0x9258 <tda48_probe::control+0x2b0>
    928e: ee82 2a05    	vdiv.f32	s4, s4, s10
    9292: ed1f 5a0e    	vldr	s10, [pc, #-56]         @ 0x925c <tda48_probe::control+0x2b4>
    9296: eeb4 2a45    	vcmp.f32	s4, s10
    929a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    929e: d81f         	bhi	0x92e0 <tda48_probe::control+0x338> @ imm = #0x3e
    92a0: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    92a4: eeb4 1a41    	vcmp.f32	s2, s2
    92a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92ac: ee83 3a04    	vdiv.f32	s6, s6, s8
    92b0: ed1f 4a15    	vldr	s8, [pc, #-84]          @ 0x9260 <tda48_probe::control+0x2b8>
    92b4: fe15 1a01    	vselvs.f32	s2, s10, s2
    92b8: eeb0 3ac3    	vabs.f32	s6, s6
    92bc: eeb4 1a45    	vcmp.f32	s2, s10
    92c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92c4: fe31 1a05    	vselgt.f32	s2, s2, s10
    92c8: ee21 1a04    	vmul.f32	s2, s2, s8
    92cc: ed1f 4a1b    	vldr	s8, [pc, #-108]         @ 0x9264 <tda48_probe::control+0x2bc>
    92d0: fe81 1a44    	vminnm.f32	s2, s2, s8
    92d4: eeb4 3a41    	vcmp.f32	s6, s2
    92d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92dc: f240 82a4    	bls.w	0x9828 <tda48_probe::control+0x880> @ imm = #0x548
    92e0: f504 7290    	add.w	r2, r4, #0x120
    92e4: a85d         	add	r0, sp, #0x174
    92e6: a950         	add	r1, sp, #0x140
    92e8: f7f7 fdb6    	bl	0xe58 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>> @ imm = #-0x8494
    92ec: ed9d 0a5d    	vldr	s0, [sp, #372]
    92f0: ed1f 1a23    	vldr	s2, [pc, #-140]         @ 0x9268 <tda48_probe::control+0x2c0>
    92f4: eeb4 0a40    	vcmp.f32	s0, s0
    92f8: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    92fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9300: f89d 6178    	ldrb.w	r6, [sp, #0x178]
    9304: fe11 0a00    	vselvs.f32	s0, s2, s0
    9308: eeb5 0a40    	vcmp.f32	s0, #0
    930c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9310: fe30 ea01    	vselgt.f32	s28, s0, s2
    9314: 2801         	cmp	r0, #0x1
    9316: f040 8273    	bne.w	0x9800 <tda48_probe::control+0x858> @ imm = #0x4e6
    931a: eeb0 2a4d    	vmov.f32	s4, s26
    931e: f504 7396    	add.w	r3, r4, #0x12c
    9322: ed9d 0b34    	vldr	d0, [sp, #208]
    9326: a85d         	add	r0, sp, #0x174
    9328: a950         	add	r1, sp, #0x140
    932a: ed9d 1b42    	vldr	d1, [sp, #264]
    932e: aa58         	add	r2, sp, #0x160
    9330: f7f7 ffc6    	bl	0x12c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>> @ imm = #-0x8074
    9334: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    9338: f89d 1178    	ldrb.w	r1, [sp, #0x178]
    933c: 2800         	cmp	r0, #0x0
    933e: 440e         	add	r6, r1
    9340: f000 825e    	beq.w	0x9800 <tda48_probe::control+0x858> @ imm = #0x4bc
    9344: eeb0 0a4c    	vmov.f32	s0, s24
    9348: a85d         	add	r0, sp, #0x174
    934a: a950         	add	r1, sp, #0x140
    934c: aa32         	add	r2, sp, #0xc8
    934e: ab58         	add	r3, sp, #0x160
    9350: ed9d da5d    	vldr	s26, [sp, #372]
    9354: f504 759c    	add.w	r5, r4, #0x138
    9358: 9500         	str	r5, [sp]
    935a: f7f8 fb7d    	bl	0x1a58 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>> @ imm = #-0x7906
    935e: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    9362: f89d 1178    	ldrb.w	r1, [sp, #0x178]
    9366: 2800         	cmp	r0, #0x0
    9368: 440e         	add	r6, r1
    936a: f000 8249    	beq.w	0x9800 <tda48_probe::control+0x858> @ imm = #0x492
    936e: eeb0 0a4a    	vmov.f32	s0, s20
    9372: eef0 0a4b    	vmov.f32	s1, s22
    9376: a85d         	add	r0, sp, #0x174
    9378: a950         	add	r1, sp, #0x140
    937a: aa32         	add	r2, sp, #0xc8
    937c: ab58         	add	r3, sp, #0x160
    937e: ed9d ca5d    	vldr	s24, [sp, #372]
    9382: f504 75a2    	add.w	r5, r4, #0x144
    9386: 9500         	str	r5, [sp]
    9388: f7f9 fc06    	bl	0x2b98 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>> @ imm = #-0x67f4
    938c: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    9390: f89d 1178    	ldrb.w	r1, [sp, #0x178]
    9394: 2801         	cmp	r0, #0x1
    9396: 440e         	add	r6, r1
    9398: f040 8232    	bne.w	0x9800 <tda48_probe::control+0x858> @ imm = #0x464
    939c: eeb4 ea4e    	vcmp.f32	s28, s28
    93a0: f504 73a8    	add.w	r3, r4, #0x150
    93a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93a8: eeb4 da4d    	vcmp.f32	s26, s26
    93ac: a85d         	add	r0, sp, #0x174
    93ae: fe1d 0a0e    	vselvs.f32	s0, s26, s28
    93b2: a950         	add	r1, sp, #0x140
    93b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93b8: aa58         	add	r2, sp, #0x160
    93ba: fe10 1a0d    	vselvs.f32	s2, s0, s26
    93be: eeb4 0a41    	vcmp.f32	s0, s2
    93c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93c6: fe30 0a01    	vselgt.f32	s0, s0, s2
    93ca: eeb4 0a40    	vcmp.f32	s0, s0
    93ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93d2: eeb4 ca4c    	vcmp.f32	s24, s24
    93d6: fe1c 0a00    	vselvs.f32	s0, s24, s0
    93da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93de: fe10 1a0c    	vselvs.f32	s2, s0, s24
    93e2: eeb4 0a41    	vcmp.f32	s0, s2
    93e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93ea: fe30 0a01    	vselgt.f32	s0, s0, s2
    93ee: ed9d 1a5d    	vldr	s2, [sp, #372]
    93f2: eeb4 0a40    	vcmp.f32	s0, s0
    93f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93fa: eeb4 1a41    	vcmp.f32	s2, s2
    93fe: fe11 2a00    	vselvs.f32	s4, s2, s0
    9402: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9406: ed9d 0b40    	vldr	d0, [sp, #256]
    940a: fe12 1a01    	vselvs.f32	s2, s4, s2
    940e: eeb4 2a41    	vcmp.f32	s4, s2
    9412: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9416: fe32 aa01    	vselgt.f32	s20, s4, s2
    941a: eeb0 2a49    	vmov.f32	s4, s18
    941e: ed9d 1b4a    	vldr	d1, [sp, #296]
    9422: f7fa ffdd    	bl	0x43e0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>> @ imm = #-0x5046
    9426: eeb4 aa4a    	vcmp.f32	s20, s20
    942a: ed9d 0a5d    	vldr	s0, [sp, #372]
    942e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9432: eeb4 0a40    	vcmp.f32	s0, s0
    9436: f89d 0178    	ldrb.w	r0, [sp, #0x178]
    943a: fe10 1a0a    	vselvs.f32	s2, s0, s20
    943e: f89d 1179    	ldrb.w	r1, [sp, #0x179]
    9442: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9446: eb00 0206    	add.w	r2, r0, r6
    944a: fe11 0a00    	vselvs.f32	s0, s2, s0
    944e: eeb4 1a40    	vcmp.f32	s2, s0
    9452: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9456: fe31 0a00    	vselgt.f32	s0, s2, s0
    945a: 2900         	cmp	r1, #0x0
    945c: f000 81fc    	beq.w	0x9858 <tda48_probe::control+0x8b0> @ imm = #0x3f8
    9460: ed8d 0a01    	vstr	s0, [sp, #4]
    9464: eeb0 0a48    	vmov.f32	s0, s16
    9468: 9214         	str	r2, [sp, #0x50]
    946a: a85d         	add	r0, sp, #0x174
    946c: a916         	add	r1, sp, #0x58
    946e: aa50         	add	r2, sp, #0x140
    9470: f7fc f802    	bl	0x5478 <orange_dsp::generated_packed48::update::<5>> @ imm = #-0x3ffc
    9474: eddd 1a67    	vldr	s3, [sp, #412]
    9478: eddd 2a68    	vldr	s5, [sp, #416]
    947c: ee11 5a90    	vmov	r5, s3
    9480: eddd da5e    	vldr	s27, [sp, #376]
    9484: ee1d 0a90    	vmov	r0, s27
    9488: eddd 3a69    	vldr	s7, [sp, #420]
    948c: 9509         	str	r5, [sp, #0x24]
    948e: ee12 5a90    	vmov	r5, s5
    9492: eddd 4a6a    	vldr	s9, [sp, #424]
    9496: eddd 5a6b    	vldr	s11, [sp, #428]
    949a: 950a         	str	r5, [sp, #0x28]
    949c: ee13 5a90    	vmov	r5, s7
    94a0: eddd ea5f    	vldr	s29, [sp, #380]
    94a4: ee15 9a90    	vmov	r9, s11
    94a8: 950b         	str	r5, [sp, #0x2c]
    94aa: ee14 5a90    	vmov	r5, s9
    94ae: f020 4000    	bic	r0, r0, #0x80000000
    94b2: ee1e 1a90    	vmov	r1, s29
    94b6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    94ba: f04f 0000    	mov.w	r0, #0x0
    94be: eddd fa60    	vldr	s31, [sp, #384]
    94c2: ed9d 3a61    	vldr	s6, [sp, #388]
    94c6: ed9d 4a62    	vldr	s8, [sp, #392]
    94ca: ed9d 5a63    	vldr	s10, [sp, #396]
    94ce: ed9d 6a64    	vldr	s12, [sp, #400]
    94d2: ed9d 7a65    	vldr	s14, [sp, #404]
    94d6: eddd 0a66    	vldr	s1, [sp, #408]
    94da: 950c         	str	r5, [sp, #0x30]
    94dc: f8cd 9034    	str.w	r9, [sp, #0x34]
    94e0: ee1f 2a90    	vmov	r2, s31
    94e4: bfa8         	it	ge
    94e6: 2001         	movge	r0, #0x1
    94e8: ee13 3a10    	vmov	r3, s6
    94ec: ee14 6a10    	vmov	r6, s8
    94f0: 9013         	str	r0, [sp, #0x4c]
    94f2: f021 4000    	bic	r0, r1, #0x80000000
    94f6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    94fa: f04f 0000    	mov.w	r0, #0x0
    94fe: bfa8         	it	ge
    9500: 2001         	movge	r0, #0x1
    9502: ee15 ca10    	vmov	r12, s10
    9506: ee16 ea10    	vmov	lr, s12
    950a: 9012         	str	r0, [sp, #0x48]
    950c: f022 4000    	bic	r0, r2, #0x80000000
    9510: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9514: f04f 0000    	mov.w	r0, #0x0
    9518: bfa8         	it	ge
    951a: 2001         	movge	r0, #0x1
    951c: ee17 8a10    	vmov	r8, s14
    9520: ee10 ba90    	vmov	r11, s1
    9524: 9011         	str	r0, [sp, #0x44]
    9526: f023 4000    	bic	r0, r3, #0x80000000
    952a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    952e: f04f 0000    	mov.w	r0, #0x0
    9532: bfa8         	it	ge
    9534: 2001         	movge	r0, #0x1
    9536: f04f 0900    	mov.w	r9, #0x0
    953a: 9010         	str	r0, [sp, #0x40]
    953c: f026 4000    	bic	r0, r6, #0x80000000
    9540: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9544: f04f 0000    	mov.w	r0, #0x0
    9548: bfa8         	it	ge
    954a: 2001         	movge	r0, #0x1
    954c: 900f         	str	r0, [sp, #0x3c]
    954e: f02c 4000    	bic	r0, r12, #0x80000000
    9552: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9556: f04f 0000    	mov.w	r0, #0x0
    955a: bfa8         	it	ge
    955c: 2001         	movge	r0, #0x1
    955e: f04f 0c00    	mov.w	r12, #0x0
    9562: 900e         	str	r0, [sp, #0x38]
    9564: f02e 4000    	bic	r0, lr, #0x80000000
    9568: f1b0 4fff    	cmp.w	r0, #0x7f800000
    956c: f04f 0000    	mov.w	r0, #0x0
    9570: bfa8         	it	ge
    9572: 2001         	movge	r0, #0x1
    9574: f04f 0e00    	mov.w	lr, #0x0
    9578: 9008         	str	r0, [sp, #0x20]
    957a: f028 4000    	bic	r0, r8, #0x80000000
    957e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9582: f04f 0000    	mov.w	r0, #0x0
    9586: bfa8         	it	ge
    9588: 2001         	movge	r0, #0x1
    958a: f04f 0800    	mov.w	r8, #0x0
    958e: 9007         	str	r0, [sp, #0x1c]
    9590: f02b 4000    	bic	r0, r11, #0x80000000
    9594: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9598: f04f 0000    	mov.w	r0, #0x0
    959c: bfa8         	it	ge
    959e: 2001         	movge	r0, #0x1
    95a0: f04f 0b00    	mov.w	r11, #0x0
    95a4: 9006         	str	r0, [sp, #0x18]
    95a6: 9809         	ldr	r0, [sp, #0x24]
    95a8: f020 4000    	bic	r0, r0, #0x80000000
    95ac: f1b0 4fff    	cmp.w	r0, #0x7f800000
    95b0: f04f 0000    	mov.w	r0, #0x0
    95b4: bfa8         	it	ge
    95b6: 2001         	movge	r0, #0x1
    95b8: 9009         	str	r0, [sp, #0x24]
    95ba: 980a         	ldr	r0, [sp, #0x28]
    95bc: f020 4000    	bic	r0, r0, #0x80000000
    95c0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    95c4: f04f 0000    	mov.w	r0, #0x0
    95c8: bfa8         	it	ge
    95ca: 2001         	movge	r0, #0x1
    95cc: 900a         	str	r0, [sp, #0x28]
    95ce: 980b         	ldr	r0, [sp, #0x2c]
    95d0: f020 4000    	bic	r0, r0, #0x80000000
    95d4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    95d8: f04f 0000    	mov.w	r0, #0x0
    95dc: bfa8         	it	ge
    95de: 2001         	movge	r0, #0x1
    95e0: 900b         	str	r0, [sp, #0x2c]
    95e2: 980c         	ldr	r0, [sp, #0x30]
    95e4: f020 4000    	bic	r0, r0, #0x80000000
    95e8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    95ec: f04f 0000    	mov.w	r0, #0x0
    95f0: bfa8         	it	ge
    95f2: 2001         	movge	r0, #0x1
    95f4: eddd ca6c    	vldr	s25, [sp, #432]
    95f8: 900c         	str	r0, [sp, #0x30]
    95fa: 980d         	ldr	r0, [sp, #0x34]
    95fc: f020 4000    	bic	r0, r0, #0x80000000
    9600: ee1c 1a90    	vmov	r1, s25
    9604: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9608: f04f 0000    	mov.w	r0, #0x0
    960c: bfa8         	it	ge
    960e: 2001         	movge	r0, #0x1
    9610: eddd 7a6d    	vldr	s15, [sp, #436]
    9614: 900d         	str	r0, [sp, #0x34]
    9616: f021 4000    	bic	r0, r1, #0x80000000
    961a: ee17 1a90    	vmov	r1, s15
    961e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9622: f04f 0000    	mov.w	r0, #0x0
    9626: bfa8         	it	ge
    9628: 2001         	movge	r0, #0x1
    962a: ed9d 8a6e    	vldr	s16, [sp, #440]
    962e: 9005         	str	r0, [sp, #0x14]
    9630: f021 4000    	bic	r0, r1, #0x80000000
    9634: ee18 1a10    	vmov	r1, s16
    9638: f1b0 4fff    	cmp.w	r0, #0x7f800000
    963c: f04f 0000    	mov.w	r0, #0x0
    9640: bfa8         	it	ge
    9642: 2001         	movge	r0, #0x1
    9644: ed9d 9a6f    	vldr	s18, [sp, #444]
    9648: 9004         	str	r0, [sp, #0x10]
    964a: f021 4000    	bic	r0, r1, #0x80000000
    964e: ee19 1a10    	vmov	r1, s18
    9652: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9656: f04f 0000    	mov.w	r0, #0x0
    965a: bfa8         	it	ge
    965c: 2001         	movge	r0, #0x1
    965e: ed9d aa70    	vldr	s20, [sp, #448]
    9662: 9003         	str	r0, [sp, #0xc]
    9664: f021 4000    	bic	r0, r1, #0x80000000
    9668: ee1a 1a10    	vmov	r1, s20
    966c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9670: f04f 0000    	mov.w	r0, #0x0
    9674: bfa8         	it	ge
    9676: 2001         	movge	r0, #0x1
    9678: f021 4100    	bic	r1, r1, #0x80000000
    967c: ed9d ba71    	vldr	s22, [sp, #452]
    9680: f1b1 4fff    	cmp.w	r1, #0x7f800000
    9684: f04f 0100    	mov.w	r1, #0x0
    9688: 9002         	str	r0, [sp, #0x8]
    968a: ee1b 2a10    	vmov	r2, s22
    968e: bfa8         	it	ge
    9690: 2101         	movge	r1, #0x1
    9692: ed9d ca72    	vldr	s24, [sp, #456]
    9696: ee1c 3a10    	vmov	r3, s24
    969a: f022 4200    	bic	r2, r2, #0x80000000
    969e: f1b2 4fff    	cmp.w	r2, #0x7f800000
    96a2: f04f 0200    	mov.w	r2, #0x0
    96a6: bfa8         	it	ge
    96a8: 2201         	movge	r2, #0x1
    96aa: f023 4300    	bic	r3, r3, #0x80000000
    96ae: ed9d da73    	vldr	s26, [sp, #460]
    96b2: f1b3 4fff    	cmp.w	r3, #0x7f800000
    96b6: f04f 0300    	mov.w	r3, #0x0
    96ba: ee1d 6a10    	vmov	r6, s26
    96be: bfa8         	it	ge
    96c0: 2301         	movge	r3, #0x1
    96c2: ed9d ea58    	vldr	s28, [sp, #352]
    96c6: ee1e 5a10    	vmov	r5, s28
    96ca: f026 4600    	bic	r6, r6, #0x80000000
    96ce: f1b6 4fff    	cmp.w	r6, #0x7f800000
    96d2: bfa8         	it	ge
    96d4: f04f 0c01    	movge.w	r12, #0x1
    96d8: ed9d fa59    	vldr	s30, [sp, #356]
    96dc: f025 4600    	bic	r6, r5, #0x80000000
    96e0: ee1f 5a10    	vmov	r5, s30
    96e4: f1b6 4fff    	cmp.w	r6, #0x7f800000
    96e8: bfa8         	it	ge
    96ea: f04f 0e01    	movge.w	lr, #0x1
    96ee: eddd 8a5a    	vldr	s17, [sp, #360]
    96f2: 2600         	movs	r6, #0x0
    96f4: ee18 0a90    	vmov	r0, s17
    96f8: f025 4500    	bic	r5, r5, #0x80000000
    96fc: f1b5 4fff    	cmp.w	r5, #0x7f800000
    9700: bfa8         	it	ge
    9702: 2601         	movge	r6, #0x1
    9704: f020 4000    	bic	r0, r0, #0x80000000
    9708: eddd 9a5b    	vldr	s19, [sp, #364]
    970c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9710: ee19 0a90    	vmov	r0, s19
    9714: eddd aa5c    	vldr	s21, [sp, #368]
    9718: bfa8         	it	ge
    971a: f04f 0901    	movge.w	r9, #0x1
    971e: f020 4000    	bic	r0, r0, #0x80000000
    9722: eddd ba5d    	vldr	s23, [sp, #372]
    9726: ee1a 5a90    	vmov	r5, s21
    972a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    972e: ee1b 0a90    	vmov	r0, s23
    9732: bfa8         	it	ge
    9734: f04f 0801    	movge.w	r8, #0x1
    9738: f025 4500    	bic	r5, r5, #0x80000000
    973c: f020 4000    	bic	r0, r0, #0x80000000
    9740: f1b5 4fff    	cmp.w	r5, #0x7f800000
    9744: bfa8         	it	ge
    9746: f04f 0b01    	movge.w	r11, #0x1
    974a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    974e: f04f 0500    	mov.w	r5, #0x0
    9752: da49         	bge	0x97e8 <tda48_probe::control+0x840> @ imm = #0x92
    9754: 9813         	ldr	r0, [sp, #0x4c]
    9756: 2800         	cmp	r0, #0x0
    9758: bf04         	itt	eq
    975a: 9812         	ldreq	r0, [sp, #0x48]
    975c: 2800         	cmpeq	r0, #0x0
    975e: d143         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x86
    9760: 9811         	ldr	r0, [sp, #0x44]
    9762: 2800         	cmp	r0, #0x0
    9764: bf04         	itt	eq
    9766: 9810         	ldreq	r0, [sp, #0x40]
    9768: 2800         	cmpeq	r0, #0x0
    976a: d13d         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x7a
    976c: 980f         	ldr	r0, [sp, #0x3c]
    976e: 2800         	cmp	r0, #0x0
    9770: bf04         	itt	eq
    9772: 980e         	ldreq	r0, [sp, #0x38]
    9774: 2800         	cmpeq	r0, #0x0
    9776: d137         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x6e
    9778: 9808         	ldr	r0, [sp, #0x20]
    977a: 2800         	cmp	r0, #0x0
    977c: bf04         	itt	eq
    977e: 9807         	ldreq	r0, [sp, #0x1c]
    9780: 2800         	cmpeq	r0, #0x0
    9782: d131         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x62
    9784: 9806         	ldr	r0, [sp, #0x18]
    9786: 2800         	cmp	r0, #0x0
    9788: bf04         	itt	eq
    978a: 9809         	ldreq	r0, [sp, #0x24]
    978c: 2800         	cmpeq	r0, #0x0
    978e: d12b         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x56
    9790: 980a         	ldr	r0, [sp, #0x28]
    9792: 2800         	cmp	r0, #0x0
    9794: bf04         	itt	eq
    9796: 980b         	ldreq	r0, [sp, #0x2c]
    9798: 2800         	cmpeq	r0, #0x0
    979a: d125         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x4a
    979c: 980c         	ldr	r0, [sp, #0x30]
    979e: 2800         	cmp	r0, #0x0
    97a0: bf04         	itt	eq
    97a2: 980d         	ldreq	r0, [sp, #0x34]
    97a4: 2800         	cmpeq	r0, #0x0
    97a6: d11f         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x3e
    97a8: 9805         	ldr	r0, [sp, #0x14]
    97aa: 2800         	cmp	r0, #0x0
    97ac: bf04         	itt	eq
    97ae: 9804         	ldreq	r0, [sp, #0x10]
    97b0: 2800         	cmpeq	r0, #0x0
    97b2: d119         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x32
    97b4: 9803         	ldr	r0, [sp, #0xc]
    97b6: 2800         	cmp	r0, #0x0
    97b8: bf04         	itt	eq
    97ba: 9802         	ldreq	r0, [sp, #0x8]
    97bc: 2800         	cmpeq	r0, #0x0
    97be: d113         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x26
    97c0: 2900         	cmp	r1, #0x0
    97c2: bf08         	it	eq
    97c4: 2a00         	cmpeq	r2, #0x0
    97c6: d10f         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x1e
    97c8: 2b00         	cmp	r3, #0x0
    97ca: bf08         	it	eq
    97cc: f1bc 0f00    	cmpeq.w	r12, #0x0
    97d0: d10a         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0x14
    97d2: f1be 0f00    	cmp.w	lr, #0x0
    97d6: bf08         	it	eq
    97d8: 2e00         	cmpeq	r6, #0x0
    97da: d105         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #0xa
    97dc: f1b9 0f00    	cmp.w	r9, #0x0
    97e0: bf08         	it	eq
    97e2: f1b8 0f00    	cmpeq.w	r8, #0x0
    97e6: d03f         	beq	0x9868 <tda48_probe::control+0x8c0> @ imm = #0x7e
    97e8: 69e0         	ldr	r0, [r4, #0x1c]
    97ea: f04f 41ff    	mov.w	r1, #0x7f800000
    97ee: e9ca 0100    	strd	r0, r1, [r10]
    97f2: 9814         	ldr	r0, [sp, #0x50]
    97f4: f88a 0008    	strb.w	r0, [r10, #0x8]
    97f8: f88a 5009    	strb.w	r5, [r10, #0x9]
    97fc: e00a         	b	0x9814 <tda48_probe::control+0x86c> @ imm = #0x14
    97fe: bf00         	nop
    9800: 69e0         	ldr	r0, [r4, #0x1c]
    9802: f04f 41ff    	mov.w	r1, #0x7f800000
    9806: e9ca 0100    	strd	r0, r1, [r10]
    980a: f88a 6008    	strb.w	r6, [r10, #0x8]
    980e: 2000         	movs	r0, #0x0
    9810: f88a 0009    	strb.w	r0, [r10, #0x9]
    9814: b074         	add	sp, #0x1d0
    9816: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    981a: b001         	add	sp, #0x4
    981c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    9820: bdf0         	pop	{r4, r5, r6, r7, pc}
    9822: bf00         	nop
    9824: bf00         	nop
    9826: bf00         	nop
    9828: eeb4 2a42    	vcmp.f32	s4, s4
    982c: ed9f 0a65    	vldr	s0, [pc, #404]          @ 0x99c4 <tda48_probe::control+0xa1c>
    9830: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9834: f8d4 0100    	ldr.w	r0, [r4, #0x100]
    9838: f04f 0600    	mov.w	r6, #0x0
    983c: fe10 1a02    	vselvs.f32	s2, s0, s4
    9840: 3001         	adds	r0, #0x1
    9842: f8c4 0100    	str.w	r0, [r4, #0x100]
    9846: eeb5 1a40    	vcmp.f32	s2, #0
    984a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    984e: fe31 ea00    	vselgt.f32	s28, s2, s0
    9852: e562         	b	0x931a <tda48_probe::control+0x372> @ imm = #-0x53c
    9854: bf00         	nop
    9856: bf00         	nop
    9858: 69e0         	ldr	r0, [r4, #0x1c]
    985a: f04f 41ff    	mov.w	r1, #0x7f800000
    985e: e9ca 0100    	strd	r0, r1, [r10]
    9862: f88a 2008    	strb.w	r2, [r10, #0x8]
    9866: e7d2         	b	0x980e <tda48_probe::control+0x866> @ imm = #-0x5c
    9868: f1bb 0f00    	cmp.w	r11, #0x0
    986c: d1bc         	bne	0x97e8 <tda48_probe::control+0x840> @ imm = #-0x88
    986e: f104 0120    	add.w	r1, r4, #0x20
    9872: f104 0090    	add.w	r0, r4, #0x90
    9876: 2270         	movs	r2, #0x70
    9878: ed8d 8a0a    	vstr	s16, [sp, #40]
    987c: eeb0 8a43    	vmov.f32	s16, s6
    9880: ed8d aa0b    	vstr	s20, [sp, #44]
    9884: eeb0 aa44    	vmov.f32	s20, s8
    9888: ed8d ba0d    	vstr	s22, [sp, #52]
    988c: eeb0 ba45    	vmov.f32	s22, s10
    9890: ed8d 9a09    	vstr	s18, [sp, #36]
    9894: eeb0 9a46    	vmov.f32	s18, s12
    9898: ed8d ca0c    	vstr	s24, [sp, #48]
    989c: eeb0 ca47    	vmov.f32	s24, s14
    98a0: ed8d da0e    	vstr	s26, [sp, #56]
    98a4: eeb0 da60    	vmov.f32	s26, s1
    98a8: ed8d ea0f    	vstr	s28, [sp, #60]
    98ac: eeb0 ea61    	vmov.f32	s28, s3
    98b0: ed8d fa10    	vstr	s30, [sp, #64]
    98b4: eeb0 fa62    	vmov.f32	s30, s5
    98b8: edcd 8a11    	vstr	s17, [sp, #68]
    98bc: eef0 8a63    	vmov.f32	s17, s7
    98c0: edcd 9a12    	vstr	s19, [sp, #72]
    98c4: eef0 9a64    	vmov.f32	s19, s9
    98c8: edcd aa13    	vstr	s21, [sp, #76]
    98cc: eef0 aa65    	vmov.f32	s21, s11
    98d0: edcd 7a08    	vstr	s15, [sp, #32]
    98d4: f001 fb8c    	bl	0xaff0 <__aeabi_memcpy4> @ imm = #0x1718
    98d8: ad50         	add	r5, sp, #0x140
    98da: edc4 ba08    	vstr	s23, [r4, #32]
    98de: edc4 da09    	vstr	s27, [r4, #36]
    98e2: ed9d 0a08    	vldr	s0, [sp, #32]
    98e6: edc4 ea0a    	vstr	s29, [r4, #40]
    98ea: 4620         	mov	r0, r4
    98ec: edc4 fa0b    	vstr	s31, [r4, #44]
    98f0: ed84 8a0c    	vstr	s16, [r4, #48]
    98f4: ed84 aa0d    	vstr	s20, [r4, #52]
    98f8: ed84 ba0e    	vstr	s22, [r4, #56]
    98fc: ed84 9a0f    	vstr	s18, [r4, #60]
    9900: ed84 ca10    	vstr	s24, [r4, #64]
    9904: ed84 da11    	vstr	s26, [r4, #68]
    9908: ed84 ea12    	vstr	s28, [r4, #72]
    990c: ed84 fa13    	vstr	s30, [r4, #76]
    9910: edc4 8a14    	vstr	s17, [r4, #80]
    9914: edc4 9a15    	vstr	s19, [r4, #84]
    9918: edc4 aa16    	vstr	s21, [r4, #88]
    991c: edc4 ca17    	vstr	s25, [r4, #92]
    9920: ed84 0a18    	vstr	s0, [r4, #96]
    9924: ed9d 0a0a    	vldr	s0, [sp, #40]
    9928: ed84 0a19    	vstr	s0, [r4, #100]
    992c: ed9d 0a09    	vldr	s0, [sp, #36]
    9930: ed84 0a1a    	vstr	s0, [r4, #104]
    9934: ed9d 0a0b    	vldr	s0, [sp, #44]
    9938: ed84 0a1b    	vstr	s0, [r4, #108]
    993c: ed9d 0a0d    	vldr	s0, [sp, #52]
    9940: ed84 0a1c    	vstr	s0, [r4, #112]
    9944: ed9d 0a0c    	vldr	s0, [sp, #48]
    9948: ed84 0a1d    	vstr	s0, [r4, #116]
    994c: ed9d 0a0e    	vldr	s0, [sp, #56]
    9950: ed84 0a1e    	vstr	s0, [r4, #120]
    9954: ed9d 0a0f    	vldr	s0, [sp, #60]
    9958: ed84 0a1f    	vstr	s0, [r4, #124]
    995c: ed9d 0a10    	vldr	s0, [sp, #64]
    9960: ed84 0a20    	vstr	s0, [r4, #128]
    9964: ed9d 0a11    	vldr	s0, [sp, #68]
    9968: ed84 0a21    	vstr	s0, [r4, #132]
    996c: ed9d 0a12    	vldr	s0, [sp, #72]
    9970: ed84 0a22    	vstr	s0, [r4, #136]
    9974: ed9d 0a13    	vldr	s0, [sp, #76]
    9978: ed84 0a23    	vstr	s0, [r4, #140]
    997c: ed9f 0a10    	vldr	s0, [pc, #64]           @ 0x99c0 <tda48_probe::control+0xa18>
    9980: cd4e         	ldm	r5!, {r1, r2, r3, r6}
    9982: c04e         	stm	r0!, {r1, r2, r3, r6}
    9984: e895 004e    	ldm.w	r5, {r1, r2, r3, r6}
    9988: c04e         	stm	r0!, {r1, r2, r3, r6}
    998a: f8d4 0118    	ldr.w	r0, [r4, #0x118]
    998e: ed9d 1a01    	vldr	s2, [sp, #4]
    9992: 3001         	adds	r0, #0x1
    9994: ed8a 1a01    	vstr	s2, [r10, #4]
    9998: bf28         	it	hs
    999a: f04f 30ff    	movhs.w	r0, #0xffffffff
    999e: eeb4 1a40    	vcmp.f32	s2, s0
    99a2: 9914         	ldr	r1, [sp, #0x50]
    99a4: f8c4 0118    	str.w	r0, [r4, #0x118]
    99a8: 9857         	ldr	r0, [sp, #0x15c]
    99aa: f8ca 0000    	str.w	r0, [r10]
    99ae: 2000         	movs	r0, #0x0
    99b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    99b4: f88a 1008    	strb.w	r1, [r10, #0x8]
    99b8: bf98         	it	ls
    99ba: 2001         	movls	r0, #0x1
    99bc: e728         	b	0x9810 <tda48_probe::control+0x868> @ imm = #-0x1b0
    99be: bf00         	nop
    99c0: 17 b7 d1 38  	.word	0x38d1b717
    99c4: 00 00 00 00  	.word	0x00000000

000099c8 <tda48_probe::candidate>:
    99c8: b5f0         	push	{r4, r5, r6, r7, lr}
    99ca: af03         	add	r7, sp, #0xc
    99cc: e92d 0f00    	push.w	{r8, r9, r10, r11}
    99d0: b081         	sub	sp, #0x4
    99d2: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    99d6: b0f4         	sub	sp, #0x1d0
    99d8: ed8d 0a15    	vstr	s0, [sp, #84]
    99dc: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    99e0: aa15         	add	r2, sp, #0x54
    99e2: ed91 1a08    	vldr	s2, [r1, #32]
    99e6: ed91 3a09    	vldr	s6, [r1, #36]
    99ea: ed91 2a24    	vldr	s4, [r1, #144]
    99ee: ee31 1a01    	vadd.f32	s2, s2, s2
    99f2: ee02 1a40    	vmls.f32	s2, s4, s0
    99f6: ed91 4a0a    	vldr	s8, [r1, #40]
    99fa: ee33 2a03    	vadd.f32	s4, s6, s6
    99fe: ed91 3a25    	vldr	s6, [r1, #148]
    9a02: ee03 2a40    	vmls.f32	s4, s6, s0
    9a06: ed91 5a0b    	vldr	s10, [r1, #44]
    9a0a: ee34 3a04    	vadd.f32	s6, s8, s8
    9a0e: ed91 4a26    	vldr	s8, [r1, #152]
    9a12: ee04 3a40    	vmls.f32	s6, s8, s0
    9a16: ed8d 1a16    	vstr	s2, [sp, #88]
    9a1a: ee35 4a05    	vadd.f32	s8, s10, s10
    9a1e: ed91 5a27    	vldr	s10, [r1, #156]
    9a22: ee05 4a40    	vmls.f32	s8, s10, s0
    9a26: ed8d 2a17    	vstr	s4, [sp, #92]
    9a2a: ed91 1a0c    	vldr	s2, [r1, #48]
    9a2e: ed91 5a0f    	vldr	s10, [r1, #60]
    9a32: ed91 2a28    	vldr	s4, [r1, #160]
    9a36: ed8d 3a18    	vstr	s6, [sp, #96]
    9a3a: ee31 1a01    	vadd.f32	s2, s2, s2
    9a3e: ed91 3a29    	vldr	s6, [r1, #164]
    9a42: ee02 1a40    	vmls.f32	s2, s4, s0
    9a46: ed91 2a0d    	vldr	s4, [r1, #52]
    9a4a: ed8d 4a19    	vstr	s8, [sp, #100]
    9a4e: ee32 2a02    	vadd.f32	s4, s4, s4
    9a52: ee03 2a40    	vmls.f32	s4, s6, s0
    9a56: ed91 3a0e    	vldr	s6, [r1, #56]
    9a5a: ed91 4a2a    	vldr	s8, [r1, #168]
    9a5e: ee33 3a03    	vadd.f32	s6, s6, s6
    9a62: ee04 3a40    	vmls.f32	s6, s8, s0
    9a66: ed8d 1a1a    	vstr	s2, [sp, #104]
    9a6a: ee35 4a05    	vadd.f32	s8, s10, s10
    9a6e: ed91 5a2b    	vldr	s10, [r1, #172]
    9a72: ee05 4a40    	vmls.f32	s8, s10, s0
    9a76: ed91 1a10    	vldr	s2, [r1, #64]
    9a7a: ed8d 2a1b    	vstr	s4, [sp, #108]
    9a7e: ed91 2a11    	vldr	s4, [r1, #68]
    9a82: ed8d 3a1c    	vstr	s6, [sp, #112]
    9a86: ed91 3a2c    	vldr	s6, [r1, #176]
    9a8a: ee31 1a01    	vadd.f32	s2, s2, s2
    9a8e: ed91 5a2f    	vldr	s10, [r1, #188]
    9a92: ee03 1a40    	vmls.f32	s2, s6, s0
    9a96: ed91 3a2d    	vldr	s6, [r1, #180]
    9a9a: ed8d 4a1d    	vstr	s8, [sp, #116]
    9a9e: ee32 2a02    	vadd.f32	s4, s4, s4
    9aa2: ee03 2a40    	vmls.f32	s4, s6, s0
    9aa6: ed91 3a12    	vldr	s6, [r1, #72]
    9aaa: ed91 4a2e    	vldr	s8, [r1, #184]
    9aae: ee33 3a03    	vadd.f32	s6, s6, s6
    9ab2: ee04 3a40    	vmls.f32	s6, s8, s0
    9ab6: ed91 4a13    	vldr	s8, [r1, #76]
    9aba: ee34 4a04    	vadd.f32	s8, s8, s8
    9abe: ed8d 1a1e    	vstr	s2, [sp, #120]
    9ac2: ee05 4a40    	vmls.f32	s8, s10, s0
    9ac6: ed8d 2a1f    	vstr	s4, [sp, #124]
    9aca: ed91 1a15    	vldr	s2, [r1, #84]
    9ace: ed91 5a14    	vldr	s10, [r1, #80]
    9ad2: ed91 2a31    	vldr	s4, [r1, #196]
    9ad6: ed8d 3a20    	vstr	s6, [sp, #128]
    9ada: ee31 1a01    	vadd.f32	s2, s2, s2
    9ade: ed91 3a32    	vldr	s6, [r1, #200]
    9ae2: ee02 1a40    	vmls.f32	s2, s4, s0
    9ae6: ed91 2a16    	vldr	s4, [r1, #88]
    9aea: ed8d 4a21    	vstr	s8, [sp, #132]
    9aee: ee32 2a02    	vadd.f32	s4, s4, s4
    9af2: ee03 2a40    	vmls.f32	s4, s6, s0
    9af6: ed91 3a17    	vldr	s6, [r1, #92]
    9afa: ed91 4a33    	vldr	s8, [r1, #204]
    9afe: ee33 3a03    	vadd.f32	s6, s6, s6
    9b02: ee04 3a40    	vmls.f32	s6, s8, s0
    9b06: ed91 6a30    	vldr	s12, [r1, #192]
    9b0a: ee35 5a05    	vadd.f32	s10, s10, s10
    9b0e: ed8d 1a23    	vstr	s2, [sp, #140]
    9b12: ee06 5a40    	vmls.f32	s10, s12, s0
    9b16: ed8d 2a24    	vstr	s4, [sp, #144]
    9b1a: ed91 1a1a    	vldr	s2, [r1, #104]
    9b1e: ed91 6a35    	vldr	s12, [r1, #212]
    9b22: ed91 2a36    	vldr	s4, [r1, #216]
    9b26: ed8d 3a25    	vstr	s6, [sp, #148]
    9b2a: ee31 1a01    	vadd.f32	s2, s2, s2
    9b2e: ed91 3a37    	vldr	s6, [r1, #220]
    9b32: ee02 1a40    	vmls.f32	s2, s4, s0
    9b36: ed91 2a1b    	vldr	s4, [r1, #108]
    9b3a: ee32 2a02    	vadd.f32	s4, s4, s4
    9b3e: ed8d 5a22    	vstr	s10, [sp, #136]
    9b42: ee03 2a40    	vmls.f32	s4, s6, s0
    9b46: ed91 4a18    	vldr	s8, [r1, #96]
    9b4a: ed91 5a34    	vldr	s10, [r1, #208]
    9b4e: ee34 4a04    	vadd.f32	s8, s8, s8
    9b52: ee05 4a40    	vmls.f32	s8, s10, s0
    9b56: ed91 5a19    	vldr	s10, [r1, #100]
    9b5a: ee35 5a05    	vadd.f32	s10, s10, s10
    9b5e: ed8d 1a28    	vstr	s2, [sp, #160]
    9b62: ee06 5a40    	vmls.f32	s10, s12, s0
    9b66: ed8d 2a29    	vstr	s4, [sp, #164]
    9b6a: ed91 1a1f    	vldr	s2, [r1, #124]
    9b6e: ed91 3a1c    	vldr	s6, [r1, #112]
    9b72: ed91 2a3b    	vldr	s4, [r1, #236]
    9b76: ee31 da01    	vadd.f32	s26, s2, s2
    9b7a: ee02 da40    	vmls.f32	s26, s4, s0
    9b7e: ed91 1a20    	vldr	s2, [r1, #128]
    9b82: ed91 2a3c    	vldr	s4, [r1, #240]
    9b86: ed8d 4a26    	vstr	s8, [sp, #152]
    9b8a: ed91 4a38    	vldr	s8, [r1, #224]
    9b8e: ee31 ca01    	vadd.f32	s24, s2, s2
    9b92: ee02 ca40    	vmls.f32	s24, s4, s0
    9b96: ed91 1a21    	vldr	s2, [r1, #132]
    9b9a: ed91 2a3d    	vldr	s4, [r1, #244]
    9b9e: ed8d 5a27    	vstr	s10, [sp, #156]
    9ba2: ee33 3a03    	vadd.f32	s6, s6, s6
    9ba6: ed91 5a39    	vldr	s10, [r1, #228]
    9baa: ee04 3a40    	vmls.f32	s6, s8, s0
    9bae: ed91 4a1d    	vldr	s8, [r1, #116]
    9bb2: ee31 aa01    	vadd.f32	s20, s2, s2
    9bb6: ed91 1a22    	vldr	s2, [r1, #136]
    9bba: ee02 aa40    	vmls.f32	s20, s4, s0
    9bbe: ed91 2a3e    	vldr	s4, [r1, #248]
    9bc2: ee34 4a04    	vadd.f32	s8, s8, s8
    9bc6: ed91 6a3a    	vldr	s12, [r1, #232]
    9bca: ee05 4a40    	vmls.f32	s8, s10, s0
    9bce: ed91 5a1e    	vldr	s10, [r1, #120]
    9bd2: ee31 ba01    	vadd.f32	s22, s2, s2
    9bd6: ed91 1a23    	vldr	s2, [r1, #140]
    9bda: ee02 ba40    	vmls.f32	s22, s4, s0
    9bde: ed91 2a3f    	vldr	s4, [r1, #252]
    9be2: ee35 5a05    	vadd.f32	s10, s10, s10
    9be6: ed9d 8a15    	vldr	s16, [sp, #84]
    9bea: ee06 5a40    	vmls.f32	s10, s12, s0
    9bee: 460c         	mov	r4, r1
    9bf0: ee31 9a01    	vadd.f32	s18, s2, s2
    9bf4: 4682         	mov	r10, r0
    9bf6: ee02 9a40    	vmls.f32	s18, s4, s0
    9bfa: eeb0 0a48    	vmov.f32	s0, s16
    9bfe: a832         	add	r0, sp, #0xc8
    9c00: a916         	add	r1, sp, #0x58
    9c02: ed8d 3a2a    	vstr	s6, [sp, #168]
    9c06: ed8d 4a2b    	vstr	s8, [sp, #172]
    9c0a: ed8d 5a2c    	vstr	s10, [sp, #176]
    9c0e: ed8d da2d    	vstr	s26, [sp, #180]
    9c12: ed8d ca2e    	vstr	s24, [sp, #184]
    9c16: ed8d aa2f    	vstr	s20, [sp, #188]
    9c1a: ed8d ba30    	vstr	s22, [sp, #192]
    9c1e: ed8d 9a31    	vstr	s18, [sp, #196]
    9c22: f7fb f985    	bl	0x4f30 <orange_dsp::generated_packed48::origin::<5>> @ imm = #-0x4cf6
    9c26: 4621         	mov	r1, r4
    9c28: a850         	add	r0, sp, #0x140
    9c2a: ed9f 1b0f    	vldr	d1, [pc, #60]           @ 0x9c68 <tda48_probe::candidate+0x2a0>
    9c2e: c96c         	ldm	r1!, {r2, r3, r5, r6}
    9c30: c06c         	stm	r0!, {r2, r3, r5, r6}
    9c32: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
    9c36: c06c         	stm	r0!, {r2, r3, r5, r6}
    9c38: ed9d 0b32    	vldr	d0, [sp, #200]
    9c3c: ed9f 3a0c    	vldr	s6, [pc, #48]           @ 0x9c70 <tda48_probe::candidate+0x2a8>
    9c40: 2000         	movs	r0, #0x0
    9c42: ee80 1b01    	vdiv.f64	d1, d0, d1
    9c46: 9058         	str	r0, [sp, #0x160]
    9c48: e9cd 005b    	strd	r0, r0, [sp, #364]
    9c4c: e9cd 0059    	strd	r0, r0, [sp, #356]
    9c50: eeb7 2bc1    	vcvt.f32.f64	s4, d1
    9c54: ed8d 2a50    	vstr	s4, [sp, #320]
    9c58: eeb0 1ac2    	vabs.f32	s2, s4
    9c5c: eeb4 1a43    	vcmp.f32	s2, s6
    9c60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9c64: d84c         	bhi	0x9d00 <tda48_probe::candidate+0x338> @ imm = #0x98
    9c66: e011         	b	0x9c8c <tda48_probe::candidate+0x2c4> @ imm = #0x22
    9c68: 00 1b 32 ef  	.word	0xef321b00
    9c6c: 7b e8 fe 3e  	.word	0x3efee87b
    9c70: 93 18 36 41  	.word	0x41361893
    9c74: df 43 f7 b7  	.word	0xb7f743df
    9c78: 0a d7 23 3c  	.word	0x3c23d70a
    9c7c: 17 b7 d1 38  	.word	0x38d1b717
    9c80: bd 37 06 36  	.word	0x360637bd
    9c84: ac c5 a7 37  	.word	0x37a7c5ac
    9c88: 00 00 00 00  	.word	0x00000000
    9c8c: ed1f 4a07    	vldr	s8, [pc, #-28]          @ 0x9c74 <tda48_probe::candidate+0x2ac>
    9c90: eeb7 3bc0    	vcvt.f32.f64	s6, d0
    9c94: ee02 3a04    	vmla.f32	s6, s4, s8
    9c98: ee13 0a10    	vmov	r0, s6
    9c9c: f020 4000    	bic	r0, r0, #0x80000000
    9ca0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9ca4: da2c         	bge	0x9d00 <tda48_probe::candidate+0x338> @ imm = #0x58
    9ca6: eeb0 2ac3    	vabs.f32	s4, s6
    9caa: ed1f 5a0d    	vldr	s10, [pc, #-52]         @ 0x9c78 <tda48_probe::candidate+0x2b0>
    9cae: ee82 2a05    	vdiv.f32	s4, s4, s10
    9cb2: ed1f 5a0e    	vldr	s10, [pc, #-56]         @ 0x9c7c <tda48_probe::candidate+0x2b4>
    9cb6: eeb4 2a45    	vcmp.f32	s4, s10
    9cba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9cbe: d81f         	bhi	0x9d00 <tda48_probe::candidate+0x338> @ imm = #0x3e
    9cc0: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    9cc4: eeb4 1a41    	vcmp.f32	s2, s2
    9cc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ccc: ee83 3a04    	vdiv.f32	s6, s6, s8
    9cd0: ed1f 4a15    	vldr	s8, [pc, #-84]          @ 0x9c80 <tda48_probe::candidate+0x2b8>
    9cd4: fe15 1a01    	vselvs.f32	s2, s10, s2
    9cd8: eeb0 3ac3    	vabs.f32	s6, s6
    9cdc: eeb4 1a45    	vcmp.f32	s2, s10
    9ce0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ce4: fe31 1a05    	vselgt.f32	s2, s2, s10
    9ce8: ee21 1a04    	vmul.f32	s2, s2, s8
    9cec: ed1f 4a1b    	vldr	s8, [pc, #-108]         @ 0x9c84 <tda48_probe::candidate+0x2bc>
    9cf0: fe81 1a44    	vminnm.f32	s2, s2, s8
    9cf4: eeb4 3a41    	vcmp.f32	s6, s2
    9cf8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9cfc: f240 82a4    	bls.w	0xa248 <tda48_probe::candidate+0x880> @ imm = #0x548
    9d00: f504 7290    	add.w	r2, r4, #0x120
    9d04: a85d         	add	r0, sp, #0x174
    9d06: a950         	add	r1, sp, #0x140
    9d08: f7fb fbbe    	bl	0x5488 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 0, 5, 3, 7>> @ imm = #-0x4884
    9d0c: ed9d 0a5d    	vldr	s0, [sp, #372]
    9d10: ed1f 1a23    	vldr	s2, [pc, #-140]         @ 0x9c88 <tda48_probe::candidate+0x2c0>
    9d14: eeb4 0a40    	vcmp.f32	s0, s0
    9d18: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    9d1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d20: f89d 6178    	ldrb.w	r6, [sp, #0x178]
    9d24: fe11 0a00    	vselvs.f32	s0, s2, s0
    9d28: eeb5 0a40    	vcmp.f32	s0, #0
    9d2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d30: fe30 ea01    	vselgt.f32	s28, s0, s2
    9d34: 2801         	cmp	r0, #0x1
    9d36: f040 8273    	bne.w	0xa220 <tda48_probe::candidate+0x858> @ imm = #0x4e6
    9d3a: eeb0 2a4d    	vmov.f32	s4, s26
    9d3e: f504 7396    	add.w	r3, r4, #0x12c
    9d42: ed9d 0b34    	vldr	d0, [sp, #208]
    9d46: a85d         	add	r0, sp, #0x174
    9d48: a950         	add	r1, sp, #0x140
    9d4a: ed9d 1b42    	vldr	d1, [sp, #264]
    9d4e: aa58         	add	r2, sp, #0x160
    9d50: f7f7 fab6    	bl	0x12c0 <orange_dsp::bounded48_baseline::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 1, 5, 3, 7>> @ imm = #-0x8a94
    9d54: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    9d58: f89d 1178    	ldrb.w	r1, [sp, #0x178]
    9d5c: 2800         	cmp	r0, #0x0
    9d5e: 440e         	add	r6, r1
    9d60: f000 825e    	beq.w	0xa220 <tda48_probe::candidate+0x858> @ imm = #0x4bc
    9d64: eeb0 0a4c    	vmov.f32	s0, s24
    9d68: a85d         	add	r0, sp, #0x174
    9d6a: a950         	add	r1, sp, #0x140
    9d6c: aa32         	add	r2, sp, #0xc8
    9d6e: ab58         	add	r3, sp, #0x160
    9d70: ed9d da5d    	vldr	s26, [sp, #372]
    9d74: f504 759c    	add.w	r5, r4, #0x138
    9d78: 9500         	str	r5, [sp]
    9d7a: f7fb fdb9    	bl	0x58f0 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 2, 5, 3, 7>> @ imm = #-0x448e
    9d7e: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    9d82: f89d 1178    	ldrb.w	r1, [sp, #0x178]
    9d86: 2800         	cmp	r0, #0x0
    9d88: 440e         	add	r6, r1
    9d8a: f000 8249    	beq.w	0xa220 <tda48_probe::candidate+0x858> @ imm = #0x492
    9d8e: eeb0 0a4a    	vmov.f32	s0, s20
    9d92: eef0 0a4b    	vmov.f32	s1, s22
    9d96: a85d         	add	r0, sp, #0x174
    9d98: a950         	add	r1, sp, #0x140
    9d9a: aa32         	add	r2, sp, #0xc8
    9d9c: ab58         	add	r3, sp, #0x160
    9d9e: ed9d ca5d    	vldr	s24, [sp, #372]
    9da2: f504 75a2    	add.w	r5, r4, #0x144
    9da6: 9500         	str	r5, [sp]
    9da8: f7fc fe42    	bl	0x6a30 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, 7>> @ imm = #-0x337c
    9dac: f89d 0179    	ldrb.w	r0, [sp, #0x179]
    9db0: f89d 1178    	ldrb.w	r1, [sp, #0x178]
    9db4: 2801         	cmp	r0, #0x1
    9db6: 440e         	add	r6, r1
    9db8: f040 8232    	bne.w	0xa220 <tda48_probe::candidate+0x858> @ imm = #0x464
    9dbc: eeb4 ea4e    	vcmp.f32	s28, s28
    9dc0: f504 73a8    	add.w	r3, r4, #0x150
    9dc4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dc8: eeb4 da4d    	vcmp.f32	s26, s26
    9dcc: a85d         	add	r0, sp, #0x174
    9dce: fe1d 0a0e    	vselvs.f32	s0, s26, s28
    9dd2: a950         	add	r1, sp, #0x140
    9dd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dd8: aa58         	add	r2, sp, #0x160
    9dda: fe10 1a0d    	vselvs.f32	s2, s0, s26
    9dde: eeb4 0a41    	vcmp.f32	s0, s2
    9de2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9de6: fe30 0a01    	vselgt.f32	s0, s0, s2
    9dea: eeb4 0a40    	vcmp.f32	s0, s0
    9dee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9df2: eeb4 ca4c    	vcmp.f32	s24, s24
    9df6: fe1c 0a00    	vselvs.f32	s0, s24, s0
    9dfa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dfe: fe10 1a0c    	vselvs.f32	s2, s0, s24
    9e02: eeb4 0a41    	vcmp.f32	s0, s2
    9e06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e0a: fe30 0a01    	vselgt.f32	s0, s0, s2
    9e0e: ed9d 1a5d    	vldr	s2, [sp, #372]
    9e12: eeb4 0a40    	vcmp.f32	s0, s0
    9e16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e1a: eeb4 1a41    	vcmp.f32	s2, s2
    9e1e: fe11 2a00    	vselvs.f32	s4, s2, s0
    9e22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e26: ed9d 0b40    	vldr	d0, [sp, #256]
    9e2a: fe12 1a01    	vselvs.f32	s2, s4, s2
    9e2e: eeb4 2a41    	vcmp.f32	s4, s2
    9e32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e36: fe32 aa01    	vselgt.f32	s20, s4, s2
    9e3a: eeb0 2a49    	vmov.f32	s4, s18
    9e3e: ed9d 1b4a    	vldr	d1, [sp, #296]
    9e42: f7fe fa19    	bl	0x8278 <orange_dsp::bounded48::bounded_block::<orange_dsp::packed::ExtraMath<tda48_probe::cordic::H7r3Cordic, 2>, 4, 5, 3, 7>> @ imm = #-0x1bce
    9e46: eeb4 aa4a    	vcmp.f32	s20, s20
    9e4a: ed9d 0a5d    	vldr	s0, [sp, #372]
    9e4e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e52: eeb4 0a40    	vcmp.f32	s0, s0
    9e56: f89d 0178    	ldrb.w	r0, [sp, #0x178]
    9e5a: fe10 1a0a    	vselvs.f32	s2, s0, s20
    9e5e: f89d 1179    	ldrb.w	r1, [sp, #0x179]
    9e62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e66: eb00 0206    	add.w	r2, r0, r6
    9e6a: fe11 0a00    	vselvs.f32	s0, s2, s0
    9e6e: eeb4 1a40    	vcmp.f32	s2, s0
    9e72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e76: fe31 0a00    	vselgt.f32	s0, s2, s0
    9e7a: 2900         	cmp	r1, #0x0
    9e7c: f000 81fc    	beq.w	0xa278 <tda48_probe::candidate+0x8b0> @ imm = #0x3f8
    9e80: ed8d 0a01    	vstr	s0, [sp, #4]
    9e84: eeb0 0a48    	vmov.f32	s0, s16
    9e88: 9214         	str	r2, [sp, #0x50]
    9e8a: a85d         	add	r0, sp, #0x174
    9e8c: a916         	add	r1, sp, #0x58
    9e8e: aa50         	add	r2, sp, #0x140
    9e90: f7fb faf2    	bl	0x5478 <orange_dsp::generated_packed48::update::<5>> @ imm = #-0x4a1c
    9e94: eddd 1a67    	vldr	s3, [sp, #412]
    9e98: eddd 2a68    	vldr	s5, [sp, #416]
    9e9c: ee11 5a90    	vmov	r5, s3
    9ea0: eddd da5e    	vldr	s27, [sp, #376]
    9ea4: ee1d 0a90    	vmov	r0, s27
    9ea8: eddd 3a69    	vldr	s7, [sp, #420]
    9eac: 9509         	str	r5, [sp, #0x24]
    9eae: ee12 5a90    	vmov	r5, s5
    9eb2: eddd 4a6a    	vldr	s9, [sp, #424]
    9eb6: eddd 5a6b    	vldr	s11, [sp, #428]
    9eba: 950a         	str	r5, [sp, #0x28]
    9ebc: ee13 5a90    	vmov	r5, s7
    9ec0: eddd ea5f    	vldr	s29, [sp, #380]
    9ec4: ee15 9a90    	vmov	r9, s11
    9ec8: 950b         	str	r5, [sp, #0x2c]
    9eca: ee14 5a90    	vmov	r5, s9
    9ece: f020 4000    	bic	r0, r0, #0x80000000
    9ed2: ee1e 1a90    	vmov	r1, s29
    9ed6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9eda: f04f 0000    	mov.w	r0, #0x0
    9ede: eddd fa60    	vldr	s31, [sp, #384]
    9ee2: ed9d 3a61    	vldr	s6, [sp, #388]
    9ee6: ed9d 4a62    	vldr	s8, [sp, #392]
    9eea: ed9d 5a63    	vldr	s10, [sp, #396]
    9eee: ed9d 6a64    	vldr	s12, [sp, #400]
    9ef2: ed9d 7a65    	vldr	s14, [sp, #404]
    9ef6: eddd 0a66    	vldr	s1, [sp, #408]
    9efa: 950c         	str	r5, [sp, #0x30]
    9efc: f8cd 9034    	str.w	r9, [sp, #0x34]
    9f00: ee1f 2a90    	vmov	r2, s31
    9f04: bfa8         	it	ge
    9f06: 2001         	movge	r0, #0x1
    9f08: ee13 3a10    	vmov	r3, s6
    9f0c: ee14 6a10    	vmov	r6, s8
    9f10: 9013         	str	r0, [sp, #0x4c]
    9f12: f021 4000    	bic	r0, r1, #0x80000000
    9f16: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9f1a: f04f 0000    	mov.w	r0, #0x0
    9f1e: bfa8         	it	ge
    9f20: 2001         	movge	r0, #0x1
    9f22: ee15 ca10    	vmov	r12, s10
    9f26: ee16 ea10    	vmov	lr, s12
    9f2a: 9012         	str	r0, [sp, #0x48]
    9f2c: f022 4000    	bic	r0, r2, #0x80000000
    9f30: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9f34: f04f 0000    	mov.w	r0, #0x0
    9f38: bfa8         	it	ge
    9f3a: 2001         	movge	r0, #0x1
    9f3c: ee17 8a10    	vmov	r8, s14
    9f40: ee10 ba90    	vmov	r11, s1
    9f44: 9011         	str	r0, [sp, #0x44]
    9f46: f023 4000    	bic	r0, r3, #0x80000000
    9f4a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9f4e: f04f 0000    	mov.w	r0, #0x0
    9f52: bfa8         	it	ge
    9f54: 2001         	movge	r0, #0x1
    9f56: f04f 0900    	mov.w	r9, #0x0
    9f5a: 9010         	str	r0, [sp, #0x40]
    9f5c: f026 4000    	bic	r0, r6, #0x80000000
    9f60: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9f64: f04f 0000    	mov.w	r0, #0x0
    9f68: bfa8         	it	ge
    9f6a: 2001         	movge	r0, #0x1
    9f6c: 900f         	str	r0, [sp, #0x3c]
    9f6e: f02c 4000    	bic	r0, r12, #0x80000000
    9f72: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9f76: f04f 0000    	mov.w	r0, #0x0
    9f7a: bfa8         	it	ge
    9f7c: 2001         	movge	r0, #0x1
    9f7e: f04f 0c00    	mov.w	r12, #0x0
    9f82: 900e         	str	r0, [sp, #0x38]
    9f84: f02e 4000    	bic	r0, lr, #0x80000000
    9f88: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9f8c: f04f 0000    	mov.w	r0, #0x0
    9f90: bfa8         	it	ge
    9f92: 2001         	movge	r0, #0x1
    9f94: f04f 0e00    	mov.w	lr, #0x0
    9f98: 9008         	str	r0, [sp, #0x20]
    9f9a: f028 4000    	bic	r0, r8, #0x80000000
    9f9e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9fa2: f04f 0000    	mov.w	r0, #0x0
    9fa6: bfa8         	it	ge
    9fa8: 2001         	movge	r0, #0x1
    9faa: f04f 0800    	mov.w	r8, #0x0
    9fae: 9007         	str	r0, [sp, #0x1c]
    9fb0: f02b 4000    	bic	r0, r11, #0x80000000
    9fb4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9fb8: f04f 0000    	mov.w	r0, #0x0
    9fbc: bfa8         	it	ge
    9fbe: 2001         	movge	r0, #0x1
    9fc0: f04f 0b00    	mov.w	r11, #0x0
    9fc4: 9006         	str	r0, [sp, #0x18]
    9fc6: 9809         	ldr	r0, [sp, #0x24]
    9fc8: f020 4000    	bic	r0, r0, #0x80000000
    9fcc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9fd0: f04f 0000    	mov.w	r0, #0x0
    9fd4: bfa8         	it	ge
    9fd6: 2001         	movge	r0, #0x1
    9fd8: 9009         	str	r0, [sp, #0x24]
    9fda: 980a         	ldr	r0, [sp, #0x28]
    9fdc: f020 4000    	bic	r0, r0, #0x80000000
    9fe0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9fe4: f04f 0000    	mov.w	r0, #0x0
    9fe8: bfa8         	it	ge
    9fea: 2001         	movge	r0, #0x1
    9fec: 900a         	str	r0, [sp, #0x28]
    9fee: 980b         	ldr	r0, [sp, #0x2c]
    9ff0: f020 4000    	bic	r0, r0, #0x80000000
    9ff4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9ff8: f04f 0000    	mov.w	r0, #0x0
    9ffc: bfa8         	it	ge
    9ffe: 2001         	movge	r0, #0x1
    a000: 900b         	str	r0, [sp, #0x2c]
    a002: 980c         	ldr	r0, [sp, #0x30]
    a004: f020 4000    	bic	r0, r0, #0x80000000
    a008: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a00c: f04f 0000    	mov.w	r0, #0x0
    a010: bfa8         	it	ge
    a012: 2001         	movge	r0, #0x1
    a014: eddd ca6c    	vldr	s25, [sp, #432]
    a018: 900c         	str	r0, [sp, #0x30]
    a01a: 980d         	ldr	r0, [sp, #0x34]
    a01c: f020 4000    	bic	r0, r0, #0x80000000
    a020: ee1c 1a90    	vmov	r1, s25
    a024: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a028: f04f 0000    	mov.w	r0, #0x0
    a02c: bfa8         	it	ge
    a02e: 2001         	movge	r0, #0x1
    a030: eddd 7a6d    	vldr	s15, [sp, #436]
    a034: 900d         	str	r0, [sp, #0x34]
    a036: f021 4000    	bic	r0, r1, #0x80000000
    a03a: ee17 1a90    	vmov	r1, s15
    a03e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a042: f04f 0000    	mov.w	r0, #0x0
    a046: bfa8         	it	ge
    a048: 2001         	movge	r0, #0x1
    a04a: ed9d 8a6e    	vldr	s16, [sp, #440]
    a04e: 9005         	str	r0, [sp, #0x14]
    a050: f021 4000    	bic	r0, r1, #0x80000000
    a054: ee18 1a10    	vmov	r1, s16
    a058: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a05c: f04f 0000    	mov.w	r0, #0x0
    a060: bfa8         	it	ge
    a062: 2001         	movge	r0, #0x1
    a064: ed9d 9a6f    	vldr	s18, [sp, #444]
    a068: 9004         	str	r0, [sp, #0x10]
    a06a: f021 4000    	bic	r0, r1, #0x80000000
    a06e: ee19 1a10    	vmov	r1, s18
    a072: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a076: f04f 0000    	mov.w	r0, #0x0
    a07a: bfa8         	it	ge
    a07c: 2001         	movge	r0, #0x1
    a07e: ed9d aa70    	vldr	s20, [sp, #448]
    a082: 9003         	str	r0, [sp, #0xc]
    a084: f021 4000    	bic	r0, r1, #0x80000000
    a088: ee1a 1a10    	vmov	r1, s20
    a08c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a090: f04f 0000    	mov.w	r0, #0x0
    a094: bfa8         	it	ge
    a096: 2001         	movge	r0, #0x1
    a098: f021 4100    	bic	r1, r1, #0x80000000
    a09c: ed9d ba71    	vldr	s22, [sp, #452]
    a0a0: f1b1 4fff    	cmp.w	r1, #0x7f800000
    a0a4: f04f 0100    	mov.w	r1, #0x0
    a0a8: 9002         	str	r0, [sp, #0x8]
    a0aa: ee1b 2a10    	vmov	r2, s22
    a0ae: bfa8         	it	ge
    a0b0: 2101         	movge	r1, #0x1
    a0b2: ed9d ca72    	vldr	s24, [sp, #456]
    a0b6: ee1c 3a10    	vmov	r3, s24
    a0ba: f022 4200    	bic	r2, r2, #0x80000000
    a0be: f1b2 4fff    	cmp.w	r2, #0x7f800000
    a0c2: f04f 0200    	mov.w	r2, #0x0
    a0c6: bfa8         	it	ge
    a0c8: 2201         	movge	r2, #0x1
    a0ca: f023 4300    	bic	r3, r3, #0x80000000
    a0ce: ed9d da73    	vldr	s26, [sp, #460]
    a0d2: f1b3 4fff    	cmp.w	r3, #0x7f800000
    a0d6: f04f 0300    	mov.w	r3, #0x0
    a0da: ee1d 6a10    	vmov	r6, s26
    a0de: bfa8         	it	ge
    a0e0: 2301         	movge	r3, #0x1
    a0e2: ed9d ea58    	vldr	s28, [sp, #352]
    a0e6: ee1e 5a10    	vmov	r5, s28
    a0ea: f026 4600    	bic	r6, r6, #0x80000000
    a0ee: f1b6 4fff    	cmp.w	r6, #0x7f800000
    a0f2: bfa8         	it	ge
    a0f4: f04f 0c01    	movge.w	r12, #0x1
    a0f8: ed9d fa59    	vldr	s30, [sp, #356]
    a0fc: f025 4600    	bic	r6, r5, #0x80000000
    a100: ee1f 5a10    	vmov	r5, s30
    a104: f1b6 4fff    	cmp.w	r6, #0x7f800000
    a108: bfa8         	it	ge
    a10a: f04f 0e01    	movge.w	lr, #0x1
    a10e: eddd 8a5a    	vldr	s17, [sp, #360]
    a112: 2600         	movs	r6, #0x0
    a114: ee18 0a90    	vmov	r0, s17
    a118: f025 4500    	bic	r5, r5, #0x80000000
    a11c: f1b5 4fff    	cmp.w	r5, #0x7f800000
    a120: bfa8         	it	ge
    a122: 2601         	movge	r6, #0x1
    a124: f020 4000    	bic	r0, r0, #0x80000000
    a128: eddd 9a5b    	vldr	s19, [sp, #364]
    a12c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a130: ee19 0a90    	vmov	r0, s19
    a134: eddd aa5c    	vldr	s21, [sp, #368]
    a138: bfa8         	it	ge
    a13a: f04f 0901    	movge.w	r9, #0x1
    a13e: f020 4000    	bic	r0, r0, #0x80000000
    a142: eddd ba5d    	vldr	s23, [sp, #372]
    a146: ee1a 5a90    	vmov	r5, s21
    a14a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a14e: ee1b 0a90    	vmov	r0, s23
    a152: bfa8         	it	ge
    a154: f04f 0801    	movge.w	r8, #0x1
    a158: f025 4500    	bic	r5, r5, #0x80000000
    a15c: f020 4000    	bic	r0, r0, #0x80000000
    a160: f1b5 4fff    	cmp.w	r5, #0x7f800000
    a164: bfa8         	it	ge
    a166: f04f 0b01    	movge.w	r11, #0x1
    a16a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a16e: f04f 0500    	mov.w	r5, #0x0
    a172: da49         	bge	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x92
    a174: 9813         	ldr	r0, [sp, #0x4c]
    a176: 2800         	cmp	r0, #0x0
    a178: bf04         	itt	eq
    a17a: 9812         	ldreq	r0, [sp, #0x48]
    a17c: 2800         	cmpeq	r0, #0x0
    a17e: d143         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x86
    a180: 9811         	ldr	r0, [sp, #0x44]
    a182: 2800         	cmp	r0, #0x0
    a184: bf04         	itt	eq
    a186: 9810         	ldreq	r0, [sp, #0x40]
    a188: 2800         	cmpeq	r0, #0x0
    a18a: d13d         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x7a
    a18c: 980f         	ldr	r0, [sp, #0x3c]
    a18e: 2800         	cmp	r0, #0x0
    a190: bf04         	itt	eq
    a192: 980e         	ldreq	r0, [sp, #0x38]
    a194: 2800         	cmpeq	r0, #0x0
    a196: d137         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x6e
    a198: 9808         	ldr	r0, [sp, #0x20]
    a19a: 2800         	cmp	r0, #0x0
    a19c: bf04         	itt	eq
    a19e: 9807         	ldreq	r0, [sp, #0x1c]
    a1a0: 2800         	cmpeq	r0, #0x0
    a1a2: d131         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x62
    a1a4: 9806         	ldr	r0, [sp, #0x18]
    a1a6: 2800         	cmp	r0, #0x0
    a1a8: bf04         	itt	eq
    a1aa: 9809         	ldreq	r0, [sp, #0x24]
    a1ac: 2800         	cmpeq	r0, #0x0
    a1ae: d12b         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x56
    a1b0: 980a         	ldr	r0, [sp, #0x28]
    a1b2: 2800         	cmp	r0, #0x0
    a1b4: bf04         	itt	eq
    a1b6: 980b         	ldreq	r0, [sp, #0x2c]
    a1b8: 2800         	cmpeq	r0, #0x0
    a1ba: d125         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x4a
    a1bc: 980c         	ldr	r0, [sp, #0x30]
    a1be: 2800         	cmp	r0, #0x0
    a1c0: bf04         	itt	eq
    a1c2: 980d         	ldreq	r0, [sp, #0x34]
    a1c4: 2800         	cmpeq	r0, #0x0
    a1c6: d11f         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x3e
    a1c8: 9805         	ldr	r0, [sp, #0x14]
    a1ca: 2800         	cmp	r0, #0x0
    a1cc: bf04         	itt	eq
    a1ce: 9804         	ldreq	r0, [sp, #0x10]
    a1d0: 2800         	cmpeq	r0, #0x0
    a1d2: d119         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x32
    a1d4: 9803         	ldr	r0, [sp, #0xc]
    a1d6: 2800         	cmp	r0, #0x0
    a1d8: bf04         	itt	eq
    a1da: 9802         	ldreq	r0, [sp, #0x8]
    a1dc: 2800         	cmpeq	r0, #0x0
    a1de: d113         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x26
    a1e0: 2900         	cmp	r1, #0x0
    a1e2: bf08         	it	eq
    a1e4: 2a00         	cmpeq	r2, #0x0
    a1e6: d10f         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x1e
    a1e8: 2b00         	cmp	r3, #0x0
    a1ea: bf08         	it	eq
    a1ec: f1bc 0f00    	cmpeq.w	r12, #0x0
    a1f0: d10a         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0x14
    a1f2: f1be 0f00    	cmp.w	lr, #0x0
    a1f6: bf08         	it	eq
    a1f8: 2e00         	cmpeq	r6, #0x0
    a1fa: d105         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #0xa
    a1fc: f1b9 0f00    	cmp.w	r9, #0x0
    a200: bf08         	it	eq
    a202: f1b8 0f00    	cmpeq.w	r8, #0x0
    a206: d03f         	beq	0xa288 <tda48_probe::candidate+0x8c0> @ imm = #0x7e
    a208: 69e0         	ldr	r0, [r4, #0x1c]
    a20a: f04f 41ff    	mov.w	r1, #0x7f800000
    a20e: e9ca 0100    	strd	r0, r1, [r10]
    a212: 9814         	ldr	r0, [sp, #0x50]
    a214: f88a 0008    	strb.w	r0, [r10, #0x8]
    a218: f88a 5009    	strb.w	r5, [r10, #0x9]
    a21c: e00a         	b	0xa234 <tda48_probe::candidate+0x86c> @ imm = #0x14
    a21e: bf00         	nop
    a220: 69e0         	ldr	r0, [r4, #0x1c]
    a222: f04f 41ff    	mov.w	r1, #0x7f800000
    a226: e9ca 0100    	strd	r0, r1, [r10]
    a22a: f88a 6008    	strb.w	r6, [r10, #0x8]
    a22e: 2000         	movs	r0, #0x0
    a230: f88a 0009    	strb.w	r0, [r10, #0x9]
    a234: b074         	add	sp, #0x1d0
    a236: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    a23a: b001         	add	sp, #0x4
    a23c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    a240: bdf0         	pop	{r4, r5, r6, r7, pc}
    a242: bf00         	nop
    a244: bf00         	nop
    a246: bf00         	nop
    a248: eeb4 2a42    	vcmp.f32	s4, s4
    a24c: ed9f 0a65    	vldr	s0, [pc, #404]          @ 0xa3e4 <tda48_probe::candidate+0xa1c>
    a250: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a254: f8d4 0100    	ldr.w	r0, [r4, #0x100]
    a258: f04f 0600    	mov.w	r6, #0x0
    a25c: fe10 1a02    	vselvs.f32	s2, s0, s4
    a260: 3001         	adds	r0, #0x1
    a262: f8c4 0100    	str.w	r0, [r4, #0x100]
    a266: eeb5 1a40    	vcmp.f32	s2, #0
    a26a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a26e: fe31 ea00    	vselgt.f32	s28, s2, s0
    a272: e562         	b	0x9d3a <tda48_probe::candidate+0x372> @ imm = #-0x53c
    a274: bf00         	nop
    a276: bf00         	nop
    a278: 69e0         	ldr	r0, [r4, #0x1c]
    a27a: f04f 41ff    	mov.w	r1, #0x7f800000
    a27e: e9ca 0100    	strd	r0, r1, [r10]
    a282: f88a 2008    	strb.w	r2, [r10, #0x8]
    a286: e7d2         	b	0xa22e <tda48_probe::candidate+0x866> @ imm = #-0x5c
    a288: f1bb 0f00    	cmp.w	r11, #0x0
    a28c: d1bc         	bne	0xa208 <tda48_probe::candidate+0x840> @ imm = #-0x88
    a28e: f104 0120    	add.w	r1, r4, #0x20
    a292: f104 0090    	add.w	r0, r4, #0x90
    a296: 2270         	movs	r2, #0x70
    a298: ed8d 8a0a    	vstr	s16, [sp, #40]
    a29c: eeb0 8a43    	vmov.f32	s16, s6
    a2a0: ed8d aa0b    	vstr	s20, [sp, #44]
    a2a4: eeb0 aa44    	vmov.f32	s20, s8
    a2a8: ed8d ba0d    	vstr	s22, [sp, #52]
    a2ac: eeb0 ba45    	vmov.f32	s22, s10
    a2b0: ed8d 9a09    	vstr	s18, [sp, #36]
    a2b4: eeb0 9a46    	vmov.f32	s18, s12
    a2b8: ed8d ca0c    	vstr	s24, [sp, #48]
    a2bc: eeb0 ca47    	vmov.f32	s24, s14
    a2c0: ed8d da0e    	vstr	s26, [sp, #56]
    a2c4: eeb0 da60    	vmov.f32	s26, s1
    a2c8: ed8d ea0f    	vstr	s28, [sp, #60]
    a2cc: eeb0 ea61    	vmov.f32	s28, s3
    a2d0: ed8d fa10    	vstr	s30, [sp, #64]
    a2d4: eeb0 fa62    	vmov.f32	s30, s5
    a2d8: edcd 8a11    	vstr	s17, [sp, #68]
    a2dc: eef0 8a63    	vmov.f32	s17, s7
    a2e0: edcd 9a12    	vstr	s19, [sp, #72]
    a2e4: eef0 9a64    	vmov.f32	s19, s9
    a2e8: edcd aa13    	vstr	s21, [sp, #76]
    a2ec: eef0 aa65    	vmov.f32	s21, s11
    a2f0: edcd 7a08    	vstr	s15, [sp, #32]
    a2f4: f000 fe7c    	bl	0xaff0 <__aeabi_memcpy4> @ imm = #0xcf8
    a2f8: ad50         	add	r5, sp, #0x140
    a2fa: edc4 ba08    	vstr	s23, [r4, #32]
    a2fe: edc4 da09    	vstr	s27, [r4, #36]
    a302: ed9d 0a08    	vldr	s0, [sp, #32]
    a306: edc4 ea0a    	vstr	s29, [r4, #40]
    a30a: 4620         	mov	r0, r4
    a30c: edc4 fa0b    	vstr	s31, [r4, #44]
    a310: ed84 8a0c    	vstr	s16, [r4, #48]
    a314: ed84 aa0d    	vstr	s20, [r4, #52]
    a318: ed84 ba0e    	vstr	s22, [r4, #56]
    a31c: ed84 9a0f    	vstr	s18, [r4, #60]
    a320: ed84 ca10    	vstr	s24, [r4, #64]
    a324: ed84 da11    	vstr	s26, [r4, #68]
    a328: ed84 ea12    	vstr	s28, [r4, #72]
    a32c: ed84 fa13    	vstr	s30, [r4, #76]
    a330: edc4 8a14    	vstr	s17, [r4, #80]
    a334: edc4 9a15    	vstr	s19, [r4, #84]
    a338: edc4 aa16    	vstr	s21, [r4, #88]
    a33c: edc4 ca17    	vstr	s25, [r4, #92]
    a340: ed84 0a18    	vstr	s0, [r4, #96]
    a344: ed9d 0a0a    	vldr	s0, [sp, #40]
    a348: ed84 0a19    	vstr	s0, [r4, #100]
    a34c: ed9d 0a09    	vldr	s0, [sp, #36]
    a350: ed84 0a1a    	vstr	s0, [r4, #104]
    a354: ed9d 0a0b    	vldr	s0, [sp, #44]
    a358: ed84 0a1b    	vstr	s0, [r4, #108]
    a35c: ed9d 0a0d    	vldr	s0, [sp, #52]
    a360: ed84 0a1c    	vstr	s0, [r4, #112]
    a364: ed9d 0a0c    	vldr	s0, [sp, #48]
    a368: ed84 0a1d    	vstr	s0, [r4, #116]
    a36c: ed9d 0a0e    	vldr	s0, [sp, #56]
    a370: ed84 0a1e    	vstr	s0, [r4, #120]
    a374: ed9d 0a0f    	vldr	s0, [sp, #60]
    a378: ed84 0a1f    	vstr	s0, [r4, #124]
    a37c: ed9d 0a10    	vldr	s0, [sp, #64]
    a380: ed84 0a20    	vstr	s0, [r4, #128]
    a384: ed9d 0a11    	vldr	s0, [sp, #68]
    a388: ed84 0a21    	vstr	s0, [r4, #132]
    a38c: ed9d 0a12    	vldr	s0, [sp, #72]
    a390: ed84 0a22    	vstr	s0, [r4, #136]
    a394: ed9d 0a13    	vldr	s0, [sp, #76]
    a398: ed84 0a23    	vstr	s0, [r4, #140]
    a39c: ed9f 0a10    	vldr	s0, [pc, #64]           @ 0xa3e0 <tda48_probe::candidate+0xa18>
    a3a0: cd4e         	ldm	r5!, {r1, r2, r3, r6}
    a3a2: c04e         	stm	r0!, {r1, r2, r3, r6}
    a3a4: e895 004e    	ldm.w	r5, {r1, r2, r3, r6}
    a3a8: c04e         	stm	r0!, {r1, r2, r3, r6}
    a3aa: f8d4 0118    	ldr.w	r0, [r4, #0x118]
    a3ae: ed9d 1a01    	vldr	s2, [sp, #4]
    a3b2: 3001         	adds	r0, #0x1
    a3b4: ed8a 1a01    	vstr	s2, [r10, #4]
    a3b8: bf28         	it	hs
    a3ba: f04f 30ff    	movhs.w	r0, #0xffffffff
    a3be: eeb4 1a40    	vcmp.f32	s2, s0
    a3c2: 9914         	ldr	r1, [sp, #0x50]
    a3c4: f8c4 0118    	str.w	r0, [r4, #0x118]
    a3c8: 9857         	ldr	r0, [sp, #0x15c]
    a3ca: f8ca 0000    	str.w	r0, [r10]
    a3ce: 2000         	movs	r0, #0x0
    a3d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3d4: f88a 1008    	strb.w	r1, [r10, #0x8]
    a3d8: bf98         	it	ls
    a3da: 2001         	movls	r0, #0x1
    a3dc: e728         	b	0xa230 <tda48_probe::candidate+0x868> @ imm = #-0x1b0
    a3de: bf00         	nop
    a3e0: 17 b7 d1 38  	.word	0x38d1b717
    a3e4: 00 00 00 00  	.word	0x00000000

0000a3e8 <core::panicking::panic_fmt>:
    a3e8: b580         	push	{r7, lr}
    a3ea: 466f         	mov	r7, sp
    a3ec: f7fe fdc8    	bl	0x8f80 <__rustc::rust_begin_unwind> @ imm = #-0x1470

0000a3f0 <orange_dsp::generated_condensed48::update>:
    a3f0: b580         	push	{r7, lr}
    a3f2: 466f         	mov	r7, sp
    a3f4: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    a3f8: b0b0         	sub	sp, #0xc0
    a3fa: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a3fe: ed91 3a02    	vldr	s6, [r1, #8]
    a402: ed9f 1bfd    	vldr	d1, [pc, #1012]         @ 0xa7f8 <orange_dsp::generated_condensed48::update+0x408>
    a406: ed91 4a01    	vldr	s8, [r1, #4]
    a40a: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    a40e: ee20 8b01    	vmul.f64	d8, d0, d1
    a412: ed91 1a03    	vldr	s2, [r1, #12]
    a416: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    a41a: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    a41e: ed9f 0bf8    	vldr	d0, [pc, #992]          @ 0xa800 <orange_dsp::generated_condensed48::update+0x410>
    a422: ed9f 2bf9    	vldr	d2, [pc, #996]          @ 0xa808 <orange_dsp::generated_condensed48::update+0x418>
    a426: ed9f 5bfa    	vldr	d5, [pc, #1000]         @ 0xa810 <orange_dsp::generated_condensed48::update+0x420>
    a42a: ee21 2b02    	vmul.f64	d2, d1, d2
    a42e: ee03 2b05    	vmla.f64	d2, d3, d5
    a432: eeb0 5b48    	vmov.f64	d5, d8
    a436: ee04 5b00    	vmla.f64	d5, d4, d0
    a43a: ed9f 0bf7    	vldr	d0, [pc, #988]          @ 0xa818 <orange_dsp::generated_condensed48::update+0x428>
    a43e: ee23 3b00    	vmul.f64	d3, d3, d0
    a442: ed92 0a01    	vldr	s0, [r2, #4]
    a446: ed9f 4bf6    	vldr	d4, [pc, #984]          @ 0xa820 <orange_dsp::generated_condensed48::update+0x430>
    a44a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a44e: ed8d 5b2c    	vstr	d5, [sp, #176]
    a452: ee38 5b02    	vadd.f64	d5, d8, d2
    a456: ed9f 2bf4    	vldr	d2, [pc, #976]          @ 0xa828 <orange_dsp::generated_condensed48::update+0x438>
    a45a: ee01 3b04    	vmla.f64	d3, d1, d4
    a45e: ed91 4a04    	vldr	s8, [r1, #16]
    a462: ee00 5b02    	vmla.f64	d5, d0, d2
    a466: ed91 2a05    	vldr	s4, [r1, #20]
    a46a: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    a46e: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    a472: ed8d 5b2e    	vstr	d5, [sp, #184]
    a476: ee38 6b03    	vadd.f64	d6, d8, d3
    a47a: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xa830 <orange_dsp::generated_condensed48::update+0x440>
    a47e: ed9f 5bee    	vldr	d5, [pc, #952]          @ 0xa838 <orange_dsp::generated_condensed48::update+0x448>
    a482: ee22 3b03    	vmul.f64	d3, d2, d3
    a486: ee04 3b05    	vmla.f64	d3, d4, d5
    a48a: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xa840 <orange_dsp::generated_condensed48::update+0x450>
    a48e: ee38 5b03    	vadd.f64	d5, d8, d3
    a492: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xa848 <orange_dsp::generated_condensed48::update+0x458>
    a496: ee24 3b03    	vmul.f64	d3, d4, d3
    a49a: ed9f 4bed    	vldr	d4, [pc, #948]          @ 0xa850 <orange_dsp::generated_condensed48::update+0x460>
    a49e: ee00 6b01    	vmla.f64	d6, d0, d1
    a4a2: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xa858 <orange_dsp::generated_condensed48::update+0x468>
    a4a6: ee02 3b04    	vmla.f64	d3, d2, d4
    a4aa: ee00 5b01    	vmla.f64	d5, d0, d1
    a4ae: ed9f 1bec    	vldr	d1, [pc, #944]          @ 0xa860 <orange_dsp::generated_condensed48::update+0x470>
    a4b2: ee38 2b03    	vadd.f64	d2, d8, d3
    a4b6: ee00 2b01    	vmla.f64	d2, d0, d1
    a4ba: ed91 0a07    	vldr	s0, [r1, #28]
    a4be: ed91 1a06    	vldr	s2, [r1, #24]
    a4c2: eeb7 fac0    	vcvt.f64.f32	d15, s0
    a4c6: ed9f 0be8    	vldr	d0, [pc, #928]          @ 0xa868 <orange_dsp::generated_condensed48::update+0x478>
    a4ca: ee2f 9b00    	vmul.f64	d9, d15, d0
    a4ce: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    a4d2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa870 <orange_dsp::generated_condensed48::update+0x480>
    a4d6: ee00 9b01    	vmla.f64	d9, d0, d1
    a4da: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa878 <orange_dsp::generated_condensed48::update+0x488>
    a4de: ee2f 3b01    	vmul.f64	d3, d15, d1
    a4e2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa880 <orange_dsp::generated_condensed48::update+0x490>
    a4e6: ee00 3b01    	vmla.f64	d3, d0, d1
    a4ea: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa888 <orange_dsp::generated_condensed48::update+0x498>
    a4ee: ee2f 4b01    	vmul.f64	d4, d15, d1
    a4f2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa890 <orange_dsp::generated_condensed48::update+0x4a0>
    a4f6: ee00 4b01    	vmla.f64	d4, d0, d1
    a4fa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa898 <orange_dsp::generated_condensed48::update+0x4a8>
    a4fe: ee20 ab01    	vmul.f64	d10, d0, d1
    a502: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8a0 <orange_dsp::generated_condensed48::update+0x4b0>
    a506: ee0f ab01    	vmla.f64	d10, d15, d1
    a50a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8a8 <orange_dsp::generated_condensed48::update+0x4b8>
    a50e: ee2f bb01    	vmul.f64	d11, d15, d1
    a512: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8b0 <orange_dsp::generated_condensed48::update+0x4c0>
    a516: ee00 bb01    	vmla.f64	d11, d0, d1
    a51a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8b8 <orange_dsp::generated_condensed48::update+0x4c8>
    a51e: ee2f cb01    	vmul.f64	d12, d15, d1
    a522: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8c0 <orange_dsp::generated_condensed48::update+0x4d0>
    a526: ee00 cb01    	vmla.f64	d12, d0, d1
    a52a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8c8 <orange_dsp::generated_condensed48::update+0x4d8>
    a52e: ee20 db01    	vmul.f64	d13, d0, d1
    a532: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8d0 <orange_dsp::generated_condensed48::update+0x4e0>
    a536: ee0f db01    	vmla.f64	d13, d15, d1
    a53a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8d8 <orange_dsp::generated_condensed48::update+0x4e8>
    a53e: ee2f eb01    	vmul.f64	d14, d15, d1
    a542: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8e0 <orange_dsp::generated_condensed48::update+0x4f0>
    a546: ee00 eb01    	vmla.f64	d14, d0, d1
    a54a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8e8 <orange_dsp::generated_condensed48::update+0x4f8>
    a54e: ee2f fb01    	vmul.f64	d15, d15, d1
    a552: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xa8f0 <orange_dsp::generated_condensed48::update+0x500>
    a556: ee00 fb01    	vmla.f64	d15, d0, d1
    a55a: ed91 0a08    	vldr	s0, [r1, #32]
    a55e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a562: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xa8f8 <orange_dsp::generated_condensed48::update+0x508>
    a566: ee00 9b01    	vmla.f64	d9, d0, d1
    a56a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xa900 <orange_dsp::generated_condensed48::update+0x510>
    a56e: ee00 3b01    	vmla.f64	d3, d0, d1
    a572: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xa908 <orange_dsp::generated_condensed48::update+0x518>
    a576: ee00 4b01    	vmla.f64	d4, d0, d1
    a57a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xa910 <orange_dsp::generated_condensed48::update+0x520>
    a57e: ee00 ab01    	vmla.f64	d10, d0, d1
    a582: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xa918 <orange_dsp::generated_condensed48::update+0x528>
    a586: ee00 bb01    	vmla.f64	d11, d0, d1
    a58a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xa920 <orange_dsp::generated_condensed48::update+0x530>
    a58e: ee00 cb01    	vmla.f64	d12, d0, d1
    a592: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xa928 <orange_dsp::generated_condensed48::update+0x538>
    a596: ee00 db01    	vmla.f64	d13, d0, d1
    a59a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xa930 <orange_dsp::generated_condensed48::update+0x540>
    a59e: ee00 eb01    	vmla.f64	d14, d0, d1
    a5a2: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xa938 <orange_dsp::generated_condensed48::update+0x548>
    a5a6: ee00 fb01    	vmla.f64	d15, d0, d1
    a5aa: ed91 0a09    	vldr	s0, [r1, #36]
    a5ae: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a5b2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xa940 <orange_dsp::generated_condensed48::update+0x550>
    a5b6: ee00 9b01    	vmla.f64	d9, d0, d1
    a5ba: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xa948 <orange_dsp::generated_condensed48::update+0x558>
    a5be: ee00 3b01    	vmla.f64	d3, d0, d1
    a5c2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xa950 <orange_dsp::generated_condensed48::update+0x560>
    a5c6: ee00 4b01    	vmla.f64	d4, d0, d1
    a5ca: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xa958 <orange_dsp::generated_condensed48::update+0x568>
    a5ce: ee00 ab01    	vmla.f64	d10, d0, d1
    a5d2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xa960 <orange_dsp::generated_condensed48::update+0x570>
    a5d6: ee00 bb01    	vmla.f64	d11, d0, d1
    a5da: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xa968 <orange_dsp::generated_condensed48::update+0x578>
    a5de: ee00 cb01    	vmla.f64	d12, d0, d1
    a5e2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xa970 <orange_dsp::generated_condensed48::update+0x580>
    a5e6: ee00 db01    	vmla.f64	d13, d0, d1
    a5ea: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xa978 <orange_dsp::generated_condensed48::update+0x588>
    a5ee: ee00 eb01    	vmla.f64	d14, d0, d1
    a5f2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xa980 <orange_dsp::generated_condensed48::update+0x590>
    a5f6: ee00 fb01    	vmla.f64	d15, d0, d1
    a5fa: ed91 0a0a    	vldr	s0, [r1, #40]
    a5fe: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a602: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xa988 <orange_dsp::generated_condensed48::update+0x598>
    a606: ee00 9b01    	vmla.f64	d9, d0, d1
    a60a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xa990 <orange_dsp::generated_condensed48::update+0x5a0>
    a60e: ee00 3b01    	vmla.f64	d3, d0, d1
    a612: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xa998 <orange_dsp::generated_condensed48::update+0x5a8>
    a616: ee00 4b01    	vmla.f64	d4, d0, d1
    a61a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xa9a0 <orange_dsp::generated_condensed48::update+0x5b0>
    a61e: ee00 ab01    	vmla.f64	d10, d0, d1
    a622: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xa9a8 <orange_dsp::generated_condensed48::update+0x5b8>
    a626: ee00 bb01    	vmla.f64	d11, d0, d1
    a62a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xa9b0 <orange_dsp::generated_condensed48::update+0x5c0>
    a62e: ee00 cb01    	vmla.f64	d12, d0, d1
    a632: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xa9b8 <orange_dsp::generated_condensed48::update+0x5c8>
    a636: ee00 db01    	vmla.f64	d13, d0, d1
    a63a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xa9c0 <orange_dsp::generated_condensed48::update+0x5d0>
    a63e: ee00 eb01    	vmla.f64	d14, d0, d1
    a642: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xa9c8 <orange_dsp::generated_condensed48::update+0x5d8>
    a646: ee00 fb01    	vmla.f64	d15, d0, d1
    a64a: ed91 0a0b    	vldr	s0, [r1, #44]
    a64e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a652: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xa9d0 <orange_dsp::generated_condensed48::update+0x5e0>
    a656: ee00 9b01    	vmla.f64	d9, d0, d1
    a65a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xa9d8 <orange_dsp::generated_condensed48::update+0x5e8>
    a65e: ee00 3b01    	vmla.f64	d3, d0, d1
    a662: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xa9e0 <orange_dsp::generated_condensed48::update+0x5f0>
    a666: ee00 4b01    	vmla.f64	d4, d0, d1
    a66a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xa9e8 <orange_dsp::generated_condensed48::update+0x5f8>
    a66e: ee00 ab01    	vmla.f64	d10, d0, d1
    a672: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xa9f0 <orange_dsp::generated_condensed48::update+0x600>
    a676: ee00 bb01    	vmla.f64	d11, d0, d1
    a67a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xa9f8 <orange_dsp::generated_condensed48::update+0x608>
    a67e: ee00 cb01    	vmla.f64	d12, d0, d1
    a682: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xaa00 <orange_dsp::generated_condensed48::update+0x610>
    a686: ee00 db01    	vmla.f64	d13, d0, d1
    a68a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xaa08 <orange_dsp::generated_condensed48::update+0x618>
    a68e: ee00 eb01    	vmla.f64	d14, d0, d1
    a692: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xaa10 <orange_dsp::generated_condensed48::update+0x620>
    a696: ee00 fb01    	vmla.f64	d15, d0, d1
    a69a: ed91 0a0c    	vldr	s0, [r1, #48]
    a69e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a6a2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xaa18 <orange_dsp::generated_condensed48::update+0x628>
    a6a6: ee00 9b01    	vmla.f64	d9, d0, d1
    a6aa: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xaa20 <orange_dsp::generated_condensed48::update+0x630>
    a6ae: ee00 3b01    	vmla.f64	d3, d0, d1
    a6b2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xaa28 <orange_dsp::generated_condensed48::update+0x638>
    a6b6: ee00 4b01    	vmla.f64	d4, d0, d1
    a6ba: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xaa30 <orange_dsp::generated_condensed48::update+0x640>
    a6be: ee00 ab01    	vmla.f64	d10, d0, d1
    a6c2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xaa38 <orange_dsp::generated_condensed48::update+0x648>
    a6c6: ee00 bb01    	vmla.f64	d11, d0, d1
    a6ca: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xaa40 <orange_dsp::generated_condensed48::update+0x650>
    a6ce: ee00 cb01    	vmla.f64	d12, d0, d1
    a6d2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xaa48 <orange_dsp::generated_condensed48::update+0x658>
    a6d6: ee00 db01    	vmla.f64	d13, d0, d1
    a6da: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xaa50 <orange_dsp::generated_condensed48::update+0x660>
    a6de: ee00 eb01    	vmla.f64	d14, d0, d1
    a6e2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xaa58 <orange_dsp::generated_condensed48::update+0x668>
    a6e6: ee00 fb01    	vmla.f64	d15, d0, d1
    a6ea: ed91 0a0d    	vldr	s0, [r1, #52]
    a6ee: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a6f2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xaa60 <orange_dsp::generated_condensed48::update+0x670>
    a6f6: ee00 9b01    	vmla.f64	d9, d0, d1
    a6fa: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xaa68 <orange_dsp::generated_condensed48::update+0x678>
    a6fe: ee00 3b01    	vmla.f64	d3, d0, d1
    a702: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xaa70 <orange_dsp::generated_condensed48::update+0x680>
    a706: ee00 4b01    	vmla.f64	d4, d0, d1
    a70a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xaa78 <orange_dsp::generated_condensed48::update+0x688>
    a70e: ee00 ab01    	vmla.f64	d10, d0, d1
    a712: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xaa80 <orange_dsp::generated_condensed48::update+0x690>
    a716: ee00 bb01    	vmla.f64	d11, d0, d1
    a71a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xaa88 <orange_dsp::generated_condensed48::update+0x698>
    a71e: ee00 cb01    	vmla.f64	d12, d0, d1
    a722: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xaa90 <orange_dsp::generated_condensed48::update+0x6a0>
    a726: ee00 db01    	vmla.f64	d13, d0, d1
    a72a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xaa98 <orange_dsp::generated_condensed48::update+0x6a8>
    a72e: ee00 eb01    	vmla.f64	d14, d0, d1
    a732: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xaaa0 <orange_dsp::generated_condensed48::update+0x6b0>
    a736: ee00 fb01    	vmla.f64	d15, d0, d1
    a73a: ed91 0a0e    	vldr	s0, [r1, #56]
    a73e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a742: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xaaa8 <orange_dsp::generated_condensed48::update+0x6b8>
    a746: ee00 9b01    	vmla.f64	d9, d0, d1
    a74a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xaab0 <orange_dsp::generated_condensed48::update+0x6c0>
    a74e: ee00 3b01    	vmla.f64	d3, d0, d1
    a752: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xaab8 <orange_dsp::generated_condensed48::update+0x6c8>
    a756: ee00 4b01    	vmla.f64	d4, d0, d1
    a75a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xaac0 <orange_dsp::generated_condensed48::update+0x6d0>
    a75e: ee00 ab01    	vmla.f64	d10, d0, d1
    a762: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xaac8 <orange_dsp::generated_condensed48::update+0x6d8>
    a766: ee00 bb01    	vmla.f64	d11, d0, d1
    a76a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xaad0 <orange_dsp::generated_condensed48::update+0x6e0>
    a76e: ee00 cb01    	vmla.f64	d12, d0, d1
    a772: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xaad8 <orange_dsp::generated_condensed48::update+0x6e8>
    a776: ee00 db01    	vmla.f64	d13, d0, d1
    a77a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xaae0 <orange_dsp::generated_condensed48::update+0x6f0>
    a77e: ee00 eb01    	vmla.f64	d14, d0, d1
    a782: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xaae8 <orange_dsp::generated_condensed48::update+0x6f8>
    a786: ee00 fb01    	vmla.f64	d15, d0, d1
    a78a: ed92 0a03    	vldr	s0, [r2, #12]
    a78e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a792: ed9f 1bd7    	vldr	d1, [pc, #860]          @ 0xaaf0 <orange_dsp::generated_condensed48::update+0x700>
    a796: ed8d 3b1c    	vstr	d3, [sp, #112]
    a79a: ee20 3b01    	vmul.f64	d3, d0, d1
    a79e: ed92 1a02    	vldr	s2, [r2, #8]
    a7a2: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    a7a6: ed8d 2b26    	vstr	d2, [sp, #152]
    a7aa: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xaaf8 <orange_dsp::generated_condensed48::update+0x708>
    a7ae: ee01 3b02    	vmla.f64	d3, d1, d2
    a7b2: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xab00 <orange_dsp::generated_condensed48::update+0x710>
    a7b6: ed8d 3b24    	vstr	d3, [sp, #144]
    a7ba: ee20 3b02    	vmul.f64	d3, d0, d2
    a7be: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xab08 <orange_dsp::generated_condensed48::update+0x718>
    a7c2: ee01 3b02    	vmla.f64	d3, d1, d2
    a7c6: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xab10 <orange_dsp::generated_condensed48::update+0x720>
    a7ca: ed8d 3b22    	vstr	d3, [sp, #136]
    a7ce: ee20 3b02    	vmul.f64	d3, d0, d2
    a7d2: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xab18 <orange_dsp::generated_condensed48::update+0x728>
    a7d6: ee01 3b02    	vmla.f64	d3, d1, d2
    a7da: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xab20 <orange_dsp::generated_condensed48::update+0x730>
    a7de: ed8d 3b20    	vstr	d3, [sp, #128]
    a7e2: ee20 3b02    	vmul.f64	d3, d0, d2
    a7e6: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xab28 <orange_dsp::generated_condensed48::update+0x738>
    a7ea: ee01 3b02    	vmla.f64	d3, d1, d2
    a7ee: f000 b99f    	b.w	0xab30 <orange_dsp::generated_condensed48::update+0x740> @ imm = #0x33e
    a7f2: bf00         	nop
    a7f4: bf00         	nop
    a7f6: bf00         	nop
    a7f8: 00 00 00 00  	.word	0x00000000
    a7fc: 00 00 00 00  	.word	0x00000000
    a800: 6e 40 0c 4e  	.word	0x4e0c406e
    a804: b8 53 e5 3f  	.word	0x3fe553b8
    a808: 1d fc 37 04  	.word	0x0437fc1d
    a80c: 79 af a1 bf  	.word	0xbfa1af79
    a810: b9 fa fd 9f  	.word	0x9ffdfab9
    a814: f4 27 e4 3f  	.word	0x3fe427f4
    a818: 00 04 d7 42  	.word	0x42d70400
    a81c: 2a a3 36 bf  	.word	0xbf36a32a
    a820: 70 c8 61 51  	.word	0x5161c870
    a824: 5a 52 e5 3f  	.word	0x3fe5525a
    a828: 02 5c c8 9d  	.word	0x9dc85c02
    a82c: b7 9d 6b bf  	.word	0xbf6b9db7
    a830: 1c a9 fe 69  	.word	0x69fea91c
    a834: 4b d6 c8 be  	.word	0xbec8d64b
    a838: 86 f6 e3 15  	.word	0x15e3f686
    a83c: 07 53 e5 3f  	.word	0x3fe55307
    a840: 00 40 2b 64  	.word	0x642b4000
    a844: 00 f7 fc 3e  	.word	0x3efcf700
    a848: 00 38 f8 32  	.word	0x32f83800
    a84c: 59 2a 22 bf  	.word	0xbf222a59
    a850: 50 7d a9 06  	.word	0x06a97d50
    a854: ed 51 e5 3f  	.word	0x3fe551ed
    a858: 00 b0 71 50  	.word	0x5071b000
    a85c: f9 aa 3b 3f  	.word	0x3f3baaf9
    a860: 00 50 74 cc  	.word	0xcc745000
    a864: 85 3f 2b 3f  	.word	0x3f2b3f85
    a868: d3 eb b9 11  	.word	0x11b9ebd3
    a86c: 6a 57 e2 3f  	.word	0x3fe2576a
    a870: ad 60 98 e7  	.word	0xe79860ad
    a874: 08 64 ad 3f  	.word	0x3fad6408
    a878: 7f 94 10 14  	.word	0x1410947f
    a87c: b3 53 e5 3f  	.word	0x3fe553b3
    a880: 00 57 2a 60  	.word	0x602a5700
    a884: be 0c 20 3f  	.word	0x3f200cbe
    a888: 80 77 28 6d  	.word	0x6d287780
    a88c: 13 30 60 bf  	.word	0xbf603013
    a890: c0 73 b0 a5  	.word	0xa5b073c0
    a894: af e0 53 3f  	.word	0x3f53e0af
    a898: 7b d9 80 93  	.word	0x9380d97b
    a89c: ec 6c 16 bf  	.word	0xbf166cec
    a8a0: d3 aa 3a 41  	.word	0x413aaad3
    a8a4: 3d 43 22 3f  	.word	0x3f22433d
    a8a8: 00 e0 4d 56  	.word	0x564de000
    a8ac: 7d 12 d7 be  	.word	0xbed7127d
    a8b0: 00 c0 23 17  	.word	0x1723c000
    a8b4: d4 54 cc 3e  	.word	0x3ecc54d4
    a8b8: e8 ec 6b f7  	.word	0xf76bece8
    a8bc: b5 46 85 bf  	.word	0xbf8546b5
    a8c0: ec 9e 19 25  	.word	0x25199eec
    a8c4: 3f 20 7a 3f  	.word	0x3f7a203f
    a8c8: 00 bc 71 51  	.word	0x5171bc00
    a8cc: e9 0e e8 be  	.word	0xbee80ee9
    a8d0: 00 58 7c c2  	.word	0xc27c5800
    a8d4: a2 97 f3 3e  	.word	0x3ef397a2
    a8d8: 40 29 8f f2  	.word	0xf28f2940
    a8dc: 07 4b 30 bf  	.word	0xbf304b07
    a8e0: c0 9e cb 16  	.word	0x16cb9ec0
    a8e4: c9 01 24 3f  	.word	0x3f2401c9
    a8e8: 00 b0 59 3b  	.word	0x3b59b000
    a8ec: 42 3f d0 be  	.word	0xbed03f42
    a8f0: 00 20 f5 6a  	.word	0x6af52000
    a8f4: 54 f3 c3 3e  	.word	0x3ec3f354
    a8f8: e1 e9 a5 17  	.word	0x17a5e9e1
    a8fc: 39 2c e2 3f  	.word	0x3fe22c39
    a900: 00 80 73 7b  	.word	0x7b738000
    a904: 85 e6 29 bf  	.word	0xbf29e685
    a908: 38 6a 78 c7  	.word	0xc7786a38
    a90c: 0e 13 e5 3f  	.word	0x3fe5130e
    a910: d5 25 7e c9  	.word	0xc97e25d5
    a914: 3b 18 22 3f  	.word	0x3f22183b
    a918: 00 c0 62 76  	.word	0x7662c000
    a91c: 28 dc d6 be  	.word	0xbed6dc28
    a920: 88 a9 60 cd  	.word	0xcd60a988
    a924: 9b 14 85 bf  	.word	0xbf85149b
    a928: 00 c6 25 b6  	.word	0xb625c600
    a92c: 7f 69 f3 3e  	.word	0x3ef3697f
    a930: 60 59 fb cf  	.word	0xcffb5960
    a934: a9 24 30 bf  	.word	0xbf3024a9
    a938: 00 b0 29 d1  	.word	0xd129b000
    a93c: ff 18 d0 be  	.word	0xbed018ff
    a940: a4 ed d1 ac  	.word	0xacd1eda4
    a944: a5 a0 d9 bf  	.word	0xbfd9a0a5
    a948: 00 a0 3a 41  	.word	0x413aa000
    a94c: 3d 43 22 3f  	.word	0x3f22433d
    a950: 00 b1 dd bb  	.word	0xbbddb100
    a954: 4a 9e 56 3f  	.word	0x3f569e4a
    a958: f0 00 87 47  	.word	0x478700f0
    a95c: b2 50 e5 3f  	.word	0x3fe550b2
    a960: 00 c0 54 95  	.word	0x9554c000
    a964: 4c 79 04 bf  	.word	0xbf04794c
    a968: e0 a6 12 00  	.word	0x0012a6e0
    a96c: 4d e1 b2 bf  	.word	0xbfb2e14d
    a970: 00 44 eb 06  	.word	0x06eb4400
    a974: c6 62 21 3f  	.word	0x3f2162c6
    a978: 00 85 3b ab  	.word	0xab3b8500
    a97c: 93 ea 5c bf  	.word	0xbf5cea93
    a980: 00 a0 92 0b  	.word	0x0b92a000
    a984: af d5 fc be  	.word	0xbefcd5af
    a988: 9c fd 2d 0f  	.word	0x0f2dfd9c
    a98c: 37 30 90 3f  	.word	0x3f903037
    a990: 00 60 96 55  	.word	0x55966000
    a994: 7d 12 d7 be  	.word	0xbed7127d
    a998: 00 c4 b5 93  	.word	0x93b5c400
    a99c: 32 93 0c bf  	.word	0xbf0c9332
    a9a0: 6c 10 55 95  	.word	0x9555106c
    a9a4: 4c 79 04 bf  	.word	0xbf04794c
    a9a8: 41 62 78 ce  	.word	0xce786241
    a9ac: d7 54 e5 3f  	.word	0x3fe554d7
    a9b0: 98 55 bc ec  	.word	0xecbc5598
    a9b4: 58 f0 bc bf  	.word	0xbfbcf058
    a9b8: 00 b8 98 37  	.word	0x3798b800
    a9bc: 05 a6 2a 3f  	.word	0x3f2aa605
    a9c0: 80 4d ae 0d  	.word	0x0dae4d80
    a9c4: 3b 29 66 bf  	.word	0xbf66293b
    a9c8: 00 20 8e f1  	.word	0xf18e2000
    a9cc: 37 19 06 bf  	.word	0xbf061937
    a9d0: 1d 38 33 59  	.word	0x5933381d
    a9d4: 56 75 68 3f  	.word	0x3f687556
    a9d8: 00 a8 d0 0b  	.word	0x0bd0a800
    a9dc: f2 6d b1 be  	.word	0xbeb16df2
    a9e0: 00 4d c5 90  	.word	0x90c54d00
    a9e4: 20 96 e5 be  	.word	0xbee59620
    a9e8: 9b a3 cc 47  	.word	0x47cca39b
    a9ec: e1 ee de be  	.word	0xbedeeee1
    a9f0: 00 28 7b 0c  	.word	0x0c7b2800
    a9f4: eb b4 e7 be  	.word	0xbee7b4eb
    a9f8: 99 31 6a 00  	.word	0x006a3199
    a9fc: 4a fc e0 3f  	.word	0x3fe0fc4a
    aa00: 00 56 ed 5a  	.word	0x5aed5600
    aa04: 4a 33 31 3f  	.word	0x3f31334a
    aa08: 00 dd 8c 97  	.word	0x978cdd00
    aa0c: 0a 98 3d bf  	.word	0xbf3d980a
    aa10: 00 60 46 bf  	.word	0xbf466000
    aa14: a6 b2 02 bf  	.word	0xbf02b2a6
    aa18: 8f 2d 3e ae  	.word	0xae3e2d8f
    aa1c: c6 fe 63 bf  	.word	0xbf63fec6
    aa20: 00 80 14 61  	.word	0x61148000
    aa24: 78 7f ac 3e  	.word	0x3eac7f78
    aa28: 00 99 65 eb  	.word	0xeb659900
    aa2c: b9 a5 e1 3e  	.word	0x3ee1a5b9
    aa30: 42 07 9c 38  	.word	0x389c0742
    aa34: da 49 d9 3e  	.word	0x3ed949da
    aa38: 00 44 6e 28  	.word	0x286e4400
    aa3c: 78 61 e3 3e  	.word	0x3ee36178
    aa40: e8 51 b8 a8  	.word	0xa8b851e8
    aa44: 57 8a be 3f  	.word	0x3fbe8a57
    aa48: 7e 6f 94 1d  	.word	0x1d946f7e
    aa4c: bc 4c e5 3f  	.word	0x3fe54cbc
    aa50: 88 6f ab ab  	.word	0xabab6f88
    aa54: 89 43 61 3f  	.word	0x3f614389
    aa58: 00 a0 46 82  	.word	0x8246a000
    aa5c: e2 2d 0a bf  	.word	0xbf0a2de2
    aa60: dc 27 9e 33  	.word	0x339e27dc
    aa64: ca 42 8f 3f  	.word	0x3f8f42ca
    aa68: 00 28 bb de  	.word	0xdebb2800
    aa6c: ef 46 d6 be  	.word	0xbed646ef
    aa70: 00 3a 71 ea  	.word	0xea713a00
    aa74: 18 97 0b bf  	.word	0xbf0b9718
    aa78: 5c 82 6e b3  	.word	0xb36e825c
    aa7c: ab c4 03 bf  	.word	0xbf03c4ab
    aa80: 00 e0 46 84  	.word	0x8446e000
    aa84: da 4c 0e bf  	.word	0xbf0e4cda
    aa88: ae 8d 1b ee  	.word	0xee1b8dae
    aa8c: 55 b2 b8 bf  	.word	0xbfb8b255
    aa90: 00 0c 02 92  	.word	0x92020c00
    aa94: 5d 3a 50 3f  	.word	0x3f503a5d
    aa98: 1e ed ee 91  	.word	0x91eeed1e
    aa9c: 9b 31 e5 3f  	.word	0x3fe5319b
    aaa0: 00 80 08 50  	.word	0x50088000
    aaa4: 51 c7 06 3f  	.word	0x3f06c751
    aaa8: 13 ae df e7  	.word	0xe7dfae13
    aaac: c9 94 40 3f  	.word	0x3f4094c9
    aab0: 00 10 e4 b2  	.word	0xb2e41000
    aab4: d4 a1 87 be  	.word	0xbe87a1d4
    aab8: 00 32 34 d9  	.word	0xd9343200
    aabc: b9 44 bd be  	.word	0xbebd44b9
    aac0: 3e 35 3c 4e  	.word	0x4e3c353e
    aac4: 7f f8 b4 be  	.word	0xbeb4f87f
    aac8: 00 9c 46 3b  	.word	0x3b469c00
    aacc: 57 12 c0 be  	.word	0xbec01257
    aad0: cb f4 e6 4e  	.word	0x4ee6f4cb
    aad4: 83 99 90 bf  	.word	0xbf909983
    aad8: 80 fd 31 82  	.word	0x8231fd80
    aadc: e2 2d 0a bf  	.word	0xbf0a2de2
    aae0: c0 1d 2a 86  	.word	0x862a1dc0
    aae4: 87 3b 18 3f  	.word	0x3f183b87
    aae8: 7b 92 42 7e  	.word	0x7e42927b
    aaec: a1 54 e5 3f  	.word	0x3fe554a1
    aaf0: b0 98 53 d6  	.word	0xd65398b0
    aaf4: be fa e3 bf  	.word	0xbfe3fabe
    aaf8: 52 d5 f2 b1  	.word	0xb1f2d552
    aafc: 45 95 d0 bf  	.word	0xbfd09545
    ab00: 00 d0 da c1  	.word	0xc1dad000
    ab04: b9 79 2c 3f  	.word	0x3f2c79b9
    ab08: 00 80 9b 20  	.word	0x209b8000
    ab0c: 85 a2 17 3f  	.word	0x3f17a285
    ab10: 00 fc 5c 3c  	.word	0x3c5cfc00
    ab14: 2b a2 61 3f  	.word	0x3f61a22b
    ab18: 00 8c 5c 5b  	.word	0x5b5c8c00
    ab1c: 94 45 4d 3f  	.word	0x3f4d4594
    ab20: 2c 61 fa a7  	.word	0xa7fa612c
    ab24: f3 e6 49 bf  	.word	0xbf49e6f3
    ab28: 00 58 84 dd  	.word	0xdd845800
    ab2c: 1b f9 44 3f  	.word	0x3f44f91b
    ab30: ed9f 2beb    	vldr	d2, [pc, #940]          @ 0xaee0 <orange_dsp::generated_condensed48::update+0xaf0>
    ab34: ed8d 3b1e    	vstr	d3, [sp, #120]
    ab38: ee20 3b02    	vmul.f64	d3, d0, d2
    ab3c: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xaee8 <orange_dsp::generated_condensed48::update+0xaf8>
    ab40: ee01 3b02    	vmla.f64	d3, d1, d2
    ab44: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xaef0 <orange_dsp::generated_condensed48::update+0xb00>
    ab48: ed8d 3b18    	vstr	d3, [sp, #96]
    ab4c: ee20 3b02    	vmul.f64	d3, d0, d2
    ab50: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xaef8 <orange_dsp::generated_condensed48::update+0xb08>
    ab54: ee01 3b02    	vmla.f64	d3, d1, d2
    ab58: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xaf00 <orange_dsp::generated_condensed48::update+0xb10>
    ab5c: ed8d 3b16    	vstr	d3, [sp, #88]
    ab60: ee20 3b02    	vmul.f64	d3, d0, d2
    ab64: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xaf08 <orange_dsp::generated_condensed48::update+0xb18>
    ab68: ee01 3b02    	vmla.f64	d3, d1, d2
    ab6c: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xaf10 <orange_dsp::generated_condensed48::update+0xb20>
    ab70: ed8d 3b14    	vstr	d3, [sp, #80]
    ab74: ee20 3b02    	vmul.f64	d3, d0, d2
    ab78: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xaf18 <orange_dsp::generated_condensed48::update+0xb28>
    ab7c: ee01 3b02    	vmla.f64	d3, d1, d2
    ab80: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xaf20 <orange_dsp::generated_condensed48::update+0xb30>
    ab84: ee20 2b02    	vmul.f64	d2, d0, d2
    ab88: ed9f 0be7    	vldr	d0, [pc, #924]          @ 0xaf28 <orange_dsp::generated_condensed48::update+0xb38>
    ab8c: ee01 2b00    	vmla.f64	d2, d1, d0
    ab90: ed91 0a10    	vldr	s0, [r1, #64]
    ab94: ed8d 2b10    	vstr	d2, [sp, #64]
    ab98: ed91 2a0f    	vldr	s4, [r1, #60]
    ab9c: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    aba0: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    aba4: ed8d 3b12    	vstr	d3, [sp, #72]
    aba8: ed9f 0be1    	vldr	d0, [pc, #900]          @ 0xaf30 <orange_dsp::generated_condensed48::update+0xb40>
    abac: ed9f 3be2    	vldr	d3, [pc, #904]          @ 0xaf38 <orange_dsp::generated_condensed48::update+0xb48>
    abb0: ee21 0b00    	vmul.f64	d0, d1, d0
    abb4: ee02 0b03    	vmla.f64	d0, d2, d3
    abb8: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xaf48 <orange_dsp::generated_condensed48::update+0xb58>
    abbc: ee21 1b03    	vmul.f64	d1, d1, d3
    abc0: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xaf50 <orange_dsp::generated_condensed48::update+0xb60>
    abc4: ee02 1b03    	vmla.f64	d1, d2, d3
    abc8: ed91 2a12    	vldr	s4, [r1, #72]
    abcc: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    abd0: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xaf60 <orange_dsp::generated_condensed48::update+0xb70>
    abd4: ed8d 5b28    	vstr	d5, [sp, #160]
    abd8: ee22 5b03    	vmul.f64	d5, d2, d3
    abdc: ed91 3a11    	vldr	s6, [r1, #68]
    abe0: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    abe4: ed8d 4b1a    	vstr	d4, [sp, #104]
    abe8: ed9f 4bdf    	vldr	d4, [pc, #892]          @ 0xaf68 <orange_dsp::generated_condensed48::update+0xb78>
    abec: ee03 5b04    	vmla.f64	d5, d3, d4
    abf0: ed9f 4be3    	vldr	d4, [pc, #908]          @ 0xaf80 <orange_dsp::generated_condensed48::update+0xb90>
    abf4: ee23 7b04    	vmul.f64	d7, d3, d4
    abf8: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xaf88 <orange_dsp::generated_condensed48::update+0xb98>
    abfc: ee02 7b03    	vmla.f64	d7, d2, d3
    ac00: ee38 3b00    	vadd.f64	d3, d8, d0
    ac04: ed92 0a04    	vldr	s0, [r2, #16]
    ac08: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ac0c: ed9f 2bcc    	vldr	d2, [pc, #816]          @ 0xaf40 <orange_dsp::generated_condensed48::update+0xb50>
    ac10: ee00 3b02    	vmla.f64	d3, d0, d2
    ac14: ee38 2b01    	vadd.f64	d2, d8, d1
    ac18: ed9f 1bcf    	vldr	d1, [pc, #828]          @ 0xaf58 <orange_dsp::generated_condensed48::update+0xb68>
    ac1c: ee00 2b01    	vmla.f64	d2, d0, d1
    ac20: ed92 1a05    	vldr	s2, [r2, #20]
    ac24: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    ac28: ed8d 2b0c    	vstr	d2, [sp, #48]
    ac2c: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xaf70 <orange_dsp::generated_condensed48::update+0xb80>
    ac30: ed8d 3b0e    	vstr	d3, [sp, #56]
    ac34: ee21 3b02    	vmul.f64	d3, d1, d2
    ac38: ed9f 2bcf    	vldr	d2, [pc, #828]          @ 0xaf78 <orange_dsp::generated_condensed48::update+0xb88>
    ac3c: ee00 3b02    	vmla.f64	d3, d0, d2
    ac40: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xaf90 <orange_dsp::generated_condensed48::update+0xba0>
    ac44: ed8d 3b0a    	vstr	d3, [sp, #40]
    ac48: ee21 3b02    	vmul.f64	d3, d1, d2
    ac4c: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xaf98 <orange_dsp::generated_condensed48::update+0xba8>
    ac50: ee00 3b02    	vmla.f64	d3, d0, d2
    ac54: ed91 0a14    	vldr	s0, [r1, #80]
    ac58: ed8d 3b06    	vstr	d3, [sp, #24]
    ac5c: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    ac60: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0xafa0 <orange_dsp::generated_condensed48::update+0xbb0>
    ac64: ee23 2b00    	vmul.f64	d2, d3, d0
    ac68: ed91 0a13    	vldr	s0, [r1, #76]
    ac6c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ac70: ed9f 4bcd    	vldr	d4, [pc, #820]          @ 0xafa8 <orange_dsp::generated_condensed48::update+0xbb8>
    ac74: ee00 2b04    	vmla.f64	d2, d0, d4
    ac78: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xafb8 <orange_dsp::generated_condensed48::update+0xbc8>
    ac7c: ee20 0b04    	vmul.f64	d0, d0, d4
    ac80: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xafc0 <orange_dsp::generated_condensed48::update+0xbd0>
    ac84: ee03 0b04    	vmla.f64	d0, d3, d4
    ac88: ed92 3a06    	vldr	s6, [r2, #24]
    ac8c: ed8d 5b08    	vstr	d5, [sp, #32]
    ac90: eeb0 5b48    	vmov.f64	d5, d8
    ac94: eeb7 8ac3    	vcvt.f64.f32	d8, s6
    ac98: ed9f 4bc5    	vldr	d4, [pc, #788]          @ 0xafb0 <orange_dsp::generated_condensed48::update+0xbc0>
    ac9c: ed8d 6b2a    	vstr	d6, [sp, #168]
    aca0: ee21 6b04    	vmul.f64	d6, d1, d4
    aca4: ee08 6b44    	vmls.f64	d6, d8, d4
    aca8: ed9f 4bc7    	vldr	d4, [pc, #796]          @ 0xafc8 <orange_dsp::generated_condensed48::update+0xbd8>
    acac: ee21 3b04    	vmul.f64	d3, d1, d4
    acb0: ee08 3b44    	vmls.f64	d3, d8, d4
    acb4: ed91 4a15    	vldr	s8, [r1, #84]
    acb8: eeb7 8ac4    	vcvt.f64.f32	d8, s8
    acbc: ed9f 1bc4    	vldr	d1, [pc, #784]          @ 0xafd0 <orange_dsp::generated_condensed48::update+0xbe0>
    acc0: eeb0 4b45    	vmov.f64	d4, d5
    acc4: ee08 4b01    	vmla.f64	d4, d8, d1
    acc8: ed9f 1b81    	vldr	d1, [pc, #516]          @ 0xaed0 <orange_dsp::generated_condensed48::update+0xae0>
    accc: ee35 8b01    	vadd.f64	d8, d5, d1
    acd0: eeb0 1b45    	vmov.f64	d1, d5
    acd4: ee35 9b09    	vadd.f64	d9, d5, d9
    acd8: ed9d 5b1c    	vldr	d5, [sp, #112]
    acdc: ee31 5b05    	vadd.f64	d5, d1, d5
    ace0: ed8d 5b1c    	vstr	d5, [sp, #112]
    ace4: ed9d 5b1a    	vldr	d5, [sp, #104]
    ace8: ee31 0b00    	vadd.f64	d0, d1, d0
    acec: ee31 5b05    	vadd.f64	d5, d1, d5
    acf0: ed8d 0b00    	vstr	d0, [sp]
    acf4: ed91 0a16    	vldr	s0, [r1, #88]
    acf8: ed8d 5b1a    	vstr	d5, [sp, #104]
    acfc: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ad00: ed9d 5b08    	vldr	d5, [sp, #32]
    ad04: ee31 2b02    	vadd.f64	d2, d1, d2
    ad08: ed8d 2b02    	vstr	d2, [sp, #8]
    ad0c: ed9f 2bb4    	vldr	d2, [pc, #720]          @ 0xafe0 <orange_dsp::generated_condensed48::update+0xbf0>
    ad10: ee31 5b05    	vadd.f64	d5, d1, d5
    ad14: ed8d 5b08    	vstr	d5, [sp, #32]
    ad18: ee31 5b07    	vadd.f64	d5, d1, d7
    ad1c: eeb0 7b41    	vmov.f64	d7, d1
    ad20: ee00 7b02    	vmla.f64	d7, d0, d2
    ad24: ed92 0a07    	vldr	s0, [r2, #28]
    ad28: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ad2c: ed9f 2baa    	vldr	d2, [pc, #680]          @ 0xafd8 <orange_dsp::generated_condensed48::update+0xbe8>
    ad30: ee00 4b02    	vmla.f64	d4, d0, d2
    ad34: ed9f 2bac    	vldr	d2, [pc, #688]          @ 0xafe8 <orange_dsp::generated_condensed48::update+0xbf8>
    ad38: ee00 7b02    	vmla.f64	d7, d0, d2
    ad3c: ed92 0a00    	vldr	s0, [r2]
    ad40: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ad44: ed9f 2b64    	vldr	d2, [pc, #400]          @ 0xaed8 <orange_dsp::generated_condensed48::update+0xae8>
    ad48: ee31 ab0a    	vadd.f64	d10, d1, d10
    ad4c: ee31 bb0b    	vadd.f64	d11, d1, d11
    ad50: ee31 cb0c    	vadd.f64	d12, d1, d12
    ad54: ee31 db0d    	vadd.f64	d13, d1, d13
    ad58: ee31 eb0e    	vadd.f64	d14, d1, d14
    ad5c: ee31 fb0f    	vadd.f64	d15, d1, d15
    ad60: ed9d 1b2c    	vldr	d1, [sp, #176]
    ad64: ee00 1b02    	vmla.f64	d1, d0, d2
    ad68: ee38 0b00    	vadd.f64	d0, d8, d0
    ad6c: ed8d 5b04    	vstr	d5, [sp, #16]
    ad70: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    ad74: ed80 0a00    	vstr	s0, [r0]
    ad78: ed9d 2b24    	vldr	d2, [sp, #144]
    ad7c: ed9d 5b22    	vldr	d5, [sp, #136]
    ad80: ed9d 8b1c    	vldr	d8, [sp, #112]
    ad84: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    ad88: ed80 0a01    	vstr	s0, [r0, #4]
    ad8c: ed9d 0b2e    	vldr	d0, [sp, #184]
    ad90: ee39 2b02    	vadd.f64	d2, d9, d2
    ad94: ee38 8b05    	vadd.f64	d8, d8, d5
    ad98: ed9d 5b20    	vldr	d5, [sp, #128]
    ad9c: ed9d 9b1a    	vldr	d9, [sp, #104]
    ada0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    ada4: ed80 0a02    	vstr	s0, [r0, #8]
    ada8: ee39 9b05    	vadd.f64	d9, d9, d5
    adac: ed9d 5b1e    	vldr	d5, [sp, #120]
    adb0: ed9d 0b2a    	vldr	d0, [sp, #168]
    adb4: ee3a ab05    	vadd.f64	d10, d10, d5
    adb8: ed9d 5b18    	vldr	d5, [sp, #96]
    adbc: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    adc0: ed80 0a03    	vstr	s0, [r0, #12]
    adc4: ed9d 0b28    	vldr	d0, [sp, #160]
    adc8: ee3b bb05    	vadd.f64	d11, d11, d5
    adcc: ed9d 5b16    	vldr	d5, [sp, #88]
    add0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    add4: ed80 0a04    	vstr	s0, [r0, #16]
    add8: ee3c cb05    	vadd.f64	d12, d12, d5
    addc: ed9d 5b14    	vldr	d5, [sp, #80]
    ade0: ed9d 0b26    	vldr	d0, [sp, #152]
    ade4: ee3d db05    	vadd.f64	d13, d13, d5
    ade8: ed9d 5b12    	vldr	d5, [sp, #72]
    adec: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    adf0: ed80 0a05    	vstr	s0, [r0, #20]
    adf4: eeb7 0bc2    	vcvt.f32.f64	s0, d2
    adf8: ed80 0a06    	vstr	s0, [r0, #24]
    adfc: ee3e eb05    	vadd.f64	d14, d14, d5
    ae00: ed9d 5b10    	vldr	d5, [sp, #64]
    ae04: eeb7 0bc8    	vcvt.f32.f64	s0, d8
    ae08: ed80 0a07    	vstr	s0, [r0, #28]
    ae0c: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    ae10: ed80 0a08    	vstr	s0, [r0, #32]
    ae14: ee3f 5b05    	vadd.f64	d5, d15, d5
    ae18: eeb7 0bca    	vcvt.f32.f64	s0, d10
    ae1c: ed80 0a09    	vstr	s0, [r0, #36]
    ae20: ed8d 5b24    	vstr	d5, [sp, #144]
    ae24: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    ae28: ed80 0a0a    	vstr	s0, [r0, #40]
    ae2c: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    ae30: ed80 0a0b    	vstr	s0, [r0, #44]
    ae34: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    ae38: ed80 0a0c    	vstr	s0, [r0, #48]
    ae3c: eeb7 0bce    	vcvt.f32.f64	s0, d14
    ae40: ed80 0a0d    	vstr	s0, [r0, #52]
    ae44: ed9d 0b24    	vldr	d0, [sp, #144]
    ae48: ed9d 5b0a    	vldr	d5, [sp, #40]
    ae4c: ed9d fb08    	vldr	d15, [sp, #32]
    ae50: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    ae54: ed80 0a0e    	vstr	s0, [r0, #56]
    ae58: ed9d 0b0e    	vldr	d0, [sp, #56]
    ae5c: ee3f 5b05    	vadd.f64	d5, d15, d5
    ae60: ed8d 5b2c    	vstr	d5, [sp, #176]
    ae64: ed9d 5b06    	vldr	d5, [sp, #24]
    ae68: ed9d fb04    	vldr	d15, [sp, #16]
    ae6c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    ae70: ed80 0a0f    	vstr	s0, [r0, #60]
    ae74: ed9d 0b0c    	vldr	d0, [sp, #48]
    ae78: ee3f 5b05    	vadd.f64	d5, d15, d5
    ae7c: ed9d fb02    	vldr	d15, [sp, #8]
    ae80: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    ae84: ed80 0a10    	vstr	s0, [r0, #64]
    ae88: ee3f 6b06    	vadd.f64	d6, d15, d6
    ae8c: ed9d fb00    	vldr	d15, [sp]
    ae90: ed9d 0b2c    	vldr	d0, [sp, #176]
    ae94: ee3f 3b03    	vadd.f64	d3, d15, d3
    ae98: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    ae9c: ed80 0a11    	vstr	s0, [r0, #68]
    aea0: eeb7 0bc5    	vcvt.f32.f64	s0, d5
    aea4: ed80 0a12    	vstr	s0, [r0, #72]
    aea8: eeb7 0bc6    	vcvt.f32.f64	s0, d6
    aeac: ed80 0a13    	vstr	s0, [r0, #76]
    aeb0: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    aeb4: ed80 0a14    	vstr	s0, [r0, #80]
    aeb8: eeb7 0bc4    	vcvt.f32.f64	s0, d4
    aebc: ed80 0a15    	vstr	s0, [r0, #84]
    aec0: eeb7 0bc7    	vcvt.f32.f64	s0, d7
    aec4: ed80 0a16    	vstr	s0, [r0, #88]
    aec8: b030         	add	sp, #0xc0
    aeca: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    aece: bd80         	pop	{r7, pc}
    aed0: 00 00 00 00  	.word	0x00000000
    aed4: 00 00 00 00  	.word	0x00000000
    aed8: 00 d0 fa 6c  	.word	0x6cfad000
    aedc: 57 5c 33 3f  	.word	0x3f335c57
    aee0: 00 00 f0 fb  	.word	0xfbf00000
    aee4: 9f 5c 00 3f  	.word	0x3f005c9f
    aee8: 00 00 05 30  	.word	0x30050000
    aeec: b5 84 11 3f  	.word	0x3f1184b5
    aef0: 60 0f fd c5  	.word	0xc5fd0f60
    aef4: 23 2d ae 3f  	.word	0x3fae2d23
    aef8: 6c 20 40 cf  	.word	0xcf40206c
    aefc: 9a 27 c0 3f  	.word	0x3fc0279a
    af00: 00 70 09 92  	.word	0x92097000
    af04: bd c9 1b bf  	.word	0xbf1bc9bd
    af08: 00 dc e1 8e  	.word	0x8ee1dc00
    af0c: 97 c0 2d bf  	.word	0xbf2dc097
    af10: a0 e2 31 a8  	.word	0xa831e2a0
    af14: d3 1b 57 3f  	.word	0x3f571bd3
    af18: 80 79 e7 3d  	.word	0x3de77980
    af1c: 00 be 68 3f  	.word	0x3f68be00
    af20: 00 00 4a 43  	.word	0x434a0000
    af24: 21 0b f7 3e  	.word	0x3ef70b21
    af28: 00 20 b8 b3  	.word	0xb3b82000
    af2c: 1f ac 08 3f  	.word	0x3f08ac1f
    af30: 21 77 ba 04  	.word	0x04ba7721
    af34: d6 95 d4 3f  	.word	0x3fd495d6
    af38: 2e a6 61 06  	.word	0x0661a62e
    af3c: af ba 97 3f  	.word	0x3f97baaf
    af40: b4 b2 17 07  	.word	0x0717b2b4
    af44: c1 e0 de bf  	.word	0xbfdee0c1
    af48: 4e 21 bf d3  	.word	0xd3bf214e
    af4c: 8c 53 e5 3f  	.word	0x3fe5538c
    af50: 06 3b 04 63  	.word	0x63043b06
    af54: 2e a9 ee 3e  	.word	0x3eeea92e
    af58: 32 49 70 0a  	.word	0x0a704932
    af5c: 13 66 35 3f  	.word	0x3f356613
    af60: cc 3c 73 b3  	.word	0xb3733ccc
    af64: 3d f9 d9 bf  	.word	0xbfd9f93d
    af68: c5 06 ea 2a  	.word	0x2aea06c5
    af6c: ea 1c b2 3f  	.word	0x3fb21cea
    af70: 17 45 45 2f  	.word	0x2f454517
    af74: c1 0a e8 bf  	.word	0xbfe80ac1
    af78: 8e 66 bb a2  	.word	0xa2bb668e
    af7c: 4b 3f c2 3f  	.word	0x3fc23f4b
    af80: 00 80 05 e9  	.word	0xe9058000
    af84: 0e 47 05 bf  	.word	0xbf05470e
    af88: 15 3d 58 94  	.word	0x94583d15
    af8c: 1b 54 e5 3f  	.word	0x3fe5541b
    af90: 00 28 d1 a8  	.word	0xa8d12800
    af94: 5e b2 22 bf  	.word	0xbf22b25e
    af98: 00 30 de 22  	.word	0x22de3000
    af9c: 72 6f 15 bf  	.word	0xbf156f72
    afa0: f8 77 d5 38  	.word	0x38d577f8
    afa4: 39 82 02 bf  	.word	0xbf028239
    afa8: 9c c0 64 fa  	.word	0xfa64c09c
    afac: 0d 51 e5 3f  	.word	0x3fe5510d
    afb0: 00 54 7c a3  	.word	0xa37c5400
    afb4: 21 ac 49 3f  	.word	0x3f49ac21
    afb8: 00 d8 0a 87  	.word	0x870ad800
    afbc: c7 22 37 bf  	.word	0xbf3722c7
    afc0: d3 50 49 84  	.word	0x844950d3
    afc4: 8b 4f e5 3f  	.word	0x3fe54f8b
    afc8: 00 20 48 a5  	.word	0xa5482000
    afcc: 15 5a 41 3f  	.word	0x3f415a15
    afd0: e1 b2 ba 0d  	.word	0x0dbab2e1
    afd4: 2e 55 e5 3f  	.word	0x3fe5552e
    afd8: a3 04 d7 f9  	.word	0xf9d704a3
    afdc: b3 75 fd 3e  	.word	0x3efd75b3
    afe0: c0 a7 95 60  	.word	0x6095a7c0
    afe4: 2f 85 73 3f  	.word	0x3f73852f
    afe8: 09 3f de 71  	.word	0x71de3f09
    afec: 70 c5 ef 3f  	.word	0x3fefc570

0000aff0 <__aeabi_memcpy4>:
    aff0: 2a04         	cmp	r2, #0x4
    aff2: d309         	blo	0xb008 <__aeabi_memcpy4+0x18> @ imm = #0x12
    aff4: b5d0         	push	{r4, r6, r7, lr}
    aff6: af02         	add	r7, sp, #0x8
    aff8: f1a2 0e04    	sub.w	lr, r2, #0x4
    affc: ea6f 030e    	mvn.w	r3, lr
    b000: f013 0f0c    	tst.w	r3, #0xc
    b004: d106         	bne	0xb014 <__aeabi_memcpy4+0x24> @ imm = #0xc
    b006: e023         	b	0xb050 <__aeabi_memcpy4+0x60> @ imm = #0x46
    b008: 460b         	mov	r3, r1
    b00a: 4684         	mov	r12, r0
    b00c: 4660         	mov	r0, r12
    b00e: 4619         	mov	r1, r3
    b010: f000 b83c    	b.w	0xb08c <compiler_builtins::mem::memcpy> @ imm = #0x78
    b014: 460b         	mov	r3, r1
    b016: 4684         	mov	r12, r0
    b018: f853 4b04    	ldr	r4, [r3], #4
    b01c: f01e 0f0c    	tst.w	lr, #0xc
    b020: f84c 4b04    	str	r4, [r12], #4
    b024: d009         	beq	0xb03a <__aeabi_memcpy4+0x4a> @ imm = #0x12
    b026: 684b         	ldr	r3, [r1, #0x4]
    b028: 6043         	str	r3, [r0, #0x4]
    b02a: f00e 030c    	and	r3, lr, #0xc
    b02e: 2b04         	cmp	r3, #0x4
    b030: d107         	bne	0xb042 <__aeabi_memcpy4+0x52> @ imm = #0xe
    b032: 3a08         	subs	r2, #0x8
    b034: 3108         	adds	r1, #0x8
    b036: 3008         	adds	r0, #0x8
    b038: e008         	b	0xb04c <__aeabi_memcpy4+0x5c> @ imm = #0x10
    b03a: 4672         	mov	r2, lr
    b03c: 4660         	mov	r0, r12
    b03e: 4619         	mov	r1, r3
    b040: e006         	b	0xb050 <__aeabi_memcpy4+0x60> @ imm = #0xc
    b042: 688b         	ldr	r3, [r1, #0x8]
    b044: 3a0c         	subs	r2, #0xc
    b046: 6083         	str	r3, [r0, #0x8]
    b048: 310c         	adds	r1, #0xc
    b04a: 300c         	adds	r0, #0xc
    b04c: 4684         	mov	r12, r0
    b04e: 460b         	mov	r3, r1
    b050: f1be 0f0c    	cmp.w	lr, #0xc
    b054: d314         	blo	0xb080 <__aeabi_memcpy4+0x90> @ imm = #0x28
    b056: 4684         	mov	r12, r0
    b058: 460b         	mov	r3, r1
    b05a: 6818         	ldr	r0, [r3]
    b05c: 3a10         	subs	r2, #0x10
    b05e: f8cc 0000    	str.w	r0, [r12]
    b062: 2a03         	cmp	r2, #0x3
    b064: 6858         	ldr	r0, [r3, #0x4]
    b066: f8cc 0004    	str.w	r0, [r12, #0x4]
    b06a: 6898         	ldr	r0, [r3, #0x8]
    b06c: f8cc 0008    	str.w	r0, [r12, #0x8]
    b070: 68d8         	ldr	r0, [r3, #0xc]
    b072: f103 0310    	add.w	r3, r3, #0x10
    b076: f8cc 000c    	str.w	r0, [r12, #0xc]
    b07a: f10c 0c10    	add.w	r12, r12, #0x10
    b07e: d8ec         	bhi	0xb05a <__aeabi_memcpy4+0x6a> @ imm = #-0x28
    b080: e8bd 40d0    	pop.w	{r4, r6, r7, lr}
    b084: 4660         	mov	r0, r12
    b086: 4619         	mov	r1, r3
    b088: f000 b800    	b.w	0xb08c <compiler_builtins::mem::memcpy> @ imm = #0x0

0000b08c <compiler_builtins::mem::memcpy>:
    b08c: b5f0         	push	{r4, r5, r6, r7, lr}
    b08e: af03         	add	r7, sp, #0xc
    b090: e92d 0f00    	push.w	{r8, r9, r10, r11}
    b094: b089         	sub	sp, #0x24
    b096: 4680         	mov	r8, r0
    b098: 2a10         	cmp	r2, #0x10
    b09a: d321         	blo	0xb0e0 <compiler_builtins::mem::memcpy+0x54> @ imm = #0x42
    b09c: f1c8 0000    	rsb.w	r0, r8, #0x0
    b0a0: f000 0a03    	and	r10, r0, #0x3
    b0a4: eb08 030a    	add.w	r3, r8, r10
    b0a8: 4598         	cmp	r8, r3
    b0aa: d237         	bhs	0xb11c <compiler_builtins::mem::memcpy+0x90> @ imm = #0x6e
    b0ac: f1aa 0601    	sub.w	r6, r10, #0x1
    b0b0: 4644         	mov	r4, r8
    b0b2: 460d         	mov	r5, r1
    b0b4: f1ba 0f00    	cmp.w	r10, #0x0
    b0b8: d01f         	beq	0xb0fa <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x3e
    b0ba: 460d         	mov	r5, r1
    b0bc: 4644         	mov	r4, r8
    b0be: f815 0b01    	ldrb	r0, [r5], #1
    b0c2: f1ba 0f01    	cmp.w	r10, #0x1
    b0c6: f804 0b01    	strb	r0, [r4], #1
    b0ca: d016         	beq	0xb0fa <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x2c
    b0cc: 7848         	ldrb	r0, [r1, #0x1]
    b0ce: f1ba 0f02    	cmp.w	r10, #0x2
    b0d2: f888 0001    	strb.w	r0, [r8, #0x1]
    b0d6: d10a         	bne	0xb0ee <compiler_builtins::mem::memcpy+0x62> @ imm = #0x14
    b0d8: 1c8d         	adds	r5, r1, #0x2
    b0da: f108 0402    	add.w	r4, r8, #0x2
    b0de: e00c         	b	0xb0fa <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x18
    b0e0: 46c4         	mov	r12, r8
    b0e2: eb0c 0302    	add.w	r3, r12, r2
    b0e6: 459c         	cmp	r12, r3
    b0e8: f0c0 80e3    	blo.w	0xb2b2 <compiler_builtins::mem::memcpy+0x226> @ imm = #0x1c6
    b0ec: e10b         	b	0xb306 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x216
    b0ee: 1ccd         	adds	r5, r1, #0x3
    b0f0: f108 0403    	add.w	r4, r8, #0x3
    b0f4: 7888         	ldrb	r0, [r1, #0x2]
    b0f6: f888 0002    	strb.w	r0, [r8, #0x2]
    b0fa: 2e03         	cmp	r6, #0x3
    b0fc: d30e         	blo	0xb11c <compiler_builtins::mem::memcpy+0x90> @ imm = #0x1c
    b0fe: 1f2e         	subs	r6, r5, #0x4
    b100: 1f25         	subs	r5, r4, #0x4
    b102: f816 0f04    	ldrb	r0, [r6, #4]!
    b106: f805 0f04    	strb	r0, [r5, #4]!
    b10a: 7870         	ldrb	r0, [r6, #0x1]
    b10c: 7068         	strb	r0, [r5, #0x1]
    b10e: 78b0         	ldrb	r0, [r6, #0x2]
    b110: 70a8         	strb	r0, [r5, #0x2]
    b112: 78f0         	ldrb	r0, [r6, #0x3]
    b114: 70e8         	strb	r0, [r5, #0x3]
    b116: 1d28         	adds	r0, r5, #0x4
    b118: 4298         	cmp	r0, r3
    b11a: d1f2         	bne	0xb102 <compiler_builtins::mem::memcpy+0x76> @ imm = #-0x1c
    b11c: eba2 0b0a    	sub.w	r11, r2, r10
    b120: eb01 040a    	add.w	r4, r1, r10
    b124: f02b 0203    	bic	r2, r11, #0x3
    b128: f014 0003    	ands	r0, r4, #0x3
    b12c: eb03 0c02    	add.w	r12, r3, r2
    b130: d063         	beq	0xb1fa <compiler_builtins::mem::memcpy+0x16e> @ imm = #0xc6
    b132: f04f 0900    	mov.w	r9, #0x0
    b136: f1c0 0604    	rsb.w	r6, r0, #0x4
    b13a: 9204         	str	r2, [sp, #0x10]
    b13c: aa08         	add	r2, sp, #0x20
    b13e: f8cd 9020    	str.w	r9, [sp, #0x20]
    b142: 4402         	add	r2, r0
    b144: 07f5         	lsls	r5, r6, #0x1f
    b146: bf1e         	ittt	ne
    b148: 7825         	ldrbne	r5, [r4]
    b14a: 7015         	strbne	r5, [r2]
    b14c: f04f 0901    	movne.w	r9, #0x1
    b150: 07b6         	lsls	r6, r6, #0x1e
    b152: bf44         	itt	mi
    b154: f834 6009    	ldrhmi.w	r6, [r4, r9]
    b158: f822 6009    	strhmi.w	r6, [r2, r9]
    b15c: 1a25         	subs	r5, r4, r0
    b15e: 9405         	str	r4, [sp, #0x14]
    b160: 1d1c         	adds	r4, r3, #0x4
    b162: 9a08         	ldr	r2, [sp, #0x20]
    b164: ea4f 0ec0    	lsl.w	lr, r0, #0x3
    b168: 4564         	cmp	r4, r12
    b16a: f1ce 0400    	rsb.w	r4, lr, #0x0
    b16e: e9cd 0402    	strd	r0, r4, [sp, #8]
    b172: d25b         	bhs	0xb22c <compiler_builtins::mem::memcpy+0x1a0> @ imm = #0xb6
    b174: 4243         	rsbs	r3, r0, #0
    b176: 4646         	mov	r6, r8
    b178: f8cd b000    	str.w	r11, [sp]
    b17c: eb01 0803    	add.w	r8, r1, r3
    b180: f004 0b18    	and	r11, r4, #0x18
    b184: 9601         	str	r6, [sp, #0x4]
    b186: eb08 050a    	add.w	r5, r8, r10
    b18a: eb06 040a    	add.w	r4, r6, r10
    b18e: fa22 f10e    	lsr.w	r1, r2, lr
    b192: f8d5 9004    	ldr.w	r9, [r5, #0x4]
    b196: fa09 f20b    	lsl.w	r2, r9, r11
    b19a: 4311         	orrs	r1, r2
    b19c: 4622         	mov	r2, r4
    b19e: f842 1b08    	str	r1, [r2], #8
    b1a2: 4562         	cmp	r2, r12
    b1a4: d244         	bhs	0xb230 <compiler_builtins::mem::memcpy+0x1a4> @ imm = #0x88
    b1a6: 68a9         	ldr	r1, [r5, #0x8]
    b1a8: fa29 f30e    	lsr.w	r3, r9, lr
    b1ac: fa01 f00b    	lsl.w	r0, r1, r11
    b1b0: 4318         	orrs	r0, r3
    b1b2: f104 030c    	add.w	r3, r4, #0xc
    b1b6: 4563         	cmp	r3, r12
    b1b8: 6060         	str	r0, [r4, #0x4]
    b1ba: d23c         	bhs	0xb236 <compiler_builtins::mem::memcpy+0x1aa> @ imm = #0x78
    b1bc: f8d5 900c    	ldr.w	r9, [r5, #0xc]
    b1c0: fa21 f00e    	lsr.w	r0, r1, lr
    b1c4: fa09 f10b    	lsl.w	r1, r9, r11
    b1c8: 4308         	orrs	r0, r1
    b1ca: 6010         	str	r0, [r2]
    b1cc: f104 0010    	add.w	r0, r4, #0x10
    b1d0: 4560         	cmp	r0, r12
    b1d2: d235         	bhs	0xb240 <compiler_builtins::mem::memcpy+0x1b4> @ imm = #0x6a
    b1d4: 692a         	ldr	r2, [r5, #0x10]
    b1d6: fa29 f00e    	lsr.w	r0, r9, lr
    b1da: 3610         	adds	r6, #0x10
    b1dc: f108 0810    	add.w	r8, r8, #0x10
    b1e0: fa02 f10b    	lsl.w	r1, r2, r11
    b1e4: 4308         	orrs	r0, r1
    b1e6: 6018         	str	r0, [r3]
    b1e8: eb06 030a    	add.w	r3, r6, r10
    b1ec: 1d18         	adds	r0, r3, #0x4
    b1ee: 4560         	cmp	r0, r12
    b1f0: d3c9         	blo	0xb186 <compiler_builtins::mem::memcpy+0xfa> @ imm = #-0x6e
    b1f2: eb08 050a    	add.w	r5, r8, r10
    b1f6: 4691         	mov	r9, r2
    b1f8: e023         	b	0xb242 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x46
    b1fa: 4563         	cmp	r3, r12
    b1fc: d252         	bhs	0xb2a4 <compiler_builtins::mem::memcpy+0x218> @ imm = #0xa4
    b1fe: 4621         	mov	r1, r4
    b200: 6808         	ldr	r0, [r1]
    b202: f843 0b04    	str	r0, [r3], #4
    b206: 4563         	cmp	r3, r12
    b208: d24c         	bhs	0xb2a4 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x98
    b20a: 6848         	ldr	r0, [r1, #0x4]
    b20c: f843 0b04    	str	r0, [r3], #4
    b210: 4563         	cmp	r3, r12
    b212: bf3e         	ittt	lo
    b214: 6888         	ldrlo	r0, [r1, #0x8]
    b216: f843 0b04    	strlo	r0, [r3], #4
    b21a: 4563         	cmplo	r3, r12
    b21c: d242         	bhs	0xb2a4 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x84
    b21e: 68c8         	ldr	r0, [r1, #0xc]
    b220: 3110         	adds	r1, #0x10
    b222: f843 0b04    	str	r0, [r3], #4
    b226: 4563         	cmp	r3, r12
    b228: d3ea         	blo	0xb200 <compiler_builtins::mem::memcpy+0x174> @ imm = #-0x2c
    b22a: e03b         	b	0xb2a4 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x76
    b22c: 4691         	mov	r9, r2
    b22e: e00a         	b	0xb246 <compiler_builtins::mem::memcpy+0x1ba> @ imm = #0x14
    b230: 3504         	adds	r5, #0x4
    b232: 1d23         	adds	r3, r4, #0x4
    b234: e005         	b	0xb242 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0xa
    b236: 3508         	adds	r5, #0x8
    b238: f104 0308    	add.w	r3, r4, #0x8
    b23c: 4689         	mov	r9, r1
    b23e: e000         	b	0xb242 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x0
    b240: 350c         	adds	r5, #0xc
    b242: e9dd b800    	ldrd	r11, r8, [sp]
    b246: 9802         	ldr	r0, [sp, #0x8]
    b248: 2200         	movs	r2, #0x0
    b24a: f88d 201c    	strb.w	r2, [sp, #0x1c]
    b24e: 2801         	cmp	r0, #0x1
    b250: f807 2c26    	strb	r2, [r7, #-38]
    b254: d10e         	bne	0xb274 <compiler_builtins::mem::memcpy+0x1e8> @ imm = #0x1c
    b256: ae07         	add	r6, sp, #0x1c
    b258: 2400         	movs	r4, #0x0
    b25a: 2000         	movs	r0, #0x0
    b25c: 9905         	ldr	r1, [sp, #0x14]
    b25e: 07c9         	lsls	r1, r1, #0x1f
    b260: d013         	beq	0xb28a <compiler_builtins::mem::memcpy+0x1fe> @ imm = #0x26
    b262: 1d29         	adds	r1, r5, #0x4
    b264: 5c08         	ldrb	r0, [r1, r0]
    b266: 7030         	strb	r0, [r6]
    b268: f817 0c26    	ldrb	r0, [r7, #-38]
    b26c: f89d 201c    	ldrb.w	r2, [sp, #0x1c]
    b270: 0400         	lsls	r0, r0, #0x10
    b272: e00b         	b	0xb28c <compiler_builtins::mem::memcpy+0x200> @ imm = #0x16
    b274: 7968         	ldrb	r0, [r5, #0x5]
    b276: f1a7 0626    	sub.w	r6, r7, #0x26
    b27a: 792a         	ldrb	r2, [r5, #0x4]
    b27c: f88d 201c    	strb.w	r2, [sp, #0x1c]
    b280: 0204         	lsls	r4, r0, #0x8
    b282: 2002         	movs	r0, #0x2
    b284: 9905         	ldr	r1, [sp, #0x14]
    b286: 07c9         	lsls	r1, r1, #0x1f
    b288: d1eb         	bne	0xb262 <compiler_builtins::mem::memcpy+0x1d6> @ imm = #-0x2a
    b28a: 2000         	movs	r0, #0x0
    b28c: 4320         	orrs	r0, r4
    b28e: fa29 f10e    	lsr.w	r1, r9, lr
    b292: 4310         	orrs	r0, r2
    b294: 9a03         	ldr	r2, [sp, #0xc]
    b296: f002 0218    	and	r2, r2, #0x18
    b29a: 4090         	lsls	r0, r2
    b29c: e9dd 2404    	ldrd	r2, r4, [sp, #16]
    b2a0: 4308         	orrs	r0, r1
    b2a2: 6018         	str	r0, [r3]
    b2a4: 18a1         	adds	r1, r4, r2
    b2a6: f00b 0203    	and	r2, r11, #0x3
    b2aa: eb0c 0302    	add.w	r3, r12, r2
    b2ae: 459c         	cmp	r12, r3
    b2b0: d229         	bhs	0xb306 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x52
    b2b2: 1e56         	subs	r6, r2, #0x1
    b2b4: f012 0003    	ands	r0, r2, #0x3
    b2b8: d012         	beq	0xb2e0 <compiler_builtins::mem::memcpy+0x254> @ imm = #0x24
    b2ba: 460a         	mov	r2, r1
    b2bc: 4665         	mov	r5, r12
    b2be: f812 4b01    	ldrb	r4, [r2], #1
    b2c2: 2801         	cmp	r0, #0x1
    b2c4: f805 4b01    	strb	r4, [r5], #1
    b2c8: d00c         	beq	0xb2e4 <compiler_builtins::mem::memcpy+0x258> @ imm = #0x18
    b2ca: 784a         	ldrb	r2, [r1, #0x1]
    b2cc: 2802         	cmp	r0, #0x2
    b2ce: f88c 2001    	strb.w	r2, [r12, #0x1]
    b2d2: d11d         	bne	0xb310 <compiler_builtins::mem::memcpy+0x284> @ imm = #0x3a
    b2d4: 1c8a         	adds	r2, r1, #0x2
    b2d6: f10c 0502    	add.w	r5, r12, #0x2
    b2da: 2e03         	cmp	r6, #0x3
    b2dc: d204         	bhs	0xb2e8 <compiler_builtins::mem::memcpy+0x25c> @ imm = #0x8
    b2de: e012         	b	0xb306 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x24
    b2e0: 4665         	mov	r5, r12
    b2e2: 460a         	mov	r2, r1
    b2e4: 2e03         	cmp	r6, #0x3
    b2e6: d30e         	blo	0xb306 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x1c
    b2e8: 1f11         	subs	r1, r2, #0x4
    b2ea: 1f2a         	subs	r2, r5, #0x4
    b2ec: f811 0f04    	ldrb	r0, [r1, #4]!
    b2f0: f802 0f04    	strb	r0, [r2, #4]!
    b2f4: 7848         	ldrb	r0, [r1, #0x1]
    b2f6: 7050         	strb	r0, [r2, #0x1]
    b2f8: 7888         	ldrb	r0, [r1, #0x2]
    b2fa: 7090         	strb	r0, [r2, #0x2]
    b2fc: 78c8         	ldrb	r0, [r1, #0x3]
    b2fe: 70d0         	strb	r0, [r2, #0x3]
    b300: 1d10         	adds	r0, r2, #0x4
    b302: 4298         	cmp	r0, r3
    b304: d1f2         	bne	0xb2ec <compiler_builtins::mem::memcpy+0x260> @ imm = #-0x1c
    b306: 4640         	mov	r0, r8
    b308: b009         	add	sp, #0x24
    b30a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    b30e: bdf0         	pop	{r4, r5, r6, r7, pc}
    b310: 1cca         	adds	r2, r1, #0x3
    b312: f10c 0503    	add.w	r5, r12, #0x3
    b316: 7888         	ldrb	r0, [r1, #0x2]
    b318: f88c 0002    	strb.w	r0, [r12, #0x2]
    b31c: 2e03         	cmp	r6, #0x3
    b31e: d2e3         	bhs	0xb2e8 <compiler_builtins::mem::memcpy+0x25c> @ imm = #-0x3a
    b320: e7f1         	b	0xb306 <compiler_builtins::mem::memcpy+0x27a> @ imm = #-0x1e

0000b322 <__aeabi_memclr4>:
    b322: b580         	push	{r7, lr}
    b324: 466f         	mov	r7, sp
    b326: 2904         	cmp	r1, #0x4
    b328: d305         	blo	0xb336 <__aeabi_memclr4+0x14> @ imm = #0xa
    b32a: 1f0b         	subs	r3, r1, #0x4
    b32c: 43da         	mvns	r2, r3
    b32e: f012 0f0c    	tst.w	r2, #0xc
    b332: d102         	bne	0xb33a <__aeabi_memclr4+0x18> @ imm = #0x4
    b334: e01a         	b	0xb36c <__aeabi_memclr4+0x4a> @ imm = #0x34
    b336: 4602         	mov	r2, r0
    b338: e024         	b	0xb384 <__aeabi_memclr4+0x62> @ imm = #0x48
    b33a: f04f 0c00    	mov.w	r12, #0x0
    b33e: 4602         	mov	r2, r0
    b340: f842 cb04    	str	r12, [r2], #4
    b344: f013 0f0c    	tst.w	r3, #0xc
    b348: d008         	beq	0xb35c <__aeabi_memclr4+0x3a> @ imm = #0x10
    b34a: f003 020c    	and	r2, r3, #0xc
    b34e: f8c0 c004    	str.w	r12, [r0, #0x4]
    b352: 2a04         	cmp	r2, #0x4
    b354: d105         	bne	0xb362 <__aeabi_memclr4+0x40> @ imm = #0xa
    b356: 3908         	subs	r1, #0x8
    b358: 3008         	adds	r0, #0x8
    b35a: e006         	b	0xb36a <__aeabi_memclr4+0x48> @ imm = #0xc
    b35c: 4619         	mov	r1, r3
    b35e: 4610         	mov	r0, r2
    b360: e004         	b	0xb36c <__aeabi_memclr4+0x4a> @ imm = #0x8
    b362: 2200         	movs	r2, #0x0
    b364: 390c         	subs	r1, #0xc
    b366: 6082         	str	r2, [r0, #0x8]
    b368: 300c         	adds	r0, #0xc
    b36a: 4602         	mov	r2, r0
    b36c: 2b0c         	cmp	r3, #0xc
    b36e: d309         	blo	0xb384 <__aeabi_memclr4+0x62> @ imm = #0x12
    b370: 2300         	movs	r3, #0x0
    b372: 4602         	mov	r2, r0
    b374: 3910         	subs	r1, #0x10
    b376: e9c2 3300    	strd	r3, r3, [r2]
    b37a: e9c2 3302    	strd	r3, r3, [r2, #8]
    b37e: 3210         	adds	r2, #0x10
    b380: 2903         	cmp	r1, #0x3
    b382: d8f7         	bhi	0xb374 <__aeabi_memclr4+0x52> @ imm = #-0x12
    b384: 1850         	adds	r0, r2, r1
    b386: 4282         	cmp	r2, r0
    b388: d221         	bhs	0xb3ce <__aeabi_memclr4+0xac> @ imm = #0x42
    b38a: f1a1 0c01    	sub.w	r12, r1, #0x1
    b38e: f011 0303    	ands	r3, r1, #0x3
    b392: d00c         	beq	0xb3ae <__aeabi_memclr4+0x8c> @ imm = #0x18
    b394: f04f 0e00    	mov.w	lr, #0x0
    b398: 4611         	mov	r1, r2
    b39a: f801 eb01    	strb	lr, [r1], #1
    b39e: 2b01         	cmp	r3, #0x1
    b3a0: d00a         	beq	0xb3b8 <__aeabi_memclr4+0x96> @ imm = #0x14
    b3a2: 2b02         	cmp	r3, #0x2
    b3a4: f882 e001    	strb.w	lr, [r2, #0x1]
    b3a8: d103         	bne	0xb3b2 <__aeabi_memclr4+0x90> @ imm = #0x6
    b3aa: 1c91         	adds	r1, r2, #0x2
    b3ac: e004         	b	0xb3b8 <__aeabi_memclr4+0x96> @ imm = #0x8
    b3ae: 4611         	mov	r1, r2
    b3b0: e002         	b	0xb3b8 <__aeabi_memclr4+0x96> @ imm = #0x4
    b3b2: 2100         	movs	r1, #0x0
    b3b4: 7091         	strb	r1, [r2, #0x2]
    b3b6: 1cd1         	adds	r1, r2, #0x3
    b3b8: f1bc 0f03    	cmp.w	r12, #0x3
    b3bc: bf38         	it	lo
    b3be: bd80         	poplo	{r7, pc}
    b3c0: 3904         	subs	r1, #0x4
    b3c2: 2200         	movs	r2, #0x0
    b3c4: f841 2f04    	str	r2, [r1, #4]!
    b3c8: 1d0b         	adds	r3, r1, #0x4
    b3ca: 4283         	cmp	r3, r0
    b3cc: d1fa         	bne	0xb3c4 <__aeabi_memclr4+0xa2> @ imm = #-0xc
    b3ce: bd80         	pop	{r7, pc}

0000b3d0 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.0>:
    b3d0: 00 1b 32 ef 7b e8 fe be         ..2.{...
    b3d8: 00 00 00 00 00 00 00 00         ........
    b3e0: 00 00 00 00 00 00 00 00         ........
    b3e8: 00 00 00 00 00 00 00 00         ........
    b3f0: 00 00 00 00 00 00 00 00         ........
    b3f8: 00 00 00 00 00 00 00 00         ........
    b400: 00 00 00 00 00 00 00 00         ........
    b408: 00 00 00 00 00 00 00 00         ........
    b410: 00 00 00 00 00 00 00 00         ........
    b418: 00 d0 79 92 c1 13 14 bf         ..y.....
    b420: 00 00 00 00 00 00 00 00         ........
    b428: 00 00 00 00 00 00 00 00         ........
    b430: 00 00 00 00 00 00 00 00         ........
    b438: 00 00 00 00 00 00 00 00         ........
    b440: 00 00 00 00 00 00 00 00         ........
    b448: 00 00 00 00 00 00 00 00         ........
    b450: 00 00 00 00 00 00 00 00         ........
    b458: 00 00 00 00 00 00 00 00         ........
    b460: 00 90 5d 19 23 52 1e bf         ..].#R..
    b468: 91 16 e3 65 5b cd 17 3f         ...e[..?
    b470: 00 00 00 00 00 00 00 00         ........
    b478: 00 00 00 00 00 00 00 00         ........
    b480: 00 00 00 00 00 00 00 00         ........
    b488: 00 00 00 00 00 00 00 00         ........
    b490: 00 00 00 00 00 00 00 00         ........
    b498: 00 00 00 00 00 00 00 00         ........
    b4a0: 83 16 e3 65 5b cd 17 3f         ...e[..?
    b4a8: c5 51 bc 97 3d 0f 21 bf         .Q..=.!.
    b4b0: 00 00 00 00 00 00 00 00         ........
    b4b8: 00 00 00 00 00 00 00 00         ........
    b4c0: 00 00 00 00 00 00 00 00         ........
    b4c8: 00 00 00 00 00 00 00 00         ........
    b4d0: 00 00 00 00 00 00 00 00         ........
    b4d8: 00 00 00 00 00 00 00 00         ........
    b4e0: 00 00 00 00 00 00 00 00         ........
    b4e8: 00 00 00 00 00 00 00 00         ........
    b4f0: a1 75 30 f6 34 57 12 bf         .u0.4W..
    b4f8: 52 3c e6 89 66 31 d6 3e         R<..f1.>
    b500: 00 00 00 00 00 00 00 00         ........
    b508: 00 00 00 00 00 00 00 00         ........
    b510: 00 00 00 00 00 00 00 00         ........
    b518: 00 00 00 00 00 00 00 00         ........
    b520: 00 00 00 00 00 00 00 00         ........
    b528: 00 00 00 00 00 00 00 00         ........
    b530: 51 3c e6 89 66 31 d6 3e         Q<..f1.>
    b538: 92 d8 33 a4 ce eb 23 bf         ..3...#.
    b540: 92 4c 87 3a 1a 44 20 3f         .L.:.D ?
    b548: 00 00 00 00 00 00 00 00         ........
    b550: 00 00 00 00 00 00 00 00         ........
    b558: 00 00 00 00 00 00 00 00         ........
    b560: 00 00 00 00 00 00 00 00         ........
    b568: 00 00 00 00 00 00 00 00         ........
    b570: 00 00 00 00 00 00 00 00         ........
    b578: 39 4d 87 3a 1a 44 20 3f         9M.:.D ?
    b580: 39 4d 87 3a 1a 44 20 bf         9M.:.D .
    b588: 00 00 00 00 00 00 00 00         ........
    b590: 00 00 00 00 00 00 00 00         ........
    b598: 00 00 00 00 00 00 00 00         ........
    b5a0: 00 00 00 00 00 00 00 00         ........
    b5a8: 00 00 00 00 00 00 00 00         ........
    b5b0: 00 00 00 00 00 00 00 00         ........
    b5b8: 00 00 00 00 00 00 00 00         ........
    b5c0: 00 00 00 00 00 00 00 00         ........
    b5c8: 83 36 ae 9c ee 9c c4 bf         .6......
    b5d0: a6 60 12 75 94 fd ef 3f         .`.u...?
    b5d8: 9f 87 d0 24 cb 26 9d bf         ...$.&..
    b5e0: 00 00 00 00 00 00 00 00         ........
    b5e8: 00 00 00 00 00 00 00 00         ........
    b5f0: 00 00 00 00 00 00 00 00         ........
    b5f8: 00 00 00 00 00 00 00 00         ........
    b600: 00 00 00 00 00 00 00 00         ........
    b608: 00 00 00 00 00 00 00 00         ........
    b610: 00 00 00 00 00 00 00 00         ........
    b618: 10 72 82 a8 33 29 d5 3f         .r..3).?
    b620: 57 95 06 27 5d b5 e7 bf         W..']...
    b628: b0 98 53 d6 be fa e3 3f         ..S....?
    b630: 00 00 00 00 00 00 00 00         ........
    b638: 00 00 00 00 00 00 00 00         ........
    b640: 00 00 00 00 00 00 00 00         ........
    b648: 00 00 00 00 00 00 00 00         ........
    b650: 00 00 00 00 00 00 00 00         ........
    b658: 00 00 00 00 00 00 00 00         ........
    b660: 35 d7 f4 dc 47 af d5 3f         5...G..?
    b668: 65 44 24 3c c8 40 c4 3f         eD$<.@.?
    b670: a6 26 74 7c 9f 8f e0 bf         .&t|....
    b678: 00 00 00 00 00 00 00 00         ........
    b680: 00 00 00 00 00 00 00 00         ........
    b688: 00 00 00 00 00 00 00 00         ........
    b690: 00 00 00 00 00 00 00 00         ........
    b698: 00 00 00 00 00 00 00 00         ........
    b6a0: 00 00 00 00 00 00 00 00         ........
    b6a8: 00 00 00 00 00 00 00 00         ........
    b6b0: 8e 66 bb a2 4b 3f c2 bf         .f..K?..
    b6b8: a4 eb ea 42 fb d4 cf bf         ...B....
    b6c0: 00 00 00 00 00 00 00 00         ........
    b6c8: 00 00 00 00 00 00 00 00         ........
    b6d0: 00 00 00 00 00 00 00 00         ........
    b6d8: 00 00 00 00 00 00 00 00         ........
    b6e0: 00 00 00 00 00 00 00 00         ........
    b6e8: 00 00 00 00 00 00 00 00         ........
    b6f0: 00 00 00 00 00 00 00 00         ........
    b6f8: ce 98 d9 8d 11 3b d9 3f         .....;.?
    b700: ce 98 d9 8d 11 3b d9 bf         .....;..
    b708: 34 aa a2 31 6b 72 95 bf         4..1kr..
    b710: 00 00 00 00 00 00 00 00         ........
    b718: 00 00 00 00 00 00 00 00         ........
    b720: 00 00 00 00 00 00 00 00         ........
    b728: 00 00 00 00 00 00 00 00         ........
    b730: 00 00 00 00 00 00 00 00         ........
    b738: eb 20 97 f7 94 f9 ef 3f         . .....?
    b740: 00 54 7c a3 21 ac 49 3f         .T|.!.I?
    b748: 00 00 00 00 00 00 00 00         ........
    b750: 00 00 00 00 00 00 00 00         ........
    b758: 00 00 00 00 00 00 00 00         ........
    b760: 00 00 00 00 00 00 00 00         ........
    b768: 00 00 00 00 00 00 00 00         ........
    b770: 00 00 00 00 00 00 00 00         ........
    b778: eb 20 97 f7 94 f9 ef 3f         . .....?
    b780: eb 20 97 f7 94 f9 ef bf         . ......
    b788: 00 00 00 00 00 00 00 00         ........
    b790: 24 6d 69 6e 20 3e 20 6d         $min > m
    b798: 61 78 2c 20 6f 72 20 65         ax, or e
    b7a0: 69 74 68 65 72 20 77 61         ither wa
    b7a8: 73 20 4e 61 4e 2e 20 6d         s NaN. m
    b7b0: 69 6e 20 3d 20 c0 08 2c         in = ..,
    b7b8: 20 6d 61 78 20 3d 20 c0          max = .
    b7c0: 00 2f 72 75 73 74 63 2f         ./rustc/
    b7c8: 34 38 61 32 32 39 63 65         48a229ce
    b7d0: 61 65 66 64 34 39 38 35         aefd4985
    b7d8: 63 35 30 39 39 30 62 31         c50990b1
    b7e0: 34 31 31 36 62 36 64 38         4116b6d8
    b7e8: 35 36 61 66 30 39 38 35         56af0985
    b7f0: 2f 6c 69 62 72 61 72 79         /library
    b7f8: 2f 63 6f 72 65 2f 73 72         /core/sr
    b800: 63 2f 6e 75 6d 2f 66 33         c/num/f3
    b808: 32 2e 72 73 00 d4 d4 d4         2.rs....

0000b810 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.3>:
    b810: c1 b7 00 00 4b 00 00 00         ....K...
    b818: 1e 06 00 00 09 00 00 00         ........
