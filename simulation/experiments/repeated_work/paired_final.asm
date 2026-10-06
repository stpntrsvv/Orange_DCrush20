
/Users/stpntrsvv/OrangeDCrush20/simulation/experiments/repeated_work/20260927T113747Z/package8.elf:	file format elf32-littlearm

Disassembly of section .text:

00000408 <Reset>:
     408: b580         	push	{r7, lr}
     40a: 466f         	mov	r7, sp
     40c: f5ad 7d46    	sub.w	sp, sp, #0x318
     410: f244 503c    	movw	r0, #0x453c
     414: f241 0404    	movw	r4, #0x1004
     418: f6c5 0002    	movt	r0, #0x5802
     41c: f2ce 0400    	movt	r4, #0xe000
     420: 2500         	movs	r5, #0x0
     422: eebe 9a00    	vmov.f32	s18, #-5.000000e-01
     426: 6801         	ldr	r1, [r0]
     428: eeb9 aa00    	vmov.f32	s20, #-4.000000e+00
     42c: f441 4180    	orr	r1, r1, #0x4000
     430: 6001         	str	r1, [r0]
     432: f64e 51fc    	movw	r1, #0xedfc
     436: 6800         	ldr	r0, [r0]
     438: f2ce 0100    	movt	r1, #0xe000
     43c: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
     440: eeb5 ea00    	vmov.f32	s28, #2.500000e-01
     444: f241 0900    	movw	r9, #0x1000
     448: 6808         	ldr	r0, [r1]
     44a: f2c2 0900    	movt	r9, #0x2000
     44e: f040 7080    	orr	r0, r0, #0x1000000
     452: 6008         	str	r0, [r1]
     454: 6025         	str	r5, [r4]
     456: f64f 71fc    	movw	r1, #0xfffc
     45a: f2c2 0100    	movt	r1, #0x2000
     45e: f854 0c04    	ldr	r0, [r4, #-4]
     462: f040 0001    	orr	r0, r0, #0x1
     466: f844 0c04    	str	r0, [r4, #-4]
     46a: f244 304b    	movw	r0, #0x434b
     46e: ed9f 8ad1    	vldr	s16, [pc, #836]         @ 0x7b4 <Reset+0x3ac>
     472: f2c5 0041    	movt	r0, #0x5041
     476: f841 0c0c    	str	r0, [r1, #-12]
     47a: a86c         	add	r0, sp, #0x1b0
     47c: 600d         	str	r5, [r1]
     47e: f100 0120    	add.w	r1, r0, #0x20
     482: 3090         	adds	r0, #0x90
     484: 9001         	str	r0, [sp, #0x4]
     486: a8c0         	add	r0, sp, #0x300
     488: ed9f cacb    	vldr	s24, [pc, #812]         @ 0x7b8 <Reset+0x3b0>
     48c: 9102         	str	r1, [sp, #0x8]
     48e: ed9f dacb    	vldr	s26, [pc, #812]         @ 0x7bc <Reset+0x3b4>
     492: 300c         	adds	r0, #0xc
     494: 900e         	str	r0, [sp, #0x38]
     496: 2000         	movs	r0, #0x0
     498: 901c         	str	r0, [sp, #0x70]
     49a: e072         	b	0x582 <Reset+0x17a>     @ imm = #0xe4
     49c: bf00         	nop
     49e: bf00         	nop
     4a0: e9dd 8066    	ldrd	r8, r0, [sp, #408]
     4a4: 9022         	str	r0, [sp, #0x88]
     4a6: f241 0000    	movw	r0, #0x1000
     4aa: 9e1c         	ldr	r6, [sp, #0x70]
     4ac: f2c2 0000    	movt	r0, #0x2000
     4b0: 9321         	str	r3, [sp, #0x84]
     4b2: 46ac         	mov	r12, r5
     4b4: eb00 2306    	add.w	r3, r0, r6, lsl #8
     4b8: 9d69         	ldr	r5, [sp, #0x1a4]
     4ba: 9523         	str	r5, [sp, #0x8c]
     4bc: f44f 4568    	mov.w	r5, #0xe800
     4c0: f503 4068    	add.w	r0, r3, #0xe800
     4c4: 9a6b         	ldr	r2, [sp, #0x1ac]
     4c6: f8dd 92cc    	ldr.w	r9, [sp, #0x2cc]
     4ca: 9968         	ldr	r1, [sp, #0x1a0]
     4cc: e9dd ab64    	ldrd	r10, r11, [sp, #400]
     4d0: f8dd e048    	ldr.w	lr, [sp, #0x48]
     4d4: f843 e005    	str.w	lr, [r3, r5]
     4d8: 9b13         	ldr	r3, [sp, #0x4c]
     4da: 6043         	str	r3, [r0, #0x4]
     4dc: 9b14         	ldr	r3, [sp, #0x50]
     4de: 6083         	str	r3, [r0, #0x8]
     4e0: 60c2         	str	r2, [r0, #0xc]
     4e2: 2500         	movs	r5, #0x0
     4e4: 9a06         	ldr	r2, [sp, #0x18]
     4e6: 6102         	str	r2, [r0, #0x10]
     4e8: 9a04         	ldr	r2, [sp, #0x10]
     4ea: 6142         	str	r2, [r0, #0x14]
     4ec: 6185         	str	r5, [r0, #0x18]
     4ee: f44f 7290    	mov.w	r2, #0x120
     4f2: 61c2         	str	r2, [r0, #0x1c]
     4f4: 3601         	adds	r6, #0x1
     4f6: 9a08         	ldr	r2, [sp, #0x20]
     4f8: 6202         	str	r2, [r0, #0x20]
     4fa: 9a09         	ldr	r2, [sp, #0x24]
     4fc: 6242         	str	r2, [r0, #0x24]
     4fe: 9a0a         	ldr	r2, [sp, #0x28]
     500: 6282         	str	r2, [r0, #0x28]
     502: 9a07         	ldr	r2, [sp, #0x1c]
     504: 62c2         	str	r2, [r0, #0x2c]
     506: 9a05         	ldr	r2, [sp, #0x14]
     508: 6302         	str	r2, [r0, #0x30]
     50a: 6345         	str	r5, [r0, #0x34]
     50c: 2e03         	cmp	r6, #0x3
     50e: 6385         	str	r5, [r0, #0x38]
     510: 63c5         	str	r5, [r0, #0x3c]
     512: 6405         	str	r5, [r0, #0x40]
     514: 6445         	str	r5, [r0, #0x44]
     516: 9a15         	ldr	r2, [sp, #0x54]
     518: 6482         	str	r2, [r0, #0x48]
     51a: 9a16         	ldr	r2, [sp, #0x58]
     51c: 64c2         	str	r2, [r0, #0x4c]
     51e: 9a17         	ldr	r2, [sp, #0x5c]
     520: 6502         	str	r2, [r0, #0x50]
     522: 9a18         	ldr	r2, [sp, #0x60]
     524: 6542         	str	r2, [r0, #0x54]
     526: 9a19         	ldr	r2, [sp, #0x64]
     528: 6582         	str	r2, [r0, #0x58]
     52a: 65c5         	str	r5, [r0, #0x5c]
     52c: 6605         	str	r5, [r0, #0x60]
     52e: 6645         	str	r5, [r0, #0x64]
     530: 6685         	str	r5, [r0, #0x68]
     532: 9a1b         	ldr	r2, [sp, #0x6c]
     534: 66c2         	str	r2, [r0, #0x6c]
     536: 9a1a         	ldr	r2, [sp, #0x68]
     538: 6702         	str	r2, [r0, #0x70]
     53a: f8c0 9074    	str.w	r9, [r0, #0x74]
     53e: f8c0 a078    	str.w	r10, [r0, #0x78]
     542: f8c0 b07c    	str.w	r11, [r0, #0x7c]
     546: f8c0 8080    	str.w	r8, [r0, #0x80]
     54a: 9a22         	ldr	r2, [sp, #0x88]
     54c: f8c0 2084    	str.w	r2, [r0, #0x84]
     550: f8c0 1088    	str.w	r1, [r0, #0x88]
     554: f04f 0108    	mov.w	r1, #0x8
     558: f8c0 108c    	str.w	r1, [r0, #0x8c]
     55c: f8c0 c090    	str.w	r12, [r0, #0x90]
     560: 9921         	ldr	r1, [sp, #0x84]
     562: f8c0 1094    	str.w	r1, [r0, #0x94]
     566: 9923         	ldr	r1, [sp, #0x8c]
     568: f8c0 1098    	str.w	r1, [r0, #0x98]
     56c: 961c         	str	r6, [sp, #0x70]
     56e: f04f 0101    	mov.w	r1, #0x1
     572: f8c0 109c    	str.w	r1, [r0, #0x9c]
     576: f8dd 900c    	ldr.w	r9, [sp, #0xc]
     57a: f509 4980    	add.w	r9, r9, #0x4000
     57e: f000 8173    	beq.w	0x868 <Reset+0x460>     @ imm = #0x2e6
     582: 2188         	movs	r1, #0x88
     584: 9801         	ldr	r0, [sp, #0x4]
     586: e9cd 5572    	strd	r5, r5, [sp, #456]
     58a: e9cd 5570    	strd	r5, r5, [sp, #448]
     58e: e9cd 556e    	strd	r5, r5, [sp, #440]
     592: e9cd 556c    	strd	r5, r5, [sp, #432]
     596: f00d fa0c    	bl	0xd9b2 <__aeabi_memclr4> @ imm = #0xd418
     59a: f44f 7190    	mov.w	r1, #0x120
     59e: a824         	add	r0, sp, #0x90
     5a0: f00d fa07    	bl	0xd9b2 <__aeabi_memclr4> @ imm = #0xd40e
     5a4: 2170         	movs	r1, #0x70
     5a6: 9802         	ldr	r0, [sp, #0x8]
     5a8: f00d fa03    	bl	0xd9b2 <__aeabi_memclr4> @ imm = #0xd406
     5ac: e9cd 55b2    	strd	r5, r5, [sp, #712]
     5b0: f04f 0a01    	mov.w	r10, #0x1
     5b4: 2300         	movs	r3, #0x0
     5b6: 2500         	movs	r5, #0x0
     5b8: 2600         	movs	r6, #0x0
     5ba: f04f 0b00    	mov.w	r11, #0x0
     5be: 201f         	movs	r0, #0x1f
     5c0: 9022         	str	r0, [sp, #0x88]
     5c2: 2000         	movs	r0, #0x0
     5c4: f8cd 900c    	str.w	r9, [sp, #0xc]
     5c8: 900a         	str	r0, [sp, #0x28]
     5ca: e9cd 0008    	strd	r0, r0, [sp, #32]
     5ce: e9cd 0004    	strd	r0, r0, [sp, #16]
     5d2: e9cd 0006    	strd	r0, r0, [sp, #24]
     5d6: e9cd 0013    	strd	r0, r0, [sp, #76]
     5da: 901b         	str	r0, [sp, #0x6c]
     5dc: e9cd 0019    	strd	r0, r0, [sp, #100]
     5e0: e9cd 0017    	strd	r0, r0, [sp, #92]
     5e4: e9cd 0015    	strd	r0, r0, [sp, #84]
     5e8: 9011         	str	r0, [sp, #0x44]
     5ea: e9cd 000f    	strd	r0, r0, [sp, #60]
     5ee: 9012         	str	r0, [sp, #0x48]
     5f0: e03a         	b	0x668 <Reset+0x260>     @ imm = #0x74
     5f2: bf00         	nop
     5f4: bf00         	nop
     5f6: bf00         	nop
     5f8: f081 0c01    	eor	r12, r1, #0x1
     5fc: f083 0e01    	eor	lr, r3, #0x1
     600: e9dd 64b7    	ldrd	r6, r4, [sp, #732]
     604: 9db9         	ldr	r5, [sp, #0x2e4]
     606: f8c9 6000    	str.w	r6, [r9]
     60a: e9dd 23b4    	ldrd	r2, r3, [sp, #720]
     60e: 99b6         	ldr	r1, [sp, #0x2d8]
     610: f8c9 2004    	str.w	r2, [r9, #0x4]
     614: f8c9 0008    	str.w	r0, [r9, #0x8]
     618: f50d 7a3a    	add.w	r10, sp, #0x2e8
     61c: f8c9 800c    	str.w	r8, [r9, #0xc]
     620: f50d 7840    	add.w	r8, sp, #0x300
     624: 980e         	ldr	r0, [sp, #0x38]
     626: 95c2         	str	r5, [sp, #0x308]
     628: e9cd 64c0    	strd	r6, r4, [sp, #768]
     62c: e9c0 2300    	strd	r2, r3, [r0]
     630: 6081         	str	r1, [r0, #0x8]
     632: 4651         	mov	r1, r10
     634: e898 007d    	ldm.w	r8, {r0, r2, r3, r4, r5, r6}
     638: c17d         	stm	r1!, {r0, r2, r3, r4, r5, r6}
     63a: 9d20         	ldr	r5, [sp, #0x80]
     63c: 9b21         	ldr	r3, [sp, #0x84]
     63e: f10b 0b01    	add.w	r11, r11, #0x1
     642: f241 0404    	movw	r4, #0x1004
     646: 4465         	add	r5, r12
     648: 4473         	add	r3, lr
     64a: f5bb 6f80    	cmp.w	r11, #0x400
     64e: 9822         	ldr	r0, [sp, #0x88]
     650: f109 0910    	add.w	r9, r9, #0x10
     654: f2ce 0400    	movt	r4, #0xe000
     658: f8dd a07c    	ldr.w	r10, [sp, #0x7c]
     65c: 9e23         	ldr	r6, [sp, #0x8c]
     65e: f1a0 0001    	sub.w	r0, r0, #0x1
     662: 9022         	str	r0, [sp, #0x88]
     664: f43f af1c    	beq.w	0x4a0 <Reset+0x98>      @ imm = #-0x1c8
     668: f10b 0060    	add.w	r0, r11, #0x60
     66c: f64a 22ab    	movw	r2, #0xaaab
     670: b281         	uxth	r1, r0
     672: 4351         	muls	r1, r2, r1
     674: e9cd 5320    	strd	r5, r3, [sp, #128]
     678: 0e09         	lsrs	r1, r1, #0x18
     67a: eb01 0141    	add.w	r1, r1, r1, lsl #1
     67e: eba0 10c1    	sub.w	r0, r0, r1, lsl #7
     682: f246 610d    	movw	r1, #0x660d
     686: b280         	uxth	r0, r0
     688: f2c0 0119    	movt	r1, #0x19
     68c: ee00 0a10    	vmov	s0, r0
     690: f24f 305f    	movw	r0, #0xf35f
     694: f6c3 406e    	movt	r0, #0x3c6e
     698: fb0a 0a01    	mla	r10, r10, r1, r0
     69c: 981c         	ldr	r0, [sp, #0x70]
     69e: eeb8 0a40    	vcvt.f32.u32	s0, s0
     6a2: ee80 0a08    	vdiv.f32	s0, s0, s16
     6a6: b158         	cbz	r0, 0x6c0 <Reset+0x2b8> @ imm = #0x16
     6a8: 2801         	cmp	r0, #0x1
     6aa: d115         	bne	0x6d8 <Reset+0x2d0>     @ imm = #0x2a
     6ac: ee30 0a09    	vadd.f32	s0, s0, s18
     6b0: eeb0 fa4b    	vmov.f32	s30, s22
     6b4: eeb0 0ac0    	vabs.f32	s0, s0
     6b8: ee00 fa0a    	vmla.f32	s30, s0, s20
     6bc: e014         	b	0x6e8 <Reset+0x2e0>     @ imm = #0x28
     6be: bf00         	nop
     6c0: ee30 0a09    	vadd.f32	s0, s0, s18
     6c4: eeb0 1a4b    	vmov.f32	s2, s22
     6c8: eeb0 0ac0    	vabs.f32	s0, s0
     6cc: ee00 1a0a    	vmla.f32	s2, s0, s20
     6d0: ee21 fa0c    	vmul.f32	s30, s2, s24
     6d4: e008         	b	0x6e8 <Reset+0x2e0>     @ imm = #0x10
     6d6: bf00         	nop
     6d8: ee00 aa10    	vmov	s0, r10
     6dc: eeb8 0ac0    	vcvt.f32.s32	s0, s0
     6e0: ee20 0a0d    	vmul.f32	s0, s0, s26
     6e4: ee20 fa0e    	vmul.f32	s30, s0, s28
     6e8: 9623         	str	r6, [sp, #0x8c]
     6ea: ea5f 70cb    	lsls.w	r0, r11, #0x1f
     6ee: 901d         	str	r0, [sp, #0x74]
     6f0: 986b         	ldr	r0, [sp, #0x1ac]
     6f2: 901e         	str	r0, [sp, #0x78]
     6f4: 6826         	ldr	r6, [r4]
     6f6: d11b         	bne	0x730 <Reset+0x328>     @ imm = #0x36
     6f8: ed8d fac0    	vstr	s30, [sp, #768]
     6fc: adc0         	add	r5, sp, #0x300
     6fe: a8b7         	add	r0, sp, #0x2dc
     700: ed9d 0ac0    	vldr	s0, [sp, #768]
     704: a924         	add	r1, sp, #0x90
     706: f009 f9af    	bl	0x9a68 <ram_probe::packed_probe::candidate> @ imm = #0x935e
     70a: f8d4 8000    	ldr.w	r8, [r4]
     70e: ed8d fac0    	vstr	s30, [sp, #768]
     712: a8b4         	add	r0, sp, #0x2d0
     714: ed9d 0ac0    	vldr	s0, [sp, #768]
     718: a96c         	add	r1, sp, #0x1b0
     71a: f006 ffe1    	bl	0x76e0 <ram_probe::packed_probe::control> @ imm = #0x6fc2
     71e: 6821         	ldr	r1, [r4]
     720: eba8 0006    	sub.w	r0, r8, r6
     724: eba1 0808    	sub.w	r8, r1, r8
     728: e019         	b	0x75e <Reset+0x356>     @ imm = #0x32
     72a: bf00         	nop
     72c: bf00         	nop
     72e: bf00         	nop
     730: ed8d fac0    	vstr	s30, [sp, #768]
     734: f50d 7840    	add.w	r8, sp, #0x300
     738: a8b4         	add	r0, sp, #0x2d0
     73a: ed9d 0ac0    	vldr	s0, [sp, #768]
     73e: a96c         	add	r1, sp, #0x1b0
     740: f006 ffce    	bl	0x76e0 <ram_probe::packed_probe::control> @ imm = #0x6f9c
     744: 6825         	ldr	r5, [r4]
     746: ed8d fac0    	vstr	s30, [sp, #768]
     74a: a8b7         	add	r0, sp, #0x2dc
     74c: ed9d 0ac0    	vldr	s0, [sp, #768]
     750: a924         	add	r1, sp, #0x90
     752: f009 f989    	bl	0x9a68 <ram_probe::packed_probe::candidate> @ imm = #0x9312
     756: 6820         	ldr	r0, [r4]
     758: eba5 0806    	sub.w	r8, r5, r6
     75c: 1b40         	subs	r0, r0, r5
     75e: f89d 12e5    	ldrb.w	r1, [sp, #0x2e5]
     762: f89d 32d9    	ldrb.w	r3, [sp, #0x2d9]
     766: f1bb 0f1f    	cmp.w	r11, #0x1f
     76a: f8cd a07c    	str.w	r10, [sp, #0x7c]
     76e: f67f af43    	bls.w	0x5f8 <Reset+0x1f0>     @ imm = #-0x17a
     772: 9c17         	ldr	r4, [sp, #0x5c]
     774: 910c         	str	r1, [sp, #0x30]
     776: 42a0         	cmp	r0, r4
     778: bf88         	it	hi
     77a: 4604         	movhi	r4, r0
     77c: 9d18         	ldr	r5, [sp, #0x60]
     77e: f89d 62e4    	ldrb.w	r6, [sp, #0x2e4]
     782: 45a8         	cmp	r8, r5
     784: bf88         	it	hi
     786: 4645         	movhi	r5, r8
     788: 9a13         	ldr	r2, [sp, #0x4c]
     78a: 99b8         	ldr	r1, [sp, #0x2e0]
     78c: 42b2         	cmp	r2, r6
     78e: 960b         	str	r6, [sp, #0x2c]
     790: bf98         	it	ls
     792: 4632         	movls	r2, r6
     794: f8dd c050    	ldr.w	r12, [sp, #0x50]
     798: 4561         	cmp	r1, r12
     79a: bf88         	it	hi
     79c: 468c         	movhi	r12, r1
     79e: 991d         	ldr	r1, [sp, #0x74]
     7a0: 930d         	str	r3, [sp, #0x34]
     7a2: 9e23         	ldr	r6, [sp, #0x8c]
     7a4: f8dd e044    	ldr.w	lr, [sp, #0x44]
     7a8: 4406         	add	r6, r0
     7aa: 44c6         	add	lr, r8
     7ac: b941         	cbnz	r1, 0x7c0 <Reset+0x3b8> @ imm = #0x10
     7ae: f8cd e044    	str.w	lr, [sp, #0x44]
     7b2: e012         	b	0x7da <Reset+0x3d2>     @ imm = #0x24
     7b4: 00 00 c0 43  	.word	0x43c00000
     7b8: cd cc cc 3d  	.word	0x3dcccccd
     7bc: 00 00 00 30  	.word	0x30000000
     7c0: 9906         	ldr	r1, [sp, #0x18]
     7c2: 428e         	cmp	r6, r1
     7c4: bf88         	it	hi
     7c6: 4631         	movhi	r1, r6
     7c8: 2600         	movs	r6, #0x0
     7ca: 9106         	str	r1, [sp, #0x18]
     7cc: 9907         	ldr	r1, [sp, #0x1c]
     7ce: 458e         	cmp	lr, r1
     7d0: bf88         	it	hi
     7d2: 4671         	movhi	r1, lr
     7d4: 9107         	str	r1, [sp, #0x1c]
     7d6: 2100         	movs	r1, #0x0
     7d8: 9111         	str	r1, [sp, #0x44]
     7da: 9922         	ldr	r1, [sp, #0x88]
     7dc: 9b0f         	ldr	r3, [sp, #0x3c]
     7de: 0649         	lsls	r1, r1, #0x19
     7e0: 9910         	ldr	r1, [sp, #0x40]
     7e2: f8dd e078    	ldr.w	lr, [sp, #0x78]
     7e6: 4403         	add	r3, r0
     7e8: 4441         	add	r1, r8
     7ea: 9623         	str	r6, [sp, #0x8c]
     7ec: e9cd 4517    	strd	r4, r5, [sp, #92]
     7f0: e9cd 2c13    	strd	r2, r12, [sp, #76]
     7f4: d10c         	bne	0x810 <Reset+0x408>     @ imm = #0x18
     7f6: 460a         	mov	r2, r1
     7f8: 9904         	ldr	r1, [sp, #0x10]
     7fa: 428b         	cmp	r3, r1
     7fc: bf88         	it	hi
     7fe: 4619         	movhi	r1, r3
     800: 2300         	movs	r3, #0x0
     802: 9104         	str	r1, [sp, #0x10]
     804: 9905         	ldr	r1, [sp, #0x14]
     806: 428a         	cmp	r2, r1
     808: bf88         	it	hi
     80a: 4611         	movhi	r1, r2
     80c: 9105         	str	r1, [sp, #0x14]
     80e: 2100         	movs	r1, #0x0
     810: 9110         	str	r1, [sp, #0x40]
     812: 996b         	ldr	r1, [sp, #0x1ac]
     814: 9c16         	ldr	r4, [sp, #0x58]
     816: 4571         	cmp	r1, lr
     818: 990c         	ldr	r1, [sp, #0x30]
     81a: f081 0c01    	eor	r12, r1, #0x1
     81e: 990d         	ldr	r1, [sp, #0x34]
     820: f081 0e01    	eor	lr, r1, #0x1
     824: 9919         	ldr	r1, [sp, #0x64]
     826: 4461         	add	r1, r12
     828: 9119         	str	r1, [sp, #0x64]
     82a: 991a         	ldr	r1, [sp, #0x68]
     82c: 9d15         	ldr	r5, [sp, #0x54]
     82e: 4471         	add	r1, lr
     830: 911a         	str	r1, [sp, #0x68]
     832: 991b         	ldr	r1, [sp, #0x6c]
     834: 9a12         	ldr	r2, [sp, #0x48]
     836: 9e0b         	ldr	r6, [sp, #0x2c]
     838: 4405         	add	r5, r0
     83a: 4444         	add	r4, r8
     83c: f101 0101    	add.w	r1, r1, #0x1
     840: 4432         	add	r2, r6
     842: 911b         	str	r1, [sp, #0x6c]
     844: e9cd 5415    	strd	r5, r4, [sp, #84]
     848: 9212         	str	r2, [sp, #0x48]
     84a: 930f         	str	r3, [sp, #0x3c]
     84c: f67f aed8    	bls.w	0x600 <Reset+0x1f8>     @ imm = #-0x250
     850: 9908         	ldr	r1, [sp, #0x20]
     852: 9a09         	ldr	r2, [sp, #0x24]
     854: 4401         	add	r1, r0
     856: 9108         	str	r1, [sp, #0x20]
     858: 990a         	ldr	r1, [sp, #0x28]
     85a: 3201         	adds	r2, #0x1
     85c: 4288         	cmp	r0, r1
     85e: 9209         	str	r2, [sp, #0x24]
     860: bf88         	it	hi
     862: 4601         	movhi	r1, r0
     864: 910a         	str	r1, [sp, #0x28]
     866: e6cb         	b	0x600 <Reset+0x1f8>     @ imm = #-0x26a
     868: f64f 71fc    	movw	r1, #0xfffc
     86c: f644 6045    	movw	r0, #0x4e45
     870: f2c2 0100    	movt	r1, #0x2000
     874: f2c4 404f    	movt	r0, #0x444f
     878: 6008         	str	r0, [r1]
     87a: bf00         	nop
     87c: bf00         	nop
     87e: bf00         	nop
     880: bf10         	yield
     882: bf10         	yield
     884: bf10         	yield
     886: bf10         	yield
     888: e7fa         	b	0x880 <Reset+0x478>     @ imm = #-0xc
     88a: d4d4         	bmi	0x836 <Reset+0x42e>     @ imm = #-0x58
     88c: d4d4         	bmi	0x838 <Reset+0x430>     @ imm = #-0x58
     88e: d4d4         	bmi	0x83a <Reset+0x432>     @ imm = #-0x58

00000890 <orange_dsp::generated_packed::origin::<5>>:
     890: b580         	push	{r7, lr}
     892: 466f         	mov	r7, sp
     894: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
     898: b084         	sub	sp, #0x10
     89a: edd1 ba01    	vldr	s23, [r1, #4]
     89e: ed91 1a02    	vldr	s2, [r1, #8]
     8a2: eeb7 2aeb    	vcvt.f64.f32	d2, s23
     8a6: edd1 6a03    	vldr	s13, [r1, #12]
     8aa: ed9f 3be5    	vldr	d3, [pc, #916]          @ 0xc40 <orange_dsp::generated_packed::origin::<5>+0x3b0>
     8ae: eef0 7a40    	vmov.f32	s15, s0
     8b2: edd1 ea04    	vldr	s29, [r1, #16]
     8b6: ee22 8b03    	vmul.f64	d8, d2, d3
     8ba: eeb7 2ac1    	vcvt.f64.f32	d2, s2
     8be: ed91 6a06    	vldr	s12, [r1, #24]
     8c2: ed9f 3be1    	vldr	d3, [pc, #900]          @ 0xc48 <orange_dsp::generated_packed::origin::<5>+0x3b8>
     8c6: edd1 aa07    	vldr	s21, [r1, #28]
     8ca: ed91 fa08    	vldr	s30, [r1, #32]
     8ce: ee02 8b03    	vmla.f64	d8, d2, d3
     8d2: eeb7 2ae6    	vcvt.f64.f32	d2, s13
     8d6: ed91 ea09    	vldr	s28, [r1, #36]
     8da: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0xc50 <orange_dsp::generated_packed::origin::<5>+0x3c0>
     8de: eeb7 cacf    	vcvt.f64.f32	d12, s30
     8e2: ed91 ba0a    	vldr	s22, [r1, #40]
     8e6: ee02 8b03    	vmla.f64	d8, d2, d3
     8ea: eeb7 2ac0    	vcvt.f64.f32	d2, s0
     8ee: ed91 0a05    	vldr	s0, [r1, #20]
     8f2: ed9f 3bd9    	vldr	d3, [pc, #868]          @ 0xc58 <orange_dsp::generated_packed::origin::<5>+0x3c8>
     8f6: eeb7 dace    	vcvt.f64.f32	d13, s28
     8fa: ed8d 1a02    	vstr	s2, [sp, #8]
     8fe: ee22 3b03    	vmul.f64	d3, d2, d3
     902: eeb7 2ac0    	vcvt.f64.f32	d2, s0
     906: ed91 aa0b    	vldr	s20, [r1, #44]
     90a: ed9f 4bd5    	vldr	d4, [pc, #852]          @ 0xc60 <orange_dsp::generated_packed::origin::<5>+0x3d0>
     90e: ed8d 0a03    	vstr	s0, [sp, #12]
     912: eeb7 0aca    	vcvt.f64.f32	d0, s20
     916: ee22 4b04    	vmul.f64	d4, d2, d4
     91a: eeb7 2aee    	vcvt.f64.f32	d2, s29
     91e: edd1 fa0c    	vldr	s31, [r1, #48]
     922: ed9f 5bd1    	vldr	d5, [pc, #836]          @ 0xc68 <orange_dsp::generated_packed::origin::<5>+0x3d8>
     926: ee02 4b05    	vmla.f64	d4, d2, d5
     92a: eeb7 2ac6    	vcvt.f64.f32	d2, s12
     92e: ed9f 5bd0    	vldr	d5, [pc, #832]          @ 0xc70 <orange_dsp::generated_packed::origin::<5>+0x3e0>
     932: ee02 4b05    	vmla.f64	d4, d2, d5
     936: eeb7 5aea    	vcvt.f64.f32	d5, s21
     93a: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0xc78 <orange_dsp::generated_packed::origin::<5>+0x3e8>
     93e: ee05 4b09    	vmla.f64	d4, d5, d9
     942: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0xc80 <orange_dsp::generated_packed::origin::<5>+0x3f0>
     946: ee0c 4b09    	vmla.f64	d4, d12, d9
     94a: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0xc88 <orange_dsp::generated_packed::origin::<5>+0x3f8>
     94e: ee0d 4b09    	vmla.f64	d4, d13, d9
     952: eeb7 9acb    	vcvt.f64.f32	d9, s22
     956: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0xc90 <orange_dsp::generated_packed::origin::<5>+0x400>
     95a: ee09 4b01    	vmla.f64	d4, d9, d1
     95e: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0xc98 <orange_dsp::generated_packed::origin::<5>+0x408>
     962: ee00 4b01    	vmla.f64	d4, d0, d1
     966: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0xcb8 <orange_dsp::generated_packed::origin::<5>+0x428>
     96a: ee25 5b01    	vmul.f64	d5, d5, d1
     96e: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0xcc0 <orange_dsp::generated_packed::origin::<5>+0x430>
     972: ee02 5b01    	vmla.f64	d5, d2, d1
     976: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0xcc8 <orange_dsp::generated_packed::origin::<5>+0x438>
     97a: ee0c 5b01    	vmla.f64	d5, d12, d1
     97e: eeb7 caef    	vcvt.f64.f32	d12, s31
     982: ed9f 1bc7    	vldr	d1, [pc, #796]          @ 0xca0 <orange_dsp::generated_packed::origin::<5>+0x410>
     986: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xcd0 <orange_dsp::generated_packed::origin::<5>+0x440>
     98a: ee0c 4b01    	vmla.f64	d4, d12, d1
     98e: ed91 1a0d    	vldr	s2, [r1, #52]
     992: eddf 1afc    	vldr	s3, [pc, #1008]         @ 0xd84 <orange_dsp::generated_packed::origin::<5>+0x4f4>
     996: ee0d 5b02    	vmla.f64	d5, d13, d2
     99a: eeb7 dac1    	vcvt.f64.f32	d13, s2
     99e: ed9f 2bc2    	vldr	d2, [pc, #776]          @ 0xca8 <orange_dsp::generated_packed::origin::<5>+0x418>
     9a2: ee0d 4b02    	vmla.f64	d4, d13, d2
     9a6: ed9f 2aec    	vldr	s4, [pc, #944]          @ 0xd58 <orange_dsp::generated_packed::origin::<5>+0x4c8>
     9aa: ee26 7a02    	vmul.f32	s14, s12, s4
     9ae: ed9f 2aeb    	vldr	s4, [pc, #940]          @ 0xd5c <orange_dsp::generated_packed::origin::<5>+0x4cc>
     9b2: ee0a 7a82    	vmla.f32	s14, s21, s4
     9b6: ed9f 2af1    	vldr	s4, [pc, #964]          @ 0xd7c <orange_dsp::generated_packed::origin::<5>+0x4ec>
     9ba: ee26 6a02    	vmul.f32	s12, s12, s4
     9be: ed9f 2af0    	vldr	s4, [pc, #960]          @ 0xd80 <orange_dsp::generated_packed::origin::<5>+0x4f0>
     9c2: ee0a 6a82    	vmla.f32	s12, s21, s4
     9c6: ed9f 2ae6    	vldr	s4, [pc, #920]          @ 0xd60 <orange_dsp::generated_packed::origin::<5>+0x4d0>
     9ca: ee0f 7a02    	vmla.f32	s14, s30, s4
     9ce: edd1 aa0e    	vldr	s21, [r1, #56]
     9d2: eeb7 2aea    	vcvt.f64.f32	d2, s21
     9d6: ee0f 6a21    	vmla.f32	s12, s30, s3
     9da: eddf 1ad7    	vldr	s3, [pc, #860]          @ 0xd38 <orange_dsp::generated_packed::origin::<5>+0x4a8>
     9de: ee2b faa1    	vmul.f32	s30, s23, s3
     9e2: edd1 1a00    	vldr	s3, [r1]
     9e6: eddf bad5    	vldr	s23, [pc, #852]         @ 0xd3c <orange_dsp::generated_packed::origin::<5>+0x4ac>
     9ea: ed8d 0b00    	vstr	d0, [sp]
     9ee: ee01 faab    	vmla.f32	s30, s3, s23
     9f2: eddf 1adc    	vldr	s3, [pc, #880]          @ 0xd64 <orange_dsp::generated_packed::origin::<5>+0x4d4>
     9f6: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0xcb0 <orange_dsp::generated_packed::origin::<5>+0x420>
     9fa: ee0e 7a21    	vmla.f32	s14, s28, s3
     9fe: eddf 1ae2    	vldr	s3, [pc, #904]          @ 0xd88 <orange_dsp::generated_packed::origin::<5>+0x4f8>
     a02: ee02 4b00    	vmla.f64	d4, d2, d0
     a06: ee0e 6a21    	vmla.f32	s12, s28, s3
     a0a: eddf 1ace    	vldr	s3, [pc, #824]          @ 0xd44 <orange_dsp::generated_packed::origin::<5>+0x4b4>
     a0e: ed9d 0a02    	vldr	s0, [sp, #8]
     a12: ed9f eacd    	vldr	s28, [pc, #820]         @ 0xd48 <orange_dsp::generated_packed::origin::<5>+0x4b8>
     a16: ee60 1a21    	vmul.f32	s3, s0, s3
     a1a: eddf 0ad5    	vldr	s1, [pc, #852]          @ 0xd70 <orange_dsp::generated_packed::origin::<5>+0x4e0>
     a1e: ee46 1a8e    	vmla.f32	s3, s13, s28
     a22: eddf 6ad1    	vldr	s13, [pc, #836]         @ 0xd68 <orange_dsp::generated_packed::origin::<5>+0x4d8>
     a26: ee0b 7a26    	vmla.f32	s14, s22, s13
     a2a: eddf 6ad8    	vldr	s13, [pc, #864]         @ 0xd8c <orange_dsp::generated_packed::origin::<5>+0x4fc>
     a2e: ee0b 6a26    	vmla.f32	s12, s22, s13
     a32: eddf 6ac6    	vldr	s13, [pc, #792]         @ 0xd4c <orange_dsp::generated_packed::origin::<5>+0x4bc>
     a36: ee4e 1aa6    	vmla.f32	s3, s29, s13
     a3a: eddf 6acc    	vldr	s13, [pc, #816]         @ 0xd6c <orange_dsp::generated_packed::origin::<5>+0x4dc>
     a3e: ee0a 7a26    	vmla.f32	s14, s20, s13
     a42: eddf 6ad3    	vldr	s13, [pc, #844]         @ 0xd90 <orange_dsp::generated_packed::origin::<5>+0x500>
     a46: ee0a 6a26    	vmla.f32	s12, s20, s13
     a4a: eddf 6abd    	vldr	s13, [pc, #756]         @ 0xd40 <orange_dsp::generated_packed::origin::<5>+0x4b0>
     a4e: ed9f bba2    	vldr	d11, [pc, #648]         @ 0xcd8 <orange_dsp::generated_packed::origin::<5>+0x448>
     a52: ee0f 7aa0    	vmla.f32	s14, s31, s1
     a56: eddf 0acf    	vldr	s1, [pc, #828]          @ 0xd94 <orange_dsp::generated_packed::origin::<5>+0x504>
     a5a: ee09 5b0b    	vmla.f64	d5, d9, d11
     a5e: ee0f 6aa0    	vmla.f32	s12, s31, s1
     a62: eddf 0ac4    	vldr	s1, [pc, #784]          @ 0xd74 <orange_dsp::generated_packed::origin::<5>+0x4e4>
     a66: ed9f 9b9e    	vldr	d9, [pc, #632]          @ 0xce0 <orange_dsp::generated_packed::origin::<5>+0x450>
     a6a: ee01 7a20    	vmla.f32	s14, s2, s1
     a6e: eddf 0aca    	vldr	s1, [pc, #808]          @ 0xd98 <orange_dsp::generated_packed::origin::<5>+0x508>
     a72: ed9d bb00    	vldr	d11, [sp]
     a76: ee01 6a20    	vmla.f32	s12, s2, s1
     a7a: ed9d 0a03    	vldr	s0, [sp, #12]
     a7e: ee0b 5b09    	vmla.f64	d5, d11, d9
     a82: ee07 faa6    	vmla.f32	s30, s15, s13
     a86: eddf 6ab2    	vldr	s13, [pc, #712]         @ 0xd50 <orange_dsp::generated_packed::origin::<5>+0x4c0>
     a8a: ed9f 9b97    	vldr	d9, [pc, #604]          @ 0xce8 <orange_dsp::generated_packed::origin::<5>+0x458>
     a8e: ed9f 1ac3    	vldr	s2, [pc, #780]          @ 0xd9c <orange_dsp::generated_packed::origin::<5>+0x50c>
     a92: ee40 1a26    	vmla.f32	s3, s0, s13
     a96: ee0c 5b09    	vmla.f64	d5, d12, d9
     a9a: eddf 6aae    	vldr	s13, [pc, #696]         @ 0xd54 <orange_dsp::generated_packed::origin::<5>+0x4c4>
     a9e: ee0a 6a81    	vmla.f32	s12, s21, s2
     aa2: ed9f 9b93    	vldr	d9, [pc, #588]          @ 0xcf0 <orange_dsp::generated_packed::origin::<5>+0x460>
     aa6: ed91 1a0f    	vldr	s2, [r1, #60]
     aaa: ee27 0aa6    	vmul.f32	s0, s15, s13
     aae: ee0d 5b09    	vmla.f64	d5, d13, d9
     ab2: eddf 6ab1    	vldr	s13, [pc, #708]         @ 0xd78 <orange_dsp::generated_packed::origin::<5>+0x4e8>
     ab6: ed9f 9b90    	vldr	d9, [pc, #576]          @ 0xcf8 <orange_dsp::generated_packed::origin::<5>+0x468>
     aba: ee0a 7aa6    	vmla.f32	s14, s21, s13
     abe: eddf 0ab8    	vldr	s1, [pc, #736]          @ 0xda0 <orange_dsp::generated_packed::origin::<5>+0x510>
     ac2: ee02 5b09    	vmla.f64	d5, d2, d9
     ac6: eeb7 9ac1    	vcvt.f64.f32	d9, s2
     aca: edd1 6a10    	vldr	s13, [r1, #64]
     ace: ed9f ab8c    	vldr	d10, [pc, #560]         @ 0xd00 <orange_dsp::generated_packed::origin::<5>+0x470>
     ad2: eddf 7ab4    	vldr	s15, [pc, #720]         @ 0xda4 <orange_dsp::generated_packed::origin::<5>+0x514>
     ad6: ee61 0a20    	vmul.f32	s1, s2, s1
     ada: ee46 0aa7    	vmla.f32	s1, s13, s15
     ade: edd1 7a11    	vldr	s15, [r1, #68]
     ae2: ee09 5b0a    	vmla.f64	d5, d9, d10
     ae6: eeb7 9ae6    	vcvt.f64.f32	d9, s13
     aea: ed9f 2aaf    	vldr	s4, [pc, #700]          @ 0xda8 <orange_dsp::generated_packed::origin::<5>+0x518>
     aee: ed9f ab86    	vldr	d10, [pc, #536]         @ 0xd08 <orange_dsp::generated_packed::origin::<5>+0x478>
     af2: ee47 0a82    	vmla.f32	s1, s15, s4
     af6: ed91 1a12    	vldr	s2, [r1, #72]
     afa: ee09 5b0a    	vmla.f64	d5, d9, d10
     afe: eeb7 9ae7    	vcvt.f64.f32	d9, s15
     b02: ed9f 2aaa    	vldr	s4, [pc, #680]          @ 0xdac <orange_dsp::generated_packed::origin::<5>+0x51c>
     b06: ed9f ab82    	vldr	d10, [pc, #520]         @ 0xd10 <orange_dsp::generated_packed::origin::<5>+0x480>
     b0a: ee41 0a02    	vmla.f32	s1, s2, s4
     b0e: ed9f 2aa8    	vldr	s4, [pc, #672]          @ 0xdb0 <orange_dsp::generated_packed::origin::<5>+0x520>
     b12: ee29 9b0a    	vmul.f64	d9, d9, d10
     b16: eeb7 aac1    	vcvt.f64.f32	d10, s2
     b1a: edd1 6a14    	vldr	s13, [r1, #80]
     b1e: ee21 ba02    	vmul.f32	s22, s2, s4
     b22: ed9f 2aa4    	vldr	s4, [pc, #656]          @ 0xdb4 <orange_dsp::generated_packed::origin::<5>+0x524>
     b26: ed9f cb7c    	vldr	d12, [pc, #496]         @ 0xd18 <orange_dsp::generated_packed::origin::<5>+0x488>
     b2a: ee07 ba82    	vmla.f32	s22, s15, s4
     b2e: edd1 7a13    	vldr	s15, [r1, #76]
     b32: eeb7 2ae6    	vcvt.f64.f32	d2, s13
     b36: ed91 1a16    	vldr	s2, [r1, #88]
     b3a: ee0a 9b0c    	vmla.f64	d9, d10, d12
     b3e: eeb7 cae7    	vcvt.f64.f32	d12, s15
     b42: ed9f ab77    	vldr	d10, [pc, #476]         @ 0xd20 <orange_dsp::generated_packed::origin::<5>+0x490>
     b46: ee30 7a07    	vadd.f32	s14, s0, s14
     b4a: ed9f db77    	vldr	d13, [pc, #476]         @ 0xd28 <orange_dsp::generated_packed::origin::<5>+0x498>
     b4e: ee30 6a06    	vadd.f32	s12, s0, s12
     b52: ee22 ab0a    	vmul.f64	d10, d2, d10
     b56: edd1 2a15    	vldr	s5, [r1, #84]
     b5a: ed9f 2a9a    	vldr	s4, [pc, #616]          @ 0xdc4 <orange_dsp::generated_packed::origin::<5>+0x534>
     b5e: ee0c ab0d    	vmla.f64	d10, d12, d13
     b62: eeb7 cae2    	vcvt.f64.f32	d12, s5
     b66: ed9f db72    	vldr	d13, [pc, #456]         @ 0xd30 <orange_dsp::generated_packed::origin::<5>+0x4a0>
     b6a: ee21 ea02    	vmul.f32	s28, s2, s4
     b6e: ed9f 1a96    	vldr	s2, [pc, #600]          @ 0xdc8 <orange_dsp::generated_packed::origin::<5>+0x538>
     b72: ee0c ab0d    	vmla.f64	d10, d12, d13
     b76: ed9f da90    	vldr	s26, [pc, #576]         @ 0xdb8 <orange_dsp::generated_packed::origin::<5>+0x528>
     b7a: ee02 ea81    	vmla.f32	s28, s5, s2
     b7e: ee07 ba8d    	vmla.f32	s22, s15, s26
     b82: ee30 ca21    	vadd.f32	s24, s0, s3
     b86: ee33 1b04    	vadd.f64	d1, d3, d4
     b8a: ee70 0a20    	vadd.f32	s1, s0, s1
     b8e: ee33 4b05    	vadd.f64	d4, d3, d5
     b92: eeb7 cacc    	vcvt.f64.f32	d12, s24
     b96: ee33 5b09    	vadd.f64	d5, d3, d9
     b9a: eeb7 9ac7    	vcvt.f64.f32	d9, s14
     b9e: ed9f 7a87    	vldr	s14, [pc, #540]         @ 0xdbc <orange_dsp::generated_packed::origin::<5>+0x52c>
     ba2: ee26 7a87    	vmul.f32	s14, s13, s14
     ba6: ee33 2b08    	vadd.f64	d2, d3, d8
     baa: eeb7 8acf    	vcvt.f64.f32	d8, s30
     bae: ee33 3b0a    	vadd.f64	d3, d3, d10
     bb2: ed9f aa83    	vldr	s20, [pc, #524]         @ 0xdc0 <orange_dsp::generated_packed::origin::<5>+0x530>
     bb6: ed80 8b00    	vstr	d8, [r0]
     bba: eeb7 8ac6    	vcvt.f64.f32	d8, s12
     bbe: ee3b 6a07    	vadd.f32	s12, s22, s14
     bc2: ee17 7a8a    	vnmls.f32	s14, s15, s20
     bc6: ed80 8b06    	vstr	d8, [r0, #24]
     bca: ee30 6a06    	vadd.f32	s12, s0, s12
     bce: ed80 9b04    	vstr	d9, [r0, #16]
     bd2: eeb7 9ae0    	vcvt.f64.f32	d9, s1
     bd6: eeb7 8ac6    	vcvt.f64.f32	d8, s12
     bda: ee30 6a07    	vadd.f32	s12, s0, s14
     bde: ee30 7a0e    	vadd.f32	s14, s0, s28
     be2: ed80 8b0a    	vstr	d8, [r0, #40]
     be6: eeb7 8ac6    	vcvt.f64.f32	d8, s12
     bea: ed9f 6a78    	vldr	s12, [pc, #480]         @ 0xdcc <orange_dsp::generated_packed::origin::<5>+0x53c>
     bee: ed80 8b0c    	vstr	d8, [r0, #48]
     bf2: eeb7 8ac7    	vcvt.f64.f32	d8, s14
     bf6: ed9f 7a76    	vldr	s14, [pc, #472]         @ 0xdd0 <orange_dsp::generated_packed::origin::<5>+0x540>
     bfa: ee27 6a86    	vmul.f32	s12, s15, s12
     bfe: ee06 6a87    	vmla.f32	s12, s13, s14
     c02: ed80 cb02    	vstr	d12, [r0, #8]
     c06: ed80 9b08    	vstr	d9, [r0, #32]
     c0a: ed80 8b0e    	vstr	d8, [r0, #56]
     c0e: ee30 0a06    	vadd.f32	s0, s0, s12
     c12: ed80 2b10    	vstr	d2, [r0, #64]
     c16: eeb7 0ac0    	vcvt.f64.f32	d0, s0
     c1a: ed80 1b12    	vstr	d1, [r0, #72]
     c1e: ed80 4b14    	vstr	d4, [r0, #80]
     c22: ed80 5b16    	vstr	d5, [r0, #88]
     c26: ed80 3b18    	vstr	d3, [r0, #96]
     c2a: ed80 0b1a    	vstr	d0, [r0, #104]
     c2e: ed80 0b1c    	vstr	d0, [r0, #112]
     c32: b004         	add	sp, #0x10
     c34: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
     c38: bd80         	pop	{r7, pc}
     c3a: bf00         	nop
     c3c: bf00         	nop
     c3e: bf00         	nop
     c40: c1 5d e1 c9  	.word	0xc9e15dc1
     c44: 86 54 e5 bf  	.word	0xbfe55486
     c48: 86 0c 11 0f  	.word	0x0f110c86
     c4c: c8 6c d7 3f  	.word	0x3fd76cc8
     c50: 7d 24 f3 72  	.word	0x72f3247d
     c54: 1b 11 d2 bf  	.word	0xbfd2111b
		...
     c60: 3d 68 b5 4d  	.word	0x4db5683d
     c64: 2d 2d e5 bf  	.word	0xbfe52d2d
     c68: 30 c6 34 16  	.word	0x1634c630
     c6c: b7 3a cc bf  	.word	0xbfcc3ab7
     c70: 75 22 80 1e  	.word	0x1e802275
     c74: ff ca ba bf  	.word	0xbfbacaff
     c78: 06 42 bd ec  	.word	0xecbd4206
     c7c: 6c ee e0 bf  	.word	0xbfe0ee6c
     c80: 94 54 5e e4  	.word	0xe45e5494
     c84: 65 da e0 bf  	.word	0xbfe0da65
     c88: 7f 02 92 0b  	.word	0x0b92027f
     c8c: f9 a6 d7 3f  	.word	0x3fd7a6f9
     c90: 49 ec 9f 20  	.word	0x209fec49
     c94: fa 74 8e bf  	.word	0xbf8e74fa
     c98: 47 e4 bd ce  	.word	0xcebde447
     c9c: 0e 2b 69 bf  	.word	0xbf692b0e
     ca0: f4 24 ee df  	.word	0xdfee24f4
     ca4: 96 e5 64 3f  	.word	0x3f64e596
     ca8: cf 1e ec 24  	.word	0x24ec1ecf
     cac: 9c 63 8d bf  	.word	0xbf8d639c
     cb0: 30 f8 ed 0a  	.word	0x0aedf830
     cb4: b2 7b 40 bf  	.word	0xbf407bb2
     cb8: d7 f6 ca fa  	.word	0xfacaf6d7
     cbc: 26 e9 a6 bf  	.word	0xbfa6e926
     cc0: 3a 53 cc f5  	.word	0xf5cc533a
     cc4: 53 6e a1 3f  	.word	0x3fa16e53
     cc8: d2 bc 75 4e  	.word	0x4e75bcd2
     ccc: 0d ce a6 bf  	.word	0xbfa6ce0d
     cd0: 08 aa 3a 11  	.word	0x113aaa08
     cd4: f2 02 ca bf  	.word	0xbfca02f2
     cd8: 3b 35 7d dc  	.word	0xdc7d353b
     cdc: f0 f5 d4 bf  	.word	0xbfd4f5f0
     ce0: 8a 7e 40 15  	.word	0x15407e8a
     ce4: 20 4b d2 bf  	.word	0xbfd24b20
     ce8: 58 aa ae 17  	.word	0x17aeaa58
     cec: 84 6a d5 bf  	.word	0xbfd56a84
     cf0: 1d ef 71 50  	.word	0x5071ef1d
     cf4: b3 bf d2 3f  	.word	0x3fd2bfb3
     cf8: 59 b9 c0 26  	.word	0x26c0b959
     cfc: 2e df e3 bf  	.word	0xbfe3df2e
     d00: 3b cc c8 6a  	.word	0x6ac8cc3b
     d04: c2 ed a6 bf  	.word	0xbfa6edc2
     d08: 30 b5 9f 60  	.word	0x609fb530
     d0c: ab e5 d3 bf  	.word	0xbfd3e5ab
     d10: 7b 84 3a 2a  	.word	0x2a3a847b
     d14: 5a 5f c0 bf  	.word	0xbfc05f5a
     d18: f7 82 13 a7  	.word	0xa71382f7
     d1c: 09 7c d7 3f  	.word	0x3fd77c09
     d20: 34 38 d2 5b  	.word	0x5bd23834
     d24: a6 d7 e0 bf  	.word	0xbfe0d7a6
     d28: ee 6f e8 6a  	.word	0x6ae86fee
     d2c: 04 d6 d0 bf  	.word	0xbfd0d604
     d30: 3b 36 33 54  	.word	0x5433363b
     d34: 06 e3 e4 bf  	.word	0xbfe4e306
     d38: 37 ee 32 35  	.word	0x3532ee37
     d3c: b0 0f 21 37  	.word	0x37210fb0
     d40: 24 7b b2 37  	.word	0x37b27b24
     d44: d0 a0 75 b6  	.word	0xb675a0d0
     d48: c4 71 3d 36  	.word	0x363d71c4
     d4c: bb 07 3b 38  	.word	0x383b07bb
     d50: 93 eb fb 34  	.word	0x34fbeb93
     d54: 00 00 00 00  	.word	0x00000000
     d58: 2e 27 35 b7  	.word	0xb735272e
     d5c: 2b 1a 6e 37  	.word	0x376e1a2b
     d60: 87 00 6d 37  	.word	0x376d0087
     d64: df 29 87 38  	.word	0x388729df
     d68: 0c fb f5 36  	.word	0x36f5fb0c
     d6c: 55 44 cb 35  	.word	0x35cb4455
     d70: 1c c5 a8 b5  	.word	0xb5a8c51c
     d74: 3d 5b ed 36  	.word	0x36ed5b3d
     d78: b3 1f 85 34  	.word	0x34851fb3
     d7c: d6 42 da b7  	.word	0xb7da42d6
     d80: 1e 70 0f 38  	.word	0x380f701e
     d84: 73 c6 0e 38  	.word	0x380ec673
     d88: 3e 82 bf b8  	.word	0xb8bf823e
     d8c: ff 9a 76 36  	.word	0x36769aff
     d90: 82 c8 4b 35  	.word	0x354bc882
     d94: da 32 29 b5  	.word	0xb52932da
     d98: 95 f5 6d 36  	.word	0x366df595
     d9c: 44 76 05 34  	.word	0x34057644
     da0: eb 37 96 b6  	.word	0xb69637eb
     da4: dd 2c 15 38  	.word	0x38152cdd
     da8: cd a2 36 36  	.word	0x3636a2cd
     dac: 55 fc 02 b7  	.word	0xb702fc55
     db0: 51 02 a3 b7  	.word	0xb7a30251
     db4: 00 b1 70 b7  	.word	0xb770b100
     db8: 4c 93 ad 38  	.word	0x38ad934c
     dbc: 85 ce bb 36  	.word	0x36bbce85
     dc0: 4c 93 ad b8  	.word	0xb8ad934c
     dc4: bb 0d 1b 3c  	.word	0x3c1b0dbb
     dc8: 34 e1 f8 37  	.word	0x37f8e134
     dcc: 8b 99 2a bf  	.word	0xbf2a998b
     dd0: c0 34 94 37  	.word	0x379434c0
     dd4: d4 d4 d4 d4  	.word	0xd4d4d4d4

00000dd8 <orange_dsp::generated_packed::update::<5>>:
     dd8: b580         	push	{r7, lr}
     dda: 466f         	mov	r7, sp
     ddc: e8bd 4080    	pop.w	{r7, lr}
     de0: f00b be4e    	b.w	0xca80 <orange_dsp::generated_condensed::update> @ imm = #0xbc9c
     de4: d4d4         	bmi	0xd90 <orange_dsp::generated_packed::origin::<5>+0x500> @ imm = #-0x58
     de6: d4d4         	bmi	0xd92 <orange_dsp::generated_packed::origin::<5>+0x502> @ imm = #-0x58

00000de8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>>:
     de8: b5f0         	push	{r4, r5, r6, r7, lr}
     dea: af03         	add	r7, sp, #0xc
     dec: f84d 8d04    	str	r8, [sp, #-4]!
     df0: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
     df4: eeba 1a0e    	vmov.f32	s2, #-1.500000e+01
     df8: ed91 5a00    	vldr	s10, [r1]
     dfc: ed9f 2a96    	vldr	s4, [pc, #600]          @ 0x1058 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x270>
     e00: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
     e04: eefe 1a00    	vmov.f32	s3, #-5.000000e-01
     e08: ee35 3a01    	vadd.f32	s6, s10, s2
     e0c: ee71 5a45    	vsub.f32	s11, s2, s10
     e10: eef7 0bc0    	vcvt.f32.f64	s1, d0
     e14: ee83 4a02    	vdiv.f32	s8, s6, s4
     e18: ed9f 3af7    	vldr	s6, [pc, #988]          @ 0x11f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x410>
     e1c: eec5 5a82    	vdiv.f32	s11, s11, s4
     e20: eeb4 3a44    	vcmp.f32	s6, s8
     e24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e28: fe33 6a04    	vselgt.f32	s12, s6, s8
     e2c: ed9f 4af3    	vldr	s8, [pc, #972]          @ 0x11fc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x414>
     e30: eeb4 6a44    	vcmp.f32	s12, s8
     e34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e38: fe74 7a06    	vselgt.f32	s15, s8, s12
     e3c: ed9f 6af0    	vldr	s12, [pc, #960]         @ 0x1200 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x418>
     e40: ee67 2a86    	vmul.f32	s5, s15, s12
     e44: ee72 3a87    	vadd.f32	s7, s5, s14
     e48: eef5 2a40    	vcmp.f32	s5, #0
     e4c: ee72 4aa1    	vadd.f32	s9, s5, s3
     e50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e54: eefd 3ae3    	vcvt.s32.f32	s7, s7
     e58: eefd 4ae4    	vcvt.s32.f32	s9, s9
     e5c: eeb4 3a65    	vcmp.f32	s6, s11
     e60: ee13 3a90    	vmov	r3, s7
     e64: ee14 2a90    	vmov	r2, s9
     e68: bfa8         	it	ge
     e6a: 461a         	movge	r2, r3
     e6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e70: fe73 2a25    	vselgt.f32	s5, s6, s11
     e74: eddf 5af8    	vldr	s11, [pc, #992]         @ 0x1258 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x470>
     e78: eeb0 aa65    	vmov.f32	s20, s11
     e7c: eeb0 ba65    	vmov.f32	s22, s11
     e80: eef4 2a44    	vcmp.f32	s5, s8
     e84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e88: fe34 8a22    	vselgt.f32	s16, s8, s5
     e8c: ee68 2a06    	vmul.f32	s5, s16, s12
     e90: ee72 3aa1    	vadd.f32	s7, s5, s3
     e94: eef5 2a40    	vcmp.f32	s5, #0
     e98: ee72 4a87    	vadd.f32	s9, s5, s14
     e9c: ee02 2a90    	vmov	s5, r2
     ea0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     ea4: eefd 3ae3    	vcvt.s32.f32	s7, s7
     ea8: eefd 4ae4    	vcvt.s32.f32	s9, s9
     eac: ee13 5a90    	vmov	r5, s7
     eb0: eef8 3ae2    	vcvt.f32.s32	s7, s5
     eb4: ee14 3a90    	vmov	r3, s9
     eb8: bfa8         	it	ge
     eba: 461d         	movge	r5, r3
     ebc: f04f 537e    	mov.w	r3, #0x3f800000
     ec0: ee02 5a90    	vmov	s5, r5
     ec4: eb03 52c2    	add.w	r2, r3, r2, lsl #23
     ec8: eb03 56c5    	add.w	r6, r3, r5, lsl #23
     ecc: eef8 4ae2    	vcvt.f32.s32	s9, s5
     ed0: eddf 2ae5    	vldr	s5, [pc, #916]          @ 0x1268 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x480>
     ed4: ee43 7ae2    	vmls.f32	s15, s7, s5
     ed8: eddf 3ae5    	vldr	s7, [pc, #916]          @ 0x1270 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x488>
     edc: eef0 6a63    	vmov.f32	s13, s7
     ee0: eeb0 9a63    	vmov.f32	s18, s7
     ee4: ee04 8ae2    	vmls.f32	s16, s9, s5
     ee8: eddf 4ae0    	vldr	s9, [pc, #896]          @ 0x126c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x484>
     eec: ee47 6aa4    	vmla.f32	s13, s15, s9
     ef0: ee08 9a24    	vmla.f32	s18, s16, s9
     ef4: ee28 ca08    	vmul.f32	s24, s16, s16
     ef8: ee07 aaa6    	vmla.f32	s20, s15, s13
     efc: eef7 6a00    	vmov.f32	s13, #1.000000e+00
     f00: ee08 ba09    	vmla.f32	s22, s16, s18
     f04: eeb0 9a47    	vmov.f32	s18, s14
     f08: ee07 9a8a    	vmla.f32	s18, s15, s20
     f0c: eeb0 aa47    	vmov.f32	s20, s14
     f10: ee08 aa0b    	vmla.f32	s20, s16, s22
     f14: ee27 baa7    	vmul.f32	s22, s15, s15
     f18: ee77 7aa6    	vadd.f32	s15, s15, s13
     f1c: ee38 8a26    	vadd.f32	s16, s16, s13
     f20: ee4b 7a09    	vmla.f32	s15, s22, s18
     f24: ee09 2a10    	vmov	s18, r2
     f28: eeb0 ba60    	vmov.f32	s22, s1
     f2c: ee0c 8a0a    	vmla.f32	s16, s24, s20
     f30: ee0a 6a10    	vmov	s20, r6
     f34: ee27 9a89    	vmul.f32	s18, s15, s18
     f38: eddf 7aca    	vldr	s15, [pc, #808]         @ 0x1264 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x47c>
     f3c: ee05 ba27    	vmla.f32	s22, s10, s15
     f40: ee28 aa0a    	vmul.f32	s20, s16, s20
     f44: ed9f 8acb    	vldr	s16, [pc, #812]         @ 0x1274 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x48c>
     f48: ee39 0a4a    	vsub.f32	s0, s18, s20
     f4c: ee10 ba08    	vnmls.f32	s22, s0, s16
     f50: ee1b 2a10    	vmov	r2, s22
     f54: f022 4200    	bic	r2, r2, #0x80000000
     f58: f1b2 4fff    	cmp.w	r2, #0x7f800000
     f5c: db04         	blt	0xf68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x180> @ imm = #0x8
     f5e: ed9f 0ac6    	vldr	s0, [pc, #792]          @ 0x1278 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x490>
     f62: e00b         	b	0xf7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x194> @ imm = #0x16
     f64: bf00         	nop
     f66: bf00         	nop
     f68: ed9f 0ac4    	vldr	s0, [pc, #784]          @ 0x127c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x494>
     f6c: ee8b 0a00    	vdiv.f32	s0, s22, s0
     f70: ed9f cac3    	vldr	s24, [pc, #780]         @ 0x1280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x498>
     f74: eeb0 0ac0    	vabs.f32	s0, s0
     f78: fe80 0a0c    	vmaxnm.f32	s0, s0, s24
     f7c: ee79 9a0a    	vadd.f32	s19, s18, s20
     f80: f04f 0e00    	mov.w	lr, #0x0
     f84: eef1 8a4b    	vneg.f32	s17, s22
     f88: f04f 0c00    	mov.w	r12, #0x0
     f8c: ed9f aabd    	vldr	s20, [pc, #756]         @ 0x1284 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x49c>
     f90: 46f0         	mov	r8, lr
     f92: ed9f babd    	vldr	s22, [pc, #756]         @ 0x1288 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a0>
     f96: ed9f 9abd    	vldr	s18, [pc, #756]         @ 0x128c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a4>
     f9a: ed9f dab8    	vldr	s26, [pc, #736]         @ 0x127c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x494>
     f9e: ed9f eab8    	vldr	s28, [pc, #736]         @ 0x1280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x498>
     fa2: ed9f cabc    	vldr	s24, [pc, #752]         @ 0x1294 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4ac>
     fa6: ee69 9a88    	vmul.f32	s19, s19, s16
     faa: f1be 0f10    	cmp.w	lr, #0x10
     fae: bf18         	it	ne
     fb0: f108 0801    	addne.w	r8, r8, #0x1
     fb4: 2500         	movs	r5, #0x0
     fb6: eec9 9a82    	vdiv.f32	s19, s19, s4
     fba: ee79 9a8a    	vadd.f32	s19, s19, s20
     fbe: ee19 4a90    	vmov	r4, s19
     fc2: eef0 aae9    	vabs.f32	s21, s19
     fc6: f024 4400    	bic	r4, r4, #0x80000000
     fca: eef4 aa4b    	vcmp.f32	s21, s22
     fce: f1b4 4fff    	cmp.w	r4, #0x7f800000
     fd2: f04f 0400    	mov.w	r4, #0x0
     fd6: bfa8         	it	ge
     fd8: 2401         	movge	r4, #0x1
     fda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     fde: bf48         	it	mi
     fe0: 2501         	movmi	r5, #0x1
     fe2: 432c         	orrs	r4, r5
     fe4: f040 812c    	bne.w	0x1240 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x458> @ imm = #0x258
     fe8: eec8 9aa9    	vdiv.f32	s19, s17, s19
     fec: eeb4 0a49    	vcmp.f32	s0, s18
     ff0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     ff4: eef0 8ae9    	vabs.f32	s17, s19
     ff8: d906         	bls	0x1008 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x220> @ imm = #0xc
     ffa: f1be 0f10    	cmp.w	lr, #0x10
     ffe: d127         	bne	0x1050 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x268> @ imm = #0x4e
    1000: e12e         	b	0x1260 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x478> @ imm = #0x25c
    1002: bf00         	nop
    1004: bf00         	nop
    1006: bf00         	nop
    1008: eef0 aac5    	vabs.f32	s21, s10
    100c: ed9f faa0    	vldr	s30, [pc, #640]         @ 0x1290 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a8>
    1010: 2400         	movs	r4, #0x0
    1012: eef4 aa6a    	vcmp.f32	s21, s21
    1016: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    101a: fe56 aaaa    	vselvs.f32	s21, s13, s21
    101e: eef4 aa66    	vcmp.f32	s21, s13
    1022: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1026: fe7a aaa6    	vselgt.f32	s21, s21, s13
    102a: ee6a aa8f    	vmul.f32	s21, s21, s30
    102e: feca aacc    	vminnm.f32	s21, s21, s24
    1032: eef4 8a6a    	vcmp.f32	s17, s21
    1036: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    103a: bf98         	it	ls
    103c: 2401         	movls	r4, #0x1
    103e: f1be 0f10    	cmp.w	lr, #0x10
    1042: bf1c         	itt	ne
    1044: eef4 8a6a    	vcmpne.f32	s17, s21
    1048: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    104c: f240 80eb    	bls.w	0x1226 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #0x1d6
    1050: f04f 547e    	mov.w	r4, #0x3f800000
    1054: e00a         	b	0x106c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x284> @ imm = #0x14
    1056: bf00         	nop
    1058: f5 4a 39 3d  	.word	0x3d394af5
    105c: 00 bf 00 bf  	.word	0xbf00bf00
    1060: f5a4 0400    	sub.w	r4, r4, #0x800000
    1064: f1b4 5f66    	cmp.w	r4, #0x39800000
    1068: f000 80ce    	beq.w	0x1208 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x420> @ imm = #0x19c
    106c: ee0b 4a90    	vmov	s23, r4
    1070: eef0 aa45    	vmov.f32	s21, s10
    1074: ee49 aaab    	vmla.f32	s21, s19, s23
    1078: ee7a ba81    	vadd.f32	s23, s21, s2
    107c: ee71 fa6a    	vsub.f32	s31, s2, s21
    1080: eecb ba82    	vdiv.f32	s23, s23, s4
    1084: eecf fa82    	vdiv.f32	s31, s31, s4
    1088: eeb4 3a6b    	vcmp.f32	s6, s23
    108c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1090: fe73 ba2b    	vselgt.f32	s23, s6, s23
    1094: eef4 ba44    	vcmp.f32	s23, s8
    1098: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    109c: fe74 ba2b    	vselgt.f32	s23, s8, s23
    10a0: ee6b ca86    	vmul.f32	s25, s23, s12
    10a4: ee7c da87    	vadd.f32	s27, s25, s14
    10a8: eef5 ca40    	vcmp.f32	s25, #0
    10ac: ee7c eaa1    	vadd.f32	s29, s25, s3
    10b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10b4: eefd daed    	vcvt.s32.f32	s27, s27
    10b8: eefd eaee    	vcvt.s32.f32	s29, s29
    10bc: eeb4 3a6f    	vcmp.f32	s6, s31
    10c0: ee1d 6a90    	vmov	r6, s27
    10c4: ee1e 5a90    	vmov	r5, s29
    10c8: bfa8         	it	ge
    10ca: 4635         	movge	r5, r6
    10cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10d0: fe73 ca2f    	vselgt.f32	s25, s6, s31
    10d4: eef4 ca44    	vcmp.f32	s25, s8
    10d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10dc: fe74 ca2c    	vselgt.f32	s25, s8, s25
    10e0: ee6c da86    	vmul.f32	s27, s25, s12
    10e4: ee7d eaa1    	vadd.f32	s29, s27, s3
    10e8: eef5 da40    	vcmp.f32	s27, #0
    10ec: ee7d fa87    	vadd.f32	s31, s27, s14
    10f0: ee0d 5a90    	vmov	s27, r5
    10f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10f8: eefd eaee    	vcvt.s32.f32	s29, s29
    10fc: eef8 daed    	vcvt.f32.s32	s27, s27
    1100: ee1e 6a90    	vmov	r6, s29
    1104: eefd eaef    	vcvt.s32.f32	s29, s31
    1108: ee4d bae2    	vmls.f32	s23, s27, s5
    110c: eef0 da63    	vmov.f32	s27, s7
    1110: eef0 fa65    	vmov.f32	s31, s11
    1114: ee1e 2a90    	vmov	r2, s29
    1118: bfa8         	it	ge
    111a: 4616         	movge	r6, r2
    111c: eb03 52c5    	add.w	r2, r3, r5, lsl #23
    1120: ee0e 6a90    	vmov	s29, r6
    1124: eb03 55c6    	add.w	r5, r3, r6, lsl #23
    1128: ee4b daa4    	vmla.f32	s27, s23, s9
    112c: eef8 eaee    	vcvt.f32.s32	s29, s29
    1130: ee4e cae2    	vmls.f32	s25, s29, s5
    1134: eef0 ea63    	vmov.f32	s29, s7
    1138: ee4b faad    	vmla.f32	s31, s23, s27
    113c: eef0 da65    	vmov.f32	s27, s11
    1140: ee4c eaa4    	vmla.f32	s29, s25, s9
    1144: ee2c faac    	vmul.f32	s30, s25, s25
    1148: ee4c daae    	vmla.f32	s27, s25, s29
    114c: eef0 ea47    	vmov.f32	s29, s14
    1150: ee4b eaaf    	vmla.f32	s29, s23, s31
    1154: eef0 fa47    	vmov.f32	s31, s14
    1158: ee4c faad    	vmla.f32	s31, s25, s27
    115c: ee6b daab    	vmul.f32	s27, s23, s23
    1160: ee7b baa6    	vadd.f32	s23, s23, s13
    1164: ee7c caa6    	vadd.f32	s25, s25, s13
    1168: ee4d baae    	vmla.f32	s23, s27, s29
    116c: ee0d 5a90    	vmov	s27, r5
    1170: ee4f ca2f    	vmla.f32	s25, s30, s31
    1174: ee0f 2a10    	vmov	s30, r2
    1178: ee6b ba8f    	vmul.f32	s23, s23, s30
    117c: ee6c caad    	vmul.f32	s25, s25, s27
    1180: eef0 da60    	vmov.f32	s27, s1
    1184: ee4a daa7    	vmla.f32	s27, s21, s15
    1188: ee3b faec    	vsub.f32	s30, s23, s25
    118c: ee5f da08    	vnmls.f32	s27, s30, s16
    1190: ee1d 2a90    	vmov	r2, s27
    1194: f022 4200    	bic	r2, r2, #0x80000000
    1198: f1b2 4fff    	cmp.w	r2, #0x7f800000
    119c: f6bf af60    	bge.w	0x1060 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x278> @ imm = #-0x140
    11a0: ee8d fa8d    	vdiv.f32	s30, s27, s26
    11a4: eeb0 facf    	vabs.f32	s30, s30
    11a8: fecf ea0e    	vmaxnm.f32	s29, s30, s28
    11ac: eef4 ea40    	vcmp.f32	s29, s0
    11b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    11b4: f57f af54    	bpl.w	0x1060 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x278> @ imm = #-0x158
    11b8: f1be 0f10    	cmp.w	lr, #0x10
    11bc: edc1 aa00    	vstr	s21, [r1]
    11c0: d00e         	beq	0x11e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x3f8> @ imm = #0x1c
    11c2: ee7b 9aac    	vadd.f32	s19, s23, s25
    11c6: eeb0 5a6a    	vmov.f32	s10, s21
    11ca: eef1 8a6d    	vneg.f32	s17, s27
    11ce: eeb0 0a6e    	vmov.f32	s0, s29
    11d2: f1b8 0f10    	cmp.w	r8, #0x10
    11d6: f10c 0c01    	add.w	r12, r12, #0x1
    11da: 46c6         	mov	lr, r8
    11dc: f77f aee3    	ble.w	0xfa6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x1be> @ imm = #-0x23a
    11e0: f64d 3011    	movw	r0, #0xdb11
    11e4: f64d 7200    	movw	r2, #0xdf00
    11e8: f2c0 0000    	movt	r0, #0x0
    11ec: f2c0 0200    	movt	r2, #0x0
    11f0: 2128         	movs	r1, #0x28
    11f2: f00a fe4b    	bl	0xbe8c <core::panicking::panic> @ imm = #0xac96
    11f6: bf00         	nop
    11f8: 00 00 a0 c2  	.word	0xc2a00000
    11fc: 00 00 a0 42  	.word	0x42a00000
    1200: 3b aa b8 3f  	.word	0x3fb8aa3b
    1204: 00 bf 00 bf  	.word	0xbf00bf00
    1208: eeb4 0a49    	vcmp.f32	s0, s18
    120c: f10c 0c01    	add.w	r12, r12, #0x1
    1210: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1214: f04f 0400    	mov.w	r4, #0x0
    1218: d805         	bhi	0x1226 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #0xa
    121a: eef4 8a4c    	vcmp.f32	s17, s24
    121e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1222: bf98         	it	ls
    1224: 2401         	movls	r4, #0x1
    1226: ed80 0a00    	vstr	s0, [r0]
    122a: f880 c004    	strb.w	r12, [r0, #0x4]
    122e: 7144         	strb	r4, [r0, #0x5]
    1230: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    1234: f85d 8b04    	ldr	r8, [sp], #4
    1238: bdf0         	pop	{r4, r5, r6, r7, pc}
    123a: bf00         	nop
    123c: bf00         	nop
    123e: bf00         	nop
    1240: ed80 0a00    	vstr	s0, [r0]
    1244: 2100         	movs	r1, #0x0
    1246: f880 c004    	strb.w	r12, [r0, #0x4]
    124a: 7141         	strb	r1, [r0, #0x5]
    124c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    1250: f85d 8b04    	ldr	r8, [sp], #4
    1254: bdf0         	pop	{r4, r5, r6, r7, pc}
    1256: bf00         	nop
    1258: ab aa 2a 3e  	.word	0x3e2aaaab
    125c: 00 bf 00 bf  	.word	0xbf00bf00
    1260: 2400         	movs	r4, #0x0
    1262: e7e0         	b	0x1226 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #-0x40
    1264: 09 d5 19 b8  	.word	0xb819d509
    1268: 18 72 31 3f  	.word	0x3f317218
    126c: 89 88 08 3c  	.word	0x3c088889
    1270: ab aa 2a 3d  	.word	0x3d2aaaab
    1274: 77 cc 2b 31  	.word	0x312bcc77
    1278: 00 00 80 7f  	.word	0x7f800000
    127c: 0a d7 23 3c  	.word	0x3c23d70a
    1280: 00 00 00 00  	.word	0x00000000
    1284: 09 d5 19 38  	.word	0x3819d509
    1288: 08 e5 3c 1e  	.word	0x1e3ce508
    128c: 17 b7 d1 38  	.word	0x38d1b717
    1290: bd 37 06 36  	.word	0x360637bd
    1294: ac c5 a7 37  	.word	0x37a7c5ac

00001298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>>:
    1298: b5f0         	push	{r4, r5, r6, r7, lr}
    129a: af03         	add	r7, sp, #0xc
    129c: f84d 8d04    	str	r8, [sp, #-4]!
    12a0: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    12a4: b088         	sub	sp, #0x20
    12a6: ed9f 3ae6    	vldr	s6, [pc, #920]          @ 0x1640 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3a8>
    12aa: ee22 4a03    	vmul.f32	s8, s4, s6
    12ae: ed9f 2ae5    	vldr	s4, [pc, #916]          @ 0x1644 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3ac>
    12b2: ed9f 3ae5    	vldr	s6, [pc, #916]          @ 0x1648 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b0>
    12b6: ed9f 5ae5    	vldr	s10, [pc, #916]         @ 0x164c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b4>
    12ba: ee34 2a02    	vadd.f32	s4, s8, s4
    12be: ee34 3a03    	vadd.f32	s6, s8, s6
    12c2: ee82 2a05    	vdiv.f32	s4, s4, s10
    12c6: ee83 3a05    	vdiv.f32	s6, s6, s10
    12ca: eeb4 2a43    	vcmp.f32	s4, s6
    12ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    12d2: f200 83a1    	bhi.w	0x1a18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x780> @ imm = #0x742
    12d6: ed91 5a00    	vldr	s10, [r1]
    12da: ed8d 5a01    	vstr	s10, [sp, #4]
    12de: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    12e2: ed91 ea01    	vldr	s28, [r1, #4]
    12e6: ed9f 6b72    	vldr	d6, [pc, #456]          @ 0x14b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x218>
    12ea: 2600         	movs	r6, #0x0
    12ec: 2300         	movs	r3, #0x0
    12ee: ee05 1b06    	vmla.f64	d1, d5, d6
    12f2: eeb7 6ace    	vcvt.f64.f32	d6, s28
    12f6: eeff 4a00    	vmov.f32	s9, #-1.000000e+00
    12fa: ed9f 5b6f    	vldr	d5, [pc, #444]          @ 0x14b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x220>
    12fe: eeb0 7b41    	vmov.f64	d7, d1
    1302: eddf 2ad3    	vldr	s5, [pc, #844]          @ 0x1650 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b8>
    1306: ee06 7b05    	vmla.f64	d7, d6, d5
    130a: ed9f 6ad2    	vldr	s12, [pc, #840]         @ 0x1654 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3bc>
    130e: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    1312: ee24 ca06    	vmul.f32	s24, s8, s12
    1316: ed9f 5ad0    	vldr	s10, [pc, #832]         @ 0x1658 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c0>
    131a: eeb7 4bc7    	vcvt.f32.f64	s8, d7
    131e: eddf 5acf    	vldr	s11, [pc, #828]         @ 0x165c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c4>
    1322: eeb0 6a4c    	vmov.f32	s12, s24
    1326: ee04 6a05    	vmla.f32	s12, s8, s10
    132a: eef7 0bc0    	vcvt.f32.f64	s1, d0
    132e: eeb0 4a60    	vmov.f32	s8, s1
    1332: ee0e 4a25    	vmla.f32	s8, s28, s11
    1336: eeb4 2a46    	vcmp.f32	s4, s12
    133a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    133e: fe32 0a06    	vselgt.f32	s0, s4, s12
    1342: eef0 3ac4    	vabs.f32	s7, s8
    1346: eeb4 0a43    	vcmp.f32	s0, s6
    134a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    134e: eeb4 6a42    	vcmp.f32	s12, s4
    1352: fe33 fa00    	vselgt.f32	s30, s6, s0
    1356: ed9f 0ac2    	vldr	s0, [pc, #776]          @ 0x1660 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    135a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    135e: bfc8         	it	gt
    1360: 2601         	movgt	r6, #0x1
    1362: eeb4 6a43    	vcmp.f32	s12, s6
    1366: eeb0 6a40    	vmov.f32	s12, s0
    136a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    136e: eeb5 4a40    	vcmp.f32	s8, #0
    1372: eeb0 4a40    	vmov.f32	s8, s0
    1376: bf48         	it	mi
    1378: 2301         	movmi	r3, #0x1
    137a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    137e: bf48         	it	mi
    1380: eeb0 4a64    	vmovmi.f32	s8, s9
    1384: eeb0 8a40    	vmov.f32	s16, s0
    1388: eef4 3a62    	vcmp.f32	s7, s5
    138c: fe36 9a84    	vselgt.f32	s18, s13, s8
    1390: eeb0 4a40    	vmov.f32	s8, s0
    1394: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1398: ea03 0306    	and.w	r3, r3, r6
    139c: f280 80bb    	bge.w	0x1516 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x176
    13a0: ed9f 0ae0    	vldr	s0, [pc, #896]          @ 0x1724 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x48c>
    13a4: eef4 3a40    	vcmp.f32	s7, s0
    13a8: ed9f 6aad    	vldr	s12, [pc, #692]         @ 0x1660 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    13ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13b0: d912         	bls	0x13d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x140> @ imm = #0x24
    13b2: ed9f 0add    	vldr	s0, [pc, #884]          @ 0x1728 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x490>
    13b6: eef4 3a40    	vcmp.f32	s7, s0
    13ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13be: d913         	bls	0x13e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x150> @ imm = #0x26
    13c0: ed9f 0ada    	vldr	s0, [pc, #872]          @ 0x172c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x494>
    13c4: ee33 4a80    	vadd.f32	s8, s7, s0
    13c8: eddf 3ad9    	vldr	s7, [pc, #868]          @ 0x1730 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x498>
    13cc: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    13d0: e012         	b	0x13f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x160> @ imm = #0x24
    13d2: bf00         	nop
    13d4: bf00         	nop
    13d6: bf00         	nop
    13d8: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    13dc: eeb0 4a46    	vmov.f32	s8, s12
    13e0: e00e         	b	0x1400 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x168> @ imm = #0x1c
    13e2: bf00         	nop
    13e4: bf00         	nop
    13e6: bf00         	nop
    13e8: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x1734 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x49c>
    13ec: ee33 4a80    	vadd.f32	s8, s7, s0
    13f0: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    13f4: eddf 3ad0    	vldr	s7, [pc, #832]          @ 0x1738 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4a0>
    13f8: ee04 0a23    	vmla.f32	s0, s8, s7
    13fc: ee29 4a23    	vmul.f32	s8, s18, s7
    1400: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    1404: ee33 0ac0    	vsub.f32	s0, s7, s0
    1408: fec0 3a06    	vmaxnm.f32	s7, s0, s12
    140c: eeb1 0a44    	vneg.f32	s0, s8
    1410: eef5 3a40    	vcmp.f32	s7, #0
    1414: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1418: d942         	bls	0x14a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x208> @ imm = #0x84
    141a: eeb0 4acf    	vabs.f32	s8, s30
    141e: eeb4 4a63    	vcmp.f32	s8, s7
    1422: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1426: d94b         	bls	0x14c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x228> @ imm = #0x96
    1428: ee83 8a84    	vdiv.f32	s16, s7, s8
    142c: ee28 4a08    	vmul.f32	s8, s16, s16
    1430: ee24 4a04    	vmul.f32	s8, s8, s8
    1434: ee24 4a04    	vmul.f32	s8, s8, s8
    1438: ee24 9a04    	vmul.f32	s18, s8, s8
    143c: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    1440: ee39 6a04    	vadd.f32	s12, s18, s8
    1444: eeb0 aa44    	vmov.f32	s20, s8
    1448: eeb4 6a44    	vcmp.f32	s12, s8
    144c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1450: d009         	beq	0x1466 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x1ce> @ imm = #0x12
    1452: eeb0 aa46    	vmov.f32	s20, s12
    1456: eeb1 aaca    	vsqrt.f32	s20, s20
    145a: eeb1 aaca    	vsqrt.f32	s20, s20
    145e: eeb1 aaca    	vsqrt.f32	s20, s20
    1462: eeb1 aaca    	vsqrt.f32	s20, s20
    1466: ee84 4a0a    	vdiv.f32	s8, s8, s20
    146a: eeb4 fa4f    	vcmp.f32	s30, s30
    146e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1472: ee84 aa06    	vdiv.f32	s20, s8, s12
    1476: f180 82db    	bvs.w	0x1a30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x798> @ imm = #0x5b6
    147a: ee1f 6a10    	vmov	r6, s30
    147e: f04f 557e    	mov.w	r5, #0x3f800000
    1482: f365 061e    	bfi	r6, r5, #0, #31
    1486: ee0b 6a10    	vmov	s22, r6
    148a: ee2b 6a23    	vmul.f32	s12, s22, s7
    148e: ee26 6a04    	vmul.f32	s12, s12, s8
    1492: ee2b 4a0a    	vmul.f32	s8, s22, s20
    1496: ee68 3a09    	vmul.f32	s7, s16, s18
    149a: ee23 8a8a    	vmul.f32	s16, s7, s20
    149e: e03a         	b	0x1516 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x74
    14a0: eeb0 8a46    	vmov.f32	s16, s12
    14a4: eeb0 4a46    	vmov.f32	s8, s12
    14a8: e035         	b	0x1516 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x6a
    14aa: bf00         	nop
    14ac: bf00         	nop
    14ae: bf00         	nop
    14b0: a2 0c d2 2e  	.word	0x2ed20ca2
    14b4: ca fe ef 3f  	.word	0x3feffeca
    14b8: 1f 89 9b cf  	.word	0xcf9b891f
    14bc: ab 32 9c bf  	.word	0xbf9c32ab
    14c0: ee8f 4a23    	vdiv.f32	s8, s30, s7
    14c4: eeb7 8a00    	vmov.f32	s16, #1.000000e+00
    14c8: ee24 4a04    	vmul.f32	s8, s8, s8
    14cc: eeb0 9a48    	vmov.f32	s18, s16
    14d0: ee24 4a04    	vmul.f32	s8, s8, s8
    14d4: ee24 4a04    	vmul.f32	s8, s8, s8
    14d8: ee24 4a04    	vmul.f32	s8, s8, s8
    14dc: ee34 6a08    	vadd.f32	s12, s8, s16
    14e0: eeb4 6a48    	vcmp.f32	s12, s16
    14e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    14e8: d009         	beq	0x14fe <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x266> @ imm = #0x12
    14ea: eeb0 9a46    	vmov.f32	s18, s12
    14ee: eeb1 9ac9    	vsqrt.f32	s18, s18
    14f2: eeb1 9ac9    	vsqrt.f32	s18, s18
    14f6: eeb1 9ac9    	vsqrt.f32	s18, s18
    14fa: eeb1 9ac9    	vsqrt.f32	s18, s18
    14fe: ee88 9a09    	vdiv.f32	s18, s16, s18
    1502: ee2f 4a04    	vmul.f32	s8, s30, s8
    1506: ee89 8a06    	vdiv.f32	s16, s18, s12
    150a: ee84 4a23    	vdiv.f32	s8, s8, s7
    150e: ee2f 6a09    	vmul.f32	s12, s30, s18
    1512: ee24 4a08    	vmul.f32	s8, s8, s16
    1516: 2b00         	cmp	r3, #0x0
    1518: ee7e 3a46    	vsub.f32	s7, s28, s12
    151c: ed9f 6ad6    	vldr	s12, [pc, #856]         @ 0x1878 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e0>
    1520: ee20 4a04    	vmul.f32	s8, s0, s8
    1524: ed9f 9ad5    	vldr	s18, [pc, #852]         @ 0x187c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e4>
    1528: fe09 6a06    	vseleq.f32	s12, s18, s12
    152c: ee13 3a90    	vmov	r3, s7
    1530: ed9f aad3    	vldr	s20, [pc, #844]         @ 0x1880 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e8>
    1534: ee26 0a08    	vmul.f32	s0, s12, s16
    1538: ed9f 6ad2    	vldr	s12, [pc, #840]         @ 0x1884 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5ec>
    153c: ee24 6a06    	vmul.f32	s12, s8, s12
    1540: f023 4300    	bic	r3, r3, #0x80000000
    1544: f1b3 4fff    	cmp.w	r3, #0x7f800000
    1548: db02         	blt	0x1550 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2b8> @ imm = #0x4
    154a: ed9f 9acf    	vldr	s18, [pc, #828]         @ 0x1888 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f0>
    154e: e009         	b	0x1564 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2cc> @ imm = #0x12
    1550: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    1554: ed9f 8a42    	vldr	s16, [pc, #264]         @ 0x1660 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    1558: ee83 4a84    	vdiv.f32	s8, s7, s8
    155c: eeb0 4ac4    	vabs.f32	s8, s8
    1560: fe84 9a08    	vmaxnm.f32	s18, s8, s16
    1564: ee00 6a0a    	vmla.f32	s12, s0, s20
    1568: eeb7 da08    	vmov.f32	s26, #1.500000e+00
    156c: eeb1 aa63    	vneg.f32	s20, s7
    1570: 2500         	movs	r5, #0x0
    1572: f04f 0800    	mov.w	r8, #0x0
    1576: ed9f bac5    	vldr	s22, [pc, #788]         @ 0x188c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f4>
    157a: eddf cac5    	vldr	s25, [pc, #788]         @ 0x1890 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f8>
    157e: f04f 5c7e    	mov.w	r12, #0x3f800000
    1582: ed9f 4a37    	vldr	s8, [pc, #220]          @ 0x1660 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    1586: f20f 4eec    	adr.w	lr, #1260
    158a: eddf ea66    	vldr	s29, [pc, #408]         @ 0x1724 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x48c>
    158e: 462c         	mov	r4, r5
    1590: eddf fa65    	vldr	s31, [pc, #404]         @ 0x1728 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x490>
    1594: ee36 0a26    	vadd.f32	s0, s12, s13
    1598: 2d10         	cmp	r5, #0x10
    159a: bf18         	it	ne
    159c: 3401         	addne	r4, #0x1
    159e: 2300         	movs	r3, #0x0
    15a0: ee10 6a10    	vmov	r6, s0
    15a4: eeb0 6ac0    	vabs.f32	s12, s0
    15a8: f026 4600    	bic	r6, r6, #0x80000000
    15ac: eeb4 6a4b    	vcmp.f32	s12, s22
    15b0: f1b6 4fff    	cmp.w	r6, #0x7f800000
    15b4: f04f 0600    	mov.w	r6, #0x0
    15b8: bfa8         	it	ge
    15ba: 2601         	movge	r6, #0x1
    15bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    15c0: bf48         	it	mi
    15c2: 2301         	movmi	r3, #0x1
    15c4: 4333         	orrs	r3, r6
    15c6: f040 8217    	bne.w	0x19f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x760> @ imm = #0x42e
    15ca: ee8a ba00    	vdiv.f32	s22, s20, s0
    15ce: eeb4 9a6c    	vcmp.f32	s18, s25
    15d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    15d6: eeb0 7acb    	vabs.f32	s14, s22
    15da: d905         	bls	0x15e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x350> @ imm = #0xa
    15dc: 2d10         	cmp	r5, #0x10
    15de: d128         	bne	0x1632 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x39a> @ imm = #0x50
    15e0: e216         	b	0x1a10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x778> @ imm = #0x42c
    15e2: bf00         	nop
    15e4: bf00         	nop
    15e6: bf00         	nop
    15e8: eeb0 0ace    	vabs.f32	s0, s28
    15ec: ed9f 6aee    	vldr	s12, [pc, #952]         @ 0x19a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x710>
    15f0: 2600         	movs	r6, #0x0
    15f2: eeb4 0a40    	vcmp.f32	s0, s0
    15f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    15fa: fe16 0a80    	vselvs.f32	s0, s13, s0
    15fe: eeb4 0a66    	vcmp.f32	s0, s13
    1602: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1606: fe30 0a26    	vselgt.f32	s0, s0, s13
    160a: ee20 0a06    	vmul.f32	s0, s0, s12
    160e: ed9f 6ae7    	vldr	s12, [pc, #924]         @ 0x19ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x714>
    1612: fe80 0a46    	vminnm.f32	s0, s0, s12
    1616: eeb4 7a40    	vcmp.f32	s14, s0
    161a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    161e: bf98         	it	ls
    1620: 2601         	movls	r6, #0x1
    1622: 2d10         	cmp	r5, #0x10
    1624: bf1c         	itt	ne
    1626: eeb4 7a40    	vcmpne.f32	s14, s0
    162a: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    162e: f240 81d5    	bls.w	0x19dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x744> @ imm = #0x3aa
    1632: f04f 567e    	mov.w	r6, #0x3f800000
    1636: ed8d 7a02    	vstr	s14, [sp, #8]
    163a: ed8d fa03    	vstr	s30, [sp, #12]
    163e: e01b         	b	0x1678 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3e0> @ imm = #0x36
    1640: 00 80 bb 47  	.word	0x47bb8000
    1644: 00 24 74 cb  	.word	0xcb742400
    1648: 00 24 74 4b  	.word	0x4b742400
    164c: 00 a0 0c 48  	.word	0x480ca000
    1650: 0a d7 23 3d  	.word	0x3d23d70a
    1654: 50 d0 e8 36  	.word	0x36e8d050
    1658: 79 61 2e 43  	.word	0x432e6179
    165c: ab aa a0 b8  	.word	0xb8a0aaab
    1660: 00 00 00 00  	.word	0x00000000
    1664: 00 bf 00 bf  	.word	0xbf00bf00
    1668: eeb0 1b48    	vmov.f64	d1, d8
    166c: f5a6 0600    	sub.w	r6, r6, #0x800000
    1670: f1b6 5f66    	cmp.w	r6, #0x39800000
    1674: f000 819c    	beq.w	0x19b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x718> @ imm = #0x338
    1678: ee00 6a10    	vmov	s0, r6
    167c: eef0 3a4e    	vmov.f32	s7, s28
    1680: ed9f 7bef    	vldr	d7, [pc, #956]          @ 0x1a40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7a8>
    1684: eeb0 8b41    	vmov.f64	d8, d1
    1688: eeb0 6a4c    	vmov.f32	s12, s24
    168c: ee4b 3a00    	vmla.f32	s7, s22, s0
    1690: eef0 9a44    	vmov.f32	s19, s8
    1694: eef0 ca44    	vmov.f32	s25, s8
    1698: eeb0 fa44    	vmov.f32	s30, s8
    169c: eeb7 aae3    	vcvt.f64.f32	d10, s7
    16a0: ee0a 1b07    	vmla.f64	d1, d10, d7
    16a4: eef0 aa44    	vmov.f32	s21, s8
    16a8: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    16ac: eeb0 1a60    	vmov.f32	s2, s1
    16b0: ee03 1aa5    	vmla.f32	s2, s7, s11
    16b4: ee00 6a05    	vmla.f32	s12, s0, s10
    16b8: eef0 dac1    	vabs.f32	s27, s2
    16bc: eeb4 2a46    	vcmp.f32	s4, s12
    16c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16c4: fe32 0a06    	vselgt.f32	s0, s4, s12
    16c8: eeb4 0a43    	vcmp.f32	s0, s6
    16cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16d0: eeb5 1a40    	vcmp.f32	s2, #0
    16d4: eeb0 1a44    	vmov.f32	s2, s8
    16d8: fe33 0a00    	vselgt.f32	s0, s6, s0
    16dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16e0: bf48         	it	mi
    16e2: eeb0 1a64    	vmovmi.f32	s2, s9
    16e6: eef4 da62    	vcmp.f32	s27, s5
    16ea: fe76 ba81    	vselgt.f32	s23, s13, s2
    16ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16f2: f280 80fd    	bge.w	0x18f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x1fa
    16f6: eeb0 fa44    	vmov.f32	s30, s8
    16fa: eeb0 aa4d    	vmov.f32	s20, s26
    16fe: eef4 da6e    	vcmp.f32	s27, s29
    1702: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1706: d927         	bls	0x1758 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4c0> @ imm = #0x4e
    1708: eef4 da6f    	vcmp.f32	s27, s31
    170c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1710: d916         	bls	0x1740 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4a8> @ imm = #0x2c
    1712: ed9f 1acf    	vldr	s2, [pc, #828]          @ 0x1a50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b8>
    1716: eeb0 aa08    	vmov.f32	s20, #3.000000e+00
    171a: ee3d 1a81    	vadd.f32	s2, s27, s2
    171e: ed9f 7acd    	vldr	s14, [pc, #820]         @ 0x1a54 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7bc>
    1722: e015         	b	0x1750 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4b8> @ imm = #0x2a
    1724: 7c f2 b0 3a  	.word	0x3ab0f27c
    1728: a6 9b c4 3b  	.word	0x3bc49ba6
    172c: a6 9b c4 bb  	.word	0xbbc49ba6
    1730: 79 78 b0 43  	.word	0x43b07879
    1734: 7c f2 b0 ba  	.word	0xbab0f27c
    1738: 53 4a a1 43  	.word	0x43a14a53
    173c: 00 bf 00 bf  	.word	0xbf00bf00
    1740: ed9f 1ac1    	vldr	s2, [pc, #772]          @ 0x1a48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b0>
    1744: eeb0 aa4d    	vmov.f32	s20, s26
    1748: ee3d 1a81    	vadd.f32	s2, s27, s2
    174c: ed9f 7abf    	vldr	s14, [pc, #764]         @ 0x1a4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b4>
    1750: ee01 aa07    	vmla.f32	s20, s2, s14
    1754: ee2b fa87    	vmul.f32	s30, s23, s14
    1758: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    175c: eef1 9a4f    	vneg.f32	s19, s30
    1760: ee31 1a4a    	vsub.f32	s2, s2, s20
    1764: fec1 da04    	vmaxnm.f32	s27, s2, s8
    1768: eef5 da40    	vcmp.f32	s27, #0
    176c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1770: d97a         	bls	0x1868 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5d0> @ imm = #0xf4
    1772: eeb0 aac0    	vabs.f32	s20, s0
    1776: eeb4 aa6d    	vcmp.f32	s20, s27
    177a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    177e: f240 808b    	bls.w	0x1898 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x600> @ imm = #0x116
    1782: eeb0 1a65    	vmov.f32	s2, s11
    1786: eecd aa8a    	vdiv.f32	s21, s27, s20
    178a: eeb0 7a6f    	vmov.f32	s14, s31
    178e: eef0 fa62    	vmov.f32	s31, s5
    1792: eef0 2a64    	vmov.f32	s5, s9
    1796: eef0 5a4e    	vmov.f32	s11, s28
    179a: eef0 4a41    	vmov.f32	s9, s2
    179e: ee2a 1aaa    	vmul.f32	s2, s21, s21
    17a2: eef0 1a66    	vmov.f32	s3, s13
    17a6: eeb0 ea49    	vmov.f32	s28, s18
    17aa: eeb0 9a60    	vmov.f32	s18, s1
    17ae: eef0 0a4c    	vmov.f32	s1, s24
    17b2: ee21 1a01    	vmul.f32	s2, s2, s2
    17b6: eeb0 ca4d    	vmov.f32	s24, s26
    17ba: eeb0 da45    	vmov.f32	s26, s10
    17be: eeb0 5a6e    	vmov.f32	s10, s29
    17c2: eeb0 fa66    	vmov.f32	s30, s13
    17c6: ee21 1a01    	vmul.f32	s2, s2, s2
    17ca: ee61 ba01    	vmul.f32	s23, s2, s2
    17ce: ee3b aaa6    	vadd.f32	s20, s23, s13
    17d2: eeb4 aa66    	vcmp.f32	s20, s13
    17d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17da: d009         	beq	0x17f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x558> @ imm = #0x12
    17dc: eeb0 fa4a    	vmov.f32	s30, s20
    17e0: eeb1 facf    	vsqrt.f32	s30, s30
    17e4: eeb1 facf    	vsqrt.f32	s30, s30
    17e8: eeb1 facf    	vsqrt.f32	s30, s30
    17ec: eeb1 facf    	vsqrt.f32	s30, s30
    17f0: eec1 ea8f    	vdiv.f32	s29, s3, s30
    17f4: eddf ca98    	vldr	s25, [pc, #608]         @ 0x1a58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c0>
    17f8: eef0 6a61    	vmov.f32	s13, s3
    17fc: eeb4 0a40    	vcmp.f32	s0, s0
    1800: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1804: ee8e aa8a    	vdiv.f32	s20, s29, s20
    1808: eeb0 fa6c    	vmov.f32	s30, s25
    180c: bf7f         	itttt	vc
    180e: ee10 3a10    	vmovvc	r3, s0
    1812: f36c 031e    	bfivc	r3, r12, #0, #31
    1816: ee01 3a10    	vmovvc	s2, r3
    181a: ee61 1a2d    	vmulvc.f32	s3, s2, s27
    181e: bf7c         	itt	vc
    1820: ee61 caae    	vmulvc.f32	s25, s3, s29
    1824: ee21 fa0a    	vmulvc.f32	s30, s2, s20
    1828: ee2a 1aab    	vmul.f32	s2, s21, s23
    182c: eef0 ea45    	vmov.f32	s29, s10
    1830: eeb0 5a4d    	vmov.f32	s10, s26
    1834: eeb0 da4c    	vmov.f32	s26, s24
    1838: eeb0 ca60    	vmov.f32	s24, s1
    183c: eef0 0a49    	vmov.f32	s1, s18
    1840: ee61 aa0a    	vmul.f32	s21, s2, s20
    1844: eeb0 1a64    	vmov.f32	s2, s9
    1848: eef0 4a62    	vmov.f32	s9, s5
    184c: eef0 2a6f    	vmov.f32	s5, s31
    1850: eeb0 9a4e    	vmov.f32	s18, s28
    1854: eeb0 ea65    	vmov.f32	s28, s11
    1858: eef0 5a41    	vmov.f32	s11, s2
    185c: eef0 fa47    	vmov.f32	s31, s14
    1860: e046         	b	0x18f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x8c
    1862: bf00         	nop
    1864: bf00         	nop
    1866: bf00         	nop
    1868: eef0 ca44    	vmov.f32	s25, s8
    186c: eef0 aa44    	vmov.f32	s21, s8
    1870: eeb0 fa44    	vmov.f32	s30, s8
    1874: e03c         	b	0x18f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x78
    1876: bf00         	nop
    1878: 79 61 2e c3  	.word	0xc32e6179
    187c: 00 00 00 80  	.word	0x80000000
    1880: 5e 95 e1 bc  	.word	0xbce1955e
    1884: ab aa a0 38  	.word	0x38a0aaab
    1888: 00 00 80 7f  	.word	0x7f800000
    188c: 08 e5 3c 1e  	.word	0x1e3ce508
    1890: 17 b7 d1 38  	.word	0x38d1b717
    1894: 00 bf 00 bf  	.word	0xbf00bf00
    1898: ee80 1a2d    	vdiv.f32	s2, s0, s27
    189c: eef0 aa66    	vmov.f32	s21, s13
    18a0: ee21 1a01    	vmul.f32	s2, s2, s2
    18a4: ee21 1a01    	vmul.f32	s2, s2, s2
    18a8: ee21 1a01    	vmul.f32	s2, s2, s2
    18ac: ee21 aa01    	vmul.f32	s20, s2, s2
    18b0: ee3a fa26    	vadd.f32	s30, s20, s13
    18b4: eeb4 fa66    	vcmp.f32	s30, s13
    18b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    18bc: d009         	beq	0x18d2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x63a> @ imm = #0x12
    18be: eef0 aa4f    	vmov.f32	s21, s30
    18c2: eef1 aaea    	vsqrt.f32	s21, s21
    18c6: eef1 aaea    	vsqrt.f32	s21, s21
    18ca: eef1 aaea    	vsqrt.f32	s21, s21
    18ce: eef1 aaea    	vsqrt.f32	s21, s21
    18d2: ee86 1aaa    	vdiv.f32	s2, s13, s21
    18d6: ee60 1a0a    	vmul.f32	s3, s0, s20
    18da: eec1 aa0f    	vdiv.f32	s21, s2, s30
    18de: eec1 1aad    	vdiv.f32	s3, s3, s27
    18e2: ee60 ca01    	vmul.f32	s25, s0, s2
    18e6: ee21 faaa    	vmul.f32	s30, s3, s21
    18ea: bf00         	nop
    18ec: bf00         	nop
    18ee: bf00         	nop
    18f0: ee73 daec    	vsub.f32	s27, s7, s25
    18f4: ee1d 3a90    	vmov	r3, s27
    18f8: f023 4300    	bic	r3, r3, #0x80000000
    18fc: f1b3 4fff    	cmp.w	r3, #0x7f800000
    1900: f6bf aeb2    	bge.w	0x1668 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3d0> @ imm = #-0x29c
    1904: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    1908: ee8d 1a81    	vdiv.f32	s2, s27, s2
    190c: eeb0 1ac1    	vabs.f32	s2, s2
    1910: fec1 ba04    	vmaxnm.f32	s23, s2, s8
    1914: eef4 ba49    	vcmp.f32	s23, s18
    1918: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    191c: f57f aea4    	bpl.w	0x1668 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3d0> @ imm = #-0x2b8
    1920: 4673         	mov	r3, lr
    1922: eeb4 6a43    	vcmp.f32	s12, s6
    1926: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    192a: bf48         	it	mi
    192c: 3304         	addmi	r3, #0x4
    192e: eeb4 6a42    	vcmp.f32	s12, s4
    1932: ed9f 6a4a    	vldr	s12, [pc, #296]         @ 0x1a5c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c4>
    1936: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    193a: ed93 1a00    	vldr	s2, [r3]
    193e: edc1 3a01    	vstr	s7, [r1, #4]
    1942: fe31 6a06    	vselgt.f32	s12, s2, s12
    1946: 2d10         	cmp	r5, #0x10
    1948: ed9f 9a46    	vldr	s18, [pc, #280]         @ 0x1a64 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7cc>
    194c: ed9d 1a01    	vldr	s2, [sp, #4]
    1950: eddf ca46    	vldr	s25, [pc, #280]         @ 0x1a6c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d4>
    1954: ed81 1a00    	vstr	s2, [r1]
    1958: ed9f ba43    	vldr	s22, [pc, #268]         @ 0x1a68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d0>
    195c: d019         	beq	0x1992 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x6fa> @ imm = #0x32
    195e: ee29 1a8f    	vmul.f32	s2, s19, s30
    1962: eeb0 ea63    	vmov.f32	s28, s7
    1966: ee66 1a2a    	vmul.f32	s3, s12, s21
    196a: ed9f 6a3d    	vldr	s12, [pc, #244]         @ 0x1a60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c8>
    196e: eeb1 aa6d    	vneg.f32	s20, s27
    1972: eeb0 fa40    	vmov.f32	s30, s0
    1976: ee21 6a06    	vmul.f32	s12, s2, s12
    197a: 2c10         	cmp	r4, #0x10
    197c: ee01 6a89    	vmla.f32	s12, s3, s18
    1980: eeb0 9a6b    	vmov.f32	s18, s23
    1984: eeb0 1b48    	vmov.f64	d1, d8
    1988: f108 0801    	add.w	r8, r8, #0x1
    198c: 4625         	mov	r5, r4
    198e: f77f ae01    	ble.w	0x1594 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2fc> @ imm = #-0x3fe
    1992: f64d 3011    	movw	r0, #0xdb11
    1996: f64d 7200    	movw	r2, #0xdf00
    199a: f2c0 0000    	movt	r0, #0x0
    199e: f2c0 0200    	movt	r2, #0x0
    19a2: 2128         	movs	r1, #0x28
    19a4: f00a fa72    	bl	0xbe8c <core::panicking::panic> @ imm = #0xa4e4
    19a8: bd 37 06 36  	.word	0x360637bd
    19ac: ac c5 a7 37  	.word	0x37a7c5ac
    19b0: ed9f 0a2e    	vldr	s0, [pc, #184]          @ 0x1a6c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d4>
    19b4: f108 0801    	add.w	r8, r8, #0x1
    19b8: eeb4 9a40    	vcmp.f32	s18, s0
    19bc: 2600         	movs	r6, #0x0
    19be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19c2: d809         	bhi	0x19d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x740> @ imm = #0x12
    19c4: ed9f 0a2a    	vldr	s0, [pc, #168]          @ 0x1a70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d8>
    19c8: ed9d 1a02    	vldr	s2, [sp, #8]
    19cc: eeb4 1a40    	vcmp.f32	s2, s0
    19d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19d4: bf98         	it	ls
    19d6: 2601         	movls	r6, #0x1
    19d8: ed9d fa03    	vldr	s30, [sp, #12]
    19dc: ed82 fa00    	vstr	s30, [r2]
    19e0: ed80 9a00    	vstr	s18, [r0]
    19e4: f880 8004    	strb.w	r8, [r0, #0x4]
    19e8: 7146         	strb	r6, [r0, #0x5]
    19ea: b008         	add	sp, #0x20
    19ec: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    19f0: f85d 8b04    	ldr	r8, [sp], #4
    19f4: bdf0         	pop	{r4, r5, r6, r7, pc}
    19f6: bf00         	nop
    19f8: ed80 9a00    	vstr	s18, [r0]
    19fc: 2100         	movs	r1, #0x0
    19fe: f880 8004    	strb.w	r8, [r0, #0x4]
    1a02: 7141         	strb	r1, [r0, #0x5]
    1a04: b008         	add	sp, #0x20
    1a06: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    1a0a: f85d 8b04    	ldr	r8, [sp], #4
    1a0e: bdf0         	pop	{r4, r5, r6, r7, pc}
    1a10: 2600         	movs	r6, #0x0
    1a12: e7e3         	b	0x19dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x744> @ imm = #-0x3a
    1a14: bf00         	nop
    1a16: bf00         	nop
    1a18: f64d 207b    	movw	r0, #0xda7b
    1a1c: f64d 7220    	movw	r2, #0xdf20
    1a20: f2c0 0000    	movt	r0, #0x0
    1a24: f2c0 0200    	movt	r2, #0x0
    1a28: a904         	add	r1, sp, #0x10
    1a2a: f00a fa2b    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0xa456
    1a2e: bf00         	nop
    1a30: ed9f 4a09    	vldr	s8, [pc, #36]           @ 0x1a58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c0>
    1a34: eeb0 6a44    	vmov.f32	s12, s8
    1a38: e52d         	b	0x1496 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x1fe> @ imm = #-0x5a6
    1a3a: bf00         	nop
    1a3c: bf00         	nop
    1a3e: bf00         	nop
    1a40: 1f 89 9b cf  	.word	0xcf9b891f
    1a44: ab 32 9c bf  	.word	0xbf9c32ab
    1a48: 7c f2 b0 ba  	.word	0xbab0f27c
    1a4c: 53 4a a1 43  	.word	0x43a14a53
    1a50: a6 9b c4 bb  	.word	0xbbc49ba6
    1a54: 79 78 b0 43  	.word	0x43b07879
    1a58: 00 00 c0 7f  	.word	0x7fc00000
    1a5c: 00 00 00 80  	.word	0x80000000
    1a60: ab aa a0 38  	.word	0x38a0aaab
    1a64: 5e 95 e1 bc  	.word	0xbce1955e
    1a68: 08 e5 3c 1e  	.word	0x1e3ce508
    1a6c: 17 b7 d1 38  	.word	0x38d1b717
    1a70: ac c5 a7 37  	.word	0x37a7c5ac
    1a74: 00 00 00 80  	.word	0x80000000
    1a78: 79 61 2e c3  	.word	0xc32e6179
    1a7c: d4 d4 d4 d4  	.word	0xd4d4d4d4

00001a80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>>:
    1a80: b5f0         	push	{r4, r5, r6, r7, lr}
    1a82: af03         	add	r7, sp, #0xc
    1a84: e92d 0f00    	push.w	{r8, r9, r10, r11}
    1a88: b081         	sub	sp, #0x4
    1a8a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    1a8e: b09a         	sub	sp, #0x68
    1a90: ed9f 1ab5    	vldr	s2, [pc, #724]          @ 0x1d68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2e8>
    1a94: 2600         	movs	r6, #0x0
    1a96: ee20 2a01    	vmul.f32	s4, s0, s2
    1a9a: ed9f 0ab4    	vldr	s0, [pc, #720]          @ 0x1d6c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2ec>
    1a9e: ed9f 1ab4    	vldr	s2, [pc, #720]          @ 0x1d70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f0>
    1aa2: 9610         	str	r6, [sp, #0x40]
    1aa4: ed9f 3ab3    	vldr	s6, [pc, #716]          @ 0x1d74 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f4>
    1aa8: 960f         	str	r6, [sp, #0x3c]
    1aaa: ee32 0a00    	vadd.f32	s0, s4, s0
    1aae: 960c         	str	r6, [sp, #0x30]
    1ab0: ee32 1a01    	vadd.f32	s2, s4, s2
    1ab4: e9cd 660d    	strd	r6, r6, [sp, #52]
    1ab8: ee80 0a03    	vdiv.f32	s0, s0, s6
    1abc: ee81 1a03    	vdiv.f32	s2, s2, s6
    1ac0: eeb4 0a41    	vcmp.f32	s0, s2
    1ac4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ac8: f200 86da    	bhi.w	0x2880 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe00> @ imm = #0xdb4
    1acc: ed91 3a01    	vldr	s6, [r1, #4]
    1ad0: ed91 7a02    	vldr	s14, [r1, #8]
    1ad4: eeb7 4ac3    	vcvt.f64.f32	d4, s6
    1ad8: ed8d 3a01    	vstr	s6, [sp, #4]
    1adc: ed9f 5b7c    	vldr	d5, [pc, #496]          @ 0x1cd0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x250>
    1ae0: edd1 ba03    	vldr	s23, [r1, #12]
    1ae4: eddf faa4    	vldr	s31, [pc, #656]         @ 0x1d78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f8>
    1ae8: ed92 6b12    	vldr	d6, [r2, #72]
    1aec: e9cd 3002    	strd	r3, r0, [sp, #8]
    1af0: ee04 6b05    	vmla.f64	d6, d4, d5
    1af4: 2300         	movs	r3, #0x0
    1af6: eeb7 4ac7    	vcvt.f64.f32	d4, s14
    1afa: eddf 1aa0    	vldr	s3, [pc, #640]          @ 0x1d7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    1afe: ed9f 3b76    	vldr	d3, [pc, #472]          @ 0x1cd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x258>
    1b02: eeb0 5b46    	vmov.f64	d5, d6
    1b06: ed8d 7a0b    	vstr	s14, [sp, #44]
    1b0a: eeb7 aa00    	vmov.f32	s20, #1.000000e+00
    1b0e: ee04 5b03    	vmla.f64	d5, d4, d3
    1b12: eeb7 4aeb    	vcvt.f64.f32	d4, s23
    1b16: ed9f 3b72    	vldr	d3, [pc, #456]          @ 0x1ce0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x260>
    1b1a: ee04 5b03    	vmla.f64	d5, d4, d3
    1b1e: ed9f 4a98    	vldr	s8, [pc, #608]          @ 0x1d80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x300>
    1b22: eef0 4a61    	vmov.f32	s9, s3
    1b26: ee22 4a04    	vmul.f32	s8, s4, s8
    1b2a: ed9f 3a96    	vldr	s6, [pc, #600]          @ 0x1d84 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x304>
    1b2e: eeb7 2bc5    	vcvt.f32.f64	s4, d5
    1b32: ed8d 4a07    	vstr	s8, [sp, #28]
    1b36: ed8d 6b08    	vstr	d6, [sp, #32]
    1b3a: ee02 4a03    	vmla.f32	s8, s4, s6
    1b3e: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x1f04 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x484>
    1b42: ed92 2b04    	vldr	d2, [r2, #16]
    1b46: eeb7 6bc2    	vcvt.f32.f64	s12, d2
    1b4a: ed8d 6a06    	vstr	s12, [sp, #24]
    1b4e: ee07 6a03    	vmla.f32	s12, s14, s6
    1b52: eebf 3a00    	vmov.f32	s6, #-1.000000e+00
    1b56: eeb4 0a44    	vcmp.f32	s0, s8
    1b5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b5e: ee0b 6aaf    	vmla.f32	s12, s23, s31
    1b62: fe30 2a04    	vselgt.f32	s4, s0, s8
    1b66: eeb4 2a41    	vcmp.f32	s4, s2
    1b6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b6e: eeb4 4a40    	vcmp.f32	s8, s0
    1b72: fe71 9a02    	vselgt.f32	s19, s2, s4
    1b76: eeb0 2a61    	vmov.f32	s4, s3
    1b7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b7e: bfc8         	it	gt
    1b80: 2301         	movgt	r3, #0x1
    1b82: eeb4 4a41    	vcmp.f32	s8, s2
    1b86: eeb0 4a61    	vmov.f32	s8, s3
    1b8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b8e: eeb5 6a40    	vcmp.f32	s12, #0
    1b92: eeb0 5ac6    	vabs.f32	s10, s12
    1b96: bf48         	it	mi
    1b98: 2601         	movmi	r6, #0x1
    1b9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b9e: bf48         	it	mi
    1ba0: eeb0 2a43    	vmovmi.f32	s4, s6
    1ba4: ea06 0603    	and.w	r6, r6, r3
    1ba8: fe3a 6a02    	vselgt.f32	s12, s20, s4
    1bac: ed9f 2ad6    	vldr	s4, [pc, #856]          @ 0x1f08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x488>
    1bb0: eeb4 5a42    	vcmp.f32	s10, s4
    1bb4: eeb0 2a61    	vmov.f32	s4, s3
    1bb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bbc: f280 80bf    	bge.w	0x1d3e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x17e
    1bc0: ed9f 2ad2    	vldr	s4, [pc, #840]          @ 0x1f0c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x48c>
    1bc4: eeb4 5a42    	vcmp.f32	s10, s4
    1bc8: ed9f 2a6c    	vldr	s4, [pc, #432]          @ 0x1d7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    1bcc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bd0: d912         	bls	0x1bf8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x178> @ imm = #0x24
    1bd2: ed9f 4acf    	vldr	s8, [pc, #828]          @ 0x1f10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x490>
    1bd6: eeb4 5a44    	vcmp.f32	s10, s8
    1bda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bde: d913         	bls	0x1c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x188> @ imm = #0x26
    1be0: ed9f 4acc    	vldr	s8, [pc, #816]          @ 0x1f14 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x494>
    1be4: ee35 5a04    	vadd.f32	s10, s10, s8
    1be8: ed9f 7acb    	vldr	s14, [pc, #812]         @ 0x1f18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x498>
    1bec: eeb0 4a08    	vmov.f32	s8, #3.000000e+00
    1bf0: e012         	b	0x1c18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x198> @ imm = #0x24
    1bf2: bf00         	nop
    1bf4: bf00         	nop
    1bf6: bf00         	nop
    1bf8: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    1bfc: eeb0 6a42    	vmov.f32	s12, s4
    1c00: e00e         	b	0x1c20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x1a0> @ imm = #0x1c
    1c02: bf00         	nop
    1c04: bf00         	nop
    1c06: bf00         	nop
    1c08: ed9f 4ac4    	vldr	s8, [pc, #784]          @ 0x1f1c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x49c>
    1c0c: ee35 5a04    	vadd.f32	s10, s10, s8
    1c10: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    1c14: ed9f 7ac2    	vldr	s14, [pc, #776]         @ 0x1f20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a0>
    1c18: ee05 4a07    	vmla.f32	s8, s10, s14
    1c1c: ee26 6a07    	vmul.f32	s12, s12, s14
    1c20: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    1c24: eef1 1a46    	vneg.f32	s3, s12
    1c28: ee35 4a44    	vsub.f32	s8, s10, s8
    1c2c: fe84 5a02    	vmaxnm.f32	s10, s8, s4
    1c30: eeb5 5a40    	vcmp.f32	s10, #0
    1c34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c38: d942         	bls	0x1cc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x240> @ imm = #0x84
    1c3a: eeb0 2ae9    	vabs.f32	s4, s19
    1c3e: eeb4 2a45    	vcmp.f32	s4, s10
    1c42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c46: d94f         	bls	0x1ce8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x268> @ imm = #0x9e
    1c48: ee85 4a02    	vdiv.f32	s8, s10, s4
    1c4c: ee24 2a04    	vmul.f32	s4, s8, s8
    1c50: ee22 2a02    	vmul.f32	s4, s4, s4
    1c54: ee22 2a02    	vmul.f32	s4, s4, s4
    1c58: ee22 6a02    	vmul.f32	s12, s4, s4
    1c5c: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    1c60: ee36 7a02    	vadd.f32	s14, s12, s4
    1c64: eef0 0a42    	vmov.f32	s1, s4
    1c68: eeb4 7a42    	vcmp.f32	s14, s4
    1c6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c70: d009         	beq	0x1c86 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x206> @ imm = #0x12
    1c72: eef0 0a47    	vmov.f32	s1, s14
    1c76: eef1 0ae0    	vsqrt.f32	s1, s1
    1c7a: eef1 0ae0    	vsqrt.f32	s1, s1
    1c7e: eef1 0ae0    	vsqrt.f32	s1, s1
    1c82: eef1 0ae0    	vsqrt.f32	s1, s1
    1c86: ee82 2a20    	vdiv.f32	s4, s4, s1
    1c8a: eef4 9a69    	vcmp.f32	s19, s19
    1c8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c92: ee82 7a07    	vdiv.f32	s14, s4, s14
    1c96: f180 85ff    	bvs.w	0x2898 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe18> @ imm = #0xbfe
    1c9a: ee19 3a90    	vmov	r3, s19
    1c9e: f04f 557e    	mov.w	r5, #0x3f800000
    1ca2: f365 031e    	bfi	r3, r5, #0, #31
    1ca6: ee00 3a90    	vmov	s1, r3
    1caa: ee20 5a85    	vmul.f32	s10, s1, s10
    1cae: ee60 4a87    	vmul.f32	s9, s1, s14
    1cb2: ee25 2a02    	vmul.f32	s4, s10, s4
    1cb6: ee24 4a06    	vmul.f32	s8, s8, s12
    1cba: ee24 4a07    	vmul.f32	s8, s8, s14
    1cbe: e03e         	b	0x1d3e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x7c
    1cc0: eeb0 4a42    	vmov.f32	s8, s4
    1cc4: eef0 4a42    	vmov.f32	s9, s4
    1cc8: e039         	b	0x1d3e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x72
    1cca: bf00         	nop
    1ccc: bf00         	nop
    1cce: bf00         	nop
    1cd0: a5 94 a7 50  	.word	0x50a794a5
    1cd4: 09 2c d5 3f  	.word	0x3fd52c09
    1cd8: 9c 9e 91 65  	.word	0x65919e9c
    1cdc: 97 57 e8 bf  	.word	0xbfe85797
    1ce0: 76 43 71 a5  	.word	0xa5714376
    1ce4: f8 73 e2 3f  	.word	0x3fe273f8
    1ce8: ee89 2a85    	vdiv.f32	s4, s19, s10
    1cec: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    1cf0: ee22 2a02    	vmul.f32	s4, s4, s4
    1cf4: eeb0 7a46    	vmov.f32	s14, s12
    1cf8: ee22 2a02    	vmul.f32	s4, s4, s4
    1cfc: ee22 2a02    	vmul.f32	s4, s4, s4
    1d00: ee22 2a02    	vmul.f32	s4, s4, s4
    1d04: ee32 4a06    	vadd.f32	s8, s4, s12
    1d08: eeb4 4a46    	vcmp.f32	s8, s12
    1d0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d10: d009         	beq	0x1d26 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2a6> @ imm = #0x12
    1d12: eeb0 7a44    	vmov.f32	s14, s8
    1d16: eeb1 7ac7    	vsqrt.f32	s14, s14
    1d1a: eeb1 7ac7    	vsqrt.f32	s14, s14
    1d1e: eeb1 7ac7    	vsqrt.f32	s14, s14
    1d22: eeb1 7ac7    	vsqrt.f32	s14, s14
    1d26: ee86 6a07    	vdiv.f32	s12, s12, s14
    1d2a: ee29 2a82    	vmul.f32	s4, s19, s4
    1d2e: ee86 4a04    	vdiv.f32	s8, s12, s8
    1d32: ee82 5a05    	vdiv.f32	s10, s4, s10
    1d36: ee29 2a86    	vmul.f32	s4, s19, s12
    1d3a: ee65 4a04    	vmul.f32	s9, s10, s8
    1d3e: ed9d 3a0b    	vldr	s6, [sp, #44]
    1d42: 2e00         	cmp	r6, #0x0
    1d44: ee33 2a42    	vsub.f32	s4, s6, s4
    1d48: ed9f 5a76    	vldr	s10, [pc, #472]         @ 0x1f24 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a4>
    1d4c: ed9f 3a76    	vldr	s6, [pc, #472]          @ 0x1f28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a8>
    1d50: fe03 7a05    	vseleq.f32	s14, s6, s10
    1d54: ee12 3a10    	vmov	r3, s4
    1d58: f023 4300    	bic	r3, r3, #0x80000000
    1d5c: f1b3 4fff    	cmp.w	r3, #0x7f800000
    1d60: db12         	blt	0x1d88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x308> @ imm = #0x24
    1d62: ed9f 6a72    	vldr	s12, [pc, #456]         @ 0x1f2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4ac>
    1d66: e019         	b	0x1d9c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x31c> @ imm = #0x32
    1d68: 00 80 bb 47  	.word	0x47bb8000
    1d6c: 00 24 74 cb  	.word	0xcb742400
    1d70: 00 24 74 4b  	.word	0x4b742400
    1d74: 00 a0 0c 48  	.word	0x480ca000
    1d78: 46 af b3 38  	.word	0x38b3af46
    1d7c: 00 00 00 00  	.word	0x00000000
    1d80: 50 d0 e8 36  	.word	0x36e8d050
    1d84: 79 61 2e 43  	.word	0x432e6179
    1d88: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    1d8c: ed1f 6a05    	vldr	s12, [pc, #-20]         @ 0x1d7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    1d90: ee82 5a05    	vdiv.f32	s10, s4, s10
    1d94: eeb0 5ac5    	vabs.f32	s10, s10
    1d98: fe85 6a06    	vmaxnm.f32	s12, s10, s12
    1d9c: ed92 5b06    	vldr	d5, [r2, #24]
    1da0: ed9d 3a0b    	vldr	s6, [sp, #44]
    1da4: eef6 8a00    	vmov.f32	s17, #5.000000e-01
    1da8: eef7 0bc5    	vcvt.f32.f64	s1, d5
    1dac: ee61 1aa4    	vmul.f32	s3, s3, s9
    1db0: eddf 2a5f    	vldr	s5, [pc, #380]          @ 0x1f30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b0>
    1db4: eeb0 5a60    	vmov.f32	s10, s1
    1db8: ee03 5a2f    	vmla.f32	s10, s6, s31
    1dbc: ed9f 3a5d    	vldr	s6, [pc, #372]          @ 0x1f34 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b4>
    1dc0: eecb 5a83    	vdiv.f32	s11, s23, s6
    1dc4: ed9f 3a5c    	vldr	s6, [pc, #368]          @ 0x1f38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b8>
    1dc8: ee0b 5a83    	vmla.f32	s10, s23, s6
    1dcc: ed9f 3a5b    	vldr	s6, [pc, #364]          @ 0x1f3c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4bc>
    1dd0: eef0 6ae5    	vabs.f32	s13, s11
    1dd4: eef4 6a68    	vcmp.f32	s13, s17
    1dd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ddc: f280 80b8    	bge.w	0x1f50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4d0> @ imm = #0x170
    1de0: eddf 6a57    	vldr	s13, [pc, #348]         @ 0x1f40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c0>
    1de4: eebe ca00    	vmov.f32	s24, #-5.000000e-01
    1de8: eef4 6a65    	vcmp.f32	s13, s11
    1dec: eddf 7a55    	vldr	s15, [pc, #340]         @ 0x1f44 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    1df0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1df4: ed9f fa54    	vldr	s30, [pc, #336]         @ 0x1f48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c8>
    1df8: fe76 4aa5    	vselgt.f32	s9, s13, s11
    1dfc: eddf 5a53    	vldr	s11, [pc, #332]         @ 0x1f4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    1e00: ee8b fa8f    	vdiv.f32	s30, s23, s30
    1e04: eef4 4a65    	vcmp.f32	s9, s11
    1e08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e0c: fe75 4aa4    	vselgt.f32	s9, s11, s9
    1e10: ee24 9aa7    	vmul.f32	s18, s9, s15
    1e14: ee39 da28    	vadd.f32	s26, s18, s17
    1e18: eeb5 9a40    	vcmp.f32	s18, #0
    1e1c: ee39 ea0c    	vadd.f32	s28, s18, s24
    1e20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e24: eebd dacd    	vcvt.s32.f32	s26, s26
    1e28: eebd eace    	vcvt.s32.f32	s28, s28
    1e2c: eef4 6a4f    	vcmp.f32	s13, s30
    1e30: ee1d 3a10    	vmov	r3, s26
    1e34: ee1e 2a10    	vmov	r2, s28
    1e38: bfa8         	it	ge
    1e3a: 461a         	movge	r2, r3
    1e3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e40: fe76 6a8f    	vselgt.f32	s13, s13, s30
    1e44: eef4 6a65    	vcmp.f32	s13, s11
    1e48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e4c: fe75 5aa6    	vselgt.f32	s11, s11, s13
    1e50: ee65 6aa7    	vmul.f32	s13, s11, s15
    1e54: ee76 7a8c    	vadd.f32	s15, s13, s24
    1e58: eef5 6a40    	vcmp.f32	s13, #0
    1e5c: ee36 9aa8    	vadd.f32	s18, s13, s17
    1e60: ee0c 2a10    	vmov	s24, r2
    1e64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e68: eefd 7ae7    	vcvt.s32.f32	s15, s15
    1e6c: eddf 6af2    	vldr	s13, [pc, #968]         @ 0x2238 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7b8>
    1e70: eebd 9ac9    	vcvt.s32.f32	s18, s18
    1e74: eeb8 cacc    	vcvt.f32.s32	s24, s24
    1e78: ee17 3a90    	vmov	r3, s15
    1e7c: ee19 6a10    	vmov	r6, s18
    1e80: bfa8         	it	ge
    1e82: 4633         	movge	r3, r6
    1e84: ee4c 4a66    	vmls.f32	s9, s24, s13
    1e88: f04f 567e    	mov.w	r6, #0x3f800000
    1e8c: ee07 3a90    	vmov	s15, r3
    1e90: eb06 52c2    	add.w	r2, r6, r2, lsl #23
    1e94: eb06 53c3    	add.w	r3, r6, r3, lsl #23
    1e98: eef8 7ae7    	vcvt.f32.s32	s15, s15
    1e9c: ee47 5ae6    	vmls.f32	s11, s15, s13
    1ea0: eddf 6af2    	vldr	s13, [pc, #968]         @ 0x226c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    1ea4: eddf 7af2    	vldr	s15, [pc, #968]         @ 0x2270 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    1ea8: eeb0 9a66    	vmov.f32	s18, s13
    1eac: ee04 9aa7    	vmla.f32	s18, s9, s15
    1eb0: ee45 6aa7    	vmla.f32	s13, s11, s15
    1eb4: eddf 7aef    	vldr	s15, [pc, #956]         @ 0x2274 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    1eb8: eeb0 ca67    	vmov.f32	s24, s15
    1ebc: ee25 daa5    	vmul.f32	s26, s11, s11
    1ec0: ee04 ca89    	vmla.f32	s24, s9, s18
    1ec4: eeb7 9a00    	vmov.f32	s18, #1.000000e+00
    1ec8: ee45 7aa6    	vmla.f32	s15, s11, s13
    1ecc: eef0 6a68    	vmov.f32	s13, s17
    1ed0: ee44 6a8c    	vmla.f32	s13, s9, s24
    1ed4: eeb0 ca68    	vmov.f32	s24, s17
    1ed8: ee05 caa7    	vmla.f32	s24, s11, s15
    1edc: ee64 7aa4    	vmul.f32	s15, s9, s9
    1ee0: ee74 4a89    	vadd.f32	s9, s9, s18
    1ee4: ee47 4aa6    	vmla.f32	s9, s15, s13
    1ee8: ee07 3a90    	vmov	s15, r3
    1eec: ee75 6a89    	vadd.f32	s13, s11, s18
    1ef0: ee05 2a90    	vmov	s11, r2
    1ef4: ee4d 6a0c    	vmla.f32	s13, s26, s24
    1ef8: ee64 5aa5    	vmul.f32	s11, s9, s11
    1efc: ee66 4aa7    	vmul.f32	s9, s13, s15
    1f00: e073         	b	0x1fea <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x56a> @ imm = #0xe6
    1f02: bf00         	nop
    1f04: b7 63 f7 b8  	.word	0xb8f763b7
    1f08: 0a d7 23 3d  	.word	0x3d23d70a
    1f0c: 7c f2 b0 3a  	.word	0x3ab0f27c
    1f10: a6 9b c4 3b  	.word	0x3bc49ba6
    1f14: a6 9b c4 bb  	.word	0xbbc49ba6
    1f18: 79 78 b0 43  	.word	0x43b07879
    1f1c: 7c f2 b0 ba  	.word	0xbab0f27c
    1f20: 53 4a a1 43  	.word	0x43a14a53
    1f24: 79 61 2e c3  	.word	0xc32e6179
    1f28: 00 00 00 80  	.word	0x80000000
    1f2c: 00 00 80 7f  	.word	0x7f800000
    1f30: 46 af b3 b8  	.word	0xb8b3af46
    1f34: f5 4a 39 3d  	.word	0x3d394af5
    1f38: 50 69 15 b9  	.word	0xb9156950
    1f3c: b7 63 f7 38  	.word	0x38f763b7
    1f40: 00 00 a0 c2  	.word	0xc2a00000
    1f44: 3b aa b8 3f  	.word	0x3fb8aa3b
    1f48: f5 4a 39 bd  	.word	0xbd394af5
    1f4c: 00 00 a0 42  	.word	0x42a00000
    1f50: eef4 6a66    	vcmp.f32	s13, s13
    1f54: ed5f 4a03    	vldr	s9, [pc, #-12]          @ 0x1f4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    1f58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f5c: eef0 7a68    	vmov.f32	s15, s17
    1f60: ed9f 9ac5    	vldr	s18, [pc, #788]         @ 0x2278 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f8>
    1f64: fe54 6aa6    	vselvs.f32	s13, s9, s13
    1f68: f04f 527e    	mov.w	r2, #0x3f800000
    1f6c: eef4 4a66    	vcmp.f32	s9, s13
    1f70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f74: fe76 6aa4    	vselgt.f32	s13, s13, s9
    1f78: eef4 6a64    	vcmp.f32	s13, s9
    1f7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f80: eef5 5a40    	vcmp.f32	s11, #0
    1f84: fe74 4aa6    	vselgt.f32	s9, s9, s13
    1f88: ed5f 6a12    	vldr	s13, [pc, #-72]         @ 0x1f44 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    1f8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f90: ee44 7aa6    	vmla.f32	s15, s9, s13
    1f94: eefd 6ae7    	vcvt.s32.f32	s13, s15
    1f98: eef8 7ae6    	vcvt.f32.s32	s15, s13
    1f9c: ee16 3a90    	vmov	r3, s13
    1fa0: ee47 4a89    	vmla.f32	s9, s15, s18
    1fa4: eddf 7ab2    	vldr	s15, [pc, #712]         @ 0x2270 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    1fa8: ed9f 9ab0    	vldr	s18, [pc, #704]         @ 0x226c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    1fac: eb02 52c3    	add.w	r2, r2, r3, lsl #23
    1fb0: ee06 2a90    	vmov	s13, r2
    1fb4: ee04 9aa7    	vmla.f32	s18, s9, s15
    1fb8: eddf 7aae    	vldr	s15, [pc, #696]         @ 0x2274 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    1fbc: ee44 7a89    	vmla.f32	s15, s9, s18
    1fc0: eeb0 9a68    	vmov.f32	s18, s17
    1fc4: ee04 9aa7    	vmla.f32	s18, s9, s15
    1fc8: ee64 7aa4    	vmul.f32	s15, s9, s9
    1fcc: ee74 4a8a    	vadd.f32	s9, s9, s20
    1fd0: ee47 4a89    	vmla.f32	s9, s15, s18
    1fd4: ee64 6aa6    	vmul.f32	s13, s9, s13
    1fd8: eeca 4a26    	vdiv.f32	s9, s20, s13
    1fdc: eef0 5a66    	vmov.f32	s11, s13
    1fe0: bfbc         	itt	lt
    1fe2: eef0 5a64    	vmovlt.f32	s11, s9
    1fe6: eef0 4a66    	vmovlt.f32	s9, s13
    1fea: ee75 6ae4    	vsub.f32	s13, s11, s9
    1fee: eddf 3ae2    	vldr	s7, [pc, #904]          @ 0x2378 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8f8>
    1ff2: ee27 4a04    	vmul.f32	s8, s14, s8
    1ff6: ed1f ba33    	vldr	s22, [pc, #-204]        @ 0x1f2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4ac>
    1ffa: ee21 ea83    	vmul.f32	s28, s3, s6
    1ffe: ee16 5aa3    	vnmls.f32	s10, s13, s7
    2002: eddf 3ade    	vldr	s7, [pc, #888]          @ 0x237c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8fc>
    2006: ee21 7aa2    	vmul.f32	s14, s3, s5
    200a: eddf 2add    	vldr	s5, [pc, #884]          @ 0x2380 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x900>
    200e: ee15 2a10    	vmov	r2, s10
    2012: f022 4200    	bic	r2, r2, #0x80000000
    2016: f1b2 4fff    	cmp.w	r2, #0x7f800000
    201a: da17         	bge	0x204c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x5cc> @ imm = #0x2e
    201c: eddf 1ad9    	vldr	s3, [pc, #868]          @ 0x2384 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x904>
    2020: eeb4 6a46    	vcmp.f32	s12, s12
    2024: eec5 1a21    	vdiv.f32	s3, s10, s3
    2028: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    202c: eef0 1ae1    	vabs.f32	s3, s3
    2030: fe11 6a86    	vselvs.f32	s12, s3, s12
    2034: eef4 1a61    	vcmp.f32	s3, s3
    2038: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    203c: fe56 1a21    	vselvs.f32	s3, s12, s3
    2040: eeb4 6a61    	vcmp.f32	s12, s3
    2044: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2048: fe36 ba21    	vselgt.f32	s22, s12, s3
    204c: ee04 ea22    	vmla.f32	s28, s8, s5
    2050: f10d 0844    	add.w	r8, sp, #0x44
    2054: ee04 7a23    	vmla.f32	s14, s8, s7
    2058: 6808         	ldr	r0, [r1]
    205a: ee75 1aa4    	vadd.f32	s3, s11, s9
    205e: 9000         	str	r0, [sp]
    2060: eeb1 2a42    	vneg.f32	s4, s4
    2064: f64a 7046    	movw	r0, #0xaf46
    2068: eeb1 6a45    	vneg.f32	s12, s10
    206c: f04f 0c00    	mov.w	r12, #0x0
    2070: f108 0e14    	add.w	lr, r8, #0x14
    2074: 2400         	movs	r4, #0x0
    2076: f6cb 00b3    	movt	r0, #0xb8b3
    207a: f04f 567e    	mov.w	r6, #0x3f800000
    207e: f04f 0a00    	mov.w	r10, #0x0
    2082: 46e3         	mov	r11, r12
    2084: ed9f 8aee    	vldr	s16, [pc, #952]         @ 0x2440 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c0>
    2088: eddf 5aee    	vldr	s11, [pc, #952]         @ 0x2444 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c4>
    208c: ed5f cac5    	vldr	s25, [pc, #-788]        @ 0x1d7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    2090: ed1f ca55    	vldr	s24, [pc, #-340]        @ 0x1f40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c0>
    2094: ed5f aa53    	vldr	s21, [pc, #-332]        @ 0x1f4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    2098: ed5f ea56    	vldr	s29, [pc, #-344]        @ 0x1f44 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    209c: eddf 4a74    	vldr	s9, [pc, #464]          @ 0x2270 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    20a0: ed9f 5a72    	vldr	s10, [pc, #456]         @ 0x226c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    20a4: ed9f 3a73    	vldr	s6, [pc, #460]          @ 0x2274 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    20a8: ed9f 4ab3    	vldr	s8, [pc, #716]          @ 0x2378 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8f8>
    20ac: 4643         	mov	r3, r8
    20ae: ee21 4a84    	vmul.f32	s8, s3, s8
    20b2: ed5f 1a60    	vldr	s3, [pc, #-384]         @ 0x1f34 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b4>
    20b6: f1bc 0f10    	cmp.w	r12, #0x10
    20ba: eddf 2af1    	vldr	s5, [pc, #964]          @ 0x2480 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa00>
    20be: ee84 4a21    	vdiv.f32	s8, s8, s3
    20c2: ee7e 1a0a    	vadd.f32	s3, s28, s20
    20c6: edcd 1a11    	vstr	s3, [sp, #68]
    20ca: ee34 4a08    	vadd.f32	s8, s8, s16
    20ce: ed8d 4a15    	vstr	s8, [sp, #84]
    20d2: eeb0 4ae1    	vabs.f32	s8, s3
    20d6: bf18         	it	ne
    20d8: f10b 0b01    	addne.w	r11, r11, #0x1
    20dc: ed8d 7a12    	vstr	s14, [sp, #72]
    20e0: 9413         	str	r4, [sp, #0x4c]
    20e2: eeb4 4a6f    	vcmp.f32	s8, s31
    20e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    20ea: 9014         	str	r0, [sp, #0x50]
    20ec: eef4 fa44    	vcmp.f32	s31, s8
    20f0: bf48         	it	mi
    20f2: 330c         	addmi	r3, #0xc
    20f4: 9a0c         	ldr	r2, [sp, #0x30]
    20f6: f8ce 2000    	str.w	r2, [lr]
    20fa: e9d3 2500    	ldrd	r2, r5, [r3]
    20fe: 6898         	ldr	r0, [r3, #0x8]
    2100: 9013         	str	r0, [sp, #0x4c]
    2102: f04f 0004    	mov.w	r0, #0x4
    2106: e9cd 2511    	strd	r2, r5, [sp, #68]
    210a: edc3 1a00    	vstr	s3, [r3]
    210e: f04f 0208    	mov.w	r2, #0x8
    2112: bf48         	it	mi
    2114: 2010         	movmi	r0, #0x10
    2116: ed9d 4a11    	vldr	s8, [sp, #68]
    211a: ee14 3a10    	vmov	r3, s8
    211e: 4440         	add	r0, r8
    2120: bf48         	it	mi
    2122: 2214         	movmi	r2, #0x14
    2124: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2128: ed80 7a00    	vstr	s14, [r0]
    212c: f023 4000    	bic	r0, r3, #0x80000000
    2130: fe76 1a02    	vselgt.f32	s3, s12, s4
    2134: fe32 2a06    	vselgt.f32	s4, s4, s12
    2138: f1b0 4fff    	cmp.w	r0, #0x7f800000
    213c: 980d         	ldr	r0, [sp, #0x34]
    213e: f8ce 0004    	str.w	r0, [lr, #0x4]
    2142: 980e         	ldr	r0, [sp, #0x38]
    2144: f8ce 0008    	str.w	r0, [lr, #0x8]
    2148: 980f         	ldr	r0, [sp, #0x3c]
    214a: f8ce 000c    	str.w	r0, [lr, #0xc]
    214e: f848 4002    	str.w	r4, [r8, r2]
    2152: f280 8389    	bge.w	0x2868 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x712
    2156: eeb0 6ac4    	vabs.f32	s12, s8
    215a: eeb4 6a62    	vcmp.f32	s12, s5
    215e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2162: f100 8381    	bmi.w	0x2868 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x702
    2166: ed9d 6a14    	vldr	s12, [sp, #80]
    216a: ed9d 7a15    	vldr	s14, [sp, #84]
    216e: eec6 6a04    	vdiv.f32	s13, s12, s8
    2172: ed9d 6a12    	vldr	s12, [sp, #72]
    2176: ee06 7ac6    	vmls.f32	s14, s13, s12
    217a: ee17 3a10    	vmov	r3, s14
    217e: f023 4300    	bic	r3, r3, #0x80000000
    2182: f1b3 4fff    	cmp.w	r3, #0x7f800000
    2186: f280 836f    	bge.w	0x2868 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x6de
    218a: eef0 7ac7    	vabs.f32	s15, s14
    218e: eef4 7a62    	vcmp.f32	s15, s5
    2192: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2196: f100 8367    	bmi.w	0x2868 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x6ce
    219a: ee06 2ae1    	vmls.f32	s4, s13, s3
    219e: eddd 2a0b    	vldr	s5, [sp, #44]
    21a2: eef0 6ae2    	vabs.f32	s13, s5
    21a6: eef4 6a66    	vcmp.f32	s13, s13
    21aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    21ae: ee82 7a07    	vdiv.f32	s14, s4, s14
    21b2: fe1a 2a26    	vselvs.f32	s4, s20, s13
    21b6: ee46 1a47    	vmls.f32	s3, s12, s14
    21ba: ed9f 6ab2    	vldr	s12, [pc, #712]         @ 0x2484 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa04>
    21be: eeb4 2a4a    	vcmp.f32	s4, s20
    21c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    21c6: fe32 2a0a    	vselgt.f32	s4, s4, s20
    21ca: eec1 1a84    	vdiv.f32	s3, s3, s8
    21ce: ee22 2a06    	vmul.f32	s4, s4, s12
    21d2: eef0 2ae1    	vabs.f32	s5, s3
    21d6: fe82 2a65    	vminnm.f32	s4, s4, s11
    21da: eef4 2a42    	vcmp.f32	s5, s4
    21de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    21e2: d818         	bhi	0x2216 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x796> @ imm = #0x30
    21e4: eeb0 2aeb    	vabs.f32	s4, s23
    21e8: eeb0 4ac7    	vabs.f32	s8, s14
    21ec: eeb4 2a42    	vcmp.f32	s4, s4
    21f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    21f4: fe1a 2a02    	vselvs.f32	s4, s20, s4
    21f8: eeb4 2a4a    	vcmp.f32	s4, s20
    21fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2200: fe32 2a0a    	vselgt.f32	s4, s4, s20
    2204: ee22 2a06    	vmul.f32	s4, s4, s12
    2208: fe82 2a65    	vminnm.f32	s4, s4, s11
    220c: eeb4 4a42    	vcmp.f32	s8, s4
    2210: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2214: d914         	bls	0x2240 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7c0> @ imm = #0x28
    2216: 2300         	movs	r3, #0x0
    2218: ed9f 2a9b    	vldr	s4, [pc, #620]          @ 0x2488 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa08>
    221c: eeb4 ba42    	vcmp.f32	s22, s4
    2220: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2224: d814         	bhi	0x2250 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7d0> @ imm = #0x28
    2226: f1ac 0010    	sub.w	r0, r12, #0x10
    222a: fab0 f080    	clz	r0, r0
    222e: 0940         	lsrs	r0, r0, #0x5
    2230: 4318         	orrs	r0, r3
    2232: d011         	beq	0x2258 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7d8> @ imm = #0x22
    2234: e305         	b	0x2842 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdc2> @ imm = #0x60a
    2236: bf00         	nop
    2238: 18 72 31 3f  	.word	0x3f317218
    223c: 00 bf 00 bf  	.word	0xbf00bf00
    2240: 2301         	movs	r3, #0x1
    2242: ed9f 2a91    	vldr	s4, [pc, #580]          @ 0x2488 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa08>
    2246: eeb4 ba42    	vcmp.f32	s22, s4
    224a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    224e: d9ea         	bls	0x2226 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7a6> @ imm = #-0x2c
    2250: f1bc 0f10    	cmp.w	r12, #0x10
    2254: f000 8310    	beq.w	0x2878 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdf8> @ imm = #0x620
    2258: 4645         	mov	r5, r8
    225a: 2400         	movs	r4, #0x0
    225c: f04f 597e    	mov.w	r9, #0x3f800000
    2260: edcd 2a04    	vstr	s5, [sp, #16]
    2264: edcd 9a05    	vstr	s19, [sp, #20]
    2268: e012         	b	0x2290 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x810> @ imm = #0x24
    226a: bf00         	nop
    226c: ab aa 2a 3d  	.word	0x3d2aaaab
    2270: 89 88 08 3c  	.word	0x3c088889
    2274: ab aa 2a 3e  	.word	0x3e2aaaab
    2278: 18 72 31 bf  	.word	0xbf317218
    227c: 00 bf 00 bf  	.word	0xbf00bf00
    2280: eef0 ba48    	vmov.f32	s23, s16
    2284: f5a9 0900    	sub.w	r9, r9, #0x800000
    2288: f1b9 5f66    	cmp.w	r9, #0x39800000
    228c: f000 82b4    	beq.w	0x27f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd78> @ imm = #0x568
    2290: ee02 9a10    	vmov	s4, r9
    2294: eddd 7a0b    	vldr	s15, [sp, #44]
    2298: eeb0 9a6b    	vmov.f32	s18, s23
    229c: eeb0 4a6f    	vmov.f32	s8, s31
    22a0: ed9f fb7b    	vldr	d15, [pc, #492]         @ 0x2490 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa10>
    22a4: ee41 7a82    	vmla.f32	s15, s3, s4
    22a8: eeb0 8a6b    	vmov.f32	s16, s23
    22ac: ee07 9a02    	vmla.f32	s18, s14, s4
    22b0: eef0 ba6c    	vmov.f32	s23, s25
    22b4: ed9d db08    	vldr	d13, [sp, #32]
    22b8: eeb0 ea6c    	vmov.f32	s28, s25
    22bc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
    22c0: eeb7 2ac9    	vcvt.f64.f32	d2, s18
    22c4: ee06 db0f    	vmla.f64	d13, d6, d15
    22c8: eef0 fa44    	vmov.f32	s31, s8
    22cc: ed9f 4ada    	vldr	s8, [pc, #872]          @ 0x2638 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbb8>
    22d0: ed9f 6bdb    	vldr	d6, [pc, #876]          @ 0x2640 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbc0>
    22d4: ee02 db06    	vmla.f64	d13, d2, d6
    22d8: ed9d 6a07    	vldr	s12, [sp, #28]
    22dc: eeb7 2bcd    	vcvt.f32.f64	s4, d13
    22e0: eeb0 da6c    	vmov.f32	s26, s25
    22e4: ee02 6a04    	vmla.f32	s12, s4, s8
    22e8: ed9f 4a57    	vldr	s8, [pc, #348]          @ 0x2448 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c8>
    22ec: ed9d 2a06    	vldr	s4, [sp, #24]
    22f0: ee07 2a84    	vmla.f32	s4, s15, s8
    22f4: ee09 2a2f    	vmla.f32	s4, s18, s31
    22f8: eeb4 0a46    	vcmp.f32	s0, s12
    22fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2300: fe30 4a06    	vselgt.f32	s8, s0, s12
    2304: eef0 6ac2    	vabs.f32	s13, s4
    2308: eeb4 4a41    	vcmp.f32	s8, s2
    230c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2310: eeb5 2a40    	vcmp.f32	s4, #0
    2314: eeb0 2a6c    	vmov.f32	s4, s25
    2318: fe71 9a04    	vselgt.f32	s19, s2, s8
    231c: eebf 4a00    	vmov.f32	s8, #-1.000000e+00
    2320: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2324: bf48         	it	mi
    2326: eeb0 2a44    	vmovmi.f32	s4, s8
    232a: fe3a 4a02    	vselgt.f32	s8, s20, s4
    232e: ed9f 2a47    	vldr	s4, [pc, #284]          @ 0x244c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9cc>
    2332: eef4 6a42    	vcmp.f32	s13, s4
    2336: eeb0 2a6c    	vmov.f32	s4, s25
    233a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    233e: f280 80d7    	bge.w	0x24f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0x1ae
    2342: ed9f 2a43    	vldr	s4, [pc, #268]          @ 0x2450 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d0>
    2346: eeb0 da6c    	vmov.f32	s26, s25
    234a: eef4 6a42    	vcmp.f32	s13, s4
    234e: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    2352: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2356: d923         	bls	0x23a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x920> @ imm = #0x46
    2358: ed9f 2a3e    	vldr	s4, [pc, #248]          @ 0x2454 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d4>
    235c: eef4 6a42    	vcmp.f32	s13, s4
    2360: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2364: d910         	bls	0x2388 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x908> @ imm = #0x20
    2366: ed9f 2a3c    	vldr	s4, [pc, #240]          @ 0x2458 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d8>
    236a: ee76 2a82    	vadd.f32	s5, s13, s4
    236e: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    2372: eddf 3a3a    	vldr	s7, [pc, #232]          @ 0x245c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9dc>
    2376: e00f         	b	0x2398 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x918> @ imm = #0x1e
    2378: 77 cc 2b 31  	.word	0x312bcc77
    237c: c5 9f 13 3f  	.word	0x3f139fc5
    2380: bb bc 42 bf  	.word	0xbf42bcbb
    2384: 0a d7 23 3c  	.word	0x3c23d70a
    2388: ed9f 2a35    	vldr	s4, [pc, #212]          @ 0x2460 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e0>
    238c: ee76 2a82    	vadd.f32	s5, s13, s4
    2390: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    2394: eddf 3a33    	vldr	s7, [pc, #204]          @ 0x2464 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e4>
    2398: ee02 2aa3    	vmla.f32	s4, s5, s7
    239c: ee24 da23    	vmul.f32	s26, s8, s7
    23a0: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    23a4: eef1 ba4d    	vneg.f32	s23, s26
    23a8: ee34 2a42    	vsub.f32	s4, s8, s4
    23ac: fe82 4a2c    	vmaxnm.f32	s8, s4, s25
    23b0: eeb5 4a40    	vcmp.f32	s8, #0
    23b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23b8: d95a         	bls	0x2470 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9f0> @ imm = #0xb4
    23ba: eeb0 2ae9    	vabs.f32	s4, s19
    23be: eeb4 2a44    	vcmp.f32	s4, s8
    23c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23c6: d967         	bls	0x2498 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa18> @ imm = #0xce
    23c8: eec4 6a02    	vdiv.f32	s13, s8, s4
    23cc: eeb0 da4a    	vmov.f32	s26, s20
    23d0: ee26 2aa6    	vmul.f32	s4, s13, s13
    23d4: ee22 2a02    	vmul.f32	s4, s4, s4
    23d8: ee22 2a02    	vmul.f32	s4, s4, s4
    23dc: ee22 ea02    	vmul.f32	s28, s4, s4
    23e0: ee3e 2a0a    	vadd.f32	s4, s28, s20
    23e4: eeb4 2a4a    	vcmp.f32	s4, s20
    23e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23ec: d009         	beq	0x2402 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x982> @ imm = #0x12
    23ee: eeb0 da42    	vmov.f32	s26, s4
    23f2: eeb1 dacd    	vsqrt.f32	s26, s26
    23f6: eeb1 dacd    	vsqrt.f32	s26, s26
    23fa: eeb1 dacd    	vsqrt.f32	s26, s26
    23fe: eeb1 dacd    	vsqrt.f32	s26, s26
    2402: eeca da0d    	vdiv.f32	s27, s20, s26
    2406: ed9f da18    	vldr	s26, [pc, #96]          @ 0x2468 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e8>
    240a: eef4 9a69    	vcmp.f32	s19, s19
    240e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2412: ee8d fa82    	vdiv.f32	s30, s27, s4
    2416: eeb0 2a4d    	vmov.f32	s4, s26
    241a: bf7f         	itttt	vc
    241c: ee19 0a90    	vmovvc	r0, s19
    2420: f366 001e    	bfivc	r0, r6, #0, #31
    2424: ee02 0a10    	vmovvc	s4, r0
    2428: ee22 4a04    	vmulvc.f32	s8, s4, s8
    242c: bf7c         	itt	vc
    242e: ee24 da2d    	vmulvc.f32	s26, s8, s27
    2432: ee22 2a0f    	vmulvc.f32	s4, s4, s30
    2436: ee26 4a8e    	vmul.f32	s8, s13, s28
    243a: ee24 ea0f    	vmul.f32	s28, s8, s30
    243e: e057         	b	0x24f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0xae
    2440: 50 69 15 39  	.word	0x39156950
    2444: ac c5 a7 37  	.word	0x37a7c5ac
    2448: b7 63 f7 b8  	.word	0xb8f763b7
    244c: 0a d7 23 3d  	.word	0x3d23d70a
    2450: 7c f2 b0 3a  	.word	0x3ab0f27c
    2454: a6 9b c4 3b  	.word	0x3bc49ba6
    2458: a6 9b c4 bb  	.word	0xbbc49ba6
    245c: 79 78 b0 43  	.word	0x43b07879
    2460: 7c f2 b0 ba  	.word	0xbab0f27c
    2464: 53 4a a1 43  	.word	0x43a14a53
    2468: 00 00 c0 7f  	.word	0x7fc00000
    246c: 00 bf 00 bf  	.word	0xbf00bf00
    2470: eeb0 da6c    	vmov.f32	s26, s25
    2474: eeb0 ea6c    	vmov.f32	s28, s25
    2478: eeb0 2a6c    	vmov.f32	s4, s25
    247c: e038         	b	0x24f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0x70
    247e: bf00         	nop
    2480: 08 e5 3c 1e  	.word	0x1e3ce508
    2484: bd 37 06 36  	.word	0x360637bd
    2488: 17 b7 d1 38  	.word	0x38d1b717
    248c: 00 bf 00 bf  	.word	0xbf00bf00
    2490: 9c 9e 91 65  	.word	0x65919e9c
    2494: 97 57 e8 bf  	.word	0xbfe85797
    2498: ee89 2a84    	vdiv.f32	s4, s19, s8
    249c: eeb0 da4a    	vmov.f32	s26, s20
    24a0: ee22 2a02    	vmul.f32	s4, s4, s4
    24a4: ee22 2a02    	vmul.f32	s4, s4, s4
    24a8: ee22 2a02    	vmul.f32	s4, s4, s4
    24ac: ee22 2a02    	vmul.f32	s4, s4, s4
    24b0: ee72 6a0a    	vadd.f32	s13, s4, s20
    24b4: eef4 6a4a    	vcmp.f32	s13, s20
    24b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    24bc: d009         	beq	0x24d2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa52> @ imm = #0x12
    24be: eeb0 da66    	vmov.f32	s26, s13
    24c2: eeb1 dacd    	vsqrt.f32	s26, s26
    24c6: eeb1 dacd    	vsqrt.f32	s26, s26
    24ca: eeb1 dacd    	vsqrt.f32	s26, s26
    24ce: eeb1 dacd    	vsqrt.f32	s26, s26
    24d2: eeca 2a0d    	vdiv.f32	s5, s20, s26
    24d6: ee29 2a82    	vmul.f32	s4, s19, s4
    24da: ee82 eaa6    	vdiv.f32	s28, s5, s13
    24de: ee82 2a04    	vdiv.f32	s4, s4, s8
    24e2: ee29 daa2    	vmul.f32	s26, s19, s5
    24e6: ee22 2a0e    	vmul.f32	s4, s4, s28
    24ea: bf00         	nop
    24ec: bf00         	nop
    24ee: bf00         	nop
    24f0: ee77 6acd    	vsub.f32	s13, s15, s26
    24f4: eddf daf1    	vldr	s27, [pc, #964]         @ 0x28bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe3c>
    24f8: ee16 0a90    	vmov	r0, s13
    24fc: f020 4000    	bic	r0, r0, #0x80000000
    2500: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2504: da07         	bge	0x2516 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa96> @ imm = #0xe
    2506: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    250a: ee86 4a84    	vdiv.f32	s8, s13, s8
    250e: eeb0 4ac4    	vabs.f32	s8, s8
    2512: fec4 da2c    	vmaxnm.f32	s27, s8, s25
    2516: ed9f 4aeb    	vldr	s8, [pc, #940]          @ 0x28c4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe44>
    251a: ee89 da04    	vdiv.f32	s26, s18, s8
    251e: eeb0 4acd    	vabs.f32	s8, s26
    2522: eeb4 4a68    	vcmp.f32	s8, s17
    2526: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    252a: f280 808d    	bge.w	0x2648 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbc8> @ imm = #0x11a
    252e: eeb4 ca4d    	vcmp.f32	s24, s26
    2532: eebe fa00    	vmov.f32	s30, #-5.000000e-01
    2536: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    253a: fe3c 4a0d    	vselgt.f32	s8, s24, s26
    253e: ed9f dae3    	vldr	s26, [pc, #908]         @ 0x28cc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe4c>
    2542: ee89 da0d    	vdiv.f32	s26, s18, s26
    2546: eeb4 4a6a    	vcmp.f32	s8, s21
    254a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    254e: fe3a 4a84    	vselgt.f32	s8, s21, s8
    2552: ee64 2a2e    	vmul.f32	s5, s8, s29
    2556: ee72 3aa8    	vadd.f32	s7, s5, s17
    255a: eef5 2a40    	vcmp.f32	s5, #0
    255e: ee72 5a8f    	vadd.f32	s11, s5, s30
    2562: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2566: eefd 3ae3    	vcvt.s32.f32	s7, s7
    256a: eefd 5ae5    	vcvt.s32.f32	s11, s11
    256e: eeb4 ca4d    	vcmp.f32	s24, s26
    2572: ee13 0a90    	vmov	r0, s7
    2576: ee15 8a90    	vmov	r8, s11
    257a: bfa8         	it	ge
    257c: 4680         	movge	r8, r0
    257e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2582: fe7c 2a0d    	vselgt.f32	s5, s24, s26
    2586: eef4 2a6a    	vcmp.f32	s5, s21
    258a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    258e: fe7a 2aa2    	vselgt.f32	s5, s21, s5
    2592: ee62 3aae    	vmul.f32	s7, s5, s29
    2596: ee73 5a8f    	vadd.f32	s11, s7, s30
    259a: eef5 3a40    	vcmp.f32	s7, #0
    259e: ee33 daa8    	vadd.f32	s26, s7, s17
    25a2: ee03 8a90    	vmov	s7, r8
    25a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    25aa: eefd 5ae5    	vcvt.s32.f32	s11, s11
    25ae: eef8 3ae3    	vcvt.f32.s32	s7, s7
    25b2: ee15 3a90    	vmov	r3, s11
    25b6: eefd 5acd    	vcvt.s32.f32	s11, s26
    25ba: ed9f dac5    	vldr	s26, [pc, #788]         @ 0x28d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe50>
    25be: ee03 4acd    	vmls.f32	s8, s7, s26
    25c2: eef0 3a45    	vmov.f32	s7, s10
    25c6: ee15 0a90    	vmov	r0, s11
    25ca: bfa8         	it	ge
    25cc: 4603         	movge	r3, r0
    25ce: eb06 50c8    	add.w	r0, r6, r8, lsl #23
    25d2: ee05 3a90    	vmov	s11, r3
    25d6: eb06 52c3    	add.w	r2, r6, r3, lsl #23
    25da: ee44 3a24    	vmla.f32	s7, s8, s9
    25de: eef8 5ae5    	vcvt.f32.s32	s11, s11
    25e2: ee45 2acd    	vmls.f32	s5, s11, s26
    25e6: eef0 5a45    	vmov.f32	s11, s10
    25ea: eeb0 da43    	vmov.f32	s26, s6
    25ee: ee04 da23    	vmla.f32	s26, s8, s7
    25f2: eef0 3a43    	vmov.f32	s7, s6
    25f6: ee42 5aa4    	vmla.f32	s11, s5, s9
    25fa: ee22 faa2    	vmul.f32	s30, s5, s5
    25fe: ee42 3aa5    	vmla.f32	s7, s5, s11
    2602: eef0 5a68    	vmov.f32	s11, s17
    2606: ee44 5a0d    	vmla.f32	s11, s8, s26
    260a: eeb0 da68    	vmov.f32	s26, s17
    260e: ee02 daa3    	vmla.f32	s26, s5, s7
    2612: ee64 3a04    	vmul.f32	s7, s8, s8
    2616: ee34 4a0a    	vadd.f32	s8, s8, s20
    261a: ee72 2a8a    	vadd.f32	s5, s5, s20
    261e: ee03 4aa5    	vmla.f32	s8, s7, s11
    2622: ee03 0a90    	vmov	s7, r0
    2626: ee05 2a90    	vmov	s11, r2
    262a: ee4f 2a0d    	vmla.f32	s5, s30, s26
    262e: ee24 fa23    	vmul.f32	s30, s8, s7
    2632: ee22 4aa5    	vmul.f32	s8, s5, s11
    2636: e04c         	b	0x26d2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xc52> @ imm = #0x98
    2638: 79 61 2e 43  	.word	0x432e6179
    263c: 00 bf 00 bf  	.word	0xbf00bf00
    2640: 76 43 71 a5  	.word	0xa5714376
    2644: f8 73 e2 3f  	.word	0x3fe273f8
    2648: eeb4 4a44    	vcmp.f32	s8, s8
    264c: eef0 2a68    	vmov.f32	s5, s17
    2650: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2654: eddf 3a9c    	vldr	s7, [pc, #624]          @ 0x28c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe48>
    2658: eef0 5a43    	vmov.f32	s11, s6
    265c: fe1a 4a84    	vselvs.f32	s8, s21, s8
    2660: eef4 aa44    	vcmp.f32	s21, s8
    2664: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2668: fe34 4a2a    	vselgt.f32	s8, s8, s21
    266c: eeb4 4a6a    	vcmp.f32	s8, s21
    2670: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2674: eeb5 da40    	vcmp.f32	s26, #0
    2678: fe3a 4a84    	vselgt.f32	s8, s21, s8
    267c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2680: ee44 2a2e    	vmla.f32	s5, s8, s29
    2684: eefd 2ae2    	vcvt.s32.f32	s5, s5
    2688: eeb8 fae2    	vcvt.f32.s32	s30, s5
    268c: ee12 0a90    	vmov	r0, s5
    2690: ee0f 4a23    	vmla.f32	s8, s30, s7
    2694: eeb0 fa45    	vmov.f32	s30, s10
    2698: eef0 3a68    	vmov.f32	s7, s17
    269c: eb06 50c0    	add.w	r0, r6, r0, lsl #23
    26a0: ee02 0a90    	vmov	s5, r0
    26a4: ee04 fa24    	vmla.f32	s30, s8, s9
    26a8: ee44 5a0f    	vmla.f32	s11, s8, s30
    26ac: ee44 3a25    	vmla.f32	s7, s8, s11
    26b0: ee64 5a04    	vmul.f32	s11, s8, s8
    26b4: ee34 4a0a    	vadd.f32	s8, s8, s20
    26b8: ee05 4aa3    	vmla.f32	s8, s11, s7
    26bc: ee64 2a22    	vmul.f32	s5, s8, s5
    26c0: ee8a 4a22    	vdiv.f32	s8, s20, s5
    26c4: eeb0 fa62    	vmov.f32	s30, s5
    26c8: bfbc         	itt	lt
    26ca: eeb0 fa44    	vmovlt.f32	s30, s8
    26ce: eeb0 4a62    	vmovlt.f32	s8, s5
    26d2: eeb0 da60    	vmov.f32	s26, s1
    26d6: ee07 daaf    	vmla.f32	s26, s15, s31
    26da: eddf 2a79    	vldr	s5, [pc, #484]          @ 0x28c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe40>
    26de: eddf 3a7d    	vldr	s7, [pc, #500]          @ 0x28d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe54>
    26e2: ee09 da22    	vmla.f32	s26, s18, s5
    26e6: ee7f 2a44    	vsub.f32	s5, s30, s8
    26ea: ee12 daa3    	vnmls.f32	s26, s5, s7
    26ee: ee1d 0a10    	vmov	r0, s26
    26f2: f020 4000    	bic	r0, r0, #0x80000000
    26f6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    26fa: f6bf adc1    	bge.w	0x2280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x800> @ imm = #-0x47e
    26fe: eddf 2a76    	vldr	s5, [pc, #472]          @ 0x28d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe58>
    2702: eef4 da6d    	vcmp.f32	s27, s27
    2706: eecd 2a22    	vdiv.f32	s5, s26, s5
    270a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    270e: eef0 2ae2    	vabs.f32	s5, s5
    2712: fe52 3aad    	vselvs.f32	s7, s5, s27
    2716: eef4 2a62    	vcmp.f32	s5, s5
    271a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    271e: fe53 2aa2    	vselvs.f32	s5, s7, s5
    2722: eef4 3a62    	vcmp.f32	s7, s5
    2726: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    272a: fe73 daa2    	vselgt.f32	s27, s7, s5
    272e: eef4 da4b    	vcmp.f32	s27, s22
    2732: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2736: f57f ada3    	bpl.w	0x2280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x800> @ imm = #-0x4ba
    273a: a06b         	adr	r0, #428 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd29>
    273c: eeb4 6a41    	vcmp.f32	s12, s2
    2740: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2744: bf48         	it	mi
    2746: 3004         	addmi	r0, #0x4
    2748: eeb4 6a40    	vcmp.f32	s12, s0
    274c: ed9d 6a01    	vldr	s12, [sp, #4]
    2750: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2754: ed81 6a01    	vstr	s12, [r1, #4]
    2758: ed90 6a00    	vldr	s12, [r0]
    275c: ed9f 7a52    	vldr	s14, [pc, #328]         @ 0x28a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe28>
    2760: f64a 7046    	movw	r0, #0xaf46
    2764: fe36 6a07    	vselgt.f32	s12, s12, s14
    2768: f1bc 0f10    	cmp.w	r12, #0x10
    276c: ed9f 7a4f    	vldr	s14, [pc, #316]         @ 0x28ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe2c>
    2770: f6cb 00b3    	movt	r0, #0xb8b3
    2774: eddf 1a4f    	vldr	s3, [pc, #316]          @ 0x28b4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe34>
    2778: 9a00         	ldr	r2, [sp]
    277a: eddf 2a4d    	vldr	s5, [pc, #308]          @ 0x28b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe30>
    277e: 600a         	str	r2, [r1]
    2780: eddf 3a4d    	vldr	s7, [pc, #308]          @ 0x28b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe38>
    2784: edc1 7a02    	vstr	s15, [r1, #8]
    2788: eddf 5a55    	vldr	s11, [pc, #340]         @ 0x28e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe60>
    278c: ed81 9a03    	vstr	s18, [r1, #12]
    2790: ed9f 8a52    	vldr	s16, [pc, #328]         @ 0x28dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe5c>
    2794: 9410         	str	r4, [sp, #0x40]
    2796: e9cd 440c    	strd	r4, r4, [sp, #48]
    279a: e9cd 440e    	strd	r4, r4, [sp, #56]
    279e: d01f         	beq	0x27e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd60> @ imm = #0x3e
    27a0: ee2b 2a82    	vmul.f32	s4, s23, s4
    27a4: eef0 ba49    	vmov.f32	s23, s18
    27a8: ee26 6a0e    	vmul.f32	s12, s12, s28
    27ac: eeb0 ba6d    	vmov.f32	s22, s27
    27b0: 46a8         	mov	r8, r5
    27b2: f1bb 0f10    	cmp.w	r11, #0x10
    27b6: ee22 ea07    	vmul.f32	s28, s4, s14
    27ba: f10a 0a01    	add.w	r10, r10, #0x1
    27be: ee06 ea22    	vmla.f32	s28, s12, s5
    27c2: 46dc         	mov	r12, r11
    27c4: ee22 7a21    	vmul.f32	s14, s4, s3
    27c8: edcd 7a0b    	vstr	s15, [sp, #44]
    27cc: ee06 7a23    	vmla.f32	s14, s12, s7
    27d0: ee7f 1a04    	vadd.f32	s3, s30, s8
    27d4: eeb1 2a66    	vneg.f32	s4, s13
    27d8: eeb1 6a4d    	vneg.f32	s12, s26
    27dc: f77f ac64    	ble.w	0x20a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x628> @ imm = #-0x738
    27e0: f64d 3011    	movw	r0, #0xdb11
    27e4: f64d 7200    	movw	r2, #0xdf00
    27e8: f2c0 0000    	movt	r0, #0x0
    27ec: f2c0 0200    	movt	r2, #0x0
    27f0: 2128         	movs	r1, #0x28
    27f2: f009 fb4b    	bl	0xbe8c <core::panicking::panic> @ imm = #0x9696
    27f6: bf00         	nop
    27f8: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x28e4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe64>
    27fc: 2000         	movs	r0, #0x0
    27fe: eeb4 ba40    	vcmp.f32	s22, s0
    2802: ed9f 1a37    	vldr	s2, [pc, #220]          @ 0x28e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe60>
    2806: ed9d 0a04    	vldr	s0, [sp, #16]
    280a: 2200         	movs	r2, #0x0
    280c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2810: eeb4 0a41    	vcmp.f32	s0, s2
    2814: f04f 0100    	mov.w	r1, #0x0
    2818: eeb0 0ac7    	vabs.f32	s0, s14
    281c: f10a 0a01    	add.w	r10, r10, #0x1
    2820: bf98         	it	ls
    2822: 2001         	movls	r0, #0x1
    2824: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2828: bf98         	it	ls
    282a: 2201         	movls	r2, #0x1
    282c: eeb4 0a41    	vcmp.f32	s0, s2
    2830: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2834: bf98         	it	ls
    2836: 2101         	movls	r1, #0x1
    2838: 4010         	ands	r0, r2
    283a: eddd 9a05    	vldr	s19, [sp, #20]
    283e: ea00 0301    	and.w	r3, r0, r1
    2842: 9802         	ldr	r0, [sp, #0x8]
    2844: edc0 9a01    	vstr	s19, [r0, #4]
    2848: 9803         	ldr	r0, [sp, #0xc]
    284a: ed80 ba00    	vstr	s22, [r0]
    284e: f880 a004    	strb.w	r10, [r0, #0x4]
    2852: 7143         	strb	r3, [r0, #0x5]
    2854: b01a         	add	sp, #0x68
    2856: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    285a: b001         	add	sp, #0x4
    285c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    2860: bdf0         	pop	{r4, r5, r6, r7, pc}
    2862: bf00         	nop
    2864: bf00         	nop
    2866: bf00         	nop
    2868: 9903         	ldr	r1, [sp, #0xc]
    286a: 2000         	movs	r0, #0x0
    286c: ed81 ba00    	vstr	s22, [r1]
    2870: f881 a004    	strb.w	r10, [r1, #0x4]
    2874: 7148         	strb	r0, [r1, #0x5]
    2876: e7ed         	b	0x2854 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdd4> @ imm = #-0x26
    2878: 2300         	movs	r3, #0x0
    287a: e7e2         	b	0x2842 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdc2> @ imm = #-0x3c
    287c: bf00         	nop
    287e: bf00         	nop
    2880: f64d 207b    	movw	r0, #0xda7b
    2884: f64d 7220    	movw	r2, #0xdf20
    2888: f2c0 0000    	movt	r0, #0x0
    288c: f2c0 0200    	movt	r2, #0x0
    2890: a911         	add	r1, sp, #0x44
    2892: f009 faf7    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0x95ee
    2896: bf00         	nop
    2898: eddf 4a02    	vldr	s9, [pc, #8]            @ 0x28a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe24>
    289c: eeb0 2a64    	vmov.f32	s4, s9
    28a0: f7ff ba09    	b.w	0x1cb6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x236> @ imm = #-0xbee
    28a4: 00 00 c0 7f  	.word	0x7fc00000
    28a8: 00 00 00 80  	.word	0x80000000
    28ac: b7 63 f7 38  	.word	0x38f763b7
    28b0: bb bc 42 bf  	.word	0xbf42bcbb
    28b4: 46 af b3 b8  	.word	0xb8b3af46
    28b8: c5 9f 13 3f  	.word	0x3f139fc5
    28bc: 00 00 80 7f  	.word	0x7f800000
    28c0: 50 69 15 b9  	.word	0xb9156950
    28c4: f5 4a 39 3d  	.word	0x3d394af5
    28c8: 18 72 31 bf  	.word	0xbf317218
    28cc: f5 4a 39 bd  	.word	0xbd394af5
    28d0: 18 72 31 3f  	.word	0x3f317218
    28d4: 77 cc 2b 31  	.word	0x312bcc77
    28d8: 0a d7 23 3c  	.word	0x3c23d70a
    28dc: 50 69 15 39  	.word	0x39156950
    28e0: ac c5 a7 37  	.word	0x37a7c5ac
    28e4: 17 b7 d1 38  	.word	0x38d1b717
    28e8: 00 00 00 80  	.word	0x80000000
    28ec: 79 61 2e c3  	.word	0xc32e6179

000028f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>>:
    28f0: b5f0         	push	{r4, r5, r6, r7, lr}
    28f2: af03         	add	r7, sp, #0xc
    28f4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    28f8: b081         	sub	sp, #0x4
    28fa: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    28fe: b0ae         	sub	sp, #0xb8
    2900: ed9f 2ab1    	vldr	s4, [pc, #708]          @ 0x2bc8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2d8>
    2904: ee20 3a02    	vmul.f32	s6, s0, s4
    2908: ed9f 4ab0    	vldr	s8, [pc, #704]          @ 0x2bcc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2dc>
    290c: eddf 3ab0    	vldr	s7, [pc, #704]          @ 0x2bd0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e0>
    2910: ed9f 5ab0    	vldr	s10, [pc, #704]         @ 0x2bd4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e4>
    2914: ee33 0a04    	vadd.f32	s0, s6, s8
    2918: ee33 1a23    	vadd.f32	s2, s6, s7
    291c: eec0 fa05    	vdiv.f32	s31, s0, s10
    2920: ee81 ea05    	vdiv.f32	s28, s2, s10
    2924: eef4 fa4e    	vcmp.f32	s31, s28
    2928: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    292c: f201 81c8    	bhi.w	0x3cc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13d0> @ imm = #0x1390
    2930: ed91 6a02    	vldr	s12, [r1, #8]
    2934: ed8d 6a03    	vstr	s12, [sp, #12]
    2938: eeb7 6ac6    	vcvt.f64.f32	d6, s12
    293c: edd1 1a03    	vldr	s3, [r1, #12]
    2940: ed9f 7ba5    	vldr	d7, [pc, #660]          @ 0x2bd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e8>
    2944: edd1 2a04    	vldr	s5, [r1, #16]
    2948: eddf ba7c    	vldr	s23, [pc, #496]         @ 0x2b3c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x24c>
    294c: ed92 8b14    	vldr	d8, [r2, #80]
    2950: eeb7 9ae2    	vcvt.f64.f32	d9, s5
    2954: edcd 1a02    	vstr	s3, [sp, #8]
    2958: ee06 8b07    	vmla.f64	d8, d6, d7
    295c: 2500         	movs	r5, #0x0
    295e: eeb7 6ae1    	vcvt.f64.f32	d6, s3
    2962: eddf 1a77    	vldr	s3, [pc, #476]          @ 0x2b40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x250>
    2966: ed9f 7b9e    	vldr	d7, [pc, #632]          @ 0x2be0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2f0>
    296a: edd1 4a05    	vldr	s9, [r1, #20]
    296e: edcd 2a1a    	vstr	s5, [sp, #104]
    2972: ee06 8b07    	vmla.f64	d8, d6, d7
    2976: 2600         	movs	r6, #0x0
    2978: edcd 4a1c    	vstr	s9, [sp, #112]
    297c: eebf ba00    	vmov.f32	s22, #-1.000000e+00
    2980: ed9f 7b99    	vldr	d7, [pc, #612]          @ 0x2be8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2f8>
    2984: eeb0 6b48    	vmov.f64	d6, d8
    2988: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    298c: ed9f caea    	vldr	s24, [pc, #936]         @ 0x2d38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x448>
    2990: ee09 6b07    	vmla.f64	d6, d9, d7
    2994: ed8d 8b14    	vstr	d8, [sp, #80]
    2998: ed9f 8a6a    	vldr	s16, [pc, #424]         @ 0x2b44 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x254>
    299c: ee23 7a08    	vmul.f32	s14, s6, s16
    29a0: eeb7 3bc6    	vcvt.f32.f64	s6, d6
    29a4: ed8d 7a13    	vstr	s14, [sp, #76]
    29a8: eeb0 6a47    	vmov.f32	s12, s14
    29ac: ee03 6a2b    	vmla.f32	s12, s6, s23
    29b0: ed92 7b08    	vldr	d7, [r2, #32]
    29b4: eeb7 7bc7    	vcvt.f32.f64	s14, d7
    29b8: ed8d 7a12    	vstr	s14, [sp, #72]
    29bc: ee02 7aa1    	vmla.f32	s14, s5, s3
    29c0: eddf 1ae4    	vldr	s3, [pc, #912]          @ 0x2d54 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x464>
    29c4: eef4 fa46    	vcmp.f32	s31, s12
    29c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29cc: ee04 7aa1    	vmla.f32	s14, s9, s3
    29d0: fe3f 3a86    	vselgt.f32	s6, s31, s12
    29d4: eeb4 3a4e    	vcmp.f32	s6, s28
    29d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29dc: eeb4 6a6f    	vcmp.f32	s12, s31
    29e0: fe3e da03    	vselgt.f32	s26, s28, s6
    29e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29e8: bfc8         	it	gt
    29ea: 2501         	movgt	r5, #0x1
    29ec: eeb4 6a4e    	vcmp.f32	s12, s28
    29f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29f4: eef0 1ac7    	vabs.f32	s3, s14
    29f8: eeb5 7a40    	vcmp.f32	s14, #0
    29fc: ed9f 7ad6    	vldr	s14, [pc, #856]         @ 0x2d58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2a00: eeb0 3a47    	vmov.f32	s6, s14
    2a04: eeb0 6a47    	vmov.f32	s12, s14
    2a08: bf48         	it	mi
    2a0a: 2601         	movmi	r6, #0x1
    2a0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a10: bf48         	it	mi
    2a12: eeb0 3a4b    	vmovmi.f32	s6, s22
    2a16: eef0 5a47    	vmov.f32	s11, s14
    2a1a: eef0 2a47    	vmov.f32	s5, s14
    2a1e: fe70 4a03    	vselgt.f32	s9, s0, s6
    2a22: eeb0 3a47    	vmov.f32	s6, s14
    2a26: eef4 1a4c    	vcmp.f32	s3, s24
    2a2a: 402e         	ands	r6, r5
    2a2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a30: f280 80b5    	bge.w	0x2b9e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x16a
    2a34: ed9f 3ac9    	vldr	s6, [pc, #804]          @ 0x2d5c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x46c>
    2a38: eef4 1a43    	vcmp.f32	s3, s6
    2a3c: ed9f 6ac6    	vldr	s12, [pc, #792]         @ 0x2d58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2a40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a44: d910         	bls	0x2a68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x178> @ imm = #0x20
    2a46: ed9f 3ac6    	vldr	s6, [pc, #792]          @ 0x2d60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x470>
    2a4a: eef4 1a43    	vcmp.f32	s3, s6
    2a4e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a52: d911         	bls	0x2a78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x188> @ imm = #0x22
    2a54: ed9f 3ac3    	vldr	s6, [pc, #780]          @ 0x2d64 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x474>
    2a58: ee71 1a83    	vadd.f32	s3, s3, s6
    2a5c: eddf 2ac2    	vldr	s5, [pc, #776]          @ 0x2d68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x478>
    2a60: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    2a64: e010         	b	0x2a88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x198> @ imm = #0x20
    2a66: bf00         	nop
    2a68: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2a6c: eef0 2a46    	vmov.f32	s5, s12
    2a70: e00e         	b	0x2a90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1a0> @ imm = #0x1c
    2a72: bf00         	nop
    2a74: bf00         	nop
    2a76: bf00         	nop
    2a78: ed9f 3abd    	vldr	s6, [pc, #756]          @ 0x2d70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x480>
    2a7c: ee71 1a83    	vadd.f32	s3, s3, s6
    2a80: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2a84: eddf 2ab9    	vldr	s5, [pc, #740]          @ 0x2d6c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x47c>
    2a88: ee01 3aa2    	vmla.f32	s6, s3, s5
    2a8c: ee64 2aa2    	vmul.f32	s5, s9, s5
    2a90: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    2a94: ee31 3ac3    	vsub.f32	s6, s3, s6
    2a98: fec3 1a06    	vmaxnm.f32	s3, s6, s12
    2a9c: eeb1 3a62    	vneg.f32	s6, s5
    2aa0: eef5 1a40    	vcmp.f32	s3, #0
    2aa4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2aa8: d942         	bls	0x2b30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x240> @ imm = #0x84
    2aaa: eeb0 6acd    	vabs.f32	s12, s26
    2aae: eeb4 6a61    	vcmp.f32	s12, s3
    2ab2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ab6: d947         	bls	0x2b48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x258> @ imm = #0x8e
    2ab8: eec1 4a86    	vdiv.f32	s9, s3, s12
    2abc: ee24 6aa4    	vmul.f32	s12, s9, s9
    2ac0: ee26 6a06    	vmul.f32	s12, s12, s12
    2ac4: ee26 6a06    	vmul.f32	s12, s12, s12
    2ac8: ee66 5a06    	vmul.f32	s11, s12, s12
    2acc: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    2ad0: ee75 2a86    	vadd.f32	s5, s11, s12
    2ad4: eef0 6a46    	vmov.f32	s13, s12
    2ad8: eef4 2a46    	vcmp.f32	s5, s12
    2adc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ae0: d009         	beq	0x2af6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x206> @ imm = #0x12
    2ae2: eef0 6a62    	vmov.f32	s13, s5
    2ae6: eef1 6ae6    	vsqrt.f32	s13, s13
    2aea: eef1 6ae6    	vsqrt.f32	s13, s13
    2aee: eef1 6ae6    	vsqrt.f32	s13, s13
    2af2: eef1 6ae6    	vsqrt.f32	s13, s13
    2af6: ee86 6a26    	vdiv.f32	s12, s12, s13
    2afa: eeb4 da4d    	vcmp.f32	s26, s26
    2afe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b02: eec6 6a22    	vdiv.f32	s13, s12, s5
    2b06: f181 80f3    	bvs.w	0x3cf0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1400> @ imm = #0x11e6
    2b0a: ee1d 5a10    	vmov	r5, s26
    2b0e: f04f 547e    	mov.w	r4, #0x3f800000
    2b12: f364 051e    	bfi	r5, r4, #0, #31
    2b16: ee02 5a90    	vmov	s5, r5
    2b1a: ee62 1aa1    	vmul.f32	s3, s5, s3
    2b1e: ee62 2aa6    	vmul.f32	s5, s5, s13
    2b22: ee21 6a86    	vmul.f32	s12, s3, s12
    2b26: ee64 1aa5    	vmul.f32	s3, s9, s11
    2b2a: ee61 5aa6    	vmul.f32	s11, s3, s13
    2b2e: e036         	b	0x2b9e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x6c
    2b30: eef0 5a46    	vmov.f32	s11, s12
    2b34: eef0 2a46    	vmov.f32	s5, s12
    2b38: e031         	b	0x2b9e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x62
    2b3a: bf00         	nop
    2b3c: 79 61 2e 43  	.word	0x432e6179
    2b40: 83 c0 96 b8  	.word	0xb896c083
    2b44: 50 d0 e8 36  	.word	0x36e8d050
    2b48: ee8d 6a21    	vdiv.f32	s12, s26, s3
    2b4c: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    2b50: ee26 6a06    	vmul.f32	s12, s12, s12
    2b54: eef0 5a64    	vmov.f32	s11, s9
    2b58: ee26 6a06    	vmul.f32	s12, s12, s12
    2b5c: ee26 6a06    	vmul.f32	s12, s12, s12
    2b60: ee26 6a06    	vmul.f32	s12, s12, s12
    2b64: ee76 2a24    	vadd.f32	s5, s12, s9
    2b68: eef4 2a64    	vcmp.f32	s5, s9
    2b6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b70: d009         	beq	0x2b86 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x296> @ imm = #0x12
    2b72: eef0 5a62    	vmov.f32	s11, s5
    2b76: eef1 5ae5    	vsqrt.f32	s11, s11
    2b7a: eef1 5ae5    	vsqrt.f32	s11, s11
    2b7e: eef1 5ae5    	vsqrt.f32	s11, s11
    2b82: eef1 5ae5    	vsqrt.f32	s11, s11
    2b86: eec4 4aa5    	vdiv.f32	s9, s9, s11
    2b8a: ee2d 6a06    	vmul.f32	s12, s26, s12
    2b8e: eec4 5aa2    	vdiv.f32	s11, s9, s5
    2b92: eec6 1a21    	vdiv.f32	s3, s12, s3
    2b96: ee2d 6a24    	vmul.f32	s12, s26, s9
    2b9a: ee61 2aa5    	vmul.f32	s5, s3, s11
    2b9e: eddd 1a1a    	vldr	s3, [sp, #104]
    2ba2: 2e00         	cmp	r6, #0x0
    2ba4: ee71 1ac6    	vsub.f32	s3, s3, s12
    2ba8: ed9f fac8    	vldr	s30, [pc, #800]         @ 0x2ecc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5dc>
    2bac: ed9f 6ac8    	vldr	s12, [pc, #800]         @ 0x2ed0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    2bb0: fe46 6a0f    	vseleq.f32	s13, s12, s30
    2bb4: ee11 5a90    	vmov	r5, s3
    2bb8: f025 4600    	bic	r6, r5, #0x80000000
    2bbc: f1b6 4fff    	cmp.w	r6, #0x7f800000
    2bc0: db16         	blt	0x2bf0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x300> @ imm = #0x2c
    2bc2: ed9f aac4    	vldr	s20, [pc, #784]         @ 0x2ed4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    2bc6: e01d         	b	0x2c04 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x314> @ imm = #0x3a
    2bc8: 00 80 bb 47  	.word	0x47bb8000
    2bcc: 00 24 74 cb  	.word	0xcb742400
    2bd0: 00 24 74 4b  	.word	0x4b742400
    2bd4: 00 a0 0c 48  	.word	0x480ca000
    2bd8: ab 14 f2 db  	.word	0xdbf214ab
    2bdc: ec cd d7 3f  	.word	0x3fd7cdec
    2be0: c4 a9 9f 7b  	.word	0x7b9fa9c4
    2be4: 67 dd c7 3f  	.word	0x3fc7dd67
    2be8: 1c 38 88 77  	.word	0x7788381c
    2bec: bf 13 e1 bf  	.word	0xbfe113bf
    2bf0: eeb2 6a0e    	vmov.f32	s12, #1.500000e+01
    2bf4: eddf 4a58    	vldr	s9, [pc, #352]          @ 0x2d58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2bf8: ee81 6a86    	vdiv.f32	s12, s3, s12
    2bfc: eeb0 6ac6    	vabs.f32	s12, s12
    2c00: fe86 aa24    	vmaxnm.f32	s20, s12, s9
    2c04: ee20 2a82    	vmul.f32	s4, s1, s4
    2c08: ee32 4a04    	vadd.f32	s8, s4, s8
    2c0c: ee32 6a23    	vadd.f32	s12, s4, s7
    2c10: eec4 7a05    	vdiv.f32	s15, s8, s10
    2c14: ee86 1a05    	vdiv.f32	s2, s12, s10
    2c18: eef4 7a41    	vcmp.f32	s15, s2
    2c1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2c20: f201 804e    	bhi.w	0x3cc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13d0> @ imm = #0x109c
    2c24: ed9f 0b84    	vldr	d0, [pc, #528]          @ 0x2e38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x548>
    2c28: ed8d da09    	vstr	s26, [sp, #36]
    2c2c: ed9d da1c    	vldr	s26, [sp, #112]
    2c30: ed92 4b16    	vldr	d4, [r2, #88]
    2c34: ed9f 6a47    	vldr	s12, [pc, #284]         @ 0x2d54 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x464>
    2c38: eddd 3a1a    	vldr	s7, [sp, #104]
    2c3c: ed8d 4b10    	vstr	d4, [sp, #64]
    2c40: 2600         	movs	r6, #0x0
    2c42: 2500         	movs	r5, #0x0
    2c44: ee09 4b00    	vmla.f64	d4, d9, d0
    2c48: eeb7 9acd    	vcvt.f64.f32	d9, s26
    2c4c: ed9f 0b3c    	vldr	d0, [pc, #240]          @ 0x2d40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x450>
    2c50: ee09 4b00    	vmla.f64	d4, d9, d0
    2c54: ee22 0a08    	vmul.f32	s0, s4, s16
    2c58: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    2c5c: ed92 8b0a    	vldr	d8, [r2, #40]
    2c60: ed8d 0a0f    	vstr	s0, [sp, #60]
    2c64: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    2c68: eeb0 4a40    	vmov.f32	s8, s0
    2c6c: ed9f 0ae8    	vldr	s0, [pc, #928]          @ 0x3010 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x720>
    2c70: eeb7 5bc8    	vcvt.f32.f64	s10, d8
    2c74: ee02 4a2b    	vmla.f32	s8, s4, s23
    2c78: ed8d 5a0e    	vstr	s10, [sp, #56]
    2c7c: ee03 5a86    	vmla.f32	s10, s7, s12
    2c80: eddf 3a35    	vldr	s7, [pc, #212]          @ 0x2d58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2c84: eeb0 6a63    	vmov.f32	s12, s7
    2c88: ee0d 5a00    	vmla.f32	s10, s26, s0
    2c8c: ed9f 0ae7    	vldr	s0, [pc, #924]          @ 0x302c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    2c90: eef4 7a44    	vcmp.f32	s15, s8
    2c94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2c98: fe37 2a84    	vselgt.f32	s4, s15, s8
    2c9c: eeb4 2a41    	vcmp.f32	s4, s2
    2ca0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ca4: eeb4 4a67    	vcmp.f32	s8, s15
    2ca8: fe71 ea02    	vselgt.f32	s29, s2, s4
    2cac: ed91 2a06    	vldr	s4, [r1, #24]
    2cb0: ee22 8a00    	vmul.f32	s16, s4, s0
    2cb4: ed8d 2a19    	vstr	s4, [sp, #100]
    2cb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2cbc: eeb4 4a41    	vcmp.f32	s8, s2
    2cc0: eeb0 4a63    	vmov.f32	s8, s7
    2cc4: ee38 2a05    	vadd.f32	s4, s16, s10
    2cc8: eeb0 5a63    	vmov.f32	s10, s7
    2ccc: bfc8         	it	gt
    2cce: 2601         	movgt	r6, #0x1
    2cd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2cd4: eeb5 2a40    	vcmp.f32	s4, #0
    2cd8: eeb0 9ac2    	vabs.f32	s18, s4
    2cdc: eeb0 2a63    	vmov.f32	s4, s7
    2ce0: bf48         	it	mi
    2ce2: 2501         	movmi	r5, #0x1
    2ce4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ce8: bf48         	it	mi
    2cea: eeb0 2a4b    	vmovmi.f32	s4, s22
    2cee: eeb4 9a4c    	vcmp.f32	s18, s24
    2cf2: ea06 0605    	and.w	r6, r6, r5
    2cf6: fe70 4a82    	vselgt.f32	s9, s1, s4
    2cfa: eeb0 2a63    	vmov.f32	s4, s7
    2cfe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d02: f280 80d0    	bge.w	0x2ea6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x1a0
    2d06: ed9f 2a15    	vldr	s4, [pc, #84]           @ 0x2d5c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x46c>
    2d0a: eeb4 9a42    	vcmp.f32	s18, s4
    2d0e: ed9f 4a12    	vldr	s8, [pc, #72]           @ 0x2d58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2d12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d16: d917         	bls	0x2d48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x458> @ imm = #0x2e
    2d18: ed9f 2a11    	vldr	s4, [pc, #68]           @ 0x2d60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x470>
    2d1c: eeb4 9a42    	vcmp.f32	s18, s4
    2d20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d24: d928         	bls	0x2d78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x488> @ imm = #0x50
    2d26: ed9f 2a0f    	vldr	s4, [pc, #60]           @ 0x2d64 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x474>
    2d2a: ee39 5a02    	vadd.f32	s10, s18, s4
    2d2e: ed9f 6a0e    	vldr	s12, [pc, #56]          @ 0x2d68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x478>
    2d32: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    2d36: e027         	b	0x2d88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x498> @ imm = #0x4e
    2d38: 0a d7 23 3d  	.word	0x3d23d70a
    2d3c: 00 bf 00 bf  	.word	0xbf00bf00
    2d40: 67 42 87 92  	.word	0x92874267
    2d44: ba 86 d4 bf  	.word	0xbfd486ba
    2d48: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    2d4c: eeb0 6a44    	vmov.f32	s12, s8
    2d50: e01e         	b	0x2d90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x4a0> @ imm = #0x3c
    2d52: bf00         	nop
    2d54: d6 f8 e4 36  	.word	0x36e4f8d6
    2d58: 00 00 00 00  	.word	0x00000000
    2d5c: 7c f2 b0 3a  	.word	0x3ab0f27c
    2d60: a6 9b c4 3b  	.word	0x3bc49ba6
    2d64: a6 9b c4 bb  	.word	0xbbc49ba6
    2d68: 79 78 b0 43  	.word	0x43b07879
    2d6c: 53 4a a1 43  	.word	0x43a14a53
    2d70: 7c f2 b0 ba  	.word	0xbab0f27c
    2d74: 00 bf 00 bf  	.word	0xbf00bf00
    2d78: ed9f 2a2d    	vldr	s4, [pc, #180]          @ 0x2e30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x540>
    2d7c: ee39 5a02    	vadd.f32	s10, s18, s4
    2d80: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    2d84: ed9f 6a31    	vldr	s12, [pc, #196]         @ 0x2e4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x55c>
    2d88: ee05 2a06    	vmla.f32	s4, s10, s12
    2d8c: ee24 6a86    	vmul.f32	s12, s9, s12
    2d90: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    2d94: eeb1 6a46    	vneg.f32	s12, s12
    2d98: ee35 2a42    	vsub.f32	s4, s10, s4
    2d9c: fe82 5a04    	vmaxnm.f32	s10, s4, s8
    2da0: eeb5 5a40    	vcmp.f32	s10, #0
    2da4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2da8: d94a         	bls	0x2e40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x550> @ imm = #0x94
    2daa: eeb0 2aee    	vabs.f32	s4, s29
    2dae: eeb4 2a45    	vcmp.f32	s4, s10
    2db2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2db6: d94b         	bls	0x2e50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x560> @ imm = #0x96
    2db8: ee85 2a02    	vdiv.f32	s4, s10, s4
    2dbc: ee22 4a02    	vmul.f32	s8, s4, s4
    2dc0: ee24 4a04    	vmul.f32	s8, s8, s8
    2dc4: ee24 4a04    	vmul.f32	s8, s8, s8
    2dc8: ee64 4a04    	vmul.f32	s9, s8, s8
    2dcc: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    2dd0: ee34 9a84    	vadd.f32	s18, s9, s8
    2dd4: eeb0 ba44    	vmov.f32	s22, s8
    2dd8: eeb4 9a44    	vcmp.f32	s18, s8
    2ddc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2de0: d009         	beq	0x2df6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x506> @ imm = #0x12
    2de2: eeb0 ba49    	vmov.f32	s22, s18
    2de6: eeb1 bacb    	vsqrt.f32	s22, s22
    2dea: eeb1 bacb    	vsqrt.f32	s22, s22
    2dee: eeb1 bacb    	vsqrt.f32	s22, s22
    2df2: eeb1 bacb    	vsqrt.f32	s22, s22
    2df6: ee84 4a0b    	vdiv.f32	s8, s8, s22
    2dfa: eef4 ea6e    	vcmp.f32	s29, s29
    2dfe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e02: ee84 9a09    	vdiv.f32	s18, s8, s18
    2e06: f180 877b    	bvs.w	0x3d00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1410> @ imm = #0xef6
    2e0a: ee1e 5a90    	vmov	r5, s29
    2e0e: f04f 547e    	mov.w	r4, #0x3f800000
    2e12: f364 051e    	bfi	r5, r4, #0, #31
    2e16: ee0b 5a10    	vmov	s22, r5
    2e1a: ee2b 5a05    	vmul.f32	s10, s22, s10
    2e1e: ee25 4a04    	vmul.f32	s8, s10, s8
    2e22: ee2b 5a09    	vmul.f32	s10, s22, s18
    2e26: ee22 2a24    	vmul.f32	s4, s4, s9
    2e2a: ee22 2a09    	vmul.f32	s4, s4, s18
    2e2e: e03a         	b	0x2ea6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x74
    2e30: 7c f2 b0 ba  	.word	0xbab0f27c
    2e34: 00 bf 00 bf  	.word	0xbf00bf00
    2e38: 15 be b6 e5  	.word	0xe5b6be15
    2e3c: 6d 7e c0 bf  	.word	0xbfc07e6d
    2e40: eeb0 2a44    	vmov.f32	s4, s8
    2e44: eeb0 5a44    	vmov.f32	s10, s8
    2e48: e02d         	b	0x2ea6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x5a
    2e4a: bf00         	nop
    2e4c: 53 4a a1 43  	.word	0x43a14a53
    2e50: ee8e 2a85    	vdiv.f32	s4, s29, s10
    2e54: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    2e58: ee22 2a02    	vmul.f32	s4, s4, s4
    2e5c: eeb0 9a64    	vmov.f32	s18, s9
    2e60: ee22 2a02    	vmul.f32	s4, s4, s4
    2e64: ee22 2a02    	vmul.f32	s4, s4, s4
    2e68: ee22 2a02    	vmul.f32	s4, s4, s4
    2e6c: ee32 4a24    	vadd.f32	s8, s4, s9
    2e70: eeb4 4a64    	vcmp.f32	s8, s9
    2e74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e78: d009         	beq	0x2e8e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x59e> @ imm = #0x12
    2e7a: eeb0 9a44    	vmov.f32	s18, s8
    2e7e: eeb1 9ac9    	vsqrt.f32	s18, s18
    2e82: eeb1 9ac9    	vsqrt.f32	s18, s18
    2e86: eeb1 9ac9    	vsqrt.f32	s18, s18
    2e8a: eeb1 9ac9    	vsqrt.f32	s18, s18
    2e8e: eec4 4a89    	vdiv.f32	s9, s9, s18
    2e92: ee2e 9a82    	vmul.f32	s18, s29, s4
    2e96: ee84 2a84    	vdiv.f32	s4, s9, s8
    2e9a: ee89 5a05    	vdiv.f32	s10, s18, s10
    2e9e: ee2e 4aa4    	vmul.f32	s8, s29, s9
    2ea2: ee25 5a02    	vmul.f32	s10, s10, s4
    2ea6: eddd 4a1c    	vldr	s9, [sp, #112]
    2eaa: 2e00         	cmp	r6, #0x0
    2eac: ee74 9ac4    	vsub.f32	s19, s9, s8
    2eb0: ed9f 4a07    	vldr	s8, [pc, #28]           @ 0x2ed0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    2eb4: fe04 9a0f    	vseleq.f32	s18, s8, s30
    2eb8: ee19 5a90    	vmov	r5, s19
    2ebc: f025 4600    	bic	r6, r5, #0x80000000
    2ec0: f1b6 4fff    	cmp.w	r6, #0x7f800000
    2ec4: db08         	blt	0x2ed8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e8> @ imm = #0x10
    2ec6: eddf 4a03    	vldr	s9, [pc, #12]           @ 0x2ed4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    2eca: e01d         	b	0x2f08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x618> @ imm = #0x3a
    2ecc: 79 61 2e c3  	.word	0xc32e6179
    2ed0: 00 00 00 80  	.word	0x80000000
    2ed4: 00 00 80 7f  	.word	0x7f800000
    2ed8: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    2edc: eeb4 aa4a    	vcmp.f32	s20, s20
    2ee0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ee4: ee89 4a84    	vdiv.f32	s8, s19, s8
    2ee8: eeb0 4ac4    	vabs.f32	s8, s8
    2eec: fe54 4a0a    	vselvs.f32	s9, s8, s20
    2ef0: eeb4 4a44    	vcmp.f32	s8, s8
    2ef4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ef8: fe14 4a84    	vselvs.f32	s8, s9, s8
    2efc: eef4 4a44    	vcmp.f32	s9, s8
    2f00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f04: fe74 4a84    	vselgt.f32	s9, s9, s8
    2f08: ed92 ab0c    	vldr	d10, [r2, #48]
    2f0c: ed9f ba48    	vldr	s22, [pc, #288]         @ 0x3030 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x740>
    2f10: ee26 6a05    	vmul.f32	s12, s12, s10
    2f14: ed92 cb1a    	vldr	d12, [r2, #104]
    2f18: eddf 8a46    	vldr	s17, [pc, #280]         @ 0x3034 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x744>
    2f1c: ed92 db1c    	vldr	d13, [r2, #112]
    2f20: 220d         	movs	r2, #0xd
    2f22: ed9f 5a45    	vldr	s10, [pc, #276]         @ 0x3038 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x748>
    2f26: eeb7 fbca    	vcvt.f32.f64	s30, d10
    2f2a: ed9d aa1c    	vldr	s20, [sp, #112]
    2f2e: ed8d fa0d    	vstr	s30, [sp, #52]
    2f32: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    2f36: ee2a 4a0b    	vmul.f32	s8, s20, s22
    2f3a: ed8d 0a0c    	vstr	s0, [sp, #48]
    2f3e: eeb7 cbcd    	vcvt.f32.f64	s24, d13
    2f42: ee66 aaa5    	vmul.f32	s21, s13, s11
    2f46: ed8d ca0b    	vstr	s24, [sp, #44]
    2f4a: ee34 da00    	vadd.f32	s26, s8, s0
    2f4e: ed9d 0a19    	vldr	s0, [sp, #100]
    2f52: ee00 da28    	vmla.f32	s26, s0, s17
    2f56: eddf ca39    	vldr	s25, [pc, #228]         @ 0x303c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x74c>
    2f5a: ee34 4a0c    	vadd.f32	s8, s8, s24
    2f5e: eddf da38    	vldr	s27, [pc, #224]         @ 0x3040 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x750>
    2f62: ee00 4a4b    	vmls.f32	s8, s0, s22
    2f66: ed9f 0a31    	vldr	s0, [pc, #196]          @ 0x302c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    2f6a: ee0a fa00    	vmla.f32	s30, s20, s0
    2f6e: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    2f72: ee23 aa22    	vmul.f32	s20, s6, s5
    2f76: fe8d 3a44    	vminnm.f32	s6, s26, s8
    2f7a: eeb4 da44    	vcmp.f32	s26, s8
    2f7e: ee7f 5a48    	vsub.f32	s11, s30, s16
    2f82: ee30 4a43    	vsub.f32	s8, s0, s6
    2f86: eeb8 3a00    	vmov.f32	s6, #-2.000000e+00
    2f8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f8e: bf88         	it	hi
    2f90: 220e         	movhi	r2, #0xe
    2f92: eeb4 4a43    	vcmp.f32	s8, s6
    2f96: ed8d 1a18    	vstr	s2, [sp, #96]
    2f9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f9e: ed8d ea17    	vstr	s28, [sp, #92]
    2fa2: edcd 7a16    	vstr	s15, [sp, #88]
    2fa6: d937         	bls	0x3018 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x728> @ imm = #0x6e
    2fa8: eeb4 4a44    	vcmp.f32	s8, s8
    2fac: ed1f 3a96    	vldr	s6, [pc, #-600]         @ 0x2d58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2fb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fb4: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    2fb8: eeb0 8a43    	vmov.f32	s16, s6
    2fbc: fe53 6a04    	vselvs.f32	s13, s6, s8
    2fc0: eeb0 da62    	vmov.f32	s26, s5
    2fc4: eef5 6a40    	vcmp.f32	s13, #0
    2fc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fcc: bfb8         	it	lt
    2fce: eeb0 8a66    	vmovlt.f32	s16, s13
    2fd2: eddf 6a1c    	vldr	s13, [pc, #112]         @ 0x3044 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x754>
    2fd6: eeb5 4a40    	vcmp.f32	s8, #0
    2fda: ee08 da00    	vmla.f32	s26, s16, s0
    2fde: ed9f 8a1a    	vldr	s16, [pc, #104]         @ 0x3048 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x758>
    2fe2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fe6: ee2d da26    	vmul.f32	s26, s26, s13
    2fea: fe8d da08    	vmaxnm.f32	s26, s26, s16
    2fee: d52f         	bpl	0x3050 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x760> @ imm = #0x5e
    2ff0: ee44 2a00    	vmla.f32	s5, s8, s0
    2ff4: ee22 4aa6    	vmul.f32	s8, s5, s13
    2ff8: eeb4 4a48    	vcmp.f32	s8, s16
    2ffc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3000: dd26         	ble	0x3050 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x760> @ imm = #0x4c
    3002: eeb0 1a6f    	vmov.f32	s2, s31
    3006: eeb0 ca6b    	vmov.f32	s24, s23
    300a: ed9f 3af6    	vldr	s6, [pc, #984]          @ 0x33e4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf4>
    300e: e023         	b	0x3058 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x768> @ imm = #0x46
    3010: af e6 27 b9  	.word	0xb927e6af
    3014: 00 bf 00 bf  	.word	0xbf00bf00
    3018: eeb0 1a6f    	vmov.f32	s2, s31
    301c: eeb0 ca6b    	vmov.f32	s24, s23
    3020: ed1f 3ab3    	vldr	s6, [pc, #-716]         @ 0x2d58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    3024: ed9f da08    	vldr	s26, [pc, #32]          @ 0x3048 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x758>
    3028: e016         	b	0x3058 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x768> @ imm = #0x2c
    302a: bf00         	nop
    302c: 79 2e 02 39  	.word	0x39022e79
    3030: 51 e6 7f 3f  	.word	0x3f7fe651
    3034: 99 76 cd 39  	.word	0x39cd7699
    3038: d6 f8 e4 b6  	.word	0xb6e4f8d6
    303c: 83 c0 96 38  	.word	0x3896c083
    3040: af e6 27 39  	.word	0x3927e6af
    3044: 2b 18 95 3b  	.word	0x3b95182b
    3048: 95 bf d6 33  	.word	0x33d6bf95
    304c: 00 bf 00 bf  	.word	0xbf00bf00
    3050: eeb0 1a6f    	vmov.f32	s2, s31
    3054: eeb0 ca6b    	vmov.f32	s24, s23
    3058: e9cd 3004    	strd	r3, r0, [sp, #16]
    305c: f64d 3040    	movw	r0, #0xdb40
    3060: ed9d 0a19    	vldr	s0, [sp, #100]
    3064: f2c0 0000    	movt	r0, #0x0
    3068: ee50 5a0d    	vnmls.f32	s11, s0, s26
    306c: eb00 1282    	add.w	r2, r0, r2, lsl #6
    3070: ee20 4a03    	vmul.f32	s8, s0, s6
    3074: ee29 9a02    	vmul.f32	s18, s18, s4
    3078: ed1f 2a14    	vldr	s4, [pc, #-80]          @ 0x302c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    307c: ed92 8b0c    	vldr	d8, [r2, #48]
    3080: ed9f 0ad9    	vldr	s0, [pc, #868]          @ 0x33e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf8>
    3084: ee66 6a05    	vmul.f32	s13, s12, s10
    3088: eeb7 3bc8    	vcvt.f32.f64	s6, d8
    308c: ee26 8a2d    	vmul.f32	s16, s12, s27
    3090: ed92 fb08    	vldr	d15, [r2, #32]
    3094: ee04 2a43    	vmls.f32	s4, s8, s6
    3098: ed92 bb0a    	vldr	d11, [r2, #40]
    309c: ee15 2a90    	vmov	r2, s11
    30a0: ee2a 3a87    	vmul.f32	s6, s21, s14
    30a4: eef7 8bcf    	vcvt.f32.f64	s17, d15
    30a8: ee66 7a00    	vmul.f32	s15, s12, s0
    30ac: ed9f 0af8    	vldr	s0, [pc, #992]          @ 0x3490 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba0>
    30b0: eeb7 6bcb    	vcvt.f32.f64	s12, d11
    30b4: f022 4200    	bic	r2, r2, #0x80000000
    30b8: ee2a fa2c    	vmul.f32	s30, s20, s25
    30bc: f1b2 4fff    	cmp.w	r2, #0x7f800000
    30c0: ed5f ca7c    	vldr	s25, [pc, #-496]        @ 0x2ed4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    30c4: ed9f baf3    	vldr	s22, [pc, #972]         @ 0x3494 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba4>
    30c8: eddf baf3    	vldr	s23, [pc, #972]         @ 0x3498 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba8>
    30cc: da17         	bge	0x30fe <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x80e> @ imm = #0x2e
    30ce: ed9f 7af3    	vldr	s14, [pc, #972]         @ 0x349c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbac>
    30d2: eef4 4a64    	vcmp.f32	s9, s9
    30d6: ee85 7a87    	vdiv.f32	s14, s11, s14
    30da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    30de: eeb0 7ac7    	vabs.f32	s14, s14
    30e2: fe57 4a24    	vselvs.f32	s9, s14, s9
    30e6: eeb4 7a47    	vcmp.f32	s14, s14
    30ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    30ee: fe14 7a87    	vselvs.f32	s14, s9, s14
    30f2: eef4 4a47    	vcmp.f32	s9, s14
    30f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    30fa: fe74 ca87    	vselgt.f32	s25, s9, s14
    30fe: eeb0 7a43    	vmov.f32	s14, s6
    3102: ee0a 3a05    	vmla.f32	s6, s20, s10
    3106: ed1f 5a8e    	vldr	s10, [pc, #-568]        @ 0x2ed0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    310a: ee0a fa80    	vmla.f32	s30, s21, s0
    310e: ee0a 7a05    	vmla.f32	s14, s20, s10
    3112: ae22         	add	r6, sp, #0x88
    3114: ee49 7a23    	vmla.f32	s15, s18, s7
    3118: f106 000c    	add.w	r0, r6, #0xc
    311c: ee49 6a0b    	vmla.f32	s13, s18, s22
    3120: 9008         	str	r0, [sp, #0x20]
    3122: ee09 8a2b    	vmla.f32	s16, s18, s23
    3126: 9100         	str	r1, [sp]
    3128: ee68 8ac4    	vnmul.f32	s17, s17, s8
    312c: 69c8         	ldr	r0, [r1, #0x1c]
    312e: ee64 da06    	vmul.f32	s27, s8, s12
    3132: 2100         	movs	r1, #0x0
    3134: ee7d ba02    	vadd.f32	s23, s26, s4
    3138: f04f 0e00    	mov.w	lr, #0x0
    313c: eef1 4a61    	vneg.f32	s9, s3
    3140: f10d 097c    	add.w	r9, sp, #0x7c
    3144: eeb1 9a69    	vneg.f32	s18, s19
    3148: eef0 9a6c    	vmov.f32	s19, s25
    314c: eeb1 2a65    	vneg.f32	s4, s11
    3150: f04f 5b7e    	mov.w	r11, #0x3f800000
    3154: 468a         	mov	r10, r1
    3156: eddf fad2    	vldr	s31, [pc, #840]         @ 0x34a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb0>
    315a: ed1f ea46    	vldr	s28, [pc, #-280]        @ 0x3044 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x754>
    315e: ed9d aa09    	vldr	s20, [sp, #36]
    3162: 9001         	str	r0, [sp, #0x4]
    3164: ee3f 4a20    	vadd.f32	s8, s30, s1
    3168: 2910         	cmp	r1, #0x10
    316a: eeb0 5ae6    	vabs.f32	s10, s13
    316e: f04f 0400    	mov.w	r4, #0x0
    3172: bf18         	it	ne
    3174: f10a 0a01    	addne.w	r10, r10, #0x1
    3178: eeb0 6ac4    	vabs.f32	s12, s8
    317c: edcd 4a1f    	vstr	s9, [sp, #124]
    3180: ed8d 4a22    	vstr	s8, [sp, #136]
    3184: ed9f 0a98    	vldr	s0, [pc, #608]          @ 0x33e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf8>
    3188: ed8d 3a23    	vstr	s6, [sp, #140]
    318c: f10d 0c88    	add.w	r12, sp, #0x88
    3190: eeb4 5a46    	vcmp.f32	s10, s12
    3194: ed8d 7a24    	vstr	s14, [sp, #144]
    3198: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    319c: eeb0 6ae8    	vabs.f32	s12, s17
    31a0: fe36 5a84    	vselgt.f32	s10, s13, s8
    31a4: bfc8         	it	gt
    31a6: 2401         	movgt	r4, #0x1
    31a8: edcd 6a25    	vstr	s13, [sp, #148]
    31ac: eeb0 5ac5    	vabs.f32	s10, s10
    31b0: eeb4 6a45    	vcmp.f32	s12, s10
    31b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    31b8: bfc8         	it	gt
    31ba: 2402         	movgt	r4, #0x2
    31bc: ee38 5a20    	vadd.f32	s10, s16, s1
    31c0: edcd 8a28    	vstr	s17, [sp, #160]
    31c4: ed8d 5a26    	vstr	s10, [sp, #152]
    31c8: ee30 5a6d    	vsub.f32	s10, s0, s27
    31cc: eb04 0044    	add.w	r0, r4, r4, lsl #1
    31d0: edcd 7a27    	vstr	s15, [sp, #156]
    31d4: ed8d 5a29    	vstr	s10, [sp, #164]
    31d8: ed9f 0aec    	vldr	s0, [pc, #944]          @ 0x358c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xc9c>
    31dc: eb06 0280    	add.w	r2, r6, r0, lsl #2
    31e0: edcd ba2a    	vstr	s23, [sp, #168]
    31e4: f856 0020    	ldr.w	r0, [r6, r0, lsl #2]
    31e8: ed8d 9a20    	vstr	s18, [sp, #128]
    31ec: e9d2 3501    	ldrd	r3, r5, [r2, #4]
    31f0: e88c 0029    	stm.w	r12, {r0, r3, r5}
    31f4: ed82 4a00    	vstr	s8, [r2]
    31f8: ed82 3a01    	vstr	s6, [r2, #4]
    31fc: ed82 7a02    	vstr	s14, [r2, #8]
    3200: eb09 0284    	add.w	r2, r9, r4, lsl #2
    3204: eddd 1a22    	vldr	s3, [sp, #136]
    3208: ed8d 2a21    	vstr	s4, [sp, #132]
    320c: ee11 0a90    	vmov	r0, s3
    3210: f859 3024    	ldr.w	r3, [r9, r4, lsl #2]
    3214: 931f         	str	r3, [sp, #0x7c]
    3216: edc2 4a00    	vstr	s9, [r2]
    321a: f020 4000    	bic	r0, r0, #0x80000000
    321e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3222: f280 8541    	bge.w	0x3ca8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0xa82
    3226: eeb0 2ae1    	vabs.f32	s4, s3
    322a: eeb4 2a40    	vcmp.f32	s4, s0
    322e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3232: f100 8539    	bmi.w	0x3ca8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0xa72
    3236: ed9d 2a28    	vldr	s4, [sp, #160]
    323a: ed9d 3a25    	vldr	s6, [sp, #148]
    323e: ee82 4a21    	vdiv.f32	s8, s4, s3
    3242: ed9d 2a23    	vldr	s4, [sp, #140]
    3246: ee83 5a21    	vdiv.f32	s10, s6, s3
    324a: ed9d 6a29    	vldr	s12, [sp, #164]
    324e: ed9d 7a26    	vldr	s14, [sp, #152]
    3252: ed9d 3a1f    	vldr	s6, [sp, #124]
    3256: ee04 6a42    	vmls.f32	s12, s8, s4
    325a: eddd 2a24    	vldr	s5, [sp, #144]
    325e: ee05 7a42    	vmls.f32	s14, s10, s4
    3262: eddd 3a27    	vldr	s7, [sp, #156]
    3266: ee45 3a62    	vmls.f32	s7, s10, s5
    326a: eddd 4a20    	vldr	s9, [sp, #128]
    326e: ee45 4a43    	vmls.f32	s9, s10, s6
    3272: eddd 6a2a    	vldr	s13, [sp, #168]
    3276: ee44 6a62    	vmls.f32	s13, s8, s5
    327a: 9d08         	ldr	r5, [sp, #0x20]
    327c: 462c         	mov	r4, r5
    327e: ed8d 7a26    	vstr	s14, [sp, #152]
    3282: eeb0 5ac6    	vabs.f32	s10, s12
    3286: edcd 3a27    	vstr	s7, [sp, #156]
    328a: eef0 5ac7    	vabs.f32	s11, s14
    328e: edcd 4a20    	vstr	s9, [sp, #128]
    3292: ed8d 6a29    	vstr	s12, [sp, #164]
    3296: 4672         	mov	r2, lr
    3298: eeb4 5a65    	vcmp.f32	s10, s11
    329c: ed9d 5a21    	vldr	s10, [sp, #132]
    32a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    32a4: bfc8         	it	gt
    32a6: f106 0418    	addgt.w	r4, r6, #0x18
    32aa: edcd 6a2a    	vstr	s13, [sp, #168]
    32ae: f8d5 c000    	ldr.w	r12, [r5]
    32b2: f8d4 8000    	ldr.w	r8, [r4]
    32b6: 6868         	ldr	r0, [r5, #0x4]
    32b8: e9d4 e301    	ldrd	lr, r3, [r4, #4]
    32bc: f8c5 8000    	str.w	r8, [r5]
    32c0: ee04 5a43    	vmls.f32	s10, s8, s6
    32c4: f8c5 e004    	str.w	lr, [r5, #0x4]
    32c8: 4696         	mov	lr, r2
    32ca: 68aa         	ldr	r2, [r5, #0x8]
    32cc: 60ab         	str	r3, [r5, #0x8]
    32ce: e9c4 0201    	strd	r0, r2, [r4, #4]
    32d2: ed9d 4a26    	vldr	s8, [sp, #152]
    32d6: f04f 0004    	mov.w	r0, #0x4
    32da: ee14 2a10    	vmov	r2, s8
    32de: bfc8         	it	gt
    32e0: 2008         	movgt	r0, #0x8
    32e2: ed8d 5a21    	vstr	s10, [sp, #132]
    32e6: f859 3000    	ldr.w	r3, [r9, r0]
    32ea: 4448         	add	r0, r9
    32ec: f022 4200    	bic	r2, r2, #0x80000000
    32f0: f8c4 c000    	str.w	r12, [r4]
    32f4: f1b2 4fff    	cmp.w	r2, #0x7f800000
    32f8: 9320         	str	r3, [sp, #0x80]
    32fa: edc0 4a00    	vstr	s9, [r0]
    32fe: f280 84d3    	bge.w	0x3ca8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x9a6
    3302: eeb0 5ac4    	vabs.f32	s10, s8
    3306: eeb4 5a40    	vcmp.f32	s10, s0
    330a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    330e: f100 84cb    	bmi.w	0x3ca8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x996
    3312: ed9d 5a29    	vldr	s10, [sp, #164]
    3316: ed9d 7a2a    	vldr	s14, [sp, #168]
    331a: ee85 6a04    	vdiv.f32	s12, s10, s8
    331e: ed9d 5a27    	vldr	s10, [sp, #156]
    3322: ee06 7a45    	vmls.f32	s14, s12, s10
    3326: ee17 0a10    	vmov	r0, s14
    332a: f020 4000    	bic	r0, r0, #0x80000000
    332e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3332: f280 84b9    	bge.w	0x3ca8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x972
    3336: eef0 3ac7    	vabs.f32	s7, s14
    333a: eef4 3a40    	vcmp.f32	s7, s0
    333e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3342: f100 84b1    	bmi.w	0x3ca8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x962
    3346: eddd 3a20    	vldr	s7, [sp, #128]
    334a: eddd 4a21    	vldr	s9, [sp, #132]
    334e: ee46 4a63    	vmls.f32	s9, s12, s7
    3352: edcd ea07    	vstr	s29, [sp, #28]
    3356: ed8d aa09    	vstr	s20, [sp, #36]
    335a: ee84 7a87    	vdiv.f32	s14, s9, s14
    335e: ed8d 7a21    	vstr	s14, [sp, #132]
    3362: ee45 3a47    	vmls.f32	s7, s10, s14
    3366: ed9d 5a1a    	vldr	s10, [sp, #104]
    336a: eeb0 5ac5    	vabs.f32	s10, s10
    336e: eeb4 5a45    	vcmp.f32	s10, s10
    3372: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3376: eec3 6a84    	vdiv.f32	s13, s7, s8
    337a: ed9f 4ab7    	vldr	s8, [pc, #732]          @ 0x3658 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd68>
    337e: ee02 3a66    	vmls.f32	s6, s4, s13
    3382: fe10 2a85    	vselvs.f32	s4, s1, s10
    3386: ed9f 5ab5    	vldr	s10, [pc, #724]         @ 0x365c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd6c>
    338a: ee02 3ac7    	vmls.f32	s6, s5, s14
    338e: eeb4 2a60    	vcmp.f32	s4, s1
    3392: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3396: fe32 2a20    	vselgt.f32	s4, s4, s1
    339a: ee83 8a21    	vdiv.f32	s16, s6, s3
    339e: ee22 2a05    	vmul.f32	s4, s4, s10
    33a2: eeb0 6ac8    	vabs.f32	s12, s16
    33a6: fe82 2a44    	vminnm.f32	s4, s4, s8
    33aa: eeb4 6a42    	vcmp.f32	s12, s4
    33ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33b2: d91d         	bls	0x33f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb00> @ imm = #0x3a
    33b4: 2400         	movs	r4, #0x0
    33b6: eef0 aa4c    	vmov.f32	s21, s24
    33ba: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    33be: eddf eaa8    	vldr	s29, [pc, #672]         @ 0x3660 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    33c2: ed9f 0aa8    	vldr	s0, [pc, #672]          @ 0x3664 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd74>
    33c6: eef4 9a40    	vcmp.f32	s19, s0
    33ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33ce: d854         	bhi	0x347a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb8a> @ imm = #0xa8
    33d0: f1a1 0010    	sub.w	r0, r1, #0x10
    33d4: fab0 f080    	clz	r0, r0
    33d8: 0940         	lsrs	r0, r0, #0x5
    33da: 4320         	orrs	r0, r4
    33dc: d050         	beq	0x3480 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb90> @ imm = #0xa0
    33de: f000 bc4d    	b.w	0x3c7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x138c> @ imm = #0x89a
    33e2: bf00         	nop
    33e4: 2b 18 15 3b  	.word	0x3b15182b
    33e8: 79 2e 02 b9  	.word	0xb9022e79
    33ec: 00 bf 00 bf  	.word	0xbf00bf00
    33f0: ed9d 2a1c    	vldr	s4, [sp, #112]
    33f4: eeb0 3ae6    	vabs.f32	s6, s13
    33f8: eeb0 2ac2    	vabs.f32	s4, s4
    33fc: eef0 aa4c    	vmov.f32	s21, s24
    3400: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    3404: eddf ea96    	vldr	s29, [pc, #600]         @ 0x3660 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    3408: eeb4 2a42    	vcmp.f32	s4, s4
    340c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3410: fe10 2a82    	vselvs.f32	s4, s1, s4
    3414: eeb4 2a60    	vcmp.f32	s4, s1
    3418: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    341c: fe32 2a20    	vselgt.f32	s4, s4, s1
    3420: ee22 2a05    	vmul.f32	s4, s4, s10
    3424: fe82 2a44    	vminnm.f32	s4, s4, s8
    3428: eeb4 3a42    	vcmp.f32	s6, s4
    342c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3430: d81b         	bhi	0x346a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb7a> @ imm = #0x36
    3432: ed9d 0a19    	vldr	s0, [sp, #100]
    3436: eeb0 3ac7    	vabs.f32	s6, s14
    343a: eeb0 2ac0    	vabs.f32	s4, s0
    343e: eeb4 2a42    	vcmp.f32	s4, s4
    3442: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3446: fe10 2a82    	vselvs.f32	s4, s1, s4
    344a: eeb4 2a60    	vcmp.f32	s4, s1
    344e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3452: fe32 2a20    	vselgt.f32	s4, s4, s1
    3456: ee22 2a05    	vmul.f32	s4, s4, s10
    345a: fe82 2a44    	vminnm.f32	s4, s4, s8
    345e: eeb4 3a42    	vcmp.f32	s6, s4
    3462: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3466: f240 83cf    	bls.w	0x3c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1318> @ imm = #0x79e
    346a: 2400         	movs	r4, #0x0
    346c: ed9f 0a7d    	vldr	s0, [pc, #500]          @ 0x3664 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd74>
    3470: eef4 9a40    	vcmp.f32	s19, s0
    3474: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3478: d9aa         	bls	0x33d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xae0> @ imm = #-0xac
    347a: 2910         	cmp	r1, #0x10
    347c: f000 841c    	beq.w	0x3cb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13c8> @ imm = #0x838
    3480: f04f 547e    	mov.w	r4, #0x3f800000
    3484: ed8d 6a06    	vstr	s12, [sp, #24]
    3488: edcd 9a0a    	vstr	s19, [sp, #40]
    348c: e018         	b	0x34c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbd0> @ imm = #0x30
    348e: bf00         	nop
    3490: fc 9d 08 bf  	.word	0xbf089dfc
    3494: 6f f3 03 be  	.word	0xbe03f36f
    3498: d5 35 a4 be  	.word	0xbea435d5
    349c: 0a d7 23 3c  	.word	0x3c23d70a
    34a0: 00 00 00 00  	.word	0x00000000
    34a4: 00 bf 00 bf  	.word	0xbf00bf00
    34a8: eef0 aa4c    	vmov.f32	s21, s24
    34ac: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    34b0: f5a4 0400    	sub.w	r4, r4, #0x800000
    34b4: eddf ea6a    	vldr	s29, [pc, #424]         @ 0x3660 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    34b8: f1b4 5f66    	cmp.w	r4, #0x39800000
    34bc: f000 83b0    	beq.w	0x3c20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1330> @ imm = #0x760
    34c0: ee04 4a90    	vmov	s9, r4
    34c4: ed9d aa1a    	vldr	s20, [sp, #104]
    34c8: ed9f 5b67    	vldr	d5, [pc, #412]          @ 0x3668 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd78>
    34cc: eddd da13    	vldr	s27, [sp, #76]
    34d0: ed9d ba1c    	vldr	s22, [sp, #112]
    34d4: ee08 aa24    	vmla.f32	s20, s16, s9
    34d8: ed9f 4abf    	vldr	s8, [pc, #764]          @ 0x37d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xee8>
    34dc: ed9d 3b14    	vldr	d3, [sp, #80]
    34e0: ee06 baa4    	vmla.f32	s22, s13, s9
    34e4: ed9d 0a17    	vldr	s0, [sp, #92]
    34e8: eeb0 6a6f    	vmov.f32	s12, s31
    34ec: eeb0 fa6f    	vmov.f32	s30, s31
    34f0: eeb7 2aca    	vcvt.f64.f32	d2, s20
    34f4: ee02 3b05    	vmla.f64	d3, d2, d5
    34f8: ed9f 5ab6    	vldr	s10, [pc, #728]         @ 0x37d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xee4>
    34fc: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    3500: ee43 da2a    	vmla.f32	s27, s6, s21
    3504: ed9d 3a12    	vldr	s6, [sp, #72]
    3508: ee0a 3a04    	vmla.f32	s6, s20, s8
    350c: ee0b 3a05    	vmla.f32	s6, s22, s10
    3510: eeb0 5a6f    	vmov.f32	s10, s31
    3514: eeb4 1a6d    	vcmp.f32	s2, s27
    3518: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    351c: fe31 4a2d    	vselgt.f32	s8, s2, s27
    3520: eef0 3ac3    	vabs.f32	s7, s6
    3524: eeb4 4a40    	vcmp.f32	s8, s0
    3528: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    352c: eeb5 3a40    	vcmp.f32	s6, #0
    3530: eeb0 3a6f    	vmov.f32	s6, s31
    3534: fe70 1a04    	vselgt.f32	s3, s0, s8
    3538: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    353c: bf48         	it	mi
    353e: eeb0 3a6b    	vmovmi.f32	s6, s23
    3542: eef4 3a6e    	vcmp.f32	s7, s29
    3546: fe30 4a83    	vselgt.f32	s8, s1, s6
    354a: eeb0 3a6f    	vmov.f32	s6, s31
    354e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3552: f280 80b9    	bge.w	0x36c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x172
    3556: eeb0 5a6f    	vmov.f32	s10, s31
    355a: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    355e: ed9f 0ad7    	vldr	s0, [pc, #860]          @ 0x38bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfcc>
    3562: eef4 3a40    	vcmp.f32	s7, s0
    3566: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    356a: d91b         	bls	0x35a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xcb4> @ imm = #0x36
    356c: ed9f 0ad4    	vldr	s0, [pc, #848]          @ 0x38c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd0>
    3570: eef4 3a40    	vcmp.f32	s7, s0
    3574: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3578: d90a         	bls	0x3590 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xca0> @ imm = #0x14
    357a: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x38c4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd4>
    357e: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    3582: ee33 5a80    	vadd.f32	s10, s7, s0
    3586: ed9f 0ad0    	vldr	s0, [pc, #832]          @ 0x38c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd8>
    358a: e007         	b	0x359c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xcac> @ imm = #0xe
    358c: 08 e5 3c 1e  	.word	0x1e3ce508
    3590: ed9f 0ace    	vldr	s0, [pc, #824]          @ 0x38cc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfdc>
    3594: ee33 5a80    	vadd.f32	s10, s7, s0
    3598: ed9f 0acd    	vldr	s0, [pc, #820]          @ 0x38d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe0>
    359c: ee05 3a00    	vmla.f32	s6, s10, s0
    35a0: ee24 5a00    	vmul.f32	s10, s8, s0
    35a4: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    35a8: ee30 3a43    	vsub.f32	s6, s0, s6
    35ac: fe83 4a2f    	vmaxnm.f32	s8, s6, s31
    35b0: eeb1 3a45    	vneg.f32	s6, s10
    35b4: eeb5 4a40    	vcmp.f32	s8, #0
    35b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    35bc: d944         	bls	0x3648 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd58> @ imm = #0x88
    35be: eeb0 5ae1    	vabs.f32	s10, s3
    35c2: eeb4 5a44    	vcmp.f32	s10, s8
    35c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    35ca: d951         	bls	0x3670 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd80> @ imm = #0xa2
    35cc: ee84 5a05    	vdiv.f32	s10, s8, s10
    35d0: eef0 5a60    	vmov.f32	s11, s1
    35d4: ee25 6a05    	vmul.f32	s12, s10, s10
    35d8: ee26 6a06    	vmul.f32	s12, s12, s12
    35dc: ee26 6a06    	vmul.f32	s12, s12, s12
    35e0: ee66 3a06    	vmul.f32	s7, s12, s12
    35e4: ee33 6aa0    	vadd.f32	s12, s7, s1
    35e8: eeb4 6a60    	vcmp.f32	s12, s1
    35ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    35f0: d009         	beq	0x3606 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd16> @ imm = #0x12
    35f2: eef0 5a46    	vmov.f32	s11, s12
    35f6: eef1 5ae5    	vsqrt.f32	s11, s11
    35fa: eef1 5ae5    	vsqrt.f32	s11, s11
    35fe: eef1 5ae5    	vsqrt.f32	s11, s11
    3602: eef1 5ae5    	vsqrt.f32	s11, s11
    3606: ee80 9aa5    	vdiv.f32	s18, s1, s11
    360a: eef4 1a61    	vcmp.f32	s3, s3
    360e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3612: eec9 5a06    	vdiv.f32	s11, s18, s12
    3616: ed9f 6aaf    	vldr	s12, [pc, #700]         @ 0x38d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe4>
    361a: eeb0 fa46    	vmov.f32	s30, s12
    361e: bf7f         	itttt	vc
    3620: ee11 0a90    	vmovvc	r0, s3
    3624: f36b 001e    	bfivc	r0, r11, #0, #31
    3628: ee0d 0a10    	vmovvc	s26, r0
    362c: ee2d 4a04    	vmulvc.f32	s8, s26, s8
    3630: bf7c         	itt	vc
    3632: ee24 6a09    	vmulvc.f32	s12, s8, s18
    3636: ee2d fa25    	vmulvc.f32	s30, s26, s11
    363a: ee25 4a23    	vmul.f32	s8, s10, s7
    363e: ee24 5a25    	vmul.f32	s10, s8, s11
    3642: e041         	b	0x36c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x82
    3644: bf00         	nop
    3646: bf00         	nop
    3648: eeb0 6a6f    	vmov.f32	s12, s31
    364c: eeb0 5a6f    	vmov.f32	s10, s31
    3650: eeb0 fa6f    	vmov.f32	s30, s31
    3654: e038         	b	0x36c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x70
    3656: bf00         	nop
    3658: ac c5 a7 37  	.word	0x37a7c5ac
    365c: bd 37 06 36  	.word	0x360637bd
    3660: 0a d7 23 3d  	.word	0x3d23d70a
    3664: 17 b7 d1 38  	.word	0x38d1b717
    3668: 1c 38 88 77  	.word	0x7788381c
    366c: bf 13 e1 bf  	.word	0xbfe113bf
    3670: ee81 5a84    	vdiv.f32	s10, s3, s8
    3674: eef0 3a60    	vmov.f32	s7, s1
    3678: ee25 5a05    	vmul.f32	s10, s10, s10
    367c: ee25 5a05    	vmul.f32	s10, s10, s10
    3680: ee25 5a05    	vmul.f32	s10, s10, s10
    3684: ee25 5a05    	vmul.f32	s10, s10, s10
    3688: ee35 6a20    	vadd.f32	s12, s10, s1
    368c: eeb4 6a60    	vcmp.f32	s12, s1
    3690: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3694: d009         	beq	0x36aa <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdba> @ imm = #0x12
    3696: eef0 3a46    	vmov.f32	s7, s12
    369a: eef1 3ae3    	vsqrt.f32	s7, s7
    369e: eef1 3ae3    	vsqrt.f32	s7, s7
    36a2: eef1 3ae3    	vsqrt.f32	s7, s7
    36a6: eef1 3ae3    	vsqrt.f32	s7, s7
    36aa: eec0 3aa3    	vdiv.f32	s7, s1, s7
    36ae: ee61 5a85    	vmul.f32	s11, s3, s10
    36b2: ee83 5a86    	vdiv.f32	s10, s7, s12
    36b6: ee85 4a84    	vdiv.f32	s8, s11, s8
    36ba: ee21 6aa3    	vmul.f32	s12, s3, s7
    36be: ee24 fa05    	vmul.f32	s30, s8, s10
    36c2: bf00         	nop
    36c4: bf00         	nop
    36c6: bf00         	nop
    36c8: ee3a da46    	vsub.f32	s26, s20, s12
    36cc: eddd 3a19    	vldr	s7, [sp, #100]
    36d0: ee47 3a24    	vmla.f32	s7, s14, s9
    36d4: eddf cad5    	vldr	s25, [pc, #852]         @ 0x3a2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x113c>
    36d8: ee1d 0a10    	vmov	r0, s26
    36dc: f020 4000    	bic	r0, r0, #0x80000000
    36e0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    36e4: da07         	bge	0x36f6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xe06> @ imm = #0xe
    36e6: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    36ea: ee8d 4a00    	vdiv.f32	s8, s26, s0
    36ee: eeb0 4ac4    	vabs.f32	s8, s8
    36f2: fec4 ca2f    	vmaxnm.f32	s25, s8, s31
    36f6: ed9f 0b68    	vldr	d0, [pc, #416]          @ 0x3898 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfa8>
    36fa: eeb7 9acb    	vcvt.f64.f32	d9, s22
    36fe: eddd 8a0f    	vldr	s17, [sp, #60]
    3702: ed9d 4b10    	vldr	d4, [sp, #64]
    3706: eeb0 ca6a    	vmov.f32	s24, s21
    370a: eeb0 6a6f    	vmov.f32	s12, s31
    370e: ee02 4b00    	vmla.f64	d4, d2, d0
    3712: ed9f 0b63    	vldr	d0, [pc, #396]          @ 0x38a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfb0>
    3716: ee09 4b00    	vmla.f64	d4, d9, d0
    371a: ed9f 0ac5    	vldr	s0, [pc, #788]          @ 0x3a30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1140>
    371e: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    3722: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    3726: ed9f 4a64    	vldr	s8, [pc, #400]          @ 0x38b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfc8>
    372a: eef0 4a6f    	vmov.f32	s9, s31
    372e: ee42 8a2a    	vmla.f32	s17, s4, s21
    3732: ed9d 2a0e    	vldr	s4, [sp, #56]
    3736: ee0a 2a04    	vmla.f32	s4, s20, s8
    373a: ed9f 4abe    	vldr	s8, [pc, #760]          @ 0x3a34 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1144>
    373e: ee63 2a84    	vmul.f32	s5, s7, s8
    3742: ee0b 2a00    	vmla.f32	s4, s22, s0
    3746: ed9d 0a16    	vldr	s0, [sp, #88]
    374a: eeb4 0a68    	vcmp.f32	s0, s17
    374e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3752: fe30 4a28    	vselgt.f32	s8, s0, s17
    3756: ed9d 0a18    	vldr	s0, [sp, #96]
    375a: ee32 2a22    	vadd.f32	s4, s4, s5
    375e: eeb4 4a40    	vcmp.f32	s8, s0
    3762: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3766: eeb5 2a40    	vcmp.f32	s4, #0
    376a: eef0 5ac2    	vabs.f32	s11, s4
    376e: eeb0 2a6f    	vmov.f32	s4, s31
    3772: fe70 aa04    	vselgt.f32	s21, s0, s8
    3776: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    377a: bf48         	it	mi
    377c: eeb0 2a6b    	vmovmi.f32	s4, s23
    3780: eef0 ba6f    	vmov.f32	s23, s31
    3784: eef4 5a6e    	vcmp.f32	s11, s29
    3788: fe30 4a82    	vselgt.f32	s8, s1, s4
    378c: eeb0 2a6f    	vmov.f32	s4, s31
    3790: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3794: eddf eaa8    	vldr	s29, [pc, #672]         @ 0x3a38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1148>
    3798: f280 80ca    	bge.w	0x3930 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x194
    379c: eeb0 6a6f    	vmov.f32	s12, s31
    37a0: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    37a4: ed9f 0a45    	vldr	s0, [pc, #276]          @ 0x38bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfcc>
    37a8: eef4 5a40    	vcmp.f32	s11, s0
    37ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    37b0: d920         	bls	0x37f4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xf04> @ imm = #0x40
    37b2: ed9f 0a43    	vldr	s0, [pc, #268]          @ 0x38c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd0>
    37b6: eef4 5a40    	vcmp.f32	s11, s0
    37ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    37be: d90f         	bls	0x37e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xef0> @ imm = #0x1e
    37c0: ed9f 0a40    	vldr	s0, [pc, #256]          @ 0x38c4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd4>
    37c4: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    37c8: ee35 6a80    	vadd.f32	s12, s11, s0
    37cc: ed9f 0a3e    	vldr	s0, [pc, #248]          @ 0x38c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd8>
    37d0: e00c         	b	0x37ec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xefc> @ imm = #0x18
    37d2: bf00         	nop
    37d4: d6 f8 e4 36  	.word	0x36e4f8d6
    37d8: 83 c0 96 b8  	.word	0xb896c083
    37dc: 00 bf 00 bf  	.word	0xbf00bf00
    37e0: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x38cc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfdc>
    37e4: ee35 6a80    	vadd.f32	s12, s11, s0
    37e8: ed9f 0a39    	vldr	s0, [pc, #228]          @ 0x38d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe0>
    37ec: ee06 2a00    	vmla.f32	s4, s12, s0
    37f0: ee24 6a00    	vmul.f32	s12, s8, s0
    37f4: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    37f8: eef1 ba46    	vneg.f32	s23, s12
    37fc: ee30 2a42    	vsub.f32	s4, s0, s4
    3800: fe82 4a2f    	vmaxnm.f32	s8, s4, s31
    3804: eeb5 4a40    	vcmp.f32	s8, #0
    3808: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    380c: d94c         	bls	0x38a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfb8> @ imm = #0x98
    380e: eeb0 2aea    	vabs.f32	s4, s21
    3812: eeb4 2a44    	vcmp.f32	s4, s8
    3816: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    381a: d95d         	bls	0x38d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe8> @ imm = #0xba
    381c: ee84 2a02    	vdiv.f32	s4, s8, s4
    3820: eef0 4a60    	vmov.f32	s9, s1
    3824: ee22 6a02    	vmul.f32	s12, s4, s4
    3828: ee26 6a06    	vmul.f32	s12, s12, s12
    382c: ee26 6a06    	vmul.f32	s12, s12, s12
    3830: ee66 5a06    	vmul.f32	s11, s12, s12
    3834: ee35 6aa0    	vadd.f32	s12, s11, s1
    3838: eeb4 6a60    	vcmp.f32	s12, s1
    383c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3840: d009         	beq	0x3856 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xf66> @ imm = #0x12
    3842: eef0 4a46    	vmov.f32	s9, s12
    3846: eef1 4ae4    	vsqrt.f32	s9, s9
    384a: eef1 4ae4    	vsqrt.f32	s9, s9
    384e: eef1 4ae4    	vsqrt.f32	s9, s9
    3852: eef1 4ae4    	vsqrt.f32	s9, s9
    3856: eec0 9aa4    	vdiv.f32	s19, s1, s9
    385a: ee22 2a25    	vmul.f32	s4, s4, s11
    385e: eef4 aa6a    	vcmp.f32	s21, s21
    3862: ee89 9a86    	vdiv.f32	s18, s19, s12
    3866: ed9f 6a1b    	vldr	s12, [pc, #108]         @ 0x38d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe4>
    386a: eef0 4a46    	vmov.f32	s9, s12
    386e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3872: bf7f         	itttt	vc
    3874: ee1a 0a90    	vmovvc	r0, s21
    3878: f36b 001e    	bfivc	r0, r11, #0, #31
    387c: ee04 0a90    	vmovvc	s9, r0
    3880: ee24 4a84    	vmulvc.f32	s8, s9, s8
    3884: bf7c         	itt	vc
    3886: ee24 6a29    	vmulvc.f32	s12, s8, s19
    388a: ee64 4a89    	vmulvc.f32	s9, s9, s18
    388e: ee22 2a09    	vmul.f32	s4, s4, s18
    3892: e04d         	b	0x3930 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x9a
    3894: bf00         	nop
    3896: bf00         	nop
    3898: 15 be b6 e5  	.word	0xe5b6be15
    389c: 6d 7e c0 bf  	.word	0xbfc07e6d
    38a0: 67 42 87 92  	.word	0x92874267
    38a4: ba 86 d4 bf  	.word	0xbfd486ba
    38a8: eeb0 6a6f    	vmov.f32	s12, s31
    38ac: eeb0 2a6f    	vmov.f32	s4, s31
    38b0: eef0 4a6f    	vmov.f32	s9, s31
    38b4: e03c         	b	0x3930 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x78
    38b6: bf00         	nop
    38b8: d6 f8 e4 36  	.word	0x36e4f8d6
    38bc: 7c f2 b0 3a  	.word	0x3ab0f27c
    38c0: a6 9b c4 3b  	.word	0x3bc49ba6
    38c4: a6 9b c4 bb  	.word	0xbbc49ba6
    38c8: 79 78 b0 43  	.word	0x43b07879
    38cc: 7c f2 b0 ba  	.word	0xbab0f27c
    38d0: 53 4a a1 43  	.word	0x43a14a53
    38d4: 00 00 c0 7f  	.word	0x7fc00000
    38d8: ee8a 2a84    	vdiv.f32	s4, s21, s8
    38dc: eef0 4a60    	vmov.f32	s9, s1
    38e0: ee22 2a02    	vmul.f32	s4, s4, s4
    38e4: ee22 2a02    	vmul.f32	s4, s4, s4
    38e8: ee22 2a02    	vmul.f32	s4, s4, s4
    38ec: ee22 2a02    	vmul.f32	s4, s4, s4
    38f0: ee32 6a20    	vadd.f32	s12, s4, s1
    38f4: eeb4 6a60    	vcmp.f32	s12, s1
    38f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    38fc: d009         	beq	0x3912 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1022> @ imm = #0x12
    38fe: eef0 4a46    	vmov.f32	s9, s12
    3902: eef1 4ae4    	vsqrt.f32	s9, s9
    3906: eef1 4ae4    	vsqrt.f32	s9, s9
    390a: eef1 4ae4    	vsqrt.f32	s9, s9
    390e: eef1 4ae4    	vsqrt.f32	s9, s9
    3912: eec0 4aa4    	vdiv.f32	s9, s1, s9
    3916: ee6a 5a82    	vmul.f32	s11, s21, s4
    391a: ee84 2a86    	vdiv.f32	s4, s9, s12
    391e: ee85 4a84    	vdiv.f32	s8, s11, s8
    3922: ee2a 6aa4    	vmul.f32	s12, s21, s9
    3926: ee64 4a02    	vmul.f32	s9, s8, s4
    392a: bf00         	nop
    392c: bf00         	nop
    392e: bf00         	nop
    3930: ee3b 9a46    	vsub.f32	s18, s22, s12
    3934: eddf 9a3d    	vldr	s19, [pc, #244]         @ 0x3a2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x113c>
    3938: ee19 0a10    	vmov	r0, s18
    393c: f020 4000    	bic	r0, r0, #0x80000000
    3940: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3944: da17         	bge	0x3976 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1086> @ imm = #0x2e
    3946: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    394a: eef4 ca6c    	vcmp.f32	s25, s25
    394e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3952: ee89 4a00    	vdiv.f32	s8, s18, s0
    3956: eeb0 4ac4    	vabs.f32	s8, s8
    395a: fe14 6a2c    	vselvs.f32	s12, s8, s25
    395e: eeb4 4a44    	vcmp.f32	s8, s8
    3962: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3966: fe16 4a04    	vselvs.f32	s8, s12, s8
    396a: eeb4 6a44    	vcmp.f32	s12, s8
    396e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3972: fe76 9a04    	vselgt.f32	s19, s12, s8
    3976: eddf 5aef    	vldr	s11, [pc, #956]         @ 0x3d34 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1444>
    397a: ed9d 0a0c    	vldr	s0, [sp, #48]
    397e: ee2b 6a25    	vmul.f32	s12, s22, s11
    3982: ee36 4a00    	vadd.f32	s8, s12, s0
    3986: ed9f 0aec    	vldr	s0, [pc, #944]          @ 0x3d38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1448>
    398a: ee03 4a80    	vmla.f32	s8, s7, s0
    398e: ed9d 0a0b    	vldr	s0, [sp, #44]
    3992: ee36 6a00    	vadd.f32	s12, s12, s0
    3996: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    399a: ee03 6ae5    	vmls.f32	s12, s7, s11
    399e: fec4 5a46    	vminnm.f32	s11, s8, s12
    39a2: ee70 ca65    	vsub.f32	s25, s0, s11
    39a6: eef8 5a00    	vmov.f32	s11, #-2.000000e+00
    39aa: eef4 ca65    	vcmp.f32	s25, s11
    39ae: eef0 5a6e    	vmov.f32	s11, s29
    39b2: eef0 ea6f    	vmov.f32	s29, s31
    39b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39ba: d945         	bls	0x3a48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1158> @ imm = #0x8a
    39bc: eef4 ca6c    	vcmp.f32	s25, s25
    39c0: eef0 ea6f    	vmov.f32	s29, s31
    39c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39c8: eef0 7a4e    	vmov.f32	s15, s28
    39cc: fe5f 5aac    	vselvs.f32	s11, s31, s25
    39d0: eef5 5a40    	vcmp.f32	s11, #0
    39d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39d8: bfb8         	it	lt
    39da: eef0 ea65    	vmovlt.f32	s29, s11
    39de: eef0 5a60    	vmov.f32	s11, s1
    39e2: eef5 ca40    	vcmp.f32	s25, #0
    39e6: ee4e 5a80    	vmla.f32	s11, s29, s0
    39ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39ee: ee65 5a8e    	vmul.f32	s11, s11, s28
    39f2: ed9f ead2    	vldr	s28, [pc, #840]         @ 0x3d3c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x144c>
    39f6: fec5 5a8e    	vmaxnm.f32	s11, s11, s28
    39fa: d511         	bpl	0x3a20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1130> @ imm = #0x22
    39fc: eef0 ea60    	vmov.f32	s29, s1
    3a00: ee4c ea80    	vmla.f32	s29, s25, s0
    3a04: eeb0 0a67    	vmov.f32	s0, s15
    3a08: ee6e caa7    	vmul.f32	s25, s29, s15
    3a0c: eef4 ca4e    	vcmp.f32	s25, s28
    3a10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a14: dd14         	ble	0x3a40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1150> @ imm = #0x28
    3a16: eddf eaca    	vldr	s29, [pc, #808]         @ 0x3d40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1450>
    3a1a: e013         	b	0x3a44 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1154> @ imm = #0x26
    3a1c: bf00         	nop
    3a1e: bf00         	nop
    3a20: eef0 ea6f    	vmov.f32	s29, s31
    3a24: eeb0 ea67    	vmov.f32	s28, s15
    3a28: e00e         	b	0x3a48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1158> @ imm = #0x1c
    3a2a: bf00         	nop
    3a2c: 00 00 80 7f  	.word	0x7f800000
    3a30: af e6 27 b9  	.word	0xb927e6af
    3a34: 79 2e 02 39  	.word	0x39022e79
    3a38: 95 bf d6 33  	.word	0x33d6bf95
    3a3c: 00 bf 00 bf  	.word	0xbf00bf00
    3a40: eef0 ea6f    	vmov.f32	s29, s31
    3a44: eeb0 ea40    	vmov.f32	s28, s0
    3a48: ed9f 0ab6    	vldr	s0, [pc, #728]          @ 0x3d24 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1434>
    3a4c: eddd ca0d    	vldr	s25, [sp, #52]
    3a50: ee4b ca00    	vmla.f32	s25, s22, s0
    3a54: ee7c cae2    	vsub.f32	s25, s25, s5
    3a58: ee53 caa5    	vnmls.f32	s25, s7, s11
    3a5c: ee1c 0a90    	vmov	r0, s25
    3a60: f020 4000    	bic	r0, r0, #0x80000000
    3a64: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3a68: f6bf ad1e    	bge.w	0x34a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb8> @ imm = #-0x5c4
    3a6c: ed9f 0ab5    	vldr	s0, [pc, #724]          @ 0x3d44 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1454>
    3a70: eef4 9a69    	vcmp.f32	s19, s19
    3a74: eecc 2a80    	vdiv.f32	s5, s25, s0
    3a78: ed9d 0a0a    	vldr	s0, [sp, #40]
    3a7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a80: eef0 2ae2    	vabs.f32	s5, s5
    3a84: fe52 9aa9    	vselvs.f32	s19, s5, s19
    3a88: eef4 2a62    	vcmp.f32	s5, s5
    3a8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a90: fe59 2aa2    	vselvs.f32	s5, s19, s5
    3a94: eef4 9a62    	vcmp.f32	s19, s5
    3a98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a9c: fe79 9aa2    	vselgt.f32	s19, s19, s5
    3aa0: eef4 9a40    	vcmp.f32	s19, s0
    3aa4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3aa8: f57f acfe    	bpl.w	0x34a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb8> @ imm = #-0x604
    3aac: ed9d 0a17    	vldr	s0, [sp, #92]
    3ab0: eddf 2a98    	vldr	s5, [pc, #608]          @ 0x3d14 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1424>
    3ab4: eeb4 0a6d    	vcmp.f32	s0, s27
    3ab8: eddf 6a97    	vldr	s13, [pc, #604]         @ 0x3d18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1428>
    3abc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ac0: eef4 da41    	vcmp.f32	s27, s2
    3ac4: ed9d 0a18    	vldr	s0, [sp, #96]
    3ac8: fe32 7aa6    	vselgt.f32	s14, s5, s13
    3acc: f44f 7050    	mov.w	r0, #0x340
    3ad0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ad4: eeb4 0a68    	vcmp.f32	s0, s17
    3ad8: ed9d 0a16    	vldr	s0, [sp, #88]
    3adc: fe37 7a26    	vselgt.f32	s14, s14, s13
    3ae0: f64d 3240    	movw	r2, #0xdb40
    3ae4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ae8: eef4 8a40    	vcmp.f32	s17, s0
    3aec: f2c0 0200    	movt	r2, #0x0
    3af0: fe72 2aa6    	vselgt.f32	s5, s5, s13
    3af4: f04f 5b7e    	mov.w	r11, #0x3f800000
    3af8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3afc: eeb4 4a46    	vcmp.f32	s8, s12
    3b00: fe32 4aa6    	vselgt.f32	s8, s5, s13
    3b04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b08: bf88         	it	hi
    3b0a: f44f 7060    	movhi.w	r0, #0x380
    3b0e: 2910         	cmp	r1, #0x10
    3b10: eddd 2a03    	vldr	s5, [sp, #12]
    3b14: 4410         	add	r0, r2
    3b16: 9a00         	ldr	r2, [sp]
    3b18: ed90 6b08    	vldr	d6, [r0, #32]
    3b1c: edc2 2a02    	vstr	s5, [r2, #8]
    3b20: eddd 2a02    	vldr	s5, [sp, #8]
    3b24: ed8d 6b1a    	vstr	d6, [sp, #104]
    3b28: edc2 2a03    	vstr	s5, [r2, #12]
    3b2c: ed90 6b0a    	vldr	d6, [r0, #40]
    3b30: ed82 aa04    	vstr	s20, [r2, #16]
    3b34: ed8d 6b1c    	vstr	d6, [sp, #112]
    3b38: ed82 ba05    	vstr	s22, [r2, #20]
    3b3c: ed90 6b0c    	vldr	d6, [r0, #48]
    3b40: edc2 3a06    	vstr	s7, [r2, #24]
    3b44: 9801         	ldr	r0, [sp, #0x4]
    3b46: 61d0         	str	r0, [r2, #0x1c]
    3b48: f000 80c6    	beq.w	0x3cd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13e8> @ imm = #0x18c
    3b4c: ee27 5a05    	vmul.f32	s10, s14, s10
    3b50: ed9f 0a72    	vldr	s0, [pc, #456]          @ 0x3d1c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x142c>
    3b54: ee63 2a0f    	vmul.f32	s5, s6, s30
    3b58: eddf 8a6c    	vldr	s17, [pc, #432]         @ 0x3d0c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x141c>
    3b5c: eeb7 6bc6    	vcvt.f32.f64	s12, d6
    3b60: f1ba 0f10    	cmp.w	r10, #0x10
    3b64: ee25 3a2f    	vmul.f32	s6, s10, s31
    3b68: f10e 0e01    	add.w	lr, lr, #0x1
    3b6c: ee22 fa80    	vmul.f32	s30, s5, s0
    3b70: ed9f 0a6b    	vldr	s0, [pc, #428]          @ 0x3d20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1430>
    3b74: ee05 fa00    	vmla.f32	s30, s10, s0
    3b78: ed9f 5a67    	vldr	s10, [pc, #412]         @ 0x3d18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1428>
    3b7c: eeb0 7a43    	vmov.f32	s14, s6
    3b80: ee02 7a85    	vmla.f32	s14, s5, s10
    3b84: ee23 5aae    	vmul.f32	s10, s7, s29
    3b88: ed9f 0a66    	vldr	s0, [pc, #408]          @ 0x3d24 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1434>
    3b8c: ee6b 4aa4    	vmul.f32	s9, s23, s9
    3b90: eef0 ea6a    	vmov.f32	s29, s21
    3b94: ee24 2a02    	vmul.f32	s4, s8, s4
    3b98: eeb0 4a40    	vmov.f32	s8, s0
    3b9c: ee05 4a46    	vmls.f32	s8, s10, s12
    3ba0: ed9f 6a62    	vldr	s12, [pc, #392]         @ 0x3d2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x143c>
    3ba4: ee24 8a86    	vmul.f32	s16, s9, s12
    3ba8: ed9f 6a61    	vldr	s12, [pc, #388]         @ 0x3d30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1440>
    3bac: ee02 8a06    	vmla.f32	s16, s4, s12
    3bb0: ed9f 6a5d    	vldr	s12, [pc, #372]         @ 0x3d28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1438>
    3bb4: ee02 3ae8    	vmls.f32	s6, s5, s17
    3bb8: 4651         	mov	r1, r10
    3bba: ee62 7a2f    	vmul.f32	s15, s4, s31
    3bbe: edcd 3a19    	vstr	s7, [sp, #100]
    3bc2: ee62 6a06    	vmul.f32	s13, s4, s12
    3bc6: ed9d 2b1a    	vldr	d2, [sp, #104]
    3bca: ee44 6ae8    	vmls.f32	s13, s9, s17
    3bce: ed8d aa1a    	vstr	s20, [sp, #104]
    3bd2: eef7 bbc2    	vcvt.f32.f64	s23, d2
    3bd6: ee44 7ac0    	vmls.f32	s15, s9, s0
    3bda: eeb0 aa61    	vmov.f32	s20, s3
    3bde: ed9d 2b1c    	vldr	d2, [sp, #112]
    3be2: ee6b 8ac5    	vnmul.f32	s17, s23, s10
    3be6: ed8d ba1c    	vstr	s22, [sp, #112]
    3bea: eeb7 6bc2    	vcvt.f32.f64	s12, d2
    3bee: ee75 ba84    	vadd.f32	s23, s11, s8
    3bf2: eef1 4a4d    	vneg.f32	s9, s26
    3bf6: ee65 da06    	vmul.f32	s27, s10, s12
    3bfa: eeb1 9a49    	vneg.f32	s18, s18
    3bfe: eeb1 2a6c    	vneg.f32	s4, s25
    3c02: f77f aaaf    	ble.w	0x3164 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x874> @ imm = #-0xaa2
    3c06: e067         	b	0x3cd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13e8> @ imm = #0xce
    3c08: 2401         	movs	r4, #0x1
    3c0a: ed9f 0a50    	vldr	s0, [pc, #320]          @ 0x3d4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x145c>
    3c0e: eef4 9a40    	vcmp.f32	s19, s0
    3c12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c16: f63f ac30    	bhi.w	0x347a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb8a> @ imm = #-0x7a0
    3c1a: f7ff bbd9    	b.w	0x33d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xae0> @ imm = #-0x84e
    3c1e: bf00         	nop
    3c20: eddd 9a0a    	vldr	s19, [sp, #40]
    3c24: ed9f 0a49    	vldr	s0, [pc, #292]          @ 0x3d4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x145c>
    3c28: eef4 9a40    	vcmp.f32	s19, s0
    3c2c: 2000         	movs	r0, #0x0
    3c2e: eeb0 0ae6    	vabs.f32	s0, s13
    3c32: ed9f 1a45    	vldr	s2, [pc, #276]          @ 0x3d48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1458>
    3c36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c3a: bf98         	it	ls
    3c3c: 2001         	movls	r0, #0x1
    3c3e: ed9d 2a06    	vldr	s4, [sp, #24]
    3c42: 2200         	movs	r2, #0x0
    3c44: eeb4 2a41    	vcmp.f32	s4, s2
    3c48: 2100         	movs	r1, #0x0
    3c4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c4e: bf98         	it	ls
    3c50: 2201         	movls	r2, #0x1
    3c52: eeb4 0a41    	vcmp.f32	s0, s2
    3c56: f10e 0e01    	add.w	lr, lr, #0x1
    3c5a: eeb0 0ac7    	vabs.f32	s0, s14
    3c5e: 4010         	ands	r0, r2
    3c60: 2200         	movs	r2, #0x0
    3c62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c66: bf98         	it	ls
    3c68: 2201         	movls	r2, #0x1
    3c6a: eeb4 0a41    	vcmp.f32	s0, s2
    3c6e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c72: bf98         	it	ls
    3c74: 2101         	movls	r1, #0x1
    3c76: 4010         	ands	r0, r2
    3c78: ea00 0401    	and.w	r4, r0, r1
    3c7c: 9804         	ldr	r0, [sp, #0x10]
    3c7e: ed9d 0a09    	vldr	s0, [sp, #36]
    3c82: ed80 0a02    	vstr	s0, [r0, #8]
    3c86: ed9d 0a07    	vldr	s0, [sp, #28]
    3c8a: ed80 0a03    	vstr	s0, [r0, #12]
    3c8e: 9805         	ldr	r0, [sp, #0x14]
    3c90: edc0 9a00    	vstr	s19, [r0]
    3c94: f880 e004    	strb.w	lr, [r0, #0x4]
    3c98: 7144         	strb	r4, [r0, #0x5]
    3c9a: b02e         	add	sp, #0xb8
    3c9c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    3ca0: b001         	add	sp, #0x4
    3ca2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    3ca6: bdf0         	pop	{r4, r5, r6, r7, pc}
    3ca8: 9905         	ldr	r1, [sp, #0x14]
    3caa: 2000         	movs	r0, #0x0
    3cac: edc1 9a00    	vstr	s19, [r1]
    3cb0: f881 e004    	strb.w	lr, [r1, #0x4]
    3cb4: 7148         	strb	r0, [r1, #0x5]
    3cb6: e7f0         	b	0x3c9a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13aa> @ imm = #-0x20
    3cb8: 2400         	movs	r4, #0x0
    3cba: e7df         	b	0x3c7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x138c> @ imm = #-0x42
    3cbc: bf00         	nop
    3cbe: bf00         	nop
    3cc0: f64d 207b    	movw	r0, #0xda7b
    3cc4: f64d 7220    	movw	r2, #0xdf20
    3cc8: f2c0 0000    	movt	r0, #0x0
    3ccc: f2c0 0200    	movt	r2, #0x0
    3cd0: a922         	add	r1, sp, #0x88
    3cd2: f008 f8d7    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0x81ae
    3cd6: bf00         	nop
    3cd8: f64d 3011    	movw	r0, #0xdb11
    3cdc: f64d 7200    	movw	r2, #0xdf00
    3ce0: f2c0 0000    	movt	r0, #0x0
    3ce4: f2c0 0200    	movt	r2, #0x0
    3ce8: 2128         	movs	r1, #0x28
    3cea: f008 f8cf    	bl	0xbe8c <core::panicking::panic> @ imm = #0x819e
    3cee: bf00         	nop
    3cf0: eddf 2a07    	vldr	s5, [pc, #28]           @ 0x3d10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1420>
    3cf4: eeb0 6a62    	vmov.f32	s12, s5
    3cf8: f7fe bf15    	b.w	0x2b26 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x236> @ imm = #-0x11d6
    3cfc: bf00         	nop
    3cfe: bf00         	nop
    3d00: ed9f 5a03    	vldr	s10, [pc, #12]          @ 0x3d10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1420>
    3d04: eeb0 4a45    	vmov.f32	s8, s10
    3d08: f7ff b88d    	b.w	0x2e26 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x536> @ imm = #-0xee6
    3d0c: d6 f8 e4 36  	.word	0x36e4f8d6
    3d10: 00 00 c0 7f  	.word	0x7fc00000
    3d14: 79 61 2e c3  	.word	0xc32e6179
    3d18: 00 00 00 80  	.word	0x80000000
    3d1c: 83 c0 96 38  	.word	0x3896c083
    3d20: fc 9d 08 bf  	.word	0xbf089dfc
    3d24: 79 2e 02 39  	.word	0x39022e79
    3d28: 6f f3 03 be  	.word	0xbe03f36f
    3d2c: af e6 27 39  	.word	0x3927e6af
    3d30: d5 35 a4 be  	.word	0xbea435d5
    3d34: 51 e6 7f 3f  	.word	0x3f7fe651
    3d38: 99 76 cd 39  	.word	0x39cd7699
    3d3c: 95 bf d6 33  	.word	0x33d6bf95
    3d40: 2b 18 15 3b  	.word	0x3b15182b
    3d44: 0a d7 23 3c  	.word	0x3c23d70a
    3d48: ac c5 a7 37  	.word	0x37a7c5ac
    3d4c: 17 b7 d1 38  	.word	0x38d1b717

00003d50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>>:
    3d50: b5f0         	push	{r4, r5, r6, r7, lr}
    3d52: af03         	add	r7, sp, #0xc
    3d54: e92d 0f00    	push.w	{r8, r9, r10, r11}
    3d58: b081         	sub	sp, #0x4
    3d5a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    3d5e: b08a         	sub	sp, #0x28
    3d60: ed9f 3aed    	vldr	s6, [pc, #948]          @ 0x4118 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3c8>
    3d64: ee22 2a03    	vmul.f32	s4, s4, s6
    3d68: ed9f 3aec    	vldr	s6, [pc, #944]          @ 0x411c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3cc>
    3d6c: ed9f 4aed    	vldr	s8, [pc, #948]          @ 0x4124 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d4>
    3d70: ed9f 5aeb    	vldr	s10, [pc, #940]         @ 0x4120 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d0>
    3d74: ee32 3a03    	vadd.f32	s6, s4, s6
    3d78: ee32 4a04    	vadd.f32	s8, s4, s8
    3d7c: ee83 ba05    	vdiv.f32	s22, s6, s10
    3d80: ee84 ca05    	vdiv.f32	s24, s8, s10
    3d84: eeb4 ba4c    	vcmp.f32	s22, s24
    3d88: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d8c: f200 81b0    	bhi.w	0x40f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3a0> @ imm = #0x360
    3d90: eeb0 8b41    	vmov.f64	d8, d1
    3d94: 4681         	mov	r9, r0
    3d96: ed91 1a05    	vldr	s2, [r1, #20]
    3d9a: a806         	add	r0, sp, #0x18
    3d9c: ed91 4a06    	vldr	s8, [r1, #24]
    3da0: ed8d 1a02    	vstr	s2, [sp, #8]
    3da4: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    3da8: ed8d 4a01    	vstr	s8, [sp, #4]
    3dac: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    3db0: ed91 ea07    	vldr	s28, [r1, #28]
    3db4: ed9f 3bd4    	vldr	d3, [pc, #848]          @ 0x4108 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3b8>
    3db8: eddf aadd    	vldr	s21, [pc, #884]         @ 0x4130 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3e0>
    3dbc: 4614         	mov	r4, r2
    3dbe: ee01 8b03    	vmla.f64	d8, d1, d3
    3dc2: 460e         	mov	r6, r1
    3dc4: eeb7 1ace    	vcvt.f64.f32	d1, s28
    3dc8: ed9f dad7    	vldr	s26, [pc, #860]         @ 0x4128 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d8>
    3dcc: ee04 8b43    	vmls.f64	d8, d4, d3
    3dd0: ed9f fbcf    	vldr	d15, [pc, #828]         @ 0x4110 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3c0>
    3dd4: eeb0 3b48    	vmov.f64	d3, d8
    3dd8: ee01 3b0f    	vmla.f64	d3, d1, d15
    3ddc: ed9f 1ad3    	vldr	s2, [pc, #844]          @ 0x412c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3dc>
    3de0: ee62 ca01    	vmul.f32	s25, s4, s2
    3de4: eeb7 1bc3    	vcvt.f32.f64	s2, d3
    3de8: eeb0 9a6c    	vmov.f32	s18, s25
    3dec: ee01 9a2a    	vmla.f32	s18, s2, s21
    3df0: eef7 bbc0    	vcvt.f32.f64	s23, d0
    3df4: eef0 0a6b    	vmov.f32	s1, s23
    3df8: ee4e 0a4d    	vmls.f32	s1, s28, s26
    3dfc: eeb4 ba49    	vcmp.f32	s22, s18
    3e00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e04: fe3b 0a09    	vselgt.f32	s0, s22, s18
    3e08: eeb4 0a4c    	vcmp.f32	s0, s24
    3e0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e10: fe3c aa00    	vselgt.f32	s20, s24, s0
    3e14: eeb0 0a4a    	vmov.f32	s0, s20
    3e18: f000 f9a2    	bl	0x4160 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x344
    3e1c: a0c5         	adr	r0, #788 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x195>
    3e1e: eeb4 9a4c    	vcmp.f32	s18, s24
    3e22: 1d01         	adds	r1, r0, #0x4
    3e24: 9100         	str	r1, [sp]
    3e26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e2a: bf48         	it	mi
    3e2c: 4608         	movmi	r0, r1
    3e2e: eeb4 9a4b    	vcmp.f32	s18, s22
    3e32: ed9d 0a06    	vldr	s0, [sp, #24]
    3e36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e3a: ee3e 1a40    	vsub.f32	s2, s28, s0
    3e3e: ed90 0a00    	vldr	s0, [r0]
    3e42: ed9f 2abe    	vldr	s4, [pc, #760]          @ 0x413c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3ec>
    3e46: 9404         	str	r4, [sp, #0x10]
    3e48: fe30 0a02    	vselgt.f32	s0, s0, s4
    3e4c: ed9d 2a07    	vldr	s4, [sp, #28]
    3e50: ee11 0a10    	vmov	r0, s2
    3e54: ed9f 5aba    	vldr	s10, [pc, #744]         @ 0x4140 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f0>
    3e58: ee20 2a02    	vmul.f32	s4, s0, s4
    3e5c: ed9d 0a08    	vldr	s0, [sp, #32]
    3e60: ee20 0a0d    	vmul.f32	s0, s0, s26
    3e64: f020 4000    	bic	r0, r0, #0x80000000
    3e68: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3e6c: db04         	blt	0x3e78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x128> @ imm = #0x8
    3e6e: eddf eab5    	vldr	s29, [pc, #724]         @ 0x4144 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f4>
    3e72: e00b         	b	0x3e8c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x13c> @ imm = #0x16
    3e74: bf00         	nop
    3e76: bf00         	nop
    3e78: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    3e7c: ed9f 4ab2    	vldr	s8, [pc, #712]          @ 0x4148 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f8>
    3e80: ee81 3a03    	vdiv.f32	s6, s2, s6
    3e84: eeb0 3ac3    	vabs.f32	s6, s6
    3e88: fec3 ea04    	vmaxnm.f32	s29, s6, s8
    3e8c: ee02 0a05    	vmla.f32	s0, s4, s10
    3e90: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    3e94: eeb1 1a41    	vneg.f32	s2, s2
    3e98: f04f 0800    	mov.w	r8, #0x0
    3e9c: 2400         	movs	r4, #0x0
    3e9e: eddf 0aab    	vldr	s1, [pc, #684]          @ 0x414c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3fc>
    3ea2: ed9f 6aab    	vldr	s12, [pc, #684]         @ 0x4150 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    3ea6: ad06         	add	r5, sp, #0x18
    3ea8: ed9f daac    	vldr	s26, [pc, #688]         @ 0x415c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x40c>
    3eac: 46c3         	mov	r11, r8
    3eae: ee30 0a07    	vadd.f32	s0, s0, s14
    3eb2: f1b8 0f10    	cmp.w	r8, #0x10
    3eb6: bf18         	it	ne
    3eb8: f10b 0b01    	addne.w	r11, r11, #0x1
    3ebc: 2100         	movs	r1, #0x0
    3ebe: ee10 0a10    	vmov	r0, s0
    3ec2: eeb0 2ac0    	vabs.f32	s4, s0
    3ec6: f020 4000    	bic	r0, r0, #0x80000000
    3eca: eeb4 2a60    	vcmp.f32	s4, s1
    3ece: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3ed2: f04f 0000    	mov.w	r0, #0x0
    3ed6: bfa8         	it	ge
    3ed8: 2001         	movge	r0, #0x1
    3eda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ede: bf48         	it	mi
    3ee0: 2101         	movmi	r1, #0x1
    3ee2: 4308         	orrs	r0, r1
    3ee4: f040 80ec    	bne.w	0x40c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x370> @ imm = #0x1d8
    3ee8: ee81 9a00    	vdiv.f32	s18, s2, s0
    3eec: eef4 ea46    	vcmp.f32	s29, s12
    3ef0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ef4: eeb0 2ac9    	vabs.f32	s4, s18
    3ef8: d906         	bls	0x3f08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x1b8> @ imm = #0xc
    3efa: f1b8 0f10    	cmp.w	r8, #0x10
    3efe: d129         	bne	0x3f54 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x204> @ imm = #0x52
    3f00: e0e2         	b	0x40c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x378> @ imm = #0x1c4
    3f02: bf00         	nop
    3f04: bf00         	nop
    3f06: bf00         	nop
    3f08: eeb0 0ace    	vabs.f32	s0, s28
    3f0c: ed9f 1a91    	vldr	s2, [pc, #580]          @ 0x4154 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x404>
    3f10: 2000         	movs	r0, #0x0
    3f12: eeb4 0a40    	vcmp.f32	s0, s0
    3f16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f1a: fe17 0a00    	vselvs.f32	s0, s14, s0
    3f1e: eeb4 0a47    	vcmp.f32	s0, s14
    3f22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f26: fe30 0a07    	vselgt.f32	s0, s0, s14
    3f2a: ee20 0a01    	vmul.f32	s0, s0, s2
    3f2e: ed9f 1a8a    	vldr	s2, [pc, #552]          @ 0x4158 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x408>
    3f32: fe80 0a41    	vminnm.f32	s0, s0, s2
    3f36: eeb4 2a40    	vcmp.f32	s4, s0
    3f3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f3e: bf98         	it	ls
    3f40: 2001         	movls	r0, #0x1
    3f42: f1b8 0f10    	cmp.w	r8, #0x10
    3f46: bf1c         	itt	ne
    3f48: eeb4 2a40    	vcmpne.f32	s4, s0
    3f4c: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    3f50: f240 80bb    	bls.w	0x40ca <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x37a> @ imm = #0x176
    3f54: f04f 5a7e    	mov.w	r10, #0x3f800000
    3f58: ed8d 2a03    	vstr	s4, [sp, #12]
    3f5c: ed8d aa05    	vstr	s20, [sp, #20]
    3f60: e008         	b	0x3f74 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x224> @ imm = #0x10
    3f62: bf00         	nop
    3f64: bf00         	nop
    3f66: bf00         	nop
    3f68: f5aa 0a00    	sub.w	r10, r10, #0x800000
    3f6c: f1ba 5f66    	cmp.w	r10, #0x39800000
    3f70: f000 808e    	beq.w	0x4090 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x340> @ imm = #0x11c
    3f74: ee00 aa10    	vmov	s0, r10
    3f78: eef0 da4e    	vmov.f32	s27, s28
    3f7c: eeb0 1b48    	vmov.f64	d1, d8
    3f80: 4628         	mov	r0, r5
    3f82: eef0 9a6c    	vmov.f32	s19, s25
    3f86: ee49 da00    	vmla.f32	s27, s18, s0
    3f8a: eeb7 0aed    	vcvt.f64.f32	d0, s27
    3f8e: ee00 1b0f    	vmla.f64	d1, d0, d15
    3f92: eef0 0a6b    	vmov.f32	s1, s23
    3f96: ee4d 0a8d    	vmla.f32	s1, s27, s26
    3f9a: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    3f9e: ee40 9a2a    	vmla.f32	s19, s0, s21
    3fa2: eeb4 ba69    	vcmp.f32	s22, s19
    3fa6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3faa: fe3b 0a29    	vselgt.f32	s0, s22, s19
    3fae: eeb4 0a4c    	vcmp.f32	s0, s24
    3fb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3fb6: fe3c aa00    	vselgt.f32	s20, s24, s0
    3fba: eeb0 0a4a    	vmov.f32	s0, s20
    3fbe: f000 f8cf    	bl	0x4160 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x19e
    3fc2: ed9d 0a06    	vldr	s0, [sp, #24]
    3fc6: ee3d 1ac0    	vsub.f32	s2, s27, s0
    3fca: ee11 0a10    	vmov	r0, s2
    3fce: f020 4000    	bic	r0, r0, #0x80000000
    3fd2: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3fd6: dac7         	bge	0x3f68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x218> @ imm = #-0x72
    3fd8: eeb3 0a08    	vmov.f32	s0, #2.400000e+01
    3fdc: ed9f 2a5a    	vldr	s4, [pc, #360]          @ 0x4148 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f8>
    3fe0: ee81 0a00    	vdiv.f32	s0, s2, s0
    3fe4: eeb0 0ac0    	vabs.f32	s0, s0
    3fe8: fe80 2a02    	vmaxnm.f32	s4, s0, s4
    3fec: eeb4 2a6e    	vcmp.f32	s4, s29
    3ff0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ff4: d5b8         	bpl	0x3f68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x218> @ imm = #-0x90
    3ff6: a04f         	adr	r0, #316 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x2f9>
    3ff8: 9900         	ldr	r1, [sp]
    3ffa: eef4 9a4c    	vcmp.f32	s19, s24
    3ffe: ed9f 3a4f    	vldr	s6, [pc, #316]          @ 0x413c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3ec>
    4002: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4006: bf48         	it	mi
    4008: 4608         	movmi	r0, r1
    400a: eef4 9a4b    	vcmp.f32	s19, s22
    400e: ed9d 0a02    	vldr	s0, [sp, #8]
    4012: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4016: ed86 0a05    	vstr	s0, [r6, #20]
    401a: ed90 0a00    	vldr	s0, [r0]
    401e: fe30 0a03    	vselgt.f32	s0, s0, s6
    4022: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    4026: ed9d 3a01    	vldr	s6, [sp, #4]
    402a: ed86 3a06    	vstr	s6, [r6, #24]
    402e: f1b8 0f10    	cmp.w	r8, #0x10
    4032: ed9d 4a07    	vldr	s8, [sp, #28]
    4036: ed9d 3a08    	vldr	s6, [sp, #32]
    403a: ed9f 5a41    	vldr	s10, [pc, #260]         @ 0x4140 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f0>
    403e: ed9f 6a44    	vldr	s12, [pc, #272]         @ 0x4150 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    4042: edc6 da07    	vstr	s27, [r6, #28]
    4046: eddf 0a41    	vldr	s1, [pc, #260]          @ 0x414c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3fc>
    404a: d014         	beq	0x4076 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x326> @ imm = #0x28
    404c: ee20 4a04    	vmul.f32	s8, s0, s8
    4050: ed9f 0a35    	vldr	s0, [pc, #212]          @ 0x4128 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d8>
    4054: ee23 0a00    	vmul.f32	s0, s6, s0
    4058: eeb0 ea6d    	vmov.f32	s28, s27
    405c: eeb1 1a41    	vneg.f32	s2, s2
    4060: eef0 ea42    	vmov.f32	s29, s4
    4064: ee04 0a05    	vmla.f32	s0, s8, s10
    4068: f1bb 0f10    	cmp.w	r11, #0x10
    406c: f104 0401    	add.w	r4, r4, #0x1
    4070: 46d8         	mov	r8, r11
    4072: f77f af1c    	ble.w	0x3eae <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x15e> @ imm = #-0x1c8
    4076: f64d 3011    	movw	r0, #0xdb11
    407a: f64d 7200    	movw	r2, #0xdf00
    407e: f2c0 0000    	movt	r0, #0x0
    4082: f2c0 0200    	movt	r2, #0x0
    4086: 2128         	movs	r1, #0x28
    4088: f007 ff00    	bl	0xbe8c <core::panicking::panic> @ imm = #0x7e00
    408c: bf00         	nop
    408e: bf00         	nop
    4090: ed9f 0a2f    	vldr	s0, [pc, #188]          @ 0x4150 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    4094: 3401         	adds	r4, #0x1
    4096: eef4 ea40    	vcmp.f32	s29, s0
    409a: 2000         	movs	r0, #0x0
    409c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    40a0: 9904         	ldr	r1, [sp, #0x10]
    40a2: d809         	bhi	0x40b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x368> @ imm = #0x12
    40a4: ed9f 0a2c    	vldr	s0, [pc, #176]          @ 0x4158 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x408>
    40a8: ed9d 1a03    	vldr	s2, [sp, #12]
    40ac: eeb4 1a40    	vcmp.f32	s2, s0
    40b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    40b4: bf98         	it	ls
    40b6: 2001         	movls	r0, #0x1
    40b8: ed9d aa05    	vldr	s20, [sp, #20]
    40bc: e006         	b	0x40cc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x37c> @ imm = #0xc
    40be: bf00         	nop
    40c0: 2000         	movs	r0, #0x0
    40c2: e005         	b	0x40d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x380> @ imm = #0xa
    40c4: bf00         	nop
    40c6: bf00         	nop
    40c8: 2000         	movs	r0, #0x0
    40ca: 9904         	ldr	r1, [sp, #0x10]
    40cc: ed81 aa04    	vstr	s20, [r1, #16]
    40d0: edc9 ea00    	vstr	s29, [r9]
    40d4: f889 4004    	strb.w	r4, [r9, #0x4]
    40d8: f889 0005    	strb.w	r0, [r9, #0x5]
    40dc: b00a         	add	sp, #0x28
    40de: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    40e2: b001         	add	sp, #0x4
    40e4: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    40e8: bdf0         	pop	{r4, r5, r6, r7, pc}
    40ea: bf00         	nop
    40ec: bf00         	nop
    40ee: bf00         	nop
    40f0: f64d 207b    	movw	r0, #0xda7b
    40f4: f64d 7220    	movw	r2, #0xdf20
    40f8: f2c0 0000    	movt	r0, #0x0
    40fc: f2c0 0200    	movt	r2, #0x0
    4100: a906         	add	r1, sp, #0x18
    4102: f007 febf    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0x7d7e
    4106: bf00         	nop
    4108: e6 a7 5c a0  	.word	0xa05ca7e6
    410c: 06 41 d9 3f  	.word	0x3fd94106
    4110: 19 d5 65 36  	.word	0x3665d519
    4114: d0 6e 95 bf  	.word	0xbf956ed0
    4118: 00 80 bb 47  	.word	0x47bb8000
    411c: 00 24 f4 ca  	.word	0xcaf42400
    4120: 00 a0 0c 48  	.word	0x480ca000
    4124: 00 24 f4 4a  	.word	0x4af42400
    4128: cd 1e 2c 3e  	.word	0x3e2c1ecd
    412c: df ff e7 36  	.word	0x36e7ffdf
    4130: d2 4e da 43  	.word	0x43da4ed2
    4134: 00 00 00 80  	.word	0x80000000
    4138: d2 4e da c3  	.word	0xc3da4ed2
    413c: 00 00 00 80  	.word	0x80000000
    4140: 82 76 ab bc  	.word	0xbcab7682
    4144: 00 00 80 7f  	.word	0x7f800000
    4148: 00 00 00 00  	.word	0x00000000
    414c: 08 e5 3c 1e  	.word	0x1e3ce508
    4150: 17 b7 d1 38  	.word	0x38d1b717
    4154: bd 37 06 36  	.word	0x360637bd
    4158: ac c5 a7 37  	.word	0x37a7c5ac
    415c: cd 1e 2c be  	.word	0xbe2c1ecd

00004160 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>>:
    4160: b580         	push	{r7, lr}
    4162: 466f         	mov	r7, sp
    4164: eeb0 2ac0    	vabs.f32	s4, s0
    4168: eeb3 1a05    	vmov.f32	s2, #2.100000e+01
    416c: eeb4 2a41    	vcmp.f32	s4, s2
    4170: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4174: d93c         	bls	0x41f0 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x90> @ imm = #0x78
    4176: ee81 2a02    	vdiv.f32	s4, s2, s4
    417a: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    417e: ee22 3a02    	vmul.f32	s6, s4, s4
    4182: eeb0 6a45    	vmov.f32	s12, s10
    4186: ee23 3a03    	vmul.f32	s6, s6, s6
    418a: ee23 3a03    	vmul.f32	s6, s6, s6
    418e: ee23 3a03    	vmul.f32	s6, s6, s6
    4192: ee33 4a05    	vadd.f32	s8, s6, s10
    4196: eeb4 4a45    	vcmp.f32	s8, s10
    419a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    419e: d009         	beq	0x41b4 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x54> @ imm = #0x12
    41a0: eeb0 6a44    	vmov.f32	s12, s8
    41a4: eeb1 6ac6    	vsqrt.f32	s12, s12
    41a8: eeb1 6ac6    	vsqrt.f32	s12, s12
    41ac: eeb1 6ac6    	vsqrt.f32	s12, s12
    41b0: eeb1 6ac6    	vsqrt.f32	s12, s12
    41b4: ee10 1a10    	vmov	r1, s0
    41b8: f04f 527e    	mov.w	r2, #0x3f800000
    41bc: ee85 5a06    	vdiv.f32	s10, s10, s12
    41c0: ee22 2a03    	vmul.f32	s4, s4, s6
    41c4: f362 011e    	bfi	r1, r2, #0, #31
    41c8: eeb4 0a40    	vcmp.f32	s0, s0
    41cc: ee07 1a10    	vmov	s14, r1
    41d0: ee85 4a04    	vdiv.f32	s8, s10, s8
    41d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    41d8: ed9f 0a76    	vldr	s0, [pc, #472]          @ 0x43b4 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x254>
    41dc: ee27 1a01    	vmul.f32	s2, s14, s2
    41e0: ee21 1a05    	vmul.f32	s2, s2, s10
    41e4: fe10 0a01    	vselvs.f32	s0, s0, s2
    41e8: ee22 1a04    	vmul.f32	s2, s4, s8
    41ec: e025         	b	0x423a <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0xda> @ imm = #0x4a
    41ee: bf00         	nop
    41f0: ee80 1a01    	vdiv.f32	s2, s0, s2
    41f4: ee21 1a01    	vmul.f32	s2, s2, s2
    41f8: ee21 2a01    	vmul.f32	s4, s2, s2
    41fc: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    4200: ee22 3a02    	vmul.f32	s6, s4, s4
    4204: eeb0 2a41    	vmov.f32	s4, s2
    4208: ee03 2a03    	vmla.f32	s4, s6, s6
    420c: eeb0 3a41    	vmov.f32	s6, s2
    4210: eeb4 2a41    	vcmp.f32	s4, s2
    4214: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4218: d009         	beq	0x422e <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0xce> @ imm = #0x12
    421a: eeb0 3a42    	vmov.f32	s6, s4
    421e: eeb1 3ac3    	vsqrt.f32	s6, s6
    4222: eeb1 3ac3    	vsqrt.f32	s6, s6
    4226: eeb1 3ac3    	vsqrt.f32	s6, s6
    422a: eeb1 3ac3    	vsqrt.f32	s6, s6
    422e: ee81 3a03    	vdiv.f32	s6, s2, s6
    4232: ee83 1a02    	vdiv.f32	s2, s6, s4
    4236: ee20 0a03    	vmul.f32	s0, s0, s6
    423a: eeb0 2ac0    	vabs.f32	s4, s0
    423e: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    4242: eeb2 7a00    	vmov.f32	s14, #8.000000e+00
    4246: ed9f 4a5c    	vldr	s8, [pc, #368]          @ 0x43b8 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x258>
    424a: eef1 2a04    	vmov.f32	s5, #5.000000e+00
    424e: eeb0 5ae0    	vabs.f32	s10, s1
    4252: ee33 6a42    	vsub.f32	s12, s6, s4
    4256: eef7 3a00    	vmov.f32	s7, #1.000000e+00
    425a: fe86 3a07    	vmaxnm.f32	s6, s12, s14
    425e: eec4 1a03    	vdiv.f32	s3, s8, s6
    4262: fe81 2ae2    	vminnm.f32	s4, s3, s5
    4266: eec5 4a02    	vdiv.f32	s9, s10, s4
    426a: eef4 4a63    	vcmp.f32	s9, s7
    426e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4272: d935         	bls	0x42e0 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x180> @ imm = #0x6a
    4274: ee82 5a05    	vdiv.f32	s10, s4, s10
    4278: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    427c: ee65 3a05    	vmul.f32	s7, s10, s10
    4280: ee63 3aa3    	vmul.f32	s7, s7, s7
    4284: ee63 5aa3    	vmul.f32	s11, s7, s7
    4288: eef0 3a64    	vmov.f32	s7, s9
    428c: ee45 3aa5    	vmla.f32	s7, s11, s11
    4290: eef0 5a64    	vmov.f32	s11, s9
    4294: eef4 3a64    	vcmp.f32	s7, s9
    4298: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    429c: d009         	beq	0x42b2 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x152> @ imm = #0x12
    429e: eef0 5a63    	vmov.f32	s11, s7
    42a2: eef1 5ae5    	vsqrt.f32	s11, s11
    42a6: eef1 5ae5    	vsqrt.f32	s11, s11
    42aa: eef1 5ae5    	vsqrt.f32	s11, s11
    42ae: eef1 5ae5    	vsqrt.f32	s11, s11
    42b2: eec4 5aa5    	vdiv.f32	s11, s9, s11
    42b6: eef1 6a45    	vneg.f32	s13, s10
    42ba: eec5 4aa3    	vdiv.f32	s9, s11, s7
    42be: eec6 0aa0    	vdiv.f32	s1, s13, s1
    42c2: ee65 3a25    	vmul.f32	s7, s10, s11
    42c6: ee60 0aa4    	vmul.f32	s1, s1, s9
    42ca: eef4 1a62    	vcmp.f32	s3, s5
    42ce: eddf 1a3b    	vldr	s3, [pc, #236]          @ 0x43bc <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x25c>
    42d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42d6: d437         	bmi	0x4348 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x1e8> @ imm = #0x6e
    42d8: e056         	b	0x4388 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0xac
    42da: bf00         	nop
    42dc: bf00         	nop
    42de: bf00         	nop
    42e0: ee24 5aa4    	vmul.f32	s10, s9, s9
    42e4: eef0 5a63    	vmov.f32	s11, s7
    42e8: ee25 5a05    	vmul.f32	s10, s10, s10
    42ec: ee25 5a05    	vmul.f32	s10, s10, s10
    42f0: ee25 5a05    	vmul.f32	s10, s10, s10
    42f4: ee75 4a23    	vadd.f32	s9, s10, s7
    42f8: eef4 4a63    	vcmp.f32	s9, s7
    42fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4300: d009         	beq	0x4316 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x1b6> @ imm = #0x12
    4302: eef0 5a64    	vmov.f32	s11, s9
    4306: eef1 5ae5    	vsqrt.f32	s11, s11
    430a: eef1 5ae5    	vsqrt.f32	s11, s11
    430e: eef1 5ae5    	vsqrt.f32	s11, s11
    4312: eef1 5ae5    	vsqrt.f32	s11, s11
    4316: eec3 3aa5    	vdiv.f32	s7, s7, s11
    431a: eef5 0a40    	vcmp.f32	s1, #0
    431e: eef1 5a45    	vneg.f32	s11, s10
    4322: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4326: eec3 4aa4    	vdiv.f32	s9, s7, s9
    432a: eec5 5aa0    	vdiv.f32	s11, s11, s1
    432e: eddf 0a23    	vldr	s1, [pc, #140]          @ 0x43bc <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x25c>
    4332: ee65 5aa4    	vmul.f32	s11, s11, s9
    4336: fe40 0aa5    	vseleq.f32	s1, s1, s11
    433a: eef4 1a62    	vcmp.f32	s3, s5
    433e: eddf 1a1f    	vldr	s3, [pc, #124]          @ 0x43bc <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x25c>
    4342: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4346: d51f         	bpl	0x4388 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x3e
    4348: eeb5 0a40    	vcmp.f32	s0, #0
    434c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4350: d01a         	beq	0x4388 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x34
    4352: eeb4 6a47    	vcmp.f32	s12, s14
    4356: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    435a: dd15         	ble	0x4388 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x2a
    435c: ee10 1a10    	vmov	r1, s0
    4360: f04f 527e    	mov.w	r2, #0x3f800000
    4364: eeb4 0a40    	vcmp.f32	s0, s0
    4368: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    436c: f362 011e    	bfi	r1, r2, #0, #31
    4370: ee23 3a03    	vmul.f32	s6, s6, s6
    4374: ee06 1a10    	vmov	s12, r1
    4378: ee26 4a04    	vmul.f32	s8, s12, s8
    437c: ed9f 6a0d    	vldr	s12, [pc, #52]          @ 0x43b4 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x254>
    4380: fe16 4a04    	vselvs.f32	s8, s12, s8
    4384: eec4 1a03    	vdiv.f32	s3, s8, s6
    4388: ee85 2a02    	vdiv.f32	s4, s10, s4
    438c: ee20 3a23    	vmul.f32	s6, s0, s7
    4390: ed80 3a00    	vstr	s6, [r0]
    4394: ee22 2a24    	vmul.f32	s4, s4, s9
    4398: ee20 2a02    	vmul.f32	s4, s0, s4
    439c: ee20 0a20    	vmul.f32	s0, s0, s1
    43a0: ed80 0a02    	vstr	s0, [r0, #8]
    43a4: ee42 3a21    	vmla.f32	s7, s4, s3
    43a8: ee21 1a23    	vmul.f32	s2, s2, s7
    43ac: ed80 1a01    	vstr	s2, [r0, #4]
    43b0: bd80         	pop	{r7, pc}
    43b2: bf00         	nop
    43b4: 00 00 c0 7f  	.word	0x7fc00000
    43b8: 00 00 70 42  	.word	0x42700000
    43bc: 00 00 00 00  	.word	0x00000000

000043c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>>:
    43c0: b5f0         	push	{r4, r5, r6, r7, lr}
    43c2: af03         	add	r7, sp, #0xc
    43c4: f84d 8d04    	str	r8, [sp, #-4]!
    43c8: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    43cc: eeba 1a0e    	vmov.f32	s2, #-1.500000e+01
    43d0: ed91 3a00    	vldr	s6, [r1]
    43d4: ed9f 2af8    	vldr	s4, [pc, #992]          @ 0x47b8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x3f8>
    43d8: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    43dc: eefe 1a00    	vmov.f32	s3, #-5.000000e-01
    43e0: ee33 4a01    	vadd.f32	s8, s6, s2
    43e4: ee71 5a43    	vsub.f32	s11, s2, s6
    43e8: eef7 0bc0    	vcvt.f32.f64	s1, d0
    43ec: ee84 5a02    	vdiv.f32	s10, s8, s4
    43f0: ed9f 4af2    	vldr	s8, [pc, #968]          @ 0x47bc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x3fc>
    43f4: eec5 5a82    	vdiv.f32	s11, s11, s4
    43f8: eef0 aa60    	vmov.f32	s21, s1
    43fc: eeb4 4a45    	vcmp.f32	s8, s10
    4400: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4404: fe34 6a05    	vselgt.f32	s12, s8, s10
    4408: ed9f 5aed    	vldr	s10, [pc, #948]         @ 0x47c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x400>
    440c: eeb4 6a45    	vcmp.f32	s12, s10
    4410: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4414: fe75 7a06    	vselgt.f32	s15, s10, s12
    4418: ed9f 6af5    	vldr	s12, [pc, #980]         @ 0x47f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x430>
    441c: ee67 2a86    	vmul.f32	s5, s15, s12
    4420: ee72 3a87    	vadd.f32	s7, s5, s14
    4424: eef5 2a40    	vcmp.f32	s5, #0
    4428: ee72 4aa1    	vadd.f32	s9, s5, s3
    442c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4430: eefd 3ae3    	vcvt.s32.f32	s7, s7
    4434: eefd 4ae4    	vcvt.s32.f32	s9, s9
    4438: eeb4 4a65    	vcmp.f32	s8, s11
    443c: ee13 3a90    	vmov	r3, s7
    4440: ee14 2a90    	vmov	r2, s9
    4444: bfa8         	it	ge
    4446: 461a         	movge	r2, r3
    4448: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    444c: fe74 2a25    	vselgt.f32	s5, s8, s11
    4450: eddf 5af4    	vldr	s11, [pc, #976]         @ 0x4824 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x464>
    4454: eeb0 aa65    	vmov.f32	s20, s11
    4458: eeb0 ba65    	vmov.f32	s22, s11
    445c: eef4 2a45    	vcmp.f32	s5, s10
    4460: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4464: fe35 8a22    	vselgt.f32	s16, s10, s5
    4468: ee68 2a06    	vmul.f32	s5, s16, s12
    446c: ee72 3aa1    	vadd.f32	s7, s5, s3
    4470: eef5 2a40    	vcmp.f32	s5, #0
    4474: ee72 4a87    	vadd.f32	s9, s5, s14
    4478: ee02 2a90    	vmov	s5, r2
    447c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4480: eefd 3ae3    	vcvt.s32.f32	s7, s7
    4484: eefd 4ae4    	vcvt.s32.f32	s9, s9
    4488: ee13 5a90    	vmov	r5, s7
    448c: eef8 3ae2    	vcvt.f32.s32	s7, s5
    4490: ee14 3a90    	vmov	r3, s9
    4494: bfa8         	it	ge
    4496: 461d         	movge	r5, r3
    4498: f04f 537e    	mov.w	r3, #0x3f800000
    449c: ee02 5a90    	vmov	s5, r5
    44a0: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    44a4: eb03 56c5    	add.w	r6, r3, r5, lsl #23
    44a8: eef8 4ae2    	vcvt.f32.s32	s9, s5
    44ac: eddf 2ada    	vldr	s5, [pc, #872]          @ 0x4818 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x458>
    44b0: ee43 7ae2    	vmls.f32	s15, s7, s5
    44b4: eddf 3ada    	vldr	s7, [pc, #872]          @ 0x4820 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x460>
    44b8: eef0 6a63    	vmov.f32	s13, s7
    44bc: eeb0 9a63    	vmov.f32	s18, s7
    44c0: ee04 8ae2    	vmls.f32	s16, s9, s5
    44c4: eddf 4ad5    	vldr	s9, [pc, #852]          @ 0x481c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x45c>
    44c8: ee47 6aa4    	vmla.f32	s13, s15, s9
    44cc: ee08 9a24    	vmla.f32	s18, s16, s9
    44d0: ee28 ca08    	vmul.f32	s24, s16, s16
    44d4: ee07 aaa6    	vmla.f32	s20, s15, s13
    44d8: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    44dc: ee08 ba09    	vmla.f32	s22, s16, s18
    44e0: eeb0 9a47    	vmov.f32	s18, s14
    44e4: ee07 9a8a    	vmla.f32	s18, s15, s20
    44e8: eeb0 aa47    	vmov.f32	s20, s14
    44ec: ee08 aa0b    	vmla.f32	s20, s16, s22
    44f0: ee27 baa7    	vmul.f32	s22, s15, s15
    44f4: ee77 7aa6    	vadd.f32	s15, s15, s13
    44f8: ee38 8a26    	vadd.f32	s16, s16, s13
    44fc: ee4b 7a09    	vmla.f32	s15, s22, s18
    4500: ee09 2a10    	vmov	s18, r2
    4504: ee0c 8a0a    	vmla.f32	s16, s24, s20
    4508: ee0a 6a10    	vmov	s20, r6
    450c: ee67 ba89    	vmul.f32	s23, s15, s18
    4510: eddf 7ac0    	vldr	s15, [pc, #768]         @ 0x4814 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x454>
    4514: ee43 aa27    	vmla.f32	s21, s6, s15
    4518: ee68 ca0a    	vmul.f32	s25, s16, s20
    451c: ed9f 8ac2    	vldr	s16, [pc, #776]         @ 0x4828 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x468>
    4520: ee3b 0aec    	vsub.f32	s0, s23, s25
    4524: ee50 aa08    	vnmls.f32	s21, s0, s16
    4528: ee1a 2a90    	vmov	r2, s21
    452c: f022 4200    	bic	r2, r2, #0x80000000
    4530: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4534: db04         	blt	0x4540 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x180> @ imm = #0x8
    4536: ed9f 0abd    	vldr	s0, [pc, #756]          @ 0x482c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x46c>
    453a: e00b         	b	0x4554 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x194> @ imm = #0x16
    453c: bf00         	nop
    453e: bf00         	nop
    4540: ed9f 0abb    	vldr	s0, [pc, #748]          @ 0x4830 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x470>
    4544: ee8a 0a80    	vdiv.f32	s0, s21, s0
    4548: ed9f 9aba    	vldr	s18, [pc, #744]         @ 0x4834 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x474>
    454c: eeb0 0ac0    	vabs.f32	s0, s0
    4550: fe80 0a09    	vmaxnm.f32	s0, s0, s18
    4554: f04f 0e00    	mov.w	lr, #0x0
    4558: f04f 0c00    	mov.w	r12, #0x0
    455c: ed9f aab6    	vldr	s20, [pc, #728]         @ 0x4838 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x478>
    4560: 46f0         	mov	r8, lr
    4562: ed9f bab6    	vldr	s22, [pc, #728]         @ 0x483c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x47c>
    4566: ed9f 9ab6    	vldr	s18, [pc, #728]         @ 0x4840 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x480>
    456a: ed9f dab1    	vldr	s26, [pc, #708]         @ 0x4830 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x470>
    456e: ed9f eab1    	vldr	s28, [pc, #708]         @ 0x4834 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x474>
    4572: ed9f fab4    	vldr	s30, [pc, #720]         @ 0x4844 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x484>
    4576: ed9f cab4    	vldr	s24, [pc, #720]         @ 0x4848 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x488>
    457a: ee7c 8aab    	vadd.f32	s17, s25, s23
    457e: f1be 0f10    	cmp.w	lr, #0x10
    4582: bf18         	it	ne
    4584: f108 0801    	addne.w	r8, r8, #0x1
    4588: 2500         	movs	r5, #0x0
    458a: ee68 8a88    	vmul.f32	s17, s17, s16
    458e: eec8 8a82    	vdiv.f32	s17, s17, s4
    4592: ee78 8a8a    	vadd.f32	s17, s17, s20
    4596: ee18 4a90    	vmov	r4, s17
    459a: eef0 9ae8    	vabs.f32	s19, s17
    459e: f024 4400    	bic	r4, r4, #0x80000000
    45a2: eef4 9a4b    	vcmp.f32	s19, s22
    45a6: f1b4 4fff    	cmp.w	r4, #0x7f800000
    45aa: f04f 0400    	mov.w	r4, #0x0
    45ae: bfa8         	it	ge
    45b0: 2401         	movge	r4, #0x1
    45b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45b6: bf48         	it	mi
    45b8: 2501         	movmi	r5, #0x1
    45ba: 432c         	orrs	r4, r5
    45bc: f040 8128    	bne.w	0x4810 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x450> @ imm = #0x250
    45c0: eef1 9a6a    	vneg.f32	s19, s21
    45c4: eeb4 0a49    	vcmp.f32	s0, s18
    45c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45cc: eec9 8aa8    	vdiv.f32	s17, s19, s17
    45d0: d906         	bls	0x45e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x220> @ imm = #0xc
    45d2: f1be 0f10    	cmp.w	lr, #0x10
    45d6: d124         	bne	0x4622 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x262> @ imm = #0x48
    45d8: e11a         	b	0x4810 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x450> @ imm = #0x234
    45da: bf00         	nop
    45dc: bf00         	nop
    45de: bf00         	nop
    45e0: eef0 9ac3    	vabs.f32	s19, s6
    45e4: 2400         	movs	r4, #0x0
    45e6: eef0 aae8    	vabs.f32	s21, s17
    45ea: eef4 9a69    	vcmp.f32	s19, s19
    45ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45f2: fe56 9aa9    	vselvs.f32	s19, s13, s19
    45f6: eef4 9a66    	vcmp.f32	s19, s13
    45fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45fe: fe79 9aa6    	vselgt.f32	s19, s19, s13
    4602: ee69 9a8f    	vmul.f32	s19, s19, s30
    4606: fec9 9acc    	vminnm.f32	s19, s19, s24
    460a: eef4 aa69    	vcmp.f32	s21, s19
    460e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4612: bf88         	it	hi
    4614: 2401         	movhi	r4, #0x1
    4616: f1be 0f10    	cmp.w	lr, #0x10
    461a: bf18         	it	ne
    461c: 2c00         	cmpne	r4, #0x0
    461e: f000 80eb    	beq.w	0x47f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x438> @ imm = #0x1d6
    4622: f04f 547e    	mov.w	r4, #0x3f800000
    4626: e005         	b	0x4634 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x274> @ imm = #0xa
    4628: f5a4 0400    	sub.w	r4, r4, #0x800000
    462c: f1b4 5f66    	cmp.w	r4, #0x39800000
    4630: f000 80ca    	beq.w	0x47c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x408> @ imm = #0x194
    4634: ee0a 4a90    	vmov	s21, r4
    4638: eef0 9a43    	vmov.f32	s19, s6
    463c: ee48 9aaa    	vmla.f32	s19, s17, s21
    4640: ee79 aa81    	vadd.f32	s21, s19, s2
    4644: ee71 ea69    	vsub.f32	s29, s2, s19
    4648: eeca aa82    	vdiv.f32	s21, s21, s4
    464c: eece ea82    	vdiv.f32	s29, s29, s4
    4650: eeb4 4a6a    	vcmp.f32	s8, s21
    4654: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4658: fe74 aa2a    	vselgt.f32	s21, s8, s21
    465c: eef4 aa45    	vcmp.f32	s21, s10
    4660: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4664: fe75 aa2a    	vselgt.f32	s21, s10, s21
    4668: ee6a ba86    	vmul.f32	s23, s21, s12
    466c: ee7b ca87    	vadd.f32	s25, s23, s14
    4670: eef5 ba40    	vcmp.f32	s23, #0
    4674: ee7b daa1    	vadd.f32	s27, s23, s3
    4678: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    467c: eefd caec    	vcvt.s32.f32	s25, s25
    4680: eefd daed    	vcvt.s32.f32	s27, s27
    4684: eeb4 4a6e    	vcmp.f32	s8, s29
    4688: ee1c 6a90    	vmov	r6, s25
    468c: ee1d 5a90    	vmov	r5, s27
    4690: bfa8         	it	ge
    4692: 4635         	movge	r5, r6
    4694: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4698: fe74 ba2e    	vselgt.f32	s23, s8, s29
    469c: eef4 ba45    	vcmp.f32	s23, s10
    46a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46a4: fe75 ba2b    	vselgt.f32	s23, s10, s23
    46a8: ee6b ca86    	vmul.f32	s25, s23, s12
    46ac: ee7c daa1    	vadd.f32	s27, s25, s3
    46b0: eef5 ca40    	vcmp.f32	s25, #0
    46b4: ee7c ea87    	vadd.f32	s29, s25, s14
    46b8: ee0c 5a90    	vmov	s25, r5
    46bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46c0: eefd daed    	vcvt.s32.f32	s27, s27
    46c4: eef8 caec    	vcvt.f32.s32	s25, s25
    46c8: ee1d 6a90    	vmov	r6, s27
    46cc: eefd daee    	vcvt.s32.f32	s27, s29
    46d0: ee4c aae2    	vmls.f32	s21, s25, s5
    46d4: eef0 ca63    	vmov.f32	s25, s7
    46d8: eef0 ea65    	vmov.f32	s29, s11
    46dc: ee1d 2a90    	vmov	r2, s27
    46e0: bfa8         	it	ge
    46e2: 4616         	movge	r6, r2
    46e4: eb03 52c5    	add.w	r2, r3, r5, lsl #23
    46e8: ee0d 6a90    	vmov	s27, r6
    46ec: eb03 55c6    	add.w	r5, r3, r6, lsl #23
    46f0: ee4a caa4    	vmla.f32	s25, s21, s9
    46f4: eef8 daed    	vcvt.f32.s32	s27, s27
    46f8: ee4d bae2    	vmls.f32	s23, s27, s5
    46fc: eef0 da63    	vmov.f32	s27, s7
    4700: ee4a eaac    	vmla.f32	s29, s21, s25
    4704: eef0 ca65    	vmov.f32	s25, s11
    4708: ee4b daa4    	vmla.f32	s27, s23, s9
    470c: ee6b faab    	vmul.f32	s31, s23, s23
    4710: ee4b caad    	vmla.f32	s25, s23, s27
    4714: eef0 da47    	vmov.f32	s27, s14
    4718: ee4a daae    	vmla.f32	s27, s21, s29
    471c: eef0 ea47    	vmov.f32	s29, s14
    4720: ee4b eaac    	vmla.f32	s29, s23, s25
    4724: ee6a caaa    	vmul.f32	s25, s21, s21
    4728: ee7a aaa6    	vadd.f32	s21, s21, s13
    472c: ee4c aaad    	vmla.f32	s21, s25, s27
    4730: ee0d 5a90    	vmov	s27, r5
    4734: ee7b caa6    	vadd.f32	s25, s23, s13
    4738: ee0b 2a90    	vmov	s23, r2
    473c: ee4f caae    	vmla.f32	s25, s31, s29
    4740: ee6a baab    	vmul.f32	s23, s21, s23
    4744: eef0 aa60    	vmov.f32	s21, s1
    4748: ee49 aaa7    	vmla.f32	s21, s19, s15
    474c: ee6c caad    	vmul.f32	s25, s25, s27
    4750: ee7b daec    	vsub.f32	s27, s23, s25
    4754: ee5d aa88    	vnmls.f32	s21, s27, s16
    4758: ee1a 2a90    	vmov	r2, s21
    475c: f022 4200    	bic	r2, r2, #0x80000000
    4760: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4764: f6bf af60    	bge.w	0x4628 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x268> @ imm = #-0x140
    4768: eeca da8d    	vdiv.f32	s27, s21, s26
    476c: eef0 daed    	vabs.f32	s27, s27
    4770: fecd da8e    	vmaxnm.f32	s27, s27, s28
    4774: eef4 da40    	vcmp.f32	s27, s0
    4778: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    477c: f57f af54    	bpl.w	0x4628 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x268> @ imm = #-0x158
    4780: f1be 0f10    	cmp.w	lr, #0x10
    4784: edc1 9a00    	vstr	s19, [r1]
    4788: d00a         	beq	0x47a0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x3e0> @ imm = #0x14
    478a: eeb0 3a69    	vmov.f32	s6, s19
    478e: eeb0 0a6d    	vmov.f32	s0, s27
    4792: f1b8 0f10    	cmp.w	r8, #0x10
    4796: f10c 0c01    	add.w	r12, r12, #0x1
    479a: 46c6         	mov	lr, r8
    479c: f77f aeed    	ble.w	0x457a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x1ba> @ imm = #-0x226
    47a0: f64d 3011    	movw	r0, #0xdb11
    47a4: f64d 7210    	movw	r2, #0xdf10
    47a8: f2c0 0000    	movt	r0, #0x0
    47ac: f2c0 0200    	movt	r2, #0x0
    47b0: 2128         	movs	r1, #0x28
    47b2: f007 fb6b    	bl	0xbe8c <core::panicking::panic> @ imm = #0x76d6
    47b6: bf00         	nop
    47b8: f5 4a 39 3d  	.word	0x3d394af5
    47bc: 00 00 a0 c2  	.word	0xc2a00000
    47c0: 00 00 a0 42  	.word	0x42a00000
    47c4: 00 bf 00 bf  	.word	0xbf00bf00
    47c8: f10c 0c01    	add.w	r12, r12, #0x1
    47cc: eeb4 0a49    	vcmp.f32	s0, s18
    47d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47d4: ed81 3a00    	vstr	s6, [r1]
    47d8: f04f 0100    	mov.w	r1, #0x0
    47dc: d80e         	bhi	0x47fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x43c> @ imm = #0x1c
    47de: eeb0 1ae8    	vabs.f32	s2, s17
    47e2: eeb4 1a4c    	vcmp.f32	s2, s24
    47e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47ea: bf98         	it	ls
    47ec: 2101         	movls	r1, #0x1
    47ee: e005         	b	0x47fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x43c> @ imm = #0xa
    47f0: 3b aa b8 3f  	.word	0x3fb8aa3b
    47f4: 00 bf 00 bf  	.word	0xbf00bf00
    47f8: f084 0101    	eor	r1, r4, #0x1
    47fc: ed80 0a00    	vstr	s0, [r0]
    4800: f880 c004    	strb.w	r12, [r0, #0x4]
    4804: 7141         	strb	r1, [r0, #0x5]
    4806: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    480a: f85d 8b04    	ldr	r8, [sp], #4
    480e: bdf0         	pop	{r4, r5, r6, r7, pc}
    4810: 2100         	movs	r1, #0x0
    4812: e7f3         	b	0x47fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>+0x43c> @ imm = #-0x1a
    4814: 09 d5 19 b8  	.word	0xb819d509
    4818: 18 72 31 3f  	.word	0x3f317218
    481c: 89 88 08 3c  	.word	0x3c088889
    4820: ab aa 2a 3d  	.word	0x3d2aaaab
    4824: ab aa 2a 3e  	.word	0x3e2aaaab
    4828: 77 cc 2b 31  	.word	0x312bcc77
    482c: 00 00 80 7f  	.word	0x7f800000
    4830: 0a d7 23 3c  	.word	0x3c23d70a
    4834: 00 00 00 00  	.word	0x00000000
    4838: 09 d5 19 38  	.word	0x3819d509
    483c: 08 e5 3c 1e  	.word	0x1e3ce508
    4840: 17 b7 d1 38  	.word	0x38d1b717
    4844: bd 37 06 36  	.word	0x360637bd
    4848: ac c5 a7 37  	.word	0x37a7c5ac
    484c: d4 d4 d4 d4  	.word	0xd4d4d4d4

00004850 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>>:
    4850: b5f0         	push	{r4, r5, r6, r7, lr}
    4852: af03         	add	r7, sp, #0xc
    4854: f84d 8d04    	str	r8, [sp, #-4]!
    4858: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    485c: b086         	sub	sp, #0x18
    485e: ed92 2a02    	vldr	s4, [r2, #8]
    4862: ed92 3a03    	vldr	s6, [r2, #12]
    4866: eeb4 2a43    	vcmp.f32	s4, s6
    486a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    486e: f200 832b    	bhi.w	0x4ec8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x678> @ imm = #0x656
    4872: ed91 ba01    	vldr	s22, [r1, #4]
    4876: ed9f 7ad7    	vldr	s14, [pc, #860]         @ 0x4bd4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x384>
    487a: eeb7 4acb    	vcvt.f64.f32	d4, s22
    487e: eddf 2ad6    	vldr	s5, [pc, #856]          @ 0x4bd8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x388>
    4882: ed9f 5b9b    	vldr	d5, [pc, #620]          @ 0x4af0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x2a0>
    4886: eeb0 6b41    	vmov.f64	d6, d1
    488a: eddf 3ad4    	vldr	s7, [pc, #848]          @ 0x4bdc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x38c>
    488e: eeb0 db41    	vmov.f64	d13, d1
    4892: ee04 6b05    	vmla.f64	d6, d4, d5
    4896: eef7 0bc0    	vcvt.f32.f64	s1, d0
    489a: eeb7 4bc6    	vcvt.f32.f64	s8, d6
    489e: ed92 6a01    	vldr	s12, [r2, #4]
    48a2: eef0 4a60    	vmov.f32	s9, s1
    48a6: eef0 7a46    	vmov.f32	s15, s12
    48aa: ee4b 4a22    	vmla.f32	s9, s22, s5
    48ae: ee44 7a07    	vmla.f32	s15, s8, s14
    48b2: eeb0 0ae4    	vabs.f32	s0, s9
    48b6: eeb4 2a67    	vcmp.f32	s4, s15
    48ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48be: fe32 4a27    	vselgt.f32	s8, s4, s15
    48c2: eeb4 4a43    	vcmp.f32	s8, s6
    48c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48ca: eeb4 0a63    	vcmp.f32	s0, s7
    48ce: fe33 1a04    	vselgt.f32	s2, s6, s8
    48d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48d6: da17         	bge	0x4908 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0xb8> @ imm = #0x2e
    48d8: ed9f 4ad4    	vldr	s8, [pc, #848]          @ 0x4c2c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3dc>
    48dc: eeb4 0a44    	vcmp.f32	s0, s8
    48e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48e4: d91c         	bls	0x4920 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0xd0> @ imm = #0x38
    48e6: ed9f 4ad2    	vldr	s8, [pc, #840]          @ 0x4c30 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3e0>
    48ea: eeb4 0a44    	vcmp.f32	s0, s8
    48ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48f2: d919         	bls	0x4928 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0xd8> @ imm = #0x32
    48f4: ed9f 4acf    	vldr	s8, [pc, #828]          @ 0x4c34 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3e4>
    48f8: ee30 4a04    	vadd.f32	s8, s0, s8
    48fc: eddf 6ace    	vldr	s13, [pc, #824]         @ 0x4c38 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3e8>
    4900: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    4904: e018         	b	0x4938 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0xe8> @ imm = #0x30
    4906: bf00         	nop
    4908: eddf 8acc    	vldr	s17, [pc, #816]         @ 0x4c3c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3ec>
    490c: eef0 fa68    	vmov.f32	s31, s17
    4910: eef0 ca68    	vmov.f32	s25, s17
    4914: eeb0 0a68    	vmov.f32	s0, s17
    4918: eef0 ba68    	vmov.f32	s23, s17
    491c: e083         	b	0x4a26 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x1d6> @ imm = #0x106
    491e: bf00         	nop
    4920: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    4924: e00a         	b	0x493c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0xec> @ imm = #0x14
    4926: bf00         	nop
    4928: ed9f 4ac5    	vldr	s8, [pc, #788]          @ 0x4c40 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3f0>
    492c: ee30 4a04    	vadd.f32	s8, s0, s8
    4930: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    4934: eddf 6ac3    	vldr	s13, [pc, #780]         @ 0x4c44 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3f4>
    4938: ee04 0a26    	vmla.f32	s0, s8, s13
    493c: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    4940: eddf 8abe    	vldr	s17, [pc, #760]         @ 0x4c3c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3ec>
    4944: ee34 0a40    	vsub.f32	s0, s8, s0
    4948: fec0 ba28    	vmaxnm.f32	s23, s0, s17
    494c: eef5 ba40    	vcmp.f32	s23, #0
    4950: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4954: d93c         	bls	0x49d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x180> @ imm = #0x78
    4956: eeb0 0ac1    	vabs.f32	s0, s2
    495a: eeb4 0a6b    	vcmp.f32	s0, s23
    495e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4962: dd3d         	ble	0x49e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x190> @ imm = #0x7a
    4964: eecb 8a80    	vdiv.f32	s17, s23, s0
    4968: ee28 0aa8    	vmul.f32	s0, s17, s17
    496c: ee20 0a00    	vmul.f32	s0, s0, s0
    4970: ee20 0a00    	vmul.f32	s0, s0, s0
    4974: ee60 ca00    	vmul.f32	s25, s0, s0
    4978: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    497c: ee7c 6a80    	vadd.f32	s13, s25, s0
    4980: eeb0 4a40    	vmov.f32	s8, s0
    4984: eef4 6a40    	vcmp.f32	s13, s0
    4988: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    498c: d009         	beq	0x49a2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x152> @ imm = #0x12
    498e: eef1 6ae6    	vsqrt.f32	s13, s13
    4992: eef1 6ae6    	vsqrt.f32	s13, s13
    4996: eef1 6ae6    	vsqrt.f32	s13, s13
    499a: eef1 6ae6    	vsqrt.f32	s13, s13
    499e: eeb0 4a66    	vmov.f32	s8, s13
    49a2: ee11 2a10    	vmov	r2, s2
    49a6: f04f 567e    	mov.w	r6, #0x3f800000
    49aa: eec0 fa04    	vdiv.f32	s31, s0, s8
    49ae: ed9f 4ad0    	vldr	s8, [pc, #832]          @ 0x4cf0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x4a0>
    49b2: eeb4 1a41    	vcmp.f32	s2, s2
    49b6: f366 021e    	bfi	r2, r6, #0, #31
    49ba: ee06 2a90    	vmov	s13, r2
    49be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    49c2: ee26 0aab    	vmul.f32	s0, s13, s23
    49c6: ee20 0a2f    	vmul.f32	s0, s0, s31
    49ca: fe14 0a00    	vselvs.f32	s0, s8, s0
    49ce: e02a         	b	0x4a26 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x1d6> @ imm = #0x54
    49d0: eef0 fa68    	vmov.f32	s31, s17
    49d4: eef0 ca68    	vmov.f32	s25, s17
    49d8: eeb0 0a68    	vmov.f32	s0, s17
    49dc: e023         	b	0x4a26 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x1d6> @ imm = #0x46
    49de: bf00         	nop
    49e0: eec1 8a2b    	vdiv.f32	s17, s2, s23
    49e4: ee28 0aa8    	vmul.f32	s0, s17, s17
    49e8: ee20 0a00    	vmul.f32	s0, s0, s0
    49ec: ee20 0a00    	vmul.f32	s0, s0, s0
    49f0: ee60 ca00    	vmul.f32	s25, s0, s0
    49f4: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    49f8: ee3c 4a80    	vadd.f32	s8, s25, s0
    49fc: eef0 6a40    	vmov.f32	s13, s0
    4a00: eeb4 4a40    	vcmp.f32	s8, s0
    4a04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a08: d009         	beq	0x4a1e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x1ce> @ imm = #0x12
    4a0a: eeb1 4ac4    	vsqrt.f32	s8, s8
    4a0e: eeb1 4ac4    	vsqrt.f32	s8, s8
    4a12: eeb1 4ac4    	vsqrt.f32	s8, s8
    4a16: eeb1 4ac4    	vsqrt.f32	s8, s8
    4a1a: eef0 6a44    	vmov.f32	s13, s8
    4a1e: eec0 fa26    	vdiv.f32	s31, s0, s13
    4a22: ee21 0a2f    	vmul.f32	s0, s2, s31
    4a26: ee7b ea40    	vsub.f32	s29, s22, s0
    4a2a: ee1e 2a90    	vmov	r2, s29
    4a2e: f022 4200    	bic	r2, r2, #0x80000000
    4a32: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4a36: db03         	blt	0x4a40 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x1f0> @ imm = #0x6
    4a38: eddf 6ada    	vldr	s13, [pc, #872]         @ 0x4da4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x554>
    4a3c: e00a         	b	0x4a54 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x204> @ imm = #0x14
    4a3e: bf00         	nop
    4a40: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    4a44: ed9f 4a7d    	vldr	s8, [pc, #500]          @ 0x4c3c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3ec>
    4a48: ee8e 0a80    	vdiv.f32	s0, s29, s0
    4a4c: eeb0 0ac0    	vabs.f32	s0, s0
    4a50: fec0 6a04    	vmaxnm.f32	s13, s0, s8
    4a54: eeb7 8a08    	vmov.f32	s16, #1.500000e+00
    4a58: eeb7 aa00    	vmov.f32	s20, #1.000000e+00
    4a5c: eebf ea00    	vmov.f32	s28, #-1.000000e+00
    4a60: eeb2 ca0e    	vmov.f32	s24, #1.500000e+01
    4a64: 2400         	movs	r4, #0x0
    4a66: f04f 0800    	mov.w	r8, #0x0
    4a6a: ed9f 9a74    	vldr	s18, [pc, #464]         @ 0x4c3c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3ec>
    4a6e: f04f 5c7e    	mov.w	r12, #0x3f800000
    4a72: eddf 9a6e    	vldr	s19, [pc, #440]         @ 0x4c2c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3dc>
    4a76: 46a6         	mov	lr, r4
    4a78: 2500         	movs	r5, #0x0
    4a7a: eeb0 0a49    	vmov.f32	s0, s18
    4a7e: eeb0 4a49    	vmov.f32	s8, s18
    4a82: 2c10         	cmp	r4, #0x10
    4a84: bf18         	it	ne
    4a86: f10e 0e01    	addne.w	lr, lr, #0x1
    4a8a: eef4 7a42    	vcmp.f32	s15, s4
    4a8e: 2600         	movs	r6, #0x0
    4a90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a94: eef4 7a43    	vcmp.f32	s15, s6
    4a98: bfc8         	it	gt
    4a9a: 2501         	movgt	r5, #0x1
    4a9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4aa0: eef5 ba40    	vcmp.f32	s23, #0
    4aa4: bf48         	it	mi
    4aa6: 2601         	movmi	r6, #0x1
    4aa8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4aac: d92a         	bls	0x4b04 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x2b4> @ imm = #0x54
    4aae: ee3c 0a8a    	vadd.f32	s0, s25, s20
    4ab2: eeb0 4ac1    	vabs.f32	s8, s2
    4ab6: ee8f 0a80    	vdiv.f32	s0, s31, s0
    4aba: eeb4 4a6b    	vcmp.f32	s8, s23
    4abe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ac2: dd19         	ble	0x4af8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x2a8> @ imm = #0x32
    4ac4: ee11 2a10    	vmov	r2, s2
    4ac8: ee68 7aac    	vmul.f32	s15, s17, s25
    4acc: eeb4 1a41    	vcmp.f32	s2, s2
    4ad0: eddf 1a87    	vldr	s3, [pc, #540]          @ 0x4cf0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x4a0>
    4ad4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ad8: f36c 021e    	bfi	r2, r12, #0, #31
    4adc: ee04 2a10    	vmov	s8, r2
    4ae0: ee24 4a00    	vmul.f32	s8, s8, s0
    4ae4: ee27 0a80    	vmul.f32	s0, s15, s0
    4ae8: fe11 4a84    	vselvs.f32	s8, s3, s8
    4aec: e00a         	b	0x4b04 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x2b4> @ imm = #0x14
    4aee: bf00         	nop
    4af0: 1f 89 9b cf  	.word	0xcf9b891f
    4af4: ab 32 9c bf  	.word	0xbf9c32ab
    4af8: ee21 4a2c    	vmul.f32	s8, s2, s25
    4afc: ee84 4a2b    	vdiv.f32	s8, s8, s23
    4b00: ee24 4a00    	vmul.f32	s8, s8, s0
    4b04: eef5 4a40    	vcmp.f32	s9, #0
    4b08: eef0 7ae4    	vabs.f32	s15, s9
    4b0c: eef0 4a49    	vmov.f32	s9, s18
    4b10: eeb0 fa49    	vmov.f32	s30, s18
    4b14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b18: bf48         	it	mi
    4b1a: eef0 4a4e    	vmovmi.f32	s9, s28
    4b1e: eef4 7a63    	vcmp.f32	s15, s7
    4b22: fe7a 4a24    	vselgt.f32	s9, s20, s9
    4b26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b2a: da17         	bge	0x4b5c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x30c> @ imm = #0x2e
    4b2c: eeb0 fa49    	vmov.f32	s30, s18
    4b30: eef4 7a69    	vcmp.f32	s15, s19
    4b34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b38: d90e         	bls	0x4b58 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x308> @ imm = #0x1c
    4b3a: eddf 1a3d    	vldr	s3, [pc, #244]          @ 0x4c30 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3e0>
    4b3e: eef4 7a61    	vcmp.f32	s15, s3
    4b42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b46: d903         	bls	0x4b50 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x300> @ imm = #0x6
    4b48: eddf 1a3b    	vldr	s3, [pc, #236]          @ 0x4c38 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3e8>
    4b4c: e002         	b	0x4b54 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x304> @ imm = #0x4
    4b4e: bf00         	nop
    4b50: eddf 1ae5    	vldr	s3, [pc, #916]          @ 0x4ee8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x698>
    4b54: ee24 faa1    	vmul.f32	s30, s9, s3
    4b58: eeb1 fa4f    	vneg.f32	s30, s30
    4b5c: ea15 0206    	ands.w	r2, r5, r6
    4b60: eddf 1ae5    	vldr	s3, [pc, #916]          @ 0x4ef8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6a8>
    4b64: eddf 4ae5    	vldr	s9, [pc, #916]          @ 0x4efc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6ac>
    4b68: ee24 4a0f    	vmul.f32	s8, s8, s30
    4b6c: fe44 4aa1    	vseleq.f32	s9, s9, s3
    4b70: eddf 1ae3    	vldr	s3, [pc, #908]          @ 0x4f00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6b0>
    4b74: 2500         	movs	r5, #0x0
    4b76: ee24 4a21    	vmul.f32	s8, s8, s3
    4b7a: eddf 1ae2    	vldr	s3, [pc, #904]          @ 0x4f04 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6b4>
    4b7e: ee20 0a24    	vmul.f32	s0, s0, s9
    4b82: ee00 4a21    	vmla.f32	s8, s0, s3
    4b86: eddf 1ae0    	vldr	s3, [pc, #896]          @ 0x4f08 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6b8>
    4b8a: ee34 0a0a    	vadd.f32	s0, s8, s20
    4b8e: ee10 2a10    	vmov	r2, s0
    4b92: eeb0 4ac0    	vabs.f32	s8, s0
    4b96: f022 4200    	bic	r2, r2, #0x80000000
    4b9a: eeb4 4a61    	vcmp.f32	s8, s3
    4b9e: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4ba2: f04f 0200    	mov.w	r2, #0x0
    4ba6: bfa8         	it	ge
    4ba8: 2201         	movge	r2, #0x1
    4baa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bae: bf48         	it	mi
    4bb0: 2501         	movmi	r5, #0x1
    4bb2: 432a         	orrs	r2, r5
    4bb4: f040 8180    	bne.w	0x4eb8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x668> @ imm = #0x300
    4bb8: eeb1 4a6e    	vneg.f32	s8, s29
    4bbc: ee84 fa00    	vdiv.f32	s30, s8, s0
    4bc0: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x4f0c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6bc>
    4bc4: eef4 6a40    	vcmp.f32	s13, s0
    4bc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bcc: d908         	bls	0x4be0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x390> @ imm = #0x10
    4bce: 2c10         	cmp	r4, #0x10
    4bd0: d126         	bne	0x4c20 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3d0> @ imm = #0x4c
    4bd2: e175         	b	0x4ec0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x670> @ imm = #0x2ea
    4bd4: 79 61 2e 43  	.word	0x432e6179
    4bd8: ab aa a0 b8  	.word	0xb8a0aaab
    4bdc: 0a d7 23 3d  	.word	0x3d23d70a
    4be0: eeb0 0acb    	vabs.f32	s0, s22
    4be4: ed9f 4aca    	vldr	s8, [pc, #808]          @ 0x4f10 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6c0>
    4be8: eeb4 0a40    	vcmp.f32	s0, s0
    4bec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bf0: fe1a 0a00    	vselvs.f32	s0, s20, s0
    4bf4: eeb4 0a4a    	vcmp.f32	s0, s20
    4bf8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bfc: fe30 0a0a    	vselgt.f32	s0, s0, s20
    4c00: 2c10         	cmp	r4, #0x10
    4c02: ee20 0a04    	vmul.f32	s0, s0, s8
    4c06: ed9f 4ac3    	vldr	s8, [pc, #780]          @ 0x4f14 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6c4>
    4c0a: fe80 0a44    	vminnm.f32	s0, s0, s8
    4c0e: eeb0 4acf    	vabs.f32	s8, s30
    4c12: bf1c         	itt	ne
    4c14: eeb4 4a40    	vcmpne.f32	s8, s0
    4c18: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    4c1c: f240 8138    	bls.w	0x4e90 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x640> @ imm = #0x270
    4c20: f04f 557e    	mov.w	r5, #0x3f800000
    4c24: ed8d 1a01    	vstr	s2, [sp, #4]
    4c28: e014         	b	0x4c54 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x404> @ imm = #0x28
    4c2a: bf00         	nop
    4c2c: 7c f2 b0 3a  	.word	0x3ab0f27c
    4c30: a6 9b c4 3b  	.word	0x3bc49ba6
    4c34: a6 9b c4 bb  	.word	0xbbc49ba6
    4c38: 79 78 b0 43  	.word	0x43b07879
    4c3c: 00 00 00 00  	.word	0x00000000
    4c40: 7c f2 b0 ba  	.word	0xbab0f27c
    4c44: 53 4a a1 43  	.word	0x43a14a53
    4c48: f5a5 0500    	sub.w	r5, r5, #0x800000
    4c4c: f1b5 5f66    	cmp.w	r5, #0x39800000
    4c50: f000 8102    	beq.w	0x4e58 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x608> @ imm = #0x204
    4c54: ee00 5a10    	vmov	s0, r5
    4c58: eeb0 4a4b    	vmov.f32	s8, s22
    4c5c: eeb0 1b4d    	vmov.f64	d1, d13
    4c60: eef0 7a46    	vmov.f32	s15, s12
    4c64: eef0 4a60    	vmov.f32	s9, s1
    4c68: ee0f 4a00    	vmla.f32	s8, s30, s0
    4c6c: eef0 8a49    	vmov.f32	s17, s18
    4c70: eef0 fa49    	vmov.f32	s31, s18
    4c74: eef0 ca49    	vmov.f32	s25, s18
    4c78: eef0 ba49    	vmov.f32	s23, s18
    4c7c: ed81 4a01    	vstr	s8, [r1, #4]
    4c80: eeb7 eac4    	vcvt.f64.f32	d14, s8
    4c84: ee44 4a22    	vmla.f32	s9, s8, s5
    4c88: ee0e 1b05    	vmla.f64	d1, d14, d5
    4c8c: eef0 ea49    	vmov.f32	s29, s18
    4c90: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    4c94: eef0 aae4    	vabs.f32	s21, s9
    4c98: ee40 7a07    	vmla.f32	s15, s0, s14
    4c9c: eeb4 2a67    	vcmp.f32	s4, s15
    4ca0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ca4: fe32 0a27    	vselgt.f32	s0, s4, s15
    4ca8: eeb4 0a43    	vcmp.f32	s0, s6
    4cac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cb0: eef4 aa63    	vcmp.f32	s21, s7
    4cb4: fe33 0a00    	vselgt.f32	s0, s6, s0
    4cb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cbc: f280 8098    	bge.w	0x4df0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x5a0> @ imm = #0x130
    4cc0: eef0 8a48    	vmov.f32	s17, s16
    4cc4: eef4 aa69    	vcmp.f32	s21, s19
    4cc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ccc: d91e         	bls	0x4d0c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x4bc> @ imm = #0x3c
    4cce: ed9f 1a84    	vldr	s2, [pc, #528]          @ 0x4ee0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x690>
    4cd2: eef4 aa41    	vcmp.f32	s21, s2
    4cd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cda: d90d         	bls	0x4cf8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x4a8> @ imm = #0x1a
    4cdc: ed9f 1a83    	vldr	s2, [pc, #524]          @ 0x4eec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x69c>
    4ce0: eef0 8a08    	vmov.f32	s17, #3.000000e+00
    4ce4: ee3a 1a81    	vadd.f32	s2, s21, s2
    4ce8: eddf 1a81    	vldr	s3, [pc, #516]          @ 0x4ef0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6a0>
    4cec: e00c         	b	0x4d08 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x4b8> @ imm = #0x18
    4cee: bf00         	nop
    4cf0: 00 00 c0 7f  	.word	0x7fc00000
    4cf4: 00 bf 00 bf  	.word	0xbf00bf00
    4cf8: ed9f 1a7a    	vldr	s2, [pc, #488]          @ 0x4ee4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x694>
    4cfc: eef0 8a48    	vmov.f32	s17, s16
    4d00: ee3a 1a81    	vadd.f32	s2, s21, s2
    4d04: eddf 1a78    	vldr	s3, [pc, #480]          @ 0x4ee8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x698>
    4d08: ee41 8a21    	vmla.f32	s17, s2, s3
    4d0c: ee3c 1a68    	vsub.f32	s2, s24, s17
    4d10: fec1 ba09    	vmaxnm.f32	s23, s2, s18
    4d14: eef5 ba40    	vcmp.f32	s23, #0
    4d18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d1c: d938         	bls	0x4d90 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x540> @ imm = #0x70
    4d1e: eef0 8ac0    	vabs.f32	s17, s0
    4d22: eef4 8a6b    	vcmp.f32	s17, s23
    4d26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d2a: dd3d         	ble	0x4da8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x558> @ imm = #0x7a
    4d2c: eecb 8aa8    	vdiv.f32	s17, s23, s17
    4d30: eef0 ea4a    	vmov.f32	s29, s20
    4d34: ee28 1aa8    	vmul.f32	s2, s17, s17
    4d38: ee21 1a01    	vmul.f32	s2, s2, s2
    4d3c: ee21 1a01    	vmul.f32	s2, s2, s2
    4d40: ee61 ca01    	vmul.f32	s25, s2, s2
    4d44: ee7c aa8a    	vadd.f32	s21, s25, s20
    4d48: eef4 aa4a    	vcmp.f32	s21, s20
    4d4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d50: d009         	beq	0x4d66 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x516> @ imm = #0x12
    4d52: eef1 aaea    	vsqrt.f32	s21, s21
    4d56: eef1 aaea    	vsqrt.f32	s21, s21
    4d5a: eef1 aaea    	vsqrt.f32	s21, s21
    4d5e: eef1 aaea    	vsqrt.f32	s21, s21
    4d62: eef0 ea6a    	vmov.f32	s29, s21
    4d66: ee10 2a10    	vmov	r2, s0
    4d6a: eeca fa2e    	vdiv.f32	s31, s20, s29
    4d6e: eeb4 0a40    	vcmp.f32	s0, s0
    4d72: eddf 1a60    	vldr	s3, [pc, #384]          @ 0x4ef4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6a4>
    4d76: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d7a: f36c 021e    	bfi	r2, r12, #0, #31
    4d7e: ee01 2a10    	vmov	s2, r2
    4d82: ee21 1a2b    	vmul.f32	s2, s2, s23
    4d86: ee21 1a2f    	vmul.f32	s2, s2, s31
    4d8a: fe51 ea81    	vselvs.f32	s29, s3, s2
    4d8e: e02f         	b	0x4df0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x5a0> @ imm = #0x5e
    4d90: eef0 8a49    	vmov.f32	s17, s18
    4d94: eef0 fa49    	vmov.f32	s31, s18
    4d98: eef0 ca49    	vmov.f32	s25, s18
    4d9c: eef0 ea49    	vmov.f32	s29, s18
    4da0: e026         	b	0x4df0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x5a0> @ imm = #0x4c
    4da2: bf00         	nop
    4da4: 00 00 80 7f  	.word	0x7f800000
    4da8: eec0 8a2b    	vdiv.f32	s17, s0, s23
    4dac: eef0 ea4a    	vmov.f32	s29, s20
    4db0: ee28 1aa8    	vmul.f32	s2, s17, s17
    4db4: ee21 1a01    	vmul.f32	s2, s2, s2
    4db8: ee21 1a01    	vmul.f32	s2, s2, s2
    4dbc: ee61 ca01    	vmul.f32	s25, s2, s2
    4dc0: ee7c aa8a    	vadd.f32	s21, s25, s20
    4dc4: eef4 aa4a    	vcmp.f32	s21, s20
    4dc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4dcc: d009         	beq	0x4de2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x592> @ imm = #0x12
    4dce: eef1 aaea    	vsqrt.f32	s21, s21
    4dd2: eef1 aaea    	vsqrt.f32	s21, s21
    4dd6: eef1 aaea    	vsqrt.f32	s21, s21
    4dda: eef1 aaea    	vsqrt.f32	s21, s21
    4dde: eef0 ea6a    	vmov.f32	s29, s21
    4de2: eeca fa2e    	vdiv.f32	s31, s20, s29
    4de6: ee60 ea2f    	vmul.f32	s29, s0, s31
    4dea: bf00         	nop
    4dec: bf00         	nop
    4dee: bf00         	nop
    4df0: ee74 ea6e    	vsub.f32	s29, s8, s29
    4df4: ee1e 2a90    	vmov	r2, s29
    4df8: f022 4200    	bic	r2, r2, #0x80000000
    4dfc: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4e00: f6bf af22    	bge.w	0x4c48 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3f8> @ imm = #-0x1bc
    4e04: ee8e 1a8c    	vdiv.f32	s2, s29, s24
    4e08: eeb0 1ac1    	vabs.f32	s2, s2
    4e0c: fec1 aa09    	vmaxnm.f32	s21, s2, s18
    4e10: eef4 aa66    	vcmp.f32	s21, s13
    4e14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e18: f57f af16    	bpl.w	0x4c48 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x3f8> @ imm = #-0x1d4
    4e1c: eebf ea00    	vmov.f32	s28, #-1.000000e+00
    4e20: 2c10         	cmp	r4, #0x10
    4e22: d00c         	beq	0x4e3e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x5ee> @ imm = #0x18
    4e24: eeb0 ba44    	vmov.f32	s22, s8
    4e28: eeb0 1a40    	vmov.f32	s2, s0
    4e2c: eef0 6a6a    	vmov.f32	s13, s21
    4e30: f1be 0f10    	cmp.w	lr, #0x10
    4e34: f108 0801    	add.w	r8, r8, #0x1
    4e38: 4674         	mov	r4, lr
    4e3a: f77f ae1d    	ble.w	0x4a78 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x228> @ imm = #-0x3c6
    4e3e: f64d 3011    	movw	r0, #0xdb11
    4e42: f64d 7210    	movw	r2, #0xdf10
    4e46: f2c0 0000    	movt	r0, #0x0
    4e4a: f2c0 0200    	movt	r2, #0x0
    4e4e: 2128         	movs	r1, #0x28
    4e50: f007 f81c    	bl	0xbe8c <core::panicking::panic> @ imm = #0x7038
    4e54: bf00         	nop
    4e56: bf00         	nop
    4e58: ed9f 0a2c    	vldr	s0, [pc, #176]          @ 0x4f0c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6bc>
    4e5c: f108 0801    	add.w	r8, r8, #0x1
    4e60: eef4 6a40    	vcmp.f32	s13, s0
    4e64: ed81 ba01    	vstr	s22, [r1, #4]
    4e68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e6c: f04f 0100    	mov.w	r1, #0x0
    4e70: d809         	bhi	0x4e86 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x636> @ imm = #0x12
    4e72: eeb0 0acf    	vabs.f32	s0, s30
    4e76: ed9f 1a27    	vldr	s2, [pc, #156]          @ 0x4f14 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x6c4>
    4e7a: eeb4 0a41    	vcmp.f32	s0, s2
    4e7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e82: bf98         	it	ls
    4e84: 2101         	movls	r1, #0x1
    4e86: ed9d 1a01    	vldr	s2, [sp, #4]
    4e8a: e008         	b	0x4e9e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x64e> @ imm = #0x10
    4e8c: bf00         	nop
    4e8e: bf00         	nop
    4e90: 2100         	movs	r1, #0x0
    4e92: eeb4 4a40    	vcmp.f32	s8, s0
    4e96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e9a: bf98         	it	ls
    4e9c: 2101         	movls	r1, #0x1
    4e9e: ed83 1a00    	vstr	s2, [r3]
    4ea2: edc0 6a00    	vstr	s13, [r0]
    4ea6: f880 8004    	strb.w	r8, [r0, #0x4]
    4eaa: 7141         	strb	r1, [r0, #0x5]
    4eac: b006         	add	sp, #0x18
    4eae: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    4eb2: f85d 8b04    	ldr	r8, [sp], #4
    4eb6: bdf0         	pop	{r4, r5, r6, r7, pc}
    4eb8: 2100         	movs	r1, #0x0
    4eba: e7f2         	b	0x4ea2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x652> @ imm = #-0x1c
    4ebc: bf00         	nop
    4ebe: bf00         	nop
    4ec0: 2100         	movs	r1, #0x0
    4ec2: e7ec         	b	0x4e9e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>+0x64e> @ imm = #-0x28
    4ec4: bf00         	nop
    4ec6: bf00         	nop
    4ec8: f64d 207b    	movw	r0, #0xda7b
    4ecc: f64d 7220    	movw	r2, #0xdf20
    4ed0: f2c0 0000    	movt	r0, #0x0
    4ed4: f2c0 0200    	movt	r2, #0x0
    4ed8: a902         	add	r1, sp, #0x8
    4eda: f006 ffd3    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0x6fa6
    4ede: bf00         	nop
    4ee0: a6 9b c4 3b  	.word	0x3bc49ba6
    4ee4: 7c f2 b0 ba  	.word	0xbab0f27c
    4ee8: 53 4a a1 43  	.word	0x43a14a53
    4eec: a6 9b c4 bb  	.word	0xbbc49ba6
    4ef0: 79 78 b0 43  	.word	0x43b07879
    4ef4: 00 00 c0 7f  	.word	0x7fc00000
    4ef8: 79 61 2e c3  	.word	0xc32e6179
    4efc: 00 00 00 80  	.word	0x80000000
    4f00: ab aa a0 38  	.word	0x38a0aaab
    4f04: 5e 95 e1 bc  	.word	0xbce1955e
    4f08: 08 e5 3c 1e  	.word	0x1e3ce508
    4f0c: 17 b7 d1 38  	.word	0x38d1b717
    4f10: bd 37 06 36  	.word	0x360637bd
    4f14: ac c5 a7 37  	.word	0x37a7c5ac

00004f18 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>>:
    4f18: b5f0         	push	{r4, r5, r6, r7, lr}
    4f1a: af03         	add	r7, sp, #0xc
    4f1c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    4f20: b081         	sub	sp, #0x4
    4f22: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    4f26: b090         	sub	sp, #0x40
    4f28: ed93 1a06    	vldr	s2, [r3, #24]
    4f2c: ed93 2a07    	vldr	s4, [r3, #28]
    4f30: eeb4 1a42    	vcmp.f32	s2, s4
    4f34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4f38: f200 86a2    	bhi.w	0x5c80 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd68> @ imm = #0xd44
    4f3c: ed91 4a02    	vldr	s8, [r1, #8]
    4f40: edd1 ba03    	vldr	s23, [r1, #12]
    4f44: eeb7 0ac4    	vcvt.f64.f32	d0, s8
    4f48: ed93 ea05    	vldr	s28, [r3, #20]
    4f4c: ed9f 5b5a    	vldr	d5, [pc, #360]          @ 0x50b8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x1a0>
    4f50: ed8d ea05    	vstr	s28, [sp, #20]
    4f54: eddf 7ad6    	vldr	s15, [pc, #856]         @ 0x52b0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x398>
    4f58: ed92 3b12    	vldr	d3, [r2, #72]
    4f5c: ed8d 4a09    	vstr	s8, [sp, #36]
    4f60: ed8d 3b06    	vstr	d3, [sp, #24]
    4f64: ee00 3b05    	vmla.f64	d3, d0, d5
    4f68: eeb7 0aeb    	vcvt.f64.f32	d0, s23
    4f6c: ed9f 5b54    	vldr	d5, [pc, #336]          @ 0x50c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x1a8>
    4f70: ee00 3b05    	vmla.f64	d3, d0, d5
    4f74: ed9f 5acf    	vldr	s10, [pc, #828]         @ 0x52b4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x39c>
    4f78: ed92 0b04    	vldr	d0, [r2, #16]
    4f7c: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    4f80: eeb7 dbc0    	vcvt.f32.f64	s26, d0
    4f84: ee03 ea05    	vmla.f32	s28, s6, s10
    4f88: ed9f 0acb    	vldr	s0, [pc, #812]          @ 0x52b8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3a0>
    4f8c: ed8d da04    	vstr	s26, [sp, #16]
    4f90: ee04 da00    	vmla.f32	s26, s8, s0
    4f94: ee0b daa7    	vmla.f32	s26, s23, s15
    4f98: eeb4 1a4e    	vcmp.f32	s2, s28
    4f9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fa0: fe31 3a0e    	vselgt.f32	s6, s2, s28
    4fa4: eeb0 0acd    	vabs.f32	s0, s26
    4fa8: eeb4 3a42    	vcmp.f32	s6, s4
    4fac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fb0: fe32 fa03    	vselgt.f32	s30, s4, s6
    4fb4: ed9f 3ac1    	vldr	s6, [pc, #772]          @ 0x52bc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3a4>
    4fb8: eeb4 0a43    	vcmp.f32	s0, s6
    4fbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fc0: da16         	bge	0x4ff0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd8> @ imm = #0x2c
    4fc2: ed9f 3abf    	vldr	s6, [pc, #764]          @ 0x52c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3a8>
    4fc6: eeb4 0a43    	vcmp.f32	s0, s6
    4fca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fce: d91b         	bls	0x5008 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xf0> @ imm = #0x36
    4fd0: ed9f 3abc    	vldr	s6, [pc, #752]          @ 0x52c4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3ac>
    4fd4: eeb4 0a43    	vcmp.f32	s0, s6
    4fd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fdc: d918         	bls	0x5010 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xf8> @ imm = #0x30
    4fde: ed9f 3aba    	vldr	s6, [pc, #744]          @ 0x52c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3b0>
    4fe2: ee30 3a03    	vadd.f32	s6, s0, s6
    4fe6: ed9f 4ab9    	vldr	s8, [pc, #740]          @ 0x52cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3b4>
    4fea: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    4fee: e017         	b	0x5020 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x108> @ imm = #0x2e
    4ff0: eddf fab7    	vldr	s31, [pc, #732]         @ 0x52d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3b8>
    4ff4: eef0 aa6f    	vmov.f32	s21, s31
    4ff8: eeb0 aa6f    	vmov.f32	s20, s31
    4ffc: eef0 8a6f    	vmov.f32	s17, s31
    5000: eeb0 0a6f    	vmov.f32	s0, s31
    5004: e08b         	b	0x511e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x206> @ imm = #0x116
    5006: bf00         	nop
    5008: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    500c: e00a         	b	0x5024 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x10c> @ imm = #0x14
    500e: bf00         	nop
    5010: ed9f 3ab0    	vldr	s6, [pc, #704]          @ 0x52d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3bc>
    5014: ee30 3a03    	vadd.f32	s6, s0, s6
    5018: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    501c: ed9f 4aae    	vldr	s8, [pc, #696]          @ 0x52d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3c0>
    5020: ee03 0a04    	vmla.f32	s0, s6, s8
    5024: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    5028: eddf faa9    	vldr	s31, [pc, #676]         @ 0x52d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3b8>
    502c: ee33 0a40    	vsub.f32	s0, s6, s0
    5030: fec0 8a2f    	vmaxnm.f32	s17, s0, s31
    5034: eef5 8a40    	vcmp.f32	s17, #0
    5038: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    503c: d944         	bls	0x50c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x1b0> @ imm = #0x88
    503e: eeb0 0acf    	vabs.f32	s0, s30
    5042: eeb4 0a68    	vcmp.f32	s0, s17
    5046: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    504a: dd45         	ble	0x50d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x1c0> @ imm = #0x8a
    504c: eec8 fa80    	vdiv.f32	s31, s17, s0
    5050: ee2f 0aaf    	vmul.f32	s0, s31, s31
    5054: ee20 0a00    	vmul.f32	s0, s0, s0
    5058: ee20 0a00    	vmul.f32	s0, s0, s0
    505c: ee20 aa00    	vmul.f32	s20, s0, s0
    5060: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    5064: ee3a 4a00    	vadd.f32	s8, s20, s0
    5068: eeb0 3a40    	vmov.f32	s6, s0
    506c: eeb4 4a40    	vcmp.f32	s8, s0
    5070: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5074: d009         	beq	0x508a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x172> @ imm = #0x12
    5076: eeb1 4ac4    	vsqrt.f32	s8, s8
    507a: eeb1 4ac4    	vsqrt.f32	s8, s8
    507e: eeb1 4ac4    	vsqrt.f32	s8, s8
    5082: eeb1 4ac4    	vsqrt.f32	s8, s8
    5086: eeb0 3a44    	vmov.f32	s6, s8
    508a: ee1f 3a10    	vmov	r3, s30
    508e: f04f 567e    	mov.w	r6, #0x3f800000
    5092: eec0 aa03    	vdiv.f32	s21, s0, s6
    5096: ed9f 3a91    	vldr	s6, [pc, #580]          @ 0x52dc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3c4>
    509a: eeb4 fa4f    	vcmp.f32	s30, s30
    509e: f366 031e    	bfi	r3, r6, #0, #31
    50a2: ee04 3a10    	vmov	s8, r3
    50a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    50aa: ee24 0a28    	vmul.f32	s0, s8, s17
    50ae: ee20 0a2a    	vmul.f32	s0, s0, s21
    50b2: fe13 0a00    	vselvs.f32	s0, s6, s0
    50b6: e032         	b	0x511e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x206> @ imm = #0x64
    50b8: 9c 9e 91 65  	.word	0x65919e9c
    50bc: 97 57 e8 bf  	.word	0xbfe85797
    50c0: 76 43 71 a5  	.word	0xa5714376
    50c4: f8 73 e2 3f  	.word	0x3fe273f8
    50c8: eef0 aa6f    	vmov.f32	s21, s31
    50cc: eeb0 aa6f    	vmov.f32	s20, s31
    50d0: eeb0 0a6f    	vmov.f32	s0, s31
    50d4: e023         	b	0x511e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x206> @ imm = #0x46
    50d6: bf00         	nop
    50d8: eecf fa28    	vdiv.f32	s31, s30, s17
    50dc: ee2f 0aaf    	vmul.f32	s0, s31, s31
    50e0: ee20 0a00    	vmul.f32	s0, s0, s0
    50e4: ee20 0a00    	vmul.f32	s0, s0, s0
    50e8: ee20 aa00    	vmul.f32	s20, s0, s0
    50ec: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    50f0: ee3a 3a00    	vadd.f32	s6, s20, s0
    50f4: eeb0 4a40    	vmov.f32	s8, s0
    50f8: eeb4 3a40    	vcmp.f32	s6, s0
    50fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5100: d009         	beq	0x5116 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x1fe> @ imm = #0x12
    5102: eeb1 3ac3    	vsqrt.f32	s6, s6
    5106: eeb1 3ac3    	vsqrt.f32	s6, s6
    510a: eeb1 3ac3    	vsqrt.f32	s6, s6
    510e: eeb1 3ac3    	vsqrt.f32	s6, s6
    5112: eeb0 4a43    	vmov.f32	s8, s6
    5116: eec0 aa04    	vdiv.f32	s21, s0, s8
    511a: ee2f 0a2a    	vmul.f32	s0, s30, s21
    511e: ed9d 3a09    	vldr	s6, [sp, #36]
    5122: ee33 5a40    	vsub.f32	s10, s6, s0
    5126: ee15 3a10    	vmov	r3, s10
    512a: f023 4300    	bic	r3, r3, #0x80000000
    512e: f1b3 4fff    	cmp.w	r3, #0x7f800000
    5132: db05         	blt	0x5140 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x228> @ imm = #0xa
    5134: ed9f 0aec    	vldr	s0, [pc, #944]          @ 0x54e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5d0>
    5138: e00c         	b	0x5154 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x23c> @ imm = #0x18
    513a: bf00         	nop
    513c: bf00         	nop
    513e: bf00         	nop
    5140: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    5144: ed9f 3a62    	vldr	s6, [pc, #392]          @ 0x52d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3b8>
    5148: ee85 0a00    	vdiv.f32	s0, s10, s0
    514c: eeb0 0ac0    	vabs.f32	s0, s0
    5150: fe80 0a03    	vmaxnm.f32	s0, s0, s6
    5154: ed92 3b06    	vldr	d3, [r2, #24]
    5158: ed9f 4ae4    	vldr	s8, [pc, #912]          @ 0x54ec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5d4>
    515c: eeb6 ca00    	vmov.f32	s24, #5.000000e-01
    5160: eeb7 9bc3    	vcvt.f32.f64	s18, d3
    5164: ed9d 3a09    	vldr	s6, [sp, #36]
    5168: ed8d 9a03    	vstr	s18, [sp, #12]
    516c: ee03 9a27    	vmla.f32	s18, s6, s15
    5170: ed9f 3adf    	vldr	s6, [pc, #892]          @ 0x54f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5d8>
    5174: ee8b 3a83    	vdiv.f32	s6, s23, s6
    5178: ee0b 9a84    	vmla.f32	s18, s23, s8
    517c: eeb0 4ac3    	vabs.f32	s8, s6
    5180: eeb4 4a4c    	vcmp.f32	s8, s24
    5184: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5188: f280 80aa    	bge.w	0x52e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3c8> @ imm = #0x154
    518c: ed9f 4ad9    	vldr	s8, [pc, #868]          @ 0x54f4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5dc>
    5190: eefe 3a00    	vmov.f32	s7, #-5.000000e-01
    5194: eeb4 4a43    	vcmp.f32	s8, s6
    5198: ed9f 6ad7    	vldr	s12, [pc, #860]         @ 0x54f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5e0>
    519c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51a0: ed9f 7ad6    	vldr	s14, [pc, #856]         @ 0x54fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5e4>
    51a4: fe34 3a03    	vselgt.f32	s6, s8, s6
    51a8: ed9f 8ad5    	vldr	s16, [pc, #852]         @ 0x5500 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5e8>
    51ac: ee8b 8a88    	vdiv.f32	s16, s23, s16
    51b0: eeb4 3a46    	vcmp.f32	s6, s12
    51b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51b8: fe36 3a03    	vselgt.f32	s6, s12, s6
    51bc: ee63 0a07    	vmul.f32	s1, s6, s14
    51c0: ee70 4a8c    	vadd.f32	s9, s1, s24
    51c4: eef5 0a40    	vcmp.f32	s1, #0
    51c8: ee70 6aa3    	vadd.f32	s13, s1, s7
    51cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51d0: eefd 4ae4    	vcvt.s32.f32	s9, s9
    51d4: eefd 6ae6    	vcvt.s32.f32	s13, s13
    51d8: eeb4 4a48    	vcmp.f32	s8, s16
    51dc: ee14 3a90    	vmov	r3, s9
    51e0: ee16 2a90    	vmov	r2, s13
    51e4: bfa8         	it	ge
    51e6: 461a         	movge	r2, r3
    51e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51ec: fe34 4a08    	vselgt.f32	s8, s8, s16
    51f0: eeb4 4a46    	vcmp.f32	s8, s12
    51f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51f8: fe36 4a04    	vselgt.f32	s8, s12, s8
    51fc: ee24 6a07    	vmul.f32	s12, s8, s14
    5200: ee36 7a23    	vadd.f32	s14, s12, s7
    5204: eeb5 6a40    	vcmp.f32	s12, #0
    5208: ee76 0a0c    	vadd.f32	s1, s12, s24
    520c: ee03 2a90    	vmov	s7, r2
    5210: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5214: eebd 7ac7    	vcvt.s32.f32	s14, s14
    5218: ed9f 6aba    	vldr	s12, [pc, #744]         @ 0x5504 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5ec>
    521c: eefd 0ae0    	vcvt.s32.f32	s1, s1
    5220: eef8 3ae3    	vcvt.f32.s32	s7, s7
    5224: ee17 3a10    	vmov	r3, s14
    5228: ee10 6a90    	vmov	r6, s1
    522c: bfa8         	it	ge
    522e: 4633         	movge	r3, r6
    5230: ee03 3ac6    	vmls.f32	s6, s7, s12
    5234: f04f 567e    	mov.w	r6, #0x3f800000
    5238: ee07 3a10    	vmov	s14, r3
    523c: eb06 52c2    	add.w	r2, r6, r2, lsl #23
    5240: eb06 53c3    	add.w	r3, r6, r3, lsl #23
    5244: eeb8 7ac7    	vcvt.f32.s32	s14, s14
    5248: ee07 4a46    	vmls.f32	s8, s14, s12
    524c: ed9f 6aae    	vldr	s12, [pc, #696]         @ 0x5508 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5f0>
    5250: ed9f 7aae    	vldr	s14, [pc, #696]         @ 0x550c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5f4>
    5254: eef0 0a46    	vmov.f32	s1, s12
    5258: ee43 0a07    	vmla.f32	s1, s6, s14
    525c: ee04 6a07    	vmla.f32	s12, s8, s14
    5260: ed9f 7aab    	vldr	s14, [pc, #684]         @ 0x5510 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5f8>
    5264: eef0 3a47    	vmov.f32	s7, s14
    5268: ee64 4a04    	vmul.f32	s9, s8, s8
    526c: ee43 3a20    	vmla.f32	s7, s6, s1
    5270: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    5274: ee04 7a06    	vmla.f32	s14, s8, s12
    5278: eeb0 6a4c    	vmov.f32	s12, s24
    527c: ee03 6a23    	vmla.f32	s12, s6, s7
    5280: eef0 3a4c    	vmov.f32	s7, s24
    5284: ee44 3a07    	vmla.f32	s7, s8, s14
    5288: ee23 7a03    	vmul.f32	s14, s6, s6
    528c: ee33 3a20    	vadd.f32	s6, s6, s1
    5290: ee34 4a20    	vadd.f32	s8, s8, s1
    5294: ee07 3a06    	vmla.f32	s6, s14, s12
    5298: ee06 2a10    	vmov	s12, r2
    529c: ee07 3a10    	vmov	s14, r3
    52a0: ee04 4aa3    	vmla.f32	s8, s9, s7
    52a4: ee63 4a06    	vmul.f32	s9, s6, s12
    52a8: ee24 4a07    	vmul.f32	s8, s8, s14
    52ac: e067         	b	0x537e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x466> @ imm = #0xce
    52ae: bf00         	nop
    52b0: 46 af b3 38  	.word	0x38b3af46
    52b4: 79 61 2e 43  	.word	0x432e6179
    52b8: b7 63 f7 b8  	.word	0xb8f763b7
    52bc: 0a d7 23 3d  	.word	0x3d23d70a
    52c0: 7c f2 b0 3a  	.word	0x3ab0f27c
    52c4: a6 9b c4 3b  	.word	0x3bc49ba6
    52c8: a6 9b c4 bb  	.word	0xbbc49ba6
    52cc: 79 78 b0 43  	.word	0x43b07879
    52d0: 00 00 00 00  	.word	0x00000000
    52d4: 7c f2 b0 ba  	.word	0xbab0f27c
    52d8: 53 4a a1 43  	.word	0x43a14a53
    52dc: 00 00 c0 7f  	.word	0x7fc00000
    52e0: eeb4 4a44    	vcmp.f32	s8, s8
    52e4: ed9f 6a84    	vldr	s12, [pc, #528]         @ 0x54f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5e0>
    52e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    52ec: eeb0 7a4c    	vmov.f32	s14, s24
    52f0: eddf 0aed    	vldr	s1, [pc, #948]          @ 0x56a8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x790>
    52f4: fe16 4a04    	vselvs.f32	s8, s12, s8
    52f8: f04f 527e    	mov.w	r2, #0x3f800000
    52fc: eeb4 6a44    	vcmp.f32	s12, s8
    5300: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5304: fe34 4a06    	vselgt.f32	s8, s8, s12
    5308: eeb4 4a46    	vcmp.f32	s8, s12
    530c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5310: eeb5 3a40    	vcmp.f32	s6, #0
    5314: fe36 4a04    	vselgt.f32	s8, s12, s8
    5318: ed9f 6a78    	vldr	s12, [pc, #480]         @ 0x54fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5e4>
    531c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5320: ee04 7a06    	vmla.f32	s14, s8, s12
    5324: eebd 6ac7    	vcvt.s32.f32	s12, s14
    5328: eeb8 7ac6    	vcvt.f32.s32	s14, s12
    532c: ee16 3a10    	vmov	r3, s12
    5330: ee07 4a20    	vmla.f32	s8, s14, s1
    5334: ed9f 7a75    	vldr	s14, [pc, #468]         @ 0x550c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5f4>
    5338: eddf 0a73    	vldr	s1, [pc, #460]          @ 0x5508 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5f0>
    533c: eb02 52c3    	add.w	r2, r2, r3, lsl #23
    5340: ee06 2a10    	vmov	s12, r2
    5344: ee44 0a07    	vmla.f32	s1, s8, s14
    5348: ed9f 7a71    	vldr	s14, [pc, #452]         @ 0x5510 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5f8>
    534c: ee64 3a04    	vmul.f32	s7, s8, s8
    5350: ee04 7a20    	vmla.f32	s14, s8, s1
    5354: eef0 0a4c    	vmov.f32	s1, s24
    5358: ee44 0a07    	vmla.f32	s1, s8, s14
    535c: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    5360: ee34 4a07    	vadd.f32	s8, s8, s14
    5364: ee03 4aa0    	vmla.f32	s8, s7, s1
    5368: ee24 6a06    	vmul.f32	s12, s8, s12
    536c: ee87 4a06    	vdiv.f32	s8, s14, s12
    5370: eef0 4a46    	vmov.f32	s9, s12
    5374: bfbc         	itt	lt
    5376: eef0 4a44    	vmovlt.f32	s9, s8
    537a: eeb0 4a46    	vmovlt.f32	s8, s12
    537e: ee34 3ac4    	vsub.f32	s6, s9, s8
    5382: ed9f 6adb    	vldr	s12, [pc, #876]         @ 0x56f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x7d8>
    5386: ee13 9a06    	vnmls.f32	s18, s6, s12
    538a: ed9f 6a57    	vldr	s12, [pc, #348]         @ 0x54e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5d0>
    538e: ee19 2a10    	vmov	r2, s18
    5392: f022 4200    	bic	r2, r2, #0x80000000
    5396: f1b2 4fff    	cmp.w	r2, #0x7f800000
    539a: da17         	bge	0x53cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x4b4> @ imm = #0x2e
    539c: ed9f 3ad5    	vldr	s6, [pc, #852]          @ 0x56f4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x7dc>
    53a0: eeb4 0a40    	vcmp.f32	s0, s0
    53a4: ee89 3a03    	vdiv.f32	s6, s18, s6
    53a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53ac: eeb0 3ac3    	vabs.f32	s6, s6
    53b0: fe13 0a00    	vselvs.f32	s0, s6, s0
    53b4: eeb4 3a43    	vcmp.f32	s6, s6
    53b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53bc: fe10 3a03    	vselvs.f32	s6, s0, s6
    53c0: eeb4 0a43    	vcmp.f32	s0, s6
    53c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53c8: fe30 6a03    	vselgt.f32	s12, s0, s6
    53cc: eef7 ea00    	vmov.f32	s29, #1.000000e+00
    53d0: eeff 2a00    	vmov.f32	s5, #-1.000000e+00
    53d4: f04f 0a00    	mov.w	r10, #0x0
    53d8: f04f 0b00    	mov.w	r11, #0x0
    53dc: ed5f da44    	vldr	s27, [pc, #-272]        @ 0x52d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3b8>
    53e0: f04f 537e    	mov.w	r3, #0x3f800000
    53e4: eddf 5ac4    	vldr	s11, [pc, #784]         @ 0x56f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x7e0>
    53e8: f10d 0828    	add.w	r8, sp, #0x28
    53ec: eddf 9ac3    	vldr	s19, [pc, #780]         @ 0x56fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x7e4>
    53f0: f10d 0930    	add.w	r9, sp, #0x30
    53f4: eddf cac2    	vldr	s25, [pc, #776]         @ 0x5700 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x7e8>
    53f8: 46d6         	mov	lr, r10
    53fa: eddf 1a3e    	vldr	s3, [pc, #248]          @ 0x54f4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5dc>
    53fe: eddf 6a3e    	vldr	s13, [pc, #248]         @ 0x54f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5e0>
    5402: eddf 3a42    	vldr	s7, [pc, #264]          @ 0x550c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5f4>
    5406: ed9f 8a40    	vldr	s16, [pc, #256]         @ 0x5508 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5f0>
    540a: ed9f ba41    	vldr	s22, [pc, #260]         @ 0x5510 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5f8>
    540e: 2500         	movs	r5, #0x0
    5410: eeb0 0a6d    	vmov.f32	s0, s27
    5414: eeb0 3a6d    	vmov.f32	s6, s27
    5418: f1ba 0f10    	cmp.w	r10, #0x10
    541c: bf18         	it	ne
    541e: f10e 0e01    	addne.w	lr, lr, #0x1
    5422: eeb4 ea41    	vcmp.f32	s28, s2
    5426: 2400         	movs	r4, #0x0
    5428: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    542c: eeb4 ea42    	vcmp.f32	s28, s4
    5430: bfc8         	it	gt
    5432: 2501         	movgt	r5, #0x1
    5434: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5438: eef5 8a40    	vcmp.f32	s17, #0
    543c: bf48         	it	mi
    543e: 2401         	movmi	r4, #0x1
    5440: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5444: d926         	bls	0x5494 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x57c> @ imm = #0x4c
    5446: ee3a 0a2e    	vadd.f32	s0, s20, s29
    544a: eeb0 3acf    	vabs.f32	s6, s30
    544e: ee8a 0a80    	vdiv.f32	s0, s21, s0
    5452: eeb4 3a68    	vcmp.f32	s6, s17
    5456: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    545a: dd15         	ble	0x5488 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x570> @ imm = #0x2a
    545c: ee1f 2a10    	vmov	r2, s30
    5460: ee6a 0a2f    	vmul.f32	s1, s20, s31
    5464: eeb4 fa4f    	vcmp.f32	s30, s30
    5468: ed1f 7a64    	vldr	s14, [pc, #-400]        @ 0x52dc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3c4>
    546c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5470: f363 021e    	bfi	r2, r3, #0, #31
    5474: ee03 2a10    	vmov	s6, r2
    5478: ee23 3a00    	vmul.f32	s6, s6, s0
    547c: ee20 0a80    	vmul.f32	s0, s1, s0
    5480: fe17 3a03    	vselvs.f32	s6, s14, s6
    5484: e006         	b	0x5494 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x57c> @ imm = #0xc
    5486: bf00         	nop
    5488: ee2f 3a0a    	vmul.f32	s6, s30, s20
    548c: ee83 3a28    	vdiv.f32	s6, s6, s17
    5490: ee23 3a00    	vmul.f32	s6, s6, s0
    5494: eeb5 da40    	vcmp.f32	s26, #0
    5498: eef0 0a6d    	vmov.f32	s1, s27
    549c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54a0: bf48         	it	mi
    54a2: eef0 0a62    	vmovmi.f32	s1, s5
    54a6: eeb0 aacd    	vabs.f32	s20, s26
    54aa: eeb0 da6d    	vmov.f32	s26, s27
    54ae: fe7e 0aa0    	vselgt.f32	s1, s29, s1
    54b2: ed5f 2a7e    	vldr	s5, [pc, #-504]         @ 0x52bc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3a4>
    54b6: eeb4 aa62    	vcmp.f32	s20, s5
    54ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54be: da31         	bge	0x5524 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x60c> @ imm = #0x62
    54c0: eeb0 da6d    	vmov.f32	s26, s27
    54c4: ed1f 7a82    	vldr	s14, [pc, #-520]        @ 0x52c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3a8>
    54c8: eeb4 aa47    	vcmp.f32	s20, s14
    54cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54d0: d926         	bls	0x5520 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x608> @ imm = #0x4c
    54d2: ed1f 7a84    	vldr	s14, [pc, #-528]        @ 0x52c4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3ac>
    54d6: eeb4 aa47    	vcmp.f32	s20, s14
    54da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54de: d91b         	bls	0x5518 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x600> @ imm = #0x36
    54e0: ed1f 7a86    	vldr	s14, [pc, #-536]        @ 0x52cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3b4>
    54e4: e01a         	b	0x551c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x604> @ imm = #0x34
    54e6: bf00         	nop
    54e8: 00 00 80 7f  	.word	0x7f800000
    54ec: 50 69 15 b9  	.word	0xb9156950
    54f0: f5 4a 39 3d  	.word	0x3d394af5
    54f4: 00 00 a0 c2  	.word	0xc2a00000
    54f8: 00 00 a0 42  	.word	0x42a00000
    54fc: 3b aa b8 3f  	.word	0x3fb8aa3b
    5500: f5 4a 39 bd  	.word	0xbd394af5
    5504: 18 72 31 3f  	.word	0x3f317218
    5508: ab aa 2a 3d  	.word	0x3d2aaaab
    550c: 89 88 08 3c  	.word	0x3c088889
    5510: ab aa 2a 3e  	.word	0x3e2aaaab
    5514: 00 bf 00 bf  	.word	0xbf00bf00
    5518: ed1f 7a91    	vldr	s14, [pc, #-580]        @ 0x52d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x3c0>
    551c: ee20 da87    	vmul.f32	s26, s1, s14
    5520: eeb1 da4d    	vneg.f32	s26, s26
    5524: ea15 0204    	ands.w	r2, r5, r4
    5528: ee23 3a0d    	vmul.f32	s6, s6, s26
    552c: fe49 0aa5    	vseleq.f32	s1, s19, s11
    5530: ed9f 7ade    	vldr	s14, [pc, #888]         @ 0x58ac <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x994>
    5534: ee34 4a84    	vadd.f32	s8, s9, s8
    5538: 464a         	mov	r2, r9
    553a: f64a 7646    	movw	r6, #0xaf46
    553e: ee20 0a20    	vmul.f32	s0, s0, s1
    5542: f6cb 06b3    	movt	r6, #0xb8b3
    5546: ee63 0a07    	vmul.f32	s1, s6, s14
    554a: ed9f 7ad9    	vldr	s14, [pc, #868]         @ 0x58b0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x998>
    554e: ee40 0a07    	vmla.f32	s1, s0, s14
    5552: ed9f 7a67    	vldr	s14, [pc, #412]         @ 0x56f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x7d8>
    5556: ee24 4a07    	vmul.f32	s8, s8, s14
    555a: ed9f 7ad6    	vldr	s14, [pc, #856]         @ 0x58b4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x99c>
    555e: ee20 0a2c    	vmul.f32	s0, s0, s25
    5562: ee03 0a67    	vmls.f32	s0, s6, s15
    5566: ed1f 3a1e    	vldr	s6, [pc, #-120]         @ 0x54f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x5d8>
    556a: ee84 3a03    	vdiv.f32	s6, s8, s6
    556e: ee70 0aae    	vadd.f32	s1, s1, s29
    5572: ed8d 0a0d    	vstr	s0, [sp, #52]
    5576: ed9f 0ad0    	vldr	s0, [pc, #832]          @ 0x58b8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x9a0>
    557a: ee33 0a00    	vadd.f32	s0, s6, s0
    557e: edcd 0a0c    	vstr	s1, [sp, #48]
    5582: eeb0 4ae0    	vabs.f32	s8, s1
    5586: ed8d 0a0b    	vstr	s0, [sp, #44]
    558a: eeb4 4a67    	vcmp.f32	s8, s15
    558e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5592: bf48         	it	mi
    5594: 4642         	movmi	r2, r8
    5596: 960a         	str	r6, [sp, #0x28]
    5598: f8dd c030    	ldr.w	r12, [sp, #0x30]
    559c: e9d2 5400    	ldrd	r5, r4, [r2]
    55a0: 950c         	str	r5, [sp, #0x30]
    55a2: 9d0d         	ldr	r5, [sp, #0x34]
    55a4: 940d         	str	r4, [sp, #0x34]
    55a6: eef4 7a44    	vcmp.f32	s15, s8
    55aa: e9c2 c500    	strd	r12, r5, [r2]
    55ae: eeb1 4a45    	vneg.f32	s8, s10
    55b2: eeb1 5a49    	vneg.f32	s10, s18
    55b6: ed9d 0a0c    	vldr	s0, [sp, #48]
    55ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55be: ee10 2a10    	vmov	r2, s0
    55c2: fe35 3a04    	vselgt.f32	s6, s10, s8
    55c6: fe34 4a05    	vselgt.f32	s8, s8, s10
    55ca: f022 4200    	bic	r2, r2, #0x80000000
    55ce: f1b2 4fff    	cmp.w	r2, #0x7f800000
    55d2: f280 8349    	bge.w	0x5c68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd50> @ imm = #0x692
    55d6: eeb0 5ac0    	vabs.f32	s10, s0
    55da: eeb4 5a47    	vcmp.f32	s10, s14
    55de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55e2: f100 8341    	bmi.w	0x5c68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd50> @ imm = #0x682
    55e6: ed9d 5a0a    	vldr	s10, [sp, #40]
    55ea: eddd 4a0b    	vldr	s9, [sp, #44]
    55ee: eec5 0a00    	vdiv.f32	s1, s10, s0
    55f2: ed9d 5a0d    	vldr	s10, [sp, #52]
    55f6: ee40 4ac5    	vmls.f32	s9, s1, s10
    55fa: edcd 4a0b    	vstr	s9, [sp, #44]
    55fe: 9a0b         	ldr	r2, [sp, #0x2c]
    5600: f022 4400    	bic	r4, r2, #0x80000000
    5604: f1b4 4fff    	cmp.w	r4, #0x7f800000
    5608: f280 832e    	bge.w	0x5c68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd50> @ imm = #0x65c
    560c: ee04 2a90    	vmov	s9, r2
    5610: eeb0 9ae4    	vabs.f32	s18, s9
    5614: eeb4 9a47    	vcmp.f32	s18, s14
    5618: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    561c: f100 8324    	bmi.w	0x5c68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd50> @ imm = #0x648
    5620: ee00 4ac3    	vmls.f32	s8, s1, s6
    5624: eddd 0a09    	vldr	s1, [sp, #36]
    5628: eef0 0ae0    	vabs.f32	s1, s1
    562c: ed8d 6a02    	vstr	s12, [sp, #8]
    5630: eef4 0a60    	vcmp.f32	s1, s1
    5634: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5638: eec4 9a24    	vdiv.f32	s19, s8, s9
    563c: fe1e 4aa0    	vselvs.f32	s8, s29, s1
    5640: ee05 3a69    	vmls.f32	s6, s10, s19
    5644: ed9f 5a9d    	vldr	s10, [pc, #628]         @ 0x58bc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x9a4>
    5648: eeb4 4a6e    	vcmp.f32	s8, s29
    564c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5650: fe34 4a2e    	vselgt.f32	s8, s8, s29
    5654: eec3 ca00    	vdiv.f32	s25, s6, s0
    5658: ed9f 3a99    	vldr	s6, [pc, #612]          @ 0x58c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x9a8>
    565c: ee24 4a05    	vmul.f32	s8, s8, s10
    5660: fe84 0a43    	vminnm.f32	s0, s8, s6
    5664: eeb0 4aec    	vabs.f32	s8, s25
    5668: eeb4 4a40    	vcmp.f32	s8, s0
    566c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5670: d818         	bhi	0x56a4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x78c> @ imm = #0x30
    5672: eeb0 0aeb    	vabs.f32	s0, s23
    5676: eeb4 0a40    	vcmp.f32	s0, s0
    567a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    567e: fe1e 0a80    	vselvs.f32	s0, s29, s0
    5682: eeb4 0a6e    	vcmp.f32	s0, s29
    5686: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    568a: fe30 0a2e    	vselgt.f32	s0, s0, s29
    568e: ee20 0a05    	vmul.f32	s0, s0, s10
    5692: fe80 0a43    	vminnm.f32	s0, s0, s6
    5696: eeb0 3ae9    	vabs.f32	s6, s19
    569a: eeb4 3a40    	vcmp.f32	s6, s0
    569e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56a2: d905         	bls	0x56b0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x798> @ imm = #0xa
    56a4: 2400         	movs	r4, #0x0
    56a6: e004         	b	0x56b2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x79a> @ imm = #0x8
    56a8: 18 72 31 bf  	.word	0xbf317218
    56ac: 00 bf 00 bf  	.word	0xbf00bf00
    56b0: 2401         	movs	r4, #0x1
    56b2: ed9f 0a84    	vldr	s0, [pc, #528]          @ 0x58c4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x9ac>
    56b6: ed9d 3a02    	vldr	s6, [sp, #8]
    56ba: eeb4 3a40    	vcmp.f32	s6, s0
    56be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56c2: d809         	bhi	0x56d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x7c0> @ imm = #0x12
    56c4: f1aa 0210    	sub.w	r2, r10, #0x10
    56c8: fab2 f282    	clz	r2, r2
    56cc: 0952         	lsrs	r2, r2, #0x5
    56ce: 4322         	orrs	r2, r4
    56d0: d006         	beq	0x56e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x7c8> @ imm = #0xc
    56d2: e2d2         	b	0x5c7a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd62> @ imm = #0x5a4
    56d4: bf00         	nop
    56d6: bf00         	nop
    56d8: f1ba 0f10    	cmp.w	r10, #0x10
    56dc: f000 82cc    	beq.w	0x5c78 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd60> @ imm = #0x598
    56e0: f04f 557e    	mov.w	r5, #0x3f800000
    56e4: ed8d 4a00    	vstr	s8, [sp]
    56e8: ed8d fa01    	vstr	s30, [sp, #4]
    56ec: e014         	b	0x5718 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x800> @ imm = #0x28
    56ee: bf00         	nop
    56f0: 77 cc 2b 31  	.word	0x312bcc77
    56f4: 0a d7 23 3c  	.word	0x3c23d70a
    56f8: 79 61 2e c3  	.word	0xc32e6179
    56fc: 00 00 00 80  	.word	0x80000000
    5700: c5 9f 13 3f  	.word	0x3f139fc5
    5704: 00 bf 00 bf  	.word	0xbf00bf00
    5708: eef0 ba47    	vmov.f32	s23, s14
    570c: f5a5 0500    	sub.w	r5, r5, #0x800000
    5710: f1b5 5f66    	cmp.w	r5, #0x39800000
    5714: f000 826c    	beq.w	0x5bf0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xcd8> @ imm = #0x4d8
    5718: ee04 5a10    	vmov	s8, r5
    571c: ed9d 0a09    	vldr	s0, [sp, #36]
    5720: eeb0 3a6b    	vmov.f32	s6, s23
    5724: ed9d ea05    	vldr	s28, [sp, #20]
    5728: ed9f 5b57    	vldr	d5, [pc, #348]          @ 0x5888 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x970>
    572c: ee0c 0a84    	vmla.f32	s0, s25, s8
    5730: ed9d da04    	vldr	s26, [sp, #16]
    5734: ee09 3a84    	vmla.f32	s6, s19, s8
    5738: eef0 8a6d    	vmov.f32	s17, s27
    573c: ed9d fb06    	vldr	d15, [sp, #24]
    5740: ed81 0a02    	vstr	s0, [r1, #8]
    5744: ed81 3a03    	vstr	s6, [r1, #12]
    5748: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    574c: eeb7 aac3    	vcvt.f64.f32	d10, s6
    5750: ee04 fb05    	vmla.f64	d15, d4, d5
    5754: ed9f 5aca    	vldr	s10, [pc, #808]         @ 0x5a80 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xb68>
    5758: ed9f 4b4d    	vldr	d4, [pc, #308]          @ 0x5890 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x978>
    575c: ee0a fb04    	vmla.f64	d15, d10, d4
    5760: eef0 aa6d    	vmov.f32	s21, s27
    5764: eeb0 aa6d    	vmov.f32	s20, s27
    5768: eeb7 4bcf    	vcvt.f32.f64	s8, d15
    576c: eef0 fa6d    	vmov.f32	s31, s27
    5770: ee04 ea05    	vmla.f32	s28, s8, s10
    5774: ed9f 4ac3    	vldr	s8, [pc, #780]          @ 0x5a84 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xb6c>
    5778: ee00 da04    	vmla.f32	s26, s0, s8
    577c: ee03 da27    	vmla.f32	s26, s6, s15
    5780: eeb4 1a4e    	vcmp.f32	s2, s28
    5784: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5788: fe31 5a0e    	vselgt.f32	s10, s2, s28
    578c: eeb0 4acd    	vabs.f32	s8, s26
    5790: eeb4 5a42    	vcmp.f32	s10, s4
    5794: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5798: fe32 fa05    	vselgt.f32	s30, s4, s10
    579c: ed9f 5aba    	vldr	s10, [pc, #744]         @ 0x5a88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xb70>
    57a0: eeb4 4a45    	vcmp.f32	s8, s10
    57a4: eeb0 5a6d    	vmov.f32	s10, s27
    57a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    57ac: f280 80b0    	bge.w	0x5910 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x9f8> @ imm = #0x160
    57b0: ed9f 5ab6    	vldr	s10, [pc, #728]         @ 0x5a8c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xb74>
    57b4: eeb4 4a45    	vcmp.f32	s8, s10
    57b8: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    57bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    57c0: d91c         	bls	0x57fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x8e4> @ imm = #0x38
    57c2: ed9f 5ab3    	vldr	s10, [pc, #716]         @ 0x5a90 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xb78>
    57c6: eeb4 4a45    	vcmp.f32	s8, s10
    57ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    57ce: d90b         	bls	0x57e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x8d0> @ imm = #0x16
    57d0: ed9f 5ab0    	vldr	s10, [pc, #704]         @ 0x5a94 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xb7c>
    57d4: ee34 4a05    	vadd.f32	s8, s8, s10
    57d8: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    57dc: ed9f 7aae    	vldr	s14, [pc, #696]         @ 0x5a98 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xb80>
    57e0: e00a         	b	0x57f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x8e0> @ imm = #0x14
    57e2: bf00         	nop
    57e4: bf00         	nop
    57e6: bf00         	nop
    57e8: ed9f 5aac    	vldr	s10, [pc, #688]         @ 0x5a9c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xb84>
    57ec: ee34 4a05    	vadd.f32	s8, s8, s10
    57f0: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    57f4: ed9f 7aaa    	vldr	s14, [pc, #680]         @ 0x5aa0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xb88>
    57f8: ee04 5a07    	vmla.f32	s10, s8, s14
    57fc: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    5800: ee34 4a45    	vsub.f32	s8, s8, s10
    5804: fec4 8a2d    	vmaxnm.f32	s17, s8, s27
    5808: eef5 8a40    	vcmp.f32	s17, #0
    580c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5810: d942         	bls	0x5898 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x980> @ imm = #0x84
    5812: eeb0 4acf    	vabs.f32	s8, s30
    5816: eeb4 4a68    	vcmp.f32	s8, s17
    581a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    581e: dd53         	ble	0x58c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x9b0> @ imm = #0xa6
    5820: eec8 fa84    	vdiv.f32	s31, s17, s8
    5824: eeb0 5a6e    	vmov.f32	s10, s29
    5828: ee2f 4aaf    	vmul.f32	s8, s31, s31
    582c: ee24 4a04    	vmul.f32	s8, s8, s8
    5830: ee24 4a04    	vmul.f32	s8, s8, s8
    5834: ee24 aa04    	vmul.f32	s20, s8, s8
    5838: ee3a 4a2e    	vadd.f32	s8, s20, s29
    583c: eeb4 4a6e    	vcmp.f32	s8, s29
    5840: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5844: d009         	beq	0x585a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x942> @ imm = #0x12
    5846: eeb1 4ac4    	vsqrt.f32	s8, s8
    584a: eeb1 4ac4    	vsqrt.f32	s8, s8
    584e: eeb1 4ac4    	vsqrt.f32	s8, s8
    5852: eeb1 4ac4    	vsqrt.f32	s8, s8
    5856: eeb0 5a44    	vmov.f32	s10, s8
    585a: ee1f 2a10    	vmov	r2, s30
    585e: eece aa85    	vdiv.f32	s21, s29, s10
    5862: eeb4 fa4f    	vcmp.f32	s30, s30
    5866: ed9f 5ae1    	vldr	s10, [pc, #900]         @ 0x5bec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xcd4>
    586a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    586e: f363 021e    	bfi	r2, r3, #0, #31
    5872: ee04 2a10    	vmov	s8, r2
    5876: ee24 4a28    	vmul.f32	s8, s8, s17
    587a: ee24 4a2a    	vmul.f32	s8, s8, s21
    587e: fe15 5a04    	vselvs.f32	s10, s10, s8
    5882: e045         	b	0x5910 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x9f8> @ imm = #0x8a
    5884: bf00         	nop
    5886: bf00         	nop
    5888: 9c 9e 91 65  	.word	0x65919e9c
    588c: 97 57 e8 bf  	.word	0xbfe85797
    5890: 76 43 71 a5  	.word	0xa5714376
    5894: f8 73 e2 3f  	.word	0x3fe273f8
    5898: eef0 fa6d    	vmov.f32	s31, s27
    589c: eef0 aa6d    	vmov.f32	s21, s27
    58a0: eeb0 aa6d    	vmov.f32	s20, s27
    58a4: eeb0 5a6d    	vmov.f32	s10, s27
    58a8: e032         	b	0x5910 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x9f8> @ imm = #0x64
    58aa: bf00         	nop
    58ac: b7 63 f7 38  	.word	0x38f763b7
    58b0: bb bc 42 bf  	.word	0xbf42bcbb
    58b4: 08 e5 3c 1e  	.word	0x1e3ce508
    58b8: 50 69 15 39  	.word	0x39156950
    58bc: bd 37 06 36  	.word	0x360637bd
    58c0: ac c5 a7 37  	.word	0x37a7c5ac
    58c4: 17 b7 d1 38  	.word	0x38d1b717
    58c8: eecf fa28    	vdiv.f32	s31, s30, s17
    58cc: eeb0 5a6e    	vmov.f32	s10, s29
    58d0: ee2f 4aaf    	vmul.f32	s8, s31, s31
    58d4: ee24 4a04    	vmul.f32	s8, s8, s8
    58d8: ee24 4a04    	vmul.f32	s8, s8, s8
    58dc: ee24 aa04    	vmul.f32	s20, s8, s8
    58e0: ee3a 4a2e    	vadd.f32	s8, s20, s29
    58e4: eeb4 4a6e    	vcmp.f32	s8, s29
    58e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58ec: d009         	beq	0x5902 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x9ea> @ imm = #0x12
    58ee: eeb1 4ac4    	vsqrt.f32	s8, s8
    58f2: eeb1 4ac4    	vsqrt.f32	s8, s8
    58f6: eeb1 4ac4    	vsqrt.f32	s8, s8
    58fa: eeb1 4ac4    	vsqrt.f32	s8, s8
    58fe: eeb0 5a44    	vmov.f32	s10, s8
    5902: eece aa85    	vdiv.f32	s21, s29, s10
    5906: ee2f 5a2a    	vmul.f32	s10, s30, s21
    590a: bf00         	nop
    590c: bf00         	nop
    590e: bf00         	nop
    5910: ee30 5a45    	vsub.f32	s10, s0, s10
    5914: eeb0 7a6b    	vmov.f32	s14, s23
    5918: eddf 0adf    	vldr	s1, [pc, #892]          @ 0x5c98 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd80>
    591c: ee15 2a10    	vmov	r2, s10
    5920: f022 4200    	bic	r2, r2, #0x80000000
    5924: f1b2 4fff    	cmp.w	r2, #0x7f800000
    5928: da07         	bge	0x593a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xa22> @ imm = #0xe
    592a: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    592e: ee85 4a04    	vdiv.f32	s8, s10, s8
    5932: eeb0 4ac4    	vabs.f32	s8, s8
    5936: fec4 0a2d    	vmaxnm.f32	s1, s8, s27
    593a: ed9f 4ad9    	vldr	s8, [pc, #868]          @ 0x5ca0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd88>
    593e: eef0 ba67    	vmov.f32	s23, s15
    5942: eec3 4a04    	vdiv.f32	s9, s6, s8
    5946: eeb0 4ae4    	vabs.f32	s8, s9
    594a: eeb4 4a4c    	vcmp.f32	s8, s24
    594e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5952: f280 80a9    	bge.w	0x5aa8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xb90> @ imm = #0x152
    5956: eef4 1a64    	vcmp.f32	s3, s9
    595a: eddf 7ad2    	vldr	s15, [pc, #840]         @ 0x5ca4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd8c>
    595e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5962: eefe 2a00    	vmov.f32	s5, #-5.000000e-01
    5966: eeb0 6a4b    	vmov.f32	s12, s22
    596a: fe31 4aa4    	vselgt.f32	s8, s3, s9
    596e: eeb0 ba48    	vmov.f32	s22, s16
    5972: eeb0 8a63    	vmov.f32	s16, s7
    5976: eddf 5acd    	vldr	s11, [pc, #820]         @ 0x5cac <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd94>
    597a: eef0 3a62    	vmov.f32	s7, s5
    597e: eec3 5a25    	vdiv.f32	s11, s6, s11
    5982: eeb4 4a66    	vcmp.f32	s8, s13
    5986: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    598a: fe36 4a84    	vselgt.f32	s8, s13, s8
    598e: ee64 4a27    	vmul.f32	s9, s8, s15
    5992: ee34 9a8c    	vadd.f32	s18, s9, s24
    5996: eef5 4a40    	vcmp.f32	s9, #0
    599a: ee74 2aa2    	vadd.f32	s5, s9, s5
    599e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59a2: eebd 9ac9    	vcvt.s32.f32	s18, s18
    59a6: eefd 2ae2    	vcvt.s32.f32	s5, s5
    59aa: eef4 1a65    	vcmp.f32	s3, s11
    59ae: ee19 2a10    	vmov	r2, s18
    59b2: ee12 4a90    	vmov	r4, s5
    59b6: bfa8         	it	ge
    59b8: 4614         	movge	r4, r2
    59ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59be: fe71 2aa5    	vselgt.f32	s5, s3, s11
    59c2: eef4 2a66    	vcmp.f32	s5, s13
    59c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59ca: fe76 2aa2    	vselgt.f32	s5, s13, s5
    59ce: ee62 4aa7    	vmul.f32	s9, s5, s15
    59d2: ee74 5aa3    	vadd.f32	s11, s9, s7
    59d6: eef5 4a40    	vcmp.f32	s9, #0
    59da: ee34 9a8c    	vadd.f32	s18, s9, s24
    59de: ee04 4a90    	vmov	s9, r4
    59e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59e6: eefd 5ae5    	vcvt.s32.f32	s11, s11
    59ea: eddf 3ab1    	vldr	s7, [pc, #708]          @ 0x5cb0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd98>
    59ee: eef8 4ae4    	vcvt.f32.s32	s9, s9
    59f2: ee15 2a90    	vmov	r2, s11
    59f6: eefd 5ac9    	vcvt.s32.f32	s11, s18
    59fa: ee04 4ae3    	vmls.f32	s8, s9, s7
    59fe: eeb0 9a46    	vmov.f32	s18, s12
    5a02: ee15 6a90    	vmov	r6, s11
    5a06: bfa8         	it	ge
    5a08: 4632         	movge	r2, r6
    5a0a: eb03 56c4    	add.w	r6, r3, r4, lsl #23
    5a0e: ee05 2a90    	vmov	s11, r2
    5a12: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    5a16: eef8 5ae5    	vcvt.f32.s32	s11, s11
    5a1a: ee45 2ae3    	vmls.f32	s5, s11, s7
    5a1e: eef0 3a48    	vmov.f32	s7, s16
    5a22: eeb0 8a4b    	vmov.f32	s16, s22
    5a26: eeb0 ba46    	vmov.f32	s22, s12
    5a2a: eef0 4a48    	vmov.f32	s9, s16
    5a2e: ee44 4a23    	vmla.f32	s9, s8, s7
    5a32: eef0 5a48    	vmov.f32	s11, s16
    5a36: ee42 5aa3    	vmla.f32	s11, s5, s7
    5a3a: ee62 7aa2    	vmul.f32	s15, s5, s5
    5a3e: ee04 9a24    	vmla.f32	s18, s8, s9
    5a42: eef0 4a46    	vmov.f32	s9, s12
    5a46: ee42 4aa5    	vmla.f32	s9, s5, s11
    5a4a: eef0 5a4c    	vmov.f32	s11, s24
    5a4e: ee44 5a09    	vmla.f32	s11, s8, s18
    5a52: eeb0 9a4c    	vmov.f32	s18, s24
    5a56: ee02 9aa4    	vmla.f32	s18, s5, s9
    5a5a: ee64 4a04    	vmul.f32	s9, s8, s8
    5a5e: ee34 4a2e    	vadd.f32	s8, s8, s29
    5a62: ee72 2aae    	vadd.f32	s5, s5, s29
    5a66: ee04 4aa5    	vmla.f32	s8, s9, s11
    5a6a: ee04 6a90    	vmov	s9, r6
    5a6e: ee05 2a90    	vmov	s11, r2
    5a72: ee47 2a89    	vmla.f32	s5, s15, s18
    5a76: ee64 4a24    	vmul.f32	s9, s8, s9
    5a7a: ee22 4aa5    	vmul.f32	s8, s5, s11
    5a7e: e05a         	b	0x5b36 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xc1e> @ imm = #0xb4
    5a80: 79 61 2e 43  	.word	0x432e6179
    5a84: b7 63 f7 b8  	.word	0xb8f763b7
    5a88: 0a d7 23 3d  	.word	0x3d23d70a
    5a8c: 7c f2 b0 3a  	.word	0x3ab0f27c
    5a90: a6 9b c4 3b  	.word	0x3bc49ba6
    5a94: a6 9b c4 bb  	.word	0xbbc49ba6
    5a98: 79 78 b0 43  	.word	0x43b07879
    5a9c: 7c f2 b0 ba  	.word	0xbab0f27c
    5aa0: 53 4a a1 43  	.word	0x43a14a53
    5aa4: 00 bf 00 bf  	.word	0xbf00bf00
    5aa8: eeb4 4a44    	vcmp.f32	s8, s8
    5aac: eddf 5a7d    	vldr	s11, [pc, #500]         @ 0x5ca4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd8c>
    5ab0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ab4: eef0 2a4c    	vmov.f32	s5, s24
    5ab8: ed9f 6a7b    	vldr	s12, [pc, #492]         @ 0x5ca8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd90>
    5abc: fe16 4a84    	vselvs.f32	s8, s13, s8
    5ac0: eef0 7a4b    	vmov.f32	s15, s22
    5ac4: eef4 6a44    	vcmp.f32	s13, s8
    5ac8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5acc: fe34 4a26    	vselgt.f32	s8, s8, s13
    5ad0: eeb4 4a66    	vcmp.f32	s8, s13
    5ad4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ad8: eef5 4a40    	vcmp.f32	s9, #0
    5adc: fe36 4a84    	vselgt.f32	s8, s13, s8
    5ae0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ae4: ee44 2a25    	vmla.f32	s5, s8, s11
    5ae8: eefd 2ae2    	vcvt.s32.f32	s5, s5
    5aec: eef8 5ae2    	vcvt.f32.s32	s11, s5
    5af0: ee12 2a90    	vmov	r2, s5
    5af4: ee05 4a86    	vmla.f32	s8, s11, s12
    5af8: eef0 5a48    	vmov.f32	s11, s16
    5afc: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    5b00: ee02 2a90    	vmov	s5, r2
    5b04: ee44 5a23    	vmla.f32	s11, s8, s7
    5b08: ee44 7a25    	vmla.f32	s15, s8, s11
    5b0c: eef0 5a4c    	vmov.f32	s11, s24
    5b10: ee44 5a27    	vmla.f32	s11, s8, s15
    5b14: ee64 7a04    	vmul.f32	s15, s8, s8
    5b18: ee34 4a2e    	vadd.f32	s8, s8, s29
    5b1c: ee07 4aa5    	vmla.f32	s8, s15, s11
    5b20: ee64 2a22    	vmul.f32	s5, s8, s5
    5b24: ee8e 4aa2    	vdiv.f32	s8, s29, s5
    5b28: eef0 4a62    	vmov.f32	s9, s5
    5b2c: bfbc         	itt	lt
    5b2e: eef0 4a44    	vmovlt.f32	s9, s8
    5b32: eeb0 4a62    	vmovlt.f32	s8, s5
    5b36: ed9d 9a03    	vldr	s18, [sp, #12]
    5b3a: ee00 9a2b    	vmla.f32	s18, s0, s23
    5b3e: eddf 2a57    	vldr	s5, [pc, #348]          @ 0x5c9c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd84>
    5b42: eef0 7a6b    	vmov.f32	s15, s23
    5b46: eddf 5a5b    	vldr	s11, [pc, #364]         @ 0x5cb4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd9c>
    5b4a: ee03 9a22    	vmla.f32	s18, s6, s5
    5b4e: ee74 2ac4    	vsub.f32	s5, s9, s8
    5b52: ee12 9aa5    	vnmls.f32	s18, s5, s11
    5b56: ee19 2a10    	vmov	r2, s18
    5b5a: f022 4200    	bic	r2, r2, #0x80000000
    5b5e: f1b2 4fff    	cmp.w	r2, #0x7f800000
    5b62: f6bf add1    	bge.w	0x5708 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x7f0> @ imm = #-0x45e
    5b66: ed9f 6a54    	vldr	s12, [pc, #336]         @ 0x5cb8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xda0>
    5b6a: eef4 0a60    	vcmp.f32	s1, s1
    5b6e: eec9 2a06    	vdiv.f32	s5, s18, s12
    5b72: ed9d 6a02    	vldr	s12, [sp, #8]
    5b76: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b7a: eef0 2ae2    	vabs.f32	s5, s5
    5b7e: fe52 0aa0    	vselvs.f32	s1, s5, s1
    5b82: eef4 2a62    	vcmp.f32	s5, s5
    5b86: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b8a: fe50 2aa2    	vselvs.f32	s5, s1, s5
    5b8e: eef4 0a62    	vcmp.f32	s1, s5
    5b92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b96: fe70 0aa2    	vselgt.f32	s1, s1, s5
    5b9a: eef4 0a46    	vcmp.f32	s1, s12
    5b9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ba2: f57f adb1    	bpl.w	0x5708 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x7f0> @ imm = #-0x49e
    5ba6: eeff 2a00    	vmov.f32	s5, #-1.000000e+00
    5baa: f1ba 0f10    	cmp.w	r10, #0x10
    5bae: eddf 5a43    	vldr	s11, [pc, #268]         @ 0x5cbc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xda4>
    5bb2: eddf 9a43    	vldr	s19, [pc, #268]         @ 0x5cc0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xda8>
    5bb6: eddf ca43    	vldr	s25, [pc, #268]         @ 0x5cc4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xdac>
    5bba: d00c         	beq	0x5bd6 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xcbe> @ imm = #0x18
    5bbc: eef0 ba43    	vmov.f32	s23, s6
    5bc0: eeb0 6a60    	vmov.f32	s12, s1
    5bc4: f1be 0f10    	cmp.w	lr, #0x10
    5bc8: f10b 0b01    	add.w	r11, r11, #0x1
    5bcc: 46f2         	mov	r10, lr
    5bce: ed8d 0a09    	vstr	s0, [sp, #36]
    5bd2: f77f ac1c    	ble.w	0x540e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0x4f6> @ imm = #-0x7c8
    5bd6: f64d 3011    	movw	r0, #0xdb11
    5bda: f64d 7210    	movw	r2, #0xdf10
    5bde: f2c0 0000    	movt	r0, #0x0
    5be2: f2c0 0200    	movt	r2, #0x0
    5be6: 2128         	movs	r1, #0x28
    5be8: f006 f950    	bl	0xbe8c <core::panicking::panic> @ imm = #0x62a0
    5bec: 00 00 c0 7f  	.word	0x7fc00000
    5bf0: eddd 1a02    	vldr	s3, [sp, #8]
    5bf4: ed9f 0a35    	vldr	s0, [pc, #212]          @ 0x5ccc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xdb4>
    5bf8: 2200         	movs	r2, #0x0
    5bfa: eef4 1a40    	vcmp.f32	s3, s0
    5bfe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c02: bf98         	it	ls
    5c04: 2201         	movls	r2, #0x1
    5c06: ed9f 1a30    	vldr	s2, [pc, #192]          @ 0x5cc8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xdb0>
    5c0a: ed9d 0a00    	vldr	s0, [sp]
    5c0e: 2300         	movs	r3, #0x0
    5c10: eeb4 0a41    	vcmp.f32	s0, s2
    5c14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c18: eeb0 0ae9    	vabs.f32	s0, s19
    5c1c: f10b 0b01    	add.w	r11, r11, #0x1
    5c20: bf98         	it	ls
    5c22: 2301         	movls	r3, #0x1
    5c24: 401a         	ands	r2, r3
    5c26: 2300         	movs	r3, #0x0
    5c28: eeb4 0a41    	vcmp.f32	s0, s2
    5c2c: ed9d 0a09    	vldr	s0, [sp, #36]
    5c30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c34: ed81 0a02    	vstr	s0, [r1, #8]
    5c38: bf98         	it	ls
    5c3a: 2301         	movls	r3, #0x1
    5c3c: ed9d fa01    	vldr	s30, [sp, #4]
    5c40: edc1 ba03    	vstr	s23, [r1, #12]
    5c44: ea02 0403    	and.w	r4, r2, r3
    5c48: 68b9         	ldr	r1, [r7, #0x8]
    5c4a: edc0 1a00    	vstr	s3, [r0]
    5c4e: f880 b004    	strb.w	r11, [r0, #0x4]
    5c52: ed81 fa01    	vstr	s30, [r1, #4]
    5c56: 7144         	strb	r4, [r0, #0x5]
    5c58: b010         	add	sp, #0x40
    5c5a: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    5c5e: b001         	add	sp, #0x4
    5c60: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    5c64: bdf0         	pop	{r4, r5, r6, r7, pc}
    5c66: bf00         	nop
    5c68: ed80 6a00    	vstr	s12, [r0]
    5c6c: 2100         	movs	r1, #0x0
    5c6e: f880 b004    	strb.w	r11, [r0, #0x4]
    5c72: 7141         	strb	r1, [r0, #0x5]
    5c74: e7f0         	b	0x5c58 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd40> @ imm = #-0x20
    5c76: bf00         	nop
    5c78: 2400         	movs	r4, #0x0
    5c7a: eddd 1a02    	vldr	s3, [sp, #8]
    5c7e: e7e3         	b	0x5c48 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>+0xd30> @ imm = #-0x3a
    5c80: f64d 207b    	movw	r0, #0xda7b
    5c84: f64d 7220    	movw	r2, #0xdf20
    5c88: f2c0 0000    	movt	r0, #0x0
    5c8c: f2c0 0200    	movt	r2, #0x0
    5c90: a90c         	add	r1, sp, #0x30
    5c92: f006 f8f7    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0x61ee
    5c96: bf00         	nop
    5c98: 00 00 80 7f  	.word	0x7f800000
    5c9c: 50 69 15 b9  	.word	0xb9156950
    5ca0: f5 4a 39 3d  	.word	0x3d394af5
    5ca4: 3b aa b8 3f  	.word	0x3fb8aa3b
    5ca8: 18 72 31 bf  	.word	0xbf317218
    5cac: f5 4a 39 bd  	.word	0xbd394af5
    5cb0: 18 72 31 3f  	.word	0x3f317218
    5cb4: 77 cc 2b 31  	.word	0x312bcc77
    5cb8: 0a d7 23 3c  	.word	0x3c23d70a
    5cbc: 79 61 2e c3  	.word	0xc32e6179
    5cc0: 00 00 00 80  	.word	0x80000000
    5cc4: c5 9f 13 3f  	.word	0x3f139fc5
    5cc8: ac c5 a7 37  	.word	0x37a7c5ac
    5ccc: 17 b7 d1 38  	.word	0x38d1b717

00005cd0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>>:
    5cd0: b5f0         	push	{r4, r5, r6, r7, lr}
    5cd2: af03         	add	r7, sp, #0xc
    5cd4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    5cd8: b081         	sub	sp, #0x4
    5cda: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    5cde: b0a8         	sub	sp, #0xa0
    5ce0: edd3 ca0a    	vldr	s25, [r3, #40]
    5ce4: ed93 aa0b    	vldr	s20, [r3, #44]
    5ce8: eef4 ca4a    	vcmp.f32	s25, s20
    5cec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5cf0: f201 8146    	bhi.w	0x6f80 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12b0> @ imm = #0x128c
    5cf4: ed91 2a04    	vldr	s4, [r1, #16]
    5cf8: eddf 4abf    	vldr	s9, [pc, #764]          @ 0x5ff8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x328>
    5cfc: eeb7 5ac2    	vcvt.f64.f32	d5, s4
    5d00: ed93 7a09    	vldr	s14, [r3, #36]
    5d04: ed9f 1b58    	vldr	d1, [pc, #352]          @ 0x5e68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x198>
    5d08: ed8d 7a0f    	vstr	s14, [sp, #60]
    5d0c: eddf 7abb    	vldr	s15, [pc, #748]         @ 0x5ffc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x32c>
    5d10: ed92 0b14    	vldr	d0, [r2, #80]
    5d14: ed9f 8aba    	vldr	s16, [pc, #744]         @ 0x6000 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x330>
    5d18: ed8d 2a16    	vstr	s4, [sp, #88]
    5d1c: ed8d 0b10    	vstr	d0, [sp, #64]
    5d20: ee05 0b01    	vmla.f64	d0, d5, d1
    5d24: ed92 1b08    	vldr	d1, [r2, #32]
    5d28: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    5d2c: eef7 1bc1    	vcvt.f32.f64	s3, d1
    5d30: ee00 7a24    	vmla.f32	s14, s0, s9
    5d34: ed9f 1ae2    	vldr	s2, [pc, #904]          @ 0x60c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3f0>
    5d38: edcd 1a0e    	vstr	s3, [sp, #56]
    5d3c: ee42 1a01    	vmla.f32	s3, s4, s2
    5d40: ed91 0a05    	vldr	s0, [r1, #20]
    5d44: ed8d 0a17    	vstr	s0, [sp, #92]
    5d48: ee40 1a27    	vmla.f32	s3, s0, s15
    5d4c: eef4 ca47    	vcmp.f32	s25, s14
    5d50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d54: fe3c 1a87    	vselgt.f32	s2, s25, s14
    5d58: eeb0 0ae1    	vabs.f32	s0, s3
    5d5c: eeb4 1a4a    	vcmp.f32	s2, s20
    5d60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d64: eeb4 0a48    	vcmp.f32	s0, s16
    5d68: fe3a ea01    	vselgt.f32	s28, s20, s2
    5d6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d70: da16         	bge	0x5da0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xd0> @ imm = #0x2c
    5d72: ed9f 1ad4    	vldr	s2, [pc, #848]          @ 0x60c4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3f4>
    5d76: eeb4 0a41    	vcmp.f32	s0, s2
    5d7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d7e: d91b         	bls	0x5db8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe8> @ imm = #0x36
    5d80: ed9f 1ad1    	vldr	s2, [pc, #836]          @ 0x60c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3f8>
    5d84: eeb4 0a41    	vcmp.f32	s0, s2
    5d88: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d8c: d918         	bls	0x5dc0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xf0> @ imm = #0x30
    5d8e: ed9f 1acf    	vldr	s2, [pc, #828]          @ 0x60cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3fc>
    5d92: ee30 1a01    	vadd.f32	s2, s0, s2
    5d96: ed9f 2ace    	vldr	s4, [pc, #824]          @ 0x60d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x400>
    5d9a: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    5d9e: e017         	b	0x5dd0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x100> @ imm = #0x2e
    5da0: ed9f 4acc    	vldr	s8, [pc, #816]          @ 0x60d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x404>
    5da4: eef0 0a44    	vmov.f32	s1, s8
    5da8: eef0 da44    	vmov.f32	s27, s8
    5dac: eeb0 ca44    	vmov.f32	s24, s8
    5db0: eeb0 0a44    	vmov.f32	s0, s8
    5db4: e08b         	b	0x5ece <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1fe> @ imm = #0x116
    5db6: bf00         	nop
    5db8: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    5dbc: e00a         	b	0x5dd4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x104> @ imm = #0x14
    5dbe: bf00         	nop
    5dc0: ed9f 1ae1    	vldr	s2, [pc, #900]          @ 0x6148 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x478>
    5dc4: ee30 1a01    	vadd.f32	s2, s0, s2
    5dc8: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    5dcc: ed9f 2adf    	vldr	s4, [pc, #892]          @ 0x614c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x47c>
    5dd0: ee01 0a02    	vmla.f32	s0, s2, s4
    5dd4: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    5dd8: ed9f 4abe    	vldr	s8, [pc, #760]          @ 0x60d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x404>
    5ddc: ee31 0a40    	vsub.f32	s0, s2, s0
    5de0: fe80 ca04    	vmaxnm.f32	s24, s0, s8
    5de4: eeb5 ca40    	vcmp.f32	s24, #0
    5de8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5dec: d944         	bls	0x5e78 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1a8> @ imm = #0x88
    5dee: eeb0 0ace    	vabs.f32	s0, s28
    5df2: eeb4 0a4c    	vcmp.f32	s0, s24
    5df6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5dfa: dd45         	ble	0x5e88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1b8> @ imm = #0x8a
    5dfc: ee8c 4a00    	vdiv.f32	s8, s24, s0
    5e00: ee24 0a04    	vmul.f32	s0, s8, s8
    5e04: ee20 0a00    	vmul.f32	s0, s0, s0
    5e08: ee20 0a00    	vmul.f32	s0, s0, s0
    5e0c: ee60 da00    	vmul.f32	s27, s0, s0
    5e10: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    5e14: ee3d 3a80    	vadd.f32	s6, s27, s0
    5e18: eeb0 1a40    	vmov.f32	s2, s0
    5e1c: eeb4 3a40    	vcmp.f32	s6, s0
    5e20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e24: d009         	beq	0x5e3a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x16a> @ imm = #0x12
    5e26: eeb1 3ac3    	vsqrt.f32	s6, s6
    5e2a: eeb1 3ac3    	vsqrt.f32	s6, s6
    5e2e: eeb1 3ac3    	vsqrt.f32	s6, s6
    5e32: eeb1 3ac3    	vsqrt.f32	s6, s6
    5e36: eeb0 1a43    	vmov.f32	s2, s6
    5e3a: ee1e 6a10    	vmov	r6, s28
    5e3e: f04f 557e    	mov.w	r5, #0x3f800000
    5e42: eec0 0a01    	vdiv.f32	s1, s0, s2
    5e46: ed9f 1ac2    	vldr	s2, [pc, #776]          @ 0x6150 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x480>
    5e4a: eeb4 ea4e    	vcmp.f32	s28, s28
    5e4e: f365 061e    	bfi	r6, r5, #0, #31
    5e52: ee02 6a10    	vmov	s4, r6
    5e56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e5a: ee22 0a0c    	vmul.f32	s0, s4, s24
    5e5e: ee20 0a20    	vmul.f32	s0, s0, s1
    5e62: fe11 0a00    	vselvs.f32	s0, s2, s0
    5e66: e032         	b	0x5ece <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1fe> @ imm = #0x64
    5e68: 1c 38 88 77  	.word	0x7788381c
    5e6c: bf 13 e1 bf  	.word	0xbfe113bf
    5e70: 67 42 87 92  	.word	0x92874267
    5e74: ba 86 d4 bf  	.word	0xbfd486ba
    5e78: eef0 0a44    	vmov.f32	s1, s8
    5e7c: eef0 da44    	vmov.f32	s27, s8
    5e80: eeb0 0a44    	vmov.f32	s0, s8
    5e84: e023         	b	0x5ece <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1fe> @ imm = #0x46
    5e86: bf00         	nop
    5e88: ee8e 4a0c    	vdiv.f32	s8, s28, s24
    5e8c: ee24 0a04    	vmul.f32	s0, s8, s8
    5e90: ee20 0a00    	vmul.f32	s0, s0, s0
    5e94: ee20 0a00    	vmul.f32	s0, s0, s0
    5e98: ee60 da00    	vmul.f32	s27, s0, s0
    5e9c: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    5ea0: ee3d 1a80    	vadd.f32	s2, s27, s0
    5ea4: eeb0 2a40    	vmov.f32	s4, s0
    5ea8: eeb4 1a40    	vcmp.f32	s2, s0
    5eac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5eb0: d009         	beq	0x5ec6 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1f6> @ imm = #0x12
    5eb2: eeb1 1ac1    	vsqrt.f32	s2, s2
    5eb6: eeb1 1ac1    	vsqrt.f32	s2, s2
    5eba: eeb1 1ac1    	vsqrt.f32	s2, s2
    5ebe: eeb1 1ac1    	vsqrt.f32	s2, s2
    5ec2: eeb0 2a41    	vmov.f32	s4, s2
    5ec6: eec0 0a02    	vdiv.f32	s1, s0, s4
    5eca: ee2e 0a20    	vmul.f32	s0, s28, s1
    5ece: ed9d 1a16    	vldr	s2, [sp, #88]
    5ed2: ee71 8a40    	vsub.f32	s17, s2, s0
    5ed6: ee18 6a90    	vmov	r6, s17
    5eda: f026 4600    	bic	r6, r6, #0x80000000
    5ede: f1b6 4fff    	cmp.w	r6, #0x7f800000
    5ee2: db05         	blt	0x5ef0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x220> @ imm = #0xa
    5ee4: ed9f 0ad3    	vldr	s0, [pc, #844]          @ 0x6234 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x564>
    5ee8: e00c         	b	0x5f04 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x234> @ imm = #0x18
    5eea: bf00         	nop
    5eec: bf00         	nop
    5eee: bf00         	nop
    5ef0: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    5ef4: ed9f 1a77    	vldr	s2, [pc, #476]          @ 0x60d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x404>
    5ef8: ee88 0a80    	vdiv.f32	s0, s17, s0
    5efc: eeb0 0ac0    	vabs.f32	s0, s0
    5f00: fe80 0a01    	vmaxnm.f32	s0, s0, s2
    5f04: ed93 ba0e    	vldr	s22, [r3, #56]
    5f08: ed93 da0f    	vldr	s26, [r3, #60]
    5f0c: eeb4 ba4d    	vcmp.f32	s22, s26
    5f10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5f14: f201 8034    	bhi.w	0x6f80 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12b0> @ imm = #0x1068
    5f18: ed9f 3bc7    	vldr	d3, [pc, #796]          @ 0x6238 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x568>
    5f1c: ed93 fa0d    	vldr	s30, [r3, #52]
    5f20: ed8d fa0a    	vstr	s30, [sp, #40]
    5f24: ed92 6b16    	vldr	d6, [r2, #88]
    5f28: ed8d aa13    	vstr	s20, [sp, #76]
    5f2c: ed8d 6b0c    	vstr	d6, [sp, #48]
    5f30: ee05 6b03    	vmla.f64	d6, d5, d3
    5f34: ed9d 3a17    	vldr	s6, [sp, #92]
    5f38: eddf 3a86    	vldr	s7, [pc, #536]          @ 0x6154 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x484>
    5f3c: eeb7 5ac3    	vcvt.f64.f32	d5, s6
    5f40: ed1f 9b35    	vldr	d9, [pc, #-212]         @ 0x5e70 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1a0>
    5f44: ee05 6b09    	vmla.f64	d6, d5, d9
    5f48: ed92 2b0a    	vldr	d2, [r2, #40]
    5f4c: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    5f50: ed8d 2a0b    	vstr	s4, [sp, #44]
    5f54: eeb7 1bc6    	vcvt.f32.f64	s2, d6
    5f58: ee01 fa24    	vmla.f32	s30, s2, s9
    5f5c: eeb0 1a42    	vmov.f32	s2, s4
    5f60: ed9d 2a16    	vldr	s4, [sp, #88]
    5f64: ee02 1a27    	vmla.f32	s2, s4, s15
    5f68: ed9f 2a7b    	vldr	s4, [pc, #492]          @ 0x6158 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x488>
    5f6c: ee03 1a02    	vmla.f32	s2, s6, s4
    5f70: ed91 2a06    	vldr	s4, [r1, #24]
    5f74: eeb4 ba4f    	vcmp.f32	s22, s30
    5f78: ed8d 2a18    	vstr	s4, [sp, #96]
    5f7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5f80: ee22 3a23    	vmul.f32	s6, s4, s7
    5f84: fe3b 2a0f    	vselgt.f32	s4, s22, s30
    5f88: ee73 4a01    	vadd.f32	s9, s6, s2
    5f8c: eeb4 2a4d    	vcmp.f32	s4, s26
    5f90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5f94: eeb0 1ae4    	vabs.f32	s2, s9
    5f98: fe7d 6a02    	vselgt.f32	s13, s26, s4
    5f9c: eeb4 1a48    	vcmp.f32	s2, s16
    5fa0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fa4: da18         	bge	0x5fd8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x308> @ imm = #0x30
    5fa6: ed9f 2a47    	vldr	s4, [pc, #284]          @ 0x60c4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3f4>
    5faa: eeb4 1a42    	vcmp.f32	s2, s4
    5fae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fb2: d91d         	bls	0x5ff0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x320> @ imm = #0x3a
    5fb4: ed9f 2a44    	vldr	s4, [pc, #272]          @ 0x60c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3f8>
    5fb8: eeb4 1a42    	vcmp.f32	s2, s4
    5fbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fc0: d922         	bls	0x6008 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x338> @ imm = #0x44
    5fc2: ed9f 2a42    	vldr	s4, [pc, #264]          @ 0x60cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3fc>
    5fc6: ee31 2a02    	vadd.f32	s4, s2, s4
    5fca: ed9f 5a41    	vldr	s10, [pc, #260]         @ 0x60d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x400>
    5fce: eeb0 1a08    	vmov.f32	s2, #3.000000e+00
    5fd2: e021         	b	0x6018 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x348> @ imm = #0x42
    5fd4: bf00         	nop
    5fd6: bf00         	nop
    5fd8: ed9f 5a3e    	vldr	s10, [pc, #248]         @ 0x60d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x404>
    5fdc: eef0 5a45    	vmov.f32	s11, s10
    5fe0: eeb0 aa45    	vmov.f32	s20, s10
    5fe4: eeb0 6a45    	vmov.f32	s12, s10
    5fe8: eeb0 1a45    	vmov.f32	s2, s10
    5fec: e097         	b	0x611e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x44e> @ imm = #0x12e
    5fee: bf00         	nop
    5ff0: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    5ff4: e012         	b	0x601c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x34c> @ imm = #0x24
    5ff6: bf00         	nop
    5ff8: 79 61 2e 43  	.word	0x432e6179
    5ffc: d6 f8 e4 36  	.word	0x36e4f8d6
    6000: 0a d7 23 3d  	.word	0x3d23d70a
    6004: 00 bf 00 bf  	.word	0xbf00bf00
    6008: ed9f 2a4f    	vldr	s4, [pc, #316]          @ 0x6148 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x478>
    600c: ee31 2a02    	vadd.f32	s4, s2, s4
    6010: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    6014: ed9f 5a4d    	vldr	s10, [pc, #308]         @ 0x614c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x47c>
    6018: ee02 1a05    	vmla.f32	s2, s4, s10
    601c: eeb2 2a0e    	vmov.f32	s4, #1.500000e+01
    6020: ed9f 5a2c    	vldr	s10, [pc, #176]         @ 0x60d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x404>
    6024: ee32 1a41    	vsub.f32	s2, s4, s2
    6028: fe81 6a05    	vmaxnm.f32	s12, s2, s10
    602c: eeb5 6a40    	vcmp.f32	s12, #0
    6030: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6034: d93c         	bls	0x60b0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3e0> @ imm = #0x78
    6036: eeb0 1ae6    	vabs.f32	s2, s13
    603a: eeb4 1a46    	vcmp.f32	s2, s12
    603e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6042: dd49         	ble	0x60d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x408> @ imm = #0x92
    6044: ee86 5a01    	vdiv.f32	s10, s12, s2
    6048: ee25 1a05    	vmul.f32	s2, s10, s10
    604c: ee21 1a01    	vmul.f32	s2, s2, s2
    6050: ee21 1a01    	vmul.f32	s2, s2, s2
    6054: ee21 aa01    	vmul.f32	s20, s2, s2
    6058: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    605c: ee7a 5a01    	vadd.f32	s11, s20, s2
    6060: eef0 2a41    	vmov.f32	s5, s2
    6064: eef4 5a41    	vcmp.f32	s11, s2
    6068: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    606c: d009         	beq	0x6082 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3b2> @ imm = #0x12
    606e: eef1 5ae5    	vsqrt.f32	s11, s11
    6072: eef1 5ae5    	vsqrt.f32	s11, s11
    6076: eef1 5ae5    	vsqrt.f32	s11, s11
    607a: eef1 5ae5    	vsqrt.f32	s11, s11
    607e: eef0 2a65    	vmov.f32	s5, s11
    6082: ee16 3a90    	vmov	r3, s13
    6086: f04f 567e    	mov.w	r6, #0x3f800000
    608a: eec1 5a22    	vdiv.f32	s11, s2, s5
    608e: eef4 6a66    	vcmp.f32	s13, s13
    6092: f366 031e    	bfi	r3, r6, #0, #31
    6096: ee02 3a10    	vmov	s4, r3
    609a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    609e: ee22 1a06    	vmul.f32	s2, s4, s12
    60a2: ed9f 2a2b    	vldr	s4, [pc, #172]          @ 0x6150 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x480>
    60a6: ee21 1a25    	vmul.f32	s2, s2, s11
    60aa: fe12 1a01    	vselvs.f32	s2, s4, s2
    60ae: e036         	b	0x611e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x44e> @ imm = #0x6c
    60b0: eef0 5a45    	vmov.f32	s11, s10
    60b4: eeb0 aa45    	vmov.f32	s20, s10
    60b8: eeb0 1a45    	vmov.f32	s2, s10
    60bc: e02f         	b	0x611e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x44e> @ imm = #0x5e
    60be: bf00         	nop
    60c0: 83 c0 96 b8  	.word	0xb896c083
    60c4: 7c f2 b0 3a  	.word	0x3ab0f27c
    60c8: a6 9b c4 3b  	.word	0x3bc49ba6
    60cc: a6 9b c4 bb  	.word	0xbbc49ba6
    60d0: 79 78 b0 43  	.word	0x43b07879
    60d4: 00 00 00 00  	.word	0x00000000
    60d8: ee86 5a86    	vdiv.f32	s10, s13, s12
    60dc: ee25 1a05    	vmul.f32	s2, s10, s10
    60e0: ee21 1a01    	vmul.f32	s2, s2, s2
    60e4: ee21 1a01    	vmul.f32	s2, s2, s2
    60e8: ee21 aa01    	vmul.f32	s20, s2, s2
    60ec: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    60f0: ee7a 2a01    	vadd.f32	s5, s20, s2
    60f4: eeb0 2a41    	vmov.f32	s4, s2
    60f8: eef4 2a41    	vcmp.f32	s5, s2
    60fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6100: d009         	beq	0x6116 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x446> @ imm = #0x12
    6102: eef1 2ae2    	vsqrt.f32	s5, s5
    6106: eef1 2ae2    	vsqrt.f32	s5, s5
    610a: eef1 2ae2    	vsqrt.f32	s5, s5
    610e: eef1 2ae2    	vsqrt.f32	s5, s5
    6112: eeb0 2a62    	vmov.f32	s4, s5
    6116: eec1 5a02    	vdiv.f32	s11, s2, s4
    611a: ee26 1aa5    	vmul.f32	s2, s13, s11
    611e: ed9d 2a17    	vldr	s4, [sp, #92]
    6122: eef0 aa4e    	vmov.f32	s21, s28
    6126: ee32 9a41    	vsub.f32	s18, s4, s2
    612a: ed8d ba15    	vstr	s22, [sp, #84]
    612e: ed8d da14    	vstr	s26, [sp, #80]
    6132: ee19 3a10    	vmov	r3, s18
    6136: f023 4300    	bic	r3, r3, #0x80000000
    613a: f1b3 4fff    	cmp.w	r3, #0x7f800000
    613e: db0f         	blt	0x6160 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x490> @ imm = #0x1e
    6140: eddf fa3c    	vldr	s31, [pc, #240]         @ 0x6234 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x564>
    6144: e024         	b	0x6190 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x4c0> @ imm = #0x48
    6146: bf00         	nop
    6148: 7c f2 b0 ba  	.word	0xbab0f27c
    614c: 53 4a a1 43  	.word	0x43a14a53
    6150: 00 00 c0 7f  	.word	0x7fc00000
    6154: 79 2e 02 39  	.word	0x39022e79
    6158: af e6 27 b9  	.word	0xb927e6af
    615c: 00 bf 00 bf  	.word	0xbf00bf00
    6160: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    6164: eeb4 0a40    	vcmp.f32	s0, s0
    6168: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    616c: ee89 1a01    	vdiv.f32	s2, s18, s2
    6170: eeb0 1ac1    	vabs.f32	s2, s2
    6174: fe11 0a00    	vselvs.f32	s0, s2, s0
    6178: eeb4 1a41    	vcmp.f32	s2, s2
    617c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6180: fe10 1a01    	vselvs.f32	s2, s0, s2
    6184: eeb4 0a41    	vcmp.f32	s0, s2
    6188: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    618c: fe70 fa01    	vselgt.f32	s31, s0, s2
    6190: ed92 bb1a    	vldr	d11, [r2, #104]
    6194: ed9d 1a17    	vldr	s2, [sp, #92]
    6198: ed92 eb1c    	vldr	d14, [r2, #112]
    619c: eef7 7bcb    	vcvt.f32.f64	s15, d11
    61a0: ed9f bad5    	vldr	s22, [pc, #852]         @ 0x64f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x828>
    61a4: edcd 7a09    	vstr	s15, [sp, #36]
    61a8: ee21 0a0b    	vmul.f32	s0, s2, s22
    61ac: eeb7 dbce    	vcvt.f32.f64	s26, d14
    61b0: ed9f ead2    	vldr	s28, [pc, #840]         @ 0x64fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x82c>
    61b4: ed8d da08    	vstr	s26, [sp, #32]
    61b8: ee70 9a27    	vadd.f32	s19, s0, s15
    61bc: eddd 7a18    	vldr	s15, [sp, #96]
    61c0: ee47 9a8e    	vmla.f32	s19, s15, s28
    61c4: ee30 0a0d    	vadd.f32	s0, s0, s26
    61c8: ee07 0acb    	vmls.f32	s0, s15, s22
    61cc: eef6 7a00    	vmov.f32	s15, #5.000000e-01
    61d0: ed92 2b0c    	vldr	d2, [r2, #48]
    61d4: eeb8 ba00    	vmov.f32	s22, #-2.000000e+00
    61d8: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    61dc: ed8d 2a07    	vstr	s4, [sp, #28]
    61e0: ee01 2a23    	vmla.f32	s4, s2, s7
    61e4: fe89 1ac0    	vminnm.f32	s2, s19, s0
    61e8: ee37 1ac1    	vsub.f32	s2, s15, s2
    61ec: ee72 2a43    	vsub.f32	s5, s4, s6
    61f0: eeb4 1a4b    	vcmp.f32	s2, s22
    61f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    61f8: d922         	bls	0x6240 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x570> @ imm = #0x44
    61fa: eeb4 1a41    	vcmp.f32	s2, s2
    61fe: ed1f 2a4b    	vldr	s4, [pc, #-300]         @ 0x60d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x404>
    6202: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6206: fe12 1a01    	vselvs.f32	s2, s4, s2
    620a: eeb5 1a40    	vcmp.f32	s2, #0
    620e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6212: bfb8         	it	lt
    6214: eeb0 2a41    	vmovlt.f32	s4, s2
    6218: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    621c: ee02 1a27    	vmla.f32	s2, s4, s15
    6220: ed9f 2ab7    	vldr	s4, [pc, #732]          @ 0x6500 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x830>
    6224: ee21 1a02    	vmul.f32	s2, s2, s4
    6228: ed9f 2ab6    	vldr	s4, [pc, #728]          @ 0x6504 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x834>
    622c: fe81 ea02    	vmaxnm.f32	s28, s2, s4
    6230: e008         	b	0x6244 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x574> @ imm = #0x10
    6232: bf00         	nop
    6234: 00 00 80 7f  	.word	0x7f800000
    6238: 15 be b6 e5  	.word	0xe5b6be15
    623c: 6d 7e c0 bf  	.word	0xbfc07e6d
    6240: ed9f eab0    	vldr	s28, [pc, #704]         @ 0x6504 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x834>
    6244: ed9d 1a18    	vldr	s2, [sp, #96]
    6248: eef0 ea66    	vmov.f32	s29, s13
    624c: ee51 2a0e    	vnmls.f32	s5, s2, s28
    6250: ed1f ba08    	vldr	s22, [pc, #-32]         @ 0x6234 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x564>
    6254: 9001         	str	r0, [sp, #0x4]
    6256: ee12 2a90    	vmov	r2, s5
    625a: f022 4200    	bic	r2, r2, #0x80000000
    625e: f1b2 4fff    	cmp.w	r2, #0x7f800000
    6262: da17         	bge	0x6294 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x5c4> @ imm = #0x2e
    6264: ed9f 1aa8    	vldr	s2, [pc, #672]          @ 0x6508 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x838>
    6268: eef4 fa6f    	vcmp.f32	s31, s31
    626c: ee82 1a81    	vdiv.f32	s2, s5, s2
    6270: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6274: eeb0 1ac1    	vabs.f32	s2, s2
    6278: fe11 2a2f    	vselvs.f32	s4, s2, s31
    627c: eeb4 1a41    	vcmp.f32	s2, s2
    6280: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6284: fe12 1a01    	vselvs.f32	s2, s4, s2
    6288: eeb4 2a41    	vcmp.f32	s4, s2
    628c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6290: fe32 ba01    	vselgt.f32	s22, s4, s2
    6294: a81c         	add	r0, sp, #0x70
    6296: eef0 fa6a    	vmov.f32	s31, s21
    629a: eef0 aa6c    	vmov.f32	s21, s25
    629e: 300c         	adds	r0, #0xc
    62a0: 9005         	str	r0, [sp, #0x14]
    62a2: f04f 0b00    	mov.w	r11, #0x0
    62a6: f64d 3040    	movw	r0, #0xdb40
    62aa: f04f 0900    	mov.w	r9, #0x0
    62ae: ed1f da77    	vldr	s26, [pc, #-476]        @ 0x60d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x404>
    62b2: f04f 537e    	mov.w	r3, #0x3f800000
    62b6: f2c0 0000    	movt	r0, #0x0
    62ba: f10d 0c64    	add.w	r12, sp, #0x64
    62be: 465d         	mov	r5, r11
    62c0: eddd ca13    	vldr	s25, [sp, #76]
    62c4: edcd aa12    	vstr	s21, [sp, #72]
    62c8: eeb1 1a49    	vneg.f32	s2, s18
    62cc: f1bb 0f10    	cmp.w	r11, #0x10
    62d0: ed8d 1a1a    	vstr	s2, [sp, #104]
    62d4: eeb1 1a62    	vneg.f32	s2, s5
    62d8: bf18         	it	ne
    62da: 3501         	addne	r5, #0x1
    62dc: eeb4 7a6a    	vcmp.f32	s14, s21
    62e0: 2400         	movs	r4, #0x0
    62e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    62e6: eeb4 7a6c    	vcmp.f32	s14, s25
    62ea: eeb0 7a4d    	vmov.f32	s14, s26
    62ee: eeb1 3a68    	vneg.f32	s6, s17
    62f2: eef0 2a4d    	vmov.f32	s5, s26
    62f6: eef7 8a00    	vmov.f32	s17, #1.000000e+00
    62fa: ed8d 1a1b    	vstr	s2, [sp, #108]
    62fe: bfc8         	it	gt
    6300: 2401         	movgt	r4, #0x1
    6302: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6306: f04f 0600    	mov.w	r6, #0x0
    630a: eeb5 ca40    	vcmp.f32	s24, #0
    630e: bf48         	it	mi
    6310: 2601         	movmi	r6, #0x1
    6312: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6316: eddd 6a15    	vldr	s13, [sp, #84]
    631a: eddd 7a14    	vldr	s15, [sp, #80]
    631e: ed8d 3a19    	vstr	s6, [sp, #100]
    6322: d927         	bls	0x6374 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x6a4> @ imm = #0x4e
    6324: ee3d 1aa8    	vadd.f32	s2, s27, s17
    6328: ee80 7a81    	vdiv.f32	s14, s1, s2
    632c: eeb0 1aef    	vabs.f32	s2, s31
    6330: eeb4 1a4c    	vcmp.f32	s2, s24
    6334: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6338: dd16         	ble	0x6368 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x698> @ imm = #0x2c
    633a: ee1f 8a90    	vmov	r8, s31
    633e: ee2d 2a84    	vmul.f32	s4, s27, s8
    6342: eef4 fa6f    	vcmp.f32	s31, s31
    6346: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    634a: f363 081e    	bfi	r8, r3, #0, #31
    634e: ee01 8a10    	vmov	s2, r8
    6352: ee21 1a07    	vmul.f32	s2, s2, s14
    6356: ee22 7a07    	vmul.f32	s14, s4, s14
    635a: ed1f 2a83    	vldr	s4, [pc, #-524]         @ 0x6150 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x480>
    635e: fe52 2a01    	vselvs.f32	s5, s4, s2
    6362: e007         	b	0x6374 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x6a4> @ imm = #0xe
    6364: bf00         	nop
    6366: bf00         	nop
    6368: ee2f 1aad    	vmul.f32	s2, s31, s27
    636c: ee81 1a0c    	vdiv.f32	s2, s2, s24
    6370: ee61 2a07    	vmul.f32	s5, s2, s14
    6374: eef5 1a40    	vcmp.f32	s3, #0
    6378: eeb0 4ae1    	vabs.f32	s8, s3
    637c: eeb0 1a4d    	vmov.f32	s2, s26
    6380: eeff 1a00    	vmov.f32	s3, #-1.000000e+00
    6384: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6388: bf48         	it	mi
    638a: eeb0 1a61    	vmovmi.f32	s2, s3
    638e: eef0 0a4d    	vmov.f32	s1, s26
    6392: eeb4 4a48    	vcmp.f32	s8, s16
    6396: fe38 1a81    	vselgt.f32	s2, s17, s2
    639a: ed9f 9a5c    	vldr	s18, [pc, #368]         @ 0x650c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x83c>
    639e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63a2: ed9f ca5b    	vldr	s24, [pc, #364]         @ 0x6510 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x840>
    63a6: eddf ba5b    	vldr	s23, [pc, #364]         @ 0x6514 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x844>
    63aa: da1b         	bge	0x63e4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x714> @ imm = #0x36
    63ac: eef0 0a4d    	vmov.f32	s1, s26
    63b0: ed1f 2abc    	vldr	s4, [pc, #-752]         @ 0x60c4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3f4>
    63b4: eeb4 4a42    	vcmp.f32	s8, s4
    63b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63bc: d910         	bls	0x63e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x710> @ imm = #0x20
    63be: ed1f 2abe    	vldr	s4, [pc, #-760]         @ 0x60c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x3f8>
    63c2: eeb4 4a42    	vcmp.f32	s8, s4
    63c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63ca: d905         	bls	0x63d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x708> @ imm = #0xa
    63cc: ed1f 2ac0    	vldr	s4, [pc, #-768]         @ 0x60d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x400>
    63d0: e004         	b	0x63dc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x70c> @ imm = #0x8
    63d2: bf00         	nop
    63d4: bf00         	nop
    63d6: bf00         	nop
    63d8: ed1f 2aa4    	vldr	s4, [pc, #-656]         @ 0x614c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x47c>
    63dc: ee61 0a02    	vmul.f32	s1, s2, s4
    63e0: eef1 0a60    	vneg.f32	s1, s1
    63e4: 4034         	ands	r4, r6
    63e6: ee22 2aa0    	vmul.f32	s4, s5, s1
    63ea: fe0c 1a09    	vseleq.f32	s2, s24, s18
    63ee: eddf 0a4a    	vldr	s1, [pc, #296]          @ 0x6518 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x848>
    63f2: 2400         	movs	r4, #0x0
    63f4: eeb4 fa66    	vcmp.f32	s30, s13
    63f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63fc: ee27 1a01    	vmul.f32	s2, s14, s2
    6400: f04f 0600    	mov.w	r6, #0x0
    6404: eeb4 fa67    	vcmp.f32	s30, s15
    6408: ee21 4a0d    	vmul.f32	s8, s2, s26
    640c: eeb0 7a44    	vmov.f32	s14, s8
    6410: ee02 4a2b    	vmla.f32	s8, s4, s23
    6414: ee02 7a0c    	vmla.f32	s14, s4, s24
    6418: ee22 2a20    	vmul.f32	s4, s4, s1
    641c: eddf 0a3f    	vldr	s1, [pc, #252]          @ 0x651c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x84c>
    6420: ee01 2a20    	vmla.f32	s4, s2, s1
    6424: eef0 0a4d    	vmov.f32	s1, s26
    6428: ed8d 4a1d    	vstr	s8, [sp, #116]
    642c: ed8d 7a1e    	vstr	s14, [sp, #120]
    6430: eeb0 7a4d    	vmov.f32	s14, s26
    6434: bfc8         	it	gt
    6436: 2401         	movgt	r4, #0x1
    6438: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    643c: eeb5 6a40    	vcmp.f32	s12, #0
    6440: ee32 4a28    	vadd.f32	s8, s4, s17
    6444: bf48         	it	mi
    6446: 2601         	movmi	r6, #0x1
    6448: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    644c: ed8d 4a1c    	vstr	s8, [sp, #112]
    6450: d928         	bls	0x64a4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x7d4> @ imm = #0x50
    6452: ee3a 1a28    	vadd.f32	s2, s20, s17
    6456: ee85 7a81    	vdiv.f32	s14, s11, s2
    645a: eeb0 1aee    	vabs.f32	s2, s29
    645e: eeb4 1a46    	vcmp.f32	s2, s12
    6462: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6466: dd17         	ble	0x6498 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x7c8> @ imm = #0x2e
    6468: ee1e 2a90    	vmov	r2, s29
    646c: ee2a 2a05    	vmul.f32	s4, s20, s10
    6470: eef4 ea6e    	vcmp.f32	s29, s29
    6474: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6478: f363 021e    	bfi	r2, r3, #0, #31
    647c: ee01 2a10    	vmov	s2, r2
    6480: ee21 1a07    	vmul.f32	s2, s2, s14
    6484: ee22 7a07    	vmul.f32	s14, s4, s14
    6488: ed1f 2acf    	vldr	s4, [pc, #-828]         @ 0x6150 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x480>
    648c: fe52 0a01    	vselvs.f32	s1, s4, s2
    6490: e008         	b	0x64a4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x7d4> @ imm = #0x10
    6492: bf00         	nop
    6494: bf00         	nop
    6496: bf00         	nop
    6498: ee2e 1a8a    	vmul.f32	s2, s29, s20
    649c: ee81 1a06    	vdiv.f32	s2, s2, s12
    64a0: ee61 0a07    	vmul.f32	s1, s2, s14
    64a4: eef5 4a40    	vcmp.f32	s9, #0
    64a8: eeb0 1a4d    	vmov.f32	s2, s26
    64ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64b0: bf48         	it	mi
    64b2: eeb0 1a61    	vmovmi.f32	s2, s3
    64b6: eeb0 6ae4    	vabs.f32	s12, s9
    64ba: eeb0 aa48    	vmov.f32	s20, s16
    64be: fe38 5a81    	vselgt.f32	s10, s17, s2
    64c2: eeb0 1a4d    	vmov.f32	s2, s26
    64c6: eeb4 6a48    	vcmp.f32	s12, s16
    64ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64ce: da2d         	bge	0x652c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x85c> @ imm = #0x5a
    64d0: ed9f 1ae9    	vldr	s2, [pc, #932]          @ 0x6878 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xba8>
    64d4: eeb4 6a41    	vcmp.f32	s12, s2
    64d8: eeb0 1a4d    	vmov.f32	s2, s26
    64dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64e0: d922         	bls	0x6528 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x858> @ imm = #0x44
    64e2: ed9f 1ae6    	vldr	s2, [pc, #920]          @ 0x687c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xbac>
    64e6: eeb4 6a41    	vcmp.f32	s12, s2
    64ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64ee: d917         	bls	0x6520 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x850> @ imm = #0x2e
    64f0: ed9f 1ae3    	vldr	s2, [pc, #908]          @ 0x6880 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xbb0>
    64f4: e016         	b	0x6524 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x854> @ imm = #0x2c
    64f6: bf00         	nop
    64f8: 51 e6 7f 3f  	.word	0x3f7fe651
    64fc: 99 76 cd 39  	.word	0x39cd7699
    6500: 2b 18 95 3b  	.word	0x3b95182b
    6504: 95 bf d6 33  	.word	0x33d6bf95
    6508: 0a d7 23 3c  	.word	0x3c23d70a
    650c: 79 61 2e c3  	.word	0xc32e6179
    6510: 00 00 00 80  	.word	0x80000000
    6514: d6 f8 e4 b6  	.word	0xb6e4f8d6
    6518: 83 c0 96 38  	.word	0x3896c083
    651c: fc 9d 08 bf  	.word	0xbf089dfc
    6520: ed9f 1ad8    	vldr	s2, [pc, #864]          @ 0x6884 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xbb4>
    6524: ee25 1a01    	vmul.f32	s2, s10, s2
    6528: eeb1 1a41    	vneg.f32	s2, s2
    652c: ea14 0206    	ands.w	r2, r4, r6
    6530: f04f 040d    	mov.w	r4, #0xd
    6534: 9500         	str	r5, [sp]
    6536: eef4 9a40    	vcmp.f32	s19, s0
    653a: fe0c 2a09    	vseleq.f32	s4, s24, s18
    653e: eddf 1ad2    	vldr	s3, [pc, #840]          @ 0x6888 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xbb8>
    6542: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6546: bf88         	it	hi
    6548: 240e         	movhi	r4, #0xe
    654a: eef4 9a69    	vcmp.f32	s19, s19
    654e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6552: eeb4 0a40    	vcmp.f32	s0, s0
    6556: fe10 5a29    	vselvs.f32	s10, s0, s19
    655a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    655e: ee20 1a81    	vmul.f32	s2, s1, s2
    6562: fe15 0a00    	vselvs.f32	s0, s10, s0
    6566: ee27 2a02    	vmul.f32	s4, s14, s4
    656a: ed9f 7af3    	vldr	s14, [pc, #972]         @ 0x6938 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc68>
    656e: eeb4 0a45    	vcmp.f32	s0, s10
    6572: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6576: fe35 5a00    	vselgt.f32	s10, s10, s0
    657a: ed9f 0af0    	vldr	s0, [pc, #960]          @ 0x693c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc6c>
    657e: ee21 6a00    	vmul.f32	s12, s2, s0
    6582: ed9f 0aef    	vldr	s0, [pc, #956]          @ 0x6940 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc70>
    6586: ee02 6a00    	vmla.f32	s12, s4, s0
    658a: ee21 0a2b    	vmul.f32	s0, s2, s23
    658e: ee21 1a21    	vmul.f32	s2, s2, s3
    6592: ee02 1a0d    	vmla.f32	s2, s4, s26
    6596: ee02 0a07    	vmla.f32	s0, s4, s14
    659a: eeb6 2a00    	vmov.f32	s4, #5.000000e-01
    659e: ee32 5a45    	vsub.f32	s10, s4, s10
    65a2: ed8d 1a21    	vstr	s2, [sp, #132]
    65a6: eeb8 1a00    	vmov.f32	s2, #-2.000000e+00
    65aa: ee36 2a28    	vadd.f32	s4, s12, s17
    65ae: ed8d 2a20    	vstr	s4, [sp, #128]
    65b2: ed8d 0a1f    	vstr	s0, [sp, #124]
    65b6: eeb4 5a41    	vcmp.f32	s10, s2
    65ba: eeb0 1a4d    	vmov.f32	s2, s26
    65be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65c2: dd1b         	ble	0x65fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x92c> @ imm = #0x36
    65c4: eeb0 1a4d    	vmov.f32	s2, s26
    65c8: eeb5 5a40    	vcmp.f32	s10, #0
    65cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65d0: d514         	bpl	0x65fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x92c> @ imm = #0x28
    65d2: eeb6 2a00    	vmov.f32	s4, #5.000000e-01
    65d6: eeb0 1a68    	vmov.f32	s2, s17
    65da: ee05 1a02    	vmla.f32	s2, s10, s4
    65de: ed1f 2a38    	vldr	s4, [pc, #-224]         @ 0x6500 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x830>
    65e2: ee21 1a02    	vmul.f32	s2, s2, s4
    65e6: ed1f 2a39    	vldr	s4, [pc, #-228]         @ 0x6504 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x834>
    65ea: eeb4 1a42    	vcmp.f32	s2, s4
    65ee: eeb0 1a4d    	vmov.f32	s2, s26
    65f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65f6: bfc8         	it	gt
    65f8: ed9f 1ad2    	vldrgt	s2, [pc, #840]          @ 0x6944 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc74>
    65fc: 4686         	mov	lr, r0
    65fe: eb00 1084    	add.w	r0, r0, r4, lsl #6
    6602: eeb0 6ac0    	vabs.f32	s12, s0
    6606: eddd 0a18    	vldr	s1, [sp, #96]
    660a: ed90 2b08    	vldr	d2, [r0, #32]
    660e: eeb0 7ac4    	vabs.f32	s14, s8
    6612: 2400         	movs	r4, #0x0
    6614: ee21 1a20    	vmul.f32	s2, s2, s1
    6618: f10d 0a70    	add.w	r10, sp, #0x70
    661c: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    6620: eeb4 6a47    	vcmp.f32	s12, s14
    6624: eeb0 7a63    	vmov.f32	s14, s7
    6628: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    662c: ed90 6b0c    	vldr	d6, [r0, #48]
    6630: ee22 2a41    	vnmul.f32	s4, s4, s2
    6634: eddf 4ac4    	vldr	s9, [pc, #784]          @ 0x6948 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc78>
    6638: fe30 0a04    	vselgt.f32	s0, s0, s8
    663c: eeb7 4bc6    	vcvt.f32.f64	s8, d6
    6640: eeb0 6ac2    	vabs.f32	s12, s4
    6644: ed90 5b0a    	vldr	d5, [r0, #40]
    6648: eeb0 0ac0    	vabs.f32	s0, s0
    664c: eeb7 5bc5    	vcvt.f32.f64	s10, d5
    6650: ee01 7a44    	vmls.f32	s14, s2, s8
    6654: eeb0 4a61    	vmov.f32	s8, s3
    6658: bfc8         	it	gt
    665a: 2401         	movgt	r4, #0x1
    665c: eeb4 6a40    	vcmp.f32	s12, s0
    6660: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6664: bfc8         	it	gt
    6666: 2402         	movgt	r4, #0x2
    6668: ee01 4a45    	vmls.f32	s8, s2, s10
    666c: ed8d 2a22    	vstr	s4, [sp, #136]
    6670: ee37 0a0e    	vadd.f32	s0, s14, s28
    6674: f8dd 8074    	ldr.w	r8, [sp, #0x74]
    6678: eb04 0044    	add.w	r0, r4, r4, lsl #1
    667c: ed8d 0a24    	vstr	s0, [sp, #144]
    6680: eb0a 0280    	add.w	r2, r10, r0, lsl #2
    6684: ed8d 4a23    	vstr	s8, [sp, #140]
    6688: f85a 3020    	ldr.w	r3, [r10, r0, lsl #2]
    668c: e9d2 5601    	ldrd	r5, r6, [r2, #4]
    6690: 951d         	str	r5, [sp, #0x74]
    6692: 9d1e         	ldr	r5, [sp, #0x78]
    6694: 961e         	str	r6, [sp, #0x78]
    6696: 9e1c         	ldr	r6, [sp, #0x70]
    6698: 931c         	str	r3, [sp, #0x70]
    669a: f85c 3024    	ldr.w	r3, [r12, r4, lsl #2]
    669e: f84a 6020    	str.w	r6, [r10, r0, lsl #2]
    66a2: e9c2 8501    	strd	r8, r5, [r2, #4]
    66a6: eb0c 0284    	add.w	r2, r12, r4, lsl #2
    66aa: 9319         	str	r3, [sp, #0x64]
    66ac: ed9d 0a1c    	vldr	s0, [sp, #112]
    66b0: ee10 0a10    	vmov	r0, s0
    66b4: ed82 3a00    	vstr	s6, [r2]
    66b8: f020 4000    	bic	r0, r0, #0x80000000
    66bc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    66c0: f280 8452    	bge.w	0x6f68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1298> @ imm = #0x8a4
    66c4: eeb0 1ac0    	vabs.f32	s2, s0
    66c8: eeb4 1a64    	vcmp.f32	s2, s9
    66cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66d0: f100 844a    	bmi.w	0x6f68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1298> @ imm = #0x894
    66d4: ed9d 1a22    	vldr	s2, [sp, #136]
    66d8: ed9d 2a1f    	vldr	s4, [sp, #124]
    66dc: ee81 1a00    	vdiv.f32	s2, s2, s0
    66e0: ed9d 3a1d    	vldr	s6, [sp, #116]
    66e4: ee82 2a00    	vdiv.f32	s4, s4, s0
    66e8: ed9d 6a23    	vldr	s12, [sp, #140]
    66ec: ed9d 7a20    	vldr	s14, [sp, #128]
    66f0: ed9d 4a19    	vldr	s8, [sp, #100]
    66f4: ee01 6a43    	vmls.f32	s12, s2, s6
    66f8: ed9d 5a1e    	vldr	s10, [sp, #120]
    66fc: ee02 7a43    	vmls.f32	s14, s4, s6
    6700: eddd 0a21    	vldr	s1, [sp, #132]
    6704: ee42 0a45    	vmls.f32	s1, s4, s10
    6708: eddd 1a1a    	vldr	s3, [sp, #104]
    670c: ee42 1a44    	vmls.f32	s3, s4, s8
    6710: eddd 3a24    	vldr	s7, [sp, #144]
    6714: ee41 3a45    	vmls.f32	s7, s2, s10
    6718: 9c05         	ldr	r4, [sp, #0x14]
    671a: 4625         	mov	r5, r4
    671c: a81c         	add	r0, sp, #0x70
    671e: eeb0 2ac6    	vabs.f32	s4, s12
    6722: ed8d 7a20    	vstr	s14, [sp, #128]
    6726: eef0 2ac7    	vabs.f32	s5, s14
    672a: edcd 0a21    	vstr	s1, [sp, #132]
    672e: edcd 1a1a    	vstr	s3, [sp, #104]
    6732: ed8d 6a23    	vstr	s12, [sp, #140]
    6736: eeb4 2a62    	vcmp.f32	s4, s5
    673a: ed9d 2a1b    	vldr	s4, [sp, #108]
    673e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6742: bfc8         	it	gt
    6744: f100 0518    	addgt.w	r5, r0, #0x18
    6748: edcd 3a24    	vstr	s7, [sp, #144]
    674c: 6822         	ldr	r2, [r4]
    674e: e9d5 6300    	ldrd	r6, r3, [r5]
    6752: 68a8         	ldr	r0, [r5, #0x8]
    6754: 6026         	str	r6, [r4]
    6756: 6866         	ldr	r6, [r4, #0x4]
    6758: 6063         	str	r3, [r4, #0x4]
    675a: 68a3         	ldr	r3, [r4, #0x8]
    675c: 60a0         	str	r0, [r4, #0x8]
    675e: ee01 2a44    	vmls.f32	s4, s2, s8
    6762: f04f 0004    	mov.w	r0, #0x4
    6766: e9c5 6301    	strd	r6, r3, [r5, #4]
    676a: ed9d 6a20    	vldr	s12, [sp, #128]
    676e: ee16 3a10    	vmov	r3, s12
    6772: bfc8         	it	gt
    6774: 2008         	movgt	r0, #0x8
    6776: ed8d 2a1b    	vstr	s4, [sp, #108]
    677a: 602a         	str	r2, [r5]
    677c: f85c 2000    	ldr.w	r2, [r12, r0]
    6780: 4460         	add	r0, r12
    6782: f023 4300    	bic	r3, r3, #0x80000000
    6786: f1b3 4fff    	cmp.w	r3, #0x7f800000
    678a: 921a         	str	r2, [sp, #0x68]
    678c: edc0 1a00    	vstr	s3, [r0]
    6790: f280 83ea    	bge.w	0x6f68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1298> @ imm = #0x7d4
    6794: eeb0 1ac6    	vabs.f32	s2, s12
    6798: eeb4 1a64    	vcmp.f32	s2, s9
    679c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67a0: f100 83e2    	bmi.w	0x6f68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1298> @ imm = #0x7c4
    67a4: ed9d 1a23    	vldr	s2, [sp, #140]
    67a8: eddd 0a24    	vldr	s1, [sp, #144]
    67ac: ee81 7a06    	vdiv.f32	s14, s2, s12
    67b0: ed9d 1a21    	vldr	s2, [sp, #132]
    67b4: ee47 0a41    	vmls.f32	s1, s14, s2
    67b8: edcd 0a24    	vstr	s1, [sp, #144]
    67bc: ee10 0a90    	vmov	r0, s1
    67c0: f020 4000    	bic	r0, r0, #0x80000000
    67c4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    67c8: f280 83ce    	bge.w	0x6f68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1298> @ imm = #0x79c
    67cc: eeb0 2ae0    	vabs.f32	s4, s1
    67d0: eeb4 2a64    	vcmp.f32	s4, s9
    67d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67d8: f100 83c6    	bmi.w	0x6f68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1298> @ imm = #0x78c
    67dc: ed9d 2a1a    	vldr	s4, [sp, #104]
    67e0: eddd 1a1b    	vldr	s3, [sp, #108]
    67e4: ee47 1a42    	vmls.f32	s3, s14, s4
    67e8: eec1 aaa0    	vdiv.f32	s21, s3, s1
    67ec: edcd aa1b    	vstr	s21, [sp, #108]
    67f0: ee01 2a6a    	vmls.f32	s4, s2, s21
    67f4: ed9d 1a16    	vldr	s2, [sp, #88]
    67f8: eeb0 1ac1    	vabs.f32	s2, s2
    67fc: eeb4 1a41    	vcmp.f32	s2, s2
    6800: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6804: eec2 ca06    	vdiv.f32	s25, s4, s12
    6808: ed9f 2ab8    	vldr	s4, [pc, #736]          @ 0x6aec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe1c>
    680c: fe18 1a81    	vselvs.f32	s2, s17, s2
    6810: edcd ca1a    	vstr	s25, [sp, #104]
    6814: ee03 4a6c    	vmls.f32	s8, s6, s25
    6818: ed9f 3ab5    	vldr	s6, [pc, #724]          @ 0x6af0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe20>
    681c: eeb4 1a68    	vcmp.f32	s2, s17
    6820: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6824: ee05 4a6a    	vmls.f32	s8, s10, s21
    6828: fe31 1a28    	vselgt.f32	s2, s2, s17
    682c: ee21 1a03    	vmul.f32	s2, s2, s6
    6830: ee84 4a00    	vdiv.f32	s8, s8, s0
    6834: fe81 0a42    	vminnm.f32	s0, s2, s4
    6838: eef0 7a44    	vmov.f32	s15, s8
    683c: eeb0 4ac4    	vabs.f32	s8, s8
    6840: eeb4 4a40    	vcmp.f32	s8, s0
    6844: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6848: d922         	bls	0x6890 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xbc0> @ imm = #0x44
    684a: 2400         	movs	r4, #0x0
    684c: eddf 4aa9    	vldr	s9, [pc, #676]          @ 0x6af4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe24>
    6850: ed9f 9aa9    	vldr	s18, [pc, #676]         @ 0x6af8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe28>
    6854: f04f 537e    	mov.w	r3, #0x3f800000
    6858: ed9f 0aa8    	vldr	s0, [pc, #672]          @ 0x6afc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe2c>
    685c: eeb4 ba40    	vcmp.f32	s22, s0
    6860: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6864: d859         	bhi	0x691a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc4a> @ imm = #0xb2
    6866: f1ab 0010    	sub.w	r0, r11, #0x10
    686a: fab0 f080    	clz	r0, r0
    686e: 0940         	lsrs	r0, r0, #0x5
    6870: 4320         	orrs	r0, r4
    6872: d056         	beq	0x6922 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc52> @ imm = #0xac
    6874: e366         	b	0x6f44 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1274> @ imm = #0x6cc
    6876: bf00         	nop
    6878: 7c f2 b0 3a  	.word	0x3ab0f27c
    687c: a6 9b c4 3b  	.word	0x3bc49ba6
    6880: 79 78 b0 43  	.word	0x43b07879
    6884: 53 4a a1 43  	.word	0x43a14a53
    6888: 79 2e 02 b9  	.word	0xb9022e79
    688c: 00 bf 00 bf  	.word	0xbf00bf00
    6890: ed9d 0a17    	vldr	s0, [sp, #92]
    6894: eeb0 1aec    	vabs.f32	s2, s25
    6898: eeb0 0ac0    	vabs.f32	s0, s0
    689c: eddf 4a95    	vldr	s9, [pc, #596]          @ 0x6af4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe24>
    68a0: ed9f 9a95    	vldr	s18, [pc, #596]         @ 0x6af8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe28>
    68a4: f04f 537e    	mov.w	r3, #0x3f800000
    68a8: eeb4 0a40    	vcmp.f32	s0, s0
    68ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68b0: fe18 0a80    	vselvs.f32	s0, s17, s0
    68b4: eeb4 0a68    	vcmp.f32	s0, s17
    68b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68bc: fe30 0a28    	vselgt.f32	s0, s0, s17
    68c0: ee20 0a03    	vmul.f32	s0, s0, s6
    68c4: fe80 0a42    	vminnm.f32	s0, s0, s4
    68c8: eeb4 1a40    	vcmp.f32	s2, s0
    68cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68d0: d81b         	bhi	0x690a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc3a> @ imm = #0x36
    68d2: ed9d 0a18    	vldr	s0, [sp, #96]
    68d6: eeb0 1aea    	vabs.f32	s2, s21
    68da: eeb0 0ac0    	vabs.f32	s0, s0
    68de: eeb4 0a40    	vcmp.f32	s0, s0
    68e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68e6: fe18 0a80    	vselvs.f32	s0, s17, s0
    68ea: eeb4 0a68    	vcmp.f32	s0, s17
    68ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68f2: fe30 0a28    	vselgt.f32	s0, s0, s17
    68f6: ee20 0a03    	vmul.f32	s0, s0, s6
    68fa: fe80 0a42    	vminnm.f32	s0, s0, s4
    68fe: eeb4 1a40    	vcmp.f32	s2, s0
    6902: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6906: f240 82cb    	bls.w	0x6ea0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x11d0> @ imm = #0x596
    690a: 2400         	movs	r4, #0x0
    690c: ed9f 0a7b    	vldr	s0, [pc, #492]          @ 0x6afc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe2c>
    6910: eeb4 ba40    	vcmp.f32	s22, s0
    6914: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6918: d9a5         	bls	0x6866 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xb96> @ imm = #-0xb6
    691a: f1bb 0f10    	cmp.w	r11, #0x10
    691e: f000 832b    	beq.w	0x6f78 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12a8> @ imm = #0x656
    6922: f04f 547e    	mov.w	r4, #0x3f800000
    6926: ed8d 4a02    	vstr	s8, [sp, #8]
    692a: ed8d ba06    	vstr	s22, [sp, #24]
    692e: edcd ea03    	vstr	s29, [sp, #12]
    6932: edcd fa04    	vstr	s31, [sp, #16]
    6936: e017         	b	0x6968 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc98> @ imm = #0x2e
    6938: 6f f3 03 be  	.word	0xbe03f36f
    693c: af e6 27 39  	.word	0x3927e6af
    6940: d5 35 a4 be  	.word	0xbea435d5
    6944: 2b 18 15 3b  	.word	0x3b15182b
    6948: 08 e5 3c 1e  	.word	0x1e3ce508
    694c: 00 bf 00 bf  	.word	0xbf00bf00
    6950: eeb0 aa48    	vmov.f32	s20, s16
    6954: f5a4 0400    	sub.w	r4, r4, #0x800000
    6958: f1b4 5f66    	cmp.w	r4, #0x39800000
    695c: eddf 4a65    	vldr	s9, [pc, #404]          @ 0x6af4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe24>
    6960: ed9f 9a65    	vldr	s18, [pc, #404]         @ 0x6af8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe28>
    6964: f000 82b0    	beq.w	0x6ec8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x11f8> @ imm = #0x560
    6968: ee01 4a10    	vmov	s2, r4
    696c: eddd ea16    	vldr	s29, [sp, #88]
    6970: ed9f 2bd5    	vldr	d2, [pc, #852]          @ 0x6cc8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xff8>
    6974: ed9d 7a0f    	vldr	s14, [sp, #60]
    6978: eddd 1a0e    	vldr	s3, [sp, #56]
    697c: ee47 ea81    	vmla.f32	s29, s15, s2
    6980: eddd ba17    	vldr	s23, [sp, #92]
    6984: ed9d 0b10    	vldr	d0, [sp, #64]
    6988: ee4c ba81    	vmla.f32	s23, s25, s2
    698c: ed9d 4a13    	vldr	s8, [sp, #76]
    6990: ed9d ba18    	vldr	s22, [sp, #96]
    6994: ee0a ba81    	vmla.f32	s22, s21, s2
    6998: eef0 da4d    	vmov.f32	s27, s26
    699c: eeb0 ca4d    	vmov.f32	s24, s26
    69a0: eeb0 1a4d    	vmov.f32	s2, s26
    69a4: edc1 ea04    	vstr	s29, [r1, #16]
    69a8: eeb7 5aee    	vcvt.f64.f32	d5, s29
    69ac: edc1 ba05    	vstr	s23, [r1, #20]
    69b0: ed81 ba06    	vstr	s22, [r1, #24]
    69b4: ee05 0b02    	vmla.f64	d0, d5, d2
    69b8: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    69bc: eef0 0a4d    	vmov.f32	s1, s26
    69c0: ee00 7a24    	vmla.f32	s14, s0, s9
    69c4: ed9f 0ac7    	vldr	s0, [pc, #796]          @ 0x6ce4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1014>
    69c8: ee4e 1a80    	vmla.f32	s3, s29, s0
    69cc: ed9d 0a12    	vldr	s0, [sp, #72]
    69d0: ee4b 1a89    	vmla.f32	s3, s23, s18
    69d4: eeb4 0a47    	vcmp.f32	s0, s14
    69d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    69dc: fe30 2a07    	vselgt.f32	s4, s0, s14
    69e0: eeb0 0ae1    	vabs.f32	s0, s3
    69e4: eeb4 2a44    	vcmp.f32	s4, s8
    69e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    69ec: eeb4 0a4a    	vcmp.f32	s0, s20
    69f0: fe74 fa02    	vselgt.f32	s31, s8, s4
    69f4: eeb0 4a4d    	vmov.f32	s8, s26
    69f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    69fc: f280 80a4    	bge.w	0x6b48 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe78> @ imm = #0x148
    6a00: ed1f 1a63    	vldr	s2, [pc, #-396]         @ 0x6878 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xba8>
    6a04: eeb4 0a41    	vcmp.f32	s0, s2
    6a08: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    6a0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a10: d91c         	bls	0x6a4c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xd7c> @ imm = #0x38
    6a12: ed1f 1a66    	vldr	s2, [pc, #-408]         @ 0x687c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xbac>
    6a16: eeb4 0a41    	vcmp.f32	s0, s2
    6a1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a1e: d90b         	bls	0x6a38 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xd68> @ imm = #0x16
    6a20: ed9f 1ab1    	vldr	s2, [pc, #708]          @ 0x6ce8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1018>
    6a24: ee30 0a01    	vadd.f32	s0, s0, s2
    6a28: eeb0 1a08    	vmov.f32	s2, #3.000000e+00
    6a2c: ed1f 2a6c    	vldr	s4, [pc, #-432]         @ 0x6880 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xbb0>
    6a30: e00a         	b	0x6a48 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xd78> @ imm = #0x14
    6a32: bf00         	nop
    6a34: bf00         	nop
    6a36: bf00         	nop
    6a38: ed9f 1aac    	vldr	s2, [pc, #688]          @ 0x6cec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x101c>
    6a3c: ee30 0a01    	vadd.f32	s0, s0, s2
    6a40: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    6a44: ed1f 2a71    	vldr	s4, [pc, #-452]         @ 0x6884 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xbb4>
    6a48: ee00 1a02    	vmla.f32	s2, s0, s4
    6a4c: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    6a50: ee30 0a41    	vsub.f32	s0, s0, s2
    6a54: fe80 ca0d    	vmaxnm.f32	s24, s0, s26
    6a58: eeb5 ca40    	vcmp.f32	s24, #0
    6a5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a60: d93a         	bls	0x6ad8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe08> @ imm = #0x74
    6a62: eeb0 0aef    	vabs.f32	s0, s31
    6a66: eeb4 0a4c    	vcmp.f32	s0, s24
    6a6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a6e: dd47         	ble	0x6b00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe30> @ imm = #0x8e
    6a70: ee8c 4a00    	vdiv.f32	s8, s24, s0
    6a74: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    6a78: ee24 0a04    	vmul.f32	s0, s8, s8
    6a7c: eeb0 1a42    	vmov.f32	s2, s4
    6a80: ee20 0a00    	vmul.f32	s0, s0, s0
    6a84: ee20 0a00    	vmul.f32	s0, s0, s0
    6a88: ee60 da00    	vmul.f32	s27, s0, s0
    6a8c: ee3d 0a82    	vadd.f32	s0, s27, s4
    6a90: eeb4 0a42    	vcmp.f32	s0, s4
    6a94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a98: d009         	beq	0x6aae <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xdde> @ imm = #0x12
    6a9a: eeb1 0ac0    	vsqrt.f32	s0, s0
    6a9e: eeb1 0ac0    	vsqrt.f32	s0, s0
    6aa2: eeb1 0ac0    	vsqrt.f32	s0, s0
    6aa6: eeb1 0ac0    	vsqrt.f32	s0, s0
    6aaa: eeb0 1a40    	vmov.f32	s2, s0
    6aae: ee1f 0a90    	vmov	r0, s31
    6ab2: eec2 0a01    	vdiv.f32	s1, s4, s2
    6ab6: eef4 fa6f    	vcmp.f32	s31, s31
    6aba: ed9f 1a8d    	vldr	s2, [pc, #564]          @ 0x6cf0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1020>
    6abe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ac2: f363 001e    	bfi	r0, r3, #0, #31
    6ac6: ee00 0a10    	vmov	s0, r0
    6aca: ee20 0a0c    	vmul.f32	s0, s0, s24
    6ace: ee20 0a20    	vmul.f32	s0, s0, s1
    6ad2: fe11 1a00    	vselvs.f32	s2, s2, s0
    6ad6: e037         	b	0x6b48 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe78> @ imm = #0x6e
    6ad8: eeb0 4a4d    	vmov.f32	s8, s26
    6adc: eef0 0a4d    	vmov.f32	s1, s26
    6ae0: eef0 da4d    	vmov.f32	s27, s26
    6ae4: eeb0 1a4d    	vmov.f32	s2, s26
    6ae8: e02e         	b	0x6b48 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe78> @ imm = #0x5c
    6aea: bf00         	nop
    6aec: ac c5 a7 37  	.word	0x37a7c5ac
    6af0: bd 37 06 36  	.word	0x360637bd
    6af4: 79 61 2e 43  	.word	0x432e6179
    6af8: d6 f8 e4 36  	.word	0x36e4f8d6
    6afc: 17 b7 d1 38  	.word	0x38d1b717
    6b00: ee8f 4a8c    	vdiv.f32	s8, s31, s24
    6b04: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    6b08: ee24 0a04    	vmul.f32	s0, s8, s8
    6b0c: eeb0 1a42    	vmov.f32	s2, s4
    6b10: ee20 0a00    	vmul.f32	s0, s0, s0
    6b14: ee20 0a00    	vmul.f32	s0, s0, s0
    6b18: ee60 da00    	vmul.f32	s27, s0, s0
    6b1c: ee3d 0a82    	vadd.f32	s0, s27, s4
    6b20: eeb4 0a42    	vcmp.f32	s0, s4
    6b24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b28: d009         	beq	0x6b3e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe6e> @ imm = #0x12
    6b2a: eeb1 0ac0    	vsqrt.f32	s0, s0
    6b2e: eeb1 0ac0    	vsqrt.f32	s0, s0
    6b32: eeb1 0ac0    	vsqrt.f32	s0, s0
    6b36: eeb1 0ac0    	vsqrt.f32	s0, s0
    6b3a: eeb0 1a40    	vmov.f32	s2, s0
    6b3e: eec2 0a01    	vdiv.f32	s1, s4, s2
    6b42: ee2f 1aa0    	vmul.f32	s2, s31, s1
    6b46: bf00         	nop
    6b48: ee7e 8ac1    	vsub.f32	s17, s29, s2
    6b4c: ed9f 0ad9    	vldr	s0, [pc, #868]          @ 0x6eb4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x11e4>
    6b50: ee18 0a90    	vmov	r0, s17
    6b54: f020 4000    	bic	r0, r0, #0x80000000
    6b58: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6b5c: da07         	bge	0x6b6e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xe9e> @ imm = #0xe
    6b5e: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    6b62: ee88 0a80    	vdiv.f32	s0, s17, s0
    6b66: eeb0 0ac0    	vabs.f32	s0, s0
    6b6a: fe80 0a0d    	vmaxnm.f32	s0, s0, s26
    6b6e: ed9f 3bd2    	vldr	d3, [pc, #840]          @ 0x6eb8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x11e8>
    6b72: eeb7 6aeb    	vcvt.f64.f32	d6, s23
    6b76: ed9d fa0a    	vldr	s30, [sp, #40]
    6b7a: ed9d 2b0c    	vldr	d2, [sp, #48]
    6b7e: eeb0 8a4a    	vmov.f32	s16, s20
    6b82: ee05 2b03    	vmla.f64	d2, d5, d3
    6b86: ed9d 5a14    	vldr	s10, [sp, #80]
    6b8a: eef0 5a4d    	vmov.f32	s11, s26
    6b8e: ed9f 3bcc    	vldr	d3, [pc, #816]          @ 0x6ec0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x11f0>
    6b92: ee06 2b03    	vmla.f64	d2, d6, d3
    6b96: eddf 3abf    	vldr	s7, [pc, #764]          @ 0x6e94 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x11c4>
    6b9a: eeb0 6a4d    	vmov.f32	s12, s26
    6b9e: eeb7 1bc2    	vcvt.f32.f64	s2, d2
    6ba2: ed9f 2abd    	vldr	s4, [pc, #756]          @ 0x6e98 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x11c8>
    6ba6: ee6b 2a23    	vmul.f32	s5, s22, s7
    6baa: ee01 fa24    	vmla.f32	s30, s2, s9
    6bae: ed9d 1a0b    	vldr	s2, [sp, #44]
    6bb2: ee0e 1a89    	vmla.f32	s2, s29, s18
    6bb6: eeb0 9a4d    	vmov.f32	s18, s26
    6bba: ee0b 1a82    	vmla.f32	s2, s23, s4
    6bbe: ed9d 2a15    	vldr	s4, [sp, #84]
    6bc2: eeb4 2a4f    	vcmp.f32	s4, s30
    6bc6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6bca: fe32 2a0f    	vselgt.f32	s4, s4, s30
    6bce: ee71 4a22    	vadd.f32	s9, s2, s5
    6bd2: eeb4 2a45    	vcmp.f32	s4, s10
    6bd6: eeb0 1ae4    	vabs.f32	s2, s9
    6bda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6bde: fe75 6a02    	vselgt.f32	s13, s10, s4
    6be2: eeb0 5a4d    	vmov.f32	s10, s26
    6be6: eeb4 1a4a    	vcmp.f32	s2, s20
    6bea: eeb0 aa4d    	vmov.f32	s20, s26
    6bee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6bf2: f280 80a5    	bge.w	0x6d40 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1070> @ imm = #0x14a
    6bf6: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    6bfa: ed1f 2ae1    	vldr	s4, [pc, #-900]         @ 0x6878 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xba8>
    6bfe: eeb4 1a42    	vcmp.f32	s2, s4
    6c02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c06: d917         	bls	0x6c38 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xf68> @ imm = #0x2e
    6c08: ed9f 2ae9    	vldr	s4, [pc, #932]          @ 0x6fb0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12e0>
    6c0c: eeb4 1a42    	vcmp.f32	s2, s4
    6c10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c14: d908         	bls	0x6c28 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xf58> @ imm = #0x10
    6c16: ed9f 2ae9    	vldr	s4, [pc, #932]          @ 0x6fbc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12ec>
    6c1a: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    6c1e: ee31 1a02    	vadd.f32	s2, s2, s4
    6c22: ed9f 2ae7    	vldr	s4, [pc, #924]          @ 0x6fc0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12f0>
    6c26: e005         	b	0x6c34 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xf64> @ imm = #0xa
    6c28: ed9f 2ae2    	vldr	s4, [pc, #904]          @ 0x6fb4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12e4>
    6c2c: ee31 1a02    	vadd.f32	s2, s2, s4
    6c30: ed9f 2ae1    	vldr	s4, [pc, #900]          @ 0x6fb8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12e8>
    6c34: ee01 5a02    	vmla.f32	s10, s2, s4
    6c38: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    6c3c: ee31 1a45    	vsub.f32	s2, s2, s10
    6c40: fe81 6a0d    	vmaxnm.f32	s12, s2, s26
    6c44: eeb5 6a40    	vcmp.f32	s12, #0
    6c48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c4c: d940         	bls	0x6cd0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1000> @ imm = #0x80
    6c4e: eeb0 1ae6    	vabs.f32	s2, s13
    6c52: eeb4 1a46    	vcmp.f32	s2, s12
    6c56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c5a: dd4d         	ble	0x6cf8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1028> @ imm = #0x9a
    6c5c: ee86 5a01    	vdiv.f32	s10, s12, s2
    6c60: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    6c64: ee25 1a05    	vmul.f32	s2, s10, s10
    6c68: eef0 5a42    	vmov.f32	s11, s4
    6c6c: ee21 1a01    	vmul.f32	s2, s2, s2
    6c70: ee21 1a01    	vmul.f32	s2, s2, s2
    6c74: ee21 aa01    	vmul.f32	s20, s2, s2
    6c78: ee3a 1a02    	vadd.f32	s2, s20, s4
    6c7c: eeb4 1a42    	vcmp.f32	s2, s4
    6c80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c84: d009         	beq	0x6c9a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xfca> @ imm = #0x12
    6c86: eeb1 1ac1    	vsqrt.f32	s2, s2
    6c8a: eeb1 1ac1    	vsqrt.f32	s2, s2
    6c8e: eeb1 1ac1    	vsqrt.f32	s2, s2
    6c92: eeb1 1ac1    	vsqrt.f32	s2, s2
    6c96: eef0 5a41    	vmov.f32	s11, s2
    6c9a: ee16 0a90    	vmov	r0, s13
    6c9e: eec2 5a25    	vdiv.f32	s11, s4, s11
    6ca2: eef4 6a66    	vcmp.f32	s13, s13
    6ca6: ed9f 2ac7    	vldr	s4, [pc, #796]          @ 0x6fc4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12f4>
    6caa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6cae: f363 001e    	bfi	r0, r3, #0, #31
    6cb2: ee01 0a10    	vmov	s2, r0
    6cb6: ee21 1a06    	vmul.f32	s2, s2, s12
    6cba: ee21 1a25    	vmul.f32	s2, s2, s11
    6cbe: fe12 9a01    	vselvs.f32	s18, s4, s2
    6cc2: e03d         	b	0x6d40 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1070> @ imm = #0x7a
    6cc4: bf00         	nop
    6cc6: bf00         	nop
    6cc8: 1c 38 88 77  	.word	0x7788381c
    6ccc: bf 13 e1 bf  	.word	0xbfe113bf
    6cd0: eeb0 5a4d    	vmov.f32	s10, s26
    6cd4: eef0 5a4d    	vmov.f32	s11, s26
    6cd8: eeb0 aa4d    	vmov.f32	s20, s26
    6cdc: eeb0 9a4d    	vmov.f32	s18, s26
    6ce0: e02e         	b	0x6d40 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1070> @ imm = #0x5c
    6ce2: bf00         	nop
    6ce4: 83 c0 96 b8  	.word	0xb896c083
    6ce8: a6 9b c4 bb  	.word	0xbbc49ba6
    6cec: 7c f2 b0 ba  	.word	0xbab0f27c
    6cf0: 00 00 c0 7f  	.word	0x7fc00000
    6cf4: 00 bf 00 bf  	.word	0xbf00bf00
    6cf8: ee86 5a86    	vdiv.f32	s10, s13, s12
    6cfc: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    6d00: ee25 1a05    	vmul.f32	s2, s10, s10
    6d04: eeb0 2a43    	vmov.f32	s4, s6
    6d08: ee21 1a01    	vmul.f32	s2, s2, s2
    6d0c: ee21 1a01    	vmul.f32	s2, s2, s2
    6d10: ee21 aa01    	vmul.f32	s20, s2, s2
    6d14: ee3a 1a03    	vadd.f32	s2, s20, s6
    6d18: eeb4 1a43    	vcmp.f32	s2, s6
    6d1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d20: d009         	beq	0x6d36 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1066> @ imm = #0x12
    6d22: eeb1 1ac1    	vsqrt.f32	s2, s2
    6d26: eeb1 1ac1    	vsqrt.f32	s2, s2
    6d2a: eeb1 1ac1    	vsqrt.f32	s2, s2
    6d2e: eeb1 1ac1    	vsqrt.f32	s2, s2
    6d32: eeb0 2a41    	vmov.f32	s4, s2
    6d36: eec3 5a02    	vdiv.f32	s11, s6, s4
    6d3a: ee26 9aa5    	vmul.f32	s18, s13, s11
    6d3e: bf00         	nop
    6d40: ee3b 9ac9    	vsub.f32	s18, s23, s18
    6d44: ed9f 1aa0    	vldr	s2, [pc, #640]          @ 0x6fc8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12f8>
    6d48: ee19 0a10    	vmov	r0, s18
    6d4c: f020 4000    	bic	r0, r0, #0x80000000
    6d50: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6d54: da17         	bge	0x6d86 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x10b6> @ imm = #0x2e
    6d56: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    6d5a: eeb4 0a40    	vcmp.f32	s0, s0
    6d5e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d62: ee89 1a01    	vdiv.f32	s2, s18, s2
    6d66: eeb0 1ac1    	vabs.f32	s2, s2
    6d6a: fe11 0a00    	vselvs.f32	s0, s2, s0
    6d6e: eeb4 1a41    	vcmp.f32	s2, s2
    6d72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d76: fe10 1a01    	vselvs.f32	s2, s0, s2
    6d7a: eeb4 0a41    	vcmp.f32	s0, s2
    6d7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d82: fe30 1a01    	vselgt.f32	s2, s0, s2
    6d86: ed9f 3a91    	vldr	s6, [pc, #580]          @ 0x6fcc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12fc>
    6d8a: ed9d 2a09    	vldr	s4, [sp, #36]
    6d8e: ee2b 0a83    	vmul.f32	s0, s23, s6
    6d92: eeb8 ea00    	vmov.f32	s28, #-2.000000e+00
    6d96: ee70 9a02    	vadd.f32	s19, s0, s4
    6d9a: ed9f 2a8d    	vldr	s4, [pc, #564]          @ 0x6fd0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1300>
    6d9e: ee4b 9a02    	vmla.f32	s19, s22, s4
    6da2: ed9d 2a08    	vldr	s4, [sp, #32]
    6da6: ee30 0a02    	vadd.f32	s0, s0, s4
    6daa: ee0b 0a43    	vmls.f32	s0, s22, s6
    6dae: eeb6 3a00    	vmov.f32	s6, #5.000000e-01
    6db2: fe89 2ac0    	vminnm.f32	s4, s19, s0
    6db6: ee33 2a42    	vsub.f32	s4, s6, s4
    6dba: eeb4 2a4e    	vcmp.f32	s4, s28
    6dbe: ed9f ea85    	vldr	s28, [pc, #532]         @ 0x6fd4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1304>
    6dc2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6dc6: d91a         	bls	0x6dfe <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x112e> @ imm = #0x34
    6dc8: eeb4 2a42    	vcmp.f32	s4, s4
    6dcc: eeb0 ea4d    	vmov.f32	s28, s26
    6dd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6dd4: fe1d 2a02    	vselvs.f32	s4, s26, s4
    6dd8: eeb5 2a40    	vcmp.f32	s4, #0
    6ddc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6de0: bfb8         	it	lt
    6de2: eeb0 ea42    	vmovlt.f32	s28, s4
    6de6: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    6dea: ee0e 2a03    	vmla.f32	s4, s28, s6
    6dee: ed9f 3a7a    	vldr	s6, [pc, #488]          @ 0x6fd8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1308>
    6df2: ee22 2a03    	vmul.f32	s4, s4, s6
    6df6: ed9f 3a77    	vldr	s6, [pc, #476]          @ 0x6fd4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1304>
    6dfa: fe82 ea03    	vmaxnm.f32	s28, s4, s6
    6dfe: ed9d 2a07    	vldr	s4, [sp, #28]
    6e02: ee0b 2aa3    	vmla.f32	s4, s23, s7
    6e06: ee72 2a62    	vsub.f32	s5, s4, s5
    6e0a: ee5b 2a0e    	vnmls.f32	s5, s22, s28
    6e0e: ee12 0a90    	vmov	r0, s5
    6e12: f020 4000    	bic	r0, r0, #0x80000000
    6e16: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6e1a: f6bf ad99    	bge.w	0x6950 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc80> @ imm = #-0x4ce
    6e1e: ed9f 2a6f    	vldr	s4, [pc, #444]          @ 0x6fdc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x130c>
    6e22: eeb4 1a41    	vcmp.f32	s2, s2
    6e26: ee82 2a82    	vdiv.f32	s4, s5, s4
    6e2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e2e: eeb0 2ac2    	vabs.f32	s4, s4
    6e32: fe12 1a01    	vselvs.f32	s2, s4, s2
    6e36: eeb4 2a42    	vcmp.f32	s4, s4
    6e3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e3e: fe11 2a02    	vselvs.f32	s4, s2, s4
    6e42: eeb4 1a42    	vcmp.f32	s2, s4
    6e46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e4a: fe31 1a02    	vselgt.f32	s2, s2, s4
    6e4e: ed9d 2a06    	vldr	s4, [sp, #24]
    6e52: eeb4 1a42    	vcmp.f32	s2, s4
    6e56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e5a: f57f ad79    	bpl.w	0x6950 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc80> @ imm = #-0x50e
    6e5e: f1bb 0f10    	cmp.w	r11, #0x10
    6e62: eddd aa12    	vldr	s21, [sp, #72]
    6e66: eddd ca13    	vldr	s25, [sp, #76]
    6e6a: 9d00         	ldr	r5, [sp]
    6e6c: f000 8094    	beq.w	0x6f98 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12c8> @ imm = #0x128
    6e70: ed8d ba18    	vstr	s22, [sp, #96]
    6e74: eeb0 ba41    	vmov.f32	s22, s2
    6e78: edcd ea16    	vstr	s29, [sp, #88]
    6e7c: eef0 ea66    	vmov.f32	s29, s13
    6e80: 4670         	mov	r0, lr
    6e82: 2d10         	cmp	r5, #0x10
    6e84: f109 0901    	add.w	r9, r9, #0x1
    6e88: 46ab         	mov	r11, r5
    6e8a: edcd ba17    	vstr	s23, [sp, #92]
    6e8e: f77f aa1b    	ble.w	0x62c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x5f8> @ imm = #-0xbca
    6e92: e081         	b	0x6f98 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x12c8> @ imm = #0x102
    6e94: 79 2e 02 39  	.word	0x39022e79
    6e98: af e6 27 b9  	.word	0xb927e6af
    6e9c: 00 bf 00 bf  	.word	0xbf00bf00
    6ea0: 2401         	movs	r4, #0x1
    6ea2: ed9f 0a50    	vldr	s0, [pc, #320]          @ 0x6fe4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1314>
    6ea6: eeb4 ba40    	vcmp.f32	s22, s0
    6eaa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6eae: f63f ad34    	bhi.w	0x691a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xc4a> @ imm = #-0x598
    6eb2: e4d8         	b	0x6866 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0xb96> @ imm = #-0x650
    6eb4: 00 00 80 7f  	.word	0x7f800000
    6eb8: 15 be b6 e5  	.word	0xe5b6be15
    6ebc: 6d 7e c0 bf  	.word	0xbfc07e6d
    6ec0: 67 42 87 92  	.word	0x92874267
    6ec4: ba 86 d4 bf  	.word	0xbfd486ba
    6ec8: ed9d ba06    	vldr	s22, [sp, #24]
    6ecc: ed9f 0a45    	vldr	s0, [pc, #276]          @ 0x6fe4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1314>
    6ed0: eeb4 ba40    	vcmp.f32	s22, s0
    6ed4: 2000         	movs	r0, #0x0
    6ed6: ed9f 2a42    	vldr	s4, [pc, #264]          @ 0x6fe0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1310>
    6eda: ed9d 0a02    	vldr	s0, [sp, #8]
    6ede: 2200         	movs	r2, #0x0
    6ee0: f109 0901    	add.w	r9, r9, #0x1
    6ee4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ee8: eeb4 0a42    	vcmp.f32	s0, s4
    6eec: bf98         	it	ls
    6eee: 2001         	movls	r0, #0x1
    6ef0: eeb0 0aec    	vabs.f32	s0, s25
    6ef4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ef8: bf98         	it	ls
    6efa: 2201         	movls	r2, #0x1
    6efc: eeb4 0a42    	vcmp.f32	s0, s4
    6f00: 4010         	ands	r0, r2
    6f02: 2200         	movs	r2, #0x0
    6f04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f08: bf98         	it	ls
    6f0a: 2201         	movls	r2, #0x1
    6f0c: eeb0 0aea    	vabs.f32	s0, s21
    6f10: ed9d 1a16    	vldr	s2, [sp, #88]
    6f14: 4010         	ands	r0, r2
    6f16: 2200         	movs	r2, #0x0
    6f18: ed81 1a04    	vstr	s2, [r1, #16]
    6f1c: eeb4 0a42    	vcmp.f32	s0, s4
    6f20: ed9d 0a17    	vldr	s0, [sp, #92]
    6f24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f28: ed81 0a05    	vstr	s0, [r1, #20]
    6f2c: bf98         	it	ls
    6f2e: 2201         	movls	r2, #0x1
    6f30: eddd fa04    	vldr	s31, [sp, #16]
    6f34: eddd ea03    	vldr	s29, [sp, #12]
    6f38: ea00 0402    	and.w	r4, r0, r2
    6f3c: ed9d 0a18    	vldr	s0, [sp, #96]
    6f40: ed81 0a06    	vstr	s0, [r1, #24]
    6f44: 68b8         	ldr	r0, [r7, #0x8]
    6f46: edc0 fa02    	vstr	s31, [r0, #8]
    6f4a: edc0 ea03    	vstr	s29, [r0, #12]
    6f4e: 9801         	ldr	r0, [sp, #0x4]
    6f50: ed80 ba00    	vstr	s22, [r0]
    6f54: f880 9004    	strb.w	r9, [r0, #0x4]
    6f58: 7144         	strb	r4, [r0, #0x5]
    6f5a: b028         	add	sp, #0xa0
    6f5c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    6f60: b001         	add	sp, #0x4
    6f62: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    6f66: bdf0         	pop	{r4, r5, r6, r7, pc}
    6f68: 9901         	ldr	r1, [sp, #0x4]
    6f6a: 2000         	movs	r0, #0x0
    6f6c: ed81 ba00    	vstr	s22, [r1]
    6f70: f881 9004    	strb.w	r9, [r1, #0x4]
    6f74: 7148         	strb	r0, [r1, #0x5]
    6f76: e7f0         	b	0x6f5a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x128a> @ imm = #-0x20
    6f78: 2400         	movs	r4, #0x0
    6f7a: e7e3         	b	0x6f44 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>+0x1274> @ imm = #-0x3a
    6f7c: bf00         	nop
    6f7e: bf00         	nop
    6f80: f64d 207b    	movw	r0, #0xda7b
    6f84: f64d 7220    	movw	r2, #0xdf20
    6f88: f2c0 0000    	movt	r0, #0x0
    6f8c: f2c0 0200    	movt	r2, #0x0
    6f90: a91c         	add	r1, sp, #0x70
    6f92: f004 ff77    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0x4eee
    6f96: bf00         	nop
    6f98: f64d 3011    	movw	r0, #0xdb11
    6f9c: f64d 7210    	movw	r2, #0xdf10
    6fa0: f2c0 0000    	movt	r0, #0x0
    6fa4: f2c0 0200    	movt	r2, #0x0
    6fa8: 2128         	movs	r1, #0x28
    6faa: f004 ff6f    	bl	0xbe8c <core::panicking::panic> @ imm = #0x4ede
    6fae: bf00         	nop
    6fb0: a6 9b c4 3b  	.word	0x3bc49ba6
    6fb4: 7c f2 b0 ba  	.word	0xbab0f27c
    6fb8: 53 4a a1 43  	.word	0x43a14a53
    6fbc: a6 9b c4 bb  	.word	0xbbc49ba6
    6fc0: 79 78 b0 43  	.word	0x43b07879
    6fc4: 00 00 c0 7f  	.word	0x7fc00000
    6fc8: 00 00 80 7f  	.word	0x7f800000
    6fcc: 51 e6 7f 3f  	.word	0x3f7fe651
    6fd0: 99 76 cd 39  	.word	0x39cd7699
    6fd4: 95 bf d6 33  	.word	0x33d6bf95
    6fd8: 2b 18 95 3b  	.word	0x3b95182b
    6fdc: 0a d7 23 3c  	.word	0x3c23d70a
    6fe0: ac c5 a7 37  	.word	0x37a7c5ac
    6fe4: 17 b7 d1 38  	.word	0x38d1b717

00006fe8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>>:
    6fe8: b5f0         	push	{r4, r5, r6, r7, lr}
    6fea: af03         	add	r7, sp, #0xc
    6fec: f84d 8d04    	str	r8, [sp, #-4]!
    6ff0: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    6ff4: b086         	sub	sp, #0x18
    6ff6: ed92 2a12    	vldr	s4, [r2, #72]
    6ffa: ed92 3a13    	vldr	s6, [r2, #76]
    6ffe: eeb4 2a43    	vcmp.f32	s4, s6
    7002: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7006: f200 833b    	bhi.w	0x7680 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x698> @ imm = #0x676
    700a: ed91 ca07    	vldr	s24, [r1, #28]
    700e: ed9f 7adc    	vldr	s14, [pc, #880]         @ 0x7380 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x398>
    7012: eeb7 4acc    	vcvt.f64.f32	d4, s24
    7016: eddf 2adb    	vldr	s5, [pc, #876]          @ 0x7384 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x39c>
    701a: ed9f 6bdb    	vldr	d6, [pc, #876]          @ 0x7388 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x3a0>
    701e: eeb0 5b41    	vmov.f64	d5, d1
    7022: eef3 3a05    	vmov.f32	s7, #2.100000e+01
    7026: ee04 5b06    	vmla.f64	d5, d4, d6
    702a: ed92 6a11    	vldr	s12, [r2, #68]
    702e: eef0 ea46    	vmov.f32	s29, s12
    7032: eeb7 4bc5    	vcvt.f32.f64	s8, d5
    7036: eef7 0bc0    	vcvt.f32.f64	s1, d0
    703a: ee44 ea07    	vmla.f32	s29, s8, s14
    703e: eef0 9a60    	vmov.f32	s19, s1
    7042: ee4c 9a22    	vmla.f32	s19, s24, s5
    7046: eeb4 2a6e    	vcmp.f32	s4, s29
    704a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    704e: fe32 4a2e    	vselgt.f32	s8, s4, s29
    7052: eeb4 4a43    	vcmp.f32	s8, s6
    7056: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    705a: fe33 ea04    	vselgt.f32	s28, s6, s8
    705e: eeb0 0ace    	vabs.f32	s0, s28
    7062: eeb4 0a63    	vcmp.f32	s0, s7
    7066: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    706a: dd2d         	ble	0x70c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0xe0> @ imm = #0x5a
    706c: ee83 da80    	vdiv.f32	s26, s7, s0
    7070: ee2d 0a0d    	vmul.f32	s0, s26, s26
    7074: ee20 0a00    	vmul.f32	s0, s0, s0
    7078: ee20 0a00    	vmul.f32	s0, s0, s0
    707c: ee60 da00    	vmul.f32	s27, s0, s0
    7080: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    7084: ee3d 5a80    	vadd.f32	s10, s27, s0
    7088: eeb0 4a40    	vmov.f32	s8, s0
    708c: eeb4 5a40    	vcmp.f32	s10, s0
    7090: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7094: d009         	beq	0x70aa <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0xc2> @ imm = #0x12
    7096: eeb1 5ac5    	vsqrt.f32	s10, s10
    709a: eeb1 5ac5    	vsqrt.f32	s10, s10
    709e: eeb1 5ac5    	vsqrt.f32	s10, s10
    70a2: eeb1 5ac5    	vsqrt.f32	s10, s10
    70a6: eeb0 4a45    	vmov.f32	s8, s10
    70aa: ee1e 2a10    	vmov	r2, s28
    70ae: f04f 567e    	mov.w	r6, #0x3f800000
    70b2: eec0 8a04    	vdiv.f32	s17, s0, s8
    70b6: f366 021e    	bfi	r2, r6, #0, #31
    70ba: ee05 2a10    	vmov	s10, r2
    70be: ee25 0a23    	vmul.f32	s0, s10, s7
    70c2: ee60 fa28    	vmul.f32	s31, s0, s17
    70c6: e022         	b	0x710e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x126> @ imm = #0x44
    70c8: ee8e da23    	vdiv.f32	s26, s28, s7
    70cc: ee2d 0a0d    	vmul.f32	s0, s26, s26
    70d0: ee20 0a00    	vmul.f32	s0, s0, s0
    70d4: ee20 0a00    	vmul.f32	s0, s0, s0
    70d8: ee60 da00    	vmul.f32	s27, s0, s0
    70dc: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    70e0: ee3d 4a80    	vadd.f32	s8, s27, s0
    70e4: eeb0 5a40    	vmov.f32	s10, s0
    70e8: eeb4 4a40    	vcmp.f32	s8, s0
    70ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70f0: d009         	beq	0x7106 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x11e> @ imm = #0x12
    70f2: eeb1 4ac4    	vsqrt.f32	s8, s8
    70f6: eeb1 4ac4    	vsqrt.f32	s8, s8
    70fa: eeb1 4ac4    	vsqrt.f32	s8, s8
    70fe: eeb1 4ac4    	vsqrt.f32	s8, s8
    7102: eeb0 5a44    	vmov.f32	s10, s8
    7106: eec0 8a05    	vdiv.f32	s17, s0, s10
    710a: ee6e fa28    	vmul.f32	s31, s28, s17
    710e: eeb0 0aef    	vabs.f32	s0, s31
    7112: eef3 4a08    	vmov.f32	s9, #2.400000e+01
    7116: eef2 6a00    	vmov.f32	s13, #8.000000e+00
    711a: eddf 7ae0    	vldr	s15, [pc, #896]         @ 0x749c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x4b4>
    711e: eeb1 8a04    	vmov.f32	s16, #5.000000e+00
    7122: eef0 5ae9    	vabs.f32	s11, s19
    7126: ee34 0ac0    	vsub.f32	s0, s9, s0
    712a: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    712e: fe80 0a26    	vmaxnm.f32	s0, s0, s13
    7132: eeb0 9a44    	vmov.f32	s18, s8
    7136: eec7 ca80    	vdiv.f32	s25, s15, s0
    713a: fe8c 5ac8    	vminnm.f32	s10, s25, s16
    713e: ee85 0a85    	vdiv.f32	s0, s11, s10
    7142: ee85 5a25    	vdiv.f32	s10, s10, s11
    7146: eeb4 0a44    	vcmp.f32	s0, s8
    714a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    714e: fe75 5a00    	vselgt.f32	s11, s10, s0
    7152: ee65 5aa5    	vmul.f32	s11, s11, s11
    7156: ee65 5aa5    	vmul.f32	s11, s11, s11
    715a: ee65 5aa5    	vmul.f32	s11, s11, s11
    715e: ee65 aaa5    	vmul.f32	s21, s11, s11
    7162: ee7a 5a84    	vadd.f32	s11, s21, s8
    7166: eef4 5a44    	vcmp.f32	s11, s8
    716a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    716e: d009         	beq	0x7184 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x19c> @ imm = #0x12
    7170: eef1 5ae5    	vsqrt.f32	s11, s11
    7174: eef1 5ae5    	vsqrt.f32	s11, s11
    7178: eef1 5ae5    	vsqrt.f32	s11, s11
    717c: eef1 5ae5    	vsqrt.f32	s11, s11
    7180: eeb0 9a65    	vmov.f32	s18, s11
    7184: ee84 fa09    	vdiv.f32	s30, s8, s18
    7188: eeb4 0a44    	vcmp.f32	s0, s8
    718c: eeb0 4a4c    	vmov.f32	s8, s24
    7190: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7194: ee65 5a0f    	vmul.f32	s11, s10, s30
    7198: eeb1 5a45    	vneg.f32	s10, s10
    719c: fe75 5a8f    	vselgt.f32	s11, s11, s30
    71a0: fe75 ba00    	vselgt.f32	s23, s10, s0
    71a4: ee0f 4ae5    	vmls.f32	s8, s31, s11
    71a8: ee14 2a10    	vmov	r2, s8
    71ac: f022 4200    	bic	r2, r2, #0x80000000
    71b0: f1b2 4fff    	cmp.w	r2, #0x7f800000
    71b4: db04         	blt	0x71c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x1d8> @ imm = #0x8
    71b6: ed9f 0aba    	vldr	s0, [pc, #744]          @ 0x74a0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x4b8>
    71ba: e009         	b	0x71d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x1e8> @ imm = #0x12
    71bc: bf00         	nop
    71be: bf00         	nop
    71c0: ee84 0a24    	vdiv.f32	s0, s8, s9
    71c4: ed9f 5ab7    	vldr	s10, [pc, #732]         @ 0x74a4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x4bc>
    71c8: eeb0 0ac0    	vabs.f32	s0, s0
    71cc: fe80 0a05    	vmaxnm.f32	s0, s0, s10
    71d0: eeb7 aa00    	vmov.f32	s20, #1.000000e+00
    71d4: f04f 0800    	mov.w	r8, #0x0
    71d8: f04f 0c00    	mov.w	r12, #0x0
    71dc: f04f 527e    	mov.w	r2, #0x3f800000
    71e0: 46c6         	mov	lr, r8
    71e2: ed8d 0a01    	vstr	s0, [sp, #4]
    71e6: ee3d 0a8a    	vadd.f32	s0, s27, s20
    71ea: 2500         	movs	r5, #0x0
    71ec: ee2d 5a2d    	vmul.f32	s10, s26, s27
    71f0: f1b8 0f10    	cmp.w	r8, #0x10
    71f4: eef0 5ace    	vabs.f32	s11, s28
    71f8: f04f 0600    	mov.w	r6, #0x0
    71fc: ee88 0a80    	vdiv.f32	s0, s17, s0
    7200: eef4 ea42    	vcmp.f32	s29, s4
    7204: bf18         	it	ne
    7206: f10e 0e01    	addne.w	lr, lr, #0x1
    720a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    720e: eef4 ea43    	vcmp.f32	s29, s6
    7212: bfc8         	it	gt
    7214: 2501         	movgt	r5, #0x1
    7216: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    721a: eef4 5a63    	vcmp.f32	s11, s7
    721e: ee65 5a00    	vmul.f32	s11, s10, s0
    7222: bf48         	it	mi
    7224: 2601         	movmi	r6, #0x1
    7226: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    722a: eef4 ca6c    	vcmp.f32	s25, s25
    722e: fe35 0a80    	vselgt.f32	s0, s11, s0
    7232: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7236: ee3a ba8a    	vadd.f32	s22, s21, s20
    723a: fe58 5a2c    	vselvs.f32	s11, s16, s25
    723e: ee8f 5a0b    	vdiv.f32	s10, s30, s22
    7242: eeb4 8a65    	vcmp.f32	s16, s11
    7246: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    724a: eef5 ba40    	vcmp.f32	s23, #0
    724e: fe75 5a88    	vselgt.f32	s11, s11, s16
    7252: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7256: da0b         	bge	0x7270 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x288> @ imm = #0x16
    7258: ee8b baa9    	vdiv.f32	s22, s23, s19
    725c: eddf 8a91    	vldr	s17, [pc, #580]         @ 0x74a4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x4bc>
    7260: eef1 aa6b    	vneg.f32	s21, s23
    7264: ee2b facf    	vnmul.f32	s30, s23, s30
    7268: ee25 da0b    	vmul.f32	s26, s10, s22
    726c: e00e         	b	0x728c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x2a4> @ imm = #0x1c
    726e: bf00         	nop
    7270: eeb1 ba6a    	vneg.f32	s22, s21
    7274: eef5 9a40    	vcmp.f32	s19, #0
    7278: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    727c: eddf 8a89    	vldr	s17, [pc, #548]         @ 0x74a4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x4bc>
    7280: ee8b ba29    	vdiv.f32	s22, s22, s19
    7284: ee25 ba0b    	vmul.f32	s22, s10, s22
    7288: fe08 da8b    	vseleq.f32	s26, s17, s22
    728c: eeca 5aa5    	vdiv.f32	s11, s21, s11
    7290: eef4 ca48    	vcmp.f32	s25, s16
    7294: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7298: ee25 5a25    	vmul.f32	s10, s10, s11
    729c: eef0 5a68    	vmov.f32	s11, s17
    72a0: d527         	bpl	0x72f2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x30a> @ imm = #0x4e
    72a2: eef0 5a68    	vmov.f32	s11, s17
    72a6: eef5 fa40    	vcmp.f32	s31, #0
    72aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72ae: d020         	beq	0x72f2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x30a> @ imm = #0x40
    72b0: eef0 5aef    	vabs.f32	s11, s31
    72b4: ee34 bae5    	vsub.f32	s22, s9, s11
    72b8: eef0 5a68    	vmov.f32	s11, s17
    72bc: eeb4 ba66    	vcmp.f32	s22, s13
    72c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72c4: dd15         	ble	0x72f2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x30a> @ imm = #0x2a
    72c6: ee1f 4a90    	vmov	r4, s31
    72ca: fe8b ba26    	vmaxnm.f32	s22, s22, s13
    72ce: eef4 fa6f    	vcmp.f32	s31, s31
    72d2: ed9f 9aea    	vldr	s18, [pc, #936]         @ 0x767c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x694>
    72d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72da: f362 041e    	bfi	r4, r2, #0, #31
    72de: ee2b ba0b    	vmul.f32	s22, s22, s22
    72e2: ee05 4a90    	vmov	s11, r4
    72e6: ee65 5aa7    	vmul.f32	s11, s11, s15
    72ea: fe59 5a25    	vselvs.f32	s11, s18, s11
    72ee: eec5 5a8b    	vdiv.f32	s11, s11, s22
    72f2: ee2f 5a85    	vmul.f32	s10, s31, s10
    72f6: ea15 0406    	ands.w	r4, r5, r6
    72fa: f04f 0500    	mov.w	r5, #0x0
    72fe: ee05 fa25    	vmla.f32	s30, s10, s11
    7302: ed9f 5ae8    	vldr	s10, [pc, #928]         @ 0x76a4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6bc>
    7306: eddf 5ae8    	vldr	s11, [pc, #928]         @ 0x76a8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6c0>
    730a: fe05 5a85    	vseleq.f32	s10, s11, s10
    730e: ee6f 5a8d    	vmul.f32	s11, s31, s26
    7312: ee20 0a0f    	vmul.f32	s0, s0, s30
    7316: ee20 0a05    	vmul.f32	s0, s0, s10
    731a: ed9f 5ae4    	vldr	s10, [pc, #912]         @ 0x76ac <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6c4>
    731e: ee25 5a85    	vmul.f32	s10, s11, s10
    7322: eddf 5ae3    	vldr	s11, [pc, #908]         @ 0x76b0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6c8>
    7326: ee00 5a25    	vmla.f32	s10, s0, s11
    732a: eddf 5ae2    	vldr	s11, [pc, #904]         @ 0x76b4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6cc>
    732e: ee35 0a0a    	vadd.f32	s0, s10, s20
    7332: ee10 4a10    	vmov	r4, s0
    7336: eeb0 5ac0    	vabs.f32	s10, s0
    733a: f024 4400    	bic	r4, r4, #0x80000000
    733e: eeb4 5a65    	vcmp.f32	s10, s11
    7342: f1b4 4fff    	cmp.w	r4, #0x7f800000
    7346: f04f 0400    	mov.w	r4, #0x0
    734a: bfa8         	it	ge
    734c: 2401         	movge	r4, #0x1
    734e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7352: bf48         	it	mi
    7354: 2501         	movmi	r5, #0x1
    7356: 432c         	orrs	r4, r5
    7358: f040 818a    	bne.w	0x7670 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x688> @ imm = #0x314
    735c: eeb1 4a44    	vneg.f32	s8, s8
    7360: eec4 ba00    	vdiv.f32	s23, s8, s0
    7364: ed9d 0a01    	vldr	s0, [sp, #4]
    7368: ed9f 4ad3    	vldr	s8, [pc, #844]          @ 0x76b8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6d0>
    736c: eeb4 0a44    	vcmp.f32	s0, s8
    7370: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7374: d90c         	bls	0x7390 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x3a8> @ imm = #0x18
    7376: f1b8 0f10    	cmp.w	r8, #0x10
    737a: d12a         	bne	0x73d2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x3ea> @ imm = #0x54
    737c: e17c         	b	0x7678 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x690> @ imm = #0x2f8
    737e: bf00         	nop
    7380: d2 4e da 43  	.word	0x43da4ed2
    7384: cd 1e 2c be  	.word	0xbe2c1ecd
    7388: 19 d5 65 36  	.word	0x3665d519
    738c: d0 6e 95 bf  	.word	0xbf956ed0
    7390: eeb0 0acc    	vabs.f32	s0, s24
    7394: ed9f 4ac9    	vldr	s8, [pc, #804]          @ 0x76bc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6d4>
    7398: eeb4 0a40    	vcmp.f32	s0, s0
    739c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    73a0: fe1a 0a00    	vselvs.f32	s0, s20, s0
    73a4: eeb4 0a4a    	vcmp.f32	s0, s20
    73a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    73ac: fe30 0a0a    	vselgt.f32	s0, s0, s20
    73b0: f1b8 0f10    	cmp.w	r8, #0x10
    73b4: ee20 0a04    	vmul.f32	s0, s0, s8
    73b8: ed9f 4ac1    	vldr	s8, [pc, #772]          @ 0x76c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6d8>
    73bc: fe80 0a44    	vminnm.f32	s0, s0, s8
    73c0: eeb0 4aeb    	vabs.f32	s8, s23
    73c4: bf1c         	itt	ne
    73c6: eeb4 4a40    	vcmpne.f32	s8, s0
    73ca: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    73ce: f240 8137    	bls.w	0x7640 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x658> @ imm = #0x26e
    73d2: ed8d ea00    	vstr	s28, [sp]
    73d6: f04f 557e    	mov.w	r5, #0x3f800000
    73da: e007         	b	0x73ec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x404> @ imm = #0xe
    73dc: bf00         	nop
    73de: bf00         	nop
    73e0: f5a5 0500    	sub.w	r5, r5, #0x800000
    73e4: f1b5 5f66    	cmp.w	r5, #0x39800000
    73e8: f000 810e    	beq.w	0x7608 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x620> @ imm = #0x21c
    73ec: ee00 5a10    	vmov	s0, r5
    73f0: eeb0 ea4c    	vmov.f32	s28, s24
    73f4: ed9f fba8    	vldr	d15, [pc, #672]         @ 0x7698 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6b0>
    73f8: eeb0 db41    	vmov.f64	d13, d1
    73fc: eef0 ea46    	vmov.f32	s29, s12
    7400: ee0b ea80    	vmla.f32	s28, s23, s0
    7404: eef0 9a60    	vmov.f32	s19, s1
    7408: ed81 ea07    	vstr	s28, [r1, #28]
    740c: eeb7 5ace    	vcvt.f64.f32	d5, s28
    7410: ee4e 9a22    	vmla.f32	s19, s28, s5
    7414: ee05 db0f    	vmla.f64	d13, d5, d15
    7418: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    741c: ee40 ea07    	vmla.f32	s29, s0, s14
    7420: eeb4 2a6e    	vcmp.f32	s4, s29
    7424: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7428: fe32 0a2e    	vselgt.f32	s0, s4, s29
    742c: eeb4 0a43    	vcmp.f32	s0, s6
    7430: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7434: fe33 0a00    	vselgt.f32	s0, s6, s0
    7438: eeb0 4ac0    	vabs.f32	s8, s0
    743c: eeb4 4a63    	vcmp.f32	s8, s7
    7440: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7444: dd30         	ble	0x74a8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x4c0> @ imm = #0x60
    7446: ee83 da84    	vdiv.f32	s26, s7, s8
    744a: eeb0 5a4a    	vmov.f32	s10, s20
    744e: ee2d 4a0d    	vmul.f32	s8, s26, s26
    7452: ee24 4a04    	vmul.f32	s8, s8, s8
    7456: ee24 4a04    	vmul.f32	s8, s8, s8
    745a: ee64 da04    	vmul.f32	s27, s8, s8
    745e: ee3d 4a8a    	vadd.f32	s8, s27, s20
    7462: eeb4 4a4a    	vcmp.f32	s8, s20
    7466: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    746a: d009         	beq	0x7480 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x498> @ imm = #0x12
    746c: eeb1 4ac4    	vsqrt.f32	s8, s8
    7470: eeb1 4ac4    	vsqrt.f32	s8, s8
    7474: eeb1 4ac4    	vsqrt.f32	s8, s8
    7478: eeb1 4ac4    	vsqrt.f32	s8, s8
    747c: eeb0 5a44    	vmov.f32	s10, s8
    7480: ee10 4a10    	vmov	r4, s0
    7484: eeca 8a05    	vdiv.f32	s17, s20, s10
    7488: f362 041e    	bfi	r4, r2, #0, #31
    748c: ee04 4a10    	vmov	s8, r4
    7490: ee24 4a23    	vmul.f32	s8, s8, s7
    7494: ee64 fa28    	vmul.f32	s31, s8, s17
    7498: e027         	b	0x74ea <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x502> @ imm = #0x4e
    749a: bf00         	nop
    749c: 00 00 70 42  	.word	0x42700000
    74a0: 00 00 80 7f  	.word	0x7f800000
    74a4: 00 00 00 00  	.word	0x00000000
    74a8: ee80 da23    	vdiv.f32	s26, s0, s7
    74ac: eeb0 5a4a    	vmov.f32	s10, s20
    74b0: ee2d 4a0d    	vmul.f32	s8, s26, s26
    74b4: ee24 4a04    	vmul.f32	s8, s8, s8
    74b8: ee24 4a04    	vmul.f32	s8, s8, s8
    74bc: ee64 da04    	vmul.f32	s27, s8, s8
    74c0: ee3d 4a8a    	vadd.f32	s8, s27, s20
    74c4: eeb4 4a4a    	vcmp.f32	s8, s20
    74c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74cc: d009         	beq	0x74e2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x4fa> @ imm = #0x12
    74ce: eeb1 4ac4    	vsqrt.f32	s8, s8
    74d2: eeb1 4ac4    	vsqrt.f32	s8, s8
    74d6: eeb1 4ac4    	vsqrt.f32	s8, s8
    74da: eeb1 4ac4    	vsqrt.f32	s8, s8
    74de: eeb0 5a44    	vmov.f32	s10, s8
    74e2: eeca 8a05    	vdiv.f32	s17, s20, s10
    74e6: ee60 fa28    	vmul.f32	s31, s0, s17
    74ea: eeb0 4aef    	vabs.f32	s8, s31
    74ee: eef0 5a4a    	vmov.f32	s11, s20
    74f2: eeb0 5ae9    	vabs.f32	s10, s19
    74f6: ee34 4ac4    	vsub.f32	s8, s9, s8
    74fa: fe84 4a26    	vmaxnm.f32	s8, s8, s13
    74fe: eec7 ca84    	vdiv.f32	s25, s15, s8
    7502: fe8c 4ac8    	vminnm.f32	s8, s25, s16
    7506: ee85 ba04    	vdiv.f32	s22, s10, s8
    750a: ee84 5a05    	vdiv.f32	s10, s8, s10
    750e: eeb4 ba4a    	vcmp.f32	s22, s20
    7512: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7516: fe35 4a0b    	vselgt.f32	s8, s10, s22
    751a: ee24 4a04    	vmul.f32	s8, s8, s8
    751e: ee24 4a04    	vmul.f32	s8, s8, s8
    7522: ee24 4a04    	vmul.f32	s8, s8, s8
    7526: ee64 aa04    	vmul.f32	s21, s8, s8
    752a: ee3a 4a8a    	vadd.f32	s8, s21, s20
    752e: eeb4 4a4a    	vcmp.f32	s8, s20
    7532: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7536: d009         	beq	0x754c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x564> @ imm = #0x12
    7538: eeb1 4ac4    	vsqrt.f32	s8, s8
    753c: eeb1 4ac4    	vsqrt.f32	s8, s8
    7540: eeb1 4ac4    	vsqrt.f32	s8, s8
    7544: eeb1 4ac4    	vsqrt.f32	s8, s8
    7548: eef0 5a44    	vmov.f32	s11, s8
    754c: ee8a fa25    	vdiv.f32	s30, s20, s11
    7550: eeb4 ba4a    	vcmp.f32	s22, s20
    7554: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7558: ee25 4a0f    	vmul.f32	s8, s10, s30
    755c: fe74 5a0f    	vselgt.f32	s11, s8, s30
    7560: eeb0 4a4e    	vmov.f32	s8, s28
    7564: ee0f 4ae5    	vmls.f32	s8, s31, s11
    7568: ee14 4a10    	vmov	r4, s8
    756c: f024 4400    	bic	r4, r4, #0x80000000
    7570: f1b4 4fff    	cmp.w	r4, #0x7f800000
    7574: f6bf af34    	bge.w	0x73e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x3f8> @ imm = #-0x198
    7578: eec4 5a24    	vdiv.f32	s11, s8, s9
    757c: eeb0 9a48    	vmov.f32	s18, s16
    7580: eeb0 8a66    	vmov.f32	s16, s13
    7584: eef0 6a67    	vmov.f32	s13, s15
    7588: eef0 7a62    	vmov.f32	s15, s5
    758c: eef0 2a47    	vmov.f32	s5, s14
    7590: eef0 5ae5    	vabs.f32	s11, s11
    7594: ed9f 7a42    	vldr	s14, [pc, #264]         @ 0x76a0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6b8>
    7598: fec5 5a87    	vmaxnm.f32	s11, s11, s14
    759c: eeb0 7a62    	vmov.f32	s14, s5
    75a0: eef0 2a67    	vmov.f32	s5, s15
    75a4: eef0 7a66    	vmov.f32	s15, s13
    75a8: eef0 6a48    	vmov.f32	s13, s16
    75ac: eeb0 8a49    	vmov.f32	s16, s18
    75b0: ed9d 9a01    	vldr	s18, [sp, #4]
    75b4: eef4 5a49    	vcmp.f32	s11, s18
    75b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    75bc: f57f af10    	bpl.w	0x73e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x3f8> @ imm = #-0x1e0
    75c0: eeb1 5a45    	vneg.f32	s10, s10
    75c4: eeb4 ba4a    	vcmp.f32	s22, s20
    75c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    75cc: fe75 ba0b    	vselgt.f32	s23, s10, s22
    75d0: f1b8 0f10    	cmp.w	r8, #0x10
    75d4: d00c         	beq	0x75f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x608> @ imm = #0x18
    75d6: eeb0 ca4e    	vmov.f32	s24, s28
    75da: eeb0 ea40    	vmov.f32	s28, s0
    75de: f1be 0f10    	cmp.w	lr, #0x10
    75e2: f10c 0c01    	add.w	r12, r12, #0x1
    75e6: 46f0         	mov	r8, lr
    75e8: edcd 5a01    	vstr	s11, [sp, #4]
    75ec: f77f adfb    	ble.w	0x71e6 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x1fe> @ imm = #-0x40a
    75f0: f64d 3011    	movw	r0, #0xdb11
    75f4: f64d 7210    	movw	r2, #0xdf10
    75f8: f2c0 0000    	movt	r0, #0x0
    75fc: f2c0 0200    	movt	r2, #0x0
    7600: 2128         	movs	r1, #0x28
    7602: f004 fc43    	bl	0xbe8c <core::panicking::panic> @ imm = #0x4886
    7606: bf00         	nop
    7608: ed9d 0a01    	vldr	s0, [sp, #4]
    760c: ed9f 1a2a    	vldr	s2, [pc, #168]          @ 0x76b8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6d0>
    7610: f10c 0c01    	add.w	r12, r12, #0x1
    7614: eeb4 0a41    	vcmp.f32	s0, s2
    7618: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    761c: ed81 ca07    	vstr	s24, [r1, #28]
    7620: f04f 0100    	mov.w	r1, #0x0
    7624: d809         	bhi	0x763a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x652> @ imm = #0x12
    7626: eeb0 0aeb    	vabs.f32	s0, s23
    762a: ed9f 1a25    	vldr	s2, [pc, #148]          @ 0x76c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6d8>
    762e: eeb4 0a41    	vcmp.f32	s0, s2
    7632: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7636: bf98         	it	ls
    7638: 2101         	movls	r1, #0x1
    763a: ed9d ea00    	vldr	s28, [sp]
    763e: e006         	b	0x764e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x666> @ imm = #0xc
    7640: 2100         	movs	r1, #0x0
    7642: eeb4 4a40    	vcmp.f32	s8, s0
    7646: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    764a: bf98         	it	ls
    764c: 2101         	movls	r1, #0x1
    764e: ed83 ea04    	vstr	s28, [r3, #16]
    7652: ed9d 0a01    	vldr	s0, [sp, #4]
    7656: ed80 0a00    	vstr	s0, [r0]
    765a: f880 c004    	strb.w	r12, [r0, #0x4]
    765e: 7141         	strb	r1, [r0, #0x5]
    7660: b006         	add	sp, #0x18
    7662: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    7666: f85d 8b04    	ldr	r8, [sp], #4
    766a: bdf0         	pop	{r4, r5, r6, r7, pc}
    766c: bf00         	nop
    766e: bf00         	nop
    7670: 2100         	movs	r1, #0x0
    7672: e7ee         	b	0x7652 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x66a> @ imm = #-0x24
    7674: bf00         	nop
    7676: bf00         	nop
    7678: 2100         	movs	r1, #0x0
    767a: e7e8         	b	0x764e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x666> @ imm = #-0x30
    767c: 00 00 c0 7f  	.word	0x7fc00000
    7680: f64d 207b    	movw	r0, #0xda7b
    7684: f64d 7220    	movw	r2, #0xdf20
    7688: f2c0 0000    	movt	r0, #0x0
    768c: f2c0 0200    	movt	r2, #0x0
    7690: a902         	add	r1, sp, #0x8
    7692: f004 fbf7    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0x47ee
    7696: bf00         	nop
    7698: 19 d5 65 36  	.word	0x3665d519
    769c: d0 6e 95 bf  	.word	0xbf956ed0
    76a0: 00 00 00 00  	.word	0x00000000
    76a4: d2 4e da c3  	.word	0xc3da4ed2
    76a8: 00 00 00 80  	.word	0x80000000
    76ac: cd 1e 2c 3e  	.word	0x3e2c1ecd
    76b0: 82 76 ab bc  	.word	0xbcab7682
    76b4: 08 e5 3c 1e  	.word	0x1e3ce508
    76b8: 17 b7 d1 38  	.word	0x38d1b717
    76bc: bd 37 06 36  	.word	0x360637bd
    76c0: ac c5 a7 37  	.word	0x37a7c5ac
    76c4: d4 d4 d4 d4  	.word	0xd4d4d4d4

000076c8 <__rustc::rust_begin_unwind>:
    76c8: b580         	push	{r7, lr}
    76ca: 466f         	mov	r7, sp
    76cc: bf00         	nop
    76ce: bf00         	nop
    76d0: bf10         	yield
    76d2: bf10         	yield
    76d4: bf10         	yield
    76d6: bf10         	yield
    76d8: e7fa         	b	0x76d0 <__rustc::rust_begin_unwind+0x8> @ imm = #-0xc
    76da: d4d4         	bmi	0x7686 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x69e> @ imm = #-0x58
    76dc: d4d4         	bmi	0x7688 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6a0> @ imm = #-0x58
    76de: d4d4         	bmi	0x768a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>+0x6a2> @ imm = #-0x58

000076e0 <ram_probe::packed_probe::control>:
    76e0: b5f0         	push	{r4, r5, r6, r7, lr}
    76e2: af03         	add	r7, sp, #0xc
    76e4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    76e8: b081         	sub	sp, #0x4
    76ea: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    76ee: f5ad 7d08    	sub.w	sp, sp, #0x220
    76f2: eef6 aa00    	vmov.f32	s21, #5.000000e-01
    76f6: ed91 1a08    	vldr	s2, [r1, #32]
    76fa: ed91 2a24    	vldr	s4, [r1, #144]
    76fe: ed91 3a09    	vldr	s6, [r1, #36]
    7702: ee31 1a01    	vadd.f32	s2, s2, s2
    7706: ed91 4a0a    	vldr	s8, [r1, #40]
    770a: ee02 1a6a    	vmls.f32	s2, s4, s21
    770e: ed91 5a0b    	vldr	s10, [r1, #44]
    7712: ee33 2a03    	vadd.f32	s4, s6, s6
    7716: ed91 3a25    	vldr	s6, [r1, #148]
    771a: ee03 2a6a    	vmls.f32	s4, s6, s21
    771e: ed91 6a30    	vldr	s12, [r1, #192]
    7722: ee34 3a04    	vadd.f32	s6, s8, s8
    7726: ed91 4a26    	vldr	s8, [r1, #152]
    772a: ee04 3a6a    	vmls.f32	s6, s8, s21
    772e: ed8d 1a1c    	vstr	s2, [sp, #112]
    7732: ee35 4a05    	vadd.f32	s8, s10, s10
    7736: ed91 5a27    	vldr	s10, [r1, #156]
    773a: ee05 4a6a    	vmls.f32	s8, s10, s21
    773e: ed8d 2a1d    	vstr	s4, [sp, #116]
    7742: ed91 1a0c    	vldr	s2, [r1, #48]
    7746: ed91 5a0f    	vldr	s10, [r1, #60]
    774a: ed91 2a28    	vldr	s4, [r1, #160]
    774e: ed8d 3a1e    	vstr	s6, [sp, #120]
    7752: ee31 1a01    	vadd.f32	s2, s2, s2
    7756: ed91 3a29    	vldr	s6, [r1, #164]
    775a: ee02 1a6a    	vmls.f32	s2, s4, s21
    775e: ed91 2a0d    	vldr	s4, [r1, #52]
    7762: ed8d 4a1f    	vstr	s8, [sp, #124]
    7766: ee32 2a02    	vadd.f32	s4, s4, s4
    776a: ee03 2a6a    	vmls.f32	s4, s6, s21
    776e: ed91 3a0e    	vldr	s6, [r1, #56]
    7772: ed91 4a2a    	vldr	s8, [r1, #168]
    7776: ee33 3a03    	vadd.f32	s6, s6, s6
    777a: ee04 3a6a    	vmls.f32	s6, s8, s21
    777e: ed8d 1a20    	vstr	s2, [sp, #128]
    7782: ee35 4a05    	vadd.f32	s8, s10, s10
    7786: ed91 5a2b    	vldr	s10, [r1, #172]
    778a: ee05 4a6a    	vmls.f32	s8, s10, s21
    778e: ed91 1a10    	vldr	s2, [r1, #64]
    7792: ed8d 2a21    	vstr	s4, [sp, #132]
    7796: ed91 2a11    	vldr	s4, [r1, #68]
    779a: ed8d 3a22    	vstr	s6, [sp, #136]
    779e: ed91 3a2c    	vldr	s6, [r1, #176]
    77a2: ee31 1a01    	vadd.f32	s2, s2, s2
    77a6: ed91 5a2f    	vldr	s10, [r1, #188]
    77aa: ee03 1a6a    	vmls.f32	s2, s6, s21
    77ae: ed91 3a2d    	vldr	s6, [r1, #180]
    77b2: ed8d 4a23    	vstr	s8, [sp, #140]
    77b6: ee32 2a02    	vadd.f32	s4, s4, s4
    77ba: ee03 2a6a    	vmls.f32	s4, s6, s21
    77be: ed91 3a12    	vldr	s6, [r1, #72]
    77c2: ed91 4a2e    	vldr	s8, [r1, #184]
    77c6: ee33 3a03    	vadd.f32	s6, s6, s6
    77ca: ee04 3a6a    	vmls.f32	s6, s8, s21
    77ce: ed91 4a13    	vldr	s8, [r1, #76]
    77d2: ee34 4a04    	vadd.f32	s8, s8, s8
    77d6: ed8d 1a24    	vstr	s2, [sp, #144]
    77da: ee05 4a6a    	vmls.f32	s8, s10, s21
    77de: ed8d 2a25    	vstr	s4, [sp, #148]
    77e2: ed91 1a15    	vldr	s2, [r1, #84]
    77e6: ed91 5a14    	vldr	s10, [r1, #80]
    77ea: ed91 2a31    	vldr	s4, [r1, #196]
    77ee: ed8d 3a26    	vstr	s6, [sp, #152]
    77f2: ee31 1a01    	vadd.f32	s2, s2, s2
    77f6: ed91 3a32    	vldr	s6, [r1, #200]
    77fa: ee02 1a6a    	vmls.f32	s2, s4, s21
    77fe: ed91 2a16    	vldr	s4, [r1, #88]
    7802: ed8d 4a27    	vstr	s8, [sp, #156]
    7806: ee32 2a02    	vadd.f32	s4, s4, s4
    780a: ee03 2a6a    	vmls.f32	s4, s6, s21
    780e: ed91 3a17    	vldr	s6, [r1, #92]
    7812: ed91 4a33    	vldr	s8, [r1, #204]
    7816: ee33 3a03    	vadd.f32	s6, s6, s6
    781a: ee04 3a6a    	vmls.f32	s6, s8, s21
    781e: ed8d 1a29    	vstr	s2, [sp, #164]
    7822: ee35 5a05    	vadd.f32	s10, s10, s10
    7826: ed91 1a1a    	vldr	s2, [r1, #104]
    782a: ee06 5a6a    	vmls.f32	s10, s12, s21
    782e: ed8d 2a2a    	vstr	s4, [sp, #168]
    7832: ed91 2a36    	vldr	s4, [r1, #216]
    7836: ee31 1a01    	vadd.f32	s2, s2, s2
    783a: ed8d 3a2b    	vstr	s6, [sp, #172]
    783e: ee02 1a6a    	vmls.f32	s2, s4, s21
    7842: ed91 2a1b    	vldr	s4, [r1, #108]
    7846: ed91 4a18    	vldr	s8, [r1, #96]
    784a: ed91 3a37    	vldr	s6, [r1, #220]
    784e: ee32 2a02    	vadd.f32	s4, s4, s4
    7852: ee03 2a6a    	vmls.f32	s4, s6, s21
    7856: ed8d 5a28    	vstr	s10, [sp, #160]
    785a: ed91 5a34    	vldr	s10, [r1, #208]
    785e: ee34 4a04    	vadd.f32	s8, s8, s8
    7862: ee05 4a6a    	vmls.f32	s8, s10, s21
    7866: ed91 5a19    	vldr	s10, [r1, #100]
    786a: ed91 6a35    	vldr	s12, [r1, #212]
    786e: ee35 5a05    	vadd.f32	s10, s10, s10
    7872: ee06 5a6a    	vmls.f32	s10, s12, s21
    7876: ed8d 1a2e    	vstr	s2, [sp, #184]
    787a: ed8d 2a2f    	vstr	s4, [sp, #188]
    787e: ed91 1a1f    	vldr	s2, [r1, #124]
    7882: ed91 2a3b    	vldr	s4, [r1, #236]
    7886: ee31 da01    	vadd.f32	s26, s2, s2
    788a: ee02 da6a    	vmls.f32	s26, s4, s21
    788e: ed91 1a20    	vldr	s2, [r1, #128]
    7892: ed91 2a3c    	vldr	s4, [r1, #240]
    7896: ed8d 4a2c    	vstr	s8, [sp, #176]
    789a: ed91 3a1c    	vldr	s6, [r1, #112]
    789e: ee31 ca01    	vadd.f32	s24, s2, s2
    78a2: ed91 4a38    	vldr	s8, [r1, #224]
    78a6: ee02 ca6a    	vmls.f32	s24, s4, s21
    78aa: ed91 1a21    	vldr	s2, [r1, #132]
    78ae: ed8d 5a2d    	vstr	s10, [sp, #180]
    78b2: ed91 2a3d    	vldr	s4, [r1, #244]
    78b6: ee33 3a03    	vadd.f32	s6, s6, s6
    78ba: ee04 3a6a    	vmls.f32	s6, s8, s21
    78be: ed91 4a1d    	vldr	s8, [r1, #116]
    78c2: ed91 5a39    	vldr	s10, [r1, #228]
    78c6: ee31 9a01    	vadd.f32	s18, s2, s2
    78ca: ee02 9a6a    	vmls.f32	s18, s4, s21
    78ce: ed91 1a22    	vldr	s2, [r1, #136]
    78d2: ed91 2a3e    	vldr	s4, [r1, #248]
    78d6: ee34 4a04    	vadd.f32	s8, s8, s8
    78da: ee05 4a6a    	vmls.f32	s8, s10, s21
    78de: ed91 5a1e    	vldr	s10, [r1, #120]
    78e2: ed91 6a3a    	vldr	s12, [r1, #232]
    78e6: ee31 aa01    	vadd.f32	s20, s2, s2
    78ea: ee02 aa6a    	vmls.f32	s20, s4, s21
    78ee: ed91 1a23    	vldr	s2, [r1, #140]
    78f2: ed91 2a3f    	vldr	s4, [r1, #252]
    78f6: ee35 5a05    	vadd.f32	s10, s10, s10
    78fa: ee06 5a6a    	vmls.f32	s10, s12, s21
    78fe: 460c         	mov	r4, r1
    7900: ee31 1a01    	vadd.f32	s2, s2, s2
    7904: 4683         	mov	r11, r0
    7906: ee02 1a6a    	vmls.f32	s2, s4, s21
    790a: a838         	add	r0, sp, #0xe0
    790c: a91c         	add	r1, sp, #0x70
    790e: ed8d 3a30    	vstr	s6, [sp, #192]
    7912: ed8d 4a31    	vstr	s8, [sp, #196]
    7916: eeb0 8a40    	vmov.f32	s16, s0
    791a: ed8d 5a32    	vstr	s10, [sp, #200]
    791e: ed8d da33    	vstr	s26, [sp, #204]
    7922: ed8d ca34    	vstr	s24, [sp, #208]
    7926: ed8d 9a35    	vstr	s18, [sp, #212]
    792a: ed8d aa36    	vstr	s20, [sp, #216]
    792e: ed8d 1a1b    	vstr	s2, [sp, #108]
    7932: ed8d 1a37    	vstr	s2, [sp, #220]
    7936: f7f8 ffab    	bl	0x890 <orange_dsp::generated_packed::origin::<5>> @ imm = #-0x70aa
    793a: f50d 78ac    	add.w	r8, sp, #0x158
    793e: 4620         	mov	r0, r4
    7940: 4641         	mov	r1, r8
    7942: ed9f 2ada    	vldr	s4, [pc, #872]          @ 0x7cac <ram_probe::packed_probe::control+0x5cc>
    7946: c86c         	ldm	r0!, {r2, r3, r5, r6}
    7948: c16c         	stm	r1!, {r2, r3, r5, r6}
    794a: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
    794e: c16c         	stm	r1!, {r2, r3, r5, r6}
    7950: ed9d eb38    	vldr	d14, [sp, #224]
    7954: 2000         	movs	r0, #0x0
    7956: 905e         	str	r0, [sp, #0x178]
    7958: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0x7c98 <ram_probe::packed_probe::control+0x5b8>
    795c: e9cd 0061    	strd	r0, r0, [sp, #388]
    7960: ee8e 0b00    	vdiv.f64	d0, d14, d0
    7964: e9cd 005f    	strd	r0, r0, [sp, #380]
    7968: eeb7 1bc0    	vcvt.f32.f64	s2, d0
    796c: ed8d 1a56    	vstr	s2, [sp, #344]
    7970: eeb0 0ac1    	vabs.f32	s0, s2
    7974: eeb4 0a42    	vcmp.f32	s0, s4
    7978: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    797c: d838         	bhi	0x79f0 <ram_probe::packed_probe::control+0x310> @ imm = #0x70
    797e: ed9f 3acc    	vldr	s6, [pc, #816]          @ 0x7cb0 <ram_probe::packed_probe::control+0x5d0>
    7982: eeb7 2bce    	vcvt.f32.f64	s4, d14
    7986: ee01 2a03    	vmla.f32	s4, s2, s6
    798a: ee12 0a10    	vmov	r0, s4
    798e: f020 4000    	bic	r0, r0, #0x80000000
    7992: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7996: da2b         	bge	0x79f0 <ram_probe::packed_probe::control+0x310> @ imm = #0x56
    7998: eeb0 1ac2    	vabs.f32	s2, s4
    799c: ed9f 4a3c    	vldr	s8, [pc, #240]          @ 0x7a90 <ram_probe::packed_probe::control+0x3b0>
    79a0: ee81 1a04    	vdiv.f32	s2, s2, s8
    79a4: ed9f 4a3b    	vldr	s8, [pc, #236]          @ 0x7a94 <ram_probe::packed_probe::control+0x3b4>
    79a8: eeb4 1a44    	vcmp.f32	s2, s8
    79ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79b0: d81e         	bhi	0x79f0 <ram_probe::packed_probe::control+0x310> @ imm = #0x3c
    79b2: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    79b6: eeb4 0a40    	vcmp.f32	s0, s0
    79ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79be: ee82 2a03    	vdiv.f32	s4, s4, s6
    79c2: ed9f 3a35    	vldr	s6, [pc, #212]          @ 0x7a98 <ram_probe::packed_probe::control+0x3b8>
    79c6: fe14 0a00    	vselvs.f32	s0, s8, s0
    79ca: eeb0 2ac2    	vabs.f32	s4, s4
    79ce: eeb4 0a44    	vcmp.f32	s0, s8
    79d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79d6: fe30 0a04    	vselgt.f32	s0, s0, s8
    79da: ee20 0a03    	vmul.f32	s0, s0, s6
    79de: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x7da4 <ram_probe::packed_probe::control+0x6c4>
    79e2: fe80 0a43    	vminnm.f32	s0, s0, s6
    79e6: eeb4 2a40    	vcmp.f32	s4, s0
    79ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79ee: d957         	bls	0x7aa0 <ram_probe::packed_probe::control+0x3c0> @ imm = #0xae
    79f0: 4620         	mov	r0, r4
    79f2: 4641         	mov	r1, r8
    79f4: eeb0 0b4e    	vmov.f64	d0, d14
    79f8: c86c         	ldm	r0!, {r2, r3, r5, r6}
    79fa: c16c         	stm	r1!, {r2, r3, r5, r6}
    79fc: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
    7a00: c16c         	stm	r1!, {r2, r3, r5, r6}
    7a02: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    7a06: 4641         	mov	r1, r8
    7a08: 3001         	adds	r0, #0x1
    7a0a: f8c4 010c    	str.w	r0, [r4, #0x10c]
    7a0e: a863         	add	r0, sp, #0x18c
    7a10: f7f9 f9ea    	bl	0xde8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>> @ imm = #-0x6c2c
    7a14: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    7a18: f89d 9190    	ldrb.w	r9, [sp, #0x190]
    7a1c: b180         	cbz	r0, 0x7a40 <ram_probe::packed_probe::control+0x360> @ imm = #0x20
    7a1e: ed9d 0a63    	vldr	s0, [sp, #396]
    7a22: ed9f 1ae6    	vldr	s2, [pc, #920]          @ 0x7dbc <ram_probe::packed_probe::control+0x6dc>
    7a26: eeb4 0a40    	vcmp.f32	s0, s0
    7a2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a2e: fe11 0a00    	vselvs.f32	s0, s2, s0
    7a32: eeb5 0a40    	vcmp.f32	s0, #0
    7a36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a3a: fe70 da01    	vselgt.f32	s27, s0, s2
    7a3e: e044         	b	0x7aca <ram_probe::packed_probe::control+0x3ea> @ imm = #0x88
    7a40: eeb0 0b4e    	vmov.f64	d0, d14
    7a44: a863         	add	r0, sp, #0x18c
    7a46: a956         	add	r1, sp, #0x158
    7a48: 2600         	movs	r6, #0x0
    7a4a: 9656         	str	r6, [sp, #0x158]
    7a4c: f7f9 f9cc    	bl	0xde8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>> @ imm = #-0x6c68
    7a50: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    7a54: ed9d 0a63    	vldr	s0, [sp, #396]
    7a58: 3001         	adds	r0, #0x1
    7a5a: eeb4 0a40    	vcmp.f32	s0, s0
    7a5e: bf28         	it	hs
    7a60: f04f 30ff    	movhs.w	r0, #0xffffffff
    7a64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a68: ed9f 1ad4    	vldr	s2, [pc, #848]          @ 0x7dbc <ram_probe::packed_probe::control+0x6dc>
    7a6c: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    7a70: fe11 2a00    	vselvs.f32	s4, s2, s0
    7a74: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    7a78: 4489         	add	r9, r1
    7a7a: f8c4 011c    	str.w	r0, [r4, #0x11c]
    7a7e: eeb5 2a40    	vcmp.f32	s4, #0
    7a82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a86: fe72 da01    	vselgt.f32	s27, s4, s2
    7a8a: b9f2         	cbnz	r2, 0x7aca <ram_probe::packed_probe::control+0x3ea> @ imm = #0x3c
    7a8c: e27f         	b	0x7f8e <ram_probe::packed_probe::control+0x8ae> @ imm = #0x4fe
    7a8e: bf00         	nop
    7a90: 0a d7 23 3c  	.word	0x3c23d70a
    7a94: 17 b7 d1 38  	.word	0x38d1b717
    7a98: bd 37 06 36  	.word	0x360637bd
    7a9c: 00 bf 00 bf  	.word	0xbf00bf00
    7aa0: eeb4 1a41    	vcmp.f32	s2, s2
    7aa4: ed9f 0ac5    	vldr	s0, [pc, #788]          @ 0x7dbc <ram_probe::packed_probe::control+0x6dc>
    7aa8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7aac: f8d4 0100    	ldr.w	r0, [r4, #0x100]
    7ab0: f04f 0900    	mov.w	r9, #0x0
    7ab4: fe10 1a01    	vselvs.f32	s2, s0, s2
    7ab8: 3001         	adds	r0, #0x1
    7aba: f8c4 0100    	str.w	r0, [r4, #0x100]
    7abe: eeb5 1a40    	vcmp.f32	s2, #0
    7ac2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ac6: fe71 da00    	vselgt.f32	s27, s2, s0
    7aca: f50d 7cc6    	add.w	r12, sp, #0x18c
    7ace: 4642         	mov	r2, r8
    7ad0: 4661         	mov	r1, r12
    7ad2: eddf 9abb    	vldr	s19, [pc, #748]         @ 0x7dc0 <ram_probe::packed_probe::control+0x6e0>
    7ad6: ca69         	ldm	r2!, {r0, r3, r5, r6}
    7ad8: c169         	stm	r1!, {r0, r3, r5, r6}
    7ada: e892 0069    	ldm.w	r2, {r0, r3, r5, r6}
    7ade: c169         	stm	r1!, {r0, r3, r5, r6}
    7ae0: ed9d 0a56    	vldr	s0, [sp, #344]
    7ae4: eefa ca0b    	vmov.f32	s25, #-1.350000e+01
    7ae8: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    7aec: ed9d 3a58    	vldr	s6, [sp, #352]
    7af0: ed9d eb48    	vldr	d14, [sp, #288]
    7af4: eef2 ba0b    	vmov.f32	s23, #1.350000e+01
    7af8: ed9f 6ab2    	vldr	s12, [pc, #712]         @ 0x7dc4 <ram_probe::packed_probe::control+0x6e4>
    7afc: ed9f 2b6e    	vldr	d2, [pc, #440]          @ 0x7cb8 <ram_probe::packed_probe::control+0x5d8>
    7b00: eeb0 0b4e    	vmov.f64	d0, d14
    7b04: ee01 0b02    	vmla.f64	d0, d1, d2
    7b08: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    7b0c: ed9d 1a59    	vldr	s2, [sp, #356]
    7b10: ed9f 5b6b    	vldr	d5, [pc, #428]          @ 0x7cc0 <ram_probe::packed_probe::control+0x5e0>
    7b14: ed9d 3a5a    	vldr	s6, [sp, #360]
    7b18: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    7b1c: eeb0 4b40    	vmov.f64	d4, d0
    7b20: ee02 4b05    	vmla.f64	d4, d2, d5
    7b24: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    7b28: ee01 4b05    	vmla.f64	d4, d1, d5
    7b2c: ed9d 1a5b    	vldr	s2, [sp, #364]
    7b30: ee02 4b05    	vmla.f64	d4, d2, d5
    7b34: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    7b38: ed9d 2a5c    	vldr	s4, [sp, #368]
    7b3c: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    7b40: ed9f 3b61    	vldr	d3, [pc, #388]          @ 0x7cc8 <ram_probe::packed_probe::control+0x5e8>
    7b44: ee01 4b05    	vmla.f64	d4, d1, d5
    7b48: ed9d 1a5d    	vldr	s2, [sp, #372]
    7b4c: ee02 4b05    	vmla.f64	d4, d2, d5
    7b50: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    7b54: ee2d 2a29    	vmul.f32	s4, s26, s19
    7b58: ee01 4b05    	vmla.f64	d4, d1, d5
    7b5c: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    7b60: ee81 1b03    	vdiv.f64	d1, d1, d3
    7b64: ed9f 3b5a    	vldr	d3, [pc, #360]          @ 0x7cd0 <ram_probe::packed_probe::control+0x5f0>
    7b68: ee04 1b03    	vmla.f64	d1, d4, d3
    7b6c: ed9f 4aea    	vldr	s8, [pc, #936]          @ 0x7f18 <ram_probe::packed_probe::control+0x838>
    7b70: ed9f 3b59    	vldr	d3, [pc, #356]          @ 0x7cd8 <ram_probe::packed_probe::control+0x5f8>
    7b74: ee32 5a04    	vadd.f32	s10, s4, s8
    7b78: ee81 1b03    	vdiv.f64	d1, d1, d3
    7b7c: ed9f 3ae7    	vldr	s6, [pc, #924]          @ 0x7f1c <ram_probe::packed_probe::control+0x83c>
    7b80: ee32 3a03    	vadd.f32	s6, s4, s6
    7b84: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    7b88: ee83 4a06    	vdiv.f32	s8, s6, s12
    7b8c: eef4 ca41    	vcmp.f32	s25, s2
    7b90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b94: ee85 3a06    	vdiv.f32	s6, s10, s12
    7b98: fe3c 1a81    	vselgt.f32	s2, s25, s2
    7b9c: eeb4 1a6b    	vcmp.f32	s2, s23
    7ba0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ba4: eeb4 4a43    	vcmp.f32	s8, s6
    7ba8: fe3b 1a81    	vselgt.f32	s2, s23, s2
    7bac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bb0: ed8d 1a57    	vstr	s2, [sp, #348]
    7bb4: f201 867c    	bhi.w	0x98b0 <ram_probe::packed_probe::control+0x21d0> @ imm = #0x1cf8
    7bb8: eeb7 5ac1    	vcvt.f64.f32	d5, s2
    7bbc: 2100         	movs	r1, #0x0
    7bbe: ed9f 6b48    	vldr	d6, [pc, #288]          @ 0x7ce0 <ram_probe::packed_probe::control+0x600>
    7bc2: 2000         	movs	r0, #0x0
    7bc4: eef7 1a00    	vmov.f32	s3, #1.000000e+00
    7bc8: ee05 0b06    	vmla.f64	d0, d5, d6
    7bcc: ed9f 5ad4    	vldr	s10, [pc, #848]         @ 0x7f20 <ram_probe::packed_probe::control+0x840>
    7bd0: ed9d fb3a    	vldr	d15, [sp, #232]
    7bd4: ed9f 6ad3    	vldr	s12, [pc, #844]         @ 0x7f24 <ram_probe::packed_probe::control+0x844>
    7bd8: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    7bdc: ee20 5a05    	vmul.f32	s10, s0, s10
    7be0: ed9f 0ad1    	vldr	s0, [pc, #836]          @ 0x7f28 <ram_probe::packed_probe::control+0x848>
    7be4: ee02 5a00    	vmla.f32	s10, s4, s0
    7be8: eeb7 2bcf    	vcvt.f32.f64	s4, d15
    7bec: ee01 2a06    	vmla.f32	s4, s2, s12
    7bf0: eeb4 4a45    	vcmp.f32	s8, s10
    7bf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bf8: eeb0 6ac2    	vabs.f32	s12, s4
    7bfc: fe34 0a05    	vselgt.f32	s0, s8, s10
    7c00: eeb4 0a43    	vcmp.f32	s0, s6
    7c04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c08: eeb4 5a44    	vcmp.f32	s10, s8
    7c0c: eebf 4a00    	vmov.f32	s8, #-1.000000e+00
    7c10: fe33 0a00    	vselgt.f32	s0, s6, s0
    7c14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c18: bfc8         	it	gt
    7c1a: 2101         	movgt	r1, #0x1
    7c1c: eeb4 5a43    	vcmp.f32	s10, s6
    7c20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c24: eeb5 2a40    	vcmp.f32	s4, #0
    7c28: ed9f 2a64    	vldr	s4, [pc, #400]          @ 0x7dbc <ram_probe::packed_probe::control+0x6dc>
    7c2c: eeb0 3a42    	vmov.f32	s6, s4
    7c30: eeb0 5a42    	vmov.f32	s10, s4
    7c34: bf48         	it	mi
    7c36: 2001         	movmi	r0, #0x1
    7c38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c3c: bf48         	it	mi
    7c3e: eeb0 3a44    	vmovmi.f32	s6, s8
    7c42: eeb0 4a42    	vmov.f32	s8, s4
    7c46: ea01 0100    	and.w	r1, r1, r0
    7c4a: fe31 7a83    	vselgt.f32	s14, s3, s6
    7c4e: ed9f 3ad5    	vldr	s6, [pc, #852]          @ 0x7fa4 <ram_probe::packed_probe::control+0x8c4>
    7c52: eeb4 6a43    	vcmp.f32	s12, s6
    7c56: eeb0 3a42    	vmov.f32	s6, s4
    7c5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c5e: f280 80de    	bge.w	0x7e1e <ram_probe::packed_probe::control+0x73e> @ imm = #0x1bc
    7c62: ed9f 2ad1    	vldr	s4, [pc, #836]          @ 0x7fa8 <ram_probe::packed_probe::control+0x8c8>
    7c66: eeb4 6a42    	vcmp.f32	s12, s4
    7c6a: ed9f 3a54    	vldr	s6, [pc, #336]          @ 0x7dbc <ram_probe::packed_probe::control+0x6dc>
    7c6e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c72: d915         	bls	0x7ca0 <ram_probe::packed_probe::control+0x5c0> @ imm = #0x2a
    7c74: ed9f 2acd    	vldr	s4, [pc, #820]          @ 0x7fac <ram_probe::packed_probe::control+0x8cc>
    7c78: eeb4 6a42    	vcmp.f32	s12, s4
    7c7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c80: d932         	bls	0x7ce8 <ram_probe::packed_probe::control+0x608> @ imm = #0x64
    7c82: ed9f 2acb    	vldr	s4, [pc, #812]          @ 0x7fb0 <ram_probe::packed_probe::control+0x8d0>
    7c86: ee36 4a02    	vadd.f32	s8, s12, s4
    7c8a: ed9f 5aee    	vldr	s10, [pc, #952]         @ 0x8044 <ram_probe::packed_probe::control+0x964>
    7c8e: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    7c92: e031         	b	0x7cf8 <ram_probe::packed_probe::control+0x618> @ imm = #0x62
    7c94: bf00         	nop
    7c96: bf00         	nop
    7c98: 80 e5 70 28  	.word	0x2870e580
    7c9c: a1 3a 03 3f  	.word	0x3f033aa1
    7ca0: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    7ca4: eeb0 5a43    	vmov.f32	s10, s6
    7ca8: e02a         	b	0x7d00 <ram_probe::packed_probe::control+0x620> @ imm = #0x54
    7caa: bf00         	nop
    7cac: 93 18 36 41  	.word	0x41361893
    7cb0: 09 d5 19 b8  	.word	0xb819d509
    7cb4: 00 bf 00 bf  	.word	0xbf00bf00
    7cb8: a2 0c d2 2e  	.word	0x2ed20ca2
    7cbc: ca fe ef 3f  	.word	0x3feffeca
		...
    7cc8: a7 2a 45 4f  	.word	0x4f452aa7
    7ccc: ed 97 01 41  	.word	0x410197ed
    7cd0: 26 88 21 19  	.word	0x19218826
    7cd4: 2f cc 65 40  	.word	0x4065cc2f
    7cd8: e7 0c 1b 48  	.word	0x481b0ce7
    7cdc: 2d 35 17 40  	.word	0x4017352d
    7ce0: 1f 89 9b cf  	.word	0xcf9b891f
    7ce4: ab 32 9c bf  	.word	0xbf9c32ab
    7ce8: ed9f 2ad7    	vldr	s4, [pc, #860]          @ 0x8048 <ram_probe::packed_probe::control+0x968>
    7cec: ee36 4a02    	vadd.f32	s8, s12, s4
    7cf0: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    7cf4: ed9f 5ad5    	vldr	s10, [pc, #852]         @ 0x804c <ram_probe::packed_probe::control+0x96c>
    7cf8: ee04 2a05    	vmla.f32	s4, s8, s10
    7cfc: ee27 5a05    	vmul.f32	s10, s14, s10
    7d00: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    7d04: ee34 2a42    	vsub.f32	s4, s8, s4
    7d08: fe82 4a03    	vmaxnm.f32	s8, s4, s6
    7d0c: eeb1 2a45    	vneg.f32	s4, s10
    7d10: eeb5 4a40    	vcmp.f32	s8, #0
    7d14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d18: d946         	bls	0x7da8 <ram_probe::packed_probe::control+0x6c8> @ imm = #0x8c
    7d1a: eeb0 3ac0    	vabs.f32	s6, s0
    7d1e: eeb4 3a44    	vcmp.f32	s6, s8
    7d22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d26: d94f         	bls	0x7dc8 <ram_probe::packed_probe::control+0x6e8> @ imm = #0x9e
    7d28: ee84 5a03    	vdiv.f32	s10, s8, s6
    7d2c: ee25 3a05    	vmul.f32	s6, s10, s10
    7d30: ee23 3a03    	vmul.f32	s6, s6, s6
    7d34: ee23 3a03    	vmul.f32	s6, s6, s6
    7d38: ee23 6a03    	vmul.f32	s12, s6, s6
    7d3c: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    7d40: ee36 7a03    	vadd.f32	s14, s12, s6
    7d44: eef0 0a43    	vmov.f32	s1, s6
    7d48: eeb4 7a43    	vcmp.f32	s14, s6
    7d4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d50: d009         	beq	0x7d66 <ram_probe::packed_probe::control+0x686> @ imm = #0x12
    7d52: eef0 0a47    	vmov.f32	s1, s14
    7d56: eef1 0ae0    	vsqrt.f32	s1, s1
    7d5a: eef1 0ae0    	vsqrt.f32	s1, s1
    7d5e: eef1 0ae0    	vsqrt.f32	s1, s1
    7d62: eef1 0ae0    	vsqrt.f32	s1, s1
    7d66: ee83 3a20    	vdiv.f32	s6, s6, s1
    7d6a: eeb4 0a40    	vcmp.f32	s0, s0
    7d6e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d72: ee83 7a07    	vdiv.f32	s14, s6, s14
    7d76: f181 8657    	bvs.w	0x9a28 <ram_probe::packed_probe::control+0x2348> @ imm = #0x1cae
    7d7a: ee10 0a10    	vmov	r0, s0
    7d7e: f04f 527e    	mov.w	r2, #0x3f800000
    7d82: f362 001e    	bfi	r0, r2, #0, #31
    7d86: ee00 0a90    	vmov	s1, r0
    7d8a: ee20 4a84    	vmul.f32	s8, s1, s8
    7d8e: ee24 3a03    	vmul.f32	s6, s8, s6
    7d92: ee20 4a87    	vmul.f32	s8, s1, s14
    7d96: ee25 5a06    	vmul.f32	s10, s10, s12
    7d9a: ee25 5a07    	vmul.f32	s10, s10, s14
    7d9e: e03e         	b	0x7e1e <ram_probe::packed_probe::control+0x73e> @ imm = #0x7c
    7da0: 17 b7 d1 38  	.word	0x38d1b717
    7da4: ac c5 a7 37  	.word	0x37a7c5ac
    7da8: eeb0 5a43    	vmov.f32	s10, s6
    7dac: eeb0 4a43    	vmov.f32	s8, s6
    7db0: e035         	b	0x7e1e <ram_probe::packed_probe::control+0x73e> @ imm = #0x6a
    7db2: bf00         	nop
    7db4: bd 37 06 36  	.word	0x360637bd
    7db8: ac c5 a7 37  	.word	0x37a7c5ac
    7dbc: 00 00 00 00  	.word	0x00000000
    7dc0: 00 80 bb 47  	.word	0x47bb8000
    7dc4: 00 a0 0c 48  	.word	0x480ca000
    7dc8: ee80 3a04    	vdiv.f32	s6, s0, s8
    7dcc: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    7dd0: ee23 3a03    	vmul.f32	s6, s6, s6
    7dd4: eeb0 7a46    	vmov.f32	s14, s12
    7dd8: ee23 3a03    	vmul.f32	s6, s6, s6
    7ddc: ee23 3a03    	vmul.f32	s6, s6, s6
    7de0: ee23 3a03    	vmul.f32	s6, s6, s6
    7de4: ee33 5a06    	vadd.f32	s10, s6, s12
    7de8: eeb4 5a46    	vcmp.f32	s10, s12
    7dec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7df0: d009         	beq	0x7e06 <ram_probe::packed_probe::control+0x726> @ imm = #0x12
    7df2: eeb0 7a45    	vmov.f32	s14, s10
    7df6: eeb1 7ac7    	vsqrt.f32	s14, s14
    7dfa: eeb1 7ac7    	vsqrt.f32	s14, s14
    7dfe: eeb1 7ac7    	vsqrt.f32	s14, s14
    7e02: eeb1 7ac7    	vsqrt.f32	s14, s14
    7e06: ee86 6a07    	vdiv.f32	s12, s12, s14
    7e0a: ee20 3a03    	vmul.f32	s6, s0, s6
    7e0e: ee86 5a05    	vdiv.f32	s10, s12, s10
    7e12: ee83 4a04    	vdiv.f32	s8, s6, s8
    7e16: ee20 3a06    	vmul.f32	s6, s0, s12
    7e1a: ee24 4a05    	vmul.f32	s8, s8, s10
    7e1e: ee31 6a43    	vsub.f32	s12, s2, s6
    7e22: 2900         	cmp	r1, #0x0
    7e24: ed9f 7a8a    	vldr	s14, [pc, #552]         @ 0x8050 <ram_probe::packed_probe::control+0x970>
    7e28: ed9f 3a8a    	vldr	s6, [pc, #552]          @ 0x8054 <ram_probe::packed_probe::control+0x974>
    7e2c: ee16 0a10    	vmov	r0, s12
    7e30: fe03 7a07    	vseleq.f32	s14, s6, s14
    7e34: f020 4000    	bic	r0, r0, #0x80000000
    7e38: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7e3c: da3a         	bge	0x7eb4 <ram_probe::packed_probe::control+0x7d4> @ imm = #0x74
    7e3e: eeb0 3ac6    	vabs.f32	s6, s12
    7e42: eef2 0a0e    	vmov.f32	s1, #1.500000e+01
    7e46: ee83 3a20    	vdiv.f32	s6, s6, s1
    7e4a: ed5f 0a2b    	vldr	s1, [pc, #-172]         @ 0x7da0 <ram_probe::packed_probe::control+0x6c0>
    7e4e: eeb4 3a60    	vcmp.f32	s6, s1
    7e52: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e56: d82d         	bhi	0x7eb4 <ram_probe::packed_probe::control+0x7d4> @ imm = #0x5a
    7e58: ee27 5a05    	vmul.f32	s10, s14, s10
    7e5c: eeb0 1ac1    	vabs.f32	s2, s2
    7e60: ee22 2a04    	vmul.f32	s4, s4, s8
    7e64: ed9f 4a7c    	vldr	s8, [pc, #496]          @ 0x8058 <ram_probe::packed_probe::control+0x978>
    7e68: ee25 4a04    	vmul.f32	s8, s10, s8
    7e6c: ed9f 5a7b    	vldr	s10, [pc, #492]         @ 0x805c <ram_probe::packed_probe::control+0x97c>
    7e70: eeb4 1a41    	vcmp.f32	s2, s2
    7e74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e78: ee02 4a05    	vmla.f32	s8, s4, s10
    7e7c: fe11 1a81    	vselvs.f32	s2, s3, s2
    7e80: eeb4 1a61    	vcmp.f32	s2, s3
    7e84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e88: ee34 2a21    	vadd.f32	s4, s8, s3
    7e8c: ed1f 4a37    	vldr	s8, [pc, #-220]         @ 0x7db4 <ram_probe::packed_probe::control+0x6d4>
    7e90: fe31 1a21    	vselgt.f32	s2, s2, s3
    7e94: ee86 2a02    	vdiv.f32	s4, s12, s4
    7e98: ee21 1a04    	vmul.f32	s2, s2, s8
    7e9c: ed1f 4a3a    	vldr	s8, [pc, #-232]         @ 0x7db8 <ram_probe::packed_probe::control+0x6d8>
    7ea0: eeb0 2ac2    	vabs.f32	s4, s4
    7ea4: fe81 1a44    	vminnm.f32	s2, s2, s8
    7ea8: eeb4 2a41    	vcmp.f32	s4, s2
    7eac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7eb0: f240 8082    	bls.w	0x7fb8 <ram_probe::packed_probe::control+0x8d8> @ imm = #0x104
    7eb4: 4640         	mov	r0, r8
    7eb6: eeb0 2a4d    	vmov.f32	s4, s26
    7eba: e8bc 004e    	ldm.w	r12!, {r1, r2, r3, r6}
    7ebe: c04e         	stm	r0!, {r1, r2, r3, r6}
    7ec0: e89c 004e    	ldm.w	r12, {r1, r2, r3, r6}
    7ec4: c04e         	stm	r0!, {r1, r2, r3, r6}
    7ec6: eeb0 0b4f    	vmov.f64	d0, d15
    7eca: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    7ece: eeb0 1b4e    	vmov.f64	d1, d14
    7ed2: 3001         	adds	r0, #0x1
    7ed4: f8c4 010c    	str.w	r0, [r4, #0x10c]
    7ed8: a863         	add	r0, sp, #0x18c
    7eda: aa5e         	add	r2, sp, #0x178
    7edc: 4641         	mov	r1, r8
    7ede: f7f9 f9db    	bl	0x1298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>> @ imm = #-0x6c4a
    7ee2: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    7ee6: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    7eea: 4489         	add	r9, r1
    7eec: b300         	cbz	r0, 0x7f30 <ram_probe::packed_probe::control+0x850> @ imm = #0x40
    7eee: eef4 da6d    	vcmp.f32	s27, s27
    7ef2: ed9d 0a63    	vldr	s0, [sp, #396]
    7ef6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7efa: eeb4 0a40    	vcmp.f32	s0, s0
    7efe: fe10 1a2d    	vselvs.f32	s2, s0, s27
    7f02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f06: fe11 0a00    	vselvs.f32	s0, s2, s0
    7f0a: eeb4 1a40    	vcmp.f32	s2, s0
    7f0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f12: fe31 da00    	vselgt.f32	s26, s2, s0
    7f16: e068         	b	0x7fea <ram_probe::packed_probe::control+0x90a> @ imm = #0xd0
    7f18: 00 24 74 4b  	.word	0x4b742400
    7f1c: 00 24 74 cb  	.word	0xcb742400
    7f20: 79 61 2e 43  	.word	0x432e6179
    7f24: ab aa a0 b8  	.word	0xb8a0aaab
    7f28: 50 d0 e8 36  	.word	0x36e8d050
    7f2c: 00 bf 00 bf  	.word	0xbf00bf00
    7f30: eeb0 0b4f    	vmov.f64	d0, d15
    7f34: a863         	add	r0, sp, #0x18c
    7f36: eeb0 1b4e    	vmov.f64	d1, d14
    7f3a: a956         	add	r1, sp, #0x158
    7f3c: eeb0 2a4d    	vmov.f32	s4, s26
    7f40: aa5e         	add	r2, sp, #0x178
    7f42: 2600         	movs	r6, #0x0
    7f44: 9657         	str	r6, [sp, #0x15c]
    7f46: f7f9 f9a7    	bl	0x1298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>> @ imm = #-0x6cb2
    7f4a: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    7f4e: eef4 da6d    	vcmp.f32	s27, s27
    7f52: 3001         	adds	r0, #0x1
    7f54: bf28         	it	hs
    7f56: f04f 30ff    	movhs.w	r0, #0xffffffff
    7f5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f5e: ed9d 0a63    	vldr	s0, [sp, #396]
    7f62: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    7f66: fe10 1a2d    	vselvs.f32	s2, s0, s27
    7f6a: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    7f6e: eeb4 0a40    	vcmp.f32	s0, s0
    7f72: 4489         	add	r9, r1
    7f74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f78: f8c4 011c    	str.w	r0, [r4, #0x11c]
    7f7c: fe11 2a00    	vselvs.f32	s4, s2, s0
    7f80: eeb4 1a42    	vcmp.f32	s2, s4
    7f84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f88: fe31 da02    	vselgt.f32	s26, s2, s4
    7f8c: bb6a         	cbnz	r2, 0x7fea <ram_probe::packed_probe::control+0x90a> @ imm = #0x5a
    7f8e: 69e0         	ldr	r0, [r4, #0x1c]
    7f90: f8cb 0000    	str.w	r0, [r11]
    7f94: ed8b 0a01    	vstr	s0, [r11, #4]
    7f98: f88b 9008    	strb.w	r9, [r11, #0x8]
    7f9c: f88b 6009    	strb.w	r6, [r11, #0x9]
    7fa0: f001 bbc6    	b.w	0x9730 <ram_probe::packed_probe::control+0x2050> @ imm = #0x178c
    7fa4: 0a d7 23 3d  	.word	0x3d23d70a
    7fa8: 7c f2 b0 3a  	.word	0x3ab0f27c
    7fac: a6 9b c4 3b  	.word	0x3bc49ba6
    7fb0: a6 9b c4 bb  	.word	0xbbc49ba6
    7fb4: 00 bf 00 bf  	.word	0xbf00bf00
    7fb8: eef4 da6d    	vcmp.f32	s27, s27
    7fbc: f8d4 0104    	ldr.w	r0, [r4, #0x104]
    7fc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7fc4: eeb4 3a43    	vcmp.f32	s6, s6
    7fc8: ed8d 0a5e    	vstr	s0, [sp, #376]
    7fcc: fe13 1a2d    	vselvs.f32	s2, s6, s27
    7fd0: 3001         	adds	r0, #0x1
    7fd2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7fd6: f8c4 0104    	str.w	r0, [r4, #0x104]
    7fda: fe11 2a03    	vselvs.f32	s4, s2, s6
    7fde: eeb4 1a42    	vcmp.f32	s2, s4
    7fe2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7fe6: fe31 da02    	vselgt.f32	s26, s2, s4
    7fea: eeb0 0a4c    	vmov.f32	s0, s24
    7fee: f50d 7ac6    	add.w	r10, sp, #0x18c
    7ff2: f50d 78ac    	add.w	r8, sp, #0x158
    7ff6: aa38         	add	r2, sp, #0xe0
    7ff8: ab5e         	add	r3, sp, #0x178
    7ffa: 4650         	mov	r0, r10
    7ffc: 4641         	mov	r1, r8
    7ffe: f7f9 fd3f    	bl	0x1a80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>> @ imm = #-0x6582
    8002: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    8006: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    800a: 2801         	cmp	r0, #0x1
    800c: 4489         	add	r9, r1
    800e: d16b         	bne	0x80e8 <ram_probe::packed_probe::control+0xa08> @ imm = #0xd6
    8010: eeb4 da4d    	vcmp.f32	s26, s26
    8014: ed9d 0a63    	vldr	s0, [sp, #396]
    8018: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    801c: eeb4 0a40    	vcmp.f32	s0, s0
    8020: ed8d 8a0b    	vstr	s16, [sp, #44]
    8024: fe10 1a0d    	vselvs.f32	s2, s0, s26
    8028: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    802c: fe11 0a00    	vselvs.f32	s0, s2, s0
    8030: eeb4 1a40    	vcmp.f32	s2, s0
    8034: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8038: fe31 0a00    	vselgt.f32	s0, s2, s0
    803c: ed8d 0a1a    	vstr	s0, [sp, #104]
    8040: e085         	b	0x814e <ram_probe::packed_probe::control+0xa6e> @ imm = #0x10a
    8042: bf00         	nop
    8044: 79 78 b0 43  	.word	0x43b07879
    8048: 7c f2 b0 ba  	.word	0xbab0f27c
    804c: 53 4a a1 43  	.word	0x43a14a53
    8050: 79 61 2e c3  	.word	0xc32e6179
    8054: 00 00 00 80  	.word	0x80000000
    8058: 5e 95 e1 bc  	.word	0xbce1955e
    805c: ab aa a0 38  	.word	0x38a0aaab
		...
    8068: ab 14 f2 db  	.word	0xdbf214ab
    806c: ec cd d7 3f  	.word	0x3fd7cdec
    8070: c4 a9 9f 7b  	.word	0x7b9fa9c4
    8074: 67 dd c7 3f  	.word	0x3fc7dd67
    8078: a7 2a 45 4f  	.word	0x4f452aa7
    807c: ed 97 01 41  	.word	0x410197ed
    8080: 26 88 21 19  	.word	0x19218826
    8084: 2f cc 65 40  	.word	0x4065cc2f
    8088: c6 e6 eb 5a  	.word	0x5aebe6c6
    808c: d9 83 57 40  	.word	0x405783d9
    8090: 15 be b6 e5  	.word	0xe5b6be15
    8094: 6d 7e c0 3f  	.word	0x3fc07e6d
    8098: 33 5a 1f 17  	.word	0x171f5a33
    809c: c7 76 4c 40  	.word	0x404c76c7
    80a0: 39 0e ce cb  	.word	0xcbce0e39
    80a4: 33 25 73 3f  	.word	0x3f732533
    80a8: d2 ce fe 14  	.word	0x14feced2
    80ac: cf 45 20 3f  	.word	0x3f2045cf
    80b0: 68 26 52 13  	.word	0x13522668
    80b4: 2a 49 20 3f  	.word	0x3f20492a
    80b8: 10 43 9c 25  	.word	0x259c4310
    80bc: ca fc ef 3f  	.word	0x3feffcca
    80c0: c2 17 26 53  	.word	0x532617c2
    80c4: 05 a3 72 3f  	.word	0x3f72a305
    80c8: 44 1c 7f 14  	.word	0x147f1c44
    80cc: 5b ea cd be  	.word	0xbecdea5b
    80d0: 44 1c 7f 14  	.word	0x147f1c44
    80d4: 5b ea ad be  	.word	0xbeadea5b
    80d8: d0 cf 74 ad  	.word	0xad74cfd0
    80dc: 26 a1 82 3f  	.word	0x3f82a126
    80e0: d0 cf 74 ad  	.word	0xad74cfd0
    80e4: 26 a1 62 3f  	.word	0x3f62a126
    80e8: eeb0 0a4c    	vmov.f32	s0, s24
    80ec: a863         	add	r0, sp, #0x18c
    80ee: a956         	add	r1, sp, #0x158
    80f0: aa38         	add	r2, sp, #0xe0
    80f2: ab5e         	add	r3, sp, #0x178
    80f4: 2500         	movs	r5, #0x0
    80f6: e9cd 5558    	strd	r5, r5, [sp, #352]
    80fa: f7f9 fcc1    	bl	0x1a80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>> @ imm = #-0x667e
    80fe: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    8102: eeb4 da4d    	vcmp.f32	s26, s26
    8106: 3001         	adds	r0, #0x1
    8108: bf28         	it	hs
    810a: f04f 30ff    	movhs.w	r0, #0xffffffff
    810e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8112: ed9d 0a63    	vldr	s0, [sp, #396]
    8116: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    811a: fe10 1a0d    	vselvs.f32	s2, s0, s26
    811e: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    8122: eeb4 0a40    	vcmp.f32	s0, s0
    8126: 4489         	add	r9, r1
    8128: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    812c: f8c4 011c    	str.w	r0, [r4, #0x11c]
    8130: fe11 2a00    	vselvs.f32	s4, s2, s0
    8134: eeb4 1a42    	vcmp.f32	s2, s4
    8138: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    813c: fe31 1a02    	vselgt.f32	s2, s2, s4
    8140: 2a00         	cmp	r2, #0x0
    8142: f001 80fd    	beq.w	0x9340 <ram_probe::packed_probe::control+0x1c60> @ imm = #0x11fa
    8146: ed8d 1a1a    	vstr	s2, [sp, #104]
    814a: ed8d 8a0b    	vstr	s16, [sp, #44]
    814e: f50d 7cf4    	add.w	r12, sp, #0x1e8
    8152: 4641         	mov	r1, r8
    8154: 4662         	mov	r2, r12
    8156: c969         	ldm	r1!, {r0, r3, r5, r6}
    8158: c269         	stm	r2!, {r0, r3, r5, r6}
    815a: e891 0069    	ldm.w	r1, {r0, r3, r5, r6}
    815e: c269         	stm	r2!, {r0, r3, r5, r6}
    8160: ed9d 0a56    	vldr	s0, [sp, #344]
    8164: ed9d 1a57    	vldr	s2, [sp, #348]
    8168: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    816c: ed9d ba5c    	vldr	s22, [sp, #368]
    8170: ed1f 8b45    	vldr	d8, [pc, #-276]         @ 0x8060 <ram_probe::packed_probe::control+0x980>
    8174: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    8178: ed8d 9a19    	vstr	s18, [sp, #100]
    817c: ee20 0b08    	vmul.f64	d0, d0, d8
    8180: eeb7 eacb    	vcvt.f64.f32	d14, s22
    8184: ed9d ba5d    	vldr	s22, [sp, #372]
    8188: ed9d 2b4c    	vldr	d2, [sp, #304]
    818c: ed8d 2b16    	vstr	d2, [sp, #88]
    8190: ee32 4b00    	vadd.f64	d4, d2, d0
    8194: ee21 2b08    	vmul.f64	d2, d1, d8
    8198: ed1f 5b4d    	vldr	d5, [pc, #-308]         @ 0x8068 <ram_probe::packed_probe::control+0x988>
    819c: ee34 1b02    	vadd.f64	d1, d4, d2
    81a0: ed9d 4a58    	vldr	s8, [sp, #352]
    81a4: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    81a8: ed1f 6b4f    	vldr	d6, [pc, #-316]         @ 0x8070 <ram_probe::packed_probe::control+0x990>
    81ac: ee24 3b05    	vmul.f64	d3, d4, d5
    81b0: ed9d 5a59    	vldr	s10, [sp, #356]
    81b4: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    81b8: ee31 1b03    	vadd.f64	d1, d1, d3
    81bc: ee25 7b06    	vmul.f64	d7, d5, d6
    81c0: ed9d 6a5b    	vldr	s12, [sp, #364]
    81c4: eeb7 6ac6    	vcvt.f64.f32	d6, s12
    81c8: ee31 1b07    	vadd.f64	d1, d1, d7
    81cc: ee06 1b08    	vmla.f64	d1, d6, d8
    81d0: ee2e 6b08    	vmul.f64	d6, d14, d8
    81d4: eeb7 eacb    	vcvt.f64.f32	d14, s22
    81d8: eeb0 ba69    	vmov.f32	s22, s19
    81dc: ed8d 3b14    	vstr	d3, [sp, #80]
    81e0: ee31 fb06    	vadd.f64	d15, d1, d6
    81e4: ee69 1a29    	vmul.f32	s3, s18, s19
    81e8: ee2e eb08    	vmul.f64	d14, d14, d8
    81ec: eeb7 9ae1    	vcvt.f64.f32	d9, s3
    81f0: ee3f fb0e    	vadd.f64	d15, d15, d14
    81f4: ed1f 3b60    	vldr	d3, [pc, #-384]         @ 0x8078 <ram_probe::packed_probe::control+0x998>
    81f8: ed1f db5f    	vldr	d13, [pc, #-380]        @ 0x8080 <ram_probe::packed_probe::control+0x9a0>
    81fc: ee89 9b03    	vdiv.f64	d9, d9, d3
    8200: ee0f 9b0d    	vmla.f64	d9, d15, d13
    8204: ed1f fb60    	vldr	d15, [pc, #-384]        @ 0x8088 <ram_probe::packed_probe::control+0x9a8>
    8208: ee89 9b0f    	vdiv.f64	d9, d9, d15
    820c: ed9d fb54    	vldr	d15, [sp, #336]
    8210: eeb7 1bc9    	vcvt.f32.f64	s2, d9
    8214: ed9d 9b4e    	vldr	d9, [sp, #312]
    8218: eef4 ca41    	vcmp.f32	s25, s2
    821c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8220: ee30 0b09    	vadd.f64	d0, d0, d9
    8224: fe3c 1a81    	vselgt.f32	s2, s25, s2
    8228: ed8d 9b10    	vstr	d9, [sp, #64]
    822c: eeb4 1a6b    	vcmp.f32	s2, s23
    8230: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8234: ee32 2b00    	vadd.f64	d2, d2, d0
    8238: fe3b 0a81    	vselgt.f32	s0, s23, s2
    823c: ee04 2b08    	vmla.f64	d2, d4, d8
    8240: ee6a 0a0b    	vmul.f32	s1, s20, s22
    8244: ed8d 0a18    	vstr	s0, [sp, #96]
    8248: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    824c: ed8d 0a5a    	vstr	s0, [sp, #360]
    8250: ee05 2b08    	vmla.f64	d2, d5, d8
    8254: ed1f 5b72    	vldr	d5, [pc, #-456]         @ 0x8090 <ram_probe::packed_probe::control+0x9b0>
    8258: ee24 5b05    	vmul.f64	d5, d4, d5
    825c: ed8d 5b0e    	vstr	d5, [sp, #56]
    8260: ee32 2b45    	vsub.f64	d2, d2, d5
    8264: eeb7 5ae0    	vcvt.f64.f32	d5, s1
    8268: ed9d 9b52    	vldr	d9, [sp, #328]
    826c: ee36 2b02    	vadd.f64	d2, d6, d2
    8270: ee85 5b03    	vdiv.f64	d5, d5, d3
    8274: ee3e 2b02    	vadd.f64	d2, d14, d2
    8278: ed9d eb44    	vldr	d14, [sp, #272]
    827c: ee02 5b0d    	vmla.f64	d5, d2, d13
    8280: ed1f 2b7b    	vldr	d2, [pc, #-492]         @ 0x8098 <ram_probe::packed_probe::control+0x9b8>
    8284: ee85 2b02    	vdiv.f64	d2, d5, d2
    8288: eddf 5ae8    	vldr	s11, [pc, #928]         @ 0x862c <ram_probe::packed_probe::control+0xf4c>
    828c: ed8d eb12    	vstr	d14, [sp, #72]
    8290: eeb7 1bc2    	vcvt.f32.f64	s2, d2
    8294: ed1f 2b7e    	vldr	d2, [pc, #-504]         @ 0x80a0 <ram_probe::packed_probe::control+0x9c0>
    8298: eef4 ca41    	vcmp.f32	s25, s2
    829c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82a0: eeb7 5bc9    	vcvt.f32.f64	s10, d9
    82a4: fe3c 1a81    	vselgt.f32	s2, s25, s2
    82a8: eef7 6bcf    	vcvt.f32.f64	s13, d15
    82ac: eeb4 1a6b    	vcmp.f32	s2, s23
    82b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82b4: fe3b 1a81    	vselgt.f32	s2, s23, s2
    82b8: ed1f bb85    	vldr	d11, [pc, #-532]        @ 0x80a8 <ram_probe::packed_probe::control+0x9c8>
    82bc: ed8d 1a5b    	vstr	s2, [sp, #364]
    82c0: eeb7 3ac1    	vcvt.f64.f32	d3, s2
    82c4: ee21 6a25    	vmul.f32	s12, s2, s11
    82c8: ee03 eb0b    	vmla.f64	d14, d3, d11
    82cc: ee36 5a05    	vadd.f32	s10, s12, s10
    82d0: ee36 6a26    	vadd.f32	s12, s12, s13
    82d4: eddf 6ad6    	vldr	s13, [pc, #856]         @ 0x8630 <ram_probe::packed_probe::control+0xf50>
    82d8: ee8e 2b02    	vdiv.f64	d2, d14, d2
    82dc: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    82e0: eef0 2a46    	vmov.f32	s5, s12
    82e4: ee42 2a65    	vmls.f32	s5, s4, s11
    82e8: eef0 5a45    	vmov.f32	s11, s10
    82ec: ee42 5a26    	vmla.f32	s11, s4, s13
    82f0: fec5 2ae2    	vminnm.f32	s5, s11, s5
    82f4: eef4 2a6a    	vcmp.f32	s5, s21
    82f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82fc: f240 80f8    	bls.w	0x84f0 <ram_probe::packed_probe::control+0xe10> @ imm = #0x1f0
    8300: ed1f 2b95    	vldr	d2, [pc, #-596]         @ 0x80b0 <ram_probe::packed_probe::control+0x9d0>
    8304: eddf 5acb    	vldr	s11, [pc, #812]         @ 0x8634 <ram_probe::packed_probe::control+0xf54>
    8308: ee8e 2b02    	vdiv.f64	d2, d14, d2
    830c: ed9f caca    	vldr	s24, [pc, #808]         @ 0x8638 <ram_probe::packed_probe::control+0xf58>
    8310: ed9f 0aca    	vldr	s0, [pc, #808]          @ 0x863c <ram_probe::packed_probe::control+0xf5c>
    8314: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    8318: eef0 2a45    	vmov.f32	s5, s10
    831c: ed9f 8ac8    	vldr	s16, [pc, #800]         @ 0x8640 <ram_probe::packed_probe::control+0xf60>
    8320: ee42 2a26    	vmla.f32	s5, s4, s13
    8324: eef0 6a46    	vmov.f32	s13, s12
    8328: ee42 6a25    	vmla.f32	s13, s4, s11
    832c: fec2 2ae6    	vminnm.f32	s5, s5, s13
    8330: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    8334: ee7a 2ae2    	vsub.f32	s5, s21, s5
    8338: fec2 2acc    	vminnm.f32	s5, s5, s24
    833c: eeb0 ca66    	vmov.f32	s24, s13
    8340: ee02 caaa    	vmla.f32	s24, s5, s21
    8344: ee6c 2a00    	vmul.f32	s5, s24, s0
    8348: eef4 2a48    	vcmp.f32	s5, s16
    834c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8350: f240 80ce    	bls.w	0x84f0 <ram_probe::packed_probe::control+0xe10> @ imm = #0x19c
    8354: ed1f 2ba8    	vldr	d2, [pc, #-672]         @ 0x80b8 <ram_probe::packed_probe::control+0x9d8>
    8358: eeb6 cb00    	vmov.f64	d12, #5.000000e-01
    835c: eeb7 8b00    	vmov.f64	d8, #1.000000e+00
    8360: ee23 2b02    	vmul.f64	d2, d3, d2
    8364: eeb0 db42    	vmov.f64	d13, d2
    8368: ee39 2b02    	vadd.f64	d2, d9, d2
    836c: eeb0 9b48    	vmov.f64	d9, d8
    8370: ee3c 2b42    	vsub.f64	d2, d12, d2
    8374: ee02 9b0c    	vmla.f64	d9, d2, d12
    8378: eeb0 cb4b    	vmov.f64	d12, d11
    837c: ed1f 2bb0    	vldr	d2, [pc, #-704]         @ 0x80c0 <ram_probe::packed_probe::control+0x9e0>
    8380: ee09 cb02    	vmla.f64	d12, d9, d2
    8384: ed1f 2bb0    	vldr	d2, [pc, #-704]         @ 0x80c8 <ram_probe::packed_probe::control+0x9e8>
    8388: ee2e 2b02    	vmul.f64	d2, d14, d2
    838c: ee0c 2b0c    	vmla.f64	d2, d12, d12
    8390: eeb1 9b4e    	vneg.f64	d9, d14
    8394: eeb5 2b40    	vcmp.f64	d2, #0
    8398: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    839c: ed8d 9b0c    	vstr	d9, [sp, #48]
    83a0: d42a         	bmi	0x83f8 <ram_probe::packed_probe::control+0xd18> @ imm = #0x54
    83a2: ec51 0b1c    	vmov	r0, r1, d12
    83a6: eeb1 2bc2    	vsqrt.f64	d2, d2
    83aa: ec52 0b12    	vmov	r0, r2, d2
    83ae: 0fc9         	lsrs	r1, r1, #0x1f
    83b0: eebe 9b00    	vmov.f64	d9, #-5.000000e-01
    83b4: f361 72df    	bfi	r2, r1, #31, #1
    83b8: ec42 0b12    	vmov	d2, r0, r2
    83bc: ee3c 2b02    	vadd.f64	d2, d12, d2
    83c0: ee22 9b09    	vmul.f64	d9, d2, d9
    83c4: ed1f 2bbe    	vldr	d2, [pc, #-760]         @ 0x80d0 <ram_probe::packed_probe::control+0x9f0>
    83c8: ee89 2b02    	vdiv.f64	d2, d9, d2
    83cc: ec51 0b12    	vmov	r0, r1, d2
    83d0: f021 4000    	bic	r0, r1, #0x80000000
    83d4: f64f 71ff    	movw	r1, #0xffff
    83d8: f6c7 71ef    	movt	r1, #0x7fef
    83dc: 4288         	cmp	r0, r1
    83de: f341 81af    	ble.w	0x9740 <ram_probe::packed_probe::control+0x2060> @ imm = #0x135e
    83e2: ed9d 2b0c    	vldr	d2, [sp, #48]
    83e6: ee82 2b09    	vdiv.f64	d2, d2, d9
    83ea: ec52 0b12    	vmov	r0, r2, d2
    83ee: f022 4000    	bic	r0, r2, #0x80000000
    83f2: 4288         	cmp	r0, r1
    83f4: f341 8220    	ble.w	0x9838 <ram_probe::packed_probe::control+0x2158> @ imm = #0x1440
    83f8: ee3f 2b0d    	vadd.f64	d2, d15, d13
    83fc: eeb6 9b00    	vmov.f64	d9, #5.000000e-01
    8400: ee39 2b42    	vsub.f64	d2, d9, d2
    8404: ee02 8b09    	vmla.f64	d8, d2, d9
    8408: ed1f 2bd3    	vldr	d2, [pc, #-844]         @ 0x80c0 <ram_probe::packed_probe::control+0x9e0>
    840c: ee08 bb02    	vmla.f64	d11, d8, d2
    8410: ed1f 8bcf    	vldr	d8, [pc, #-828]         @ 0x80d8 <ram_probe::packed_probe::control+0x9f8>
    8414: ee2b 2b0b    	vmul.f64	d2, d11, d11
    8418: ee0e 2b08    	vmla.f64	d2, d14, d8
    841c: eeb5 2b40    	vcmp.f64	d2, #0
    8420: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8424: f100 8430    	bmi.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x860
    8428: ec51 0b1b    	vmov	r0, r1, d11
    842c: eeb1 2bc2    	vsqrt.f64	d2, d2
    8430: ec52 0b12    	vmov	r0, r2, d2
    8434: 0fc9         	lsrs	r1, r1, #0x1f
    8436: eebe 8b00    	vmov.f64	d8, #-5.000000e-01
    843a: f361 72df    	bfi	r2, r1, #31, #1
    843e: ec42 0b12    	vmov	d2, r0, r2
    8442: ee3b 2b02    	vadd.f64	d2, d11, d2
    8446: ee22 9b08    	vmul.f64	d9, d2, d8
    844a: ed1f 2bdb    	vldr	d2, [pc, #-876]         @ 0x80e0 <ram_probe::packed_probe::control+0xa00>
    844e: ee89 2b02    	vdiv.f64	d2, d9, d2
    8452: ec51 0b12    	vmov	r0, r1, d2
    8456: f021 4000    	bic	r0, r1, #0x80000000
    845a: f64f 71ff    	movw	r1, #0xffff
    845e: f6c7 71ef    	movt	r1, #0x7fef
    8462: 4288         	cmp	r0, r1
    8464: f341 81ac    	ble.w	0x97c0 <ram_probe::packed_probe::control+0x20e0> @ imm = #0x1358
    8468: ed9d 2b0c    	vldr	d2, [sp, #48]
    846c: ee82 2b09    	vdiv.f64	d2, d2, d9
    8470: ec52 0b12    	vmov	r0, r2, d2
    8474: f022 4000    	bic	r0, r2, #0x80000000
    8478: 4288         	cmp	r0, r1
    847a: f300 8405    	bgt.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x80a
    847e: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    8482: eef0 2a46    	vmov.f32	s5, s12
    8486: eeb0 9a45    	vmov.f32	s18, s10
    848a: eeb8 8a00    	vmov.f32	s16, #-2.000000e+00
    848e: ed8d 2a5c    	vstr	s4, [sp, #368]
    8492: ee42 2a25    	vmla.f32	s5, s4, s11
    8496: eef0 5a40    	vmov.f32	s11, s0
    849a: ed9f 0a65    	vldr	s0, [pc, #404]          @ 0x8630 <ram_probe::packed_probe::control+0xf50>
    849e: ee02 9a00    	vmla.f32	s18, s4, s0
    84a2: eeb0 0a65    	vmov.f32	s0, s11
    84a6: fec9 5a62    	vminnm.f32	s11, s18, s5
    84aa: ee7a 5ae5    	vsub.f32	s11, s21, s11
    84ae: eef4 5a48    	vcmp.f32	s11, s16
    84b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84b6: f340 83e7    	ble.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x7ce
    84ba: eef4 2a49    	vcmp.f32	s5, s18
    84be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84c2: f200 83e1    	bhi.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x7c2
    84c6: eef5 5a40    	vcmp.f32	s11, #0
    84ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84ce: f140 83db    	bpl.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x7b6
    84d2: ee45 6aaa    	vmla.f32	s13, s11, s21
    84d6: ee66 2a80    	vmul.f32	s5, s13, s0
    84da: ed9f 0a59    	vldr	s0, [pc, #356]          @ 0x8640 <ram_probe::packed_probe::control+0xf60>
    84de: eef4 2a40    	vcmp.f32	s5, s0
    84e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84e6: dc05         	bgt	0x84f4 <ram_probe::packed_probe::control+0xe14> @ imm = #0xa
    84e8: e3ce         	b	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x79c
    84ea: bf00         	nop
    84ec: bf00         	nop
    84ee: bf00         	nop
    84f0: ed8d 2a5c    	vstr	s4, [sp, #368]
    84f4: ed9f 8a85    	vldr	s16, [pc, #532]         @ 0x870c <ram_probe::packed_probe::control+0x102c>
    84f8: ed9f ba85    	vldr	s22, [pc, #532]         @ 0x8710 <ram_probe::packed_probe::control+0x1030>
    84fc: ee71 2a88    	vadd.f32	s5, s3, s16
    8500: ee71 6a8b    	vadd.f32	s13, s3, s22
    8504: ed9f 0aee    	vldr	s0, [pc, #952]          @ 0x88c0 <ram_probe::packed_probe::control+0x11e0>
    8508: eec2 5a80    	vdiv.f32	s11, s5, s0
    850c: eec6 2a80    	vdiv.f32	s5, s13, s0
    8510: eef4 5a62    	vcmp.f32	s11, s5
    8514: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8518: f201 81d6    	bhi.w	0x98c8 <ram_probe::packed_probe::control+0x21e8> @ imm = #0x13ac
    851c: ed8d 3b0c    	vstr	d3, [sp, #48]
    8520: eddf caec    	vldr	s25, [pc, #944]         @ 0x88d4 <ram_probe::packed_probe::control+0x11f4>
    8524: ed9d da18    	vldr	s26, [sp, #96]
    8528: ed9d 3b16    	vldr	d3, [sp, #88]
    852c: 2000         	movs	r0, #0x0
    852e: 2100         	movs	r1, #0x0
    8530: ed9d 9b14    	vldr	d9, [sp, #80]
    8534: ed9f fae8    	vldr	s30, [pc, #928]         @ 0x88d8 <ram_probe::packed_probe::control+0x11f8>
    8538: ee33 3b09    	vadd.f64	d3, d3, d9
    853c: eddf 9ae7    	vldr	s19, [pc, #924]         @ 0x88dc <ram_probe::packed_probe::control+0x11fc>
    8540: eddf fae7    	vldr	s31, [pc, #924]         @ 0x88e0 <ram_probe::packed_probe::control+0x1200>
    8544: ee33 3b07    	vadd.f64	d3, d3, d7
    8548: eddf dae6    	vldr	s27, [pc, #920]         @ 0x88e4 <ram_probe::packed_probe::control+0x1204>
    854c: ed9f 7b90    	vldr	d7, [pc, #576]          @ 0x8790 <ram_probe::packed_probe::control+0x10b0>
    8550: ee04 3b07    	vmla.f64	d3, d4, d7
    8554: ed9f 4ae4    	vldr	s8, [pc, #912]          @ 0x88e8 <ram_probe::packed_probe::control+0x1208>
    8558: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    855c: ee23 7a29    	vmul.f32	s14, s6, s19
    8560: ee01 7aac    	vmla.f32	s14, s3, s25
    8564: ed9d 3b40    	vldr	d3, [sp, #256]
    8568: eef7 1bc3    	vcvt.f32.f64	s3, d3
    856c: ee4d 1a04    	vmla.f32	s3, s26, s8
    8570: ed9f 4ade    	vldr	s8, [pc, #888]          @ 0x88ec <ram_probe::packed_probe::control+0x120c>
    8574: eef4 5a47    	vcmp.f32	s11, s14
    8578: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    857c: ee41 1a04    	vmla.f32	s3, s2, s8
    8580: fe35 3a87    	vselgt.f32	s6, s11, s14
    8584: eeb4 3a62    	vcmp.f32	s6, s5
    8588: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    858c: eeb4 7a65    	vcmp.f32	s14, s11
    8590: fe72 8a83    	vselgt.f32	s17, s5, s6
    8594: eebf 3a00    	vmov.f32	s6, #-1.000000e+00
    8598: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    859c: eeb4 7a62    	vcmp.f32	s14, s5
    85a0: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    85a4: bfc8         	it	gt
    85a6: 2001         	movgt	r0, #0x1
    85a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85ac: eef5 1a40    	vcmp.f32	s3, #0
    85b0: eef0 6ae1    	vabs.f32	s13, s3
    85b4: eddf 1a20    	vldr	s3, [pc, #128]          @ 0x8638 <ram_probe::packed_probe::control+0xf58>
    85b8: eeb0 7a61    	vmov.f32	s14, s3
    85bc: eef0 5a61    	vmov.f32	s11, s3
    85c0: bf48         	it	mi
    85c2: 2101         	movmi	r1, #0x1
    85c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85c8: bf48         	it	mi
    85ca: eeb0 7a43    	vmovmi.f32	s14, s6
    85ce: eef0 4a61    	vmov.f32	s9, s3
    85d2: eef4 6a4f    	vcmp.f32	s13, s30
    85d6: fe72 3a87    	vselgt.f32	s7, s5, s14
    85da: eeb0 7a61    	vmov.f32	s14, s3
    85de: eef0 2a61    	vmov.f32	s5, s3
    85e2: 4001         	ands	r1, r0
    85e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85e8: f280 80c1    	bge.w	0x876e <ram_probe::packed_probe::control+0x108e> @ imm = #0x182
    85ec: ed9f 7ac0    	vldr	s14, [pc, #768]         @ 0x88f0 <ram_probe::packed_probe::control+0x1210>
    85f0: eef4 6a47    	vcmp.f32	s13, s14
    85f4: eddf 2a10    	vldr	s5, [pc, #64]           @ 0x8638 <ram_probe::packed_probe::control+0xf58>
    85f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85fc: d910         	bls	0x8620 <ram_probe::packed_probe::control+0xf40> @ imm = #0x20
    85fe: ed9f 7abd    	vldr	s14, [pc, #756]         @ 0x88f4 <ram_probe::packed_probe::control+0x1214>
    8602: eef4 6a47    	vcmp.f32	s13, s14
    8606: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    860a: d91d         	bls	0x8648 <ram_probe::packed_probe::control+0xf68> @ imm = #0x3a
    860c: ed9f 7ae8    	vldr	s14, [pc, #928]         @ 0x89b0 <ram_probe::packed_probe::control+0x12d0>
    8610: ee76 4a87    	vadd.f32	s9, s13, s14
    8614: eddf 5ae7    	vldr	s11, [pc, #924]         @ 0x89b4 <ram_probe::packed_probe::control+0x12d4>
    8618: eeb0 7a08    	vmov.f32	s14, #3.000000e+00
    861c: e01c         	b	0x8658 <ram_probe::packed_probe::control+0xf78> @ imm = #0x38
    861e: bf00         	nop
    8620: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    8624: eef0 4a62    	vmov.f32	s9, s5
    8628: e01a         	b	0x8660 <ram_probe::packed_probe::control+0xf80> @ imm = #0x34
    862a: bf00         	nop
    862c: 51 e6 7f 3f  	.word	0x3f7fe651
    8630: 99 76 cd 39  	.word	0x39cd7699
    8634: 51 e6 7f bf  	.word	0xbf7fe651
    8638: 00 00 00 00  	.word	0x00000000
    863c: 2b 18 95 3b  	.word	0x3b95182b
    8640: 95 bf d6 33  	.word	0x33d6bf95
    8644: 00 bf 00 bf  	.word	0xbf00bf00
    8648: ed9f 7ae0    	vldr	s14, [pc, #896]         @ 0x89cc <ram_probe::packed_probe::control+0x12ec>
    864c: ee76 4a87    	vadd.f32	s9, s13, s14
    8650: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    8654: eddf 5ade    	vldr	s11, [pc, #888]         @ 0x89d0 <ram_probe::packed_probe::control+0x12f0>
    8658: ee04 7aa5    	vmla.f32	s14, s9, s11
    865c: ee63 4aa5    	vmul.f32	s9, s7, s11
    8660: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    8664: ee33 7ac7    	vsub.f32	s14, s7, s14
    8668: fec7 3a22    	vmaxnm.f32	s7, s14, s5
    866c: eeb1 7a64    	vneg.f32	s14, s9
    8670: eef5 3a40    	vcmp.f32	s7, #0
    8674: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8678: d942         	bls	0x8700 <ram_probe::packed_probe::control+0x1020> @ imm = #0x84
    867a: eef0 2ae8    	vabs.f32	s5, s17
    867e: eef4 2a63    	vcmp.f32	s5, s7
    8682: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8686: d947         	bls	0x8718 <ram_probe::packed_probe::control+0x1038> @ imm = #0x8e
    8688: eec3 5aa2    	vdiv.f32	s11, s7, s5
    868c: ee65 2aa5    	vmul.f32	s5, s11, s11
    8690: ee62 2aa2    	vmul.f32	s5, s5, s5
    8694: ee62 2aa2    	vmul.f32	s5, s5, s5
    8698: ee62 6aa2    	vmul.f32	s13, s5, s5
    869c: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    86a0: ee76 4aa2    	vadd.f32	s9, s13, s5
    86a4: eef0 7a62    	vmov.f32	s15, s5
    86a8: eef4 4a62    	vcmp.f32	s9, s5
    86ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86b0: d009         	beq	0x86c6 <ram_probe::packed_probe::control+0xfe6> @ imm = #0x12
    86b2: eef0 7a64    	vmov.f32	s15, s9
    86b6: eef1 7ae7    	vsqrt.f32	s15, s15
    86ba: eef1 7ae7    	vsqrt.f32	s15, s15
    86be: eef1 7ae7    	vsqrt.f32	s15, s15
    86c2: eef1 7ae7    	vsqrt.f32	s15, s15
    86c6: eec2 2aa7    	vdiv.f32	s5, s5, s15
    86ca: eef4 8a68    	vcmp.f32	s17, s17
    86ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86d2: eec2 7aa4    	vdiv.f32	s15, s5, s9
    86d6: f181 81af    	bvs.w	0x9a38 <ram_probe::packed_probe::control+0x2358> @ imm = #0x135e
    86da: ee18 0a90    	vmov	r0, s17
    86de: f04f 527e    	mov.w	r2, #0x3f800000
    86e2: f362 001e    	bfi	r0, r2, #0, #31
    86e6: ee04 0a90    	vmov	s9, r0
    86ea: ee64 3aa3    	vmul.f32	s7, s9, s7
    86ee: ee64 4aa7    	vmul.f32	s9, s9, s15
    86f2: ee63 2aa2    	vmul.f32	s5, s7, s5
    86f6: ee65 3aa6    	vmul.f32	s7, s11, s13
    86fa: ee63 5aa7    	vmul.f32	s11, s7, s15
    86fe: e036         	b	0x876e <ram_probe::packed_probe::control+0x108e> @ imm = #0x6c
    8700: eef0 5a62    	vmov.f32	s11, s5
    8704: eef0 4a62    	vmov.f32	s9, s5
    8708: e031         	b	0x876e <ram_probe::packed_probe::control+0x108e> @ imm = #0x62
    870a: bf00         	nop
    870c: 00 24 74 cb  	.word	0xcb742400
    8710: 00 24 74 4b  	.word	0x4b742400
    8714: 00 bf 00 bf  	.word	0xbf00bf00
    8718: eec8 2aa3    	vdiv.f32	s5, s17, s7
    871c: eef7 5a00    	vmov.f32	s11, #1.000000e+00
    8720: ee62 2aa2    	vmul.f32	s5, s5, s5
    8724: eef0 6a65    	vmov.f32	s13, s11
    8728: ee62 2aa2    	vmul.f32	s5, s5, s5
    872c: ee62 2aa2    	vmul.f32	s5, s5, s5
    8730: ee62 2aa2    	vmul.f32	s5, s5, s5
    8734: ee72 4aa5    	vadd.f32	s9, s5, s11
    8738: eef4 4a65    	vcmp.f32	s9, s11
    873c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8740: d009         	beq	0x8756 <ram_probe::packed_probe::control+0x1076> @ imm = #0x12
    8742: eef0 6a64    	vmov.f32	s13, s9
    8746: eef1 6ae6    	vsqrt.f32	s13, s13
    874a: eef1 6ae6    	vsqrt.f32	s13, s13
    874e: eef1 6ae6    	vsqrt.f32	s13, s13
    8752: eef1 6ae6    	vsqrt.f32	s13, s13
    8756: eec5 6aa6    	vdiv.f32	s13, s11, s13
    875a: ee68 2aa2    	vmul.f32	s5, s17, s5
    875e: eec6 5aa4    	vdiv.f32	s11, s13, s9
    8762: eec2 3aa3    	vdiv.f32	s7, s5, s7
    8766: ee68 2aa6    	vmul.f32	s5, s17, s13
    876a: ee63 4aa5    	vmul.f32	s9, s7, s11
    876e: ee7d 2a62    	vsub.f32	s5, s26, s5
    8772: 2900         	cmp	r1, #0x0
    8774: fe0f 9aad    	vseleq.f32	s18, s31, s27
    8778: ee12 0a90    	vmov	r0, s5
    877c: f020 4000    	bic	r0, r0, #0x80000000
    8780: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8784: db08         	blt	0x8798 <ram_probe::packed_probe::control+0x10b8> @ imm = #0x10
    8786: eddf 6aba    	vldr	s13, [pc, #744]         @ 0x8a70 <ram_probe::packed_probe::control+0x1390>
    878a: e00f         	b	0x87ac <ram_probe::packed_probe::control+0x10cc> @ imm = #0x1e
    878c: bf00         	nop
    878e: bf00         	nop
    8790: 1c 38 88 77  	.word	0x7788381c
    8794: bf 13 e1 bf  	.word	0xbfe113bf
    8798: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    879c: ed5f 6a5a    	vldr	s13, [pc, #-360]        @ 0x8638 <ram_probe::packed_probe::control+0xf58>
    87a0: eec2 3aa3    	vdiv.f32	s7, s5, s7
    87a4: eef0 3ae3    	vabs.f32	s7, s7
    87a8: fec3 6aa6    	vmaxnm.f32	s13, s7, s13
    87ac: ee70 3a88    	vadd.f32	s7, s1, s16
    87b0: ee70 7a8b    	vadd.f32	s15, s1, s22
    87b4: eec3 3a80    	vdiv.f32	s7, s7, s0
    87b8: ee87 ca80    	vdiv.f32	s24, s15, s0
    87bc: eef4 3a4c    	vcmp.f32	s7, s24
    87c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87c4: f201 8080    	bhi.w	0x98c8 <ram_probe::packed_probe::control+0x21e8> @ imm = #0x1100
    87c8: edcd 8a16    	vstr	s17, [sp, #88]
    87cc: 2000         	movs	r0, #0x0
    87ce: ed9d 8b10    	vldr	d8, [sp, #64]
    87d2: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    87d6: ee29 9a25    	vmul.f32	s18, s18, s11
    87da: ed9d bb0e    	vldr	d11, [sp, #56]
    87de: 2100         	movs	r1, #0x0
    87e0: ee38 8b4b    	vsub.f64	d8, d8, d11
    87e4: ed9f bb74    	vldr	d11, [pc, #464]         @ 0x89b8 <ram_probe::packed_probe::control+0x12d8>
    87e8: ed9d eb0c    	vldr	d14, [sp, #48]
    87ec: ee0e 8b0b    	vmla.f64	d8, d14, d11
    87f0: ed9d bb42    	vldr	d11, [sp, #264]
    87f4: eef7 7bc8    	vcvt.f32.f64	s15, d8
    87f8: eeb7 bbcb    	vcvt.f32.f64	s22, d11
    87fc: ee27 8aa9    	vmul.f32	s16, s15, s19
    8800: ee00 8aac    	vmla.f32	s16, s1, s25
    8804: eddf 0ad7    	vldr	s1, [pc, #860]          @ 0x8b64 <ram_probe::packed_probe::control+0x1484>
    8808: ee0d ba04    	vmla.f32	s22, s26, s8
    880c: ee01 ba20    	vmla.f32	s22, s2, s1
    8810: eef4 3a48    	vcmp.f32	s7, s16
    8814: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8818: fe33 4a88    	vselgt.f32	s8, s7, s16
    881c: eeb4 4a4c    	vcmp.f32	s8, s24
    8820: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8824: eeb4 8a63    	vcmp.f32	s16, s7
    8828: eddf 3acf    	vldr	s7, [pc, #828]          @ 0x8b68 <ram_probe::packed_probe::control+0x1488>
    882c: ee62 7a23    	vmul.f32	s15, s4, s7
    8830: fe7c ea04    	vselgt.f32	s29, s24, s8
    8834: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8838: ee37 4a8b    	vadd.f32	s8, s15, s22
    883c: eeb4 8a4c    	vcmp.f32	s16, s24
    8840: bfc8         	it	gt
    8842: 2001         	movgt	r0, #0x1
    8844: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8848: eeb5 4a40    	vcmp.f32	s8, #0
    884c: eef0 bac4    	vabs.f32	s23, s8
    8850: ed1f 4a87    	vldr	s8, [pc, #-540]         @ 0x8638 <ram_probe::packed_probe::control+0xf58>
    8854: eef0 5a44    	vmov.f32	s11, s8
    8858: eeb0 ea44    	vmov.f32	s28, s8
    885c: bf48         	it	mi
    885e: 2101         	movmi	r1, #0x1
    8860: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8864: bf48         	it	mi
    8866: eef0 5a43    	vmovmi.f32	s11, s6
    886a: eef4 ba4f    	vcmp.f32	s23, s30
    886e: eeb0 ca44    	vmov.f32	s24, s8
    8872: fe30 da25    	vselgt.f32	s26, s0, s11
    8876: eef0 9a44    	vmov.f32	s19, s8
    887a: eeb0 fa44    	vmov.f32	s30, s8
    887e: 4001         	ands	r1, r0
    8880: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8884: eddf 5add    	vldr	s11, [pc, #884]         @ 0x8bfc <ram_probe::packed_probe::control+0x151c>
    8888: f280 80cf    	bge.w	0x8a2a <ram_probe::packed_probe::control+0x134a> @ imm = #0x19e
    888c: ed9f 8a18    	vldr	s16, [pc, #96]          @ 0x88f0 <ram_probe::packed_probe::control+0x1210>
    8890: eef4 ba48    	vcmp.f32	s23, s16
    8894: ed1f ca98    	vldr	s24, [pc, #-608]        @ 0x8638 <ram_probe::packed_probe::control+0xf58>
    8898: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    889c: d914         	bls	0x88c8 <ram_probe::packed_probe::control+0x11e8> @ imm = #0x28
    889e: ed9f 8a15    	vldr	s16, [pc, #84]          @ 0x88f4 <ram_probe::packed_probe::control+0x1214>
    88a2: eef4 ba48    	vcmp.f32	s23, s16
    88a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88aa: d925         	bls	0x88f8 <ram_probe::packed_probe::control+0x1218> @ imm = #0x4a
    88ac: ed9f 8a40    	vldr	s16, [pc, #256]         @ 0x89b0 <ram_probe::packed_probe::control+0x12d0>
    88b0: eeb0 ba08    	vmov.f32	s22, #3.000000e+00
    88b4: ee3b 8a88    	vadd.f32	s16, s23, s16
    88b8: ed9f ea3e    	vldr	s28, [pc, #248]         @ 0x89b4 <ram_probe::packed_probe::control+0x12d4>
    88bc: e024         	b	0x8908 <ram_probe::packed_probe::control+0x1228> @ imm = #0x48
    88be: bf00         	nop
    88c0: 00 a0 0c 48  	.word	0x480ca000
    88c4: 00 bf 00 bf  	.word	0xbf00bf00
    88c8: eeb7 ba08    	vmov.f32	s22, #1.500000e+00
    88cc: eeb0 ea4c    	vmov.f32	s28, s24
    88d0: e01e         	b	0x8910 <ram_probe::packed_probe::control+0x1230> @ imm = #0x3c
    88d2: bf00         	nop
    88d4: 50 d0 e8 36  	.word	0x36e8d050
    88d8: 0a d7 23 3d  	.word	0x3d23d70a
    88dc: 79 61 2e 43  	.word	0x432e6179
    88e0: 00 00 00 80  	.word	0x80000000
    88e4: 79 61 2e c3  	.word	0xc32e6179
    88e8: 83 c0 96 b8  	.word	0xb896c083
    88ec: d6 f8 e4 36  	.word	0x36e4f8d6
    88f0: 7c f2 b0 3a  	.word	0x3ab0f27c
    88f4: a6 9b c4 3b  	.word	0x3bc49ba6
    88f8: ed9f 8a34    	vldr	s16, [pc, #208]         @ 0x89cc <ram_probe::packed_probe::control+0x12ec>
    88fc: eeb7 ba08    	vmov.f32	s22, #1.500000e+00
    8900: ee3b 8a88    	vadd.f32	s16, s23, s16
    8904: ed9f ea32    	vldr	s28, [pc, #200]         @ 0x89d0 <ram_probe::packed_probe::control+0x12f0>
    8908: ee08 ba0e    	vmla.f32	s22, s16, s28
    890c: ee2d ea0e    	vmul.f32	s28, s26, s28
    8910: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    8914: eeb1 ea4e    	vneg.f32	s28, s28
    8918: ee38 8a4b    	vsub.f32	s16, s16, s22
    891c: fe88 da0c    	vmaxnm.f32	s26, s16, s24
    8920: eeb5 da40    	vcmp.f32	s26, #0
    8924: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8928: d94a         	bls	0x89c0 <ram_probe::packed_probe::control+0x12e0> @ imm = #0x94
    892a: eeb0 baee    	vabs.f32	s22, s29
    892e: eeb4 ba4d    	vcmp.f32	s22, s26
    8932: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8936: d94f         	bls	0x89d8 <ram_probe::packed_probe::control+0x12f8> @ imm = #0x9e
    8938: eecd 9a0b    	vdiv.f32	s19, s26, s22
    893c: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    8940: ee29 8aa9    	vmul.f32	s16, s19, s19
    8944: eeb0 fa4b    	vmov.f32	s30, s22
    8948: ee28 8a08    	vmul.f32	s16, s16, s16
    894c: ee28 8a08    	vmul.f32	s16, s16, s16
    8950: ee68 ba08    	vmul.f32	s23, s16, s16
    8954: ee3b ca8b    	vadd.f32	s24, s23, s22
    8958: eeb4 ca4b    	vcmp.f32	s24, s22
    895c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8960: d009         	beq	0x8976 <ram_probe::packed_probe::control+0x1296> @ imm = #0x12
    8962: eeb0 fa4c    	vmov.f32	s30, s24
    8966: eeb1 facf    	vsqrt.f32	s30, s30
    896a: eeb1 facf    	vsqrt.f32	s30, s30
    896e: eeb1 facf    	vsqrt.f32	s30, s30
    8972: eeb1 facf    	vsqrt.f32	s30, s30
    8976: ee8b ba0f    	vdiv.f32	s22, s22, s30
    897a: eef4 ea6e    	vcmp.f32	s29, s29
    897e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8982: eecb ca0c    	vdiv.f32	s25, s22, s24
    8986: f181 805f    	bvs.w	0x9a48 <ram_probe::packed_probe::control+0x2368> @ imm = #0x10be
    898a: ee1e 0a90    	vmov	r0, s29
    898e: f04f 527e    	mov.w	r2, #0x3f800000
    8992: f362 001e    	bfi	r0, r2, #0, #31
    8996: ee08 0a10    	vmov	s16, r0
    899a: ee28 ca0d    	vmul.f32	s24, s16, s26
    899e: ee28 fa2c    	vmul.f32	s30, s16, s25
    89a2: ee2c ca0b    	vmul.f32	s24, s24, s22
    89a6: ee29 8aab    	vmul.f32	s16, s19, s23
    89aa: ee68 9a2c    	vmul.f32	s19, s16, s25
    89ae: e03c         	b	0x8a2a <ram_probe::packed_probe::control+0x134a> @ imm = #0x78
    89b0: a6 9b c4 bb  	.word	0xbbc49ba6
    89b4: 79 78 b0 43  	.word	0x43b07879
    89b8: 67 42 87 92  	.word	0x92874267
    89bc: ba 86 d4 bf  	.word	0xbfd486ba
    89c0: eef0 9a4c    	vmov.f32	s19, s24
    89c4: eeb0 fa4c    	vmov.f32	s30, s24
    89c8: e02f         	b	0x8a2a <ram_probe::packed_probe::control+0x134a> @ imm = #0x5e
    89ca: bf00         	nop
    89cc: 7c f2 b0 ba  	.word	0xbab0f27c
    89d0: 53 4a a1 43  	.word	0x43a14a53
    89d4: 00 bf 00 bf  	.word	0xbf00bf00
    89d8: ee8e 8a8d    	vdiv.f32	s16, s29, s26
    89dc: eeb0 fa40    	vmov.f32	s30, s0
    89e0: ee28 8a08    	vmul.f32	s16, s16, s16
    89e4: ee28 8a08    	vmul.f32	s16, s16, s16
    89e8: ee28 8a08    	vmul.f32	s16, s16, s16
    89ec: ee28 ba08    	vmul.f32	s22, s16, s16
    89f0: ee3b ca00    	vadd.f32	s24, s22, s0
    89f4: eeb4 ca40    	vcmp.f32	s24, s0
    89f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89fc: d009         	beq	0x8a12 <ram_probe::packed_probe::control+0x1332> @ imm = #0x12
    89fe: eeb0 fa4c    	vmov.f32	s30, s24
    8a02: eeb1 facf    	vsqrt.f32	s30, s30
    8a06: eeb1 facf    	vsqrt.f32	s30, s30
    8a0a: eeb1 facf    	vsqrt.f32	s30, s30
    8a0e: eeb1 facf    	vsqrt.f32	s30, s30
    8a12: ee80 8a0f    	vdiv.f32	s16, s0, s30
    8a16: ee2e ba8b    	vmul.f32	s22, s29, s22
    8a1a: eec8 9a0c    	vdiv.f32	s19, s16, s24
    8a1e: ee8b ba0d    	vdiv.f32	s22, s22, s26
    8a22: ee2e ca88    	vmul.f32	s24, s29, s16
    8a26: ee2b fa29    	vmul.f32	s30, s22, s19
    8a2a: 2900         	cmp	r1, #0x0
    8a2c: ee31 ca4c    	vsub.f32	s24, s2, s24
    8a30: ee27 da24    	vmul.f32	s26, s14, s9
    8a34: ed9f 7ab1    	vldr	s14, [pc, #708]         @ 0x8cfc <ram_probe::packed_probe::control+0x161c>
    8a38: fe0f 8aad    	vseleq.f32	s16, s31, s27
    8a3c: eddf cab0    	vldr	s25, [pc, #704]         @ 0x8d00 <ram_probe::packed_probe::control+0x1620>
    8a40: ee1c 0a10    	vmov	r0, s24
    8a44: ee69 5a25    	vmul.f32	s11, s18, s11
    8a48: ee6e ba0f    	vmul.f32	s23, s28, s30
    8a4c: ed9f faad    	vldr	s30, [pc, #692]         @ 0x8d04 <ram_probe::packed_probe::control+0x1624>
    8a50: ee68 9a29    	vmul.f32	s19, s16, s19
    8a54: eddf daac    	vldr	s27, [pc, #688]         @ 0x8d08 <ram_probe::packed_probe::control+0x1628>
    8a58: f020 4000    	bic	r0, r0, #0x80000000
    8a5c: eddf 4aab    	vldr	s9, [pc, #684]          @ 0x8d0c <ram_probe::packed_probe::control+0x162c>
    8a60: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8a64: ee29 ea87    	vmul.f32	s28, s19, s14
    8a68: db06         	blt	0x8a78 <ram_probe::packed_probe::control+0x1398> @ imm = #0xc
    8a6a: eddf 6a01    	vldr	s13, [pc, #4]           @ 0x8a70 <ram_probe::packed_probe::control+0x1390>
    8a6e: e01b         	b	0x8aa8 <ram_probe::packed_probe::control+0x13c8> @ imm = #0x36
    8a70: 00 00 80 7f  	.word	0x7f800000
    8a74: 00 bf 00 bf  	.word	0xbf00bf00
    8a78: eeb2 7a0e    	vmov.f32	s14, #1.500000e+01
    8a7c: eef4 6a66    	vcmp.f32	s13, s13
    8a80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a84: ee8c 7a07    	vdiv.f32	s14, s24, s14
    8a88: eeb0 7ac7    	vabs.f32	s14, s14
    8a8c: fe57 6a26    	vselvs.f32	s13, s14, s13
    8a90: eeb4 7a47    	vcmp.f32	s14, s14
    8a94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a98: fe16 7a87    	vselvs.f32	s14, s13, s14
    8a9c: eef4 6a47    	vcmp.f32	s13, s14
    8aa0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8aa4: fe76 6a87    	vselgt.f32	s13, s13, s14
    8aa8: ed9f 7a99    	vldr	s14, [pc, #612]         @ 0x8d10 <ram_probe::packed_probe::control+0x1630>
    8aac: ee4d 5a2c    	vmla.f32	s11, s26, s25
    8ab0: ee02 5a07    	vmla.f32	s10, s4, s14
    8ab4: ed9f 7a97    	vldr	s14, [pc, #604]         @ 0x8d14 <ram_probe::packed_probe::control+0x1634>
    8ab8: ee02 6a07    	vmla.f32	s12, s4, s14
    8abc: 210d         	movs	r1, #0xd
    8abe: ed9d 8b12    	vldr	d8, [sp, #72]
    8ac2: ee29 7a21    	vmul.f32	s14, s18, s3
    8ac6: eef7 1bc8    	vcvt.f32.f64	s3, d8
    8aca: ee41 1a23    	vmla.f32	s3, s2, s7
    8ace: ee0b eaad    	vmla.f32	s28, s23, s27
    8ad2: eeb4 5a46    	vcmp.f32	s10, s12
    8ad6: fe85 5a46    	vminnm.f32	s10, s10, s12
    8ada: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ade: ee2b 6aa4    	vmul.f32	s12, s23, s9
    8ae2: ee7a cac5    	vsub.f32	s25, s21, s10
    8ae6: eeb8 5a00    	vmov.f32	s10, #-2.000000e+00
    8aea: ee71 1ae7    	vsub.f32	s3, s3, s15
    8aee: eddf 7a8a    	vldr	s15, [pc, #552]         @ 0x8d18 <ram_probe::packed_probe::control+0x1638>
    8af2: bf88         	it	hi
    8af4: 210e         	movhi	r1, #0xe
    8af6: eef4 ca45    	vcmp.f32	s25, s10
    8afa: ee2b 5a8f    	vmul.f32	s10, s23, s30
    8afe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b02: d939         	bls	0x8b78 <ram_probe::packed_probe::control+0x1498> @ imm = #0x72
    8b04: eef4 ca6c    	vcmp.f32	s25, s25
    8b08: eddf ba84    	vldr	s23, [pc, #528]         @ 0x8d1c <ram_probe::packed_probe::control+0x163c>
    8b0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b10: eeb0 9a6b    	vmov.f32	s18, s23
    8b14: ed9f ba82    	vldr	s22, [pc, #520]         @ 0x8d20 <ram_probe::packed_probe::control+0x1640>
    8b18: fe1b 8aac    	vselvs.f32	s16, s23, s25
    8b1c: eddf da81    	vldr	s27, [pc, #516]         @ 0x8d24 <ram_probe::packed_probe::control+0x1644>
    8b20: eeb5 8a40    	vcmp.f32	s16, #0
    8b24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b28: bfb8         	it	lt
    8b2a: eeb0 9a48    	vmovlt.f32	s18, s16
    8b2e: eeb0 8a40    	vmov.f32	s16, s0
    8b32: eef5 ca40    	vcmp.f32	s25, #0
    8b36: ee09 8a2a    	vmla.f32	s16, s18, s21
    8b3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b3e: ee28 8a0b    	vmul.f32	s16, s16, s22
    8b42: fe88 9a2d    	vmaxnm.f32	s18, s16, s27
    8b46: d51b         	bpl	0x8b80 <ram_probe::packed_probe::control+0x14a0> @ imm = #0x36
    8b48: eeb0 8a40    	vmov.f32	s16, s0
    8b4c: ee0c 8aaa    	vmla.f32	s16, s25, s21
    8b50: ee28 8a0b    	vmul.f32	s16, s16, s22
    8b54: eeb4 8a6d    	vcmp.f32	s16, s27
    8b58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b5c: bfc8         	it	gt
    8b5e: eddf ba72    	vldrgt	s23, [pc, #456]         @ 0x8d28 <ram_probe::packed_probe::control+0x1648>
    8b62: e00d         	b	0x8b80 <ram_probe::packed_probe::control+0x14a0> @ imm = #0x1a
    8b64: af e6 27 b9  	.word	0xb927e6af
    8b68: 79 2e 02 39  	.word	0x39022e79
    8b6c: cd 1e 2c 3e  	.word	0x3e2c1ecd
    8b70: d2 4e da 43  	.word	0x43da4ed2
    8b74: df ff e7 36  	.word	0x36e7ffdf
    8b78: eddf ba68    	vldr	s23, [pc, #416]         @ 0x8d1c <ram_probe::packed_probe::control+0x163c>
    8b7c: ed9f 9a69    	vldr	s18, [pc, #420]         @ 0x8d24 <ram_probe::packed_probe::control+0x1644>
    8b80: f64d 3040    	movw	r0, #0xdb40
    8b84: ee09 6a84    	vmla.f32	s12, s19, s8
    8b88: f2c0 0000    	movt	r0, #0x0
    8b8c: ee22 4a2b    	vmul.f32	s8, s4, s23
    8b90: eb00 1081    	add.w	r0, r0, r1, lsl #6
    8b94: ee52 1a09    	vnmls.f32	s3, s4, s18
    8b98: ee09 5aa7    	vmla.f32	s10, s19, s15
    8b9c: eef0 7a47    	vmov.f32	s15, s14
    8ba0: ed90 0b0c    	vldr	d0, [r0, #48]
    8ba4: ee0d 7a0f    	vmla.f32	s14, s26, s30
    8ba8: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    8bac: ee4d 7a2f    	vmla.f32	s15, s26, s31
    8bb0: ed90 bb0a    	vldr	d11, [r0, #40]
    8bb4: ee44 3a40    	vmls.f32	s7, s8, s0
    8bb8: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    8bbc: eef1 2a62    	vneg.f32	s5, s5
    8bc0: ed90 8b08    	vldr	d8, [r0, #32]
    8bc4: ee44 4a40    	vmls.f32	s9, s8, s0
    8bc8: ee11 0a90    	vmov	r0, s3
    8bcc: eef7 0bc8    	vcvt.f32.f64	s1, d8
    8bd0: eeb7 8a00    	vmov.f32	s16, #1.000000e+00
    8bd4: ee39 9a23    	vadd.f32	s18, s18, s7
    8bd8: f020 4000    	bic	r0, r0, #0x80000000
    8bdc: ee20 dac4    	vnmul.f32	s26, s1, s8
    8be0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8be4: ee75 3a88    	vadd.f32	s7, s11, s16
    8be8: ee3e ea08    	vadd.f32	s28, s28, s16
    8bec: eef1 5a4c    	vneg.f32	s11, s24
    8bf0: eeb1 ca61    	vneg.f32	s24, s3
    8bf4: db10         	blt	0x8c18 <ram_probe::packed_probe::control+0x1538> @ imm = #0x20
    8bf6: ed1f 4a62    	vldr	s8, [pc, #-392]         @ 0x8a70 <ram_probe::packed_probe::control+0x1390>
    8bfa: e025         	b	0x8c48 <ram_probe::packed_probe::control+0x1568> @ imm = #0x4a
    8bfc: fc 9d 08 bf  	.word	0xbf089dfc
		...
    8c08: e6 a7 5c a0  	.word	0xa05ca7e6
    8c0c: 06 41 d9 3f  	.word	0x3fd94106
    8c10: 19 d5 65 36  	.word	0x3665d519
    8c14: d0 6e 95 bf  	.word	0xbf956ed0
    8c18: ed9f 0af9    	vldr	s0, [pc, #996]          @ 0x9000 <ram_probe::packed_probe::control+0x1920>
    8c1c: eef4 6a66    	vcmp.f32	s13, s13
    8c20: ee81 0a80    	vdiv.f32	s0, s3, s0
    8c24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c28: eeb0 0ac0    	vabs.f32	s0, s0
    8c2c: fe10 4a26    	vselvs.f32	s8, s0, s13
    8c30: eeb4 0a40    	vcmp.f32	s0, s0
    8c34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c38: fe14 0a00    	vselvs.f32	s0, s8, s0
    8c3c: eeb4 4a40    	vcmp.f32	s8, s0
    8c40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c44: fe34 4a00    	vselgt.f32	s8, s8, s0
    8c48: ed9f 0aee    	vldr	s0, [pc, #952]          @ 0x9004 <ram_probe::packed_probe::control+0x1924>
    8c4c: ed8d ea67    	vstr	s28, [sp, #412]
    8c50: eeb4 4a40    	vcmp.f32	s8, s0
    8c54: ed8d 6a68    	vstr	s12, [sp, #416]
    8c58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c5c: edcd 4a6a    	vstr	s9, [sp, #424]
    8c60: ed8d 9a6b    	vstr	s18, [sp, #428]
    8c64: edcd 5a83    	vstr	s11, [sp, #524]
    8c68: ed8d ca84    	vstr	s24, [sp, #528]
    8c6c: edcd 3a63    	vstr	s7, [sp, #396]
    8c70: ed8d 7a64    	vstr	s14, [sp, #400]
    8c74: edcd 7a65    	vstr	s15, [sp, #404]
    8c78: ed8d 5a66    	vstr	s10, [sp, #408]
    8c7c: ed8d da69    	vstr	s26, [sp, #420]
    8c80: edcd 2a82    	vstr	s5, [sp, #520]
    8c84: f240 81d0    	bls.w	0x9028 <ram_probe::packed_probe::control+0x1948> @ imm = #0x3a0
    8c88: 4640         	mov	r0, r8
    8c8a: eef0 0a4a    	vmov.f32	s1, s20
    8c8e: e8bc 004e    	ldm.w	r12!, {r1, r2, r3, r6}
    8c92: c04e         	stm	r0!, {r1, r2, r3, r6}
    8c94: e89c 004e    	ldm.w	r12, {r1, r2, r3, r6}
    8c98: c04e         	stm	r0!, {r1, r2, r3, r6}
    8c9a: ed9d 8a19    	vldr	s16, [sp, #100]
    8c9e: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    8ca2: eeb0 0a48    	vmov.f32	s0, s16
    8ca6: 3001         	adds	r0, #0x1
    8ca8: f8c4 010c    	str.w	r0, [r4, #0x10c]
    8cac: a863         	add	r0, sp, #0x18c
    8cae: aa38         	add	r2, sp, #0xe0
    8cb0: ab5e         	add	r3, sp, #0x178
    8cb2: 4641         	mov	r1, r8
    8cb4: f7f9 fe1c    	bl	0x28f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>> @ imm = #-0x63c8
    8cb8: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    8cbc: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8cc0: 2801         	cmp	r0, #0x1
    8cc2: 4489         	add	r9, r1
    8cc4: d138         	bne	0x8d38 <ram_probe::packed_probe::control+0x1658> @ imm = #0x70
    8cc6: ed9d 1a1a    	vldr	s2, [sp, #104]
    8cca: ed9d 0a63    	vldr	s0, [sp, #396]
    8cce: eeb4 1a41    	vcmp.f32	s2, s2
    8cd2: eddd 9a1b    	vldr	s19, [sp, #108]
    8cd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cda: eeb4 0a40    	vcmp.f32	s0, s0
    8cde: eddf faca    	vldr	s31, [pc, #808]         @ 0x9008 <ram_probe::packed_probe::control+0x1928>
    8ce2: fe10 1a01    	vselvs.f32	s2, s0, s2
    8ce6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cea: fe11 0a00    	vselvs.f32	s0, s2, s0
    8cee: eeb4 1a40    	vcmp.f32	s2, s0
    8cf2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cf6: fe31 9a00    	vselgt.f32	s18, s2, s0
    8cfa: e055         	b	0x8da8 <ram_probe::packed_probe::control+0x16c8> @ imm = #0xaa
    8cfc: d5 35 a4 be  	.word	0xbea435d5
    8d00: 83 c0 96 38  	.word	0x3896c083
    8d04: d6 f8 e4 b6  	.word	0xb6e4f8d6
    8d08: af e6 27 39  	.word	0x3927e6af
    8d0c: 79 2e 02 b9  	.word	0xb9022e79
    8d10: 99 76 cd 39  	.word	0x39cd7699
    8d14: 51 e6 7f bf  	.word	0xbf7fe651
    8d18: 6f f3 03 be  	.word	0xbe03f36f
    8d1c: 00 00 00 00  	.word	0x00000000
    8d20: 2b 18 95 3b  	.word	0x3b95182b
    8d24: 95 bf d6 33  	.word	0x33d6bf95
    8d28: 2b 18 15 3b  	.word	0x3b15182b
    8d2c: 00 24 f4 ca  	.word	0xcaf42400
    8d30: d1 a7 00 a5  	.word	0xa500a7d1
    8d34: f6 46 24 40  	.word	0x402446f6
    8d38: eeb0 0a48    	vmov.f32	s0, s16
    8d3c: eef0 0a4a    	vmov.f32	s1, s20
    8d40: a863         	add	r0, sp, #0x18c
    8d42: a956         	add	r1, sp, #0x158
    8d44: aa38         	add	r2, sp, #0xe0
    8d46: ab5e         	add	r3, sp, #0x178
    8d48: 2500         	movs	r5, #0x0
    8d4a: 955c         	str	r5, [sp, #0x170]
    8d4c: e9cd 555a    	strd	r5, r5, [sp, #360]
    8d50: f7f9 fdce    	bl	0x28f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>> @ imm = #-0x6464
    8d54: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    8d58: eddf faab    	vldr	s31, [pc, #684]         @ 0x9008 <ram_probe::packed_probe::control+0x1928>
    8d5c: 3001         	adds	r0, #0x1
    8d5e: bf28         	it	hs
    8d60: f04f 30ff    	movhs.w	r0, #0xffffffff
    8d64: ed9d 1a1a    	vldr	s2, [sp, #104]
    8d68: ed9d 0a63    	vldr	s0, [sp, #396]
    8d6c: eeb4 1a41    	vcmp.f32	s2, s2
    8d70: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8d74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d78: eeb4 0a40    	vcmp.f32	s0, s0
    8d7c: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    8d80: fe10 1a01    	vselvs.f32	s2, s0, s2
    8d84: 4489         	add	r9, r1
    8d86: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d8a: eddd 9a1b    	vldr	s19, [sp, #108]
    8d8e: f8c4 011c    	str.w	r0, [r4, #0x11c]
    8d92: fe11 2a00    	vselvs.f32	s4, s2, s0
    8d96: eeb4 1a42    	vcmp.f32	s2, s4
    8d9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d9e: fe31 9a02    	vselgt.f32	s18, s2, s4
    8da2: 2a00         	cmp	r2, #0x0
    8da4: f000 82cc    	beq.w	0x9340 <ram_probe::packed_probe::control+0x1c60> @ imm = #0x598
    8da8: 4641         	mov	r1, r8
    8daa: 4650         	mov	r0, r10
    8dac: ed1f 4b6c    	vldr	d4, [pc, #-432]         @ 0x8c00 <ram_probe::packed_probe::control+0x1520>
    8db0: c96c         	ldm	r1!, {r2, r3, r5, r6}
    8db2: c06c         	stm	r0!, {r2, r3, r5, r6}
    8db4: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
    8db8: c06c         	stm	r0!, {r2, r3, r5, r6}
    8dba: ed9d 0a56    	vldr	s0, [sp, #344]
    8dbe: ed9d 1a57    	vldr	s2, [sp, #348]
    8dc2: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    8dc6: ed9d 2a58    	vldr	s4, [sp, #352]
    8dca: ed9d ab50    	vldr	d10, [sp, #320]
    8dce: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    8dd2: ed9f 6a8e    	vldr	s12, [pc, #568]         @ 0x900c <ram_probe::packed_probe::control+0x192c>
    8dd6: eeb0 3b4a    	vmov.f64	d3, d10
    8dda: ed9f 7a8d    	vldr	s14, [pc, #564]         @ 0x9010 <ram_probe::packed_probe::control+0x1930>
    8dde: ee00 3b04    	vmla.f64	d3, d0, d4
    8de2: eeb7 0ac2    	vcvt.f64.f32	d0, s4
    8de6: ee01 3b04    	vmla.f64	d3, d1, d4
    8dea: ed9d 1a59    	vldr	s2, [sp, #356]
    8dee: ee00 3b04    	vmla.f64	d3, d0, d4
    8df2: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    8df6: ed9d 1a5a    	vldr	s2, [sp, #360]
    8dfa: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    8dfe: ed1f 2b7e    	vldr	d2, [pc, #-504]         @ 0x8c08 <ram_probe::packed_probe::control+0x1528>
    8e02: ee00 3b04    	vmla.f64	d3, d0, d4
    8e06: ed9d 0a5b    	vldr	s0, [sp, #364]
    8e0a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    8e0e: ee01 3b04    	vmla.f64	d3, d1, d4
    8e12: ee20 1b02    	vmul.f64	d1, d0, d2
    8e16: ed9d 0a5c    	vldr	s0, [sp, #368]
    8e1a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    8e1e: ee33 3b01    	vadd.f64	d3, d3, d1
    8e22: ee20 2b02    	vmul.f64	d2, d0, d2
    8e26: ed9f 0a7b    	vldr	s0, [pc, #492]          @ 0x9014 <ram_probe::packed_probe::control+0x1934>
    8e2a: ee29 0a80    	vmul.f32	s0, s19, s0
    8e2e: ed9f 5b7a    	vldr	d5, [pc, #488]          @ 0x9018 <ram_probe::packed_probe::control+0x1938>
    8e32: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    8e36: ee33 3b42    	vsub.f64	d3, d3, d2
    8e3a: ee30 6a06    	vadd.f32	s12, s0, s12
    8e3e: ee84 4b05    	vdiv.f64	d4, d4, d5
    8e42: ed9f 5b77    	vldr	d5, [pc, #476]          @ 0x9020 <ram_probe::packed_probe::control+0x1940>
    8e46: ee86 fa07    	vdiv.f32	s30, s12, s14
    8e4a: ee03 4b05    	vmla.f64	d4, d3, d5
    8e4e: ed1f 5a49    	vldr	s10, [pc, #-292]        @ 0x8d2c <ram_probe::packed_probe::control+0x164c>
    8e52: ed1f 3b49    	vldr	d3, [pc, #-292]         @ 0x8d30 <ram_probe::packed_probe::control+0x1650>
    8e56: ee30 5a05    	vadd.f32	s10, s0, s10
    8e5a: ee84 3b03    	vdiv.f64	d3, d4, d3
    8e5e: eebb 4a05    	vmov.f32	s8, #-2.100000e+01
    8e62: ee85 ea07    	vdiv.f32	s28, s10, s14
    8e66: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    8e6a: eeb4 4a43    	vcmp.f32	s8, s6
    8e6e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e72: fe34 3a03    	vselgt.f32	s6, s8, s6
    8e76: eeb3 4a05    	vmov.f32	s8, #2.100000e+01
    8e7a: eeb4 3a44    	vcmp.f32	s6, s8
    8e7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e82: eeb4 ea4f    	vcmp.f32	s28, s30
    8e86: fe34 8a03    	vselgt.f32	s16, s8, s6
    8e8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e8e: ed8d 8a5d    	vstr	s16, [sp, #372]
    8e92: f200 850d    	bhi.w	0x98b0 <ram_probe::packed_probe::control+0x21d0> @ imm = #0xa1a
    8e96: ee3a 1b01    	vadd.f64	d1, d10, d1
    8e9a: a87a         	add	r0, sp, #0x1e8
    8e9c: ed1f dacd    	vldr	s26, [pc, #-820]        @ 0x8b6c <ram_probe::packed_probe::control+0x148c>
    8ea0: ed1f 3ba5    	vldr	d3, [pc, #-660]         @ 0x8c10 <ram_probe::packed_probe::control+0x1530>
    8ea4: ee31 1b42    	vsub.f64	d1, d1, d2
    8ea8: eeb7 2ac8    	vcvt.f64.f32	d2, s16
    8eac: ed9d bb46    	vldr	d11, [sp, #280]
    8eb0: ee02 1b03    	vmla.f64	d1, d2, d3
    8eb4: ed1f 2ad2    	vldr	s4, [pc, #-840]         @ 0x8b70 <ram_probe::packed_probe::control+0x1490>
    8eb8: eef7 0bcb    	vcvt.f32.f64	s1, d11
    8ebc: ee48 0a4d    	vmls.f32	s1, s16, s26
    8ec0: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    8ec4: ee61 8a02    	vmul.f32	s17, s2, s4
    8ec8: ed1f 1ad6    	vldr	s2, [pc, #-856]         @ 0x8b74 <ram_probe::packed_probe::control+0x1494>
    8ecc: ee40 8a01    	vmla.f32	s17, s0, s2
    8ed0: eeb4 ea68    	vcmp.f32	s28, s17
    8ed4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ed8: fe3e 0a28    	vselgt.f32	s0, s28, s17
    8edc: eeb4 0a4f    	vcmp.f32	s0, s30
    8ee0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ee4: fe3f ca00    	vselgt.f32	s24, s30, s0
    8ee8: eeb0 0a4c    	vmov.f32	s0, s24
    8eec: f7fb f938    	bl	0x4160 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #-0x4d90
    8ef0: ed9d 0a7a    	vldr	s0, [sp, #488]
    8ef4: f60f 3068    	adr.w	r0, #2920
    8ef8: ee38 1a40    	vsub.f32	s2, s16, s0
    8efc: eef4 8a4f    	vcmp.f32	s17, s30
    8f00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f04: bf48         	it	mi
    8f06: 3004         	addmi	r0, #0x4
    8f08: eef4 8a4e    	vcmp.f32	s17, s28
    8f0c: ee11 1a10    	vmov	r1, s2
    8f10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f14: ed90 0a00    	vldr	s0, [r0]
    8f18: fe30 2a2f    	vselgt.f32	s4, s0, s31
    8f1c: f021 4000    	bic	r0, r1, #0x80000000
    8f20: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8f24: da3c         	bge	0x8fa0 <ram_probe::packed_probe::control+0x18c0> @ imm = #0x78
    8f26: eeb0 0ac1    	vabs.f32	s0, s2
    8f2a: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    8f2e: ee80 0a03    	vdiv.f32	s0, s0, s6
    8f32: ed9f 3a34    	vldr	s6, [pc, #208]          @ 0x9004 <ram_probe::packed_probe::control+0x1924>
    8f36: eeb4 0a43    	vcmp.f32	s0, s6
    8f3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f3e: d82f         	bhi	0x8fa0 <ram_probe::packed_probe::control+0x18c0> @ imm = #0x5e
    8f40: ed9d 3a7b    	vldr	s6, [sp, #492]
    8f44: ed9f 4ae3    	vldr	s8, [pc, #908]          @ 0x92d4 <ram_probe::packed_probe::control+0x1bf4>
    8f48: ee22 2a03    	vmul.f32	s4, s4, s6
    8f4c: ed9d 5a7c    	vldr	s10, [sp, #496]
    8f50: eeb0 3ac8    	vabs.f32	s6, s16
    8f54: ee22 2a04    	vmul.f32	s4, s4, s8
    8f58: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    8f5c: eeb4 3a43    	vcmp.f32	s6, s6
    8f60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f64: ee05 2a0d    	vmla.f32	s4, s10, s26
    8f68: fe14 3a03    	vselvs.f32	s6, s8, s6
    8f6c: eeb4 3a44    	vcmp.f32	s6, s8
    8f70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f74: ee32 2a04    	vadd.f32	s4, s4, s8
    8f78: fe33 3a04    	vselgt.f32	s6, s6, s8
    8f7c: ee81 1a02    	vdiv.f32	s2, s2, s4
    8f80: ed9f 2af4    	vldr	s4, [pc, #976]          @ 0x9354 <ram_probe::packed_probe::control+0x1c74>
    8f84: ee23 2a02    	vmul.f32	s4, s6, s4
    8f88: ed9f 3af3    	vldr	s6, [pc, #972]          @ 0x9358 <ram_probe::packed_probe::control+0x1c78>
    8f8c: eeb0 1ac1    	vabs.f32	s2, s2
    8f90: fe82 2a43    	vminnm.f32	s4, s4, s6
    8f94: eeb4 1a42    	vcmp.f32	s2, s4
    8f98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f9c: f240 81e0    	bls.w	0x9360 <ram_probe::packed_probe::control+0x1c80> @ imm = #0x3c0
    8fa0: 4640         	mov	r0, r8
    8fa2: eeb0 2a69    	vmov.f32	s4, s19
    8fa6: e8ba 004e    	ldm.w	r10!, {r1, r2, r3, r6}
    8faa: c04e         	stm	r0!, {r1, r2, r3, r6}
    8fac: e89a 004e    	ldm.w	r10, {r1, r2, r3, r6}
    8fb0: c04e         	stm	r0!, {r1, r2, r3, r6}
    8fb2: eeb0 0b4b    	vmov.f64	d0, d11
    8fb6: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    8fba: eeb0 1b4a    	vmov.f64	d1, d10
    8fbe: 3001         	adds	r0, #0x1
    8fc0: f8c4 010c    	str.w	r0, [r4, #0x10c]
    8fc4: a863         	add	r0, sp, #0x18c
    8fc6: aa5e         	add	r2, sp, #0x178
    8fc8: 4641         	mov	r1, r8
    8fca: f7fa fec1    	bl	0x3d50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>> @ imm = #-0x527e
    8fce: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    8fd2: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8fd6: 2800         	cmp	r0, #0x0
    8fd8: 4489         	add	r9, r1
    8fda: f000 817d    	beq.w	0x92d8 <ram_probe::packed_probe::control+0x1bf8> @ imm = #0x2fa
    8fde: eeb4 9a49    	vcmp.f32	s18, s18
    8fe2: ed9d 0a63    	vldr	s0, [sp, #396]
    8fe6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8fea: eeb4 0a40    	vcmp.f32	s0, s0
    8fee: fe10 1a09    	vselvs.f32	s2, s0, s18
    8ff2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ff6: e9cd 9b1a    	strd	r9, r11, [sp, #104]
    8ffa: fe11 0a00    	vselvs.f32	s0, s2, s0
    8ffe: e1c4         	b	0x938a <ram_probe::packed_probe::control+0x1caa> @ imm = #0x388
    9000: 0a d7 23 3c  	.word	0x3c23d70a
    9004: 17 b7 d1 38  	.word	0x38d1b717
    9008: 00 00 00 80  	.word	0x80000000
    900c: 00 24 f4 4a  	.word	0x4af42400
    9010: 00 a0 0c 48  	.word	0x480ca000
    9014: 00 80 bb 47  	.word	0x47bb8000
    9018: 85 42 fe de  	.word	0xdefe4285
    901c: bb a7 01 41  	.word	0x4101a7bb
    9020: b4 cf 84 3d  	.word	0x3d84cfb4
    9024: da 49 7b 40  	.word	0x407b49da
    9028: eeb0 0ac5    	vabs.f32	s0, s10
    902c: 2200         	movs	r2, #0x0
    902e: eeb0 6ae3    	vabs.f32	s12, s7
    9032: f50d 7ec6    	add.w	lr, sp, #0x18c
    9036: eeb4 0a46    	vcmp.f32	s0, s12
    903a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    903e: bfc8         	it	gt
    9040: 2201         	movgt	r2, #0x1
    9042: fe35 0a23    	vselgt.f32	s0, s10, s7
    9046: eeb0 5acd    	vabs.f32	s10, s26
    904a: eeb0 0ac0    	vabs.f32	s0, s0
    904e: eeb4 5a40    	vcmp.f32	s10, s0
    9052: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9056: bfc8         	it	gt
    9058: 2202         	movgt	r2, #0x2
    905a: eb02 0042    	add.w	r0, r2, r2, lsl #1
    905e: eb0a 0180    	add.w	r1, r10, r0, lsl #2
    9062: f85a 0020    	ldr.w	r0, [r10, r0, lsl #2]
    9066: e9d1 3601    	ldrd	r3, r6, [r1, #4]
    906a: e88e 0049    	stm.w	lr, {r0, r3, r6}
    906e: edc1 3a00    	vstr	s7, [r1]
    9072: f50d 7e02    	add.w	lr, sp, #0x208
    9076: ed81 7a01    	vstr	s14, [r1, #4]
    907a: edc1 7a02    	vstr	s15, [r1, #8]
    907e: eb0e 0182    	add.w	r1, lr, r2, lsl #2
    9082: ed9d 5a63    	vldr	s10, [sp, #396]
    9086: f85e 2022    	ldr.w	r2, [lr, r2, lsl #2]
    908a: ee15 0a10    	vmov	r0, s10
    908e: 9282         	str	r2, [sp, #0x208]
    9090: edc1 2a00    	vstr	s5, [r1]
    9094: f020 4000    	bic	r0, r0, #0x80000000
    9098: f1b0 4fff    	cmp.w	r0, #0x7f800000
    909c: f6bf adf4    	bge.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x418
    90a0: eeb0 0ac5    	vabs.f32	s0, s10
    90a4: ed9f 6aad    	vldr	s12, [pc, #692]         @ 0x935c <ram_probe::packed_probe::control+0x1c7c>
    90a8: eeb4 0a46    	vcmp.f32	s0, s12
    90ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    90b0: f53f adea    	bmi.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x42c
    90b4: ed9d 0a69    	vldr	s0, [sp, #420]
    90b8: ed9d 7a66    	vldr	s14, [sp, #408]
    90bc: ee80 0a05    	vdiv.f32	s0, s0, s10
    90c0: eddd 3a6a    	vldr	s7, [sp, #424]
    90c4: eec7 0a05    	vdiv.f32	s1, s14, s10
    90c8: ed9d 7a64    	vldr	s14, [sp, #400]
    90cc: eddd 4a67    	vldr	s9, [sp, #412]
    90d0: eddd 1a82    	vldr	s3, [sp, #520]
    90d4: ee47 3a40    	vmls.f32	s7, s14, s0
    90d8: eddd 2a65    	vldr	s5, [sp, #404]
    90dc: ee40 4ac7    	vmls.f32	s9, s1, s14
    90e0: eddd 5a68    	vldr	s11, [sp, #416]
    90e4: ee40 5ae2    	vmls.f32	s11, s1, s5
    90e8: eddd 6a83    	vldr	s13, [sp, #524]
    90ec: ee40 6ae1    	vmls.f32	s13, s1, s3
    90f0: f10a 000c    	add.w	r0, r10, #0xc
    90f4: 4602         	mov	r2, r0
    90f6: edcd 3a6a    	vstr	s7, [sp, #424]
    90fa: edcd 4a67    	vstr	s9, [sp, #412]
    90fe: eef0 0ae3    	vabs.f32	s1, s7
    9102: edcd 5a68    	vstr	s11, [sp, #416]
    9106: eef0 7ae4    	vabs.f32	s15, s9
    910a: eddd 4a6b    	vldr	s9, [sp, #428]
    910e: ee42 4ac0    	vmls.f32	s9, s5, s0
    9112: edcd 6a83    	vstr	s13, [sp, #524]
    9116: eef4 0a67    	vcmp.f32	s1, s15
    911a: eddd 0a84    	vldr	s1, [sp, #528]
    911e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9122: bfc8         	it	gt
    9124: f10a 0218    	addgt.w	r2, r10, #0x18
    9128: edcd 4a6b    	vstr	s9, [sp, #428]
    912c: 6803         	ldr	r3, [r0]
    912e: e9d2 6500    	ldrd	r6, r5, [r2]
    9132: 6891         	ldr	r1, [r2, #0x8]
    9134: 6006         	str	r6, [r0]
    9136: 6846         	ldr	r6, [r0, #0x4]
    9138: 6045         	str	r5, [r0, #0x4]
    913a: 6885         	ldr	r5, [r0, #0x8]
    913c: 6081         	str	r1, [r0, #0x8]
    913e: ee41 0ac0    	vmls.f32	s1, s3, s0
    9142: f04f 0004    	mov.w	r0, #0x4
    9146: e9c2 6501    	strd	r6, r5, [r2, #4]
    914a: eddd 3a67    	vldr	s7, [sp, #412]
    914e: ee13 1a90    	vmov	r1, s7
    9152: bfc8         	it	gt
    9154: 2008         	movgt	r0, #0x8
    9156: edcd 0a84    	vstr	s1, [sp, #528]
    915a: 6013         	str	r3, [r2]
    915c: f85e 2000    	ldr.w	r2, [lr, r0]
    9160: 4470         	add	r0, lr
    9162: f021 4100    	bic	r1, r1, #0x80000000
    9166: f1b1 4fff    	cmp.w	r1, #0x7f800000
    916a: 9283         	str	r2, [sp, #0x20c]
    916c: edc0 6a00    	vstr	s13, [r0]
    9170: f6bf ad8a    	bge.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x4ec
    9174: eeb0 0ae3    	vabs.f32	s0, s7
    9178: eeb4 0a46    	vcmp.f32	s0, s12
    917c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9180: f53f ad82    	bmi.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x4fc
    9184: ed9d 0a6a    	vldr	s0, [sp, #424]
    9188: eddd 6a6b    	vldr	s13, [sp, #428]
    918c: eec0 5a23    	vdiv.f32	s11, s0, s7
    9190: eddd 4a68    	vldr	s9, [sp, #416]
    9194: ee45 6ae4    	vmls.f32	s13, s11, s9
    9198: ee16 0a90    	vmov	r0, s13
    919c: f020 4000    	bic	r0, r0, #0x80000000
    91a0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    91a4: f6bf ad70    	bge.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x520
    91a8: eeb0 0ae6    	vabs.f32	s0, s13
    91ac: eeb4 0a46    	vcmp.f32	s0, s12
    91b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91b4: f53f ad68    	bmi.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x530
    91b8: ed9d 0a83    	vldr	s0, [sp, #524]
    91bc: ed9d 6a84    	vldr	s12, [sp, #528]
    91c0: ee05 6ac0    	vmls.f32	s12, s11, s0
    91c4: eddd 0a18    	vldr	s1, [sp, #96]
    91c8: eef0 0ae0    	vabs.f32	s1, s1
    91cc: eef4 0a60    	vcmp.f32	s1, s1
    91d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91d4: ee86 6a26    	vdiv.f32	s12, s12, s13
    91d8: ee04 0ac6    	vmls.f32	s0, s9, s12
    91dc: eec0 3a23    	vdiv.f32	s7, s0, s7
    91e0: fe18 0a20    	vselvs.f32	s0, s16, s1
    91e4: ee47 1a63    	vmls.f32	s3, s14, s7
    91e8: eeb4 0a48    	vcmp.f32	s0, s16
    91ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91f0: ee42 1ac6    	vmls.f32	s3, s5, s12
    91f4: fe30 7a08    	vselgt.f32	s14, s0, s16
    91f8: ed9f 0a56    	vldr	s0, [pc, #344]          @ 0x9354 <ram_probe::packed_probe::control+0x1c74>
    91fc: ee27 7a00    	vmul.f32	s14, s14, s0
    9200: ee81 5a85    	vdiv.f32	s10, s3, s10
    9204: eef0 0ac5    	vabs.f32	s1, s10
    9208: ed9f 5a53    	vldr	s10, [pc, #332]         @ 0x9358 <ram_probe::packed_probe::control+0x1c78>
    920c: fe87 7a45    	vminnm.f32	s14, s14, s10
    9210: eef4 0a47    	vcmp.f32	s1, s14
    9214: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9218: f63f ad36    	bhi.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x594
    921c: eeb0 1ac1    	vabs.f32	s2, s2
    9220: eeb0 7ae3    	vabs.f32	s14, s7
    9224: eeb4 1a41    	vcmp.f32	s2, s2
    9228: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    922c: fe18 1a01    	vselvs.f32	s2, s16, s2
    9230: eeb4 1a48    	vcmp.f32	s2, s16
    9234: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9238: fe31 1a08    	vselgt.f32	s2, s2, s16
    923c: ee21 1a00    	vmul.f32	s2, s2, s0
    9240: fe81 1a45    	vminnm.f32	s2, s2, s10
    9244: eeb4 7a41    	vcmp.f32	s14, s2
    9248: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    924c: f63f ad1c    	bhi.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x5c8
    9250: eeb0 1ac2    	vabs.f32	s2, s4
    9254: eeb4 1a41    	vcmp.f32	s2, s2
    9258: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    925c: fe18 1a01    	vselvs.f32	s2, s16, s2
    9260: eeb4 1a48    	vcmp.f32	s2, s16
    9264: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9268: fe31 1a08    	vselgt.f32	s2, s2, s16
    926c: ee21 0a00    	vmul.f32	s0, s2, s0
    9270: eeb0 1ac6    	vabs.f32	s2, s12
    9274: fe80 0a45    	vminnm.f32	s0, s0, s10
    9278: eeb4 1a40    	vcmp.f32	s2, s0
    927c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9280: f63f ad02    	bhi.w	0x8c88 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x5fc
    9284: ed9d 0a1a    	vldr	s0, [sp, #104]
    9288: f8d4 0108    	ldr.w	r0, [r4, #0x108]
    928c: eeb4 0a40    	vcmp.f32	s0, s0
    9290: f8d4 1110    	ldr.w	r1, [r4, #0x110]
    9294: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9298: eeb4 4a44    	vcmp.f32	s8, s8
    929c: eddd 9a1b    	vldr	s19, [sp, #108]
    92a0: fe14 0a00    	vselvs.f32	s0, s8, s0
    92a4: ed9d 2a16    	vldr	s4, [sp, #88]
    92a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92ac: ed8d 2a60    	vstr	s4, [sp, #384]
    92b0: f100 0001    	add.w	r0, r0, #0x1
    92b4: fe10 1a04    	vselvs.f32	s2, s0, s8
    92b8: edcd ea61    	vstr	s29, [sp, #388]
    92bc: f8c4 0108    	str.w	r0, [r4, #0x108]
    92c0: 1c48         	adds	r0, r1, #0x1
    92c2: f8c4 0110    	str.w	r0, [r4, #0x110]
    92c6: eeb4 0a41    	vcmp.f32	s0, s2
    92ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92ce: fe30 9a01    	vselgt.f32	s18, s0, s2
    92d2: e569         	b	0x8da8 <ram_probe::packed_probe::control+0x16c8> @ imm = #-0x52e
    92d4: 82 76 ab bc  	.word	0xbcab7682
    92d8: eeb0 0b4b    	vmov.f64	d0, d11
    92dc: a863         	add	r0, sp, #0x18c
    92de: eeb0 1b4a    	vmov.f64	d1, d10
    92e2: a956         	add	r1, sp, #0x158
    92e4: eeb0 2a69    	vmov.f32	s4, s19
    92e8: aa5e         	add	r2, sp, #0x178
    92ea: 2500         	movs	r5, #0x0
    92ec: 955d         	str	r5, [sp, #0x174]
    92ee: f7fa fd2f    	bl	0x3d50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>> @ imm = #-0x55a2
    92f2: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    92f6: eeb4 9a49    	vcmp.f32	s18, s18
    92fa: 3001         	adds	r0, #0x1
    92fc: bf28         	it	hs
    92fe: f04f 30ff    	movhs.w	r0, #0xffffffff
    9302: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9306: ed9d 0a63    	vldr	s0, [sp, #396]
    930a: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    930e: fe10 1a09    	vselvs.f32	s2, s0, s18
    9312: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    9316: eeb4 0a40    	vcmp.f32	s0, s0
    931a: 4489         	add	r9, r1
    931c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9320: f8c4 011c    	str.w	r0, [r4, #0x11c]
    9324: fe11 2a00    	vselvs.f32	s4, s2, s0
    9328: eeb4 1a42    	vcmp.f32	s2, s4
    932c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9330: fe31 1a02    	vselgt.f32	s2, s2, s4
    9334: b122         	cbz	r2, 0x9340 <ram_probe::packed_probe::control+0x1c60> @ imm = #0x8
    9336: ed8d 1a00    	vstr	s2, [sp]
    933a: e9cd 9b1a    	strd	r9, r11, [sp, #104]
    933e: e02c         	b	0x939a <ram_probe::packed_probe::control+0x1cba> @ imm = #0x58
    9340: 69e0         	ldr	r0, [r4, #0x1c]
    9342: f8cb 0000    	str.w	r0, [r11]
    9346: ed8b 0a01    	vstr	s0, [r11, #4]
    934a: f88b 9008    	strb.w	r9, [r11, #0x8]
    934e: f88b 5009    	strb.w	r5, [r11, #0x9]
    9352: e1ed         	b	0x9730 <ram_probe::packed_probe::control+0x2050> @ imm = #0x3da
    9354: bd 37 06 36  	.word	0x360637bd
    9358: ac c5 a7 37  	.word	0x37a7c5ac
    935c: 08 e5 3c 1e  	.word	0x1e3ce508
    9360: eeb4 9a49    	vcmp.f32	s18, s18
    9364: f8d4 0114    	ldr.w	r0, [r4, #0x114]
    9368: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    936c: eeb4 0a40    	vcmp.f32	s0, s0
    9370: ed8d ca62    	vstr	s24, [sp, #392]
    9374: fe10 1a09    	vselvs.f32	s2, s0, s18
    9378: 3001         	adds	r0, #0x1
    937a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    937e: e9cd 9b1a    	strd	r9, r11, [sp, #104]
    9382: fe11 0a00    	vselvs.f32	s0, s2, s0
    9386: f8c4 0114    	str.w	r0, [r4, #0x114]
    938a: eeb4 1a40    	vcmp.f32	s2, s0
    938e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9392: fe31 0a00    	vselgt.f32	s0, s2, s0
    9396: ed8d 0a00    	vstr	s0, [sp]
    939a: a863         	add	r0, sp, #0x18c
    939c: a91c         	add	r1, sp, #0x70
    939e: aa56         	add	r2, sp, #0x158
    93a0: ed9d 0a0b    	vldr	s0, [sp, #44]
    93a4: f7f7 fd18    	bl	0xdd8 <orange_dsp::generated_packed::update::<5>> @ imm = #-0x85d0
    93a8: eddd 2a6e    	vldr	s5, [sp, #440]
    93ac: eddd 3a6f    	vldr	s7, [sp, #444]
    93b0: eddd da64    	vldr	s27, [sp, #400]
    93b4: ee12 2a90    	vmov	r2, s5
    93b8: ee1d 0a90    	vmov	r0, s27
    93bc: eddd 4a70    	vldr	s9, [sp, #448]
    93c0: 9208         	str	r2, [sp, #0x20]
    93c2: ee13 2a90    	vmov	r2, s7
    93c6: eddd 5a71    	vldr	s11, [sp, #452]
    93ca: eddd fa66    	vldr	s31, [sp, #408]
    93ce: eddd ea65    	vldr	s29, [sp, #404]
    93d2: 920b         	str	r2, [sp, #0x2c]
    93d4: ee14 2a90    	vmov	r2, s9
    93d8: ee15 8a90    	vmov	r8, s11
    93dc: f020 4000    	bic	r0, r0, #0x80000000
    93e0: ee1e 1a90    	vmov	r1, s29
    93e4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    93e8: f04f 0000    	mov.w	r0, #0x0
    93ec: ed9d 3a67    	vldr	s6, [sp, #412]
    93f0: ed9d 4a68    	vldr	s8, [sp, #416]
    93f4: ed9d 5a69    	vldr	s10, [sp, #420]
    93f8: ed9d 6a6a    	vldr	s12, [sp, #424]
    93fc: ed9d 7a6b    	vldr	s14, [sp, #428]
    9400: eddd 0a6c    	vldr	s1, [sp, #432]
    9404: eddd 1a6d    	vldr	s3, [sp, #436]
    9408: 920c         	str	r2, [sp, #0x30]
    940a: f8cd 8038    	str.w	r8, [sp, #0x38]
    940e: ee1f 5a90    	vmov	r5, s31
    9412: bfa8         	it	ge
    9414: 2001         	movge	r0, #0x1
    9416: ee13 6a10    	vmov	r6, s6
    941a: ee14 3a10    	vmov	r3, s8
    941e: 9019         	str	r0, [sp, #0x64]
    9420: f021 4000    	bic	r0, r1, #0x80000000
    9424: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9428: f04f 0000    	mov.w	r0, #0x0
    942c: bfa8         	it	ge
    942e: 2001         	movge	r0, #0x1
    9430: ee15 ca10    	vmov	r12, s10
    9434: ee16 ea10    	vmov	lr, s12
    9438: 9018         	str	r0, [sp, #0x60]
    943a: f025 4000    	bic	r0, r5, #0x80000000
    943e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9442: f04f 0000    	mov.w	r0, #0x0
    9446: bfa8         	it	ge
    9448: 2001         	movge	r0, #0x1
    944a: ee17 9a10    	vmov	r9, s14
    944e: ee10 ba90    	vmov	r11, s1
    9452: 9016         	str	r0, [sp, #0x58]
    9454: f026 4000    	bic	r0, r6, #0x80000000
    9458: f1b0 4fff    	cmp.w	r0, #0x7f800000
    945c: f04f 0000    	mov.w	r0, #0x0
    9460: bfa8         	it	ge
    9462: 2001         	movge	r0, #0x1
    9464: ee11 aa90    	vmov	r10, s3
    9468: f04f 0800    	mov.w	r8, #0x0
    946c: 9014         	str	r0, [sp, #0x50]
    946e: f023 4000    	bic	r0, r3, #0x80000000
    9472: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9476: f04f 0000    	mov.w	r0, #0x0
    947a: bfa8         	it	ge
    947c: 2001         	movge	r0, #0x1
    947e: 9012         	str	r0, [sp, #0x48]
    9480: f02c 4000    	bic	r0, r12, #0x80000000
    9484: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9488: f04f 0000    	mov.w	r0, #0x0
    948c: bfa8         	it	ge
    948e: 2001         	movge	r0, #0x1
    9490: f04f 0c00    	mov.w	r12, #0x0
    9494: 9010         	str	r0, [sp, #0x40]
    9496: f02e 4000    	bic	r0, lr, #0x80000000
    949a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    949e: f04f 0000    	mov.w	r0, #0x0
    94a2: bfa8         	it	ge
    94a4: 2001         	movge	r0, #0x1
    94a6: f04f 0e00    	mov.w	lr, #0x0
    94aa: 9007         	str	r0, [sp, #0x1c]
    94ac: f029 4000    	bic	r0, r9, #0x80000000
    94b0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    94b4: f04f 0000    	mov.w	r0, #0x0
    94b8: bfa8         	it	ge
    94ba: 2001         	movge	r0, #0x1
    94bc: f04f 0900    	mov.w	r9, #0x0
    94c0: 9006         	str	r0, [sp, #0x18]
    94c2: f02b 4000    	bic	r0, r11, #0x80000000
    94c6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    94ca: f04f 0000    	mov.w	r0, #0x0
    94ce: bfa8         	it	ge
    94d0: 2001         	movge	r0, #0x1
    94d2: f04f 0b00    	mov.w	r11, #0x0
    94d6: 9005         	str	r0, [sp, #0x14]
    94d8: f02a 4000    	bic	r0, r10, #0x80000000
    94dc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    94e0: f04f 0000    	mov.w	r0, #0x0
    94e4: bfa8         	it	ge
    94e6: 2001         	movge	r0, #0x1
    94e8: f04f 0a00    	mov.w	r10, #0x0
    94ec: 9004         	str	r0, [sp, #0x10]
    94ee: 9808         	ldr	r0, [sp, #0x20]
    94f0: f020 4000    	bic	r0, r0, #0x80000000
    94f4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    94f8: f04f 0000    	mov.w	r0, #0x0
    94fc: bfa8         	it	ge
    94fe: 2001         	movge	r0, #0x1
    9500: 9008         	str	r0, [sp, #0x20]
    9502: 980b         	ldr	r0, [sp, #0x2c]
    9504: f020 4000    	bic	r0, r0, #0x80000000
    9508: f1b0 4fff    	cmp.w	r0, #0x7f800000
    950c: f04f 0000    	mov.w	r0, #0x0
    9510: bfa8         	it	ge
    9512: 2001         	movge	r0, #0x1
    9514: 900b         	str	r0, [sp, #0x2c]
    9516: 980c         	ldr	r0, [sp, #0x30]
    9518: f020 4000    	bic	r0, r0, #0x80000000
    951c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9520: f04f 0000    	mov.w	r0, #0x0
    9524: bfa8         	it	ge
    9526: 2001         	movge	r0, #0x1
    9528: eddd ca72    	vldr	s25, [sp, #456]
    952c: 900c         	str	r0, [sp, #0x30]
    952e: 980e         	ldr	r0, [sp, #0x38]
    9530: f020 4000    	bic	r0, r0, #0x80000000
    9534: ee1c 1a90    	vmov	r1, s25
    9538: f1b0 4fff    	cmp.w	r0, #0x7f800000
    953c: f04f 0000    	mov.w	r0, #0x0
    9540: bfa8         	it	ge
    9542: 2001         	movge	r0, #0x1
    9544: eddd 7a73    	vldr	s15, [sp, #460]
    9548: 900e         	str	r0, [sp, #0x38]
    954a: f021 4000    	bic	r0, r1, #0x80000000
    954e: ee17 1a90    	vmov	r1, s15
    9552: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9556: f04f 0000    	mov.w	r0, #0x0
    955a: bfa8         	it	ge
    955c: 2001         	movge	r0, #0x1
    955e: ed9d 8a74    	vldr	s16, [sp, #464]
    9562: 9003         	str	r0, [sp, #0xc]
    9564: f021 4000    	bic	r0, r1, #0x80000000
    9568: ee18 1a10    	vmov	r1, s16
    956c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9570: f04f 0000    	mov.w	r0, #0x0
    9574: bfa8         	it	ge
    9576: 2001         	movge	r0, #0x1
    9578: ed9d 9a75    	vldr	s18, [sp, #468]
    957c: 9002         	str	r0, [sp, #0x8]
    957e: f021 4000    	bic	r0, r1, #0x80000000
    9582: ee19 1a10    	vmov	r1, s18
    9586: f1b0 4fff    	cmp.w	r0, #0x7f800000
    958a: f04f 0000    	mov.w	r0, #0x0
    958e: bfa8         	it	ge
    9590: 2001         	movge	r0, #0x1
    9592: ed9d aa76    	vldr	s20, [sp, #472]
    9596: 9001         	str	r0, [sp, #0x4]
    9598: f021 4000    	bic	r0, r1, #0x80000000
    959c: ee1a 1a10    	vmov	r1, s20
    95a0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    95a4: bfa8         	it	ge
    95a6: f04f 0e01    	movge.w	lr, #0x1
    95aa: ed9d ba77    	vldr	s22, [sp, #476]
    95ae: f021 4000    	bic	r0, r1, #0x80000000
    95b2: ee1b 1a10    	vmov	r1, s22
    95b6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    95ba: bfa8         	it	ge
    95bc: f04f 0901    	movge.w	r9, #0x1
    95c0: ed9d ca78    	vldr	s24, [sp, #480]
    95c4: f021 4100    	bic	r1, r1, #0x80000000
    95c8: ee1c 2a10    	vmov	r2, s24
    95cc: f1b1 4fff    	cmp.w	r1, #0x7f800000
    95d0: bfa8         	it	ge
    95d2: f04f 0b01    	movge.w	r11, #0x1
    95d6: ed9d da79    	vldr	s26, [sp, #484]
    95da: ee1d 3a10    	vmov	r3, s26
    95de: f022 4200    	bic	r2, r2, #0x80000000
    95e2: f1b2 4fff    	cmp.w	r2, #0x7f800000
    95e6: f04f 0200    	mov.w	r2, #0x0
    95ea: bfa8         	it	ge
    95ec: 2201         	movge	r2, #0x1
    95ee: f023 4300    	bic	r3, r3, #0x80000000
    95f2: ed9d ea5e    	vldr	s28, [sp, #376]
    95f6: f1b3 4fff    	cmp.w	r3, #0x7f800000
    95fa: f04f 0300    	mov.w	r3, #0x0
    95fe: ee1e 6a10    	vmov	r6, s28
    9602: bfa8         	it	ge
    9604: 2301         	movge	r3, #0x1
    9606: ed9d fa5f    	vldr	s30, [sp, #380]
    960a: ee1f 5a10    	vmov	r5, s30
    960e: f026 4600    	bic	r6, r6, #0x80000000
    9612: f1b6 4fff    	cmp.w	r6, #0x7f800000
    9616: bfa8         	it	ge
    9618: f04f 0c01    	movge.w	r12, #0x1
    961c: eddd 8a60    	vldr	s17, [sp, #384]
    9620: f025 4500    	bic	r5, r5, #0x80000000
    9624: ee18 6a90    	vmov	r6, s17
    9628: f1b5 4fff    	cmp.w	r5, #0x7f800000
    962c: f04f 0500    	mov.w	r5, #0x0
    9630: bfa8         	it	ge
    9632: 2501         	movge	r5, #0x1
    9634: eddd 9a61    	vldr	s19, [sp, #388]
    9638: f026 4600    	bic	r6, r6, #0x80000000
    963c: ee19 0a90    	vmov	r0, s19
    9640: f1b6 4fff    	cmp.w	r6, #0x7f800000
    9644: f04f 0600    	mov.w	r6, #0x0
    9648: eddd aa62    	vldr	s21, [sp, #392]
    964c: bfa8         	it	ge
    964e: 2601         	movge	r6, #0x1
    9650: f020 4000    	bic	r0, r0, #0x80000000
    9654: eddd ba63    	vldr	s23, [sp, #396]
    9658: ee1a 1a90    	vmov	r1, s21
    965c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9660: ee1b 0a90    	vmov	r0, s23
    9664: bfa8         	it	ge
    9666: f04f 0801    	movge.w	r8, #0x1
    966a: f021 4100    	bic	r1, r1, #0x80000000
    966e: f020 4000    	bic	r0, r0, #0x80000000
    9672: f1b1 4fff    	cmp.w	r1, #0x7f800000
    9676: bfa8         	it	ge
    9678: f04f 0a01    	movge.w	r10, #0x1
    967c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9680: f04f 0100    	mov.w	r1, #0x0
    9684: da4a         	bge	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x94
    9686: 9819         	ldr	r0, [sp, #0x64]
    9688: 2800         	cmp	r0, #0x0
    968a: bf04         	itt	eq
    968c: 9818         	ldreq	r0, [sp, #0x60]
    968e: 2800         	cmpeq	r0, #0x0
    9690: d144         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x88
    9692: 9816         	ldr	r0, [sp, #0x58]
    9694: 2800         	cmp	r0, #0x0
    9696: bf04         	itt	eq
    9698: 9814         	ldreq	r0, [sp, #0x50]
    969a: 2800         	cmpeq	r0, #0x0
    969c: d13e         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x7c
    969e: 9812         	ldr	r0, [sp, #0x48]
    96a0: 2800         	cmp	r0, #0x0
    96a2: bf04         	itt	eq
    96a4: 9810         	ldreq	r0, [sp, #0x40]
    96a6: 2800         	cmpeq	r0, #0x0
    96a8: d138         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x70
    96aa: 9807         	ldr	r0, [sp, #0x1c]
    96ac: 2800         	cmp	r0, #0x0
    96ae: bf04         	itt	eq
    96b0: 9806         	ldreq	r0, [sp, #0x18]
    96b2: 2800         	cmpeq	r0, #0x0
    96b4: d132         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x64
    96b6: 9805         	ldr	r0, [sp, #0x14]
    96b8: 2800         	cmp	r0, #0x0
    96ba: bf04         	itt	eq
    96bc: 9804         	ldreq	r0, [sp, #0x10]
    96be: 2800         	cmpeq	r0, #0x0
    96c0: d12c         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x58
    96c2: 9808         	ldr	r0, [sp, #0x20]
    96c4: 2800         	cmp	r0, #0x0
    96c6: bf04         	itt	eq
    96c8: 980b         	ldreq	r0, [sp, #0x2c]
    96ca: 2800         	cmpeq	r0, #0x0
    96cc: d126         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x4c
    96ce: 980c         	ldr	r0, [sp, #0x30]
    96d0: 2800         	cmp	r0, #0x0
    96d2: bf04         	itt	eq
    96d4: 980e         	ldreq	r0, [sp, #0x38]
    96d6: 2800         	cmpeq	r0, #0x0
    96d8: d120         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x40
    96da: 9803         	ldr	r0, [sp, #0xc]
    96dc: 2800         	cmp	r0, #0x0
    96de: bf04         	itt	eq
    96e0: 9802         	ldreq	r0, [sp, #0x8]
    96e2: 2800         	cmpeq	r0, #0x0
    96e4: d11a         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x34
    96e6: 9801         	ldr	r0, [sp, #0x4]
    96e8: 2800         	cmp	r0, #0x0
    96ea: bf08         	it	eq
    96ec: f1be 0f00    	cmpeq.w	lr, #0x0
    96f0: d114         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x28
    96f2: f1b9 0f00    	cmp.w	r9, #0x0
    96f6: bf08         	it	eq
    96f8: f1bb 0f00    	cmpeq.w	r11, #0x0
    96fc: d10e         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x1c
    96fe: 2a00         	cmp	r2, #0x0
    9700: bf08         	it	eq
    9702: 2b00         	cmpeq	r3, #0x0
    9704: d10a         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0x14
    9706: f1bc 0f00    	cmp.w	r12, #0x0
    970a: bf08         	it	eq
    970c: 2d00         	cmpeq	r5, #0x0
    970e: d105         	bne	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #0xa
    9710: 2e00         	cmp	r6, #0x0
    9712: bf08         	it	eq
    9714: f1b8 0f00    	cmpeq.w	r8, #0x0
    9718: f000 80e2    	beq.w	0x98e0 <ram_probe::packed_probe::control+0x2200> @ imm = #0x1c4
    971c: 9a1b         	ldr	r2, [sp, #0x6c]
    971e: 69e0         	ldr	r0, [r4, #0x1c]
    9720: 460b         	mov	r3, r1
    9722: f04f 41ff    	mov.w	r1, #0x7f800000
    9726: e9c2 0100    	strd	r0, r1, [r2]
    972a: 981a         	ldr	r0, [sp, #0x68]
    972c: 7210         	strb	r0, [r2, #0x8]
    972e: 7253         	strb	r3, [r2, #0x9]
    9730: f50d 7d08    	add.w	sp, sp, #0x220
    9734: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    9738: b001         	add	sp, #0x4
    973a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    973e: bdf0         	pop	{r4, r5, r6, r7, pc}
    9740: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    9744: eef0 2a45    	vmov.f32	s5, s10
    9748: eef0 ca46    	vmov.f32	s25, s12
    974c: ed8d 9b08    	vstr	d9, [sp, #32]
    9750: eeb0 9a40    	vmov.f32	s18, s0
    9754: ed9f 0ac0    	vldr	s0, [pc, #768]          @ 0x9a58 <ram_probe::packed_probe::control+0x2378>
    9758: ee42 2a00    	vmla.f32	s5, s4, s0
    975c: ed8d 2a5c    	vstr	s4, [sp, #368]
    9760: ee42 ca25    	vmla.f32	s25, s4, s11
    9764: eeb0 0a49    	vmov.f32	s0, s18
    9768: fe82 9aec    	vminnm.f32	s18, s5, s25
    976c: ee3a cac9    	vsub.f32	s24, s21, s18
    9770: eeb8 9a00    	vmov.f32	s18, #-2.000000e+00
    9774: eeb4 ca49    	vcmp.f32	s24, s18
    9778: ed9d 9b08    	vldr	d9, [sp, #32]
    977c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9780: f77e ae2f    	ble.w	0x83e2 <ram_probe::packed_probe::control+0xd02> @ imm = #-0x13a2
    9784: eef4 2a6c    	vcmp.f32	s5, s25
    9788: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    978c: f63e ae29    	bhi.w	0x83e2 <ram_probe::packed_probe::control+0xd02> @ imm = #-0x13ae
    9790: eeb5 ca40    	vcmp.f32	s24, #0
    9794: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9798: f57e ae23    	bpl.w	0x83e2 <ram_probe::packed_probe::control+0xd02> @ imm = #-0x13ba
    979c: eef0 2a66    	vmov.f32	s5, s13
    97a0: ee4c 2a2a    	vmla.f32	s5, s24, s21
    97a4: ed9f 9aad    	vldr	s18, [pc, #692]         @ 0x9a5c <ram_probe::packed_probe::control+0x237c>
    97a8: ee62 2a80    	vmul.f32	s5, s5, s0
    97ac: eef4 2a49    	vcmp.f32	s5, s18
    97b0: ed9d 9b08    	vldr	d9, [sp, #32]
    97b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97b8: f77e ae13    	ble.w	0x83e2 <ram_probe::packed_probe::control+0xd02> @ imm = #-0x13da
    97bc: f7fe be9a    	b.w	0x84f4 <ram_probe::packed_probe::control+0xe14> @ imm = #-0x12cc
    97c0: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    97c4: eeb0 8a40    	vmov.f32	s16, s0
    97c8: ed9f 0aa3    	vldr	s0, [pc, #652]          @ 0x9a58 <ram_probe::packed_probe::control+0x2378>
    97cc: eef0 2a45    	vmov.f32	s5, s10
    97d0: eeb0 ca46    	vmov.f32	s24, s12
    97d4: ee42 2a00    	vmla.f32	s5, s4, s0
    97d8: ed8d 2a5c    	vstr	s4, [sp, #368]
    97dc: ee02 ca25    	vmla.f32	s24, s4, s11
    97e0: eeb0 0a48    	vmov.f32	s0, s16
    97e4: fe82 8acc    	vminnm.f32	s16, s5, s24
    97e8: ee3a bac8    	vsub.f32	s22, s21, s16
    97ec: eeb8 8a00    	vmov.f32	s16, #-2.000000e+00
    97f0: eeb4 ba48    	vcmp.f32	s22, s16
    97f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97f8: f77e ae36    	ble.w	0x8468 <ram_probe::packed_probe::control+0xd88> @ imm = #-0x1394
    97fc: eeb4 ca62    	vcmp.f32	s24, s5
    9800: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9804: f63e ae30    	bhi.w	0x8468 <ram_probe::packed_probe::control+0xd88> @ imm = #-0x13a0
    9808: eeb5 ba40    	vcmp.f32	s22, #0
    980c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9810: f57e ae2a    	bpl.w	0x8468 <ram_probe::packed_probe::control+0xd88> @ imm = #-0x13ac
    9814: eef0 2a66    	vmov.f32	s5, s13
    9818: ee4b 2a2a    	vmla.f32	s5, s22, s21
    981c: ed9f 8a8f    	vldr	s16, [pc, #572]         @ 0x9a5c <ram_probe::packed_probe::control+0x237c>
    9820: ee62 2a80    	vmul.f32	s5, s5, s0
    9824: eef4 2a48    	vcmp.f32	s5, s16
    9828: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    982c: f77e ae1c    	ble.w	0x8468 <ram_probe::packed_probe::control+0xd88> @ imm = #-0x13c8
    9830: f7fe be60    	b.w	0x84f4 <ram_probe::packed_probe::control+0xe14> @ imm = #-0x1340
    9834: bf00         	nop
    9836: bf00         	nop
    9838: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    983c: eeb0 9a40    	vmov.f32	s18, s0
    9840: ed9f 0a85    	vldr	s0, [pc, #532]          @ 0x9a58 <ram_probe::packed_probe::control+0x2378>
    9844: eef0 2a45    	vmov.f32	s5, s10
    9848: eef0 ca46    	vmov.f32	s25, s12
    984c: ee42 2a00    	vmla.f32	s5, s4, s0
    9850: ed8d 2a5c    	vstr	s4, [sp, #368]
    9854: ee42 ca25    	vmla.f32	s25, s4, s11
    9858: eeb0 0a49    	vmov.f32	s0, s18
    985c: fe82 9aec    	vminnm.f32	s18, s5, s25
    9860: ee3a cac9    	vsub.f32	s24, s21, s18
    9864: eeb8 9a00    	vmov.f32	s18, #-2.000000e+00
    9868: eeb4 ca49    	vcmp.f32	s24, s18
    986c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9870: f77e adc2    	ble.w	0x83f8 <ram_probe::packed_probe::control+0xd18> @ imm = #-0x147c
    9874: eef4 2a6c    	vcmp.f32	s5, s25
    9878: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    987c: f63e adbc    	bhi.w	0x83f8 <ram_probe::packed_probe::control+0xd18> @ imm = #-0x1488
    9880: eeb5 ca40    	vcmp.f32	s24, #0
    9884: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9888: f57e adb6    	bpl.w	0x83f8 <ram_probe::packed_probe::control+0xd18> @ imm = #-0x1494
    988c: eef0 2a66    	vmov.f32	s5, s13
    9890: ee4c 2a2a    	vmla.f32	s5, s24, s21
    9894: ed9f 9a71    	vldr	s18, [pc, #452]         @ 0x9a5c <ram_probe::packed_probe::control+0x237c>
    9898: ee62 2a80    	vmul.f32	s5, s5, s0
    989c: eef4 2a49    	vcmp.f32	s5, s18
    98a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    98a4: f77e ada8    	ble.w	0x83f8 <ram_probe::packed_probe::control+0xd18> @ imm = #-0x14b0
    98a8: f7fe be24    	b.w	0x84f4 <ram_probe::packed_probe::control+0xe14> @ imm = #-0x13b8
    98ac: bf00         	nop
    98ae: bf00         	nop
    98b0: f64d 207b    	movw	r0, #0xda7b
    98b4: f64d 7220    	movw	r2, #0xdf20
    98b8: f2c0 0000    	movt	r0, #0x0
    98bc: f2c0 0200    	movt	r2, #0x0
    98c0: a97a         	add	r1, sp, #0x1e8
    98c2: f002 fadf    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0x25be
    98c6: bf00         	nop
    98c8: f64d 207b    	movw	r0, #0xda7b
    98cc: f64d 7220    	movw	r2, #0xdf20
    98d0: f2c0 0000    	movt	r0, #0x0
    98d4: f2c0 0200    	movt	r2, #0x0
    98d8: a963         	add	r1, sp, #0x18c
    98da: f002 fad3    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0x25a6
    98de: bf00         	nop
    98e0: f1ba 0f00    	cmp.w	r10, #0x0
    98e4: f47f af1a    	bne.w	0x971c <ram_probe::packed_probe::control+0x203c> @ imm = #-0x1cc
    98e8: f104 0120    	add.w	r1, r4, #0x20
    98ec: f104 0090    	add.w	r0, r4, #0x90
    98f0: 2270         	movs	r2, #0x70
    98f2: ed8d 8a07    	vstr	s16, [sp, #28]
    98f6: eeb0 8a43    	vmov.f32	s16, s6
    98fa: ed8d 9a08    	vstr	s18, [sp, #32]
    98fe: eeb0 9a44    	vmov.f32	s18, s8
    9902: ed8d aa0b    	vstr	s20, [sp, #44]
    9906: eeb0 aa45    	vmov.f32	s20, s10
    990a: ed8d ba0c    	vstr	s22, [sp, #48]
    990e: eeb0 ba46    	vmov.f32	s22, s12
    9912: ed8d ca0e    	vstr	s24, [sp, #56]
    9916: eeb0 ca47    	vmov.f32	s24, s14
    991a: ed8d da10    	vstr	s26, [sp, #64]
    991e: eeb0 da60    	vmov.f32	s26, s1
    9922: ed8d ea12    	vstr	s28, [sp, #72]
    9926: eeb0 ea61    	vmov.f32	s28, s3
    992a: ed8d fa14    	vstr	s30, [sp, #80]
    992e: eeb0 fa62    	vmov.f32	s30, s5
    9932: edcd 8a16    	vstr	s17, [sp, #88]
    9936: eef0 8a63    	vmov.f32	s17, s7
    993a: edcd 9a18    	vstr	s19, [sp, #96]
    993e: eef0 9a64    	vmov.f32	s19, s9
    9942: edcd aa19    	vstr	s21, [sp, #100]
    9946: eef0 aa65    	vmov.f32	s21, s11
    994a: edcd 7a06    	vstr	s15, [sp, #24]
    994e: f003 fe97    	bl	0xd680 <__aeabi_memcpy4> @ imm = #0x3d2e
    9952: ad56         	add	r5, sp, #0x158
    9954: edc4 ba08    	vstr	s23, [r4, #32]
    9958: edc4 da09    	vstr	s27, [r4, #36]
    995c: ed9d 0a06    	vldr	s0, [sp, #24]
    9960: edc4 ea0a    	vstr	s29, [r4, #40]
    9964: 4620         	mov	r0, r4
    9966: edc4 fa0b    	vstr	s31, [r4, #44]
    996a: ed84 8a0c    	vstr	s16, [r4, #48]
    996e: ed84 9a0d    	vstr	s18, [r4, #52]
    9972: ed84 aa0e    	vstr	s20, [r4, #56]
    9976: ed84 ba0f    	vstr	s22, [r4, #60]
    997a: ed84 ca10    	vstr	s24, [r4, #64]
    997e: ed84 da11    	vstr	s26, [r4, #68]
    9982: ed84 ea12    	vstr	s28, [r4, #72]
    9986: ed84 fa13    	vstr	s30, [r4, #76]
    998a: edc4 8a14    	vstr	s17, [r4, #80]
    998e: edc4 9a15    	vstr	s19, [r4, #84]
    9992: edc4 aa16    	vstr	s21, [r4, #88]
    9996: edc4 ca17    	vstr	s25, [r4, #92]
    999a: ed84 0a18    	vstr	s0, [r4, #96]
    999e: ed9d 0a07    	vldr	s0, [sp, #28]
    99a2: ed84 0a19    	vstr	s0, [r4, #100]
    99a6: ed9d 0a08    	vldr	s0, [sp, #32]
    99aa: ed84 0a1a    	vstr	s0, [r4, #104]
    99ae: ed9d 0a0b    	vldr	s0, [sp, #44]
    99b2: ed84 0a1b    	vstr	s0, [r4, #108]
    99b6: ed9d 0a0c    	vldr	s0, [sp, #48]
    99ba: ed84 0a1c    	vstr	s0, [r4, #112]
    99be: ed9d 0a0e    	vldr	s0, [sp, #56]
    99c2: ed84 0a1d    	vstr	s0, [r4, #116]
    99c6: ed9d 0a10    	vldr	s0, [sp, #64]
    99ca: ed84 0a1e    	vstr	s0, [r4, #120]
    99ce: ed9d 0a12    	vldr	s0, [sp, #72]
    99d2: ed84 0a1f    	vstr	s0, [r4, #124]
    99d6: ed9d 0a14    	vldr	s0, [sp, #80]
    99da: ed84 0a20    	vstr	s0, [r4, #128]
    99de: ed9d 0a16    	vldr	s0, [sp, #88]
    99e2: ed84 0a21    	vstr	s0, [r4, #132]
    99e6: ed9d 0a18    	vldr	s0, [sp, #96]
    99ea: ed84 0a22    	vstr	s0, [r4, #136]
    99ee: ed9d 0a19    	vldr	s0, [sp, #100]
    99f2: ed84 0a23    	vstr	s0, [r4, #140]
    99f6: cd4e         	ldm	r5!, {r1, r2, r3, r6}
    99f8: c04e         	stm	r0!, {r1, r2, r3, r6}
    99fa: e895 004e    	ldm.w	r5, {r1, r2, r3, r6}
    99fe: c04e         	stm	r0!, {r1, r2, r3, r6}
    9a00: f8d4 0118    	ldr.w	r0, [r4, #0x118]
    9a04: 991b         	ldr	r1, [sp, #0x6c]
    9a06: 3001         	adds	r0, #0x1
    9a08: ed9d 0a00    	vldr	s0, [sp]
    9a0c: ed81 0a01    	vstr	s0, [r1, #4]
    9a10: bf28         	it	hs
    9a12: f04f 30ff    	movhs.w	r0, #0xffffffff
    9a16: f8c4 0118    	str.w	r0, [r4, #0x118]
    9a1a: 985d         	ldr	r0, [sp, #0x174]
    9a1c: 6008         	str	r0, [r1]
    9a1e: 981a         	ldr	r0, [sp, #0x68]
    9a20: 7208         	strb	r0, [r1, #0x8]
    9a22: 2001         	movs	r0, #0x1
    9a24: 7248         	strb	r0, [r1, #0x9]
    9a26: e683         	b	0x9730 <ram_probe::packed_probe::control+0x2050> @ imm = #-0x2fa
    9a28: ed9f 4a0a    	vldr	s8, [pc, #40]           @ 0x9a54 <ram_probe::packed_probe::control+0x2374>
    9a2c: eeb0 3a44    	vmov.f32	s6, s8
    9a30: f7fe b9b1    	b.w	0x7d96 <ram_probe::packed_probe::control+0x6b6> @ imm = #-0x1c9e
    9a34: bf00         	nop
    9a36: bf00         	nop
    9a38: eddf 4a06    	vldr	s9, [pc, #24]           @ 0x9a54 <ram_probe::packed_probe::control+0x2374>
    9a3c: eef0 2a64    	vmov.f32	s5, s9
    9a40: f7fe be59    	b.w	0x86f6 <ram_probe::packed_probe::control+0x1016> @ imm = #-0x134e
    9a44: bf00         	nop
    9a46: bf00         	nop
    9a48: ed9f fa02    	vldr	s30, [pc, #8]           @ 0x9a54 <ram_probe::packed_probe::control+0x2374>
    9a4c: eeb0 ca4f    	vmov.f32	s24, s30
    9a50: f7fe bfa9    	b.w	0x89a6 <ram_probe::packed_probe::control+0x12c6> @ imm = #-0x10ae
    9a54: 00 00 c0 7f  	.word	0x7fc00000
    9a58: 99 76 cd 39  	.word	0x39cd7699
    9a5c: 95 bf d6 33  	.word	0x33d6bf95
    9a60: 00 00 00 80  	.word	0x80000000
    9a64: d2 4e da c3  	.word	0xc3da4ed2

00009a68 <ram_probe::packed_probe::candidate>:
    9a68: b5f0         	push	{r4, r5, r6, r7, lr}
    9a6a: af03         	add	r7, sp, #0xc
    9a6c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    9a70: b081         	sub	sp, #0x4
    9a72: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    9a76: f5ad 7d16    	sub.w	sp, sp, #0x258
    9a7a: eeb6 fa00    	vmov.f32	s30, #5.000000e-01
    9a7e: ed91 1a08    	vldr	s2, [r1, #32]
    9a82: ed91 2a24    	vldr	s4, [r1, #144]
    9a86: ed91 3a09    	vldr	s6, [r1, #36]
    9a8a: ee31 1a01    	vadd.f32	s2, s2, s2
    9a8e: ed91 4a0a    	vldr	s8, [r1, #40]
    9a92: ee02 1a4f    	vmls.f32	s2, s4, s30
    9a96: ed91 5a0b    	vldr	s10, [r1, #44]
    9a9a: ee33 2a03    	vadd.f32	s4, s6, s6
    9a9e: ed91 3a25    	vldr	s6, [r1, #148]
    9aa2: ee03 2a4f    	vmls.f32	s4, s6, s30
    9aa6: ed91 6a30    	vldr	s12, [r1, #192]
    9aaa: ee34 3a04    	vadd.f32	s6, s8, s8
    9aae: ed91 4a26    	vldr	s8, [r1, #152]
    9ab2: ee04 3a4f    	vmls.f32	s6, s8, s30
    9ab6: ed8d 1a18    	vstr	s2, [sp, #96]
    9aba: ee35 4a05    	vadd.f32	s8, s10, s10
    9abe: ed91 5a27    	vldr	s10, [r1, #156]
    9ac2: ee05 4a4f    	vmls.f32	s8, s10, s30
    9ac6: ed8d 2a19    	vstr	s4, [sp, #100]
    9aca: ed91 1a0c    	vldr	s2, [r1, #48]
    9ace: ed91 5a0f    	vldr	s10, [r1, #60]
    9ad2: ed91 2a28    	vldr	s4, [r1, #160]
    9ad6: ed8d 3a1a    	vstr	s6, [sp, #104]
    9ada: ee31 1a01    	vadd.f32	s2, s2, s2
    9ade: ed91 3a29    	vldr	s6, [r1, #164]
    9ae2: ee02 1a4f    	vmls.f32	s2, s4, s30
    9ae6: ed91 2a0d    	vldr	s4, [r1, #52]
    9aea: ed8d 4a1b    	vstr	s8, [sp, #108]
    9aee: ee32 2a02    	vadd.f32	s4, s4, s4
    9af2: ee03 2a4f    	vmls.f32	s4, s6, s30
    9af6: ed91 3a0e    	vldr	s6, [r1, #56]
    9afa: ed91 4a2a    	vldr	s8, [r1, #168]
    9afe: ee33 3a03    	vadd.f32	s6, s6, s6
    9b02: ee04 3a4f    	vmls.f32	s6, s8, s30
    9b06: ed8d 1a1c    	vstr	s2, [sp, #112]
    9b0a: ee35 4a05    	vadd.f32	s8, s10, s10
    9b0e: ed91 5a2b    	vldr	s10, [r1, #172]
    9b12: ee05 4a4f    	vmls.f32	s8, s10, s30
    9b16: ed91 1a10    	vldr	s2, [r1, #64]
    9b1a: ed8d 2a1d    	vstr	s4, [sp, #116]
    9b1e: ed91 2a11    	vldr	s4, [r1, #68]
    9b22: ed8d 3a1e    	vstr	s6, [sp, #120]
    9b26: ed91 3a2c    	vldr	s6, [r1, #176]
    9b2a: ee31 1a01    	vadd.f32	s2, s2, s2
    9b2e: ed91 5a2f    	vldr	s10, [r1, #188]
    9b32: ee03 1a4f    	vmls.f32	s2, s6, s30
    9b36: ed91 3a2d    	vldr	s6, [r1, #180]
    9b3a: ed8d 4a1f    	vstr	s8, [sp, #124]
    9b3e: ee32 2a02    	vadd.f32	s4, s4, s4
    9b42: ee03 2a4f    	vmls.f32	s4, s6, s30
    9b46: ed91 3a12    	vldr	s6, [r1, #72]
    9b4a: ed91 4a2e    	vldr	s8, [r1, #184]
    9b4e: ee33 3a03    	vadd.f32	s6, s6, s6
    9b52: ee04 3a4f    	vmls.f32	s6, s8, s30
    9b56: ed91 4a13    	vldr	s8, [r1, #76]
    9b5a: ee34 4a04    	vadd.f32	s8, s8, s8
    9b5e: ed8d 1a20    	vstr	s2, [sp, #128]
    9b62: ee05 4a4f    	vmls.f32	s8, s10, s30
    9b66: ed8d 2a21    	vstr	s4, [sp, #132]
    9b6a: ed91 1a15    	vldr	s2, [r1, #84]
    9b6e: ed91 5a14    	vldr	s10, [r1, #80]
    9b72: ed91 2a31    	vldr	s4, [r1, #196]
    9b76: ed8d 3a22    	vstr	s6, [sp, #136]
    9b7a: ee31 1a01    	vadd.f32	s2, s2, s2
    9b7e: ed91 3a32    	vldr	s6, [r1, #200]
    9b82: ee02 1a4f    	vmls.f32	s2, s4, s30
    9b86: ed91 2a16    	vldr	s4, [r1, #88]
    9b8a: ed8d 4a23    	vstr	s8, [sp, #140]
    9b8e: ee32 2a02    	vadd.f32	s4, s4, s4
    9b92: ee03 2a4f    	vmls.f32	s4, s6, s30
    9b96: ed91 3a17    	vldr	s6, [r1, #92]
    9b9a: ed91 4a33    	vldr	s8, [r1, #204]
    9b9e: ee33 3a03    	vadd.f32	s6, s6, s6
    9ba2: ee04 3a4f    	vmls.f32	s6, s8, s30
    9ba6: ed8d 1a25    	vstr	s2, [sp, #148]
    9baa: ee35 5a05    	vadd.f32	s10, s10, s10
    9bae: ed91 1a1a    	vldr	s2, [r1, #104]
    9bb2: ee06 5a4f    	vmls.f32	s10, s12, s30
    9bb6: ed8d 2a26    	vstr	s4, [sp, #152]
    9bba: ed91 2a36    	vldr	s4, [r1, #216]
    9bbe: ee31 1a01    	vadd.f32	s2, s2, s2
    9bc2: ed8d 3a27    	vstr	s6, [sp, #156]
    9bc6: ee02 1a4f    	vmls.f32	s2, s4, s30
    9bca: ed91 2a1b    	vldr	s4, [r1, #108]
    9bce: ed91 4a18    	vldr	s8, [r1, #96]
    9bd2: ed91 3a37    	vldr	s6, [r1, #220]
    9bd6: ee32 2a02    	vadd.f32	s4, s4, s4
    9bda: ee03 2a4f    	vmls.f32	s4, s6, s30
    9bde: ed8d 5a24    	vstr	s10, [sp, #144]
    9be2: ed91 5a34    	vldr	s10, [r1, #208]
    9be6: ee34 4a04    	vadd.f32	s8, s8, s8
    9bea: ee05 4a4f    	vmls.f32	s8, s10, s30
    9bee: ed91 5a19    	vldr	s10, [r1, #100]
    9bf2: ed91 6a35    	vldr	s12, [r1, #212]
    9bf6: ee35 5a05    	vadd.f32	s10, s10, s10
    9bfa: ee06 5a4f    	vmls.f32	s10, s12, s30
    9bfe: ed8d 1a2a    	vstr	s2, [sp, #168]
    9c02: ed8d 2a2b    	vstr	s4, [sp, #172]
    9c06: ed91 1a1f    	vldr	s2, [r1, #124]
    9c0a: ed91 2a3b    	vldr	s4, [r1, #236]
    9c0e: ee31 8a01    	vadd.f32	s16, s2, s2
    9c12: ee02 8a4f    	vmls.f32	s16, s4, s30
    9c16: ed91 1a20    	vldr	s2, [r1, #128]
    9c1a: ed91 2a3c    	vldr	s4, [r1, #240]
    9c1e: ed8d 4a28    	vstr	s8, [sp, #160]
    9c22: ed91 3a1c    	vldr	s6, [r1, #112]
    9c26: ee31 9a01    	vadd.f32	s18, s2, s2
    9c2a: ed91 4a38    	vldr	s8, [r1, #224]
    9c2e: ee02 9a4f    	vmls.f32	s18, s4, s30
    9c32: ed91 1a21    	vldr	s2, [r1, #132]
    9c36: ed8d 5a29    	vstr	s10, [sp, #164]
    9c3a: ed91 2a3d    	vldr	s4, [r1, #244]
    9c3e: ee33 3a03    	vadd.f32	s6, s6, s6
    9c42: ee04 3a4f    	vmls.f32	s6, s8, s30
    9c46: ed91 4a1d    	vldr	s8, [r1, #116]
    9c4a: ed91 5a39    	vldr	s10, [r1, #228]
    9c4e: ee31 ba01    	vadd.f32	s22, s2, s2
    9c52: ee02 ba4f    	vmls.f32	s22, s4, s30
    9c56: ed91 1a22    	vldr	s2, [r1, #136]
    9c5a: ed91 2a3e    	vldr	s4, [r1, #248]
    9c5e: ee34 4a04    	vadd.f32	s8, s8, s8
    9c62: ee05 4a4f    	vmls.f32	s8, s10, s30
    9c66: ed91 5a1e    	vldr	s10, [r1, #120]
    9c6a: ed91 6a3a    	vldr	s12, [r1, #232]
    9c6e: ee31 da01    	vadd.f32	s26, s2, s2
    9c72: ee02 da4f    	vmls.f32	s26, s4, s30
    9c76: ed91 1a23    	vldr	s2, [r1, #140]
    9c7a: ed91 2a3f    	vldr	s4, [r1, #252]
    9c7e: ee35 5a05    	vadd.f32	s10, s10, s10
    9c82: ee06 5a4f    	vmls.f32	s10, s12, s30
    9c86: 460c         	mov	r4, r1
    9c88: ee31 ea01    	vadd.f32	s28, s2, s2
    9c8c: 4681         	mov	r9, r0
    9c8e: ee02 ea4f    	vmls.f32	s28, s4, s30
    9c92: a834         	add	r0, sp, #0xd0
    9c94: a918         	add	r1, sp, #0x60
    9c96: ed8d 3a2c    	vstr	s6, [sp, #176]
    9c9a: ed8d 4a2d    	vstr	s8, [sp, #180]
    9c9e: eef0 aa40    	vmov.f32	s21, s0
    9ca2: ed8d 5a2e    	vstr	s10, [sp, #184]
    9ca6: ed8d 8a2f    	vstr	s16, [sp, #188]
    9caa: ed8d 9a30    	vstr	s18, [sp, #192]
    9cae: ed8d ba31    	vstr	s22, [sp, #196]
    9cb2: ed8d da32    	vstr	s26, [sp, #200]
    9cb6: ed8d ea33    	vstr	s28, [sp, #204]
    9cba: f7f6 fde9    	bl	0x890 <orange_dsp::generated_packed::origin::<5>> @ imm = #-0x942e
    9cbe: ed9f 1a9c    	vldr	s2, [pc, #624]          @ 0x9f30 <ram_probe::packed_probe::candidate+0x4c8>
    9cc2: 4621         	mov	r1, r4
    9cc4: ee28 aa01    	vmul.f32	s20, s16, s2
    9cc8: ed9f 3a9a    	vldr	s6, [pc, #616]          @ 0x9f34 <ram_probe::packed_probe::candidate+0x4cc>
    9ccc: ee29 7a01    	vmul.f32	s14, s18, s2
    9cd0: ed9f 5af6    	vldr	s10, [pc, #984]         @ 0xa0ac <ram_probe::packed_probe::candidate+0x644>
    9cd4: ed9f 0af6    	vldr	s0, [pc, #984]          @ 0xa0b0 <ram_probe::packed_probe::candidate+0x648>
    9cd8: ee2b ca01    	vmul.f32	s24, s22, s2
    9cdc: ee3a 4a03    	vadd.f32	s8, s20, s6
    9ce0: ed9f 2af4    	vldr	s4, [pc, #976]          @ 0xa0b4 <ram_probe::packed_probe::candidate+0x64c>
    9ce4: ee3a 6a05    	vadd.f32	s12, s20, s10
    9ce8: ed8d 7a57    	vstr	s14, [sp, #348]
    9cec: ee2d 8a01    	vmul.f32	s16, s26, s2
    9cf0: ed8d aa53    	vstr	s20, [sp, #332]
    9cf4: eec4 8a00    	vdiv.f32	s17, s8, s0
    9cf8: ed8d ca5b    	vstr	s24, [sp, #364]
    9cfc: ee37 4a03    	vadd.f32	s8, s14, s6
    9d00: edcd 8a55    	vstr	s17, [sp, #340]
    9d04: ee2e ea01    	vmul.f32	s28, s28, s2
    9d08: ed8d 8a5f    	vstr	s16, [sp, #380]
    9d0c: ee37 1a05    	vadd.f32	s2, s14, s10
    9d10: ed8d ea63    	vstr	s28, [sp, #396]
    9d14: eec6 fa00    	vdiv.f32	s31, s12, s0
    9d18: a867         	add	r0, sp, #0x19c
    9d1a: ee84 4a00    	vdiv.f32	s8, s8, s0
    9d1e: edcd fa56    	vstr	s31, [sp, #344]
    9d22: ee27 6a02    	vmul.f32	s12, s14, s4
    9d26: ed8d 4a59    	vstr	s8, [sp, #356]
    9d2a: ee81 1a00    	vdiv.f32	s2, s2, s0
    9d2e: ed8d 6a58    	vstr	s12, [sp, #352]
    9d32: ee3c 6a03    	vadd.f32	s12, s24, s6
    9d36: ed8d 1a5a    	vstr	s2, [sp, #360]
    9d3a: ee3c 4a05    	vadd.f32	s8, s24, s10
    9d3e: ee38 1a03    	vadd.f32	s2, s16, s6
    9d42: ee38 3a05    	vadd.f32	s6, s16, s10
    9d46: ee6a ea02    	vmul.f32	s29, s20, s4
    9d4a: ee2c da02    	vmul.f32	s26, s24, s4
    9d4e: edcd ea54    	vstr	s29, [sp, #336]
    9d52: ee86 7a00    	vdiv.f32	s14, s12, s0
    9d56: ed8d da5c    	vstr	s26, [sp, #368]
    9d5a: ee84 6a00    	vdiv.f32	s12, s8, s0
    9d5e: ed8d 7a14    	vstr	s14, [sp, #80]
    9d62: ee28 ba02    	vmul.f32	s22, s16, s4
    9d66: ed9f 2adc    	vldr	s4, [pc, #880]          @ 0xa0d8 <ram_probe::packed_probe::candidate+0x670>
    9d6a: ee81 4a00    	vdiv.f32	s8, s2, s0
    9d6e: ed9f 1adb    	vldr	s2, [pc, #876]          @ 0xa0dc <ram_probe::packed_probe::candidate+0x674>
    9d72: ee3e 1a01    	vadd.f32	s2, s28, s2
    9d76: ed8d 7a5d    	vstr	s14, [sp, #372]
    9d7a: ee3e 2a02    	vadd.f32	s4, s28, s4
    9d7e: ed8d 6a15    	vstr	s12, [sp, #84]
    9d82: ee83 3a00    	vdiv.f32	s6, s6, s0
    9d86: ed8d 6a5e    	vstr	s12, [sp, #376]
    9d8a: ed8d 3a13    	vstr	s6, [sp, #76]
    9d8e: ee81 1a00    	vdiv.f32	s2, s2, s0
    9d92: ed8d 3a62    	vstr	s6, [sp, #392]
    9d96: ed9f 3ad2    	vldr	s6, [pc, #840]          @ 0xa0e0 <ram_probe::packed_probe::candidate+0x678>
    9d9a: ee2e 3a03    	vmul.f32	s6, s28, s6
    9d9e: ed8d ba60    	vstr	s22, [sp, #384]
    9da2: ee82 0a00    	vdiv.f32	s0, s4, s0
    9da6: ed8d 4a12    	vstr	s8, [sp, #72]
    9daa: ed8d 4a61    	vstr	s8, [sp, #388]
    9dae: ed8d 3a11    	vstr	s6, [sp, #68]
    9db2: ed8d 3a64    	vstr	s6, [sp, #400]
    9db6: ed8d 1a10    	vstr	s2, [sp, #64]
    9dba: ed8d 1a65    	vstr	s2, [sp, #404]
    9dbe: ed8d 0a16    	vstr	s0, [sp, #88]
    9dc2: ed8d 0a66    	vstr	s0, [sp, #408]
    9dc6: c96c         	ldm	r1!, {r2, r3, r5, r6}
    9dc8: c06c         	stm	r0!, {r2, r3, r5, r6}
    9dca: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
    9dce: c06c         	stm	r0!, {r2, r3, r5, r6}
    9dd0: ed9d 9b34    	vldr	d9, [sp, #208]
    9dd4: 2000         	movs	r0, #0x0
    9dd6: 906f         	str	r0, [sp, #0x1bc]
    9dd8: ed9f 0bed    	vldr	d0, [pc, #948]          @ 0xa190 <ram_probe::packed_probe::candidate+0x728>
    9ddc: e9cd 0072    	strd	r0, r0, [sp, #456]
    9de0: ee29 0b00    	vmul.f64	d0, d9, d0
    9de4: e9cd 0070    	strd	r0, r0, [sp, #448]
    9de8: eeb7 2bc0    	vcvt.f32.f64	s4, d0
    9dec: ed9f 0abd    	vldr	s0, [pc, #756]          @ 0xa0e4 <ram_probe::packed_probe::candidate+0x67c>
    9df0: eeb0 1ac2    	vabs.f32	s2, s4
    9df4: eeb4 1a40    	vcmp.f32	s2, s0
    9df8: ed9d 0a67    	vldr	s0, [sp, #412]
    9dfc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e00: ed8d 2a67    	vstr	s4, [sp, #412]
    9e04: d838         	bhi	0x9e78 <ram_probe::packed_probe::candidate+0x410> @ imm = #0x70
    9e06: ed9f 4ae8    	vldr	s8, [pc, #928]          @ 0xa1a8 <ram_probe::packed_probe::candidate+0x740>
    9e0a: eeb7 3bc9    	vcvt.f32.f64	s6, d9
    9e0e: ee02 3a04    	vmla.f32	s6, s4, s8
    9e12: ee13 0a10    	vmov	r0, s6
    9e16: f020 4000    	bic	r0, r0, #0x80000000
    9e1a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9e1e: da2b         	bge	0x9e78 <ram_probe::packed_probe::candidate+0x410> @ imm = #0x56
    9e20: eeb0 2ac3    	vabs.f32	s4, s6
    9e24: ed9f 5ae1    	vldr	s10, [pc, #900]         @ 0xa1ac <ram_probe::packed_probe::candidate+0x744>
    9e28: ee82 2a05    	vdiv.f32	s4, s4, s10
    9e2c: ed9f 5ae0    	vldr	s10, [pc, #896]         @ 0xa1b0 <ram_probe::packed_probe::candidate+0x748>
    9e30: eeb4 2a45    	vcmp.f32	s4, s10
    9e34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e38: d81e         	bhi	0x9e78 <ram_probe::packed_probe::candidate+0x410> @ imm = #0x3c
    9e3a: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    9e3e: eeb4 1a41    	vcmp.f32	s2, s2
    9e42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e46: ee83 3a04    	vdiv.f32	s6, s6, s8
    9e4a: ed9f 4ada    	vldr	s8, [pc, #872]          @ 0xa1b4 <ram_probe::packed_probe::candidate+0x74c>
    9e4e: fe15 1a01    	vselvs.f32	s2, s10, s2
    9e52: eeb0 3ac3    	vabs.f32	s6, s6
    9e56: eeb4 1a45    	vcmp.f32	s2, s10
    9e5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e5e: fe31 1a05    	vselgt.f32	s2, s2, s10
    9e62: ee21 1a04    	vmul.f32	s2, s2, s8
    9e66: ed9f 4ad4    	vldr	s8, [pc, #848]          @ 0xa1b8 <ram_probe::packed_probe::candidate+0x750>
    9e6a: fe81 1a44    	vminnm.f32	s2, s2, s8
    9e6e: eeb4 3a41    	vcmp.f32	s6, s2
    9e72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e76: d95f         	bls	0x9f38 <ram_probe::packed_probe::candidate+0x4d0> @ imm = #0xbe
    9e78: ed8d 0a67    	vstr	s0, [sp, #412]
    9e7c: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    9e80: eeb0 0b49    	vmov.f64	d0, d9
    9e84: 3001         	adds	r0, #0x1
    9e86: f8c4 010c    	str.w	r0, [r4, #0x10c]
    9e8a: a874         	add	r0, sp, #0x1d0
    9e8c: a967         	add	r1, sp, #0x19c
    9e8e: f7fa fa97    	bl	0x43c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>> @ imm = #-0x5ad2
    9e92: f89d 01d5    	ldrb.w	r0, [sp, #0x1d5]
    9e96: f89d 51d4    	ldrb.w	r5, [sp, #0x1d4]
    9e9a: b1c8         	cbz	r0, 0x9ed0 <ram_probe::packed_probe::candidate+0x468> @ imm = #0x32
    9e9c: ed9d 0a74    	vldr	s0, [sp, #464]
    9ea0: ed9f 1ac6    	vldr	s2, [pc, #792]          @ 0xa1bc <ram_probe::packed_probe::candidate+0x754>
    9ea4: eeb4 0a40    	vcmp.f32	s0, s0
    9ea8: ed8d da0f    	vstr	s26, [sp, #60]
    9eac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9eb0: ed8d ba17    	vstr	s22, [sp, #92]
    9eb4: fe11 0a00    	vselvs.f32	s0, s2, s0
    9eb8: edcd aa0e    	vstr	s21, [sp, #56]
    9ebc: eeb5 0a40    	vcmp.f32	s0, #0
    9ec0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ec4: fe70 da01    	vselgt.f32	s27, s0, s2
    9ec8: e050         	b	0x9f6c <ram_probe::packed_probe::candidate+0x504> @ imm = #0xa0
    9eca: bf00         	nop
    9ecc: bf00         	nop
    9ece: bf00         	nop
    9ed0: eeb0 0b49    	vmov.f64	d0, d9
    9ed4: a874         	add	r0, sp, #0x1d0
    9ed6: a967         	add	r1, sp, #0x19c
    9ed8: 2600         	movs	r6, #0x0
    9eda: 9667         	str	r6, [sp, #0x19c]
    9edc: f7fa fa70    	bl	0x43c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1, false, 2>> @ imm = #-0x5b20
    9ee0: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    9ee4: ed9d 0a74    	vldr	s0, [sp, #464]
    9ee8: 3001         	adds	r0, #0x1
    9eea: eeb4 0a40    	vcmp.f32	s0, s0
    9eee: bf28         	it	hs
    9ef0: f04f 30ff    	movhs.w	r0, #0xffffffff
    9ef4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ef8: ed9f 1ab0    	vldr	s2, [pc, #704]          @ 0xa1bc <ram_probe::packed_probe::candidate+0x754>
    9efc: f89d 11d4    	ldrb.w	r1, [sp, #0x1d4]
    9f00: fe11 2a00    	vselvs.f32	s4, s2, s0
    9f04: f89d 21d5    	ldrb.w	r2, [sp, #0x1d5]
    9f08: 440d         	add	r5, r1
    9f0a: f8c4 011c    	str.w	r0, [r4, #0x11c]
    9f0e: eeb5 2a40    	vcmp.f32	s4, #0
    9f12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f16: fe72 da01    	vselgt.f32	s27, s4, s2
    9f1a: 2a00         	cmp	r2, #0x0
    9f1c: f000 82ba    	beq.w	0xa494 <ram_probe::packed_probe::candidate+0xa2c> @ imm = #0x574
    9f20: ed8d da0f    	vstr	s26, [sp, #60]
    9f24: ed8d ba17    	vstr	s22, [sp, #92]
    9f28: edcd aa0e    	vstr	s21, [sp, #56]
    9f2c: e01e         	b	0x9f6c <ram_probe::packed_probe::candidate+0x504> @ imm = #0x3c
    9f2e: bf00         	nop
    9f30: 00 80 bb 47  	.word	0x47bb8000
    9f34: 00 24 74 cb  	.word	0xcb742400
    9f38: eeb4 2a42    	vcmp.f32	s4, s4
    9f3c: ed9f 0a9f    	vldr	s0, [pc, #636]          @ 0xa1bc <ram_probe::packed_probe::candidate+0x754>
    9f40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f44: f8d4 0100    	ldr.w	r0, [r4, #0x100]
    9f48: ed8d da0f    	vstr	s26, [sp, #60]
    9f4c: fe10 1a02    	vselvs.f32	s2, s0, s4
    9f50: ed8d ba17    	vstr	s22, [sp, #92]
    9f54: edcd aa0e    	vstr	s21, [sp, #56]
    9f58: 3001         	adds	r0, #0x1
    9f5a: f8c4 0100    	str.w	r0, [r4, #0x100]
    9f5e: 2500         	movs	r5, #0x0
    9f60: eeb5 1a40    	vcmp.f32	s2, #0
    9f64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f68: fe71 da00    	vselgt.f32	s27, s2, s0
    9f6c: ed9d 0a67    	vldr	s0, [sp, #412]
    9f70: eeba da0b    	vmov.f32	s26, #-1.350000e+01
    9f74: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    9f78: ed9d 2a69    	vldr	s4, [sp, #420]
    9f7c: ed9f 1bcc    	vldr	d1, [pc, #816]          @ 0xa2b0 <ram_probe::packed_probe::candidate+0x848>
    9f80: eef2 ca0b    	vmov.f32	s25, #1.350000e+01
    9f84: ed9d 9b44    	vldr	d9, [sp, #272]
    9f88: ee00 9b01    	vmla.f64	d9, d0, d1
    9f8c: ed9d 0a6a    	vldr	s0, [sp, #424]
    9f90: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    9f94: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    9f98: ed9f bbc7    	vldr	d11, [pc, #796]         @ 0xa2b8 <ram_probe::packed_probe::candidate+0x850>
    9f9c: eeb0 2b49    	vmov.f64	d2, d9
    9fa0: ee01 2b0b    	vmla.f64	d2, d1, d11
    9fa4: ed9d 1a6c    	vldr	s2, [sp, #432]
    9fa8: ee00 2b0b    	vmla.f64	d2, d0, d11
    9fac: ed9d 0a6b    	vldr	s0, [sp, #428]
    9fb0: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    9fb4: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    9fb8: ed8d 9b44    	vstr	d9, [sp, #272]
    9fbc: ee00 2b0b    	vmla.f64	d2, d0, d11
    9fc0: ed9d 0a6d    	vldr	s0, [sp, #436]
    9fc4: ee01 2b0b    	vmla.f64	d2, d1, d11
    9fc8: ed9d 1a6e    	vldr	s2, [sp, #440]
    9fcc: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    9fd0: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    9fd4: ee00 2b0b    	vmla.f64	d2, d0, d11
    9fd8: ee01 2b0b    	vmla.f64	d2, d1, d11
    9fdc: eeb7 1aca    	vcvt.f64.f32	d1, s20
    9fe0: ed9f 0bb7    	vldr	d0, [pc, #732]          @ 0xa2c0 <ram_probe::packed_probe::candidate+0x858>
    9fe4: ee22 0b00    	vmul.f64	d0, d2, d0
    9fe8: ed9f 2bb7    	vldr	d2, [pc, #732]          @ 0xa2c8 <ram_probe::packed_probe::candidate+0x860>
    9fec: ee01 0b02    	vmla.f64	d0, d1, d2
    9ff0: ed9f 1bb7    	vldr	d1, [pc, #732]          @ 0xa2d0 <ram_probe::packed_probe::candidate+0x868>
    9ff4: ee20 0b01    	vmul.f64	d0, d0, d1
    9ff8: ed9d ab36    	vldr	d10, [sp, #216]
    9ffc: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    a000: eeb4 da40    	vcmp.f32	s26, s0
    a004: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a008: fe3d 0a00    	vselgt.f32	s0, s26, s0
    a00c: eeb4 0a6c    	vcmp.f32	s0, s25
    a010: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a014: eef4 8a6f    	vcmp.f32	s17, s31
    a018: fe3c 2a80    	vselgt.f32	s4, s25, s0
    a01c: ed9d 0a68    	vldr	s0, [sp, #416]
    a020: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a024: ed8d 2a68    	vstr	s4, [sp, #416]
    a028: f201 86ea    	bhi.w	0xbe00 <ram_probe::packed_probe::candidate+0x2398> @ imm = #0x1dd4
    a02c: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    a030: ed9f 5ac5    	vldr	s10, [pc, #788]         @ 0xa348 <ram_probe::packed_probe::candidate+0x8e0>
    a034: ed9f 3ba8    	vldr	d3, [pc, #672]          @ 0xa2d8 <ram_probe::packed_probe::candidate+0x870>
    a038: eeb0 4b49    	vmov.f64	d4, d9
    a03c: ee01 4b03    	vmla.f64	d4, d1, d3
    a040: ed9f 3ac2    	vldr	s6, [pc, #776]          @ 0xa34c <ram_probe::packed_probe::candidate+0x8e4>
    a044: eeb7 1bc4    	vcvt.f32.f64	s2, d4
    a048: eeb7 4bca    	vcvt.f32.f64	s8, d10
    a04c: ee41 ea03    	vmla.f32	s29, s2, s6
    a050: ed9f 1abf    	vldr	s2, [pc, #764]          @ 0xa350 <ram_probe::packed_probe::candidate+0x8e8>
    a054: ee02 4a01    	vmla.f32	s8, s4, s2
    a058: eef4 8a6e    	vcmp.f32	s17, s29
    a05c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a060: eeb0 3ac4    	vabs.f32	s6, s8
    a064: fe38 1aae    	vselgt.f32	s2, s17, s29
    a068: eeb4 1a6f    	vcmp.f32	s2, s31
    a06c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a070: eeb4 3a45    	vcmp.f32	s6, s10
    a074: fe3f 1a81    	vselgt.f32	s2, s31, s2
    a078: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a07c: da1c         	bge	0xa0b8 <ram_probe::packed_probe::candidate+0x650> @ imm = #0x38
    a07e: ed9f 5ab5    	vldr	s10, [pc, #724]         @ 0xa354 <ram_probe::packed_probe::candidate+0x8ec>
    a082: eeb4 3a45    	vcmp.f32	s6, s10
    a086: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a08a: d921         	bls	0xa0d0 <ram_probe::packed_probe::candidate+0x668> @ imm = #0x42
    a08c: ed9f 5ae5    	vldr	s10, [pc, #916]         @ 0xa424 <ram_probe::packed_probe::candidate+0x9bc>
    a090: eeb4 3a45    	vcmp.f32	s6, s10
    a094: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a098: d926         	bls	0xa0e8 <ram_probe::packed_probe::candidate+0x680> @ imm = #0x4c
    a09a: ed9f 5ae3    	vldr	s10, [pc, #908]         @ 0xa428 <ram_probe::packed_probe::candidate+0x9c0>
    a09e: ee33 6a05    	vadd.f32	s12, s6, s10
    a0a2: ed9f 7ae2    	vldr	s14, [pc, #904]         @ 0xa42c <ram_probe::packed_probe::candidate+0x9c4>
    a0a6: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    a0aa: e025         	b	0xa0f8 <ram_probe::packed_probe::candidate+0x690> @ imm = #0x4a
    a0ac: 00 24 74 4b  	.word	0x4b742400
    a0b0: 00 a0 0c 48  	.word	0x480ca000
    a0b4: 50 d0 e8 36  	.word	0x36e8d050
    a0b8: eddf 2a40    	vldr	s5, [pc, #256]          @ 0xa1bc <ram_probe::packed_probe::candidate+0x754>
    a0bc: eef0 3a62    	vmov.f32	s7, s5
    a0c0: eef0 0a62    	vmov.f32	s1, s5
    a0c4: eeb0 7a62    	vmov.f32	s14, s5
    a0c8: eeb0 6a62    	vmov.f32	s12, s5
    a0cc: e09d         	b	0xa20a <ram_probe::packed_probe::candidate+0x7a2> @ imm = #0x13a
    a0ce: bf00         	nop
    a0d0: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    a0d4: e012         	b	0xa0fc <ram_probe::packed_probe::candidate+0x694> @ imm = #0x24
    a0d6: bf00         	nop
    a0d8: 00 24 f4 4a  	.word	0x4af42400
    a0dc: 00 24 f4 ca  	.word	0xcaf42400
    a0e0: df ff e7 36  	.word	0x36e7ffdf
    a0e4: 93 18 36 41  	.word	0x41361893
    a0e8: ed9f 5ad1    	vldr	s10, [pc, #836]         @ 0xa430 <ram_probe::packed_probe::candidate+0x9c8>
    a0ec: ee33 6a05    	vadd.f32	s12, s6, s10
    a0f0: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    a0f4: ed9f 7acf    	vldr	s14, [pc, #828]         @ 0xa434 <ram_probe::packed_probe::candidate+0x9cc>
    a0f8: ee06 5a07    	vmla.f32	s10, s12, s14
    a0fc: eeb2 6a0e    	vmov.f32	s12, #1.500000e+01
    a100: eddf 2a2e    	vldr	s5, [pc, #184]          @ 0xa1bc <ram_probe::packed_probe::candidate+0x754>
    a104: ee36 5a45    	vsub.f32	s10, s12, s10
    a108: fe85 6a22    	vmaxnm.f32	s12, s10, s5
    a10c: eeb5 6a40    	vcmp.f32	s12, #0
    a110: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a114: d940         	bls	0xa198 <ram_probe::packed_probe::candidate+0x730> @ imm = #0x80
    a116: eeb0 5ac1    	vabs.f32	s10, s2
    a11a: eeb4 5a46    	vcmp.f32	s10, s12
    a11e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a122: dd4d         	ble	0xa1c0 <ram_probe::packed_probe::candidate+0x758> @ imm = #0x9a
    a124: ee86 5a05    	vdiv.f32	s10, s12, s10
    a128: ee25 7a05    	vmul.f32	s14, s10, s10
    a12c: ee27 7a07    	vmul.f32	s14, s14, s14
    a130: ee27 7a07    	vmul.f32	s14, s14, s14
    a134: ee67 0a07    	vmul.f32	s1, s14, s14
    a138: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    a13c: ee70 2a87    	vadd.f32	s5, s1, s14
    a140: eef0 1a47    	vmov.f32	s3, s14
    a144: eef4 2a47    	vcmp.f32	s5, s14
    a148: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a14c: d009         	beq	0xa162 <ram_probe::packed_probe::candidate+0x6fa> @ imm = #0x12
    a14e: eef1 2ae2    	vsqrt.f32	s5, s5
    a152: eef1 2ae2    	vsqrt.f32	s5, s5
    a156: eef1 2ae2    	vsqrt.f32	s5, s5
    a15a: eef1 2ae2    	vsqrt.f32	s5, s5
    a15e: eef0 1a62    	vmov.f32	s3, s5
    a162: ee11 0a10    	vmov	r0, s2
    a166: f04f 517e    	mov.w	r1, #0x3f800000
    a16a: eec7 3a21    	vdiv.f32	s7, s14, s3
    a16e: eddf 1acf    	vldr	s3, [pc, #828]          @ 0xa4ac <ram_probe::packed_probe::candidate+0xa44>
    a172: eeb4 1a41    	vcmp.f32	s2, s2
    a176: f361 001e    	bfi	r0, r1, #0, #31
    a17a: ee02 0a90    	vmov	s5, r0
    a17e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a182: ee22 7a86    	vmul.f32	s14, s5, s12
    a186: ee27 7a23    	vmul.f32	s14, s14, s7
    a18a: fe11 7a87    	vselvs.f32	s14, s3, s14
    a18e: e03a         	b	0xa206 <ram_probe::packed_probe::candidate+0x79e> @ imm = #0x74
    a190: 33 05 95 0b  	.word	0x0b950533
    a194: 5d a0 da 40  	.word	0x40daa05d
    a198: eef0 3a62    	vmov.f32	s7, s5
    a19c: eef0 0a62    	vmov.f32	s1, s5
    a1a0: eeb0 7a62    	vmov.f32	s14, s5
    a1a4: e031         	b	0xa20a <ram_probe::packed_probe::candidate+0x7a2> @ imm = #0x62
    a1a6: bf00         	nop
    a1a8: 09 d5 19 b8  	.word	0xb819d509
    a1ac: 0a d7 23 3c  	.word	0x3c23d70a
    a1b0: 17 b7 d1 38  	.word	0x38d1b717
    a1b4: bd 37 06 36  	.word	0x360637bd
    a1b8: ac c5 a7 37  	.word	0x37a7c5ac
    a1bc: 00 00 00 00  	.word	0x00000000
    a1c0: ee81 5a06    	vdiv.f32	s10, s2, s12
    a1c4: ee25 7a05    	vmul.f32	s14, s10, s10
    a1c8: ee27 7a07    	vmul.f32	s14, s14, s14
    a1cc: ee27 7a07    	vmul.f32	s14, s14, s14
    a1d0: ee67 0a07    	vmul.f32	s1, s14, s14
    a1d4: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    a1d8: ee70 1a87    	vadd.f32	s3, s1, s14
    a1dc: eef0 2a47    	vmov.f32	s5, s14
    a1e0: eef4 1a47    	vcmp.f32	s3, s14
    a1e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a1e8: d009         	beq	0xa1fe <ram_probe::packed_probe::candidate+0x796> @ imm = #0x12
    a1ea: eef1 1ae1    	vsqrt.f32	s3, s3
    a1ee: eef1 1ae1    	vsqrt.f32	s3, s3
    a1f2: eef1 1ae1    	vsqrt.f32	s3, s3
    a1f6: eef1 1ae1    	vsqrt.f32	s3, s3
    a1fa: eef0 2a61    	vmov.f32	s5, s3
    a1fe: eec7 3a22    	vdiv.f32	s7, s14, s5
    a202: ee21 7a23    	vmul.f32	s14, s2, s7
    a206: ee60 2a85    	vmul.f32	s5, s1, s10
    a20a: ee32 7a47    	vsub.f32	s14, s4, s14
    a20e: ee17 0a10    	vmov	r0, s14
    a212: f020 4000    	bic	r0, r0, #0x80000000
    a216: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a21a: f280 80d7    	bge.w	0xa3cc <ram_probe::packed_probe::candidate+0x964> @ imm = #0x1ae
    a21e: eeb0 5ac7    	vabs.f32	s10, s14
    a222: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    a226: ee85 5a21    	vdiv.f32	s10, s10, s3
    a22a: ed5f 1a1f    	vldr	s3, [pc, #-124]         @ 0xa1b0 <ram_probe::packed_probe::candidate+0x748>
    a22e: eeb4 5a61    	vcmp.f32	s10, s3
    a232: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a236: f200 80c9    	bhi.w	0xa3cc <ram_probe::packed_probe::candidate+0x964> @ imm = #0x192
    a23a: ed5f 4a20    	vldr	s9, [pc, #-128]         @ 0xa1bc <ram_probe::packed_probe::candidate+0x754>
    a23e: 2100         	movs	r1, #0x0
    a240: eef0 1a64    	vmov.f32	s3, s9
    a244: eef0 5a64    	vmov.f32	s11, s9
    a248: eef4 ea68    	vcmp.f32	s29, s17
    a24c: 2000         	movs	r0, #0x0
    a24e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a252: bfc8         	it	gt
    a254: 2101         	movgt	r1, #0x1
    a256: eef4 ea6f    	vcmp.f32	s29, s31
    a25a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a25e: eeb5 6a40    	vcmp.f32	s12, #0
    a262: bf48         	it	mi
    a264: 2001         	movmi	r0, #0x1
    a266: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a26a: d93f         	bls	0xa2ec <ram_probe::packed_probe::candidate+0x884> @ imm = #0x7e
    a26c: eef7 1a00    	vmov.f32	s3, #1.000000e+00
    a270: ee70 1aa1    	vadd.f32	s3, s1, s3
    a274: eec3 1aa1    	vdiv.f32	s3, s7, s3
    a278: eef0 3ac1    	vabs.f32	s7, s2
    a27c: eef4 3a46    	vcmp.f32	s7, s12
    a280: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a284: dd2c         	ble	0xa2e0 <ram_probe::packed_probe::candidate+0x878> @ imm = #0x58
    a286: ee11 2a10    	vmov	r2, s2
    a28a: f04f 537e    	mov.w	r3, #0x3f800000
    a28e: eeb4 1a41    	vcmp.f32	s2, s2
    a292: eddf 0a86    	vldr	s1, [pc, #536]          @ 0xa4ac <ram_probe::packed_probe::candidate+0xa44>
    a296: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a29a: f363 021e    	bfi	r2, r3, #0, #31
    a29e: ee06 2a10    	vmov	s12, r2
    a2a2: ee26 6a21    	vmul.f32	s12, s12, s3
    a2a6: ee62 1aa1    	vmul.f32	s3, s5, s3
    a2aa: fe50 5a86    	vselvs.f32	s11, s1, s12
    a2ae: e01d         	b	0xa2ec <ram_probe::packed_probe::candidate+0x884> @ imm = #0x3a
    a2b0: a2 0c d2 2e  	.word	0x2ed20ca2
    a2b4: ca fe ef 3f  	.word	0x3feffeca
		...
    a2c0: 26 88 21 19  	.word	0x19218826
    a2c4: 2f cc 65 40  	.word	0x4065cc2f
    a2c8: 93 86 c3 ff  	.word	0xffc38693
    a2cc: 09 1a dd 3e  	.word	0x3edd1a09
    a2d0: 55 a3 92 79  	.word	0x7992a355
    a2d4: c6 0f c6 3f  	.word	0x3fc60fc6
    a2d8: 1f 89 9b cf  	.word	0xcf9b891f
    a2dc: ab 32 9c bf  	.word	0xbf9c32ab
    a2e0: ee61 0a20    	vmul.f32	s1, s2, s1
    a2e4: ee80 6a86    	vdiv.f32	s12, s1, s12
    a2e8: ee61 5a86    	vmul.f32	s11, s3, s12
    a2ec: eebf 6a00    	vmov.f32	s12, #-1.000000e+00
    a2f0: eeb5 4a40    	vcmp.f32	s8, #0
    a2f4: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    a2f8: eef0 0a64    	vmov.f32	s1, s9
    a2fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a300: bf48         	it	mi
    a302: eef0 0a46    	vmovmi.f32	s1, s12
    a306: ea00 0001    	and.w	r0, r0, r1
    a30a: fe34 6a20    	vselgt.f32	s12, s8, s1
    a30e: eddf 0a0e    	vldr	s1, [pc, #56]           @ 0xa348 <ram_probe::packed_probe::candidate+0x8e0>
    a312: eeb4 3a60    	vcmp.f32	s6, s1
    a316: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a31a: da23         	bge	0xa364 <ram_probe::packed_probe::candidate+0x8fc> @ imm = #0x46
    a31c: eddf 0a0d    	vldr	s1, [pc, #52]           @ 0xa354 <ram_probe::packed_probe::candidate+0x8ec>
    a320: eeb4 3a60    	vcmp.f32	s6, s1
    a324: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a328: d90a         	bls	0xa340 <ram_probe::packed_probe::candidate+0x8d8> @ imm = #0x14
    a32a: eddf 0a3e    	vldr	s1, [pc, #248]          @ 0xa424 <ram_probe::packed_probe::candidate+0x9bc>
    a32e: eeb4 3a60    	vcmp.f32	s6, s1
    a332: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a336: d90f         	bls	0xa358 <ram_probe::packed_probe::candidate+0x8f0> @ imm = #0x1e
    a338: ed9f 3a3c    	vldr	s6, [pc, #240]          @ 0xa42c <ram_probe::packed_probe::candidate+0x9c4>
    a33c: e00e         	b	0xa35c <ram_probe::packed_probe::candidate+0x8f4> @ imm = #0x1c
    a33e: bf00         	nop
    a340: ed1f 3a62    	vldr	s6, [pc, #-392]         @ 0xa1bc <ram_probe::packed_probe::candidate+0x754>
    a344: e00c         	b	0xa360 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x18
    a346: bf00         	nop
    a348: 0a d7 23 3d  	.word	0x3d23d70a
    a34c: 79 61 2e 43  	.word	0x432e6179
    a350: ab aa a0 b8  	.word	0xb8a0aaab
    a354: 7c f2 b0 3a  	.word	0x3ab0f27c
    a358: ed9f 3a36    	vldr	s6, [pc, #216]          @ 0xa434 <ram_probe::packed_probe::candidate+0x9cc>
    a35c: ee26 3a03    	vmul.f32	s6, s12, s6
    a360: eef1 4a43    	vneg.f32	s9, s6
    a364: 2800         	cmp	r0, #0x0
    a366: ed9f 3a7c    	vldr	s6, [pc, #496]          @ 0xa558 <ram_probe::packed_probe::candidate+0xaf0>
    a36a: ed9f 6a7c    	vldr	s12, [pc, #496]         @ 0xa55c <ram_probe::packed_probe::candidate+0xaf4>
    a36e: eeb0 2ac2    	vabs.f32	s4, s4
    a372: fe06 3a03    	vseleq.f32	s6, s12, s6
    a376: ed9f 6a7a    	vldr	s12, [pc, #488]         @ 0xa560 <ram_probe::packed_probe::candidate+0xaf8>
    a37a: eddf 0a7a    	vldr	s1, [pc, #488]          @ 0xa564 <ram_probe::packed_probe::candidate+0xafc>
    a37e: eeb4 2a42    	vcmp.f32	s4, s4
    a382: ee23 3a21    	vmul.f32	s6, s6, s3
    a386: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a38a: ee23 3a06    	vmul.f32	s6, s6, s12
    a38e: ee25 6aa4    	vmul.f32	s12, s11, s9
    a392: fe14 2a02    	vselvs.f32	s4, s8, s4
    a396: ee06 3a20    	vmla.f32	s6, s12, s1
    a39a: eeb4 2a44    	vcmp.f32	s4, s8
    a39e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3a2: fe32 2a04    	vselgt.f32	s4, s4, s8
    a3a6: ee33 3a04    	vadd.f32	s6, s6, s8
    a3aa: ed1f 4a7e    	vldr	s8, [pc, #-504]         @ 0xa1b4 <ram_probe::packed_probe::candidate+0x74c>
    a3ae: ee22 2a04    	vmul.f32	s4, s4, s8
    a3b2: ed1f 4a7f    	vldr	s8, [pc, #-508]         @ 0xa1b8 <ram_probe::packed_probe::candidate+0x750>
    a3b6: ee87 3a03    	vdiv.f32	s6, s14, s6
    a3ba: fe82 2a44    	vminnm.f32	s4, s4, s8
    a3be: eeb0 3ac3    	vabs.f32	s6, s6
    a3c2: eeb4 3a42    	vcmp.f32	s6, s4
    a3c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3ca: d975         	bls	0xa4b8 <ram_probe::packed_probe::candidate+0xa50> @ imm = #0xea
    a3cc: ed8d 0a68    	vstr	s0, [sp, #416]
    a3d0: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    a3d4: eeb0 0b4a    	vmov.f64	d0, d10
    a3d8: 3001         	adds	r0, #0x1
    a3da: eeb0 1b49    	vmov.f64	d1, d9
    a3de: f8c4 010c    	str.w	r0, [r4, #0x10c]
    a3e2: a874         	add	r0, sp, #0x1d0
    a3e4: a967         	add	r1, sp, #0x19c
    a3e6: aa53         	add	r2, sp, #0x14c
    a3e8: ab6f         	add	r3, sp, #0x1bc
    a3ea: f7fa fa31    	bl	0x4850 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>> @ imm = #-0x5b9e
    a3ee: f89d 01d5    	ldrb.w	r0, [sp, #0x1d5]
    a3f2: f89d 11d4    	ldrb.w	r1, [sp, #0x1d4]
    a3f6: 440d         	add	r5, r1
    a3f8: b1f0         	cbz	r0, 0xa438 <ram_probe::packed_probe::candidate+0x9d0> @ imm = #0x3c
    a3fa: eef4 da6d    	vcmp.f32	s27, s27
    a3fe: ed9d 0a74    	vldr	s0, [sp, #464]
    a402: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a406: eeb4 0a40    	vcmp.f32	s0, s0
    a40a: fe10 1a2d    	vselvs.f32	s2, s0, s27
    a40e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a412: fe11 0a00    	vselvs.f32	s0, s2, s0
    a416: eeb4 1a40    	vcmp.f32	s2, s0
    a41a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a41e: fe31 9a00    	vselgt.f32	s18, s2, s0
    a422: e062         	b	0xa4ea <ram_probe::packed_probe::candidate+0xa82> @ imm = #0xc4
    a424: a6 9b c4 3b  	.word	0x3bc49ba6
    a428: a6 9b c4 bb  	.word	0xbbc49ba6
    a42c: 79 78 b0 43  	.word	0x43b07879
    a430: 7c f2 b0 ba  	.word	0xbab0f27c
    a434: 53 4a a1 43  	.word	0x43a14a53
    a438: eeb0 0b4a    	vmov.f64	d0, d10
    a43c: a874         	add	r0, sp, #0x1d0
    a43e: eeb0 1b49    	vmov.f64	d1, d9
    a442: a967         	add	r1, sp, #0x19c
    a444: aa53         	add	r2, sp, #0x14c
    a446: ab6f         	add	r3, sp, #0x1bc
    a448: 2600         	movs	r6, #0x0
    a44a: 9668         	str	r6, [sp, #0x1a0]
    a44c: f7fa fa00    	bl	0x4850 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1, false, 6>> @ imm = #-0x5c00
    a450: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    a454: eef4 da6d    	vcmp.f32	s27, s27
    a458: 3001         	adds	r0, #0x1
    a45a: bf28         	it	hs
    a45c: f04f 30ff    	movhs.w	r0, #0xffffffff
    a460: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a464: ed9d 0a74    	vldr	s0, [sp, #464]
    a468: f89d 11d4    	ldrb.w	r1, [sp, #0x1d4]
    a46c: fe10 1a2d    	vselvs.f32	s2, s0, s27
    a470: f89d 21d5    	ldrb.w	r2, [sp, #0x1d5]
    a474: eeb4 0a40    	vcmp.f32	s0, s0
    a478: 440d         	add	r5, r1
    a47a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a47e: f8c4 011c    	str.w	r0, [r4, #0x11c]
    a482: fe11 2a00    	vselvs.f32	s4, s2, s0
    a486: eeb4 1a42    	vcmp.f32	s2, s4
    a48a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a48e: fe31 9a02    	vselgt.f32	s18, s2, s4
    a492: bb52         	cbnz	r2, 0xa4ea <ram_probe::packed_probe::candidate+0xa82> @ imm = #0x54
    a494: 69e0         	ldr	r0, [r4, #0x1c]
    a496: f8c9 0000    	str.w	r0, [r9]
    a49a: ed89 0a01    	vstr	s0, [r9, #4]
    a49e: f889 5008    	strb.w	r5, [r9, #0x8]
    a4a2: f889 6009    	strb.w	r6, [r9, #0x9]
    a4a6: f001 bca0    	b.w	0xbdea <ram_probe::packed_probe::candidate+0x2382> @ imm = #0x1940
    a4aa: bf00         	nop
    a4ac: 00 00 c0 7f  	.word	0x7fc00000
    a4b0: a5 94 a7 50  	.word	0x50a794a5
    a4b4: 09 2c d5 3f  	.word	0x3fd52c09
    a4b8: eef4 da6d    	vcmp.f32	s27, s27
    a4bc: f8d4 0104    	ldr.w	r0, [r4, #0x104]
    a4c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4c4: eeb4 5a45    	vcmp.f32	s10, s10
    a4c8: ed8d 1a6f    	vstr	s2, [sp, #444]
    a4cc: fe15 0a2d    	vselvs.f32	s0, s10, s27
    a4d0: 3001         	adds	r0, #0x1
    a4d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4d6: f8c4 0104    	str.w	r0, [r4, #0x104]
    a4da: fe10 2a05    	vselvs.f32	s4, s0, s10
    a4de: eeb4 0a42    	vcmp.f32	s0, s4
    a4e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4e6: fe30 9a02    	vselgt.f32	s18, s0, s4
    a4ea: ed9d 0a68    	vldr	s0, [sp, #416]
    a4ee: f50d 78e8    	add.w	r8, sp, #0x1d0
    a4f2: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a4f6: a967         	add	r1, sp, #0x19c
    a4f8: ed1f 2b13    	vldr	d2, [pc, #-76]          @ 0xa4b0 <ram_probe::packed_probe::candidate+0xa48>
    a4fc: aa34         	add	r2, sp, #0xd0
    a4fe: ab53         	add	r3, sp, #0x14c
    a500: ed9d 1b46    	vldr	d1, [sp, #280]
    a504: 4640         	mov	r0, r8
    a506: f50d 7ade    	add.w	r10, sp, #0x1bc
    a50a: ee00 1b02    	vmla.f64	d1, d0, d2
    a50e: f8cd a000    	str.w	r10, [sp]
    a512: ed8d 1b46    	vstr	d1, [sp, #280]
    a516: f7fa fcff    	bl	0x4f18 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>> @ imm = #-0x5602
    a51a: f89d 01d5    	ldrb.w	r0, [sp, #0x1d5]
    a51e: f89d 11d4    	ldrb.w	r1, [sp, #0x1d4]
    a522: 2801         	cmp	r0, #0x1
    a524: eb01 0b05    	add.w	r11, r1, r5
    a528: d11e         	bne	0xa568 <ram_probe::packed_probe::candidate+0xb00> @ imm = #0x3c
    a52a: eeb4 9a49    	vcmp.f32	s18, s18
    a52e: ed9d 0a74    	vldr	s0, [sp, #464]
    a532: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a536: eeb4 0a40    	vcmp.f32	s0, s0
    a53a: fe10 1a09    	vselvs.f32	s2, s0, s18
    a53e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a542: fe11 0a00    	vselvs.f32	s0, s2, s0
    a546: eeb4 1a40    	vcmp.f32	s2, s0
    a54a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a54e: fe31 0a00    	vselgt.f32	s0, s2, s0
    a552: ed8d 0a0d    	vstr	s0, [sp, #52]
    a556: e038         	b	0xa5ca <ram_probe::packed_probe::candidate+0xb62> @ imm = #0x70
    a558: 79 61 2e c3  	.word	0xc32e6179
    a55c: 00 00 00 80  	.word	0x80000000
    a560: 5e 95 e1 bc  	.word	0xbce1955e
    a564: ab aa a0 38  	.word	0x38a0aaab
    a568: a874         	add	r0, sp, #0x1d0
    a56a: a967         	add	r1, sp, #0x19c
    a56c: aa34         	add	r2, sp, #0xd0
    a56e: ab53         	add	r3, sp, #0x14c
    a570: 2600         	movs	r6, #0x0
    a572: f8cd a000    	str.w	r10, [sp]
    a576: e9cd 6669    	strd	r6, r6, [sp, #420]
    a57a: f7fa fccd    	bl	0x4f18 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2, false, 6>> @ imm = #-0x5666
    a57e: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    a582: eeb4 9a49    	vcmp.f32	s18, s18
    a586: 3001         	adds	r0, #0x1
    a588: bf28         	it	hs
    a58a: f04f 30ff    	movhs.w	r0, #0xffffffff
    a58e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a592: ed9d 0a74    	vldr	s0, [sp, #464]
    a596: f89d 11d4    	ldrb.w	r1, [sp, #0x1d4]
    a59a: fe10 1a09    	vselvs.f32	s2, s0, s18
    a59e: f89d 21d5    	ldrb.w	r2, [sp, #0x1d5]
    a5a2: eeb4 0a40    	vcmp.f32	s0, s0
    a5a6: 448b         	add	r11, r1
    a5a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5ac: f8c4 011c    	str.w	r0, [r4, #0x11c]
    a5b0: fe11 2a00    	vselvs.f32	s4, s2, s0
    a5b4: eeb4 1a42    	vcmp.f32	s2, s4
    a5b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5bc: fe31 1a02    	vselgt.f32	s2, s2, s4
    a5c0: 2a00         	cmp	r2, #0x0
    a5c2: f001 8321    	beq.w	0xbc08 <ram_probe::packed_probe::candidate+0x21a0> @ imm = #0x1642
    a5c6: ed8d 1a0d    	vstr	s2, [sp, #52]
    a5ca: ed9d 0a69    	vldr	s0, [sp, #420]
    a5ce: ed9d 2a6a    	vldr	s4, [sp, #424]
    a5d2: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a5d6: eddf eaf9    	vldr	s29, [pc, #996]         @ 0xa9bc <ram_probe::packed_probe::candidate+0xf54>
    a5da: ed9f 1bf9    	vldr	d1, [pc, #996]          @ 0xa9c0 <ram_probe::packed_probe::candidate+0xf58>
    a5de: eeb7 3acc    	vcvt.f64.f32	d3, s24
    a5e2: ed9d 6b48    	vldr	d6, [sp, #288]
    a5e6: ee00 6b01    	vmla.f64	d6, d0, d1
    a5ea: eeb7 0ac2    	vcvt.f64.f32	d0, s4
    a5ee: ed9d 2a6c    	vldr	s4, [sp, #432]
    a5f2: ed9f 1bf5    	vldr	d1, [pc, #980]          @ 0xa9c8 <ram_probe::packed_probe::candidate+0xf60>
    a5f6: ed8d 2a0c    	vstr	s4, [sp, #48]
    a5fa: ee00 6b01    	vmla.f64	d6, d0, d1
    a5fe: eeb7 0ac2    	vcvt.f64.f32	d0, s4
    a602: ed9d 2a6d    	vldr	s4, [sp, #436]
    a606: ed8d 2a0b    	vstr	s4, [sp, #44]
    a60a: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    a60e: eeb0 1b46    	vmov.f64	d1, d6
    a612: ee00 1b0b    	vmla.f64	d1, d0, d11
    a616: ee22 0b0b    	vmul.f64	d0, d2, d11
    a61a: ed9d 2a6e    	vldr	s4, [sp, #440]
    a61e: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    a622: ee31 1b00    	vadd.f64	d1, d1, d0
    a626: ee22 2b0b    	vmul.f64	d2, d2, d11
    a62a: ed1f 5bdb    	vldr	d5, [pc, #-876]         @ 0xa2c0 <ram_probe::packed_probe::candidate+0x858>
    a62e: ee31 1b02    	vadd.f64	d1, d1, d2
    a632: ed1f 7bdb    	vldr	d7, [pc, #-876]         @ 0xa2c8 <ram_probe::packed_probe::candidate+0x860>
    a636: ee21 1b05    	vmul.f64	d1, d1, d5
    a63a: ee03 1b07    	vmla.f64	d1, d3, d7
    a63e: ed9f 3be4    	vldr	d3, [pc, #912]          @ 0xa9d0 <ram_probe::packed_probe::candidate+0xf68>
    a642: ee21 1b03    	vmul.f64	d1, d1, d3
    a646: ed9f 3be4    	vldr	d3, [pc, #912]          @ 0xa9d8 <ram_probe::packed_probe::candidate+0xf70>
    a64a: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    a64e: ed9d bb4a    	vldr	d11, [sp, #296]
    a652: eeb4 da41    	vcmp.f32	s26, s2
    a656: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a65a: ed9d ab40    	vldr	d10, [sp, #256]
    a65e: fe3d 1a01    	vselgt.f32	s2, s26, s2
    a662: ed8d ab06    	vstr	d10, [sp, #24]
    a666: eeb4 1a6c    	vcmp.f32	s2, s25
    a66a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a66e: ed8d 6b48    	vstr	d6, [sp, #288]
    a672: fe7c 4a81    	vselgt.f32	s9, s25, s2
    a676: edcd 4a09    	vstr	s9, [sp, #36]
    a67a: eeb7 1ae4    	vcvt.f64.f32	d1, s9
    a67e: ee01 bb03    	vmla.f64	d11, d1, d3
    a682: ed9d 3b4e    	vldr	d3, [sp, #312]
    a686: ee30 0b0b    	vadd.f64	d0, d0, d11
    a68a: ee32 0b00    	vadd.f64	d0, d2, d0
    a68e: eeb7 2ac8    	vcvt.f64.f32	d2, s16
    a692: ed9f 8bd3    	vldr	d8, [pc, #844]          @ 0xa9e0 <ram_probe::packed_probe::candidate+0xf78>
    a696: ee20 0b05    	vmul.f64	d0, d0, d5
    a69a: ee02 0b07    	vmla.f64	d0, d2, d7
    a69e: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xa9e8 <ram_probe::packed_probe::candidate+0xf80>
    a6a2: ee20 0b02    	vmul.f64	d0, d0, d2
    a6a6: ed9f 2ade    	vldr	s4, [pc, #888]          @ 0xaa20 <ram_probe::packed_probe::candidate+0xfb8>
    a6aa: ed9f 7bdf    	vldr	d7, [pc, #892]          @ 0xaa28 <ram_probe::packed_probe::candidate+0xfc0>
    a6ae: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    a6b2: eeb4 da40    	vcmp.f32	s26, s0
    a6b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a6ba: fe3d 0a00    	vselgt.f32	s0, s26, s0
    a6be: ed9d db50    	vldr	d13, [sp, #320]
    a6c2: eeb4 0a6c    	vcmp.f32	s0, s25
    a6c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a6ca: eeb7 5bcd    	vcvt.f32.f64	s10, d13
    a6ce: fe3c 4a80    	vselgt.f32	s8, s25, s0
    a6d2: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    a6d6: ed8d 4a6c    	vstr	s8, [sp, #432]
    a6da: eeb7 cac4    	vcvt.f64.f32	d12, s8
    a6de: ee64 0a02    	vmul.f32	s1, s8, s4
    a6e2: ee0c ab08    	vmla.f64	d10, d12, d8
    a6e6: ee2a 9b07    	vmul.f64	d9, d10, d7
    a6ea: ee30 7a80    	vadd.f32	s14, s1, s0
    a6ee: ee30 0a85    	vadd.f32	s0, s1, s10
    a6f2: eeb7 5bc9    	vcvt.f32.f64	s10, d9
    a6f6: eef0 0a47    	vmov.f32	s1, s14
    a6fa: eef0 2a40    	vmov.f32	s5, s0
    a6fe: ee45 0a2e    	vmla.f32	s1, s10, s29
    a702: ee45 2a42    	vmls.f32	s5, s10, s4
    a706: fe80 2ae2    	vminnm.f32	s4, s1, s5
    a70a: eddd 0a6b    	vldr	s1, [sp, #428]
    a70e: edcd 0a0a    	vstr	s1, [sp, #40]
    a712: edcd 4a6b    	vstr	s9, [sp, #428]
    a716: eeb4 2a4f    	vcmp.f32	s4, s30
    a71a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a71e: f240 80f7    	bls.w	0xa910 <ram_probe::packed_probe::candidate+0xea8> @ imm = #0x1ee
    a722: ed9f 2bc3    	vldr	d2, [pc, #780]          @ 0xaa30 <ram_probe::packed_probe::candidate+0xfc8>
    a726: eddf 4aba    	vldr	s9, [pc, #744]          @ 0xaa10 <ram_probe::packed_probe::candidate+0xfa8>
    a72a: eef0 0a40    	vmov.f32	s1, s0
    a72e: ee2a 2b02    	vmul.f64	d2, d10, d2
    a732: eef7 fa00    	vmov.f32	s31, #1.000000e+00
    a736: eeb7 5bc2    	vcvt.f32.f64	s10, d2
    a73a: eeb0 2a47    	vmov.f32	s4, s14
    a73e: ee05 2a2e    	vmla.f32	s4, s10, s29
    a742: ee45 0a24    	vmla.f32	s1, s10, s9
    a746: fe82 2a60    	vminnm.f32	s4, s4, s1
    a74a: eddf 0af1    	vldr	s1, [pc, #964]          @ 0xab10 <ram_probe::packed_probe::candidate+0x10a8>
    a74e: ee3f 2a42    	vsub.f32	s4, s30, s4
    a752: fe82 2a60    	vminnm.f32	s4, s4, s1
    a756: eef0 0a6f    	vmov.f32	s1, s31
    a75a: ee42 0a0f    	vmla.f32	s1, s4, s30
    a75e: ed9f 2aed    	vldr	s4, [pc, #948]          @ 0xab14 <ram_probe::packed_probe::candidate+0x10ac>
    a762: ee20 2a82    	vmul.f32	s4, s1, s4
    a766: eddf 0aec    	vldr	s1, [pc, #944]          @ 0xab18 <ram_probe::packed_probe::candidate+0x10b0>
    a76a: eeb4 2a60    	vcmp.f32	s4, s1
    a76e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a772: f240 80cd    	bls.w	0xa910 <ram_probe::packed_probe::candidate+0xea8> @ imm = #0x19a
    a776: ed9f 2bb0    	vldr	d2, [pc, #704]          @ 0xaa38 <ram_probe::packed_probe::candidate+0xfd0>
    a77a: eeb6 9b00    	vmov.f64	d9, #5.000000e-01
    a77e: ee2c 2b02    	vmul.f64	d2, d12, d2
    a782: ed8d 2b04    	vstr	d2, [sp, #16]
    a786: ee33 2b02    	vadd.f64	d2, d3, d2
    a78a: eeb7 3b00    	vmov.f64	d3, #1.000000e+00
    a78e: ee39 2b42    	vsub.f64	d2, d9, d2
    a792: eeb0 5b43    	vmov.f64	d5, d3
    a796: ee02 5b09    	vmla.f64	d5, d2, d9
    a79a: eeb0 2b48    	vmov.f64	d2, d8
    a79e: ed9f 9ba8    	vldr	d9, [pc, #672]          @ 0xaa40 <ram_probe::packed_probe::candidate+0xfd8>
    a7a2: ee05 2b09    	vmla.f64	d2, d5, d9
    a7a6: ed9f 5ba8    	vldr	d5, [pc, #672]          @ 0xaa48 <ram_probe::packed_probe::candidate+0xfe0>
    a7aa: ee2a 5b05    	vmul.f64	d5, d10, d5
    a7ae: ee02 5b02    	vmla.f64	d5, d2, d2
    a7b2: eeb1 9b4a    	vneg.f64	d9, d10
    a7b6: eeb5 5b40    	vcmp.f64	d5, #0
    a7ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a7be: ed8d 9b02    	vstr	d9, [sp, #8]
    a7c2: d42a         	bmi	0xa81a <ram_probe::packed_probe::candidate+0xdb2> @ imm = #0x54
    a7c4: ec51 0b12    	vmov	r0, r1, d2
    a7c8: eeb1 5bc5    	vsqrt.f64	d5, d5
    a7cc: ec52 0b15    	vmov	r0, r2, d5
    a7d0: 0fc9         	lsrs	r1, r1, #0x1f
    a7d2: f361 72df    	bfi	r2, r1, #31, #1
    a7d6: ec42 0b15    	vmov	d5, r0, r2
    a7da: ee32 2b05    	vadd.f64	d2, d2, d5
    a7de: eebe 5b00    	vmov.f64	d5, #-5.000000e-01
    a7e2: ee22 2b05    	vmul.f64	d2, d2, d5
    a7e6: ed9f 5b9a    	vldr	d5, [pc, #616]          @ 0xaa50 <ram_probe::packed_probe::candidate+0xfe8>
    a7ea: ee22 5b05    	vmul.f64	d5, d2, d5
    a7ee: ec51 0b15    	vmov	r0, r1, d5
    a7f2: f64f 70ff    	movw	r0, #0xffff
    a7f6: f6c7 70ef    	movt	r0, #0x7fef
    a7fa: f021 4100    	bic	r1, r1, #0x80000000
    a7fe: 4281         	cmp	r1, r0
    a800: f340 83be    	ble.w	0xaf80 <ram_probe::packed_probe::candidate+0x1518> @ imm = #0x77c
    a804: ed9d 5b02    	vldr	d5, [sp, #8]
    a808: ee85 2b02    	vdiv.f64	d2, d5, d2
    a80c: ec52 1b12    	vmov	r1, r2, d2
    a810: f022 4100    	bic	r1, r2, #0x80000000
    a814: 4281         	cmp	r1, r0
    a816: f340 8423    	ble.w	0xb060 <ram_probe::packed_probe::candidate+0x15f8> @ imm = #0x846
    a81a: ed9d 2b04    	vldr	d2, [sp, #16]
    a81e: eeb6 5b00    	vmov.f64	d5, #5.000000e-01
    a822: ee3d 2b02    	vadd.f64	d2, d13, d2
    a826: ee35 2b42    	vsub.f64	d2, d5, d2
    a82a: ee02 3b05    	vmla.f64	d3, d2, d5
    a82e: ed9f 2b84    	vldr	d2, [pc, #528]          @ 0xaa40 <ram_probe::packed_probe::candidate+0xfd8>
    a832: ee03 8b02    	vmla.f64	d8, d3, d2
    a836: ed9f 3b88    	vldr	d3, [pc, #544]          @ 0xaa58 <ram_probe::packed_probe::candidate+0xff0>
    a83a: ee28 2b08    	vmul.f64	d2, d8, d8
    a83e: ee0a 2b03    	vmla.f64	d2, d10, d3
    a842: eeb5 2b40    	vcmp.f64	d2, #0
    a846: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a84a: f100 85b3    	bmi.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #0xb66
    a84e: ec51 0b18    	vmov	r0, r1, d8
    a852: eeb1 2bc2    	vsqrt.f64	d2, d2
    a856: ec52 0b12    	vmov	r0, r2, d2
    a85a: 0fc9         	lsrs	r1, r1, #0x1f
    a85c: eebe 3b00    	vmov.f64	d3, #-5.000000e-01
    a860: f361 72df    	bfi	r2, r1, #31, #1
    a864: ec42 0b12    	vmov	d2, r0, r2
    a868: ee38 2b02    	vadd.f64	d2, d8, d2
    a86c: ee22 2b03    	vmul.f64	d2, d2, d3
    a870: ed9f 3b7b    	vldr	d3, [pc, #492]          @ 0xaa60 <ram_probe::packed_probe::candidate+0xff8>
    a874: ee22 3b03    	vmul.f64	d3, d2, d3
    a878: ec51 0b13    	vmov	r0, r1, d3
    a87c: f64f 70ff    	movw	r0, #0xffff
    a880: f6c7 70ef    	movt	r0, #0x7fef
    a884: f021 4100    	bic	r1, r1, #0x80000000
    a888: 4281         	cmp	r1, r0
    a88a: f340 83b1    	ble.w	0xaff0 <ram_probe::packed_probe::candidate+0x1588> @ imm = #0x762
    a88e: ed9d 3b02    	vldr	d3, [sp, #8]
    a892: ee83 2b02    	vdiv.f64	d2, d3, d2
    a896: ec52 1b12    	vmov	r1, r2, d2
    a89a: f022 4100    	bic	r1, r2, #0x80000000
    a89e: 4281         	cmp	r1, r0
    a8a0: f300 8588    	bgt.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #0xb10
    a8a4: eeb7 5bc2    	vcvt.f32.f64	s10, d2
    a8a8: eeb0 3a40    	vmov.f32	s6, s0
    a8ac: eef0 0a47    	vmov.f32	s1, s14
    a8b0: eef8 2a00    	vmov.f32	s5, #-2.000000e+00
    a8b4: ed8d 5a6d    	vstr	s10, [sp, #436]
    a8b8: ee05 3a24    	vmla.f32	s6, s10, s9
    a8bc: ee45 0a2e    	vmla.f32	s1, s10, s29
    a8c0: fe80 2ac3    	vminnm.f32	s4, s1, s6
    a8c4: ee3f 2a42    	vsub.f32	s4, s30, s4
    a8c8: eeb4 2a62    	vcmp.f32	s4, s5
    a8cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a8d0: f340 8570    	ble.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #0xae0
    a8d4: eeb4 3a60    	vcmp.f32	s6, s1
    a8d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a8dc: f200 856a    	bhi.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #0xad4
    a8e0: eeb5 2a40    	vcmp.f32	s4, #0
    a8e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a8e8: f140 8564    	bpl.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #0xac8
    a8ec: ee42 fa0f    	vmla.f32	s31, s4, s30
    a8f0: ed9f 2a91    	vldr	s4, [pc, #580]          @ 0xab38 <ram_probe::packed_probe::candidate+0x10d0>
    a8f4: ed9f 3a91    	vldr	s6, [pc, #580]          @ 0xab3c <ram_probe::packed_probe::candidate+0x10d4>
    a8f8: ee2f 2a82    	vmul.f32	s4, s31, s4
    a8fc: eeb4 2a43    	vcmp.f32	s4, s6
    a900: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a904: dc06         	bgt	0xa914 <ram_probe::packed_probe::candidate+0xeac> @ imm = #0xc
    a906: f000 bd55    	b.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #0xaaa
    a90a: bf00         	nop
    a90c: bf00         	nop
    a90e: bf00         	nop
    a910: ed8d 5a6d    	vstr	s10, [sp, #436]
    a914: ed9d 3a15    	vldr	s6, [sp, #84]
    a918: eddd 0a14    	vldr	s1, [sp, #80]
    a91c: eef4 0a43    	vcmp.f32	s1, s6
    a920: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a924: f201 826c    	bhi.w	0xbe00 <ram_probe::packed_probe::candidate+0x2398> @ imm = #0x14d8
    a928: ed9f 2bcd    	vldr	d2, [pc, #820]          @ 0xac60 <ram_probe::packed_probe::candidate+0x11f8>
    a92c: eddf 4ad6    	vldr	s9, [pc, #856]          @ 0xac88 <ram_probe::packed_probe::candidate+0x1220>
    a930: eddd aa0f    	vldr	s21, [sp, #60]
    a934: ee01 6b02    	vmla.f64	d6, d1, d2
    a938: ed9f 2ad4    	vldr	s4, [pc, #848]          @ 0xac8c <ram_probe::packed_probe::candidate+0x1224>
    a93c: eeb7 1bc6    	vcvt.f32.f64	s2, d6
    a940: ee41 aa24    	vmla.f32	s21, s2, s9
    a944: ed9d 1b3c    	vldr	d1, [sp, #240]
    a948: eef7 6bc1    	vcvt.f32.f64	s13, d1
    a94c: ed9f 1ad0    	vldr	s2, [pc, #832]          @ 0xac90 <ram_probe::packed_probe::candidate+0x1228>
    a950: eddd 1a09    	vldr	s3, [sp, #36]
    a954: ee41 6a81    	vmla.f32	s13, s3, s2
    a958: eef4 0a6a    	vcmp.f32	s1, s21
    a95c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a960: ee44 6a02    	vmla.f32	s13, s8, s4
    a964: fe30 1aaa    	vselgt.f32	s2, s1, s21
    a968: eeb4 1a43    	vcmp.f32	s2, s6
    a96c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a970: eef0 5ae6    	vabs.f32	s11, s13
    a974: fe33 9a01    	vselgt.f32	s18, s6, s2
    a978: ed9f 1ac6    	vldr	s2, [pc, #792]          @ 0xac94 <ram_probe::packed_probe::candidate+0x122c>
    a97c: eef4 5a41    	vcmp.f32	s11, s2
    a980: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a984: da34         	bge	0xa9f0 <ram_probe::packed_probe::candidate+0xf88> @ imm = #0x68
    a986: ed9f 1ac4    	vldr	s2, [pc, #784]          @ 0xac98 <ram_probe::packed_probe::candidate+0x1230>
    a98a: eddd 2a13    	vldr	s5, [sp, #76]
    a98e: eef4 5a41    	vcmp.f32	s11, s2
    a992: eddd 7a12    	vldr	s15, [sp, #72]
    a996: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a99a: d93d         	bls	0xaa18 <ram_probe::packed_probe::candidate+0xfb0> @ imm = #0x7a
    a99c: ed9f 1abf    	vldr	s2, [pc, #764]          @ 0xac9c <ram_probe::packed_probe::candidate+0x1234>
    a9a0: eef4 5a41    	vcmp.f32	s11, s2
    a9a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9a8: d95e         	bls	0xaa68 <ram_probe::packed_probe::candidate+0x1000> @ imm = #0xbc
    a9aa: ed9f 1abd    	vldr	s2, [pc, #756]          @ 0xaca0 <ram_probe::packed_probe::candidate+0x1238>
    a9ae: ee35 3a81    	vadd.f32	s6, s11, s2
    a9b2: ed9f 6abc    	vldr	s12, [pc, #752]         @ 0xaca4 <ram_probe::packed_probe::candidate+0x123c>
    a9b6: eeb0 1a08    	vmov.f32	s2, #3.000000e+00
    a9ba: e05d         	b	0xaa78 <ram_probe::packed_probe::candidate+0x1010> @ imm = #0xba
    a9bc: 99 76 cd 39  	.word	0x39cd7699
    a9c0: ab 14 f2 db  	.word	0xdbf214ab
    a9c4: ec cd d7 3f  	.word	0x3fd7cdec
    a9c8: c4 a9 9f 7b  	.word	0x7b9fa9c4
    a9cc: 67 dd c7 3f  	.word	0x3fc7dd67
    a9d0: 98 a3 27 37  	.word	0x3727a398
    a9d4: f7 c5 85 3f  	.word	0x3f85c5f7
    a9d8: 15 be b6 e5  	.word	0xe5b6be15
    a9dc: 6d 7e c0 bf  	.word	0xbfc07e6d
    a9e0: d2 ce fe 14  	.word	0x14feced2
    a9e4: cf 45 20 3f  	.word	0x3f2045cf
    a9e8: 4d f7 a5 91  	.word	0x91a5f74d
    a9ec: d6 fc 91 3f  	.word	0x3f91fcd6
    a9f0: ed9f 3a50    	vldr	s6, [pc, #320]          @ 0xab34 <ram_probe::packed_probe::candidate+0x10cc>
    a9f4: eddd 2a13    	vldr	s5, [sp, #76]
    a9f8: eef0 fa43    	vmov.f32	s31, s6
    a9fc: eef0 8a43    	vmov.f32	s17, s6
    aa00: eeb0 6a43    	vmov.f32	s12, s6
    aa04: eeb0 8a43    	vmov.f32	s16, s6
    aa08: eddd 7a12    	vldr	s15, [sp, #72]
    aa0c: e0bd         	b	0xab8a <ram_probe::packed_probe::candidate+0x1122> @ imm = #0x17a
    aa0e: bf00         	nop
    aa10: 51 e6 7f bf  	.word	0xbf7fe651
    aa14: 00 bf 00 bf  	.word	0xbf00bf00
    aa18: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    aa1c: e02e         	b	0xaa7c <ram_probe::packed_probe::candidate+0x1014> @ imm = #0x5c
    aa1e: bf00         	nop
    aa20: 51 e6 7f 3f  	.word	0x3f7fe651
    aa24: 00 bf 00 bf  	.word	0xbf00bf00
    aa28: 52 8b 9c d4  	.word	0xd49c8b52
    aa2c: 29 be 6a 40  	.word	0x406abe29
    aa30: 81 b0 06 3c  	.word	0x3c06b081
    aa34: 3d 70 bf 40  	.word	0x40bf703d
    aa38: 10 43 9c 25  	.word	0x259c4310
    aa3c: ca fc ef 3f  	.word	0x3feffcca
    aa40: c2 17 26 53  	.word	0x532617c2
    aa44: 05 a3 72 3f  	.word	0x3f72a305
    aa48: 44 1c 7f 14  	.word	0x147f1c44
    aa4c: 5b ea cd be  	.word	0xbecdea5b
    aa50: f0 73 a7 24  	.word	0x24a773f0
    aa54: 6a 1d 31 c1  	.word	0xc1311d6a
    aa58: d0 cf 74 ad  	.word	0xad74cfd0
    aa5c: 26 a1 82 3f  	.word	0x3f82a126
    aa60: 4a 76 56 69  	.word	0x6956764a
    aa64: b9 7b 7b 40  	.word	0x407b7bb9
    aa68: ed9f 1ada    	vldr	s2, [pc, #872]          @ 0xadd4 <ram_probe::packed_probe::candidate+0x136c>
    aa6c: ee35 3a81    	vadd.f32	s6, s11, s2
    aa70: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    aa74: ed9f 6ad8    	vldr	s12, [pc, #864]         @ 0xadd8 <ram_probe::packed_probe::candidate+0x1370>
    aa78: ee03 1a06    	vmla.f32	s2, s6, s12
    aa7c: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    aa80: ee33 1a41    	vsub.f32	s2, s6, s2
    aa84: ed9f 3a2b    	vldr	s6, [pc, #172]          @ 0xab34 <ram_probe::packed_probe::candidate+0x10cc>
    aa88: fe81 8a03    	vmaxnm.f32	s16, s2, s6
    aa8c: eeb5 8a40    	vcmp.f32	s16, #0
    aa90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa94: d944         	bls	0xab20 <ram_probe::packed_probe::candidate+0x10b8> @ imm = #0x88
    aa96: eeb0 1ac9    	vabs.f32	s2, s18
    aa9a: eeb4 1a48    	vcmp.f32	s2, s16
    aa9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aaa2: dd4d         	ble	0xab40 <ram_probe::packed_probe::candidate+0x10d8> @ imm = #0x9a
    aaa4: ee88 1a01    	vdiv.f32	s2, s16, s2
    aaa8: ee21 3a01    	vmul.f32	s6, s2, s2
    aaac: ee23 3a03    	vmul.f32	s6, s6, s6
    aab0: ee23 3a03    	vmul.f32	s6, s6, s6
    aab4: ee63 fa03    	vmul.f32	s31, s6, s6
    aab8: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    aabc: ee7f 0a83    	vadd.f32	s1, s31, s6
    aac0: eeb0 6a43    	vmov.f32	s12, s6
    aac4: eef4 0a43    	vcmp.f32	s1, s6
    aac8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aacc: d009         	beq	0xaae2 <ram_probe::packed_probe::candidate+0x107a> @ imm = #0x12
    aace: eef1 0ae0    	vsqrt.f32	s1, s1
    aad2: eef1 0ae0    	vsqrt.f32	s1, s1
    aad6: eef1 0ae0    	vsqrt.f32	s1, s1
    aada: eef1 0ae0    	vsqrt.f32	s1, s1
    aade: eeb0 6a60    	vmov.f32	s12, s1
    aae2: ee19 0a10    	vmov	r0, s18
    aae6: f04f 517e    	mov.w	r1, #0x3f800000
    aaea: eec3 8a06    	vdiv.f32	s17, s6, s12
    aaee: ed9f 6ae3    	vldr	s12, [pc, #908]         @ 0xae7c <ram_probe::packed_probe::candidate+0x1414>
    aaf2: eeb4 9a49    	vcmp.f32	s18, s18
    aaf6: f361 001e    	bfi	r0, r1, #0, #31
    aafa: ee00 0a90    	vmov	s1, r0
    aafe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab02: ee20 3a88    	vmul.f32	s6, s1, s16
    ab06: ee23 3a28    	vmul.f32	s6, s6, s17
    ab0a: fe16 3a03    	vselvs.f32	s6, s12, s6
    ab0e: e03a         	b	0xab86 <ram_probe::packed_probe::candidate+0x111e> @ imm = #0x74
    ab10: 00 00 00 00  	.word	0x00000000
    ab14: 2b 18 95 3b  	.word	0x3b95182b
    ab18: 95 bf d6 33  	.word	0x33d6bf95
    ab1c: 00 bf 00 bf  	.word	0xbf00bf00
    ab20: eef0 fa43    	vmov.f32	s31, s6
    ab24: eef0 8a43    	vmov.f32	s17, s6
    ab28: eeb0 6a43    	vmov.f32	s12, s6
    ab2c: e02d         	b	0xab8a <ram_probe::packed_probe::candidate+0x1122> @ imm = #0x5a
    ab2e: bf00         	nop
    ab30: 51 e6 7f bf  	.word	0xbf7fe651
    ab34: 00 00 00 00  	.word	0x00000000
    ab38: 2b 18 95 3b  	.word	0x3b95182b
    ab3c: 95 bf d6 33  	.word	0x33d6bf95
    ab40: ee89 1a08    	vdiv.f32	s2, s18, s16
    ab44: ee21 3a01    	vmul.f32	s6, s2, s2
    ab48: ee23 3a03    	vmul.f32	s6, s6, s6
    ab4c: ee23 3a03    	vmul.f32	s6, s6, s6
    ab50: ee63 fa03    	vmul.f32	s31, s6, s6
    ab54: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    ab58: ee3f 6a83    	vadd.f32	s12, s31, s6
    ab5c: eef0 0a43    	vmov.f32	s1, s6
    ab60: eeb4 6a43    	vcmp.f32	s12, s6
    ab64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab68: d009         	beq	0xab7e <ram_probe::packed_probe::candidate+0x1116> @ imm = #0x12
    ab6a: eeb1 6ac6    	vsqrt.f32	s12, s12
    ab6e: eeb1 6ac6    	vsqrt.f32	s12, s12
    ab72: eeb1 6ac6    	vsqrt.f32	s12, s12
    ab76: eeb1 6ac6    	vsqrt.f32	s12, s12
    ab7a: eef0 0a46    	vmov.f32	s1, s12
    ab7e: eec3 8a20    	vdiv.f32	s17, s6, s1
    ab82: ee29 3a28    	vmul.f32	s6, s18, s17
    ab86: ee21 6a2f    	vmul.f32	s12, s2, s31
    ab8a: ee71 3ac3    	vsub.f32	s7, s3, s6
    ab8e: ee13 0a90    	vmov	r0, s7
    ab92: f020 4000    	bic	r0, r0, #0x80000000
    ab96: f1b0 4fff    	cmp.w	r0, #0x7f800000
    ab9a: db05         	blt	0xaba8 <ram_probe::packed_probe::candidate+0x1140> @ imm = #0xa
    ab9c: ed9f 1ab8    	vldr	s2, [pc, #736]          @ 0xae80 <ram_probe::packed_probe::candidate+0x1418>
    aba0: e00c         	b	0xabbc <ram_probe::packed_probe::candidate+0x1154> @ imm = #0x18
    aba2: bf00         	nop
    aba4: bf00         	nop
    aba6: bf00         	nop
    aba8: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    abac: ed1f 3a1f    	vldr	s6, [pc, #-124]         @ 0xab34 <ram_probe::packed_probe::candidate+0x10cc>
    abb0: ee83 1a81    	vdiv.f32	s2, s7, s2
    abb4: eeb0 1ac1    	vabs.f32	s2, s2
    abb8: fe81 1a03    	vmaxnm.f32	s2, s2, s6
    abbc: eef4 7a62    	vcmp.f32	s15, s5
    abc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    abc4: f201 811c    	bhi.w	0xbe00 <ram_probe::packed_probe::candidate+0x2398> @ imm = #0x1238
    abc8: ed8d 9a0f    	vstr	s18, [sp, #60]
    abcc: ed9f 9bea    	vldr	d9, [pc, #936]          @ 0xaf78 <ram_probe::packed_probe::candidate+0x1510>
    abd0: ed8d 6a04    	vstr	s12, [sp, #16]
    abd4: ed9d 6a17    	vldr	s12, [sp, #92]
    abd8: ee0c bb09    	vmla.f64	d11, d12, d9
    abdc: ed9d 9b3e    	vldr	d9, [sp, #248]
    abe0: eeb7 3bcb    	vcvt.f32.f64	s6, d11
    abe4: ee03 6a24    	vmla.f32	s12, s6, s9
    abe8: eddf 4aa6    	vldr	s9, [pc, #664]          @ 0xae84 <ram_probe::packed_probe::candidate+0x141c>
    abec: eeb7 3bc9    	vcvt.f32.f64	s6, d9
    abf0: ee01 3a82    	vmla.f32	s6, s3, s4
    abf4: ed9f 2aa4    	vldr	s4, [pc, #656]          @ 0xae88 <ram_probe::packed_probe::candidate+0x1420>
    abf8: ee65 1a24    	vmul.f32	s3, s10, s9
    abfc: ed8d 6a17    	vstr	s12, [sp, #92]
    ac00: ee04 3a02    	vmla.f32	s6, s8, s4
    ac04: eef4 7a46    	vcmp.f32	s15, s12
    ac08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac0c: fe37 2a86    	vselgt.f32	s4, s15, s12
    ac10: ee31 ba83    	vadd.f32	s22, s3, s6
    ac14: eeb4 2a62    	vcmp.f32	s4, s5
    ac18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac1c: eef0 7acb    	vabs.f32	s15, s22
    ac20: fe32 9a82    	vselgt.f32	s18, s5, s4
    ac24: ed9f 2a1b    	vldr	s4, [pc, #108]          @ 0xac94 <ram_probe::packed_probe::candidate+0x122c>
    ac28: eef4 7a42    	vcmp.f32	s15, s4
    ac2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac30: da1a         	bge	0xac68 <ram_probe::packed_probe::candidate+0x1200> @ imm = #0x34
    ac32: ed9f 2a19    	vldr	s4, [pc, #100]          @ 0xac98 <ram_probe::packed_probe::candidate+0x1230>
    ac36: eef4 7a42    	vcmp.f32	s15, s4
    ac3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac3e: d91f         	bls	0xac80 <ram_probe::packed_probe::candidate+0x1218> @ imm = #0x3e
    ac40: ed9f 2a43    	vldr	s4, [pc, #268]          @ 0xad50 <ram_probe::packed_probe::candidate+0x12e8>
    ac44: eef4 7a42    	vcmp.f32	s15, s4
    ac48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac4c: d92c         	bls	0xaca8 <ram_probe::packed_probe::candidate+0x1240> @ imm = #0x58
    ac4e: ed9f 2a41    	vldr	s4, [pc, #260]          @ 0xad54 <ram_probe::packed_probe::candidate+0x12ec>
    ac52: ee37 3a82    	vadd.f32	s6, s15, s4
    ac56: ed9f 6a40    	vldr	s12, [pc, #256]         @ 0xad58 <ram_probe::packed_probe::candidate+0x12f0>
    ac5a: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    ac5e: e02b         	b	0xacb8 <ram_probe::packed_probe::candidate+0x1250> @ imm = #0x56
    ac60: 1c 38 88 77  	.word	0x7788381c
    ac64: bf 13 e1 bf  	.word	0xbfe113bf
    ac68: ed5f ca4e    	vldr	s25, [pc, #-312]        @ 0xab34 <ram_probe::packed_probe::candidate+0x10cc>
    ac6c: eeb0 6a6c    	vmov.f32	s12, s25
    ac70: eeb0 2a6c    	vmov.f32	s4, s25
    ac74: eef0 2a6c    	vmov.f32	s5, s25
    ac78: eef0 ba6c    	vmov.f32	s23, s25
    ac7c: e09d         	b	0xadba <ram_probe::packed_probe::candidate+0x1352> @ imm = #0x13a
    ac7e: bf00         	nop
    ac80: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    ac84: e01a         	b	0xacbc <ram_probe::packed_probe::candidate+0x1254> @ imm = #0x34
    ac86: bf00         	nop
    ac88: 79 61 2e 43  	.word	0x432e6179
    ac8c: d6 f8 e4 36  	.word	0x36e4f8d6
    ac90: 83 c0 96 b8  	.word	0xb896c083
    ac94: 0a d7 23 3d  	.word	0x3d23d70a
    ac98: 7c f2 b0 3a  	.word	0x3ab0f27c
    ac9c: a6 9b c4 3b  	.word	0x3bc49ba6
    aca0: a6 9b c4 bb  	.word	0xbbc49ba6
    aca4: 79 78 b0 43  	.word	0x43b07879
    aca8: ed9f 2a4a    	vldr	s4, [pc, #296]          @ 0xadd4 <ram_probe::packed_probe::candidate+0x136c>
    acac: ee37 3a82    	vadd.f32	s6, s15, s4
    acb0: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    acb4: ed9f 6a48    	vldr	s12, [pc, #288]         @ 0xadd8 <ram_probe::packed_probe::candidate+0x1370>
    acb8: ee03 2a06    	vmla.f32	s4, s6, s12
    acbc: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    acc0: ed5f ca64    	vldr	s25, [pc, #-400]        @ 0xab34 <ram_probe::packed_probe::candidate+0x10cc>
    acc4: ee33 2a42    	vsub.f32	s4, s6, s4
    acc8: fec2 ba2c    	vmaxnm.f32	s23, s4, s25
    accc: eef5 ba40    	vcmp.f32	s23, #0
    acd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    acd4: d944         	bls	0xad60 <ram_probe::packed_probe::candidate+0x12f8> @ imm = #0x88
    acd6: eeb0 2ac9    	vabs.f32	s4, s18
    acda: eeb4 2a6b    	vcmp.f32	s4, s23
    acde: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ace2: dd45         	ble	0xad70 <ram_probe::packed_probe::candidate+0x1308> @ imm = #0x8a
    ace4: ee8b 3a82    	vdiv.f32	s6, s23, s4
    ace8: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    acec: ee23 2a03    	vmul.f32	s4, s6, s6
    acf0: eef0 2a46    	vmov.f32	s5, s12
    acf4: ee22 2a02    	vmul.f32	s4, s4, s4
    acf8: ee22 2a02    	vmul.f32	s4, s4, s4
    acfc: ee22 2a02    	vmul.f32	s4, s4, s4
    ad00: ee72 0a06    	vadd.f32	s1, s4, s12
    ad04: eef4 0a46    	vcmp.f32	s1, s12
    ad08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad0c: d009         	beq	0xad22 <ram_probe::packed_probe::candidate+0x12ba> @ imm = #0x12
    ad0e: eef1 0ae0    	vsqrt.f32	s1, s1
    ad12: eef1 0ae0    	vsqrt.f32	s1, s1
    ad16: eef1 0ae0    	vsqrt.f32	s1, s1
    ad1a: eef1 0ae0    	vsqrt.f32	s1, s1
    ad1e: eef0 2a60    	vmov.f32	s5, s1
    ad22: ee19 0a10    	vmov	r0, s18
    ad26: f04f 517e    	mov.w	r1, #0x3f800000
    ad2a: ee86 6a22    	vdiv.f32	s12, s12, s5
    ad2e: eddf 2a53    	vldr	s5, [pc, #332]          @ 0xae7c <ram_probe::packed_probe::candidate+0x1414>
    ad32: eeb4 9a49    	vcmp.f32	s18, s18
    ad36: f361 001e    	bfi	r0, r1, #0, #31
    ad3a: ee00 0a90    	vmov	s1, r0
    ad3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad42: ee60 0aab    	vmul.f32	s1, s1, s23
    ad46: ee60 0a86    	vmul.f32	s1, s1, s12
    ad4a: fe52 2aa0    	vselvs.f32	s5, s5, s1
    ad4e: e032         	b	0xadb6 <ram_probe::packed_probe::candidate+0x134e> @ imm = #0x64
    ad50: a6 9b c4 3b  	.word	0x3bc49ba6
    ad54: a6 9b c4 bb  	.word	0xbbc49ba6
    ad58: 79 78 b0 43  	.word	0x43b07879
    ad5c: 00 bf 00 bf  	.word	0xbf00bf00
    ad60: eeb0 6a6c    	vmov.f32	s12, s25
    ad64: eeb0 2a6c    	vmov.f32	s4, s25
    ad68: eef0 2a6c    	vmov.f32	s5, s25
    ad6c: e025         	b	0xadba <ram_probe::packed_probe::candidate+0x1352> @ imm = #0x4a
    ad6e: bf00         	nop
    ad70: ee89 3a2b    	vdiv.f32	s6, s18, s23
    ad74: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    ad78: ee23 2a03    	vmul.f32	s4, s6, s6
    ad7c: eef0 2a46    	vmov.f32	s5, s12
    ad80: ee22 2a02    	vmul.f32	s4, s4, s4
    ad84: ee22 2a02    	vmul.f32	s4, s4, s4
    ad88: ee22 2a02    	vmul.f32	s4, s4, s4
    ad8c: ee72 0a06    	vadd.f32	s1, s4, s12
    ad90: eef4 0a46    	vcmp.f32	s1, s12
    ad94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad98: d009         	beq	0xadae <ram_probe::packed_probe::candidate+0x1346> @ imm = #0x12
    ad9a: eef1 0ae0    	vsqrt.f32	s1, s1
    ad9e: eef1 0ae0    	vsqrt.f32	s1, s1
    ada2: eef1 0ae0    	vsqrt.f32	s1, s1
    ada6: eef1 0ae0    	vsqrt.f32	s1, s1
    adaa: eef0 2a60    	vmov.f32	s5, s1
    adae: ee86 6a22    	vdiv.f32	s12, s12, s5
    adb2: ee69 2a06    	vmul.f32	s5, s18, s12
    adb6: ee62 ca03    	vmul.f32	s25, s4, s6
    adba: ee34 ca62    	vsub.f32	s24, s8, s5
    adbe: ee1c 0a10    	vmov	r0, s24
    adc2: f020 4000    	bic	r0, r0, #0x80000000
    adc6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    adca: db09         	blt	0xade0 <ram_probe::packed_probe::candidate+0x1378> @ imm = #0x12
    adcc: ed9f 3a2c    	vldr	s6, [pc, #176]          @ 0xae80 <ram_probe::packed_probe::candidate+0x1418>
    add0: e01e         	b	0xae10 <ram_probe::packed_probe::candidate+0x13a8> @ imm = #0x3c
    add2: bf00         	nop
    add4: 7c f2 b0 ba  	.word	0xbab0f27c
    add8: 53 4a a1 43  	.word	0x43a14a53
    addc: 00 bf 00 bf  	.word	0xbf00bf00
    ade0: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    ade4: eeb4 1a41    	vcmp.f32	s2, s2
    ade8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    adec: ee8c 3a03    	vdiv.f32	s6, s24, s6
    adf0: eeb0 3ac3    	vabs.f32	s6, s6
    adf4: fe13 1a01    	vselvs.f32	s2, s6, s2
    adf8: eeb4 3a43    	vcmp.f32	s6, s6
    adfc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae00: fe11 3a03    	vselvs.f32	s6, s2, s6
    ae04: eeb4 1a43    	vcmp.f32	s2, s6
    ae08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae0c: fe31 3a03    	vselgt.f32	s6, s2, s6
    ae10: ed1f 1ab9    	vldr	s2, [pc, #-740]         @ 0xab30 <ram_probe::packed_probe::candidate+0x10c8>
    ae14: ee05 7a2e    	vmla.f32	s14, s10, s29
    ae18: ee05 0a01    	vmla.f32	s0, s10, s2
    ae1c: eef8 2a00    	vmov.f32	s5, #-2.000000e+00
    ae20: ed9d db06    	vldr	d13, [sp, #24]
    ae24: eeb7 1bcd    	vcvt.f32.f64	s2, d13
    ae28: ee04 1a24    	vmla.f32	s2, s8, s9
    ae2c: fec7 0a40    	vminnm.f32	s1, s14, s0
    ae30: ee7f ea60    	vsub.f32	s29, s30, s1
    ae34: ee31 aa61    	vsub.f32	s20, s2, s3
    ae38: eef4 ea62    	vcmp.f32	s29, s5
    ae3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae40: d926         	bls	0xae90 <ram_probe::packed_probe::candidate+0x1428> @ imm = #0x4c
    ae42: eef4 ea6e    	vcmp.f32	s29, s29
    ae46: ed1f 1ac5    	vldr	s2, [pc, #-788]         @ 0xab34 <ram_probe::packed_probe::candidate+0x10cc>
    ae4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae4e: fe51 0a2e    	vselvs.f32	s1, s2, s29
    ae52: eef5 0a40    	vcmp.f32	s1, #0
    ae56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae5a: bfb8         	it	lt
    ae5c: eeb0 1a60    	vmovlt.f32	s2, s1
    ae60: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    ae64: ee41 0a0f    	vmla.f32	s1, s2, s30
    ae68: ed1f 1acd    	vldr	s2, [pc, #-820]         @ 0xab38 <ram_probe::packed_probe::candidate+0x10d0>
    ae6c: ee20 1a81    	vmul.f32	s2, s1, s2
    ae70: ed5f 0ace    	vldr	s1, [pc, #-824]         @ 0xab3c <ram_probe::packed_probe::candidate+0x10d4>
    ae74: fe81 1a20    	vmaxnm.f32	s2, s2, s1
    ae78: e00c         	b	0xae94 <ram_probe::packed_probe::candidate+0x142c> @ imm = #0x18
    ae7a: bf00         	nop
    ae7c: 00 00 c0 7f  	.word	0x7fc00000
    ae80: 00 00 80 7f  	.word	0x7f800000
    ae84: 79 2e 02 39  	.word	0x39022e79
    ae88: af e6 27 b9  	.word	0xb927e6af
    ae8c: 00 bf 00 bf  	.word	0xbf00bf00
    ae90: ed1f 1ad6    	vldr	s2, [pc, #-856]         @ 0xab3c <ram_probe::packed_probe::candidate+0x10d4>
    ae94: ee15 aa01    	vnmls.f32	s20, s10, s2
    ae98: ee1a 0a10    	vmov	r0, s20
    ae9c: f020 4000    	bic	r0, r0, #0x80000000
    aea0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    aea4: f280 8286    	bge.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #0x50c
    aea8: eddf 0adb    	vldr	s1, [pc, #876]          @ 0xb218 <ram_probe::packed_probe::candidate+0x17b0>
    aeac: eeb4 3a43    	vcmp.f32	s6, s6
    aeb0: eeca 0a20    	vdiv.f32	s1, s20, s1
    aeb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aeb8: eef0 0ae0    	vabs.f32	s1, s1
    aebc: fe10 3a83    	vselvs.f32	s6, s1, s6
    aec0: eef4 0a60    	vcmp.f32	s1, s1
    aec4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aec8: fe53 0a20    	vselvs.f32	s1, s6, s1
    aecc: eeb4 3a60    	vcmp.f32	s6, s1
    aed0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aed4: fe33 da20    	vselgt.f32	s26, s6, s1
    aed8: ed9f 3aeb    	vldr	s6, [pc, #940]          @ 0xb288 <ram_probe::packed_probe::candidate+0x1820>
    aedc: eeb4 da43    	vcmp.f32	s26, s6
    aee0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aee4: f300 8266    	bgt.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #0x4cc
    aee8: ed9d 3a14    	vldr	s6, [sp, #80]
    aeec: 2100         	movs	r1, #0x0
    aeee: ed8d 9a06    	vstr	s18, [sp, #24]
    aef2: eef4 aa43    	vcmp.f32	s21, s6
    aef6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aefa: bfc8         	it	gt
    aefc: 2101         	movgt	r1, #0x1
    aefe: ed9d 3a15    	vldr	s6, [sp, #84]
    af02: 2000         	movs	r0, #0x0
    af04: eef4 aa43    	vcmp.f32	s21, s6
    af08: eddf aae0    	vldr	s21, [pc, #896]         @ 0xb28c <ram_probe::packed_probe::candidate+0x1824>
    af0c: eeb0 3a6a    	vmov.f32	s6, s21
    af10: eef0 9a6a    	vmov.f32	s19, s21
    af14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    af18: eeb5 8a40    	vcmp.f32	s16, #0
    af1c: bf48         	it	mi
    af1e: 2001         	movmi	r0, #0x1
    af20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    af24: f240 80da    	bls.w	0xb0dc <ram_probe::packed_probe::candidate+0x1674> @ imm = #0x1b4
    af28: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    af2c: eddd 1a0f    	vldr	s3, [sp, #60]
    af30: eef0 0ae1    	vabs.f32	s1, s3
    af34: ee3f 3a83    	vadd.f32	s6, s31, s6
    af38: eef4 0a48    	vcmp.f32	s1, s16
    af3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    af40: ee88 3a83    	vdiv.f32	s6, s17, s6
    af44: f340 80c4    	ble.w	0xb0d0 <ram_probe::packed_probe::candidate+0x1668> @ imm = #0x188
    af48: ee11 2a90    	vmov	r2, s3
    af4c: f04f 537e    	mov.w	r3, #0x3f800000
    af50: eef4 1a61    	vcmp.f32	s3, s3
    af54: eddd 1a04    	vldr	s3, [sp, #16]
    af58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    af5c: f363 021e    	bfi	r2, r3, #0, #31
    af60: ee00 2a90    	vmov	s1, r2
    af64: ee60 0a83    	vmul.f32	s1, s1, s6
    af68: ee21 3a83    	vmul.f32	s6, s3, s6
    af6c: ed5f 1a3d    	vldr	s3, [pc, #-244]         @ 0xae7c <ram_probe::packed_probe::candidate+0x1414>
    af70: fe51 9aa0    	vselvs.f32	s19, s3, s1
    af74: e0b2         	b	0xb0dc <ram_probe::packed_probe::candidate+0x1674> @ imm = #0x164
    af76: bf00         	nop
    af78: 67 42 87 92  	.word	0x92874267
    af7c: ba 86 d4 bf  	.word	0xbfd486ba
    af80: eeb7 5bc5    	vcvt.f32.f64	s10, d5
    af84: eef0 5a47    	vmov.f32	s11, s14
    af88: eef0 0a40    	vmov.f32	s1, s0
    af8c: ed8d 5a6d    	vstr	s10, [sp, #436]
    af90: ee45 5a2e    	vmla.f32	s11, s10, s29
    af94: eef8 ea00    	vmov.f32	s29, #-2.000000e+00
    af98: ee45 0a24    	vmla.f32	s1, s10, s9
    af9c: fec5 7ae0    	vminnm.f32	s15, s11, s1
    afa0: ee7f 7a67    	vsub.f32	s15, s30, s15
    afa4: eef4 7a6e    	vcmp.f32	s15, s29
    afa8: eddf eae2    	vldr	s29, [pc, #904]         @ 0xb334 <ram_probe::packed_probe::candidate+0x18cc>
    afac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    afb0: f77f ac28    	ble.w	0xa804 <ram_probe::packed_probe::candidate+0xd9c> @ imm = #-0x7b0
    afb4: eef4 5a60    	vcmp.f32	s11, s1
    afb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    afbc: f63f ac22    	bhi.w	0xa804 <ram_probe::packed_probe::candidate+0xd9c> @ imm = #-0x7bc
    afc0: eef5 7a40    	vcmp.f32	s15, #0
    afc4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    afc8: f57f ac1c    	bpl.w	0xa804 <ram_probe::packed_probe::candidate+0xd9c> @ imm = #-0x7c8
    afcc: eef0 0a6f    	vmov.f32	s1, s31
    afd0: ee47 0a8f    	vmla.f32	s1, s15, s30
    afd4: eddf 5ad8    	vldr	s11, [pc, #864]         @ 0xb338 <ram_probe::packed_probe::candidate+0x18d0>
    afd8: ee60 0aa5    	vmul.f32	s1, s1, s11
    afdc: eddf 5ad7    	vldr	s11, [pc, #860]         @ 0xb33c <ram_probe::packed_probe::candidate+0x18d4>
    afe0: eef4 0a65    	vcmp.f32	s1, s11
    afe4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    afe8: f77f ac0c    	ble.w	0xa804 <ram_probe::packed_probe::candidate+0xd9c> @ imm = #-0x7e8
    afec: e492         	b	0xa914 <ram_probe::packed_probe::candidate+0xeac> @ imm = #-0x6dc
    afee: bf00         	nop
    aff0: eeb7 5bc3    	vcvt.f32.f64	s10, d3
    aff4: eef0 3a47    	vmov.f32	s7, s14
    aff8: eef0 0a40    	vmov.f32	s1, s0
    affc: eef8 5a00    	vmov.f32	s11, #-2.000000e+00
    b000: ed8d 5a6d    	vstr	s10, [sp, #436]
    b004: ee45 3a2e    	vmla.f32	s7, s10, s29
    b008: ee45 0a24    	vmla.f32	s1, s10, s9
    b00c: fe83 3ae0    	vminnm.f32	s6, s7, s1
    b010: ee3f 3a43    	vsub.f32	s6, s30, s6
    b014: eeb4 3a65    	vcmp.f32	s6, s11
    b018: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b01c: f77f ac37    	ble.w	0xa88e <ram_probe::packed_probe::candidate+0xe26> @ imm = #-0x792
    b020: eef4 0a63    	vcmp.f32	s1, s7
    b024: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b028: f63f ac31    	bhi.w	0xa88e <ram_probe::packed_probe::candidate+0xe26> @ imm = #-0x79e
    b02c: eeb5 3a40    	vcmp.f32	s6, #0
    b030: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b034: f57f ac2b    	bpl.w	0xa88e <ram_probe::packed_probe::candidate+0xe26> @ imm = #-0x7aa
    b038: eef0 0a6f    	vmov.f32	s1, s31
    b03c: ee43 0a0f    	vmla.f32	s1, s6, s30
    b040: ed9f 3abd    	vldr	s6, [pc, #756]          @ 0xb338 <ram_probe::packed_probe::candidate+0x18d0>
    b044: ee20 3a83    	vmul.f32	s6, s1, s6
    b048: eddf 0abc    	vldr	s1, [pc, #752]          @ 0xb33c <ram_probe::packed_probe::candidate+0x18d4>
    b04c: eeb4 3a60    	vcmp.f32	s6, s1
    b050: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b054: f77f ac1b    	ble.w	0xa88e <ram_probe::packed_probe::candidate+0xe26> @ imm = #-0x7ca
    b058: e45c         	b	0xa914 <ram_probe::packed_probe::candidate+0xeac> @ imm = #-0x748
    b05a: bf00         	nop
    b05c: bf00         	nop
    b05e: bf00         	nop
    b060: eeb7 5bc2    	vcvt.f32.f64	s10, d2
    b064: eef0 2a47    	vmov.f32	s5, s14
    b068: eef0 0a40    	vmov.f32	s1, s0
    b06c: eef8 5a00    	vmov.f32	s11, #-2.000000e+00
    b070: ed8d 5a6d    	vstr	s10, [sp, #436]
    b074: ee45 2a2e    	vmla.f32	s5, s10, s29
    b078: ee45 0a24    	vmla.f32	s1, s10, s9
    b07c: fe82 2ae0    	vminnm.f32	s4, s5, s1
    b080: ee3f 2a42    	vsub.f32	s4, s30, s4
    b084: eeb4 2a65    	vcmp.f32	s4, s11
    b088: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b08c: f77f abc5    	ble.w	0xa81a <ram_probe::packed_probe::candidate+0xdb2> @ imm = #-0x876
    b090: eef4 2a60    	vcmp.f32	s5, s1
    b094: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b098: f63f abbf    	bhi.w	0xa81a <ram_probe::packed_probe::candidate+0xdb2> @ imm = #-0x882
    b09c: eeb5 2a40    	vcmp.f32	s4, #0
    b0a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b0a4: f57f abb9    	bpl.w	0xa81a <ram_probe::packed_probe::candidate+0xdb2> @ imm = #-0x88e
    b0a8: eef0 0a6f    	vmov.f32	s1, s31
    b0ac: ee42 0a0f    	vmla.f32	s1, s4, s30
    b0b0: ed9f 2aa1    	vldr	s4, [pc, #644]          @ 0xb338 <ram_probe::packed_probe::candidate+0x18d0>
    b0b4: ee20 2a82    	vmul.f32	s4, s1, s4
    b0b8: eddf 0aa0    	vldr	s1, [pc, #640]          @ 0xb33c <ram_probe::packed_probe::candidate+0x18d4>
    b0bc: eeb4 2a60    	vcmp.f32	s4, s1
    b0c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b0c4: f77f aba9    	ble.w	0xa81a <ram_probe::packed_probe::candidate+0xdb2> @ imm = #-0x8ae
    b0c8: f7ff bc24    	b.w	0xa914 <ram_probe::packed_probe::candidate+0xeac> @ imm = #-0x7b8
    b0cc: bf00         	nop
    b0ce: bf00         	nop
    b0d0: ee61 0aaf    	vmul.f32	s1, s3, s31
    b0d4: eec0 0a88    	vdiv.f32	s1, s1, s16
    b0d8: ee63 9a20    	vmul.f32	s19, s6, s1
    b0dc: eeff 1a00    	vmov.f32	s3, #-1.000000e+00
    b0e0: eef5 6a40    	vcmp.f32	s13, #0
    b0e4: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    b0e8: eef0 0a6a    	vmov.f32	s1, s21
    b0ec: ed8d da15    	vstr	s26, [sp, #84]
    b0f0: eeb0 da6a    	vmov.f32	s26, s21
    b0f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b0f8: bf48         	it	mi
    b0fa: eef0 0a61    	vmovmi.f32	s1, s3
    b0fe: ea00 0001    	and.w	r0, r0, r1
    b102: fe36 8aa0    	vselgt.f32	s16, s13, s1
    b106: eddf 0ac9    	vldr	s1, [pc, #804]          @ 0xb42c <ram_probe::packed_probe::candidate+0x19c4>
    b10a: eef4 5a60    	vcmp.f32	s11, s1
    b10e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b112: da1b         	bge	0xb14c <ram_probe::packed_probe::candidate+0x16e4> @ imm = #0x36
    b114: eddf 0ac6    	vldr	s1, [pc, #792]          @ 0xb430 <ram_probe::packed_probe::candidate+0x19c8>
    b118: eef4 5a60    	vcmp.f32	s11, s1
    b11c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b120: d90a         	bls	0xb138 <ram_probe::packed_probe::candidate+0x16d0> @ imm = #0x14
    b122: eddf 0ac4    	vldr	s1, [pc, #784]          @ 0xb434 <ram_probe::packed_probe::candidate+0x19cc>
    b126: eef4 5a60    	vcmp.f32	s11, s1
    b12a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b12e: d907         	bls	0xb140 <ram_probe::packed_probe::candidate+0x16d8> @ imm = #0xe
    b130: eddf 0ac1    	vldr	s1, [pc, #772]          @ 0xb438 <ram_probe::packed_probe::candidate+0x19d0>
    b134: e006         	b	0xb144 <ram_probe::packed_probe::candidate+0x16dc> @ imm = #0xc
    b136: bf00         	nop
    b138: eddf 0a54    	vldr	s1, [pc, #336]          @ 0xb28c <ram_probe::packed_probe::candidate+0x1824>
    b13c: e004         	b	0xb148 <ram_probe::packed_probe::candidate+0x16e0> @ imm = #0x8
    b13e: bf00         	nop
    b140: ed5f 0adb    	vldr	s1, [pc, #-876]         @ 0xadd8 <ram_probe::packed_probe::candidate+0x1370>
    b144: ee68 0a20    	vmul.f32	s1, s16, s1
    b148: eeb1 da60    	vneg.f32	s26, s1
    b14c: 2800         	cmp	r0, #0x0
    b14e: ed9f 8abb    	vldr	s16, [pc, #748]         @ 0xb43c <ram_probe::packed_probe::candidate+0x19d4>
    b152: ed9f 9abb    	vldr	s18, [pc, #748]         @ 0xb440 <ram_probe::packed_probe::candidate+0x19d8>
    b156: ee29 da8d    	vmul.f32	s26, s19, s26
    b15a: fe49 0a08    	vseleq.f32	s1, s18, s16
    b15e: eddf 5ab9    	vldr	s11, [pc, #740]         @ 0xb444 <ram_probe::packed_probe::candidate+0x19dc>
    b162: eddd da17    	vldr	s27, [sp, #92]
    b166: 2100         	movs	r1, #0x0
    b168: 2000         	movs	r0, #0x0
    b16a: ee20 3a83    	vmul.f32	s6, s1, s6
    b16e: eddf 0ab6    	vldr	s1, [pc, #728]          @ 0xb448 <ram_probe::packed_probe::candidate+0x19e0>
    b172: ee6d 0a20    	vmul.f32	s1, s26, s1
    b176: ee43 0a25    	vmla.f32	s1, s6, s11
    b17a: ee63 8a2a    	vmul.f32	s17, s6, s21
    b17e: ed9f 3ab3    	vldr	s6, [pc, #716]          @ 0xb44c <ram_probe::packed_probe::candidate+0x19e4>
    b182: eef0 9a68    	vmov.f32	s19, s17
    b186: ee4d 8a03    	vmla.f32	s17, s26, s6
    b18a: ee4d 9a09    	vmla.f32	s19, s26, s18
    b18e: eeb0 da6a    	vmov.f32	s26, s21
    b192: ee70 5aa6    	vadd.f32	s11, s1, s13
    b196: eddd 0a12    	vldr	s1, [sp, #72]
    b19a: edcd 5a74    	vstr	s11, [sp, #464]
    b19e: eef4 da60    	vcmp.f32	s27, s1
    b1a2: edcd 8a75    	vstr	s17, [sp, #468]
    b1a6: eef0 8a6a    	vmov.f32	s17, s21
    b1aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b1ae: bfc8         	it	gt
    b1b0: 2101         	movgt	r1, #0x1
    b1b2: eddd 0a13    	vldr	s1, [sp, #76]
    b1b6: eef4 da60    	vcmp.f32	s27, s1
    b1ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b1be: eef5 ba40    	vcmp.f32	s23, #0
    b1c2: bf48         	it	mi
    b1c4: 2001         	movmi	r0, #0x1
    b1c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b1ca: edcd 9a76    	vstr	s19, [sp, #472]
    b1ce: eddd 9a0f    	vldr	s19, [sp, #60]
    b1d2: d92b         	bls	0xb22c <ram_probe::packed_probe::candidate+0x17c4> @ imm = #0x56
    b1d4: ee72 0a26    	vadd.f32	s1, s4, s13
    b1d8: ee86 da20    	vdiv.f32	s26, s12, s1
    b1dc: eddd 0a06    	vldr	s1, [sp, #24]
    b1e0: eeb0 6ae0    	vabs.f32	s12, s1
    b1e4: eeb4 6a6b    	vcmp.f32	s12, s23
    b1e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b1ec: dd18         	ble	0xb220 <ram_probe::packed_probe::candidate+0x17b8> @ imm = #0x30
    b1ee: ee10 2a90    	vmov	r2, s1
    b1f2: f04f 537e    	mov.w	r3, #0x3f800000
    b1f6: eef4 0a60    	vcmp.f32	s1, s1
    b1fa: ed1f 6ae0    	vldr	s12, [pc, #-896]        @ 0xae7c <ram_probe::packed_probe::candidate+0x1414>
    b1fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b202: f363 021e    	bfi	r2, r3, #0, #31
    b206: ee02 2a10    	vmov	s4, r2
    b20a: ee22 2a0d    	vmul.f32	s4, s4, s26
    b20e: ee2c da8d    	vmul.f32	s26, s25, s26
    b212: fe56 8a02    	vselvs.f32	s17, s12, s4
    b216: e009         	b	0xb22c <ram_probe::packed_probe::candidate+0x17c4> @ imm = #0x12
    b218: 0a d7 23 3c  	.word	0x3c23d70a
    b21c: 00 bf 00 bf  	.word	0xbf00bf00
    b220: ee20 2a82    	vmul.f32	s4, s1, s4
    b224: ee82 2a2b    	vdiv.f32	s4, s4, s23
    b228: ee6d 8a02    	vmul.f32	s17, s26, s4
    b22c: eeb5 ba40    	vcmp.f32	s22, #0
    b230: eeb0 2a6a    	vmov.f32	s4, s21
    b234: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b238: bf48         	it	mi
    b23a: eeb0 2a61    	vmovmi.f32	s4, s3
    b23e: ed9f 6a7b    	vldr	s12, [pc, #492]         @ 0xb42c <ram_probe::packed_probe::candidate+0x19c4>
    b242: ea00 0001    	and.w	r0, r0, r1
    b246: fe36 2a82    	vselgt.f32	s4, s13, s4
    b24a: eef4 7a46    	vcmp.f32	s15, s12
    b24e: eeb0 6a6a    	vmov.f32	s12, s21
    b252: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b256: da21         	bge	0xb29c <ram_probe::packed_probe::candidate+0x1834> @ imm = #0x42
    b258: ed9f 6a75    	vldr	s12, [pc, #468]         @ 0xb430 <ram_probe::packed_probe::candidate+0x19c8>
    b25c: eef4 7a46    	vcmp.f32	s15, s12
    b260: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b264: d90c         	bls	0xb280 <ram_probe::packed_probe::candidate+0x1818> @ imm = #0x18
    b266: ed9f 6a73    	vldr	s12, [pc, #460]         @ 0xb434 <ram_probe::packed_probe::candidate+0x19cc>
    b26a: eef4 7a46    	vcmp.f32	s15, s12
    b26e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b272: d90d         	bls	0xb290 <ram_probe::packed_probe::candidate+0x1828> @ imm = #0x1a
    b274: ed9f 6a70    	vldr	s12, [pc, #448]         @ 0xb438 <ram_probe::packed_probe::candidate+0x19d0>
    b278: e00c         	b	0xb294 <ram_probe::packed_probe::candidate+0x182c> @ imm = #0x18
    b27a: bf00         	nop
    b27c: bf00         	nop
    b27e: bf00         	nop
    b280: ed9f 2a02    	vldr	s4, [pc, #8]            @ 0xb28c <ram_probe::packed_probe::candidate+0x1824>
    b284: e008         	b	0xb298 <ram_probe::packed_probe::candidate+0x1830> @ imm = #0x10
    b286: bf00         	nop
    b288: 17 b7 d1 38  	.word	0x38d1b717
    b28c: 00 00 00 00  	.word	0x00000000
    b290: ed9f 6ad4    	vldr	s12, [pc, #848]         @ 0xb5e4 <ram_probe::packed_probe::candidate+0x1b7c>
    b294: ee22 2a06    	vmul.f32	s4, s4, s12
    b298: eeb1 6a42    	vneg.f32	s12, s4
    b29c: 2800         	cmp	r0, #0x0
    b29e: ee28 6a86    	vmul.f32	s12, s17, s12
    b2a2: f04f 000d    	mov.w	r0, #0xd
    b2a6: eeb4 7a40    	vcmp.f32	s14, s0
    b2aa: fe09 2a08    	vseleq.f32	s4, s18, s16
    b2ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b2b2: eef4 ea62    	vcmp.f32	s29, s5
    b2b6: ee62 0a0d    	vmul.f32	s1, s4, s26
    b2ba: ed9f 2acb    	vldr	s4, [pc, #812]          @ 0xb5e8 <ram_probe::packed_probe::candidate+0x1b80>
    b2be: ee66 1a02    	vmul.f32	s3, s12, s4
    b2c2: ed9f 2aca    	vldr	s4, [pc, #808]          @ 0xb5ec <ram_probe::packed_probe::candidate+0x1b84>
    b2c6: ee40 1a82    	vmla.f32	s3, s1, s4
    b2ca: ee26 2a03    	vmul.f32	s4, s12, s6
    b2ce: ed9f 3ac8    	vldr	s6, [pc, #800]          @ 0xb5f0 <ram_probe::packed_probe::candidate+0x1b88>
    b2d2: ee00 2a83    	vmla.f32	s4, s1, s6
    b2d6: ed9f 3ac7    	vldr	s6, [pc, #796]          @ 0xb5f4 <ram_probe::packed_probe::candidate+0x1b8c>
    b2da: ee26 6a03    	vmul.f32	s12, s12, s6
    b2de: ee00 6aaa    	vmla.f32	s12, s1, s21
    b2e2: ee71 0aa6    	vadd.f32	s1, s3, s13
    b2e6: ed8d 2a77    	vstr	s4, [sp, #476]
    b2ea: edcd 0a78    	vstr	s1, [sp, #480]
    b2ee: bf88         	it	hi
    b2f0: 200e         	movhi	r0, #0xe
    b2f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b2f6: ed8d 6a79    	vstr	s12, [sp, #484]
    b2fa: dd21         	ble	0xb340 <ram_probe::packed_probe::candidate+0x18d8> @ imm = #0x42
    b2fc: eef5 ea40    	vcmp.f32	s29, #0
    b300: eddd fa16    	vldr	s31, [sp, #88]
    b304: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b308: eddd 2a15    	vldr	s5, [sp, #84]
    b30c: d51c         	bpl	0xb348 <ram_probe::packed_probe::candidate+0x18e0> @ imm = #0x38
    b30e: eeb0 0a66    	vmov.f32	s0, s13
    b312: ee0e 0a8f    	vmla.f32	s0, s29, s30
    b316: ed9f 6a08    	vldr	s12, [pc, #32]          @ 0xb338 <ram_probe::packed_probe::candidate+0x18d0>
    b31a: ee20 0a06    	vmul.f32	s0, s0, s12
    b31e: ed9f 6a07    	vldr	s12, [pc, #28]          @ 0xb33c <ram_probe::packed_probe::candidate+0x18d4>
    b322: eeb4 0a46    	vcmp.f32	s0, s12
    b326: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b32a: bfc8         	it	gt
    b32c: eddf aab2    	vldrgt	s21, [pc, #712]         @ 0xb5f8 <ram_probe::packed_probe::candidate+0x1b90>
    b330: e00a         	b	0xb348 <ram_probe::packed_probe::candidate+0x18e0> @ imm = #0x14
    b332: bf00         	nop
    b334: 99 76 cd 39  	.word	0x39cd7699
    b338: 2b 18 95 3b  	.word	0x3b95182b
    b33c: 95 bf d6 33  	.word	0x33d6bf95
    b340: eddd fa16    	vldr	s31, [sp, #88]
    b344: eddd 2a15    	vldr	s5, [sp, #84]
    b348: f64d 3140    	movw	r1, #0xdb40
    b34c: ee25 6a2a    	vmul.f32	s12, s10, s21
    b350: f2c0 0100    	movt	r1, #0x0
    b354: eb01 1080    	add.w	r0, r1, r0, lsl #6
    b358: ed90 7b0c    	vldr	d7, [r0, #48]
    b35c: eeb7 7bc7    	vcvt.f32.f64	s14, d7
    b360: ed90 8b0a    	vldr	d8, [r0, #40]
    b364: ee46 4a47    	vmls.f32	s9, s12, s14
    b368: eeb7 7bc8    	vcvt.f32.f64	s14, d8
    b36c: ed90 0b08    	vldr	d0, [r0, #32]
    b370: ee06 3a47    	vmls.f32	s6, s12, s14
    b374: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b378: ee20 6a46    	vnmul.f32	s12, s0, s12
    b37c: ed8d 3a7b    	vstr	s6, [sp, #492]
    b380: ee31 0a24    	vadd.f32	s0, s2, s9
    b384: ed8d 6a7a    	vstr	s12, [sp, #488]
    b388: eeb1 3a63    	vneg.f32	s6, s7
    b38c: ed8d 0a7c    	vstr	s0, [sp, #496]
    b390: eeb1 0a4c    	vneg.f32	s0, s24
    b394: ed8d 3a90    	vstr	s6, [sp, #576]
    b398: ed8d 0a91    	vstr	s0, [sp, #580]
    b39c: ed1f 0a46    	vldr	s0, [pc, #-280]         @ 0xb288 <ram_probe::packed_probe::candidate+0x1820>
    b3a0: eeb1 1a4a    	vneg.f32	s2, s20
    b3a4: eef4 2a40    	vcmp.f32	s5, s0
    b3a8: ed8d 1a92    	vstr	s2, [sp, #584]
    b3ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b3b0: f240 81f6    	bls.w	0xb7a0 <ram_probe::packed_probe::candidate+0x1d38> @ imm = #0x3ec
    b3b4: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    b3b8: a967         	add	r1, sp, #0x19c
    b3ba: 3001         	adds	r0, #0x1
    b3bc: f8c4 010c    	str.w	r0, [r4, #0x10c]
    b3c0: a874         	add	r0, sp, #0x1d0
    b3c2: aa34         	add	r2, sp, #0xd0
    b3c4: ab53         	add	r3, sp, #0x14c
    b3c6: ed9d 0a0a    	vldr	s0, [sp, #40]
    b3ca: ed8d 0a6b    	vstr	s0, [sp, #428]
    b3ce: ed9d 0a0c    	vldr	s0, [sp, #48]
    b3d2: ed8d 0a6c    	vstr	s0, [sp, #432]
    b3d6: ed9d 0a0b    	vldr	s0, [sp, #44]
    b3da: ed8d 0a6d    	vstr	s0, [sp, #436]
    b3de: f8cd a000    	str.w	r10, [sp]
    b3e2: f7fa fc75    	bl	0x5cd0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>> @ imm = #-0x5716
    b3e6: f89d 01d5    	ldrb.w	r0, [sp, #0x1d5]
    b3ea: f89d 11d4    	ldrb.w	r1, [sp, #0x1d4]
    b3ee: 2801         	cmp	r0, #0x1
    b3f0: 448b         	add	r11, r1
    b3f2: d12d         	bne	0xb450 <ram_probe::packed_probe::candidate+0x19e8> @ imm = #0x5a
    b3f4: ed9d 1a0d    	vldr	s2, [sp, #52]
    b3f8: ed9d 0a74    	vldr	s0, [sp, #464]
    b3fc: eeb4 1a41    	vcmp.f32	s2, s2
    b400: eddd ea11    	vldr	s29, [sp, #68]
    b404: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b408: eeb4 0a40    	vcmp.f32	s0, s0
    b40c: eddd fa16    	vldr	s31, [sp, #88]
    b410: fe10 1a01    	vselvs.f32	s2, s0, s2
    b414: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b418: fe11 0a00    	vselvs.f32	s0, s2, s0
    b41c: eeb4 1a40    	vcmp.f32	s2, s0
    b420: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b424: fe31 8a00    	vselgt.f32	s16, s2, s0
    b428: e048         	b	0xb4bc <ram_probe::packed_probe::candidate+0x1a54> @ imm = #0x90
    b42a: bf00         	nop
    b42c: 0a d7 23 3d  	.word	0x3d23d70a
    b430: 7c f2 b0 3a  	.word	0x3ab0f27c
    b434: a6 9b c4 3b  	.word	0x3bc49ba6
    b438: 79 78 b0 43  	.word	0x43b07879
    b43c: 79 61 2e c3  	.word	0xc32e6179
    b440: 00 00 00 80  	.word	0x80000000
    b444: fc 9d 08 bf  	.word	0xbf089dfc
    b448: 83 c0 96 38  	.word	0x3896c083
    b44c: d6 f8 e4 b6  	.word	0xb6e4f8d6
    b450: a874         	add	r0, sp, #0x1d0
    b452: a967         	add	r1, sp, #0x19c
    b454: aa34         	add	r2, sp, #0xd0
    b456: ab53         	add	r3, sp, #0x14c
    b458: 2600         	movs	r6, #0x0
    b45a: 966d         	str	r6, [sp, #0x1b4]
    b45c: e9cd 666b    	strd	r6, r6, [sp, #428]
    b460: f8cd a000    	str.w	r10, [sp]
    b464: f7fa fc34    	bl	0x5cd0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3, false, 6>> @ imm = #-0x5798
    b468: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    b46c: 3001         	adds	r0, #0x1
    b46e: bf28         	it	hs
    b470: f04f 30ff    	movhs.w	r0, #0xffffffff
    b474: ed9d 1a0d    	vldr	s2, [sp, #52]
    b478: ed9d 0a74    	vldr	s0, [sp, #464]
    b47c: eeb4 1a41    	vcmp.f32	s2, s2
    b480: f89d 11d4    	ldrb.w	r1, [sp, #0x1d4]
    b484: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b488: eeb4 0a40    	vcmp.f32	s0, s0
    b48c: f89d 21d5    	ldrb.w	r2, [sp, #0x1d5]
    b490: fe10 1a01    	vselvs.f32	s2, s0, s2
    b494: 448b         	add	r11, r1
    b496: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b49a: eddd ea11    	vldr	s29, [sp, #68]
    b49e: eddd fa16    	vldr	s31, [sp, #88]
    b4a2: fe11 2a00    	vselvs.f32	s4, s2, s0
    b4a6: f8c4 011c    	str.w	r0, [r4, #0x11c]
    b4aa: eeb4 1a42    	vcmp.f32	s2, s4
    b4ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b4b2: fe31 8a02    	vselgt.f32	s16, s2, s4
    b4b6: 2a00         	cmp	r2, #0x0
    b4b8: f000 83a6    	beq.w	0xbc08 <ram_probe::packed_probe::candidate+0x21a0> @ imm = #0x74c
    b4bc: ed9d 0a6c    	vldr	s0, [sp, #432]
    b4c0: ed9d 1a6d    	vldr	s2, [sp, #436]
    b4c4: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b4c8: eeb3 4a05    	vmov.f32	s8, #2.100000e+01
    b4cc: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    b4d0: ed9d 6a10    	vldr	s12, [sp, #64]
    b4d4: ed9f 2ba8    	vldr	d2, [pc, #672]          @ 0xb778 <ram_probe::packed_probe::candidate+0x1d10>
    b4d8: ed9d 9b4c    	vldr	d9, [sp, #304]
    b4dc: ee00 9b02    	vmla.f64	d9, d0, d2
    b4e0: ee01 9b42    	vmls.f64	d9, d1, d2
    b4e4: eeb7 1ace    	vcvt.f64.f32	d1, s28
    b4e8: ed9f 0ba5    	vldr	d0, [pc, #660]          @ 0xb780 <ram_probe::packed_probe::candidate+0x1d18>
    b4ec: ed9f 2ba6    	vldr	d2, [pc, #664]          @ 0xb788 <ram_probe::packed_probe::candidate+0x1d20>
    b4f0: ee29 0b00    	vmul.f64	d0, d9, d0
    b4f4: ee01 0b02    	vmla.f64	d0, d1, d2
    b4f8: ed9f 1ba5    	vldr	d1, [pc, #660]          @ 0xb790 <ram_probe::packed_probe::candidate+0x1d28>
    b4fc: ee20 0b01    	vmul.f64	d0, d0, d1
    b500: eebb 1a05    	vmov.f32	s2, #-2.100000e+01
    b504: ed9d ab42    	vldr	d10, [sp, #264]
    b508: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b50c: eeb4 1a40    	vcmp.f32	s2, s0
    b510: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b514: fe31 0a00    	vselgt.f32	s0, s2, s0
    b518: eeb4 0a44    	vcmp.f32	s0, s8
    b51c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b520: eeb4 6a6f    	vcmp.f32	s12, s31
    b524: fe34 2a00    	vselgt.f32	s4, s8, s0
    b528: ed9d 0a6e    	vldr	s0, [sp, #440]
    b52c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b530: ed8d 2a6e    	vstr	s4, [sp, #440]
    b534: f200 8464    	bhi.w	0xbe00 <ram_probe::packed_probe::candidate+0x2398> @ imm = #0x8c8
    b538: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    b53c: ed9f 3b96    	vldr	d3, [pc, #600]          @ 0xb798 <ram_probe::packed_probe::candidate+0x1d30>
    b540: eeb0 5b49    	vmov.f64	d5, d9
    b544: ee01 5b03    	vmla.f64	d5, d1, d3
    b548: ed9f 3a2c    	vldr	s6, [pc, #176]          @ 0xb5fc <ram_probe::packed_probe::candidate+0x1b94>
    b54c: eeb7 1bc5    	vcvt.f32.f64	s2, d5
    b550: eeb7 5bca    	vcvt.f32.f64	s10, d10
    b554: ee41 ea03    	vmla.f32	s29, s2, s6
    b558: ed9f 3a29    	vldr	s6, [pc, #164]          @ 0xb600 <ram_probe::packed_probe::candidate+0x1b98>
    b55c: ee02 5a03    	vmla.f32	s10, s4, s6
    b560: eeb4 6a6e    	vcmp.f32	s12, s29
    b564: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b568: fe36 1a2e    	vselgt.f32	s2, s12, s29
    b56c: eeb4 1a6f    	vcmp.f32	s2, s31
    b570: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b574: fe3f 1a81    	vselgt.f32	s2, s31, s2
    b578: eeb0 6ac1    	vabs.f32	s12, s2
    b57c: eeb4 6a44    	vcmp.f32	s12, s8
    b580: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b584: dd40         	ble	0xb608 <ram_probe::packed_probe::candidate+0x1ba0> @ imm = #0x80
    b586: eec4 2a06    	vdiv.f32	s5, s8, s12
    b58a: ee22 3aa2    	vmul.f32	s6, s5, s5
    b58e: ee23 3a03    	vmul.f32	s6, s6, s6
    b592: ee23 3a03    	vmul.f32	s6, s6, s6
    b596: ee63 4a03    	vmul.f32	s9, s6, s6
    b59a: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    b59e: ee74 0a83    	vadd.f32	s1, s9, s6
    b5a2: eeb0 7a43    	vmov.f32	s14, s6
    b5a6: eef4 0a43    	vcmp.f32	s1, s6
    b5aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b5ae: d009         	beq	0xb5c4 <ram_probe::packed_probe::candidate+0x1b5c> @ imm = #0x12
    b5b0: eef1 0ae0    	vsqrt.f32	s1, s1
    b5b4: eef1 0ae0    	vsqrt.f32	s1, s1
    b5b8: eef1 0ae0    	vsqrt.f32	s1, s1
    b5bc: eef1 0ae0    	vsqrt.f32	s1, s1
    b5c0: eeb0 7a60    	vmov.f32	s14, s1
    b5c4: ee11 0a10    	vmov	r0, s2
    b5c8: f04f 517e    	mov.w	r1, #0x3f800000
    b5cc: eec3 8a07    	vdiv.f32	s17, s6, s14
    b5d0: f361 001e    	bfi	r0, r1, #0, #31
    b5d4: ee00 0a90    	vmov	s1, r0
    b5d8: ee20 3a84    	vmul.f32	s6, s1, s8
    b5dc: ee23 3a28    	vmul.f32	s6, s6, s17
    b5e0: e035         	b	0xb64e <ram_probe::packed_probe::candidate+0x1be6> @ imm = #0x6a
    b5e2: bf00         	nop
    b5e4: 53 4a a1 43  	.word	0x43a14a53
    b5e8: af e6 27 39  	.word	0x3927e6af
    b5ec: d5 35 a4 be  	.word	0xbea435d5
    b5f0: 6f f3 03 be  	.word	0xbe03f36f
    b5f4: 79 2e 02 b9  	.word	0xb9022e79
    b5f8: 2b 18 15 3b  	.word	0x3b15182b
    b5fc: d2 4e da 43  	.word	0x43da4ed2
    b600: cd 1e 2c be  	.word	0xbe2c1ecd
    b604: 00 00 70 42  	.word	0x42700000
    b608: eec1 2a04    	vdiv.f32	s5, s2, s8
    b60c: ee22 3aa2    	vmul.f32	s6, s5, s5
    b610: ee23 3a03    	vmul.f32	s6, s6, s6
    b614: ee23 3a03    	vmul.f32	s6, s6, s6
    b618: ee63 4a03    	vmul.f32	s9, s6, s6
    b61c: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    b620: ee34 7a83    	vadd.f32	s14, s9, s6
    b624: eef0 0a43    	vmov.f32	s1, s6
    b628: eeb4 7a43    	vcmp.f32	s14, s6
    b62c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b630: d009         	beq	0xb646 <ram_probe::packed_probe::candidate+0x1bde> @ imm = #0x12
    b632: eeb1 7ac7    	vsqrt.f32	s14, s14
    b636: eeb1 7ac7    	vsqrt.f32	s14, s14
    b63a: eeb1 7ac7    	vsqrt.f32	s14, s14
    b63e: eeb1 7ac7    	vsqrt.f32	s14, s14
    b642: eef0 0a47    	vmov.f32	s1, s14
    b646: eec3 8a20    	vdiv.f32	s17, s6, s1
    b64a: ee21 3a28    	vmul.f32	s6, s2, s17
    b64e: eef0 0ac3    	vabs.f32	s1, s6
    b652: eeb3 7a08    	vmov.f32	s14, #2.400000e+01
    b656: eef2 6a00    	vmov.f32	s13, #8.000000e+00
    b65a: ed5f 3a16    	vldr	s7, [pc, #-88]          @ 0xb604 <ram_probe::packed_probe::candidate+0x1b9c>
    b65e: eeb1 da04    	vmov.f32	s26, #5.000000e+00
    b662: eef0 7ac5    	vabs.f32	s15, s10
    b666: ee77 5a60    	vsub.f32	s11, s14, s1
    b66a: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    b66e: fec5 1aa6    	vmaxnm.f32	s3, s11, s13
    b672: ee83 caa1    	vdiv.f32	s24, s7, s3
    b676: fe8c ea4d    	vminnm.f32	s28, s24, s26
    b67a: ee87 ba8e    	vdiv.f32	s22, s15, s28
    b67e: eece ba27    	vdiv.f32	s23, s28, s15
    b682: eeb4 ba60    	vcmp.f32	s22, s1
    b686: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b68a: fe7b 7a8b    	vselgt.f32	s15, s23, s22
    b68e: ee67 7aa7    	vmul.f32	s15, s15, s15
    b692: ee67 7aa7    	vmul.f32	s15, s15, s15
    b696: ee67 7aa7    	vmul.f32	s15, s15, s15
    b69a: ee27 faa7    	vmul.f32	s30, s15, s15
    b69e: eef0 7a60    	vmov.f32	s15, s1
    b6a2: ee7f ca20    	vadd.f32	s25, s30, s1
    b6a6: eef4 ca60    	vcmp.f32	s25, s1
    b6aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b6ae: d009         	beq	0xb6c4 <ram_probe::packed_probe::candidate+0x1c5c> @ imm = #0x12
    b6b0: eef0 7a6c    	vmov.f32	s15, s25
    b6b4: eef1 7ae7    	vsqrt.f32	s15, s15
    b6b8: eef1 7ae7    	vsqrt.f32	s15, s15
    b6bc: eef1 7ae7    	vsqrt.f32	s15, s15
    b6c0: eef1 7ae7    	vsqrt.f32	s15, s15
    b6c4: eec0 7aa7    	vdiv.f32	s15, s1, s15
    b6c8: eeb4 ba60    	vcmp.f32	s22, s1
    b6cc: eef0 0a42    	vmov.f32	s1, s4
    b6d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b6d4: ee6b daa7    	vmul.f32	s27, s23, s15
    b6d8: eef1 ba6b    	vneg.f32	s23, s23
    b6dc: fe7d daa7    	vselgt.f32	s27, s27, s15
    b6e0: fe7b ba8b    	vselgt.f32	s23, s23, s22
    b6e4: ee43 0a6d    	vmls.f32	s1, s6, s27
    b6e8: ee10 0a90    	vmov	r0, s1
    b6ec: f020 4000    	bic	r0, r0, #0x80000000
    b6f0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b6f4: f280 8228    	bge.w	0xbb48 <ram_probe::packed_probe::candidate+0x20e0> @ imm = #0x450
    b6f8: eeb0 bae0    	vabs.f32	s22, s1
    b6fc: ee8b 7a07    	vdiv.f32	s14, s22, s14
    b700: ed9f baf2    	vldr	s22, [pc, #968]         @ 0xbacc <ram_probe::packed_probe::candidate+0x2064>
    b704: eeb4 7a4b    	vcmp.f32	s14, s22
    b708: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b70c: f200 821c    	bhi.w	0xbb48 <ram_probe::packed_probe::candidate+0x20e0> @ imm = #0x438
    b710: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    b714: ee64 2aa2    	vmul.f32	s5, s9, s5
    b718: 2000         	movs	r0, #0x0
    b71a: 2100         	movs	r1, #0x0
    b71c: eec7 caac    	vdiv.f32	s25, s15, s25
    b720: ee74 da8b    	vadd.f32	s27, s9, s22
    b724: ed9d ba10    	vldr	s22, [sp, #64]
    b728: eef4 ea4b    	vcmp.f32	s29, s22
    b72c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b730: eec8 8aad    	vdiv.f32	s17, s17, s27
    b734: bfc8         	it	gt
    b736: 2001         	movgt	r0, #0x1
    b738: eef4 ea6f    	vcmp.f32	s29, s31
    b73c: ee68 2aa2    	vmul.f32	s5, s17, s5
    b740: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b744: bf48         	it	mi
    b746: 2101         	movmi	r1, #0x1
    b748: eeb4 6a44    	vcmp.f32	s12, s8
    b74c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b750: eef5 ba40    	vcmp.f32	s23, #0
    b754: fe32 4aa8    	vselgt.f32	s8, s5, s17
    b758: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b75c: f280 8178    	bge.w	0xba50 <ram_probe::packed_probe::candidate+0x1fe8> @ imm = #0x2f0
    b760: ee8b 5a85    	vdiv.f32	s10, s23, s10
    b764: eeb1 fa6b    	vneg.f32	s30, s23
    b768: ee6b 7ae7    	vnmul.f32	s15, s23, s15
    b76c: ee25 5a2c    	vmul.f32	s10, s10, s25
    b770: e17c         	b	0xba6c <ram_probe::packed_probe::candidate+0x2004> @ imm = #0x2f8
    b772: bf00         	nop
    b774: bf00         	nop
    b776: bf00         	nop
    b778: e6 a7 5c a0  	.word	0xa05ca7e6
    b77c: 06 41 d9 3f  	.word	0x3fd94106
    b780: b4 cf 84 3d  	.word	0x3d84cfb4
    b784: da 49 7b 40  	.word	0x407b49da
    b788: 9d ef 37 e8  	.word	0xe837ef9d
    b78c: fb ff dc 3e  	.word	0x3edcfffb
    b790: 42 77 58 2e  	.word	0x2e587742
    b794: 02 40 b9 3f  	.word	0x3fb94002
    b798: 19 d5 65 36  	.word	0x3665d519
    b79c: d0 6e 95 bf  	.word	0xbf956ed0
    b7a0: eeb0 0ac2    	vabs.f32	s0, s4
    b7a4: 2100         	movs	r1, #0x0
    b7a6: eeb0 1ae5    	vabs.f32	s2, s11
    b7aa: eeb4 0a41    	vcmp.f32	s0, s2
    b7ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b7b2: eeb0 1ac6    	vabs.f32	s2, s12
    b7b6: fe32 0a25    	vselgt.f32	s0, s4, s11
    b7ba: bfc8         	it	gt
    b7bc: 2101         	movgt	r1, #0x1
    b7be: eeb0 0ac0    	vabs.f32	s0, s0
    b7c2: eeb4 1a40    	vcmp.f32	s2, s0
    b7c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b7ca: bfc8         	it	gt
    b7cc: 2102         	movgt	r1, #0x2
    b7ce: f8dd c1d4    	ldr.w	r12, [sp, #0x1d4]
    b7d2: eb01 0041    	add.w	r0, r1, r1, lsl #1
    b7d6: eb08 0280    	add.w	r2, r8, r0, lsl #2
    b7da: f858 3020    	ldr.w	r3, [r8, r0, lsl #2]
    b7de: e9d2 6501    	ldrd	r6, r5, [r2, #4]
    b7e2: 9675         	str	r6, [sp, #0x1d4]
    b7e4: 9e76         	ldr	r6, [sp, #0x1d8]
    b7e6: 9576         	str	r5, [sp, #0x1d8]
    b7e8: 9d74         	ldr	r5, [sp, #0x1d0]
    b7ea: 9374         	str	r3, [sp, #0x1d0]
    b7ec: f848 5020    	str.w	r5, [r8, r0, lsl #2]
    b7f0: e9c2 c601    	strd	r12, r6, [r2, #4]
    b7f4: f50d 7c10    	add.w	r12, sp, #0x240
    b7f8: ed9d 1a74    	vldr	s2, [sp, #464]
    b7fc: eb0c 0281    	add.w	r2, r12, r1, lsl #2
    b800: ee11 0a10    	vmov	r0, s2
    b804: f85c 1021    	ldr.w	r1, [r12, r1, lsl #2]
    b808: 9190         	str	r1, [sp, #0x240]
    b80a: ed82 3a00    	vstr	s6, [r2]
    b80e: f020 4000    	bic	r0, r0, #0x80000000
    b812: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b816: f6bf adcd    	bge.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #-0x466
    b81a: eeb0 0ac1    	vabs.f32	s0, s2
    b81e: ed9f 2ae1    	vldr	s4, [pc, #900]          @ 0xbba4 <ram_probe::packed_probe::candidate+0x213c>
    b822: eeb4 0a42    	vcmp.f32	s0, s4
    b826: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b82a: f53f adc3    	bmi.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #-0x47a
    b82e: ed9d 0a7a    	vldr	s0, [sp, #488]
    b832: ed9d 3a77    	vldr	s6, [sp, #476]
    b836: ee80 0a01    	vdiv.f32	s0, s0, s2
    b83a: eddd 1a7b    	vldr	s3, [sp, #492]
    b83e: eec3 0a01    	vdiv.f32	s1, s6, s2
    b842: ed9d 3a75    	vldr	s6, [sp, #468]
    b846: eddd 3a78    	vldr	s7, [sp, #480]
    b84a: ed9d 6a90    	vldr	s12, [sp, #576]
    b84e: ee43 1a40    	vmls.f32	s3, s6, s0
    b852: ed9d 7a76    	vldr	s14, [sp, #472]
    b856: ee40 3ac3    	vmls.f32	s7, s1, s6
    b85a: eddd 4a79    	vldr	s9, [sp, #484]
    b85e: ee40 4ac7    	vmls.f32	s9, s1, s14
    b862: eddd 5a91    	vldr	s11, [sp, #580]
    b866: ee40 5ac6    	vmls.f32	s11, s1, s12
    b86a: f108 020c    	add.w	r2, r8, #0xc
    b86e: 4611         	mov	r1, r2
    b870: edcd 1a7b    	vstr	s3, [sp, #492]
    b874: edcd 3a78    	vstr	s7, [sp, #480]
    b878: eef0 0ae1    	vabs.f32	s1, s3
    b87c: edcd 4a79    	vstr	s9, [sp, #484]
    b880: eef0 7ae3    	vabs.f32	s15, s7
    b884: eddd 3a7c    	vldr	s7, [sp, #496]
    b888: ee47 3a40    	vmls.f32	s7, s14, s0
    b88c: eddd 4a92    	vldr	s9, [sp, #584]
    b890: edcd 5a91    	vstr	s11, [sp, #580]
    b894: ee46 4a40    	vmls.f32	s9, s12, s0
    b898: eef4 0a67    	vcmp.f32	s1, s15
    b89c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b8a0: bfc8         	it	gt
    b8a2: f108 0118    	addgt.w	r1, r8, #0x18
    b8a6: edcd 3a7c    	vstr	s7, [sp, #496]
    b8aa: f8d2 e000    	ldr.w	lr, [r2]
    b8ae: e9d1 6000    	ldrd	r6, r0, [r1]
    b8b2: 688b         	ldr	r3, [r1, #0x8]
    b8b4: 6016         	str	r6, [r2]
    b8b6: 6856         	ldr	r6, [r2, #0x4]
    b8b8: 6050         	str	r0, [r2, #0x4]
    b8ba: 6890         	ldr	r0, [r2, #0x8]
    b8bc: 6093         	str	r3, [r2, #0x8]
    b8be: e9c1 6001    	strd	r6, r0, [r1, #4]
    b8c2: eddd 0a78    	vldr	s1, [sp, #480]
    b8c6: f04f 0004    	mov.w	r0, #0x4
    b8ca: ee10 2a90    	vmov	r2, s1
    b8ce: bfc8         	it	gt
    b8d0: 2008         	movgt	r0, #0x8
    b8d2: edcd 4a92    	vstr	s9, [sp, #584]
    b8d6: f8c1 e000    	str.w	lr, [r1]
    b8da: f85c 1000    	ldr.w	r1, [r12, r0]
    b8de: 4460         	add	r0, r12
    b8e0: f022 4200    	bic	r2, r2, #0x80000000
    b8e4: f1b2 4fff    	cmp.w	r2, #0x7f800000
    b8e8: 9191         	str	r1, [sp, #0x244]
    b8ea: edc0 5a00    	vstr	s11, [r0]
    b8ee: f6bf ad61    	bge.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #-0x53e
    b8f2: eeb0 0ae0    	vabs.f32	s0, s1
    b8f6: eeb4 0a42    	vcmp.f32	s0, s4
    b8fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b8fe: f53f ad59    	bmi.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #-0x54e
    b902: ed9d 0a7b    	vldr	s0, [sp, #492]
    b906: eddd 4a7c    	vldr	s9, [sp, #496]
    b90a: eec0 3a20    	vdiv.f32	s7, s0, s1
    b90e: eddd 1a79    	vldr	s3, [sp, #484]
    b912: ee43 4ae1    	vmls.f32	s9, s7, s3
    b916: ee14 0a90    	vmov	r0, s9
    b91a: f020 4000    	bic	r0, r0, #0x80000000
    b91e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b922: f6bf ad47    	bge.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #-0x572
    b926: eeb0 0ae4    	vabs.f32	s0, s9
    b92a: eeb4 0a42    	vcmp.f32	s0, s4
    b92e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b932: f53f ad3f    	bmi.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #-0x582
    b936: ed9d 0a91    	vldr	s0, [sp, #580]
    b93a: ed9d 2a92    	vldr	s4, [sp, #584]
    b93e: ee03 2ac0    	vmls.f32	s4, s7, s0
    b942: ee82 2a24    	vdiv.f32	s4, s4, s9
    b946: ee01 0ac2    	vmls.f32	s0, s3, s4
    b94a: eddd 1a09    	vldr	s3, [sp, #36]
    b94e: eef0 1ae1    	vabs.f32	s3, s3
    b952: eef4 1a61    	vcmp.f32	s3, s3
    b956: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b95a: eec0 0a20    	vdiv.f32	s1, s0, s1
    b95e: fe16 0aa1    	vselvs.f32	s0, s13, s3
    b962: ee03 6a60    	vmls.f32	s12, s6, s1
    b966: eeb4 0a66    	vcmp.f32	s0, s13
    b96a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b96e: ee07 6a42    	vmls.f32	s12, s14, s4
    b972: fe30 3a26    	vselgt.f32	s6, s0, s13
    b976: ed9f 0aa9    	vldr	s0, [pc, #676]          @ 0xbc1c <ram_probe::packed_probe::candidate+0x21b4>
    b97a: ee23 3a00    	vmul.f32	s6, s6, s0
    b97e: ee86 1a01    	vdiv.f32	s2, s12, s2
    b982: eeb0 6ac1    	vabs.f32	s12, s2
    b986: ed9f 1aa6    	vldr	s2, [pc, #664]          @ 0xbc20 <ram_probe::packed_probe::candidate+0x21b8>
    b98a: fe83 3a41    	vminnm.f32	s6, s6, s2
    b98e: eeb4 6a43    	vcmp.f32	s12, s6
    b992: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b996: f63f ad0d    	bhi.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #-0x5e6
    b99a: eeb0 3ac4    	vabs.f32	s6, s8
    b99e: eeb0 4ae0    	vabs.f32	s8, s1
    b9a2: eeb4 3a43    	vcmp.f32	s6, s6
    b9a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9aa: fe16 3a83    	vselvs.f32	s6, s13, s6
    b9ae: eeb4 3a66    	vcmp.f32	s6, s13
    b9b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9b6: fe33 3a26    	vselgt.f32	s6, s6, s13
    b9ba: ee23 3a00    	vmul.f32	s6, s6, s0
    b9be: fe83 3a41    	vminnm.f32	s6, s6, s2
    b9c2: eeb4 4a43    	vcmp.f32	s8, s6
    b9c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9ca: f63f acf3    	bhi.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #-0x61a
    b9ce: eeb0 3ac5    	vabs.f32	s6, s10
    b9d2: eeb0 2ac2    	vabs.f32	s4, s4
    b9d6: eeb4 3a43    	vcmp.f32	s6, s6
    b9da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9de: fe16 3a83    	vselvs.f32	s6, s13, s6
    b9e2: eeb4 3a66    	vcmp.f32	s6, s13
    b9e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9ea: fe33 3a26    	vselgt.f32	s6, s6, s13
    b9ee: ee23 0a00    	vmul.f32	s0, s6, s0
    b9f2: fe80 0a41    	vminnm.f32	s0, s0, s2
    b9f6: eeb4 2a40    	vcmp.f32	s4, s0
    b9fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9fe: f63f acd9    	bhi.w	0xb3b4 <ram_probe::packed_probe::candidate+0x194c> @ imm = #-0x64e
    ba02: ed9d 0a0d    	vldr	s0, [sp, #52]
    ba06: f8d4 0108    	ldr.w	r0, [r4, #0x108]
    ba0a: eeb4 0a40    	vcmp.f32	s0, s0
    ba0e: f8d4 1110    	ldr.w	r1, [r4, #0x110]
    ba12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba16: eef4 2a62    	vcmp.f32	s5, s5
    ba1a: eddd ea11    	vldr	s29, [sp, #68]
    ba1e: fe12 0a80    	vselvs.f32	s0, s5, s0
    ba22: edcd 9a71    	vstr	s19, [sp, #452]
    ba26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba2a: ed9d 2a06    	vldr	s4, [sp, #24]
    ba2e: ed8d 2a72    	vstr	s4, [sp, #456]
    ba32: fe10 1a22    	vselvs.f32	s2, s0, s5
    ba36: 3001         	adds	r0, #0x1
    ba38: f8c4 0108    	str.w	r0, [r4, #0x108]
    ba3c: 1c48         	adds	r0, r1, #0x1
    ba3e: f8c4 0110    	str.w	r0, [r4, #0x110]
    ba42: eeb4 0a41    	vcmp.f32	s0, s2
    ba46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba4a: fe30 8a01    	vselgt.f32	s16, s0, s2
    ba4e: e535         	b	0xb4bc <ram_probe::packed_probe::candidate+0x1a54> @ imm = #-0x596
    ba50: eeb1 6a4f    	vneg.f32	s12, s30
    ba54: eeb5 5a40    	vcmp.f32	s10, #0
    ba58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba5c: ee86 6a05    	vdiv.f32	s12, s12, s10
    ba60: ed9f 5ae6    	vldr	s10, [pc, #920]         @ 0xbdfc <ram_probe::packed_probe::candidate+0x2394>
    ba64: ee26 6a2c    	vmul.f32	s12, s12, s25
    ba68: fe05 5a06    	vseleq.f32	s10, s10, s12
    ba6c: ee8f 6a0e    	vdiv.f32	s12, s30, s28
    ba70: 4008         	ands	r0, r1
    ba72: eeb4 ca4d    	vcmp.f32	s24, s26
    ba76: eddf 2ae1    	vldr	s5, [pc, #900]          @ 0xbdfc <ram_probe::packed_probe::candidate+0x2394>
    ba7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba7e: ee2c 6a86    	vmul.f32	s12, s25, s12
    ba82: d525         	bpl	0xbad0 <ram_probe::packed_probe::candidate+0x2068> @ imm = #0x4a
    ba84: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    ba88: eeb5 3a40    	vcmp.f32	s6, #0
    ba8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba90: d020         	beq	0xbad4 <ram_probe::packed_probe::candidate+0x206c> @ imm = #0x40
    ba92: eef4 5a66    	vcmp.f32	s11, s13
    ba96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba9a: dd1b         	ble	0xbad4 <ram_probe::packed_probe::candidate+0x206c> @ imm = #0x36
    ba9c: ee13 1a10    	vmov	r1, s6
    baa0: f04f 527e    	mov.w	r2, #0x3f800000
    baa4: eeb4 3a43    	vcmp.f32	s6, s6
    baa8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    baac: f362 011e    	bfi	r1, r2, #0, #31
    bab0: ee61 1aa1    	vmul.f32	s3, s3, s3
    bab4: ee02 1a90    	vmov	s5, r1
    bab8: ee62 2aa3    	vmul.f32	s5, s5, s7
    babc: eddf 3ad6    	vldr	s7, [pc, #856]          @ 0xbe18 <ram_probe::packed_probe::candidate+0x23b0>
    bac0: fe53 2aa2    	vselvs.f32	s5, s7, s5
    bac4: eec2 2aa1    	vdiv.f32	s5, s5, s3
    bac8: e004         	b	0xbad4 <ram_probe::packed_probe::candidate+0x206c> @ imm = #0x8
    baca: bf00         	nop
    bacc: 17 b7 d1 38  	.word	0x38d1b717
    bad0: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    bad4: ee23 6a06    	vmul.f32	s12, s6, s12
    bad8: 2800         	cmp	r0, #0x0
    bada: eddf 1ae6    	vldr	s3, [pc, #920]          @ 0xbe74 <ram_probe::packed_probe::candidate+0x240c>
    bade: eeb0 2ac2    	vabs.f32	s4, s4
    bae2: ee23 3a05    	vmul.f32	s6, s6, s10
    bae6: ed9f 5ae6    	vldr	s10, [pc, #920]         @ 0xbe80 <ram_probe::packed_probe::candidate+0x2418>
    baea: ee46 7a22    	vmla.f32	s15, s12, s5
    baee: ed9f 6ae2    	vldr	s12, [pc, #904]         @ 0xbe78 <ram_probe::packed_probe::candidate+0x2410>
    baf2: fe01 6a86    	vseleq.f32	s12, s3, s12
    baf6: eeb4 2a42    	vcmp.f32	s4, s4
    bafa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bafe: fe14 2a82    	vselvs.f32	s4, s9, s4
    bb02: ee24 4a27    	vmul.f32	s8, s8, s15
    bb06: eeb4 2a64    	vcmp.f32	s4, s9
    bb0a: ee26 4a04    	vmul.f32	s8, s12, s8
    bb0e: ed9f 6adb    	vldr	s12, [pc, #876]         @ 0xbe7c <ram_probe::packed_probe::candidate+0x2414>
    bb12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bb16: ee24 4a06    	vmul.f32	s8, s8, s12
    bb1a: ee03 4a05    	vmla.f32	s8, s6, s10
    bb1e: fe32 2a24    	vselgt.f32	s4, s4, s9
    bb22: ee34 3a24    	vadd.f32	s6, s8, s9
    bb26: ed9f 4ad1    	vldr	s8, [pc, #836]          @ 0xbe6c <ram_probe::packed_probe::candidate+0x2404>
    bb2a: ee22 2a04    	vmul.f32	s4, s4, s8
    bb2e: ed9f 4ad0    	vldr	s8, [pc, #832]          @ 0xbe70 <ram_probe::packed_probe::candidate+0x2408>
    bb32: ee80 3a83    	vdiv.f32	s6, s1, s6
    bb36: fe82 2a44    	vminnm.f32	s4, s4, s8
    bb3a: eeb0 3ac3    	vabs.f32	s6, s6
    bb3e: eeb4 3a42    	vcmp.f32	s6, s4
    bb42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bb46: d96f         	bls	0xbc28 <ram_probe::packed_probe::candidate+0x21c0> @ imm = #0xde
    bb48: ed8d 0a6e    	vstr	s0, [sp, #440]
    bb4c: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    bb50: eeb0 0b4a    	vmov.f64	d0, d10
    bb54: 3001         	adds	r0, #0x1
    bb56: eeb0 1b49    	vmov.f64	d1, d9
    bb5a: f8c4 010c    	str.w	r0, [r4, #0x10c]
    bb5e: a874         	add	r0, sp, #0x1d0
    bb60: a967         	add	r1, sp, #0x19c
    bb62: aa53         	add	r2, sp, #0x14c
    bb64: ab6f         	add	r3, sp, #0x1bc
    bb66: f7fb fa3f    	bl	0x6fe8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>> @ imm = #-0x4b82
    bb6a: f89d 01d5    	ldrb.w	r0, [sp, #0x1d5]
    bb6e: f89d 11d4    	ldrb.w	r1, [sp, #0x1d4]
    bb72: 448b         	add	r11, r1
    bb74: b1c0         	cbz	r0, 0xbba8 <ram_probe::packed_probe::candidate+0x2140> @ imm = #0x30
    bb76: eeb4 8a48    	vcmp.f32	s16, s16
    bb7a: ed9d 0a74    	vldr	s0, [sp, #464]
    bb7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bb82: eeb4 0a40    	vcmp.f32	s0, s0
    bb86: 4645         	mov	r5, r8
    bb88: fe10 1a08    	vselvs.f32	s2, s0, s16
    bb8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bb90: fe11 0a00    	vselvs.f32	s0, s2, s0
    bb94: eeb4 1a40    	vcmp.f32	s2, s0
    bb98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bb9c: fe31 8a00    	vselgt.f32	s16, s2, s0
    bba0: e05d         	b	0xbc5e <ram_probe::packed_probe::candidate+0x21f6> @ imm = #0xba
    bba2: bf00         	nop
    bba4: 08 e5 3c 1e  	.word	0x1e3ce508
    bba8: eeb0 0b4a    	vmov.f64	d0, d10
    bbac: a874         	add	r0, sp, #0x1d0
    bbae: eeb0 1b49    	vmov.f64	d1, d9
    bbb2: a967         	add	r1, sp, #0x19c
    bbb4: aa53         	add	r2, sp, #0x14c
    bbb6: ab6f         	add	r3, sp, #0x1bc
    bbb8: 2600         	movs	r6, #0x0
    bbba: 966e         	str	r6, [sp, #0x1b8]
    bbbc: f7fb fa14    	bl	0x6fe8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1, false, 11>> @ imm = #-0x4bd8
    bbc0: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    bbc4: eeb4 8a48    	vcmp.f32	s16, s16
    bbc8: 3001         	adds	r0, #0x1
    bbca: bf28         	it	hs
    bbcc: f04f 30ff    	movhs.w	r0, #0xffffffff
    bbd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bbd4: ed9d 0a74    	vldr	s0, [sp, #464]
    bbd8: f89d 11d4    	ldrb.w	r1, [sp, #0x1d4]
    bbdc: fe10 1a08    	vselvs.f32	s2, s0, s16
    bbe0: f89d 21d5    	ldrb.w	r2, [sp, #0x1d5]
    bbe4: eeb4 0a40    	vcmp.f32	s0, s0
    bbe8: 448b         	add	r11, r1
    bbea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bbee: f8c4 011c    	str.w	r0, [r4, #0x11c]
    bbf2: fe11 2a00    	vselvs.f32	s4, s2, s0
    bbf6: eeb4 1a42    	vcmp.f32	s2, s4
    bbfa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bbfe: fe31 8a02    	vselgt.f32	s16, s2, s4
    bc02: b10a         	cbz	r2, 0xbc08 <ram_probe::packed_probe::candidate+0x21a0> @ imm = #0x2
    bc04: 4645         	mov	r5, r8
    bc06: e02a         	b	0xbc5e <ram_probe::packed_probe::candidate+0x21f6> @ imm = #0x54
    bc08: 69e0         	ldr	r0, [r4, #0x1c]
    bc0a: f8c9 0000    	str.w	r0, [r9]
    bc0e: ed89 0a01    	vstr	s0, [r9, #4]
    bc12: f889 b008    	strb.w	r11, [r9, #0x8]
    bc16: f889 6009    	strb.w	r6, [r9, #0x9]
    bc1a: e0e6         	b	0xbdea <ram_probe::packed_probe::candidate+0x2382> @ imm = #0x1cc
    bc1c: bd 37 06 36  	.word	0x360637bd
    bc20: ac c5 a7 37  	.word	0x37a7c5ac
    bc24: 00 bf 00 bf  	.word	0xbf00bf00
    bc28: eeb4 8a48    	vcmp.f32	s16, s16
    bc2c: 4645         	mov	r5, r8
    bc2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bc32: eeb4 7a47    	vcmp.f32	s14, s14
    bc36: f8d4 0114    	ldr.w	r0, [r4, #0x114]
    bc3a: fe17 0a08    	vselvs.f32	s0, s14, s16
    bc3e: ed8d 1a73    	vstr	s2, [sp, #460]
    bc42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bc46: f100 0001    	add.w	r0, r0, #0x1
    bc4a: f8c4 0114    	str.w	r0, [r4, #0x114]
    bc4e: fe10 2a07    	vselvs.f32	s4, s0, s14
    bc52: eeb4 0a42    	vcmp.f32	s0, s4
    bc56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bc5a: fe30 8a02    	vselgt.f32	s16, s0, s4
    bc5e: f50d 78ce    	add.w	r8, sp, #0x19c
    bc62: a818         	add	r0, sp, #0x60
    bc64: ed9d 0a0e    	vldr	s0, [sp, #56]
    bc68: 4641         	mov	r1, r8
    bc6a: 462a         	mov	r2, r5
    bc6c: f000 f914    	bl	0xbe98 <orange_dsp::generated_repeated::update_into> @ imm = #0x228
    bc70: f105 005c    	add.w	r0, r5, #0x5c
    bc74: e89a 006e    	ldm.w	r10, {r1, r2, r3, r5, r6}
    bc78: c06e         	stm	r0!, {r1, r2, r3, r5, r6}
    bc7a: 9874         	ldr	r0, [sp, #0x1d0]
    bc7c: f020 4000    	bic	r0, r0, #0x80000000
    bc80: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bc84: f280 80a7    	bge.w	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x14e
    bc88: 9875         	ldr	r0, [sp, #0x1d4]
    bc8a: f020 4000    	bic	r0, r0, #0x80000000
    bc8e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bc92: f280 80a0    	bge.w	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x140
    bc96: 9876         	ldr	r0, [sp, #0x1d8]
    bc98: f020 4000    	bic	r0, r0, #0x80000000
    bc9c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bca0: f280 8099    	bge.w	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x132
    bca4: 9877         	ldr	r0, [sp, #0x1dc]
    bca6: f020 4000    	bic	r0, r0, #0x80000000
    bcaa: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcae: f280 8092    	bge.w	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x124
    bcb2: 9878         	ldr	r0, [sp, #0x1e0]
    bcb4: f020 4000    	bic	r0, r0, #0x80000000
    bcb8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcbc: f280 808b    	bge.w	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x116
    bcc0: 9879         	ldr	r0, [sp, #0x1e4]
    bcc2: f020 4000    	bic	r0, r0, #0x80000000
    bcc6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcca: f280 8084    	bge.w	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x108
    bcce: 987a         	ldr	r0, [sp, #0x1e8]
    bcd0: f020 4000    	bic	r0, r0, #0x80000000
    bcd4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcd8: da7d         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xfa
    bcda: 987b         	ldr	r0, [sp, #0x1ec]
    bcdc: f020 4000    	bic	r0, r0, #0x80000000
    bce0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bce4: da77         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xee
    bce6: 987c         	ldr	r0, [sp, #0x1f0]
    bce8: f020 4000    	bic	r0, r0, #0x80000000
    bcec: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcf0: da71         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xe2
    bcf2: 987d         	ldr	r0, [sp, #0x1f4]
    bcf4: f020 4000    	bic	r0, r0, #0x80000000
    bcf8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcfc: da6b         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xd6
    bcfe: 987e         	ldr	r0, [sp, #0x1f8]
    bd00: f020 4000    	bic	r0, r0, #0x80000000
    bd04: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd08: da65         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xca
    bd0a: 987f         	ldr	r0, [sp, #0x1fc]
    bd0c: f020 4000    	bic	r0, r0, #0x80000000
    bd10: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd14: da5f         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xbe
    bd16: 9880         	ldr	r0, [sp, #0x200]
    bd18: f020 4000    	bic	r0, r0, #0x80000000
    bd1c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd20: da59         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xb2
    bd22: 9881         	ldr	r0, [sp, #0x204]
    bd24: f020 4000    	bic	r0, r0, #0x80000000
    bd28: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd2c: da53         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xa6
    bd2e: 9882         	ldr	r0, [sp, #0x208]
    bd30: f020 4000    	bic	r0, r0, #0x80000000
    bd34: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd38: da4d         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x9a
    bd3a: 9883         	ldr	r0, [sp, #0x20c]
    bd3c: f020 4000    	bic	r0, r0, #0x80000000
    bd40: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd44: da47         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x8e
    bd46: 9884         	ldr	r0, [sp, #0x210]
    bd48: f020 4000    	bic	r0, r0, #0x80000000
    bd4c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd50: da41         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x82
    bd52: 9885         	ldr	r0, [sp, #0x214]
    bd54: f020 4000    	bic	r0, r0, #0x80000000
    bd58: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd5c: da3b         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x76
    bd5e: 9886         	ldr	r0, [sp, #0x218]
    bd60: f020 4000    	bic	r0, r0, #0x80000000
    bd64: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd68: da35         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x6a
    bd6a: 9887         	ldr	r0, [sp, #0x21c]
    bd6c: f020 4000    	bic	r0, r0, #0x80000000
    bd70: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd74: da2f         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x5e
    bd76: 9888         	ldr	r0, [sp, #0x220]
    bd78: f020 4000    	bic	r0, r0, #0x80000000
    bd7c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd80: da29         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x52
    bd82: 9889         	ldr	r0, [sp, #0x224]
    bd84: f020 4000    	bic	r0, r0, #0x80000000
    bd88: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd8c: da23         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x46
    bd8e: 988a         	ldr	r0, [sp, #0x228]
    bd90: f020 4000    	bic	r0, r0, #0x80000000
    bd94: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd98: da1d         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x3a
    bd9a: 988b         	ldr	r0, [sp, #0x22c]
    bd9c: f020 4000    	bic	r0, r0, #0x80000000
    bda0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bda4: da17         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x2e
    bda6: 988c         	ldr	r0, [sp, #0x230]
    bda8: f020 4000    	bic	r0, r0, #0x80000000
    bdac: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bdb0: da11         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x22
    bdb2: 988d         	ldr	r0, [sp, #0x234]
    bdb4: f020 4000    	bic	r0, r0, #0x80000000
    bdb8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bdbc: da0b         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x16
    bdbe: 988e         	ldr	r0, [sp, #0x238]
    bdc0: f020 4000    	bic	r0, r0, #0x80000000
    bdc4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bdc8: da05         	bge	0xbdd6 <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xa
    bdca: 988f         	ldr	r0, [sp, #0x23c]
    bdcc: f020 4000    	bic	r0, r0, #0x80000000
    bdd0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bdd4: db24         	blt	0xbe20 <ram_probe::packed_probe::candidate+0x23b8> @ imm = #0x48
    bdd6: 69e0         	ldr	r0, [r4, #0x1c]
    bdd8: f04f 41ff    	mov.w	r1, #0x7f800000
    bddc: e9c9 0100    	strd	r0, r1, [r9]
    bde0: f889 b008    	strb.w	r11, [r9, #0x8]
    bde4: 2000         	movs	r0, #0x0
    bde6: f889 0009    	strb.w	r0, [r9, #0x9]
    bdea: f50d 7d16    	add.w	sp, sp, #0x258
    bdee: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    bdf2: b001         	add	sp, #0x4
    bdf4: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    bdf8: bdf0         	pop	{r4, r5, r6, r7, pc}
    bdfa: bf00         	nop
    bdfc: 00 00 00 00  	.word	0x00000000
    be00: f64d 207b    	movw	r0, #0xda7b
    be04: f64d 7220    	movw	r2, #0xdf20
    be08: f2c0 0000    	movt	r0, #0x0
    be0c: f2c0 0200    	movt	r2, #0x0
    be10: a974         	add	r1, sp, #0x1d0
    be12: f000 f837    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #0x6e
    be16: bf00         	nop
    be18: 00 00 c0 7f  	.word	0x7fc00000
    be1c: 00 bf 00 bf  	.word	0xbf00bf00
    be20: f104 0520    	add.w	r5, r4, #0x20
    be24: f104 0090    	add.w	r0, r4, #0x90
    be28: 2270         	movs	r2, #0x70
    be2a: 4629         	mov	r1, r5
    be2c: f001 fc28    	bl	0xd680 <__aeabi_memcpy4> @ imm = #0x1850
    be30: a974         	add	r1, sp, #0x1d0
    be32: 2270         	movs	r2, #0x70
    be34: 4628         	mov	r0, r5
    be36: f001 fc23    	bl	0xd680 <__aeabi_memcpy4> @ imm = #0x1846
    be3a: 4620         	mov	r0, r4
    be3c: e8b8 004e    	ldm.w	r8!, {r1, r2, r3, r6}
    be40: c04e         	stm	r0!, {r1, r2, r3, r6}
    be42: e898 004e    	ldm.w	r8, {r1, r2, r3, r6}
    be46: c04e         	stm	r0!, {r1, r2, r3, r6}
    be48: f8d4 0118    	ldr.w	r0, [r4, #0x118]
    be4c: 3001         	adds	r0, #0x1
    be4e: bf28         	it	hs
    be50: f04f 30ff    	movhs.w	r0, #0xffffffff
    be54: ed89 8a01    	vstr	s16, [r9, #4]
    be58: f8c4 0118    	str.w	r0, [r4, #0x118]
    be5c: 986e         	ldr	r0, [sp, #0x1b8]
    be5e: f8c9 0000    	str.w	r0, [r9]
    be62: 2001         	movs	r0, #0x1
    be64: f889 b008    	strb.w	r11, [r9, #0x8]
    be68: e7bd         	b	0xbde6 <ram_probe::packed_probe::candidate+0x237e> @ imm = #-0x86
    be6a: bf00         	nop
    be6c: bd 37 06 36  	.word	0x360637bd
    be70: ac c5 a7 37  	.word	0x37a7c5ac
    be74: 00 00 00 80  	.word	0x80000000
    be78: d2 4e da c3  	.word	0xc3da4ed2
    be7c: 82 76 ab bc  	.word	0xbcab7682
    be80: cd 1e 2c 3e  	.word	0x3e2c1ecd

0000be84 <core::panicking::panic_fmt>:
    be84: b580         	push	{r7, lr}
    be86: 466f         	mov	r7, sp
    be88: f7fb fc1e    	bl	0x76c8 <__rustc::rust_begin_unwind> @ imm = #-0x47c4

0000be8c <core::panicking::panic>:
    be8c: b580         	push	{r7, lr}
    be8e: 466f         	mov	r7, sp
    be90: 0049         	lsls	r1, r1, #0x1
    be92: 3101         	adds	r1, #0x1
    be94: f7ff fff6    	bl	0xbe84 <core::panicking::panic_fmt> @ imm = #-0x14

0000be98 <orange_dsp::generated_repeated::update_into>:
    be98: b580         	push	{r7, lr}
    be9a: 466f         	mov	r7, sp
    be9c: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    bea0: b0a8         	sub	sp, #0xa0
    bea2: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bea6: ed90 4a01    	vldr	s8, [r0, #4]
    beaa: ed9f 1bfd    	vldr	d1, [pc, #1012]         @ 0xc2a0 <orange_dsp::generated_repeated::update_into+0x408>
    beae: ed90 3a02    	vldr	s6, [r0, #8]
    beb2: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    beb6: ee20 8b01    	vmul.f64	d8, d0, d1
    beba: ed90 1a03    	vldr	s2, [r0, #12]
    bebe: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    bec2: ed9f 0bf9    	vldr	d0, [pc, #996]          @ 0xc2a8 <orange_dsp::generated_repeated::update_into+0x410>
    bec6: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    beca: ed9f 2bf9    	vldr	d2, [pc, #996]          @ 0xc2b0 <orange_dsp::generated_repeated::update_into+0x418>
    bece: eeb0 ab48    	vmov.f64	d10, d8
    bed2: ed9f 5bf9    	vldr	d5, [pc, #996]          @ 0xc2b8 <orange_dsp::generated_repeated::update_into+0x420>
    bed6: ee04 ab00    	vmla.f64	d10, d4, d0
    beda: ed9f 0bf9    	vldr	d0, [pc, #996]          @ 0xc2c0 <orange_dsp::generated_repeated::update_into+0x428>
    bede: ee21 2b02    	vmul.f64	d2, d1, d2
    bee2: ee03 2b05    	vmla.f64	d2, d3, d5
    bee6: ee23 3b00    	vmul.f64	d3, d3, d0
    beea: ed91 0a01    	vldr	s0, [r1, #4]
    beee: ed9f 4bf6    	vldr	d4, [pc, #984]          @ 0xc2c8 <orange_dsp::generated_repeated::update_into+0x430>
    bef2: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bef6: ee38 5b02    	vadd.f64	d5, d8, d2
    befa: ed9f 2bf5    	vldr	d2, [pc, #980]          @ 0xc2d0 <orange_dsp::generated_repeated::update_into+0x438>
    befe: ee01 3b04    	vmla.f64	d3, d1, d4
    bf02: ed90 4a04    	vldr	s8, [r0, #16]
    bf06: ee00 5b02    	vmla.f64	d5, d0, d2
    bf0a: ed90 2a05    	vldr	s4, [r0, #20]
    bf0e: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    bf12: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    bf16: ed8d 5b26    	vstr	d5, [sp, #152]
    bf1a: ee38 6b03    	vadd.f64	d6, d8, d3
    bf1e: ed9f 3bee    	vldr	d3, [pc, #952]          @ 0xc2d8 <orange_dsp::generated_repeated::update_into+0x440>
    bf22: ed9f 5bef    	vldr	d5, [pc, #956]          @ 0xc2e0 <orange_dsp::generated_repeated::update_into+0x448>
    bf26: ee22 3b03    	vmul.f64	d3, d2, d3
    bf2a: ee04 3b05    	vmla.f64	d3, d4, d5
    bf2e: ed9f 1bee    	vldr	d1, [pc, #952]          @ 0xc2e8 <orange_dsp::generated_repeated::update_into+0x450>
    bf32: ee38 5b03    	vadd.f64	d5, d8, d3
    bf36: ed9f 3bee    	vldr	d3, [pc, #952]          @ 0xc2f0 <orange_dsp::generated_repeated::update_into+0x458>
    bf3a: ee24 3b03    	vmul.f64	d3, d4, d3
    bf3e: ed9f 4bee    	vldr	d4, [pc, #952]          @ 0xc2f8 <orange_dsp::generated_repeated::update_into+0x460>
    bf42: ee00 6b01    	vmla.f64	d6, d0, d1
    bf46: ed9f 1bee    	vldr	d1, [pc, #952]          @ 0xc300 <orange_dsp::generated_repeated::update_into+0x468>
    bf4a: ee02 3b04    	vmla.f64	d3, d2, d4
    bf4e: ee00 5b01    	vmla.f64	d5, d0, d1
    bf52: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xc308 <orange_dsp::generated_repeated::update_into+0x470>
    bf56: ee38 2b03    	vadd.f64	d2, d8, d3
    bf5a: ee00 2b01    	vmla.f64	d2, d0, d1
    bf5e: ed90 0a07    	vldr	s0, [r0, #28]
    bf62: ed90 1a06    	vldr	s2, [r0, #24]
    bf66: eeb7 fac0    	vcvt.f64.f32	d15, s0
    bf6a: ed9f 0be9    	vldr	d0, [pc, #932]          @ 0xc310 <orange_dsp::generated_repeated::update_into+0x478>
    bf6e: ee2f 7b00    	vmul.f64	d7, d15, d0
    bf72: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    bf76: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc318 <orange_dsp::generated_repeated::update_into+0x480>
    bf7a: ee00 7b01    	vmla.f64	d7, d0, d1
    bf7e: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc320 <orange_dsp::generated_repeated::update_into+0x488>
    bf82: ee2f 3b01    	vmul.f64	d3, d15, d1
    bf86: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc328 <orange_dsp::generated_repeated::update_into+0x490>
    bf8a: ee00 3b01    	vmla.f64	d3, d0, d1
    bf8e: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc330 <orange_dsp::generated_repeated::update_into+0x498>
    bf92: ee2f 4b01    	vmul.f64	d4, d15, d1
    bf96: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc338 <orange_dsp::generated_repeated::update_into+0x4a0>
    bf9a: ee00 4b01    	vmla.f64	d4, d0, d1
    bf9e: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc340 <orange_dsp::generated_repeated::update_into+0x4a8>
    bfa2: ed8d 5b22    	vstr	d5, [sp, #136]
    bfa6: ee20 5b01    	vmul.f64	d5, d0, d1
    bfaa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc348 <orange_dsp::generated_repeated::update_into+0x4b0>
    bfae: ee0f 5b01    	vmla.f64	d5, d15, d1
    bfb2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc350 <orange_dsp::generated_repeated::update_into+0x4b8>
    bfb6: ee2f bb01    	vmul.f64	d11, d15, d1
    bfba: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc358 <orange_dsp::generated_repeated::update_into+0x4c0>
    bfbe: ee00 bb01    	vmla.f64	d11, d0, d1
    bfc2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc360 <orange_dsp::generated_repeated::update_into+0x4c8>
    bfc6: ee2f cb01    	vmul.f64	d12, d15, d1
    bfca: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc368 <orange_dsp::generated_repeated::update_into+0x4d0>
    bfce: ee00 cb01    	vmla.f64	d12, d0, d1
    bfd2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc370 <orange_dsp::generated_repeated::update_into+0x4d8>
    bfd6: ee20 db01    	vmul.f64	d13, d0, d1
    bfda: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc378 <orange_dsp::generated_repeated::update_into+0x4e0>
    bfde: ee0f db01    	vmla.f64	d13, d15, d1
    bfe2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc380 <orange_dsp::generated_repeated::update_into+0x4e8>
    bfe6: ee2f eb01    	vmul.f64	d14, d15, d1
    bfea: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc388 <orange_dsp::generated_repeated::update_into+0x4f0>
    bfee: ee00 eb01    	vmla.f64	d14, d0, d1
    bff2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc390 <orange_dsp::generated_repeated::update_into+0x4f8>
    bff6: ee2f fb01    	vmul.f64	d15, d15, d1
    bffa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc398 <orange_dsp::generated_repeated::update_into+0x500>
    bffe: ee00 fb01    	vmla.f64	d15, d0, d1
    c002: ed90 0a08    	vldr	s0, [r0, #32]
    c006: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c00a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3a0 <orange_dsp::generated_repeated::update_into+0x508>
    c00e: ee00 7b01    	vmla.f64	d7, d0, d1
    c012: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3a8 <orange_dsp::generated_repeated::update_into+0x510>
    c016: ee00 3b01    	vmla.f64	d3, d0, d1
    c01a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3b0 <orange_dsp::generated_repeated::update_into+0x518>
    c01e: ee00 4b01    	vmla.f64	d4, d0, d1
    c022: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3b8 <orange_dsp::generated_repeated::update_into+0x520>
    c026: ee00 5b01    	vmla.f64	d5, d0, d1
    c02a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3c0 <orange_dsp::generated_repeated::update_into+0x528>
    c02e: ee00 bb01    	vmla.f64	d11, d0, d1
    c032: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3c8 <orange_dsp::generated_repeated::update_into+0x530>
    c036: ee00 cb01    	vmla.f64	d12, d0, d1
    c03a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3d0 <orange_dsp::generated_repeated::update_into+0x538>
    c03e: ee00 db01    	vmla.f64	d13, d0, d1
    c042: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3d8 <orange_dsp::generated_repeated::update_into+0x540>
    c046: ee00 eb01    	vmla.f64	d14, d0, d1
    c04a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3e0 <orange_dsp::generated_repeated::update_into+0x548>
    c04e: ee00 fb01    	vmla.f64	d15, d0, d1
    c052: ed90 0a09    	vldr	s0, [r0, #36]
    c056: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c05a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc3e8 <orange_dsp::generated_repeated::update_into+0x550>
    c05e: ee00 7b01    	vmla.f64	d7, d0, d1
    c062: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc3f0 <orange_dsp::generated_repeated::update_into+0x558>
    c066: ee00 3b01    	vmla.f64	d3, d0, d1
    c06a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc3f8 <orange_dsp::generated_repeated::update_into+0x560>
    c06e: ee00 4b01    	vmla.f64	d4, d0, d1
    c072: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc400 <orange_dsp::generated_repeated::update_into+0x568>
    c076: ee00 5b01    	vmla.f64	d5, d0, d1
    c07a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc408 <orange_dsp::generated_repeated::update_into+0x570>
    c07e: ee00 bb01    	vmla.f64	d11, d0, d1
    c082: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc410 <orange_dsp::generated_repeated::update_into+0x578>
    c086: ee00 cb01    	vmla.f64	d12, d0, d1
    c08a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc418 <orange_dsp::generated_repeated::update_into+0x580>
    c08e: ee00 db01    	vmla.f64	d13, d0, d1
    c092: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc420 <orange_dsp::generated_repeated::update_into+0x588>
    c096: ee00 eb01    	vmla.f64	d14, d0, d1
    c09a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc428 <orange_dsp::generated_repeated::update_into+0x590>
    c09e: ee00 fb01    	vmla.f64	d15, d0, d1
    c0a2: ed90 0a0a    	vldr	s0, [r0, #40]
    c0a6: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c0aa: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc430 <orange_dsp::generated_repeated::update_into+0x598>
    c0ae: ee00 7b01    	vmla.f64	d7, d0, d1
    c0b2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc438 <orange_dsp::generated_repeated::update_into+0x5a0>
    c0b6: ee00 3b01    	vmla.f64	d3, d0, d1
    c0ba: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc440 <orange_dsp::generated_repeated::update_into+0x5a8>
    c0be: ee00 4b01    	vmla.f64	d4, d0, d1
    c0c2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc448 <orange_dsp::generated_repeated::update_into+0x5b0>
    c0c6: ee00 5b01    	vmla.f64	d5, d0, d1
    c0ca: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc450 <orange_dsp::generated_repeated::update_into+0x5b8>
    c0ce: ee00 bb01    	vmla.f64	d11, d0, d1
    c0d2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc458 <orange_dsp::generated_repeated::update_into+0x5c0>
    c0d6: ee00 cb01    	vmla.f64	d12, d0, d1
    c0da: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc460 <orange_dsp::generated_repeated::update_into+0x5c8>
    c0de: ee00 db01    	vmla.f64	d13, d0, d1
    c0e2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc468 <orange_dsp::generated_repeated::update_into+0x5d0>
    c0e6: ee00 eb01    	vmla.f64	d14, d0, d1
    c0ea: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc470 <orange_dsp::generated_repeated::update_into+0x5d8>
    c0ee: ee00 fb01    	vmla.f64	d15, d0, d1
    c0f2: ed90 0a0b    	vldr	s0, [r0, #44]
    c0f6: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c0fa: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc478 <orange_dsp::generated_repeated::update_into+0x5e0>
    c0fe: ee00 7b01    	vmla.f64	d7, d0, d1
    c102: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc480 <orange_dsp::generated_repeated::update_into+0x5e8>
    c106: ee00 3b01    	vmla.f64	d3, d0, d1
    c10a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc488 <orange_dsp::generated_repeated::update_into+0x5f0>
    c10e: ee00 4b01    	vmla.f64	d4, d0, d1
    c112: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc490 <orange_dsp::generated_repeated::update_into+0x5f8>
    c116: ee00 5b01    	vmla.f64	d5, d0, d1
    c11a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc498 <orange_dsp::generated_repeated::update_into+0x600>
    c11e: ee00 bb01    	vmla.f64	d11, d0, d1
    c122: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4a0 <orange_dsp::generated_repeated::update_into+0x608>
    c126: ee00 cb01    	vmla.f64	d12, d0, d1
    c12a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4a8 <orange_dsp::generated_repeated::update_into+0x610>
    c12e: ee00 db01    	vmla.f64	d13, d0, d1
    c132: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4b0 <orange_dsp::generated_repeated::update_into+0x618>
    c136: ee00 eb01    	vmla.f64	d14, d0, d1
    c13a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4b8 <orange_dsp::generated_repeated::update_into+0x620>
    c13e: ee00 fb01    	vmla.f64	d15, d0, d1
    c142: ed90 0a0c    	vldr	s0, [r0, #48]
    c146: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c14a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4c0 <orange_dsp::generated_repeated::update_into+0x628>
    c14e: ee00 7b01    	vmla.f64	d7, d0, d1
    c152: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4c8 <orange_dsp::generated_repeated::update_into+0x630>
    c156: ee00 3b01    	vmla.f64	d3, d0, d1
    c15a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4d0 <orange_dsp::generated_repeated::update_into+0x638>
    c15e: ee00 4b01    	vmla.f64	d4, d0, d1
    c162: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4d8 <orange_dsp::generated_repeated::update_into+0x640>
    c166: ee00 5b01    	vmla.f64	d5, d0, d1
    c16a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4e0 <orange_dsp::generated_repeated::update_into+0x648>
    c16e: ee00 bb01    	vmla.f64	d11, d0, d1
    c172: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4e8 <orange_dsp::generated_repeated::update_into+0x650>
    c176: ee00 cb01    	vmla.f64	d12, d0, d1
    c17a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4f0 <orange_dsp::generated_repeated::update_into+0x658>
    c17e: ee00 db01    	vmla.f64	d13, d0, d1
    c182: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4f8 <orange_dsp::generated_repeated::update_into+0x660>
    c186: ee00 eb01    	vmla.f64	d14, d0, d1
    c18a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc500 <orange_dsp::generated_repeated::update_into+0x668>
    c18e: ee00 fb01    	vmla.f64	d15, d0, d1
    c192: ed90 0a0d    	vldr	s0, [r0, #52]
    c196: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c19a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc508 <orange_dsp::generated_repeated::update_into+0x670>
    c19e: ee00 7b01    	vmla.f64	d7, d0, d1
    c1a2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc510 <orange_dsp::generated_repeated::update_into+0x678>
    c1a6: ee00 3b01    	vmla.f64	d3, d0, d1
    c1aa: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc518 <orange_dsp::generated_repeated::update_into+0x680>
    c1ae: ee00 4b01    	vmla.f64	d4, d0, d1
    c1b2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc520 <orange_dsp::generated_repeated::update_into+0x688>
    c1b6: ee00 5b01    	vmla.f64	d5, d0, d1
    c1ba: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc528 <orange_dsp::generated_repeated::update_into+0x690>
    c1be: ee00 bb01    	vmla.f64	d11, d0, d1
    c1c2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc530 <orange_dsp::generated_repeated::update_into+0x698>
    c1c6: ee00 cb01    	vmla.f64	d12, d0, d1
    c1ca: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc538 <orange_dsp::generated_repeated::update_into+0x6a0>
    c1ce: ee00 db01    	vmla.f64	d13, d0, d1
    c1d2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc540 <orange_dsp::generated_repeated::update_into+0x6a8>
    c1d6: ee00 eb01    	vmla.f64	d14, d0, d1
    c1da: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc548 <orange_dsp::generated_repeated::update_into+0x6b0>
    c1de: ee00 fb01    	vmla.f64	d15, d0, d1
    c1e2: ed90 0a0e    	vldr	s0, [r0, #56]
    c1e6: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c1ea: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc550 <orange_dsp::generated_repeated::update_into+0x6b8>
    c1ee: ee00 7b01    	vmla.f64	d7, d0, d1
    c1f2: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc558 <orange_dsp::generated_repeated::update_into+0x6c0>
    c1f6: ee00 3b01    	vmla.f64	d3, d0, d1
    c1fa: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc560 <orange_dsp::generated_repeated::update_into+0x6c8>
    c1fe: ee00 4b01    	vmla.f64	d4, d0, d1
    c202: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc568 <orange_dsp::generated_repeated::update_into+0x6d0>
    c206: ee00 5b01    	vmla.f64	d5, d0, d1
    c20a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc570 <orange_dsp::generated_repeated::update_into+0x6d8>
    c20e: ee00 bb01    	vmla.f64	d11, d0, d1
    c212: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc578 <orange_dsp::generated_repeated::update_into+0x6e0>
    c216: ee00 cb01    	vmla.f64	d12, d0, d1
    c21a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc580 <orange_dsp::generated_repeated::update_into+0x6e8>
    c21e: ee00 db01    	vmla.f64	d13, d0, d1
    c222: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc588 <orange_dsp::generated_repeated::update_into+0x6f0>
    c226: ee00 eb01    	vmla.f64	d14, d0, d1
    c22a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc590 <orange_dsp::generated_repeated::update_into+0x6f8>
    c22e: ee00 fb01    	vmla.f64	d15, d0, d1
    c232: ed91 0a03    	vldr	s0, [r1, #12]
    c236: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c23a: ed9f 1bd7    	vldr	d1, [pc, #860]          @ 0xc598 <orange_dsp::generated_repeated::update_into+0x700>
    c23e: ed8d 3b1e    	vstr	d3, [sp, #120]
    c242: ee20 3b01    	vmul.f64	d3, d0, d1
    c246: ed91 1a02    	vldr	s2, [r1, #8]
    c24a: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    c24e: ed8d 2b20    	vstr	d2, [sp, #128]
    c252: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xc5a0 <orange_dsp::generated_repeated::update_into+0x708>
    c256: ee01 3b02    	vmla.f64	d3, d1, d2
    c25a: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xc5a8 <orange_dsp::generated_repeated::update_into+0x710>
    c25e: ed8d 3b18    	vstr	d3, [sp, #96]
    c262: ee20 3b02    	vmul.f64	d3, d0, d2
    c266: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xc5b0 <orange_dsp::generated_repeated::update_into+0x718>
    c26a: ee01 3b02    	vmla.f64	d3, d1, d2
    c26e: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xc5b8 <orange_dsp::generated_repeated::update_into+0x720>
    c272: ed8d 3b16    	vstr	d3, [sp, #88]
    c276: ee20 3b02    	vmul.f64	d3, d0, d2
    c27a: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xc5c0 <orange_dsp::generated_repeated::update_into+0x728>
    c27e: ee01 3b02    	vmla.f64	d3, d1, d2
    c282: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xc5c8 <orange_dsp::generated_repeated::update_into+0x730>
    c286: ed8d 3b14    	vstr	d3, [sp, #80]
    c28a: ee20 3b02    	vmul.f64	d3, d0, d2
    c28e: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xc5d0 <orange_dsp::generated_repeated::update_into+0x738>
    c292: ee01 3b02    	vmla.f64	d3, d1, d2
    c296: f000 b99f    	b.w	0xc5d8 <orange_dsp::generated_repeated::update_into+0x740> @ imm = #0x33e
    c29a: bf00         	nop
    c29c: bf00         	nop
    c29e: bf00         	nop
		...
    c2a8: c1 5d e1 c9  	.word	0xc9e15dc1
    c2ac: 86 54 e5 3f  	.word	0x3fe55486
    c2b0: a9 0f 6b 00  	.word	0x006b0fa9
    c2b4: 3e 31 92 bf  	.word	0xbf92313e
    c2b8: a2 48 2a 74  	.word	0x742a48a2
    c2bc: 54 ba e4 3f  	.word	0x3fe4ba54
    c2c0: 00 60 41 1f  	.word	0x1f416000
    c2c4: 45 49 27 bf  	.word	0xbf274945
    c2c8: 1a 5d 10 11  	.word	0x11105d1a
    c2cc: ce 53 e5 3f  	.word	0x3fe553ce
    c2d0: 46 6c 1c 77  	.word	0x771c6c46
    c2d4: d3 64 5c bf  	.word	0xbf5c64d3
    c2d8: 80 0d 59 22  	.word	0x22590d80
    c2dc: 9f d9 b8 be  	.word	0xbeb8d99f
    c2e0: b0 e5 93 25  	.word	0x2593e5b0
    c2e4: 2e 54 e5 3f  	.word	0x3fe5542e
    c2e8: 00 60 e7 86  	.word	0x86e76000
    c2ec: ec 07 ec 3e  	.word	0x3eec07ec
    c2f0: 00 f0 f8 21  	.word	0x21f8f000
    c2f4: c8 2c 12 bf  	.word	0xbf122cc8
    c2f8: 3d 6e 12 0b  	.word	0x0b126e3d
    c2fc: a1 53 e5 3f  	.word	0x3fe553a1
    c300: 00 80 77 22  	.word	0x22778000
    c304: 7a ac 2b 3f  	.word	0x3f2bac7a
    c308: 00 60 f5 32  	.word	0x32f56000
    c30c: 2c 43 1b 3f  	.word	0x3f1b432c
    c310: 06 42 bd ec  	.word	0xecbd4206
    c314: 6c ee e0 3f  	.word	0x3fe0ee6c
    c318: 75 22 80 1e  	.word	0x1e802275
    c31c: ff ca ba 3f  	.word	0x3fbacaff
    c320: a3 83 c9 c1  	.word	0xc1c983a3
    c324: 1d 54 e5 3f  	.word	0x3fe5541d
    c328: 00 ac c1 aa  	.word	0xaac1ac00
    c32c: b7 a1 1d 3f  	.word	0x3f1da1b7
    c330: 00 8f fc e0  	.word	0xe0fc8f00
    c334: bb 3a 58 bf  	.word	0xbf583abb
    c338: 80 c5 13 c0  	.word	0xc013c580
    c33c: 2a 6f 52 3f  	.word	0x3f526f2a
    c340: 1a c8 c7 76  	.word	0x76c7c81a
    c344: 6e b2 14 bf  	.word	0xbf14b26e
    c348: e2 63 27 22  	.word	0x222763e2
    c34c: 1a 34 1b 3f  	.word	0x3f1b341a
    c350: 00 00 77 9e  	.word	0x9e770000
    c354: d4 83 d1 be  	.word	0xbed183d4
    c358: 00 80 54 bc  	.word	0xbc548000
    c35c: c7 a6 ca 3e  	.word	0x3ecaa6c7
    c360: 78 c9 65 d2  	.word	0xd265c978
    c364: fb aa 81 bf  	.word	0xbf81aafb
    c368: 38 4b 1c 74  	.word	0x741c4b38
    c36c: 5b e2 7a 3f  	.word	0x3f7ae25b
    c370: 00 a8 b7 3b  	.word	0x3bb7a800
    c374: a0 24 e9 be  	.word	0xbee924a0
    c378: 00 b0 3a 3d  	.word	0x3d3ab000
    c37c: 0e 86 f0 3e  	.word	0x3ef0860e
    c380: 80 45 eb ca  	.word	0xcaeb4580
    c384: d6 b8 28 bf  	.word	0xbf28b8d6
    c388: 40 1e 97 40  	.word	0x40971e40
    c38c: 1c cf 22 3f  	.word	0x3f22cf1c
    c390: 00 80 9e 71  	.word	0x719e8000
    c394: 3d 11 ca be  	.word	0xbeca113d
    c398: 00 00 cc 39  	.word	0x39cc0000
    c39c: 23 d5 c3 3e  	.word	0x3ec3d523
    c3a0: 94 54 5e e4  	.word	0xe45e5494
    c3a4: 65 da e0 3f  	.word	0x3fe0da65
    c3a8: 00 d0 32 e7  	.word	0xe732d000
    c3ac: 2f 62 23 bf  	.word	0xbf23622f
    c3b0: b0 9a 2c 49  	.word	0x492c9ab0
    c3b4: 0a 30 e5 3f  	.word	0x3fe5300a
    c3b8: 6a 59 88 8d  	.word	0x8d88596a
    c3bc: ec 13 1b 3f  	.word	0x3f1b13ec
    c3c0: 00 80 a9 db  	.word	0xdba98000
    c3c4: 1c 6f d1 be  	.word	0xbed16f1c
    c3c8: 70 a7 27 c0  	.word	0xc027a770
    c3cc: 15 96 81 bf  	.word	0xbf819615
    c3d0: 00 10 7b a9  	.word	0xa97b1000
    c3d4: 82 72 f0 3e  	.word	0x3ef07282
    c3d8: 80 84 35 a4  	.word	0xa4358480
    c3dc: 98 9b 28 bf  	.word	0xbf289b98
    c3e0: 00 00 11 e3  	.word	0xe3110000
    c3e4: 67 f2 c9 be  	.word	0xbec9f267
    c3e8: 7f 02 92 0b  	.word	0x0b92027f
    c3ec: f9 a6 d7 bf  	.word	0xbfd7a6f9
    c3f0: 00 70 27 22  	.word	0x22277000
    c3f4: 1a 34 1b 3f  	.word	0x3f1b341a
    c3f8: 00 37 75 d8  	.word	0xd8753700
    c3fc: 73 ec 50 3f  	.word	0x3f50ec73
    c400: f9 c7 6f 0d  	.word	0x0d6fc7f9
    c404: d1 52 e5 3f  	.word	0x3fe552d1
    c408: 00 c0 70 c7  	.word	0xc770c000
    c40c: ac e2 f3 be  	.word	0xbef3e2ac
    c410: b8 ba 9c 87  	.word	0x879cbab8
    c414: 20 0f a4 bf  	.word	0xbfa40f20
    c418: 00 58 ad cf  	.word	0xcfad5800
    c41c: 8d c2 12 3f  	.word	0x3f12c28d
    c420: 00 67 c9 53  	.word	0x53c96700
    c424: 63 11 4c bf  	.word	0xbf4c1163
    c428: 00 00 01 7a  	.word	0x7a010000
    c42c: 66 98 ed be  	.word	0xbeed9866
    c430: 49 ec 9f 20  	.word	0x209fec49
    c434: fa 74 8e 3f  	.word	0x3f8e74fa
    c438: 00 b8 a6 9d  	.word	0x9da6b800
    c43c: d4 83 d1 be  	.word	0xbed183d4
    c440: 00 0a 5f 13  	.word	0x135f0a00
    c444: e4 ca 05 bf  	.word	0xbf05cae4
    c448: 78 b8 70 c7  	.word	0xc770b878
    c44c: ac e2 f3 be  	.word	0xbef3e2ac
    c450: 5b ad 92 3c  	.word	0x3c92ad5b
    c454: 15 55 e5 3f  	.word	0x3fe55515
    c458: 00 25 a5 be  	.word	0xbea52500
    c45c: 02 2a b0 bf  	.word	0xbfb02a02
    c460: 00 f8 5d c6  	.word	0xc65df800
    c464: 07 3c 1e 3f  	.word	0x3f1e3c07
    c468: 40 ea 5d 38  	.word	0x385dea40
    c46c: 29 9e 56 bf  	.word	0xbf569e29
    c470: 00 c0 dc 8e  	.word	0x8edcc000
    c474: 3f d9 f7 be  	.word	0xbef7d93f
    c478: 47 e4 bd ce  	.word	0xcebde447
    c47c: 0e 2b 69 3f  	.word	0x3f692b0e
    c480: 00 40 8f da  	.word	0xda8f4000
    c484: 74 f2 ac be  	.word	0xbeacf274
    c488: 00 a7 84 8f  	.word	0x8f84a700
    c48c: 22 02 e2 be  	.word	0xbee20222
    c490: 1f bc 4a 33  	.word	0x334abc1f
    c494: b2 6e d0 be  	.word	0xbed06eb2
    c498: 00 fc fb 7d  	.word	0x7dfbfc00
    c49c: b7 7b da be  	.word	0xbeda7bb7
    c4a0: 8f e3 b2 48  	.word	0x48b2e38f
    c4a4: 3c e9 e2 3f  	.word	0x3fe2e93c
    c4a8: 00 e4 71 6e  	.word	0x6e71e400
    c4ac: 56 32 23 3f  	.word	0x3f233256
    c4b0: 00 05 e0 bc  	.word	0xbce00500
    c4b4: 17 92 30 bf  	.word	0xbf309217
    c4b8: 00 80 de 1d  	.word	0x1dde8000
    c4bc: 5b d0 f4 be  	.word	0xbef4d05b
    c4c0: f4 24 ee df  	.word	0xdfee24f4
    c4c4: 96 e5 64 bf  	.word	0xbf64e596
    c4c8: 00 60 1c e5  	.word	0xe51c6000
    c4cc: ce 08 a8 3e  	.word	0x3ea808ce
    c4d0: 00 e0 2c 34  	.word	0x342ce000
    c4d4: 79 e7 dd 3e  	.word	0x3edde779
    c4d8: e7 ed e4 73  	.word	0x73e4ede7
    c4dc: 88 49 cb 3e  	.word	0x3ecb4988
    c4e0: 00 54 55 ed  	.word	0xed555400
    c4e4: 1c fd d5 3e  	.word	0x3ed5fd1c
    c4e8: 20 1d 0d ea  	.word	0xea0d1d20
    c4ec: de 0a b1 3f  	.word	0x3fb10ade
    c4f0: 0e cf 4c 9e  	.word	0x9e4ccf0e
    c4f4: ea 50 e5 3f  	.word	0x3fe550ea
    c4f8: 90 b1 c1 c8  	.word	0xc8c1b190
    c4fc: ce b5 51 3f  	.word	0x3f51b5ce
    c500: 00 c0 f7 85  	.word	0x85f7c000
    c504: e2 5d f8 be  	.word	0xbef85de2
    c508: cf 1e ec 24  	.word	0x24ec1ecf
    c50c: 9c 63 8d 3f  	.word	0x3f8d639c
    c510: 00 80 67 df  	.word	0xdf678000
    c514: 9f e6 d0 be  	.word	0xbed0e69f
    c518: 00 ba a2 95  	.word	0x95a2ba00
    c51c: 4a 07 05 bf  	.word	0xbf05074a
    c520: 5f e8 1a 49  	.word	0x491ae85f
    c524: 31 30 f3 be  	.word	0xbef33031
    c528: 00 bc c0 af  	.word	0xafc0bc00
    c52c: ba ec fe be  	.word	0xbefeecba
    c530: 40 2a 3d 87  	.word	0x873d2a40
    c534: 32 a8 ab bf  	.word	0xbfaba832
    c538: 00 58 47 7f  	.word	0x7f475800
    c53c: c7 a5 40 3f  	.word	0x3f40a5c7
    c540: c6 60 4c 9c  	.word	0x9c4c60c6
    c544: 3d 43 e5 3f  	.word	0x3fe5433d
    c548: 00 80 ea 14  	.word	0x14ea8000
    c54c: fe 54 f5 3e  	.word	0x3ef554fe
    c550: 30 f8 ed 0a  	.word	0x0aedf830
    c554: b2 7b 40 3f  	.word	0x3f407bb2
    c558: 00 d0 c0 ef  	.word	0xefc0d000
    c55c: 43 f5 82 be  	.word	0xbe82f543
    c560: 00 44 9d fc  	.word	0xfc9d4400
    c564: 8c 96 b7 be  	.word	0xbeb7968c
    c568: 33 60 a3 fb  	.word	0xfba36033
    c56c: 1b 86 a5 be  	.word	0xbea5861b
    c570: 00 9e 73 39  	.word	0x39739e00
    c574: 2e 58 b1 be  	.word	0xbeb1582e
    c578: a7 94 9b fb  	.word	0xfb9b94a7
    c57c: 6d 7a 82 bf  	.word	0xbf827a6d
    c580: 00 2c 02 86  	.word	0x86022c00
    c584: e2 5d f8 be  	.word	0xbef85de2
    c588: 40 eb 05 06  	.word	0x0605eb40
    c58c: 91 b1 06 3f  	.word	0x3f06b191
    c590: 03 bd 02 e5  	.word	0xe502bd03
    c594: fa 54 e5 3f  	.word	0x3fe554fa
    c598: 76 43 71 a5  	.word	0xa5714376
    c59c: f8 73 e2 bf  	.word	0xbfe273f8
    c5a0: 90 85 b9 69  	.word	0x69b98590
    c5a4: a2 a1 ce bf  	.word	0xbfcea1a2
    c5a8: 00 70 07 91  	.word	0x91077000
    c5ac: 41 39 25 3f  	.word	0x3f253941
    c5b0: 00 80 10 04  	.word	0x04108000
    c5b4: 83 9d 11 3f  	.word	0x3f119d83
    c5b8: 00 b8 93 75  	.word	0x7593b800
    c5bc: 30 68 5a 3f  	.word	0x3f5a6830
    c5c0: 00 5c 9c 19  	.word	0x199c5c00
    c5c4: d8 ea 45 3f  	.word	0x3f45ead8
    c5c8: 28 b4 ed 8f  	.word	0x8fedb428
    c5cc: 1e 56 3c bf  	.word	0xbf3c561e
    c5d0: 00 80 d1 f5  	.word	0xf5d18000
    c5d4: d4 ff 33 3f  	.word	0x3f33ffd4
    c5d8: ed9f 2be5    	vldr	d2, [pc, #916]          @ 0xc970 <orange_dsp::generated_repeated::update_into+0xad8>
    c5dc: ed8d 3b12    	vstr	d3, [sp, #72]
    c5e0: ee20 3b02    	vmul.f64	d3, d0, d2
    c5e4: ed9f 2be4    	vldr	d2, [pc, #912]          @ 0xc978 <orange_dsp::generated_repeated::update_into+0xae0>
    c5e8: ee01 3b02    	vmla.f64	d3, d1, d2
    c5ec: ed9f 2be4    	vldr	d2, [pc, #912]          @ 0xc980 <orange_dsp::generated_repeated::update_into+0xae8>
    c5f0: ed8d 3b10    	vstr	d3, [sp, #64]
    c5f4: ee20 3b02    	vmul.f64	d3, d0, d2
    c5f8: ed9f 2be3    	vldr	d2, [pc, #908]          @ 0xc988 <orange_dsp::generated_repeated::update_into+0xaf0>
    c5fc: ee01 3b02    	vmla.f64	d3, d1, d2
    c600: ed9f 2be3    	vldr	d2, [pc, #908]          @ 0xc990 <orange_dsp::generated_repeated::update_into+0xaf8>
    c604: ed8d 3b0e    	vstr	d3, [sp, #56]
    c608: ee20 3b02    	vmul.f64	d3, d0, d2
    c60c: ed9f 2be2    	vldr	d2, [pc, #904]          @ 0xc998 <orange_dsp::generated_repeated::update_into+0xb00>
    c610: ee01 3b02    	vmla.f64	d3, d1, d2
    c614: ed9f 2be2    	vldr	d2, [pc, #904]          @ 0xc9a0 <orange_dsp::generated_repeated::update_into+0xb08>
    c618: ed8d 3b0c    	vstr	d3, [sp, #48]
    c61c: ee20 3b02    	vmul.f64	d3, d0, d2
    c620: ed9f 2be1    	vldr	d2, [pc, #900]          @ 0xc9a8 <orange_dsp::generated_repeated::update_into+0xb10>
    c624: ee01 3b02    	vmla.f64	d3, d1, d2
    c628: ed9f 2be1    	vldr	d2, [pc, #900]          @ 0xc9b0 <orange_dsp::generated_repeated::update_into+0xb18>
    c62c: ee20 2b02    	vmul.f64	d2, d0, d2
    c630: ed9f 0be1    	vldr	d0, [pc, #900]          @ 0xc9b8 <orange_dsp::generated_repeated::update_into+0xb20>
    c634: ee01 2b00    	vmla.f64	d2, d1, d0
    c638: ed90 0a10    	vldr	s0, [r0, #64]
    c63c: ed8d 2b08    	vstr	d2, [sp, #32]
    c640: ed90 2a0f    	vldr	s4, [r0, #60]
    c644: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    c648: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c64c: ed8d 3b0a    	vstr	d3, [sp, #40]
    c650: ed9f 0bdb    	vldr	d0, [pc, #876]          @ 0xc9c0 <orange_dsp::generated_repeated::update_into+0xb28>
    c654: ed9f 3bdc    	vldr	d3, [pc, #880]          @ 0xc9c8 <orange_dsp::generated_repeated::update_into+0xb30>
    c658: ee21 0b00    	vmul.f64	d0, d1, d0
    c65c: ee02 0b03    	vmla.f64	d0, d2, d3
    c660: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0xc9d8 <orange_dsp::generated_repeated::update_into+0xb40>
    c664: ee21 1b03    	vmul.f64	d1, d1, d3
    c668: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0xc9e0 <orange_dsp::generated_repeated::update_into+0xb48>
    c66c: ee02 1b03    	vmla.f64	d1, d2, d3
    c670: ed90 2a12    	vldr	s4, [r0, #72]
    c674: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c678: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0xc9f0 <orange_dsp::generated_repeated::update_into+0xb58>
    c67c: ed8d 5b1c    	vstr	d5, [sp, #112]
    c680: ee22 5b03    	vmul.f64	d5, d2, d3
    c684: ed90 3a11    	vldr	s6, [r0, #68]
    c688: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    c68c: ed8d 4b1a    	vstr	d4, [sp, #104]
    c690: ed9f 4bd9    	vldr	d4, [pc, #868]          @ 0xc9f8 <orange_dsp::generated_repeated::update_into+0xb60>
    c694: ee03 5b04    	vmla.f64	d5, d3, d4
    c698: ed9f 4bdd    	vldr	d4, [pc, #884]          @ 0xca10 <orange_dsp::generated_repeated::update_into+0xb78>
    c69c: ee23 4b04    	vmul.f64	d4, d3, d4
    c6a0: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0xca18 <orange_dsp::generated_repeated::update_into+0xb80>
    c6a4: ee02 4b03    	vmla.f64	d4, d2, d3
    c6a8: ee38 3b00    	vadd.f64	d3, d8, d0
    c6ac: ed91 0a04    	vldr	s0, [r1, #16]
    c6b0: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c6b4: ed9f 2bc6    	vldr	d2, [pc, #792]          @ 0xc9d0 <orange_dsp::generated_repeated::update_into+0xb38>
    c6b8: ee00 3b02    	vmla.f64	d3, d0, d2
    c6bc: ee38 2b01    	vadd.f64	d2, d8, d1
    c6c0: ed9f 1bc9    	vldr	d1, [pc, #804]          @ 0xc9e8 <orange_dsp::generated_repeated::update_into+0xb50>
    c6c4: ee00 2b01    	vmla.f64	d2, d0, d1
    c6c8: ed91 1a05    	vldr	s2, [r1, #20]
    c6cc: ed8d 6b24    	vstr	d6, [sp, #144]
    c6d0: eeb7 6ac1    	vcvt.f64.f32	d6, s2
    c6d4: ed9f 1bca    	vldr	d1, [pc, #808]          @ 0xca00 <orange_dsp::generated_repeated::update_into+0xb68>
    c6d8: ed8d 5b02    	vstr	d5, [sp, #8]
    c6dc: ee26 5b01    	vmul.f64	d5, d6, d1
    c6e0: ed9f 1bc9    	vldr	d1, [pc, #804]          @ 0xca08 <orange_dsp::generated_repeated::update_into+0xb70>
    c6e4: ed8d 4b00    	vstr	d4, [sp]
    c6e8: ee00 5b01    	vmla.f64	d5, d0, d1
    c6ec: ed9f 1bcc    	vldr	d1, [pc, #816]          @ 0xca20 <orange_dsp::generated_repeated::update_into+0xb88>
    c6f0: ed9f 4bcd    	vldr	d4, [pc, #820]          @ 0xca28 <orange_dsp::generated_repeated::update_into+0xb90>
    c6f4: ed8d 3b06    	vstr	d3, [sp, #24]
    c6f8: ee26 3b01    	vmul.f64	d3, d6, d1
    c6fc: ee00 3b04    	vmla.f64	d3, d0, d4
    c700: ed90 0a14    	vldr	s0, [r0, #80]
    c704: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c708: ed8d 2b04    	vstr	d2, [sp, #16]
    c70c: ed9f 2bc8    	vldr	d2, [pc, #800]          @ 0xca30 <orange_dsp::generated_repeated::update_into+0xb98>
    c710: ee20 4b02    	vmul.f64	d4, d0, d2
    c714: ed90 2a13    	vldr	s4, [r0, #76]
    c718: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c71c: ed9f 9bc6    	vldr	d9, [pc, #792]          @ 0xca38 <orange_dsp::generated_repeated::update_into+0xba0>
    c720: ee02 4b09    	vmla.f64	d4, d2, d9
    c724: ed9f 9bc8    	vldr	d9, [pc, #800]          @ 0xca48 <orange_dsp::generated_repeated::update_into+0xbb0>
    c728: ee22 2b09    	vmul.f64	d2, d2, d9
    c72c: ed9f 9bc8    	vldr	d9, [pc, #800]          @ 0xca50 <orange_dsp::generated_repeated::update_into+0xbb8>
    c730: ee00 2b09    	vmla.f64	d2, d0, d9
    c734: ed91 0a00    	vldr	s0, [r1]
    c738: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c73c: ed9f 9b8a    	vldr	d9, [pc, #552]          @ 0xc968 <orange_dsp::generated_repeated::update_into+0xad0>
    c740: ed9f 1b87    	vldr	d1, [pc, #540]          @ 0xc960 <orange_dsp::generated_repeated::update_into+0xac8>
    c744: ee00 ab09    	vmla.f64	d10, d0, d9
    c748: ee38 9b01    	vadd.f64	d9, d8, d1
    c74c: ee38 1b07    	vadd.f64	d1, d8, d7
    c750: ee39 9b00    	vadd.f64	d9, d9, d0
    c754: ed9d 0b18    	vldr	d0, [sp, #96]
    c758: ee31 0b00    	vadd.f64	d0, d1, d0
    c75c: ed8d 0b18    	vstr	d0, [sp, #96]
    c760: ed9d 0b1e    	vldr	d0, [sp, #120]
    c764: ee38 1b00    	vadd.f64	d1, d8, d0
    c768: ed9d 0b1a    	vldr	d0, [sp, #104]
    c76c: ed9d 7b16    	vldr	d7, [sp, #88]
    c770: ee38 0b00    	vadd.f64	d0, d8, d0
    c774: ee31 1b07    	vadd.f64	d1, d1, d7
    c778: ed8d 1b1a    	vstr	d1, [sp, #104]
    c77c: ed9d 1b14    	vldr	d1, [sp, #80]
    c780: ee30 0b01    	vadd.f64	d0, d0, d1
    c784: ed8d 0b16    	vstr	d0, [sp, #88]
    c788: ed9d 0b1c    	vldr	d0, [sp, #112]
    c78c: ee38 1b00    	vadd.f64	d1, d8, d0
    c790: ed9d 0b12    	vldr	d0, [sp, #72]
    c794: ee38 bb0b    	vadd.f64	d11, d8, d11
    c798: ee31 0b00    	vadd.f64	d0, d1, d0
    c79c: ed8d 0b14    	vstr	d0, [sp, #80]
    c7a0: ed9d 0b10    	vldr	d0, [sp, #64]
    c7a4: ee38 1b0c    	vadd.f64	d1, d8, d12
    c7a8: ee3b bb00    	vadd.f64	d11, d11, d0
    c7ac: ed9d 0b0e    	vldr	d0, [sp, #56]
    c7b0: ee38 cb0d    	vadd.f64	d12, d8, d13
    c7b4: ee31 db00    	vadd.f64	d13, d1, d0
    c7b8: ed9d 0b0c    	vldr	d0, [sp, #48]
    c7bc: ee38 1b0e    	vadd.f64	d1, d8, d14
    c7c0: ee3c cb00    	vadd.f64	d12, d12, d0
    c7c4: ed9d 0b0a    	vldr	d0, [sp, #40]
    c7c8: ee38 eb0f    	vadd.f64	d14, d8, d15
    c7cc: ee31 fb00    	vadd.f64	d15, d1, d0
    c7d0: ed9d 0b08    	vldr	d0, [sp, #32]
    c7d4: ee3e eb00    	vadd.f64	d14, d14, d0
    c7d8: ed9d 0b02    	vldr	d0, [sp, #8]
    c7dc: ed9d 1b00    	vldr	d1, [sp]
    c7e0: ee38 0b00    	vadd.f64	d0, d8, d0
    c7e4: ee38 7b01    	vadd.f64	d7, d8, d1
    c7e8: eeb0 1b48    	vmov.f64	d1, d8
    c7ec: ee30 0b05    	vadd.f64	d0, d0, d5
    c7f0: ed8d 0b1c    	vstr	d0, [sp, #112]
    c7f4: ee37 0b03    	vadd.f64	d0, d7, d3
    c7f8: ed8d 0b1e    	vstr	d0, [sp, #120]
    c7fc: ed91 0a06    	vldr	s0, [r1, #24]
    c800: eeb7 5ac0    	vcvt.f64.f32	d5, s0
    c804: ed9f 7b8e    	vldr	d7, [pc, #568]          @ 0xca40 <orange_dsp::generated_repeated::update_into+0xba8>
    c808: ed9d 3b26    	vldr	d3, [sp, #152]
    c80c: ee26 0b07    	vmul.f64	d0, d6, d7
    c810: ee05 0b47    	vmls.f64	d0, d5, d7
    c814: eeb7 7bc9    	vcvt.f32.f64	s14, d9
    c818: ed82 7a00    	vstr	s14, [r2]
    c81c: eeb7 9bc3    	vcvt.f32.f64	s18, d3
    c820: ed82 9a02    	vstr	s18, [r2, #8]
    c824: ed9d 3b24    	vldr	d3, [sp, #144]
    c828: eef7 9bc3    	vcvt.f32.f64	s19, d3
    c82c: edc2 9a03    	vstr	s19, [r2, #12]
    c830: ed9d 3b22    	vldr	d3, [sp, #136]
    c834: eef7 8bc3    	vcvt.f32.f64	s17, d3
    c838: edc2 8a04    	vstr	s17, [r2, #16]
    c83c: ed9d 3b20    	vldr	d3, [sp, #128]
    c840: eef7 7bca    	vcvt.f32.f64	s15, d10
    c844: edc2 7a01    	vstr	s15, [r2, #4]
    c848: eeb7 8bc3    	vcvt.f32.f64	s16, d3
    c84c: ed82 8a05    	vstr	s16, [r2, #20]
    c850: ed9d 3b18    	vldr	d3, [sp, #96]
    c854: ed9d ab1a    	vldr	d10, [sp, #104]
    c858: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    c85c: ed82 3a06    	vstr	s6, [r2, #24]
    c860: eef7 3bca    	vcvt.f32.f64	s7, d10
    c864: edc2 3a07    	vstr	s7, [r2, #28]
    c868: ed9d ab16    	vldr	d10, [sp, #88]
    c86c: eeb7 abca    	vcvt.f32.f64	s20, d10
    c870: ed8d aa26    	vstr	s20, [sp, #152]
    c874: ed9d ab14    	vldr	d10, [sp, #80]
    c878: eeb7 abca    	vcvt.f32.f64	s20, d10
    c87c: ed9d 3a26    	vldr	s6, [sp, #152]
    c880: ed82 3a08    	vstr	s6, [r2, #32]
    c884: eef7 abcf    	vcvt.f32.f64	s21, d15
    c888: ed82 aa09    	vstr	s20, [r2, #36]
    c88c: ed9f fb72    	vldr	d15, [pc, #456]         @ 0xca58 <orange_dsp::generated_repeated::update_into+0xbc0>
    c890: edc2 aa0d    	vstr	s21, [r2, #52]
    c894: ee31 2b02    	vadd.f64	d2, d1, d2
    c898: ee26 6b0f    	vmul.f64	d6, d6, d15
    c89c: ee05 6b4f    	vmls.f64	d6, d5, d15
    c8a0: ee31 4b04    	vadd.f64	d4, d1, d4
    c8a4: ee32 2b06    	vadd.f64	d2, d2, d6
    c8a8: ed9f 3b6d    	vldr	d3, [pc, #436]          @ 0xca60 <orange_dsp::generated_repeated::update_into+0xbc8>
    c8ac: eeb7 6bc2    	vcvt.f32.f64	s12, d2
    c8b0: ed90 2a15    	vldr	s4, [r0, #84]
    c8b4: ed82 6a14    	vstr	s12, [r2, #80]
    c8b8: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c8bc: ee34 0b00    	vadd.f64	d0, d4, d0
    c8c0: eeb0 4b41    	vmov.f64	d4, d1
    c8c4: ee02 4b03    	vmla.f64	d4, d2, d3
    c8c8: ed91 2a07    	vldr	s4, [r1, #28]
    c8cc: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c8d0: ed9f 3b65    	vldr	d3, [pc, #404]          @ 0xca68 <orange_dsp::generated_repeated::update_into+0xbd0>
    c8d4: ee02 4b03    	vmla.f64	d4, d2, d3
    c8d8: ed90 3a16    	vldr	s6, [r0, #88]
    c8dc: eeb7 bbcb    	vcvt.f32.f64	s22, d11
    c8e0: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    c8e4: ed82 ba0a    	vstr	s22, [r2, #40]
    c8e8: eef7 bbcc    	vcvt.f32.f64	s23, d12
    c8ec: edc2 ba0c    	vstr	s23, [r2, #48]
    c8f0: ed9d cb06    	vldr	d12, [sp, #24]
    c8f4: ed9f 5b5e    	vldr	d5, [pc, #376]          @ 0xca70 <orange_dsp::generated_repeated::update_into+0xbd8>
    c8f8: eeb7 7bcc    	vcvt.f32.f64	s14, d12
    c8fc: ed82 7a0f    	vstr	s14, [r2, #60]
    c900: ed9d cb04    	vldr	d12, [sp, #16]
    c904: ee03 1b05    	vmla.f64	d1, d3, d5
    c908: ed9f 3b5b    	vldr	d3, [pc, #364]          @ 0xca78 <orange_dsp::generated_repeated::update_into+0xbe0>
    c90c: eef7 7bcc    	vcvt.f32.f64	s15, d12
    c910: edc2 7a10    	vstr	s15, [r2, #64]
    c914: ed9d cb1c    	vldr	d12, [sp, #112]
    c918: ee02 1b03    	vmla.f64	d1, d2, d3
    c91c: eeb7 9bcc    	vcvt.f32.f64	s18, d12
    c920: ed82 9a11    	vstr	s18, [r2, #68]
    c924: ed9d cb1e    	vldr	d12, [sp, #120]
    c928: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c92c: ed82 0a13    	vstr	s0, [r2, #76]
    c930: eeb7 0bc4    	vcvt.f32.f64	s0, d4
    c934: ed82 0a15    	vstr	s0, [r2, #84]
    c938: eeb7 dbcd    	vcvt.f32.f64	s26, d13
    c93c: ed82 da0b    	vstr	s26, [r2, #44]
    c940: eeb7 ebce    	vcvt.f32.f64	s28, d14
    c944: ed82 ea0e    	vstr	s28, [r2, #56]
    c948: eef7 9bcc    	vcvt.f32.f64	s19, d12
    c94c: edc2 9a12    	vstr	s19, [r2, #72]
    c950: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    c954: ed82 0a16    	vstr	s0, [r2, #88]
    c958: b028         	add	sp, #0xa0
    c95a: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    c95e: bd80         	pop	{r7, pc}
		...
    c968: 00 e0 35 df  	.word	0xdf35e000
    c96c: 12 5d 23 3f  	.word	0x3f235d12
    c970: 00 40 b2 d2  	.word	0xd2b24000
    c974: 8e 3e f2 3e  	.word	0x3ef23e8e
    c978: 00 40 3c 73  	.word	0x733c4000
    c97c: b9 32 02 3f  	.word	0x3f0232b9
    c980: 08 f7 83 70  	.word	0x7083f708
    c984: 57 67 a2 3f  	.word	0x3fa26757
    c988: 70 97 28 9d  	.word	0x9d289770
    c98c: 67 5b b2 3f  	.word	0x3fb25b67
    c990: 00 18 07 f2  	.word	0xf2071800
    c994: 36 36 11 bf  	.word	0xbf113636
    c998: 00 2c 41 07  	.word	0x07412c00
    c99c: 0d 2b 21 bf  	.word	0xbf212b0d
    c9a0: 00 11 6e ab  	.word	0xab6e1100
    c9a4: 66 c0 49 3f  	.word	0x3f49c066
    c9a8: 00 57 e3 c4  	.word	0xc4e35700
    c9ac: b2 af 59 3f  	.word	0x3f59afb2
    c9b0: 00 00 53 f5  	.word	0xf5530000
    c9b4: 24 27 eb 3e  	.word	0x3eeb2724
    c9b8: 00 00 83 5f  	.word	0x5f830000
    c9bc: 88 15 fb 3e  	.word	0x3efb1588
    c9c0: 30 b5 9f 60  	.word	0x609fb530
    c9c4: ab e5 d3 3f  	.word	0x3fd3e5ab
    c9c8: 3b cc c8 6a  	.word	0x6ac8cc3b
    c9cc: c2 ed a6 3f  	.word	0x3fa6edc2
    c9d0: c8 8f ef 10  	.word	0x10ef8fc8
    c9d4: 81 d8 dd bf  	.word	0xbfddd881
    c9d8: 28 3f 82 e4  	.word	0xe4823f28
    c9dc: 69 54 e5 3f  	.word	0x3fe55469
    c9e0: bf 80 ca 02  	.word	0x02ca80bf
    c9e4: ca a2 ed 3e  	.word	0x3eeda2ca
    c9e8: e4 27 14 ca  	.word	0xca1427e4
    c9ec: 93 12 26 3f  	.word	0x3f261293
    c9f0: f7 82 13 a7  	.word	0xa71382f7
    c9f4: 09 7c d7 bf  	.word	0xbfd77c09
    c9f8: 7b 84 3a 2a  	.word	0x2a3a847b
    c9fc: 5a 5f c0 3f  	.word	0x3fc05f5a
    ca00: cc 5e bc b6  	.word	0xb6bc5ecc
    ca04: a2 bc e5 bf  	.word	0xbfe5bca2
    ca08: 15 be b6 e5  	.word	0xe5b6be15
    ca0c: 6d 7e c0 3f  	.word	0x3fc07e6d
    ca10: 00 90 99 b0  	.word	0xb0999000
    ca14: 0f 3d 03 bf  	.word	0xbf033d0f
    ca18: 36 0c 56 03  	.word	0x03560c36
    ca1c: a1 54 e5 3f  	.word	0x3fe554a1
    ca20: 00 60 f1 d0  	.word	0xd0f16000
    ca24: 95 1e 18 bf  	.word	0xbf181e95
    ca28: 00 70 fc 18  	.word	0x18fc7000
    ca2c: 94 61 03 bf  	.word	0xbf036194
    ca30: d2 4f d6 fa  	.word	0xfad64fd2
    ca34: 97 86 f2 be  	.word	0xbef28697
    ca38: b5 2c 68 6e  	.word	0x6e682cb5
    ca3c: 31 53 e5 3f  	.word	0x3fe55331
    ca40: 00 80 e7 1d  	.word	0x1de78000
    ca44: d3 ae 39 3f  	.word	0x3f39aed3
    ca48: 00 d8 8b f9  	.word	0xf98bd800
    ca4c: 3d 28 27 bf  	.word	0xbf27283d
    ca50: ca 9f ba 05  	.word	0x05ba9fca
    ca54: 70 52 e5 3f  	.word	0x3fe55270
    ca58: 00 e4 28 7b  	.word	0x7b28e400
    ca5c: 2e 5e 31 3f  	.word	0x3f315e2e
    ca60: 5d ef 75 b1  	.word	0xb175ef5d
    ca64: 41 55 e5 3f  	.word	0x3fe55541
    ca68: 77 21 f7 18  	.word	0x18f72177
    ca6c: cf 75 ed 3e  	.word	0x3eed75cf
    ca70: 21 8e 90 51  	.word	0x51908e21
    ca74: b7 61 83 3f  	.word	0x3f8361b7
    ca78: ab 9c 16 b4  	.word	0xb4169cab
    ca7c: b5 8b ef 3f  	.word	0x3fef8bb5

0000ca80 <orange_dsp::generated_condensed::update>:
    ca80: b580         	push	{r7, lr}
    ca82: 466f         	mov	r7, sp
    ca84: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    ca88: b0b0         	sub	sp, #0xc0
    ca8a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ca8e: ed91 3a02    	vldr	s6, [r1, #8]
    ca92: ed9f 1bfd    	vldr	d1, [pc, #1012]         @ 0xce88 <orange_dsp::generated_condensed::update+0x408>
    ca96: ed91 4a01    	vldr	s8, [r1, #4]
    ca9a: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    ca9e: ee20 8b01    	vmul.f64	d8, d0, d1
    caa2: ed91 1a03    	vldr	s2, [r1, #12]
    caa6: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    caaa: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    caae: ed9f 0bf8    	vldr	d0, [pc, #992]          @ 0xce90 <orange_dsp::generated_condensed::update+0x410>
    cab2: ed9f 2bf9    	vldr	d2, [pc, #996]          @ 0xce98 <orange_dsp::generated_condensed::update+0x418>
    cab6: ed9f 5bfa    	vldr	d5, [pc, #1000]         @ 0xcea0 <orange_dsp::generated_condensed::update+0x420>
    caba: ee21 2b02    	vmul.f64	d2, d1, d2
    cabe: ee03 2b05    	vmla.f64	d2, d3, d5
    cac2: eeb0 5b48    	vmov.f64	d5, d8
    cac6: ee04 5b00    	vmla.f64	d5, d4, d0
    caca: ed9f 0bf7    	vldr	d0, [pc, #988]          @ 0xcea8 <orange_dsp::generated_condensed::update+0x428>
    cace: ee23 3b00    	vmul.f64	d3, d3, d0
    cad2: ed92 0a01    	vldr	s0, [r2, #4]
    cad6: ed9f 4bf6    	vldr	d4, [pc, #984]          @ 0xceb0 <orange_dsp::generated_condensed::update+0x430>
    cada: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cade: ed8d 5b2c    	vstr	d5, [sp, #176]
    cae2: ee38 5b02    	vadd.f64	d5, d8, d2
    cae6: ed9f 2bf4    	vldr	d2, [pc, #976]          @ 0xceb8 <orange_dsp::generated_condensed::update+0x438>
    caea: ee01 3b04    	vmla.f64	d3, d1, d4
    caee: ed91 4a04    	vldr	s8, [r1, #16]
    caf2: ee00 5b02    	vmla.f64	d5, d0, d2
    caf6: ed91 2a05    	vldr	s4, [r1, #20]
    cafa: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    cafe: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    cb02: ed8d 5b2e    	vstr	d5, [sp, #184]
    cb06: ee38 6b03    	vadd.f64	d6, d8, d3
    cb0a: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xcec0 <orange_dsp::generated_condensed::update+0x440>
    cb0e: ed9f 5bee    	vldr	d5, [pc, #952]          @ 0xcec8 <orange_dsp::generated_condensed::update+0x448>
    cb12: ee22 3b03    	vmul.f64	d3, d2, d3
    cb16: ee04 3b05    	vmla.f64	d3, d4, d5
    cb1a: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xced0 <orange_dsp::generated_condensed::update+0x450>
    cb1e: ee38 5b03    	vadd.f64	d5, d8, d3
    cb22: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xced8 <orange_dsp::generated_condensed::update+0x458>
    cb26: ee24 3b03    	vmul.f64	d3, d4, d3
    cb2a: ed9f 4bed    	vldr	d4, [pc, #948]          @ 0xcee0 <orange_dsp::generated_condensed::update+0x460>
    cb2e: ee00 6b01    	vmla.f64	d6, d0, d1
    cb32: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xcee8 <orange_dsp::generated_condensed::update+0x468>
    cb36: ee02 3b04    	vmla.f64	d3, d2, d4
    cb3a: ee00 5b01    	vmla.f64	d5, d0, d1
    cb3e: ed9f 1bec    	vldr	d1, [pc, #944]          @ 0xcef0 <orange_dsp::generated_condensed::update+0x470>
    cb42: ee38 2b03    	vadd.f64	d2, d8, d3
    cb46: ee00 2b01    	vmla.f64	d2, d0, d1
    cb4a: ed91 0a07    	vldr	s0, [r1, #28]
    cb4e: ed91 1a06    	vldr	s2, [r1, #24]
    cb52: eeb7 fac0    	vcvt.f64.f32	d15, s0
    cb56: ed9f 0be8    	vldr	d0, [pc, #928]          @ 0xcef8 <orange_dsp::generated_condensed::update+0x478>
    cb5a: ee2f 9b00    	vmul.f64	d9, d15, d0
    cb5e: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    cb62: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf00 <orange_dsp::generated_condensed::update+0x480>
    cb66: ee00 9b01    	vmla.f64	d9, d0, d1
    cb6a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf08 <orange_dsp::generated_condensed::update+0x488>
    cb6e: ee2f 3b01    	vmul.f64	d3, d15, d1
    cb72: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf10 <orange_dsp::generated_condensed::update+0x490>
    cb76: ee00 3b01    	vmla.f64	d3, d0, d1
    cb7a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf18 <orange_dsp::generated_condensed::update+0x498>
    cb7e: ee2f 4b01    	vmul.f64	d4, d15, d1
    cb82: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf20 <orange_dsp::generated_condensed::update+0x4a0>
    cb86: ee00 4b01    	vmla.f64	d4, d0, d1
    cb8a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf28 <orange_dsp::generated_condensed::update+0x4a8>
    cb8e: ee20 ab01    	vmul.f64	d10, d0, d1
    cb92: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf30 <orange_dsp::generated_condensed::update+0x4b0>
    cb96: ee0f ab01    	vmla.f64	d10, d15, d1
    cb9a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf38 <orange_dsp::generated_condensed::update+0x4b8>
    cb9e: ee2f bb01    	vmul.f64	d11, d15, d1
    cba2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf40 <orange_dsp::generated_condensed::update+0x4c0>
    cba6: ee00 bb01    	vmla.f64	d11, d0, d1
    cbaa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf48 <orange_dsp::generated_condensed::update+0x4c8>
    cbae: ee2f cb01    	vmul.f64	d12, d15, d1
    cbb2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf50 <orange_dsp::generated_condensed::update+0x4d0>
    cbb6: ee00 cb01    	vmla.f64	d12, d0, d1
    cbba: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf58 <orange_dsp::generated_condensed::update+0x4d8>
    cbbe: ee20 db01    	vmul.f64	d13, d0, d1
    cbc2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf60 <orange_dsp::generated_condensed::update+0x4e0>
    cbc6: ee0f db01    	vmla.f64	d13, d15, d1
    cbca: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf68 <orange_dsp::generated_condensed::update+0x4e8>
    cbce: ee2f eb01    	vmul.f64	d14, d15, d1
    cbd2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf70 <orange_dsp::generated_condensed::update+0x4f0>
    cbd6: ee00 eb01    	vmla.f64	d14, d0, d1
    cbda: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf78 <orange_dsp::generated_condensed::update+0x4f8>
    cbde: ee2f fb01    	vmul.f64	d15, d15, d1
    cbe2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf80 <orange_dsp::generated_condensed::update+0x500>
    cbe6: ee00 fb01    	vmla.f64	d15, d0, d1
    cbea: ed91 0a08    	vldr	s0, [r1, #32]
    cbee: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cbf2: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcf88 <orange_dsp::generated_condensed::update+0x508>
    cbf6: ee00 9b01    	vmla.f64	d9, d0, d1
    cbfa: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcf90 <orange_dsp::generated_condensed::update+0x510>
    cbfe: ee00 3b01    	vmla.f64	d3, d0, d1
    cc02: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcf98 <orange_dsp::generated_condensed::update+0x518>
    cc06: ee00 4b01    	vmla.f64	d4, d0, d1
    cc0a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfa0 <orange_dsp::generated_condensed::update+0x520>
    cc0e: ee00 ab01    	vmla.f64	d10, d0, d1
    cc12: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfa8 <orange_dsp::generated_condensed::update+0x528>
    cc16: ee00 bb01    	vmla.f64	d11, d0, d1
    cc1a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfb0 <orange_dsp::generated_condensed::update+0x530>
    cc1e: ee00 cb01    	vmla.f64	d12, d0, d1
    cc22: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfb8 <orange_dsp::generated_condensed::update+0x538>
    cc26: ee00 db01    	vmla.f64	d13, d0, d1
    cc2a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfc0 <orange_dsp::generated_condensed::update+0x540>
    cc2e: ee00 eb01    	vmla.f64	d14, d0, d1
    cc32: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfc8 <orange_dsp::generated_condensed::update+0x548>
    cc36: ee00 fb01    	vmla.f64	d15, d0, d1
    cc3a: ed91 0a09    	vldr	s0, [r1, #36]
    cc3e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cc42: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcfd0 <orange_dsp::generated_condensed::update+0x550>
    cc46: ee00 9b01    	vmla.f64	d9, d0, d1
    cc4a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcfd8 <orange_dsp::generated_condensed::update+0x558>
    cc4e: ee00 3b01    	vmla.f64	d3, d0, d1
    cc52: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcfe0 <orange_dsp::generated_condensed::update+0x560>
    cc56: ee00 4b01    	vmla.f64	d4, d0, d1
    cc5a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcfe8 <orange_dsp::generated_condensed::update+0x568>
    cc5e: ee00 ab01    	vmla.f64	d10, d0, d1
    cc62: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcff0 <orange_dsp::generated_condensed::update+0x570>
    cc66: ee00 bb01    	vmla.f64	d11, d0, d1
    cc6a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcff8 <orange_dsp::generated_condensed::update+0x578>
    cc6e: ee00 cb01    	vmla.f64	d12, d0, d1
    cc72: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd000 <orange_dsp::generated_condensed::update+0x580>
    cc76: ee00 db01    	vmla.f64	d13, d0, d1
    cc7a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd008 <orange_dsp::generated_condensed::update+0x588>
    cc7e: ee00 eb01    	vmla.f64	d14, d0, d1
    cc82: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd010 <orange_dsp::generated_condensed::update+0x590>
    cc86: ee00 fb01    	vmla.f64	d15, d0, d1
    cc8a: ed91 0a0a    	vldr	s0, [r1, #40]
    cc8e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cc92: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd018 <orange_dsp::generated_condensed::update+0x598>
    cc96: ee00 9b01    	vmla.f64	d9, d0, d1
    cc9a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd020 <orange_dsp::generated_condensed::update+0x5a0>
    cc9e: ee00 3b01    	vmla.f64	d3, d0, d1
    cca2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd028 <orange_dsp::generated_condensed::update+0x5a8>
    cca6: ee00 4b01    	vmla.f64	d4, d0, d1
    ccaa: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd030 <orange_dsp::generated_condensed::update+0x5b0>
    ccae: ee00 ab01    	vmla.f64	d10, d0, d1
    ccb2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd038 <orange_dsp::generated_condensed::update+0x5b8>
    ccb6: ee00 bb01    	vmla.f64	d11, d0, d1
    ccba: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd040 <orange_dsp::generated_condensed::update+0x5c0>
    ccbe: ee00 cb01    	vmla.f64	d12, d0, d1
    ccc2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd048 <orange_dsp::generated_condensed::update+0x5c8>
    ccc6: ee00 db01    	vmla.f64	d13, d0, d1
    ccca: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd050 <orange_dsp::generated_condensed::update+0x5d0>
    ccce: ee00 eb01    	vmla.f64	d14, d0, d1
    ccd2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd058 <orange_dsp::generated_condensed::update+0x5d8>
    ccd6: ee00 fb01    	vmla.f64	d15, d0, d1
    ccda: ed91 0a0b    	vldr	s0, [r1, #44]
    ccde: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cce2: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd060 <orange_dsp::generated_condensed::update+0x5e0>
    cce6: ee00 9b01    	vmla.f64	d9, d0, d1
    ccea: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd068 <orange_dsp::generated_condensed::update+0x5e8>
    ccee: ee00 3b01    	vmla.f64	d3, d0, d1
    ccf2: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd070 <orange_dsp::generated_condensed::update+0x5f0>
    ccf6: ee00 4b01    	vmla.f64	d4, d0, d1
    ccfa: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd078 <orange_dsp::generated_condensed::update+0x5f8>
    ccfe: ee00 ab01    	vmla.f64	d10, d0, d1
    cd02: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd080 <orange_dsp::generated_condensed::update+0x600>
    cd06: ee00 bb01    	vmla.f64	d11, d0, d1
    cd0a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd088 <orange_dsp::generated_condensed::update+0x608>
    cd0e: ee00 cb01    	vmla.f64	d12, d0, d1
    cd12: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd090 <orange_dsp::generated_condensed::update+0x610>
    cd16: ee00 db01    	vmla.f64	d13, d0, d1
    cd1a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd098 <orange_dsp::generated_condensed::update+0x618>
    cd1e: ee00 eb01    	vmla.f64	d14, d0, d1
    cd22: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd0a0 <orange_dsp::generated_condensed::update+0x620>
    cd26: ee00 fb01    	vmla.f64	d15, d0, d1
    cd2a: ed91 0a0c    	vldr	s0, [r1, #48]
    cd2e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cd32: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0a8 <orange_dsp::generated_condensed::update+0x628>
    cd36: ee00 9b01    	vmla.f64	d9, d0, d1
    cd3a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0b0 <orange_dsp::generated_condensed::update+0x630>
    cd3e: ee00 3b01    	vmla.f64	d3, d0, d1
    cd42: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0b8 <orange_dsp::generated_condensed::update+0x638>
    cd46: ee00 4b01    	vmla.f64	d4, d0, d1
    cd4a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0c0 <orange_dsp::generated_condensed::update+0x640>
    cd4e: ee00 ab01    	vmla.f64	d10, d0, d1
    cd52: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0c8 <orange_dsp::generated_condensed::update+0x648>
    cd56: ee00 bb01    	vmla.f64	d11, d0, d1
    cd5a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0d0 <orange_dsp::generated_condensed::update+0x650>
    cd5e: ee00 cb01    	vmla.f64	d12, d0, d1
    cd62: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0d8 <orange_dsp::generated_condensed::update+0x658>
    cd66: ee00 db01    	vmla.f64	d13, d0, d1
    cd6a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0e0 <orange_dsp::generated_condensed::update+0x660>
    cd6e: ee00 eb01    	vmla.f64	d14, d0, d1
    cd72: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0e8 <orange_dsp::generated_condensed::update+0x668>
    cd76: ee00 fb01    	vmla.f64	d15, d0, d1
    cd7a: ed91 0a0d    	vldr	s0, [r1, #52]
    cd7e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cd82: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd0f0 <orange_dsp::generated_condensed::update+0x670>
    cd86: ee00 9b01    	vmla.f64	d9, d0, d1
    cd8a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd0f8 <orange_dsp::generated_condensed::update+0x678>
    cd8e: ee00 3b01    	vmla.f64	d3, d0, d1
    cd92: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd100 <orange_dsp::generated_condensed::update+0x680>
    cd96: ee00 4b01    	vmla.f64	d4, d0, d1
    cd9a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd108 <orange_dsp::generated_condensed::update+0x688>
    cd9e: ee00 ab01    	vmla.f64	d10, d0, d1
    cda2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd110 <orange_dsp::generated_condensed::update+0x690>
    cda6: ee00 bb01    	vmla.f64	d11, d0, d1
    cdaa: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd118 <orange_dsp::generated_condensed::update+0x698>
    cdae: ee00 cb01    	vmla.f64	d12, d0, d1
    cdb2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd120 <orange_dsp::generated_condensed::update+0x6a0>
    cdb6: ee00 db01    	vmla.f64	d13, d0, d1
    cdba: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd128 <orange_dsp::generated_condensed::update+0x6a8>
    cdbe: ee00 eb01    	vmla.f64	d14, d0, d1
    cdc2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd130 <orange_dsp::generated_condensed::update+0x6b0>
    cdc6: ee00 fb01    	vmla.f64	d15, d0, d1
    cdca: ed91 0a0e    	vldr	s0, [r1, #56]
    cdce: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cdd2: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd138 <orange_dsp::generated_condensed::update+0x6b8>
    cdd6: ee00 9b01    	vmla.f64	d9, d0, d1
    cdda: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd140 <orange_dsp::generated_condensed::update+0x6c0>
    cdde: ee00 3b01    	vmla.f64	d3, d0, d1
    cde2: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd148 <orange_dsp::generated_condensed::update+0x6c8>
    cde6: ee00 4b01    	vmla.f64	d4, d0, d1
    cdea: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd150 <orange_dsp::generated_condensed::update+0x6d0>
    cdee: ee00 ab01    	vmla.f64	d10, d0, d1
    cdf2: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd158 <orange_dsp::generated_condensed::update+0x6d8>
    cdf6: ee00 bb01    	vmla.f64	d11, d0, d1
    cdfa: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd160 <orange_dsp::generated_condensed::update+0x6e0>
    cdfe: ee00 cb01    	vmla.f64	d12, d0, d1
    ce02: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd168 <orange_dsp::generated_condensed::update+0x6e8>
    ce06: ee00 db01    	vmla.f64	d13, d0, d1
    ce0a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd170 <orange_dsp::generated_condensed::update+0x6f0>
    ce0e: ee00 eb01    	vmla.f64	d14, d0, d1
    ce12: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd178 <orange_dsp::generated_condensed::update+0x6f8>
    ce16: ee00 fb01    	vmla.f64	d15, d0, d1
    ce1a: ed92 0a03    	vldr	s0, [r2, #12]
    ce1e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ce22: ed9f 1bd7    	vldr	d1, [pc, #860]          @ 0xd180 <orange_dsp::generated_condensed::update+0x700>
    ce26: ed8d 3b1c    	vstr	d3, [sp, #112]
    ce2a: ee20 3b01    	vmul.f64	d3, d0, d1
    ce2e: ed92 1a02    	vldr	s2, [r2, #8]
    ce32: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    ce36: ed8d 2b26    	vstr	d2, [sp, #152]
    ce3a: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xd188 <orange_dsp::generated_condensed::update+0x708>
    ce3e: ee01 3b02    	vmla.f64	d3, d1, d2
    ce42: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xd190 <orange_dsp::generated_condensed::update+0x710>
    ce46: ed8d 3b24    	vstr	d3, [sp, #144]
    ce4a: ee20 3b02    	vmul.f64	d3, d0, d2
    ce4e: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xd198 <orange_dsp::generated_condensed::update+0x718>
    ce52: ee01 3b02    	vmla.f64	d3, d1, d2
    ce56: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xd1a0 <orange_dsp::generated_condensed::update+0x720>
    ce5a: ed8d 3b22    	vstr	d3, [sp, #136]
    ce5e: ee20 3b02    	vmul.f64	d3, d0, d2
    ce62: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xd1a8 <orange_dsp::generated_condensed::update+0x728>
    ce66: ee01 3b02    	vmla.f64	d3, d1, d2
    ce6a: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xd1b0 <orange_dsp::generated_condensed::update+0x730>
    ce6e: ed8d 3b20    	vstr	d3, [sp, #128]
    ce72: ee20 3b02    	vmul.f64	d3, d0, d2
    ce76: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xd1b8 <orange_dsp::generated_condensed::update+0x738>
    ce7a: ee01 3b02    	vmla.f64	d3, d1, d2
    ce7e: f000 b99f    	b.w	0xd1c0 <orange_dsp::generated_condensed::update+0x740> @ imm = #0x33e
    ce82: bf00         	nop
    ce84: bf00         	nop
    ce86: bf00         	nop
		...
    ce90: c1 5d e1 c9  	.word	0xc9e15dc1
    ce94: 86 54 e5 3f  	.word	0x3fe55486
    ce98: a9 0f 6b 00  	.word	0x006b0fa9
    ce9c: 3e 31 92 bf  	.word	0xbf92313e
    cea0: a2 48 2a 74  	.word	0x742a48a2
    cea4: 54 ba e4 3f  	.word	0x3fe4ba54
    cea8: 00 60 41 1f  	.word	0x1f416000
    ceac: 45 49 27 bf  	.word	0xbf274945
    ceb0: 1a 5d 10 11  	.word	0x11105d1a
    ceb4: ce 53 e5 3f  	.word	0x3fe553ce
    ceb8: 46 6c 1c 77  	.word	0x771c6c46
    cebc: d3 64 5c bf  	.word	0xbf5c64d3
    cec0: 80 0d 59 22  	.word	0x22590d80
    cec4: 9f d9 b8 be  	.word	0xbeb8d99f
    cec8: b0 e5 93 25  	.word	0x2593e5b0
    cecc: 2e 54 e5 3f  	.word	0x3fe5542e
    ced0: 00 60 e7 86  	.word	0x86e76000
    ced4: ec 07 ec 3e  	.word	0x3eec07ec
    ced8: 00 f0 f8 21  	.word	0x21f8f000
    cedc: c8 2c 12 bf  	.word	0xbf122cc8
    cee0: 3d 6e 12 0b  	.word	0x0b126e3d
    cee4: a1 53 e5 3f  	.word	0x3fe553a1
    cee8: 00 80 77 22  	.word	0x22778000
    ceec: 7a ac 2b 3f  	.word	0x3f2bac7a
    cef0: 00 60 f5 32  	.word	0x32f56000
    cef4: 2c 43 1b 3f  	.word	0x3f1b432c
    cef8: 06 42 bd ec  	.word	0xecbd4206
    cefc: 6c ee e0 3f  	.word	0x3fe0ee6c
    cf00: 75 22 80 1e  	.word	0x1e802275
    cf04: ff ca ba 3f  	.word	0x3fbacaff
    cf08: a3 83 c9 c1  	.word	0xc1c983a3
    cf0c: 1d 54 e5 3f  	.word	0x3fe5541d
    cf10: 00 ac c1 aa  	.word	0xaac1ac00
    cf14: b7 a1 1d 3f  	.word	0x3f1da1b7
    cf18: 00 8f fc e0  	.word	0xe0fc8f00
    cf1c: bb 3a 58 bf  	.word	0xbf583abb
    cf20: 80 c5 13 c0  	.word	0xc013c580
    cf24: 2a 6f 52 3f  	.word	0x3f526f2a
    cf28: 1a c8 c7 76  	.word	0x76c7c81a
    cf2c: 6e b2 14 bf  	.word	0xbf14b26e
    cf30: e2 63 27 22  	.word	0x222763e2
    cf34: 1a 34 1b 3f  	.word	0x3f1b341a
    cf38: 00 00 77 9e  	.word	0x9e770000
    cf3c: d4 83 d1 be  	.word	0xbed183d4
    cf40: 00 80 54 bc  	.word	0xbc548000
    cf44: c7 a6 ca 3e  	.word	0x3ecaa6c7
    cf48: 78 c9 65 d2  	.word	0xd265c978
    cf4c: fb aa 81 bf  	.word	0xbf81aafb
    cf50: 38 4b 1c 74  	.word	0x741c4b38
    cf54: 5b e2 7a 3f  	.word	0x3f7ae25b
    cf58: 00 a8 b7 3b  	.word	0x3bb7a800
    cf5c: a0 24 e9 be  	.word	0xbee924a0
    cf60: 00 b0 3a 3d  	.word	0x3d3ab000
    cf64: 0e 86 f0 3e  	.word	0x3ef0860e
    cf68: 80 45 eb ca  	.word	0xcaeb4580
    cf6c: d6 b8 28 bf  	.word	0xbf28b8d6
    cf70: 40 1e 97 40  	.word	0x40971e40
    cf74: 1c cf 22 3f  	.word	0x3f22cf1c
    cf78: 00 80 9e 71  	.word	0x719e8000
    cf7c: 3d 11 ca be  	.word	0xbeca113d
    cf80: 00 00 cc 39  	.word	0x39cc0000
    cf84: 23 d5 c3 3e  	.word	0x3ec3d523
    cf88: 94 54 5e e4  	.word	0xe45e5494
    cf8c: 65 da e0 3f  	.word	0x3fe0da65
    cf90: 00 d0 32 e7  	.word	0xe732d000
    cf94: 2f 62 23 bf  	.word	0xbf23622f
    cf98: b0 9a 2c 49  	.word	0x492c9ab0
    cf9c: 0a 30 e5 3f  	.word	0x3fe5300a
    cfa0: 6a 59 88 8d  	.word	0x8d88596a
    cfa4: ec 13 1b 3f  	.word	0x3f1b13ec
    cfa8: 00 80 a9 db  	.word	0xdba98000
    cfac: 1c 6f d1 be  	.word	0xbed16f1c
    cfb0: 70 a7 27 c0  	.word	0xc027a770
    cfb4: 15 96 81 bf  	.word	0xbf819615
    cfb8: 00 10 7b a9  	.word	0xa97b1000
    cfbc: 82 72 f0 3e  	.word	0x3ef07282
    cfc0: 80 84 35 a4  	.word	0xa4358480
    cfc4: 98 9b 28 bf  	.word	0xbf289b98
    cfc8: 00 00 11 e3  	.word	0xe3110000
    cfcc: 67 f2 c9 be  	.word	0xbec9f267
    cfd0: 7f 02 92 0b  	.word	0x0b92027f
    cfd4: f9 a6 d7 bf  	.word	0xbfd7a6f9
    cfd8: 00 70 27 22  	.word	0x22277000
    cfdc: 1a 34 1b 3f  	.word	0x3f1b341a
    cfe0: 00 37 75 d8  	.word	0xd8753700
    cfe4: 73 ec 50 3f  	.word	0x3f50ec73
    cfe8: f9 c7 6f 0d  	.word	0x0d6fc7f9
    cfec: d1 52 e5 3f  	.word	0x3fe552d1
    cff0: 00 c0 70 c7  	.word	0xc770c000
    cff4: ac e2 f3 be  	.word	0xbef3e2ac
    cff8: b8 ba 9c 87  	.word	0x879cbab8
    cffc: 20 0f a4 bf  	.word	0xbfa40f20
    d000: 00 58 ad cf  	.word	0xcfad5800
    d004: 8d c2 12 3f  	.word	0x3f12c28d
    d008: 00 67 c9 53  	.word	0x53c96700
    d00c: 63 11 4c bf  	.word	0xbf4c1163
    d010: 00 00 01 7a  	.word	0x7a010000
    d014: 66 98 ed be  	.word	0xbeed9866
    d018: 49 ec 9f 20  	.word	0x209fec49
    d01c: fa 74 8e 3f  	.word	0x3f8e74fa
    d020: 00 b8 a6 9d  	.word	0x9da6b800
    d024: d4 83 d1 be  	.word	0xbed183d4
    d028: 00 0a 5f 13  	.word	0x135f0a00
    d02c: e4 ca 05 bf  	.word	0xbf05cae4
    d030: 78 b8 70 c7  	.word	0xc770b878
    d034: ac e2 f3 be  	.word	0xbef3e2ac
    d038: 5b ad 92 3c  	.word	0x3c92ad5b
    d03c: 15 55 e5 3f  	.word	0x3fe55515
    d040: 00 25 a5 be  	.word	0xbea52500
    d044: 02 2a b0 bf  	.word	0xbfb02a02
    d048: 00 f8 5d c6  	.word	0xc65df800
    d04c: 07 3c 1e 3f  	.word	0x3f1e3c07
    d050: 40 ea 5d 38  	.word	0x385dea40
    d054: 29 9e 56 bf  	.word	0xbf569e29
    d058: 00 c0 dc 8e  	.word	0x8edcc000
    d05c: 3f d9 f7 be  	.word	0xbef7d93f
    d060: 47 e4 bd ce  	.word	0xcebde447
    d064: 0e 2b 69 3f  	.word	0x3f692b0e
    d068: 00 40 8f da  	.word	0xda8f4000
    d06c: 74 f2 ac be  	.word	0xbeacf274
    d070: 00 a7 84 8f  	.word	0x8f84a700
    d074: 22 02 e2 be  	.word	0xbee20222
    d078: 1f bc 4a 33  	.word	0x334abc1f
    d07c: b2 6e d0 be  	.word	0xbed06eb2
    d080: 00 fc fb 7d  	.word	0x7dfbfc00
    d084: b7 7b da be  	.word	0xbeda7bb7
    d088: 8f e3 b2 48  	.word	0x48b2e38f
    d08c: 3c e9 e2 3f  	.word	0x3fe2e93c
    d090: 00 e4 71 6e  	.word	0x6e71e400
    d094: 56 32 23 3f  	.word	0x3f233256
    d098: 00 05 e0 bc  	.word	0xbce00500
    d09c: 17 92 30 bf  	.word	0xbf309217
    d0a0: 00 80 de 1d  	.word	0x1dde8000
    d0a4: 5b d0 f4 be  	.word	0xbef4d05b
    d0a8: f4 24 ee df  	.word	0xdfee24f4
    d0ac: 96 e5 64 bf  	.word	0xbf64e596
    d0b0: 00 60 1c e5  	.word	0xe51c6000
    d0b4: ce 08 a8 3e  	.word	0x3ea808ce
    d0b8: 00 e0 2c 34  	.word	0x342ce000
    d0bc: 79 e7 dd 3e  	.word	0x3edde779
    d0c0: e7 ed e4 73  	.word	0x73e4ede7
    d0c4: 88 49 cb 3e  	.word	0x3ecb4988
    d0c8: 00 54 55 ed  	.word	0xed555400
    d0cc: 1c fd d5 3e  	.word	0x3ed5fd1c
    d0d0: 20 1d 0d ea  	.word	0xea0d1d20
    d0d4: de 0a b1 3f  	.word	0x3fb10ade
    d0d8: 0e cf 4c 9e  	.word	0x9e4ccf0e
    d0dc: ea 50 e5 3f  	.word	0x3fe550ea
    d0e0: 90 b1 c1 c8  	.word	0xc8c1b190
    d0e4: ce b5 51 3f  	.word	0x3f51b5ce
    d0e8: 00 c0 f7 85  	.word	0x85f7c000
    d0ec: e2 5d f8 be  	.word	0xbef85de2
    d0f0: cf 1e ec 24  	.word	0x24ec1ecf
    d0f4: 9c 63 8d 3f  	.word	0x3f8d639c
    d0f8: 00 80 67 df  	.word	0xdf678000
    d0fc: 9f e6 d0 be  	.word	0xbed0e69f
    d100: 00 ba a2 95  	.word	0x95a2ba00
    d104: 4a 07 05 bf  	.word	0xbf05074a
    d108: 5f e8 1a 49  	.word	0x491ae85f
    d10c: 31 30 f3 be  	.word	0xbef33031
    d110: 00 bc c0 af  	.word	0xafc0bc00
    d114: ba ec fe be  	.word	0xbefeecba
    d118: 40 2a 3d 87  	.word	0x873d2a40
    d11c: 32 a8 ab bf  	.word	0xbfaba832
    d120: 00 58 47 7f  	.word	0x7f475800
    d124: c7 a5 40 3f  	.word	0x3f40a5c7
    d128: c6 60 4c 9c  	.word	0x9c4c60c6
    d12c: 3d 43 e5 3f  	.word	0x3fe5433d
    d130: 00 80 ea 14  	.word	0x14ea8000
    d134: fe 54 f5 3e  	.word	0x3ef554fe
    d138: 30 f8 ed 0a  	.word	0x0aedf830
    d13c: b2 7b 40 3f  	.word	0x3f407bb2
    d140: 00 d0 c0 ef  	.word	0xefc0d000
    d144: 43 f5 82 be  	.word	0xbe82f543
    d148: 00 44 9d fc  	.word	0xfc9d4400
    d14c: 8c 96 b7 be  	.word	0xbeb7968c
    d150: 33 60 a3 fb  	.word	0xfba36033
    d154: 1b 86 a5 be  	.word	0xbea5861b
    d158: 00 9e 73 39  	.word	0x39739e00
    d15c: 2e 58 b1 be  	.word	0xbeb1582e
    d160: a7 94 9b fb  	.word	0xfb9b94a7
    d164: 6d 7a 82 bf  	.word	0xbf827a6d
    d168: 00 2c 02 86  	.word	0x86022c00
    d16c: e2 5d f8 be  	.word	0xbef85de2
    d170: 40 eb 05 06  	.word	0x0605eb40
    d174: 91 b1 06 3f  	.word	0x3f06b191
    d178: 03 bd 02 e5  	.word	0xe502bd03
    d17c: fa 54 e5 3f  	.word	0x3fe554fa
    d180: 76 43 71 a5  	.word	0xa5714376
    d184: f8 73 e2 bf  	.word	0xbfe273f8
    d188: 90 85 b9 69  	.word	0x69b98590
    d18c: a2 a1 ce bf  	.word	0xbfcea1a2
    d190: 00 70 07 91  	.word	0x91077000
    d194: 41 39 25 3f  	.word	0x3f253941
    d198: 00 80 10 04  	.word	0x04108000
    d19c: 83 9d 11 3f  	.word	0x3f119d83
    d1a0: 00 b8 93 75  	.word	0x7593b800
    d1a4: 30 68 5a 3f  	.word	0x3f5a6830
    d1a8: 00 5c 9c 19  	.word	0x199c5c00
    d1ac: d8 ea 45 3f  	.word	0x3f45ead8
    d1b0: 28 b4 ed 8f  	.word	0x8fedb428
    d1b4: 1e 56 3c bf  	.word	0xbf3c561e
    d1b8: 00 80 d1 f5  	.word	0xf5d18000
    d1bc: d4 ff 33 3f  	.word	0x3f33ffd4
    d1c0: ed9f 2beb    	vldr	d2, [pc, #940]          @ 0xd570 <orange_dsp::generated_condensed::update+0xaf0>
    d1c4: ed8d 3b1e    	vstr	d3, [sp, #120]
    d1c8: ee20 3b02    	vmul.f64	d3, d0, d2
    d1cc: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xd578 <orange_dsp::generated_condensed::update+0xaf8>
    d1d0: ee01 3b02    	vmla.f64	d3, d1, d2
    d1d4: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xd580 <orange_dsp::generated_condensed::update+0xb00>
    d1d8: ed8d 3b18    	vstr	d3, [sp, #96]
    d1dc: ee20 3b02    	vmul.f64	d3, d0, d2
    d1e0: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xd588 <orange_dsp::generated_condensed::update+0xb08>
    d1e4: ee01 3b02    	vmla.f64	d3, d1, d2
    d1e8: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xd590 <orange_dsp::generated_condensed::update+0xb10>
    d1ec: ed8d 3b16    	vstr	d3, [sp, #88]
    d1f0: ee20 3b02    	vmul.f64	d3, d0, d2
    d1f4: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xd598 <orange_dsp::generated_condensed::update+0xb18>
    d1f8: ee01 3b02    	vmla.f64	d3, d1, d2
    d1fc: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xd5a0 <orange_dsp::generated_condensed::update+0xb20>
    d200: ed8d 3b14    	vstr	d3, [sp, #80]
    d204: ee20 3b02    	vmul.f64	d3, d0, d2
    d208: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xd5a8 <orange_dsp::generated_condensed::update+0xb28>
    d20c: ee01 3b02    	vmla.f64	d3, d1, d2
    d210: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xd5b0 <orange_dsp::generated_condensed::update+0xb30>
    d214: ee20 2b02    	vmul.f64	d2, d0, d2
    d218: ed9f 0be7    	vldr	d0, [pc, #924]          @ 0xd5b8 <orange_dsp::generated_condensed::update+0xb38>
    d21c: ee01 2b00    	vmla.f64	d2, d1, d0
    d220: ed91 0a10    	vldr	s0, [r1, #64]
    d224: ed8d 2b10    	vstr	d2, [sp, #64]
    d228: ed91 2a0f    	vldr	s4, [r1, #60]
    d22c: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    d230: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    d234: ed8d 3b12    	vstr	d3, [sp, #72]
    d238: ed9f 0be1    	vldr	d0, [pc, #900]          @ 0xd5c0 <orange_dsp::generated_condensed::update+0xb40>
    d23c: ed9f 3be2    	vldr	d3, [pc, #904]          @ 0xd5c8 <orange_dsp::generated_condensed::update+0xb48>
    d240: ee21 0b00    	vmul.f64	d0, d1, d0
    d244: ee02 0b03    	vmla.f64	d0, d2, d3
    d248: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd5d8 <orange_dsp::generated_condensed::update+0xb58>
    d24c: ee21 1b03    	vmul.f64	d1, d1, d3
    d250: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd5e0 <orange_dsp::generated_condensed::update+0xb60>
    d254: ee02 1b03    	vmla.f64	d1, d2, d3
    d258: ed91 2a12    	vldr	s4, [r1, #72]
    d25c: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    d260: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd5f0 <orange_dsp::generated_condensed::update+0xb70>
    d264: ed8d 5b28    	vstr	d5, [sp, #160]
    d268: ee22 5b03    	vmul.f64	d5, d2, d3
    d26c: ed91 3a11    	vldr	s6, [r1, #68]
    d270: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    d274: ed8d 4b1a    	vstr	d4, [sp, #104]
    d278: ed9f 4bdf    	vldr	d4, [pc, #892]          @ 0xd5f8 <orange_dsp::generated_condensed::update+0xb78>
    d27c: ee03 5b04    	vmla.f64	d5, d3, d4
    d280: ed9f 4be3    	vldr	d4, [pc, #908]          @ 0xd610 <orange_dsp::generated_condensed::update+0xb90>
    d284: ee23 7b04    	vmul.f64	d7, d3, d4
    d288: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd618 <orange_dsp::generated_condensed::update+0xb98>
    d28c: ee02 7b03    	vmla.f64	d7, d2, d3
    d290: ee38 3b00    	vadd.f64	d3, d8, d0
    d294: ed92 0a04    	vldr	s0, [r2, #16]
    d298: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d29c: ed9f 2bcc    	vldr	d2, [pc, #816]          @ 0xd5d0 <orange_dsp::generated_condensed::update+0xb50>
    d2a0: ee00 3b02    	vmla.f64	d3, d0, d2
    d2a4: ee38 2b01    	vadd.f64	d2, d8, d1
    d2a8: ed9f 1bcf    	vldr	d1, [pc, #828]          @ 0xd5e8 <orange_dsp::generated_condensed::update+0xb68>
    d2ac: ee00 2b01    	vmla.f64	d2, d0, d1
    d2b0: ed92 1a05    	vldr	s2, [r2, #20]
    d2b4: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    d2b8: ed8d 2b0c    	vstr	d2, [sp, #48]
    d2bc: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xd600 <orange_dsp::generated_condensed::update+0xb80>
    d2c0: ed8d 3b0e    	vstr	d3, [sp, #56]
    d2c4: ee21 3b02    	vmul.f64	d3, d1, d2
    d2c8: ed9f 2bcf    	vldr	d2, [pc, #828]          @ 0xd608 <orange_dsp::generated_condensed::update+0xb88>
    d2cc: ee00 3b02    	vmla.f64	d3, d0, d2
    d2d0: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xd620 <orange_dsp::generated_condensed::update+0xba0>
    d2d4: ed8d 3b0a    	vstr	d3, [sp, #40]
    d2d8: ee21 3b02    	vmul.f64	d3, d1, d2
    d2dc: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xd628 <orange_dsp::generated_condensed::update+0xba8>
    d2e0: ee00 3b02    	vmla.f64	d3, d0, d2
    d2e4: ed91 0a14    	vldr	s0, [r1, #80]
    d2e8: ed8d 3b06    	vstr	d3, [sp, #24]
    d2ec: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    d2f0: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0xd630 <orange_dsp::generated_condensed::update+0xbb0>
    d2f4: ee23 2b00    	vmul.f64	d2, d3, d0
    d2f8: ed91 0a13    	vldr	s0, [r1, #76]
    d2fc: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d300: ed9f 4bcd    	vldr	d4, [pc, #820]          @ 0xd638 <orange_dsp::generated_condensed::update+0xbb8>
    d304: ee00 2b04    	vmla.f64	d2, d0, d4
    d308: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xd648 <orange_dsp::generated_condensed::update+0xbc8>
    d30c: ee20 0b04    	vmul.f64	d0, d0, d4
    d310: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xd650 <orange_dsp::generated_condensed::update+0xbd0>
    d314: ee03 0b04    	vmla.f64	d0, d3, d4
    d318: ed92 3a06    	vldr	s6, [r2, #24]
    d31c: ed8d 5b08    	vstr	d5, [sp, #32]
    d320: eeb0 5b48    	vmov.f64	d5, d8
    d324: eeb7 8ac3    	vcvt.f64.f32	d8, s6
    d328: ed9f 4bc5    	vldr	d4, [pc, #788]          @ 0xd640 <orange_dsp::generated_condensed::update+0xbc0>
    d32c: ed8d 6b2a    	vstr	d6, [sp, #168]
    d330: ee21 6b04    	vmul.f64	d6, d1, d4
    d334: ee08 6b44    	vmls.f64	d6, d8, d4
    d338: ed9f 4bc7    	vldr	d4, [pc, #796]          @ 0xd658 <orange_dsp::generated_condensed::update+0xbd8>
    d33c: ee21 3b04    	vmul.f64	d3, d1, d4
    d340: ee08 3b44    	vmls.f64	d3, d8, d4
    d344: ed91 4a15    	vldr	s8, [r1, #84]
    d348: eeb7 8ac4    	vcvt.f64.f32	d8, s8
    d34c: ed9f 1bc4    	vldr	d1, [pc, #784]          @ 0xd660 <orange_dsp::generated_condensed::update+0xbe0>
    d350: eeb0 4b45    	vmov.f64	d4, d5
    d354: ee08 4b01    	vmla.f64	d4, d8, d1
    d358: ed9f 1b81    	vldr	d1, [pc, #516]          @ 0xd560 <orange_dsp::generated_condensed::update+0xae0>
    d35c: ee35 8b01    	vadd.f64	d8, d5, d1
    d360: eeb0 1b45    	vmov.f64	d1, d5
    d364: ee35 9b09    	vadd.f64	d9, d5, d9
    d368: ed9d 5b1c    	vldr	d5, [sp, #112]
    d36c: ee31 5b05    	vadd.f64	d5, d1, d5
    d370: ed8d 5b1c    	vstr	d5, [sp, #112]
    d374: ed9d 5b1a    	vldr	d5, [sp, #104]
    d378: ee31 0b00    	vadd.f64	d0, d1, d0
    d37c: ee31 5b05    	vadd.f64	d5, d1, d5
    d380: ed8d 0b00    	vstr	d0, [sp]
    d384: ed91 0a16    	vldr	s0, [r1, #88]
    d388: ed8d 5b1a    	vstr	d5, [sp, #104]
    d38c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d390: ed9d 5b08    	vldr	d5, [sp, #32]
    d394: ee31 2b02    	vadd.f64	d2, d1, d2
    d398: ed8d 2b02    	vstr	d2, [sp, #8]
    d39c: ed9f 2bb4    	vldr	d2, [pc, #720]          @ 0xd670 <orange_dsp::generated_condensed::update+0xbf0>
    d3a0: ee31 5b05    	vadd.f64	d5, d1, d5
    d3a4: ed8d 5b08    	vstr	d5, [sp, #32]
    d3a8: ee31 5b07    	vadd.f64	d5, d1, d7
    d3ac: eeb0 7b41    	vmov.f64	d7, d1
    d3b0: ee00 7b02    	vmla.f64	d7, d0, d2
    d3b4: ed92 0a07    	vldr	s0, [r2, #28]
    d3b8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d3bc: ed9f 2baa    	vldr	d2, [pc, #680]          @ 0xd668 <orange_dsp::generated_condensed::update+0xbe8>
    d3c0: ee00 4b02    	vmla.f64	d4, d0, d2
    d3c4: ed9f 2bac    	vldr	d2, [pc, #688]          @ 0xd678 <orange_dsp::generated_condensed::update+0xbf8>
    d3c8: ee00 7b02    	vmla.f64	d7, d0, d2
    d3cc: ed92 0a00    	vldr	s0, [r2]
    d3d0: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d3d4: ed9f 2b64    	vldr	d2, [pc, #400]          @ 0xd568 <orange_dsp::generated_condensed::update+0xae8>
    d3d8: ee31 ab0a    	vadd.f64	d10, d1, d10
    d3dc: ee31 bb0b    	vadd.f64	d11, d1, d11
    d3e0: ee31 cb0c    	vadd.f64	d12, d1, d12
    d3e4: ee31 db0d    	vadd.f64	d13, d1, d13
    d3e8: ee31 eb0e    	vadd.f64	d14, d1, d14
    d3ec: ee31 fb0f    	vadd.f64	d15, d1, d15
    d3f0: ed9d 1b2c    	vldr	d1, [sp, #176]
    d3f4: ee00 1b02    	vmla.f64	d1, d0, d2
    d3f8: ee38 0b00    	vadd.f64	d0, d8, d0
    d3fc: ed8d 5b04    	vstr	d5, [sp, #16]
    d400: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d404: ed80 0a00    	vstr	s0, [r0]
    d408: ed9d 2b24    	vldr	d2, [sp, #144]
    d40c: ed9d 5b22    	vldr	d5, [sp, #136]
    d410: ed9d 8b1c    	vldr	d8, [sp, #112]
    d414: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    d418: ed80 0a01    	vstr	s0, [r0, #4]
    d41c: ed9d 0b2e    	vldr	d0, [sp, #184]
    d420: ee39 2b02    	vadd.f64	d2, d9, d2
    d424: ee38 8b05    	vadd.f64	d8, d8, d5
    d428: ed9d 5b20    	vldr	d5, [sp, #128]
    d42c: ed9d 9b1a    	vldr	d9, [sp, #104]
    d430: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d434: ed80 0a02    	vstr	s0, [r0, #8]
    d438: ee39 9b05    	vadd.f64	d9, d9, d5
    d43c: ed9d 5b1e    	vldr	d5, [sp, #120]
    d440: ed9d 0b2a    	vldr	d0, [sp, #168]
    d444: ee3a ab05    	vadd.f64	d10, d10, d5
    d448: ed9d 5b18    	vldr	d5, [sp, #96]
    d44c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d450: ed80 0a03    	vstr	s0, [r0, #12]
    d454: ed9d 0b28    	vldr	d0, [sp, #160]
    d458: ee3b bb05    	vadd.f64	d11, d11, d5
    d45c: ed9d 5b16    	vldr	d5, [sp, #88]
    d460: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d464: ed80 0a04    	vstr	s0, [r0, #16]
    d468: ee3c cb05    	vadd.f64	d12, d12, d5
    d46c: ed9d 5b14    	vldr	d5, [sp, #80]
    d470: ed9d 0b26    	vldr	d0, [sp, #152]
    d474: ee3d db05    	vadd.f64	d13, d13, d5
    d478: ed9d 5b12    	vldr	d5, [sp, #72]
    d47c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d480: ed80 0a05    	vstr	s0, [r0, #20]
    d484: eeb7 0bc2    	vcvt.f32.f64	s0, d2
    d488: ed80 0a06    	vstr	s0, [r0, #24]
    d48c: ee3e eb05    	vadd.f64	d14, d14, d5
    d490: ed9d 5b10    	vldr	d5, [sp, #64]
    d494: eeb7 0bc8    	vcvt.f32.f64	s0, d8
    d498: ed80 0a07    	vstr	s0, [r0, #28]
    d49c: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    d4a0: ed80 0a08    	vstr	s0, [r0, #32]
    d4a4: ee3f 5b05    	vadd.f64	d5, d15, d5
    d4a8: eeb7 0bca    	vcvt.f32.f64	s0, d10
    d4ac: ed80 0a09    	vstr	s0, [r0, #36]
    d4b0: ed8d 5b24    	vstr	d5, [sp, #144]
    d4b4: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    d4b8: ed80 0a0a    	vstr	s0, [r0, #40]
    d4bc: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    d4c0: ed80 0a0b    	vstr	s0, [r0, #44]
    d4c4: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    d4c8: ed80 0a0c    	vstr	s0, [r0, #48]
    d4cc: eeb7 0bce    	vcvt.f32.f64	s0, d14
    d4d0: ed80 0a0d    	vstr	s0, [r0, #52]
    d4d4: ed9d 0b24    	vldr	d0, [sp, #144]
    d4d8: ed9d 5b0a    	vldr	d5, [sp, #40]
    d4dc: ed9d fb08    	vldr	d15, [sp, #32]
    d4e0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d4e4: ed80 0a0e    	vstr	s0, [r0, #56]
    d4e8: ed9d 0b0e    	vldr	d0, [sp, #56]
    d4ec: ee3f 5b05    	vadd.f64	d5, d15, d5
    d4f0: ed8d 5b2c    	vstr	d5, [sp, #176]
    d4f4: ed9d 5b06    	vldr	d5, [sp, #24]
    d4f8: ed9d fb04    	vldr	d15, [sp, #16]
    d4fc: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d500: ed80 0a0f    	vstr	s0, [r0, #60]
    d504: ed9d 0b0c    	vldr	d0, [sp, #48]
    d508: ee3f 5b05    	vadd.f64	d5, d15, d5
    d50c: ed9d fb02    	vldr	d15, [sp, #8]
    d510: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d514: ed80 0a10    	vstr	s0, [r0, #64]
    d518: ee3f 6b06    	vadd.f64	d6, d15, d6
    d51c: ed9d fb00    	vldr	d15, [sp]
    d520: ed9d 0b2c    	vldr	d0, [sp, #176]
    d524: ee3f 3b03    	vadd.f64	d3, d15, d3
    d528: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d52c: ed80 0a11    	vstr	s0, [r0, #68]
    d530: eeb7 0bc5    	vcvt.f32.f64	s0, d5
    d534: ed80 0a12    	vstr	s0, [r0, #72]
    d538: eeb7 0bc6    	vcvt.f32.f64	s0, d6
    d53c: ed80 0a13    	vstr	s0, [r0, #76]
    d540: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    d544: ed80 0a14    	vstr	s0, [r0, #80]
    d548: eeb7 0bc4    	vcvt.f32.f64	s0, d4
    d54c: ed80 0a15    	vstr	s0, [r0, #84]
    d550: eeb7 0bc7    	vcvt.f32.f64	s0, d7
    d554: ed80 0a16    	vstr	s0, [r0, #88]
    d558: b030         	add	sp, #0xc0
    d55a: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    d55e: bd80         	pop	{r7, pc}
		...
    d568: 00 e0 35 df  	.word	0xdf35e000
    d56c: 12 5d 23 3f  	.word	0x3f235d12
    d570: 00 40 b2 d2  	.word	0xd2b24000
    d574: 8e 3e f2 3e  	.word	0x3ef23e8e
    d578: 00 40 3c 73  	.word	0x733c4000
    d57c: b9 32 02 3f  	.word	0x3f0232b9
    d580: 08 f7 83 70  	.word	0x7083f708
    d584: 57 67 a2 3f  	.word	0x3fa26757
    d588: 70 97 28 9d  	.word	0x9d289770
    d58c: 67 5b b2 3f  	.word	0x3fb25b67
    d590: 00 18 07 f2  	.word	0xf2071800
    d594: 36 36 11 bf  	.word	0xbf113636
    d598: 00 2c 41 07  	.word	0x07412c00
    d59c: 0d 2b 21 bf  	.word	0xbf212b0d
    d5a0: 00 11 6e ab  	.word	0xab6e1100
    d5a4: 66 c0 49 3f  	.word	0x3f49c066
    d5a8: 00 57 e3 c4  	.word	0xc4e35700
    d5ac: b2 af 59 3f  	.word	0x3f59afb2
    d5b0: 00 00 53 f5  	.word	0xf5530000
    d5b4: 24 27 eb 3e  	.word	0x3eeb2724
    d5b8: 00 00 83 5f  	.word	0x5f830000
    d5bc: 88 15 fb 3e  	.word	0x3efb1588
    d5c0: 30 b5 9f 60  	.word	0x609fb530
    d5c4: ab e5 d3 3f  	.word	0x3fd3e5ab
    d5c8: 3b cc c8 6a  	.word	0x6ac8cc3b
    d5cc: c2 ed a6 3f  	.word	0x3fa6edc2
    d5d0: c8 8f ef 10  	.word	0x10ef8fc8
    d5d4: 81 d8 dd bf  	.word	0xbfddd881
    d5d8: 28 3f 82 e4  	.word	0xe4823f28
    d5dc: 69 54 e5 3f  	.word	0x3fe55469
    d5e0: bf 80 ca 02  	.word	0x02ca80bf
    d5e4: ca a2 ed 3e  	.word	0x3eeda2ca
    d5e8: e4 27 14 ca  	.word	0xca1427e4
    d5ec: 93 12 26 3f  	.word	0x3f261293
    d5f0: f7 82 13 a7  	.word	0xa71382f7
    d5f4: 09 7c d7 bf  	.word	0xbfd77c09
    d5f8: 7b 84 3a 2a  	.word	0x2a3a847b
    d5fc: 5a 5f c0 3f  	.word	0x3fc05f5a
    d600: cc 5e bc b6  	.word	0xb6bc5ecc
    d604: a2 bc e5 bf  	.word	0xbfe5bca2
    d608: 15 be b6 e5  	.word	0xe5b6be15
    d60c: 6d 7e c0 3f  	.word	0x3fc07e6d
    d610: 00 90 99 b0  	.word	0xb0999000
    d614: 0f 3d 03 bf  	.word	0xbf033d0f
    d618: 36 0c 56 03  	.word	0x03560c36
    d61c: a1 54 e5 3f  	.word	0x3fe554a1
    d620: 00 60 f1 d0  	.word	0xd0f16000
    d624: 95 1e 18 bf  	.word	0xbf181e95
    d628: 00 70 fc 18  	.word	0x18fc7000
    d62c: 94 61 03 bf  	.word	0xbf036194
    d630: d2 4f d6 fa  	.word	0xfad64fd2
    d634: 97 86 f2 be  	.word	0xbef28697
    d638: b5 2c 68 6e  	.word	0x6e682cb5
    d63c: 31 53 e5 3f  	.word	0x3fe55331
    d640: 00 80 e7 1d  	.word	0x1de78000
    d644: d3 ae 39 3f  	.word	0x3f39aed3
    d648: 00 d8 8b f9  	.word	0xf98bd800
    d64c: 3d 28 27 bf  	.word	0xbf27283d
    d650: ca 9f ba 05  	.word	0x05ba9fca
    d654: 70 52 e5 3f  	.word	0x3fe55270
    d658: 00 e4 28 7b  	.word	0x7b28e400
    d65c: 2e 5e 31 3f  	.word	0x3f315e2e
    d660: 5d ef 75 b1  	.word	0xb175ef5d
    d664: 41 55 e5 3f  	.word	0x3fe55541
    d668: 77 21 f7 18  	.word	0x18f72177
    d66c: cf 75 ed 3e  	.word	0x3eed75cf
    d670: 21 8e 90 51  	.word	0x51908e21
    d674: b7 61 83 3f  	.word	0x3f8361b7
    d678: ab 9c 16 b4  	.word	0xb4169cab
    d67c: b5 8b ef 3f  	.word	0x3fef8bb5

0000d680 <__aeabi_memcpy4>:
    d680: 2a04         	cmp	r2, #0x4
    d682: d309         	blo	0xd698 <__aeabi_memcpy4+0x18> @ imm = #0x12
    d684: b5d0         	push	{r4, r6, r7, lr}
    d686: af02         	add	r7, sp, #0x8
    d688: f1a2 0e04    	sub.w	lr, r2, #0x4
    d68c: ea6f 030e    	mvn.w	r3, lr
    d690: f013 0f0c    	tst.w	r3, #0xc
    d694: d106         	bne	0xd6a4 <__aeabi_memcpy4+0x24> @ imm = #0xc
    d696: e023         	b	0xd6e0 <__aeabi_memcpy4+0x60> @ imm = #0x46
    d698: 460b         	mov	r3, r1
    d69a: 4684         	mov	r12, r0
    d69c: 4660         	mov	r0, r12
    d69e: 4619         	mov	r1, r3
    d6a0: f000 b83c    	b.w	0xd71c <compiler_builtins::mem::memcpy> @ imm = #0x78
    d6a4: 460b         	mov	r3, r1
    d6a6: 4684         	mov	r12, r0
    d6a8: f853 4b04    	ldr	r4, [r3], #4
    d6ac: f01e 0f0c    	tst.w	lr, #0xc
    d6b0: f84c 4b04    	str	r4, [r12], #4
    d6b4: d009         	beq	0xd6ca <__aeabi_memcpy4+0x4a> @ imm = #0x12
    d6b6: 684b         	ldr	r3, [r1, #0x4]
    d6b8: 6043         	str	r3, [r0, #0x4]
    d6ba: f00e 030c    	and	r3, lr, #0xc
    d6be: 2b04         	cmp	r3, #0x4
    d6c0: d107         	bne	0xd6d2 <__aeabi_memcpy4+0x52> @ imm = #0xe
    d6c2: 3a08         	subs	r2, #0x8
    d6c4: 3108         	adds	r1, #0x8
    d6c6: 3008         	adds	r0, #0x8
    d6c8: e008         	b	0xd6dc <__aeabi_memcpy4+0x5c> @ imm = #0x10
    d6ca: 4672         	mov	r2, lr
    d6cc: 4660         	mov	r0, r12
    d6ce: 4619         	mov	r1, r3
    d6d0: e006         	b	0xd6e0 <__aeabi_memcpy4+0x60> @ imm = #0xc
    d6d2: 688b         	ldr	r3, [r1, #0x8]
    d6d4: 3a0c         	subs	r2, #0xc
    d6d6: 6083         	str	r3, [r0, #0x8]
    d6d8: 310c         	adds	r1, #0xc
    d6da: 300c         	adds	r0, #0xc
    d6dc: 4684         	mov	r12, r0
    d6de: 460b         	mov	r3, r1
    d6e0: f1be 0f0c    	cmp.w	lr, #0xc
    d6e4: d314         	blo	0xd710 <__aeabi_memcpy4+0x90> @ imm = #0x28
    d6e6: 4684         	mov	r12, r0
    d6e8: 460b         	mov	r3, r1
    d6ea: 6818         	ldr	r0, [r3]
    d6ec: 3a10         	subs	r2, #0x10
    d6ee: f8cc 0000    	str.w	r0, [r12]
    d6f2: 2a03         	cmp	r2, #0x3
    d6f4: 6858         	ldr	r0, [r3, #0x4]
    d6f6: f8cc 0004    	str.w	r0, [r12, #0x4]
    d6fa: 6898         	ldr	r0, [r3, #0x8]
    d6fc: f8cc 0008    	str.w	r0, [r12, #0x8]
    d700: 68d8         	ldr	r0, [r3, #0xc]
    d702: f103 0310    	add.w	r3, r3, #0x10
    d706: f8cc 000c    	str.w	r0, [r12, #0xc]
    d70a: f10c 0c10    	add.w	r12, r12, #0x10
    d70e: d8ec         	bhi	0xd6ea <__aeabi_memcpy4+0x6a> @ imm = #-0x28
    d710: e8bd 40d0    	pop.w	{r4, r6, r7, lr}
    d714: 4660         	mov	r0, r12
    d716: 4619         	mov	r1, r3
    d718: f000 b800    	b.w	0xd71c <compiler_builtins::mem::memcpy> @ imm = #0x0

0000d71c <compiler_builtins::mem::memcpy>:
    d71c: b5f0         	push	{r4, r5, r6, r7, lr}
    d71e: af03         	add	r7, sp, #0xc
    d720: e92d 0f00    	push.w	{r8, r9, r10, r11}
    d724: b089         	sub	sp, #0x24
    d726: 4680         	mov	r8, r0
    d728: 2a10         	cmp	r2, #0x10
    d72a: d321         	blo	0xd770 <compiler_builtins::mem::memcpy+0x54> @ imm = #0x42
    d72c: f1c8 0000    	rsb.w	r0, r8, #0x0
    d730: f000 0a03    	and	r10, r0, #0x3
    d734: eb08 030a    	add.w	r3, r8, r10
    d738: 4598         	cmp	r8, r3
    d73a: d237         	bhs	0xd7ac <compiler_builtins::mem::memcpy+0x90> @ imm = #0x6e
    d73c: f1aa 0601    	sub.w	r6, r10, #0x1
    d740: 4644         	mov	r4, r8
    d742: 460d         	mov	r5, r1
    d744: f1ba 0f00    	cmp.w	r10, #0x0
    d748: d01f         	beq	0xd78a <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x3e
    d74a: 460d         	mov	r5, r1
    d74c: 4644         	mov	r4, r8
    d74e: f815 0b01    	ldrb	r0, [r5], #1
    d752: f1ba 0f01    	cmp.w	r10, #0x1
    d756: f804 0b01    	strb	r0, [r4], #1
    d75a: d016         	beq	0xd78a <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x2c
    d75c: 7848         	ldrb	r0, [r1, #0x1]
    d75e: f1ba 0f02    	cmp.w	r10, #0x2
    d762: f888 0001    	strb.w	r0, [r8, #0x1]
    d766: d10a         	bne	0xd77e <compiler_builtins::mem::memcpy+0x62> @ imm = #0x14
    d768: 1c8d         	adds	r5, r1, #0x2
    d76a: f108 0402    	add.w	r4, r8, #0x2
    d76e: e00c         	b	0xd78a <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x18
    d770: 46c4         	mov	r12, r8
    d772: eb0c 0302    	add.w	r3, r12, r2
    d776: 459c         	cmp	r12, r3
    d778: f0c0 80e3    	blo.w	0xd942 <compiler_builtins::mem::memcpy+0x226> @ imm = #0x1c6
    d77c: e10b         	b	0xd996 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x216
    d77e: 1ccd         	adds	r5, r1, #0x3
    d780: f108 0403    	add.w	r4, r8, #0x3
    d784: 7888         	ldrb	r0, [r1, #0x2]
    d786: f888 0002    	strb.w	r0, [r8, #0x2]
    d78a: 2e03         	cmp	r6, #0x3
    d78c: d30e         	blo	0xd7ac <compiler_builtins::mem::memcpy+0x90> @ imm = #0x1c
    d78e: 1f2e         	subs	r6, r5, #0x4
    d790: 1f25         	subs	r5, r4, #0x4
    d792: f816 0f04    	ldrb	r0, [r6, #4]!
    d796: f805 0f04    	strb	r0, [r5, #4]!
    d79a: 7870         	ldrb	r0, [r6, #0x1]
    d79c: 7068         	strb	r0, [r5, #0x1]
    d79e: 78b0         	ldrb	r0, [r6, #0x2]
    d7a0: 70a8         	strb	r0, [r5, #0x2]
    d7a2: 78f0         	ldrb	r0, [r6, #0x3]
    d7a4: 70e8         	strb	r0, [r5, #0x3]
    d7a6: 1d28         	adds	r0, r5, #0x4
    d7a8: 4298         	cmp	r0, r3
    d7aa: d1f2         	bne	0xd792 <compiler_builtins::mem::memcpy+0x76> @ imm = #-0x1c
    d7ac: eba2 0b0a    	sub.w	r11, r2, r10
    d7b0: eb01 040a    	add.w	r4, r1, r10
    d7b4: f02b 0203    	bic	r2, r11, #0x3
    d7b8: f014 0003    	ands	r0, r4, #0x3
    d7bc: eb03 0c02    	add.w	r12, r3, r2
    d7c0: d063         	beq	0xd88a <compiler_builtins::mem::memcpy+0x16e> @ imm = #0xc6
    d7c2: f04f 0900    	mov.w	r9, #0x0
    d7c6: f1c0 0604    	rsb.w	r6, r0, #0x4
    d7ca: 9204         	str	r2, [sp, #0x10]
    d7cc: aa08         	add	r2, sp, #0x20
    d7ce: f8cd 9020    	str.w	r9, [sp, #0x20]
    d7d2: 4402         	add	r2, r0
    d7d4: 07f5         	lsls	r5, r6, #0x1f
    d7d6: bf1e         	ittt	ne
    d7d8: 7825         	ldrbne	r5, [r4]
    d7da: 7015         	strbne	r5, [r2]
    d7dc: f04f 0901    	movne.w	r9, #0x1
    d7e0: 07b6         	lsls	r6, r6, #0x1e
    d7e2: bf44         	itt	mi
    d7e4: f834 6009    	ldrhmi.w	r6, [r4, r9]
    d7e8: f822 6009    	strhmi.w	r6, [r2, r9]
    d7ec: 1a25         	subs	r5, r4, r0
    d7ee: 9405         	str	r4, [sp, #0x14]
    d7f0: 1d1c         	adds	r4, r3, #0x4
    d7f2: 9a08         	ldr	r2, [sp, #0x20]
    d7f4: ea4f 0ec0    	lsl.w	lr, r0, #0x3
    d7f8: 4564         	cmp	r4, r12
    d7fa: f1ce 0400    	rsb.w	r4, lr, #0x0
    d7fe: e9cd 0402    	strd	r0, r4, [sp, #8]
    d802: d25b         	bhs	0xd8bc <compiler_builtins::mem::memcpy+0x1a0> @ imm = #0xb6
    d804: 4243         	rsbs	r3, r0, #0
    d806: 4646         	mov	r6, r8
    d808: f8cd b000    	str.w	r11, [sp]
    d80c: eb01 0803    	add.w	r8, r1, r3
    d810: f004 0b18    	and	r11, r4, #0x18
    d814: 9601         	str	r6, [sp, #0x4]
    d816: eb08 050a    	add.w	r5, r8, r10
    d81a: eb06 040a    	add.w	r4, r6, r10
    d81e: fa22 f10e    	lsr.w	r1, r2, lr
    d822: f8d5 9004    	ldr.w	r9, [r5, #0x4]
    d826: fa09 f20b    	lsl.w	r2, r9, r11
    d82a: 4311         	orrs	r1, r2
    d82c: 4622         	mov	r2, r4
    d82e: f842 1b08    	str	r1, [r2], #8
    d832: 4562         	cmp	r2, r12
    d834: d244         	bhs	0xd8c0 <compiler_builtins::mem::memcpy+0x1a4> @ imm = #0x88
    d836: 68a9         	ldr	r1, [r5, #0x8]
    d838: fa29 f30e    	lsr.w	r3, r9, lr
    d83c: fa01 f00b    	lsl.w	r0, r1, r11
    d840: 4318         	orrs	r0, r3
    d842: f104 030c    	add.w	r3, r4, #0xc
    d846: 4563         	cmp	r3, r12
    d848: 6060         	str	r0, [r4, #0x4]
    d84a: d23c         	bhs	0xd8c6 <compiler_builtins::mem::memcpy+0x1aa> @ imm = #0x78
    d84c: f8d5 900c    	ldr.w	r9, [r5, #0xc]
    d850: fa21 f00e    	lsr.w	r0, r1, lr
    d854: fa09 f10b    	lsl.w	r1, r9, r11
    d858: 4308         	orrs	r0, r1
    d85a: 6010         	str	r0, [r2]
    d85c: f104 0010    	add.w	r0, r4, #0x10
    d860: 4560         	cmp	r0, r12
    d862: d235         	bhs	0xd8d0 <compiler_builtins::mem::memcpy+0x1b4> @ imm = #0x6a
    d864: 692a         	ldr	r2, [r5, #0x10]
    d866: fa29 f00e    	lsr.w	r0, r9, lr
    d86a: 3610         	adds	r6, #0x10
    d86c: f108 0810    	add.w	r8, r8, #0x10
    d870: fa02 f10b    	lsl.w	r1, r2, r11
    d874: 4308         	orrs	r0, r1
    d876: 6018         	str	r0, [r3]
    d878: eb06 030a    	add.w	r3, r6, r10
    d87c: 1d18         	adds	r0, r3, #0x4
    d87e: 4560         	cmp	r0, r12
    d880: d3c9         	blo	0xd816 <compiler_builtins::mem::memcpy+0xfa> @ imm = #-0x6e
    d882: eb08 050a    	add.w	r5, r8, r10
    d886: 4691         	mov	r9, r2
    d888: e023         	b	0xd8d2 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x46
    d88a: 4563         	cmp	r3, r12
    d88c: d252         	bhs	0xd934 <compiler_builtins::mem::memcpy+0x218> @ imm = #0xa4
    d88e: 4621         	mov	r1, r4
    d890: 6808         	ldr	r0, [r1]
    d892: f843 0b04    	str	r0, [r3], #4
    d896: 4563         	cmp	r3, r12
    d898: d24c         	bhs	0xd934 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x98
    d89a: 6848         	ldr	r0, [r1, #0x4]
    d89c: f843 0b04    	str	r0, [r3], #4
    d8a0: 4563         	cmp	r3, r12
    d8a2: bf3e         	ittt	lo
    d8a4: 6888         	ldrlo	r0, [r1, #0x8]
    d8a6: f843 0b04    	strlo	r0, [r3], #4
    d8aa: 4563         	cmplo	r3, r12
    d8ac: d242         	bhs	0xd934 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x84
    d8ae: 68c8         	ldr	r0, [r1, #0xc]
    d8b0: 3110         	adds	r1, #0x10
    d8b2: f843 0b04    	str	r0, [r3], #4
    d8b6: 4563         	cmp	r3, r12
    d8b8: d3ea         	blo	0xd890 <compiler_builtins::mem::memcpy+0x174> @ imm = #-0x2c
    d8ba: e03b         	b	0xd934 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x76
    d8bc: 4691         	mov	r9, r2
    d8be: e00a         	b	0xd8d6 <compiler_builtins::mem::memcpy+0x1ba> @ imm = #0x14
    d8c0: 3504         	adds	r5, #0x4
    d8c2: 1d23         	adds	r3, r4, #0x4
    d8c4: e005         	b	0xd8d2 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0xa
    d8c6: 3508         	adds	r5, #0x8
    d8c8: f104 0308    	add.w	r3, r4, #0x8
    d8cc: 4689         	mov	r9, r1
    d8ce: e000         	b	0xd8d2 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x0
    d8d0: 350c         	adds	r5, #0xc
    d8d2: e9dd b800    	ldrd	r11, r8, [sp]
    d8d6: 9802         	ldr	r0, [sp, #0x8]
    d8d8: 2200         	movs	r2, #0x0
    d8da: f88d 201c    	strb.w	r2, [sp, #0x1c]
    d8de: 2801         	cmp	r0, #0x1
    d8e0: f807 2c26    	strb	r2, [r7, #-38]
    d8e4: d10e         	bne	0xd904 <compiler_builtins::mem::memcpy+0x1e8> @ imm = #0x1c
    d8e6: ae07         	add	r6, sp, #0x1c
    d8e8: 2400         	movs	r4, #0x0
    d8ea: 2000         	movs	r0, #0x0
    d8ec: 9905         	ldr	r1, [sp, #0x14]
    d8ee: 07c9         	lsls	r1, r1, #0x1f
    d8f0: d013         	beq	0xd91a <compiler_builtins::mem::memcpy+0x1fe> @ imm = #0x26
    d8f2: 1d29         	adds	r1, r5, #0x4
    d8f4: 5c08         	ldrb	r0, [r1, r0]
    d8f6: 7030         	strb	r0, [r6]
    d8f8: f817 0c26    	ldrb	r0, [r7, #-38]
    d8fc: f89d 201c    	ldrb.w	r2, [sp, #0x1c]
    d900: 0400         	lsls	r0, r0, #0x10
    d902: e00b         	b	0xd91c <compiler_builtins::mem::memcpy+0x200> @ imm = #0x16
    d904: 7968         	ldrb	r0, [r5, #0x5]
    d906: f1a7 0626    	sub.w	r6, r7, #0x26
    d90a: 792a         	ldrb	r2, [r5, #0x4]
    d90c: f88d 201c    	strb.w	r2, [sp, #0x1c]
    d910: 0204         	lsls	r4, r0, #0x8
    d912: 2002         	movs	r0, #0x2
    d914: 9905         	ldr	r1, [sp, #0x14]
    d916: 07c9         	lsls	r1, r1, #0x1f
    d918: d1eb         	bne	0xd8f2 <compiler_builtins::mem::memcpy+0x1d6> @ imm = #-0x2a
    d91a: 2000         	movs	r0, #0x0
    d91c: 4320         	orrs	r0, r4
    d91e: fa29 f10e    	lsr.w	r1, r9, lr
    d922: 4310         	orrs	r0, r2
    d924: 9a03         	ldr	r2, [sp, #0xc]
    d926: f002 0218    	and	r2, r2, #0x18
    d92a: 4090         	lsls	r0, r2
    d92c: e9dd 2404    	ldrd	r2, r4, [sp, #16]
    d930: 4308         	orrs	r0, r1
    d932: 6018         	str	r0, [r3]
    d934: 18a1         	adds	r1, r4, r2
    d936: f00b 0203    	and	r2, r11, #0x3
    d93a: eb0c 0302    	add.w	r3, r12, r2
    d93e: 459c         	cmp	r12, r3
    d940: d229         	bhs	0xd996 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x52
    d942: 1e56         	subs	r6, r2, #0x1
    d944: f012 0003    	ands	r0, r2, #0x3
    d948: d012         	beq	0xd970 <compiler_builtins::mem::memcpy+0x254> @ imm = #0x24
    d94a: 460a         	mov	r2, r1
    d94c: 4665         	mov	r5, r12
    d94e: f812 4b01    	ldrb	r4, [r2], #1
    d952: 2801         	cmp	r0, #0x1
    d954: f805 4b01    	strb	r4, [r5], #1
    d958: d00c         	beq	0xd974 <compiler_builtins::mem::memcpy+0x258> @ imm = #0x18
    d95a: 784a         	ldrb	r2, [r1, #0x1]
    d95c: 2802         	cmp	r0, #0x2
    d95e: f88c 2001    	strb.w	r2, [r12, #0x1]
    d962: d11d         	bne	0xd9a0 <compiler_builtins::mem::memcpy+0x284> @ imm = #0x3a
    d964: 1c8a         	adds	r2, r1, #0x2
    d966: f10c 0502    	add.w	r5, r12, #0x2
    d96a: 2e03         	cmp	r6, #0x3
    d96c: d204         	bhs	0xd978 <compiler_builtins::mem::memcpy+0x25c> @ imm = #0x8
    d96e: e012         	b	0xd996 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x24
    d970: 4665         	mov	r5, r12
    d972: 460a         	mov	r2, r1
    d974: 2e03         	cmp	r6, #0x3
    d976: d30e         	blo	0xd996 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x1c
    d978: 1f11         	subs	r1, r2, #0x4
    d97a: 1f2a         	subs	r2, r5, #0x4
    d97c: f811 0f04    	ldrb	r0, [r1, #4]!
    d980: f802 0f04    	strb	r0, [r2, #4]!
    d984: 7848         	ldrb	r0, [r1, #0x1]
    d986: 7050         	strb	r0, [r2, #0x1]
    d988: 7888         	ldrb	r0, [r1, #0x2]
    d98a: 7090         	strb	r0, [r2, #0x2]
    d98c: 78c8         	ldrb	r0, [r1, #0x3]
    d98e: 70d0         	strb	r0, [r2, #0x3]
    d990: 1d10         	adds	r0, r2, #0x4
    d992: 4298         	cmp	r0, r3
    d994: d1f2         	bne	0xd97c <compiler_builtins::mem::memcpy+0x260> @ imm = #-0x1c
    d996: 4640         	mov	r0, r8
    d998: b009         	add	sp, #0x24
    d99a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    d99e: bdf0         	pop	{r4, r5, r6, r7, pc}
    d9a0: 1cca         	adds	r2, r1, #0x3
    d9a2: f10c 0503    	add.w	r5, r12, #0x3
    d9a6: 7888         	ldrb	r0, [r1, #0x2]
    d9a8: f88c 0002    	strb.w	r0, [r12, #0x2]
    d9ac: 2e03         	cmp	r6, #0x3
    d9ae: d2e3         	bhs	0xd978 <compiler_builtins::mem::memcpy+0x25c> @ imm = #-0x3a
    d9b0: e7f1         	b	0xd996 <compiler_builtins::mem::memcpy+0x27a> @ imm = #-0x1e

0000d9b2 <__aeabi_memclr4>:
    d9b2: b580         	push	{r7, lr}
    d9b4: 466f         	mov	r7, sp
    d9b6: 2904         	cmp	r1, #0x4
    d9b8: d305         	blo	0xd9c6 <__aeabi_memclr4+0x14> @ imm = #0xa
    d9ba: 1f0b         	subs	r3, r1, #0x4
    d9bc: 43da         	mvns	r2, r3
    d9be: f012 0f0c    	tst.w	r2, #0xc
    d9c2: d102         	bne	0xd9ca <__aeabi_memclr4+0x18> @ imm = #0x4
    d9c4: e01a         	b	0xd9fc <__aeabi_memclr4+0x4a> @ imm = #0x34
    d9c6: 4602         	mov	r2, r0
    d9c8: e024         	b	0xda14 <__aeabi_memclr4+0x62> @ imm = #0x48
    d9ca: f04f 0c00    	mov.w	r12, #0x0
    d9ce: 4602         	mov	r2, r0
    d9d0: f842 cb04    	str	r12, [r2], #4
    d9d4: f013 0f0c    	tst.w	r3, #0xc
    d9d8: d008         	beq	0xd9ec <__aeabi_memclr4+0x3a> @ imm = #0x10
    d9da: f003 020c    	and	r2, r3, #0xc
    d9de: f8c0 c004    	str.w	r12, [r0, #0x4]
    d9e2: 2a04         	cmp	r2, #0x4
    d9e4: d105         	bne	0xd9f2 <__aeabi_memclr4+0x40> @ imm = #0xa
    d9e6: 3908         	subs	r1, #0x8
    d9e8: 3008         	adds	r0, #0x8
    d9ea: e006         	b	0xd9fa <__aeabi_memclr4+0x48> @ imm = #0xc
    d9ec: 4619         	mov	r1, r3
    d9ee: 4610         	mov	r0, r2
    d9f0: e004         	b	0xd9fc <__aeabi_memclr4+0x4a> @ imm = #0x8
    d9f2: 2200         	movs	r2, #0x0
    d9f4: 390c         	subs	r1, #0xc
    d9f6: 6082         	str	r2, [r0, #0x8]
    d9f8: 300c         	adds	r0, #0xc
    d9fa: 4602         	mov	r2, r0
    d9fc: 2b0c         	cmp	r3, #0xc
    d9fe: d309         	blo	0xda14 <__aeabi_memclr4+0x62> @ imm = #0x12
    da00: 2300         	movs	r3, #0x0
    da02: 4602         	mov	r2, r0
    da04: 3910         	subs	r1, #0x10
    da06: e9c2 3300    	strd	r3, r3, [r2]
    da0a: e9c2 3302    	strd	r3, r3, [r2, #8]
    da0e: 3210         	adds	r2, #0x10
    da10: 2903         	cmp	r1, #0x3
    da12: d8f7         	bhi	0xda04 <__aeabi_memclr4+0x52> @ imm = #-0x12
    da14: 1850         	adds	r0, r2, r1
    da16: 4282         	cmp	r2, r0
    da18: d221         	bhs	0xda5e <__aeabi_memclr4+0xac> @ imm = #0x42
    da1a: f1a1 0c01    	sub.w	r12, r1, #0x1
    da1e: f011 0303    	ands	r3, r1, #0x3
    da22: d00c         	beq	0xda3e <__aeabi_memclr4+0x8c> @ imm = #0x18
    da24: f04f 0e00    	mov.w	lr, #0x0
    da28: 4611         	mov	r1, r2
    da2a: f801 eb01    	strb	lr, [r1], #1
    da2e: 2b01         	cmp	r3, #0x1
    da30: d00a         	beq	0xda48 <__aeabi_memclr4+0x96> @ imm = #0x14
    da32: 2b02         	cmp	r3, #0x2
    da34: f882 e001    	strb.w	lr, [r2, #0x1]
    da38: d103         	bne	0xda42 <__aeabi_memclr4+0x90> @ imm = #0x6
    da3a: 1c91         	adds	r1, r2, #0x2
    da3c: e004         	b	0xda48 <__aeabi_memclr4+0x96> @ imm = #0x8
    da3e: 4611         	mov	r1, r2
    da40: e002         	b	0xda48 <__aeabi_memclr4+0x96> @ imm = #0x4
    da42: 2100         	movs	r1, #0x0
    da44: 7091         	strb	r1, [r2, #0x2]
    da46: 1cd1         	adds	r1, r2, #0x3
    da48: f1bc 0f03    	cmp.w	r12, #0x3
    da4c: bf38         	it	lo
    da4e: bd80         	poplo	{r7, pc}
    da50: 3904         	subs	r1, #0x4
    da52: 2200         	movs	r2, #0x0
    da54: f841 2f04    	str	r2, [r1, #4]!
    da58: 1d0b         	adds	r3, r1, #0x4
    da5a: 4283         	cmp	r3, r0
    da5c: d1fa         	bne	0xda54 <__aeabi_memclr4+0xa2> @ imm = #-0xc
    da5e: bd80         	pop	{r7, pc}
    da60: 726f         	strb	r7, [r5, #0x9]
    da62: 6e61         	ldr	r1, [r4, #0x64]
    da64: 6567         	str	r7, [r4, #0x54]
    da66: 642d         	str	r5, [r5, #0x40]
    da68: 7073         	strb	r3, [r6, #0x1]
    da6a: 732f         	strb	r7, [r5, #0xc]
    da6c: 6372         	str	r2, [r6, #0x34]
    da6e: 722f         	strb	r7, [r5, #0x8]
    da70: 7065         	strb	r5, [r4, #0x1]
    da72: 6165         	str	r5, [r4, #0x14]
    da74: 6574         	str	r4, [r6, #0x54]
    da76: 2e64         	cmp	r6, #0x64
    da78: 7372         	strb	r2, [r6, #0xd]
    da7a: 2400         	movs	r4, #0x0
    da7c: 696d         	ldr	r5, [r5, #0x14]
    da7e: 206e         	movs	r0, #0x6e
    da80: 203e         	movs	r0, #0x3e
    da82: 616d         	str	r5, [r5, #0x14]
    da84: 2c78         	cmp	r4, #0x78
    da86: 6f20         	ldr	r0, [r4, #0x70]
    da88: 2072         	movs	r0, #0x72
    da8a: 6965         	ldr	r5, [r4, #0x14]
    da8c: 6874         	ldr	r4, [r6, #0x4]
    da8e: 7265         	strb	r5, [r4, #0x9]
    da90: 7720         	strb	r0, [r4, #0x1c]
    da92: 7361         	strb	r1, [r4, #0xd]
    da94: 4e20         	ldr	r6, [pc, #0x80]         @ 0xdb18 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.2+0x7>
    da96: 4e61         	ldr	r6, [pc, #0x184]        @ 0xdc1c <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.3+0xdc>
    da98: 202e         	movs	r0, #0x2e
    da9a: 696d         	ldr	r5, [r5, #0x14]
    da9c: 206e         	movs	r0, #0x6e
    da9e: 203d         	movs	r0, #0x3d
    daa0: 08c0         	lsrs	r0, r0, #0x3
    daa2: 202c         	movs	r0, #0x2c
    daa4: 616d         	str	r5, [r5, #0x14]
    daa6: 2078         	movs	r0, #0x78
    daa8: 203d         	movs	r0, #0x3d
    daaa: 00c0         	lsls	r0, r0, #0x3
    daac: 722f         	strb	r7, [r5, #0x8]
    daae: 7375         	strb	r5, [r6, #0xd]
    dab0: 6374         	str	r4, [r6, #0x34]
    dab2: 342f         	adds	r4, #0x2f
    dab4: 6138         	str	r0, [r7, #0x10]
    dab6: 3232         	adds	r2, #0x32
    dab8: 6339         	str	r1, [r7, #0x30]
    daba: 6165         	str	r5, [r4, #0x14]
    dabc: 6665         	str	r5, [r4, #0x64]
    dabe: 3464         	adds	r4, #0x64
    dac0: 3839         	subs	r0, #0x39
    dac2: 6335         	str	r5, [r6, #0x30]
    dac4: 3035         	adds	r0, #0x35
    dac6: 3939         	subs	r1, #0x39
    dac8: 6230         	str	r0, [r6, #0x20]
    daca: 3431         	adds	r4, #0x31
    dacc: 3131         	adds	r1, #0x31
    dace: 6236         	str	r6, [r6, #0x20]
    dad0: 6436         	str	r6, [r6, #0x40]
    dad2: 3538         	adds	r5, #0x38
    dad4: 6136         	str	r6, [r6, #0x10]
    dad6: 3066         	adds	r0, #0x66
    dad8: 3839         	subs	r0, #0x39
    dada: 2f35         	cmp	r7, #0x35
    dadc: 696c         	ldr	r4, [r5, #0x14]
    dade: 7262         	strb	r2, [r4, #0x9]
    dae0: 7261         	strb	r1, [r4, #0x9]
    dae2: 2f79         	cmp	r7, #0x79
    dae4: 6f63         	ldr	r3, [r4, #0x74]
    dae6: 6572         	str	r2, [r6, #0x54]
    dae8: 732f         	strb	r7, [r5, #0xc]
    daea: 6372         	str	r2, [r6, #0x34]
    daec: 6e2f         	ldr	r7, [r5, #0x60]
    daee: 6d75         	ldr	r5, [r6, #0x54]
    daf0: 662f         	str	r7, [r5, #0x60]
    daf2: 3233         	adds	r2, #0x33
    daf4: 722e         	strb	r6, [r5, #0x8]
    daf6: 0073         	lsls	r3, r6, #0x1
    daf8: 726f         	strb	r7, [r5, #0x9]
    dafa: 6e61         	ldr	r1, [r4, #0x64]
    dafc: 6567         	str	r7, [r4, #0x54]
    dafe: 642d         	str	r5, [r5, #0x40]
    db00: 7073         	strb	r3, [r6, #0x1]
    db02: 732f         	strb	r7, [r5, #0xc]
    db04: 6372         	str	r2, [r6, #0x34]
    db06: 702f         	strb	r7, [r5]
    db08: 6361         	str	r1, [r4, #0x34]
    db0a: 656b         	str	r3, [r5, #0x54]
    db0c: 2e64         	cmp	r6, #0x64
    db0e: 7372         	strb	r2, [r6, #0xd]
    db10: 6900         	ldr	r0, [r0, #0x10]

0000db11 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.2>:
    db11: 69 6e 74 65 72 6e 61 6c         internal
    db19: 20 65 72 72 6f 72 3a 20          error: 
    db21: 65 6e 74 65 72 65 64 20         entered 
    db29: 75 6e 72 65 61 63 68 61         unreacha
    db31: 62 6c 65 20 63 6f 64 65         ble code
    db39: d4 d4 d4 d4 d4 d4 d4            .......

0000db40 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.3>:
    db40: 80 e5 70 28 a1 3a 03 bf         ..p(.:..
    db48: 00 00 00 00 00 00 00 00         ........
    db50: 00 00 00 00 00 00 00 00         ........
    db58: 00 00 00 00 00 00 00 00         ........
    db60: 00 00 00 00 00 00 00 00         ........
    db68: 00 00 00 00 00 00 00 00         ........
    db70: 00 00 00 00 00 00 00 00         ........
    db78: 00 00 00 00 00 00 00 00         ........
    db80: 00 00 00 00 00 00 00 00         ........
    db88: 00 f0 e6 61 55 15 14 bf         ...aU...
    db90: 00 00 00 00 00 00 00 00         ........
    db98: 00 00 00 00 00 00 00 00         ........
    dba0: 00 00 00 00 00 00 00 00         ........
    dba8: 00 00 00 00 00 00 00 00         ........
    dbb0: 00 00 00 00 00 00 00 00         ........
    dbb8: 00 00 00 00 00 00 00 00         ........
    dbc0: 00 00 00 00 00 00 00 00         ........
    dbc8: 00 00 00 00 00 00 00 00         ........
    dbd0: 00 50 66 db 76 ec 1e bf         .Pf.v...
    dbd8: 0f 97 9b b4 e8 75 16 3f         .....u.?
    dbe0: 00 00 00 00 00 00 00 00         ........
    dbe8: 00 00 00 00 00 00 00 00         ........
    dbf0: 00 00 00 00 00 00 00 00         ........
    dbf8: 00 00 00 00 00 00 00 00         ........
    dc00: 00 00 00 00 00 00 00 00         ........
    dc08: 00 00 00 00 00 00 00 00         ........
    dc10: e0 96 9b b4 e8 75 16 3f         .....u.?
    dc18: 32 e2 b6 04 2a ad 22 bf         2...*.".
    dc20: 00 00 00 00 00 00 00 00         ........
    dc28: 00 00 00 00 00 00 00 00         ........
    dc30: 00 00 00 00 00 00 00 00         ........
    dc38: 00 00 00 00 00 00 00 00         ........
    dc40: 00 00 00 00 00 00 00 00         ........
    dc48: 00 00 00 00 00 00 00 00         ........
    dc50: 00 00 00 00 00 00 00 00         ........
    dc58: 00 00 00 00 00 00 00 00         ........
    dc60: 61 05 bc 57 10 d8 12 bf         a..W....
    dc68: 58 62 94 b9 1a 9f dc 3e         Xb.....>
    dc70: 00 00 00 00 00 00 00 00         ........
    dc78: 00 00 00 00 00 00 00 00         ........
    dc80: 00 00 00 00 00 00 00 00         ........
    dc88: 00 00 00 00 00 00 00 00         ........
    dc90: 00 00 00 00 00 00 00 00         ........
    dc98: 00 00 00 00 00 00 00 00         ........
    dca0: 59 62 94 b9 1a 9f dc 3e         Yb.....>
    dca8: 14 90 51 d1 d5 fc 24 bf         ..Q...$.
    dcb0: 14 d0 fe 14 cf 45 20 3f         .....E ?
    dcb8: 00 00 00 00 00 00 00 00         ........
    dcc0: 00 00 00 00 00 00 00 00         ........
    dcc8: 00 00 00 00 00 00 00 00         ........
    dcd0: 00 00 00 00 00 00 00 00         ........
    dcd8: 00 00 00 00 00 00 00 00         ........
    dce0: 00 00 00 00 00 00 00 00         ........
    dce8: d2 ce fe 14 cf 45 20 3f         .....E ?
    dcf0: d2 ce fe 14 cf 45 20 bf         .....E .
    dcf8: 00 00 00 00 00 00 00 00         ........
    dd00: 00 00 00 00 00 00 00 00         ........
    dd08: 00 00 00 00 00 00 00 00         ........
    dd10: 00 00 00 00 00 00 00 00         ........
    dd18: 00 00 00 00 00 00 00 00         ........
    dd20: 00 00 00 00 00 00 00 00         ........
    dd28: 00 00 00 00 00 00 00 00         ........
    dd30: 00 00 00 00 00 00 00 00         ........
    dd38: 42 6f 24 95 d9 83 c5 bf         Bo$.....
    dd40: a2 0c d2 2e ca fe ef 3f         .......?
    dd48: 1f 89 9b cf ab 32 9c bf         .....2..
    dd50: 00 00 00 00 00 00 00 00         ........
    dd58: 00 00 00 00 00 00 00 00         ........
    dd60: 00 00 00 00 00 00 00 00         ........
    dd68: 00 00 00 00 00 00 00 00         ........
    dd70: 00 00 00 00 00 00 00 00         ........
    dd78: 00 00 00 00 00 00 00 00         ........
    dd80: 00 00 00 00 00 00 00 00         ........
    dd88: a5 94 a7 50 09 2c d5 3f         ...P.,.?
    dd90: 9c 9e 91 65 97 57 e8 bf         ...e.W..
    dd98: 76 43 71 a5 f8 73 e2 3f         vCq..s.?
    dda0: 00 00 00 00 00 00 00 00         ........
    dda8: 00 00 00 00 00 00 00 00         ........
    ddb0: 00 00 00 00 00 00 00 00         ........
    ddb8: 00 00 00 00 00 00 00 00         ........
    ddc0: 00 00 00 00 00 00 00 00         ........
    ddc8: 00 00 00 00 00 00 00 00         ........
    ddd0: ab 14 f2 db ec cd d7 3f         .......?
    ddd8: c4 a9 9f 7b 67 dd c7 3f         ...{g..?
    dde0: 1c 38 88 77 bf 13 e1 bf         .8.w....
    dde8: 00 00 00 00 00 00 00 00         ........
    ddf0: 00 00 00 00 00 00 00 00         ........
    ddf8: 00 00 00 00 00 00 00 00         ........
    de00: 00 00 00 00 00 00 00 00         ........
    de08: 00 00 00 00 00 00 00 00         ........
    de10: 00 00 00 00 00 00 00 00         ........
    de18: 00 00 00 00 00 00 00 00         ........
    de20: 15 be b6 e5 6d 7e c0 bf         ....m~..
    de28: 67 42 87 92 ba 86 d4 bf         gB......
    de30: 00 00 00 00 00 00 00 00         ........
    de38: 00 00 00 00 00 00 00 00         ........
    de40: 00 00 00 00 00 00 00 00         ........
    de48: 00 00 00 00 00 00 00 00         ........
    de50: 00 00 00 00 00 00 00 00         ........
    de58: 00 00 00 00 00 00 00 00         ........
    de60: 00 00 00 00 00 00 00 00         ........
    de68: e6 a7 5c a0 06 41 d9 3f         ..\..A.?
    de70: e6 a7 5c a0 06 41 d9 bf         ..\..A..
    de78: 19 d5 65 36 d0 6e 95 bf         ..e6.n..
    de80: 00 00 00 00 00 00 00 00         ........
    de88: 00 00 00 00 00 00 00 00         ........
    de90: 00 00 00 00 00 00 00 00         ........
    de98: 00 00 00 00 00 00 00 00         ........
    dea0: 00 00 00 00 00 00 00 00         ........
    dea8: 10 43 9c 25 ca fc ef 3f         .C.%...?
    deb0: 00 80 e7 1d d3 ae 39 3f         ......9?
    deb8: 00 00 00 00 00 00 00 00         ........
    dec0: 00 00 00 00 00 00 00 00         ........
    dec8: 00 00 00 00 00 00 00 00         ........
    ded0: 00 00 00 00 00 00 00 00         ........
    ded8: 00 00 00 00 00 00 00 00         ........
    dee0: 00 00 00 00 00 00 00 00         ........
    dee8: 10 43 9c 25 ca fc ef 3f         .C.%...?
    def0: 10 43 9c 25 ca fc ef bf         .C.%....
    def8: 00 00 00 00 00 00 00 00         ........

0000df00 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.4>:
    df00: f8 da 00 00 18 00 00 00         ........
    df08: 26 02 00 00 05 00 00 00         &.......

0000df10 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.5>:
    df10: 60 da 00 00 1a 00 00 00         `.......
    df18: ac 02 00 00 05 00 00 00         ........

0000df20 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.8>:
    df20: ac da 00 00 4b 00 00 00         ....K...
    df28: 1e 06 00 00 09 00 00 00         ........
