
simulation/experiments/repeated_work/20260927T112047Z/package8.elf:	file format elf32-littlearm

Disassembly of section .text:

00000408 <Reset>:
     408: b580         	push	{r7, lr}
     40a: 466f         	mov	r7, sp
     40c: f5ad 7d46    	sub.w	sp, sp, #0x318
     410: f244 503c    	movw	r0, #0x453c
     414: f241 0204    	movw	r2, #0x1004
     418: f6c5 0002    	movt	r0, #0x5802
     41c: f2ce 0200    	movt	r2, #0xe000
     420: 2400         	movs	r4, #0x0
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
     444: f241 0a00    	movw	r10, #0x1000
     448: 6808         	ldr	r0, [r1]
     44a: f2c2 0a00    	movt	r10, #0x2000
     44e: f040 7080    	orr	r0, r0, #0x1000000
     452: 6008         	str	r0, [r1]
     454: 6014         	str	r4, [r2]
     456: f64f 71fc    	movw	r1, #0xfffc
     45a: f852 0c04    	ldr	r0, [r2, #-4]
     45e: f2c2 0100    	movt	r1, #0x2000
     462: f040 0001    	orr	r0, r0, #0x1
     466: f842 0c04    	str	r0, [r2, #-4]
     46a: f244 304b    	movw	r0, #0x434b
     46e: ed9f 8ad3    	vldr	s16, [pc, #844]         @ 0x7bc <Reset+0x3b4>
     472: f2c5 0041    	movt	r0, #0x5041
     476: f841 0c0c    	str	r0, [r1, #-12]
     47a: a86c         	add	r0, sp, #0x1b0
     47c: 600c         	str	r4, [r1]
     47e: f100 0120    	add.w	r1, r0, #0x20
     482: 9102         	str	r1, [sp, #0x8]
     484: a9c0         	add	r1, sp, #0x300
     486: ed9f cace    	vldr	s24, [pc, #824]         @ 0x7c0 <Reset+0x3b8>
     48a: ed9f dace    	vldr	s26, [pc, #824]         @ 0x7c4 <Reset+0x3bc>
     48e: 3090         	adds	r0, #0x90
     490: 9001         	str	r0, [sp, #0x4]
     492: f101 000c    	add.w	r0, r1, #0xc
     496: 900d         	str	r0, [sp, #0x34]
     498: 2000         	movs	r0, #0x0
     49a: 901a         	str	r0, [sp, #0x68]
     49c: e06e         	b	0x57c <Reset+0x174>     @ imm = #0xdc
     49e: bf00         	nop
     4a0: f241 0000    	movw	r0, #0x1000
     4a4: 9d1a         	ldr	r5, [sp, #0x68]
     4a6: f2c2 0000    	movt	r0, #0x2000
     4aa: f50d 7eca    	add.w	lr, sp, #0x194
     4ae: e9cd 431f    	strd	r4, r3, [sp, #124]
     4b2: eb00 2305    	add.w	r3, r0, r5, lsl #8
     4b6: f44f 4468    	mov.w	r4, #0xe800
     4ba: f503 4068    	add.w	r0, r3, #0xe800
     4be: 9a6b         	ldr	r2, [sp, #0x1ac]
     4c0: f8dd 82cc    	ldr.w	r8, [sp, #0x2cc]
     4c4: f8dd 9190    	ldr.w	r9, [sp, #0x190]
     4c8: e89e 4440    	ldm.w	lr, {r6, r10, lr}
     4cc: 9968         	ldr	r1, [sp, #0x1a0]
     4ce: f8dd c1a4    	ldr.w	r12, [sp, #0x1a4]
     4d2: f8dd b040    	ldr.w	r11, [sp, #0x40]
     4d6: f843 b004    	str.w	r11, [r3, r4]
     4da: 9b11         	ldr	r3, [sp, #0x44]
     4dc: 6043         	str	r3, [r0, #0x4]
     4de: 9b12         	ldr	r3, [sp, #0x48]
     4e0: 6083         	str	r3, [r0, #0x8]
     4e2: 60c2         	str	r2, [r0, #0xc]
     4e4: 2400         	movs	r4, #0x0
     4e6: 9a06         	ldr	r2, [sp, #0x18]
     4e8: 6102         	str	r2, [r0, #0x10]
     4ea: 9a04         	ldr	r2, [sp, #0x10]
     4ec: 6142         	str	r2, [r0, #0x14]
     4ee: 6184         	str	r4, [r0, #0x18]
     4f0: f44f 7290    	mov.w	r2, #0x120
     4f4: 61c2         	str	r2, [r0, #0x1c]
     4f6: 3501         	adds	r5, #0x1
     4f8: 9a08         	ldr	r2, [sp, #0x20]
     4fa: 6202         	str	r2, [r0, #0x20]
     4fc: 9a09         	ldr	r2, [sp, #0x24]
     4fe: 6242         	str	r2, [r0, #0x24]
     500: 9a0a         	ldr	r2, [sp, #0x28]
     502: 6282         	str	r2, [r0, #0x28]
     504: 9a07         	ldr	r2, [sp, #0x1c]
     506: 62c2         	str	r2, [r0, #0x2c]
     508: 9a05         	ldr	r2, [sp, #0x14]
     50a: 6302         	str	r2, [r0, #0x30]
     50c: 6344         	str	r4, [r0, #0x34]
     50e: 2d03         	cmp	r5, #0x3
     510: 6384         	str	r4, [r0, #0x38]
     512: 63c4         	str	r4, [r0, #0x3c]
     514: 6404         	str	r4, [r0, #0x40]
     516: 6444         	str	r4, [r0, #0x44]
     518: 9a13         	ldr	r2, [sp, #0x4c]
     51a: 6482         	str	r2, [r0, #0x48]
     51c: 9a14         	ldr	r2, [sp, #0x50]
     51e: 64c2         	str	r2, [r0, #0x4c]
     520: 9a15         	ldr	r2, [sp, #0x54]
     522: 6502         	str	r2, [r0, #0x50]
     524: 9a16         	ldr	r2, [sp, #0x58]
     526: 6542         	str	r2, [r0, #0x54]
     528: 9a17         	ldr	r2, [sp, #0x5c]
     52a: 6582         	str	r2, [r0, #0x58]
     52c: 65c4         	str	r4, [r0, #0x5c]
     52e: 6604         	str	r4, [r0, #0x60]
     530: 6644         	str	r4, [r0, #0x64]
     532: 6684         	str	r4, [r0, #0x68]
     534: 9a19         	ldr	r2, [sp, #0x64]
     536: 66c2         	str	r2, [r0, #0x6c]
     538: 9a18         	ldr	r2, [sp, #0x60]
     53a: 6702         	str	r2, [r0, #0x70]
     53c: f8c0 8074    	str.w	r8, [r0, #0x74]
     540: f8c0 9078    	str.w	r9, [r0, #0x78]
     544: 67c6         	str	r6, [r0, #0x7c]
     546: f8c0 a080    	str.w	r10, [r0, #0x80]
     54a: f8c0 e084    	str.w	lr, [r0, #0x84]
     54e: f8c0 1088    	str.w	r1, [r0, #0x88]
     552: f04f 0108    	mov.w	r1, #0x8
     556: f8c0 108c    	str.w	r1, [r0, #0x8c]
     55a: 991f         	ldr	r1, [sp, #0x7c]
     55c: f8c0 1090    	str.w	r1, [r0, #0x90]
     560: 9920         	ldr	r1, [sp, #0x80]
     562: f8c0 1094    	str.w	r1, [r0, #0x94]
     566: f8c0 c098    	str.w	r12, [r0, #0x98]
     56a: 951a         	str	r5, [sp, #0x68]
     56c: f8c0 409c    	str.w	r4, [r0, #0x9c]
     570: f8dd a00c    	ldr.w	r10, [sp, #0xc]
     574: f50a 4a80    	add.w	r10, r10, #0x4000
     578: f000 817e    	beq.w	0x878 <Reset+0x470>     @ imm = #0x2fc
     57c: 2188         	movs	r1, #0x88
     57e: 9801         	ldr	r0, [sp, #0x4]
     580: e9cd 4472    	strd	r4, r4, [sp, #456]
     584: e9cd 4470    	strd	r4, r4, [sp, #448]
     588: e9cd 446e    	strd	r4, r4, [sp, #440]
     58c: e9cd 446c    	strd	r4, r4, [sp, #432]
     590: f00d fa23    	bl	0xd9da <__aeabi_memclr4> @ imm = #0xd446
     594: f44f 7190    	mov.w	r1, #0x120
     598: a824         	add	r0, sp, #0x90
     59a: f00d fa1e    	bl	0xd9da <__aeabi_memclr4> @ imm = #0xd43c
     59e: 2170         	movs	r1, #0x70
     5a0: 9802         	ldr	r0, [sp, #0x8]
     5a2: f00d fa1a    	bl	0xd9da <__aeabi_memclr4> @ imm = #0xd434
     5a6: e9cd 44b2    	strd	r4, r4, [sp, #712]
     5aa: 2201         	movs	r2, #0x1
     5ac: f04f 0860    	mov.w	r8, #0x60
     5b0: 2300         	movs	r3, #0x0
     5b2: 2400         	movs	r4, #0x0
     5b4: 2600         	movs	r6, #0x0
     5b6: f04f 0c00    	mov.w	r12, #0x0
     5ba: f04f 0b00    	mov.w	r11, #0x0
     5be: 201f         	movs	r0, #0x1f
     5c0: 9021         	str	r0, [sp, #0x84]
     5c2: 2000         	movs	r0, #0x0
     5c4: f8cd a00c    	str.w	r10, [sp, #0xc]
     5c8: 900a         	str	r0, [sp, #0x28]
     5ca: e9cd 0008    	strd	r0, r0, [sp, #32]
     5ce: e9cd 0004    	strd	r0, r0, [sp, #16]
     5d2: e9cd 0006    	strd	r0, r0, [sp, #24]
     5d6: e9cd 0011    	strd	r0, r0, [sp, #68]
     5da: 9019         	str	r0, [sp, #0x64]
     5dc: e9cd 0017    	strd	r0, r0, [sp, #92]
     5e0: e9cd 0015    	strd	r0, r0, [sp, #84]
     5e4: e9cd 0013    	strd	r0, r0, [sp, #76]
     5e8: e9cd 000e    	strd	r0, r0, [sp, #56]
     5ec: 9010         	str	r0, [sp, #0x40]
     5ee: e039         	b	0x664 <Reset+0x25c>     @ imm = #0x72
     5f0: f082 0e01    	eor	lr, r2, #0x1
     5f4: f081 0801    	eor	r8, r1, #0x1
     5f8: e9dd 64b7    	ldrd	r6, r4, [sp, #732]
     5fc: 9ab9         	ldr	r2, [sp, #0x2e4]
     5fe: f8ca 6000    	str.w	r6, [r10]
     602: e9dd 31b4    	ldrd	r3, r1, [sp, #720]
     606: f8dd 92d8    	ldr.w	r9, [sp, #0x2d8]
     60a: f8ca 3004    	str.w	r3, [r10, #0x4]
     60e: f8ca 0008    	str.w	r0, [r10, #0x8]
     612: f50d 7c3a    	add.w	r12, sp, #0x2e8
     616: f8ca 500c    	str.w	r5, [r10, #0xc]
     61a: f10b 0b01    	add.w	r11, r11, #0x1
     61e: 980d         	ldr	r0, [sp, #0x34]
     620: 92c2         	str	r2, [sp, #0x308]
     622: e9cd 64c0    	strd	r6, r4, [sp, #768]
     626: e9c0 3100    	strd	r3, r1, [r0]
     62a: a9c0         	add	r1, sp, #0x300
     62c: f8c0 9008    	str.w	r9, [r0, #0x8]
     630: 46e1         	mov	r9, r12
     632: f5bb 6f80    	cmp.w	r11, #0x400
     636: e891 007d    	ldm.w	r1, {r0, r2, r3, r4, r5, r6}
     63a: e889 007d    	stm.w	r9, {r0, r2, r3, r4, r5, r6}
     63e: 9c1f         	ldr	r4, [sp, #0x7c]
     640: 9b20         	ldr	r3, [sp, #0x80]
     642: 4443         	add	r3, r8
     644: f8dd 8074    	ldr.w	r8, [sp, #0x74]
     648: 4474         	add	r4, lr
     64a: 9821         	ldr	r0, [sp, #0x84]
     64c: f10a 0a10    	add.w	r10, r10, #0x10
     650: f108 0801    	add.w	r8, r8, #0x1
     654: 9a1e         	ldr	r2, [sp, #0x78]
     656: e9dd c622    	ldrd	r12, r6, [sp, #136]
     65a: f1a0 0001    	sub.w	r0, r0, #0x1
     65e: 9021         	str	r0, [sp, #0x84]
     660: f43f af1e    	beq.w	0x4a0 <Reset+0x98>      @ imm = #-0x1c4
     664: f64a 20ab    	movw	r0, #0xaaab
     668: 9320         	str	r3, [sp, #0x80]
     66a: f6ca 20aa    	movt	r0, #0xaaaa
     66e: 9623         	str	r6, [sp, #0x8c]
     670: fba8 0100    	umull	r0, r1, r8, r0
     674: 0a08         	lsrs	r0, r1, #0x8
     676: f246 610d    	movw	r1, #0x660d
     67a: f2c0 0119    	movt	r1, #0x19
     67e: eb00 0040    	add.w	r0, r0, r0, lsl #1
     682: eba8 10c0    	sub.w	r0, r8, r0, lsl #7
     686: ee00 0a10    	vmov	s0, r0
     68a: f24f 305f    	movw	r0, #0xf35f
     68e: f6c3 406e    	movt	r0, #0x3c6e
     692: fb02 0201    	mla	r2, r2, r1, r0
     696: 981a         	ldr	r0, [sp, #0x68]
     698: eeb8 0a40    	vcvt.f32.u32	s0, s0
     69c: e9cd 241e    	strd	r2, r4, [sp, #120]
     6a0: ee80 0a08    	vdiv.f32	s0, s0, s16
     6a4: b180         	cbz	r0, 0x6c8 <Reset+0x2c0> @ imm = #0x20
     6a6: f241 0504    	movw	r5, #0x1004
     6aa: 2801         	cmp	r0, #0x1
     6ac: f2ce 0500    	movt	r5, #0xe000
     6b0: d11a         	bne	0x6e8 <Reset+0x2e0>     @ imm = #0x34
     6b2: ee30 0a09    	vadd.f32	s0, s0, s18
     6b6: eeb0 fa4b    	vmov.f32	s30, s22
     6ba: eeb0 0ac0    	vabs.f32	s0, s0
     6be: ee00 fa0a    	vmla.f32	s30, s0, s20
     6c2: e019         	b	0x6f8 <Reset+0x2f0>     @ imm = #0x32
     6c4: bf00         	nop
     6c6: bf00         	nop
     6c8: ee30 0a09    	vadd.f32	s0, s0, s18
     6cc: eeb0 1a4b    	vmov.f32	s2, s22
     6d0: f241 0504    	movw	r5, #0x1004
     6d4: f2ce 0500    	movt	r5, #0xe000
     6d8: eeb0 0ac0    	vabs.f32	s0, s0
     6dc: ee00 1a0a    	vmla.f32	s2, s0, s20
     6e0: ee21 fa0c    	vmul.f32	s30, s2, s24
     6e4: e008         	b	0x6f8 <Reset+0x2f0>     @ imm = #0x10
     6e6: bf00         	nop
     6e8: ee00 2a10    	vmov	s0, r2
     6ec: eeb8 0ac0    	vcvt.f32.s32	s0, s0
     6f0: ee20 0a0d    	vmul.f32	s0, s0, s26
     6f4: ee20 fa0e    	vmul.f32	s30, s0, s28
     6f8: f8cd c088    	str.w	r12, [sp, #0x88]
     6fc: ea5f 70cb    	lsls.w	r0, r11, #0x1f
     700: 901b         	str	r0, [sp, #0x6c]
     702: 986b         	ldr	r0, [sp, #0x1ac]
     704: 901c         	str	r0, [sp, #0x70]
     706: 682e         	ldr	r6, [r5]
     708: d116         	bne	0x738 <Reset+0x330>     @ imm = #0x2c
     70a: ed8d fac0    	vstr	s30, [sp, #768]
     70e: f50d 7940    	add.w	r9, sp, #0x300
     712: a8b7         	add	r0, sp, #0x2dc
     714: ed9d 0ac0    	vldr	s0, [sp, #768]
     718: a924         	add	r1, sp, #0x90
     71a: f009 f9b9    	bl	0x9a90 <ram_probe::packed_probe::candidate> @ imm = #0x9372
     71e: 682c         	ldr	r4, [r5]
     720: ed8d fac0    	vstr	s30, [sp, #768]
     724: a8b4         	add	r0, sp, #0x2d0
     726: ed9d 0ac0    	vldr	s0, [sp, #768]
     72a: a96c         	add	r1, sp, #0x1b0
     72c: f006 ffec    	bl	0x7708 <ram_probe::packed_probe::control> @ imm = #0x6fd8
     730: 6829         	ldr	r1, [r5]
     732: 1ba0         	subs	r0, r4, r6
     734: 1b0d         	subs	r5, r1, r4
     736: e015         	b	0x764 <Reset+0x35c>     @ imm = #0x2a
     738: ed8d fac0    	vstr	s30, [sp, #768]
     73c: f50d 7940    	add.w	r9, sp, #0x300
     740: a8b4         	add	r0, sp, #0x2d0
     742: ed9d 0ac0    	vldr	s0, [sp, #768]
     746: a96c         	add	r1, sp, #0x1b0
     748: f006 ffde    	bl	0x7708 <ram_probe::packed_probe::control> @ imm = #0x6fbc
     74c: 682c         	ldr	r4, [r5]
     74e: ed8d fac0    	vstr	s30, [sp, #768]
     752: a8b7         	add	r0, sp, #0x2dc
     754: ed9d 0ac0    	vldr	s0, [sp, #768]
     758: a924         	add	r1, sp, #0x90
     75a: f009 f999    	bl	0x9a90 <ram_probe::packed_probe::candidate> @ imm = #0x9332
     75e: 6828         	ldr	r0, [r5]
     760: 1ba5         	subs	r5, r4, r6
     762: 1b00         	subs	r0, r0, r4
     764: f89d 22e5    	ldrb.w	r2, [sp, #0x2e5]
     768: f89d 12d9    	ldrb.w	r1, [sp, #0x2d9]
     76c: f1bb 0f1f    	cmp.w	r11, #0x1f
     770: f8cd 8074    	str.w	r8, [sp, #0x74]
     774: f67f af3c    	bls.w	0x5f0 <Reset+0x1e8>     @ imm = #-0x188
     778: 9b15         	ldr	r3, [sp, #0x54]
     77a: 46ae         	mov	lr, r5
     77c: e9cd 210b    	strd	r2, r1, [sp, #44]
     780: 4298         	cmp	r0, r3
     782: bf88         	it	hi
     784: 4603         	movhi	r3, r0
     786: 9c16         	ldr	r4, [sp, #0x58]
     788: f89d 92e4    	ldrb.w	r9, [sp, #0x2e4]
     78c: 42a5         	cmp	r5, r4
     78e: bf88         	it	hi
     790: 462c         	movhi	r4, r5
     792: 9a11         	ldr	r2, [sp, #0x44]
     794: 99b8         	ldr	r1, [sp, #0x2e0]
     796: 454a         	cmp	r2, r9
     798: bf98         	it	ls
     79a: 464a         	movls	r2, r9
     79c: 9211         	str	r2, [sp, #0x44]
     79e: 9a12         	ldr	r2, [sp, #0x48]
     7a0: 4291         	cmp	r1, r2
     7a2: bf88         	it	hi
     7a4: 460a         	movhi	r2, r1
     7a6: 991b         	ldr	r1, [sp, #0x6c]
     7a8: 9e23         	ldr	r6, [sp, #0x8c]
     7aa: f8dd c03c    	ldr.w	r12, [sp, #0x3c]
     7ae: 4406         	add	r6, r0
     7b0: 44ac         	add	r12, r5
     7b2: b949         	cbnz	r1, 0x7c8 <Reset+0x3c0> @ imm = #0x12
     7b4: f8cd c03c    	str.w	r12, [sp, #0x3c]
     7b8: e013         	b	0x7e2 <Reset+0x3da>     @ imm = #0x26
     7ba: bf00         	nop
     7bc: 00 00 c0 43  	.word	0x43c00000
     7c0: cd cc cc 3d  	.word	0x3dcccccd
     7c4: 00 00 00 30  	.word	0x30000000
     7c8: 9906         	ldr	r1, [sp, #0x18]
     7ca: 428e         	cmp	r6, r1
     7cc: bf88         	it	hi
     7ce: 4631         	movhi	r1, r6
     7d0: 2600         	movs	r6, #0x0
     7d2: 9106         	str	r1, [sp, #0x18]
     7d4: 9907         	ldr	r1, [sp, #0x1c]
     7d6: 458c         	cmp	r12, r1
     7d8: bf88         	it	hi
     7da: 4661         	movhi	r1, r12
     7dc: 9107         	str	r1, [sp, #0x1c]
     7de: 2100         	movs	r1, #0x0
     7e0: 910f         	str	r1, [sp, #0x3c]
     7e2: e9dd 1521    	ldrd	r1, r5, [sp, #132]
     7e6: 0649         	lsls	r1, r1, #0x19
     7e8: 990e         	ldr	r1, [sp, #0x38]
     7ea: f8dd c070    	ldr.w	r12, [sp, #0x70]
     7ee: 4405         	add	r5, r0
     7f0: 4471         	add	r1, lr
     7f2: 9212         	str	r2, [sp, #0x48]
     7f4: e9cd 3415    	strd	r3, r4, [sp, #84]
     7f8: d10c         	bne	0x814 <Reset+0x40c>     @ imm = #0x18
     7fa: 460a         	mov	r2, r1
     7fc: 9904         	ldr	r1, [sp, #0x10]
     7fe: 428d         	cmp	r5, r1
     800: bf88         	it	hi
     802: 4629         	movhi	r1, r5
     804: 2500         	movs	r5, #0x0
     806: 9104         	str	r1, [sp, #0x10]
     808: 9905         	ldr	r1, [sp, #0x14]
     80a: 428a         	cmp	r2, r1
     80c: bf88         	it	hi
     80e: 4611         	movhi	r1, r2
     810: 9105         	str	r1, [sp, #0x14]
     812: 2100         	movs	r1, #0x0
     814: 910e         	str	r1, [sp, #0x38]
     816: 996b         	ldr	r1, [sp, #0x1ac]
     818: 9b14         	ldr	r3, [sp, #0x50]
     81a: 4561         	cmp	r1, r12
     81c: 990b         	ldr	r1, [sp, #0x2c]
     81e: f081 0201    	eor	r2, r1, #0x1
     822: 990c         	ldr	r1, [sp, #0x30]
     824: e9cd 5622    	strd	r5, r6, [sp, #136]
     828: f081 0601    	eor	r6, r1, #0x1
     82c: 9917         	ldr	r1, [sp, #0x5c]
     82e: 4411         	add	r1, r2
     830: 9117         	str	r1, [sp, #0x5c]
     832: 9918         	ldr	r1, [sp, #0x60]
     834: 9c13         	ldr	r4, [sp, #0x4c]
     836: 4675         	mov	r5, lr
     838: 4473         	add	r3, lr
     83a: 4696         	mov	lr, r2
     83c: 46b0         	mov	r8, r6
     83e: 4431         	add	r1, r6
     840: 9118         	str	r1, [sp, #0x60]
     842: 9919         	ldr	r1, [sp, #0x64]
     844: 9a10         	ldr	r2, [sp, #0x40]
     846: 4404         	add	r4, r0
     848: f101 0101    	add.w	r1, r1, #0x1
     84c: 444a         	add	r2, r9
     84e: 9119         	str	r1, [sp, #0x64]
     850: e9cd 4313    	strd	r4, r3, [sp, #76]
     854: 9210         	str	r2, [sp, #0x40]
     856: f67f aecf    	bls.w	0x5f8 <Reset+0x1f0>     @ imm = #-0x262
     85a: 9908         	ldr	r1, [sp, #0x20]
     85c: 9a09         	ldr	r2, [sp, #0x24]
     85e: 4401         	add	r1, r0
     860: 9108         	str	r1, [sp, #0x20]
     862: 990a         	ldr	r1, [sp, #0x28]
     864: 3201         	adds	r2, #0x1
     866: 4288         	cmp	r0, r1
     868: 9209         	str	r2, [sp, #0x24]
     86a: bf88         	it	hi
     86c: 4601         	movhi	r1, r0
     86e: 910a         	str	r1, [sp, #0x28]
     870: e6c2         	b	0x5f8 <Reset+0x1f0>     @ imm = #-0x27c
     872: bf00         	nop
     874: bf00         	nop
     876: bf00         	nop
     878: f64f 71fc    	movw	r1, #0xfffc
     87c: f644 6045    	movw	r0, #0x4e45
     880: f2c2 0100    	movt	r1, #0x2000
     884: f2c4 404f    	movt	r0, #0x444f
     888: 6008         	str	r0, [r1]
     88a: bf00         	nop
     88c: bf00         	nop
     88e: bf00         	nop
     890: bf10         	yield
     892: bf10         	yield
     894: bf10         	yield
     896: bf10         	yield
     898: e7fa         	b	0x890 <Reset+0x488>     @ imm = #-0xc
     89a: d4d4         	bmi	0x846 <Reset+0x43e>     @ imm = #-0x58
     89c: d4d4         	bmi	0x848 <Reset+0x440>     @ imm = #-0x58
     89e: d4d4         	bmi	0x84a <Reset+0x442>     @ imm = #-0x58

000008a0 <orange_dsp::generated_packed::origin::<5>>:
     8a0: b580         	push	{r7, lr}
     8a2: 466f         	mov	r7, sp
     8a4: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
     8a8: b084         	sub	sp, #0x10
     8aa: edd1 ba01    	vldr	s23, [r1, #4]
     8ae: ed91 1a02    	vldr	s2, [r1, #8]
     8b2: eeb7 2aeb    	vcvt.f64.f32	d2, s23
     8b6: edd1 6a03    	vldr	s13, [r1, #12]
     8ba: ed9f 3be5    	vldr	d3, [pc, #916]          @ 0xc50 <orange_dsp::generated_packed::origin::<5>+0x3b0>
     8be: eef0 7a40    	vmov.f32	s15, s0
     8c2: edd1 ea04    	vldr	s29, [r1, #16]
     8c6: ee22 8b03    	vmul.f64	d8, d2, d3
     8ca: eeb7 2ac1    	vcvt.f64.f32	d2, s2
     8ce: ed91 6a06    	vldr	s12, [r1, #24]
     8d2: ed9f 3be1    	vldr	d3, [pc, #900]          @ 0xc58 <orange_dsp::generated_packed::origin::<5>+0x3b8>
     8d6: edd1 aa07    	vldr	s21, [r1, #28]
     8da: ed91 fa08    	vldr	s30, [r1, #32]
     8de: ee02 8b03    	vmla.f64	d8, d2, d3
     8e2: eeb7 2ae6    	vcvt.f64.f32	d2, s13
     8e6: ed91 ea09    	vldr	s28, [r1, #36]
     8ea: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0xc60 <orange_dsp::generated_packed::origin::<5>+0x3c0>
     8ee: eeb7 cacf    	vcvt.f64.f32	d12, s30
     8f2: ed91 ba0a    	vldr	s22, [r1, #40]
     8f6: ee02 8b03    	vmla.f64	d8, d2, d3
     8fa: eeb7 2ac0    	vcvt.f64.f32	d2, s0
     8fe: ed91 0a05    	vldr	s0, [r1, #20]
     902: ed9f 3bd9    	vldr	d3, [pc, #868]          @ 0xc68 <orange_dsp::generated_packed::origin::<5>+0x3c8>
     906: eeb7 dace    	vcvt.f64.f32	d13, s28
     90a: ed8d 1a02    	vstr	s2, [sp, #8]
     90e: ee22 3b03    	vmul.f64	d3, d2, d3
     912: eeb7 2ac0    	vcvt.f64.f32	d2, s0
     916: ed91 aa0b    	vldr	s20, [r1, #44]
     91a: ed9f 4bd5    	vldr	d4, [pc, #852]          @ 0xc70 <orange_dsp::generated_packed::origin::<5>+0x3d0>
     91e: ed8d 0a03    	vstr	s0, [sp, #12]
     922: eeb7 0aca    	vcvt.f64.f32	d0, s20
     926: ee22 4b04    	vmul.f64	d4, d2, d4
     92a: eeb7 2aee    	vcvt.f64.f32	d2, s29
     92e: edd1 fa0c    	vldr	s31, [r1, #48]
     932: ed9f 5bd1    	vldr	d5, [pc, #836]          @ 0xc78 <orange_dsp::generated_packed::origin::<5>+0x3d8>
     936: ee02 4b05    	vmla.f64	d4, d2, d5
     93a: eeb7 2ac6    	vcvt.f64.f32	d2, s12
     93e: ed9f 5bd0    	vldr	d5, [pc, #832]          @ 0xc80 <orange_dsp::generated_packed::origin::<5>+0x3e0>
     942: ee02 4b05    	vmla.f64	d4, d2, d5
     946: eeb7 5aea    	vcvt.f64.f32	d5, s21
     94a: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0xc88 <orange_dsp::generated_packed::origin::<5>+0x3e8>
     94e: ee05 4b09    	vmla.f64	d4, d5, d9
     952: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0xc90 <orange_dsp::generated_packed::origin::<5>+0x3f0>
     956: ee0c 4b09    	vmla.f64	d4, d12, d9
     95a: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0xc98 <orange_dsp::generated_packed::origin::<5>+0x3f8>
     95e: ee0d 4b09    	vmla.f64	d4, d13, d9
     962: eeb7 9acb    	vcvt.f64.f32	d9, s22
     966: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0xca0 <orange_dsp::generated_packed::origin::<5>+0x400>
     96a: ee09 4b01    	vmla.f64	d4, d9, d1
     96e: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0xca8 <orange_dsp::generated_packed::origin::<5>+0x408>
     972: ee00 4b01    	vmla.f64	d4, d0, d1
     976: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0xcc8 <orange_dsp::generated_packed::origin::<5>+0x428>
     97a: ee25 5b01    	vmul.f64	d5, d5, d1
     97e: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0xcd0 <orange_dsp::generated_packed::origin::<5>+0x430>
     982: ee02 5b01    	vmla.f64	d5, d2, d1
     986: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0xcd8 <orange_dsp::generated_packed::origin::<5>+0x438>
     98a: ee0c 5b01    	vmla.f64	d5, d12, d1
     98e: eeb7 caef    	vcvt.f64.f32	d12, s31
     992: ed9f 1bc7    	vldr	d1, [pc, #796]          @ 0xcb0 <orange_dsp::generated_packed::origin::<5>+0x410>
     996: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xce0 <orange_dsp::generated_packed::origin::<5>+0x440>
     99a: ee0c 4b01    	vmla.f64	d4, d12, d1
     99e: ed91 1a0d    	vldr	s2, [r1, #52]
     9a2: eddf 1afc    	vldr	s3, [pc, #1008]         @ 0xd94 <orange_dsp::generated_packed::origin::<5>+0x4f4>
     9a6: ee0d 5b02    	vmla.f64	d5, d13, d2
     9aa: eeb7 dac1    	vcvt.f64.f32	d13, s2
     9ae: ed9f 2bc2    	vldr	d2, [pc, #776]          @ 0xcb8 <orange_dsp::generated_packed::origin::<5>+0x418>
     9b2: ee0d 4b02    	vmla.f64	d4, d13, d2
     9b6: ed9f 2aec    	vldr	s4, [pc, #944]          @ 0xd68 <orange_dsp::generated_packed::origin::<5>+0x4c8>
     9ba: ee26 7a02    	vmul.f32	s14, s12, s4
     9be: ed9f 2aeb    	vldr	s4, [pc, #940]          @ 0xd6c <orange_dsp::generated_packed::origin::<5>+0x4cc>
     9c2: ee0a 7a82    	vmla.f32	s14, s21, s4
     9c6: ed9f 2af1    	vldr	s4, [pc, #964]          @ 0xd8c <orange_dsp::generated_packed::origin::<5>+0x4ec>
     9ca: ee26 6a02    	vmul.f32	s12, s12, s4
     9ce: ed9f 2af0    	vldr	s4, [pc, #960]          @ 0xd90 <orange_dsp::generated_packed::origin::<5>+0x4f0>
     9d2: ee0a 6a82    	vmla.f32	s12, s21, s4
     9d6: ed9f 2ae6    	vldr	s4, [pc, #920]          @ 0xd70 <orange_dsp::generated_packed::origin::<5>+0x4d0>
     9da: ee0f 7a02    	vmla.f32	s14, s30, s4
     9de: edd1 aa0e    	vldr	s21, [r1, #56]
     9e2: eeb7 2aea    	vcvt.f64.f32	d2, s21
     9e6: ee0f 6a21    	vmla.f32	s12, s30, s3
     9ea: eddf 1ad7    	vldr	s3, [pc, #860]          @ 0xd48 <orange_dsp::generated_packed::origin::<5>+0x4a8>
     9ee: ee2b faa1    	vmul.f32	s30, s23, s3
     9f2: edd1 1a00    	vldr	s3, [r1]
     9f6: eddf bad5    	vldr	s23, [pc, #852]         @ 0xd4c <orange_dsp::generated_packed::origin::<5>+0x4ac>
     9fa: ed8d 0b00    	vstr	d0, [sp]
     9fe: ee01 faab    	vmla.f32	s30, s3, s23
     a02: eddf 1adc    	vldr	s3, [pc, #880]          @ 0xd74 <orange_dsp::generated_packed::origin::<5>+0x4d4>
     a06: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0xcc0 <orange_dsp::generated_packed::origin::<5>+0x420>
     a0a: ee0e 7a21    	vmla.f32	s14, s28, s3
     a0e: eddf 1ae2    	vldr	s3, [pc, #904]          @ 0xd98 <orange_dsp::generated_packed::origin::<5>+0x4f8>
     a12: ee02 4b00    	vmla.f64	d4, d2, d0
     a16: ee0e 6a21    	vmla.f32	s12, s28, s3
     a1a: eddf 1ace    	vldr	s3, [pc, #824]          @ 0xd54 <orange_dsp::generated_packed::origin::<5>+0x4b4>
     a1e: ed9d 0a02    	vldr	s0, [sp, #8]
     a22: ed9f eacd    	vldr	s28, [pc, #820]         @ 0xd58 <orange_dsp::generated_packed::origin::<5>+0x4b8>
     a26: ee60 1a21    	vmul.f32	s3, s0, s3
     a2a: eddf 0ad5    	vldr	s1, [pc, #852]          @ 0xd80 <orange_dsp::generated_packed::origin::<5>+0x4e0>
     a2e: ee46 1a8e    	vmla.f32	s3, s13, s28
     a32: eddf 6ad1    	vldr	s13, [pc, #836]         @ 0xd78 <orange_dsp::generated_packed::origin::<5>+0x4d8>
     a36: ee0b 7a26    	vmla.f32	s14, s22, s13
     a3a: eddf 6ad8    	vldr	s13, [pc, #864]         @ 0xd9c <orange_dsp::generated_packed::origin::<5>+0x4fc>
     a3e: ee0b 6a26    	vmla.f32	s12, s22, s13
     a42: eddf 6ac6    	vldr	s13, [pc, #792]         @ 0xd5c <orange_dsp::generated_packed::origin::<5>+0x4bc>
     a46: ee4e 1aa6    	vmla.f32	s3, s29, s13
     a4a: eddf 6acc    	vldr	s13, [pc, #816]         @ 0xd7c <orange_dsp::generated_packed::origin::<5>+0x4dc>
     a4e: ee0a 7a26    	vmla.f32	s14, s20, s13
     a52: eddf 6ad3    	vldr	s13, [pc, #844]         @ 0xda0 <orange_dsp::generated_packed::origin::<5>+0x500>
     a56: ee0a 6a26    	vmla.f32	s12, s20, s13
     a5a: eddf 6abd    	vldr	s13, [pc, #756]         @ 0xd50 <orange_dsp::generated_packed::origin::<5>+0x4b0>
     a5e: ed9f bba2    	vldr	d11, [pc, #648]         @ 0xce8 <orange_dsp::generated_packed::origin::<5>+0x448>
     a62: ee0f 7aa0    	vmla.f32	s14, s31, s1
     a66: eddf 0acf    	vldr	s1, [pc, #828]          @ 0xda4 <orange_dsp::generated_packed::origin::<5>+0x504>
     a6a: ee09 5b0b    	vmla.f64	d5, d9, d11
     a6e: ee0f 6aa0    	vmla.f32	s12, s31, s1
     a72: eddf 0ac4    	vldr	s1, [pc, #784]          @ 0xd84 <orange_dsp::generated_packed::origin::<5>+0x4e4>
     a76: ed9f 9b9e    	vldr	d9, [pc, #632]          @ 0xcf0 <orange_dsp::generated_packed::origin::<5>+0x450>
     a7a: ee01 7a20    	vmla.f32	s14, s2, s1
     a7e: eddf 0aca    	vldr	s1, [pc, #808]          @ 0xda8 <orange_dsp::generated_packed::origin::<5>+0x508>
     a82: ed9d bb00    	vldr	d11, [sp]
     a86: ee01 6a20    	vmla.f32	s12, s2, s1
     a8a: ed9d 0a03    	vldr	s0, [sp, #12]
     a8e: ee0b 5b09    	vmla.f64	d5, d11, d9
     a92: ee07 faa6    	vmla.f32	s30, s15, s13
     a96: eddf 6ab2    	vldr	s13, [pc, #712]         @ 0xd60 <orange_dsp::generated_packed::origin::<5>+0x4c0>
     a9a: ed9f 9b97    	vldr	d9, [pc, #604]          @ 0xcf8 <orange_dsp::generated_packed::origin::<5>+0x458>
     a9e: ed9f 1ac3    	vldr	s2, [pc, #780]          @ 0xdac <orange_dsp::generated_packed::origin::<5>+0x50c>
     aa2: ee40 1a26    	vmla.f32	s3, s0, s13
     aa6: ee0c 5b09    	vmla.f64	d5, d12, d9
     aaa: eddf 6aae    	vldr	s13, [pc, #696]         @ 0xd64 <orange_dsp::generated_packed::origin::<5>+0x4c4>
     aae: ee0a 6a81    	vmla.f32	s12, s21, s2
     ab2: ed9f 9b93    	vldr	d9, [pc, #588]          @ 0xd00 <orange_dsp::generated_packed::origin::<5>+0x460>
     ab6: ed91 1a0f    	vldr	s2, [r1, #60]
     aba: ee27 0aa6    	vmul.f32	s0, s15, s13
     abe: ee0d 5b09    	vmla.f64	d5, d13, d9
     ac2: eddf 6ab1    	vldr	s13, [pc, #708]         @ 0xd88 <orange_dsp::generated_packed::origin::<5>+0x4e8>
     ac6: ed9f 9b90    	vldr	d9, [pc, #576]          @ 0xd08 <orange_dsp::generated_packed::origin::<5>+0x468>
     aca: ee0a 7aa6    	vmla.f32	s14, s21, s13
     ace: eddf 0ab8    	vldr	s1, [pc, #736]          @ 0xdb0 <orange_dsp::generated_packed::origin::<5>+0x510>
     ad2: ee02 5b09    	vmla.f64	d5, d2, d9
     ad6: eeb7 9ac1    	vcvt.f64.f32	d9, s2
     ada: edd1 6a10    	vldr	s13, [r1, #64]
     ade: ed9f ab8c    	vldr	d10, [pc, #560]         @ 0xd10 <orange_dsp::generated_packed::origin::<5>+0x470>
     ae2: eddf 7ab4    	vldr	s15, [pc, #720]         @ 0xdb4 <orange_dsp::generated_packed::origin::<5>+0x514>
     ae6: ee61 0a20    	vmul.f32	s1, s2, s1
     aea: ee46 0aa7    	vmla.f32	s1, s13, s15
     aee: edd1 7a11    	vldr	s15, [r1, #68]
     af2: ee09 5b0a    	vmla.f64	d5, d9, d10
     af6: eeb7 9ae6    	vcvt.f64.f32	d9, s13
     afa: ed9f 2aaf    	vldr	s4, [pc, #700]          @ 0xdb8 <orange_dsp::generated_packed::origin::<5>+0x518>
     afe: ed9f ab86    	vldr	d10, [pc, #536]         @ 0xd18 <orange_dsp::generated_packed::origin::<5>+0x478>
     b02: ee47 0a82    	vmla.f32	s1, s15, s4
     b06: ed91 1a12    	vldr	s2, [r1, #72]
     b0a: ee09 5b0a    	vmla.f64	d5, d9, d10
     b0e: eeb7 9ae7    	vcvt.f64.f32	d9, s15
     b12: ed9f 2aaa    	vldr	s4, [pc, #680]          @ 0xdbc <orange_dsp::generated_packed::origin::<5>+0x51c>
     b16: ed9f ab82    	vldr	d10, [pc, #520]         @ 0xd20 <orange_dsp::generated_packed::origin::<5>+0x480>
     b1a: ee41 0a02    	vmla.f32	s1, s2, s4
     b1e: ed9f 2aa8    	vldr	s4, [pc, #672]          @ 0xdc0 <orange_dsp::generated_packed::origin::<5>+0x520>
     b22: ee29 9b0a    	vmul.f64	d9, d9, d10
     b26: eeb7 aac1    	vcvt.f64.f32	d10, s2
     b2a: edd1 6a14    	vldr	s13, [r1, #80]
     b2e: ee21 ba02    	vmul.f32	s22, s2, s4
     b32: ed9f 2aa4    	vldr	s4, [pc, #656]          @ 0xdc4 <orange_dsp::generated_packed::origin::<5>+0x524>
     b36: ed9f cb7c    	vldr	d12, [pc, #496]         @ 0xd28 <orange_dsp::generated_packed::origin::<5>+0x488>
     b3a: ee07 ba82    	vmla.f32	s22, s15, s4
     b3e: edd1 7a13    	vldr	s15, [r1, #76]
     b42: eeb7 2ae6    	vcvt.f64.f32	d2, s13
     b46: ed91 1a16    	vldr	s2, [r1, #88]
     b4a: ee0a 9b0c    	vmla.f64	d9, d10, d12
     b4e: eeb7 cae7    	vcvt.f64.f32	d12, s15
     b52: ed9f ab77    	vldr	d10, [pc, #476]         @ 0xd30 <orange_dsp::generated_packed::origin::<5>+0x490>
     b56: ee30 7a07    	vadd.f32	s14, s0, s14
     b5a: ed9f db77    	vldr	d13, [pc, #476]         @ 0xd38 <orange_dsp::generated_packed::origin::<5>+0x498>
     b5e: ee30 6a06    	vadd.f32	s12, s0, s12
     b62: ee22 ab0a    	vmul.f64	d10, d2, d10
     b66: edd1 2a15    	vldr	s5, [r1, #84]
     b6a: ed9f 2a9a    	vldr	s4, [pc, #616]          @ 0xdd4 <orange_dsp::generated_packed::origin::<5>+0x534>
     b6e: ee0c ab0d    	vmla.f64	d10, d12, d13
     b72: eeb7 cae2    	vcvt.f64.f32	d12, s5
     b76: ed9f db72    	vldr	d13, [pc, #456]         @ 0xd40 <orange_dsp::generated_packed::origin::<5>+0x4a0>
     b7a: ee21 ea02    	vmul.f32	s28, s2, s4
     b7e: ed9f 1a96    	vldr	s2, [pc, #600]          @ 0xdd8 <orange_dsp::generated_packed::origin::<5>+0x538>
     b82: ee0c ab0d    	vmla.f64	d10, d12, d13
     b86: ed9f da90    	vldr	s26, [pc, #576]         @ 0xdc8 <orange_dsp::generated_packed::origin::<5>+0x528>
     b8a: ee02 ea81    	vmla.f32	s28, s5, s2
     b8e: ee07 ba8d    	vmla.f32	s22, s15, s26
     b92: ee30 ca21    	vadd.f32	s24, s0, s3
     b96: ee33 1b04    	vadd.f64	d1, d3, d4
     b9a: ee70 0a20    	vadd.f32	s1, s0, s1
     b9e: ee33 4b05    	vadd.f64	d4, d3, d5
     ba2: eeb7 cacc    	vcvt.f64.f32	d12, s24
     ba6: ee33 5b09    	vadd.f64	d5, d3, d9
     baa: eeb7 9ac7    	vcvt.f64.f32	d9, s14
     bae: ed9f 7a87    	vldr	s14, [pc, #540]         @ 0xdcc <orange_dsp::generated_packed::origin::<5>+0x52c>
     bb2: ee26 7a87    	vmul.f32	s14, s13, s14
     bb6: ee33 2b08    	vadd.f64	d2, d3, d8
     bba: eeb7 8acf    	vcvt.f64.f32	d8, s30
     bbe: ee33 3b0a    	vadd.f64	d3, d3, d10
     bc2: ed9f aa83    	vldr	s20, [pc, #524]         @ 0xdd0 <orange_dsp::generated_packed::origin::<5>+0x530>
     bc6: ed80 8b00    	vstr	d8, [r0]
     bca: eeb7 8ac6    	vcvt.f64.f32	d8, s12
     bce: ee3b 6a07    	vadd.f32	s12, s22, s14
     bd2: ee17 7a8a    	vnmls.f32	s14, s15, s20
     bd6: ed80 8b06    	vstr	d8, [r0, #24]
     bda: ee30 6a06    	vadd.f32	s12, s0, s12
     bde: ed80 9b04    	vstr	d9, [r0, #16]
     be2: eeb7 9ae0    	vcvt.f64.f32	d9, s1
     be6: eeb7 8ac6    	vcvt.f64.f32	d8, s12
     bea: ee30 6a07    	vadd.f32	s12, s0, s14
     bee: ee30 7a0e    	vadd.f32	s14, s0, s28
     bf2: ed80 8b0a    	vstr	d8, [r0, #40]
     bf6: eeb7 8ac6    	vcvt.f64.f32	d8, s12
     bfa: ed9f 6a78    	vldr	s12, [pc, #480]         @ 0xddc <orange_dsp::generated_packed::origin::<5>+0x53c>
     bfe: ed80 8b0c    	vstr	d8, [r0, #48]
     c02: eeb7 8ac7    	vcvt.f64.f32	d8, s14
     c06: ed9f 7a76    	vldr	s14, [pc, #472]         @ 0xde0 <orange_dsp::generated_packed::origin::<5>+0x540>
     c0a: ee27 6a86    	vmul.f32	s12, s15, s12
     c0e: ee06 6a87    	vmla.f32	s12, s13, s14
     c12: ed80 cb02    	vstr	d12, [r0, #8]
     c16: ed80 9b08    	vstr	d9, [r0, #32]
     c1a: ed80 8b0e    	vstr	d8, [r0, #56]
     c1e: ee30 0a06    	vadd.f32	s0, s0, s12
     c22: ed80 2b10    	vstr	d2, [r0, #64]
     c26: eeb7 0ac0    	vcvt.f64.f32	d0, s0
     c2a: ed80 1b12    	vstr	d1, [r0, #72]
     c2e: ed80 4b14    	vstr	d4, [r0, #80]
     c32: ed80 5b16    	vstr	d5, [r0, #88]
     c36: ed80 3b18    	vstr	d3, [r0, #96]
     c3a: ed80 0b1a    	vstr	d0, [r0, #104]
     c3e: ed80 0b1c    	vstr	d0, [r0, #112]
     c42: b004         	add	sp, #0x10
     c44: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
     c48: bd80         	pop	{r7, pc}
     c4a: bf00         	nop
     c4c: bf00         	nop
     c4e: bf00         	nop
     c50: c1 5d e1 c9  	.word	0xc9e15dc1
     c54: 86 54 e5 bf  	.word	0xbfe55486
     c58: 86 0c 11 0f  	.word	0x0f110c86
     c5c: c8 6c d7 3f  	.word	0x3fd76cc8
     c60: 7d 24 f3 72  	.word	0x72f3247d
     c64: 1b 11 d2 bf  	.word	0xbfd2111b
		...
     c70: 3d 68 b5 4d  	.word	0x4db5683d
     c74: 2d 2d e5 bf  	.word	0xbfe52d2d
     c78: 30 c6 34 16  	.word	0x1634c630
     c7c: b7 3a cc bf  	.word	0xbfcc3ab7
     c80: 75 22 80 1e  	.word	0x1e802275
     c84: ff ca ba bf  	.word	0xbfbacaff
     c88: 06 42 bd ec  	.word	0xecbd4206
     c8c: 6c ee e0 bf  	.word	0xbfe0ee6c
     c90: 94 54 5e e4  	.word	0xe45e5494
     c94: 65 da e0 bf  	.word	0xbfe0da65
     c98: 7f 02 92 0b  	.word	0x0b92027f
     c9c: f9 a6 d7 3f  	.word	0x3fd7a6f9
     ca0: 49 ec 9f 20  	.word	0x209fec49
     ca4: fa 74 8e bf  	.word	0xbf8e74fa
     ca8: 47 e4 bd ce  	.word	0xcebde447
     cac: 0e 2b 69 bf  	.word	0xbf692b0e
     cb0: f4 24 ee df  	.word	0xdfee24f4
     cb4: 96 e5 64 3f  	.word	0x3f64e596
     cb8: cf 1e ec 24  	.word	0x24ec1ecf
     cbc: 9c 63 8d bf  	.word	0xbf8d639c
     cc0: 30 f8 ed 0a  	.word	0x0aedf830
     cc4: b2 7b 40 bf  	.word	0xbf407bb2
     cc8: d7 f6 ca fa  	.word	0xfacaf6d7
     ccc: 26 e9 a6 bf  	.word	0xbfa6e926
     cd0: 3a 53 cc f5  	.word	0xf5cc533a
     cd4: 53 6e a1 3f  	.word	0x3fa16e53
     cd8: d2 bc 75 4e  	.word	0x4e75bcd2
     cdc: 0d ce a6 bf  	.word	0xbfa6ce0d
     ce0: 08 aa 3a 11  	.word	0x113aaa08
     ce4: f2 02 ca bf  	.word	0xbfca02f2
     ce8: 3b 35 7d dc  	.word	0xdc7d353b
     cec: f0 f5 d4 bf  	.word	0xbfd4f5f0
     cf0: 8a 7e 40 15  	.word	0x15407e8a
     cf4: 20 4b d2 bf  	.word	0xbfd24b20
     cf8: 58 aa ae 17  	.word	0x17aeaa58
     cfc: 84 6a d5 bf  	.word	0xbfd56a84
     d00: 1d ef 71 50  	.word	0x5071ef1d
     d04: b3 bf d2 3f  	.word	0x3fd2bfb3
     d08: 59 b9 c0 26  	.word	0x26c0b959
     d0c: 2e df e3 bf  	.word	0xbfe3df2e
     d10: 3b cc c8 6a  	.word	0x6ac8cc3b
     d14: c2 ed a6 bf  	.word	0xbfa6edc2
     d18: 30 b5 9f 60  	.word	0x609fb530
     d1c: ab e5 d3 bf  	.word	0xbfd3e5ab
     d20: 7b 84 3a 2a  	.word	0x2a3a847b
     d24: 5a 5f c0 bf  	.word	0xbfc05f5a
     d28: f7 82 13 a7  	.word	0xa71382f7
     d2c: 09 7c d7 3f  	.word	0x3fd77c09
     d30: 34 38 d2 5b  	.word	0x5bd23834
     d34: a6 d7 e0 bf  	.word	0xbfe0d7a6
     d38: ee 6f e8 6a  	.word	0x6ae86fee
     d3c: 04 d6 d0 bf  	.word	0xbfd0d604
     d40: 3b 36 33 54  	.word	0x5433363b
     d44: 06 e3 e4 bf  	.word	0xbfe4e306
     d48: 37 ee 32 35  	.word	0x3532ee37
     d4c: b0 0f 21 37  	.word	0x37210fb0
     d50: 24 7b b2 37  	.word	0x37b27b24
     d54: d0 a0 75 b6  	.word	0xb675a0d0
     d58: c4 71 3d 36  	.word	0x363d71c4
     d5c: bb 07 3b 38  	.word	0x383b07bb
     d60: 93 eb fb 34  	.word	0x34fbeb93
     d64: 00 00 00 00  	.word	0x00000000
     d68: 2e 27 35 b7  	.word	0xb735272e
     d6c: 2b 1a 6e 37  	.word	0x376e1a2b
     d70: 87 00 6d 37  	.word	0x376d0087
     d74: df 29 87 38  	.word	0x388729df
     d78: 0c fb f5 36  	.word	0x36f5fb0c
     d7c: 55 44 cb 35  	.word	0x35cb4455
     d80: 1c c5 a8 b5  	.word	0xb5a8c51c
     d84: 3d 5b ed 36  	.word	0x36ed5b3d
     d88: b3 1f 85 34  	.word	0x34851fb3
     d8c: d6 42 da b7  	.word	0xb7da42d6
     d90: 1e 70 0f 38  	.word	0x380f701e
     d94: 73 c6 0e 38  	.word	0x380ec673
     d98: 3e 82 bf b8  	.word	0xb8bf823e
     d9c: ff 9a 76 36  	.word	0x36769aff
     da0: 82 c8 4b 35  	.word	0x354bc882
     da4: da 32 29 b5  	.word	0xb52932da
     da8: 95 f5 6d 36  	.word	0x366df595
     dac: 44 76 05 34  	.word	0x34057644
     db0: eb 37 96 b6  	.word	0xb69637eb
     db4: dd 2c 15 38  	.word	0x38152cdd
     db8: cd a2 36 36  	.word	0x3636a2cd
     dbc: 55 fc 02 b7  	.word	0xb702fc55
     dc0: 51 02 a3 b7  	.word	0xb7a30251
     dc4: 00 b1 70 b7  	.word	0xb770b100
     dc8: 4c 93 ad 38  	.word	0x38ad934c
     dcc: 85 ce bb 36  	.word	0x36bbce85
     dd0: 4c 93 ad b8  	.word	0xb8ad934c
     dd4: bb 0d 1b 3c  	.word	0x3c1b0dbb
     dd8: 34 e1 f8 37  	.word	0x37f8e134
     ddc: 8b 99 2a bf  	.word	0xbf2a998b
     de0: c0 34 94 37  	.word	0x379434c0
     de4: d4 d4 d4 d4  	.word	0xd4d4d4d4

00000de8 <orange_dsp::generated_packed::update::<5>>:
     de8: b580         	push	{r7, lr}
     dea: 466f         	mov	r7, sp
     dec: e8bd 4080    	pop.w	{r7, lr}
     df0: f00b be5a    	b.w	0xcaa8 <orange_dsp::generated_condensed::update> @ imm = #0xbcb4
     df4: d4d4         	bmi	0xda0 <orange_dsp::generated_packed::origin::<5>+0x500> @ imm = #-0x58
     df6: d4d4         	bmi	0xda2 <orange_dsp::generated_packed::origin::<5>+0x502> @ imm = #-0x58

00000df8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>>:
     df8: b5f0         	push	{r4, r5, r6, r7, lr}
     dfa: af03         	add	r7, sp, #0xc
     dfc: f84d 8d04    	str	r8, [sp, #-4]!
     e00: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
     e04: eeba 1a0e    	vmov.f32	s2, #-1.500000e+01
     e08: ed91 5a00    	vldr	s10, [r1]
     e0c: ed9f 2a96    	vldr	s4, [pc, #600]          @ 0x1068 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x270>
     e10: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
     e14: eefe 1a00    	vmov.f32	s3, #-5.000000e-01
     e18: ee35 3a01    	vadd.f32	s6, s10, s2
     e1c: ee71 5a45    	vsub.f32	s11, s2, s10
     e20: eef7 0bc0    	vcvt.f32.f64	s1, d0
     e24: ee83 4a02    	vdiv.f32	s8, s6, s4
     e28: ed9f 3af7    	vldr	s6, [pc, #988]          @ 0x1208 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x410>
     e2c: eec5 5a82    	vdiv.f32	s11, s11, s4
     e30: eeb4 3a44    	vcmp.f32	s6, s8
     e34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e38: fe33 6a04    	vselgt.f32	s12, s6, s8
     e3c: ed9f 4af3    	vldr	s8, [pc, #972]          @ 0x120c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x414>
     e40: eeb4 6a44    	vcmp.f32	s12, s8
     e44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e48: fe74 7a06    	vselgt.f32	s15, s8, s12
     e4c: ed9f 6af0    	vldr	s12, [pc, #960]         @ 0x1210 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x418>
     e50: ee67 2a86    	vmul.f32	s5, s15, s12
     e54: ee72 3a87    	vadd.f32	s7, s5, s14
     e58: eef5 2a40    	vcmp.f32	s5, #0
     e5c: ee72 4aa1    	vadd.f32	s9, s5, s3
     e60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e64: eefd 3ae3    	vcvt.s32.f32	s7, s7
     e68: eefd 4ae4    	vcvt.s32.f32	s9, s9
     e6c: eeb4 3a65    	vcmp.f32	s6, s11
     e70: ee13 3a90    	vmov	r3, s7
     e74: ee14 2a90    	vmov	r2, s9
     e78: bfa8         	it	ge
     e7a: 461a         	movge	r2, r3
     e7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e80: fe73 2a25    	vselgt.f32	s5, s6, s11
     e84: eddf 5af8    	vldr	s11, [pc, #992]         @ 0x1268 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x470>
     e88: eeb0 aa65    	vmov.f32	s20, s11
     e8c: eeb0 ba65    	vmov.f32	s22, s11
     e90: eef4 2a44    	vcmp.f32	s5, s8
     e94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e98: fe34 8a22    	vselgt.f32	s16, s8, s5
     e9c: ee68 2a06    	vmul.f32	s5, s16, s12
     ea0: ee72 3aa1    	vadd.f32	s7, s5, s3
     ea4: eef5 2a40    	vcmp.f32	s5, #0
     ea8: ee72 4a87    	vadd.f32	s9, s5, s14
     eac: ee02 2a90    	vmov	s5, r2
     eb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     eb4: eefd 3ae3    	vcvt.s32.f32	s7, s7
     eb8: eefd 4ae4    	vcvt.s32.f32	s9, s9
     ebc: ee13 5a90    	vmov	r5, s7
     ec0: eef8 3ae2    	vcvt.f32.s32	s7, s5
     ec4: ee14 3a90    	vmov	r3, s9
     ec8: bfa8         	it	ge
     eca: 461d         	movge	r5, r3
     ecc: f04f 537e    	mov.w	r3, #0x3f800000
     ed0: ee02 5a90    	vmov	s5, r5
     ed4: eb03 52c2    	add.w	r2, r3, r2, lsl #23
     ed8: eb03 56c5    	add.w	r6, r3, r5, lsl #23
     edc: eef8 4ae2    	vcvt.f32.s32	s9, s5
     ee0: eddf 2ae5    	vldr	s5, [pc, #916]          @ 0x1278 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x480>
     ee4: ee43 7ae2    	vmls.f32	s15, s7, s5
     ee8: eddf 3ae5    	vldr	s7, [pc, #916]          @ 0x1280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x488>
     eec: eef0 6a63    	vmov.f32	s13, s7
     ef0: eeb0 9a63    	vmov.f32	s18, s7
     ef4: ee04 8ae2    	vmls.f32	s16, s9, s5
     ef8: eddf 4ae0    	vldr	s9, [pc, #896]          @ 0x127c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x484>
     efc: ee47 6aa4    	vmla.f32	s13, s15, s9
     f00: ee08 9a24    	vmla.f32	s18, s16, s9
     f04: ee28 ca08    	vmul.f32	s24, s16, s16
     f08: ee07 aaa6    	vmla.f32	s20, s15, s13
     f0c: eef7 6a00    	vmov.f32	s13, #1.000000e+00
     f10: ee08 ba09    	vmla.f32	s22, s16, s18
     f14: eeb0 9a47    	vmov.f32	s18, s14
     f18: ee07 9a8a    	vmla.f32	s18, s15, s20
     f1c: eeb0 aa47    	vmov.f32	s20, s14
     f20: ee08 aa0b    	vmla.f32	s20, s16, s22
     f24: ee27 baa7    	vmul.f32	s22, s15, s15
     f28: ee77 7aa6    	vadd.f32	s15, s15, s13
     f2c: ee38 8a26    	vadd.f32	s16, s16, s13
     f30: ee4b 7a09    	vmla.f32	s15, s22, s18
     f34: ee09 2a10    	vmov	s18, r2
     f38: eeb0 ba60    	vmov.f32	s22, s1
     f3c: ee0c 8a0a    	vmla.f32	s16, s24, s20
     f40: ee0a 6a10    	vmov	s20, r6
     f44: ee27 9a89    	vmul.f32	s18, s15, s18
     f48: eddf 7aca    	vldr	s15, [pc, #808]         @ 0x1274 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x47c>
     f4c: ee05 ba27    	vmla.f32	s22, s10, s15
     f50: ee28 aa0a    	vmul.f32	s20, s16, s20
     f54: ed9f 8acb    	vldr	s16, [pc, #812]         @ 0x1284 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x48c>
     f58: ee39 0a4a    	vsub.f32	s0, s18, s20
     f5c: ee10 ba08    	vnmls.f32	s22, s0, s16
     f60: ee1b 2a10    	vmov	r2, s22
     f64: f022 4200    	bic	r2, r2, #0x80000000
     f68: f1b2 4fff    	cmp.w	r2, #0x7f800000
     f6c: db04         	blt	0xf78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x180> @ imm = #0x8
     f6e: ed9f 0ac6    	vldr	s0, [pc, #792]          @ 0x1288 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x490>
     f72: e00b         	b	0xf8c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x194> @ imm = #0x16
     f74: bf00         	nop
     f76: bf00         	nop
     f78: ed9f 0ac4    	vldr	s0, [pc, #784]          @ 0x128c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x494>
     f7c: ee8b 0a00    	vdiv.f32	s0, s22, s0
     f80: ed9f cac3    	vldr	s24, [pc, #780]         @ 0x1290 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x498>
     f84: eeb0 0ac0    	vabs.f32	s0, s0
     f88: fe80 0a0c    	vmaxnm.f32	s0, s0, s24
     f8c: ee79 9a0a    	vadd.f32	s19, s18, s20
     f90: f04f 0e00    	mov.w	lr, #0x0
     f94: eef1 8a4b    	vneg.f32	s17, s22
     f98: f04f 0c00    	mov.w	r12, #0x0
     f9c: ed9f aabd    	vldr	s20, [pc, #756]         @ 0x1294 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x49c>
     fa0: 46f0         	mov	r8, lr
     fa2: ed9f babd    	vldr	s22, [pc, #756]         @ 0x1298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a0>
     fa6: ed9f 9abd    	vldr	s18, [pc, #756]         @ 0x129c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a4>
     faa: ed9f dab8    	vldr	s26, [pc, #736]         @ 0x128c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x494>
     fae: ed9f eab8    	vldr	s28, [pc, #736]         @ 0x1290 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x498>
     fb2: ed9f cabc    	vldr	s24, [pc, #752]         @ 0x12a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4ac>
     fb6: ee69 9a88    	vmul.f32	s19, s19, s16
     fba: f1be 0f10    	cmp.w	lr, #0x10
     fbe: bf18         	it	ne
     fc0: f108 0801    	addne.w	r8, r8, #0x1
     fc4: 2500         	movs	r5, #0x0
     fc6: eec9 9a82    	vdiv.f32	s19, s19, s4
     fca: ee79 9a8a    	vadd.f32	s19, s19, s20
     fce: ee19 4a90    	vmov	r4, s19
     fd2: eef0 aae9    	vabs.f32	s21, s19
     fd6: f024 4400    	bic	r4, r4, #0x80000000
     fda: eef4 aa4b    	vcmp.f32	s21, s22
     fde: f1b4 4fff    	cmp.w	r4, #0x7f800000
     fe2: f04f 0400    	mov.w	r4, #0x0
     fe6: bfa8         	it	ge
     fe8: 2401         	movge	r4, #0x1
     fea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     fee: bf48         	it	mi
     ff0: 2501         	movmi	r5, #0x1
     ff2: 432c         	orrs	r4, r5
     ff4: f040 812c    	bne.w	0x1250 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x458> @ imm = #0x258
     ff8: eec8 9aa9    	vdiv.f32	s19, s17, s19
     ffc: eeb4 0a49    	vcmp.f32	s0, s18
    1000: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1004: eef0 8ae9    	vabs.f32	s17, s19
    1008: d906         	bls	0x1018 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x220> @ imm = #0xc
    100a: f1be 0f10    	cmp.w	lr, #0x10
    100e: d127         	bne	0x1060 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x268> @ imm = #0x4e
    1010: e12e         	b	0x1270 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x478> @ imm = #0x25c
    1012: bf00         	nop
    1014: bf00         	nop
    1016: bf00         	nop
    1018: eef0 aac5    	vabs.f32	s21, s10
    101c: ed9f faa0    	vldr	s30, [pc, #640]         @ 0x12a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a8>
    1020: 2400         	movs	r4, #0x0
    1022: eef4 aa6a    	vcmp.f32	s21, s21
    1026: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    102a: fe56 aaaa    	vselvs.f32	s21, s13, s21
    102e: eef4 aa66    	vcmp.f32	s21, s13
    1032: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1036: fe7a aaa6    	vselgt.f32	s21, s21, s13
    103a: ee6a aa8f    	vmul.f32	s21, s21, s30
    103e: feca aacc    	vminnm.f32	s21, s21, s24
    1042: eef4 8a6a    	vcmp.f32	s17, s21
    1046: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    104a: bf98         	it	ls
    104c: 2401         	movls	r4, #0x1
    104e: f1be 0f10    	cmp.w	lr, #0x10
    1052: bf1c         	itt	ne
    1054: eef4 8a6a    	vcmpne.f32	s17, s21
    1058: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    105c: f240 80eb    	bls.w	0x1236 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #0x1d6
    1060: f04f 547e    	mov.w	r4, #0x3f800000
    1064: e00a         	b	0x107c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x284> @ imm = #0x14
    1066: bf00         	nop
    1068: f5 4a 39 3d  	.word	0x3d394af5
    106c: 00 bf 00 bf  	.word	0xbf00bf00
    1070: f5a4 0400    	sub.w	r4, r4, #0x800000
    1074: f1b4 5f66    	cmp.w	r4, #0x39800000
    1078: f000 80ce    	beq.w	0x1218 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x420> @ imm = #0x19c
    107c: ee0b 4a90    	vmov	s23, r4
    1080: eef0 aa45    	vmov.f32	s21, s10
    1084: ee49 aaab    	vmla.f32	s21, s19, s23
    1088: ee7a ba81    	vadd.f32	s23, s21, s2
    108c: ee71 fa6a    	vsub.f32	s31, s2, s21
    1090: eecb ba82    	vdiv.f32	s23, s23, s4
    1094: eecf fa82    	vdiv.f32	s31, s31, s4
    1098: eeb4 3a6b    	vcmp.f32	s6, s23
    109c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10a0: fe73 ba2b    	vselgt.f32	s23, s6, s23
    10a4: eef4 ba44    	vcmp.f32	s23, s8
    10a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10ac: fe74 ba2b    	vselgt.f32	s23, s8, s23
    10b0: ee6b ca86    	vmul.f32	s25, s23, s12
    10b4: ee7c da87    	vadd.f32	s27, s25, s14
    10b8: eef5 ca40    	vcmp.f32	s25, #0
    10bc: ee7c eaa1    	vadd.f32	s29, s25, s3
    10c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10c4: eefd daed    	vcvt.s32.f32	s27, s27
    10c8: eefd eaee    	vcvt.s32.f32	s29, s29
    10cc: eeb4 3a6f    	vcmp.f32	s6, s31
    10d0: ee1d 6a90    	vmov	r6, s27
    10d4: ee1e 5a90    	vmov	r5, s29
    10d8: bfa8         	it	ge
    10da: 4635         	movge	r5, r6
    10dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10e0: fe73 ca2f    	vselgt.f32	s25, s6, s31
    10e4: eef4 ca44    	vcmp.f32	s25, s8
    10e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10ec: fe74 ca2c    	vselgt.f32	s25, s8, s25
    10f0: ee6c da86    	vmul.f32	s27, s25, s12
    10f4: ee7d eaa1    	vadd.f32	s29, s27, s3
    10f8: eef5 da40    	vcmp.f32	s27, #0
    10fc: ee7d fa87    	vadd.f32	s31, s27, s14
    1100: ee0d 5a90    	vmov	s27, r5
    1104: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1108: eefd eaee    	vcvt.s32.f32	s29, s29
    110c: eef8 daed    	vcvt.f32.s32	s27, s27
    1110: ee1e 6a90    	vmov	r6, s29
    1114: eefd eaef    	vcvt.s32.f32	s29, s31
    1118: ee4d bae2    	vmls.f32	s23, s27, s5
    111c: eef0 da63    	vmov.f32	s27, s7
    1120: eef0 fa65    	vmov.f32	s31, s11
    1124: ee1e 2a90    	vmov	r2, s29
    1128: bfa8         	it	ge
    112a: 4616         	movge	r6, r2
    112c: eb03 52c5    	add.w	r2, r3, r5, lsl #23
    1130: ee0e 6a90    	vmov	s29, r6
    1134: eb03 55c6    	add.w	r5, r3, r6, lsl #23
    1138: ee4b daa4    	vmla.f32	s27, s23, s9
    113c: eef8 eaee    	vcvt.f32.s32	s29, s29
    1140: ee4e cae2    	vmls.f32	s25, s29, s5
    1144: eef0 ea63    	vmov.f32	s29, s7
    1148: ee4b faad    	vmla.f32	s31, s23, s27
    114c: eef0 da65    	vmov.f32	s27, s11
    1150: ee4c eaa4    	vmla.f32	s29, s25, s9
    1154: ee2c faac    	vmul.f32	s30, s25, s25
    1158: ee4c daae    	vmla.f32	s27, s25, s29
    115c: eef0 ea47    	vmov.f32	s29, s14
    1160: ee4b eaaf    	vmla.f32	s29, s23, s31
    1164: eef0 fa47    	vmov.f32	s31, s14
    1168: ee4c faad    	vmla.f32	s31, s25, s27
    116c: ee6b daab    	vmul.f32	s27, s23, s23
    1170: ee7b baa6    	vadd.f32	s23, s23, s13
    1174: ee7c caa6    	vadd.f32	s25, s25, s13
    1178: ee4d baae    	vmla.f32	s23, s27, s29
    117c: ee0d 5a90    	vmov	s27, r5
    1180: ee4f ca2f    	vmla.f32	s25, s30, s31
    1184: ee0f 2a10    	vmov	s30, r2
    1188: ee6b ba8f    	vmul.f32	s23, s23, s30
    118c: ee6c caad    	vmul.f32	s25, s25, s27
    1190: eef0 da60    	vmov.f32	s27, s1
    1194: ee4a daa7    	vmla.f32	s27, s21, s15
    1198: ee3b faec    	vsub.f32	s30, s23, s25
    119c: ee5f da08    	vnmls.f32	s27, s30, s16
    11a0: ee1d 2a90    	vmov	r2, s27
    11a4: f022 4200    	bic	r2, r2, #0x80000000
    11a8: f1b2 4fff    	cmp.w	r2, #0x7f800000
    11ac: f6bf af60    	bge.w	0x1070 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x278> @ imm = #-0x140
    11b0: ee8d fa8d    	vdiv.f32	s30, s27, s26
    11b4: eeb0 facf    	vabs.f32	s30, s30
    11b8: fecf ea0e    	vmaxnm.f32	s29, s30, s28
    11bc: eef4 ea40    	vcmp.f32	s29, s0
    11c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    11c4: f57f af54    	bpl.w	0x1070 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x278> @ imm = #-0x158
    11c8: f1be 0f10    	cmp.w	lr, #0x10
    11cc: edc1 aa00    	vstr	s21, [r1]
    11d0: d00e         	beq	0x11f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x3f8> @ imm = #0x1c
    11d2: ee7b 9aac    	vadd.f32	s19, s23, s25
    11d6: eeb0 5a6a    	vmov.f32	s10, s21
    11da: eef1 8a6d    	vneg.f32	s17, s27
    11de: eeb0 0a6e    	vmov.f32	s0, s29
    11e2: f1b8 0f10    	cmp.w	r8, #0x10
    11e6: f10c 0c01    	add.w	r12, r12, #0x1
    11ea: 46c6         	mov	lr, r8
    11ec: f77f aee3    	ble.w	0xfb6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x1be> @ imm = #-0x23a
    11f0: f64d 3039    	movw	r0, #0xdb39
    11f4: f64d 7228    	movw	r2, #0xdf28
    11f8: f2c0 0000    	movt	r0, #0x0
    11fc: f2c0 0200    	movt	r2, #0x0
    1200: 2128         	movs	r1, #0x28
    1202: f00a fe57    	bl	0xbeb4 <core::panicking::panic> @ imm = #0xacae
    1206: bf00         	nop
    1208: 00 00 a0 c2  	.word	0xc2a00000
    120c: 00 00 a0 42  	.word	0x42a00000
    1210: 3b aa b8 3f  	.word	0x3fb8aa3b
    1214: 00 bf 00 bf  	.word	0xbf00bf00
    1218: eeb4 0a49    	vcmp.f32	s0, s18
    121c: f10c 0c01    	add.w	r12, r12, #0x1
    1220: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1224: f04f 0400    	mov.w	r4, #0x0
    1228: d805         	bhi	0x1236 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #0xa
    122a: eef4 8a4c    	vcmp.f32	s17, s24
    122e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1232: bf98         	it	ls
    1234: 2401         	movls	r4, #0x1
    1236: ed80 0a00    	vstr	s0, [r0]
    123a: f880 c004    	strb.w	r12, [r0, #0x4]
    123e: 7144         	strb	r4, [r0, #0x5]
    1240: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    1244: f85d 8b04    	ldr	r8, [sp], #4
    1248: bdf0         	pop	{r4, r5, r6, r7, pc}
    124a: bf00         	nop
    124c: bf00         	nop
    124e: bf00         	nop
    1250: ed80 0a00    	vstr	s0, [r0]
    1254: 2100         	movs	r1, #0x0
    1256: f880 c004    	strb.w	r12, [r0, #0x4]
    125a: 7141         	strb	r1, [r0, #0x5]
    125c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    1260: f85d 8b04    	ldr	r8, [sp], #4
    1264: bdf0         	pop	{r4, r5, r6, r7, pc}
    1266: bf00         	nop
    1268: ab aa 2a 3e  	.word	0x3e2aaaab
    126c: 00 bf 00 bf  	.word	0xbf00bf00
    1270: 2400         	movs	r4, #0x0
    1272: e7e0         	b	0x1236 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #-0x40
    1274: 09 d5 19 b8  	.word	0xb819d509
    1278: 18 72 31 3f  	.word	0x3f317218
    127c: 89 88 08 3c  	.word	0x3c088889
    1280: ab aa 2a 3d  	.word	0x3d2aaaab
    1284: 77 cc 2b 31  	.word	0x312bcc77
    1288: 00 00 80 7f  	.word	0x7f800000
    128c: 0a d7 23 3c  	.word	0x3c23d70a
    1290: 00 00 00 00  	.word	0x00000000
    1294: 09 d5 19 38  	.word	0x3819d509
    1298: 08 e5 3c 1e  	.word	0x1e3ce508
    129c: 17 b7 d1 38  	.word	0x38d1b717
    12a0: bd 37 06 36  	.word	0x360637bd
    12a4: ac c5 a7 37  	.word	0x37a7c5ac

000012a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>>:
    12a8: b5f0         	push	{r4, r5, r6, r7, lr}
    12aa: af03         	add	r7, sp, #0xc
    12ac: f84d 8d04    	str	r8, [sp, #-4]!
    12b0: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    12b4: b088         	sub	sp, #0x20
    12b6: ed9f 3ae6    	vldr	s6, [pc, #920]          @ 0x1650 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3a8>
    12ba: ee22 4a03    	vmul.f32	s8, s4, s6
    12be: ed9f 2ae5    	vldr	s4, [pc, #916]          @ 0x1654 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3ac>
    12c2: ed9f 3ae5    	vldr	s6, [pc, #916]          @ 0x1658 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b0>
    12c6: ed9f 5ae5    	vldr	s10, [pc, #916]         @ 0x165c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b4>
    12ca: ee34 2a02    	vadd.f32	s4, s8, s4
    12ce: ee34 3a03    	vadd.f32	s6, s8, s6
    12d2: ee82 2a05    	vdiv.f32	s4, s4, s10
    12d6: ee83 3a05    	vdiv.f32	s6, s6, s10
    12da: eeb4 2a43    	vcmp.f32	s4, s6
    12de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    12e2: f200 83a1    	bhi.w	0x1a28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x780> @ imm = #0x742
    12e6: ed91 5a00    	vldr	s10, [r1]
    12ea: ed8d 5a01    	vstr	s10, [sp, #4]
    12ee: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    12f2: ed91 ea01    	vldr	s28, [r1, #4]
    12f6: ed9f 6b72    	vldr	d6, [pc, #456]          @ 0x14c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x218>
    12fa: 2600         	movs	r6, #0x0
    12fc: 2300         	movs	r3, #0x0
    12fe: ee05 1b06    	vmla.f64	d1, d5, d6
    1302: eeb7 6ace    	vcvt.f64.f32	d6, s28
    1306: eeff 4a00    	vmov.f32	s9, #-1.000000e+00
    130a: ed9f 5b6f    	vldr	d5, [pc, #444]          @ 0x14c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x220>
    130e: eeb0 7b41    	vmov.f64	d7, d1
    1312: eddf 2ad3    	vldr	s5, [pc, #844]          @ 0x1660 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b8>
    1316: ee06 7b05    	vmla.f64	d7, d6, d5
    131a: ed9f 6ad2    	vldr	s12, [pc, #840]         @ 0x1664 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3bc>
    131e: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    1322: ee24 ca06    	vmul.f32	s24, s8, s12
    1326: ed9f 5ad0    	vldr	s10, [pc, #832]         @ 0x1668 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c0>
    132a: eeb7 4bc7    	vcvt.f32.f64	s8, d7
    132e: eddf 5acf    	vldr	s11, [pc, #828]         @ 0x166c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c4>
    1332: eeb0 6a4c    	vmov.f32	s12, s24
    1336: ee04 6a05    	vmla.f32	s12, s8, s10
    133a: eef7 0bc0    	vcvt.f32.f64	s1, d0
    133e: eeb0 4a60    	vmov.f32	s8, s1
    1342: ee0e 4a25    	vmla.f32	s8, s28, s11
    1346: eeb4 2a46    	vcmp.f32	s4, s12
    134a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    134e: fe32 0a06    	vselgt.f32	s0, s4, s12
    1352: eef0 3ac4    	vabs.f32	s7, s8
    1356: eeb4 0a43    	vcmp.f32	s0, s6
    135a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    135e: eeb4 6a42    	vcmp.f32	s12, s4
    1362: fe33 fa00    	vselgt.f32	s30, s6, s0
    1366: ed9f 0ac2    	vldr	s0, [pc, #776]          @ 0x1670 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    136a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    136e: bfc8         	it	gt
    1370: 2601         	movgt	r6, #0x1
    1372: eeb4 6a43    	vcmp.f32	s12, s6
    1376: eeb0 6a40    	vmov.f32	s12, s0
    137a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    137e: eeb5 4a40    	vcmp.f32	s8, #0
    1382: eeb0 4a40    	vmov.f32	s8, s0
    1386: bf48         	it	mi
    1388: 2301         	movmi	r3, #0x1
    138a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    138e: bf48         	it	mi
    1390: eeb0 4a64    	vmovmi.f32	s8, s9
    1394: eeb0 8a40    	vmov.f32	s16, s0
    1398: eef4 3a62    	vcmp.f32	s7, s5
    139c: fe36 9a84    	vselgt.f32	s18, s13, s8
    13a0: eeb0 4a40    	vmov.f32	s8, s0
    13a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13a8: ea03 0306    	and.w	r3, r3, r6
    13ac: f280 80bb    	bge.w	0x1526 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x176
    13b0: ed9f 0ae0    	vldr	s0, [pc, #896]          @ 0x1734 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x48c>
    13b4: eef4 3a40    	vcmp.f32	s7, s0
    13b8: ed9f 6aad    	vldr	s12, [pc, #692]         @ 0x1670 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    13bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13c0: d912         	bls	0x13e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x140> @ imm = #0x24
    13c2: ed9f 0add    	vldr	s0, [pc, #884]          @ 0x1738 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x490>
    13c6: eef4 3a40    	vcmp.f32	s7, s0
    13ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13ce: d913         	bls	0x13f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x150> @ imm = #0x26
    13d0: ed9f 0ada    	vldr	s0, [pc, #872]          @ 0x173c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x494>
    13d4: ee33 4a80    	vadd.f32	s8, s7, s0
    13d8: eddf 3ad9    	vldr	s7, [pc, #868]          @ 0x1740 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x498>
    13dc: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    13e0: e012         	b	0x1408 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x160> @ imm = #0x24
    13e2: bf00         	nop
    13e4: bf00         	nop
    13e6: bf00         	nop
    13e8: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    13ec: eeb0 4a46    	vmov.f32	s8, s12
    13f0: e00e         	b	0x1410 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x168> @ imm = #0x1c
    13f2: bf00         	nop
    13f4: bf00         	nop
    13f6: bf00         	nop
    13f8: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x1744 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x49c>
    13fc: ee33 4a80    	vadd.f32	s8, s7, s0
    1400: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    1404: eddf 3ad0    	vldr	s7, [pc, #832]          @ 0x1748 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4a0>
    1408: ee04 0a23    	vmla.f32	s0, s8, s7
    140c: ee29 4a23    	vmul.f32	s8, s18, s7
    1410: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    1414: ee33 0ac0    	vsub.f32	s0, s7, s0
    1418: fec0 3a06    	vmaxnm.f32	s7, s0, s12
    141c: eeb1 0a44    	vneg.f32	s0, s8
    1420: eef5 3a40    	vcmp.f32	s7, #0
    1424: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1428: d942         	bls	0x14b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x208> @ imm = #0x84
    142a: eeb0 4acf    	vabs.f32	s8, s30
    142e: eeb4 4a63    	vcmp.f32	s8, s7
    1432: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1436: d94b         	bls	0x14d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x228> @ imm = #0x96
    1438: ee83 8a84    	vdiv.f32	s16, s7, s8
    143c: ee28 4a08    	vmul.f32	s8, s16, s16
    1440: ee24 4a04    	vmul.f32	s8, s8, s8
    1444: ee24 4a04    	vmul.f32	s8, s8, s8
    1448: ee24 9a04    	vmul.f32	s18, s8, s8
    144c: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    1450: ee39 6a04    	vadd.f32	s12, s18, s8
    1454: eeb0 aa44    	vmov.f32	s20, s8
    1458: eeb4 6a44    	vcmp.f32	s12, s8
    145c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1460: d009         	beq	0x1476 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x1ce> @ imm = #0x12
    1462: eeb0 aa46    	vmov.f32	s20, s12
    1466: eeb1 aaca    	vsqrt.f32	s20, s20
    146a: eeb1 aaca    	vsqrt.f32	s20, s20
    146e: eeb1 aaca    	vsqrt.f32	s20, s20
    1472: eeb1 aaca    	vsqrt.f32	s20, s20
    1476: ee84 4a0a    	vdiv.f32	s8, s8, s20
    147a: eeb4 fa4f    	vcmp.f32	s30, s30
    147e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1482: ee84 aa06    	vdiv.f32	s20, s8, s12
    1486: f180 82db    	bvs.w	0x1a40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x798> @ imm = #0x5b6
    148a: ee1f 6a10    	vmov	r6, s30
    148e: f04f 557e    	mov.w	r5, #0x3f800000
    1492: f365 061e    	bfi	r6, r5, #0, #31
    1496: ee0b 6a10    	vmov	s22, r6
    149a: ee2b 6a23    	vmul.f32	s12, s22, s7
    149e: ee26 6a04    	vmul.f32	s12, s12, s8
    14a2: ee2b 4a0a    	vmul.f32	s8, s22, s20
    14a6: ee68 3a09    	vmul.f32	s7, s16, s18
    14aa: ee23 8a8a    	vmul.f32	s16, s7, s20
    14ae: e03a         	b	0x1526 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x74
    14b0: eeb0 8a46    	vmov.f32	s16, s12
    14b4: eeb0 4a46    	vmov.f32	s8, s12
    14b8: e035         	b	0x1526 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x6a
    14ba: bf00         	nop
    14bc: bf00         	nop
    14be: bf00         	nop
    14c0: a2 0c d2 2e  	.word	0x2ed20ca2
    14c4: ca fe ef 3f  	.word	0x3feffeca
    14c8: 1f 89 9b cf  	.word	0xcf9b891f
    14cc: ab 32 9c bf  	.word	0xbf9c32ab
    14d0: ee8f 4a23    	vdiv.f32	s8, s30, s7
    14d4: eeb7 8a00    	vmov.f32	s16, #1.000000e+00
    14d8: ee24 4a04    	vmul.f32	s8, s8, s8
    14dc: eeb0 9a48    	vmov.f32	s18, s16
    14e0: ee24 4a04    	vmul.f32	s8, s8, s8
    14e4: ee24 4a04    	vmul.f32	s8, s8, s8
    14e8: ee24 4a04    	vmul.f32	s8, s8, s8
    14ec: ee34 6a08    	vadd.f32	s12, s8, s16
    14f0: eeb4 6a48    	vcmp.f32	s12, s16
    14f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    14f8: d009         	beq	0x150e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x266> @ imm = #0x12
    14fa: eeb0 9a46    	vmov.f32	s18, s12
    14fe: eeb1 9ac9    	vsqrt.f32	s18, s18
    1502: eeb1 9ac9    	vsqrt.f32	s18, s18
    1506: eeb1 9ac9    	vsqrt.f32	s18, s18
    150a: eeb1 9ac9    	vsqrt.f32	s18, s18
    150e: ee88 9a09    	vdiv.f32	s18, s16, s18
    1512: ee2f 4a04    	vmul.f32	s8, s30, s8
    1516: ee89 8a06    	vdiv.f32	s16, s18, s12
    151a: ee84 4a23    	vdiv.f32	s8, s8, s7
    151e: ee2f 6a09    	vmul.f32	s12, s30, s18
    1522: ee24 4a08    	vmul.f32	s8, s8, s16
    1526: 2b00         	cmp	r3, #0x0
    1528: ee7e 3a46    	vsub.f32	s7, s28, s12
    152c: ed9f 6ad6    	vldr	s12, [pc, #856]         @ 0x1888 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e0>
    1530: ee20 4a04    	vmul.f32	s8, s0, s8
    1534: ed9f 9ad5    	vldr	s18, [pc, #852]         @ 0x188c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e4>
    1538: fe09 6a06    	vseleq.f32	s12, s18, s12
    153c: ee13 3a90    	vmov	r3, s7
    1540: ed9f aad3    	vldr	s20, [pc, #844]         @ 0x1890 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e8>
    1544: ee26 0a08    	vmul.f32	s0, s12, s16
    1548: ed9f 6ad2    	vldr	s12, [pc, #840]         @ 0x1894 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5ec>
    154c: ee24 6a06    	vmul.f32	s12, s8, s12
    1550: f023 4300    	bic	r3, r3, #0x80000000
    1554: f1b3 4fff    	cmp.w	r3, #0x7f800000
    1558: db02         	blt	0x1560 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2b8> @ imm = #0x4
    155a: ed9f 9acf    	vldr	s18, [pc, #828]         @ 0x1898 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f0>
    155e: e009         	b	0x1574 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2cc> @ imm = #0x12
    1560: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    1564: ed9f 8a42    	vldr	s16, [pc, #264]         @ 0x1670 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    1568: ee83 4a84    	vdiv.f32	s8, s7, s8
    156c: eeb0 4ac4    	vabs.f32	s8, s8
    1570: fe84 9a08    	vmaxnm.f32	s18, s8, s16
    1574: ee00 6a0a    	vmla.f32	s12, s0, s20
    1578: eeb7 da08    	vmov.f32	s26, #1.500000e+00
    157c: eeb1 aa63    	vneg.f32	s20, s7
    1580: 2500         	movs	r5, #0x0
    1582: f04f 0800    	mov.w	r8, #0x0
    1586: ed9f bac5    	vldr	s22, [pc, #788]         @ 0x189c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f4>
    158a: eddf cac5    	vldr	s25, [pc, #788]         @ 0x18a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f8>
    158e: f04f 5c7e    	mov.w	r12, #0x3f800000
    1592: ed9f 4a37    	vldr	s8, [pc, #220]          @ 0x1670 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    1596: f20f 4eec    	adr.w	lr, #1260
    159a: eddf ea66    	vldr	s29, [pc, #408]         @ 0x1734 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x48c>
    159e: 462c         	mov	r4, r5
    15a0: eddf fa65    	vldr	s31, [pc, #404]         @ 0x1738 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x490>
    15a4: ee36 0a26    	vadd.f32	s0, s12, s13
    15a8: 2d10         	cmp	r5, #0x10
    15aa: bf18         	it	ne
    15ac: 3401         	addne	r4, #0x1
    15ae: 2300         	movs	r3, #0x0
    15b0: ee10 6a10    	vmov	r6, s0
    15b4: eeb0 6ac0    	vabs.f32	s12, s0
    15b8: f026 4600    	bic	r6, r6, #0x80000000
    15bc: eeb4 6a4b    	vcmp.f32	s12, s22
    15c0: f1b6 4fff    	cmp.w	r6, #0x7f800000
    15c4: f04f 0600    	mov.w	r6, #0x0
    15c8: bfa8         	it	ge
    15ca: 2601         	movge	r6, #0x1
    15cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    15d0: bf48         	it	mi
    15d2: 2301         	movmi	r3, #0x1
    15d4: 4333         	orrs	r3, r6
    15d6: f040 8217    	bne.w	0x1a08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x760> @ imm = #0x42e
    15da: ee8a ba00    	vdiv.f32	s22, s20, s0
    15de: eeb4 9a6c    	vcmp.f32	s18, s25
    15e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    15e6: eeb0 7acb    	vabs.f32	s14, s22
    15ea: d905         	bls	0x15f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x350> @ imm = #0xa
    15ec: 2d10         	cmp	r5, #0x10
    15ee: d128         	bne	0x1642 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x39a> @ imm = #0x50
    15f0: e216         	b	0x1a20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x778> @ imm = #0x42c
    15f2: bf00         	nop
    15f4: bf00         	nop
    15f6: bf00         	nop
    15f8: eeb0 0ace    	vabs.f32	s0, s28
    15fc: ed9f 6aee    	vldr	s12, [pc, #952]         @ 0x19b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x710>
    1600: 2600         	movs	r6, #0x0
    1602: eeb4 0a40    	vcmp.f32	s0, s0
    1606: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    160a: fe16 0a80    	vselvs.f32	s0, s13, s0
    160e: eeb4 0a66    	vcmp.f32	s0, s13
    1612: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1616: fe30 0a26    	vselgt.f32	s0, s0, s13
    161a: ee20 0a06    	vmul.f32	s0, s0, s12
    161e: ed9f 6ae7    	vldr	s12, [pc, #924]         @ 0x19bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x714>
    1622: fe80 0a46    	vminnm.f32	s0, s0, s12
    1626: eeb4 7a40    	vcmp.f32	s14, s0
    162a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    162e: bf98         	it	ls
    1630: 2601         	movls	r6, #0x1
    1632: 2d10         	cmp	r5, #0x10
    1634: bf1c         	itt	ne
    1636: eeb4 7a40    	vcmpne.f32	s14, s0
    163a: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    163e: f240 81d5    	bls.w	0x19ec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x744> @ imm = #0x3aa
    1642: f04f 567e    	mov.w	r6, #0x3f800000
    1646: ed8d 7a02    	vstr	s14, [sp, #8]
    164a: ed8d fa03    	vstr	s30, [sp, #12]
    164e: e01b         	b	0x1688 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3e0> @ imm = #0x36
    1650: 00 80 bb 47  	.word	0x47bb8000
    1654: 00 24 74 cb  	.word	0xcb742400
    1658: 00 24 74 4b  	.word	0x4b742400
    165c: 00 a0 0c 48  	.word	0x480ca000
    1660: 0a d7 23 3d  	.word	0x3d23d70a
    1664: 50 d0 e8 36  	.word	0x36e8d050
    1668: 79 61 2e 43  	.word	0x432e6179
    166c: ab aa a0 b8  	.word	0xb8a0aaab
    1670: 00 00 00 00  	.word	0x00000000
    1674: 00 bf 00 bf  	.word	0xbf00bf00
    1678: eeb0 1b48    	vmov.f64	d1, d8
    167c: f5a6 0600    	sub.w	r6, r6, #0x800000
    1680: f1b6 5f66    	cmp.w	r6, #0x39800000
    1684: f000 819c    	beq.w	0x19c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x718> @ imm = #0x338
    1688: ee00 6a10    	vmov	s0, r6
    168c: eef0 3a4e    	vmov.f32	s7, s28
    1690: ed9f 7bef    	vldr	d7, [pc, #956]          @ 0x1a50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7a8>
    1694: eeb0 8b41    	vmov.f64	d8, d1
    1698: eeb0 6a4c    	vmov.f32	s12, s24
    169c: ee4b 3a00    	vmla.f32	s7, s22, s0
    16a0: eef0 9a44    	vmov.f32	s19, s8
    16a4: eef0 ca44    	vmov.f32	s25, s8
    16a8: eeb0 fa44    	vmov.f32	s30, s8
    16ac: eeb7 aae3    	vcvt.f64.f32	d10, s7
    16b0: ee0a 1b07    	vmla.f64	d1, d10, d7
    16b4: eef0 aa44    	vmov.f32	s21, s8
    16b8: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    16bc: eeb0 1a60    	vmov.f32	s2, s1
    16c0: ee03 1aa5    	vmla.f32	s2, s7, s11
    16c4: ee00 6a05    	vmla.f32	s12, s0, s10
    16c8: eef0 dac1    	vabs.f32	s27, s2
    16cc: eeb4 2a46    	vcmp.f32	s4, s12
    16d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16d4: fe32 0a06    	vselgt.f32	s0, s4, s12
    16d8: eeb4 0a43    	vcmp.f32	s0, s6
    16dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16e0: eeb5 1a40    	vcmp.f32	s2, #0
    16e4: eeb0 1a44    	vmov.f32	s2, s8
    16e8: fe33 0a00    	vselgt.f32	s0, s6, s0
    16ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16f0: bf48         	it	mi
    16f2: eeb0 1a64    	vmovmi.f32	s2, s9
    16f6: eef4 da62    	vcmp.f32	s27, s5
    16fa: fe76 ba81    	vselgt.f32	s23, s13, s2
    16fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1702: f280 80fd    	bge.w	0x1900 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x1fa
    1706: eeb0 fa44    	vmov.f32	s30, s8
    170a: eeb0 aa4d    	vmov.f32	s20, s26
    170e: eef4 da6e    	vcmp.f32	s27, s29
    1712: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1716: d927         	bls	0x1768 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4c0> @ imm = #0x4e
    1718: eef4 da6f    	vcmp.f32	s27, s31
    171c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1720: d916         	bls	0x1750 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4a8> @ imm = #0x2c
    1722: ed9f 1acf    	vldr	s2, [pc, #828]          @ 0x1a60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b8>
    1726: eeb0 aa08    	vmov.f32	s20, #3.000000e+00
    172a: ee3d 1a81    	vadd.f32	s2, s27, s2
    172e: ed9f 7acd    	vldr	s14, [pc, #820]         @ 0x1a64 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7bc>
    1732: e015         	b	0x1760 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4b8> @ imm = #0x2a
    1734: 7c f2 b0 3a  	.word	0x3ab0f27c
    1738: a6 9b c4 3b  	.word	0x3bc49ba6
    173c: a6 9b c4 bb  	.word	0xbbc49ba6
    1740: 79 78 b0 43  	.word	0x43b07879
    1744: 7c f2 b0 ba  	.word	0xbab0f27c
    1748: 53 4a a1 43  	.word	0x43a14a53
    174c: 00 bf 00 bf  	.word	0xbf00bf00
    1750: ed9f 1ac1    	vldr	s2, [pc, #772]          @ 0x1a58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b0>
    1754: eeb0 aa4d    	vmov.f32	s20, s26
    1758: ee3d 1a81    	vadd.f32	s2, s27, s2
    175c: ed9f 7abf    	vldr	s14, [pc, #764]         @ 0x1a5c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b4>
    1760: ee01 aa07    	vmla.f32	s20, s2, s14
    1764: ee2b fa87    	vmul.f32	s30, s23, s14
    1768: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    176c: eef1 9a4f    	vneg.f32	s19, s30
    1770: ee31 1a4a    	vsub.f32	s2, s2, s20
    1774: fec1 da04    	vmaxnm.f32	s27, s2, s8
    1778: eef5 da40    	vcmp.f32	s27, #0
    177c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1780: d97a         	bls	0x1878 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5d0> @ imm = #0xf4
    1782: eeb0 aac0    	vabs.f32	s20, s0
    1786: eeb4 aa6d    	vcmp.f32	s20, s27
    178a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    178e: f240 808b    	bls.w	0x18a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x600> @ imm = #0x116
    1792: eeb0 1a65    	vmov.f32	s2, s11
    1796: eecd aa8a    	vdiv.f32	s21, s27, s20
    179a: eeb0 7a6f    	vmov.f32	s14, s31
    179e: eef0 fa62    	vmov.f32	s31, s5
    17a2: eef0 2a64    	vmov.f32	s5, s9
    17a6: eef0 5a4e    	vmov.f32	s11, s28
    17aa: eef0 4a41    	vmov.f32	s9, s2
    17ae: ee2a 1aaa    	vmul.f32	s2, s21, s21
    17b2: eef0 1a66    	vmov.f32	s3, s13
    17b6: eeb0 ea49    	vmov.f32	s28, s18
    17ba: eeb0 9a60    	vmov.f32	s18, s1
    17be: eef0 0a4c    	vmov.f32	s1, s24
    17c2: ee21 1a01    	vmul.f32	s2, s2, s2
    17c6: eeb0 ca4d    	vmov.f32	s24, s26
    17ca: eeb0 da45    	vmov.f32	s26, s10
    17ce: eeb0 5a6e    	vmov.f32	s10, s29
    17d2: eeb0 fa66    	vmov.f32	s30, s13
    17d6: ee21 1a01    	vmul.f32	s2, s2, s2
    17da: ee61 ba01    	vmul.f32	s23, s2, s2
    17de: ee3b aaa6    	vadd.f32	s20, s23, s13
    17e2: eeb4 aa66    	vcmp.f32	s20, s13
    17e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17ea: d009         	beq	0x1800 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x558> @ imm = #0x12
    17ec: eeb0 fa4a    	vmov.f32	s30, s20
    17f0: eeb1 facf    	vsqrt.f32	s30, s30
    17f4: eeb1 facf    	vsqrt.f32	s30, s30
    17f8: eeb1 facf    	vsqrt.f32	s30, s30
    17fc: eeb1 facf    	vsqrt.f32	s30, s30
    1800: eec1 ea8f    	vdiv.f32	s29, s3, s30
    1804: eddf ca98    	vldr	s25, [pc, #608]         @ 0x1a68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c0>
    1808: eef0 6a61    	vmov.f32	s13, s3
    180c: eeb4 0a40    	vcmp.f32	s0, s0
    1810: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1814: ee8e aa8a    	vdiv.f32	s20, s29, s20
    1818: eeb0 fa6c    	vmov.f32	s30, s25
    181c: bf7f         	itttt	vc
    181e: ee10 3a10    	vmovvc	r3, s0
    1822: f36c 031e    	bfivc	r3, r12, #0, #31
    1826: ee01 3a10    	vmovvc	s2, r3
    182a: ee61 1a2d    	vmulvc.f32	s3, s2, s27
    182e: bf7c         	itt	vc
    1830: ee61 caae    	vmulvc.f32	s25, s3, s29
    1834: ee21 fa0a    	vmulvc.f32	s30, s2, s20
    1838: ee2a 1aab    	vmul.f32	s2, s21, s23
    183c: eef0 ea45    	vmov.f32	s29, s10
    1840: eeb0 5a4d    	vmov.f32	s10, s26
    1844: eeb0 da4c    	vmov.f32	s26, s24
    1848: eeb0 ca60    	vmov.f32	s24, s1
    184c: eef0 0a49    	vmov.f32	s1, s18
    1850: ee61 aa0a    	vmul.f32	s21, s2, s20
    1854: eeb0 1a64    	vmov.f32	s2, s9
    1858: eef0 4a62    	vmov.f32	s9, s5
    185c: eef0 2a6f    	vmov.f32	s5, s31
    1860: eeb0 9a4e    	vmov.f32	s18, s28
    1864: eeb0 ea65    	vmov.f32	s28, s11
    1868: eef0 5a41    	vmov.f32	s11, s2
    186c: eef0 fa47    	vmov.f32	s31, s14
    1870: e046         	b	0x1900 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x8c
    1872: bf00         	nop
    1874: bf00         	nop
    1876: bf00         	nop
    1878: eef0 ca44    	vmov.f32	s25, s8
    187c: eef0 aa44    	vmov.f32	s21, s8
    1880: eeb0 fa44    	vmov.f32	s30, s8
    1884: e03c         	b	0x1900 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x78
    1886: bf00         	nop
    1888: 79 61 2e c3  	.word	0xc32e6179
    188c: 00 00 00 80  	.word	0x80000000
    1890: 5e 95 e1 bc  	.word	0xbce1955e
    1894: ab aa a0 38  	.word	0x38a0aaab
    1898: 00 00 80 7f  	.word	0x7f800000
    189c: 08 e5 3c 1e  	.word	0x1e3ce508
    18a0: 17 b7 d1 38  	.word	0x38d1b717
    18a4: 00 bf 00 bf  	.word	0xbf00bf00
    18a8: ee80 1a2d    	vdiv.f32	s2, s0, s27
    18ac: eef0 aa66    	vmov.f32	s21, s13
    18b0: ee21 1a01    	vmul.f32	s2, s2, s2
    18b4: ee21 1a01    	vmul.f32	s2, s2, s2
    18b8: ee21 1a01    	vmul.f32	s2, s2, s2
    18bc: ee21 aa01    	vmul.f32	s20, s2, s2
    18c0: ee3a fa26    	vadd.f32	s30, s20, s13
    18c4: eeb4 fa66    	vcmp.f32	s30, s13
    18c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    18cc: d009         	beq	0x18e2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x63a> @ imm = #0x12
    18ce: eef0 aa4f    	vmov.f32	s21, s30
    18d2: eef1 aaea    	vsqrt.f32	s21, s21
    18d6: eef1 aaea    	vsqrt.f32	s21, s21
    18da: eef1 aaea    	vsqrt.f32	s21, s21
    18de: eef1 aaea    	vsqrt.f32	s21, s21
    18e2: ee86 1aaa    	vdiv.f32	s2, s13, s21
    18e6: ee60 1a0a    	vmul.f32	s3, s0, s20
    18ea: eec1 aa0f    	vdiv.f32	s21, s2, s30
    18ee: eec1 1aad    	vdiv.f32	s3, s3, s27
    18f2: ee60 ca01    	vmul.f32	s25, s0, s2
    18f6: ee21 faaa    	vmul.f32	s30, s3, s21
    18fa: bf00         	nop
    18fc: bf00         	nop
    18fe: bf00         	nop
    1900: ee73 daec    	vsub.f32	s27, s7, s25
    1904: ee1d 3a90    	vmov	r3, s27
    1908: f023 4300    	bic	r3, r3, #0x80000000
    190c: f1b3 4fff    	cmp.w	r3, #0x7f800000
    1910: f6bf aeb2    	bge.w	0x1678 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3d0> @ imm = #-0x29c
    1914: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    1918: ee8d 1a81    	vdiv.f32	s2, s27, s2
    191c: eeb0 1ac1    	vabs.f32	s2, s2
    1920: fec1 ba04    	vmaxnm.f32	s23, s2, s8
    1924: eef4 ba49    	vcmp.f32	s23, s18
    1928: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    192c: f57f aea4    	bpl.w	0x1678 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3d0> @ imm = #-0x2b8
    1930: 4673         	mov	r3, lr
    1932: eeb4 6a43    	vcmp.f32	s12, s6
    1936: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    193a: bf48         	it	mi
    193c: 3304         	addmi	r3, #0x4
    193e: eeb4 6a42    	vcmp.f32	s12, s4
    1942: ed9f 6a4a    	vldr	s12, [pc, #296]         @ 0x1a6c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c4>
    1946: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    194a: ed93 1a00    	vldr	s2, [r3]
    194e: edc1 3a01    	vstr	s7, [r1, #4]
    1952: fe31 6a06    	vselgt.f32	s12, s2, s12
    1956: 2d10         	cmp	r5, #0x10
    1958: ed9f 9a46    	vldr	s18, [pc, #280]         @ 0x1a74 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7cc>
    195c: ed9d 1a01    	vldr	s2, [sp, #4]
    1960: eddf ca46    	vldr	s25, [pc, #280]         @ 0x1a7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d4>
    1964: ed81 1a00    	vstr	s2, [r1]
    1968: ed9f ba43    	vldr	s22, [pc, #268]         @ 0x1a78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d0>
    196c: d019         	beq	0x19a2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x6fa> @ imm = #0x32
    196e: ee29 1a8f    	vmul.f32	s2, s19, s30
    1972: eeb0 ea63    	vmov.f32	s28, s7
    1976: ee66 1a2a    	vmul.f32	s3, s12, s21
    197a: ed9f 6a3d    	vldr	s12, [pc, #244]         @ 0x1a70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c8>
    197e: eeb1 aa6d    	vneg.f32	s20, s27
    1982: eeb0 fa40    	vmov.f32	s30, s0
    1986: ee21 6a06    	vmul.f32	s12, s2, s12
    198a: 2c10         	cmp	r4, #0x10
    198c: ee01 6a89    	vmla.f32	s12, s3, s18
    1990: eeb0 9a6b    	vmov.f32	s18, s23
    1994: eeb0 1b48    	vmov.f64	d1, d8
    1998: f108 0801    	add.w	r8, r8, #0x1
    199c: 4625         	mov	r5, r4
    199e: f77f ae01    	ble.w	0x15a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2fc> @ imm = #-0x3fe
    19a2: f64d 3039    	movw	r0, #0xdb39
    19a6: f64d 7228    	movw	r2, #0xdf28
    19aa: f2c0 0000    	movt	r0, #0x0
    19ae: f2c0 0200    	movt	r2, #0x0
    19b2: 2128         	movs	r1, #0x28
    19b4: f00a fa7e    	bl	0xbeb4 <core::panicking::panic> @ imm = #0xa4fc
    19b8: bd 37 06 36  	.word	0x360637bd
    19bc: ac c5 a7 37  	.word	0x37a7c5ac
    19c0: ed9f 0a2e    	vldr	s0, [pc, #184]          @ 0x1a7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d4>
    19c4: f108 0801    	add.w	r8, r8, #0x1
    19c8: eeb4 9a40    	vcmp.f32	s18, s0
    19cc: 2600         	movs	r6, #0x0
    19ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19d2: d809         	bhi	0x19e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x740> @ imm = #0x12
    19d4: ed9f 0a2a    	vldr	s0, [pc, #168]          @ 0x1a80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d8>
    19d8: ed9d 1a02    	vldr	s2, [sp, #8]
    19dc: eeb4 1a40    	vcmp.f32	s2, s0
    19e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19e4: bf98         	it	ls
    19e6: 2601         	movls	r6, #0x1
    19e8: ed9d fa03    	vldr	s30, [sp, #12]
    19ec: ed82 fa00    	vstr	s30, [r2]
    19f0: ed80 9a00    	vstr	s18, [r0]
    19f4: f880 8004    	strb.w	r8, [r0, #0x4]
    19f8: 7146         	strb	r6, [r0, #0x5]
    19fa: b008         	add	sp, #0x20
    19fc: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    1a00: f85d 8b04    	ldr	r8, [sp], #4
    1a04: bdf0         	pop	{r4, r5, r6, r7, pc}
    1a06: bf00         	nop
    1a08: ed80 9a00    	vstr	s18, [r0]
    1a0c: 2100         	movs	r1, #0x0
    1a0e: f880 8004    	strb.w	r8, [r0, #0x4]
    1a12: 7141         	strb	r1, [r0, #0x5]
    1a14: b008         	add	sp, #0x20
    1a16: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    1a1a: f85d 8b04    	ldr	r8, [sp], #4
    1a1e: bdf0         	pop	{r4, r5, r6, r7, pc}
    1a20: 2600         	movs	r6, #0x0
    1a22: e7e3         	b	0x19ec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x744> @ imm = #-0x3a
    1a24: bf00         	nop
    1a26: bf00         	nop
    1a28: f64d 20a3    	movw	r0, #0xdaa3
    1a2c: f64d 7248    	movw	r2, #0xdf48
    1a30: f2c0 0000    	movt	r0, #0x0
    1a34: f2c0 0200    	movt	r2, #0x0
    1a38: a904         	add	r1, sp, #0x10
    1a3a: f00a fa37    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0xa46e
    1a3e: bf00         	nop
    1a40: ed9f 4a09    	vldr	s8, [pc, #36]           @ 0x1a68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c0>
    1a44: eeb0 6a44    	vmov.f32	s12, s8
    1a48: e52d         	b	0x14a6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x1fe> @ imm = #-0x5a6
    1a4a: bf00         	nop
    1a4c: bf00         	nop
    1a4e: bf00         	nop
    1a50: 1f 89 9b cf  	.word	0xcf9b891f
    1a54: ab 32 9c bf  	.word	0xbf9c32ab
    1a58: 7c f2 b0 ba  	.word	0xbab0f27c
    1a5c: 53 4a a1 43  	.word	0x43a14a53
    1a60: a6 9b c4 bb  	.word	0xbbc49ba6
    1a64: 79 78 b0 43  	.word	0x43b07879
    1a68: 00 00 c0 7f  	.word	0x7fc00000
    1a6c: 00 00 00 80  	.word	0x80000000
    1a70: ab aa a0 38  	.word	0x38a0aaab
    1a74: 5e 95 e1 bc  	.word	0xbce1955e
    1a78: 08 e5 3c 1e  	.word	0x1e3ce508
    1a7c: 17 b7 d1 38  	.word	0x38d1b717
    1a80: ac c5 a7 37  	.word	0x37a7c5ac
    1a84: 00 00 00 80  	.word	0x80000000
    1a88: 79 61 2e c3  	.word	0xc32e6179
    1a8c: d4 d4 d4 d4  	.word	0xd4d4d4d4

00001a90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>>:
    1a90: b5f0         	push	{r4, r5, r6, r7, lr}
    1a92: af03         	add	r7, sp, #0xc
    1a94: e92d 0f00    	push.w	{r8, r9, r10, r11}
    1a98: b081         	sub	sp, #0x4
    1a9a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    1a9e: b09a         	sub	sp, #0x68
    1aa0: ed9f 1ab5    	vldr	s2, [pc, #724]          @ 0x1d78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2e8>
    1aa4: 2600         	movs	r6, #0x0
    1aa6: ee20 2a01    	vmul.f32	s4, s0, s2
    1aaa: ed9f 0ab4    	vldr	s0, [pc, #720]          @ 0x1d7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2ec>
    1aae: ed9f 1ab4    	vldr	s2, [pc, #720]          @ 0x1d80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f0>
    1ab2: 9610         	str	r6, [sp, #0x40]
    1ab4: ed9f 3ab3    	vldr	s6, [pc, #716]          @ 0x1d84 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f4>
    1ab8: 960f         	str	r6, [sp, #0x3c]
    1aba: ee32 0a00    	vadd.f32	s0, s4, s0
    1abe: 960c         	str	r6, [sp, #0x30]
    1ac0: ee32 1a01    	vadd.f32	s2, s4, s2
    1ac4: e9cd 660d    	strd	r6, r6, [sp, #52]
    1ac8: ee80 0a03    	vdiv.f32	s0, s0, s6
    1acc: ee81 1a03    	vdiv.f32	s2, s2, s6
    1ad0: eeb4 0a41    	vcmp.f32	s0, s2
    1ad4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ad8: f200 86da    	bhi.w	0x2890 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe00> @ imm = #0xdb4
    1adc: ed91 3a01    	vldr	s6, [r1, #4]
    1ae0: ed91 7a02    	vldr	s14, [r1, #8]
    1ae4: eeb7 4ac3    	vcvt.f64.f32	d4, s6
    1ae8: ed8d 3a01    	vstr	s6, [sp, #4]
    1aec: ed9f 5b7c    	vldr	d5, [pc, #496]          @ 0x1ce0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x250>
    1af0: edd1 ba03    	vldr	s23, [r1, #12]
    1af4: eddf faa4    	vldr	s31, [pc, #656]         @ 0x1d88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f8>
    1af8: ed92 6b12    	vldr	d6, [r2, #72]
    1afc: e9cd 3002    	strd	r3, r0, [sp, #8]
    1b00: ee04 6b05    	vmla.f64	d6, d4, d5
    1b04: 2300         	movs	r3, #0x0
    1b06: eeb7 4ac7    	vcvt.f64.f32	d4, s14
    1b0a: eddf 1aa0    	vldr	s3, [pc, #640]          @ 0x1d8c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    1b0e: ed9f 3b76    	vldr	d3, [pc, #472]          @ 0x1ce8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x258>
    1b12: eeb0 5b46    	vmov.f64	d5, d6
    1b16: ed8d 7a0b    	vstr	s14, [sp, #44]
    1b1a: eeb7 aa00    	vmov.f32	s20, #1.000000e+00
    1b1e: ee04 5b03    	vmla.f64	d5, d4, d3
    1b22: eeb7 4aeb    	vcvt.f64.f32	d4, s23
    1b26: ed9f 3b72    	vldr	d3, [pc, #456]          @ 0x1cf0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x260>
    1b2a: ee04 5b03    	vmla.f64	d5, d4, d3
    1b2e: ed9f 4a98    	vldr	s8, [pc, #608]          @ 0x1d90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x300>
    1b32: eef0 4a61    	vmov.f32	s9, s3
    1b36: ee22 4a04    	vmul.f32	s8, s4, s8
    1b3a: ed9f 3a96    	vldr	s6, [pc, #600]          @ 0x1d94 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x304>
    1b3e: eeb7 2bc5    	vcvt.f32.f64	s4, d5
    1b42: ed8d 4a07    	vstr	s8, [sp, #28]
    1b46: ed8d 6b08    	vstr	d6, [sp, #32]
    1b4a: ee02 4a03    	vmla.f32	s8, s4, s6
    1b4e: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x1f14 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x484>
    1b52: ed92 2b04    	vldr	d2, [r2, #16]
    1b56: eeb7 6bc2    	vcvt.f32.f64	s12, d2
    1b5a: ed8d 6a06    	vstr	s12, [sp, #24]
    1b5e: ee07 6a03    	vmla.f32	s12, s14, s6
    1b62: eebf 3a00    	vmov.f32	s6, #-1.000000e+00
    1b66: eeb4 0a44    	vcmp.f32	s0, s8
    1b6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b6e: ee0b 6aaf    	vmla.f32	s12, s23, s31
    1b72: fe30 2a04    	vselgt.f32	s4, s0, s8
    1b76: eeb4 2a41    	vcmp.f32	s4, s2
    1b7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b7e: eeb4 4a40    	vcmp.f32	s8, s0
    1b82: fe71 9a02    	vselgt.f32	s19, s2, s4
    1b86: eeb0 2a61    	vmov.f32	s4, s3
    1b8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b8e: bfc8         	it	gt
    1b90: 2301         	movgt	r3, #0x1
    1b92: eeb4 4a41    	vcmp.f32	s8, s2
    1b96: eeb0 4a61    	vmov.f32	s8, s3
    1b9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b9e: eeb5 6a40    	vcmp.f32	s12, #0
    1ba2: eeb0 5ac6    	vabs.f32	s10, s12
    1ba6: bf48         	it	mi
    1ba8: 2601         	movmi	r6, #0x1
    1baa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bae: bf48         	it	mi
    1bb0: eeb0 2a43    	vmovmi.f32	s4, s6
    1bb4: ea06 0603    	and.w	r6, r6, r3
    1bb8: fe3a 6a02    	vselgt.f32	s12, s20, s4
    1bbc: ed9f 2ad6    	vldr	s4, [pc, #856]          @ 0x1f18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x488>
    1bc0: eeb4 5a42    	vcmp.f32	s10, s4
    1bc4: eeb0 2a61    	vmov.f32	s4, s3
    1bc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bcc: f280 80bf    	bge.w	0x1d4e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x17e
    1bd0: ed9f 2ad2    	vldr	s4, [pc, #840]          @ 0x1f1c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x48c>
    1bd4: eeb4 5a42    	vcmp.f32	s10, s4
    1bd8: ed9f 2a6c    	vldr	s4, [pc, #432]          @ 0x1d8c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    1bdc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1be0: d912         	bls	0x1c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x178> @ imm = #0x24
    1be2: ed9f 4acf    	vldr	s8, [pc, #828]          @ 0x1f20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x490>
    1be6: eeb4 5a44    	vcmp.f32	s10, s8
    1bea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bee: d913         	bls	0x1c18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x188> @ imm = #0x26
    1bf0: ed9f 4acc    	vldr	s8, [pc, #816]          @ 0x1f24 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x494>
    1bf4: ee35 5a04    	vadd.f32	s10, s10, s8
    1bf8: ed9f 7acb    	vldr	s14, [pc, #812]         @ 0x1f28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x498>
    1bfc: eeb0 4a08    	vmov.f32	s8, #3.000000e+00
    1c00: e012         	b	0x1c28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x198> @ imm = #0x24
    1c02: bf00         	nop
    1c04: bf00         	nop
    1c06: bf00         	nop
    1c08: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    1c0c: eeb0 6a42    	vmov.f32	s12, s4
    1c10: e00e         	b	0x1c30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x1a0> @ imm = #0x1c
    1c12: bf00         	nop
    1c14: bf00         	nop
    1c16: bf00         	nop
    1c18: ed9f 4ac4    	vldr	s8, [pc, #784]          @ 0x1f2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x49c>
    1c1c: ee35 5a04    	vadd.f32	s10, s10, s8
    1c20: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    1c24: ed9f 7ac2    	vldr	s14, [pc, #776]         @ 0x1f30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a0>
    1c28: ee05 4a07    	vmla.f32	s8, s10, s14
    1c2c: ee26 6a07    	vmul.f32	s12, s12, s14
    1c30: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    1c34: eef1 1a46    	vneg.f32	s3, s12
    1c38: ee35 4a44    	vsub.f32	s8, s10, s8
    1c3c: fe84 5a02    	vmaxnm.f32	s10, s8, s4
    1c40: eeb5 5a40    	vcmp.f32	s10, #0
    1c44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c48: d942         	bls	0x1cd0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x240> @ imm = #0x84
    1c4a: eeb0 2ae9    	vabs.f32	s4, s19
    1c4e: eeb4 2a45    	vcmp.f32	s4, s10
    1c52: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c56: d94f         	bls	0x1cf8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x268> @ imm = #0x9e
    1c58: ee85 4a02    	vdiv.f32	s8, s10, s4
    1c5c: ee24 2a04    	vmul.f32	s4, s8, s8
    1c60: ee22 2a02    	vmul.f32	s4, s4, s4
    1c64: ee22 2a02    	vmul.f32	s4, s4, s4
    1c68: ee22 6a02    	vmul.f32	s12, s4, s4
    1c6c: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    1c70: ee36 7a02    	vadd.f32	s14, s12, s4
    1c74: eef0 0a42    	vmov.f32	s1, s4
    1c78: eeb4 7a42    	vcmp.f32	s14, s4
    1c7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c80: d009         	beq	0x1c96 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x206> @ imm = #0x12
    1c82: eef0 0a47    	vmov.f32	s1, s14
    1c86: eef1 0ae0    	vsqrt.f32	s1, s1
    1c8a: eef1 0ae0    	vsqrt.f32	s1, s1
    1c8e: eef1 0ae0    	vsqrt.f32	s1, s1
    1c92: eef1 0ae0    	vsqrt.f32	s1, s1
    1c96: ee82 2a20    	vdiv.f32	s4, s4, s1
    1c9a: eef4 9a69    	vcmp.f32	s19, s19
    1c9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ca2: ee82 7a07    	vdiv.f32	s14, s4, s14
    1ca6: f180 85ff    	bvs.w	0x28a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe18> @ imm = #0xbfe
    1caa: ee19 3a90    	vmov	r3, s19
    1cae: f04f 557e    	mov.w	r5, #0x3f800000
    1cb2: f365 031e    	bfi	r3, r5, #0, #31
    1cb6: ee00 3a90    	vmov	s1, r3
    1cba: ee20 5a85    	vmul.f32	s10, s1, s10
    1cbe: ee60 4a87    	vmul.f32	s9, s1, s14
    1cc2: ee25 2a02    	vmul.f32	s4, s10, s4
    1cc6: ee24 4a06    	vmul.f32	s8, s8, s12
    1cca: ee24 4a07    	vmul.f32	s8, s8, s14
    1cce: e03e         	b	0x1d4e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x7c
    1cd0: eeb0 4a42    	vmov.f32	s8, s4
    1cd4: eef0 4a42    	vmov.f32	s9, s4
    1cd8: e039         	b	0x1d4e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x72
    1cda: bf00         	nop
    1cdc: bf00         	nop
    1cde: bf00         	nop
    1ce0: a5 94 a7 50  	.word	0x50a794a5
    1ce4: 09 2c d5 3f  	.word	0x3fd52c09
    1ce8: 9c 9e 91 65  	.word	0x65919e9c
    1cec: 97 57 e8 bf  	.word	0xbfe85797
    1cf0: 76 43 71 a5  	.word	0xa5714376
    1cf4: f8 73 e2 3f  	.word	0x3fe273f8
    1cf8: ee89 2a85    	vdiv.f32	s4, s19, s10
    1cfc: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    1d00: ee22 2a02    	vmul.f32	s4, s4, s4
    1d04: eeb0 7a46    	vmov.f32	s14, s12
    1d08: ee22 2a02    	vmul.f32	s4, s4, s4
    1d0c: ee22 2a02    	vmul.f32	s4, s4, s4
    1d10: ee22 2a02    	vmul.f32	s4, s4, s4
    1d14: ee32 4a06    	vadd.f32	s8, s4, s12
    1d18: eeb4 4a46    	vcmp.f32	s8, s12
    1d1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d20: d009         	beq	0x1d36 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2a6> @ imm = #0x12
    1d22: eeb0 7a44    	vmov.f32	s14, s8
    1d26: eeb1 7ac7    	vsqrt.f32	s14, s14
    1d2a: eeb1 7ac7    	vsqrt.f32	s14, s14
    1d2e: eeb1 7ac7    	vsqrt.f32	s14, s14
    1d32: eeb1 7ac7    	vsqrt.f32	s14, s14
    1d36: ee86 6a07    	vdiv.f32	s12, s12, s14
    1d3a: ee29 2a82    	vmul.f32	s4, s19, s4
    1d3e: ee86 4a04    	vdiv.f32	s8, s12, s8
    1d42: ee82 5a05    	vdiv.f32	s10, s4, s10
    1d46: ee29 2a86    	vmul.f32	s4, s19, s12
    1d4a: ee65 4a04    	vmul.f32	s9, s10, s8
    1d4e: ed9d 3a0b    	vldr	s6, [sp, #44]
    1d52: 2e00         	cmp	r6, #0x0
    1d54: ee33 2a42    	vsub.f32	s4, s6, s4
    1d58: ed9f 5a76    	vldr	s10, [pc, #472]         @ 0x1f34 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a4>
    1d5c: ed9f 3a76    	vldr	s6, [pc, #472]          @ 0x1f38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a8>
    1d60: fe03 7a05    	vseleq.f32	s14, s6, s10
    1d64: ee12 3a10    	vmov	r3, s4
    1d68: f023 4300    	bic	r3, r3, #0x80000000
    1d6c: f1b3 4fff    	cmp.w	r3, #0x7f800000
    1d70: db12         	blt	0x1d98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x308> @ imm = #0x24
    1d72: ed9f 6a72    	vldr	s12, [pc, #456]         @ 0x1f3c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4ac>
    1d76: e019         	b	0x1dac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x31c> @ imm = #0x32
    1d78: 00 80 bb 47  	.word	0x47bb8000
    1d7c: 00 24 74 cb  	.word	0xcb742400
    1d80: 00 24 74 4b  	.word	0x4b742400
    1d84: 00 a0 0c 48  	.word	0x480ca000
    1d88: 46 af b3 38  	.word	0x38b3af46
    1d8c: 00 00 00 00  	.word	0x00000000
    1d90: 50 d0 e8 36  	.word	0x36e8d050
    1d94: 79 61 2e 43  	.word	0x432e6179
    1d98: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    1d9c: ed1f 6a05    	vldr	s12, [pc, #-20]         @ 0x1d8c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    1da0: ee82 5a05    	vdiv.f32	s10, s4, s10
    1da4: eeb0 5ac5    	vabs.f32	s10, s10
    1da8: fe85 6a06    	vmaxnm.f32	s12, s10, s12
    1dac: ed92 5b06    	vldr	d5, [r2, #24]
    1db0: ed9d 3a0b    	vldr	s6, [sp, #44]
    1db4: eef6 8a00    	vmov.f32	s17, #5.000000e-01
    1db8: eef7 0bc5    	vcvt.f32.f64	s1, d5
    1dbc: ee61 1aa4    	vmul.f32	s3, s3, s9
    1dc0: eddf 2a5f    	vldr	s5, [pc, #380]          @ 0x1f40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b0>
    1dc4: eeb0 5a60    	vmov.f32	s10, s1
    1dc8: ee03 5a2f    	vmla.f32	s10, s6, s31
    1dcc: ed9f 3a5d    	vldr	s6, [pc, #372]          @ 0x1f44 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b4>
    1dd0: eecb 5a83    	vdiv.f32	s11, s23, s6
    1dd4: ed9f 3a5c    	vldr	s6, [pc, #368]          @ 0x1f48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b8>
    1dd8: ee0b 5a83    	vmla.f32	s10, s23, s6
    1ddc: ed9f 3a5b    	vldr	s6, [pc, #364]          @ 0x1f4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4bc>
    1de0: eef0 6ae5    	vabs.f32	s13, s11
    1de4: eef4 6a68    	vcmp.f32	s13, s17
    1de8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1dec: f280 80b8    	bge.w	0x1f60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4d0> @ imm = #0x170
    1df0: eddf 6a57    	vldr	s13, [pc, #348]         @ 0x1f50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c0>
    1df4: eebe ca00    	vmov.f32	s24, #-5.000000e-01
    1df8: eef4 6a65    	vcmp.f32	s13, s11
    1dfc: eddf 7a55    	vldr	s15, [pc, #340]         @ 0x1f54 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    1e00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e04: ed9f fa54    	vldr	s30, [pc, #336]         @ 0x1f58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c8>
    1e08: fe76 4aa5    	vselgt.f32	s9, s13, s11
    1e0c: eddf 5a53    	vldr	s11, [pc, #332]         @ 0x1f5c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    1e10: ee8b fa8f    	vdiv.f32	s30, s23, s30
    1e14: eef4 4a65    	vcmp.f32	s9, s11
    1e18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e1c: fe75 4aa4    	vselgt.f32	s9, s11, s9
    1e20: ee24 9aa7    	vmul.f32	s18, s9, s15
    1e24: ee39 da28    	vadd.f32	s26, s18, s17
    1e28: eeb5 9a40    	vcmp.f32	s18, #0
    1e2c: ee39 ea0c    	vadd.f32	s28, s18, s24
    1e30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e34: eebd dacd    	vcvt.s32.f32	s26, s26
    1e38: eebd eace    	vcvt.s32.f32	s28, s28
    1e3c: eef4 6a4f    	vcmp.f32	s13, s30
    1e40: ee1d 3a10    	vmov	r3, s26
    1e44: ee1e 2a10    	vmov	r2, s28
    1e48: bfa8         	it	ge
    1e4a: 461a         	movge	r2, r3
    1e4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e50: fe76 6a8f    	vselgt.f32	s13, s13, s30
    1e54: eef4 6a65    	vcmp.f32	s13, s11
    1e58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e5c: fe75 5aa6    	vselgt.f32	s11, s11, s13
    1e60: ee65 6aa7    	vmul.f32	s13, s11, s15
    1e64: ee76 7a8c    	vadd.f32	s15, s13, s24
    1e68: eef5 6a40    	vcmp.f32	s13, #0
    1e6c: ee36 9aa8    	vadd.f32	s18, s13, s17
    1e70: ee0c 2a10    	vmov	s24, r2
    1e74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e78: eefd 7ae7    	vcvt.s32.f32	s15, s15
    1e7c: eddf 6af2    	vldr	s13, [pc, #968]         @ 0x2248 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7b8>
    1e80: eebd 9ac9    	vcvt.s32.f32	s18, s18
    1e84: eeb8 cacc    	vcvt.f32.s32	s24, s24
    1e88: ee17 3a90    	vmov	r3, s15
    1e8c: ee19 6a10    	vmov	r6, s18
    1e90: bfa8         	it	ge
    1e92: 4633         	movge	r3, r6
    1e94: ee4c 4a66    	vmls.f32	s9, s24, s13
    1e98: f04f 567e    	mov.w	r6, #0x3f800000
    1e9c: ee07 3a90    	vmov	s15, r3
    1ea0: eb06 52c2    	add.w	r2, r6, r2, lsl #23
    1ea4: eb06 53c3    	add.w	r3, r6, r3, lsl #23
    1ea8: eef8 7ae7    	vcvt.f32.s32	s15, s15
    1eac: ee47 5ae6    	vmls.f32	s11, s15, s13
    1eb0: eddf 6af2    	vldr	s13, [pc, #968]         @ 0x227c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    1eb4: eddf 7af2    	vldr	s15, [pc, #968]         @ 0x2280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    1eb8: eeb0 9a66    	vmov.f32	s18, s13
    1ebc: ee04 9aa7    	vmla.f32	s18, s9, s15
    1ec0: ee45 6aa7    	vmla.f32	s13, s11, s15
    1ec4: eddf 7aef    	vldr	s15, [pc, #956]         @ 0x2284 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    1ec8: eeb0 ca67    	vmov.f32	s24, s15
    1ecc: ee25 daa5    	vmul.f32	s26, s11, s11
    1ed0: ee04 ca89    	vmla.f32	s24, s9, s18
    1ed4: eeb7 9a00    	vmov.f32	s18, #1.000000e+00
    1ed8: ee45 7aa6    	vmla.f32	s15, s11, s13
    1edc: eef0 6a68    	vmov.f32	s13, s17
    1ee0: ee44 6a8c    	vmla.f32	s13, s9, s24
    1ee4: eeb0 ca68    	vmov.f32	s24, s17
    1ee8: ee05 caa7    	vmla.f32	s24, s11, s15
    1eec: ee64 7aa4    	vmul.f32	s15, s9, s9
    1ef0: ee74 4a89    	vadd.f32	s9, s9, s18
    1ef4: ee47 4aa6    	vmla.f32	s9, s15, s13
    1ef8: ee07 3a90    	vmov	s15, r3
    1efc: ee75 6a89    	vadd.f32	s13, s11, s18
    1f00: ee05 2a90    	vmov	s11, r2
    1f04: ee4d 6a0c    	vmla.f32	s13, s26, s24
    1f08: ee64 5aa5    	vmul.f32	s11, s9, s11
    1f0c: ee66 4aa7    	vmul.f32	s9, s13, s15
    1f10: e073         	b	0x1ffa <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x56a> @ imm = #0xe6
    1f12: bf00         	nop
    1f14: b7 63 f7 b8  	.word	0xb8f763b7
    1f18: 0a d7 23 3d  	.word	0x3d23d70a
    1f1c: 7c f2 b0 3a  	.word	0x3ab0f27c
    1f20: a6 9b c4 3b  	.word	0x3bc49ba6
    1f24: a6 9b c4 bb  	.word	0xbbc49ba6
    1f28: 79 78 b0 43  	.word	0x43b07879
    1f2c: 7c f2 b0 ba  	.word	0xbab0f27c
    1f30: 53 4a a1 43  	.word	0x43a14a53
    1f34: 79 61 2e c3  	.word	0xc32e6179
    1f38: 00 00 00 80  	.word	0x80000000
    1f3c: 00 00 80 7f  	.word	0x7f800000
    1f40: 46 af b3 b8  	.word	0xb8b3af46
    1f44: f5 4a 39 3d  	.word	0x3d394af5
    1f48: 50 69 15 b9  	.word	0xb9156950
    1f4c: b7 63 f7 38  	.word	0x38f763b7
    1f50: 00 00 a0 c2  	.word	0xc2a00000
    1f54: 3b aa b8 3f  	.word	0x3fb8aa3b
    1f58: f5 4a 39 bd  	.word	0xbd394af5
    1f5c: 00 00 a0 42  	.word	0x42a00000
    1f60: eef4 6a66    	vcmp.f32	s13, s13
    1f64: ed5f 4a03    	vldr	s9, [pc, #-12]          @ 0x1f5c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    1f68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f6c: eef0 7a68    	vmov.f32	s15, s17
    1f70: ed9f 9ac5    	vldr	s18, [pc, #788]         @ 0x2288 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f8>
    1f74: fe54 6aa6    	vselvs.f32	s13, s9, s13
    1f78: f04f 527e    	mov.w	r2, #0x3f800000
    1f7c: eef4 4a66    	vcmp.f32	s9, s13
    1f80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f84: fe76 6aa4    	vselgt.f32	s13, s13, s9
    1f88: eef4 6a64    	vcmp.f32	s13, s9
    1f8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f90: eef5 5a40    	vcmp.f32	s11, #0
    1f94: fe74 4aa6    	vselgt.f32	s9, s9, s13
    1f98: ed5f 6a12    	vldr	s13, [pc, #-72]         @ 0x1f54 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    1f9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fa0: ee44 7aa6    	vmla.f32	s15, s9, s13
    1fa4: eefd 6ae7    	vcvt.s32.f32	s13, s15
    1fa8: eef8 7ae6    	vcvt.f32.s32	s15, s13
    1fac: ee16 3a90    	vmov	r3, s13
    1fb0: ee47 4a89    	vmla.f32	s9, s15, s18
    1fb4: eddf 7ab2    	vldr	s15, [pc, #712]         @ 0x2280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    1fb8: ed9f 9ab0    	vldr	s18, [pc, #704]         @ 0x227c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    1fbc: eb02 52c3    	add.w	r2, r2, r3, lsl #23
    1fc0: ee06 2a90    	vmov	s13, r2
    1fc4: ee04 9aa7    	vmla.f32	s18, s9, s15
    1fc8: eddf 7aae    	vldr	s15, [pc, #696]         @ 0x2284 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    1fcc: ee44 7a89    	vmla.f32	s15, s9, s18
    1fd0: eeb0 9a68    	vmov.f32	s18, s17
    1fd4: ee04 9aa7    	vmla.f32	s18, s9, s15
    1fd8: ee64 7aa4    	vmul.f32	s15, s9, s9
    1fdc: ee74 4a8a    	vadd.f32	s9, s9, s20
    1fe0: ee47 4a89    	vmla.f32	s9, s15, s18
    1fe4: ee64 6aa6    	vmul.f32	s13, s9, s13
    1fe8: eeca 4a26    	vdiv.f32	s9, s20, s13
    1fec: eef0 5a66    	vmov.f32	s11, s13
    1ff0: bfbc         	itt	lt
    1ff2: eef0 5a64    	vmovlt.f32	s11, s9
    1ff6: eef0 4a66    	vmovlt.f32	s9, s13
    1ffa: ee75 6ae4    	vsub.f32	s13, s11, s9
    1ffe: eddf 3ae2    	vldr	s7, [pc, #904]          @ 0x2388 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8f8>
    2002: ee27 4a04    	vmul.f32	s8, s14, s8
    2006: ed1f ba33    	vldr	s22, [pc, #-204]        @ 0x1f3c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4ac>
    200a: ee21 ea83    	vmul.f32	s28, s3, s6
    200e: ee16 5aa3    	vnmls.f32	s10, s13, s7
    2012: eddf 3ade    	vldr	s7, [pc, #888]          @ 0x238c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8fc>
    2016: ee21 7aa2    	vmul.f32	s14, s3, s5
    201a: eddf 2add    	vldr	s5, [pc, #884]          @ 0x2390 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x900>
    201e: ee15 2a10    	vmov	r2, s10
    2022: f022 4200    	bic	r2, r2, #0x80000000
    2026: f1b2 4fff    	cmp.w	r2, #0x7f800000
    202a: da17         	bge	0x205c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x5cc> @ imm = #0x2e
    202c: eddf 1ad9    	vldr	s3, [pc, #868]          @ 0x2394 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x904>
    2030: eeb4 6a46    	vcmp.f32	s12, s12
    2034: eec5 1a21    	vdiv.f32	s3, s10, s3
    2038: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    203c: eef0 1ae1    	vabs.f32	s3, s3
    2040: fe11 6a86    	vselvs.f32	s12, s3, s12
    2044: eef4 1a61    	vcmp.f32	s3, s3
    2048: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    204c: fe56 1a21    	vselvs.f32	s3, s12, s3
    2050: eeb4 6a61    	vcmp.f32	s12, s3
    2054: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2058: fe36 ba21    	vselgt.f32	s22, s12, s3
    205c: ee04 ea22    	vmla.f32	s28, s8, s5
    2060: f10d 0844    	add.w	r8, sp, #0x44
    2064: ee04 7a23    	vmla.f32	s14, s8, s7
    2068: 6808         	ldr	r0, [r1]
    206a: ee75 1aa4    	vadd.f32	s3, s11, s9
    206e: 9000         	str	r0, [sp]
    2070: eeb1 2a42    	vneg.f32	s4, s4
    2074: f64a 7046    	movw	r0, #0xaf46
    2078: eeb1 6a45    	vneg.f32	s12, s10
    207c: f04f 0c00    	mov.w	r12, #0x0
    2080: f108 0e14    	add.w	lr, r8, #0x14
    2084: 2400         	movs	r4, #0x0
    2086: f6cb 00b3    	movt	r0, #0xb8b3
    208a: f04f 567e    	mov.w	r6, #0x3f800000
    208e: f04f 0a00    	mov.w	r10, #0x0
    2092: 46e3         	mov	r11, r12
    2094: ed9f 8aee    	vldr	s16, [pc, #952]         @ 0x2450 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c0>
    2098: eddf 5aee    	vldr	s11, [pc, #952]         @ 0x2454 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c4>
    209c: ed5f cac5    	vldr	s25, [pc, #-788]        @ 0x1d8c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    20a0: ed1f ca55    	vldr	s24, [pc, #-340]        @ 0x1f50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c0>
    20a4: ed5f aa53    	vldr	s21, [pc, #-332]        @ 0x1f5c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    20a8: ed5f ea56    	vldr	s29, [pc, #-344]        @ 0x1f54 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    20ac: eddf 4a74    	vldr	s9, [pc, #464]          @ 0x2280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    20b0: ed9f 5a72    	vldr	s10, [pc, #456]         @ 0x227c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    20b4: ed9f 3a73    	vldr	s6, [pc, #460]          @ 0x2284 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    20b8: ed9f 4ab3    	vldr	s8, [pc, #716]          @ 0x2388 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8f8>
    20bc: 4643         	mov	r3, r8
    20be: ee21 4a84    	vmul.f32	s8, s3, s8
    20c2: ed5f 1a60    	vldr	s3, [pc, #-384]         @ 0x1f44 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b4>
    20c6: f1bc 0f10    	cmp.w	r12, #0x10
    20ca: eddf 2af1    	vldr	s5, [pc, #964]          @ 0x2490 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa00>
    20ce: ee84 4a21    	vdiv.f32	s8, s8, s3
    20d2: ee7e 1a0a    	vadd.f32	s3, s28, s20
    20d6: edcd 1a11    	vstr	s3, [sp, #68]
    20da: ee34 4a08    	vadd.f32	s8, s8, s16
    20de: ed8d 4a15    	vstr	s8, [sp, #84]
    20e2: eeb0 4ae1    	vabs.f32	s8, s3
    20e6: bf18         	it	ne
    20e8: f10b 0b01    	addne.w	r11, r11, #0x1
    20ec: ed8d 7a12    	vstr	s14, [sp, #72]
    20f0: 9413         	str	r4, [sp, #0x4c]
    20f2: eeb4 4a6f    	vcmp.f32	s8, s31
    20f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    20fa: 9014         	str	r0, [sp, #0x50]
    20fc: eef4 fa44    	vcmp.f32	s31, s8
    2100: bf48         	it	mi
    2102: 330c         	addmi	r3, #0xc
    2104: 9a0c         	ldr	r2, [sp, #0x30]
    2106: f8ce 2000    	str.w	r2, [lr]
    210a: e9d3 2500    	ldrd	r2, r5, [r3]
    210e: 6898         	ldr	r0, [r3, #0x8]
    2110: 9013         	str	r0, [sp, #0x4c]
    2112: f04f 0004    	mov.w	r0, #0x4
    2116: e9cd 2511    	strd	r2, r5, [sp, #68]
    211a: edc3 1a00    	vstr	s3, [r3]
    211e: f04f 0208    	mov.w	r2, #0x8
    2122: bf48         	it	mi
    2124: 2010         	movmi	r0, #0x10
    2126: ed9d 4a11    	vldr	s8, [sp, #68]
    212a: ee14 3a10    	vmov	r3, s8
    212e: 4440         	add	r0, r8
    2130: bf48         	it	mi
    2132: 2214         	movmi	r2, #0x14
    2134: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2138: ed80 7a00    	vstr	s14, [r0]
    213c: f023 4000    	bic	r0, r3, #0x80000000
    2140: fe76 1a02    	vselgt.f32	s3, s12, s4
    2144: fe32 2a06    	vselgt.f32	s4, s4, s12
    2148: f1b0 4fff    	cmp.w	r0, #0x7f800000
    214c: 980d         	ldr	r0, [sp, #0x34]
    214e: f8ce 0004    	str.w	r0, [lr, #0x4]
    2152: 980e         	ldr	r0, [sp, #0x38]
    2154: f8ce 0008    	str.w	r0, [lr, #0x8]
    2158: 980f         	ldr	r0, [sp, #0x3c]
    215a: f8ce 000c    	str.w	r0, [lr, #0xc]
    215e: f848 4002    	str.w	r4, [r8, r2]
    2162: f280 8389    	bge.w	0x2878 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x712
    2166: eeb0 6ac4    	vabs.f32	s12, s8
    216a: eeb4 6a62    	vcmp.f32	s12, s5
    216e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2172: f100 8381    	bmi.w	0x2878 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x702
    2176: ed9d 6a14    	vldr	s12, [sp, #80]
    217a: ed9d 7a15    	vldr	s14, [sp, #84]
    217e: eec6 6a04    	vdiv.f32	s13, s12, s8
    2182: ed9d 6a12    	vldr	s12, [sp, #72]
    2186: ee06 7ac6    	vmls.f32	s14, s13, s12
    218a: ee17 3a10    	vmov	r3, s14
    218e: f023 4300    	bic	r3, r3, #0x80000000
    2192: f1b3 4fff    	cmp.w	r3, #0x7f800000
    2196: f280 836f    	bge.w	0x2878 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x6de
    219a: eef0 7ac7    	vabs.f32	s15, s14
    219e: eef4 7a62    	vcmp.f32	s15, s5
    21a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    21a6: f100 8367    	bmi.w	0x2878 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x6ce
    21aa: ee06 2ae1    	vmls.f32	s4, s13, s3
    21ae: eddd 2a0b    	vldr	s5, [sp, #44]
    21b2: eef0 6ae2    	vabs.f32	s13, s5
    21b6: eef4 6a66    	vcmp.f32	s13, s13
    21ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    21be: ee82 7a07    	vdiv.f32	s14, s4, s14
    21c2: fe1a 2a26    	vselvs.f32	s4, s20, s13
    21c6: ee46 1a47    	vmls.f32	s3, s12, s14
    21ca: ed9f 6ab2    	vldr	s12, [pc, #712]         @ 0x2494 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa04>
    21ce: eeb4 2a4a    	vcmp.f32	s4, s20
    21d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    21d6: fe32 2a0a    	vselgt.f32	s4, s4, s20
    21da: eec1 1a84    	vdiv.f32	s3, s3, s8
    21de: ee22 2a06    	vmul.f32	s4, s4, s12
    21e2: eef0 2ae1    	vabs.f32	s5, s3
    21e6: fe82 2a65    	vminnm.f32	s4, s4, s11
    21ea: eef4 2a42    	vcmp.f32	s5, s4
    21ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    21f2: d818         	bhi	0x2226 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x796> @ imm = #0x30
    21f4: eeb0 2aeb    	vabs.f32	s4, s23
    21f8: eeb0 4ac7    	vabs.f32	s8, s14
    21fc: eeb4 2a42    	vcmp.f32	s4, s4
    2200: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2204: fe1a 2a02    	vselvs.f32	s4, s20, s4
    2208: eeb4 2a4a    	vcmp.f32	s4, s20
    220c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2210: fe32 2a0a    	vselgt.f32	s4, s4, s20
    2214: ee22 2a06    	vmul.f32	s4, s4, s12
    2218: fe82 2a65    	vminnm.f32	s4, s4, s11
    221c: eeb4 4a42    	vcmp.f32	s8, s4
    2220: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2224: d914         	bls	0x2250 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7c0> @ imm = #0x28
    2226: 2300         	movs	r3, #0x0
    2228: ed9f 2a9b    	vldr	s4, [pc, #620]          @ 0x2498 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa08>
    222c: eeb4 ba42    	vcmp.f32	s22, s4
    2230: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2234: d814         	bhi	0x2260 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7d0> @ imm = #0x28
    2236: f1ac 0010    	sub.w	r0, r12, #0x10
    223a: fab0 f080    	clz	r0, r0
    223e: 0940         	lsrs	r0, r0, #0x5
    2240: 4318         	orrs	r0, r3
    2242: d011         	beq	0x2268 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7d8> @ imm = #0x22
    2244: e305         	b	0x2852 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdc2> @ imm = #0x60a
    2246: bf00         	nop
    2248: 18 72 31 3f  	.word	0x3f317218
    224c: 00 bf 00 bf  	.word	0xbf00bf00
    2250: 2301         	movs	r3, #0x1
    2252: ed9f 2a91    	vldr	s4, [pc, #580]          @ 0x2498 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa08>
    2256: eeb4 ba42    	vcmp.f32	s22, s4
    225a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    225e: d9ea         	bls	0x2236 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7a6> @ imm = #-0x2c
    2260: f1bc 0f10    	cmp.w	r12, #0x10
    2264: f000 8310    	beq.w	0x2888 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdf8> @ imm = #0x620
    2268: 4645         	mov	r5, r8
    226a: 2400         	movs	r4, #0x0
    226c: f04f 597e    	mov.w	r9, #0x3f800000
    2270: edcd 2a04    	vstr	s5, [sp, #16]
    2274: edcd 9a05    	vstr	s19, [sp, #20]
    2278: e012         	b	0x22a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x810> @ imm = #0x24
    227a: bf00         	nop
    227c: ab aa 2a 3d  	.word	0x3d2aaaab
    2280: 89 88 08 3c  	.word	0x3c088889
    2284: ab aa 2a 3e  	.word	0x3e2aaaab
    2288: 18 72 31 bf  	.word	0xbf317218
    228c: 00 bf 00 bf  	.word	0xbf00bf00
    2290: eef0 ba48    	vmov.f32	s23, s16
    2294: f5a9 0900    	sub.w	r9, r9, #0x800000
    2298: f1b9 5f66    	cmp.w	r9, #0x39800000
    229c: f000 82b4    	beq.w	0x2808 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd78> @ imm = #0x568
    22a0: ee02 9a10    	vmov	s4, r9
    22a4: eddd 7a0b    	vldr	s15, [sp, #44]
    22a8: eeb0 9a6b    	vmov.f32	s18, s23
    22ac: eeb0 4a6f    	vmov.f32	s8, s31
    22b0: ed9f fb7b    	vldr	d15, [pc, #492]         @ 0x24a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa10>
    22b4: ee41 7a82    	vmla.f32	s15, s3, s4
    22b8: eeb0 8a6b    	vmov.f32	s16, s23
    22bc: ee07 9a02    	vmla.f32	s18, s14, s4
    22c0: eef0 ba6c    	vmov.f32	s23, s25
    22c4: ed9d db08    	vldr	d13, [sp, #32]
    22c8: eeb0 ea6c    	vmov.f32	s28, s25
    22cc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
    22d0: eeb7 2ac9    	vcvt.f64.f32	d2, s18
    22d4: ee06 db0f    	vmla.f64	d13, d6, d15
    22d8: eef0 fa44    	vmov.f32	s31, s8
    22dc: ed9f 4ada    	vldr	s8, [pc, #872]          @ 0x2648 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbb8>
    22e0: ed9f 6bdb    	vldr	d6, [pc, #876]          @ 0x2650 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbc0>
    22e4: ee02 db06    	vmla.f64	d13, d2, d6
    22e8: ed9d 6a07    	vldr	s12, [sp, #28]
    22ec: eeb7 2bcd    	vcvt.f32.f64	s4, d13
    22f0: eeb0 da6c    	vmov.f32	s26, s25
    22f4: ee02 6a04    	vmla.f32	s12, s4, s8
    22f8: ed9f 4a57    	vldr	s8, [pc, #348]          @ 0x2458 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c8>
    22fc: ed9d 2a06    	vldr	s4, [sp, #24]
    2300: ee07 2a84    	vmla.f32	s4, s15, s8
    2304: ee09 2a2f    	vmla.f32	s4, s18, s31
    2308: eeb4 0a46    	vcmp.f32	s0, s12
    230c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2310: fe30 4a06    	vselgt.f32	s8, s0, s12
    2314: eef0 6ac2    	vabs.f32	s13, s4
    2318: eeb4 4a41    	vcmp.f32	s8, s2
    231c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2320: eeb5 2a40    	vcmp.f32	s4, #0
    2324: eeb0 2a6c    	vmov.f32	s4, s25
    2328: fe71 9a04    	vselgt.f32	s19, s2, s8
    232c: eebf 4a00    	vmov.f32	s8, #-1.000000e+00
    2330: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2334: bf48         	it	mi
    2336: eeb0 2a44    	vmovmi.f32	s4, s8
    233a: fe3a 4a02    	vselgt.f32	s8, s20, s4
    233e: ed9f 2a47    	vldr	s4, [pc, #284]          @ 0x245c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9cc>
    2342: eef4 6a42    	vcmp.f32	s13, s4
    2346: eeb0 2a6c    	vmov.f32	s4, s25
    234a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    234e: f280 80d7    	bge.w	0x2500 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0x1ae
    2352: ed9f 2a43    	vldr	s4, [pc, #268]          @ 0x2460 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d0>
    2356: eeb0 da6c    	vmov.f32	s26, s25
    235a: eef4 6a42    	vcmp.f32	s13, s4
    235e: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    2362: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2366: d923         	bls	0x23b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x920> @ imm = #0x46
    2368: ed9f 2a3e    	vldr	s4, [pc, #248]          @ 0x2464 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d4>
    236c: eef4 6a42    	vcmp.f32	s13, s4
    2370: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2374: d910         	bls	0x2398 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x908> @ imm = #0x20
    2376: ed9f 2a3c    	vldr	s4, [pc, #240]          @ 0x2468 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d8>
    237a: ee76 2a82    	vadd.f32	s5, s13, s4
    237e: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    2382: eddf 3a3a    	vldr	s7, [pc, #232]          @ 0x246c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9dc>
    2386: e00f         	b	0x23a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x918> @ imm = #0x1e
    2388: 77 cc 2b 31  	.word	0x312bcc77
    238c: c5 9f 13 3f  	.word	0x3f139fc5
    2390: bb bc 42 bf  	.word	0xbf42bcbb
    2394: 0a d7 23 3c  	.word	0x3c23d70a
    2398: ed9f 2a35    	vldr	s4, [pc, #212]          @ 0x2470 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e0>
    239c: ee76 2a82    	vadd.f32	s5, s13, s4
    23a0: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    23a4: eddf 3a33    	vldr	s7, [pc, #204]          @ 0x2474 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e4>
    23a8: ee02 2aa3    	vmla.f32	s4, s5, s7
    23ac: ee24 da23    	vmul.f32	s26, s8, s7
    23b0: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    23b4: eef1 ba4d    	vneg.f32	s23, s26
    23b8: ee34 2a42    	vsub.f32	s4, s8, s4
    23bc: fe82 4a2c    	vmaxnm.f32	s8, s4, s25
    23c0: eeb5 4a40    	vcmp.f32	s8, #0
    23c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23c8: d95a         	bls	0x2480 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9f0> @ imm = #0xb4
    23ca: eeb0 2ae9    	vabs.f32	s4, s19
    23ce: eeb4 2a44    	vcmp.f32	s4, s8
    23d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23d6: d967         	bls	0x24a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa18> @ imm = #0xce
    23d8: eec4 6a02    	vdiv.f32	s13, s8, s4
    23dc: eeb0 da4a    	vmov.f32	s26, s20
    23e0: ee26 2aa6    	vmul.f32	s4, s13, s13
    23e4: ee22 2a02    	vmul.f32	s4, s4, s4
    23e8: ee22 2a02    	vmul.f32	s4, s4, s4
    23ec: ee22 ea02    	vmul.f32	s28, s4, s4
    23f0: ee3e 2a0a    	vadd.f32	s4, s28, s20
    23f4: eeb4 2a4a    	vcmp.f32	s4, s20
    23f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23fc: d009         	beq	0x2412 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x982> @ imm = #0x12
    23fe: eeb0 da42    	vmov.f32	s26, s4
    2402: eeb1 dacd    	vsqrt.f32	s26, s26
    2406: eeb1 dacd    	vsqrt.f32	s26, s26
    240a: eeb1 dacd    	vsqrt.f32	s26, s26
    240e: eeb1 dacd    	vsqrt.f32	s26, s26
    2412: eeca da0d    	vdiv.f32	s27, s20, s26
    2416: ed9f da18    	vldr	s26, [pc, #96]          @ 0x2478 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e8>
    241a: eef4 9a69    	vcmp.f32	s19, s19
    241e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2422: ee8d fa82    	vdiv.f32	s30, s27, s4
    2426: eeb0 2a4d    	vmov.f32	s4, s26
    242a: bf7f         	itttt	vc
    242c: ee19 0a90    	vmovvc	r0, s19
    2430: f366 001e    	bfivc	r0, r6, #0, #31
    2434: ee02 0a10    	vmovvc	s4, r0
    2438: ee22 4a04    	vmulvc.f32	s8, s4, s8
    243c: bf7c         	itt	vc
    243e: ee24 da2d    	vmulvc.f32	s26, s8, s27
    2442: ee22 2a0f    	vmulvc.f32	s4, s4, s30
    2446: ee26 4a8e    	vmul.f32	s8, s13, s28
    244a: ee24 ea0f    	vmul.f32	s28, s8, s30
    244e: e057         	b	0x2500 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0xae
    2450: 50 69 15 39  	.word	0x39156950
    2454: ac c5 a7 37  	.word	0x37a7c5ac
    2458: b7 63 f7 b8  	.word	0xb8f763b7
    245c: 0a d7 23 3d  	.word	0x3d23d70a
    2460: 7c f2 b0 3a  	.word	0x3ab0f27c
    2464: a6 9b c4 3b  	.word	0x3bc49ba6
    2468: a6 9b c4 bb  	.word	0xbbc49ba6
    246c: 79 78 b0 43  	.word	0x43b07879
    2470: 7c f2 b0 ba  	.word	0xbab0f27c
    2474: 53 4a a1 43  	.word	0x43a14a53
    2478: 00 00 c0 7f  	.word	0x7fc00000
    247c: 00 bf 00 bf  	.word	0xbf00bf00
    2480: eeb0 da6c    	vmov.f32	s26, s25
    2484: eeb0 ea6c    	vmov.f32	s28, s25
    2488: eeb0 2a6c    	vmov.f32	s4, s25
    248c: e038         	b	0x2500 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0x70
    248e: bf00         	nop
    2490: 08 e5 3c 1e  	.word	0x1e3ce508
    2494: bd 37 06 36  	.word	0x360637bd
    2498: 17 b7 d1 38  	.word	0x38d1b717
    249c: 00 bf 00 bf  	.word	0xbf00bf00
    24a0: 9c 9e 91 65  	.word	0x65919e9c
    24a4: 97 57 e8 bf  	.word	0xbfe85797
    24a8: ee89 2a84    	vdiv.f32	s4, s19, s8
    24ac: eeb0 da4a    	vmov.f32	s26, s20
    24b0: ee22 2a02    	vmul.f32	s4, s4, s4
    24b4: ee22 2a02    	vmul.f32	s4, s4, s4
    24b8: ee22 2a02    	vmul.f32	s4, s4, s4
    24bc: ee22 2a02    	vmul.f32	s4, s4, s4
    24c0: ee72 6a0a    	vadd.f32	s13, s4, s20
    24c4: eef4 6a4a    	vcmp.f32	s13, s20
    24c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    24cc: d009         	beq	0x24e2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa52> @ imm = #0x12
    24ce: eeb0 da66    	vmov.f32	s26, s13
    24d2: eeb1 dacd    	vsqrt.f32	s26, s26
    24d6: eeb1 dacd    	vsqrt.f32	s26, s26
    24da: eeb1 dacd    	vsqrt.f32	s26, s26
    24de: eeb1 dacd    	vsqrt.f32	s26, s26
    24e2: eeca 2a0d    	vdiv.f32	s5, s20, s26
    24e6: ee29 2a82    	vmul.f32	s4, s19, s4
    24ea: ee82 eaa6    	vdiv.f32	s28, s5, s13
    24ee: ee82 2a04    	vdiv.f32	s4, s4, s8
    24f2: ee29 daa2    	vmul.f32	s26, s19, s5
    24f6: ee22 2a0e    	vmul.f32	s4, s4, s28
    24fa: bf00         	nop
    24fc: bf00         	nop
    24fe: bf00         	nop
    2500: ee77 6acd    	vsub.f32	s13, s15, s26
    2504: eddf daf1    	vldr	s27, [pc, #964]         @ 0x28cc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe3c>
    2508: ee16 0a90    	vmov	r0, s13
    250c: f020 4000    	bic	r0, r0, #0x80000000
    2510: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2514: da07         	bge	0x2526 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa96> @ imm = #0xe
    2516: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    251a: ee86 4a84    	vdiv.f32	s8, s13, s8
    251e: eeb0 4ac4    	vabs.f32	s8, s8
    2522: fec4 da2c    	vmaxnm.f32	s27, s8, s25
    2526: ed9f 4aeb    	vldr	s8, [pc, #940]          @ 0x28d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe44>
    252a: ee89 da04    	vdiv.f32	s26, s18, s8
    252e: eeb0 4acd    	vabs.f32	s8, s26
    2532: eeb4 4a68    	vcmp.f32	s8, s17
    2536: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    253a: f280 808d    	bge.w	0x2658 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbc8> @ imm = #0x11a
    253e: eeb4 ca4d    	vcmp.f32	s24, s26
    2542: eebe fa00    	vmov.f32	s30, #-5.000000e-01
    2546: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    254a: fe3c 4a0d    	vselgt.f32	s8, s24, s26
    254e: ed9f dae3    	vldr	s26, [pc, #908]         @ 0x28dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe4c>
    2552: ee89 da0d    	vdiv.f32	s26, s18, s26
    2556: eeb4 4a6a    	vcmp.f32	s8, s21
    255a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    255e: fe3a 4a84    	vselgt.f32	s8, s21, s8
    2562: ee64 2a2e    	vmul.f32	s5, s8, s29
    2566: ee72 3aa8    	vadd.f32	s7, s5, s17
    256a: eef5 2a40    	vcmp.f32	s5, #0
    256e: ee72 5a8f    	vadd.f32	s11, s5, s30
    2572: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2576: eefd 3ae3    	vcvt.s32.f32	s7, s7
    257a: eefd 5ae5    	vcvt.s32.f32	s11, s11
    257e: eeb4 ca4d    	vcmp.f32	s24, s26
    2582: ee13 0a90    	vmov	r0, s7
    2586: ee15 8a90    	vmov	r8, s11
    258a: bfa8         	it	ge
    258c: 4680         	movge	r8, r0
    258e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2592: fe7c 2a0d    	vselgt.f32	s5, s24, s26
    2596: eef4 2a6a    	vcmp.f32	s5, s21
    259a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    259e: fe7a 2aa2    	vselgt.f32	s5, s21, s5
    25a2: ee62 3aae    	vmul.f32	s7, s5, s29
    25a6: ee73 5a8f    	vadd.f32	s11, s7, s30
    25aa: eef5 3a40    	vcmp.f32	s7, #0
    25ae: ee33 daa8    	vadd.f32	s26, s7, s17
    25b2: ee03 8a90    	vmov	s7, r8
    25b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    25ba: eefd 5ae5    	vcvt.s32.f32	s11, s11
    25be: eef8 3ae3    	vcvt.f32.s32	s7, s7
    25c2: ee15 3a90    	vmov	r3, s11
    25c6: eefd 5acd    	vcvt.s32.f32	s11, s26
    25ca: ed9f dac5    	vldr	s26, [pc, #788]         @ 0x28e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe50>
    25ce: ee03 4acd    	vmls.f32	s8, s7, s26
    25d2: eef0 3a45    	vmov.f32	s7, s10
    25d6: ee15 0a90    	vmov	r0, s11
    25da: bfa8         	it	ge
    25dc: 4603         	movge	r3, r0
    25de: eb06 50c8    	add.w	r0, r6, r8, lsl #23
    25e2: ee05 3a90    	vmov	s11, r3
    25e6: eb06 52c3    	add.w	r2, r6, r3, lsl #23
    25ea: ee44 3a24    	vmla.f32	s7, s8, s9
    25ee: eef8 5ae5    	vcvt.f32.s32	s11, s11
    25f2: ee45 2acd    	vmls.f32	s5, s11, s26
    25f6: eef0 5a45    	vmov.f32	s11, s10
    25fa: eeb0 da43    	vmov.f32	s26, s6
    25fe: ee04 da23    	vmla.f32	s26, s8, s7
    2602: eef0 3a43    	vmov.f32	s7, s6
    2606: ee42 5aa4    	vmla.f32	s11, s5, s9
    260a: ee22 faa2    	vmul.f32	s30, s5, s5
    260e: ee42 3aa5    	vmla.f32	s7, s5, s11
    2612: eef0 5a68    	vmov.f32	s11, s17
    2616: ee44 5a0d    	vmla.f32	s11, s8, s26
    261a: eeb0 da68    	vmov.f32	s26, s17
    261e: ee02 daa3    	vmla.f32	s26, s5, s7
    2622: ee64 3a04    	vmul.f32	s7, s8, s8
    2626: ee34 4a0a    	vadd.f32	s8, s8, s20
    262a: ee72 2a8a    	vadd.f32	s5, s5, s20
    262e: ee03 4aa5    	vmla.f32	s8, s7, s11
    2632: ee03 0a90    	vmov	s7, r0
    2636: ee05 2a90    	vmov	s11, r2
    263a: ee4f 2a0d    	vmla.f32	s5, s30, s26
    263e: ee24 fa23    	vmul.f32	s30, s8, s7
    2642: ee22 4aa5    	vmul.f32	s8, s5, s11
    2646: e04c         	b	0x26e2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xc52> @ imm = #0x98
    2648: 79 61 2e 43  	.word	0x432e6179
    264c: 00 bf 00 bf  	.word	0xbf00bf00
    2650: 76 43 71 a5  	.word	0xa5714376
    2654: f8 73 e2 3f  	.word	0x3fe273f8
    2658: eeb4 4a44    	vcmp.f32	s8, s8
    265c: eef0 2a68    	vmov.f32	s5, s17
    2660: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2664: eddf 3a9c    	vldr	s7, [pc, #624]          @ 0x28d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe48>
    2668: eef0 5a43    	vmov.f32	s11, s6
    266c: fe1a 4a84    	vselvs.f32	s8, s21, s8
    2670: eef4 aa44    	vcmp.f32	s21, s8
    2674: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2678: fe34 4a2a    	vselgt.f32	s8, s8, s21
    267c: eeb4 4a6a    	vcmp.f32	s8, s21
    2680: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2684: eeb5 da40    	vcmp.f32	s26, #0
    2688: fe3a 4a84    	vselgt.f32	s8, s21, s8
    268c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2690: ee44 2a2e    	vmla.f32	s5, s8, s29
    2694: eefd 2ae2    	vcvt.s32.f32	s5, s5
    2698: eeb8 fae2    	vcvt.f32.s32	s30, s5
    269c: ee12 0a90    	vmov	r0, s5
    26a0: ee0f 4a23    	vmla.f32	s8, s30, s7
    26a4: eeb0 fa45    	vmov.f32	s30, s10
    26a8: eef0 3a68    	vmov.f32	s7, s17
    26ac: eb06 50c0    	add.w	r0, r6, r0, lsl #23
    26b0: ee02 0a90    	vmov	s5, r0
    26b4: ee04 fa24    	vmla.f32	s30, s8, s9
    26b8: ee44 5a0f    	vmla.f32	s11, s8, s30
    26bc: ee44 3a25    	vmla.f32	s7, s8, s11
    26c0: ee64 5a04    	vmul.f32	s11, s8, s8
    26c4: ee34 4a0a    	vadd.f32	s8, s8, s20
    26c8: ee05 4aa3    	vmla.f32	s8, s11, s7
    26cc: ee64 2a22    	vmul.f32	s5, s8, s5
    26d0: ee8a 4a22    	vdiv.f32	s8, s20, s5
    26d4: eeb0 fa62    	vmov.f32	s30, s5
    26d8: bfbc         	itt	lt
    26da: eeb0 fa44    	vmovlt.f32	s30, s8
    26de: eeb0 4a62    	vmovlt.f32	s8, s5
    26e2: eeb0 da60    	vmov.f32	s26, s1
    26e6: ee07 daaf    	vmla.f32	s26, s15, s31
    26ea: eddf 2a79    	vldr	s5, [pc, #484]          @ 0x28d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe40>
    26ee: eddf 3a7d    	vldr	s7, [pc, #500]          @ 0x28e4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe54>
    26f2: ee09 da22    	vmla.f32	s26, s18, s5
    26f6: ee7f 2a44    	vsub.f32	s5, s30, s8
    26fa: ee12 daa3    	vnmls.f32	s26, s5, s7
    26fe: ee1d 0a10    	vmov	r0, s26
    2702: f020 4000    	bic	r0, r0, #0x80000000
    2706: f1b0 4fff    	cmp.w	r0, #0x7f800000
    270a: f6bf adc1    	bge.w	0x2290 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x800> @ imm = #-0x47e
    270e: eddf 2a76    	vldr	s5, [pc, #472]          @ 0x28e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe58>
    2712: eef4 da6d    	vcmp.f32	s27, s27
    2716: eecd 2a22    	vdiv.f32	s5, s26, s5
    271a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    271e: eef0 2ae2    	vabs.f32	s5, s5
    2722: fe52 3aad    	vselvs.f32	s7, s5, s27
    2726: eef4 2a62    	vcmp.f32	s5, s5
    272a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    272e: fe53 2aa2    	vselvs.f32	s5, s7, s5
    2732: eef4 3a62    	vcmp.f32	s7, s5
    2736: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    273a: fe73 daa2    	vselgt.f32	s27, s7, s5
    273e: eef4 da4b    	vcmp.f32	s27, s22
    2742: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2746: f57f ada3    	bpl.w	0x2290 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x800> @ imm = #-0x4ba
    274a: a06b         	adr	r0, #428 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd29>
    274c: eeb4 6a41    	vcmp.f32	s12, s2
    2750: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2754: bf48         	it	mi
    2756: 3004         	addmi	r0, #0x4
    2758: eeb4 6a40    	vcmp.f32	s12, s0
    275c: ed9d 6a01    	vldr	s12, [sp, #4]
    2760: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2764: ed81 6a01    	vstr	s12, [r1, #4]
    2768: ed90 6a00    	vldr	s12, [r0]
    276c: ed9f 7a52    	vldr	s14, [pc, #328]         @ 0x28b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe28>
    2770: f64a 7046    	movw	r0, #0xaf46
    2774: fe36 6a07    	vselgt.f32	s12, s12, s14
    2778: f1bc 0f10    	cmp.w	r12, #0x10
    277c: ed9f 7a4f    	vldr	s14, [pc, #316]         @ 0x28bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe2c>
    2780: f6cb 00b3    	movt	r0, #0xb8b3
    2784: eddf 1a4f    	vldr	s3, [pc, #316]          @ 0x28c4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe34>
    2788: 9a00         	ldr	r2, [sp]
    278a: eddf 2a4d    	vldr	s5, [pc, #308]          @ 0x28c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe30>
    278e: 600a         	str	r2, [r1]
    2790: eddf 3a4d    	vldr	s7, [pc, #308]          @ 0x28c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe38>
    2794: edc1 7a02    	vstr	s15, [r1, #8]
    2798: eddf 5a55    	vldr	s11, [pc, #340]         @ 0x28f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe60>
    279c: ed81 9a03    	vstr	s18, [r1, #12]
    27a0: ed9f 8a52    	vldr	s16, [pc, #328]         @ 0x28ec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe5c>
    27a4: 9410         	str	r4, [sp, #0x40]
    27a6: e9cd 440c    	strd	r4, r4, [sp, #48]
    27aa: e9cd 440e    	strd	r4, r4, [sp, #56]
    27ae: d01f         	beq	0x27f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd60> @ imm = #0x3e
    27b0: ee2b 2a82    	vmul.f32	s4, s23, s4
    27b4: eef0 ba49    	vmov.f32	s23, s18
    27b8: ee26 6a0e    	vmul.f32	s12, s12, s28
    27bc: eeb0 ba6d    	vmov.f32	s22, s27
    27c0: 46a8         	mov	r8, r5
    27c2: f1bb 0f10    	cmp.w	r11, #0x10
    27c6: ee22 ea07    	vmul.f32	s28, s4, s14
    27ca: f10a 0a01    	add.w	r10, r10, #0x1
    27ce: ee06 ea22    	vmla.f32	s28, s12, s5
    27d2: 46dc         	mov	r12, r11
    27d4: ee22 7a21    	vmul.f32	s14, s4, s3
    27d8: edcd 7a0b    	vstr	s15, [sp, #44]
    27dc: ee06 7a23    	vmla.f32	s14, s12, s7
    27e0: ee7f 1a04    	vadd.f32	s3, s30, s8
    27e4: eeb1 2a66    	vneg.f32	s4, s13
    27e8: eeb1 6a4d    	vneg.f32	s12, s26
    27ec: f77f ac64    	ble.w	0x20b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x628> @ imm = #-0x738
    27f0: f64d 3039    	movw	r0, #0xdb39
    27f4: f64d 7228    	movw	r2, #0xdf28
    27f8: f2c0 0000    	movt	r0, #0x0
    27fc: f2c0 0200    	movt	r2, #0x0
    2800: 2128         	movs	r1, #0x28
    2802: f009 fb57    	bl	0xbeb4 <core::panicking::panic> @ imm = #0x96ae
    2806: bf00         	nop
    2808: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x28f4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe64>
    280c: 2000         	movs	r0, #0x0
    280e: eeb4 ba40    	vcmp.f32	s22, s0
    2812: ed9f 1a37    	vldr	s2, [pc, #220]          @ 0x28f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe60>
    2816: ed9d 0a04    	vldr	s0, [sp, #16]
    281a: 2200         	movs	r2, #0x0
    281c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2820: eeb4 0a41    	vcmp.f32	s0, s2
    2824: f04f 0100    	mov.w	r1, #0x0
    2828: eeb0 0ac7    	vabs.f32	s0, s14
    282c: f10a 0a01    	add.w	r10, r10, #0x1
    2830: bf98         	it	ls
    2832: 2001         	movls	r0, #0x1
    2834: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2838: bf98         	it	ls
    283a: 2201         	movls	r2, #0x1
    283c: eeb4 0a41    	vcmp.f32	s0, s2
    2840: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2844: bf98         	it	ls
    2846: 2101         	movls	r1, #0x1
    2848: 4010         	ands	r0, r2
    284a: eddd 9a05    	vldr	s19, [sp, #20]
    284e: ea00 0301    	and.w	r3, r0, r1
    2852: 9802         	ldr	r0, [sp, #0x8]
    2854: edc0 9a01    	vstr	s19, [r0, #4]
    2858: 9803         	ldr	r0, [sp, #0xc]
    285a: ed80 ba00    	vstr	s22, [r0]
    285e: f880 a004    	strb.w	r10, [r0, #0x4]
    2862: 7143         	strb	r3, [r0, #0x5]
    2864: b01a         	add	sp, #0x68
    2866: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    286a: b001         	add	sp, #0x4
    286c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    2870: bdf0         	pop	{r4, r5, r6, r7, pc}
    2872: bf00         	nop
    2874: bf00         	nop
    2876: bf00         	nop
    2878: 9903         	ldr	r1, [sp, #0xc]
    287a: 2000         	movs	r0, #0x0
    287c: ed81 ba00    	vstr	s22, [r1]
    2880: f881 a004    	strb.w	r10, [r1, #0x4]
    2884: 7148         	strb	r0, [r1, #0x5]
    2886: e7ed         	b	0x2864 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdd4> @ imm = #-0x26
    2888: 2300         	movs	r3, #0x0
    288a: e7e2         	b	0x2852 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdc2> @ imm = #-0x3c
    288c: bf00         	nop
    288e: bf00         	nop
    2890: f64d 20a3    	movw	r0, #0xdaa3
    2894: f64d 7248    	movw	r2, #0xdf48
    2898: f2c0 0000    	movt	r0, #0x0
    289c: f2c0 0200    	movt	r2, #0x0
    28a0: a911         	add	r1, sp, #0x44
    28a2: f009 fb03    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0x9606
    28a6: bf00         	nop
    28a8: eddf 4a02    	vldr	s9, [pc, #8]            @ 0x28b4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe24>
    28ac: eeb0 2a64    	vmov.f32	s4, s9
    28b0: f7ff ba09    	b.w	0x1cc6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x236> @ imm = #-0xbee
    28b4: 00 00 c0 7f  	.word	0x7fc00000
    28b8: 00 00 00 80  	.word	0x80000000
    28bc: b7 63 f7 38  	.word	0x38f763b7
    28c0: bb bc 42 bf  	.word	0xbf42bcbb
    28c4: 46 af b3 b8  	.word	0xb8b3af46
    28c8: c5 9f 13 3f  	.word	0x3f139fc5
    28cc: 00 00 80 7f  	.word	0x7f800000
    28d0: 50 69 15 b9  	.word	0xb9156950
    28d4: f5 4a 39 3d  	.word	0x3d394af5
    28d8: 18 72 31 bf  	.word	0xbf317218
    28dc: f5 4a 39 bd  	.word	0xbd394af5
    28e0: 18 72 31 3f  	.word	0x3f317218
    28e4: 77 cc 2b 31  	.word	0x312bcc77
    28e8: 0a d7 23 3c  	.word	0x3c23d70a
    28ec: 50 69 15 39  	.word	0x39156950
    28f0: ac c5 a7 37  	.word	0x37a7c5ac
    28f4: 17 b7 d1 38  	.word	0x38d1b717
    28f8: 00 00 00 80  	.word	0x80000000
    28fc: 79 61 2e c3  	.word	0xc32e6179

00002900 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>>:
    2900: b5f0         	push	{r4, r5, r6, r7, lr}
    2902: af03         	add	r7, sp, #0xc
    2904: e92d 0f00    	push.w	{r8, r9, r10, r11}
    2908: b081         	sub	sp, #0x4
    290a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    290e: b0ae         	sub	sp, #0xb8
    2910: ed9f 2ab1    	vldr	s4, [pc, #708]          @ 0x2bd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2d8>
    2914: ee20 3a02    	vmul.f32	s6, s0, s4
    2918: ed9f 4ab0    	vldr	s8, [pc, #704]          @ 0x2bdc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2dc>
    291c: eddf 3ab0    	vldr	s7, [pc, #704]          @ 0x2be0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e0>
    2920: ed9f 5ab0    	vldr	s10, [pc, #704]         @ 0x2be4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e4>
    2924: ee33 0a04    	vadd.f32	s0, s6, s8
    2928: ee33 1a23    	vadd.f32	s2, s6, s7
    292c: eec0 fa05    	vdiv.f32	s31, s0, s10
    2930: ee81 ea05    	vdiv.f32	s28, s2, s10
    2934: eef4 fa4e    	vcmp.f32	s31, s28
    2938: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    293c: f201 81c8    	bhi.w	0x3cd0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13d0> @ imm = #0x1390
    2940: ed91 6a02    	vldr	s12, [r1, #8]
    2944: ed8d 6a03    	vstr	s12, [sp, #12]
    2948: eeb7 6ac6    	vcvt.f64.f32	d6, s12
    294c: edd1 1a03    	vldr	s3, [r1, #12]
    2950: ed9f 7ba5    	vldr	d7, [pc, #660]          @ 0x2be8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e8>
    2954: edd1 2a04    	vldr	s5, [r1, #16]
    2958: eddf ba7c    	vldr	s23, [pc, #496]         @ 0x2b4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x24c>
    295c: ed92 8b14    	vldr	d8, [r2, #80]
    2960: eeb7 9ae2    	vcvt.f64.f32	d9, s5
    2964: edcd 1a02    	vstr	s3, [sp, #8]
    2968: ee06 8b07    	vmla.f64	d8, d6, d7
    296c: 2500         	movs	r5, #0x0
    296e: eeb7 6ae1    	vcvt.f64.f32	d6, s3
    2972: eddf 1a77    	vldr	s3, [pc, #476]          @ 0x2b50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x250>
    2976: ed9f 7b9e    	vldr	d7, [pc, #632]          @ 0x2bf0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2f0>
    297a: edd1 4a05    	vldr	s9, [r1, #20]
    297e: edcd 2a1a    	vstr	s5, [sp, #104]
    2982: ee06 8b07    	vmla.f64	d8, d6, d7
    2986: 2600         	movs	r6, #0x0
    2988: edcd 4a1c    	vstr	s9, [sp, #112]
    298c: eebf ba00    	vmov.f32	s22, #-1.000000e+00
    2990: ed9f 7b99    	vldr	d7, [pc, #612]          @ 0x2bf8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2f8>
    2994: eeb0 6b48    	vmov.f64	d6, d8
    2998: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    299c: ed9f caea    	vldr	s24, [pc, #936]         @ 0x2d48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x448>
    29a0: ee09 6b07    	vmla.f64	d6, d9, d7
    29a4: ed8d 8b14    	vstr	d8, [sp, #80]
    29a8: ed9f 8a6a    	vldr	s16, [pc, #424]         @ 0x2b54 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x254>
    29ac: ee23 7a08    	vmul.f32	s14, s6, s16
    29b0: eeb7 3bc6    	vcvt.f32.f64	s6, d6
    29b4: ed8d 7a13    	vstr	s14, [sp, #76]
    29b8: eeb0 6a47    	vmov.f32	s12, s14
    29bc: ee03 6a2b    	vmla.f32	s12, s6, s23
    29c0: ed92 7b08    	vldr	d7, [r2, #32]
    29c4: eeb7 7bc7    	vcvt.f32.f64	s14, d7
    29c8: ed8d 7a12    	vstr	s14, [sp, #72]
    29cc: ee02 7aa1    	vmla.f32	s14, s5, s3
    29d0: eddf 1ae4    	vldr	s3, [pc, #912]          @ 0x2d64 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x464>
    29d4: eef4 fa46    	vcmp.f32	s31, s12
    29d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29dc: ee04 7aa1    	vmla.f32	s14, s9, s3
    29e0: fe3f 3a86    	vselgt.f32	s6, s31, s12
    29e4: eeb4 3a4e    	vcmp.f32	s6, s28
    29e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29ec: eeb4 6a6f    	vcmp.f32	s12, s31
    29f0: fe3e da03    	vselgt.f32	s26, s28, s6
    29f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29f8: bfc8         	it	gt
    29fa: 2501         	movgt	r5, #0x1
    29fc: eeb4 6a4e    	vcmp.f32	s12, s28
    2a00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a04: eef0 1ac7    	vabs.f32	s3, s14
    2a08: eeb5 7a40    	vcmp.f32	s14, #0
    2a0c: ed9f 7ad6    	vldr	s14, [pc, #856]         @ 0x2d68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2a10: eeb0 3a47    	vmov.f32	s6, s14
    2a14: eeb0 6a47    	vmov.f32	s12, s14
    2a18: bf48         	it	mi
    2a1a: 2601         	movmi	r6, #0x1
    2a1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a20: bf48         	it	mi
    2a22: eeb0 3a4b    	vmovmi.f32	s6, s22
    2a26: eef0 5a47    	vmov.f32	s11, s14
    2a2a: eef0 2a47    	vmov.f32	s5, s14
    2a2e: fe70 4a03    	vselgt.f32	s9, s0, s6
    2a32: eeb0 3a47    	vmov.f32	s6, s14
    2a36: eef4 1a4c    	vcmp.f32	s3, s24
    2a3a: 402e         	ands	r6, r5
    2a3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a40: f280 80b5    	bge.w	0x2bae <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x16a
    2a44: ed9f 3ac9    	vldr	s6, [pc, #804]          @ 0x2d6c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x46c>
    2a48: eef4 1a43    	vcmp.f32	s3, s6
    2a4c: ed9f 6ac6    	vldr	s12, [pc, #792]         @ 0x2d68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2a50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a54: d910         	bls	0x2a78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x178> @ imm = #0x20
    2a56: ed9f 3ac6    	vldr	s6, [pc, #792]          @ 0x2d70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x470>
    2a5a: eef4 1a43    	vcmp.f32	s3, s6
    2a5e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a62: d911         	bls	0x2a88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x188> @ imm = #0x22
    2a64: ed9f 3ac3    	vldr	s6, [pc, #780]          @ 0x2d74 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x474>
    2a68: ee71 1a83    	vadd.f32	s3, s3, s6
    2a6c: eddf 2ac2    	vldr	s5, [pc, #776]          @ 0x2d78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x478>
    2a70: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    2a74: e010         	b	0x2a98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x198> @ imm = #0x20
    2a76: bf00         	nop
    2a78: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2a7c: eef0 2a46    	vmov.f32	s5, s12
    2a80: e00e         	b	0x2aa0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1a0> @ imm = #0x1c
    2a82: bf00         	nop
    2a84: bf00         	nop
    2a86: bf00         	nop
    2a88: ed9f 3abd    	vldr	s6, [pc, #756]          @ 0x2d80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x480>
    2a8c: ee71 1a83    	vadd.f32	s3, s3, s6
    2a90: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2a94: eddf 2ab9    	vldr	s5, [pc, #740]          @ 0x2d7c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x47c>
    2a98: ee01 3aa2    	vmla.f32	s6, s3, s5
    2a9c: ee64 2aa2    	vmul.f32	s5, s9, s5
    2aa0: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    2aa4: ee31 3ac3    	vsub.f32	s6, s3, s6
    2aa8: fec3 1a06    	vmaxnm.f32	s3, s6, s12
    2aac: eeb1 3a62    	vneg.f32	s6, s5
    2ab0: eef5 1a40    	vcmp.f32	s3, #0
    2ab4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ab8: d942         	bls	0x2b40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x240> @ imm = #0x84
    2aba: eeb0 6acd    	vabs.f32	s12, s26
    2abe: eeb4 6a61    	vcmp.f32	s12, s3
    2ac2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ac6: d947         	bls	0x2b58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x258> @ imm = #0x8e
    2ac8: eec1 4a86    	vdiv.f32	s9, s3, s12
    2acc: ee24 6aa4    	vmul.f32	s12, s9, s9
    2ad0: ee26 6a06    	vmul.f32	s12, s12, s12
    2ad4: ee26 6a06    	vmul.f32	s12, s12, s12
    2ad8: ee66 5a06    	vmul.f32	s11, s12, s12
    2adc: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    2ae0: ee75 2a86    	vadd.f32	s5, s11, s12
    2ae4: eef0 6a46    	vmov.f32	s13, s12
    2ae8: eef4 2a46    	vcmp.f32	s5, s12
    2aec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2af0: d009         	beq	0x2b06 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x206> @ imm = #0x12
    2af2: eef0 6a62    	vmov.f32	s13, s5
    2af6: eef1 6ae6    	vsqrt.f32	s13, s13
    2afa: eef1 6ae6    	vsqrt.f32	s13, s13
    2afe: eef1 6ae6    	vsqrt.f32	s13, s13
    2b02: eef1 6ae6    	vsqrt.f32	s13, s13
    2b06: ee86 6a26    	vdiv.f32	s12, s12, s13
    2b0a: eeb4 da4d    	vcmp.f32	s26, s26
    2b0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b12: eec6 6a22    	vdiv.f32	s13, s12, s5
    2b16: f181 80f3    	bvs.w	0x3d00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1400> @ imm = #0x11e6
    2b1a: ee1d 5a10    	vmov	r5, s26
    2b1e: f04f 547e    	mov.w	r4, #0x3f800000
    2b22: f364 051e    	bfi	r5, r4, #0, #31
    2b26: ee02 5a90    	vmov	s5, r5
    2b2a: ee62 1aa1    	vmul.f32	s3, s5, s3
    2b2e: ee62 2aa6    	vmul.f32	s5, s5, s13
    2b32: ee21 6a86    	vmul.f32	s12, s3, s12
    2b36: ee64 1aa5    	vmul.f32	s3, s9, s11
    2b3a: ee61 5aa6    	vmul.f32	s11, s3, s13
    2b3e: e036         	b	0x2bae <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x6c
    2b40: eef0 5a46    	vmov.f32	s11, s12
    2b44: eef0 2a46    	vmov.f32	s5, s12
    2b48: e031         	b	0x2bae <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x62
    2b4a: bf00         	nop
    2b4c: 79 61 2e 43  	.word	0x432e6179
    2b50: 83 c0 96 b8  	.word	0xb896c083
    2b54: 50 d0 e8 36  	.word	0x36e8d050
    2b58: ee8d 6a21    	vdiv.f32	s12, s26, s3
    2b5c: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    2b60: ee26 6a06    	vmul.f32	s12, s12, s12
    2b64: eef0 5a64    	vmov.f32	s11, s9
    2b68: ee26 6a06    	vmul.f32	s12, s12, s12
    2b6c: ee26 6a06    	vmul.f32	s12, s12, s12
    2b70: ee26 6a06    	vmul.f32	s12, s12, s12
    2b74: ee76 2a24    	vadd.f32	s5, s12, s9
    2b78: eef4 2a64    	vcmp.f32	s5, s9
    2b7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b80: d009         	beq	0x2b96 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x296> @ imm = #0x12
    2b82: eef0 5a62    	vmov.f32	s11, s5
    2b86: eef1 5ae5    	vsqrt.f32	s11, s11
    2b8a: eef1 5ae5    	vsqrt.f32	s11, s11
    2b8e: eef1 5ae5    	vsqrt.f32	s11, s11
    2b92: eef1 5ae5    	vsqrt.f32	s11, s11
    2b96: eec4 4aa5    	vdiv.f32	s9, s9, s11
    2b9a: ee2d 6a06    	vmul.f32	s12, s26, s12
    2b9e: eec4 5aa2    	vdiv.f32	s11, s9, s5
    2ba2: eec6 1a21    	vdiv.f32	s3, s12, s3
    2ba6: ee2d 6a24    	vmul.f32	s12, s26, s9
    2baa: ee61 2aa5    	vmul.f32	s5, s3, s11
    2bae: eddd 1a1a    	vldr	s3, [sp, #104]
    2bb2: 2e00         	cmp	r6, #0x0
    2bb4: ee71 1ac6    	vsub.f32	s3, s3, s12
    2bb8: ed9f fac8    	vldr	s30, [pc, #800]         @ 0x2edc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5dc>
    2bbc: ed9f 6ac8    	vldr	s12, [pc, #800]         @ 0x2ee0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    2bc0: fe46 6a0f    	vseleq.f32	s13, s12, s30
    2bc4: ee11 5a90    	vmov	r5, s3
    2bc8: f025 4600    	bic	r6, r5, #0x80000000
    2bcc: f1b6 4fff    	cmp.w	r6, #0x7f800000
    2bd0: db16         	blt	0x2c00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x300> @ imm = #0x2c
    2bd2: ed9f aac4    	vldr	s20, [pc, #784]         @ 0x2ee4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    2bd6: e01d         	b	0x2c14 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x314> @ imm = #0x3a
    2bd8: 00 80 bb 47  	.word	0x47bb8000
    2bdc: 00 24 74 cb  	.word	0xcb742400
    2be0: 00 24 74 4b  	.word	0x4b742400
    2be4: 00 a0 0c 48  	.word	0x480ca000
    2be8: ab 14 f2 db  	.word	0xdbf214ab
    2bec: ec cd d7 3f  	.word	0x3fd7cdec
    2bf0: c4 a9 9f 7b  	.word	0x7b9fa9c4
    2bf4: 67 dd c7 3f  	.word	0x3fc7dd67
    2bf8: 1c 38 88 77  	.word	0x7788381c
    2bfc: bf 13 e1 bf  	.word	0xbfe113bf
    2c00: eeb2 6a0e    	vmov.f32	s12, #1.500000e+01
    2c04: eddf 4a58    	vldr	s9, [pc, #352]          @ 0x2d68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2c08: ee81 6a86    	vdiv.f32	s12, s3, s12
    2c0c: eeb0 6ac6    	vabs.f32	s12, s12
    2c10: fe86 aa24    	vmaxnm.f32	s20, s12, s9
    2c14: ee20 2a82    	vmul.f32	s4, s1, s4
    2c18: ee32 4a04    	vadd.f32	s8, s4, s8
    2c1c: ee32 6a23    	vadd.f32	s12, s4, s7
    2c20: eec4 7a05    	vdiv.f32	s15, s8, s10
    2c24: ee86 1a05    	vdiv.f32	s2, s12, s10
    2c28: eef4 7a41    	vcmp.f32	s15, s2
    2c2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2c30: f201 804e    	bhi.w	0x3cd0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13d0> @ imm = #0x109c
    2c34: ed9f 0b84    	vldr	d0, [pc, #528]          @ 0x2e48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x548>
    2c38: ed8d da09    	vstr	s26, [sp, #36]
    2c3c: ed9d da1c    	vldr	s26, [sp, #112]
    2c40: ed92 4b16    	vldr	d4, [r2, #88]
    2c44: ed9f 6a47    	vldr	s12, [pc, #284]         @ 0x2d64 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x464>
    2c48: eddd 3a1a    	vldr	s7, [sp, #104]
    2c4c: ed8d 4b10    	vstr	d4, [sp, #64]
    2c50: 2600         	movs	r6, #0x0
    2c52: 2500         	movs	r5, #0x0
    2c54: ee09 4b00    	vmla.f64	d4, d9, d0
    2c58: eeb7 9acd    	vcvt.f64.f32	d9, s26
    2c5c: ed9f 0b3c    	vldr	d0, [pc, #240]          @ 0x2d50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x450>
    2c60: ee09 4b00    	vmla.f64	d4, d9, d0
    2c64: ee22 0a08    	vmul.f32	s0, s4, s16
    2c68: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    2c6c: ed92 8b0a    	vldr	d8, [r2, #40]
    2c70: ed8d 0a0f    	vstr	s0, [sp, #60]
    2c74: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    2c78: eeb0 4a40    	vmov.f32	s8, s0
    2c7c: ed9f 0ae8    	vldr	s0, [pc, #928]          @ 0x3020 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x720>
    2c80: eeb7 5bc8    	vcvt.f32.f64	s10, d8
    2c84: ee02 4a2b    	vmla.f32	s8, s4, s23
    2c88: ed8d 5a0e    	vstr	s10, [sp, #56]
    2c8c: ee03 5a86    	vmla.f32	s10, s7, s12
    2c90: eddf 3a35    	vldr	s7, [pc, #212]          @ 0x2d68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2c94: eeb0 6a63    	vmov.f32	s12, s7
    2c98: ee0d 5a00    	vmla.f32	s10, s26, s0
    2c9c: ed9f 0ae7    	vldr	s0, [pc, #924]          @ 0x303c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    2ca0: eef4 7a44    	vcmp.f32	s15, s8
    2ca4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ca8: fe37 2a84    	vselgt.f32	s4, s15, s8
    2cac: eeb4 2a41    	vcmp.f32	s4, s2
    2cb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2cb4: eeb4 4a67    	vcmp.f32	s8, s15
    2cb8: fe71 ea02    	vselgt.f32	s29, s2, s4
    2cbc: ed91 2a06    	vldr	s4, [r1, #24]
    2cc0: ee22 8a00    	vmul.f32	s16, s4, s0
    2cc4: ed8d 2a19    	vstr	s4, [sp, #100]
    2cc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ccc: eeb4 4a41    	vcmp.f32	s8, s2
    2cd0: eeb0 4a63    	vmov.f32	s8, s7
    2cd4: ee38 2a05    	vadd.f32	s4, s16, s10
    2cd8: eeb0 5a63    	vmov.f32	s10, s7
    2cdc: bfc8         	it	gt
    2cde: 2601         	movgt	r6, #0x1
    2ce0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ce4: eeb5 2a40    	vcmp.f32	s4, #0
    2ce8: eeb0 9ac2    	vabs.f32	s18, s4
    2cec: eeb0 2a63    	vmov.f32	s4, s7
    2cf0: bf48         	it	mi
    2cf2: 2501         	movmi	r5, #0x1
    2cf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2cf8: bf48         	it	mi
    2cfa: eeb0 2a4b    	vmovmi.f32	s4, s22
    2cfe: eeb4 9a4c    	vcmp.f32	s18, s24
    2d02: ea06 0605    	and.w	r6, r6, r5
    2d06: fe70 4a82    	vselgt.f32	s9, s1, s4
    2d0a: eeb0 2a63    	vmov.f32	s4, s7
    2d0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d12: f280 80d0    	bge.w	0x2eb6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x1a0
    2d16: ed9f 2a15    	vldr	s4, [pc, #84]           @ 0x2d6c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x46c>
    2d1a: eeb4 9a42    	vcmp.f32	s18, s4
    2d1e: ed9f 4a12    	vldr	s8, [pc, #72]           @ 0x2d68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2d22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d26: d917         	bls	0x2d58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x458> @ imm = #0x2e
    2d28: ed9f 2a11    	vldr	s4, [pc, #68]           @ 0x2d70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x470>
    2d2c: eeb4 9a42    	vcmp.f32	s18, s4
    2d30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d34: d928         	bls	0x2d88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x488> @ imm = #0x50
    2d36: ed9f 2a0f    	vldr	s4, [pc, #60]           @ 0x2d74 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x474>
    2d3a: ee39 5a02    	vadd.f32	s10, s18, s4
    2d3e: ed9f 6a0e    	vldr	s12, [pc, #56]          @ 0x2d78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x478>
    2d42: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    2d46: e027         	b	0x2d98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x498> @ imm = #0x4e
    2d48: 0a d7 23 3d  	.word	0x3d23d70a
    2d4c: 00 bf 00 bf  	.word	0xbf00bf00
    2d50: 67 42 87 92  	.word	0x92874267
    2d54: ba 86 d4 bf  	.word	0xbfd486ba
    2d58: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    2d5c: eeb0 6a44    	vmov.f32	s12, s8
    2d60: e01e         	b	0x2da0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x4a0> @ imm = #0x3c
    2d62: bf00         	nop
    2d64: d6 f8 e4 36  	.word	0x36e4f8d6
    2d68: 00 00 00 00  	.word	0x00000000
    2d6c: 7c f2 b0 3a  	.word	0x3ab0f27c
    2d70: a6 9b c4 3b  	.word	0x3bc49ba6
    2d74: a6 9b c4 bb  	.word	0xbbc49ba6
    2d78: 79 78 b0 43  	.word	0x43b07879
    2d7c: 53 4a a1 43  	.word	0x43a14a53
    2d80: 7c f2 b0 ba  	.word	0xbab0f27c
    2d84: 00 bf 00 bf  	.word	0xbf00bf00
    2d88: ed9f 2a2d    	vldr	s4, [pc, #180]          @ 0x2e40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x540>
    2d8c: ee39 5a02    	vadd.f32	s10, s18, s4
    2d90: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    2d94: ed9f 6a31    	vldr	s12, [pc, #196]         @ 0x2e5c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x55c>
    2d98: ee05 2a06    	vmla.f32	s4, s10, s12
    2d9c: ee24 6a86    	vmul.f32	s12, s9, s12
    2da0: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    2da4: eeb1 6a46    	vneg.f32	s12, s12
    2da8: ee35 2a42    	vsub.f32	s4, s10, s4
    2dac: fe82 5a04    	vmaxnm.f32	s10, s4, s8
    2db0: eeb5 5a40    	vcmp.f32	s10, #0
    2db4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2db8: d94a         	bls	0x2e50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x550> @ imm = #0x94
    2dba: eeb0 2aee    	vabs.f32	s4, s29
    2dbe: eeb4 2a45    	vcmp.f32	s4, s10
    2dc2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2dc6: d94b         	bls	0x2e60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x560> @ imm = #0x96
    2dc8: ee85 2a02    	vdiv.f32	s4, s10, s4
    2dcc: ee22 4a02    	vmul.f32	s8, s4, s4
    2dd0: ee24 4a04    	vmul.f32	s8, s8, s8
    2dd4: ee24 4a04    	vmul.f32	s8, s8, s8
    2dd8: ee64 4a04    	vmul.f32	s9, s8, s8
    2ddc: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    2de0: ee34 9a84    	vadd.f32	s18, s9, s8
    2de4: eeb0 ba44    	vmov.f32	s22, s8
    2de8: eeb4 9a44    	vcmp.f32	s18, s8
    2dec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2df0: d009         	beq	0x2e06 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x506> @ imm = #0x12
    2df2: eeb0 ba49    	vmov.f32	s22, s18
    2df6: eeb1 bacb    	vsqrt.f32	s22, s22
    2dfa: eeb1 bacb    	vsqrt.f32	s22, s22
    2dfe: eeb1 bacb    	vsqrt.f32	s22, s22
    2e02: eeb1 bacb    	vsqrt.f32	s22, s22
    2e06: ee84 4a0b    	vdiv.f32	s8, s8, s22
    2e0a: eef4 ea6e    	vcmp.f32	s29, s29
    2e0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e12: ee84 9a09    	vdiv.f32	s18, s8, s18
    2e16: f180 877b    	bvs.w	0x3d10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1410> @ imm = #0xef6
    2e1a: ee1e 5a90    	vmov	r5, s29
    2e1e: f04f 547e    	mov.w	r4, #0x3f800000
    2e22: f364 051e    	bfi	r5, r4, #0, #31
    2e26: ee0b 5a10    	vmov	s22, r5
    2e2a: ee2b 5a05    	vmul.f32	s10, s22, s10
    2e2e: ee25 4a04    	vmul.f32	s8, s10, s8
    2e32: ee2b 5a09    	vmul.f32	s10, s22, s18
    2e36: ee22 2a24    	vmul.f32	s4, s4, s9
    2e3a: ee22 2a09    	vmul.f32	s4, s4, s18
    2e3e: e03a         	b	0x2eb6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x74
    2e40: 7c f2 b0 ba  	.word	0xbab0f27c
    2e44: 00 bf 00 bf  	.word	0xbf00bf00
    2e48: 15 be b6 e5  	.word	0xe5b6be15
    2e4c: 6d 7e c0 bf  	.word	0xbfc07e6d
    2e50: eeb0 2a44    	vmov.f32	s4, s8
    2e54: eeb0 5a44    	vmov.f32	s10, s8
    2e58: e02d         	b	0x2eb6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x5a
    2e5a: bf00         	nop
    2e5c: 53 4a a1 43  	.word	0x43a14a53
    2e60: ee8e 2a85    	vdiv.f32	s4, s29, s10
    2e64: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    2e68: ee22 2a02    	vmul.f32	s4, s4, s4
    2e6c: eeb0 9a64    	vmov.f32	s18, s9
    2e70: ee22 2a02    	vmul.f32	s4, s4, s4
    2e74: ee22 2a02    	vmul.f32	s4, s4, s4
    2e78: ee22 2a02    	vmul.f32	s4, s4, s4
    2e7c: ee32 4a24    	vadd.f32	s8, s4, s9
    2e80: eeb4 4a64    	vcmp.f32	s8, s9
    2e84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e88: d009         	beq	0x2e9e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x59e> @ imm = #0x12
    2e8a: eeb0 9a44    	vmov.f32	s18, s8
    2e8e: eeb1 9ac9    	vsqrt.f32	s18, s18
    2e92: eeb1 9ac9    	vsqrt.f32	s18, s18
    2e96: eeb1 9ac9    	vsqrt.f32	s18, s18
    2e9a: eeb1 9ac9    	vsqrt.f32	s18, s18
    2e9e: eec4 4a89    	vdiv.f32	s9, s9, s18
    2ea2: ee2e 9a82    	vmul.f32	s18, s29, s4
    2ea6: ee84 2a84    	vdiv.f32	s4, s9, s8
    2eaa: ee89 5a05    	vdiv.f32	s10, s18, s10
    2eae: ee2e 4aa4    	vmul.f32	s8, s29, s9
    2eb2: ee25 5a02    	vmul.f32	s10, s10, s4
    2eb6: eddd 4a1c    	vldr	s9, [sp, #112]
    2eba: 2e00         	cmp	r6, #0x0
    2ebc: ee74 9ac4    	vsub.f32	s19, s9, s8
    2ec0: ed9f 4a07    	vldr	s8, [pc, #28]           @ 0x2ee0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    2ec4: fe04 9a0f    	vseleq.f32	s18, s8, s30
    2ec8: ee19 5a90    	vmov	r5, s19
    2ecc: f025 4600    	bic	r6, r5, #0x80000000
    2ed0: f1b6 4fff    	cmp.w	r6, #0x7f800000
    2ed4: db08         	blt	0x2ee8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e8> @ imm = #0x10
    2ed6: eddf 4a03    	vldr	s9, [pc, #12]           @ 0x2ee4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    2eda: e01d         	b	0x2f18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x618> @ imm = #0x3a
    2edc: 79 61 2e c3  	.word	0xc32e6179
    2ee0: 00 00 00 80  	.word	0x80000000
    2ee4: 00 00 80 7f  	.word	0x7f800000
    2ee8: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    2eec: eeb4 aa4a    	vcmp.f32	s20, s20
    2ef0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ef4: ee89 4a84    	vdiv.f32	s8, s19, s8
    2ef8: eeb0 4ac4    	vabs.f32	s8, s8
    2efc: fe54 4a0a    	vselvs.f32	s9, s8, s20
    2f00: eeb4 4a44    	vcmp.f32	s8, s8
    2f04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f08: fe14 4a84    	vselvs.f32	s8, s9, s8
    2f0c: eef4 4a44    	vcmp.f32	s9, s8
    2f10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f14: fe74 4a84    	vselgt.f32	s9, s9, s8
    2f18: ed92 ab0c    	vldr	d10, [r2, #48]
    2f1c: ed9f ba48    	vldr	s22, [pc, #288]         @ 0x3040 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x740>
    2f20: ee26 6a05    	vmul.f32	s12, s12, s10
    2f24: ed92 cb1a    	vldr	d12, [r2, #104]
    2f28: eddf 8a46    	vldr	s17, [pc, #280]         @ 0x3044 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x744>
    2f2c: ed92 db1c    	vldr	d13, [r2, #112]
    2f30: 220d         	movs	r2, #0xd
    2f32: ed9f 5a45    	vldr	s10, [pc, #276]         @ 0x3048 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x748>
    2f36: eeb7 fbca    	vcvt.f32.f64	s30, d10
    2f3a: ed9d aa1c    	vldr	s20, [sp, #112]
    2f3e: ed8d fa0d    	vstr	s30, [sp, #52]
    2f42: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    2f46: ee2a 4a0b    	vmul.f32	s8, s20, s22
    2f4a: ed8d 0a0c    	vstr	s0, [sp, #48]
    2f4e: eeb7 cbcd    	vcvt.f32.f64	s24, d13
    2f52: ee66 aaa5    	vmul.f32	s21, s13, s11
    2f56: ed8d ca0b    	vstr	s24, [sp, #44]
    2f5a: ee34 da00    	vadd.f32	s26, s8, s0
    2f5e: ed9d 0a19    	vldr	s0, [sp, #100]
    2f62: ee00 da28    	vmla.f32	s26, s0, s17
    2f66: eddf ca39    	vldr	s25, [pc, #228]         @ 0x304c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x74c>
    2f6a: ee34 4a0c    	vadd.f32	s8, s8, s24
    2f6e: eddf da38    	vldr	s27, [pc, #224]         @ 0x3050 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x750>
    2f72: ee00 4a4b    	vmls.f32	s8, s0, s22
    2f76: ed9f 0a31    	vldr	s0, [pc, #196]          @ 0x303c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    2f7a: ee0a fa00    	vmla.f32	s30, s20, s0
    2f7e: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    2f82: ee23 aa22    	vmul.f32	s20, s6, s5
    2f86: fe8d 3a44    	vminnm.f32	s6, s26, s8
    2f8a: eeb4 da44    	vcmp.f32	s26, s8
    2f8e: ee7f 5a48    	vsub.f32	s11, s30, s16
    2f92: ee30 4a43    	vsub.f32	s8, s0, s6
    2f96: eeb8 3a00    	vmov.f32	s6, #-2.000000e+00
    2f9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f9e: bf88         	it	hi
    2fa0: 220e         	movhi	r2, #0xe
    2fa2: eeb4 4a43    	vcmp.f32	s8, s6
    2fa6: ed8d 1a18    	vstr	s2, [sp, #96]
    2faa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fae: ed8d ea17    	vstr	s28, [sp, #92]
    2fb2: edcd 7a16    	vstr	s15, [sp, #88]
    2fb6: d937         	bls	0x3028 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x728> @ imm = #0x6e
    2fb8: eeb4 4a44    	vcmp.f32	s8, s8
    2fbc: ed1f 3a96    	vldr	s6, [pc, #-600]         @ 0x2d68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    2fc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fc4: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    2fc8: eeb0 8a43    	vmov.f32	s16, s6
    2fcc: fe53 6a04    	vselvs.f32	s13, s6, s8
    2fd0: eeb0 da62    	vmov.f32	s26, s5
    2fd4: eef5 6a40    	vcmp.f32	s13, #0
    2fd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fdc: bfb8         	it	lt
    2fde: eeb0 8a66    	vmovlt.f32	s16, s13
    2fe2: eddf 6a1c    	vldr	s13, [pc, #112]         @ 0x3054 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x754>
    2fe6: eeb5 4a40    	vcmp.f32	s8, #0
    2fea: ee08 da00    	vmla.f32	s26, s16, s0
    2fee: ed9f 8a1a    	vldr	s16, [pc, #104]         @ 0x3058 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x758>
    2ff2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ff6: ee2d da26    	vmul.f32	s26, s26, s13
    2ffa: fe8d da08    	vmaxnm.f32	s26, s26, s16
    2ffe: d52f         	bpl	0x3060 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x760> @ imm = #0x5e
    3000: ee44 2a00    	vmla.f32	s5, s8, s0
    3004: ee22 4aa6    	vmul.f32	s8, s5, s13
    3008: eeb4 4a48    	vcmp.f32	s8, s16
    300c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3010: dd26         	ble	0x3060 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x760> @ imm = #0x4c
    3012: eeb0 1a6f    	vmov.f32	s2, s31
    3016: eeb0 ca6b    	vmov.f32	s24, s23
    301a: ed9f 3af6    	vldr	s6, [pc, #984]          @ 0x33f4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf4>
    301e: e023         	b	0x3068 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x768> @ imm = #0x46
    3020: af e6 27 b9  	.word	0xb927e6af
    3024: 00 bf 00 bf  	.word	0xbf00bf00
    3028: eeb0 1a6f    	vmov.f32	s2, s31
    302c: eeb0 ca6b    	vmov.f32	s24, s23
    3030: ed1f 3ab3    	vldr	s6, [pc, #-716]         @ 0x2d68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    3034: ed9f da08    	vldr	s26, [pc, #32]          @ 0x3058 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x758>
    3038: e016         	b	0x3068 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x768> @ imm = #0x2c
    303a: bf00         	nop
    303c: 79 2e 02 39  	.word	0x39022e79
    3040: 51 e6 7f 3f  	.word	0x3f7fe651
    3044: 99 76 cd 39  	.word	0x39cd7699
    3048: d6 f8 e4 b6  	.word	0xb6e4f8d6
    304c: 83 c0 96 38  	.word	0x3896c083
    3050: af e6 27 39  	.word	0x3927e6af
    3054: 2b 18 95 3b  	.word	0x3b95182b
    3058: 95 bf d6 33  	.word	0x33d6bf95
    305c: 00 bf 00 bf  	.word	0xbf00bf00
    3060: eeb0 1a6f    	vmov.f32	s2, s31
    3064: eeb0 ca6b    	vmov.f32	s24, s23
    3068: e9cd 3004    	strd	r3, r0, [sp, #16]
    306c: f64d 3068    	movw	r0, #0xdb68
    3070: ed9d 0a19    	vldr	s0, [sp, #100]
    3074: f2c0 0000    	movt	r0, #0x0
    3078: ee50 5a0d    	vnmls.f32	s11, s0, s26
    307c: eb00 1282    	add.w	r2, r0, r2, lsl #6
    3080: ee20 4a03    	vmul.f32	s8, s0, s6
    3084: ee29 9a02    	vmul.f32	s18, s18, s4
    3088: ed1f 2a14    	vldr	s4, [pc, #-80]          @ 0x303c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    308c: ed92 8b0c    	vldr	d8, [r2, #48]
    3090: ed9f 0ad9    	vldr	s0, [pc, #868]          @ 0x33f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf8>
    3094: ee66 6a05    	vmul.f32	s13, s12, s10
    3098: eeb7 3bc8    	vcvt.f32.f64	s6, d8
    309c: ee26 8a2d    	vmul.f32	s16, s12, s27
    30a0: ed92 fb08    	vldr	d15, [r2, #32]
    30a4: ee04 2a43    	vmls.f32	s4, s8, s6
    30a8: ed92 bb0a    	vldr	d11, [r2, #40]
    30ac: ee15 2a90    	vmov	r2, s11
    30b0: ee2a 3a87    	vmul.f32	s6, s21, s14
    30b4: eef7 8bcf    	vcvt.f32.f64	s17, d15
    30b8: ee66 7a00    	vmul.f32	s15, s12, s0
    30bc: ed9f 0af8    	vldr	s0, [pc, #992]          @ 0x34a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba0>
    30c0: eeb7 6bcb    	vcvt.f32.f64	s12, d11
    30c4: f022 4200    	bic	r2, r2, #0x80000000
    30c8: ee2a fa2c    	vmul.f32	s30, s20, s25
    30cc: f1b2 4fff    	cmp.w	r2, #0x7f800000
    30d0: ed5f ca7c    	vldr	s25, [pc, #-496]        @ 0x2ee4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    30d4: ed9f baf3    	vldr	s22, [pc, #972]         @ 0x34a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba4>
    30d8: eddf baf3    	vldr	s23, [pc, #972]         @ 0x34a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba8>
    30dc: da17         	bge	0x310e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x80e> @ imm = #0x2e
    30de: ed9f 7af3    	vldr	s14, [pc, #972]         @ 0x34ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbac>
    30e2: eef4 4a64    	vcmp.f32	s9, s9
    30e6: ee85 7a87    	vdiv.f32	s14, s11, s14
    30ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    30ee: eeb0 7ac7    	vabs.f32	s14, s14
    30f2: fe57 4a24    	vselvs.f32	s9, s14, s9
    30f6: eeb4 7a47    	vcmp.f32	s14, s14
    30fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    30fe: fe14 7a87    	vselvs.f32	s14, s9, s14
    3102: eef4 4a47    	vcmp.f32	s9, s14
    3106: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    310a: fe74 ca87    	vselgt.f32	s25, s9, s14
    310e: eeb0 7a43    	vmov.f32	s14, s6
    3112: ee0a 3a05    	vmla.f32	s6, s20, s10
    3116: ed1f 5a8e    	vldr	s10, [pc, #-568]        @ 0x2ee0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    311a: ee0a fa80    	vmla.f32	s30, s21, s0
    311e: ee0a 7a05    	vmla.f32	s14, s20, s10
    3122: ae22         	add	r6, sp, #0x88
    3124: ee49 7a23    	vmla.f32	s15, s18, s7
    3128: f106 000c    	add.w	r0, r6, #0xc
    312c: ee49 6a0b    	vmla.f32	s13, s18, s22
    3130: 9008         	str	r0, [sp, #0x20]
    3132: ee09 8a2b    	vmla.f32	s16, s18, s23
    3136: 9100         	str	r1, [sp]
    3138: ee68 8ac4    	vnmul.f32	s17, s17, s8
    313c: 69c8         	ldr	r0, [r1, #0x1c]
    313e: ee64 da06    	vmul.f32	s27, s8, s12
    3142: 2100         	movs	r1, #0x0
    3144: ee7d ba02    	vadd.f32	s23, s26, s4
    3148: f04f 0e00    	mov.w	lr, #0x0
    314c: eef1 4a61    	vneg.f32	s9, s3
    3150: f10d 097c    	add.w	r9, sp, #0x7c
    3154: eeb1 9a69    	vneg.f32	s18, s19
    3158: eef0 9a6c    	vmov.f32	s19, s25
    315c: eeb1 2a65    	vneg.f32	s4, s11
    3160: f04f 5b7e    	mov.w	r11, #0x3f800000
    3164: 468a         	mov	r10, r1
    3166: eddf fad2    	vldr	s31, [pc, #840]         @ 0x34b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb0>
    316a: ed1f ea46    	vldr	s28, [pc, #-280]        @ 0x3054 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x754>
    316e: ed9d aa09    	vldr	s20, [sp, #36]
    3172: 9001         	str	r0, [sp, #0x4]
    3174: ee3f 4a20    	vadd.f32	s8, s30, s1
    3178: 2910         	cmp	r1, #0x10
    317a: eeb0 5ae6    	vabs.f32	s10, s13
    317e: f04f 0400    	mov.w	r4, #0x0
    3182: bf18         	it	ne
    3184: f10a 0a01    	addne.w	r10, r10, #0x1
    3188: eeb0 6ac4    	vabs.f32	s12, s8
    318c: edcd 4a1f    	vstr	s9, [sp, #124]
    3190: ed8d 4a22    	vstr	s8, [sp, #136]
    3194: ed9f 0a98    	vldr	s0, [pc, #608]          @ 0x33f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf8>
    3198: ed8d 3a23    	vstr	s6, [sp, #140]
    319c: f10d 0c88    	add.w	r12, sp, #0x88
    31a0: eeb4 5a46    	vcmp.f32	s10, s12
    31a4: ed8d 7a24    	vstr	s14, [sp, #144]
    31a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    31ac: eeb0 6ae8    	vabs.f32	s12, s17
    31b0: fe36 5a84    	vselgt.f32	s10, s13, s8
    31b4: bfc8         	it	gt
    31b6: 2401         	movgt	r4, #0x1
    31b8: edcd 6a25    	vstr	s13, [sp, #148]
    31bc: eeb0 5ac5    	vabs.f32	s10, s10
    31c0: eeb4 6a45    	vcmp.f32	s12, s10
    31c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    31c8: bfc8         	it	gt
    31ca: 2402         	movgt	r4, #0x2
    31cc: ee38 5a20    	vadd.f32	s10, s16, s1
    31d0: edcd 8a28    	vstr	s17, [sp, #160]
    31d4: ed8d 5a26    	vstr	s10, [sp, #152]
    31d8: ee30 5a6d    	vsub.f32	s10, s0, s27
    31dc: eb04 0044    	add.w	r0, r4, r4, lsl #1
    31e0: edcd 7a27    	vstr	s15, [sp, #156]
    31e4: ed8d 5a29    	vstr	s10, [sp, #164]
    31e8: ed9f 0aec    	vldr	s0, [pc, #944]          @ 0x359c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xc9c>
    31ec: eb06 0280    	add.w	r2, r6, r0, lsl #2
    31f0: edcd ba2a    	vstr	s23, [sp, #168]
    31f4: f856 0020    	ldr.w	r0, [r6, r0, lsl #2]
    31f8: ed8d 9a20    	vstr	s18, [sp, #128]
    31fc: e9d2 3501    	ldrd	r3, r5, [r2, #4]
    3200: e88c 0029    	stm.w	r12, {r0, r3, r5}
    3204: ed82 4a00    	vstr	s8, [r2]
    3208: ed82 3a01    	vstr	s6, [r2, #4]
    320c: ed82 7a02    	vstr	s14, [r2, #8]
    3210: eb09 0284    	add.w	r2, r9, r4, lsl #2
    3214: eddd 1a22    	vldr	s3, [sp, #136]
    3218: ed8d 2a21    	vstr	s4, [sp, #132]
    321c: ee11 0a90    	vmov	r0, s3
    3220: f859 3024    	ldr.w	r3, [r9, r4, lsl #2]
    3224: 931f         	str	r3, [sp, #0x7c]
    3226: edc2 4a00    	vstr	s9, [r2]
    322a: f020 4000    	bic	r0, r0, #0x80000000
    322e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3232: f280 8541    	bge.w	0x3cb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0xa82
    3236: eeb0 2ae1    	vabs.f32	s4, s3
    323a: eeb4 2a40    	vcmp.f32	s4, s0
    323e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3242: f100 8539    	bmi.w	0x3cb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0xa72
    3246: ed9d 2a28    	vldr	s4, [sp, #160]
    324a: ed9d 3a25    	vldr	s6, [sp, #148]
    324e: ee82 4a21    	vdiv.f32	s8, s4, s3
    3252: ed9d 2a23    	vldr	s4, [sp, #140]
    3256: ee83 5a21    	vdiv.f32	s10, s6, s3
    325a: ed9d 6a29    	vldr	s12, [sp, #164]
    325e: ed9d 7a26    	vldr	s14, [sp, #152]
    3262: ed9d 3a1f    	vldr	s6, [sp, #124]
    3266: ee04 6a42    	vmls.f32	s12, s8, s4
    326a: eddd 2a24    	vldr	s5, [sp, #144]
    326e: ee05 7a42    	vmls.f32	s14, s10, s4
    3272: eddd 3a27    	vldr	s7, [sp, #156]
    3276: ee45 3a62    	vmls.f32	s7, s10, s5
    327a: eddd 4a20    	vldr	s9, [sp, #128]
    327e: ee45 4a43    	vmls.f32	s9, s10, s6
    3282: eddd 6a2a    	vldr	s13, [sp, #168]
    3286: ee44 6a62    	vmls.f32	s13, s8, s5
    328a: 9d08         	ldr	r5, [sp, #0x20]
    328c: 462c         	mov	r4, r5
    328e: ed8d 7a26    	vstr	s14, [sp, #152]
    3292: eeb0 5ac6    	vabs.f32	s10, s12
    3296: edcd 3a27    	vstr	s7, [sp, #156]
    329a: eef0 5ac7    	vabs.f32	s11, s14
    329e: edcd 4a20    	vstr	s9, [sp, #128]
    32a2: ed8d 6a29    	vstr	s12, [sp, #164]
    32a6: 4672         	mov	r2, lr
    32a8: eeb4 5a65    	vcmp.f32	s10, s11
    32ac: ed9d 5a21    	vldr	s10, [sp, #132]
    32b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    32b4: bfc8         	it	gt
    32b6: f106 0418    	addgt.w	r4, r6, #0x18
    32ba: edcd 6a2a    	vstr	s13, [sp, #168]
    32be: f8d5 c000    	ldr.w	r12, [r5]
    32c2: f8d4 8000    	ldr.w	r8, [r4]
    32c6: 6868         	ldr	r0, [r5, #0x4]
    32c8: e9d4 e301    	ldrd	lr, r3, [r4, #4]
    32cc: f8c5 8000    	str.w	r8, [r5]
    32d0: ee04 5a43    	vmls.f32	s10, s8, s6
    32d4: f8c5 e004    	str.w	lr, [r5, #0x4]
    32d8: 4696         	mov	lr, r2
    32da: 68aa         	ldr	r2, [r5, #0x8]
    32dc: 60ab         	str	r3, [r5, #0x8]
    32de: e9c4 0201    	strd	r0, r2, [r4, #4]
    32e2: ed9d 4a26    	vldr	s8, [sp, #152]
    32e6: f04f 0004    	mov.w	r0, #0x4
    32ea: ee14 2a10    	vmov	r2, s8
    32ee: bfc8         	it	gt
    32f0: 2008         	movgt	r0, #0x8
    32f2: ed8d 5a21    	vstr	s10, [sp, #132]
    32f6: f859 3000    	ldr.w	r3, [r9, r0]
    32fa: 4448         	add	r0, r9
    32fc: f022 4200    	bic	r2, r2, #0x80000000
    3300: f8c4 c000    	str.w	r12, [r4]
    3304: f1b2 4fff    	cmp.w	r2, #0x7f800000
    3308: 9320         	str	r3, [sp, #0x80]
    330a: edc0 4a00    	vstr	s9, [r0]
    330e: f280 84d3    	bge.w	0x3cb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x9a6
    3312: eeb0 5ac4    	vabs.f32	s10, s8
    3316: eeb4 5a40    	vcmp.f32	s10, s0
    331a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    331e: f100 84cb    	bmi.w	0x3cb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x996
    3322: ed9d 5a29    	vldr	s10, [sp, #164]
    3326: ed9d 7a2a    	vldr	s14, [sp, #168]
    332a: ee85 6a04    	vdiv.f32	s12, s10, s8
    332e: ed9d 5a27    	vldr	s10, [sp, #156]
    3332: ee06 7a45    	vmls.f32	s14, s12, s10
    3336: ee17 0a10    	vmov	r0, s14
    333a: f020 4000    	bic	r0, r0, #0x80000000
    333e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3342: f280 84b9    	bge.w	0x3cb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x972
    3346: eef0 3ac7    	vabs.f32	s7, s14
    334a: eef4 3a40    	vcmp.f32	s7, s0
    334e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3352: f100 84b1    	bmi.w	0x3cb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x962
    3356: eddd 3a20    	vldr	s7, [sp, #128]
    335a: eddd 4a21    	vldr	s9, [sp, #132]
    335e: ee46 4a63    	vmls.f32	s9, s12, s7
    3362: edcd ea07    	vstr	s29, [sp, #28]
    3366: ed8d aa09    	vstr	s20, [sp, #36]
    336a: ee84 7a87    	vdiv.f32	s14, s9, s14
    336e: ed8d 7a21    	vstr	s14, [sp, #132]
    3372: ee45 3a47    	vmls.f32	s7, s10, s14
    3376: ed9d 5a1a    	vldr	s10, [sp, #104]
    337a: eeb0 5ac5    	vabs.f32	s10, s10
    337e: eeb4 5a45    	vcmp.f32	s10, s10
    3382: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3386: eec3 6a84    	vdiv.f32	s13, s7, s8
    338a: ed9f 4ab7    	vldr	s8, [pc, #732]          @ 0x3668 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd68>
    338e: ee02 3a66    	vmls.f32	s6, s4, s13
    3392: fe10 2a85    	vselvs.f32	s4, s1, s10
    3396: ed9f 5ab5    	vldr	s10, [pc, #724]         @ 0x366c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd6c>
    339a: ee02 3ac7    	vmls.f32	s6, s5, s14
    339e: eeb4 2a60    	vcmp.f32	s4, s1
    33a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33a6: fe32 2a20    	vselgt.f32	s4, s4, s1
    33aa: ee83 8a21    	vdiv.f32	s16, s6, s3
    33ae: ee22 2a05    	vmul.f32	s4, s4, s10
    33b2: eeb0 6ac8    	vabs.f32	s12, s16
    33b6: fe82 2a44    	vminnm.f32	s4, s4, s8
    33ba: eeb4 6a42    	vcmp.f32	s12, s4
    33be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33c2: d91d         	bls	0x3400 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb00> @ imm = #0x3a
    33c4: 2400         	movs	r4, #0x0
    33c6: eef0 aa4c    	vmov.f32	s21, s24
    33ca: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    33ce: eddf eaa8    	vldr	s29, [pc, #672]         @ 0x3670 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    33d2: ed9f 0aa8    	vldr	s0, [pc, #672]          @ 0x3674 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd74>
    33d6: eef4 9a40    	vcmp.f32	s19, s0
    33da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33de: d854         	bhi	0x348a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb8a> @ imm = #0xa8
    33e0: f1a1 0010    	sub.w	r0, r1, #0x10
    33e4: fab0 f080    	clz	r0, r0
    33e8: 0940         	lsrs	r0, r0, #0x5
    33ea: 4320         	orrs	r0, r4
    33ec: d050         	beq	0x3490 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb90> @ imm = #0xa0
    33ee: f000 bc4d    	b.w	0x3c8c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x138c> @ imm = #0x89a
    33f2: bf00         	nop
    33f4: 2b 18 15 3b  	.word	0x3b15182b
    33f8: 79 2e 02 b9  	.word	0xb9022e79
    33fc: 00 bf 00 bf  	.word	0xbf00bf00
    3400: ed9d 2a1c    	vldr	s4, [sp, #112]
    3404: eeb0 3ae6    	vabs.f32	s6, s13
    3408: eeb0 2ac2    	vabs.f32	s4, s4
    340c: eef0 aa4c    	vmov.f32	s21, s24
    3410: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    3414: eddf ea96    	vldr	s29, [pc, #600]         @ 0x3670 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    3418: eeb4 2a42    	vcmp.f32	s4, s4
    341c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3420: fe10 2a82    	vselvs.f32	s4, s1, s4
    3424: eeb4 2a60    	vcmp.f32	s4, s1
    3428: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    342c: fe32 2a20    	vselgt.f32	s4, s4, s1
    3430: ee22 2a05    	vmul.f32	s4, s4, s10
    3434: fe82 2a44    	vminnm.f32	s4, s4, s8
    3438: eeb4 3a42    	vcmp.f32	s6, s4
    343c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3440: d81b         	bhi	0x347a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb7a> @ imm = #0x36
    3442: ed9d 0a19    	vldr	s0, [sp, #100]
    3446: eeb0 3ac7    	vabs.f32	s6, s14
    344a: eeb0 2ac0    	vabs.f32	s4, s0
    344e: eeb4 2a42    	vcmp.f32	s4, s4
    3452: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3456: fe10 2a82    	vselvs.f32	s4, s1, s4
    345a: eeb4 2a60    	vcmp.f32	s4, s1
    345e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3462: fe32 2a20    	vselgt.f32	s4, s4, s1
    3466: ee22 2a05    	vmul.f32	s4, s4, s10
    346a: fe82 2a44    	vminnm.f32	s4, s4, s8
    346e: eeb4 3a42    	vcmp.f32	s6, s4
    3472: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3476: f240 83cf    	bls.w	0x3c18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1318> @ imm = #0x79e
    347a: 2400         	movs	r4, #0x0
    347c: ed9f 0a7d    	vldr	s0, [pc, #500]          @ 0x3674 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd74>
    3480: eef4 9a40    	vcmp.f32	s19, s0
    3484: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3488: d9aa         	bls	0x33e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xae0> @ imm = #-0xac
    348a: 2910         	cmp	r1, #0x10
    348c: f000 841c    	beq.w	0x3cc8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13c8> @ imm = #0x838
    3490: f04f 547e    	mov.w	r4, #0x3f800000
    3494: ed8d 6a06    	vstr	s12, [sp, #24]
    3498: edcd 9a0a    	vstr	s19, [sp, #40]
    349c: e018         	b	0x34d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbd0> @ imm = #0x30
    349e: bf00         	nop
    34a0: fc 9d 08 bf  	.word	0xbf089dfc
    34a4: 6f f3 03 be  	.word	0xbe03f36f
    34a8: d5 35 a4 be  	.word	0xbea435d5
    34ac: 0a d7 23 3c  	.word	0x3c23d70a
    34b0: 00 00 00 00  	.word	0x00000000
    34b4: 00 bf 00 bf  	.word	0xbf00bf00
    34b8: eef0 aa4c    	vmov.f32	s21, s24
    34bc: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    34c0: f5a4 0400    	sub.w	r4, r4, #0x800000
    34c4: eddf ea6a    	vldr	s29, [pc, #424]         @ 0x3670 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    34c8: f1b4 5f66    	cmp.w	r4, #0x39800000
    34cc: f000 83b0    	beq.w	0x3c30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1330> @ imm = #0x760
    34d0: ee04 4a90    	vmov	s9, r4
    34d4: ed9d aa1a    	vldr	s20, [sp, #104]
    34d8: ed9f 5b67    	vldr	d5, [pc, #412]          @ 0x3678 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd78>
    34dc: eddd da13    	vldr	s27, [sp, #76]
    34e0: ed9d ba1c    	vldr	s22, [sp, #112]
    34e4: ee08 aa24    	vmla.f32	s20, s16, s9
    34e8: ed9f 4abf    	vldr	s8, [pc, #764]          @ 0x37e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xee8>
    34ec: ed9d 3b14    	vldr	d3, [sp, #80]
    34f0: ee06 baa4    	vmla.f32	s22, s13, s9
    34f4: ed9d 0a17    	vldr	s0, [sp, #92]
    34f8: eeb0 6a6f    	vmov.f32	s12, s31
    34fc: eeb0 fa6f    	vmov.f32	s30, s31
    3500: eeb7 2aca    	vcvt.f64.f32	d2, s20
    3504: ee02 3b05    	vmla.f64	d3, d2, d5
    3508: ed9f 5ab6    	vldr	s10, [pc, #728]         @ 0x37e4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xee4>
    350c: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    3510: ee43 da2a    	vmla.f32	s27, s6, s21
    3514: ed9d 3a12    	vldr	s6, [sp, #72]
    3518: ee0a 3a04    	vmla.f32	s6, s20, s8
    351c: ee0b 3a05    	vmla.f32	s6, s22, s10
    3520: eeb0 5a6f    	vmov.f32	s10, s31
    3524: eeb4 1a6d    	vcmp.f32	s2, s27
    3528: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    352c: fe31 4a2d    	vselgt.f32	s8, s2, s27
    3530: eef0 3ac3    	vabs.f32	s7, s6
    3534: eeb4 4a40    	vcmp.f32	s8, s0
    3538: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    353c: eeb5 3a40    	vcmp.f32	s6, #0
    3540: eeb0 3a6f    	vmov.f32	s6, s31
    3544: fe70 1a04    	vselgt.f32	s3, s0, s8
    3548: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    354c: bf48         	it	mi
    354e: eeb0 3a6b    	vmovmi.f32	s6, s23
    3552: eef4 3a6e    	vcmp.f32	s7, s29
    3556: fe30 4a83    	vselgt.f32	s8, s1, s6
    355a: eeb0 3a6f    	vmov.f32	s6, s31
    355e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3562: f280 80b9    	bge.w	0x36d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x172
    3566: eeb0 5a6f    	vmov.f32	s10, s31
    356a: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    356e: ed9f 0ad7    	vldr	s0, [pc, #860]          @ 0x38cc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfcc>
    3572: eef4 3a40    	vcmp.f32	s7, s0
    3576: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    357a: d91b         	bls	0x35b4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xcb4> @ imm = #0x36
    357c: ed9f 0ad4    	vldr	s0, [pc, #848]          @ 0x38d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd0>
    3580: eef4 3a40    	vcmp.f32	s7, s0
    3584: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3588: d90a         	bls	0x35a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xca0> @ imm = #0x14
    358a: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x38d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd4>
    358e: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    3592: ee33 5a80    	vadd.f32	s10, s7, s0
    3596: ed9f 0ad0    	vldr	s0, [pc, #832]          @ 0x38d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd8>
    359a: e007         	b	0x35ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xcac> @ imm = #0xe
    359c: 08 e5 3c 1e  	.word	0x1e3ce508
    35a0: ed9f 0ace    	vldr	s0, [pc, #824]          @ 0x38dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfdc>
    35a4: ee33 5a80    	vadd.f32	s10, s7, s0
    35a8: ed9f 0acd    	vldr	s0, [pc, #820]          @ 0x38e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe0>
    35ac: ee05 3a00    	vmla.f32	s6, s10, s0
    35b0: ee24 5a00    	vmul.f32	s10, s8, s0
    35b4: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    35b8: ee30 3a43    	vsub.f32	s6, s0, s6
    35bc: fe83 4a2f    	vmaxnm.f32	s8, s6, s31
    35c0: eeb1 3a45    	vneg.f32	s6, s10
    35c4: eeb5 4a40    	vcmp.f32	s8, #0
    35c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    35cc: d944         	bls	0x3658 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd58> @ imm = #0x88
    35ce: eeb0 5ae1    	vabs.f32	s10, s3
    35d2: eeb4 5a44    	vcmp.f32	s10, s8
    35d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    35da: d951         	bls	0x3680 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd80> @ imm = #0xa2
    35dc: ee84 5a05    	vdiv.f32	s10, s8, s10
    35e0: eef0 5a60    	vmov.f32	s11, s1
    35e4: ee25 6a05    	vmul.f32	s12, s10, s10
    35e8: ee26 6a06    	vmul.f32	s12, s12, s12
    35ec: ee26 6a06    	vmul.f32	s12, s12, s12
    35f0: ee66 3a06    	vmul.f32	s7, s12, s12
    35f4: ee33 6aa0    	vadd.f32	s12, s7, s1
    35f8: eeb4 6a60    	vcmp.f32	s12, s1
    35fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3600: d009         	beq	0x3616 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd16> @ imm = #0x12
    3602: eef0 5a46    	vmov.f32	s11, s12
    3606: eef1 5ae5    	vsqrt.f32	s11, s11
    360a: eef1 5ae5    	vsqrt.f32	s11, s11
    360e: eef1 5ae5    	vsqrt.f32	s11, s11
    3612: eef1 5ae5    	vsqrt.f32	s11, s11
    3616: ee80 9aa5    	vdiv.f32	s18, s1, s11
    361a: eef4 1a61    	vcmp.f32	s3, s3
    361e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3622: eec9 5a06    	vdiv.f32	s11, s18, s12
    3626: ed9f 6aaf    	vldr	s12, [pc, #700]         @ 0x38e4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe4>
    362a: eeb0 fa46    	vmov.f32	s30, s12
    362e: bf7f         	itttt	vc
    3630: ee11 0a90    	vmovvc	r0, s3
    3634: f36b 001e    	bfivc	r0, r11, #0, #31
    3638: ee0d 0a10    	vmovvc	s26, r0
    363c: ee2d 4a04    	vmulvc.f32	s8, s26, s8
    3640: bf7c         	itt	vc
    3642: ee24 6a09    	vmulvc.f32	s12, s8, s18
    3646: ee2d fa25    	vmulvc.f32	s30, s26, s11
    364a: ee25 4a23    	vmul.f32	s8, s10, s7
    364e: ee24 5a25    	vmul.f32	s10, s8, s11
    3652: e041         	b	0x36d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x82
    3654: bf00         	nop
    3656: bf00         	nop
    3658: eeb0 6a6f    	vmov.f32	s12, s31
    365c: eeb0 5a6f    	vmov.f32	s10, s31
    3660: eeb0 fa6f    	vmov.f32	s30, s31
    3664: e038         	b	0x36d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x70
    3666: bf00         	nop
    3668: ac c5 a7 37  	.word	0x37a7c5ac
    366c: bd 37 06 36  	.word	0x360637bd
    3670: 0a d7 23 3d  	.word	0x3d23d70a
    3674: 17 b7 d1 38  	.word	0x38d1b717
    3678: 1c 38 88 77  	.word	0x7788381c
    367c: bf 13 e1 bf  	.word	0xbfe113bf
    3680: ee81 5a84    	vdiv.f32	s10, s3, s8
    3684: eef0 3a60    	vmov.f32	s7, s1
    3688: ee25 5a05    	vmul.f32	s10, s10, s10
    368c: ee25 5a05    	vmul.f32	s10, s10, s10
    3690: ee25 5a05    	vmul.f32	s10, s10, s10
    3694: ee25 5a05    	vmul.f32	s10, s10, s10
    3698: ee35 6a20    	vadd.f32	s12, s10, s1
    369c: eeb4 6a60    	vcmp.f32	s12, s1
    36a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    36a4: d009         	beq	0x36ba <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdba> @ imm = #0x12
    36a6: eef0 3a46    	vmov.f32	s7, s12
    36aa: eef1 3ae3    	vsqrt.f32	s7, s7
    36ae: eef1 3ae3    	vsqrt.f32	s7, s7
    36b2: eef1 3ae3    	vsqrt.f32	s7, s7
    36b6: eef1 3ae3    	vsqrt.f32	s7, s7
    36ba: eec0 3aa3    	vdiv.f32	s7, s1, s7
    36be: ee61 5a85    	vmul.f32	s11, s3, s10
    36c2: ee83 5a86    	vdiv.f32	s10, s7, s12
    36c6: ee85 4a84    	vdiv.f32	s8, s11, s8
    36ca: ee21 6aa3    	vmul.f32	s12, s3, s7
    36ce: ee24 fa05    	vmul.f32	s30, s8, s10
    36d2: bf00         	nop
    36d4: bf00         	nop
    36d6: bf00         	nop
    36d8: ee3a da46    	vsub.f32	s26, s20, s12
    36dc: eddd 3a19    	vldr	s7, [sp, #100]
    36e0: ee47 3a24    	vmla.f32	s7, s14, s9
    36e4: eddf cad5    	vldr	s25, [pc, #852]         @ 0x3a3c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x113c>
    36e8: ee1d 0a10    	vmov	r0, s26
    36ec: f020 4000    	bic	r0, r0, #0x80000000
    36f0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    36f4: da07         	bge	0x3706 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xe06> @ imm = #0xe
    36f6: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    36fa: ee8d 4a00    	vdiv.f32	s8, s26, s0
    36fe: eeb0 4ac4    	vabs.f32	s8, s8
    3702: fec4 ca2f    	vmaxnm.f32	s25, s8, s31
    3706: ed9f 0b68    	vldr	d0, [pc, #416]          @ 0x38a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfa8>
    370a: eeb7 9acb    	vcvt.f64.f32	d9, s22
    370e: eddd 8a0f    	vldr	s17, [sp, #60]
    3712: ed9d 4b10    	vldr	d4, [sp, #64]
    3716: eeb0 ca6a    	vmov.f32	s24, s21
    371a: eeb0 6a6f    	vmov.f32	s12, s31
    371e: ee02 4b00    	vmla.f64	d4, d2, d0
    3722: ed9f 0b63    	vldr	d0, [pc, #396]          @ 0x38b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfb0>
    3726: ee09 4b00    	vmla.f64	d4, d9, d0
    372a: ed9f 0ac5    	vldr	s0, [pc, #788]          @ 0x3a40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1140>
    372e: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    3732: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    3736: ed9f 4a64    	vldr	s8, [pc, #400]          @ 0x38c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfc8>
    373a: eef0 4a6f    	vmov.f32	s9, s31
    373e: ee42 8a2a    	vmla.f32	s17, s4, s21
    3742: ed9d 2a0e    	vldr	s4, [sp, #56]
    3746: ee0a 2a04    	vmla.f32	s4, s20, s8
    374a: ed9f 4abe    	vldr	s8, [pc, #760]          @ 0x3a44 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1144>
    374e: ee63 2a84    	vmul.f32	s5, s7, s8
    3752: ee0b 2a00    	vmla.f32	s4, s22, s0
    3756: ed9d 0a16    	vldr	s0, [sp, #88]
    375a: eeb4 0a68    	vcmp.f32	s0, s17
    375e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3762: fe30 4a28    	vselgt.f32	s8, s0, s17
    3766: ed9d 0a18    	vldr	s0, [sp, #96]
    376a: ee32 2a22    	vadd.f32	s4, s4, s5
    376e: eeb4 4a40    	vcmp.f32	s8, s0
    3772: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3776: eeb5 2a40    	vcmp.f32	s4, #0
    377a: eef0 5ac2    	vabs.f32	s11, s4
    377e: eeb0 2a6f    	vmov.f32	s4, s31
    3782: fe70 aa04    	vselgt.f32	s21, s0, s8
    3786: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    378a: bf48         	it	mi
    378c: eeb0 2a6b    	vmovmi.f32	s4, s23
    3790: eef0 ba6f    	vmov.f32	s23, s31
    3794: eef4 5a6e    	vcmp.f32	s11, s29
    3798: fe30 4a82    	vselgt.f32	s8, s1, s4
    379c: eeb0 2a6f    	vmov.f32	s4, s31
    37a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    37a4: eddf eaa8    	vldr	s29, [pc, #672]         @ 0x3a48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1148>
    37a8: f280 80ca    	bge.w	0x3940 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x194
    37ac: eeb0 6a6f    	vmov.f32	s12, s31
    37b0: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    37b4: ed9f 0a45    	vldr	s0, [pc, #276]          @ 0x38cc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfcc>
    37b8: eef4 5a40    	vcmp.f32	s11, s0
    37bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    37c0: d920         	bls	0x3804 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xf04> @ imm = #0x40
    37c2: ed9f 0a43    	vldr	s0, [pc, #268]          @ 0x38d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd0>
    37c6: eef4 5a40    	vcmp.f32	s11, s0
    37ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    37ce: d90f         	bls	0x37f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xef0> @ imm = #0x1e
    37d0: ed9f 0a40    	vldr	s0, [pc, #256]          @ 0x38d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd4>
    37d4: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    37d8: ee35 6a80    	vadd.f32	s12, s11, s0
    37dc: ed9f 0a3e    	vldr	s0, [pc, #248]          @ 0x38d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd8>
    37e0: e00c         	b	0x37fc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xefc> @ imm = #0x18
    37e2: bf00         	nop
    37e4: d6 f8 e4 36  	.word	0x36e4f8d6
    37e8: 83 c0 96 b8  	.word	0xb896c083
    37ec: 00 bf 00 bf  	.word	0xbf00bf00
    37f0: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x38dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfdc>
    37f4: ee35 6a80    	vadd.f32	s12, s11, s0
    37f8: ed9f 0a39    	vldr	s0, [pc, #228]          @ 0x38e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe0>
    37fc: ee06 2a00    	vmla.f32	s4, s12, s0
    3800: ee24 6a00    	vmul.f32	s12, s8, s0
    3804: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    3808: eef1 ba46    	vneg.f32	s23, s12
    380c: ee30 2a42    	vsub.f32	s4, s0, s4
    3810: fe82 4a2f    	vmaxnm.f32	s8, s4, s31
    3814: eeb5 4a40    	vcmp.f32	s8, #0
    3818: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    381c: d94c         	bls	0x38b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfb8> @ imm = #0x98
    381e: eeb0 2aea    	vabs.f32	s4, s21
    3822: eeb4 2a44    	vcmp.f32	s4, s8
    3826: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    382a: d95d         	bls	0x38e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe8> @ imm = #0xba
    382c: ee84 2a02    	vdiv.f32	s4, s8, s4
    3830: eef0 4a60    	vmov.f32	s9, s1
    3834: ee22 6a02    	vmul.f32	s12, s4, s4
    3838: ee26 6a06    	vmul.f32	s12, s12, s12
    383c: ee26 6a06    	vmul.f32	s12, s12, s12
    3840: ee66 5a06    	vmul.f32	s11, s12, s12
    3844: ee35 6aa0    	vadd.f32	s12, s11, s1
    3848: eeb4 6a60    	vcmp.f32	s12, s1
    384c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3850: d009         	beq	0x3866 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xf66> @ imm = #0x12
    3852: eef0 4a46    	vmov.f32	s9, s12
    3856: eef1 4ae4    	vsqrt.f32	s9, s9
    385a: eef1 4ae4    	vsqrt.f32	s9, s9
    385e: eef1 4ae4    	vsqrt.f32	s9, s9
    3862: eef1 4ae4    	vsqrt.f32	s9, s9
    3866: eec0 9aa4    	vdiv.f32	s19, s1, s9
    386a: ee22 2a25    	vmul.f32	s4, s4, s11
    386e: eef4 aa6a    	vcmp.f32	s21, s21
    3872: ee89 9a86    	vdiv.f32	s18, s19, s12
    3876: ed9f 6a1b    	vldr	s12, [pc, #108]         @ 0x38e4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe4>
    387a: eef0 4a46    	vmov.f32	s9, s12
    387e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3882: bf7f         	itttt	vc
    3884: ee1a 0a90    	vmovvc	r0, s21
    3888: f36b 001e    	bfivc	r0, r11, #0, #31
    388c: ee04 0a90    	vmovvc	s9, r0
    3890: ee24 4a84    	vmulvc.f32	s8, s9, s8
    3894: bf7c         	itt	vc
    3896: ee24 6a29    	vmulvc.f32	s12, s8, s19
    389a: ee64 4a89    	vmulvc.f32	s9, s9, s18
    389e: ee22 2a09    	vmul.f32	s4, s4, s18
    38a2: e04d         	b	0x3940 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x9a
    38a4: bf00         	nop
    38a6: bf00         	nop
    38a8: 15 be b6 e5  	.word	0xe5b6be15
    38ac: 6d 7e c0 bf  	.word	0xbfc07e6d
    38b0: 67 42 87 92  	.word	0x92874267
    38b4: ba 86 d4 bf  	.word	0xbfd486ba
    38b8: eeb0 6a6f    	vmov.f32	s12, s31
    38bc: eeb0 2a6f    	vmov.f32	s4, s31
    38c0: eef0 4a6f    	vmov.f32	s9, s31
    38c4: e03c         	b	0x3940 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x78
    38c6: bf00         	nop
    38c8: d6 f8 e4 36  	.word	0x36e4f8d6
    38cc: 7c f2 b0 3a  	.word	0x3ab0f27c
    38d0: a6 9b c4 3b  	.word	0x3bc49ba6
    38d4: a6 9b c4 bb  	.word	0xbbc49ba6
    38d8: 79 78 b0 43  	.word	0x43b07879
    38dc: 7c f2 b0 ba  	.word	0xbab0f27c
    38e0: 53 4a a1 43  	.word	0x43a14a53
    38e4: 00 00 c0 7f  	.word	0x7fc00000
    38e8: ee8a 2a84    	vdiv.f32	s4, s21, s8
    38ec: eef0 4a60    	vmov.f32	s9, s1
    38f0: ee22 2a02    	vmul.f32	s4, s4, s4
    38f4: ee22 2a02    	vmul.f32	s4, s4, s4
    38f8: ee22 2a02    	vmul.f32	s4, s4, s4
    38fc: ee22 2a02    	vmul.f32	s4, s4, s4
    3900: ee32 6a20    	vadd.f32	s12, s4, s1
    3904: eeb4 6a60    	vcmp.f32	s12, s1
    3908: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    390c: d009         	beq	0x3922 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1022> @ imm = #0x12
    390e: eef0 4a46    	vmov.f32	s9, s12
    3912: eef1 4ae4    	vsqrt.f32	s9, s9
    3916: eef1 4ae4    	vsqrt.f32	s9, s9
    391a: eef1 4ae4    	vsqrt.f32	s9, s9
    391e: eef1 4ae4    	vsqrt.f32	s9, s9
    3922: eec0 4aa4    	vdiv.f32	s9, s1, s9
    3926: ee6a 5a82    	vmul.f32	s11, s21, s4
    392a: ee84 2a86    	vdiv.f32	s4, s9, s12
    392e: ee85 4a84    	vdiv.f32	s8, s11, s8
    3932: ee2a 6aa4    	vmul.f32	s12, s21, s9
    3936: ee64 4a02    	vmul.f32	s9, s8, s4
    393a: bf00         	nop
    393c: bf00         	nop
    393e: bf00         	nop
    3940: ee3b 9a46    	vsub.f32	s18, s22, s12
    3944: eddf 9a3d    	vldr	s19, [pc, #244]         @ 0x3a3c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x113c>
    3948: ee19 0a10    	vmov	r0, s18
    394c: f020 4000    	bic	r0, r0, #0x80000000
    3950: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3954: da17         	bge	0x3986 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1086> @ imm = #0x2e
    3956: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    395a: eef4 ca6c    	vcmp.f32	s25, s25
    395e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3962: ee89 4a00    	vdiv.f32	s8, s18, s0
    3966: eeb0 4ac4    	vabs.f32	s8, s8
    396a: fe14 6a2c    	vselvs.f32	s12, s8, s25
    396e: eeb4 4a44    	vcmp.f32	s8, s8
    3972: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3976: fe16 4a04    	vselvs.f32	s8, s12, s8
    397a: eeb4 6a44    	vcmp.f32	s12, s8
    397e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3982: fe76 9a04    	vselgt.f32	s19, s12, s8
    3986: eddf 5aef    	vldr	s11, [pc, #956]         @ 0x3d44 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1444>
    398a: ed9d 0a0c    	vldr	s0, [sp, #48]
    398e: ee2b 6a25    	vmul.f32	s12, s22, s11
    3992: ee36 4a00    	vadd.f32	s8, s12, s0
    3996: ed9f 0aec    	vldr	s0, [pc, #944]          @ 0x3d48 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1448>
    399a: ee03 4a80    	vmla.f32	s8, s7, s0
    399e: ed9d 0a0b    	vldr	s0, [sp, #44]
    39a2: ee36 6a00    	vadd.f32	s12, s12, s0
    39a6: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    39aa: ee03 6ae5    	vmls.f32	s12, s7, s11
    39ae: fec4 5a46    	vminnm.f32	s11, s8, s12
    39b2: ee70 ca65    	vsub.f32	s25, s0, s11
    39b6: eef8 5a00    	vmov.f32	s11, #-2.000000e+00
    39ba: eef4 ca65    	vcmp.f32	s25, s11
    39be: eef0 5a6e    	vmov.f32	s11, s29
    39c2: eef0 ea6f    	vmov.f32	s29, s31
    39c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39ca: d945         	bls	0x3a58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1158> @ imm = #0x8a
    39cc: eef4 ca6c    	vcmp.f32	s25, s25
    39d0: eef0 ea6f    	vmov.f32	s29, s31
    39d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39d8: eef0 7a4e    	vmov.f32	s15, s28
    39dc: fe5f 5aac    	vselvs.f32	s11, s31, s25
    39e0: eef5 5a40    	vcmp.f32	s11, #0
    39e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39e8: bfb8         	it	lt
    39ea: eef0 ea65    	vmovlt.f32	s29, s11
    39ee: eef0 5a60    	vmov.f32	s11, s1
    39f2: eef5 ca40    	vcmp.f32	s25, #0
    39f6: ee4e 5a80    	vmla.f32	s11, s29, s0
    39fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    39fe: ee65 5a8e    	vmul.f32	s11, s11, s28
    3a02: ed9f ead2    	vldr	s28, [pc, #840]         @ 0x3d4c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x144c>
    3a06: fec5 5a8e    	vmaxnm.f32	s11, s11, s28
    3a0a: d511         	bpl	0x3a30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1130> @ imm = #0x22
    3a0c: eef0 ea60    	vmov.f32	s29, s1
    3a10: ee4c ea80    	vmla.f32	s29, s25, s0
    3a14: eeb0 0a67    	vmov.f32	s0, s15
    3a18: ee6e caa7    	vmul.f32	s25, s29, s15
    3a1c: eef4 ca4e    	vcmp.f32	s25, s28
    3a20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a24: dd14         	ble	0x3a50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1150> @ imm = #0x28
    3a26: eddf eaca    	vldr	s29, [pc, #808]         @ 0x3d50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1450>
    3a2a: e013         	b	0x3a54 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1154> @ imm = #0x26
    3a2c: bf00         	nop
    3a2e: bf00         	nop
    3a30: eef0 ea6f    	vmov.f32	s29, s31
    3a34: eeb0 ea67    	vmov.f32	s28, s15
    3a38: e00e         	b	0x3a58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1158> @ imm = #0x1c
    3a3a: bf00         	nop
    3a3c: 00 00 80 7f  	.word	0x7f800000
    3a40: af e6 27 b9  	.word	0xb927e6af
    3a44: 79 2e 02 39  	.word	0x39022e79
    3a48: 95 bf d6 33  	.word	0x33d6bf95
    3a4c: 00 bf 00 bf  	.word	0xbf00bf00
    3a50: eef0 ea6f    	vmov.f32	s29, s31
    3a54: eeb0 ea40    	vmov.f32	s28, s0
    3a58: ed9f 0ab6    	vldr	s0, [pc, #728]          @ 0x3d34 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1434>
    3a5c: eddd ca0d    	vldr	s25, [sp, #52]
    3a60: ee4b ca00    	vmla.f32	s25, s22, s0
    3a64: ee7c cae2    	vsub.f32	s25, s25, s5
    3a68: ee53 caa5    	vnmls.f32	s25, s7, s11
    3a6c: ee1c 0a90    	vmov	r0, s25
    3a70: f020 4000    	bic	r0, r0, #0x80000000
    3a74: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3a78: f6bf ad1e    	bge.w	0x34b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb8> @ imm = #-0x5c4
    3a7c: ed9f 0ab5    	vldr	s0, [pc, #724]          @ 0x3d54 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1454>
    3a80: eef4 9a69    	vcmp.f32	s19, s19
    3a84: eecc 2a80    	vdiv.f32	s5, s25, s0
    3a88: ed9d 0a0a    	vldr	s0, [sp, #40]
    3a8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a90: eef0 2ae2    	vabs.f32	s5, s5
    3a94: fe52 9aa9    	vselvs.f32	s19, s5, s19
    3a98: eef4 2a62    	vcmp.f32	s5, s5
    3a9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3aa0: fe59 2aa2    	vselvs.f32	s5, s19, s5
    3aa4: eef4 9a62    	vcmp.f32	s19, s5
    3aa8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3aac: fe79 9aa2    	vselgt.f32	s19, s19, s5
    3ab0: eef4 9a40    	vcmp.f32	s19, s0
    3ab4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ab8: f57f acfe    	bpl.w	0x34b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb8> @ imm = #-0x604
    3abc: ed9d 0a17    	vldr	s0, [sp, #92]
    3ac0: eddf 2a98    	vldr	s5, [pc, #608]          @ 0x3d24 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1424>
    3ac4: eeb4 0a6d    	vcmp.f32	s0, s27
    3ac8: eddf 6a97    	vldr	s13, [pc, #604]         @ 0x3d28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1428>
    3acc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ad0: eef4 da41    	vcmp.f32	s27, s2
    3ad4: ed9d 0a18    	vldr	s0, [sp, #96]
    3ad8: fe32 7aa6    	vselgt.f32	s14, s5, s13
    3adc: f44f 7050    	mov.w	r0, #0x340
    3ae0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ae4: eeb4 0a68    	vcmp.f32	s0, s17
    3ae8: ed9d 0a16    	vldr	s0, [sp, #88]
    3aec: fe37 7a26    	vselgt.f32	s14, s14, s13
    3af0: f64d 3268    	movw	r2, #0xdb68
    3af4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3af8: eef4 8a40    	vcmp.f32	s17, s0
    3afc: f2c0 0200    	movt	r2, #0x0
    3b00: fe72 2aa6    	vselgt.f32	s5, s5, s13
    3b04: f04f 5b7e    	mov.w	r11, #0x3f800000
    3b08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b0c: eeb4 4a46    	vcmp.f32	s8, s12
    3b10: fe32 4aa6    	vselgt.f32	s8, s5, s13
    3b14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b18: bf88         	it	hi
    3b1a: f44f 7060    	movhi.w	r0, #0x380
    3b1e: 2910         	cmp	r1, #0x10
    3b20: eddd 2a03    	vldr	s5, [sp, #12]
    3b24: 4410         	add	r0, r2
    3b26: 9a00         	ldr	r2, [sp]
    3b28: ed90 6b08    	vldr	d6, [r0, #32]
    3b2c: edc2 2a02    	vstr	s5, [r2, #8]
    3b30: eddd 2a02    	vldr	s5, [sp, #8]
    3b34: ed8d 6b1a    	vstr	d6, [sp, #104]
    3b38: edc2 2a03    	vstr	s5, [r2, #12]
    3b3c: ed90 6b0a    	vldr	d6, [r0, #40]
    3b40: ed82 aa04    	vstr	s20, [r2, #16]
    3b44: ed8d 6b1c    	vstr	d6, [sp, #112]
    3b48: ed82 ba05    	vstr	s22, [r2, #20]
    3b4c: ed90 6b0c    	vldr	d6, [r0, #48]
    3b50: edc2 3a06    	vstr	s7, [r2, #24]
    3b54: 9801         	ldr	r0, [sp, #0x4]
    3b56: 61d0         	str	r0, [r2, #0x1c]
    3b58: f000 80c6    	beq.w	0x3ce8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13e8> @ imm = #0x18c
    3b5c: ee27 5a05    	vmul.f32	s10, s14, s10
    3b60: ed9f 0a72    	vldr	s0, [pc, #456]          @ 0x3d2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x142c>
    3b64: ee63 2a0f    	vmul.f32	s5, s6, s30
    3b68: eddf 8a6c    	vldr	s17, [pc, #432]         @ 0x3d1c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x141c>
    3b6c: eeb7 6bc6    	vcvt.f32.f64	s12, d6
    3b70: f1ba 0f10    	cmp.w	r10, #0x10
    3b74: ee25 3a2f    	vmul.f32	s6, s10, s31
    3b78: f10e 0e01    	add.w	lr, lr, #0x1
    3b7c: ee22 fa80    	vmul.f32	s30, s5, s0
    3b80: ed9f 0a6b    	vldr	s0, [pc, #428]          @ 0x3d30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1430>
    3b84: ee05 fa00    	vmla.f32	s30, s10, s0
    3b88: ed9f 5a67    	vldr	s10, [pc, #412]         @ 0x3d28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1428>
    3b8c: eeb0 7a43    	vmov.f32	s14, s6
    3b90: ee02 7a85    	vmla.f32	s14, s5, s10
    3b94: ee23 5aae    	vmul.f32	s10, s7, s29
    3b98: ed9f 0a66    	vldr	s0, [pc, #408]          @ 0x3d34 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1434>
    3b9c: ee6b 4aa4    	vmul.f32	s9, s23, s9
    3ba0: eef0 ea6a    	vmov.f32	s29, s21
    3ba4: ee24 2a02    	vmul.f32	s4, s8, s4
    3ba8: eeb0 4a40    	vmov.f32	s8, s0
    3bac: ee05 4a46    	vmls.f32	s8, s10, s12
    3bb0: ed9f 6a62    	vldr	s12, [pc, #392]         @ 0x3d3c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x143c>
    3bb4: ee24 8a86    	vmul.f32	s16, s9, s12
    3bb8: ed9f 6a61    	vldr	s12, [pc, #388]         @ 0x3d40 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1440>
    3bbc: ee02 8a06    	vmla.f32	s16, s4, s12
    3bc0: ed9f 6a5d    	vldr	s12, [pc, #372]         @ 0x3d38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1438>
    3bc4: ee02 3ae8    	vmls.f32	s6, s5, s17
    3bc8: 4651         	mov	r1, r10
    3bca: ee62 7a2f    	vmul.f32	s15, s4, s31
    3bce: edcd 3a19    	vstr	s7, [sp, #100]
    3bd2: ee62 6a06    	vmul.f32	s13, s4, s12
    3bd6: ed9d 2b1a    	vldr	d2, [sp, #104]
    3bda: ee44 6ae8    	vmls.f32	s13, s9, s17
    3bde: ed8d aa1a    	vstr	s20, [sp, #104]
    3be2: eef7 bbc2    	vcvt.f32.f64	s23, d2
    3be6: ee44 7ac0    	vmls.f32	s15, s9, s0
    3bea: eeb0 aa61    	vmov.f32	s20, s3
    3bee: ed9d 2b1c    	vldr	d2, [sp, #112]
    3bf2: ee6b 8ac5    	vnmul.f32	s17, s23, s10
    3bf6: ed8d ba1c    	vstr	s22, [sp, #112]
    3bfa: eeb7 6bc2    	vcvt.f32.f64	s12, d2
    3bfe: ee75 ba84    	vadd.f32	s23, s11, s8
    3c02: eef1 4a4d    	vneg.f32	s9, s26
    3c06: ee65 da06    	vmul.f32	s27, s10, s12
    3c0a: eeb1 9a49    	vneg.f32	s18, s18
    3c0e: eeb1 2a6c    	vneg.f32	s4, s25
    3c12: f77f aaaf    	ble.w	0x3174 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x874> @ imm = #-0xaa2
    3c16: e067         	b	0x3ce8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13e8> @ imm = #0xce
    3c18: 2401         	movs	r4, #0x1
    3c1a: ed9f 0a50    	vldr	s0, [pc, #320]          @ 0x3d5c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x145c>
    3c1e: eef4 9a40    	vcmp.f32	s19, s0
    3c22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c26: f63f ac30    	bhi.w	0x348a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb8a> @ imm = #-0x7a0
    3c2a: f7ff bbd9    	b.w	0x33e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xae0> @ imm = #-0x84e
    3c2e: bf00         	nop
    3c30: eddd 9a0a    	vldr	s19, [sp, #40]
    3c34: ed9f 0a49    	vldr	s0, [pc, #292]          @ 0x3d5c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x145c>
    3c38: eef4 9a40    	vcmp.f32	s19, s0
    3c3c: 2000         	movs	r0, #0x0
    3c3e: eeb0 0ae6    	vabs.f32	s0, s13
    3c42: ed9f 1a45    	vldr	s2, [pc, #276]          @ 0x3d58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1458>
    3c46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c4a: bf98         	it	ls
    3c4c: 2001         	movls	r0, #0x1
    3c4e: ed9d 2a06    	vldr	s4, [sp, #24]
    3c52: 2200         	movs	r2, #0x0
    3c54: eeb4 2a41    	vcmp.f32	s4, s2
    3c58: 2100         	movs	r1, #0x0
    3c5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c5e: bf98         	it	ls
    3c60: 2201         	movls	r2, #0x1
    3c62: eeb4 0a41    	vcmp.f32	s0, s2
    3c66: f10e 0e01    	add.w	lr, lr, #0x1
    3c6a: eeb0 0ac7    	vabs.f32	s0, s14
    3c6e: 4010         	ands	r0, r2
    3c70: 2200         	movs	r2, #0x0
    3c72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c76: bf98         	it	ls
    3c78: 2201         	movls	r2, #0x1
    3c7a: eeb4 0a41    	vcmp.f32	s0, s2
    3c7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c82: bf98         	it	ls
    3c84: 2101         	movls	r1, #0x1
    3c86: 4010         	ands	r0, r2
    3c88: ea00 0401    	and.w	r4, r0, r1
    3c8c: 9804         	ldr	r0, [sp, #0x10]
    3c8e: ed9d 0a09    	vldr	s0, [sp, #36]
    3c92: ed80 0a02    	vstr	s0, [r0, #8]
    3c96: ed9d 0a07    	vldr	s0, [sp, #28]
    3c9a: ed80 0a03    	vstr	s0, [r0, #12]
    3c9e: 9805         	ldr	r0, [sp, #0x14]
    3ca0: edc0 9a00    	vstr	s19, [r0]
    3ca4: f880 e004    	strb.w	lr, [r0, #0x4]
    3ca8: 7144         	strb	r4, [r0, #0x5]
    3caa: b02e         	add	sp, #0xb8
    3cac: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    3cb0: b001         	add	sp, #0x4
    3cb2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    3cb6: bdf0         	pop	{r4, r5, r6, r7, pc}
    3cb8: 9905         	ldr	r1, [sp, #0x14]
    3cba: 2000         	movs	r0, #0x0
    3cbc: edc1 9a00    	vstr	s19, [r1]
    3cc0: f881 e004    	strb.w	lr, [r1, #0x4]
    3cc4: 7148         	strb	r0, [r1, #0x5]
    3cc6: e7f0         	b	0x3caa <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13aa> @ imm = #-0x20
    3cc8: 2400         	movs	r4, #0x0
    3cca: e7df         	b	0x3c8c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x138c> @ imm = #-0x42
    3ccc: bf00         	nop
    3cce: bf00         	nop
    3cd0: f64d 20a3    	movw	r0, #0xdaa3
    3cd4: f64d 7248    	movw	r2, #0xdf48
    3cd8: f2c0 0000    	movt	r0, #0x0
    3cdc: f2c0 0200    	movt	r2, #0x0
    3ce0: a922         	add	r1, sp, #0x88
    3ce2: f008 f8e3    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0x81c6
    3ce6: bf00         	nop
    3ce8: f64d 3039    	movw	r0, #0xdb39
    3cec: f64d 7228    	movw	r2, #0xdf28
    3cf0: f2c0 0000    	movt	r0, #0x0
    3cf4: f2c0 0200    	movt	r2, #0x0
    3cf8: 2128         	movs	r1, #0x28
    3cfa: f008 f8db    	bl	0xbeb4 <core::panicking::panic> @ imm = #0x81b6
    3cfe: bf00         	nop
    3d00: eddf 2a07    	vldr	s5, [pc, #28]           @ 0x3d20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1420>
    3d04: eeb0 6a62    	vmov.f32	s12, s5
    3d08: f7fe bf15    	b.w	0x2b36 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x236> @ imm = #-0x11d6
    3d0c: bf00         	nop
    3d0e: bf00         	nop
    3d10: ed9f 5a03    	vldr	s10, [pc, #12]          @ 0x3d20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1420>
    3d14: eeb0 4a45    	vmov.f32	s8, s10
    3d18: f7ff b88d    	b.w	0x2e36 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x536> @ imm = #-0xee6
    3d1c: d6 f8 e4 36  	.word	0x36e4f8d6
    3d20: 00 00 c0 7f  	.word	0x7fc00000
    3d24: 79 61 2e c3  	.word	0xc32e6179
    3d28: 00 00 00 80  	.word	0x80000000
    3d2c: 83 c0 96 38  	.word	0x3896c083
    3d30: fc 9d 08 bf  	.word	0xbf089dfc
    3d34: 79 2e 02 39  	.word	0x39022e79
    3d38: 6f f3 03 be  	.word	0xbe03f36f
    3d3c: af e6 27 39  	.word	0x3927e6af
    3d40: d5 35 a4 be  	.word	0xbea435d5
    3d44: 51 e6 7f 3f  	.word	0x3f7fe651
    3d48: 99 76 cd 39  	.word	0x39cd7699
    3d4c: 95 bf d6 33  	.word	0x33d6bf95
    3d50: 2b 18 15 3b  	.word	0x3b15182b
    3d54: 0a d7 23 3c  	.word	0x3c23d70a
    3d58: ac c5 a7 37  	.word	0x37a7c5ac
    3d5c: 17 b7 d1 38  	.word	0x38d1b717

00003d60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>>:
    3d60: b5f0         	push	{r4, r5, r6, r7, lr}
    3d62: af03         	add	r7, sp, #0xc
    3d64: e92d 0f00    	push.w	{r8, r9, r10, r11}
    3d68: b081         	sub	sp, #0x4
    3d6a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    3d6e: b08a         	sub	sp, #0x28
    3d70: ed9f 3aed    	vldr	s6, [pc, #948]          @ 0x4128 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3c8>
    3d74: ee22 2a03    	vmul.f32	s4, s4, s6
    3d78: ed9f 3aec    	vldr	s6, [pc, #944]          @ 0x412c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3cc>
    3d7c: ed9f 4aed    	vldr	s8, [pc, #948]          @ 0x4134 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d4>
    3d80: ed9f 5aeb    	vldr	s10, [pc, #940]         @ 0x4130 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d0>
    3d84: ee32 3a03    	vadd.f32	s6, s4, s6
    3d88: ee32 4a04    	vadd.f32	s8, s4, s8
    3d8c: ee83 ba05    	vdiv.f32	s22, s6, s10
    3d90: ee84 ca05    	vdiv.f32	s24, s8, s10
    3d94: eeb4 ba4c    	vcmp.f32	s22, s24
    3d98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3d9c: f200 81b0    	bhi.w	0x4100 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3a0> @ imm = #0x360
    3da0: eeb0 8b41    	vmov.f64	d8, d1
    3da4: 4681         	mov	r9, r0
    3da6: ed91 1a05    	vldr	s2, [r1, #20]
    3daa: a806         	add	r0, sp, #0x18
    3dac: ed91 4a06    	vldr	s8, [r1, #24]
    3db0: ed8d 1a02    	vstr	s2, [sp, #8]
    3db4: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    3db8: ed8d 4a01    	vstr	s8, [sp, #4]
    3dbc: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    3dc0: ed91 ea07    	vldr	s28, [r1, #28]
    3dc4: ed9f 3bd4    	vldr	d3, [pc, #848]          @ 0x4118 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3b8>
    3dc8: eddf aadd    	vldr	s21, [pc, #884]         @ 0x4140 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3e0>
    3dcc: 4614         	mov	r4, r2
    3dce: ee01 8b03    	vmla.f64	d8, d1, d3
    3dd2: 460e         	mov	r6, r1
    3dd4: eeb7 1ace    	vcvt.f64.f32	d1, s28
    3dd8: ed9f dad7    	vldr	s26, [pc, #860]         @ 0x4138 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d8>
    3ddc: ee04 8b43    	vmls.f64	d8, d4, d3
    3de0: ed9f fbcf    	vldr	d15, [pc, #828]         @ 0x4120 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3c0>
    3de4: eeb0 3b48    	vmov.f64	d3, d8
    3de8: ee01 3b0f    	vmla.f64	d3, d1, d15
    3dec: ed9f 1ad3    	vldr	s2, [pc, #844]          @ 0x413c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3dc>
    3df0: ee62 ca01    	vmul.f32	s25, s4, s2
    3df4: eeb7 1bc3    	vcvt.f32.f64	s2, d3
    3df8: eeb0 9a6c    	vmov.f32	s18, s25
    3dfc: ee01 9a2a    	vmla.f32	s18, s2, s21
    3e00: eef7 bbc0    	vcvt.f32.f64	s23, d0
    3e04: eef0 0a6b    	vmov.f32	s1, s23
    3e08: ee4e 0a4d    	vmls.f32	s1, s28, s26
    3e0c: eeb4 ba49    	vcmp.f32	s22, s18
    3e10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e14: fe3b 0a09    	vselgt.f32	s0, s22, s18
    3e18: eeb4 0a4c    	vcmp.f32	s0, s24
    3e1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e20: fe3c aa00    	vselgt.f32	s20, s24, s0
    3e24: eeb0 0a4a    	vmov.f32	s0, s20
    3e28: f000 f9a2    	bl	0x4170 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x344
    3e2c: a0c5         	adr	r0, #788 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x195>
    3e2e: eeb4 9a4c    	vcmp.f32	s18, s24
    3e32: 1d01         	adds	r1, r0, #0x4
    3e34: 9100         	str	r1, [sp]
    3e36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e3a: bf48         	it	mi
    3e3c: 4608         	movmi	r0, r1
    3e3e: eeb4 9a4b    	vcmp.f32	s18, s22
    3e42: ed9d 0a06    	vldr	s0, [sp, #24]
    3e46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3e4a: ee3e 1a40    	vsub.f32	s2, s28, s0
    3e4e: ed90 0a00    	vldr	s0, [r0]
    3e52: ed9f 2abe    	vldr	s4, [pc, #760]          @ 0x414c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3ec>
    3e56: 9404         	str	r4, [sp, #0x10]
    3e58: fe30 0a02    	vselgt.f32	s0, s0, s4
    3e5c: ed9d 2a07    	vldr	s4, [sp, #28]
    3e60: ee11 0a10    	vmov	r0, s2
    3e64: ed9f 5aba    	vldr	s10, [pc, #744]         @ 0x4150 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f0>
    3e68: ee20 2a02    	vmul.f32	s4, s0, s4
    3e6c: ed9d 0a08    	vldr	s0, [sp, #32]
    3e70: ee20 0a0d    	vmul.f32	s0, s0, s26
    3e74: f020 4000    	bic	r0, r0, #0x80000000
    3e78: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3e7c: db04         	blt	0x3e88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x128> @ imm = #0x8
    3e7e: eddf eab5    	vldr	s29, [pc, #724]         @ 0x4154 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f4>
    3e82: e00b         	b	0x3e9c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x13c> @ imm = #0x16
    3e84: bf00         	nop
    3e86: bf00         	nop
    3e88: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    3e8c: ed9f 4ab2    	vldr	s8, [pc, #712]          @ 0x4158 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f8>
    3e90: ee81 3a03    	vdiv.f32	s6, s2, s6
    3e94: eeb0 3ac3    	vabs.f32	s6, s6
    3e98: fec3 ea04    	vmaxnm.f32	s29, s6, s8
    3e9c: ee02 0a05    	vmla.f32	s0, s4, s10
    3ea0: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    3ea4: eeb1 1a41    	vneg.f32	s2, s2
    3ea8: f04f 0800    	mov.w	r8, #0x0
    3eac: 2400         	movs	r4, #0x0
    3eae: eddf 0aab    	vldr	s1, [pc, #684]          @ 0x415c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3fc>
    3eb2: ed9f 6aab    	vldr	s12, [pc, #684]         @ 0x4160 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    3eb6: ad06         	add	r5, sp, #0x18
    3eb8: ed9f daac    	vldr	s26, [pc, #688]         @ 0x416c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x40c>
    3ebc: 46c3         	mov	r11, r8
    3ebe: ee30 0a07    	vadd.f32	s0, s0, s14
    3ec2: f1b8 0f10    	cmp.w	r8, #0x10
    3ec6: bf18         	it	ne
    3ec8: f10b 0b01    	addne.w	r11, r11, #0x1
    3ecc: 2100         	movs	r1, #0x0
    3ece: ee10 0a10    	vmov	r0, s0
    3ed2: eeb0 2ac0    	vabs.f32	s4, s0
    3ed6: f020 4000    	bic	r0, r0, #0x80000000
    3eda: eeb4 2a60    	vcmp.f32	s4, s1
    3ede: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3ee2: f04f 0000    	mov.w	r0, #0x0
    3ee6: bfa8         	it	ge
    3ee8: 2001         	movge	r0, #0x1
    3eea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3eee: bf48         	it	mi
    3ef0: 2101         	movmi	r1, #0x1
    3ef2: 4308         	orrs	r0, r1
    3ef4: f040 80ec    	bne.w	0x40d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x370> @ imm = #0x1d8
    3ef8: ee81 9a00    	vdiv.f32	s18, s2, s0
    3efc: eef4 ea46    	vcmp.f32	s29, s12
    3f00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f04: eeb0 2ac9    	vabs.f32	s4, s18
    3f08: d906         	bls	0x3f18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x1b8> @ imm = #0xc
    3f0a: f1b8 0f10    	cmp.w	r8, #0x10
    3f0e: d129         	bne	0x3f64 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x204> @ imm = #0x52
    3f10: e0e2         	b	0x40d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x378> @ imm = #0x1c4
    3f12: bf00         	nop
    3f14: bf00         	nop
    3f16: bf00         	nop
    3f18: eeb0 0ace    	vabs.f32	s0, s28
    3f1c: ed9f 1a91    	vldr	s2, [pc, #580]          @ 0x4164 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x404>
    3f20: 2000         	movs	r0, #0x0
    3f22: eeb4 0a40    	vcmp.f32	s0, s0
    3f26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f2a: fe17 0a00    	vselvs.f32	s0, s14, s0
    3f2e: eeb4 0a47    	vcmp.f32	s0, s14
    3f32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f36: fe30 0a07    	vselgt.f32	s0, s0, s14
    3f3a: ee20 0a01    	vmul.f32	s0, s0, s2
    3f3e: ed9f 1a8a    	vldr	s2, [pc, #552]          @ 0x4168 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x408>
    3f42: fe80 0a41    	vminnm.f32	s0, s0, s2
    3f46: eeb4 2a40    	vcmp.f32	s4, s0
    3f4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f4e: bf98         	it	ls
    3f50: 2001         	movls	r0, #0x1
    3f52: f1b8 0f10    	cmp.w	r8, #0x10
    3f56: bf1c         	itt	ne
    3f58: eeb4 2a40    	vcmpne.f32	s4, s0
    3f5c: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    3f60: f240 80bb    	bls.w	0x40da <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x37a> @ imm = #0x176
    3f64: f04f 5a7e    	mov.w	r10, #0x3f800000
    3f68: ed8d 2a03    	vstr	s4, [sp, #12]
    3f6c: ed8d aa05    	vstr	s20, [sp, #20]
    3f70: e008         	b	0x3f84 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x224> @ imm = #0x10
    3f72: bf00         	nop
    3f74: bf00         	nop
    3f76: bf00         	nop
    3f78: f5aa 0a00    	sub.w	r10, r10, #0x800000
    3f7c: f1ba 5f66    	cmp.w	r10, #0x39800000
    3f80: f000 808e    	beq.w	0x40a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x340> @ imm = #0x11c
    3f84: ee00 aa10    	vmov	s0, r10
    3f88: eef0 da4e    	vmov.f32	s27, s28
    3f8c: eeb0 1b48    	vmov.f64	d1, d8
    3f90: 4628         	mov	r0, r5
    3f92: eef0 9a6c    	vmov.f32	s19, s25
    3f96: ee49 da00    	vmla.f32	s27, s18, s0
    3f9a: eeb7 0aed    	vcvt.f64.f32	d0, s27
    3f9e: ee00 1b0f    	vmla.f64	d1, d0, d15
    3fa2: eef0 0a6b    	vmov.f32	s1, s23
    3fa6: ee4d 0a8d    	vmla.f32	s1, s27, s26
    3faa: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    3fae: ee40 9a2a    	vmla.f32	s19, s0, s21
    3fb2: eeb4 ba69    	vcmp.f32	s22, s19
    3fb6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3fba: fe3b 0a29    	vselgt.f32	s0, s22, s19
    3fbe: eeb4 0a4c    	vcmp.f32	s0, s24
    3fc2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3fc6: fe3c aa00    	vselgt.f32	s20, s24, s0
    3fca: eeb0 0a4a    	vmov.f32	s0, s20
    3fce: f000 f8cf    	bl	0x4170 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x19e
    3fd2: ed9d 0a06    	vldr	s0, [sp, #24]
    3fd6: ee3d 1ac0    	vsub.f32	s2, s27, s0
    3fda: ee11 0a10    	vmov	r0, s2
    3fde: f020 4000    	bic	r0, r0, #0x80000000
    3fe2: f1b0 4fff    	cmp.w	r0, #0x7f800000
    3fe6: dac7         	bge	0x3f78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x218> @ imm = #-0x72
    3fe8: eeb3 0a08    	vmov.f32	s0, #2.400000e+01
    3fec: ed9f 2a5a    	vldr	s4, [pc, #360]          @ 0x4158 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f8>
    3ff0: ee81 0a00    	vdiv.f32	s0, s2, s0
    3ff4: eeb0 0ac0    	vabs.f32	s0, s0
    3ff8: fe80 2a02    	vmaxnm.f32	s4, s0, s4
    3ffc: eeb4 2a6e    	vcmp.f32	s4, s29
    4000: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4004: d5b8         	bpl	0x3f78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x218> @ imm = #-0x90
    4006: a04f         	adr	r0, #316 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x2f9>
    4008: 9900         	ldr	r1, [sp]
    400a: eef4 9a4c    	vcmp.f32	s19, s24
    400e: ed9f 3a4f    	vldr	s6, [pc, #316]          @ 0x414c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3ec>
    4012: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4016: bf48         	it	mi
    4018: 4608         	movmi	r0, r1
    401a: eef4 9a4b    	vcmp.f32	s19, s22
    401e: ed9d 0a02    	vldr	s0, [sp, #8]
    4022: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4026: ed86 0a05    	vstr	s0, [r6, #20]
    402a: ed90 0a00    	vldr	s0, [r0]
    402e: fe30 0a03    	vselgt.f32	s0, s0, s6
    4032: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    4036: ed9d 3a01    	vldr	s6, [sp, #4]
    403a: ed86 3a06    	vstr	s6, [r6, #24]
    403e: f1b8 0f10    	cmp.w	r8, #0x10
    4042: ed9d 4a07    	vldr	s8, [sp, #28]
    4046: ed9d 3a08    	vldr	s6, [sp, #32]
    404a: ed9f 5a41    	vldr	s10, [pc, #260]         @ 0x4150 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f0>
    404e: ed9f 6a44    	vldr	s12, [pc, #272]         @ 0x4160 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    4052: edc6 da07    	vstr	s27, [r6, #28]
    4056: eddf 0a41    	vldr	s1, [pc, #260]          @ 0x415c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3fc>
    405a: d014         	beq	0x4086 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x326> @ imm = #0x28
    405c: ee20 4a04    	vmul.f32	s8, s0, s8
    4060: ed9f 0a35    	vldr	s0, [pc, #212]          @ 0x4138 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d8>
    4064: ee23 0a00    	vmul.f32	s0, s6, s0
    4068: eeb0 ea6d    	vmov.f32	s28, s27
    406c: eeb1 1a41    	vneg.f32	s2, s2
    4070: eef0 ea42    	vmov.f32	s29, s4
    4074: ee04 0a05    	vmla.f32	s0, s8, s10
    4078: f1bb 0f10    	cmp.w	r11, #0x10
    407c: f104 0401    	add.w	r4, r4, #0x1
    4080: 46d8         	mov	r8, r11
    4082: f77f af1c    	ble.w	0x3ebe <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x15e> @ imm = #-0x1c8
    4086: f64d 3039    	movw	r0, #0xdb39
    408a: f64d 7228    	movw	r2, #0xdf28
    408e: f2c0 0000    	movt	r0, #0x0
    4092: f2c0 0200    	movt	r2, #0x0
    4096: 2128         	movs	r1, #0x28
    4098: f007 ff0c    	bl	0xbeb4 <core::panicking::panic> @ imm = #0x7e18
    409c: bf00         	nop
    409e: bf00         	nop
    40a0: ed9f 0a2f    	vldr	s0, [pc, #188]          @ 0x4160 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    40a4: 3401         	adds	r4, #0x1
    40a6: eef4 ea40    	vcmp.f32	s29, s0
    40aa: 2000         	movs	r0, #0x0
    40ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    40b0: 9904         	ldr	r1, [sp, #0x10]
    40b2: d809         	bhi	0x40c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x368> @ imm = #0x12
    40b4: ed9f 0a2c    	vldr	s0, [pc, #176]          @ 0x4168 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x408>
    40b8: ed9d 1a03    	vldr	s2, [sp, #12]
    40bc: eeb4 1a40    	vcmp.f32	s2, s0
    40c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    40c4: bf98         	it	ls
    40c6: 2001         	movls	r0, #0x1
    40c8: ed9d aa05    	vldr	s20, [sp, #20]
    40cc: e006         	b	0x40dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x37c> @ imm = #0xc
    40ce: bf00         	nop
    40d0: 2000         	movs	r0, #0x0
    40d2: e005         	b	0x40e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x380> @ imm = #0xa
    40d4: bf00         	nop
    40d6: bf00         	nop
    40d8: 2000         	movs	r0, #0x0
    40da: 9904         	ldr	r1, [sp, #0x10]
    40dc: ed81 aa04    	vstr	s20, [r1, #16]
    40e0: edc9 ea00    	vstr	s29, [r9]
    40e4: f889 4004    	strb.w	r4, [r9, #0x4]
    40e8: f889 0005    	strb.w	r0, [r9, #0x5]
    40ec: b00a         	add	sp, #0x28
    40ee: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    40f2: b001         	add	sp, #0x4
    40f4: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    40f8: bdf0         	pop	{r4, r5, r6, r7, pc}
    40fa: bf00         	nop
    40fc: bf00         	nop
    40fe: bf00         	nop
    4100: f64d 20a3    	movw	r0, #0xdaa3
    4104: f64d 7248    	movw	r2, #0xdf48
    4108: f2c0 0000    	movt	r0, #0x0
    410c: f2c0 0200    	movt	r2, #0x0
    4110: a906         	add	r1, sp, #0x18
    4112: f007 fecb    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0x7d96
    4116: bf00         	nop
    4118: e6 a7 5c a0  	.word	0xa05ca7e6
    411c: 06 41 d9 3f  	.word	0x3fd94106
    4120: 19 d5 65 36  	.word	0x3665d519
    4124: d0 6e 95 bf  	.word	0xbf956ed0
    4128: 00 80 bb 47  	.word	0x47bb8000
    412c: 00 24 f4 ca  	.word	0xcaf42400
    4130: 00 a0 0c 48  	.word	0x480ca000
    4134: 00 24 f4 4a  	.word	0x4af42400
    4138: cd 1e 2c 3e  	.word	0x3e2c1ecd
    413c: df ff e7 36  	.word	0x36e7ffdf
    4140: d2 4e da 43  	.word	0x43da4ed2
    4144: 00 00 00 80  	.word	0x80000000
    4148: d2 4e da c3  	.word	0xc3da4ed2
    414c: 00 00 00 80  	.word	0x80000000
    4150: 82 76 ab bc  	.word	0xbcab7682
    4154: 00 00 80 7f  	.word	0x7f800000
    4158: 00 00 00 00  	.word	0x00000000
    415c: 08 e5 3c 1e  	.word	0x1e3ce508
    4160: 17 b7 d1 38  	.word	0x38d1b717
    4164: bd 37 06 36  	.word	0x360637bd
    4168: ac c5 a7 37  	.word	0x37a7c5ac
    416c: cd 1e 2c be  	.word	0xbe2c1ecd

00004170 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>>:
    4170: b580         	push	{r7, lr}
    4172: 466f         	mov	r7, sp
    4174: eeb0 2ac0    	vabs.f32	s4, s0
    4178: eeb3 1a05    	vmov.f32	s2, #2.100000e+01
    417c: eeb4 2a41    	vcmp.f32	s4, s2
    4180: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4184: d93c         	bls	0x4200 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x90> @ imm = #0x78
    4186: ee81 2a02    	vdiv.f32	s4, s2, s4
    418a: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    418e: ee22 3a02    	vmul.f32	s6, s4, s4
    4192: eeb0 6a45    	vmov.f32	s12, s10
    4196: ee23 3a03    	vmul.f32	s6, s6, s6
    419a: ee23 3a03    	vmul.f32	s6, s6, s6
    419e: ee23 3a03    	vmul.f32	s6, s6, s6
    41a2: ee33 4a05    	vadd.f32	s8, s6, s10
    41a6: eeb4 4a45    	vcmp.f32	s8, s10
    41aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    41ae: d009         	beq	0x41c4 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x54> @ imm = #0x12
    41b0: eeb0 6a44    	vmov.f32	s12, s8
    41b4: eeb1 6ac6    	vsqrt.f32	s12, s12
    41b8: eeb1 6ac6    	vsqrt.f32	s12, s12
    41bc: eeb1 6ac6    	vsqrt.f32	s12, s12
    41c0: eeb1 6ac6    	vsqrt.f32	s12, s12
    41c4: ee10 1a10    	vmov	r1, s0
    41c8: f04f 527e    	mov.w	r2, #0x3f800000
    41cc: ee85 5a06    	vdiv.f32	s10, s10, s12
    41d0: ee22 2a03    	vmul.f32	s4, s4, s6
    41d4: f362 011e    	bfi	r1, r2, #0, #31
    41d8: eeb4 0a40    	vcmp.f32	s0, s0
    41dc: ee07 1a10    	vmov	s14, r1
    41e0: ee85 4a04    	vdiv.f32	s8, s10, s8
    41e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    41e8: ed9f 0a76    	vldr	s0, [pc, #472]          @ 0x43c4 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x254>
    41ec: ee27 1a01    	vmul.f32	s2, s14, s2
    41f0: ee21 1a05    	vmul.f32	s2, s2, s10
    41f4: fe10 0a01    	vselvs.f32	s0, s0, s2
    41f8: ee22 1a04    	vmul.f32	s2, s4, s8
    41fc: e025         	b	0x424a <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0xda> @ imm = #0x4a
    41fe: bf00         	nop
    4200: ee80 1a01    	vdiv.f32	s2, s0, s2
    4204: ee21 1a01    	vmul.f32	s2, s2, s2
    4208: ee21 2a01    	vmul.f32	s4, s2, s2
    420c: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    4210: ee22 3a02    	vmul.f32	s6, s4, s4
    4214: eeb0 2a41    	vmov.f32	s4, s2
    4218: ee03 2a03    	vmla.f32	s4, s6, s6
    421c: eeb0 3a41    	vmov.f32	s6, s2
    4220: eeb4 2a41    	vcmp.f32	s4, s2
    4224: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4228: d009         	beq	0x423e <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0xce> @ imm = #0x12
    422a: eeb0 3a42    	vmov.f32	s6, s4
    422e: eeb1 3ac3    	vsqrt.f32	s6, s6
    4232: eeb1 3ac3    	vsqrt.f32	s6, s6
    4236: eeb1 3ac3    	vsqrt.f32	s6, s6
    423a: eeb1 3ac3    	vsqrt.f32	s6, s6
    423e: ee81 3a03    	vdiv.f32	s6, s2, s6
    4242: ee83 1a02    	vdiv.f32	s2, s6, s4
    4246: ee20 0a03    	vmul.f32	s0, s0, s6
    424a: eeb0 2ac0    	vabs.f32	s4, s0
    424e: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    4252: eeb2 7a00    	vmov.f32	s14, #8.000000e+00
    4256: ed9f 4a5c    	vldr	s8, [pc, #368]          @ 0x43c8 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x258>
    425a: eef1 2a04    	vmov.f32	s5, #5.000000e+00
    425e: eeb0 5ae0    	vabs.f32	s10, s1
    4262: ee33 6a42    	vsub.f32	s12, s6, s4
    4266: eef7 3a00    	vmov.f32	s7, #1.000000e+00
    426a: fe86 3a07    	vmaxnm.f32	s6, s12, s14
    426e: eec4 1a03    	vdiv.f32	s3, s8, s6
    4272: fe81 2ae2    	vminnm.f32	s4, s3, s5
    4276: eec5 4a02    	vdiv.f32	s9, s10, s4
    427a: eef4 4a63    	vcmp.f32	s9, s7
    427e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4282: d935         	bls	0x42f0 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x180> @ imm = #0x6a
    4284: ee82 5a05    	vdiv.f32	s10, s4, s10
    4288: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    428c: ee65 3a05    	vmul.f32	s7, s10, s10
    4290: ee63 3aa3    	vmul.f32	s7, s7, s7
    4294: ee63 5aa3    	vmul.f32	s11, s7, s7
    4298: eef0 3a64    	vmov.f32	s7, s9
    429c: ee45 3aa5    	vmla.f32	s7, s11, s11
    42a0: eef0 5a64    	vmov.f32	s11, s9
    42a4: eef4 3a64    	vcmp.f32	s7, s9
    42a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42ac: d009         	beq	0x42c2 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x152> @ imm = #0x12
    42ae: eef0 5a63    	vmov.f32	s11, s7
    42b2: eef1 5ae5    	vsqrt.f32	s11, s11
    42b6: eef1 5ae5    	vsqrt.f32	s11, s11
    42ba: eef1 5ae5    	vsqrt.f32	s11, s11
    42be: eef1 5ae5    	vsqrt.f32	s11, s11
    42c2: eec4 5aa5    	vdiv.f32	s11, s9, s11
    42c6: eef1 6a45    	vneg.f32	s13, s10
    42ca: eec5 4aa3    	vdiv.f32	s9, s11, s7
    42ce: eec6 0aa0    	vdiv.f32	s1, s13, s1
    42d2: ee65 3a25    	vmul.f32	s7, s10, s11
    42d6: ee60 0aa4    	vmul.f32	s1, s1, s9
    42da: eef4 1a62    	vcmp.f32	s3, s5
    42de: eddf 1a3b    	vldr	s3, [pc, #236]          @ 0x43cc <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x25c>
    42e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42e6: d437         	bmi	0x4358 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x1e8> @ imm = #0x6e
    42e8: e056         	b	0x4398 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0xac
    42ea: bf00         	nop
    42ec: bf00         	nop
    42ee: bf00         	nop
    42f0: ee24 5aa4    	vmul.f32	s10, s9, s9
    42f4: eef0 5a63    	vmov.f32	s11, s7
    42f8: ee25 5a05    	vmul.f32	s10, s10, s10
    42fc: ee25 5a05    	vmul.f32	s10, s10, s10
    4300: ee25 5a05    	vmul.f32	s10, s10, s10
    4304: ee75 4a23    	vadd.f32	s9, s10, s7
    4308: eef4 4a63    	vcmp.f32	s9, s7
    430c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4310: d009         	beq	0x4326 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x1b6> @ imm = #0x12
    4312: eef0 5a64    	vmov.f32	s11, s9
    4316: eef1 5ae5    	vsqrt.f32	s11, s11
    431a: eef1 5ae5    	vsqrt.f32	s11, s11
    431e: eef1 5ae5    	vsqrt.f32	s11, s11
    4322: eef1 5ae5    	vsqrt.f32	s11, s11
    4326: eec3 3aa5    	vdiv.f32	s7, s7, s11
    432a: eef5 0a40    	vcmp.f32	s1, #0
    432e: eef1 5a45    	vneg.f32	s11, s10
    4332: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4336: eec3 4aa4    	vdiv.f32	s9, s7, s9
    433a: eec5 5aa0    	vdiv.f32	s11, s11, s1
    433e: eddf 0a23    	vldr	s1, [pc, #140]          @ 0x43cc <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x25c>
    4342: ee65 5aa4    	vmul.f32	s11, s11, s9
    4346: fe40 0aa5    	vseleq.f32	s1, s1, s11
    434a: eef4 1a62    	vcmp.f32	s3, s5
    434e: eddf 1a1f    	vldr	s3, [pc, #124]          @ 0x43cc <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x25c>
    4352: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4356: d51f         	bpl	0x4398 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x3e
    4358: eeb5 0a40    	vcmp.f32	s0, #0
    435c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4360: d01a         	beq	0x4398 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x34
    4362: eeb4 6a47    	vcmp.f32	s12, s14
    4366: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    436a: dd15         	ble	0x4398 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x2a
    436c: ee10 1a10    	vmov	r1, s0
    4370: f04f 527e    	mov.w	r2, #0x3f800000
    4374: eeb4 0a40    	vcmp.f32	s0, s0
    4378: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    437c: f362 011e    	bfi	r1, r2, #0, #31
    4380: ee23 3a03    	vmul.f32	s6, s6, s6
    4384: ee06 1a10    	vmov	s12, r1
    4388: ee26 4a04    	vmul.f32	s8, s12, s8
    438c: ed9f 6a0d    	vldr	s12, [pc, #52]          @ 0x43c4 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x254>
    4390: fe16 4a04    	vselvs.f32	s8, s12, s8
    4394: eec4 1a03    	vdiv.f32	s3, s8, s6
    4398: ee85 2a02    	vdiv.f32	s4, s10, s4
    439c: ee20 3a23    	vmul.f32	s6, s0, s7
    43a0: ed80 3a00    	vstr	s6, [r0]
    43a4: ee22 2a24    	vmul.f32	s4, s4, s9
    43a8: ee20 2a02    	vmul.f32	s4, s0, s4
    43ac: ee20 0a20    	vmul.f32	s0, s0, s1
    43b0: ed80 0a02    	vstr	s0, [r0, #8]
    43b4: ee42 3a21    	vmla.f32	s7, s4, s3
    43b8: ee21 1a23    	vmul.f32	s2, s2, s7
    43bc: ed80 1a01    	vstr	s2, [r0, #4]
    43c0: bd80         	pop	{r7, pc}
    43c2: bf00         	nop
    43c4: 00 00 c0 7f  	.word	0x7fc00000
    43c8: 00 00 70 42  	.word	0x42700000
    43cc: 00 00 00 00  	.word	0x00000000

000043d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>>:
    43d0: b5f0         	push	{r4, r5, r6, r7, lr}
    43d2: af03         	add	r7, sp, #0xc
    43d4: f84d 8d04    	str	r8, [sp, #-4]!
    43d8: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    43dc: eeba 1a0e    	vmov.f32	s2, #-1.500000e+01
    43e0: ed91 3a00    	vldr	s6, [r1]
    43e4: ed9f 2af8    	vldr	s4, [pc, #992]          @ 0x47c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x3f8>
    43e8: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    43ec: eefe 1a00    	vmov.f32	s3, #-5.000000e-01
    43f0: ee33 4a01    	vadd.f32	s8, s6, s2
    43f4: ee71 5a43    	vsub.f32	s11, s2, s6
    43f8: eef7 0bc0    	vcvt.f32.f64	s1, d0
    43fc: ee84 5a02    	vdiv.f32	s10, s8, s4
    4400: ed9f 4af2    	vldr	s8, [pc, #968]          @ 0x47cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x3fc>
    4404: eec5 5a82    	vdiv.f32	s11, s11, s4
    4408: eef0 aa60    	vmov.f32	s21, s1
    440c: eeb4 4a45    	vcmp.f32	s8, s10
    4410: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4414: fe34 6a05    	vselgt.f32	s12, s8, s10
    4418: ed9f 5aed    	vldr	s10, [pc, #948]         @ 0x47d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x400>
    441c: eeb4 6a45    	vcmp.f32	s12, s10
    4420: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4424: fe75 7a06    	vselgt.f32	s15, s10, s12
    4428: ed9f 6af5    	vldr	s12, [pc, #980]         @ 0x4800 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x430>
    442c: ee67 2a86    	vmul.f32	s5, s15, s12
    4430: ee72 3a87    	vadd.f32	s7, s5, s14
    4434: eef5 2a40    	vcmp.f32	s5, #0
    4438: ee72 4aa1    	vadd.f32	s9, s5, s3
    443c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4440: eefd 3ae3    	vcvt.s32.f32	s7, s7
    4444: eefd 4ae4    	vcvt.s32.f32	s9, s9
    4448: eeb4 4a65    	vcmp.f32	s8, s11
    444c: ee13 3a90    	vmov	r3, s7
    4450: ee14 2a90    	vmov	r2, s9
    4454: bfa8         	it	ge
    4456: 461a         	movge	r2, r3
    4458: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    445c: fe74 2a25    	vselgt.f32	s5, s8, s11
    4460: eddf 5af4    	vldr	s11, [pc, #976]         @ 0x4834 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x464>
    4464: eeb0 aa65    	vmov.f32	s20, s11
    4468: eeb0 ba65    	vmov.f32	s22, s11
    446c: eef4 2a45    	vcmp.f32	s5, s10
    4470: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4474: fe35 8a22    	vselgt.f32	s16, s10, s5
    4478: ee68 2a06    	vmul.f32	s5, s16, s12
    447c: ee72 3aa1    	vadd.f32	s7, s5, s3
    4480: eef5 2a40    	vcmp.f32	s5, #0
    4484: ee72 4a87    	vadd.f32	s9, s5, s14
    4488: ee02 2a90    	vmov	s5, r2
    448c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4490: eefd 3ae3    	vcvt.s32.f32	s7, s7
    4494: eefd 4ae4    	vcvt.s32.f32	s9, s9
    4498: ee13 5a90    	vmov	r5, s7
    449c: eef8 3ae2    	vcvt.f32.s32	s7, s5
    44a0: ee14 3a90    	vmov	r3, s9
    44a4: bfa8         	it	ge
    44a6: 461d         	movge	r5, r3
    44a8: f04f 537e    	mov.w	r3, #0x3f800000
    44ac: ee02 5a90    	vmov	s5, r5
    44b0: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    44b4: eb03 56c5    	add.w	r6, r3, r5, lsl #23
    44b8: eef8 4ae2    	vcvt.f32.s32	s9, s5
    44bc: eddf 2ada    	vldr	s5, [pc, #872]          @ 0x4828 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x458>
    44c0: ee43 7ae2    	vmls.f32	s15, s7, s5
    44c4: eddf 3ada    	vldr	s7, [pc, #872]          @ 0x4830 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x460>
    44c8: eef0 6a63    	vmov.f32	s13, s7
    44cc: eeb0 9a63    	vmov.f32	s18, s7
    44d0: ee04 8ae2    	vmls.f32	s16, s9, s5
    44d4: eddf 4ad5    	vldr	s9, [pc, #852]          @ 0x482c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x45c>
    44d8: ee47 6aa4    	vmla.f32	s13, s15, s9
    44dc: ee08 9a24    	vmla.f32	s18, s16, s9
    44e0: ee28 ca08    	vmul.f32	s24, s16, s16
    44e4: ee07 aaa6    	vmla.f32	s20, s15, s13
    44e8: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    44ec: ee08 ba09    	vmla.f32	s22, s16, s18
    44f0: eeb0 9a47    	vmov.f32	s18, s14
    44f4: ee07 9a8a    	vmla.f32	s18, s15, s20
    44f8: eeb0 aa47    	vmov.f32	s20, s14
    44fc: ee08 aa0b    	vmla.f32	s20, s16, s22
    4500: ee27 baa7    	vmul.f32	s22, s15, s15
    4504: ee77 7aa6    	vadd.f32	s15, s15, s13
    4508: ee38 8a26    	vadd.f32	s16, s16, s13
    450c: ee4b 7a09    	vmla.f32	s15, s22, s18
    4510: ee09 2a10    	vmov	s18, r2
    4514: ee0c 8a0a    	vmla.f32	s16, s24, s20
    4518: ee0a 6a10    	vmov	s20, r6
    451c: ee67 ba89    	vmul.f32	s23, s15, s18
    4520: eddf 7ac0    	vldr	s15, [pc, #768]         @ 0x4824 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x454>
    4524: ee43 aa27    	vmla.f32	s21, s6, s15
    4528: ee68 ca0a    	vmul.f32	s25, s16, s20
    452c: ed9f 8ac2    	vldr	s16, [pc, #776]         @ 0x4838 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x468>
    4530: ee3b 0aec    	vsub.f32	s0, s23, s25
    4534: ee50 aa08    	vnmls.f32	s21, s0, s16
    4538: ee1a 2a90    	vmov	r2, s21
    453c: f022 4200    	bic	r2, r2, #0x80000000
    4540: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4544: db04         	blt	0x4550 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x180> @ imm = #0x8
    4546: ed9f 0abd    	vldr	s0, [pc, #756]          @ 0x483c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x46c>
    454a: e00b         	b	0x4564 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x194> @ imm = #0x16
    454c: bf00         	nop
    454e: bf00         	nop
    4550: ed9f 0abb    	vldr	s0, [pc, #748]          @ 0x4840 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x470>
    4554: ee8a 0a80    	vdiv.f32	s0, s21, s0
    4558: ed9f 9aba    	vldr	s18, [pc, #744]         @ 0x4844 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x474>
    455c: eeb0 0ac0    	vabs.f32	s0, s0
    4560: fe80 0a09    	vmaxnm.f32	s0, s0, s18
    4564: f04f 0e00    	mov.w	lr, #0x0
    4568: f04f 0c00    	mov.w	r12, #0x0
    456c: ed9f aab6    	vldr	s20, [pc, #728]         @ 0x4848 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x478>
    4570: 46f0         	mov	r8, lr
    4572: ed9f bab6    	vldr	s22, [pc, #728]         @ 0x484c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x47c>
    4576: ed9f 9ab6    	vldr	s18, [pc, #728]         @ 0x4850 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x480>
    457a: ed9f dab1    	vldr	s26, [pc, #708]         @ 0x4840 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x470>
    457e: ed9f eab1    	vldr	s28, [pc, #708]         @ 0x4844 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x474>
    4582: ed9f fab4    	vldr	s30, [pc, #720]         @ 0x4854 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x484>
    4586: ed9f cab4    	vldr	s24, [pc, #720]         @ 0x4858 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x488>
    458a: ee7c 8aab    	vadd.f32	s17, s25, s23
    458e: f1be 0f10    	cmp.w	lr, #0x10
    4592: bf18         	it	ne
    4594: f108 0801    	addne.w	r8, r8, #0x1
    4598: 2500         	movs	r5, #0x0
    459a: ee68 8a88    	vmul.f32	s17, s17, s16
    459e: eec8 8a82    	vdiv.f32	s17, s17, s4
    45a2: ee78 8a8a    	vadd.f32	s17, s17, s20
    45a6: ee18 4a90    	vmov	r4, s17
    45aa: eef0 9ae8    	vabs.f32	s19, s17
    45ae: f024 4400    	bic	r4, r4, #0x80000000
    45b2: eef4 9a4b    	vcmp.f32	s19, s22
    45b6: f1b4 4fff    	cmp.w	r4, #0x7f800000
    45ba: f04f 0400    	mov.w	r4, #0x0
    45be: bfa8         	it	ge
    45c0: 2401         	movge	r4, #0x1
    45c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45c6: bf48         	it	mi
    45c8: 2501         	movmi	r5, #0x1
    45ca: 432c         	orrs	r4, r5
    45cc: f040 8128    	bne.w	0x4820 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x450> @ imm = #0x250
    45d0: eef1 9a6a    	vneg.f32	s19, s21
    45d4: eeb4 0a49    	vcmp.f32	s0, s18
    45d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45dc: eec9 8aa8    	vdiv.f32	s17, s19, s17
    45e0: d906         	bls	0x45f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x220> @ imm = #0xc
    45e2: f1be 0f10    	cmp.w	lr, #0x10
    45e6: d124         	bne	0x4632 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x262> @ imm = #0x48
    45e8: e11a         	b	0x4820 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x450> @ imm = #0x234
    45ea: bf00         	nop
    45ec: bf00         	nop
    45ee: bf00         	nop
    45f0: eef0 9ac3    	vabs.f32	s19, s6
    45f4: 2400         	movs	r4, #0x0
    45f6: eef0 aae8    	vabs.f32	s21, s17
    45fa: eef4 9a69    	vcmp.f32	s19, s19
    45fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4602: fe56 9aa9    	vselvs.f32	s19, s13, s19
    4606: eef4 9a66    	vcmp.f32	s19, s13
    460a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    460e: fe79 9aa6    	vselgt.f32	s19, s19, s13
    4612: ee69 9a8f    	vmul.f32	s19, s19, s30
    4616: fec9 9acc    	vminnm.f32	s19, s19, s24
    461a: eef4 aa69    	vcmp.f32	s21, s19
    461e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4622: bf88         	it	hi
    4624: 2401         	movhi	r4, #0x1
    4626: f1be 0f10    	cmp.w	lr, #0x10
    462a: bf18         	it	ne
    462c: 2c00         	cmpne	r4, #0x0
    462e: f000 80eb    	beq.w	0x4808 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x438> @ imm = #0x1d6
    4632: f04f 547e    	mov.w	r4, #0x3f800000
    4636: e005         	b	0x4644 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x274> @ imm = #0xa
    4638: f5a4 0400    	sub.w	r4, r4, #0x800000
    463c: f1b4 5f66    	cmp.w	r4, #0x39800000
    4640: f000 80ca    	beq.w	0x47d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x408> @ imm = #0x194
    4644: ee0a 4a90    	vmov	s21, r4
    4648: eef0 9a43    	vmov.f32	s19, s6
    464c: ee48 9aaa    	vmla.f32	s19, s17, s21
    4650: ee79 aa81    	vadd.f32	s21, s19, s2
    4654: ee71 ea69    	vsub.f32	s29, s2, s19
    4658: eeca aa82    	vdiv.f32	s21, s21, s4
    465c: eece ea82    	vdiv.f32	s29, s29, s4
    4660: eeb4 4a6a    	vcmp.f32	s8, s21
    4664: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4668: fe74 aa2a    	vselgt.f32	s21, s8, s21
    466c: eef4 aa45    	vcmp.f32	s21, s10
    4670: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4674: fe75 aa2a    	vselgt.f32	s21, s10, s21
    4678: ee6a ba86    	vmul.f32	s23, s21, s12
    467c: ee7b ca87    	vadd.f32	s25, s23, s14
    4680: eef5 ba40    	vcmp.f32	s23, #0
    4684: ee7b daa1    	vadd.f32	s27, s23, s3
    4688: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    468c: eefd caec    	vcvt.s32.f32	s25, s25
    4690: eefd daed    	vcvt.s32.f32	s27, s27
    4694: eeb4 4a6e    	vcmp.f32	s8, s29
    4698: ee1c 6a90    	vmov	r6, s25
    469c: ee1d 5a90    	vmov	r5, s27
    46a0: bfa8         	it	ge
    46a2: 4635         	movge	r5, r6
    46a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46a8: fe74 ba2e    	vselgt.f32	s23, s8, s29
    46ac: eef4 ba45    	vcmp.f32	s23, s10
    46b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46b4: fe75 ba2b    	vselgt.f32	s23, s10, s23
    46b8: ee6b ca86    	vmul.f32	s25, s23, s12
    46bc: ee7c daa1    	vadd.f32	s27, s25, s3
    46c0: eef5 ca40    	vcmp.f32	s25, #0
    46c4: ee7c ea87    	vadd.f32	s29, s25, s14
    46c8: ee0c 5a90    	vmov	s25, r5
    46cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46d0: eefd daed    	vcvt.s32.f32	s27, s27
    46d4: eef8 caec    	vcvt.f32.s32	s25, s25
    46d8: ee1d 6a90    	vmov	r6, s27
    46dc: eefd daee    	vcvt.s32.f32	s27, s29
    46e0: ee4c aae2    	vmls.f32	s21, s25, s5
    46e4: eef0 ca63    	vmov.f32	s25, s7
    46e8: eef0 ea65    	vmov.f32	s29, s11
    46ec: ee1d 2a90    	vmov	r2, s27
    46f0: bfa8         	it	ge
    46f2: 4616         	movge	r6, r2
    46f4: eb03 52c5    	add.w	r2, r3, r5, lsl #23
    46f8: ee0d 6a90    	vmov	s27, r6
    46fc: eb03 55c6    	add.w	r5, r3, r6, lsl #23
    4700: ee4a caa4    	vmla.f32	s25, s21, s9
    4704: eef8 daed    	vcvt.f32.s32	s27, s27
    4708: ee4d bae2    	vmls.f32	s23, s27, s5
    470c: eef0 da63    	vmov.f32	s27, s7
    4710: ee4a eaac    	vmla.f32	s29, s21, s25
    4714: eef0 ca65    	vmov.f32	s25, s11
    4718: ee4b daa4    	vmla.f32	s27, s23, s9
    471c: ee6b faab    	vmul.f32	s31, s23, s23
    4720: ee4b caad    	vmla.f32	s25, s23, s27
    4724: eef0 da47    	vmov.f32	s27, s14
    4728: ee4a daae    	vmla.f32	s27, s21, s29
    472c: eef0 ea47    	vmov.f32	s29, s14
    4730: ee4b eaac    	vmla.f32	s29, s23, s25
    4734: ee6a caaa    	vmul.f32	s25, s21, s21
    4738: ee7a aaa6    	vadd.f32	s21, s21, s13
    473c: ee4c aaad    	vmla.f32	s21, s25, s27
    4740: ee0d 5a90    	vmov	s27, r5
    4744: ee7b caa6    	vadd.f32	s25, s23, s13
    4748: ee0b 2a90    	vmov	s23, r2
    474c: ee4f caae    	vmla.f32	s25, s31, s29
    4750: ee6a baab    	vmul.f32	s23, s21, s23
    4754: eef0 aa60    	vmov.f32	s21, s1
    4758: ee49 aaa7    	vmla.f32	s21, s19, s15
    475c: ee6c caad    	vmul.f32	s25, s25, s27
    4760: ee7b daec    	vsub.f32	s27, s23, s25
    4764: ee5d aa88    	vnmls.f32	s21, s27, s16
    4768: ee1a 2a90    	vmov	r2, s21
    476c: f022 4200    	bic	r2, r2, #0x80000000
    4770: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4774: f6bf af60    	bge.w	0x4638 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x268> @ imm = #-0x140
    4778: eeca da8d    	vdiv.f32	s27, s21, s26
    477c: eef0 daed    	vabs.f32	s27, s27
    4780: fecd da8e    	vmaxnm.f32	s27, s27, s28
    4784: eef4 da40    	vcmp.f32	s27, s0
    4788: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    478c: f57f af54    	bpl.w	0x4638 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x268> @ imm = #-0x158
    4790: f1be 0f10    	cmp.w	lr, #0x10
    4794: edc1 9a00    	vstr	s19, [r1]
    4798: d00a         	beq	0x47b0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x3e0> @ imm = #0x14
    479a: eeb0 3a69    	vmov.f32	s6, s19
    479e: eeb0 0a6d    	vmov.f32	s0, s27
    47a2: f1b8 0f10    	cmp.w	r8, #0x10
    47a6: f10c 0c01    	add.w	r12, r12, #0x1
    47aa: 46c6         	mov	lr, r8
    47ac: f77f aeed    	ble.w	0x458a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x1ba> @ imm = #-0x226
    47b0: f64d 3039    	movw	r0, #0xdb39
    47b4: f64d 7238    	movw	r2, #0xdf38
    47b8: f2c0 0000    	movt	r0, #0x0
    47bc: f2c0 0200    	movt	r2, #0x0
    47c0: 2128         	movs	r1, #0x28
    47c2: f007 fb77    	bl	0xbeb4 <core::panicking::panic> @ imm = #0x76ee
    47c6: bf00         	nop
    47c8: f5 4a 39 3d  	.word	0x3d394af5
    47cc: 00 00 a0 c2  	.word	0xc2a00000
    47d0: 00 00 a0 42  	.word	0x42a00000
    47d4: 00 bf 00 bf  	.word	0xbf00bf00
    47d8: f10c 0c01    	add.w	r12, r12, #0x1
    47dc: eeb4 0a49    	vcmp.f32	s0, s18
    47e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47e4: ed81 3a00    	vstr	s6, [r1]
    47e8: f04f 0100    	mov.w	r1, #0x0
    47ec: d80e         	bhi	0x480c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x43c> @ imm = #0x1c
    47ee: eeb0 1ae8    	vabs.f32	s2, s17
    47f2: eeb4 1a4c    	vcmp.f32	s2, s24
    47f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47fa: bf98         	it	ls
    47fc: 2101         	movls	r1, #0x1
    47fe: e005         	b	0x480c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x43c> @ imm = #0xa
    4800: 3b aa b8 3f  	.word	0x3fb8aa3b
    4804: 00 bf 00 bf  	.word	0xbf00bf00
    4808: f084 0101    	eor	r1, r4, #0x1
    480c: ed80 0a00    	vstr	s0, [r0]
    4810: f880 c004    	strb.w	r12, [r0, #0x4]
    4814: 7141         	strb	r1, [r0, #0x5]
    4816: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    481a: f85d 8b04    	ldr	r8, [sp], #4
    481e: bdf0         	pop	{r4, r5, r6, r7, pc}
    4820: 2100         	movs	r1, #0x0
    4822: e7f3         	b	0x480c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>+0x43c> @ imm = #-0x1a
    4824: 09 d5 19 b8  	.word	0xb819d509
    4828: 18 72 31 3f  	.word	0x3f317218
    482c: 89 88 08 3c  	.word	0x3c088889
    4830: ab aa 2a 3d  	.word	0x3d2aaaab
    4834: ab aa 2a 3e  	.word	0x3e2aaaab
    4838: 77 cc 2b 31  	.word	0x312bcc77
    483c: 00 00 80 7f  	.word	0x7f800000
    4840: 0a d7 23 3c  	.word	0x3c23d70a
    4844: 00 00 00 00  	.word	0x00000000
    4848: 09 d5 19 38  	.word	0x3819d509
    484c: 08 e5 3c 1e  	.word	0x1e3ce508
    4850: 17 b7 d1 38  	.word	0x38d1b717
    4854: bd 37 06 36  	.word	0x360637bd
    4858: ac c5 a7 37  	.word	0x37a7c5ac
    485c: d4 d4 d4 d4  	.word	0xd4d4d4d4

00004860 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>>:
    4860: b5f0         	push	{r4, r5, r6, r7, lr}
    4862: af03         	add	r7, sp, #0xc
    4864: f84d 8d04    	str	r8, [sp, #-4]!
    4868: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    486c: b086         	sub	sp, #0x18
    486e: ed92 2a02    	vldr	s4, [r2, #8]
    4872: ed92 3a03    	vldr	s6, [r2, #12]
    4876: eeb4 2a43    	vcmp.f32	s4, s6
    487a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    487e: f200 832b    	bhi.w	0x4ed8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x678> @ imm = #0x656
    4882: ed91 ba01    	vldr	s22, [r1, #4]
    4886: ed9f 7ad7    	vldr	s14, [pc, #860]         @ 0x4be4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x384>
    488a: eeb7 4acb    	vcvt.f64.f32	d4, s22
    488e: eddf 2ad6    	vldr	s5, [pc, #856]          @ 0x4be8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x388>
    4892: ed9f 5b9b    	vldr	d5, [pc, #620]          @ 0x4b00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x2a0>
    4896: eeb0 6b41    	vmov.f64	d6, d1
    489a: eddf 3ad4    	vldr	s7, [pc, #848]          @ 0x4bec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x38c>
    489e: eeb0 db41    	vmov.f64	d13, d1
    48a2: ee04 6b05    	vmla.f64	d6, d4, d5
    48a6: eef7 0bc0    	vcvt.f32.f64	s1, d0
    48aa: eeb7 4bc6    	vcvt.f32.f64	s8, d6
    48ae: ed92 6a01    	vldr	s12, [r2, #4]
    48b2: eef0 4a60    	vmov.f32	s9, s1
    48b6: eef0 7a46    	vmov.f32	s15, s12
    48ba: ee4b 4a22    	vmla.f32	s9, s22, s5
    48be: ee44 7a07    	vmla.f32	s15, s8, s14
    48c2: eeb0 0ae4    	vabs.f32	s0, s9
    48c6: eeb4 2a67    	vcmp.f32	s4, s15
    48ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48ce: fe32 4a27    	vselgt.f32	s8, s4, s15
    48d2: eeb4 4a43    	vcmp.f32	s8, s6
    48d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48da: eeb4 0a63    	vcmp.f32	s0, s7
    48de: fe33 1a04    	vselgt.f32	s2, s6, s8
    48e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48e6: da17         	bge	0x4918 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0xb8> @ imm = #0x2e
    48e8: ed9f 4ad4    	vldr	s8, [pc, #848]          @ 0x4c3c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3dc>
    48ec: eeb4 0a44    	vcmp.f32	s0, s8
    48f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48f4: d91c         	bls	0x4930 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0xd0> @ imm = #0x38
    48f6: ed9f 4ad2    	vldr	s8, [pc, #840]          @ 0x4c40 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3e0>
    48fa: eeb4 0a44    	vcmp.f32	s0, s8
    48fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4902: d919         	bls	0x4938 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0xd8> @ imm = #0x32
    4904: ed9f 4acf    	vldr	s8, [pc, #828]          @ 0x4c44 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3e4>
    4908: ee30 4a04    	vadd.f32	s8, s0, s8
    490c: eddf 6ace    	vldr	s13, [pc, #824]         @ 0x4c48 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3e8>
    4910: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    4914: e018         	b	0x4948 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0xe8> @ imm = #0x30
    4916: bf00         	nop
    4918: eddf facc    	vldr	s31, [pc, #816]         @ 0x4c4c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3ec>
    491c: eeb0 0a6f    	vmov.f32	s0, s31
    4920: eef0 8a6f    	vmov.f32	s17, s31
    4924: eef0 ba6f    	vmov.f32	s23, s31
    4928: eef0 ca6f    	vmov.f32	s25, s31
    492c: e083         	b	0x4a36 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x1d6> @ imm = #0x106
    492e: bf00         	nop
    4930: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    4934: e00a         	b	0x494c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0xec> @ imm = #0x14
    4936: bf00         	nop
    4938: ed9f 4ac5    	vldr	s8, [pc, #788]          @ 0x4c50 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3f0>
    493c: ee30 4a04    	vadd.f32	s8, s0, s8
    4940: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    4944: eddf 6ac3    	vldr	s13, [pc, #780]         @ 0x4c54 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3f4>
    4948: ee04 0a26    	vmla.f32	s0, s8, s13
    494c: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    4950: ee34 4a40    	vsub.f32	s8, s8, s0
    4954: ed9f 0abd    	vldr	s0, [pc, #756]          @ 0x4c4c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3ec>
    4958: fec4 fa00    	vmaxnm.f32	s31, s8, s0
    495c: eef5 fa40    	vcmp.f32	s31, #0
    4960: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4964: d93c         	bls	0x49e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x180> @ imm = #0x78
    4966: eeb0 0ac1    	vabs.f32	s0, s2
    496a: eeb4 0a6f    	vcmp.f32	s0, s31
    496e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4972: dd3d         	ble	0x49f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x190> @ imm = #0x7a
    4974: eecf ca80    	vdiv.f32	s25, s31, s0
    4978: ee2c 0aac    	vmul.f32	s0, s25, s25
    497c: ee20 0a00    	vmul.f32	s0, s0, s0
    4980: ee20 0a00    	vmul.f32	s0, s0, s0
    4984: ee60 8a00    	vmul.f32	s17, s0, s0
    4988: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    498c: ee78 6a80    	vadd.f32	s13, s17, s0
    4990: eeb0 4a40    	vmov.f32	s8, s0
    4994: eef4 6a40    	vcmp.f32	s13, s0
    4998: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    499c: d009         	beq	0x49b2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x152> @ imm = #0x12
    499e: eef1 6ae6    	vsqrt.f32	s13, s13
    49a2: eef1 6ae6    	vsqrt.f32	s13, s13
    49a6: eef1 6ae6    	vsqrt.f32	s13, s13
    49aa: eef1 6ae6    	vsqrt.f32	s13, s13
    49ae: eeb0 4a66    	vmov.f32	s8, s13
    49b2: ee11 2a10    	vmov	r2, s2
    49b6: f04f 567e    	mov.w	r6, #0x3f800000
    49ba: eec0 ba04    	vdiv.f32	s23, s0, s8
    49be: ed9f 4ad0    	vldr	s8, [pc, #832]          @ 0x4d00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x4a0>
    49c2: eeb4 1a41    	vcmp.f32	s2, s2
    49c6: f366 021e    	bfi	r2, r6, #0, #31
    49ca: ee06 2a90    	vmov	s13, r2
    49ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    49d2: ee26 0aaf    	vmul.f32	s0, s13, s31
    49d6: ee20 0a2b    	vmul.f32	s0, s0, s23
    49da: fe14 0a00    	vselvs.f32	s0, s8, s0
    49de: e02a         	b	0x4a36 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x1d6> @ imm = #0x54
    49e0: eef0 8a40    	vmov.f32	s17, s0
    49e4: eef0 ba40    	vmov.f32	s23, s0
    49e8: eef0 ca40    	vmov.f32	s25, s0
    49ec: e023         	b	0x4a36 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x1d6> @ imm = #0x46
    49ee: bf00         	nop
    49f0: eec1 ca2f    	vdiv.f32	s25, s2, s31
    49f4: ee2c 0aac    	vmul.f32	s0, s25, s25
    49f8: ee20 0a00    	vmul.f32	s0, s0, s0
    49fc: ee20 0a00    	vmul.f32	s0, s0, s0
    4a00: ee60 8a00    	vmul.f32	s17, s0, s0
    4a04: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    4a08: ee38 4a80    	vadd.f32	s8, s17, s0
    4a0c: eef0 6a40    	vmov.f32	s13, s0
    4a10: eeb4 4a40    	vcmp.f32	s8, s0
    4a14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a18: d009         	beq	0x4a2e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x1ce> @ imm = #0x12
    4a1a: eeb1 4ac4    	vsqrt.f32	s8, s8
    4a1e: eeb1 4ac4    	vsqrt.f32	s8, s8
    4a22: eeb1 4ac4    	vsqrt.f32	s8, s8
    4a26: eeb1 4ac4    	vsqrt.f32	s8, s8
    4a2a: eef0 6a44    	vmov.f32	s13, s8
    4a2e: eec0 ba26    	vdiv.f32	s23, s0, s13
    4a32: ee21 0a2b    	vmul.f32	s0, s2, s23
    4a36: ee7b ea40    	vsub.f32	s29, s22, s0
    4a3a: ee1e 2a90    	vmov	r2, s29
    4a3e: f022 4200    	bic	r2, r2, #0x80000000
    4a42: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4a46: db03         	blt	0x4a50 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x1f0> @ imm = #0x6
    4a48: eddf 6ada    	vldr	s13, [pc, #872]         @ 0x4db4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x554>
    4a4c: e00a         	b	0x4a64 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x204> @ imm = #0x14
    4a4e: bf00         	nop
    4a50: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    4a54: ed9f 4a7d    	vldr	s8, [pc, #500]          @ 0x4c4c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3ec>
    4a58: ee8e 0a80    	vdiv.f32	s0, s29, s0
    4a5c: eeb0 0ac0    	vabs.f32	s0, s0
    4a60: fec0 6a04    	vmaxnm.f32	s13, s0, s8
    4a64: eeb7 8a08    	vmov.f32	s16, #1.500000e+00
    4a68: eeb7 aa00    	vmov.f32	s20, #1.000000e+00
    4a6c: eebf ea00    	vmov.f32	s28, #-1.000000e+00
    4a70: eeb2 ca0e    	vmov.f32	s24, #1.500000e+01
    4a74: 2400         	movs	r4, #0x0
    4a76: f04f 0800    	mov.w	r8, #0x0
    4a7a: ed9f 9a74    	vldr	s18, [pc, #464]         @ 0x4c4c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3ec>
    4a7e: f04f 5c7e    	mov.w	r12, #0x3f800000
    4a82: eddf 9a6e    	vldr	s19, [pc, #440]         @ 0x4c3c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3dc>
    4a86: 46a6         	mov	lr, r4
    4a88: 2500         	movs	r5, #0x0
    4a8a: eeb0 0a49    	vmov.f32	s0, s18
    4a8e: eeb0 4a49    	vmov.f32	s8, s18
    4a92: 2c10         	cmp	r4, #0x10
    4a94: bf18         	it	ne
    4a96: f10e 0e01    	addne.w	lr, lr, #0x1
    4a9a: eef4 7a42    	vcmp.f32	s15, s4
    4a9e: 2600         	movs	r6, #0x0
    4aa0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4aa4: eef4 7a43    	vcmp.f32	s15, s6
    4aa8: bfc8         	it	gt
    4aaa: 2501         	movgt	r5, #0x1
    4aac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ab0: eef5 fa40    	vcmp.f32	s31, #0
    4ab4: bf48         	it	mi
    4ab6: 2601         	movmi	r6, #0x1
    4ab8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4abc: d92a         	bls	0x4b14 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x2b4> @ imm = #0x54
    4abe: ee38 0a8a    	vadd.f32	s0, s17, s20
    4ac2: eeb0 4ac1    	vabs.f32	s8, s2
    4ac6: ee8b 0a80    	vdiv.f32	s0, s23, s0
    4aca: eeb4 4a6f    	vcmp.f32	s8, s31
    4ace: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ad2: dd19         	ble	0x4b08 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x2a8> @ imm = #0x32
    4ad4: ee11 2a10    	vmov	r2, s2
    4ad8: ee6c 7aa8    	vmul.f32	s15, s25, s17
    4adc: eeb4 1a41    	vcmp.f32	s2, s2
    4ae0: eddf 1a87    	vldr	s3, [pc, #540]          @ 0x4d00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x4a0>
    4ae4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ae8: f36c 021e    	bfi	r2, r12, #0, #31
    4aec: ee04 2a10    	vmov	s8, r2
    4af0: ee20 4a04    	vmul.f32	s8, s0, s8
    4af4: ee27 0a80    	vmul.f32	s0, s15, s0
    4af8: fe11 4a84    	vselvs.f32	s8, s3, s8
    4afc: e00a         	b	0x4b14 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x2b4> @ imm = #0x14
    4afe: bf00         	nop
    4b00: 1f 89 9b cf  	.word	0xcf9b891f
    4b04: ab 32 9c bf  	.word	0xbf9c32ab
    4b08: ee28 4a81    	vmul.f32	s8, s17, s2
    4b0c: ee84 4a2f    	vdiv.f32	s8, s8, s31
    4b10: ee20 4a04    	vmul.f32	s8, s0, s8
    4b14: eef5 4a40    	vcmp.f32	s9, #0
    4b18: eef0 7ae4    	vabs.f32	s15, s9
    4b1c: eef0 4a49    	vmov.f32	s9, s18
    4b20: eeb0 fa49    	vmov.f32	s30, s18
    4b24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b28: bf48         	it	mi
    4b2a: eef0 4a4e    	vmovmi.f32	s9, s28
    4b2e: eef4 7a63    	vcmp.f32	s15, s7
    4b32: fe7a 4a24    	vselgt.f32	s9, s20, s9
    4b36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b3a: da17         	bge	0x4b6c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x30c> @ imm = #0x2e
    4b3c: eeb0 fa49    	vmov.f32	s30, s18
    4b40: eef4 7a69    	vcmp.f32	s15, s19
    4b44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b48: d90e         	bls	0x4b68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x308> @ imm = #0x1c
    4b4a: eddf 1a3d    	vldr	s3, [pc, #244]          @ 0x4c40 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3e0>
    4b4e: eef4 7a61    	vcmp.f32	s15, s3
    4b52: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b56: d903         	bls	0x4b60 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x300> @ imm = #0x6
    4b58: eddf 1a3b    	vldr	s3, [pc, #236]          @ 0x4c48 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3e8>
    4b5c: e002         	b	0x4b64 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x304> @ imm = #0x4
    4b5e: bf00         	nop
    4b60: eddf 1ae5    	vldr	s3, [pc, #916]          @ 0x4ef8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x698>
    4b64: ee24 faa1    	vmul.f32	s30, s9, s3
    4b68: eeb1 fa4f    	vneg.f32	s30, s30
    4b6c: ea15 0206    	ands.w	r2, r5, r6
    4b70: eddf 1ae5    	vldr	s3, [pc, #916]          @ 0x4f08 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6a8>
    4b74: eddf 4ae5    	vldr	s9, [pc, #916]          @ 0x4f0c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6ac>
    4b78: ee24 4a0f    	vmul.f32	s8, s8, s30
    4b7c: fe44 4aa1    	vseleq.f32	s9, s9, s3
    4b80: eddf 1ae3    	vldr	s3, [pc, #908]          @ 0x4f10 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6b0>
    4b84: 2500         	movs	r5, #0x0
    4b86: ee24 4a21    	vmul.f32	s8, s8, s3
    4b8a: eddf 1ae2    	vldr	s3, [pc, #904]          @ 0x4f14 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6b4>
    4b8e: ee20 0a24    	vmul.f32	s0, s0, s9
    4b92: ee00 4a21    	vmla.f32	s8, s0, s3
    4b96: eddf 1ae0    	vldr	s3, [pc, #896]          @ 0x4f18 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6b8>
    4b9a: ee34 0a0a    	vadd.f32	s0, s8, s20
    4b9e: ee10 2a10    	vmov	r2, s0
    4ba2: eeb0 4ac0    	vabs.f32	s8, s0
    4ba6: f022 4200    	bic	r2, r2, #0x80000000
    4baa: eeb4 4a61    	vcmp.f32	s8, s3
    4bae: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4bb2: f04f 0200    	mov.w	r2, #0x0
    4bb6: bfa8         	it	ge
    4bb8: 2201         	movge	r2, #0x1
    4bba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bbe: bf48         	it	mi
    4bc0: 2501         	movmi	r5, #0x1
    4bc2: 432a         	orrs	r2, r5
    4bc4: f040 8180    	bne.w	0x4ec8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x668> @ imm = #0x300
    4bc8: eeb1 4a6e    	vneg.f32	s8, s29
    4bcc: ee84 fa00    	vdiv.f32	s30, s8, s0
    4bd0: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x4f1c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6bc>
    4bd4: eef4 6a40    	vcmp.f32	s13, s0
    4bd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bdc: d908         	bls	0x4bf0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x390> @ imm = #0x10
    4bde: 2c10         	cmp	r4, #0x10
    4be0: d126         	bne	0x4c30 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3d0> @ imm = #0x4c
    4be2: e175         	b	0x4ed0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x670> @ imm = #0x2ea
    4be4: 79 61 2e 43  	.word	0x432e6179
    4be8: ab aa a0 b8  	.word	0xb8a0aaab
    4bec: 0a d7 23 3d  	.word	0x3d23d70a
    4bf0: eeb0 0acb    	vabs.f32	s0, s22
    4bf4: ed9f 4aca    	vldr	s8, [pc, #808]          @ 0x4f20 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6c0>
    4bf8: eeb4 0a40    	vcmp.f32	s0, s0
    4bfc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c00: fe1a 0a00    	vselvs.f32	s0, s20, s0
    4c04: eeb4 0a4a    	vcmp.f32	s0, s20
    4c08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c0c: fe30 0a0a    	vselgt.f32	s0, s0, s20
    4c10: 2c10         	cmp	r4, #0x10
    4c12: ee20 0a04    	vmul.f32	s0, s0, s8
    4c16: ed9f 4ac3    	vldr	s8, [pc, #780]          @ 0x4f24 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6c4>
    4c1a: fe80 0a44    	vminnm.f32	s0, s0, s8
    4c1e: eeb0 4acf    	vabs.f32	s8, s30
    4c22: bf1c         	itt	ne
    4c24: eeb4 4a40    	vcmpne.f32	s8, s0
    4c28: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    4c2c: f240 8138    	bls.w	0x4ea0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x640> @ imm = #0x270
    4c30: f04f 557e    	mov.w	r5, #0x3f800000
    4c34: ed8d 1a01    	vstr	s2, [sp, #4]
    4c38: e014         	b	0x4c64 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x404> @ imm = #0x28
    4c3a: bf00         	nop
    4c3c: 7c f2 b0 3a  	.word	0x3ab0f27c
    4c40: a6 9b c4 3b  	.word	0x3bc49ba6
    4c44: a6 9b c4 bb  	.word	0xbbc49ba6
    4c48: 79 78 b0 43  	.word	0x43b07879
    4c4c: 00 00 00 00  	.word	0x00000000
    4c50: 7c f2 b0 ba  	.word	0xbab0f27c
    4c54: 53 4a a1 43  	.word	0x43a14a53
    4c58: f5a5 0500    	sub.w	r5, r5, #0x800000
    4c5c: f1b5 5f66    	cmp.w	r5, #0x39800000
    4c60: f000 8102    	beq.w	0x4e68 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x608> @ imm = #0x204
    4c64: ee00 5a10    	vmov	s0, r5
    4c68: eeb0 4a4b    	vmov.f32	s8, s22
    4c6c: eeb0 1b4d    	vmov.f64	d1, d13
    4c70: eef0 7a46    	vmov.f32	s15, s12
    4c74: eef0 4a60    	vmov.f32	s9, s1
    4c78: ee0f 4a00    	vmla.f32	s8, s30, s0
    4c7c: eef0 fa49    	vmov.f32	s31, s18
    4c80: eef0 8a49    	vmov.f32	s17, s18
    4c84: eef0 ba49    	vmov.f32	s23, s18
    4c88: eef0 ca49    	vmov.f32	s25, s18
    4c8c: ed81 4a01    	vstr	s8, [r1, #4]
    4c90: eeb7 eac4    	vcvt.f64.f32	d14, s8
    4c94: ee44 4a22    	vmla.f32	s9, s8, s5
    4c98: ee0e 1b05    	vmla.f64	d1, d14, d5
    4c9c: eef0 ea49    	vmov.f32	s29, s18
    4ca0: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    4ca4: eef0 aae4    	vabs.f32	s21, s9
    4ca8: ee40 7a07    	vmla.f32	s15, s0, s14
    4cac: eeb4 2a67    	vcmp.f32	s4, s15
    4cb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cb4: fe32 0a27    	vselgt.f32	s0, s4, s15
    4cb8: eeb4 0a43    	vcmp.f32	s0, s6
    4cbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cc0: eef4 aa63    	vcmp.f32	s21, s7
    4cc4: fe33 0a00    	vselgt.f32	s0, s6, s0
    4cc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ccc: f280 8098    	bge.w	0x4e00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x5a0> @ imm = #0x130
    4cd0: eef0 8a48    	vmov.f32	s17, s16
    4cd4: eef4 aa69    	vcmp.f32	s21, s19
    4cd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cdc: d91e         	bls	0x4d1c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x4bc> @ imm = #0x3c
    4cde: ed9f 1a84    	vldr	s2, [pc, #528]          @ 0x4ef0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x690>
    4ce2: eef4 aa41    	vcmp.f32	s21, s2
    4ce6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cea: d90d         	bls	0x4d08 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x4a8> @ imm = #0x1a
    4cec: ed9f 1a83    	vldr	s2, [pc, #524]          @ 0x4efc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x69c>
    4cf0: eef0 8a08    	vmov.f32	s17, #3.000000e+00
    4cf4: ee3a 1a81    	vadd.f32	s2, s21, s2
    4cf8: eddf 1a81    	vldr	s3, [pc, #516]          @ 0x4f00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6a0>
    4cfc: e00c         	b	0x4d18 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x4b8> @ imm = #0x18
    4cfe: bf00         	nop
    4d00: 00 00 c0 7f  	.word	0x7fc00000
    4d04: 00 bf 00 bf  	.word	0xbf00bf00
    4d08: ed9f 1a7a    	vldr	s2, [pc, #488]          @ 0x4ef4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x694>
    4d0c: eef0 8a48    	vmov.f32	s17, s16
    4d10: ee3a 1a81    	vadd.f32	s2, s21, s2
    4d14: eddf 1a78    	vldr	s3, [pc, #480]          @ 0x4ef8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x698>
    4d18: ee41 8a21    	vmla.f32	s17, s2, s3
    4d1c: ee3c 1a68    	vsub.f32	s2, s24, s17
    4d20: fec1 fa09    	vmaxnm.f32	s31, s2, s18
    4d24: eef5 fa40    	vcmp.f32	s31, #0
    4d28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d2c: d938         	bls	0x4da0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x540> @ imm = #0x70
    4d2e: eef0 8ac0    	vabs.f32	s17, s0
    4d32: eef4 8a6f    	vcmp.f32	s17, s31
    4d36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d3a: dd3d         	ble	0x4db8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x558> @ imm = #0x7a
    4d3c: eecf caa8    	vdiv.f32	s25, s31, s17
    4d40: eef0 ba4a    	vmov.f32	s23, s20
    4d44: ee2c 1aac    	vmul.f32	s2, s25, s25
    4d48: ee21 1a01    	vmul.f32	s2, s2, s2
    4d4c: ee21 1a01    	vmul.f32	s2, s2, s2
    4d50: ee61 8a01    	vmul.f32	s17, s2, s2
    4d54: ee78 aa8a    	vadd.f32	s21, s17, s20
    4d58: eef4 aa4a    	vcmp.f32	s21, s20
    4d5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d60: d009         	beq	0x4d76 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x516> @ imm = #0x12
    4d62: eef1 aaea    	vsqrt.f32	s21, s21
    4d66: eef1 aaea    	vsqrt.f32	s21, s21
    4d6a: eef1 aaea    	vsqrt.f32	s21, s21
    4d6e: eef1 aaea    	vsqrt.f32	s21, s21
    4d72: eef0 ba6a    	vmov.f32	s23, s21
    4d76: ee10 2a10    	vmov	r2, s0
    4d7a: eeca ba2b    	vdiv.f32	s23, s20, s23
    4d7e: eeb4 0a40    	vcmp.f32	s0, s0
    4d82: eddf 1a60    	vldr	s3, [pc, #384]          @ 0x4f04 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6a4>
    4d86: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d8a: f36c 021e    	bfi	r2, r12, #0, #31
    4d8e: ee01 2a10    	vmov	s2, r2
    4d92: ee21 1a2f    	vmul.f32	s2, s2, s31
    4d96: ee21 1a2b    	vmul.f32	s2, s2, s23
    4d9a: fe51 ea81    	vselvs.f32	s29, s3, s2
    4d9e: e02f         	b	0x4e00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x5a0> @ imm = #0x5e
    4da0: eef0 ea49    	vmov.f32	s29, s18
    4da4: eef0 8a49    	vmov.f32	s17, s18
    4da8: eef0 ba49    	vmov.f32	s23, s18
    4dac: eef0 ca49    	vmov.f32	s25, s18
    4db0: e026         	b	0x4e00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x5a0> @ imm = #0x4c
    4db2: bf00         	nop
    4db4: 00 00 80 7f  	.word	0x7f800000
    4db8: eec0 ca2f    	vdiv.f32	s25, s0, s31
    4dbc: eef0 ba4a    	vmov.f32	s23, s20
    4dc0: ee2c 1aac    	vmul.f32	s2, s25, s25
    4dc4: ee21 1a01    	vmul.f32	s2, s2, s2
    4dc8: ee21 1a01    	vmul.f32	s2, s2, s2
    4dcc: ee61 8a01    	vmul.f32	s17, s2, s2
    4dd0: ee78 aa8a    	vadd.f32	s21, s17, s20
    4dd4: eef4 aa4a    	vcmp.f32	s21, s20
    4dd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ddc: d009         	beq	0x4df2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x592> @ imm = #0x12
    4dde: eef1 aaea    	vsqrt.f32	s21, s21
    4de2: eef1 aaea    	vsqrt.f32	s21, s21
    4de6: eef1 aaea    	vsqrt.f32	s21, s21
    4dea: eef1 aaea    	vsqrt.f32	s21, s21
    4dee: eef0 ba6a    	vmov.f32	s23, s21
    4df2: eeca ba2b    	vdiv.f32	s23, s20, s23
    4df6: ee60 ea2b    	vmul.f32	s29, s0, s23
    4dfa: bf00         	nop
    4dfc: bf00         	nop
    4dfe: bf00         	nop
    4e00: ee74 ea6e    	vsub.f32	s29, s8, s29
    4e04: ee1e 2a90    	vmov	r2, s29
    4e08: f022 4200    	bic	r2, r2, #0x80000000
    4e0c: f1b2 4fff    	cmp.w	r2, #0x7f800000
    4e10: f6bf af22    	bge.w	0x4c58 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3f8> @ imm = #-0x1bc
    4e14: ee8e 1a8c    	vdiv.f32	s2, s29, s24
    4e18: eeb0 1ac1    	vabs.f32	s2, s2
    4e1c: fec1 aa09    	vmaxnm.f32	s21, s2, s18
    4e20: eef4 aa66    	vcmp.f32	s21, s13
    4e24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e28: f57f af16    	bpl.w	0x4c58 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x3f8> @ imm = #-0x1d4
    4e2c: eebf ea00    	vmov.f32	s28, #-1.000000e+00
    4e30: 2c10         	cmp	r4, #0x10
    4e32: d00c         	beq	0x4e4e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x5ee> @ imm = #0x18
    4e34: eeb0 ba44    	vmov.f32	s22, s8
    4e38: eeb0 1a40    	vmov.f32	s2, s0
    4e3c: eef0 6a6a    	vmov.f32	s13, s21
    4e40: f1be 0f10    	cmp.w	lr, #0x10
    4e44: f108 0801    	add.w	r8, r8, #0x1
    4e48: 4674         	mov	r4, lr
    4e4a: f77f ae1d    	ble.w	0x4a88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x228> @ imm = #-0x3c6
    4e4e: f64d 3039    	movw	r0, #0xdb39
    4e52: f64d 7238    	movw	r2, #0xdf38
    4e56: f2c0 0000    	movt	r0, #0x0
    4e5a: f2c0 0200    	movt	r2, #0x0
    4e5e: 2128         	movs	r1, #0x28
    4e60: f007 f828    	bl	0xbeb4 <core::panicking::panic> @ imm = #0x7050
    4e64: bf00         	nop
    4e66: bf00         	nop
    4e68: ed9f 0a2c    	vldr	s0, [pc, #176]          @ 0x4f1c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6bc>
    4e6c: f108 0801    	add.w	r8, r8, #0x1
    4e70: eef4 6a40    	vcmp.f32	s13, s0
    4e74: ed81 ba01    	vstr	s22, [r1, #4]
    4e78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e7c: f04f 0100    	mov.w	r1, #0x0
    4e80: d809         	bhi	0x4e96 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x636> @ imm = #0x12
    4e82: eeb0 0acf    	vabs.f32	s0, s30
    4e86: ed9f 1a27    	vldr	s2, [pc, #156]          @ 0x4f24 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x6c4>
    4e8a: eeb4 0a41    	vcmp.f32	s0, s2
    4e8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e92: bf98         	it	ls
    4e94: 2101         	movls	r1, #0x1
    4e96: ed9d 1a01    	vldr	s2, [sp, #4]
    4e9a: e008         	b	0x4eae <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x64e> @ imm = #0x10
    4e9c: bf00         	nop
    4e9e: bf00         	nop
    4ea0: 2100         	movs	r1, #0x0
    4ea2: eeb4 4a40    	vcmp.f32	s8, s0
    4ea6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4eaa: bf98         	it	ls
    4eac: 2101         	movls	r1, #0x1
    4eae: ed83 1a00    	vstr	s2, [r3]
    4eb2: edc0 6a00    	vstr	s13, [r0]
    4eb6: f880 8004    	strb.w	r8, [r0, #0x4]
    4eba: 7141         	strb	r1, [r0, #0x5]
    4ebc: b006         	add	sp, #0x18
    4ebe: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    4ec2: f85d 8b04    	ldr	r8, [sp], #4
    4ec6: bdf0         	pop	{r4, r5, r6, r7, pc}
    4ec8: 2100         	movs	r1, #0x0
    4eca: e7f2         	b	0x4eb2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x652> @ imm = #-0x1c
    4ecc: bf00         	nop
    4ece: bf00         	nop
    4ed0: 2100         	movs	r1, #0x0
    4ed2: e7ec         	b	0x4eae <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>+0x64e> @ imm = #-0x28
    4ed4: bf00         	nop
    4ed6: bf00         	nop
    4ed8: f64d 20a3    	movw	r0, #0xdaa3
    4edc: f64d 7248    	movw	r2, #0xdf48
    4ee0: f2c0 0000    	movt	r0, #0x0
    4ee4: f2c0 0200    	movt	r2, #0x0
    4ee8: a902         	add	r1, sp, #0x8
    4eea: f006 ffdf    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0x6fbe
    4eee: bf00         	nop
    4ef0: a6 9b c4 3b  	.word	0x3bc49ba6
    4ef4: 7c f2 b0 ba  	.word	0xbab0f27c
    4ef8: 53 4a a1 43  	.word	0x43a14a53
    4efc: a6 9b c4 bb  	.word	0xbbc49ba6
    4f00: 79 78 b0 43  	.word	0x43b07879
    4f04: 00 00 c0 7f  	.word	0x7fc00000
    4f08: 79 61 2e c3  	.word	0xc32e6179
    4f0c: 00 00 00 80  	.word	0x80000000
    4f10: ab aa a0 38  	.word	0x38a0aaab
    4f14: 5e 95 e1 bc  	.word	0xbce1955e
    4f18: 08 e5 3c 1e  	.word	0x1e3ce508
    4f1c: 17 b7 d1 38  	.word	0x38d1b717
    4f20: bd 37 06 36  	.word	0x360637bd
    4f24: ac c5 a7 37  	.word	0x37a7c5ac

00004f28 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>>:
    4f28: b5f0         	push	{r4, r5, r6, r7, lr}
    4f2a: af03         	add	r7, sp, #0xc
    4f2c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    4f30: b081         	sub	sp, #0x4
    4f32: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    4f36: b08e         	sub	sp, #0x38
    4f38: ed93 1a06    	vldr	s2, [r3, #24]
    4f3c: ed93 2a07    	vldr	s4, [r3, #28]
    4f40: eeb4 1a42    	vcmp.f32	s2, s4
    4f44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4f48: f200 86a2    	bhi.w	0x5c90 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd68> @ imm = #0xd44
    4f4c: edd1 7a02    	vldr	s15, [r1, #8]
    4f50: edd1 1a03    	vldr	s3, [r1, #12]
    4f54: eeb7 0ae7    	vcvt.f64.f32	d0, s15
    4f58: ed93 ea05    	vldr	s28, [r3, #20]
    4f5c: ed9f 4b2e    	vldr	d4, [pc, #184]          @ 0x5018 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xf0>
    4f60: ed8d ea05    	vstr	s28, [sp, #20]
    4f64: ed9f bad3    	vldr	s22, [pc, #844]         @ 0x52b4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x38c>
    4f68: ed92 3b12    	vldr	d3, [r2, #72]
    4f6c: ed8d 3b06    	vstr	d3, [sp, #24]
    4f70: ee00 3b04    	vmla.f64	d3, d0, d4
    4f74: eeb7 0ae1    	vcvt.f64.f32	d0, s3
    4f78: ed9f 4b29    	vldr	d4, [pc, #164]          @ 0x5020 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xf8>
    4f7c: ee00 3b04    	vmla.f64	d3, d0, d4
    4f80: ed9f 4acd    	vldr	s8, [pc, #820]          @ 0x52b8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x390>
    4f84: ed92 0b04    	vldr	d0, [r2, #16]
    4f88: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    4f8c: eeb7 dbc0    	vcvt.f32.f64	s26, d0
    4f90: ee03 ea04    	vmla.f32	s28, s6, s8
    4f94: ed9f 0ac9    	vldr	s0, [pc, #804]          @ 0x52bc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x394>
    4f98: ed8d da04    	vstr	s26, [sp, #16]
    4f9c: ee07 da80    	vmla.f32	s26, s15, s0
    4fa0: ee01 da8b    	vmla.f32	s26, s3, s22
    4fa4: eeb4 1a4e    	vcmp.f32	s2, s28
    4fa8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fac: fe31 3a0e    	vselgt.f32	s6, s2, s28
    4fb0: eeb0 0acd    	vabs.f32	s0, s26
    4fb4: eeb4 3a42    	vcmp.f32	s6, s4
    4fb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fbc: fe72 8a03    	vselgt.f32	s17, s4, s6
    4fc0: ed9f 3abf    	vldr	s6, [pc, #764]          @ 0x52c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x398>
    4fc4: eeb4 0a43    	vcmp.f32	s0, s6
    4fc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fcc: da18         	bge	0x5000 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd8> @ imm = #0x30
    4fce: ed9f 3abd    	vldr	s6, [pc, #756]          @ 0x52c4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x39c>
    4fd2: eeb4 0a43    	vcmp.f32	s0, s6
    4fd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fda: d925         	bls	0x5028 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x100> @ imm = #0x4a
    4fdc: ed9f 3aba    	vldr	s6, [pc, #744]          @ 0x52c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3a0>
    4fe0: eeb4 0a43    	vcmp.f32	s0, s6
    4fe4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fe8: d922         	bls	0x5030 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x108> @ imm = #0x44
    4fea: ed9f 3ab8    	vldr	s6, [pc, #736]          @ 0x52cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3a4>
    4fee: ee30 3a03    	vadd.f32	s6, s0, s6
    4ff2: ed9f 4ab7    	vldr	s8, [pc, #732]          @ 0x52d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3a8>
    4ff6: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    4ffa: e021         	b	0x5040 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x118> @ imm = #0x42
    4ffc: bf00         	nop
    4ffe: bf00         	nop
    5000: ed9f fab4    	vldr	s30, [pc, #720]         @ 0x52d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3ac>
    5004: eeb0 aa4f    	vmov.f32	s20, s30
    5008: eeb0 6a4f    	vmov.f32	s12, s30
    500c: eef0 ba4f    	vmov.f32	s23, s30
    5010: eeb0 0a4f    	vmov.f32	s0, s30
    5014: e08b         	b	0x512e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x206> @ imm = #0x116
    5016: bf00         	nop
    5018: 9c 9e 91 65  	.word	0x65919e9c
    501c: 97 57 e8 bf  	.word	0xbfe85797
    5020: 76 43 71 a5  	.word	0xa5714376
    5024: f8 73 e2 3f  	.word	0x3fe273f8
    5028: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    502c: e00a         	b	0x5044 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x11c> @ imm = #0x14
    502e: bf00         	nop
    5030: ed9f 3aa9    	vldr	s6, [pc, #676]          @ 0x52d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3b0>
    5034: ee30 3a03    	vadd.f32	s6, s0, s6
    5038: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    503c: ed9f 4aa7    	vldr	s8, [pc, #668]          @ 0x52dc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3b4>
    5040: ee03 0a04    	vmla.f32	s0, s6, s8
    5044: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    5048: ed9f aaa2    	vldr	s20, [pc, #648]         @ 0x52d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3ac>
    504c: ee33 0a40    	vsub.f32	s0, s6, s0
    5050: fe80 fa0a    	vmaxnm.f32	s30, s0, s20
    5054: eeb5 fa40    	vcmp.f32	s30, #0
    5058: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    505c: d93c         	bls	0x50d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x1b0> @ imm = #0x78
    505e: eeb0 0ae8    	vabs.f32	s0, s17
    5062: eeb4 0a4f    	vcmp.f32	s0, s30
    5066: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    506a: dd3d         	ble	0x50e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x1c0> @ imm = #0x7a
    506c: ee8f aa00    	vdiv.f32	s20, s30, s0
    5070: ee2a 0a0a    	vmul.f32	s0, s20, s20
    5074: ee20 0a00    	vmul.f32	s0, s0, s0
    5078: ee20 0a00    	vmul.f32	s0, s0, s0
    507c: ee60 ba00    	vmul.f32	s23, s0, s0
    5080: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    5084: ee3b 4a80    	vadd.f32	s8, s23, s0
    5088: eeb0 3a40    	vmov.f32	s6, s0
    508c: eeb4 4a40    	vcmp.f32	s8, s0
    5090: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5094: d009         	beq	0x50aa <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x182> @ imm = #0x12
    5096: eeb1 4ac4    	vsqrt.f32	s8, s8
    509a: eeb1 4ac4    	vsqrt.f32	s8, s8
    509e: eeb1 4ac4    	vsqrt.f32	s8, s8
    50a2: eeb1 4ac4    	vsqrt.f32	s8, s8
    50a6: eeb0 3a44    	vmov.f32	s6, s8
    50aa: ee18 3a90    	vmov	r3, s17
    50ae: f04f 567e    	mov.w	r6, #0x3f800000
    50b2: ee80 6a03    	vdiv.f32	s12, s0, s6
    50b6: ed9f 3af3    	vldr	s6, [pc, #972]          @ 0x5484 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x55c>
    50ba: eef4 8a68    	vcmp.f32	s17, s17
    50be: f366 031e    	bfi	r3, r6, #0, #31
    50c2: ee04 3a10    	vmov	s8, r3
    50c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    50ca: ee24 0a0f    	vmul.f32	s0, s8, s30
    50ce: ee20 0a06    	vmul.f32	s0, s0, s12
    50d2: fe13 0a00    	vselvs.f32	s0, s6, s0
    50d6: e02a         	b	0x512e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x206> @ imm = #0x54
    50d8: eeb0 6a4a    	vmov.f32	s12, s20
    50dc: eef0 ba4a    	vmov.f32	s23, s20
    50e0: eeb0 0a4a    	vmov.f32	s0, s20
    50e4: e023         	b	0x512e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x206> @ imm = #0x46
    50e6: bf00         	nop
    50e8: ee88 aa8f    	vdiv.f32	s20, s17, s30
    50ec: ee2a 0a0a    	vmul.f32	s0, s20, s20
    50f0: ee20 0a00    	vmul.f32	s0, s0, s0
    50f4: ee20 0a00    	vmul.f32	s0, s0, s0
    50f8: ee60 ba00    	vmul.f32	s23, s0, s0
    50fc: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    5100: ee3b 3a80    	vadd.f32	s6, s23, s0
    5104: eeb0 4a40    	vmov.f32	s8, s0
    5108: eeb4 3a40    	vcmp.f32	s6, s0
    510c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5110: d009         	beq	0x5126 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x1fe> @ imm = #0x12
    5112: eeb1 3ac3    	vsqrt.f32	s6, s6
    5116: eeb1 3ac3    	vsqrt.f32	s6, s6
    511a: eeb1 3ac3    	vsqrt.f32	s6, s6
    511e: eeb1 3ac3    	vsqrt.f32	s6, s6
    5122: eeb0 4a43    	vmov.f32	s8, s6
    5126: ee80 6a04    	vdiv.f32	s12, s0, s8
    512a: ee28 0a86    	vmul.f32	s0, s17, s12
    512e: ee77 fac0    	vsub.f32	s31, s15, s0
    5132: ee1f 3a90    	vmov	r3, s31
    5136: f023 4300    	bic	r3, r3, #0x80000000
    513a: f1b3 4fff    	cmp.w	r3, #0x7f800000
    513e: db03         	blt	0x5148 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x220> @ imm = #0x6
    5140: ed9f 0ae9    	vldr	s0, [pc, #932]          @ 0x54e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5c0>
    5144: e00a         	b	0x515c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x234> @ imm = #0x14
    5146: bf00         	nop
    5148: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    514c: ed9f 3a61    	vldr	s6, [pc, #388]          @ 0x52d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3ac>
    5150: ee8f 0a80    	vdiv.f32	s0, s31, s0
    5154: eeb0 0ac0    	vabs.f32	s0, s0
    5158: fe80 0a03    	vmaxnm.f32	s0, s0, s6
    515c: ed92 3b06    	vldr	d3, [r2, #24]
    5160: ed9f 4ae2    	vldr	s8, [pc, #904]          @ 0x54ec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5c4>
    5164: eeb6 ca00    	vmov.f32	s24, #5.000000e-01
    5168: eeb7 9bc3    	vcvt.f32.f64	s18, d3
    516c: ed8d 9a03    	vstr	s18, [sp, #12]
    5170: ee07 9a8b    	vmla.f32	s18, s15, s22
    5174: ed9f 3ade    	vldr	s6, [pc, #888]          @ 0x54f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5c8>
    5178: ee81 3a83    	vdiv.f32	s6, s3, s6
    517c: ee01 9a84    	vmla.f32	s18, s3, s8
    5180: eeb0 4ac3    	vabs.f32	s8, s6
    5184: eeb4 4a4c    	vcmp.f32	s8, s24
    5188: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    518c: f280 80a8    	bge.w	0x52e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3b8> @ imm = #0x150
    5190: ed9f 4ad8    	vldr	s8, [pc, #864]          @ 0x54f4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5cc>
    5194: eefe 3a00    	vmov.f32	s7, #-5.000000e-01
    5198: eeb4 4a43    	vcmp.f32	s8, s6
    519c: ed9f 5ad6    	vldr	s10, [pc, #856]         @ 0x54f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5d0>
    51a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51a4: ed9f 7ad5    	vldr	s14, [pc, #852]         @ 0x54fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5d4>
    51a8: fe34 3a03    	vselgt.f32	s6, s8, s6
    51ac: ed9f 8ad4    	vldr	s16, [pc, #848]         @ 0x5500 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5d8>
    51b0: ee81 8a88    	vdiv.f32	s16, s3, s16
    51b4: eeb4 3a45    	vcmp.f32	s6, s10
    51b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51bc: fe35 3a03    	vselgt.f32	s6, s10, s6
    51c0: ee63 0a07    	vmul.f32	s1, s6, s14
    51c4: ee70 4a8c    	vadd.f32	s9, s1, s24
    51c8: eef5 0a40    	vcmp.f32	s1, #0
    51cc: ee70 5aa3    	vadd.f32	s11, s1, s7
    51d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51d4: eefd 4ae4    	vcvt.s32.f32	s9, s9
    51d8: eefd 5ae5    	vcvt.s32.f32	s11, s11
    51dc: eeb4 4a48    	vcmp.f32	s8, s16
    51e0: ee14 3a90    	vmov	r3, s9
    51e4: ee15 2a90    	vmov	r2, s11
    51e8: bfa8         	it	ge
    51ea: 461a         	movge	r2, r3
    51ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51f0: fe34 4a08    	vselgt.f32	s8, s8, s16
    51f4: eeb4 4a45    	vcmp.f32	s8, s10
    51f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51fc: fe35 4a04    	vselgt.f32	s8, s10, s8
    5200: ee24 5a07    	vmul.f32	s10, s8, s14
    5204: ee35 7a23    	vadd.f32	s14, s10, s7
    5208: eeb5 5a40    	vcmp.f32	s10, #0
    520c: ee75 0a0c    	vadd.f32	s1, s10, s24
    5210: ee03 2a90    	vmov	s7, r2
    5214: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5218: eebd 7ac7    	vcvt.s32.f32	s14, s14
    521c: ed9f 5ab9    	vldr	s10, [pc, #740]         @ 0x5504 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5dc>
    5220: eefd 0ae0    	vcvt.s32.f32	s1, s1
    5224: eef8 3ae3    	vcvt.f32.s32	s7, s7
    5228: ee17 3a10    	vmov	r3, s14
    522c: ee10 6a90    	vmov	r6, s1
    5230: bfa8         	it	ge
    5232: 4633         	movge	r3, r6
    5234: ee03 3ac5    	vmls.f32	s6, s7, s10
    5238: f04f 567e    	mov.w	r6, #0x3f800000
    523c: ee07 3a10    	vmov	s14, r3
    5240: eb06 52c2    	add.w	r2, r6, r2, lsl #23
    5244: eb06 53c3    	add.w	r3, r6, r3, lsl #23
    5248: eeb8 7ac7    	vcvt.f32.s32	s14, s14
    524c: ee07 4a45    	vmls.f32	s8, s14, s10
    5250: ed9f 5aad    	vldr	s10, [pc, #692]         @ 0x5508 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5e0>
    5254: ed9f 7aad    	vldr	s14, [pc, #692]         @ 0x550c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5e4>
    5258: eef0 0a45    	vmov.f32	s1, s10
    525c: ee43 0a07    	vmla.f32	s1, s6, s14
    5260: ee04 5a07    	vmla.f32	s10, s8, s14
    5264: ed9f 7aaa    	vldr	s14, [pc, #680]         @ 0x5510 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5e8>
    5268: eef0 3a47    	vmov.f32	s7, s14
    526c: ee64 4a04    	vmul.f32	s9, s8, s8
    5270: ee43 3a20    	vmla.f32	s7, s6, s1
    5274: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    5278: ee04 7a05    	vmla.f32	s14, s8, s10
    527c: eeb0 5a4c    	vmov.f32	s10, s24
    5280: ee03 5a23    	vmla.f32	s10, s6, s7
    5284: eef0 3a4c    	vmov.f32	s7, s24
    5288: ee44 3a07    	vmla.f32	s7, s8, s14
    528c: ee23 7a03    	vmul.f32	s14, s6, s6
    5290: ee33 3a20    	vadd.f32	s6, s6, s1
    5294: ee34 4a20    	vadd.f32	s8, s8, s1
    5298: ee07 3a05    	vmla.f32	s6, s14, s10
    529c: ee05 2a10    	vmov	s10, r2
    52a0: ee07 3a10    	vmov	s14, r3
    52a4: ee04 4aa3    	vmla.f32	s8, s9, s7
    52a8: ee63 4a05    	vmul.f32	s9, s6, s10
    52ac: ee24 4a07    	vmul.f32	s8, s8, s14
    52b0: e065         	b	0x537e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x456> @ imm = #0xca
    52b2: bf00         	nop
    52b4: 46 af b3 38  	.word	0x38b3af46
    52b8: 79 61 2e 43  	.word	0x432e6179
    52bc: b7 63 f7 b8  	.word	0xb8f763b7
    52c0: 0a d7 23 3d  	.word	0x3d23d70a
    52c4: 7c f2 b0 3a  	.word	0x3ab0f27c
    52c8: a6 9b c4 3b  	.word	0x3bc49ba6
    52cc: a6 9b c4 bb  	.word	0xbbc49ba6
    52d0: 79 78 b0 43  	.word	0x43b07879
    52d4: 00 00 00 00  	.word	0x00000000
    52d8: 7c f2 b0 ba  	.word	0xbab0f27c
    52dc: 53 4a a1 43  	.word	0x43a14a53
    52e0: eeb4 4a44    	vcmp.f32	s8, s8
    52e4: ed9f 5a84    	vldr	s10, [pc, #528]         @ 0x54f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5d0>
    52e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    52ec: eeb0 7a4c    	vmov.f32	s14, s24
    52f0: eddf 0af1    	vldr	s1, [pc, #964]          @ 0x56b8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x790>
    52f4: fe15 4a04    	vselvs.f32	s8, s10, s8
    52f8: f04f 527e    	mov.w	r2, #0x3f800000
    52fc: eeb4 5a44    	vcmp.f32	s10, s8
    5300: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5304: fe34 4a05    	vselgt.f32	s8, s8, s10
    5308: eeb4 4a45    	vcmp.f32	s8, s10
    530c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5310: eeb5 3a40    	vcmp.f32	s6, #0
    5314: fe35 4a04    	vselgt.f32	s8, s10, s8
    5318: ed9f 5a78    	vldr	s10, [pc, #480]         @ 0x54fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5d4>
    531c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5320: ee04 7a05    	vmla.f32	s14, s8, s10
    5324: eebd 5ac7    	vcvt.s32.f32	s10, s14
    5328: eeb8 7ac5    	vcvt.f32.s32	s14, s10
    532c: ee15 3a10    	vmov	r3, s10
    5330: ee07 4a20    	vmla.f32	s8, s14, s1
    5334: ed9f 7a75    	vldr	s14, [pc, #468]         @ 0x550c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5e4>
    5338: eddf 0a73    	vldr	s1, [pc, #460]          @ 0x5508 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5e0>
    533c: eb02 52c3    	add.w	r2, r2, r3, lsl #23
    5340: ee05 2a10    	vmov	s10, r2
    5344: ee44 0a07    	vmla.f32	s1, s8, s14
    5348: ed9f 7a71    	vldr	s14, [pc, #452]         @ 0x5510 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5e8>
    534c: ee64 3a04    	vmul.f32	s7, s8, s8
    5350: ee04 7a20    	vmla.f32	s14, s8, s1
    5354: eef0 0a4c    	vmov.f32	s1, s24
    5358: ee44 0a07    	vmla.f32	s1, s8, s14
    535c: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    5360: ee34 4a07    	vadd.f32	s8, s8, s14
    5364: ee03 4aa0    	vmla.f32	s8, s7, s1
    5368: ee24 5a05    	vmul.f32	s10, s8, s10
    536c: ee87 4a05    	vdiv.f32	s8, s14, s10
    5370: eef0 4a45    	vmov.f32	s9, s10
    5374: bfbc         	itt	lt
    5376: eef0 4a44    	vmovlt.f32	s9, s8
    537a: eeb0 4a45    	vmovlt.f32	s8, s10
    537e: ee34 3ac4    	vsub.f32	s6, s9, s8
    5382: ed9f 5ada    	vldr	s10, [pc, #872]         @ 0x56ec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7c4>
    5386: eddf 6a58    	vldr	s13, [pc, #352]         @ 0x54e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5c0>
    538a: ee13 9a05    	vnmls.f32	s18, s6, s10
    538e: ee19 2a10    	vmov	r2, s18
    5392: f022 4200    	bic	r2, r2, #0x80000000
    5396: f1b2 4fff    	cmp.w	r2, #0x7f800000
    539a: da17         	bge	0x53cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x4a4> @ imm = #0x2e
    539c: ed9f 3ad4    	vldr	s6, [pc, #848]          @ 0x56f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7c8>
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
    53c8: fe70 6a03    	vselgt.f32	s13, s0, s6
    53cc: eef7 ea00    	vmov.f32	s29, #1.000000e+00
    53d0: eebf 7a00    	vmov.f32	s14, #-1.000000e+00
    53d4: f04f 0a00    	mov.w	r10, #0x0
    53d8: f04f 0b00    	mov.w	r11, #0x0
    53dc: ed5f da43    	vldr	s27, [pc, #-268]        @ 0x52d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3ac>
    53e0: f04f 537e    	mov.w	r3, #0x3f800000
    53e4: eddf 3ac3    	vldr	s7, [pc, #780]          @ 0x56f4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7cc>
    53e8: f10d 0820    	add.w	r8, sp, #0x20
    53ec: eddf 9ac2    	vldr	s19, [pc, #776]         @ 0x56f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7d0>
    53f0: f10d 0928    	add.w	r9, sp, #0x28
    53f4: eddf aac1    	vldr	s21, [pc, #772]         @ 0x56fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7d4>
    53f8: 46d6         	mov	lr, r10
    53fa: eddf cac1    	vldr	s25, [pc, #772]         @ 0x5700 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7d8>
    53fe: eddf 5a3e    	vldr	s11, [pc, #248]         @ 0x54f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5d0>
    5402: ed9f 8a42    	vldr	s16, [pc, #264]         @ 0x550c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5e4>
    5406: eddf 2a40    	vldr	s5, [pc, #256]          @ 0x5508 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5e0>
    540a: 2500         	movs	r5, #0x0
    540c: eeb0 0a6d    	vmov.f32	s0, s27
    5410: eeb0 3a6d    	vmov.f32	s6, s27
    5414: f1ba 0f10    	cmp.w	r10, #0x10
    5418: bf18         	it	ne
    541a: f10e 0e01    	addne.w	lr, lr, #0x1
    541e: eeb4 ea41    	vcmp.f32	s28, s2
    5422: 2400         	movs	r4, #0x0
    5424: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5428: eeb4 ea42    	vcmp.f32	s28, s4
    542c: bfc8         	it	gt
    542e: 2501         	movgt	r5, #0x1
    5430: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5434: eeb5 fa40    	vcmp.f32	s30, #0
    5438: bf48         	it	mi
    543a: 2401         	movmi	r4, #0x1
    543c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5440: d928         	bls	0x5494 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x56c> @ imm = #0x50
    5442: ee3b 0aae    	vadd.f32	s0, s23, s29
    5446: eeb0 3ae8    	vabs.f32	s6, s17
    544a: ee86 0a00    	vdiv.f32	s0, s12, s0
    544e: eeb4 3a4f    	vcmp.f32	s6, s30
    5452: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5456: dd17         	ble	0x5488 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x560> @ imm = #0x2e
    5458: ee18 2a90    	vmov	r2, s17
    545c: ee2b 6a8a    	vmul.f32	s12, s23, s20
    5460: eef4 8a68    	vcmp.f32	s17, s17
    5464: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5468: f363 021e    	bfi	r2, r3, #0, #31
    546c: ee03 2a10    	vmov	s6, r2
    5470: ee23 3a00    	vmul.f32	s6, s6, s0
    5474: ee26 0a00    	vmul.f32	s0, s12, s0
    5478: ed9f 6a02    	vldr	s12, [pc, #8]           @ 0x5484 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x55c>
    547c: fe16 3a03    	vselvs.f32	s6, s12, s6
    5480: e008         	b	0x5494 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x56c> @ imm = #0x10
    5482: bf00         	nop
    5484: 00 00 c0 7f  	.word	0x7fc00000
    5488: ee28 3aab    	vmul.f32	s6, s17, s23
    548c: ee83 3a0f    	vdiv.f32	s6, s6, s30
    5490: ee23 3a00    	vmul.f32	s6, s6, s0
    5494: eeb5 da40    	vcmp.f32	s26, #0
    5498: eeb0 6a6d    	vmov.f32	s12, s27
    549c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54a0: bf48         	it	mi
    54a2: eeb0 6a47    	vmovmi.f32	s12, s14
    54a6: eef0 0acd    	vabs.f32	s1, s26
    54aa: eeb0 aa6d    	vmov.f32	s20, s27
    54ae: fe3e 6a86    	vselgt.f32	s12, s29, s12
    54b2: ed1f 7a7d    	vldr	s14, [pc, #-500]        @ 0x52c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x398>
    54b6: eef4 0a47    	vcmp.f32	s1, s14
    54ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54be: da31         	bge	0x5524 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5fc> @ imm = #0x62
    54c0: eeb0 aa6d    	vmov.f32	s20, s27
    54c4: ed1f 7a81    	vldr	s14, [pc, #-516]        @ 0x52c4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x39c>
    54c8: eef4 0a47    	vcmp.f32	s1, s14
    54cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54d0: d926         	bls	0x5520 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5f8> @ imm = #0x4c
    54d2: ed1f 7a83    	vldr	s14, [pc, #-524]        @ 0x52c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3a0>
    54d6: eef4 0a47    	vcmp.f32	s1, s14
    54da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54de: d91b         	bls	0x5518 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5f0> @ imm = #0x36
    54e0: ed1f 7a85    	vldr	s14, [pc, #-532]        @ 0x52d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3a8>
    54e4: e01a         	b	0x551c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5f4> @ imm = #0x34
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
    5518: ed1f 7a90    	vldr	s14, [pc, #-576]        @ 0x52dc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x3b4>
    551c: ee26 aa07    	vmul.f32	s20, s12, s14
    5520: eeb1 aa4a    	vneg.f32	s20, s20
    5524: ea15 0204    	ands.w	r2, r5, r4
    5528: ee23 3a0a    	vmul.f32	s6, s6, s20
    552c: fe09 6aa3    	vseleq.f32	s12, s19, s7
    5530: ed9f 7ada    	vldr	s14, [pc, #872]         @ 0x589c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x974>
    5534: ee34 4a84    	vadd.f32	s8, s9, s8
    5538: 464a         	mov	r2, r9
    553a: f64a 7646    	movw	r6, #0xaf46
    553e: ee20 0a06    	vmul.f32	s0, s0, s12
    5542: f6cb 06b3    	movt	r6, #0xb8b3
    5546: ee23 6a2c    	vmul.f32	s12, s6, s25
    554a: ee00 6a07    	vmla.f32	s12, s0, s14
    554e: ed9f 7a67    	vldr	s14, [pc, #412]         @ 0x56ec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7c4>
    5552: ee24 4a07    	vmul.f32	s8, s8, s14
    5556: ed9f 7ad2    	vldr	s14, [pc, #840]         @ 0x58a0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x978>
    555a: ee20 0a2a    	vmul.f32	s0, s0, s21
    555e: ee03 0a4b    	vmls.f32	s0, s6, s22
    5562: ed1f 3a1d    	vldr	s6, [pc, #-116]         @ 0x54f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x5c8>
    5566: ee84 3a03    	vdiv.f32	s6, s8, s6
    556a: ee36 6a2e    	vadd.f32	s12, s12, s29
    556e: ed8d 0a0b    	vstr	s0, [sp, #44]
    5572: ed9f 0acc    	vldr	s0, [pc, #816]          @ 0x58a4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x97c>
    5576: ee33 0a00    	vadd.f32	s0, s6, s0
    557a: ed8d 6a0a    	vstr	s12, [sp, #40]
    557e: eeb0 4ac6    	vabs.f32	s8, s12
    5582: ed8d 0a09    	vstr	s0, [sp, #36]
    5586: eeb1 6a49    	vneg.f32	s12, s18
    558a: eeb4 4a4b    	vcmp.f32	s8, s22
    558e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5592: bf48         	it	mi
    5594: 4642         	movmi	r2, r8
    5596: 9608         	str	r6, [sp, #0x20]
    5598: f8dd c028    	ldr.w	r12, [sp, #0x28]
    559c: e9d2 5400    	ldrd	r5, r4, [r2]
    55a0: 950a         	str	r5, [sp, #0x28]
    55a2: 9d0b         	ldr	r5, [sp, #0x2c]
    55a4: 940b         	str	r4, [sp, #0x2c]
    55a6: eeb4 ba44    	vcmp.f32	s22, s8
    55aa: e9c2 c500    	strd	r12, r5, [r2]
    55ae: eeb1 4a6f    	vneg.f32	s8, s31
    55b2: ed9d 0a0a    	vldr	s0, [sp, #40]
    55b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55ba: ee10 2a10    	vmov	r2, s0
    55be: fe36 3a04    	vselgt.f32	s6, s12, s8
    55c2: fe34 4a06    	vselgt.f32	s8, s8, s12
    55c6: f022 4200    	bic	r2, r2, #0x80000000
    55ca: f1b2 4fff    	cmp.w	r2, #0x7f800000
    55ce: f280 8353    	bge.w	0x5c78 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd50> @ imm = #0x6a6
    55d2: eeb0 6ac0    	vabs.f32	s12, s0
    55d6: eeb4 6a47    	vcmp.f32	s12, s14
    55da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55de: f100 834b    	bmi.w	0x5c78 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd50> @ imm = #0x696
    55e2: ed9d 6a08    	vldr	s12, [sp, #32]
    55e6: eddd 4a09    	vldr	s9, [sp, #36]
    55ea: eec6 0a00    	vdiv.f32	s1, s12, s0
    55ee: ed9d 6a0b    	vldr	s12, [sp, #44]
    55f2: ee40 4ac6    	vmls.f32	s9, s1, s12
    55f6: edcd 4a09    	vstr	s9, [sp, #36]
    55fa: 9a09         	ldr	r2, [sp, #0x24]
    55fc: f022 4400    	bic	r4, r2, #0x80000000
    5600: f1b4 4fff    	cmp.w	r4, #0x7f800000
    5604: f280 8338    	bge.w	0x5c78 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd50> @ imm = #0x670
    5608: ee04 2a90    	vmov	s9, r2
    560c: eeb0 9ae4    	vabs.f32	s18, s9
    5610: eeb4 9a47    	vcmp.f32	s18, s14
    5614: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5618: f100 832e    	bmi.w	0x5c78 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd50> @ imm = #0x65c
    561c: ee00 4ac3    	vmls.f32	s8, s1, s6
    5620: eef0 0ae7    	vabs.f32	s1, s15
    5624: eef4 0a60    	vcmp.f32	s1, s1
    5628: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    562c: eec4 9a24    	vdiv.f32	s19, s8, s9
    5630: fe1e 4aa0    	vselvs.f32	s8, s29, s1
    5634: ee06 3a69    	vmls.f32	s6, s12, s19
    5638: ed9f 6a9b    	vldr	s12, [pc, #620]         @ 0x58a8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x980>
    563c: eeb4 4a6e    	vcmp.f32	s8, s29
    5640: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5644: fe34 4a2e    	vselgt.f32	s8, s8, s29
    5648: eec3 ca00    	vdiv.f32	s25, s6, s0
    564c: ed9f 3a97    	vldr	s6, [pc, #604]          @ 0x58ac <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x984>
    5650: ee24 4a06    	vmul.f32	s8, s8, s12
    5654: fe84 0a43    	vminnm.f32	s0, s8, s6
    5658: eeb0 4aec    	vabs.f32	s8, s25
    565c: eeb4 4a40    	vcmp.f32	s8, s0
    5660: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5664: d818         	bhi	0x5698 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x770> @ imm = #0x30
    5666: eeb0 0ae1    	vabs.f32	s0, s3
    566a: eeb4 0a40    	vcmp.f32	s0, s0
    566e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5672: fe1e 0a80    	vselvs.f32	s0, s29, s0
    5676: eeb4 0a6e    	vcmp.f32	s0, s29
    567a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    567e: fe30 0a2e    	vselgt.f32	s0, s0, s29
    5682: ee20 0a06    	vmul.f32	s0, s0, s12
    5686: fe80 0a43    	vminnm.f32	s0, s0, s6
    568a: eeb0 3ae9    	vabs.f32	s6, s19
    568e: eeb4 3a40    	vcmp.f32	s6, s0
    5692: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5696: d913         	bls	0x56c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x798> @ imm = #0x26
    5698: 2400         	movs	r4, #0x0
    569a: ed9f 0a85    	vldr	s0, [pc, #532]          @ 0x58b0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x988>
    569e: eef4 6a40    	vcmp.f32	s13, s0
    56a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56a6: d813         	bhi	0x56d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7a8> @ imm = #0x26
    56a8: f1aa 0210    	sub.w	r2, r10, #0x10
    56ac: fab2 f282    	clz	r2, r2
    56b0: 0952         	lsrs	r2, r2, #0x5
    56b2: 4322         	orrs	r2, r4
    56b4: d010         	beq	0x56d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7b0> @ imm = #0x20
    56b6: e2cd         	b	0x5c54 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd2c> @ imm = #0x59a
    56b8: 18 72 31 bf  	.word	0xbf317218
    56bc: 00 bf 00 bf  	.word	0xbf00bf00
    56c0: 2401         	movs	r4, #0x1
    56c2: ed9f 0a7b    	vldr	s0, [pc, #492]          @ 0x58b0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x988>
    56c6: eef4 6a40    	vcmp.f32	s13, s0
    56ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56ce: d9eb         	bls	0x56a8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x780> @ imm = #-0x2a
    56d0: f1ba 0f10    	cmp.w	r10, #0x10
    56d4: f000 82d8    	beq.w	0x5c88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd60> @ imm = #0x5b0
    56d8: f04f 557e    	mov.w	r5, #0x3f800000
    56dc: ed8d 4a00    	vstr	s8, [sp]
    56e0: edcd 6a02    	vstr	s13, [sp, #8]
    56e4: edcd 8a01    	vstr	s17, [sp, #4]
    56e8: e016         	b	0x5718 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7f0> @ imm = #0x2c
    56ea: bf00         	nop
    56ec: 77 cc 2b 31  	.word	0x312bcc77
    56f0: 0a d7 23 3c  	.word	0x3c23d70a
    56f4: 79 61 2e c3  	.word	0xc32e6179
    56f8: 00 00 00 80  	.word	0x80000000
    56fc: c5 9f 13 3f  	.word	0x3f139fc5
    5700: b7 63 f7 38  	.word	0x38f763b7
    5704: 00 bf 00 bf  	.word	0xbf00bf00
    5708: eef0 1a47    	vmov.f32	s3, s14
    570c: f5a5 0500    	sub.w	r5, r5, #0x800000
    5710: f1b5 5f66    	cmp.w	r5, #0x39800000
    5714: f000 8274    	beq.w	0x5c00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xcd8> @ imm = #0x4e8
    5718: ee04 5a10    	vmov	s8, r5
    571c: eeb0 0a67    	vmov.f32	s0, s15
    5720: eeb0 3a61    	vmov.f32	s6, s3
    5724: ed9d ea05    	vldr	s28, [sp, #20]
    5728: ed9f ab63    	vldr	d10, [pc, #396]         @ 0x58b8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x990>
    572c: ee0c 0a84    	vmla.f32	s0, s25, s8
    5730: ed9d da04    	vldr	s26, [sp, #16]
    5734: ee09 3a84    	vmla.f32	s6, s19, s8
    5738: eef0 ba6d    	vmov.f32	s23, s27
    573c: ed9d 6b06    	vldr	d6, [sp, #24]
    5740: ed81 0a02    	vstr	s0, [r1, #8]
    5744: ed81 3a03    	vstr	s6, [r1, #12]
    5748: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    574c: eeb7 fac3    	vcvt.f64.f32	d15, s6
    5750: ee04 6b0a    	vmla.f64	d6, d4, d10
    5754: eeb0 aa6d    	vmov.f32	s20, s27
    5758: ed9f 4b59    	vldr	d4, [pc, #356]          @ 0x58c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x998>
    575c: ee0f 6b04    	vmla.f64	d6, d15, d4
    5760: eeb0 fa6d    	vmov.f32	s30, s27
    5764: eeb7 4bc6    	vcvt.f32.f64	s8, d6
    5768: ed9f 6ac7    	vldr	s12, [pc, #796]         @ 0x5a88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xb60>
    576c: ee04 ea06    	vmla.f32	s28, s8, s12
    5770: ed9f 4ac6    	vldr	s8, [pc, #792]          @ 0x5a8c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xb64>
    5774: ee00 da04    	vmla.f32	s26, s0, s8
    5778: eeb0 6a6d    	vmov.f32	s12, s27
    577c: ee03 da0b    	vmla.f32	s26, s6, s22
    5780: eeb4 1a4e    	vcmp.f32	s2, s28
    5784: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5788: fe31 4a0e    	vselgt.f32	s8, s2, s28
    578c: eef0 0acd    	vabs.f32	s1, s26
    5790: eeb4 4a42    	vcmp.f32	s8, s4
    5794: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5798: fe72 8a04    	vselgt.f32	s17, s4, s8
    579c: ed9f 4abc    	vldr	s8, [pc, #752]          @ 0x5a90 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xb68>
    57a0: eef4 0a44    	vcmp.f32	s1, s8
    57a4: eeb0 4a6d    	vmov.f32	s8, s27
    57a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    57ac: f280 80b0    	bge.w	0x5910 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x9e8> @ imm = #0x160
    57b0: ed9f 4ab8    	vldr	s8, [pc, #736]          @ 0x5a94 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xb6c>
    57b4: eef4 0a44    	vcmp.f32	s1, s8
    57b8: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    57bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    57c0: d91c         	bls	0x57fc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x8d4> @ imm = #0x38
    57c2: ed9f 4ab5    	vldr	s8, [pc, #724]          @ 0x5a98 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xb70>
    57c6: eef4 0a44    	vcmp.f32	s1, s8
    57ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    57ce: d90b         	bls	0x57e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x8c0> @ imm = #0x16
    57d0: ed9f 4ab2    	vldr	s8, [pc, #712]          @ 0x5a9c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xb74>
    57d4: ee30 6a84    	vadd.f32	s12, s1, s8
    57d8: eeb0 4a08    	vmov.f32	s8, #3.000000e+00
    57dc: ed9f 7ab0    	vldr	s14, [pc, #704]         @ 0x5aa0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xb78>
    57e0: e00a         	b	0x57f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x8d0> @ imm = #0x14
    57e2: bf00         	nop
    57e4: bf00         	nop
    57e6: bf00         	nop
    57e8: ed9f 4aae    	vldr	s8, [pc, #696]          @ 0x5aa4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xb7c>
    57ec: ee30 6a84    	vadd.f32	s12, s1, s8
    57f0: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    57f4: ed9f 7aac    	vldr	s14, [pc, #688]         @ 0x5aa8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xb80>
    57f8: ee06 4a07    	vmla.f32	s8, s12, s14
    57fc: eeb2 6a0e    	vmov.f32	s12, #1.500000e+01
    5800: ee36 4a44    	vsub.f32	s8, s12, s8
    5804: fe84 fa2d    	vmaxnm.f32	s30, s8, s27
    5808: eeb5 fa40    	vcmp.f32	s30, #0
    580c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5810: d93a         	bls	0x5888 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x960> @ imm = #0x74
    5812: eeb0 4ae8    	vabs.f32	s8, s17
    5816: eeb4 4a4f    	vcmp.f32	s8, s30
    581a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    581e: dd53         	ble	0x58c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x9a0> @ imm = #0xa6
    5820: ee8f aa04    	vdiv.f32	s20, s30, s8
    5824: eeb0 6a6e    	vmov.f32	s12, s29
    5828: ee2a 4a0a    	vmul.f32	s8, s20, s20
    582c: ee24 4a04    	vmul.f32	s8, s8, s8
    5830: ee24 4a04    	vmul.f32	s8, s8, s8
    5834: ee64 ba04    	vmul.f32	s23, s8, s8
    5838: ee3b 4aae    	vadd.f32	s8, s23, s29
    583c: eeb4 4a6e    	vcmp.f32	s8, s29
    5840: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5844: d009         	beq	0x585a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x932> @ imm = #0x12
    5846: eeb1 4ac4    	vsqrt.f32	s8, s8
    584a: eeb1 4ac4    	vsqrt.f32	s8, s8
    584e: eeb1 4ac4    	vsqrt.f32	s8, s8
    5852: eeb1 4ac4    	vsqrt.f32	s8, s8
    5856: eeb0 6a44    	vmov.f32	s12, s8
    585a: ee18 2a90    	vmov	r2, s17
    585e: ee8e 6a86    	vdiv.f32	s12, s29, s12
    5862: eef4 8a68    	vcmp.f32	s17, s17
    5866: ed9f 7ae4    	vldr	s14, [pc, #912]         @ 0x5bf8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xcd0>
    586a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    586e: f363 021e    	bfi	r2, r3, #0, #31
    5872: ee04 2a10    	vmov	s8, r2
    5876: ee24 4a0f    	vmul.f32	s8, s8, s30
    587a: ee24 4a06    	vmul.f32	s8, s8, s12
    587e: fe17 4a04    	vselvs.f32	s8, s14, s8
    5882: e045         	b	0x5910 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x9e8> @ imm = #0x8a
    5884: bf00         	nop
    5886: bf00         	nop
    5888: eeb0 4a6d    	vmov.f32	s8, s27
    588c: eef0 ba6d    	vmov.f32	s23, s27
    5890: eeb0 6a6d    	vmov.f32	s12, s27
    5894: eeb0 aa6d    	vmov.f32	s20, s27
    5898: e03a         	b	0x5910 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x9e8> @ imm = #0x74
    589a: bf00         	nop
    589c: bb bc 42 bf  	.word	0xbf42bcbb
    58a0: 08 e5 3c 1e  	.word	0x1e3ce508
    58a4: 50 69 15 39  	.word	0x39156950
    58a8: bd 37 06 36  	.word	0x360637bd
    58ac: ac c5 a7 37  	.word	0x37a7c5ac
    58b0: 17 b7 d1 38  	.word	0x38d1b717
    58b4: 00 bf 00 bf  	.word	0xbf00bf00
    58b8: 9c 9e 91 65  	.word	0x65919e9c
    58bc: 97 57 e8 bf  	.word	0xbfe85797
    58c0: 76 43 71 a5  	.word	0xa5714376
    58c4: f8 73 e2 3f  	.word	0x3fe273f8
    58c8: ee88 aa8f    	vdiv.f32	s20, s17, s30
    58cc: eeb0 6a6e    	vmov.f32	s12, s29
    58d0: ee2a 4a0a    	vmul.f32	s8, s20, s20
    58d4: ee24 4a04    	vmul.f32	s8, s8, s8
    58d8: ee24 4a04    	vmul.f32	s8, s8, s8
    58dc: ee64 ba04    	vmul.f32	s23, s8, s8
    58e0: ee3b 4aae    	vadd.f32	s8, s23, s29
    58e4: eeb4 4a6e    	vcmp.f32	s8, s29
    58e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58ec: d009         	beq	0x5902 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x9da> @ imm = #0x12
    58ee: eeb1 4ac4    	vsqrt.f32	s8, s8
    58f2: eeb1 4ac4    	vsqrt.f32	s8, s8
    58f6: eeb1 4ac4    	vsqrt.f32	s8, s8
    58fa: eeb1 4ac4    	vsqrt.f32	s8, s8
    58fe: eeb0 6a44    	vmov.f32	s12, s8
    5902: ee8e 6a86    	vdiv.f32	s12, s29, s12
    5906: ee28 4a86    	vmul.f32	s8, s17, s12
    590a: bf00         	nop
    590c: bf00         	nop
    590e: bf00         	nop
    5910: ee70 fa44    	vsub.f32	s31, s0, s8
    5914: eeb0 7a61    	vmov.f32	s14, s3
    5918: eddf 0ae3    	vldr	s1, [pc, #908]          @ 0x5ca8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd80>
    591c: ee1f 2a90    	vmov	r2, s31
    5920: f022 4200    	bic	r2, r2, #0x80000000
    5924: f1b2 4fff    	cmp.w	r2, #0x7f800000
    5928: da07         	bge	0x593a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xa12> @ imm = #0xe
    592a: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    592e: ee8f 4a84    	vdiv.f32	s8, s31, s8
    5932: eeb0 4ac4    	vabs.f32	s8, s8
    5936: fec4 0a2d    	vmaxnm.f32	s1, s8, s27
    593a: ed9f 4add    	vldr	s8, [pc, #884]          @ 0x5cb0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd88>
    593e: eef0 1a4b    	vmov.f32	s3, s22
    5942: eec3 4a04    	vdiv.f32	s9, s6, s8
    5946: eeb0 4ae4    	vabs.f32	s8, s9
    594a: eeb4 4a4c    	vcmp.f32	s8, s24
    594e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5952: f280 80ad    	bge.w	0x5ab0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xb88> @ imm = #0x15a
    5956: eddf 3adb    	vldr	s7, [pc, #876]          @ 0x5cc4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd9c>
    595a: eebe 9a00    	vmov.f32	s18, #-5.000000e-01
    595e: eef4 3a64    	vcmp.f32	s7, s9
    5962: eddf aad4    	vldr	s21, [pc, #848]         @ 0x5cb4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd8c>
    5966: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    596a: eeb0 5a62    	vmov.f32	s10, s5
    596e: eef0 2a48    	vmov.f32	s5, s16
    5972: fe33 4aa4    	vselgt.f32	s8, s7, s9
    5976: eeb0 8a49    	vmov.f32	s16, s18
    597a: ed9f bad1    	vldr	s22, [pc, #836]         @ 0x5cc0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd98>
    597e: ee83 ba0b    	vdiv.f32	s22, s6, s22
    5982: eeb4 4a65    	vcmp.f32	s8, s11
    5986: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    598a: fe35 4a84    	vselgt.f32	s8, s11, s8
    598e: ee64 4a2a    	vmul.f32	s9, s8, s21
    5992: ee74 6a8c    	vadd.f32	s13, s9, s24
    5996: eef5 4a40    	vcmp.f32	s9, #0
    599a: ee34 9a89    	vadd.f32	s18, s9, s18
    599e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59a2: eefd 6ae6    	vcvt.s32.f32	s13, s13
    59a6: eebd 9ac9    	vcvt.s32.f32	s18, s18
    59aa: eef4 3a4b    	vcmp.f32	s7, s22
    59ae: ee16 2a90    	vmov	r2, s13
    59b2: ee19 4a10    	vmov	r4, s18
    59b6: bfa8         	it	ge
    59b8: 4614         	movge	r4, r2
    59ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59be: fe73 4a8b    	vselgt.f32	s9, s7, s22
    59c2: eef4 4a65    	vcmp.f32	s9, s11
    59c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59ca: fe75 4aa4    	vselgt.f32	s9, s11, s9
    59ce: ee64 6aaa    	vmul.f32	s13, s9, s21
    59d2: eef0 aa67    	vmov.f32	s21, s15
    59d6: ee36 9a88    	vadd.f32	s18, s13, s16
    59da: eef5 6a40    	vcmp.f32	s13, #0
    59de: ee36 ba8c    	vadd.f32	s22, s13, s24
    59e2: ee06 4a90    	vmov	s13, r4
    59e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59ea: eebd 9ac9    	vcvt.s32.f32	s18, s18
    59ee: ed9f 8ab6    	vldr	s16, [pc, #728]         @ 0x5cc8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xda0>
    59f2: eef8 6ae6    	vcvt.f32.s32	s13, s13
    59f6: ee19 2a10    	vmov	r2, s18
    59fa: eebd 9acb    	vcvt.s32.f32	s18, s22
    59fe: ee06 4ac8    	vmls.f32	s8, s13, s16
    5a02: eef0 6a45    	vmov.f32	s13, s10
    5a06: ee19 6a10    	vmov	r6, s18
    5a0a: bfa8         	it	ge
    5a0c: 4632         	movge	r2, r6
    5a0e: eb03 56c4    	add.w	r6, r3, r4, lsl #23
    5a12: ee09 2a10    	vmov	s18, r2
    5a16: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    5a1a: eeb8 9ac9    	vcvt.f32.s32	s18, s18
    5a1e: ee49 4a48    	vmls.f32	s9, s18, s16
    5a22: eeb0 8a62    	vmov.f32	s16, s5
    5a26: eeb0 9a45    	vmov.f32	s18, s10
    5a2a: eef0 2a45    	vmov.f32	s5, s10
    5a2e: ed9f 5aa3    	vldr	s10, [pc, #652]         @ 0x5cbc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd94>
    5a32: ee44 6a08    	vmla.f32	s13, s8, s16
    5a36: eeb0 ba45    	vmov.f32	s22, s10
    5a3a: ee04 9a88    	vmla.f32	s18, s9, s16
    5a3e: ee64 7aa4    	vmul.f32	s15, s9, s9
    5a42: ee04 ba26    	vmla.f32	s22, s8, s13
    5a46: eef0 6a45    	vmov.f32	s13, s10
    5a4a: ee44 6a89    	vmla.f32	s13, s9, s18
    5a4e: eeb0 9a4c    	vmov.f32	s18, s24
    5a52: ee04 9a0b    	vmla.f32	s18, s8, s22
    5a56: eeb0 ba4c    	vmov.f32	s22, s24
    5a5a: ee04 baa6    	vmla.f32	s22, s9, s13
    5a5e: ee64 6a04    	vmul.f32	s13, s8, s8
    5a62: ee34 4a2e    	vadd.f32	s8, s8, s29
    5a66: ee06 4a89    	vmla.f32	s8, s13, s18
    5a6a: ee74 6aae    	vadd.f32	s13, s9, s29
    5a6e: ee04 6a90    	vmov	s9, r6
    5a72: ee47 6a8b    	vmla.f32	s13, s15, s22
    5a76: ee07 2a90    	vmov	s15, r2
    5a7a: ee64 4a24    	vmul.f32	s9, s8, s9
    5a7e: ee26 4aa7    	vmul.f32	s8, s13, s15
    5a82: eef0 7a6a    	vmov.f32	s15, s21
    5a86: e05a         	b	0x5b3e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xc16> @ imm = #0xb4
    5a88: 79 61 2e 43  	.word	0x432e6179
    5a8c: b7 63 f7 b8  	.word	0xb8f763b7
    5a90: 0a d7 23 3d  	.word	0x3d23d70a
    5a94: 7c f2 b0 3a  	.word	0x3ab0f27c
    5a98: a6 9b c4 3b  	.word	0x3bc49ba6
    5a9c: a6 9b c4 bb  	.word	0xbbc49ba6
    5aa0: 79 78 b0 43  	.word	0x43b07879
    5aa4: 7c f2 b0 ba  	.word	0xbab0f27c
    5aa8: 53 4a a1 43  	.word	0x43a14a53
    5aac: 00 bf 00 bf  	.word	0xbf00bf00
    5ab0: eeb4 4a44    	vcmp.f32	s8, s8
    5ab4: ed9f 9a7f    	vldr	s18, [pc, #508]         @ 0x5cb4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd8c>
    5ab8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5abc: eef0 6a4c    	vmov.f32	s13, s24
    5ac0: ed9f 5a7d    	vldr	s10, [pc, #500]         @ 0x5cb8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd90>
    5ac4: fe15 4a84    	vselvs.f32	s8, s11, s8
    5ac8: ed9f ba7c    	vldr	s22, [pc, #496]         @ 0x5cbc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd94>
    5acc: eef4 5a44    	vcmp.f32	s11, s8
    5ad0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ad4: fe34 4a25    	vselgt.f32	s8, s8, s11
    5ad8: eeb4 4a65    	vcmp.f32	s8, s11
    5adc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ae0: eef5 4a40    	vcmp.f32	s9, #0
    5ae4: fe35 4a84    	vselgt.f32	s8, s11, s8
    5ae8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5aec: ee44 6a09    	vmla.f32	s13, s8, s18
    5af0: eefd 6ae6    	vcvt.s32.f32	s13, s13
    5af4: eeb8 9ae6    	vcvt.f32.s32	s18, s13
    5af8: ee16 2a90    	vmov	r2, s13
    5afc: ee09 4a05    	vmla.f32	s8, s18, s10
    5b00: eeb0 9a62    	vmov.f32	s18, s5
    5b04: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    5b08: ee06 2a90    	vmov	s13, r2
    5b0c: ee04 9a08    	vmla.f32	s18, s8, s16
    5b10: ee04 ba09    	vmla.f32	s22, s8, s18
    5b14: eeb0 9a4c    	vmov.f32	s18, s24
    5b18: ee04 9a0b    	vmla.f32	s18, s8, s22
    5b1c: ee24 ba04    	vmul.f32	s22, s8, s8
    5b20: ee34 4a2e    	vadd.f32	s8, s8, s29
    5b24: ee0b 4a09    	vmla.f32	s8, s22, s18
    5b28: ee64 6a26    	vmul.f32	s13, s8, s13
    5b2c: ee8e 4aa6    	vdiv.f32	s8, s29, s13
    5b30: eef0 4a66    	vmov.f32	s9, s13
    5b34: bfbc         	itt	lt
    5b36: eef0 4a44    	vmovlt.f32	s9, s8
    5b3a: eeb0 4a66    	vmovlt.f32	s8, s13
    5b3e: ed9d 9a03    	vldr	s18, [sp, #12]
    5b42: ee00 9a21    	vmla.f32	s18, s0, s3
    5b46: eeb0 ba61    	vmov.f32	s22, s3
    5b4a: eddf 1a58    	vldr	s3, [pc, #352]          @ 0x5cac <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd84>
    5b4e: ee74 6ac4    	vsub.f32	s13, s9, s8
    5b52: ee03 9a21    	vmla.f32	s18, s6, s3
    5b56: eddf 1a5d    	vldr	s3, [pc, #372]          @ 0x5ccc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xda4>
    5b5a: ee16 9aa1    	vnmls.f32	s18, s13, s3
    5b5e: ee19 2a10    	vmov	r2, s18
    5b62: f022 4200    	bic	r2, r2, #0x80000000
    5b66: f1b2 4fff    	cmp.w	r2, #0x7f800000
    5b6a: f6bf adcd    	bge.w	0x5708 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7e0> @ imm = #-0x466
    5b6e: ed9f 5a58    	vldr	s10, [pc, #352]         @ 0x5cd0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xda8>
    5b72: eef4 0a60    	vcmp.f32	s1, s1
    5b76: eec9 6a05    	vdiv.f32	s13, s18, s10
    5b7a: ed9d 5a02    	vldr	s10, [sp, #8]
    5b7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b82: eef0 6ae6    	vabs.f32	s13, s13
    5b86: fe56 0aa0    	vselvs.f32	s1, s13, s1
    5b8a: eef4 6a66    	vcmp.f32	s13, s13
    5b8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b92: fe50 6aa6    	vselvs.f32	s13, s1, s13
    5b96: eef4 0a66    	vcmp.f32	s1, s13
    5b9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b9e: fe70 0aa6    	vselgt.f32	s1, s1, s13
    5ba2: eef4 0a45    	vcmp.f32	s1, s10
    5ba6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5baa: f57f adad    	bpl.w	0x5708 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x7e0> @ imm = #-0x4a6
    5bae: eebf 7a00    	vmov.f32	s14, #-1.000000e+00
    5bb2: f1ba 0f10    	cmp.w	r10, #0x10
    5bb6: eddf 3a47    	vldr	s7, [pc, #284]          @ 0x5cd4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xdac>
    5bba: eddf 9a47    	vldr	s19, [pc, #284]         @ 0x5cd8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xdb0>
    5bbe: eddf aa47    	vldr	s21, [pc, #284]         @ 0x5cdc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xdb4>
    5bc2: eddf ca47    	vldr	s25, [pc, #284]         @ 0x5ce0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xdb8>
    5bc6: d00c         	beq	0x5be2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xcba> @ imm = #0x18
    5bc8: eef0 1a43    	vmov.f32	s3, s6
    5bcc: eef0 7a40    	vmov.f32	s15, s0
    5bd0: eef0 6a60    	vmov.f32	s13, s1
    5bd4: f1be 0f10    	cmp.w	lr, #0x10
    5bd8: f10b 0b01    	add.w	r11, r11, #0x1
    5bdc: 46f2         	mov	r10, lr
    5bde: f77f ac14    	ble.w	0x540a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0x4e2> @ imm = #-0x7d8
    5be2: f64d 3039    	movw	r0, #0xdb39
    5be6: f64d 7238    	movw	r2, #0xdf38
    5bea: f2c0 0000    	movt	r0, #0x0
    5bee: f2c0 0200    	movt	r2, #0x0
    5bf2: 2128         	movs	r1, #0x28
    5bf4: f006 f95e    	bl	0xbeb4 <core::panicking::panic> @ imm = #0x62bc
    5bf8: 00 00 c0 7f  	.word	0x7fc00000
    5bfc: 00 bf 00 bf  	.word	0xbf00bf00
    5c00: eddd 6a02    	vldr	s13, [sp, #8]
    5c04: ed9f 0a38    	vldr	s0, [pc, #224]          @ 0x5ce8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xdc0>
    5c08: 2200         	movs	r2, #0x0
    5c0a: eef4 6a40    	vcmp.f32	s13, s0
    5c0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c12: bf98         	it	ls
    5c14: 2201         	movls	r2, #0x1
    5c16: ed9f 1a33    	vldr	s2, [pc, #204]          @ 0x5ce4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xdbc>
    5c1a: ed9d 0a00    	vldr	s0, [sp]
    5c1e: 2300         	movs	r3, #0x0
    5c20: eeb4 0a41    	vcmp.f32	s0, s2
    5c24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c28: eeb0 0ae9    	vabs.f32	s0, s19
    5c2c: f10b 0b01    	add.w	r11, r11, #0x1
    5c30: bf98         	it	ls
    5c32: 2301         	movls	r3, #0x1
    5c34: edc1 7a02    	vstr	s15, [r1, #8]
    5c38: 401a         	ands	r2, r3
    5c3a: 2300         	movs	r3, #0x0
    5c3c: eeb4 0a41    	vcmp.f32	s0, s2
    5c40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c44: bf98         	it	ls
    5c46: 2301         	movls	r3, #0x1
    5c48: eddd 8a01    	vldr	s17, [sp, #4]
    5c4c: edc1 1a03    	vstr	s3, [r1, #12]
    5c50: ea02 0403    	and.w	r4, r2, r3
    5c54: 68b9         	ldr	r1, [r7, #0x8]
    5c56: edc0 6a00    	vstr	s13, [r0]
    5c5a: f880 b004    	strb.w	r11, [r0, #0x4]
    5c5e: edc1 8a01    	vstr	s17, [r1, #4]
    5c62: 7144         	strb	r4, [r0, #0x5]
    5c64: b00e         	add	sp, #0x38
    5c66: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    5c6a: b001         	add	sp, #0x4
    5c6c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    5c70: bdf0         	pop	{r4, r5, r6, r7, pc}
    5c72: bf00         	nop
    5c74: bf00         	nop
    5c76: bf00         	nop
    5c78: edc0 6a00    	vstr	s13, [r0]
    5c7c: 2100         	movs	r1, #0x0
    5c7e: f880 b004    	strb.w	r11, [r0, #0x4]
    5c82: 7141         	strb	r1, [r0, #0x5]
    5c84: e7ee         	b	0x5c64 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd3c> @ imm = #-0x24
    5c86: bf00         	nop
    5c88: 2400         	movs	r4, #0x0
    5c8a: e7e3         	b	0x5c54 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>+0xd2c> @ imm = #-0x3a
    5c8c: bf00         	nop
    5c8e: bf00         	nop
    5c90: f64d 20a3    	movw	r0, #0xdaa3
    5c94: f64d 7248    	movw	r2, #0xdf48
    5c98: f2c0 0000    	movt	r0, #0x0
    5c9c: f2c0 0200    	movt	r2, #0x0
    5ca0: a90a         	add	r1, sp, #0x28
    5ca2: f006 f903    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0x6206
    5ca6: bf00         	nop
    5ca8: 00 00 80 7f  	.word	0x7f800000
    5cac: 50 69 15 b9  	.word	0xb9156950
    5cb0: f5 4a 39 3d  	.word	0x3d394af5
    5cb4: 3b aa b8 3f  	.word	0x3fb8aa3b
    5cb8: 18 72 31 bf  	.word	0xbf317218
    5cbc: ab aa 2a 3e  	.word	0x3e2aaaab
    5cc0: f5 4a 39 bd  	.word	0xbd394af5
    5cc4: 00 00 a0 c2  	.word	0xc2a00000
    5cc8: 18 72 31 3f  	.word	0x3f317218
    5ccc: 77 cc 2b 31  	.word	0x312bcc77
    5cd0: 0a d7 23 3c  	.word	0x3c23d70a
    5cd4: 79 61 2e c3  	.word	0xc32e6179
    5cd8: 00 00 00 80  	.word	0x80000000
    5cdc: c5 9f 13 3f  	.word	0x3f139fc5
    5ce0: b7 63 f7 38  	.word	0x38f763b7
    5ce4: ac c5 a7 37  	.word	0x37a7c5ac
    5ce8: 17 b7 d1 38  	.word	0x38d1b717
    5cec: d4 d4 d4 d4  	.word	0xd4d4d4d4

00005cf0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>>:
    5cf0: b5f0         	push	{r4, r5, r6, r7, lr}
    5cf2: af03         	add	r7, sp, #0xc
    5cf4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    5cf8: b081         	sub	sp, #0x4
    5cfa: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    5cfe: b0a8         	sub	sp, #0xa0
    5d00: ed93 9a0a    	vldr	s18, [r3, #40]
    5d04: edd3 ca0b    	vldr	s25, [r3, #44]
    5d08: eeb4 9a6c    	vcmp.f32	s18, s25
    5d0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d10: f201 8146    	bhi.w	0x6fa0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12b0> @ imm = #0x128c
    5d14: ed91 2a04    	vldr	s4, [r1, #16]
    5d18: eddf 4abb    	vldr	s9, [pc, #748]          @ 0x6008 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x318>
    5d1c: eeb7 5ac2    	vcvt.f64.f32	d5, s4
    5d20: ed93 7a09    	vldr	s14, [r3, #36]
    5d24: ed9f 1bb4    	vldr	d1, [pc, #720]          @ 0x5ff8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x308>
    5d28: ed8d 7a0f    	vstr	s14, [sp, #60]
    5d2c: eddf 7ab7    	vldr	s15, [pc, #732]         @ 0x600c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x31c>
    5d30: ed92 0b14    	vldr	d0, [r2, #80]
    5d34: ed9f 8ab6    	vldr	s16, [pc, #728]         @ 0x6010 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x320>
    5d38: ed8d 2a16    	vstr	s4, [sp, #88]
    5d3c: ed8d 0b10    	vstr	d0, [sp, #64]
    5d40: ee05 0b01    	vmla.f64	d0, d5, d1
    5d44: ed92 1b08    	vldr	d1, [r2, #32]
    5d48: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    5d4c: eef7 1bc1    	vcvt.f32.f64	s3, d1
    5d50: ee00 7a24    	vmla.f32	s14, s0, s9
    5d54: ed9f 1ade    	vldr	s2, [pc, #888]          @ 0x60d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3e0>
    5d58: edcd 1a0e    	vstr	s3, [sp, #56]
    5d5c: ee42 1a01    	vmla.f32	s3, s4, s2
    5d60: ed91 0a05    	vldr	s0, [r1, #20]
    5d64: ed8d 0a17    	vstr	s0, [sp, #92]
    5d68: ee40 1a27    	vmla.f32	s3, s0, s15
    5d6c: eeb4 9a47    	vcmp.f32	s18, s14
    5d70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d74: fe39 1a07    	vselgt.f32	s2, s18, s14
    5d78: eeb0 0ae1    	vabs.f32	s0, s3
    5d7c: eeb4 1a6c    	vcmp.f32	s2, s25
    5d80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d84: eeb4 0a48    	vcmp.f32	s0, s16
    5d88: fe7c ba81    	vselgt.f32	s23, s25, s2
    5d8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d90: da16         	bge	0x5dc0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xd0> @ imm = #0x2c
    5d92: ed9f 1ad0    	vldr	s2, [pc, #832]          @ 0x60d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3e4>
    5d96: eeb4 0a41    	vcmp.f32	s0, s2
    5d9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d9e: d91b         	bls	0x5dd8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe8> @ imm = #0x36
    5da0: ed9f 1acd    	vldr	s2, [pc, #820]          @ 0x60d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3e8>
    5da4: eeb4 0a41    	vcmp.f32	s0, s2
    5da8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5dac: d918         	bls	0x5de0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xf0> @ imm = #0x30
    5dae: ed9f 1acb    	vldr	s2, [pc, #812]          @ 0x60dc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3ec>
    5db2: ee30 1a01    	vadd.f32	s2, s0, s2
    5db6: ed9f 2aca    	vldr	s4, [pc, #808]          @ 0x60e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f0>
    5dba: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    5dbe: e017         	b	0x5df0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x100> @ imm = #0x2e
    5dc0: ed9f cac8    	vldr	s24, [pc, #800]         @ 0x60e4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f4>
    5dc4: eef0 da4c    	vmov.f32	s27, s24
    5dc8: eeb0 4a4c    	vmov.f32	s8, s24
    5dcc: eef0 0a4c    	vmov.f32	s1, s24
    5dd0: eeb0 0a4c    	vmov.f32	s0, s24
    5dd4: e083         	b	0x5ede <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1ee> @ imm = #0x106
    5dd6: bf00         	nop
    5dd8: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    5ddc: e00a         	b	0x5df4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x104> @ imm = #0x14
    5dde: bf00         	nop
    5de0: ed9f 1adb    	vldr	s2, [pc, #876]          @ 0x6150 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x460>
    5de4: ee30 1a01    	vadd.f32	s2, s0, s2
    5de8: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    5dec: ed9f 2ad9    	vldr	s4, [pc, #868]          @ 0x6154 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x464>
    5df0: ee01 0a02    	vmla.f32	s0, s2, s4
    5df4: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    5df8: eddf daba    	vldr	s27, [pc, #744]         @ 0x60e4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f4>
    5dfc: ee31 0a40    	vsub.f32	s0, s2, s0
    5e00: fe80 ca2d    	vmaxnm.f32	s24, s0, s27
    5e04: eeb5 ca40    	vcmp.f32	s24, #0
    5e08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e0c: d93c         	bls	0x5e88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x198> @ imm = #0x78
    5e0e: eeb0 0aeb    	vabs.f32	s0, s23
    5e12: eeb4 0a4c    	vcmp.f32	s0, s24
    5e16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e1a: dd3d         	ble	0x5e98 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1a8> @ imm = #0x7a
    5e1c: eecc da00    	vdiv.f32	s27, s24, s0
    5e20: ee2d 0aad    	vmul.f32	s0, s27, s27
    5e24: ee20 0a00    	vmul.f32	s0, s0, s0
    5e28: ee20 0a00    	vmul.f32	s0, s0, s0
    5e2c: ee60 0a00    	vmul.f32	s1, s0, s0
    5e30: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    5e34: ee30 3a80    	vadd.f32	s6, s1, s0
    5e38: eeb0 1a40    	vmov.f32	s2, s0
    5e3c: eeb4 3a40    	vcmp.f32	s6, s0
    5e40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e44: d009         	beq	0x5e5a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x16a> @ imm = #0x12
    5e46: eeb1 3ac3    	vsqrt.f32	s6, s6
    5e4a: eeb1 3ac3    	vsqrt.f32	s6, s6
    5e4e: eeb1 3ac3    	vsqrt.f32	s6, s6
    5e52: eeb1 3ac3    	vsqrt.f32	s6, s6
    5e56: eeb0 1a43    	vmov.f32	s2, s6
    5e5a: ee1b 6a90    	vmov	r6, s23
    5e5e: f04f 557e    	mov.w	r5, #0x3f800000
    5e62: ee80 4a01    	vdiv.f32	s8, s0, s2
    5e66: ed9f 1abc    	vldr	s2, [pc, #752]          @ 0x6158 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x468>
    5e6a: eef4 ba6b    	vcmp.f32	s23, s23
    5e6e: f365 061e    	bfi	r6, r5, #0, #31
    5e72: ee02 6a10    	vmov	s4, r6
    5e76: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e7a: ee22 0a0c    	vmul.f32	s0, s4, s24
    5e7e: ee20 0a04    	vmul.f32	s0, s0, s8
    5e82: fe11 0a00    	vselvs.f32	s0, s2, s0
    5e86: e02a         	b	0x5ede <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1ee> @ imm = #0x54
    5e88: eeb0 4a6d    	vmov.f32	s8, s27
    5e8c: eef0 0a6d    	vmov.f32	s1, s27
    5e90: eeb0 0a6d    	vmov.f32	s0, s27
    5e94: e023         	b	0x5ede <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1ee> @ imm = #0x46
    5e96: bf00         	nop
    5e98: eecb da8c    	vdiv.f32	s27, s23, s24
    5e9c: ee2d 0aad    	vmul.f32	s0, s27, s27
    5ea0: ee20 0a00    	vmul.f32	s0, s0, s0
    5ea4: ee20 0a00    	vmul.f32	s0, s0, s0
    5ea8: ee60 0a00    	vmul.f32	s1, s0, s0
    5eac: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    5eb0: ee30 1a80    	vadd.f32	s2, s1, s0
    5eb4: eeb0 2a40    	vmov.f32	s4, s0
    5eb8: eeb4 1a40    	vcmp.f32	s2, s0
    5ebc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ec0: d009         	beq	0x5ed6 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1e6> @ imm = #0x12
    5ec2: eeb1 1ac1    	vsqrt.f32	s2, s2
    5ec6: eeb1 1ac1    	vsqrt.f32	s2, s2
    5eca: eeb1 1ac1    	vsqrt.f32	s2, s2
    5ece: eeb1 1ac1    	vsqrt.f32	s2, s2
    5ed2: eeb0 2a41    	vmov.f32	s4, s2
    5ed6: ee80 4a02    	vdiv.f32	s8, s0, s4
    5eda: ee2b 0a84    	vmul.f32	s0, s23, s8
    5ede: ed9d 1a16    	vldr	s2, [sp, #88]
    5ee2: ee71 8a40    	vsub.f32	s17, s2, s0
    5ee6: ee18 6a90    	vmov	r6, s17
    5eea: f026 4600    	bic	r6, r6, #0x80000000
    5eee: f1b6 4fff    	cmp.w	r6, #0x7f800000
    5ef2: db05         	blt	0x5f00 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x210> @ imm = #0xa
    5ef4: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x6240 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x550>
    5ef8: e00c         	b	0x5f14 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x224> @ imm = #0x18
    5efa: bf00         	nop
    5efc: bf00         	nop
    5efe: bf00         	nop
    5f00: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    5f04: ed9f 1a77    	vldr	s2, [pc, #476]          @ 0x60e4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f4>
    5f08: ee88 0a80    	vdiv.f32	s0, s17, s0
    5f0c: eeb0 0ac0    	vabs.f32	s0, s0
    5f10: fe80 0a01    	vmaxnm.f32	s0, s0, s2
    5f14: ed93 aa0e    	vldr	s20, [r3, #56]
    5f18: edd3 ea0f    	vldr	s29, [r3, #60]
    5f1c: eeb4 aa6e    	vcmp.f32	s20, s29
    5f20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5f24: f201 803c    	bhi.w	0x6fa0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12b0> @ imm = #0x1078
    5f28: ed9f 3bc7    	vldr	d3, [pc, #796]          @ 0x6248 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x558>
    5f2c: ed92 6b16    	vldr	d6, [r2, #88]
    5f30: ed8d 6b0c    	vstr	d6, [sp, #48]
    5f34: ee05 6b03    	vmla.f64	d6, d5, d3
    5f38: ed9d 3a17    	vldr	s6, [sp, #92]
    5f3c: eeb7 5ac3    	vcvt.f64.f32	d5, s6
    5f40: ed9f fbc3    	vldr	d15, [pc, #780]         @ 0x6250 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x560>
    5f44: ee05 6b0f    	vmla.f64	d6, d5, d15
    5f48: ed93 fa0d    	vldr	s30, [r3, #52]
    5f4c: ed8d fa0a    	vstr	s30, [sp, #40]
    5f50: ed92 2b0a    	vldr	d2, [r2, #40]
    5f54: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    5f58: ed8d 2a0b    	vstr	s4, [sp, #44]
    5f5c: eeb7 1bc6    	vcvt.f32.f64	s2, d6
    5f60: ee01 fa24    	vmla.f32	s30, s2, s9
    5f64: eeb0 1a42    	vmov.f32	s2, s4
    5f68: ed9d 2a16    	vldr	s4, [sp, #88]
    5f6c: ee02 1a27    	vmla.f32	s2, s4, s15
    5f70: ed9f 2a7a    	vldr	s4, [pc, #488]          @ 0x615c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x46c>
    5f74: ee03 1a02    	vmla.f32	s2, s6, s4
    5f78: ed91 2a06    	vldr	s4, [r1, #24]
    5f7c: ed9f 3a78    	vldr	s6, [pc, #480]          @ 0x6160 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x470>
    5f80: eeb4 aa4f    	vcmp.f32	s20, s30
    5f84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5f88: ee22 da03    	vmul.f32	s26, s4, s6
    5f8c: ed8d 2a18    	vstr	s4, [sp, #96]
    5f90: fe3a 2a0f    	vselgt.f32	s4, s20, s30
    5f94: ee7d 4a01    	vadd.f32	s9, s26, s2
    5f98: eeb4 2a6e    	vcmp.f32	s4, s29
    5f9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fa0: eeb0 1ae4    	vabs.f32	s2, s9
    5fa4: fe7e fa82    	vselgt.f32	s31, s29, s4
    5fa8: eeb4 1a48    	vcmp.f32	s2, s16
    5fac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fb0: da16         	bge	0x5fe0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x2f0> @ imm = #0x2c
    5fb2: ed9f 2a48    	vldr	s4, [pc, #288]          @ 0x60d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3e4>
    5fb6: eeb4 1a42    	vcmp.f32	s2, s4
    5fba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fbe: d91f         	bls	0x6000 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x310> @ imm = #0x3e
    5fc0: ed9f 2a45    	vldr	s4, [pc, #276]          @ 0x60d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3e8>
    5fc4: eeb4 1a42    	vcmp.f32	s2, s4
    5fc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fcc: d924         	bls	0x6018 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x328> @ imm = #0x48
    5fce: ed9f 2a43    	vldr	s4, [pc, #268]          @ 0x60dc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3ec>
    5fd2: ee31 2a02    	vadd.f32	s4, s2, s4
    5fd6: ed9f 5a42    	vldr	s10, [pc, #264]         @ 0x60e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f0>
    5fda: eeb0 1a08    	vmov.f32	s2, #3.000000e+00
    5fde: e023         	b	0x6028 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x338> @ imm = #0x46
    5fe0: ed9f 6a40    	vldr	s12, [pc, #256]         @ 0x60e4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f4>
    5fe4: eeb0 1a46    	vmov.f32	s2, s12
    5fe8: eeb0 5a46    	vmov.f32	s10, s12
    5fec: eef0 9a46    	vmov.f32	s19, s12
    5ff0: eef0 5a46    	vmov.f32	s11, s12
    5ff4: e09b         	b	0x612e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x43e> @ imm = #0x136
    5ff6: bf00         	nop
    5ff8: 1c 38 88 77  	.word	0x7788381c
    5ffc: bf 13 e1 bf  	.word	0xbfe113bf
    6000: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    6004: e012         	b	0x602c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x33c> @ imm = #0x24
    6006: bf00         	nop
    6008: 79 61 2e 43  	.word	0x432e6179
    600c: d6 f8 e4 36  	.word	0x36e4f8d6
    6010: 0a d7 23 3d  	.word	0x3d23d70a
    6014: 00 bf 00 bf  	.word	0xbf00bf00
    6018: ed9f 2a4d    	vldr	s4, [pc, #308]          @ 0x6150 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x460>
    601c: ee31 2a02    	vadd.f32	s4, s2, s4
    6020: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    6024: ed9f 5a4b    	vldr	s10, [pc, #300]         @ 0x6154 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x464>
    6028: ee02 1a05    	vmla.f32	s2, s4, s10
    602c: eeb2 2a0e    	vmov.f32	s4, #1.500000e+01
    6030: ee32 2a41    	vsub.f32	s4, s4, s2
    6034: ed9f 1a2b    	vldr	s2, [pc, #172]          @ 0x60e4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f4>
    6038: fe82 6a01    	vmaxnm.f32	s12, s4, s2
    603c: eeb5 6a40    	vcmp.f32	s12, #0
    6040: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6044: d93c         	bls	0x60c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3d0> @ imm = #0x78
    6046: eeb0 1aef    	vabs.f32	s2, s31
    604a: eeb4 1a46    	vcmp.f32	s2, s12
    604e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6052: dd49         	ble	0x60e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f8> @ imm = #0x92
    6054: eec6 5a01    	vdiv.f32	s11, s12, s2
    6058: ee25 1aa5    	vmul.f32	s2, s11, s11
    605c: ee21 1a01    	vmul.f32	s2, s2, s2
    6060: ee21 1a01    	vmul.f32	s2, s2, s2
    6064: ee21 5a01    	vmul.f32	s10, s2, s2
    6068: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    606c: ee75 6a01    	vadd.f32	s13, s10, s2
    6070: eef0 2a41    	vmov.f32	s5, s2
    6074: eef4 6a41    	vcmp.f32	s13, s2
    6078: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    607c: d009         	beq	0x6092 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3a2> @ imm = #0x12
    607e: eef1 6ae6    	vsqrt.f32	s13, s13
    6082: eef1 6ae6    	vsqrt.f32	s13, s13
    6086: eef1 6ae6    	vsqrt.f32	s13, s13
    608a: eef1 6ae6    	vsqrt.f32	s13, s13
    608e: eef0 2a66    	vmov.f32	s5, s13
    6092: ee1f 3a90    	vmov	r3, s31
    6096: f04f 567e    	mov.w	r6, #0x3f800000
    609a: eec1 9a22    	vdiv.f32	s19, s2, s5
    609e: eef4 fa6f    	vcmp.f32	s31, s31
    60a2: f366 031e    	bfi	r3, r6, #0, #31
    60a6: ee02 3a10    	vmov	s4, r3
    60aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    60ae: ee22 1a06    	vmul.f32	s2, s4, s12
    60b2: ed9f 2a29    	vldr	s4, [pc, #164]          @ 0x6158 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x468>
    60b6: ee21 1a29    	vmul.f32	s2, s2, s19
    60ba: fe12 1a01    	vselvs.f32	s2, s4, s2
    60be: e036         	b	0x612e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x43e> @ imm = #0x6c
    60c0: eeb0 5a41    	vmov.f32	s10, s2
    60c4: eef0 9a41    	vmov.f32	s19, s2
    60c8: eef0 5a41    	vmov.f32	s11, s2
    60cc: e02f         	b	0x612e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x43e> @ imm = #0x5e
    60ce: bf00         	nop
    60d0: 83 c0 96 b8  	.word	0xb896c083
    60d4: 7c f2 b0 3a  	.word	0x3ab0f27c
    60d8: a6 9b c4 3b  	.word	0x3bc49ba6
    60dc: a6 9b c4 bb  	.word	0xbbc49ba6
    60e0: 79 78 b0 43  	.word	0x43b07879
    60e4: 00 00 00 00  	.word	0x00000000
    60e8: eecf 5a86    	vdiv.f32	s11, s31, s12
    60ec: ee25 1aa5    	vmul.f32	s2, s11, s11
    60f0: ee21 1a01    	vmul.f32	s2, s2, s2
    60f4: ee21 1a01    	vmul.f32	s2, s2, s2
    60f8: ee21 5a01    	vmul.f32	s10, s2, s2
    60fc: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    6100: ee75 2a01    	vadd.f32	s5, s10, s2
    6104: eeb0 2a41    	vmov.f32	s4, s2
    6108: eef4 2a41    	vcmp.f32	s5, s2
    610c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6110: d009         	beq	0x6126 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x436> @ imm = #0x12
    6112: eef1 2ae2    	vsqrt.f32	s5, s5
    6116: eef1 2ae2    	vsqrt.f32	s5, s5
    611a: eef1 2ae2    	vsqrt.f32	s5, s5
    611e: eef1 2ae2    	vsqrt.f32	s5, s5
    6122: eeb0 2a62    	vmov.f32	s4, s5
    6126: eec1 9a02    	vdiv.f32	s19, s2, s4
    612a: ee2f 1aa9    	vmul.f32	s2, s31, s19
    612e: ed9d 2a17    	vldr	s4, [sp, #92]
    6132: ed8d aa15    	vstr	s20, [sp, #84]
    6136: ee32 ba41    	vsub.f32	s22, s4, s2
    613a: ee1b 3a10    	vmov	r3, s22
    613e: f023 4300    	bic	r3, r3, #0x80000000
    6142: f1b3 4fff    	cmp.w	r3, #0x7f800000
    6146: db0f         	blt	0x6168 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x478> @ imm = #0x1e
    6148: eddf 6a3d    	vldr	s13, [pc, #244]         @ 0x6240 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x550>
    614c: e024         	b	0x6198 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x4a8> @ imm = #0x48
    614e: bf00         	nop
    6150: 7c f2 b0 ba  	.word	0xbab0f27c
    6154: 53 4a a1 43  	.word	0x43a14a53
    6158: 00 00 c0 7f  	.word	0x7fc00000
    615c: af e6 27 b9  	.word	0xb927e6af
    6160: 79 2e 02 39  	.word	0x39022e79
    6164: 00 bf 00 bf  	.word	0xbf00bf00
    6168: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    616c: eeb4 0a40    	vcmp.f32	s0, s0
    6170: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6174: ee8b 1a01    	vdiv.f32	s2, s22, s2
    6178: eeb0 1ac1    	vabs.f32	s2, s2
    617c: fe11 0a00    	vselvs.f32	s0, s2, s0
    6180: eeb4 1a41    	vcmp.f32	s2, s2
    6184: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6188: fe10 1a01    	vselvs.f32	s2, s0, s2
    618c: eeb4 0a41    	vcmp.f32	s0, s2
    6190: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6194: fe70 6a01    	vselgt.f32	s13, s0, s2
    6198: ed92 ab1a    	vldr	d10, [r2, #104]
    619c: ed9d 1a17    	vldr	s2, [sp, #92]
    61a0: ed92 3b1c    	vldr	d3, [r2, #112]
    61a4: eef7 7bca    	vcvt.f32.f64	s15, d10
    61a8: ed9f aad7    	vldr	s20, [pc, #860]         @ 0x6508 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x818>
    61ac: edcd 7a09    	vstr	s15, [sp, #36]
    61b0: ee21 0a0a    	vmul.f32	s0, s2, s20
    61b4: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    61b8: eddf 3ad4    	vldr	s7, [pc, #848]          @ 0x650c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x81c>
    61bc: ed8d 3a08    	vstr	s6, [sp, #32]
    61c0: ee70 aa27    	vadd.f32	s21, s0, s15
    61c4: eddd 7a18    	vldr	s15, [sp, #96]
    61c8: ee47 aaa3    	vmla.f32	s21, s15, s7
    61cc: eef6 3a00    	vmov.f32	s7, #5.000000e-01
    61d0: ee30 0a03    	vadd.f32	s0, s0, s6
    61d4: ed1f 3a1e    	vldr	s6, [pc, #-120]         @ 0x6160 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x470>
    61d8: ee07 0aca    	vmls.f32	s0, s15, s20
    61dc: ed92 2b0c    	vldr	d2, [r2, #48]
    61e0: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    61e4: ed8d 2a07    	vstr	s4, [sp, #28]
    61e8: ee01 2a03    	vmla.f32	s4, s2, s6
    61ec: eeb8 3a00    	vmov.f32	s6, #-2.000000e+00
    61f0: fe8a 1ac0    	vminnm.f32	s2, s21, s0
    61f4: ee33 1ac1    	vsub.f32	s2, s7, s2
    61f8: ee72 2a4d    	vsub.f32	s5, s4, s26
    61fc: eeb4 1a43    	vcmp.f32	s2, s6
    6200: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6204: d928         	bls	0x6258 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x568> @ imm = #0x50
    6206: eeb4 1a41    	vcmp.f32	s2, s2
    620a: ed1f 2a4a    	vldr	s4, [pc, #-296]         @ 0x60e4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f4>
    620e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6212: fe12 1a01    	vselvs.f32	s2, s4, s2
    6216: eeb5 1a40    	vcmp.f32	s2, #0
    621a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    621e: bfb8         	it	lt
    6220: eeb0 2a41    	vmovlt.f32	s4, s2
    6224: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    6228: ee02 1a23    	vmla.f32	s2, s4, s7
    622c: ed9f 2ab8    	vldr	s4, [pc, #736]          @ 0x6510 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x820>
    6230: ee21 1a02    	vmul.f32	s2, s2, s4
    6234: ed9f 2ab7    	vldr	s4, [pc, #732]          @ 0x6514 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x824>
    6238: fe81 ea02    	vmaxnm.f32	s28, s2, s4
    623c: e00e         	b	0x625c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x56c> @ imm = #0x1c
    623e: bf00         	nop
    6240: 00 00 80 7f  	.word	0x7f800000
    6244: 00 bf 00 bf  	.word	0xbf00bf00
    6248: 15 be b6 e5  	.word	0xe5b6be15
    624c: 6d 7e c0 bf  	.word	0xbfc07e6d
    6250: 67 42 87 92  	.word	0x92874267
    6254: ba 86 d4 bf  	.word	0xbfd486ba
    6258: ed9f eaae    	vldr	s28, [pc, #696]         @ 0x6514 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x824>
    625c: ed9d 1a18    	vldr	s2, [sp, #96]
    6260: ed1f aa09    	vldr	s20, [pc, #-36]         @ 0x6240 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x550>
    6264: ee51 2a0e    	vnmls.f32	s5, s2, s28
    6268: edcd ea14    	vstr	s29, [sp, #80]
    626c: 9001         	str	r0, [sp, #0x4]
    626e: ee12 2a90    	vmov	r2, s5
    6272: f022 4200    	bic	r2, r2, #0x80000000
    6276: f1b2 4fff    	cmp.w	r2, #0x7f800000
    627a: da17         	bge	0x62ac <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x5bc> @ imm = #0x2e
    627c: ed9f 1aa6    	vldr	s2, [pc, #664]          @ 0x6518 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x828>
    6280: eef4 6a66    	vcmp.f32	s13, s13
    6284: ee82 1a81    	vdiv.f32	s2, s5, s2
    6288: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    628c: eeb0 1ac1    	vabs.f32	s2, s2
    6290: fe11 2a26    	vselvs.f32	s4, s2, s13
    6294: eeb4 1a41    	vcmp.f32	s2, s2
    6298: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    629c: fe12 1a01    	vselvs.f32	s2, s4, s2
    62a0: eeb4 2a41    	vcmp.f32	s4, s2
    62a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    62a8: fe32 aa01    	vselgt.f32	s20, s4, s2
    62ac: a81c         	add	r0, sp, #0x70
    62ae: f04f 0b00    	mov.w	r11, #0x0
    62b2: 300c         	adds	r0, #0xc
    62b4: 9005         	str	r0, [sp, #0x14]
    62b6: f64d 3068    	movw	r0, #0xdb68
    62ba: f04f 0900    	mov.w	r9, #0x0
    62be: ed1f da77    	vldr	s26, [pc, #-476]        @ 0x60e4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f4>
    62c2: f04f 537e    	mov.w	r3, #0x3f800000
    62c6: f2c0 0000    	movt	r0, #0x0
    62ca: f10d 0c64    	add.w	r12, sp, #0x64
    62ce: 465d         	mov	r5, r11
    62d0: edcd ca13    	vstr	s25, [sp, #76]
    62d4: ed8d 9a12    	vstr	s18, [sp, #72]
    62d8: eeb1 1a4b    	vneg.f32	s2, s22
    62dc: f1bb 0f10    	cmp.w	r11, #0x10
    62e0: ed8d 1a1a    	vstr	s2, [sp, #104]
    62e4: eeb1 1a62    	vneg.f32	s2, s5
    62e8: bf18         	it	ne
    62ea: 3501         	addne	r5, #0x1
    62ec: eeb4 7a49    	vcmp.f32	s14, s18
    62f0: 2400         	movs	r4, #0x0
    62f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    62f6: eeb4 7a6c    	vcmp.f32	s14, s25
    62fa: eeb0 7a4d    	vmov.f32	s14, s26
    62fe: eeb1 3a68    	vneg.f32	s6, s17
    6302: eef0 2a4d    	vmov.f32	s5, s26
    6306: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    630a: ed8d 1a1b    	vstr	s2, [sp, #108]
    630e: bfc8         	it	gt
    6310: 2401         	movgt	r4, #0x1
    6312: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6316: f04f 0600    	mov.w	r6, #0x0
    631a: eeb5 ca40    	vcmp.f32	s24, #0
    631e: bf48         	it	mi
    6320: 2601         	movmi	r6, #0x1
    6322: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6326: eddd 6a15    	vldr	s13, [sp, #84]
    632a: eddd 7a14    	vldr	s15, [sp, #80]
    632e: ed8d 3a19    	vstr	s6, [sp, #100]
    6332: d927         	bls	0x6384 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x694> @ imm = #0x4e
    6334: ee30 1a8b    	vadd.f32	s2, s1, s22
    6338: ee84 7a01    	vdiv.f32	s14, s8, s2
    633c: eeb0 1aeb    	vabs.f32	s2, s23
    6340: eeb4 1a4c    	vcmp.f32	s2, s24
    6344: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6348: dd16         	ble	0x6378 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x688> @ imm = #0x2c
    634a: ee1b 8a90    	vmov	r8, s23
    634e: ee20 2aad    	vmul.f32	s4, s1, s27
    6352: eef4 ba6b    	vcmp.f32	s23, s23
    6356: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    635a: f363 081e    	bfi	r8, r3, #0, #31
    635e: ee01 8a10    	vmov	s2, r8
    6362: ee21 1a07    	vmul.f32	s2, s2, s14
    6366: ee22 7a07    	vmul.f32	s14, s4, s14
    636a: ed1f 2a85    	vldr	s4, [pc, #-532]         @ 0x6158 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x468>
    636e: fe52 2a01    	vselvs.f32	s5, s4, s2
    6372: e007         	b	0x6384 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x694> @ imm = #0xe
    6374: bf00         	nop
    6376: bf00         	nop
    6378: ee2b 1aa0    	vmul.f32	s2, s23, s1
    637c: ee81 1a0c    	vdiv.f32	s2, s2, s24
    6380: ee61 2a07    	vmul.f32	s5, s2, s14
    6384: eef5 1a40    	vcmp.f32	s3, #0
    6388: eeb0 4ae1    	vabs.f32	s8, s3
    638c: eeb0 1a4d    	vmov.f32	s2, s26
    6390: eeff 1a00    	vmov.f32	s3, #-1.000000e+00
    6394: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6398: bf48         	it	mi
    639a: eeb0 1a61    	vmovmi.f32	s2, s3
    639e: eef0 0a4d    	vmov.f32	s1, s26
    63a2: eeb4 4a48    	vcmp.f32	s8, s16
    63a6: fe3b 1a01    	vselgt.f32	s2, s22, s2
    63aa: ed9f ca5c    	vldr	s24, [pc, #368]         @ 0x651c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x82c>
    63ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63b2: eddf 8a5b    	vldr	s17, [pc, #364]         @ 0x6520 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x830>
    63b6: eddf da5b    	vldr	s27, [pc, #364]         @ 0x6524 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x834>
    63ba: da1b         	bge	0x63f4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x704> @ imm = #0x36
    63bc: eef0 0a4d    	vmov.f32	s1, s26
    63c0: ed1f 2abc    	vldr	s4, [pc, #-752]         @ 0x60d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3e4>
    63c4: eeb4 4a42    	vcmp.f32	s8, s4
    63c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63cc: d910         	bls	0x63f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x700> @ imm = #0x20
    63ce: ed1f 2abe    	vldr	s4, [pc, #-760]         @ 0x60d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3e8>
    63d2: eeb4 4a42    	vcmp.f32	s8, s4
    63d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63da: d905         	bls	0x63e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x6f8> @ imm = #0xa
    63dc: ed1f 2ac0    	vldr	s4, [pc, #-768]         @ 0x60e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x3f0>
    63e0: e004         	b	0x63ec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x6fc> @ imm = #0x8
    63e2: bf00         	nop
    63e4: bf00         	nop
    63e6: bf00         	nop
    63e8: ed1f 2aa6    	vldr	s4, [pc, #-664]         @ 0x6154 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x464>
    63ec: ee61 0a02    	vmul.f32	s1, s2, s4
    63f0: eef1 0a60    	vneg.f32	s1, s1
    63f4: 4034         	ands	r4, r6
    63f6: ee22 2aa0    	vmul.f32	s4, s5, s1
    63fa: fe08 1a8c    	vseleq.f32	s2, s17, s24
    63fe: eddf 0a4a    	vldr	s1, [pc, #296]          @ 0x6528 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x838>
    6402: 2400         	movs	r4, #0x0
    6404: eeb4 fa66    	vcmp.f32	s30, s13
    6408: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    640c: ee27 1a01    	vmul.f32	s2, s14, s2
    6410: f04f 0600    	mov.w	r6, #0x0
    6414: eeb4 fa67    	vcmp.f32	s30, s15
    6418: ee21 4a0d    	vmul.f32	s8, s2, s26
    641c: eeb0 7a44    	vmov.f32	s14, s8
    6420: ee02 4a2d    	vmla.f32	s8, s4, s27
    6424: ee02 7a28    	vmla.f32	s14, s4, s17
    6428: ee22 2a20    	vmul.f32	s4, s4, s1
    642c: eddf 0a3f    	vldr	s1, [pc, #252]          @ 0x652c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x83c>
    6430: ee01 2a20    	vmla.f32	s4, s2, s1
    6434: eef0 0a4d    	vmov.f32	s1, s26
    6438: ed8d 4a1d    	vstr	s8, [sp, #116]
    643c: ed8d 7a1e    	vstr	s14, [sp, #120]
    6440: eeb0 7a4d    	vmov.f32	s14, s26
    6444: bfc8         	it	gt
    6446: 2401         	movgt	r4, #0x1
    6448: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    644c: eeb5 6a40    	vcmp.f32	s12, #0
    6450: ee32 4a0b    	vadd.f32	s8, s4, s22
    6454: bf48         	it	mi
    6456: 2601         	movmi	r6, #0x1
    6458: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    645c: ed8d 4a1c    	vstr	s8, [sp, #112]
    6460: d928         	bls	0x64b4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x7c4> @ imm = #0x50
    6462: ee35 1a0b    	vadd.f32	s2, s10, s22
    6466: ee89 7a81    	vdiv.f32	s14, s19, s2
    646a: eeb0 1aef    	vabs.f32	s2, s31
    646e: eeb4 1a46    	vcmp.f32	s2, s12
    6472: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6476: dd17         	ble	0x64a8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x7b8> @ imm = #0x2e
    6478: ee1f 2a90    	vmov	r2, s31
    647c: ee25 2a25    	vmul.f32	s4, s10, s11
    6480: eef4 fa6f    	vcmp.f32	s31, s31
    6484: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6488: f363 021e    	bfi	r2, r3, #0, #31
    648c: ee01 2a10    	vmov	s2, r2
    6490: ee21 1a07    	vmul.f32	s2, s2, s14
    6494: ee22 7a07    	vmul.f32	s14, s4, s14
    6498: ed1f 2ad1    	vldr	s4, [pc, #-836]         @ 0x6158 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x468>
    649c: fe52 0a01    	vselvs.f32	s1, s4, s2
    64a0: e008         	b	0x64b4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x7c4> @ imm = #0x10
    64a2: bf00         	nop
    64a4: bf00         	nop
    64a6: bf00         	nop
    64a8: ee2f 1a85    	vmul.f32	s2, s31, s10
    64ac: ee81 1a06    	vdiv.f32	s2, s2, s12
    64b0: ee61 0a07    	vmul.f32	s1, s2, s14
    64b4: eef5 4a40    	vcmp.f32	s9, #0
    64b8: eeb0 1a4d    	vmov.f32	s2, s26
    64bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64c0: bf48         	it	mi
    64c2: eeb0 1a61    	vmovmi.f32	s2, s3
    64c6: eeb0 6ae4    	vabs.f32	s12, s9
    64ca: eef0 9a48    	vmov.f32	s19, s16
    64ce: fe3b 5a01    	vselgt.f32	s10, s22, s2
    64d2: eeb0 1a4d    	vmov.f32	s2, s26
    64d6: eeb4 6a48    	vcmp.f32	s12, s16
    64da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64de: da2d         	bge	0x653c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x84c> @ imm = #0x5a
    64e0: ed9f 1ae7    	vldr	s2, [pc, #924]          @ 0x6880 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb90>
    64e4: eeb4 6a41    	vcmp.f32	s12, s2
    64e8: eeb0 1a4d    	vmov.f32	s2, s26
    64ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64f0: d922         	bls	0x6538 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x848> @ imm = #0x44
    64f2: ed9f 1ae4    	vldr	s2, [pc, #912]          @ 0x6884 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb94>
    64f6: eeb4 6a41    	vcmp.f32	s12, s2
    64fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64fe: d917         	bls	0x6530 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x840> @ imm = #0x2e
    6500: ed9f 1ae1    	vldr	s2, [pc, #900]          @ 0x6888 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb98>
    6504: e016         	b	0x6534 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x844> @ imm = #0x2c
    6506: bf00         	nop
    6508: 51 e6 7f 3f  	.word	0x3f7fe651
    650c: 99 76 cd 39  	.word	0x39cd7699
    6510: 2b 18 95 3b  	.word	0x3b95182b
    6514: 95 bf d6 33  	.word	0x33d6bf95
    6518: 0a d7 23 3c  	.word	0x3c23d70a
    651c: 79 61 2e c3  	.word	0xc32e6179
    6520: 00 00 00 80  	.word	0x80000000
    6524: d6 f8 e4 b6  	.word	0xb6e4f8d6
    6528: 83 c0 96 38  	.word	0x3896c083
    652c: fc 9d 08 bf  	.word	0xbf089dfc
    6530: ed9f 1ad6    	vldr	s2, [pc, #856]          @ 0x688c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb9c>
    6534: ee25 1a01    	vmul.f32	s2, s10, s2
    6538: eeb1 1a41    	vneg.f32	s2, s2
    653c: ea14 0206    	ands.w	r2, r4, r6
    6540: f04f 040d    	mov.w	r4, #0xd
    6544: 9500         	str	r5, [sp]
    6546: eef4 aa40    	vcmp.f32	s21, s0
    654a: fe08 2a8c    	vseleq.f32	s4, s17, s24
    654e: eddf 1ad0    	vldr	s3, [pc, #832]          @ 0x6890 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xba0>
    6552: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6556: bf88         	it	hi
    6558: 240e         	movhi	r4, #0xe
    655a: eef4 aa6a    	vcmp.f32	s21, s21
    655e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6562: eeb4 0a40    	vcmp.f32	s0, s0
    6566: fe10 5a2a    	vselvs.f32	s10, s0, s21
    656a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    656e: ee20 1a81    	vmul.f32	s2, s1, s2
    6572: fe15 0a00    	vselvs.f32	s0, s10, s0
    6576: ee27 2a02    	vmul.f32	s4, s14, s4
    657a: ed9f 7af2    	vldr	s14, [pc, #968]         @ 0x6944 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc54>
    657e: eeb4 0a45    	vcmp.f32	s0, s10
    6582: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6586: fe35 5a00    	vselgt.f32	s10, s10, s0
    658a: ed9f 0aef    	vldr	s0, [pc, #956]          @ 0x6948 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc58>
    658e: ee21 6a00    	vmul.f32	s12, s2, s0
    6592: ed9f 0aee    	vldr	s0, [pc, #952]          @ 0x694c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc5c>
    6596: ee02 6a00    	vmla.f32	s12, s4, s0
    659a: ee21 0a2d    	vmul.f32	s0, s2, s27
    659e: ee21 1a21    	vmul.f32	s2, s2, s3
    65a2: ee02 1a0d    	vmla.f32	s2, s4, s26
    65a6: ee02 0a07    	vmla.f32	s0, s4, s14
    65aa: ee33 5ac5    	vsub.f32	s10, s7, s10
    65ae: ee36 2a0b    	vadd.f32	s4, s12, s22
    65b2: ed8d 1a21    	vstr	s2, [sp, #132]
    65b6: eeb8 1a00    	vmov.f32	s2, #-2.000000e+00
    65ba: ed8d 2a20    	vstr	s4, [sp, #128]
    65be: ed8d 0a1f    	vstr	s0, [sp, #124]
    65c2: eeb4 5a41    	vcmp.f32	s10, s2
    65c6: eeb0 1a4d    	vmov.f32	s2, s26
    65ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65ce: dd19         	ble	0x6604 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x914> @ imm = #0x32
    65d0: eeb0 1a4d    	vmov.f32	s2, s26
    65d4: eeb5 5a40    	vcmp.f32	s10, #0
    65d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65dc: d512         	bpl	0x6604 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x914> @ imm = #0x24
    65de: eeb0 1a4b    	vmov.f32	s2, s22
    65e2: ee05 1a23    	vmla.f32	s2, s10, s7
    65e6: ed1f 2a36    	vldr	s4, [pc, #-216]         @ 0x6510 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x820>
    65ea: ee21 1a02    	vmul.f32	s2, s2, s4
    65ee: ed1f 2a37    	vldr	s4, [pc, #-220]         @ 0x6514 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x824>
    65f2: eeb4 1a42    	vcmp.f32	s2, s4
    65f6: eeb0 1a4d    	vmov.f32	s2, s26
    65fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65fe: bfc8         	it	gt
    6600: ed9f 1ad3    	vldrgt	s2, [pc, #844]          @ 0x6950 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc60>
    6604: 4686         	mov	lr, r0
    6606: eb00 1084    	add.w	r0, r0, r4, lsl #6
    660a: eeb0 6ac0    	vabs.f32	s12, s0
    660e: eddd 0a18    	vldr	s1, [sp, #96]
    6612: ed90 2b08    	vldr	d2, [r0, #32]
    6616: eeb0 7ac4    	vabs.f32	s14, s8
    661a: 2400         	movs	r4, #0x0
    661c: ee21 1a20    	vmul.f32	s2, s2, s1
    6620: f10d 0a70    	add.w	r10, sp, #0x70
    6624: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    6628: eeb4 6a47    	vcmp.f32	s12, s14
    662c: ed9f 7ac9    	vldr	s14, [pc, #804]         @ 0x6954 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc64>
    6630: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6634: ed90 6b0c    	vldr	d6, [r0, #48]
    6638: ee22 2a41    	vnmul.f32	s4, s4, s2
    663c: eddf 4ac6    	vldr	s9, [pc, #792]          @ 0x6958 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc68>
    6640: fe30 0a04    	vselgt.f32	s0, s0, s8
    6644: eeb7 4bc6    	vcvt.f32.f64	s8, d6
    6648: eeb0 6ac2    	vabs.f32	s12, s4
    664c: ed90 5b0a    	vldr	d5, [r0, #40]
    6650: eeb0 0ac0    	vabs.f32	s0, s0
    6654: eeb7 5bc5    	vcvt.f32.f64	s10, d5
    6658: ee01 7a44    	vmls.f32	s14, s2, s8
    665c: eeb0 4a61    	vmov.f32	s8, s3
    6660: bfc8         	it	gt
    6662: 2401         	movgt	r4, #0x1
    6664: eeb4 6a40    	vcmp.f32	s12, s0
    6668: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    666c: bfc8         	it	gt
    666e: 2402         	movgt	r4, #0x2
    6670: ee01 4a45    	vmls.f32	s8, s2, s10
    6674: ed8d 2a22    	vstr	s4, [sp, #136]
    6678: ee37 0a0e    	vadd.f32	s0, s14, s28
    667c: f8dd 8074    	ldr.w	r8, [sp, #0x74]
    6680: eb04 0044    	add.w	r0, r4, r4, lsl #1
    6684: ed8d 0a24    	vstr	s0, [sp, #144]
    6688: eb0a 0280    	add.w	r2, r10, r0, lsl #2
    668c: ed8d 4a23    	vstr	s8, [sp, #140]
    6690: f85a 3020    	ldr.w	r3, [r10, r0, lsl #2]
    6694: e9d2 5601    	ldrd	r5, r6, [r2, #4]
    6698: 951d         	str	r5, [sp, #0x74]
    669a: 9d1e         	ldr	r5, [sp, #0x78]
    669c: 961e         	str	r6, [sp, #0x78]
    669e: 9e1c         	ldr	r6, [sp, #0x70]
    66a0: 931c         	str	r3, [sp, #0x70]
    66a2: f85c 3024    	ldr.w	r3, [r12, r4, lsl #2]
    66a6: f84a 6020    	str.w	r6, [r10, r0, lsl #2]
    66aa: e9c2 8501    	strd	r8, r5, [r2, #4]
    66ae: eb0c 0284    	add.w	r2, r12, r4, lsl #2
    66b2: 9319         	str	r3, [sp, #0x64]
    66b4: ed9d 0a1c    	vldr	s0, [sp, #112]
    66b8: ee10 0a10    	vmov	r0, s0
    66bc: ed82 3a00    	vstr	s6, [r2]
    66c0: f020 4000    	bic	r0, r0, #0x80000000
    66c4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    66c8: f280 845e    	bge.w	0x6f88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1298> @ imm = #0x8bc
    66cc: eeb0 1ac0    	vabs.f32	s2, s0
    66d0: eeb4 1a64    	vcmp.f32	s2, s9
    66d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66d8: f100 8456    	bmi.w	0x6f88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1298> @ imm = #0x8ac
    66dc: ed9d 1a22    	vldr	s2, [sp, #136]
    66e0: ed9d 2a1f    	vldr	s4, [sp, #124]
    66e4: ee81 1a00    	vdiv.f32	s2, s2, s0
    66e8: ed9d 3a1d    	vldr	s6, [sp, #116]
    66ec: ee82 2a00    	vdiv.f32	s4, s4, s0
    66f0: ed9d 6a23    	vldr	s12, [sp, #140]
    66f4: ed9d 7a20    	vldr	s14, [sp, #128]
    66f8: ed9d 4a19    	vldr	s8, [sp, #100]
    66fc: ee01 6a43    	vmls.f32	s12, s2, s6
    6700: ed9d 5a1e    	vldr	s10, [sp, #120]
    6704: ee02 7a43    	vmls.f32	s14, s4, s6
    6708: eddd 0a21    	vldr	s1, [sp, #132]
    670c: ee42 0a45    	vmls.f32	s1, s4, s10
    6710: eddd 1a1a    	vldr	s3, [sp, #104]
    6714: ee42 1a44    	vmls.f32	s3, s4, s8
    6718: eddd 3a24    	vldr	s7, [sp, #144]
    671c: ee41 3a45    	vmls.f32	s7, s2, s10
    6720: 9c05         	ldr	r4, [sp, #0x14]
    6722: 4625         	mov	r5, r4
    6724: a81c         	add	r0, sp, #0x70
    6726: eeb0 2ac6    	vabs.f32	s4, s12
    672a: ed8d 7a20    	vstr	s14, [sp, #128]
    672e: eef0 2ac7    	vabs.f32	s5, s14
    6732: edcd 0a21    	vstr	s1, [sp, #132]
    6736: edcd 1a1a    	vstr	s3, [sp, #104]
    673a: ed8d 6a23    	vstr	s12, [sp, #140]
    673e: eeb4 2a62    	vcmp.f32	s4, s5
    6742: ed9d 2a1b    	vldr	s4, [sp, #108]
    6746: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    674a: bfc8         	it	gt
    674c: f100 0518    	addgt.w	r5, r0, #0x18
    6750: edcd 3a24    	vstr	s7, [sp, #144]
    6754: 6822         	ldr	r2, [r4]
    6756: e9d5 6300    	ldrd	r6, r3, [r5]
    675a: 68a8         	ldr	r0, [r5, #0x8]
    675c: 6026         	str	r6, [r4]
    675e: 6866         	ldr	r6, [r4, #0x4]
    6760: 6063         	str	r3, [r4, #0x4]
    6762: 68a3         	ldr	r3, [r4, #0x8]
    6764: 60a0         	str	r0, [r4, #0x8]
    6766: ee01 2a44    	vmls.f32	s4, s2, s8
    676a: f04f 0004    	mov.w	r0, #0x4
    676e: e9c5 6301    	strd	r6, r3, [r5, #4]
    6772: ed9d 6a20    	vldr	s12, [sp, #128]
    6776: ee16 3a10    	vmov	r3, s12
    677a: bfc8         	it	gt
    677c: 2008         	movgt	r0, #0x8
    677e: ed8d 2a1b    	vstr	s4, [sp, #108]
    6782: 602a         	str	r2, [r5]
    6784: f85c 2000    	ldr.w	r2, [r12, r0]
    6788: 4460         	add	r0, r12
    678a: f023 4300    	bic	r3, r3, #0x80000000
    678e: f1b3 4fff    	cmp.w	r3, #0x7f800000
    6792: 921a         	str	r2, [sp, #0x68]
    6794: edc0 1a00    	vstr	s3, [r0]
    6798: f280 83f6    	bge.w	0x6f88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1298> @ imm = #0x7ec
    679c: eeb0 1ac6    	vabs.f32	s2, s12
    67a0: eeb4 1a64    	vcmp.f32	s2, s9
    67a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67a8: f100 83ee    	bmi.w	0x6f88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1298> @ imm = #0x7dc
    67ac: ed9d 1a23    	vldr	s2, [sp, #140]
    67b0: eddd 0a24    	vldr	s1, [sp, #144]
    67b4: ee81 7a06    	vdiv.f32	s14, s2, s12
    67b8: ed9d 1a21    	vldr	s2, [sp, #132]
    67bc: ee47 0a41    	vmls.f32	s1, s14, s2
    67c0: edcd 0a24    	vstr	s1, [sp, #144]
    67c4: ee10 0a90    	vmov	r0, s1
    67c8: f020 4000    	bic	r0, r0, #0x80000000
    67cc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    67d0: f280 83da    	bge.w	0x6f88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1298> @ imm = #0x7b4
    67d4: eeb0 2ae0    	vabs.f32	s4, s1
    67d8: eeb4 2a64    	vcmp.f32	s4, s9
    67dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67e0: f100 83d2    	bmi.w	0x6f88 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1298> @ imm = #0x7a4
    67e4: ed9d 2a1a    	vldr	s4, [sp, #104]
    67e8: eddd 1a1b    	vldr	s3, [sp, #108]
    67ec: ee47 1a42    	vmls.f32	s3, s14, s4
    67f0: ee81 9aa0    	vdiv.f32	s18, s3, s1
    67f4: ed8d 9a1b    	vstr	s18, [sp, #108]
    67f8: ee01 2a49    	vmls.f32	s4, s2, s18
    67fc: ed9d 1a16    	vldr	s2, [sp, #88]
    6800: eeb0 1ac1    	vabs.f32	s2, s2
    6804: eeb4 1a41    	vcmp.f32	s2, s2
    6808: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    680c: eec2 ca06    	vdiv.f32	s25, s4, s12
    6810: ed9f 2abc    	vldr	s4, [pc, #752]          @ 0x6b04 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe14>
    6814: fe1b 1a01    	vselvs.f32	s2, s22, s2
    6818: edcd ca1a    	vstr	s25, [sp, #104]
    681c: ee03 4a6c    	vmls.f32	s8, s6, s25
    6820: ed9f 3ab9    	vldr	s6, [pc, #740]          @ 0x6b08 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe18>
    6824: eeb4 1a4b    	vcmp.f32	s2, s22
    6828: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    682c: ee05 4a49    	vmls.f32	s8, s10, s18
    6830: fe31 1a0b    	vselgt.f32	s2, s2, s22
    6834: ee21 1a03    	vmul.f32	s2, s2, s6
    6838: ee84 4a00    	vdiv.f32	s8, s8, s0
    683c: fe81 0a42    	vminnm.f32	s0, s2, s4
    6840: eef0 7a44    	vmov.f32	s15, s8
    6844: eeb0 4ac4    	vabs.f32	s8, s8
    6848: eeb4 4a40    	vcmp.f32	s8, s0
    684c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6850: d922         	bls	0x6898 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xba8> @ imm = #0x44
    6852: 2400         	movs	r4, #0x0
    6854: eddf 4aad    	vldr	s9, [pc, #692]          @ 0x6b0c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe1c>
    6858: ed9f baad    	vldr	s22, [pc, #692]         @ 0x6b10 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe20>
    685c: f04f 537e    	mov.w	r3, #0x3f800000
    6860: ed9f 0aac    	vldr	s0, [pc, #688]          @ 0x6b14 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe24>
    6864: eeb4 aa40    	vcmp.f32	s20, s0
    6868: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    686c: d85b         	bhi	0x6926 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc36> @ imm = #0xb6
    686e: f1ab 0010    	sub.w	r0, r11, #0x10
    6872: fab0 f080    	clz	r0, r0
    6876: 0940         	lsrs	r0, r0, #0x5
    6878: 4320         	orrs	r0, r4
    687a: d058         	beq	0x692e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc3e> @ imm = #0xb0
    687c: e36e         	b	0x6f5c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x126c> @ imm = #0x6dc
    687e: bf00         	nop
    6880: 7c f2 b0 3a  	.word	0x3ab0f27c
    6884: a6 9b c4 3b  	.word	0x3bc49ba6
    6888: 79 78 b0 43  	.word	0x43b07879
    688c: 53 4a a1 43  	.word	0x43a14a53
    6890: 79 2e 02 b9  	.word	0xb9022e79
    6894: 00 bf 00 bf  	.word	0xbf00bf00
    6898: ed9d 0a17    	vldr	s0, [sp, #92]
    689c: eeb0 1aec    	vabs.f32	s2, s25
    68a0: eeb0 0ac0    	vabs.f32	s0, s0
    68a4: eddf 4a99    	vldr	s9, [pc, #612]          @ 0x6b0c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe1c>
    68a8: f04f 537e    	mov.w	r3, #0x3f800000
    68ac: eeb4 0a40    	vcmp.f32	s0, s0
    68b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68b4: fe1b 0a00    	vselvs.f32	s0, s22, s0
    68b8: eeb4 0a4b    	vcmp.f32	s0, s22
    68bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68c0: fe30 0a0b    	vselgt.f32	s0, s0, s22
    68c4: ee20 0a03    	vmul.f32	s0, s0, s6
    68c8: fe80 0a42    	vminnm.f32	s0, s0, s4
    68cc: eeb4 1a40    	vcmp.f32	s2, s0
    68d0: eeb0 1a4b    	vmov.f32	s2, s22
    68d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68d8: ed9f ba8d    	vldr	s22, [pc, #564]         @ 0x6b10 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe20>
    68dc: d81b         	bhi	0x6916 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc26> @ imm = #0x36
    68de: ed9d 0a18    	vldr	s0, [sp, #96]
    68e2: eeb0 0ac0    	vabs.f32	s0, s0
    68e6: eeb4 0a40    	vcmp.f32	s0, s0
    68ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68ee: fe11 0a00    	vselvs.f32	s0, s2, s0
    68f2: eeb4 0a41    	vcmp.f32	s0, s2
    68f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68fa: fe30 0a01    	vselgt.f32	s0, s0, s2
    68fe: eeb0 1ac9    	vabs.f32	s2, s18
    6902: ee20 0a03    	vmul.f32	s0, s0, s6
    6906: fe80 0a42    	vminnm.f32	s0, s0, s4
    690a: eeb4 1a40    	vcmp.f32	s2, s0
    690e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6912: f240 82d1    	bls.w	0x6eb8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x11c8> @ imm = #0x5a2
    6916: 2400         	movs	r4, #0x0
    6918: ed9f 0a7e    	vldr	s0, [pc, #504]          @ 0x6b14 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe24>
    691c: eeb4 aa40    	vcmp.f32	s20, s0
    6920: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6924: d9a3         	bls	0x686e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb7e> @ imm = #-0xba
    6926: f1bb 0f10    	cmp.w	r11, #0x10
    692a: f000 8335    	beq.w	0x6f98 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12a8> @ imm = #0x66a
    692e: f04f 547e    	mov.w	r4, #0x3f800000
    6932: ed8d 4a02    	vstr	s8, [sp, #8]
    6936: ed8d aa06    	vstr	s20, [sp, #24]
    693a: edcd fa03    	vstr	s31, [sp, #12]
    693e: edcd ba04    	vstr	s23, [sp, #16]
    6942: e01d         	b	0x6980 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc90> @ imm = #0x3a
    6944: 6f f3 03 be  	.word	0xbe03f36f
    6948: af e6 27 39  	.word	0x3927e6af
    694c: d5 35 a4 be  	.word	0xbea435d5
    6950: 2b 18 15 3b  	.word	0x3b15182b
    6954: 79 2e 02 39  	.word	0x39022e79
    6958: 08 e5 3c 1e  	.word	0x1e3ce508
    695c: 00 bf 00 bf  	.word	0xbf00bf00
    6960: 1c 38 88 77  	.word	0x7788381c
    6964: bf 13 e1 bf  	.word	0xbfe113bf
    6968: eef0 9a48    	vmov.f32	s19, s16
    696c: f5a4 0400    	sub.w	r4, r4, #0x800000
    6970: f1b4 5f66    	cmp.w	r4, #0x39800000
    6974: eddf 4a65    	vldr	s9, [pc, #404]          @ 0x6b0c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe1c>
    6978: ed9f ba65    	vldr	s22, [pc, #404]         @ 0x6b10 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe20>
    697c: f000 82b0    	beq.w	0x6ee0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x11f0> @ imm = #0x560
    6980: ee01 4a10    	vmov	s2, r4
    6984: eddd ea16    	vldr	s29, [sp, #88]
    6988: ed1f 2b0b    	vldr	d2, [pc, #-44]          @ 0x6960 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc70>
    698c: ed9d 7a0f    	vldr	s14, [sp, #60]
    6990: eddd 1a0e    	vldr	s3, [sp, #56]
    6994: ee47 ea81    	vmla.f32	s29, s15, s2
    6998: eddd fa17    	vldr	s31, [sp, #92]
    699c: ed9d 0b10    	vldr	d0, [sp, #64]
    69a0: ee4c fa81    	vmla.f32	s31, s25, s2
    69a4: ed9d 4a13    	vldr	s8, [sp, #76]
    69a8: ed9d aa18    	vldr	s20, [sp, #96]
    69ac: ee09 aa01    	vmla.f32	s20, s18, s2
    69b0: eeb0 ca4d    	vmov.f32	s24, s26
    69b4: eef0 da4d    	vmov.f32	s27, s26
    69b8: eeb0 1a4d    	vmov.f32	s2, s26
    69bc: edc1 ea04    	vstr	s29, [r1, #16]
    69c0: eeb7 5aee    	vcvt.f64.f32	d5, s29
    69c4: edc1 fa05    	vstr	s31, [r1, #20]
    69c8: ed81 aa06    	vstr	s20, [r1, #24]
    69cc: ee05 0b02    	vmla.f64	d0, d5, d2
    69d0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    69d4: eef0 0a4d    	vmov.f32	s1, s26
    69d8: ee00 7a24    	vmla.f32	s14, s0, s9
    69dc: ed9f 0ac9    	vldr	s0, [pc, #804]          @ 0x6d04 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1014>
    69e0: ee4e 1a80    	vmla.f32	s3, s29, s0
    69e4: ed9d 0a12    	vldr	s0, [sp, #72]
    69e8: ee4f 1a8b    	vmla.f32	s3, s31, s22
    69ec: eeb4 0a47    	vcmp.f32	s0, s14
    69f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    69f4: fe30 2a07    	vselgt.f32	s4, s0, s14
    69f8: eeb0 0ae1    	vabs.f32	s0, s3
    69fc: eeb4 2a44    	vcmp.f32	s4, s8
    6a00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a04: eeb4 0a69    	vcmp.f32	s0, s19
    6a08: fe74 ba02    	vselgt.f32	s23, s8, s4
    6a0c: eeb0 4a4d    	vmov.f32	s8, s26
    6a10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a14: f280 80a4    	bge.w	0x6b60 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe70> @ imm = #0x148
    6a18: ed1f 1a67    	vldr	s2, [pc, #-412]         @ 0x6880 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb90>
    6a1c: eeb4 0a41    	vcmp.f32	s0, s2
    6a20: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    6a24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a28: d91c         	bls	0x6a64 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xd74> @ imm = #0x38
    6a2a: ed1f 1a6a    	vldr	s2, [pc, #-424]         @ 0x6884 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb94>
    6a2e: eeb4 0a41    	vcmp.f32	s0, s2
    6a32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a36: d90b         	bls	0x6a50 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xd60> @ imm = #0x16
    6a38: ed9f 1ab3    	vldr	s2, [pc, #716]          @ 0x6d08 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1018>
    6a3c: ee30 0a01    	vadd.f32	s0, s0, s2
    6a40: eeb0 1a08    	vmov.f32	s2, #3.000000e+00
    6a44: ed1f 2a70    	vldr	s4, [pc, #-448]         @ 0x6888 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb98>
    6a48: e00a         	b	0x6a60 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xd70> @ imm = #0x14
    6a4a: bf00         	nop
    6a4c: bf00         	nop
    6a4e: bf00         	nop
    6a50: ed9f 1aae    	vldr	s2, [pc, #696]          @ 0x6d0c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x101c>
    6a54: ee30 0a01    	vadd.f32	s0, s0, s2
    6a58: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    6a5c: ed1f 2a75    	vldr	s4, [pc, #-468]         @ 0x688c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb9c>
    6a60: ee00 1a02    	vmla.f32	s2, s0, s4
    6a64: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    6a68: ee30 0a41    	vsub.f32	s0, s0, s2
    6a6c: fe80 ca0d    	vmaxnm.f32	s24, s0, s26
    6a70: eeb5 ca40    	vcmp.f32	s24, #0
    6a74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a78: d93a         	bls	0x6af0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe00> @ imm = #0x74
    6a7a: eeb0 0aeb    	vabs.f32	s0, s23
    6a7e: eeb4 0a4c    	vcmp.f32	s0, s24
    6a82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a86: dd47         	ble	0x6b18 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe28> @ imm = #0x8e
    6a88: eecc da00    	vdiv.f32	s27, s24, s0
    6a8c: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    6a90: ee2d 0aad    	vmul.f32	s0, s27, s27
    6a94: eeb0 1a42    	vmov.f32	s2, s4
    6a98: ee20 0a00    	vmul.f32	s0, s0, s0
    6a9c: ee20 0a00    	vmul.f32	s0, s0, s0
    6aa0: ee60 0a00    	vmul.f32	s1, s0, s0
    6aa4: ee30 0a82    	vadd.f32	s0, s1, s4
    6aa8: eeb4 0a42    	vcmp.f32	s0, s4
    6aac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ab0: d009         	beq	0x6ac6 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xdd6> @ imm = #0x12
    6ab2: eeb1 0ac0    	vsqrt.f32	s0, s0
    6ab6: eeb1 0ac0    	vsqrt.f32	s0, s0
    6aba: eeb1 0ac0    	vsqrt.f32	s0, s0
    6abe: eeb1 0ac0    	vsqrt.f32	s0, s0
    6ac2: eeb0 1a40    	vmov.f32	s2, s0
    6ac6: ee1b 0a90    	vmov	r0, s23
    6aca: ee82 4a01    	vdiv.f32	s8, s4, s2
    6ace: eef4 ba6b    	vcmp.f32	s23, s23
    6ad2: ed9f 1a8f    	vldr	s2, [pc, #572]          @ 0x6d10 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1020>
    6ad6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ada: f363 001e    	bfi	r0, r3, #0, #31
    6ade: ee00 0a10    	vmov	s0, r0
    6ae2: ee20 0a0c    	vmul.f32	s0, s0, s24
    6ae6: ee20 0a04    	vmul.f32	s0, s0, s8
    6aea: fe11 1a00    	vselvs.f32	s2, s2, s0
    6aee: e037         	b	0x6b60 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe70> @ imm = #0x6e
    6af0: eef0 da4d    	vmov.f32	s27, s26
    6af4: eeb0 4a4d    	vmov.f32	s8, s26
    6af8: eef0 0a4d    	vmov.f32	s1, s26
    6afc: eeb0 1a4d    	vmov.f32	s2, s26
    6b00: e02e         	b	0x6b60 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe70> @ imm = #0x5c
    6b02: bf00         	nop
    6b04: ac c5 a7 37  	.word	0x37a7c5ac
    6b08: bd 37 06 36  	.word	0x360637bd
    6b0c: 79 61 2e 43  	.word	0x432e6179
    6b10: d6 f8 e4 36  	.word	0x36e4f8d6
    6b14: 17 b7 d1 38  	.word	0x38d1b717
    6b18: eecb da8c    	vdiv.f32	s27, s23, s24
    6b1c: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    6b20: ee2d 0aad    	vmul.f32	s0, s27, s27
    6b24: eeb0 1a42    	vmov.f32	s2, s4
    6b28: ee20 0a00    	vmul.f32	s0, s0, s0
    6b2c: ee20 0a00    	vmul.f32	s0, s0, s0
    6b30: ee60 0a00    	vmul.f32	s1, s0, s0
    6b34: ee30 0a82    	vadd.f32	s0, s1, s4
    6b38: eeb4 0a42    	vcmp.f32	s0, s4
    6b3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b40: d009         	beq	0x6b56 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe66> @ imm = #0x12
    6b42: eeb1 0ac0    	vsqrt.f32	s0, s0
    6b46: eeb1 0ac0    	vsqrt.f32	s0, s0
    6b4a: eeb1 0ac0    	vsqrt.f32	s0, s0
    6b4e: eeb1 0ac0    	vsqrt.f32	s0, s0
    6b52: eeb0 1a40    	vmov.f32	s2, s0
    6b56: ee82 4a01    	vdiv.f32	s8, s4, s2
    6b5a: ee2b 1a84    	vmul.f32	s2, s23, s8
    6b5e: bf00         	nop
    6b60: ee7e 8ac1    	vsub.f32	s17, s29, s2
    6b64: ed9f 0ad9    	vldr	s0, [pc, #868]          @ 0x6ecc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x11dc>
    6b68: ee18 0a90    	vmov	r0, s17
    6b6c: f020 4000    	bic	r0, r0, #0x80000000
    6b70: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6b74: da07         	bge	0x6b86 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xe96> @ imm = #0xe
    6b76: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    6b7a: ee88 0a80    	vdiv.f32	s0, s17, s0
    6b7e: eeb0 0ac0    	vabs.f32	s0, s0
    6b82: fe80 0a0d    	vmaxnm.f32	s0, s0, s26
    6b86: ed9f 3bd2    	vldr	d3, [pc, #840]          @ 0x6ed0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x11e0>
    6b8a: eeb7 6aef    	vcvt.f64.f32	d6, s31
    6b8e: ed9d fa0a    	vldr	s30, [sp, #40]
    6b92: ed9d 2b0c    	vldr	d2, [sp, #48]
    6b96: eeb0 8a69    	vmov.f32	s16, s19
    6b9a: ee05 2b03    	vmla.f64	d2, d5, d3
    6b9e: eeb0 5a4d    	vmov.f32	s10, s26
    6ba2: eef0 5a4d    	vmov.f32	s11, s26
    6ba6: ed9f 3bcc    	vldr	d3, [pc, #816]          @ 0x6ed8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x11e8>
    6baa: ee06 2b03    	vmla.f64	d2, d6, d3
    6bae: ed1f 3a97    	vldr	s6, [pc, #-604]         @ 0x6954 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc64>
    6bb2: eeb0 6a4d    	vmov.f32	s12, s26
    6bb6: eef6 3a00    	vmov.f32	s7, #5.000000e-01
    6bba: eeb7 1bc2    	vcvt.f32.f64	s2, d2
    6bbe: ed9f 2af0    	vldr	s4, [pc, #960]          @ 0x6f80 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1290>
    6bc2: ee6a 2a03    	vmul.f32	s5, s20, s6
    6bc6: ee01 fa24    	vmla.f32	s30, s2, s9
    6bca: ed9d 1a0b    	vldr	s2, [sp, #44]
    6bce: ee0e 1a8b    	vmla.f32	s2, s29, s22
    6bd2: ee0f 1a82    	vmla.f32	s2, s31, s4
    6bd6: ed9d 2a15    	vldr	s4, [sp, #84]
    6bda: eeb4 2a4f    	vcmp.f32	s4, s30
    6bde: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6be2: fe32 2a0f    	vselgt.f32	s4, s4, s30
    6be6: ee71 4a22    	vadd.f32	s9, s2, s5
    6bea: ed9d 1a14    	vldr	s2, [sp, #80]
    6bee: eeb4 2a41    	vcmp.f32	s4, s2
    6bf2: eeb0 bae4    	vabs.f32	s22, s9
    6bf6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6bfa: fe71 6a02    	vselgt.f32	s13, s2, s4
    6bfe: eeb0 1a4d    	vmov.f32	s2, s26
    6c02: eeb4 ba69    	vcmp.f32	s22, s19
    6c06: eef0 9a4d    	vmov.f32	s19, s26
    6c0a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c0e: f280 80a7    	bge.w	0x6d60 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1070> @ imm = #0x14e
    6c12: ed1f 1ae5    	vldr	s2, [pc, #-916]         @ 0x6880 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb90>
    6c16: eeb4 ba41    	vcmp.f32	s22, s2
    6c1a: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    6c1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c22: d91b         	bls	0x6c5c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xf6c> @ imm = #0x36
    6c24: ed9f 1aea    	vldr	s2, [pc, #936]          @ 0x6fd0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12e0>
    6c28: eeb4 ba41    	vcmp.f32	s22, s2
    6c2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c30: d90a         	bls	0x6c48 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xf58> @ imm = #0x14
    6c32: ed9f 1aea    	vldr	s2, [pc, #936]          @ 0x6fdc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12ec>
    6c36: ee3b 2a01    	vadd.f32	s4, s22, s2
    6c3a: eeb0 1a08    	vmov.f32	s2, #3.000000e+00
    6c3e: ed9f 3ae8    	vldr	s6, [pc, #928]          @ 0x6fe0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12f0>
    6c42: e009         	b	0x6c58 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xf68> @ imm = #0x12
    6c44: bf00         	nop
    6c46: bf00         	nop
    6c48: ed9f 1ae2    	vldr	s2, [pc, #904]          @ 0x6fd4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12e4>
    6c4c: ee3b 2a01    	vadd.f32	s4, s22, s2
    6c50: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    6c54: ed9f 3ae0    	vldr	s6, [pc, #896]          @ 0x6fd8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12e8>
    6c58: ee02 1a03    	vmla.f32	s2, s4, s6
    6c5c: eeb2 2a0e    	vmov.f32	s4, #1.500000e+01
    6c60: ee32 1a41    	vsub.f32	s2, s4, s2
    6c64: fe81 6a0d    	vmaxnm.f32	s12, s2, s26
    6c68: eeb5 6a40    	vcmp.f32	s12, #0
    6c6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c70: d93e         	bls	0x6cf0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1000> @ imm = #0x7c
    6c72: eeb0 1ae6    	vabs.f32	s2, s13
    6c76: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    6c7a: eeb4 1a46    	vcmp.f32	s2, s12
    6c7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c82: dd49         	ble	0x6d18 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1028> @ imm = #0x92
    6c84: eec6 5a01    	vdiv.f32	s11, s12, s2
    6c88: eeb0 2a43    	vmov.f32	s4, s6
    6c8c: eeb0 ba43    	vmov.f32	s22, s6
    6c90: ee25 1aa5    	vmul.f32	s2, s11, s11
    6c94: ee21 1a01    	vmul.f32	s2, s2, s2
    6c98: ee21 1a01    	vmul.f32	s2, s2, s2
    6c9c: ee21 5a01    	vmul.f32	s10, s2, s2
    6ca0: ee35 1a03    	vadd.f32	s2, s10, s6
    6ca4: eeb4 1a43    	vcmp.f32	s2, s6
    6ca8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6cac: d009         	beq	0x6cc2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xfd2> @ imm = #0x12
    6cae: eeb1 1ac1    	vsqrt.f32	s2, s2
    6cb2: eeb1 1ac1    	vsqrt.f32	s2, s2
    6cb6: eeb1 1ac1    	vsqrt.f32	s2, s2
    6cba: eeb1 1ac1    	vsqrt.f32	s2, s2
    6cbe: eeb0 ba41    	vmov.f32	s22, s2
    6cc2: ee16 0a90    	vmov	r0, s13
    6cc6: eec2 9a0b    	vdiv.f32	s19, s4, s22
    6cca: eef4 6a66    	vcmp.f32	s13, s13
    6cce: ed9f 2ac5    	vldr	s4, [pc, #788]          @ 0x6fe4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12f4>
    6cd2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6cd6: f363 001e    	bfi	r0, r3, #0, #31
    6cda: ee01 0a10    	vmov	s2, r0
    6cde: ee21 1a06    	vmul.f32	s2, s2, s12
    6ce2: ee21 1a29    	vmul.f32	s2, s2, s19
    6ce6: fe12 1a01    	vselvs.f32	s2, s4, s2
    6cea: e039         	b	0x6d60 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1070> @ imm = #0x72
    6cec: bf00         	nop
    6cee: bf00         	nop
    6cf0: eeb0 1a4d    	vmov.f32	s2, s26
    6cf4: eeb0 5a4d    	vmov.f32	s10, s26
    6cf8: eef0 9a4d    	vmov.f32	s19, s26
    6cfc: eef0 5a4d    	vmov.f32	s11, s26
    6d00: e02e         	b	0x6d60 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1070> @ imm = #0x5c
    6d02: bf00         	nop
    6d04: 83 c0 96 b8  	.word	0xb896c083
    6d08: a6 9b c4 bb  	.word	0xbbc49ba6
    6d0c: 7c f2 b0 ba  	.word	0xbab0f27c
    6d10: 00 00 c0 7f  	.word	0x7fc00000
    6d14: 00 bf 00 bf  	.word	0xbf00bf00
    6d18: eec6 5a86    	vdiv.f32	s11, s13, s12
    6d1c: eeb0 2a43    	vmov.f32	s4, s6
    6d20: ee25 1aa5    	vmul.f32	s2, s11, s11
    6d24: ee21 1a01    	vmul.f32	s2, s2, s2
    6d28: ee21 1a01    	vmul.f32	s2, s2, s2
    6d2c: ee21 5a01    	vmul.f32	s10, s2, s2
    6d30: ee35 1a03    	vadd.f32	s2, s10, s6
    6d34: eeb4 1a43    	vcmp.f32	s2, s6
    6d38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d3c: d009         	beq	0x6d52 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1062> @ imm = #0x12
    6d3e: eeb1 1ac1    	vsqrt.f32	s2, s2
    6d42: eeb1 1ac1    	vsqrt.f32	s2, s2
    6d46: eeb1 1ac1    	vsqrt.f32	s2, s2
    6d4a: eeb1 1ac1    	vsqrt.f32	s2, s2
    6d4e: eeb0 2a41    	vmov.f32	s4, s2
    6d52: eec3 9a02    	vdiv.f32	s19, s6, s4
    6d56: ee26 1aa9    	vmul.f32	s2, s13, s19
    6d5a: bf00         	nop
    6d5c: bf00         	nop
    6d5e: bf00         	nop
    6d60: ee3f bac1    	vsub.f32	s22, s31, s2
    6d64: ed9f 1aa0    	vldr	s2, [pc, #640]          @ 0x6fe8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12f8>
    6d68: ee1b 0a10    	vmov	r0, s22
    6d6c: f020 4000    	bic	r0, r0, #0x80000000
    6d70: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6d74: da17         	bge	0x6da6 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x10b6> @ imm = #0x2e
    6d76: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    6d7a: eeb4 0a40    	vcmp.f32	s0, s0
    6d7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d82: ee8b 1a01    	vdiv.f32	s2, s22, s2
    6d86: eeb0 1ac1    	vabs.f32	s2, s2
    6d8a: fe11 0a00    	vselvs.f32	s0, s2, s0
    6d8e: eeb4 1a41    	vcmp.f32	s2, s2
    6d92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d96: fe10 1a01    	vselvs.f32	s2, s0, s2
    6d9a: eeb4 0a41    	vcmp.f32	s0, s2
    6d9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6da2: fe30 1a01    	vselgt.f32	s2, s0, s2
    6da6: ed9f 3a92    	vldr	s6, [pc, #584]          @ 0x6ff0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1300>
    6daa: ed9d 2a09    	vldr	s4, [sp, #36]
    6dae: ee2f 0a83    	vmul.f32	s0, s31, s6
    6db2: ed9f ea91    	vldr	s28, [pc, #580]         @ 0x6ff8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1308>
    6db6: ee70 aa02    	vadd.f32	s21, s0, s4
    6dba: ed9f 2a8e    	vldr	s4, [pc, #568]          @ 0x6ff4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1304>
    6dbe: ee4a aa02    	vmla.f32	s21, s20, s4
    6dc2: ed9d 2a08    	vldr	s4, [sp, #32]
    6dc6: ee30 0a02    	vadd.f32	s0, s0, s4
    6dca: ee0a 0a43    	vmls.f32	s0, s20, s6
    6dce: eeb8 3a00    	vmov.f32	s6, #-2.000000e+00
    6dd2: fe8a 2ac0    	vminnm.f32	s4, s21, s0
    6dd6: ee33 2ac2    	vsub.f32	s4, s7, s4
    6dda: eeb4 2a43    	vcmp.f32	s4, s6
    6dde: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6de2: d91a         	bls	0x6e1a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x112a> @ imm = #0x34
    6de4: eeb4 2a42    	vcmp.f32	s4, s4
    6de8: eeb0 ea4d    	vmov.f32	s28, s26
    6dec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6df0: ed9f 3a82    	vldr	s6, [pc, #520]          @ 0x6ffc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x130c>
    6df4: fe1d 2a02    	vselvs.f32	s4, s26, s4
    6df8: eeb5 2a40    	vcmp.f32	s4, #0
    6dfc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e00: bfb8         	it	lt
    6e02: eeb0 ea42    	vmovlt.f32	s28, s4
    6e06: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    6e0a: ee0e 2a23    	vmla.f32	s4, s28, s7
    6e0e: ee22 2a03    	vmul.f32	s4, s4, s6
    6e12: ed9f 3a79    	vldr	s6, [pc, #484]          @ 0x6ff8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1308>
    6e16: fe82 ea03    	vmaxnm.f32	s28, s4, s6
    6e1a: ed9f 3a74    	vldr	s6, [pc, #464]          @ 0x6fec <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12fc>
    6e1e: ed9d 2a07    	vldr	s4, [sp, #28]
    6e22: ee0f 2a83    	vmla.f32	s4, s31, s6
    6e26: ee72 2a62    	vsub.f32	s5, s4, s5
    6e2a: ee5a 2a0e    	vnmls.f32	s5, s20, s28
    6e2e: ee12 0a90    	vmov	r0, s5
    6e32: f020 4000    	bic	r0, r0, #0x80000000
    6e36: f1b0 4fff    	cmp.w	r0, #0x7f800000
    6e3a: f6bf ad95    	bge.w	0x6968 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc78> @ imm = #-0x4d6
    6e3e: ed9f 2a70    	vldr	s4, [pc, #448]          @ 0x7000 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1310>
    6e42: eeb4 1a41    	vcmp.f32	s2, s2
    6e46: ee82 2a82    	vdiv.f32	s4, s5, s4
    6e4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e4e: eeb0 2ac2    	vabs.f32	s4, s4
    6e52: fe12 1a01    	vselvs.f32	s2, s4, s2
    6e56: eeb4 2a42    	vcmp.f32	s4, s4
    6e5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e5e: fe11 2a02    	vselvs.f32	s4, s2, s4
    6e62: eeb4 1a42    	vcmp.f32	s2, s4
    6e66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e6a: fe31 1a02    	vselgt.f32	s2, s2, s4
    6e6e: ed9d 2a06    	vldr	s4, [sp, #24]
    6e72: eeb4 1a42    	vcmp.f32	s2, s4
    6e76: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e7a: f57f ad75    	bpl.w	0x6968 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc78> @ imm = #-0x516
    6e7e: f1bb 0f10    	cmp.w	r11, #0x10
    6e82: ed9d 9a12    	vldr	s18, [sp, #72]
    6e86: eddd ca13    	vldr	s25, [sp, #76]
    6e8a: 9d00         	ldr	r5, [sp]
    6e8c: f000 8094    	beq.w	0x6fb8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12c8> @ imm = #0x128
    6e90: edcd fa17    	vstr	s31, [sp, #92]
    6e94: eef0 fa66    	vmov.f32	s31, s13
    6e98: ed8d aa18    	vstr	s20, [sp, #96]
    6e9c: eeb0 aa41    	vmov.f32	s20, s2
    6ea0: 4670         	mov	r0, lr
    6ea2: 2d10         	cmp	r5, #0x10
    6ea4: f109 0901    	add.w	r9, r9, #0x1
    6ea8: 46ab         	mov	r11, r5
    6eaa: edcd ea16    	vstr	s29, [sp, #88]
    6eae: f77f aa13    	ble.w	0x62d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x5e8> @ imm = #-0xbda
    6eb2: e081         	b	0x6fb8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x12c8> @ imm = #0x102
    6eb4: bf00         	nop
    6eb6: bf00         	nop
    6eb8: 2401         	movs	r4, #0x1
    6eba: ed9f 0a53    	vldr	s0, [pc, #332]          @ 0x7008 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1318>
    6ebe: eeb4 aa40    	vcmp.f32	s20, s0
    6ec2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ec6: f63f ad2e    	bhi.w	0x6926 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xc36> @ imm = #-0x5a4
    6eca: e4d0         	b	0x686e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0xb7e> @ imm = #-0x660
    6ecc: 00 00 80 7f  	.word	0x7f800000
    6ed0: 15 be b6 e5  	.word	0xe5b6be15
    6ed4: 6d 7e c0 bf  	.word	0xbfc07e6d
    6ed8: 67 42 87 92  	.word	0x92874267
    6edc: ba 86 d4 bf  	.word	0xbfd486ba
    6ee0: ed9d aa06    	vldr	s20, [sp, #24]
    6ee4: ed9f 0a48    	vldr	s0, [pc, #288]          @ 0x7008 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1318>
    6ee8: eeb4 aa40    	vcmp.f32	s20, s0
    6eec: 2000         	movs	r0, #0x0
    6eee: ed9f 2a45    	vldr	s4, [pc, #276]          @ 0x7004 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1314>
    6ef2: ed9d 0a02    	vldr	s0, [sp, #8]
    6ef6: 2200         	movs	r2, #0x0
    6ef8: f109 0901    	add.w	r9, r9, #0x1
    6efc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f00: eeb4 0a42    	vcmp.f32	s0, s4
    6f04: bf98         	it	ls
    6f06: 2001         	movls	r0, #0x1
    6f08: eeb0 0aec    	vabs.f32	s0, s25
    6f0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f10: bf98         	it	ls
    6f12: 2201         	movls	r2, #0x1
    6f14: eeb4 0a42    	vcmp.f32	s0, s4
    6f18: 4010         	ands	r0, r2
    6f1a: 2200         	movs	r2, #0x0
    6f1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f20: bf98         	it	ls
    6f22: 2201         	movls	r2, #0x1
    6f24: eeb0 0ac9    	vabs.f32	s0, s18
    6f28: ed9d 1a16    	vldr	s2, [sp, #88]
    6f2c: 4010         	ands	r0, r2
    6f2e: 2200         	movs	r2, #0x0
    6f30: ed81 1a04    	vstr	s2, [r1, #16]
    6f34: eeb4 0a42    	vcmp.f32	s0, s4
    6f38: ed9d 0a17    	vldr	s0, [sp, #92]
    6f3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f40: ed81 0a05    	vstr	s0, [r1, #20]
    6f44: bf98         	it	ls
    6f46: 2201         	movls	r2, #0x1
    6f48: eddd ba04    	vldr	s23, [sp, #16]
    6f4c: eddd fa03    	vldr	s31, [sp, #12]
    6f50: ea00 0402    	and.w	r4, r0, r2
    6f54: ed9d 0a18    	vldr	s0, [sp, #96]
    6f58: ed81 0a06    	vstr	s0, [r1, #24]
    6f5c: 68b8         	ldr	r0, [r7, #0x8]
    6f5e: edc0 ba02    	vstr	s23, [r0, #8]
    6f62: edc0 fa03    	vstr	s31, [r0, #12]
    6f66: 9801         	ldr	r0, [sp, #0x4]
    6f68: ed80 aa00    	vstr	s20, [r0]
    6f6c: f880 9004    	strb.w	r9, [r0, #0x4]
    6f70: 7144         	strb	r4, [r0, #0x5]
    6f72: b028         	add	sp, #0xa0
    6f74: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    6f78: b001         	add	sp, #0x4
    6f7a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    6f7e: bdf0         	pop	{r4, r5, r6, r7, pc}
    6f80: af e6 27 b9  	.word	0xb927e6af
    6f84: 00 bf 00 bf  	.word	0xbf00bf00
    6f88: 9901         	ldr	r1, [sp, #0x4]
    6f8a: 2000         	movs	r0, #0x0
    6f8c: ed81 aa00    	vstr	s20, [r1]
    6f90: f881 9004    	strb.w	r9, [r1, #0x4]
    6f94: 7148         	strb	r0, [r1, #0x5]
    6f96: e7ec         	b	0x6f72 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x1282> @ imm = #-0x28
    6f98: 2400         	movs	r4, #0x0
    6f9a: e7df         	b	0x6f5c <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>+0x126c> @ imm = #-0x42
    6f9c: bf00         	nop
    6f9e: bf00         	nop
    6fa0: f64d 20a3    	movw	r0, #0xdaa3
    6fa4: f64d 7248    	movw	r2, #0xdf48
    6fa8: f2c0 0000    	movt	r0, #0x0
    6fac: f2c0 0200    	movt	r2, #0x0
    6fb0: a91c         	add	r1, sp, #0x70
    6fb2: f004 ff7b    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0x4ef6
    6fb6: bf00         	nop
    6fb8: f64d 3039    	movw	r0, #0xdb39
    6fbc: f64d 7238    	movw	r2, #0xdf38
    6fc0: f2c0 0000    	movt	r0, #0x0
    6fc4: f2c0 0200    	movt	r2, #0x0
    6fc8: 2128         	movs	r1, #0x28
    6fca: f004 ff73    	bl	0xbeb4 <core::panicking::panic> @ imm = #0x4ee6
    6fce: bf00         	nop
    6fd0: a6 9b c4 3b  	.word	0x3bc49ba6
    6fd4: 7c f2 b0 ba  	.word	0xbab0f27c
    6fd8: 53 4a a1 43  	.word	0x43a14a53
    6fdc: a6 9b c4 bb  	.word	0xbbc49ba6
    6fe0: 79 78 b0 43  	.word	0x43b07879
    6fe4: 00 00 c0 7f  	.word	0x7fc00000
    6fe8: 00 00 80 7f  	.word	0x7f800000
    6fec: 79 2e 02 39  	.word	0x39022e79
    6ff0: 51 e6 7f 3f  	.word	0x3f7fe651
    6ff4: 99 76 cd 39  	.word	0x39cd7699
    6ff8: 95 bf d6 33  	.word	0x33d6bf95
    6ffc: 2b 18 95 3b  	.word	0x3b95182b
    7000: 0a d7 23 3c  	.word	0x3c23d70a
    7004: ac c5 a7 37  	.word	0x37a7c5ac
    7008: 17 b7 d1 38  	.word	0x38d1b717
    700c: d4 d4 d4 d4  	.word	0xd4d4d4d4

00007010 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>>:
    7010: b5f0         	push	{r4, r5, r6, r7, lr}
    7012: af03         	add	r7, sp, #0xc
    7014: f84d 8d04    	str	r8, [sp, #-4]!
    7018: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    701c: b086         	sub	sp, #0x18
    701e: ed92 2a12    	vldr	s4, [r2, #72]
    7022: ed92 3a13    	vldr	s6, [r2, #76]
    7026: eeb4 2a43    	vcmp.f32	s4, s6
    702a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    702e: f200 833b    	bhi.w	0x76a8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x698> @ imm = #0x676
    7032: ed91 ca07    	vldr	s24, [r1, #28]
    7036: ed9f 7adc    	vldr	s14, [pc, #880]         @ 0x73a8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x398>
    703a: eeb7 4acc    	vcvt.f64.f32	d4, s24
    703e: eddf 2adb    	vldr	s5, [pc, #876]          @ 0x73ac <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x39c>
    7042: ed9f 6bdb    	vldr	d6, [pc, #876]          @ 0x73b0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x3a0>
    7046: eeb0 5b41    	vmov.f64	d5, d1
    704a: eef3 3a05    	vmov.f32	s7, #2.100000e+01
    704e: ee04 5b06    	vmla.f64	d5, d4, d6
    7052: ed92 6a11    	vldr	s12, [r2, #68]
    7056: eef0 ea46    	vmov.f32	s29, s12
    705a: eeb7 4bc5    	vcvt.f32.f64	s8, d5
    705e: eef7 0bc0    	vcvt.f32.f64	s1, d0
    7062: ee44 ea07    	vmla.f32	s29, s8, s14
    7066: eef0 9a60    	vmov.f32	s19, s1
    706a: ee4c 9a22    	vmla.f32	s19, s24, s5
    706e: eeb4 2a6e    	vcmp.f32	s4, s29
    7072: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7076: fe32 4a2e    	vselgt.f32	s8, s4, s29
    707a: eeb4 4a43    	vcmp.f32	s8, s6
    707e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7082: fe33 ea04    	vselgt.f32	s28, s6, s8
    7086: eeb0 0ace    	vabs.f32	s0, s28
    708a: eeb4 0a63    	vcmp.f32	s0, s7
    708e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7092: dd2d         	ble	0x70f0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0xe0> @ imm = #0x5a
    7094: ee83 da80    	vdiv.f32	s26, s7, s0
    7098: ee2d 0a0d    	vmul.f32	s0, s26, s26
    709c: ee20 0a00    	vmul.f32	s0, s0, s0
    70a0: ee20 0a00    	vmul.f32	s0, s0, s0
    70a4: ee60 da00    	vmul.f32	s27, s0, s0
    70a8: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    70ac: ee3d 5a80    	vadd.f32	s10, s27, s0
    70b0: eeb0 4a40    	vmov.f32	s8, s0
    70b4: eeb4 5a40    	vcmp.f32	s10, s0
    70b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70bc: d009         	beq	0x70d2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0xc2> @ imm = #0x12
    70be: eeb1 5ac5    	vsqrt.f32	s10, s10
    70c2: eeb1 5ac5    	vsqrt.f32	s10, s10
    70c6: eeb1 5ac5    	vsqrt.f32	s10, s10
    70ca: eeb1 5ac5    	vsqrt.f32	s10, s10
    70ce: eeb0 4a45    	vmov.f32	s8, s10
    70d2: ee1e 2a10    	vmov	r2, s28
    70d6: f04f 567e    	mov.w	r6, #0x3f800000
    70da: eec0 8a04    	vdiv.f32	s17, s0, s8
    70de: f366 021e    	bfi	r2, r6, #0, #31
    70e2: ee05 2a10    	vmov	s10, r2
    70e6: ee25 0a23    	vmul.f32	s0, s10, s7
    70ea: ee60 fa28    	vmul.f32	s31, s0, s17
    70ee: e022         	b	0x7136 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x126> @ imm = #0x44
    70f0: ee8e da23    	vdiv.f32	s26, s28, s7
    70f4: ee2d 0a0d    	vmul.f32	s0, s26, s26
    70f8: ee20 0a00    	vmul.f32	s0, s0, s0
    70fc: ee20 0a00    	vmul.f32	s0, s0, s0
    7100: ee60 da00    	vmul.f32	s27, s0, s0
    7104: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    7108: ee3d 4a80    	vadd.f32	s8, s27, s0
    710c: eeb0 5a40    	vmov.f32	s10, s0
    7110: eeb4 4a40    	vcmp.f32	s8, s0
    7114: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7118: d009         	beq	0x712e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x11e> @ imm = #0x12
    711a: eeb1 4ac4    	vsqrt.f32	s8, s8
    711e: eeb1 4ac4    	vsqrt.f32	s8, s8
    7122: eeb1 4ac4    	vsqrt.f32	s8, s8
    7126: eeb1 4ac4    	vsqrt.f32	s8, s8
    712a: eeb0 5a44    	vmov.f32	s10, s8
    712e: eec0 8a05    	vdiv.f32	s17, s0, s10
    7132: ee6e fa28    	vmul.f32	s31, s28, s17
    7136: eeb0 0aef    	vabs.f32	s0, s31
    713a: eef3 4a08    	vmov.f32	s9, #2.400000e+01
    713e: eef2 6a00    	vmov.f32	s13, #8.000000e+00
    7142: eddf 7ae0    	vldr	s15, [pc, #896]         @ 0x74c4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x4b4>
    7146: eeb1 8a04    	vmov.f32	s16, #5.000000e+00
    714a: eef0 5ae9    	vabs.f32	s11, s19
    714e: ee34 0ac0    	vsub.f32	s0, s9, s0
    7152: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    7156: fe80 0a26    	vmaxnm.f32	s0, s0, s13
    715a: eeb0 9a44    	vmov.f32	s18, s8
    715e: eec7 ca80    	vdiv.f32	s25, s15, s0
    7162: fe8c 5ac8    	vminnm.f32	s10, s25, s16
    7166: ee85 0a85    	vdiv.f32	s0, s11, s10
    716a: ee85 5a25    	vdiv.f32	s10, s10, s11
    716e: eeb4 0a44    	vcmp.f32	s0, s8
    7172: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7176: fe75 5a00    	vselgt.f32	s11, s10, s0
    717a: ee65 5aa5    	vmul.f32	s11, s11, s11
    717e: ee65 5aa5    	vmul.f32	s11, s11, s11
    7182: ee65 5aa5    	vmul.f32	s11, s11, s11
    7186: ee65 aaa5    	vmul.f32	s21, s11, s11
    718a: ee7a 5a84    	vadd.f32	s11, s21, s8
    718e: eef4 5a44    	vcmp.f32	s11, s8
    7192: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7196: d009         	beq	0x71ac <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x19c> @ imm = #0x12
    7198: eef1 5ae5    	vsqrt.f32	s11, s11
    719c: eef1 5ae5    	vsqrt.f32	s11, s11
    71a0: eef1 5ae5    	vsqrt.f32	s11, s11
    71a4: eef1 5ae5    	vsqrt.f32	s11, s11
    71a8: eeb0 9a65    	vmov.f32	s18, s11
    71ac: ee84 fa09    	vdiv.f32	s30, s8, s18
    71b0: eeb4 0a44    	vcmp.f32	s0, s8
    71b4: eeb0 4a4c    	vmov.f32	s8, s24
    71b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71bc: ee65 5a0f    	vmul.f32	s11, s10, s30
    71c0: eeb1 5a45    	vneg.f32	s10, s10
    71c4: fe75 5a8f    	vselgt.f32	s11, s11, s30
    71c8: fe75 ba00    	vselgt.f32	s23, s10, s0
    71cc: ee0f 4ae5    	vmls.f32	s8, s31, s11
    71d0: ee14 2a10    	vmov	r2, s8
    71d4: f022 4200    	bic	r2, r2, #0x80000000
    71d8: f1b2 4fff    	cmp.w	r2, #0x7f800000
    71dc: db04         	blt	0x71e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x1d8> @ imm = #0x8
    71de: ed9f 0aba    	vldr	s0, [pc, #744]          @ 0x74c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x4b8>
    71e2: e009         	b	0x71f8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x1e8> @ imm = #0x12
    71e4: bf00         	nop
    71e6: bf00         	nop
    71e8: ee84 0a24    	vdiv.f32	s0, s8, s9
    71ec: ed9f 5ab7    	vldr	s10, [pc, #732]         @ 0x74cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x4bc>
    71f0: eeb0 0ac0    	vabs.f32	s0, s0
    71f4: fe80 0a05    	vmaxnm.f32	s0, s0, s10
    71f8: eeb7 aa00    	vmov.f32	s20, #1.000000e+00
    71fc: f04f 0800    	mov.w	r8, #0x0
    7200: f04f 0c00    	mov.w	r12, #0x0
    7204: f04f 527e    	mov.w	r2, #0x3f800000
    7208: 46c6         	mov	lr, r8
    720a: ed8d 0a01    	vstr	s0, [sp, #4]
    720e: ee3d 0a8a    	vadd.f32	s0, s27, s20
    7212: 2500         	movs	r5, #0x0
    7214: ee2d 5a2d    	vmul.f32	s10, s26, s27
    7218: f1b8 0f10    	cmp.w	r8, #0x10
    721c: eef0 5ace    	vabs.f32	s11, s28
    7220: f04f 0600    	mov.w	r6, #0x0
    7224: ee88 0a80    	vdiv.f32	s0, s17, s0
    7228: eef4 ea42    	vcmp.f32	s29, s4
    722c: bf18         	it	ne
    722e: f10e 0e01    	addne.w	lr, lr, #0x1
    7232: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7236: eef4 ea43    	vcmp.f32	s29, s6
    723a: bfc8         	it	gt
    723c: 2501         	movgt	r5, #0x1
    723e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7242: eef4 5a63    	vcmp.f32	s11, s7
    7246: ee65 5a00    	vmul.f32	s11, s10, s0
    724a: bf48         	it	mi
    724c: 2601         	movmi	r6, #0x1
    724e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7252: eef4 ca6c    	vcmp.f32	s25, s25
    7256: fe35 0a80    	vselgt.f32	s0, s11, s0
    725a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    725e: ee3a ba8a    	vadd.f32	s22, s21, s20
    7262: fe58 5a2c    	vselvs.f32	s11, s16, s25
    7266: ee8f 5a0b    	vdiv.f32	s10, s30, s22
    726a: eeb4 8a65    	vcmp.f32	s16, s11
    726e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7272: eef5 ba40    	vcmp.f32	s23, #0
    7276: fe75 5a88    	vselgt.f32	s11, s11, s16
    727a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    727e: da0b         	bge	0x7298 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x288> @ imm = #0x16
    7280: ee8b baa9    	vdiv.f32	s22, s23, s19
    7284: eddf 8a91    	vldr	s17, [pc, #580]         @ 0x74cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x4bc>
    7288: eef1 aa6b    	vneg.f32	s21, s23
    728c: ee2b facf    	vnmul.f32	s30, s23, s30
    7290: ee25 da0b    	vmul.f32	s26, s10, s22
    7294: e00e         	b	0x72b4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x2a4> @ imm = #0x1c
    7296: bf00         	nop
    7298: eeb1 ba6a    	vneg.f32	s22, s21
    729c: eef5 9a40    	vcmp.f32	s19, #0
    72a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72a4: eddf 8a89    	vldr	s17, [pc, #548]         @ 0x74cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x4bc>
    72a8: ee8b ba29    	vdiv.f32	s22, s22, s19
    72ac: ee25 ba0b    	vmul.f32	s22, s10, s22
    72b0: fe08 da8b    	vseleq.f32	s26, s17, s22
    72b4: eeca 5aa5    	vdiv.f32	s11, s21, s11
    72b8: eef4 ca48    	vcmp.f32	s25, s16
    72bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72c0: ee25 5a25    	vmul.f32	s10, s10, s11
    72c4: eef0 5a68    	vmov.f32	s11, s17
    72c8: d527         	bpl	0x731a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x30a> @ imm = #0x4e
    72ca: eef0 5a68    	vmov.f32	s11, s17
    72ce: eef5 fa40    	vcmp.f32	s31, #0
    72d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72d6: d020         	beq	0x731a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x30a> @ imm = #0x40
    72d8: eef0 5aef    	vabs.f32	s11, s31
    72dc: ee34 bae5    	vsub.f32	s22, s9, s11
    72e0: eef0 5a68    	vmov.f32	s11, s17
    72e4: eeb4 ba66    	vcmp.f32	s22, s13
    72e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    72ec: dd15         	ble	0x731a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x30a> @ imm = #0x2a
    72ee: ee1f 4a90    	vmov	r4, s31
    72f2: fe8b ba26    	vmaxnm.f32	s22, s22, s13
    72f6: eef4 fa6f    	vcmp.f32	s31, s31
    72fa: ed9f 9aea    	vldr	s18, [pc, #936]         @ 0x76a4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x694>
    72fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7302: f362 041e    	bfi	r4, r2, #0, #31
    7306: ee2b ba0b    	vmul.f32	s22, s22, s22
    730a: ee05 4a90    	vmov	s11, r4
    730e: ee65 5aa7    	vmul.f32	s11, s11, s15
    7312: fe59 5a25    	vselvs.f32	s11, s18, s11
    7316: eec5 5a8b    	vdiv.f32	s11, s11, s22
    731a: ee2f 5a85    	vmul.f32	s10, s31, s10
    731e: ea15 0406    	ands.w	r4, r5, r6
    7322: f04f 0500    	mov.w	r5, #0x0
    7326: ee05 fa25    	vmla.f32	s30, s10, s11
    732a: ed9f 5ae8    	vldr	s10, [pc, #928]         @ 0x76cc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6bc>
    732e: eddf 5ae8    	vldr	s11, [pc, #928]         @ 0x76d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6c0>
    7332: fe05 5a85    	vseleq.f32	s10, s11, s10
    7336: ee6f 5a8d    	vmul.f32	s11, s31, s26
    733a: ee20 0a0f    	vmul.f32	s0, s0, s30
    733e: ee20 0a05    	vmul.f32	s0, s0, s10
    7342: ed9f 5ae4    	vldr	s10, [pc, #912]         @ 0x76d4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6c4>
    7346: ee25 5a85    	vmul.f32	s10, s11, s10
    734a: eddf 5ae3    	vldr	s11, [pc, #908]         @ 0x76d8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6c8>
    734e: ee00 5a25    	vmla.f32	s10, s0, s11
    7352: eddf 5ae2    	vldr	s11, [pc, #904]         @ 0x76dc <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6cc>
    7356: ee35 0a0a    	vadd.f32	s0, s10, s20
    735a: ee10 4a10    	vmov	r4, s0
    735e: eeb0 5ac0    	vabs.f32	s10, s0
    7362: f024 4400    	bic	r4, r4, #0x80000000
    7366: eeb4 5a65    	vcmp.f32	s10, s11
    736a: f1b4 4fff    	cmp.w	r4, #0x7f800000
    736e: f04f 0400    	mov.w	r4, #0x0
    7372: bfa8         	it	ge
    7374: 2401         	movge	r4, #0x1
    7376: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    737a: bf48         	it	mi
    737c: 2501         	movmi	r5, #0x1
    737e: 432c         	orrs	r4, r5
    7380: f040 818a    	bne.w	0x7698 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x688> @ imm = #0x314
    7384: eeb1 4a44    	vneg.f32	s8, s8
    7388: eec4 ba00    	vdiv.f32	s23, s8, s0
    738c: ed9d 0a01    	vldr	s0, [sp, #4]
    7390: ed9f 4ad3    	vldr	s8, [pc, #844]          @ 0x76e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6d0>
    7394: eeb4 0a44    	vcmp.f32	s0, s8
    7398: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    739c: d90c         	bls	0x73b8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x3a8> @ imm = #0x18
    739e: f1b8 0f10    	cmp.w	r8, #0x10
    73a2: d12a         	bne	0x73fa <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x3ea> @ imm = #0x54
    73a4: e17c         	b	0x76a0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x690> @ imm = #0x2f8
    73a6: bf00         	nop
    73a8: d2 4e da 43  	.word	0x43da4ed2
    73ac: cd 1e 2c be  	.word	0xbe2c1ecd
    73b0: 19 d5 65 36  	.word	0x3665d519
    73b4: d0 6e 95 bf  	.word	0xbf956ed0
    73b8: eeb0 0acc    	vabs.f32	s0, s24
    73bc: ed9f 4ac9    	vldr	s8, [pc, #804]          @ 0x76e4 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6d4>
    73c0: eeb4 0a40    	vcmp.f32	s0, s0
    73c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    73c8: fe1a 0a00    	vselvs.f32	s0, s20, s0
    73cc: eeb4 0a4a    	vcmp.f32	s0, s20
    73d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    73d4: fe30 0a0a    	vselgt.f32	s0, s0, s20
    73d8: f1b8 0f10    	cmp.w	r8, #0x10
    73dc: ee20 0a04    	vmul.f32	s0, s0, s8
    73e0: ed9f 4ac1    	vldr	s8, [pc, #772]          @ 0x76e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6d8>
    73e4: fe80 0a44    	vminnm.f32	s0, s0, s8
    73e8: eeb0 4aeb    	vabs.f32	s8, s23
    73ec: bf1c         	itt	ne
    73ee: eeb4 4a40    	vcmpne.f32	s8, s0
    73f2: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    73f6: f240 8137    	bls.w	0x7668 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x658> @ imm = #0x26e
    73fa: f04f 557e    	mov.w	r5, #0x3f800000
    73fe: ed8d ea00    	vstr	s28, [sp]
    7402: e007         	b	0x7414 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x404> @ imm = #0xe
    7404: bf00         	nop
    7406: bf00         	nop
    7408: f5a5 0500    	sub.w	r5, r5, #0x800000
    740c: f1b5 5f66    	cmp.w	r5, #0x39800000
    7410: f000 810e    	beq.w	0x7630 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x620> @ imm = #0x21c
    7414: ee00 5a10    	vmov	s0, r5
    7418: eeb0 ea4c    	vmov.f32	s28, s24
    741c: ed9f fba8    	vldr	d15, [pc, #672]         @ 0x76c0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6b0>
    7420: eeb0 db41    	vmov.f64	d13, d1
    7424: eef0 ea46    	vmov.f32	s29, s12
    7428: ee0b ea80    	vmla.f32	s28, s23, s0
    742c: eef0 9a60    	vmov.f32	s19, s1
    7430: ed81 ea07    	vstr	s28, [r1, #28]
    7434: eeb7 5ace    	vcvt.f64.f32	d5, s28
    7438: ee4e 9a22    	vmla.f32	s19, s28, s5
    743c: ee05 db0f    	vmla.f64	d13, d5, d15
    7440: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    7444: ee40 ea07    	vmla.f32	s29, s0, s14
    7448: eeb4 2a6e    	vcmp.f32	s4, s29
    744c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7450: fe32 0a2e    	vselgt.f32	s0, s4, s29
    7454: eeb4 0a43    	vcmp.f32	s0, s6
    7458: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    745c: fe33 0a00    	vselgt.f32	s0, s6, s0
    7460: eeb0 4ac0    	vabs.f32	s8, s0
    7464: eeb4 4a63    	vcmp.f32	s8, s7
    7468: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    746c: dd30         	ble	0x74d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x4c0> @ imm = #0x60
    746e: ee83 da84    	vdiv.f32	s26, s7, s8
    7472: eeb0 5a4a    	vmov.f32	s10, s20
    7476: ee2d 4a0d    	vmul.f32	s8, s26, s26
    747a: ee24 4a04    	vmul.f32	s8, s8, s8
    747e: ee24 4a04    	vmul.f32	s8, s8, s8
    7482: ee64 da04    	vmul.f32	s27, s8, s8
    7486: ee3d 4a8a    	vadd.f32	s8, s27, s20
    748a: eeb4 4a4a    	vcmp.f32	s8, s20
    748e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7492: d009         	beq	0x74a8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x498> @ imm = #0x12
    7494: eeb1 4ac4    	vsqrt.f32	s8, s8
    7498: eeb1 4ac4    	vsqrt.f32	s8, s8
    749c: eeb1 4ac4    	vsqrt.f32	s8, s8
    74a0: eeb1 4ac4    	vsqrt.f32	s8, s8
    74a4: eeb0 5a44    	vmov.f32	s10, s8
    74a8: ee10 4a10    	vmov	r4, s0
    74ac: eeca 8a05    	vdiv.f32	s17, s20, s10
    74b0: f362 041e    	bfi	r4, r2, #0, #31
    74b4: ee04 4a10    	vmov	s8, r4
    74b8: ee24 4a23    	vmul.f32	s8, s8, s7
    74bc: ee64 fa28    	vmul.f32	s31, s8, s17
    74c0: e027         	b	0x7512 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x502> @ imm = #0x4e
    74c2: bf00         	nop
    74c4: 00 00 70 42  	.word	0x42700000
    74c8: 00 00 80 7f  	.word	0x7f800000
    74cc: 00 00 00 00  	.word	0x00000000
    74d0: ee80 da23    	vdiv.f32	s26, s0, s7
    74d4: eeb0 5a4a    	vmov.f32	s10, s20
    74d8: ee2d 4a0d    	vmul.f32	s8, s26, s26
    74dc: ee24 4a04    	vmul.f32	s8, s8, s8
    74e0: ee24 4a04    	vmul.f32	s8, s8, s8
    74e4: ee64 da04    	vmul.f32	s27, s8, s8
    74e8: ee3d 4a8a    	vadd.f32	s8, s27, s20
    74ec: eeb4 4a4a    	vcmp.f32	s8, s20
    74f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74f4: d009         	beq	0x750a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x4fa> @ imm = #0x12
    74f6: eeb1 4ac4    	vsqrt.f32	s8, s8
    74fa: eeb1 4ac4    	vsqrt.f32	s8, s8
    74fe: eeb1 4ac4    	vsqrt.f32	s8, s8
    7502: eeb1 4ac4    	vsqrt.f32	s8, s8
    7506: eeb0 5a44    	vmov.f32	s10, s8
    750a: eeca 8a05    	vdiv.f32	s17, s20, s10
    750e: ee60 fa28    	vmul.f32	s31, s0, s17
    7512: eeb0 4aef    	vabs.f32	s8, s31
    7516: eef0 5a4a    	vmov.f32	s11, s20
    751a: eeb0 5ae9    	vabs.f32	s10, s19
    751e: ee34 4ac4    	vsub.f32	s8, s9, s8
    7522: fe84 4a26    	vmaxnm.f32	s8, s8, s13
    7526: eec7 ca84    	vdiv.f32	s25, s15, s8
    752a: fe8c 4ac8    	vminnm.f32	s8, s25, s16
    752e: ee85 ba04    	vdiv.f32	s22, s10, s8
    7532: ee84 5a05    	vdiv.f32	s10, s8, s10
    7536: eeb4 ba4a    	vcmp.f32	s22, s20
    753a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    753e: fe35 4a0b    	vselgt.f32	s8, s10, s22
    7542: ee24 4a04    	vmul.f32	s8, s8, s8
    7546: ee24 4a04    	vmul.f32	s8, s8, s8
    754a: ee24 4a04    	vmul.f32	s8, s8, s8
    754e: ee64 aa04    	vmul.f32	s21, s8, s8
    7552: ee3a 4a8a    	vadd.f32	s8, s21, s20
    7556: eeb4 4a4a    	vcmp.f32	s8, s20
    755a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    755e: d009         	beq	0x7574 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x564> @ imm = #0x12
    7560: eeb1 4ac4    	vsqrt.f32	s8, s8
    7564: eeb1 4ac4    	vsqrt.f32	s8, s8
    7568: eeb1 4ac4    	vsqrt.f32	s8, s8
    756c: eeb1 4ac4    	vsqrt.f32	s8, s8
    7570: eef0 5a44    	vmov.f32	s11, s8
    7574: ee8a fa25    	vdiv.f32	s30, s20, s11
    7578: eeb4 ba4a    	vcmp.f32	s22, s20
    757c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7580: ee25 4a0f    	vmul.f32	s8, s10, s30
    7584: fe74 5a0f    	vselgt.f32	s11, s8, s30
    7588: eeb0 4a4e    	vmov.f32	s8, s28
    758c: ee0f 4ae5    	vmls.f32	s8, s31, s11
    7590: ee14 4a10    	vmov	r4, s8
    7594: f024 4400    	bic	r4, r4, #0x80000000
    7598: f1b4 4fff    	cmp.w	r4, #0x7f800000
    759c: f6bf af34    	bge.w	0x7408 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x3f8> @ imm = #-0x198
    75a0: eec4 5a24    	vdiv.f32	s11, s8, s9
    75a4: eeb0 9a48    	vmov.f32	s18, s16
    75a8: eeb0 8a66    	vmov.f32	s16, s13
    75ac: eef0 6a67    	vmov.f32	s13, s15
    75b0: eef0 7a62    	vmov.f32	s15, s5
    75b4: eef0 2a47    	vmov.f32	s5, s14
    75b8: eef0 5ae5    	vabs.f32	s11, s11
    75bc: ed9f 7a42    	vldr	s14, [pc, #264]         @ 0x76c8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6b8>
    75c0: fec5 5a87    	vmaxnm.f32	s11, s11, s14
    75c4: eeb0 7a62    	vmov.f32	s14, s5
    75c8: eef0 2a67    	vmov.f32	s5, s15
    75cc: eef0 7a66    	vmov.f32	s15, s13
    75d0: eef0 6a48    	vmov.f32	s13, s16
    75d4: eeb0 8a49    	vmov.f32	s16, s18
    75d8: ed9d 9a01    	vldr	s18, [sp, #4]
    75dc: eef4 5a49    	vcmp.f32	s11, s18
    75e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    75e4: f57f af10    	bpl.w	0x7408 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x3f8> @ imm = #-0x1e0
    75e8: eeb1 5a45    	vneg.f32	s10, s10
    75ec: eeb4 ba4a    	vcmp.f32	s22, s20
    75f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    75f4: fe75 ba0b    	vselgt.f32	s23, s10, s22
    75f8: f1b8 0f10    	cmp.w	r8, #0x10
    75fc: d00c         	beq	0x7618 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x608> @ imm = #0x18
    75fe: eeb0 ca4e    	vmov.f32	s24, s28
    7602: eeb0 ea40    	vmov.f32	s28, s0
    7606: f1be 0f10    	cmp.w	lr, #0x10
    760a: f10c 0c01    	add.w	r12, r12, #0x1
    760e: 46f0         	mov	r8, lr
    7610: edcd 5a01    	vstr	s11, [sp, #4]
    7614: f77f adfb    	ble.w	0x720e <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x1fe> @ imm = #-0x40a
    7618: f64d 3039    	movw	r0, #0xdb39
    761c: f64d 7238    	movw	r2, #0xdf38
    7620: f2c0 0000    	movt	r0, #0x0
    7624: f2c0 0200    	movt	r2, #0x0
    7628: 2128         	movs	r1, #0x28
    762a: f004 fc43    	bl	0xbeb4 <core::panicking::panic> @ imm = #0x4886
    762e: bf00         	nop
    7630: ed9d 0a01    	vldr	s0, [sp, #4]
    7634: ed9f 1a2a    	vldr	s2, [pc, #168]          @ 0x76e0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6d0>
    7638: f10c 0c01    	add.w	r12, r12, #0x1
    763c: eeb4 0a41    	vcmp.f32	s0, s2
    7640: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7644: ed81 ca07    	vstr	s24, [r1, #28]
    7648: f04f 0100    	mov.w	r1, #0x0
    764c: d809         	bhi	0x7662 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x652> @ imm = #0x12
    764e: eeb0 0aeb    	vabs.f32	s0, s23
    7652: ed9f 1a25    	vldr	s2, [pc, #148]          @ 0x76e8 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6d8>
    7656: eeb4 0a41    	vcmp.f32	s0, s2
    765a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    765e: bf98         	it	ls
    7660: 2101         	movls	r1, #0x1
    7662: ed9d ea00    	vldr	s28, [sp]
    7666: e006         	b	0x7676 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x666> @ imm = #0xc
    7668: 2100         	movs	r1, #0x0
    766a: eeb4 4a40    	vcmp.f32	s8, s0
    766e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7672: bf98         	it	ls
    7674: 2101         	movls	r1, #0x1
    7676: ed83 ea04    	vstr	s28, [r3, #16]
    767a: ed9d 0a01    	vldr	s0, [sp, #4]
    767e: ed80 0a00    	vstr	s0, [r0]
    7682: f880 c004    	strb.w	r12, [r0, #0x4]
    7686: 7141         	strb	r1, [r0, #0x5]
    7688: b006         	add	sp, #0x18
    768a: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    768e: f85d 8b04    	ldr	r8, [sp], #4
    7692: bdf0         	pop	{r4, r5, r6, r7, pc}
    7694: bf00         	nop
    7696: bf00         	nop
    7698: 2100         	movs	r1, #0x0
    769a: e7ee         	b	0x767a <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x66a> @ imm = #-0x24
    769c: bf00         	nop
    769e: bf00         	nop
    76a0: 2100         	movs	r1, #0x0
    76a2: e7e8         	b	0x7676 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x666> @ imm = #-0x30
    76a4: 00 00 c0 7f  	.word	0x7fc00000
    76a8: f64d 20a3    	movw	r0, #0xdaa3
    76ac: f64d 7248    	movw	r2, #0xdf48
    76b0: f2c0 0000    	movt	r0, #0x0
    76b4: f2c0 0200    	movt	r2, #0x0
    76b8: a902         	add	r1, sp, #0x8
    76ba: f004 fbf7    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0x47ee
    76be: bf00         	nop
    76c0: 19 d5 65 36  	.word	0x3665d519
    76c4: d0 6e 95 bf  	.word	0xbf956ed0
    76c8: 00 00 00 00  	.word	0x00000000
    76cc: d2 4e da c3  	.word	0xc3da4ed2
    76d0: 00 00 00 80  	.word	0x80000000
    76d4: cd 1e 2c 3e  	.word	0x3e2c1ecd
    76d8: 82 76 ab bc  	.word	0xbcab7682
    76dc: 08 e5 3c 1e  	.word	0x1e3ce508
    76e0: 17 b7 d1 38  	.word	0x38d1b717
    76e4: bd 37 06 36  	.word	0x360637bd
    76e8: ac c5 a7 37  	.word	0x37a7c5ac
    76ec: d4 d4 d4 d4  	.word	0xd4d4d4d4

000076f0 <__rustc::rust_begin_unwind>:
    76f0: b580         	push	{r7, lr}
    76f2: 466f         	mov	r7, sp
    76f4: bf00         	nop
    76f6: bf00         	nop
    76f8: bf10         	yield
    76fa: bf10         	yield
    76fc: bf10         	yield
    76fe: bf10         	yield
    7700: e7fa         	b	0x76f8 <__rustc::rust_begin_unwind+0x8> @ imm = #-0xc
    7702: d4d4         	bmi	0x76ae <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x69e> @ imm = #-0x58
    7704: d4d4         	bmi	0x76b0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6a0> @ imm = #-0x58
    7706: d4d4         	bmi	0x76b2 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>+0x6a2> @ imm = #-0x58

00007708 <ram_probe::packed_probe::control>:
    7708: b5f0         	push	{r4, r5, r6, r7, lr}
    770a: af03         	add	r7, sp, #0xc
    770c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    7710: b081         	sub	sp, #0x4
    7712: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    7716: f5ad 7d08    	sub.w	sp, sp, #0x220
    771a: eef6 aa00    	vmov.f32	s21, #5.000000e-01
    771e: ed91 1a08    	vldr	s2, [r1, #32]
    7722: ed91 2a24    	vldr	s4, [r1, #144]
    7726: ed91 3a09    	vldr	s6, [r1, #36]
    772a: ee31 1a01    	vadd.f32	s2, s2, s2
    772e: ed91 4a0a    	vldr	s8, [r1, #40]
    7732: ee02 1a6a    	vmls.f32	s2, s4, s21
    7736: ed91 5a0b    	vldr	s10, [r1, #44]
    773a: ee33 2a03    	vadd.f32	s4, s6, s6
    773e: ed91 3a25    	vldr	s6, [r1, #148]
    7742: ee03 2a6a    	vmls.f32	s4, s6, s21
    7746: ed91 6a30    	vldr	s12, [r1, #192]
    774a: ee34 3a04    	vadd.f32	s6, s8, s8
    774e: ed91 4a26    	vldr	s8, [r1, #152]
    7752: ee04 3a6a    	vmls.f32	s6, s8, s21
    7756: ed8d 1a1c    	vstr	s2, [sp, #112]
    775a: ee35 4a05    	vadd.f32	s8, s10, s10
    775e: ed91 5a27    	vldr	s10, [r1, #156]
    7762: ee05 4a6a    	vmls.f32	s8, s10, s21
    7766: ed8d 2a1d    	vstr	s4, [sp, #116]
    776a: ed91 1a0c    	vldr	s2, [r1, #48]
    776e: ed91 5a0f    	vldr	s10, [r1, #60]
    7772: ed91 2a28    	vldr	s4, [r1, #160]
    7776: ed8d 3a1e    	vstr	s6, [sp, #120]
    777a: ee31 1a01    	vadd.f32	s2, s2, s2
    777e: ed91 3a29    	vldr	s6, [r1, #164]
    7782: ee02 1a6a    	vmls.f32	s2, s4, s21
    7786: ed91 2a0d    	vldr	s4, [r1, #52]
    778a: ed8d 4a1f    	vstr	s8, [sp, #124]
    778e: ee32 2a02    	vadd.f32	s4, s4, s4
    7792: ee03 2a6a    	vmls.f32	s4, s6, s21
    7796: ed91 3a0e    	vldr	s6, [r1, #56]
    779a: ed91 4a2a    	vldr	s8, [r1, #168]
    779e: ee33 3a03    	vadd.f32	s6, s6, s6
    77a2: ee04 3a6a    	vmls.f32	s6, s8, s21
    77a6: ed8d 1a20    	vstr	s2, [sp, #128]
    77aa: ee35 4a05    	vadd.f32	s8, s10, s10
    77ae: ed91 5a2b    	vldr	s10, [r1, #172]
    77b2: ee05 4a6a    	vmls.f32	s8, s10, s21
    77b6: ed91 1a10    	vldr	s2, [r1, #64]
    77ba: ed8d 2a21    	vstr	s4, [sp, #132]
    77be: ed91 2a11    	vldr	s4, [r1, #68]
    77c2: ed8d 3a22    	vstr	s6, [sp, #136]
    77c6: ed91 3a2c    	vldr	s6, [r1, #176]
    77ca: ee31 1a01    	vadd.f32	s2, s2, s2
    77ce: ed91 5a2f    	vldr	s10, [r1, #188]
    77d2: ee03 1a6a    	vmls.f32	s2, s6, s21
    77d6: ed91 3a2d    	vldr	s6, [r1, #180]
    77da: ed8d 4a23    	vstr	s8, [sp, #140]
    77de: ee32 2a02    	vadd.f32	s4, s4, s4
    77e2: ee03 2a6a    	vmls.f32	s4, s6, s21
    77e6: ed91 3a12    	vldr	s6, [r1, #72]
    77ea: ed91 4a2e    	vldr	s8, [r1, #184]
    77ee: ee33 3a03    	vadd.f32	s6, s6, s6
    77f2: ee04 3a6a    	vmls.f32	s6, s8, s21
    77f6: ed91 4a13    	vldr	s8, [r1, #76]
    77fa: ee34 4a04    	vadd.f32	s8, s8, s8
    77fe: ed8d 1a24    	vstr	s2, [sp, #144]
    7802: ee05 4a6a    	vmls.f32	s8, s10, s21
    7806: ed8d 2a25    	vstr	s4, [sp, #148]
    780a: ed91 1a15    	vldr	s2, [r1, #84]
    780e: ed91 5a14    	vldr	s10, [r1, #80]
    7812: ed91 2a31    	vldr	s4, [r1, #196]
    7816: ed8d 3a26    	vstr	s6, [sp, #152]
    781a: ee31 1a01    	vadd.f32	s2, s2, s2
    781e: ed91 3a32    	vldr	s6, [r1, #200]
    7822: ee02 1a6a    	vmls.f32	s2, s4, s21
    7826: ed91 2a16    	vldr	s4, [r1, #88]
    782a: ed8d 4a27    	vstr	s8, [sp, #156]
    782e: ee32 2a02    	vadd.f32	s4, s4, s4
    7832: ee03 2a6a    	vmls.f32	s4, s6, s21
    7836: ed91 3a17    	vldr	s6, [r1, #92]
    783a: ed91 4a33    	vldr	s8, [r1, #204]
    783e: ee33 3a03    	vadd.f32	s6, s6, s6
    7842: ee04 3a6a    	vmls.f32	s6, s8, s21
    7846: ed8d 1a29    	vstr	s2, [sp, #164]
    784a: ee35 5a05    	vadd.f32	s10, s10, s10
    784e: ed91 1a1a    	vldr	s2, [r1, #104]
    7852: ee06 5a6a    	vmls.f32	s10, s12, s21
    7856: ed8d 2a2a    	vstr	s4, [sp, #168]
    785a: ed91 2a36    	vldr	s4, [r1, #216]
    785e: ee31 1a01    	vadd.f32	s2, s2, s2
    7862: ed8d 3a2b    	vstr	s6, [sp, #172]
    7866: ee02 1a6a    	vmls.f32	s2, s4, s21
    786a: ed91 2a1b    	vldr	s4, [r1, #108]
    786e: ed91 4a18    	vldr	s8, [r1, #96]
    7872: ed91 3a37    	vldr	s6, [r1, #220]
    7876: ee32 2a02    	vadd.f32	s4, s4, s4
    787a: ee03 2a6a    	vmls.f32	s4, s6, s21
    787e: ed8d 5a28    	vstr	s10, [sp, #160]
    7882: ed91 5a34    	vldr	s10, [r1, #208]
    7886: ee34 4a04    	vadd.f32	s8, s8, s8
    788a: ee05 4a6a    	vmls.f32	s8, s10, s21
    788e: ed91 5a19    	vldr	s10, [r1, #100]
    7892: ed91 6a35    	vldr	s12, [r1, #212]
    7896: ee35 5a05    	vadd.f32	s10, s10, s10
    789a: ee06 5a6a    	vmls.f32	s10, s12, s21
    789e: ed8d 1a2e    	vstr	s2, [sp, #184]
    78a2: ed8d 2a2f    	vstr	s4, [sp, #188]
    78a6: ed91 1a1f    	vldr	s2, [r1, #124]
    78aa: ed91 2a3b    	vldr	s4, [r1, #236]
    78ae: ee31 da01    	vadd.f32	s26, s2, s2
    78b2: ee02 da6a    	vmls.f32	s26, s4, s21
    78b6: ed91 1a20    	vldr	s2, [r1, #128]
    78ba: ed91 2a3c    	vldr	s4, [r1, #240]
    78be: ed8d 4a2c    	vstr	s8, [sp, #176]
    78c2: ed91 3a1c    	vldr	s6, [r1, #112]
    78c6: ee31 ca01    	vadd.f32	s24, s2, s2
    78ca: ed91 4a38    	vldr	s8, [r1, #224]
    78ce: ee02 ca6a    	vmls.f32	s24, s4, s21
    78d2: ed91 1a21    	vldr	s2, [r1, #132]
    78d6: ed8d 5a2d    	vstr	s10, [sp, #180]
    78da: ed91 2a3d    	vldr	s4, [r1, #244]
    78de: ee33 3a03    	vadd.f32	s6, s6, s6
    78e2: ee04 3a6a    	vmls.f32	s6, s8, s21
    78e6: ed91 4a1d    	vldr	s8, [r1, #116]
    78ea: ed91 5a39    	vldr	s10, [r1, #228]
    78ee: ee31 9a01    	vadd.f32	s18, s2, s2
    78f2: ee02 9a6a    	vmls.f32	s18, s4, s21
    78f6: ed91 1a22    	vldr	s2, [r1, #136]
    78fa: ed91 2a3e    	vldr	s4, [r1, #248]
    78fe: ee34 4a04    	vadd.f32	s8, s8, s8
    7902: ee05 4a6a    	vmls.f32	s8, s10, s21
    7906: ed91 5a1e    	vldr	s10, [r1, #120]
    790a: ed91 6a3a    	vldr	s12, [r1, #232]
    790e: ee31 aa01    	vadd.f32	s20, s2, s2
    7912: ee02 aa6a    	vmls.f32	s20, s4, s21
    7916: ed91 1a23    	vldr	s2, [r1, #140]
    791a: ed91 2a3f    	vldr	s4, [r1, #252]
    791e: ee35 5a05    	vadd.f32	s10, s10, s10
    7922: ee06 5a6a    	vmls.f32	s10, s12, s21
    7926: 460c         	mov	r4, r1
    7928: ee31 1a01    	vadd.f32	s2, s2, s2
    792c: 4683         	mov	r11, r0
    792e: ee02 1a6a    	vmls.f32	s2, s4, s21
    7932: a838         	add	r0, sp, #0xe0
    7934: a91c         	add	r1, sp, #0x70
    7936: ed8d 3a30    	vstr	s6, [sp, #192]
    793a: ed8d 4a31    	vstr	s8, [sp, #196]
    793e: eeb0 8a40    	vmov.f32	s16, s0
    7942: ed8d 5a32    	vstr	s10, [sp, #200]
    7946: ed8d da33    	vstr	s26, [sp, #204]
    794a: ed8d ca34    	vstr	s24, [sp, #208]
    794e: ed8d 9a35    	vstr	s18, [sp, #212]
    7952: ed8d aa36    	vstr	s20, [sp, #216]
    7956: ed8d 1a1b    	vstr	s2, [sp, #108]
    795a: ed8d 1a37    	vstr	s2, [sp, #220]
    795e: f7f8 ff9f    	bl	0x8a0 <orange_dsp::generated_packed::origin::<5>> @ imm = #-0x70c2
    7962: f50d 78ac    	add.w	r8, sp, #0x158
    7966: 4620         	mov	r0, r4
    7968: 4641         	mov	r1, r8
    796a: ed9f 2ada    	vldr	s4, [pc, #872]          @ 0x7cd4 <ram_probe::packed_probe::control+0x5cc>
    796e: c86c         	ldm	r0!, {r2, r3, r5, r6}
    7970: c16c         	stm	r1!, {r2, r3, r5, r6}
    7972: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
    7976: c16c         	stm	r1!, {r2, r3, r5, r6}
    7978: ed9d eb38    	vldr	d14, [sp, #224]
    797c: 2000         	movs	r0, #0x0
    797e: 905e         	str	r0, [sp, #0x178]
    7980: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0x7cc0 <ram_probe::packed_probe::control+0x5b8>
    7984: e9cd 0061    	strd	r0, r0, [sp, #388]
    7988: ee8e 0b00    	vdiv.f64	d0, d14, d0
    798c: e9cd 005f    	strd	r0, r0, [sp, #380]
    7990: eeb7 1bc0    	vcvt.f32.f64	s2, d0
    7994: ed8d 1a56    	vstr	s2, [sp, #344]
    7998: eeb0 0ac1    	vabs.f32	s0, s2
    799c: eeb4 0a42    	vcmp.f32	s0, s4
    79a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79a4: d838         	bhi	0x7a18 <ram_probe::packed_probe::control+0x310> @ imm = #0x70
    79a6: ed9f 3acc    	vldr	s6, [pc, #816]          @ 0x7cd8 <ram_probe::packed_probe::control+0x5d0>
    79aa: eeb7 2bce    	vcvt.f32.f64	s4, d14
    79ae: ee01 2a03    	vmla.f32	s4, s2, s6
    79b2: ee12 0a10    	vmov	r0, s4
    79b6: f020 4000    	bic	r0, r0, #0x80000000
    79ba: f1b0 4fff    	cmp.w	r0, #0x7f800000
    79be: da2b         	bge	0x7a18 <ram_probe::packed_probe::control+0x310> @ imm = #0x56
    79c0: eeb0 1ac2    	vabs.f32	s2, s4
    79c4: ed9f 4a3c    	vldr	s8, [pc, #240]          @ 0x7ab8 <ram_probe::packed_probe::control+0x3b0>
    79c8: ee81 1a04    	vdiv.f32	s2, s2, s8
    79cc: ed9f 4a3b    	vldr	s8, [pc, #236]          @ 0x7abc <ram_probe::packed_probe::control+0x3b4>
    79d0: eeb4 1a44    	vcmp.f32	s2, s8
    79d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79d8: d81e         	bhi	0x7a18 <ram_probe::packed_probe::control+0x310> @ imm = #0x3c
    79da: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    79de: eeb4 0a40    	vcmp.f32	s0, s0
    79e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79e6: ee82 2a03    	vdiv.f32	s4, s4, s6
    79ea: ed9f 3a35    	vldr	s6, [pc, #212]          @ 0x7ac0 <ram_probe::packed_probe::control+0x3b8>
    79ee: fe14 0a00    	vselvs.f32	s0, s8, s0
    79f2: eeb0 2ac2    	vabs.f32	s4, s4
    79f6: eeb4 0a44    	vcmp.f32	s0, s8
    79fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79fe: fe30 0a04    	vselgt.f32	s0, s0, s8
    7a02: ee20 0a03    	vmul.f32	s0, s0, s6
    7a06: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x7dcc <ram_probe::packed_probe::control+0x6c4>
    7a0a: fe80 0a43    	vminnm.f32	s0, s0, s6
    7a0e: eeb4 2a40    	vcmp.f32	s4, s0
    7a12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a16: d957         	bls	0x7ac8 <ram_probe::packed_probe::control+0x3c0> @ imm = #0xae
    7a18: 4620         	mov	r0, r4
    7a1a: 4641         	mov	r1, r8
    7a1c: eeb0 0b4e    	vmov.f64	d0, d14
    7a20: c86c         	ldm	r0!, {r2, r3, r5, r6}
    7a22: c16c         	stm	r1!, {r2, r3, r5, r6}
    7a24: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
    7a28: c16c         	stm	r1!, {r2, r3, r5, r6}
    7a2a: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    7a2e: 4641         	mov	r1, r8
    7a30: 3001         	adds	r0, #0x1
    7a32: f8c4 010c    	str.w	r0, [r4, #0x10c]
    7a36: a863         	add	r0, sp, #0x18c
    7a38: f7f9 f9de    	bl	0xdf8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>> @ imm = #-0x6c44
    7a3c: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    7a40: f89d 9190    	ldrb.w	r9, [sp, #0x190]
    7a44: b180         	cbz	r0, 0x7a68 <ram_probe::packed_probe::control+0x360> @ imm = #0x20
    7a46: ed9d 0a63    	vldr	s0, [sp, #396]
    7a4a: ed9f 1ae6    	vldr	s2, [pc, #920]          @ 0x7de4 <ram_probe::packed_probe::control+0x6dc>
    7a4e: eeb4 0a40    	vcmp.f32	s0, s0
    7a52: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a56: fe11 0a00    	vselvs.f32	s0, s2, s0
    7a5a: eeb5 0a40    	vcmp.f32	s0, #0
    7a5e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a62: fe70 da01    	vselgt.f32	s27, s0, s2
    7a66: e044         	b	0x7af2 <ram_probe::packed_probe::control+0x3ea> @ imm = #0x88
    7a68: eeb0 0b4e    	vmov.f64	d0, d14
    7a6c: a863         	add	r0, sp, #0x18c
    7a6e: a956         	add	r1, sp, #0x158
    7a70: 2600         	movs	r6, #0x0
    7a72: 9656         	str	r6, [sp, #0x158]
    7a74: f7f9 f9c0    	bl	0xdf8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>> @ imm = #-0x6c80
    7a78: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    7a7c: ed9d 0a63    	vldr	s0, [sp, #396]
    7a80: 3001         	adds	r0, #0x1
    7a82: eeb4 0a40    	vcmp.f32	s0, s0
    7a86: bf28         	it	hs
    7a88: f04f 30ff    	movhs.w	r0, #0xffffffff
    7a8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a90: ed9f 1ad4    	vldr	s2, [pc, #848]          @ 0x7de4 <ram_probe::packed_probe::control+0x6dc>
    7a94: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    7a98: fe11 2a00    	vselvs.f32	s4, s2, s0
    7a9c: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    7aa0: 4489         	add	r9, r1
    7aa2: f8c4 011c    	str.w	r0, [r4, #0x11c]
    7aa6: eeb5 2a40    	vcmp.f32	s4, #0
    7aaa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7aae: fe72 da01    	vselgt.f32	s27, s4, s2
    7ab2: b9f2         	cbnz	r2, 0x7af2 <ram_probe::packed_probe::control+0x3ea> @ imm = #0x3c
    7ab4: e27f         	b	0x7fb6 <ram_probe::packed_probe::control+0x8ae> @ imm = #0x4fe
    7ab6: bf00         	nop
    7ab8: 0a d7 23 3c  	.word	0x3c23d70a
    7abc: 17 b7 d1 38  	.word	0x38d1b717
    7ac0: bd 37 06 36  	.word	0x360637bd
    7ac4: 00 bf 00 bf  	.word	0xbf00bf00
    7ac8: eeb4 1a41    	vcmp.f32	s2, s2
    7acc: ed9f 0ac5    	vldr	s0, [pc, #788]          @ 0x7de4 <ram_probe::packed_probe::control+0x6dc>
    7ad0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ad4: f8d4 0100    	ldr.w	r0, [r4, #0x100]
    7ad8: f04f 0900    	mov.w	r9, #0x0
    7adc: fe10 1a01    	vselvs.f32	s2, s0, s2
    7ae0: 3001         	adds	r0, #0x1
    7ae2: f8c4 0100    	str.w	r0, [r4, #0x100]
    7ae6: eeb5 1a40    	vcmp.f32	s2, #0
    7aea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7aee: fe71 da00    	vselgt.f32	s27, s2, s0
    7af2: f50d 7cc6    	add.w	r12, sp, #0x18c
    7af6: 4642         	mov	r2, r8
    7af8: 4661         	mov	r1, r12
    7afa: eddf 9abb    	vldr	s19, [pc, #748]         @ 0x7de8 <ram_probe::packed_probe::control+0x6e0>
    7afe: ca69         	ldm	r2!, {r0, r3, r5, r6}
    7b00: c169         	stm	r1!, {r0, r3, r5, r6}
    7b02: e892 0069    	ldm.w	r2, {r0, r3, r5, r6}
    7b06: c169         	stm	r1!, {r0, r3, r5, r6}
    7b08: ed9d 0a56    	vldr	s0, [sp, #344]
    7b0c: eefa ca0b    	vmov.f32	s25, #-1.350000e+01
    7b10: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    7b14: ed9d 3a58    	vldr	s6, [sp, #352]
    7b18: ed9d eb48    	vldr	d14, [sp, #288]
    7b1c: eef2 ba0b    	vmov.f32	s23, #1.350000e+01
    7b20: ed9f 6ab2    	vldr	s12, [pc, #712]         @ 0x7dec <ram_probe::packed_probe::control+0x6e4>
    7b24: ed9f 2b6e    	vldr	d2, [pc, #440]          @ 0x7ce0 <ram_probe::packed_probe::control+0x5d8>
    7b28: eeb0 0b4e    	vmov.f64	d0, d14
    7b2c: ee01 0b02    	vmla.f64	d0, d1, d2
    7b30: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    7b34: ed9d 1a59    	vldr	s2, [sp, #356]
    7b38: ed9f 5b6b    	vldr	d5, [pc, #428]          @ 0x7ce8 <ram_probe::packed_probe::control+0x5e0>
    7b3c: ed9d 3a5a    	vldr	s6, [sp, #360]
    7b40: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    7b44: eeb0 4b40    	vmov.f64	d4, d0
    7b48: ee02 4b05    	vmla.f64	d4, d2, d5
    7b4c: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    7b50: ee01 4b05    	vmla.f64	d4, d1, d5
    7b54: ed9d 1a5b    	vldr	s2, [sp, #364]
    7b58: ee02 4b05    	vmla.f64	d4, d2, d5
    7b5c: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    7b60: ed9d 2a5c    	vldr	s4, [sp, #368]
    7b64: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    7b68: ed9f 3b61    	vldr	d3, [pc, #388]          @ 0x7cf0 <ram_probe::packed_probe::control+0x5e8>
    7b6c: ee01 4b05    	vmla.f64	d4, d1, d5
    7b70: ed9d 1a5d    	vldr	s2, [sp, #372]
    7b74: ee02 4b05    	vmla.f64	d4, d2, d5
    7b78: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    7b7c: ee2d 2a29    	vmul.f32	s4, s26, s19
    7b80: ee01 4b05    	vmla.f64	d4, d1, d5
    7b84: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    7b88: ee81 1b03    	vdiv.f64	d1, d1, d3
    7b8c: ed9f 3b5a    	vldr	d3, [pc, #360]          @ 0x7cf8 <ram_probe::packed_probe::control+0x5f0>
    7b90: ee04 1b03    	vmla.f64	d1, d4, d3
    7b94: ed9f 4aea    	vldr	s8, [pc, #936]          @ 0x7f40 <ram_probe::packed_probe::control+0x838>
    7b98: ed9f 3b59    	vldr	d3, [pc, #356]          @ 0x7d00 <ram_probe::packed_probe::control+0x5f8>
    7b9c: ee32 5a04    	vadd.f32	s10, s4, s8
    7ba0: ee81 1b03    	vdiv.f64	d1, d1, d3
    7ba4: ed9f 3ae7    	vldr	s6, [pc, #924]          @ 0x7f44 <ram_probe::packed_probe::control+0x83c>
    7ba8: ee32 3a03    	vadd.f32	s6, s4, s6
    7bac: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    7bb0: ee83 4a06    	vdiv.f32	s8, s6, s12
    7bb4: eef4 ca41    	vcmp.f32	s25, s2
    7bb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bbc: ee85 3a06    	vdiv.f32	s6, s10, s12
    7bc0: fe3c 1a81    	vselgt.f32	s2, s25, s2
    7bc4: eeb4 1a6b    	vcmp.f32	s2, s23
    7bc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bcc: eeb4 4a43    	vcmp.f32	s8, s6
    7bd0: fe3b 1a81    	vselgt.f32	s2, s23, s2
    7bd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bd8: ed8d 1a57    	vstr	s2, [sp, #348]
    7bdc: f201 867c    	bhi.w	0x98d8 <ram_probe::packed_probe::control+0x21d0> @ imm = #0x1cf8
    7be0: eeb7 5ac1    	vcvt.f64.f32	d5, s2
    7be4: 2100         	movs	r1, #0x0
    7be6: ed9f 6b48    	vldr	d6, [pc, #288]          @ 0x7d08 <ram_probe::packed_probe::control+0x600>
    7bea: 2000         	movs	r0, #0x0
    7bec: eef7 1a00    	vmov.f32	s3, #1.000000e+00
    7bf0: ee05 0b06    	vmla.f64	d0, d5, d6
    7bf4: ed9f 5ad4    	vldr	s10, [pc, #848]         @ 0x7f48 <ram_probe::packed_probe::control+0x840>
    7bf8: ed9d fb3a    	vldr	d15, [sp, #232]
    7bfc: ed9f 6ad3    	vldr	s12, [pc, #844]         @ 0x7f4c <ram_probe::packed_probe::control+0x844>
    7c00: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    7c04: ee20 5a05    	vmul.f32	s10, s0, s10
    7c08: ed9f 0ad1    	vldr	s0, [pc, #836]          @ 0x7f50 <ram_probe::packed_probe::control+0x848>
    7c0c: ee02 5a00    	vmla.f32	s10, s4, s0
    7c10: eeb7 2bcf    	vcvt.f32.f64	s4, d15
    7c14: ee01 2a06    	vmla.f32	s4, s2, s12
    7c18: eeb4 4a45    	vcmp.f32	s8, s10
    7c1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c20: eeb0 6ac2    	vabs.f32	s12, s4
    7c24: fe34 0a05    	vselgt.f32	s0, s8, s10
    7c28: eeb4 0a43    	vcmp.f32	s0, s6
    7c2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c30: eeb4 5a44    	vcmp.f32	s10, s8
    7c34: eebf 4a00    	vmov.f32	s8, #-1.000000e+00
    7c38: fe33 0a00    	vselgt.f32	s0, s6, s0
    7c3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c40: bfc8         	it	gt
    7c42: 2101         	movgt	r1, #0x1
    7c44: eeb4 5a43    	vcmp.f32	s10, s6
    7c48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c4c: eeb5 2a40    	vcmp.f32	s4, #0
    7c50: ed9f 2a64    	vldr	s4, [pc, #400]          @ 0x7de4 <ram_probe::packed_probe::control+0x6dc>
    7c54: eeb0 3a42    	vmov.f32	s6, s4
    7c58: eeb0 5a42    	vmov.f32	s10, s4
    7c5c: bf48         	it	mi
    7c5e: 2001         	movmi	r0, #0x1
    7c60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c64: bf48         	it	mi
    7c66: eeb0 3a44    	vmovmi.f32	s6, s8
    7c6a: eeb0 4a42    	vmov.f32	s8, s4
    7c6e: ea01 0100    	and.w	r1, r1, r0
    7c72: fe31 7a83    	vselgt.f32	s14, s3, s6
    7c76: ed9f 3ad5    	vldr	s6, [pc, #852]          @ 0x7fcc <ram_probe::packed_probe::control+0x8c4>
    7c7a: eeb4 6a43    	vcmp.f32	s12, s6
    7c7e: eeb0 3a42    	vmov.f32	s6, s4
    7c82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c86: f280 80de    	bge.w	0x7e46 <ram_probe::packed_probe::control+0x73e> @ imm = #0x1bc
    7c8a: ed9f 2ad1    	vldr	s4, [pc, #836]          @ 0x7fd0 <ram_probe::packed_probe::control+0x8c8>
    7c8e: eeb4 6a42    	vcmp.f32	s12, s4
    7c92: ed9f 3a54    	vldr	s6, [pc, #336]          @ 0x7de4 <ram_probe::packed_probe::control+0x6dc>
    7c96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c9a: d915         	bls	0x7cc8 <ram_probe::packed_probe::control+0x5c0> @ imm = #0x2a
    7c9c: ed9f 2acd    	vldr	s4, [pc, #820]          @ 0x7fd4 <ram_probe::packed_probe::control+0x8cc>
    7ca0: eeb4 6a42    	vcmp.f32	s12, s4
    7ca4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ca8: d932         	bls	0x7d10 <ram_probe::packed_probe::control+0x608> @ imm = #0x64
    7caa: ed9f 2acb    	vldr	s4, [pc, #812]          @ 0x7fd8 <ram_probe::packed_probe::control+0x8d0>
    7cae: ee36 4a02    	vadd.f32	s8, s12, s4
    7cb2: ed9f 5aee    	vldr	s10, [pc, #952]         @ 0x806c <ram_probe::packed_probe::control+0x964>
    7cb6: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    7cba: e031         	b	0x7d20 <ram_probe::packed_probe::control+0x618> @ imm = #0x62
    7cbc: bf00         	nop
    7cbe: bf00         	nop
    7cc0: 80 e5 70 28  	.word	0x2870e580
    7cc4: a1 3a 03 3f  	.word	0x3f033aa1
    7cc8: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    7ccc: eeb0 5a43    	vmov.f32	s10, s6
    7cd0: e02a         	b	0x7d28 <ram_probe::packed_probe::control+0x620> @ imm = #0x54
    7cd2: bf00         	nop
    7cd4: 93 18 36 41  	.word	0x41361893
    7cd8: 09 d5 19 b8  	.word	0xb819d509
    7cdc: 00 bf 00 bf  	.word	0xbf00bf00
    7ce0: a2 0c d2 2e  	.word	0x2ed20ca2
    7ce4: ca fe ef 3f  	.word	0x3feffeca
		...
    7cf0: a7 2a 45 4f  	.word	0x4f452aa7
    7cf4: ed 97 01 41  	.word	0x410197ed
    7cf8: 26 88 21 19  	.word	0x19218826
    7cfc: 2f cc 65 40  	.word	0x4065cc2f
    7d00: e7 0c 1b 48  	.word	0x481b0ce7
    7d04: 2d 35 17 40  	.word	0x4017352d
    7d08: 1f 89 9b cf  	.word	0xcf9b891f
    7d0c: ab 32 9c bf  	.word	0xbf9c32ab
    7d10: ed9f 2ad7    	vldr	s4, [pc, #860]          @ 0x8070 <ram_probe::packed_probe::control+0x968>
    7d14: ee36 4a02    	vadd.f32	s8, s12, s4
    7d18: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    7d1c: ed9f 5ad5    	vldr	s10, [pc, #852]         @ 0x8074 <ram_probe::packed_probe::control+0x96c>
    7d20: ee04 2a05    	vmla.f32	s4, s8, s10
    7d24: ee27 5a05    	vmul.f32	s10, s14, s10
    7d28: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    7d2c: ee34 2a42    	vsub.f32	s4, s8, s4
    7d30: fe82 4a03    	vmaxnm.f32	s8, s4, s6
    7d34: eeb1 2a45    	vneg.f32	s4, s10
    7d38: eeb5 4a40    	vcmp.f32	s8, #0
    7d3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d40: d946         	bls	0x7dd0 <ram_probe::packed_probe::control+0x6c8> @ imm = #0x8c
    7d42: eeb0 3ac0    	vabs.f32	s6, s0
    7d46: eeb4 3a44    	vcmp.f32	s6, s8
    7d4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d4e: d94f         	bls	0x7df0 <ram_probe::packed_probe::control+0x6e8> @ imm = #0x9e
    7d50: ee84 5a03    	vdiv.f32	s10, s8, s6
    7d54: ee25 3a05    	vmul.f32	s6, s10, s10
    7d58: ee23 3a03    	vmul.f32	s6, s6, s6
    7d5c: ee23 3a03    	vmul.f32	s6, s6, s6
    7d60: ee23 6a03    	vmul.f32	s12, s6, s6
    7d64: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    7d68: ee36 7a03    	vadd.f32	s14, s12, s6
    7d6c: eef0 0a43    	vmov.f32	s1, s6
    7d70: eeb4 7a43    	vcmp.f32	s14, s6
    7d74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d78: d009         	beq	0x7d8e <ram_probe::packed_probe::control+0x686> @ imm = #0x12
    7d7a: eef0 0a47    	vmov.f32	s1, s14
    7d7e: eef1 0ae0    	vsqrt.f32	s1, s1
    7d82: eef1 0ae0    	vsqrt.f32	s1, s1
    7d86: eef1 0ae0    	vsqrt.f32	s1, s1
    7d8a: eef1 0ae0    	vsqrt.f32	s1, s1
    7d8e: ee83 3a20    	vdiv.f32	s6, s6, s1
    7d92: eeb4 0a40    	vcmp.f32	s0, s0
    7d96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d9a: ee83 7a07    	vdiv.f32	s14, s6, s14
    7d9e: f181 8657    	bvs.w	0x9a50 <ram_probe::packed_probe::control+0x2348> @ imm = #0x1cae
    7da2: ee10 0a10    	vmov	r0, s0
    7da6: f04f 527e    	mov.w	r2, #0x3f800000
    7daa: f362 001e    	bfi	r0, r2, #0, #31
    7dae: ee00 0a90    	vmov	s1, r0
    7db2: ee20 4a84    	vmul.f32	s8, s1, s8
    7db6: ee24 3a03    	vmul.f32	s6, s8, s6
    7dba: ee20 4a87    	vmul.f32	s8, s1, s14
    7dbe: ee25 5a06    	vmul.f32	s10, s10, s12
    7dc2: ee25 5a07    	vmul.f32	s10, s10, s14
    7dc6: e03e         	b	0x7e46 <ram_probe::packed_probe::control+0x73e> @ imm = #0x7c
    7dc8: 17 b7 d1 38  	.word	0x38d1b717
    7dcc: ac c5 a7 37  	.word	0x37a7c5ac
    7dd0: eeb0 5a43    	vmov.f32	s10, s6
    7dd4: eeb0 4a43    	vmov.f32	s8, s6
    7dd8: e035         	b	0x7e46 <ram_probe::packed_probe::control+0x73e> @ imm = #0x6a
    7dda: bf00         	nop
    7ddc: bd 37 06 36  	.word	0x360637bd
    7de0: ac c5 a7 37  	.word	0x37a7c5ac
    7de4: 00 00 00 00  	.word	0x00000000
    7de8: 00 80 bb 47  	.word	0x47bb8000
    7dec: 00 a0 0c 48  	.word	0x480ca000
    7df0: ee80 3a04    	vdiv.f32	s6, s0, s8
    7df4: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    7df8: ee23 3a03    	vmul.f32	s6, s6, s6
    7dfc: eeb0 7a46    	vmov.f32	s14, s12
    7e00: ee23 3a03    	vmul.f32	s6, s6, s6
    7e04: ee23 3a03    	vmul.f32	s6, s6, s6
    7e08: ee23 3a03    	vmul.f32	s6, s6, s6
    7e0c: ee33 5a06    	vadd.f32	s10, s6, s12
    7e10: eeb4 5a46    	vcmp.f32	s10, s12
    7e14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e18: d009         	beq	0x7e2e <ram_probe::packed_probe::control+0x726> @ imm = #0x12
    7e1a: eeb0 7a45    	vmov.f32	s14, s10
    7e1e: eeb1 7ac7    	vsqrt.f32	s14, s14
    7e22: eeb1 7ac7    	vsqrt.f32	s14, s14
    7e26: eeb1 7ac7    	vsqrt.f32	s14, s14
    7e2a: eeb1 7ac7    	vsqrt.f32	s14, s14
    7e2e: ee86 6a07    	vdiv.f32	s12, s12, s14
    7e32: ee20 3a03    	vmul.f32	s6, s0, s6
    7e36: ee86 5a05    	vdiv.f32	s10, s12, s10
    7e3a: ee83 4a04    	vdiv.f32	s8, s6, s8
    7e3e: ee20 3a06    	vmul.f32	s6, s0, s12
    7e42: ee24 4a05    	vmul.f32	s8, s8, s10
    7e46: ee31 6a43    	vsub.f32	s12, s2, s6
    7e4a: 2900         	cmp	r1, #0x0
    7e4c: ed9f 7a8a    	vldr	s14, [pc, #552]         @ 0x8078 <ram_probe::packed_probe::control+0x970>
    7e50: ed9f 3a8a    	vldr	s6, [pc, #552]          @ 0x807c <ram_probe::packed_probe::control+0x974>
    7e54: ee16 0a10    	vmov	r0, s12
    7e58: fe03 7a07    	vseleq.f32	s14, s6, s14
    7e5c: f020 4000    	bic	r0, r0, #0x80000000
    7e60: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7e64: da3a         	bge	0x7edc <ram_probe::packed_probe::control+0x7d4> @ imm = #0x74
    7e66: eeb0 3ac6    	vabs.f32	s6, s12
    7e6a: eef2 0a0e    	vmov.f32	s1, #1.500000e+01
    7e6e: ee83 3a20    	vdiv.f32	s6, s6, s1
    7e72: ed5f 0a2b    	vldr	s1, [pc, #-172]         @ 0x7dc8 <ram_probe::packed_probe::control+0x6c0>
    7e76: eeb4 3a60    	vcmp.f32	s6, s1
    7e7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e7e: d82d         	bhi	0x7edc <ram_probe::packed_probe::control+0x7d4> @ imm = #0x5a
    7e80: ee27 5a05    	vmul.f32	s10, s14, s10
    7e84: eeb0 1ac1    	vabs.f32	s2, s2
    7e88: ee22 2a04    	vmul.f32	s4, s4, s8
    7e8c: ed9f 4a7c    	vldr	s8, [pc, #496]          @ 0x8080 <ram_probe::packed_probe::control+0x978>
    7e90: ee25 4a04    	vmul.f32	s8, s10, s8
    7e94: ed9f 5a7b    	vldr	s10, [pc, #492]         @ 0x8084 <ram_probe::packed_probe::control+0x97c>
    7e98: eeb4 1a41    	vcmp.f32	s2, s2
    7e9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ea0: ee02 4a05    	vmla.f32	s8, s4, s10
    7ea4: fe11 1a81    	vselvs.f32	s2, s3, s2
    7ea8: eeb4 1a61    	vcmp.f32	s2, s3
    7eac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7eb0: ee34 2a21    	vadd.f32	s4, s8, s3
    7eb4: ed1f 4a37    	vldr	s8, [pc, #-220]         @ 0x7ddc <ram_probe::packed_probe::control+0x6d4>
    7eb8: fe31 1a21    	vselgt.f32	s2, s2, s3
    7ebc: ee86 2a02    	vdiv.f32	s4, s12, s4
    7ec0: ee21 1a04    	vmul.f32	s2, s2, s8
    7ec4: ed1f 4a3a    	vldr	s8, [pc, #-232]         @ 0x7de0 <ram_probe::packed_probe::control+0x6d8>
    7ec8: eeb0 2ac2    	vabs.f32	s4, s4
    7ecc: fe81 1a44    	vminnm.f32	s2, s2, s8
    7ed0: eeb4 2a41    	vcmp.f32	s4, s2
    7ed4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ed8: f240 8082    	bls.w	0x7fe0 <ram_probe::packed_probe::control+0x8d8> @ imm = #0x104
    7edc: 4640         	mov	r0, r8
    7ede: eeb0 2a4d    	vmov.f32	s4, s26
    7ee2: e8bc 004e    	ldm.w	r12!, {r1, r2, r3, r6}
    7ee6: c04e         	stm	r0!, {r1, r2, r3, r6}
    7ee8: e89c 004e    	ldm.w	r12, {r1, r2, r3, r6}
    7eec: c04e         	stm	r0!, {r1, r2, r3, r6}
    7eee: eeb0 0b4f    	vmov.f64	d0, d15
    7ef2: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    7ef6: eeb0 1b4e    	vmov.f64	d1, d14
    7efa: 3001         	adds	r0, #0x1
    7efc: f8c4 010c    	str.w	r0, [r4, #0x10c]
    7f00: a863         	add	r0, sp, #0x18c
    7f02: aa5e         	add	r2, sp, #0x178
    7f04: 4641         	mov	r1, r8
    7f06: f7f9 f9cf    	bl	0x12a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>> @ imm = #-0x6c62
    7f0a: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    7f0e: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    7f12: 4489         	add	r9, r1
    7f14: b300         	cbz	r0, 0x7f58 <ram_probe::packed_probe::control+0x850> @ imm = #0x40
    7f16: eef4 da6d    	vcmp.f32	s27, s27
    7f1a: ed9d 0a63    	vldr	s0, [sp, #396]
    7f1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f22: eeb4 0a40    	vcmp.f32	s0, s0
    7f26: fe10 1a2d    	vselvs.f32	s2, s0, s27
    7f2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f2e: fe11 0a00    	vselvs.f32	s0, s2, s0
    7f32: eeb4 1a40    	vcmp.f32	s2, s0
    7f36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f3a: fe31 da00    	vselgt.f32	s26, s2, s0
    7f3e: e068         	b	0x8012 <ram_probe::packed_probe::control+0x90a> @ imm = #0xd0
    7f40: 00 24 74 4b  	.word	0x4b742400
    7f44: 00 24 74 cb  	.word	0xcb742400
    7f48: 79 61 2e 43  	.word	0x432e6179
    7f4c: ab aa a0 b8  	.word	0xb8a0aaab
    7f50: 50 d0 e8 36  	.word	0x36e8d050
    7f54: 00 bf 00 bf  	.word	0xbf00bf00
    7f58: eeb0 0b4f    	vmov.f64	d0, d15
    7f5c: a863         	add	r0, sp, #0x18c
    7f5e: eeb0 1b4e    	vmov.f64	d1, d14
    7f62: a956         	add	r1, sp, #0x158
    7f64: eeb0 2a4d    	vmov.f32	s4, s26
    7f68: aa5e         	add	r2, sp, #0x178
    7f6a: 2600         	movs	r6, #0x0
    7f6c: 9657         	str	r6, [sp, #0x15c]
    7f6e: f7f9 f99b    	bl	0x12a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>> @ imm = #-0x6cca
    7f72: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    7f76: eef4 da6d    	vcmp.f32	s27, s27
    7f7a: 3001         	adds	r0, #0x1
    7f7c: bf28         	it	hs
    7f7e: f04f 30ff    	movhs.w	r0, #0xffffffff
    7f82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f86: ed9d 0a63    	vldr	s0, [sp, #396]
    7f8a: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    7f8e: fe10 1a2d    	vselvs.f32	s2, s0, s27
    7f92: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    7f96: eeb4 0a40    	vcmp.f32	s0, s0
    7f9a: 4489         	add	r9, r1
    7f9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7fa0: f8c4 011c    	str.w	r0, [r4, #0x11c]
    7fa4: fe11 2a00    	vselvs.f32	s4, s2, s0
    7fa8: eeb4 1a42    	vcmp.f32	s2, s4
    7fac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7fb0: fe31 da02    	vselgt.f32	s26, s2, s4
    7fb4: bb6a         	cbnz	r2, 0x8012 <ram_probe::packed_probe::control+0x90a> @ imm = #0x5a
    7fb6: 69e0         	ldr	r0, [r4, #0x1c]
    7fb8: f8cb 0000    	str.w	r0, [r11]
    7fbc: ed8b 0a01    	vstr	s0, [r11, #4]
    7fc0: f88b 9008    	strb.w	r9, [r11, #0x8]
    7fc4: f88b 6009    	strb.w	r6, [r11, #0x9]
    7fc8: f001 bbc6    	b.w	0x9758 <ram_probe::packed_probe::control+0x2050> @ imm = #0x178c
    7fcc: 0a d7 23 3d  	.word	0x3d23d70a
    7fd0: 7c f2 b0 3a  	.word	0x3ab0f27c
    7fd4: a6 9b c4 3b  	.word	0x3bc49ba6
    7fd8: a6 9b c4 bb  	.word	0xbbc49ba6
    7fdc: 00 bf 00 bf  	.word	0xbf00bf00
    7fe0: eef4 da6d    	vcmp.f32	s27, s27
    7fe4: f8d4 0104    	ldr.w	r0, [r4, #0x104]
    7fe8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7fec: eeb4 3a43    	vcmp.f32	s6, s6
    7ff0: ed8d 0a5e    	vstr	s0, [sp, #376]
    7ff4: fe13 1a2d    	vselvs.f32	s2, s6, s27
    7ff8: 3001         	adds	r0, #0x1
    7ffa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ffe: f8c4 0104    	str.w	r0, [r4, #0x104]
    8002: fe11 2a03    	vselvs.f32	s4, s2, s6
    8006: eeb4 1a42    	vcmp.f32	s2, s4
    800a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    800e: fe31 da02    	vselgt.f32	s26, s2, s4
    8012: eeb0 0a4c    	vmov.f32	s0, s24
    8016: f50d 7ac6    	add.w	r10, sp, #0x18c
    801a: f50d 78ac    	add.w	r8, sp, #0x158
    801e: aa38         	add	r2, sp, #0xe0
    8020: ab5e         	add	r3, sp, #0x178
    8022: 4650         	mov	r0, r10
    8024: 4641         	mov	r1, r8
    8026: f7f9 fd33    	bl	0x1a90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>> @ imm = #-0x659a
    802a: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    802e: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8032: 2801         	cmp	r0, #0x1
    8034: 4489         	add	r9, r1
    8036: d16b         	bne	0x8110 <ram_probe::packed_probe::control+0xa08> @ imm = #0xd6
    8038: eeb4 da4d    	vcmp.f32	s26, s26
    803c: ed9d 0a63    	vldr	s0, [sp, #396]
    8040: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8044: eeb4 0a40    	vcmp.f32	s0, s0
    8048: ed8d 8a0b    	vstr	s16, [sp, #44]
    804c: fe10 1a0d    	vselvs.f32	s2, s0, s26
    8050: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8054: fe11 0a00    	vselvs.f32	s0, s2, s0
    8058: eeb4 1a40    	vcmp.f32	s2, s0
    805c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8060: fe31 0a00    	vselgt.f32	s0, s2, s0
    8064: ed8d 0a1a    	vstr	s0, [sp, #104]
    8068: e085         	b	0x8176 <ram_probe::packed_probe::control+0xa6e> @ imm = #0x10a
    806a: bf00         	nop
    806c: 79 78 b0 43  	.word	0x43b07879
    8070: 7c f2 b0 ba  	.word	0xbab0f27c
    8074: 53 4a a1 43  	.word	0x43a14a53
    8078: 79 61 2e c3  	.word	0xc32e6179
    807c: 00 00 00 80  	.word	0x80000000
    8080: 5e 95 e1 bc  	.word	0xbce1955e
    8084: ab aa a0 38  	.word	0x38a0aaab
		...
    8090: ab 14 f2 db  	.word	0xdbf214ab
    8094: ec cd d7 3f  	.word	0x3fd7cdec
    8098: c4 a9 9f 7b  	.word	0x7b9fa9c4
    809c: 67 dd c7 3f  	.word	0x3fc7dd67
    80a0: a7 2a 45 4f  	.word	0x4f452aa7
    80a4: ed 97 01 41  	.word	0x410197ed
    80a8: 26 88 21 19  	.word	0x19218826
    80ac: 2f cc 65 40  	.word	0x4065cc2f
    80b0: c6 e6 eb 5a  	.word	0x5aebe6c6
    80b4: d9 83 57 40  	.word	0x405783d9
    80b8: 15 be b6 e5  	.word	0xe5b6be15
    80bc: 6d 7e c0 3f  	.word	0x3fc07e6d
    80c0: 33 5a 1f 17  	.word	0x171f5a33
    80c4: c7 76 4c 40  	.word	0x404c76c7
    80c8: 39 0e ce cb  	.word	0xcbce0e39
    80cc: 33 25 73 3f  	.word	0x3f732533
    80d0: d2 ce fe 14  	.word	0x14feced2
    80d4: cf 45 20 3f  	.word	0x3f2045cf
    80d8: 68 26 52 13  	.word	0x13522668
    80dc: 2a 49 20 3f  	.word	0x3f20492a
    80e0: 10 43 9c 25  	.word	0x259c4310
    80e4: ca fc ef 3f  	.word	0x3feffcca
    80e8: c2 17 26 53  	.word	0x532617c2
    80ec: 05 a3 72 3f  	.word	0x3f72a305
    80f0: 44 1c 7f 14  	.word	0x147f1c44
    80f4: 5b ea cd be  	.word	0xbecdea5b
    80f8: 44 1c 7f 14  	.word	0x147f1c44
    80fc: 5b ea ad be  	.word	0xbeadea5b
    8100: d0 cf 74 ad  	.word	0xad74cfd0
    8104: 26 a1 82 3f  	.word	0x3f82a126
    8108: d0 cf 74 ad  	.word	0xad74cfd0
    810c: 26 a1 62 3f  	.word	0x3f62a126
    8110: eeb0 0a4c    	vmov.f32	s0, s24
    8114: a863         	add	r0, sp, #0x18c
    8116: a956         	add	r1, sp, #0x158
    8118: aa38         	add	r2, sp, #0xe0
    811a: ab5e         	add	r3, sp, #0x178
    811c: 2500         	movs	r5, #0x0
    811e: e9cd 5558    	strd	r5, r5, [sp, #352]
    8122: f7f9 fcb5    	bl	0x1a90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>> @ imm = #-0x6696
    8126: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    812a: eeb4 da4d    	vcmp.f32	s26, s26
    812e: 3001         	adds	r0, #0x1
    8130: bf28         	it	hs
    8132: f04f 30ff    	movhs.w	r0, #0xffffffff
    8136: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    813a: ed9d 0a63    	vldr	s0, [sp, #396]
    813e: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8142: fe10 1a0d    	vselvs.f32	s2, s0, s26
    8146: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    814a: eeb4 0a40    	vcmp.f32	s0, s0
    814e: 4489         	add	r9, r1
    8150: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8154: f8c4 011c    	str.w	r0, [r4, #0x11c]
    8158: fe11 2a00    	vselvs.f32	s4, s2, s0
    815c: eeb4 1a42    	vcmp.f32	s2, s4
    8160: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8164: fe31 1a02    	vselgt.f32	s2, s2, s4
    8168: 2a00         	cmp	r2, #0x0
    816a: f001 80fd    	beq.w	0x9368 <ram_probe::packed_probe::control+0x1c60> @ imm = #0x11fa
    816e: ed8d 1a1a    	vstr	s2, [sp, #104]
    8172: ed8d 8a0b    	vstr	s16, [sp, #44]
    8176: f50d 7cf4    	add.w	r12, sp, #0x1e8
    817a: 4641         	mov	r1, r8
    817c: 4662         	mov	r2, r12
    817e: c969         	ldm	r1!, {r0, r3, r5, r6}
    8180: c269         	stm	r2!, {r0, r3, r5, r6}
    8182: e891 0069    	ldm.w	r1, {r0, r3, r5, r6}
    8186: c269         	stm	r2!, {r0, r3, r5, r6}
    8188: ed9d 0a56    	vldr	s0, [sp, #344]
    818c: ed9d 1a57    	vldr	s2, [sp, #348]
    8190: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    8194: ed9d ba5c    	vldr	s22, [sp, #368]
    8198: ed1f 8b45    	vldr	d8, [pc, #-276]         @ 0x8088 <ram_probe::packed_probe::control+0x980>
    819c: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    81a0: ed8d 9a19    	vstr	s18, [sp, #100]
    81a4: ee20 0b08    	vmul.f64	d0, d0, d8
    81a8: eeb7 eacb    	vcvt.f64.f32	d14, s22
    81ac: ed9d ba5d    	vldr	s22, [sp, #372]
    81b0: ed9d 2b4c    	vldr	d2, [sp, #304]
    81b4: ed8d 2b16    	vstr	d2, [sp, #88]
    81b8: ee32 4b00    	vadd.f64	d4, d2, d0
    81bc: ee21 2b08    	vmul.f64	d2, d1, d8
    81c0: ed1f 5b4d    	vldr	d5, [pc, #-308]         @ 0x8090 <ram_probe::packed_probe::control+0x988>
    81c4: ee34 1b02    	vadd.f64	d1, d4, d2
    81c8: ed9d 4a58    	vldr	s8, [sp, #352]
    81cc: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    81d0: ed1f 6b4f    	vldr	d6, [pc, #-316]         @ 0x8098 <ram_probe::packed_probe::control+0x990>
    81d4: ee24 3b05    	vmul.f64	d3, d4, d5
    81d8: ed9d 5a59    	vldr	s10, [sp, #356]
    81dc: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    81e0: ee31 1b03    	vadd.f64	d1, d1, d3
    81e4: ee25 7b06    	vmul.f64	d7, d5, d6
    81e8: ed9d 6a5b    	vldr	s12, [sp, #364]
    81ec: eeb7 6ac6    	vcvt.f64.f32	d6, s12
    81f0: ee31 1b07    	vadd.f64	d1, d1, d7
    81f4: ee06 1b08    	vmla.f64	d1, d6, d8
    81f8: ee2e 6b08    	vmul.f64	d6, d14, d8
    81fc: eeb7 eacb    	vcvt.f64.f32	d14, s22
    8200: eeb0 ba69    	vmov.f32	s22, s19
    8204: ed8d 3b14    	vstr	d3, [sp, #80]
    8208: ee31 fb06    	vadd.f64	d15, d1, d6
    820c: ee69 1a29    	vmul.f32	s3, s18, s19
    8210: ee2e eb08    	vmul.f64	d14, d14, d8
    8214: eeb7 9ae1    	vcvt.f64.f32	d9, s3
    8218: ee3f fb0e    	vadd.f64	d15, d15, d14
    821c: ed1f 3b60    	vldr	d3, [pc, #-384]         @ 0x80a0 <ram_probe::packed_probe::control+0x998>
    8220: ed1f db5f    	vldr	d13, [pc, #-380]        @ 0x80a8 <ram_probe::packed_probe::control+0x9a0>
    8224: ee89 9b03    	vdiv.f64	d9, d9, d3
    8228: ee0f 9b0d    	vmla.f64	d9, d15, d13
    822c: ed1f fb60    	vldr	d15, [pc, #-384]        @ 0x80b0 <ram_probe::packed_probe::control+0x9a8>
    8230: ee89 9b0f    	vdiv.f64	d9, d9, d15
    8234: ed9d fb54    	vldr	d15, [sp, #336]
    8238: eeb7 1bc9    	vcvt.f32.f64	s2, d9
    823c: ed9d 9b4e    	vldr	d9, [sp, #312]
    8240: eef4 ca41    	vcmp.f32	s25, s2
    8244: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8248: ee30 0b09    	vadd.f64	d0, d0, d9
    824c: fe3c 1a81    	vselgt.f32	s2, s25, s2
    8250: ed8d 9b10    	vstr	d9, [sp, #64]
    8254: eeb4 1a6b    	vcmp.f32	s2, s23
    8258: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    825c: ee32 2b00    	vadd.f64	d2, d2, d0
    8260: fe3b 0a81    	vselgt.f32	s0, s23, s2
    8264: ee04 2b08    	vmla.f64	d2, d4, d8
    8268: ee6a 0a0b    	vmul.f32	s1, s20, s22
    826c: ed8d 0a18    	vstr	s0, [sp, #96]
    8270: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    8274: ed8d 0a5a    	vstr	s0, [sp, #360]
    8278: ee05 2b08    	vmla.f64	d2, d5, d8
    827c: ed1f 5b72    	vldr	d5, [pc, #-456]         @ 0x80b8 <ram_probe::packed_probe::control+0x9b0>
    8280: ee24 5b05    	vmul.f64	d5, d4, d5
    8284: ed8d 5b0e    	vstr	d5, [sp, #56]
    8288: ee32 2b45    	vsub.f64	d2, d2, d5
    828c: eeb7 5ae0    	vcvt.f64.f32	d5, s1
    8290: ed9d 9b52    	vldr	d9, [sp, #328]
    8294: ee36 2b02    	vadd.f64	d2, d6, d2
    8298: ee85 5b03    	vdiv.f64	d5, d5, d3
    829c: ee3e 2b02    	vadd.f64	d2, d14, d2
    82a0: ed9d eb44    	vldr	d14, [sp, #272]
    82a4: ee02 5b0d    	vmla.f64	d5, d2, d13
    82a8: ed1f 2b7b    	vldr	d2, [pc, #-492]         @ 0x80c0 <ram_probe::packed_probe::control+0x9b8>
    82ac: ee85 2b02    	vdiv.f64	d2, d5, d2
    82b0: eddf 5ae8    	vldr	s11, [pc, #928]         @ 0x8654 <ram_probe::packed_probe::control+0xf4c>
    82b4: ed8d eb12    	vstr	d14, [sp, #72]
    82b8: eeb7 1bc2    	vcvt.f32.f64	s2, d2
    82bc: ed1f 2b7e    	vldr	d2, [pc, #-504]         @ 0x80c8 <ram_probe::packed_probe::control+0x9c0>
    82c0: eef4 ca41    	vcmp.f32	s25, s2
    82c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82c8: eeb7 5bc9    	vcvt.f32.f64	s10, d9
    82cc: fe3c 1a81    	vselgt.f32	s2, s25, s2
    82d0: eef7 6bcf    	vcvt.f32.f64	s13, d15
    82d4: eeb4 1a6b    	vcmp.f32	s2, s23
    82d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82dc: fe3b 1a81    	vselgt.f32	s2, s23, s2
    82e0: ed1f bb85    	vldr	d11, [pc, #-532]        @ 0x80d0 <ram_probe::packed_probe::control+0x9c8>
    82e4: ed8d 1a5b    	vstr	s2, [sp, #364]
    82e8: eeb7 3ac1    	vcvt.f64.f32	d3, s2
    82ec: ee21 6a25    	vmul.f32	s12, s2, s11
    82f0: ee03 eb0b    	vmla.f64	d14, d3, d11
    82f4: ee36 5a05    	vadd.f32	s10, s12, s10
    82f8: ee36 6a26    	vadd.f32	s12, s12, s13
    82fc: eddf 6ad6    	vldr	s13, [pc, #856]         @ 0x8658 <ram_probe::packed_probe::control+0xf50>
    8300: ee8e 2b02    	vdiv.f64	d2, d14, d2
    8304: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    8308: eef0 2a46    	vmov.f32	s5, s12
    830c: ee42 2a65    	vmls.f32	s5, s4, s11
    8310: eef0 5a45    	vmov.f32	s11, s10
    8314: ee42 5a26    	vmla.f32	s11, s4, s13
    8318: fec5 2ae2    	vminnm.f32	s5, s11, s5
    831c: eef4 2a6a    	vcmp.f32	s5, s21
    8320: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8324: f240 80f8    	bls.w	0x8518 <ram_probe::packed_probe::control+0xe10> @ imm = #0x1f0
    8328: ed1f 2b95    	vldr	d2, [pc, #-596]         @ 0x80d8 <ram_probe::packed_probe::control+0x9d0>
    832c: eddf 5acb    	vldr	s11, [pc, #812]         @ 0x865c <ram_probe::packed_probe::control+0xf54>
    8330: ee8e 2b02    	vdiv.f64	d2, d14, d2
    8334: ed9f caca    	vldr	s24, [pc, #808]         @ 0x8660 <ram_probe::packed_probe::control+0xf58>
    8338: ed9f 0aca    	vldr	s0, [pc, #808]          @ 0x8664 <ram_probe::packed_probe::control+0xf5c>
    833c: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    8340: eef0 2a45    	vmov.f32	s5, s10
    8344: ed9f 8ac8    	vldr	s16, [pc, #800]         @ 0x8668 <ram_probe::packed_probe::control+0xf60>
    8348: ee42 2a26    	vmla.f32	s5, s4, s13
    834c: eef0 6a46    	vmov.f32	s13, s12
    8350: ee42 6a25    	vmla.f32	s13, s4, s11
    8354: fec2 2ae6    	vminnm.f32	s5, s5, s13
    8358: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    835c: ee7a 2ae2    	vsub.f32	s5, s21, s5
    8360: fec2 2acc    	vminnm.f32	s5, s5, s24
    8364: eeb0 ca66    	vmov.f32	s24, s13
    8368: ee02 caaa    	vmla.f32	s24, s5, s21
    836c: ee6c 2a00    	vmul.f32	s5, s24, s0
    8370: eef4 2a48    	vcmp.f32	s5, s16
    8374: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8378: f240 80ce    	bls.w	0x8518 <ram_probe::packed_probe::control+0xe10> @ imm = #0x19c
    837c: ed1f 2ba8    	vldr	d2, [pc, #-672]         @ 0x80e0 <ram_probe::packed_probe::control+0x9d8>
    8380: eeb6 cb00    	vmov.f64	d12, #5.000000e-01
    8384: eeb7 8b00    	vmov.f64	d8, #1.000000e+00
    8388: ee23 2b02    	vmul.f64	d2, d3, d2
    838c: eeb0 db42    	vmov.f64	d13, d2
    8390: ee39 2b02    	vadd.f64	d2, d9, d2
    8394: eeb0 9b48    	vmov.f64	d9, d8
    8398: ee3c 2b42    	vsub.f64	d2, d12, d2
    839c: ee02 9b0c    	vmla.f64	d9, d2, d12
    83a0: eeb0 cb4b    	vmov.f64	d12, d11
    83a4: ed1f 2bb0    	vldr	d2, [pc, #-704]         @ 0x80e8 <ram_probe::packed_probe::control+0x9e0>
    83a8: ee09 cb02    	vmla.f64	d12, d9, d2
    83ac: ed1f 2bb0    	vldr	d2, [pc, #-704]         @ 0x80f0 <ram_probe::packed_probe::control+0x9e8>
    83b0: ee2e 2b02    	vmul.f64	d2, d14, d2
    83b4: ee0c 2b0c    	vmla.f64	d2, d12, d12
    83b8: eeb1 9b4e    	vneg.f64	d9, d14
    83bc: eeb5 2b40    	vcmp.f64	d2, #0
    83c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83c4: ed8d 9b0c    	vstr	d9, [sp, #48]
    83c8: d42a         	bmi	0x8420 <ram_probe::packed_probe::control+0xd18> @ imm = #0x54
    83ca: ec51 0b1c    	vmov	r0, r1, d12
    83ce: eeb1 2bc2    	vsqrt.f64	d2, d2
    83d2: ec52 0b12    	vmov	r0, r2, d2
    83d6: 0fc9         	lsrs	r1, r1, #0x1f
    83d8: eebe 9b00    	vmov.f64	d9, #-5.000000e-01
    83dc: f361 72df    	bfi	r2, r1, #31, #1
    83e0: ec42 0b12    	vmov	d2, r0, r2
    83e4: ee3c 2b02    	vadd.f64	d2, d12, d2
    83e8: ee22 9b09    	vmul.f64	d9, d2, d9
    83ec: ed1f 2bbe    	vldr	d2, [pc, #-760]         @ 0x80f8 <ram_probe::packed_probe::control+0x9f0>
    83f0: ee89 2b02    	vdiv.f64	d2, d9, d2
    83f4: ec51 0b12    	vmov	r0, r1, d2
    83f8: f021 4000    	bic	r0, r1, #0x80000000
    83fc: f64f 71ff    	movw	r1, #0xffff
    8400: f6c7 71ef    	movt	r1, #0x7fef
    8404: 4288         	cmp	r0, r1
    8406: f341 81af    	ble.w	0x9768 <ram_probe::packed_probe::control+0x2060> @ imm = #0x135e
    840a: ed9d 2b0c    	vldr	d2, [sp, #48]
    840e: ee82 2b09    	vdiv.f64	d2, d2, d9
    8412: ec52 0b12    	vmov	r0, r2, d2
    8416: f022 4000    	bic	r0, r2, #0x80000000
    841a: 4288         	cmp	r0, r1
    841c: f341 8220    	ble.w	0x9860 <ram_probe::packed_probe::control+0x2158> @ imm = #0x1440
    8420: ee3f 2b0d    	vadd.f64	d2, d15, d13
    8424: eeb6 9b00    	vmov.f64	d9, #5.000000e-01
    8428: ee39 2b42    	vsub.f64	d2, d9, d2
    842c: ee02 8b09    	vmla.f64	d8, d2, d9
    8430: ed1f 2bd3    	vldr	d2, [pc, #-844]         @ 0x80e8 <ram_probe::packed_probe::control+0x9e0>
    8434: ee08 bb02    	vmla.f64	d11, d8, d2
    8438: ed1f 8bcf    	vldr	d8, [pc, #-828]         @ 0x8100 <ram_probe::packed_probe::control+0x9f8>
    843c: ee2b 2b0b    	vmul.f64	d2, d11, d11
    8440: ee0e 2b08    	vmla.f64	d2, d14, d8
    8444: eeb5 2b40    	vcmp.f64	d2, #0
    8448: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    844c: f100 8430    	bmi.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x860
    8450: ec51 0b1b    	vmov	r0, r1, d11
    8454: eeb1 2bc2    	vsqrt.f64	d2, d2
    8458: ec52 0b12    	vmov	r0, r2, d2
    845c: 0fc9         	lsrs	r1, r1, #0x1f
    845e: eebe 8b00    	vmov.f64	d8, #-5.000000e-01
    8462: f361 72df    	bfi	r2, r1, #31, #1
    8466: ec42 0b12    	vmov	d2, r0, r2
    846a: ee3b 2b02    	vadd.f64	d2, d11, d2
    846e: ee22 9b08    	vmul.f64	d9, d2, d8
    8472: ed1f 2bdb    	vldr	d2, [pc, #-876]         @ 0x8108 <ram_probe::packed_probe::control+0xa00>
    8476: ee89 2b02    	vdiv.f64	d2, d9, d2
    847a: ec51 0b12    	vmov	r0, r1, d2
    847e: f021 4000    	bic	r0, r1, #0x80000000
    8482: f64f 71ff    	movw	r1, #0xffff
    8486: f6c7 71ef    	movt	r1, #0x7fef
    848a: 4288         	cmp	r0, r1
    848c: f341 81ac    	ble.w	0x97e8 <ram_probe::packed_probe::control+0x20e0> @ imm = #0x1358
    8490: ed9d 2b0c    	vldr	d2, [sp, #48]
    8494: ee82 2b09    	vdiv.f64	d2, d2, d9
    8498: ec52 0b12    	vmov	r0, r2, d2
    849c: f022 4000    	bic	r0, r2, #0x80000000
    84a0: 4288         	cmp	r0, r1
    84a2: f300 8405    	bgt.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x80a
    84a6: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    84aa: eef0 2a46    	vmov.f32	s5, s12
    84ae: eeb0 9a45    	vmov.f32	s18, s10
    84b2: eeb8 8a00    	vmov.f32	s16, #-2.000000e+00
    84b6: ed8d 2a5c    	vstr	s4, [sp, #368]
    84ba: ee42 2a25    	vmla.f32	s5, s4, s11
    84be: eef0 5a40    	vmov.f32	s11, s0
    84c2: ed9f 0a65    	vldr	s0, [pc, #404]          @ 0x8658 <ram_probe::packed_probe::control+0xf50>
    84c6: ee02 9a00    	vmla.f32	s18, s4, s0
    84ca: eeb0 0a65    	vmov.f32	s0, s11
    84ce: fec9 5a62    	vminnm.f32	s11, s18, s5
    84d2: ee7a 5ae5    	vsub.f32	s11, s21, s11
    84d6: eef4 5a48    	vcmp.f32	s11, s16
    84da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84de: f340 83e7    	ble.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x7ce
    84e2: eef4 2a49    	vcmp.f32	s5, s18
    84e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84ea: f200 83e1    	bhi.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x7c2
    84ee: eef5 5a40    	vcmp.f32	s11, #0
    84f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84f6: f140 83db    	bpl.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x7b6
    84fa: ee45 6aaa    	vmla.f32	s13, s11, s21
    84fe: ee66 2a80    	vmul.f32	s5, s13, s0
    8502: ed9f 0a59    	vldr	s0, [pc, #356]          @ 0x8668 <ram_probe::packed_probe::control+0xf60>
    8506: eef4 2a40    	vcmp.f32	s5, s0
    850a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    850e: dc05         	bgt	0x851c <ram_probe::packed_probe::control+0xe14> @ imm = #0xa
    8510: e3ce         	b	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #0x79c
    8512: bf00         	nop
    8514: bf00         	nop
    8516: bf00         	nop
    8518: ed8d 2a5c    	vstr	s4, [sp, #368]
    851c: ed9f 8a85    	vldr	s16, [pc, #532]         @ 0x8734 <ram_probe::packed_probe::control+0x102c>
    8520: ed9f ba85    	vldr	s22, [pc, #532]         @ 0x8738 <ram_probe::packed_probe::control+0x1030>
    8524: ee71 2a88    	vadd.f32	s5, s3, s16
    8528: ee71 6a8b    	vadd.f32	s13, s3, s22
    852c: ed9f 0aee    	vldr	s0, [pc, #952]          @ 0x88e8 <ram_probe::packed_probe::control+0x11e0>
    8530: eec2 5a80    	vdiv.f32	s11, s5, s0
    8534: eec6 2a80    	vdiv.f32	s5, s13, s0
    8538: eef4 5a62    	vcmp.f32	s11, s5
    853c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8540: f201 81d6    	bhi.w	0x98f0 <ram_probe::packed_probe::control+0x21e8> @ imm = #0x13ac
    8544: ed8d 3b0c    	vstr	d3, [sp, #48]
    8548: eddf caec    	vldr	s25, [pc, #944]         @ 0x88fc <ram_probe::packed_probe::control+0x11f4>
    854c: ed9d da18    	vldr	s26, [sp, #96]
    8550: ed9d 3b16    	vldr	d3, [sp, #88]
    8554: 2000         	movs	r0, #0x0
    8556: 2100         	movs	r1, #0x0
    8558: ed9d 9b14    	vldr	d9, [sp, #80]
    855c: ed9f fae8    	vldr	s30, [pc, #928]         @ 0x8900 <ram_probe::packed_probe::control+0x11f8>
    8560: ee33 3b09    	vadd.f64	d3, d3, d9
    8564: eddf 9ae7    	vldr	s19, [pc, #924]         @ 0x8904 <ram_probe::packed_probe::control+0x11fc>
    8568: eddf fae7    	vldr	s31, [pc, #924]         @ 0x8908 <ram_probe::packed_probe::control+0x1200>
    856c: ee33 3b07    	vadd.f64	d3, d3, d7
    8570: eddf dae6    	vldr	s27, [pc, #920]         @ 0x890c <ram_probe::packed_probe::control+0x1204>
    8574: ed9f 7b90    	vldr	d7, [pc, #576]          @ 0x87b8 <ram_probe::packed_probe::control+0x10b0>
    8578: ee04 3b07    	vmla.f64	d3, d4, d7
    857c: ed9f 4ae4    	vldr	s8, [pc, #912]          @ 0x8910 <ram_probe::packed_probe::control+0x1208>
    8580: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    8584: ee23 7a29    	vmul.f32	s14, s6, s19
    8588: ee01 7aac    	vmla.f32	s14, s3, s25
    858c: ed9d 3b40    	vldr	d3, [sp, #256]
    8590: eef7 1bc3    	vcvt.f32.f64	s3, d3
    8594: ee4d 1a04    	vmla.f32	s3, s26, s8
    8598: ed9f 4ade    	vldr	s8, [pc, #888]          @ 0x8914 <ram_probe::packed_probe::control+0x120c>
    859c: eef4 5a47    	vcmp.f32	s11, s14
    85a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85a4: ee41 1a04    	vmla.f32	s3, s2, s8
    85a8: fe35 3a87    	vselgt.f32	s6, s11, s14
    85ac: eeb4 3a62    	vcmp.f32	s6, s5
    85b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85b4: eeb4 7a65    	vcmp.f32	s14, s11
    85b8: fe72 8a83    	vselgt.f32	s17, s5, s6
    85bc: eebf 3a00    	vmov.f32	s6, #-1.000000e+00
    85c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85c4: eeb4 7a62    	vcmp.f32	s14, s5
    85c8: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    85cc: bfc8         	it	gt
    85ce: 2001         	movgt	r0, #0x1
    85d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85d4: eef5 1a40    	vcmp.f32	s3, #0
    85d8: eef0 6ae1    	vabs.f32	s13, s3
    85dc: eddf 1a20    	vldr	s3, [pc, #128]          @ 0x8660 <ram_probe::packed_probe::control+0xf58>
    85e0: eeb0 7a61    	vmov.f32	s14, s3
    85e4: eef0 5a61    	vmov.f32	s11, s3
    85e8: bf48         	it	mi
    85ea: 2101         	movmi	r1, #0x1
    85ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85f0: bf48         	it	mi
    85f2: eeb0 7a43    	vmovmi.f32	s14, s6
    85f6: eef0 4a61    	vmov.f32	s9, s3
    85fa: eef4 6a4f    	vcmp.f32	s13, s30
    85fe: fe72 3a87    	vselgt.f32	s7, s5, s14
    8602: eeb0 7a61    	vmov.f32	s14, s3
    8606: eef0 2a61    	vmov.f32	s5, s3
    860a: 4001         	ands	r1, r0
    860c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8610: f280 80c1    	bge.w	0x8796 <ram_probe::packed_probe::control+0x108e> @ imm = #0x182
    8614: ed9f 7ac0    	vldr	s14, [pc, #768]         @ 0x8918 <ram_probe::packed_probe::control+0x1210>
    8618: eef4 6a47    	vcmp.f32	s13, s14
    861c: eddf 2a10    	vldr	s5, [pc, #64]           @ 0x8660 <ram_probe::packed_probe::control+0xf58>
    8620: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8624: d910         	bls	0x8648 <ram_probe::packed_probe::control+0xf40> @ imm = #0x20
    8626: ed9f 7abd    	vldr	s14, [pc, #756]         @ 0x891c <ram_probe::packed_probe::control+0x1214>
    862a: eef4 6a47    	vcmp.f32	s13, s14
    862e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8632: d91d         	bls	0x8670 <ram_probe::packed_probe::control+0xf68> @ imm = #0x3a
    8634: ed9f 7ae8    	vldr	s14, [pc, #928]         @ 0x89d8 <ram_probe::packed_probe::control+0x12d0>
    8638: ee76 4a87    	vadd.f32	s9, s13, s14
    863c: eddf 5ae7    	vldr	s11, [pc, #924]         @ 0x89dc <ram_probe::packed_probe::control+0x12d4>
    8640: eeb0 7a08    	vmov.f32	s14, #3.000000e+00
    8644: e01c         	b	0x8680 <ram_probe::packed_probe::control+0xf78> @ imm = #0x38
    8646: bf00         	nop
    8648: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    864c: eef0 4a62    	vmov.f32	s9, s5
    8650: e01a         	b	0x8688 <ram_probe::packed_probe::control+0xf80> @ imm = #0x34
    8652: bf00         	nop
    8654: 51 e6 7f 3f  	.word	0x3f7fe651
    8658: 99 76 cd 39  	.word	0x39cd7699
    865c: 51 e6 7f bf  	.word	0xbf7fe651
    8660: 00 00 00 00  	.word	0x00000000
    8664: 2b 18 95 3b  	.word	0x3b95182b
    8668: 95 bf d6 33  	.word	0x33d6bf95
    866c: 00 bf 00 bf  	.word	0xbf00bf00
    8670: ed9f 7ae0    	vldr	s14, [pc, #896]         @ 0x89f4 <ram_probe::packed_probe::control+0x12ec>
    8674: ee76 4a87    	vadd.f32	s9, s13, s14
    8678: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    867c: eddf 5ade    	vldr	s11, [pc, #888]         @ 0x89f8 <ram_probe::packed_probe::control+0x12f0>
    8680: ee04 7aa5    	vmla.f32	s14, s9, s11
    8684: ee63 4aa5    	vmul.f32	s9, s7, s11
    8688: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    868c: ee33 7ac7    	vsub.f32	s14, s7, s14
    8690: fec7 3a22    	vmaxnm.f32	s7, s14, s5
    8694: eeb1 7a64    	vneg.f32	s14, s9
    8698: eef5 3a40    	vcmp.f32	s7, #0
    869c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86a0: d942         	bls	0x8728 <ram_probe::packed_probe::control+0x1020> @ imm = #0x84
    86a2: eef0 2ae8    	vabs.f32	s5, s17
    86a6: eef4 2a63    	vcmp.f32	s5, s7
    86aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86ae: d947         	bls	0x8740 <ram_probe::packed_probe::control+0x1038> @ imm = #0x8e
    86b0: eec3 5aa2    	vdiv.f32	s11, s7, s5
    86b4: ee65 2aa5    	vmul.f32	s5, s11, s11
    86b8: ee62 2aa2    	vmul.f32	s5, s5, s5
    86bc: ee62 2aa2    	vmul.f32	s5, s5, s5
    86c0: ee62 6aa2    	vmul.f32	s13, s5, s5
    86c4: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    86c8: ee76 4aa2    	vadd.f32	s9, s13, s5
    86cc: eef0 7a62    	vmov.f32	s15, s5
    86d0: eef4 4a62    	vcmp.f32	s9, s5
    86d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86d8: d009         	beq	0x86ee <ram_probe::packed_probe::control+0xfe6> @ imm = #0x12
    86da: eef0 7a64    	vmov.f32	s15, s9
    86de: eef1 7ae7    	vsqrt.f32	s15, s15
    86e2: eef1 7ae7    	vsqrt.f32	s15, s15
    86e6: eef1 7ae7    	vsqrt.f32	s15, s15
    86ea: eef1 7ae7    	vsqrt.f32	s15, s15
    86ee: eec2 2aa7    	vdiv.f32	s5, s5, s15
    86f2: eef4 8a68    	vcmp.f32	s17, s17
    86f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86fa: eec2 7aa4    	vdiv.f32	s15, s5, s9
    86fe: f181 81af    	bvs.w	0x9a60 <ram_probe::packed_probe::control+0x2358> @ imm = #0x135e
    8702: ee18 0a90    	vmov	r0, s17
    8706: f04f 527e    	mov.w	r2, #0x3f800000
    870a: f362 001e    	bfi	r0, r2, #0, #31
    870e: ee04 0a90    	vmov	s9, r0
    8712: ee64 3aa3    	vmul.f32	s7, s9, s7
    8716: ee64 4aa7    	vmul.f32	s9, s9, s15
    871a: ee63 2aa2    	vmul.f32	s5, s7, s5
    871e: ee65 3aa6    	vmul.f32	s7, s11, s13
    8722: ee63 5aa7    	vmul.f32	s11, s7, s15
    8726: e036         	b	0x8796 <ram_probe::packed_probe::control+0x108e> @ imm = #0x6c
    8728: eef0 5a62    	vmov.f32	s11, s5
    872c: eef0 4a62    	vmov.f32	s9, s5
    8730: e031         	b	0x8796 <ram_probe::packed_probe::control+0x108e> @ imm = #0x62
    8732: bf00         	nop
    8734: 00 24 74 cb  	.word	0xcb742400
    8738: 00 24 74 4b  	.word	0x4b742400
    873c: 00 bf 00 bf  	.word	0xbf00bf00
    8740: eec8 2aa3    	vdiv.f32	s5, s17, s7
    8744: eef7 5a00    	vmov.f32	s11, #1.000000e+00
    8748: ee62 2aa2    	vmul.f32	s5, s5, s5
    874c: eef0 6a65    	vmov.f32	s13, s11
    8750: ee62 2aa2    	vmul.f32	s5, s5, s5
    8754: ee62 2aa2    	vmul.f32	s5, s5, s5
    8758: ee62 2aa2    	vmul.f32	s5, s5, s5
    875c: ee72 4aa5    	vadd.f32	s9, s5, s11
    8760: eef4 4a65    	vcmp.f32	s9, s11
    8764: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8768: d009         	beq	0x877e <ram_probe::packed_probe::control+0x1076> @ imm = #0x12
    876a: eef0 6a64    	vmov.f32	s13, s9
    876e: eef1 6ae6    	vsqrt.f32	s13, s13
    8772: eef1 6ae6    	vsqrt.f32	s13, s13
    8776: eef1 6ae6    	vsqrt.f32	s13, s13
    877a: eef1 6ae6    	vsqrt.f32	s13, s13
    877e: eec5 6aa6    	vdiv.f32	s13, s11, s13
    8782: ee68 2aa2    	vmul.f32	s5, s17, s5
    8786: eec6 5aa4    	vdiv.f32	s11, s13, s9
    878a: eec2 3aa3    	vdiv.f32	s7, s5, s7
    878e: ee68 2aa6    	vmul.f32	s5, s17, s13
    8792: ee63 4aa5    	vmul.f32	s9, s7, s11
    8796: ee7d 2a62    	vsub.f32	s5, s26, s5
    879a: 2900         	cmp	r1, #0x0
    879c: fe0f 9aad    	vseleq.f32	s18, s31, s27
    87a0: ee12 0a90    	vmov	r0, s5
    87a4: f020 4000    	bic	r0, r0, #0x80000000
    87a8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    87ac: db08         	blt	0x87c0 <ram_probe::packed_probe::control+0x10b8> @ imm = #0x10
    87ae: eddf 6aba    	vldr	s13, [pc, #744]         @ 0x8a98 <ram_probe::packed_probe::control+0x1390>
    87b2: e00f         	b	0x87d4 <ram_probe::packed_probe::control+0x10cc> @ imm = #0x1e
    87b4: bf00         	nop
    87b6: bf00         	nop
    87b8: 1c 38 88 77  	.word	0x7788381c
    87bc: bf 13 e1 bf  	.word	0xbfe113bf
    87c0: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    87c4: ed5f 6a5a    	vldr	s13, [pc, #-360]        @ 0x8660 <ram_probe::packed_probe::control+0xf58>
    87c8: eec2 3aa3    	vdiv.f32	s7, s5, s7
    87cc: eef0 3ae3    	vabs.f32	s7, s7
    87d0: fec3 6aa6    	vmaxnm.f32	s13, s7, s13
    87d4: ee70 3a88    	vadd.f32	s7, s1, s16
    87d8: ee70 7a8b    	vadd.f32	s15, s1, s22
    87dc: eec3 3a80    	vdiv.f32	s7, s7, s0
    87e0: ee87 ca80    	vdiv.f32	s24, s15, s0
    87e4: eef4 3a4c    	vcmp.f32	s7, s24
    87e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87ec: f201 8080    	bhi.w	0x98f0 <ram_probe::packed_probe::control+0x21e8> @ imm = #0x1100
    87f0: edcd 8a16    	vstr	s17, [sp, #88]
    87f4: 2000         	movs	r0, #0x0
    87f6: ed9d 8b10    	vldr	d8, [sp, #64]
    87fa: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    87fe: ee29 9a25    	vmul.f32	s18, s18, s11
    8802: ed9d bb0e    	vldr	d11, [sp, #56]
    8806: 2100         	movs	r1, #0x0
    8808: ee38 8b4b    	vsub.f64	d8, d8, d11
    880c: ed9f bb74    	vldr	d11, [pc, #464]         @ 0x89e0 <ram_probe::packed_probe::control+0x12d8>
    8810: ed9d eb0c    	vldr	d14, [sp, #48]
    8814: ee0e 8b0b    	vmla.f64	d8, d14, d11
    8818: ed9d bb42    	vldr	d11, [sp, #264]
    881c: eef7 7bc8    	vcvt.f32.f64	s15, d8
    8820: eeb7 bbcb    	vcvt.f32.f64	s22, d11
    8824: ee27 8aa9    	vmul.f32	s16, s15, s19
    8828: ee00 8aac    	vmla.f32	s16, s1, s25
    882c: eddf 0ad7    	vldr	s1, [pc, #860]          @ 0x8b8c <ram_probe::packed_probe::control+0x1484>
    8830: ee0d ba04    	vmla.f32	s22, s26, s8
    8834: ee01 ba20    	vmla.f32	s22, s2, s1
    8838: eef4 3a48    	vcmp.f32	s7, s16
    883c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8840: fe33 4a88    	vselgt.f32	s8, s7, s16
    8844: eeb4 4a4c    	vcmp.f32	s8, s24
    8848: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    884c: eeb4 8a63    	vcmp.f32	s16, s7
    8850: eddf 3acf    	vldr	s7, [pc, #828]          @ 0x8b90 <ram_probe::packed_probe::control+0x1488>
    8854: ee62 7a23    	vmul.f32	s15, s4, s7
    8858: fe7c ea04    	vselgt.f32	s29, s24, s8
    885c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8860: ee37 4a8b    	vadd.f32	s8, s15, s22
    8864: eeb4 8a4c    	vcmp.f32	s16, s24
    8868: bfc8         	it	gt
    886a: 2001         	movgt	r0, #0x1
    886c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8870: eeb5 4a40    	vcmp.f32	s8, #0
    8874: eef0 bac4    	vabs.f32	s23, s8
    8878: ed1f 4a87    	vldr	s8, [pc, #-540]         @ 0x8660 <ram_probe::packed_probe::control+0xf58>
    887c: eef0 5a44    	vmov.f32	s11, s8
    8880: eeb0 ea44    	vmov.f32	s28, s8
    8884: bf48         	it	mi
    8886: 2101         	movmi	r1, #0x1
    8888: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    888c: bf48         	it	mi
    888e: eef0 5a43    	vmovmi.f32	s11, s6
    8892: eef4 ba4f    	vcmp.f32	s23, s30
    8896: eeb0 ca44    	vmov.f32	s24, s8
    889a: fe30 da25    	vselgt.f32	s26, s0, s11
    889e: eef0 9a44    	vmov.f32	s19, s8
    88a2: eeb0 fa44    	vmov.f32	s30, s8
    88a6: 4001         	ands	r1, r0
    88a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88ac: eddf 5add    	vldr	s11, [pc, #884]         @ 0x8c24 <ram_probe::packed_probe::control+0x151c>
    88b0: f280 80cf    	bge.w	0x8a52 <ram_probe::packed_probe::control+0x134a> @ imm = #0x19e
    88b4: ed9f 8a18    	vldr	s16, [pc, #96]          @ 0x8918 <ram_probe::packed_probe::control+0x1210>
    88b8: eef4 ba48    	vcmp.f32	s23, s16
    88bc: ed1f ca98    	vldr	s24, [pc, #-608]        @ 0x8660 <ram_probe::packed_probe::control+0xf58>
    88c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88c4: d914         	bls	0x88f0 <ram_probe::packed_probe::control+0x11e8> @ imm = #0x28
    88c6: ed9f 8a15    	vldr	s16, [pc, #84]          @ 0x891c <ram_probe::packed_probe::control+0x1214>
    88ca: eef4 ba48    	vcmp.f32	s23, s16
    88ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88d2: d925         	bls	0x8920 <ram_probe::packed_probe::control+0x1218> @ imm = #0x4a
    88d4: ed9f 8a40    	vldr	s16, [pc, #256]         @ 0x89d8 <ram_probe::packed_probe::control+0x12d0>
    88d8: eeb0 ba08    	vmov.f32	s22, #3.000000e+00
    88dc: ee3b 8a88    	vadd.f32	s16, s23, s16
    88e0: ed9f ea3e    	vldr	s28, [pc, #248]         @ 0x89dc <ram_probe::packed_probe::control+0x12d4>
    88e4: e024         	b	0x8930 <ram_probe::packed_probe::control+0x1228> @ imm = #0x48
    88e6: bf00         	nop
    88e8: 00 a0 0c 48  	.word	0x480ca000
    88ec: 00 bf 00 bf  	.word	0xbf00bf00
    88f0: eeb7 ba08    	vmov.f32	s22, #1.500000e+00
    88f4: eeb0 ea4c    	vmov.f32	s28, s24
    88f8: e01e         	b	0x8938 <ram_probe::packed_probe::control+0x1230> @ imm = #0x3c
    88fa: bf00         	nop
    88fc: 50 d0 e8 36  	.word	0x36e8d050
    8900: 0a d7 23 3d  	.word	0x3d23d70a
    8904: 79 61 2e 43  	.word	0x432e6179
    8908: 00 00 00 80  	.word	0x80000000
    890c: 79 61 2e c3  	.word	0xc32e6179
    8910: 83 c0 96 b8  	.word	0xb896c083
    8914: d6 f8 e4 36  	.word	0x36e4f8d6
    8918: 7c f2 b0 3a  	.word	0x3ab0f27c
    891c: a6 9b c4 3b  	.word	0x3bc49ba6
    8920: ed9f 8a34    	vldr	s16, [pc, #208]         @ 0x89f4 <ram_probe::packed_probe::control+0x12ec>
    8924: eeb7 ba08    	vmov.f32	s22, #1.500000e+00
    8928: ee3b 8a88    	vadd.f32	s16, s23, s16
    892c: ed9f ea32    	vldr	s28, [pc, #200]         @ 0x89f8 <ram_probe::packed_probe::control+0x12f0>
    8930: ee08 ba0e    	vmla.f32	s22, s16, s28
    8934: ee2d ea0e    	vmul.f32	s28, s26, s28
    8938: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    893c: eeb1 ea4e    	vneg.f32	s28, s28
    8940: ee38 8a4b    	vsub.f32	s16, s16, s22
    8944: fe88 da0c    	vmaxnm.f32	s26, s16, s24
    8948: eeb5 da40    	vcmp.f32	s26, #0
    894c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8950: d94a         	bls	0x89e8 <ram_probe::packed_probe::control+0x12e0> @ imm = #0x94
    8952: eeb0 baee    	vabs.f32	s22, s29
    8956: eeb4 ba4d    	vcmp.f32	s22, s26
    895a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    895e: d94f         	bls	0x8a00 <ram_probe::packed_probe::control+0x12f8> @ imm = #0x9e
    8960: eecd 9a0b    	vdiv.f32	s19, s26, s22
    8964: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    8968: ee29 8aa9    	vmul.f32	s16, s19, s19
    896c: eeb0 fa4b    	vmov.f32	s30, s22
    8970: ee28 8a08    	vmul.f32	s16, s16, s16
    8974: ee28 8a08    	vmul.f32	s16, s16, s16
    8978: ee68 ba08    	vmul.f32	s23, s16, s16
    897c: ee3b ca8b    	vadd.f32	s24, s23, s22
    8980: eeb4 ca4b    	vcmp.f32	s24, s22
    8984: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8988: d009         	beq	0x899e <ram_probe::packed_probe::control+0x1296> @ imm = #0x12
    898a: eeb0 fa4c    	vmov.f32	s30, s24
    898e: eeb1 facf    	vsqrt.f32	s30, s30
    8992: eeb1 facf    	vsqrt.f32	s30, s30
    8996: eeb1 facf    	vsqrt.f32	s30, s30
    899a: eeb1 facf    	vsqrt.f32	s30, s30
    899e: ee8b ba0f    	vdiv.f32	s22, s22, s30
    89a2: eef4 ea6e    	vcmp.f32	s29, s29
    89a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89aa: eecb ca0c    	vdiv.f32	s25, s22, s24
    89ae: f181 805f    	bvs.w	0x9a70 <ram_probe::packed_probe::control+0x2368> @ imm = #0x10be
    89b2: ee1e 0a90    	vmov	r0, s29
    89b6: f04f 527e    	mov.w	r2, #0x3f800000
    89ba: f362 001e    	bfi	r0, r2, #0, #31
    89be: ee08 0a10    	vmov	s16, r0
    89c2: ee28 ca0d    	vmul.f32	s24, s16, s26
    89c6: ee28 fa2c    	vmul.f32	s30, s16, s25
    89ca: ee2c ca0b    	vmul.f32	s24, s24, s22
    89ce: ee29 8aab    	vmul.f32	s16, s19, s23
    89d2: ee68 9a2c    	vmul.f32	s19, s16, s25
    89d6: e03c         	b	0x8a52 <ram_probe::packed_probe::control+0x134a> @ imm = #0x78
    89d8: a6 9b c4 bb  	.word	0xbbc49ba6
    89dc: 79 78 b0 43  	.word	0x43b07879
    89e0: 67 42 87 92  	.word	0x92874267
    89e4: ba 86 d4 bf  	.word	0xbfd486ba
    89e8: eef0 9a4c    	vmov.f32	s19, s24
    89ec: eeb0 fa4c    	vmov.f32	s30, s24
    89f0: e02f         	b	0x8a52 <ram_probe::packed_probe::control+0x134a> @ imm = #0x5e
    89f2: bf00         	nop
    89f4: 7c f2 b0 ba  	.word	0xbab0f27c
    89f8: 53 4a a1 43  	.word	0x43a14a53
    89fc: 00 bf 00 bf  	.word	0xbf00bf00
    8a00: ee8e 8a8d    	vdiv.f32	s16, s29, s26
    8a04: eeb0 fa40    	vmov.f32	s30, s0
    8a08: ee28 8a08    	vmul.f32	s16, s16, s16
    8a0c: ee28 8a08    	vmul.f32	s16, s16, s16
    8a10: ee28 8a08    	vmul.f32	s16, s16, s16
    8a14: ee28 ba08    	vmul.f32	s22, s16, s16
    8a18: ee3b ca00    	vadd.f32	s24, s22, s0
    8a1c: eeb4 ca40    	vcmp.f32	s24, s0
    8a20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a24: d009         	beq	0x8a3a <ram_probe::packed_probe::control+0x1332> @ imm = #0x12
    8a26: eeb0 fa4c    	vmov.f32	s30, s24
    8a2a: eeb1 facf    	vsqrt.f32	s30, s30
    8a2e: eeb1 facf    	vsqrt.f32	s30, s30
    8a32: eeb1 facf    	vsqrt.f32	s30, s30
    8a36: eeb1 facf    	vsqrt.f32	s30, s30
    8a3a: ee80 8a0f    	vdiv.f32	s16, s0, s30
    8a3e: ee2e ba8b    	vmul.f32	s22, s29, s22
    8a42: eec8 9a0c    	vdiv.f32	s19, s16, s24
    8a46: ee8b ba0d    	vdiv.f32	s22, s22, s26
    8a4a: ee2e ca88    	vmul.f32	s24, s29, s16
    8a4e: ee2b fa29    	vmul.f32	s30, s22, s19
    8a52: 2900         	cmp	r1, #0x0
    8a54: ee31 ca4c    	vsub.f32	s24, s2, s24
    8a58: ee27 da24    	vmul.f32	s26, s14, s9
    8a5c: ed9f 7ab1    	vldr	s14, [pc, #708]         @ 0x8d24 <ram_probe::packed_probe::control+0x161c>
    8a60: fe0f 8aad    	vseleq.f32	s16, s31, s27
    8a64: eddf cab0    	vldr	s25, [pc, #704]         @ 0x8d28 <ram_probe::packed_probe::control+0x1620>
    8a68: ee1c 0a10    	vmov	r0, s24
    8a6c: ee69 5a25    	vmul.f32	s11, s18, s11
    8a70: ee6e ba0f    	vmul.f32	s23, s28, s30
    8a74: ed9f faad    	vldr	s30, [pc, #692]         @ 0x8d2c <ram_probe::packed_probe::control+0x1624>
    8a78: ee68 9a29    	vmul.f32	s19, s16, s19
    8a7c: eddf daac    	vldr	s27, [pc, #688]         @ 0x8d30 <ram_probe::packed_probe::control+0x1628>
    8a80: f020 4000    	bic	r0, r0, #0x80000000
    8a84: eddf 4aab    	vldr	s9, [pc, #684]          @ 0x8d34 <ram_probe::packed_probe::control+0x162c>
    8a88: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8a8c: ee29 ea87    	vmul.f32	s28, s19, s14
    8a90: db06         	blt	0x8aa0 <ram_probe::packed_probe::control+0x1398> @ imm = #0xc
    8a92: eddf 6a01    	vldr	s13, [pc, #4]           @ 0x8a98 <ram_probe::packed_probe::control+0x1390>
    8a96: e01b         	b	0x8ad0 <ram_probe::packed_probe::control+0x13c8> @ imm = #0x36
    8a98: 00 00 80 7f  	.word	0x7f800000
    8a9c: 00 bf 00 bf  	.word	0xbf00bf00
    8aa0: eeb2 7a0e    	vmov.f32	s14, #1.500000e+01
    8aa4: eef4 6a66    	vcmp.f32	s13, s13
    8aa8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8aac: ee8c 7a07    	vdiv.f32	s14, s24, s14
    8ab0: eeb0 7ac7    	vabs.f32	s14, s14
    8ab4: fe57 6a26    	vselvs.f32	s13, s14, s13
    8ab8: eeb4 7a47    	vcmp.f32	s14, s14
    8abc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ac0: fe16 7a87    	vselvs.f32	s14, s13, s14
    8ac4: eef4 6a47    	vcmp.f32	s13, s14
    8ac8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8acc: fe76 6a87    	vselgt.f32	s13, s13, s14
    8ad0: ed9f 7a99    	vldr	s14, [pc, #612]         @ 0x8d38 <ram_probe::packed_probe::control+0x1630>
    8ad4: ee4d 5a2c    	vmla.f32	s11, s26, s25
    8ad8: ee02 5a07    	vmla.f32	s10, s4, s14
    8adc: ed9f 7a97    	vldr	s14, [pc, #604]         @ 0x8d3c <ram_probe::packed_probe::control+0x1634>
    8ae0: ee02 6a07    	vmla.f32	s12, s4, s14
    8ae4: 210d         	movs	r1, #0xd
    8ae6: ed9d 8b12    	vldr	d8, [sp, #72]
    8aea: ee29 7a21    	vmul.f32	s14, s18, s3
    8aee: eef7 1bc8    	vcvt.f32.f64	s3, d8
    8af2: ee41 1a23    	vmla.f32	s3, s2, s7
    8af6: ee0b eaad    	vmla.f32	s28, s23, s27
    8afa: eeb4 5a46    	vcmp.f32	s10, s12
    8afe: fe85 5a46    	vminnm.f32	s10, s10, s12
    8b02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b06: ee2b 6aa4    	vmul.f32	s12, s23, s9
    8b0a: ee7a cac5    	vsub.f32	s25, s21, s10
    8b0e: eeb8 5a00    	vmov.f32	s10, #-2.000000e+00
    8b12: ee71 1ae7    	vsub.f32	s3, s3, s15
    8b16: eddf 7a8a    	vldr	s15, [pc, #552]         @ 0x8d40 <ram_probe::packed_probe::control+0x1638>
    8b1a: bf88         	it	hi
    8b1c: 210e         	movhi	r1, #0xe
    8b1e: eef4 ca45    	vcmp.f32	s25, s10
    8b22: ee2b 5a8f    	vmul.f32	s10, s23, s30
    8b26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b2a: d939         	bls	0x8ba0 <ram_probe::packed_probe::control+0x1498> @ imm = #0x72
    8b2c: eef4 ca6c    	vcmp.f32	s25, s25
    8b30: eddf ba84    	vldr	s23, [pc, #528]         @ 0x8d44 <ram_probe::packed_probe::control+0x163c>
    8b34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b38: eeb0 9a6b    	vmov.f32	s18, s23
    8b3c: ed9f ba82    	vldr	s22, [pc, #520]         @ 0x8d48 <ram_probe::packed_probe::control+0x1640>
    8b40: fe1b 8aac    	vselvs.f32	s16, s23, s25
    8b44: eddf da81    	vldr	s27, [pc, #516]         @ 0x8d4c <ram_probe::packed_probe::control+0x1644>
    8b48: eeb5 8a40    	vcmp.f32	s16, #0
    8b4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b50: bfb8         	it	lt
    8b52: eeb0 9a48    	vmovlt.f32	s18, s16
    8b56: eeb0 8a40    	vmov.f32	s16, s0
    8b5a: eef5 ca40    	vcmp.f32	s25, #0
    8b5e: ee09 8a2a    	vmla.f32	s16, s18, s21
    8b62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b66: ee28 8a0b    	vmul.f32	s16, s16, s22
    8b6a: fe88 9a2d    	vmaxnm.f32	s18, s16, s27
    8b6e: d51b         	bpl	0x8ba8 <ram_probe::packed_probe::control+0x14a0> @ imm = #0x36
    8b70: eeb0 8a40    	vmov.f32	s16, s0
    8b74: ee0c 8aaa    	vmla.f32	s16, s25, s21
    8b78: ee28 8a0b    	vmul.f32	s16, s16, s22
    8b7c: eeb4 8a6d    	vcmp.f32	s16, s27
    8b80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b84: bfc8         	it	gt
    8b86: eddf ba72    	vldrgt	s23, [pc, #456]         @ 0x8d50 <ram_probe::packed_probe::control+0x1648>
    8b8a: e00d         	b	0x8ba8 <ram_probe::packed_probe::control+0x14a0> @ imm = #0x1a
    8b8c: af e6 27 b9  	.word	0xb927e6af
    8b90: 79 2e 02 39  	.word	0x39022e79
    8b94: cd 1e 2c 3e  	.word	0x3e2c1ecd
    8b98: d2 4e da 43  	.word	0x43da4ed2
    8b9c: df ff e7 36  	.word	0x36e7ffdf
    8ba0: eddf ba68    	vldr	s23, [pc, #416]         @ 0x8d44 <ram_probe::packed_probe::control+0x163c>
    8ba4: ed9f 9a69    	vldr	s18, [pc, #420]         @ 0x8d4c <ram_probe::packed_probe::control+0x1644>
    8ba8: f64d 3068    	movw	r0, #0xdb68
    8bac: ee09 6a84    	vmla.f32	s12, s19, s8
    8bb0: f2c0 0000    	movt	r0, #0x0
    8bb4: ee22 4a2b    	vmul.f32	s8, s4, s23
    8bb8: eb00 1081    	add.w	r0, r0, r1, lsl #6
    8bbc: ee52 1a09    	vnmls.f32	s3, s4, s18
    8bc0: ee09 5aa7    	vmla.f32	s10, s19, s15
    8bc4: eef0 7a47    	vmov.f32	s15, s14
    8bc8: ed90 0b0c    	vldr	d0, [r0, #48]
    8bcc: ee0d 7a0f    	vmla.f32	s14, s26, s30
    8bd0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    8bd4: ee4d 7a2f    	vmla.f32	s15, s26, s31
    8bd8: ed90 bb0a    	vldr	d11, [r0, #40]
    8bdc: ee44 3a40    	vmls.f32	s7, s8, s0
    8be0: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    8be4: eef1 2a62    	vneg.f32	s5, s5
    8be8: ed90 8b08    	vldr	d8, [r0, #32]
    8bec: ee44 4a40    	vmls.f32	s9, s8, s0
    8bf0: ee11 0a90    	vmov	r0, s3
    8bf4: eef7 0bc8    	vcvt.f32.f64	s1, d8
    8bf8: eeb7 8a00    	vmov.f32	s16, #1.000000e+00
    8bfc: ee39 9a23    	vadd.f32	s18, s18, s7
    8c00: f020 4000    	bic	r0, r0, #0x80000000
    8c04: ee20 dac4    	vnmul.f32	s26, s1, s8
    8c08: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8c0c: ee75 3a88    	vadd.f32	s7, s11, s16
    8c10: ee3e ea08    	vadd.f32	s28, s28, s16
    8c14: eef1 5a4c    	vneg.f32	s11, s24
    8c18: eeb1 ca61    	vneg.f32	s24, s3
    8c1c: db10         	blt	0x8c40 <ram_probe::packed_probe::control+0x1538> @ imm = #0x20
    8c1e: ed1f 4a62    	vldr	s8, [pc, #-392]         @ 0x8a98 <ram_probe::packed_probe::control+0x1390>
    8c22: e025         	b	0x8c70 <ram_probe::packed_probe::control+0x1568> @ imm = #0x4a
    8c24: fc 9d 08 bf  	.word	0xbf089dfc
		...
    8c30: e6 a7 5c a0  	.word	0xa05ca7e6
    8c34: 06 41 d9 3f  	.word	0x3fd94106
    8c38: 19 d5 65 36  	.word	0x3665d519
    8c3c: d0 6e 95 bf  	.word	0xbf956ed0
    8c40: ed9f 0af9    	vldr	s0, [pc, #996]          @ 0x9028 <ram_probe::packed_probe::control+0x1920>
    8c44: eef4 6a66    	vcmp.f32	s13, s13
    8c48: ee81 0a80    	vdiv.f32	s0, s3, s0
    8c4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c50: eeb0 0ac0    	vabs.f32	s0, s0
    8c54: fe10 4a26    	vselvs.f32	s8, s0, s13
    8c58: eeb4 0a40    	vcmp.f32	s0, s0
    8c5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c60: fe14 0a00    	vselvs.f32	s0, s8, s0
    8c64: eeb4 4a40    	vcmp.f32	s8, s0
    8c68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c6c: fe34 4a00    	vselgt.f32	s8, s8, s0
    8c70: ed9f 0aee    	vldr	s0, [pc, #952]          @ 0x902c <ram_probe::packed_probe::control+0x1924>
    8c74: ed8d ea67    	vstr	s28, [sp, #412]
    8c78: eeb4 4a40    	vcmp.f32	s8, s0
    8c7c: ed8d 6a68    	vstr	s12, [sp, #416]
    8c80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c84: edcd 4a6a    	vstr	s9, [sp, #424]
    8c88: ed8d 9a6b    	vstr	s18, [sp, #428]
    8c8c: edcd 5a83    	vstr	s11, [sp, #524]
    8c90: ed8d ca84    	vstr	s24, [sp, #528]
    8c94: edcd 3a63    	vstr	s7, [sp, #396]
    8c98: ed8d 7a64    	vstr	s14, [sp, #400]
    8c9c: edcd 7a65    	vstr	s15, [sp, #404]
    8ca0: ed8d 5a66    	vstr	s10, [sp, #408]
    8ca4: ed8d da69    	vstr	s26, [sp, #420]
    8ca8: edcd 2a82    	vstr	s5, [sp, #520]
    8cac: f240 81d0    	bls.w	0x9050 <ram_probe::packed_probe::control+0x1948> @ imm = #0x3a0
    8cb0: 4640         	mov	r0, r8
    8cb2: eef0 0a4a    	vmov.f32	s1, s20
    8cb6: e8bc 004e    	ldm.w	r12!, {r1, r2, r3, r6}
    8cba: c04e         	stm	r0!, {r1, r2, r3, r6}
    8cbc: e89c 004e    	ldm.w	r12, {r1, r2, r3, r6}
    8cc0: c04e         	stm	r0!, {r1, r2, r3, r6}
    8cc2: ed9d 8a19    	vldr	s16, [sp, #100]
    8cc6: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    8cca: eeb0 0a48    	vmov.f32	s0, s16
    8cce: 3001         	adds	r0, #0x1
    8cd0: f8c4 010c    	str.w	r0, [r4, #0x10c]
    8cd4: a863         	add	r0, sp, #0x18c
    8cd6: aa38         	add	r2, sp, #0xe0
    8cd8: ab5e         	add	r3, sp, #0x178
    8cda: 4641         	mov	r1, r8
    8cdc: f7f9 fe10    	bl	0x2900 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>> @ imm = #-0x63e0
    8ce0: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    8ce4: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8ce8: 2801         	cmp	r0, #0x1
    8cea: 4489         	add	r9, r1
    8cec: d138         	bne	0x8d60 <ram_probe::packed_probe::control+0x1658> @ imm = #0x70
    8cee: ed9d 1a1a    	vldr	s2, [sp, #104]
    8cf2: ed9d 0a63    	vldr	s0, [sp, #396]
    8cf6: eeb4 1a41    	vcmp.f32	s2, s2
    8cfa: eddd 9a1b    	vldr	s19, [sp, #108]
    8cfe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d02: eeb4 0a40    	vcmp.f32	s0, s0
    8d06: eddf faca    	vldr	s31, [pc, #808]         @ 0x9030 <ram_probe::packed_probe::control+0x1928>
    8d0a: fe10 1a01    	vselvs.f32	s2, s0, s2
    8d0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d12: fe11 0a00    	vselvs.f32	s0, s2, s0
    8d16: eeb4 1a40    	vcmp.f32	s2, s0
    8d1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d1e: fe31 9a00    	vselgt.f32	s18, s2, s0
    8d22: e055         	b	0x8dd0 <ram_probe::packed_probe::control+0x16c8> @ imm = #0xaa
    8d24: d5 35 a4 be  	.word	0xbea435d5
    8d28: 83 c0 96 38  	.word	0x3896c083
    8d2c: d6 f8 e4 b6  	.word	0xb6e4f8d6
    8d30: af e6 27 39  	.word	0x3927e6af
    8d34: 79 2e 02 b9  	.word	0xb9022e79
    8d38: 99 76 cd 39  	.word	0x39cd7699
    8d3c: 51 e6 7f bf  	.word	0xbf7fe651
    8d40: 6f f3 03 be  	.word	0xbe03f36f
    8d44: 00 00 00 00  	.word	0x00000000
    8d48: 2b 18 95 3b  	.word	0x3b95182b
    8d4c: 95 bf d6 33  	.word	0x33d6bf95
    8d50: 2b 18 15 3b  	.word	0x3b15182b
    8d54: 00 24 f4 ca  	.word	0xcaf42400
    8d58: d1 a7 00 a5  	.word	0xa500a7d1
    8d5c: f6 46 24 40  	.word	0x402446f6
    8d60: eeb0 0a48    	vmov.f32	s0, s16
    8d64: eef0 0a4a    	vmov.f32	s1, s20
    8d68: a863         	add	r0, sp, #0x18c
    8d6a: a956         	add	r1, sp, #0x158
    8d6c: aa38         	add	r2, sp, #0xe0
    8d6e: ab5e         	add	r3, sp, #0x178
    8d70: 2500         	movs	r5, #0x0
    8d72: 955c         	str	r5, [sp, #0x170]
    8d74: e9cd 555a    	strd	r5, r5, [sp, #360]
    8d78: f7f9 fdc2    	bl	0x2900 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>> @ imm = #-0x647c
    8d7c: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    8d80: eddf faab    	vldr	s31, [pc, #684]         @ 0x9030 <ram_probe::packed_probe::control+0x1928>
    8d84: 3001         	adds	r0, #0x1
    8d86: bf28         	it	hs
    8d88: f04f 30ff    	movhs.w	r0, #0xffffffff
    8d8c: ed9d 1a1a    	vldr	s2, [sp, #104]
    8d90: ed9d 0a63    	vldr	s0, [sp, #396]
    8d94: eeb4 1a41    	vcmp.f32	s2, s2
    8d98: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8d9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8da0: eeb4 0a40    	vcmp.f32	s0, s0
    8da4: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    8da8: fe10 1a01    	vselvs.f32	s2, s0, s2
    8dac: 4489         	add	r9, r1
    8dae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8db2: eddd 9a1b    	vldr	s19, [sp, #108]
    8db6: f8c4 011c    	str.w	r0, [r4, #0x11c]
    8dba: fe11 2a00    	vselvs.f32	s4, s2, s0
    8dbe: eeb4 1a42    	vcmp.f32	s2, s4
    8dc2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8dc6: fe31 9a02    	vselgt.f32	s18, s2, s4
    8dca: 2a00         	cmp	r2, #0x0
    8dcc: f000 82cc    	beq.w	0x9368 <ram_probe::packed_probe::control+0x1c60> @ imm = #0x598
    8dd0: 4641         	mov	r1, r8
    8dd2: 4650         	mov	r0, r10
    8dd4: ed1f 4b6c    	vldr	d4, [pc, #-432]         @ 0x8c28 <ram_probe::packed_probe::control+0x1520>
    8dd8: c96c         	ldm	r1!, {r2, r3, r5, r6}
    8dda: c06c         	stm	r0!, {r2, r3, r5, r6}
    8ddc: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
    8de0: c06c         	stm	r0!, {r2, r3, r5, r6}
    8de2: ed9d 0a56    	vldr	s0, [sp, #344]
    8de6: ed9d 1a57    	vldr	s2, [sp, #348]
    8dea: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    8dee: ed9d 2a58    	vldr	s4, [sp, #352]
    8df2: ed9d ab50    	vldr	d10, [sp, #320]
    8df6: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    8dfa: ed9f 6a8e    	vldr	s12, [pc, #568]         @ 0x9034 <ram_probe::packed_probe::control+0x192c>
    8dfe: eeb0 3b4a    	vmov.f64	d3, d10
    8e02: ed9f 7a8d    	vldr	s14, [pc, #564]         @ 0x9038 <ram_probe::packed_probe::control+0x1930>
    8e06: ee00 3b04    	vmla.f64	d3, d0, d4
    8e0a: eeb7 0ac2    	vcvt.f64.f32	d0, s4
    8e0e: ee01 3b04    	vmla.f64	d3, d1, d4
    8e12: ed9d 1a59    	vldr	s2, [sp, #356]
    8e16: ee00 3b04    	vmla.f64	d3, d0, d4
    8e1a: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    8e1e: ed9d 1a5a    	vldr	s2, [sp, #360]
    8e22: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    8e26: ed1f 2b7e    	vldr	d2, [pc, #-504]         @ 0x8c30 <ram_probe::packed_probe::control+0x1528>
    8e2a: ee00 3b04    	vmla.f64	d3, d0, d4
    8e2e: ed9d 0a5b    	vldr	s0, [sp, #364]
    8e32: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    8e36: ee01 3b04    	vmla.f64	d3, d1, d4
    8e3a: ee20 1b02    	vmul.f64	d1, d0, d2
    8e3e: ed9d 0a5c    	vldr	s0, [sp, #368]
    8e42: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    8e46: ee33 3b01    	vadd.f64	d3, d3, d1
    8e4a: ee20 2b02    	vmul.f64	d2, d0, d2
    8e4e: ed9f 0a7b    	vldr	s0, [pc, #492]          @ 0x903c <ram_probe::packed_probe::control+0x1934>
    8e52: ee29 0a80    	vmul.f32	s0, s19, s0
    8e56: ed9f 5b7a    	vldr	d5, [pc, #488]          @ 0x9040 <ram_probe::packed_probe::control+0x1938>
    8e5a: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    8e5e: ee33 3b42    	vsub.f64	d3, d3, d2
    8e62: ee30 6a06    	vadd.f32	s12, s0, s12
    8e66: ee84 4b05    	vdiv.f64	d4, d4, d5
    8e6a: ed9f 5b77    	vldr	d5, [pc, #476]          @ 0x9048 <ram_probe::packed_probe::control+0x1940>
    8e6e: ee86 fa07    	vdiv.f32	s30, s12, s14
    8e72: ee03 4b05    	vmla.f64	d4, d3, d5
    8e76: ed1f 5a49    	vldr	s10, [pc, #-292]        @ 0x8d54 <ram_probe::packed_probe::control+0x164c>
    8e7a: ed1f 3b49    	vldr	d3, [pc, #-292]         @ 0x8d58 <ram_probe::packed_probe::control+0x1650>
    8e7e: ee30 5a05    	vadd.f32	s10, s0, s10
    8e82: ee84 3b03    	vdiv.f64	d3, d4, d3
    8e86: eebb 4a05    	vmov.f32	s8, #-2.100000e+01
    8e8a: ee85 ea07    	vdiv.f32	s28, s10, s14
    8e8e: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    8e92: eeb4 4a43    	vcmp.f32	s8, s6
    8e96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e9a: fe34 3a03    	vselgt.f32	s6, s8, s6
    8e9e: eeb3 4a05    	vmov.f32	s8, #2.100000e+01
    8ea2: eeb4 3a44    	vcmp.f32	s6, s8
    8ea6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8eaa: eeb4 ea4f    	vcmp.f32	s28, s30
    8eae: fe34 8a03    	vselgt.f32	s16, s8, s6
    8eb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8eb6: ed8d 8a5d    	vstr	s16, [sp, #372]
    8eba: f200 850d    	bhi.w	0x98d8 <ram_probe::packed_probe::control+0x21d0> @ imm = #0xa1a
    8ebe: ee3a 1b01    	vadd.f64	d1, d10, d1
    8ec2: a87a         	add	r0, sp, #0x1e8
    8ec4: ed1f dacd    	vldr	s26, [pc, #-820]        @ 0x8b94 <ram_probe::packed_probe::control+0x148c>
    8ec8: ed1f 3ba5    	vldr	d3, [pc, #-660]         @ 0x8c38 <ram_probe::packed_probe::control+0x1530>
    8ecc: ee31 1b42    	vsub.f64	d1, d1, d2
    8ed0: eeb7 2ac8    	vcvt.f64.f32	d2, s16
    8ed4: ed9d bb46    	vldr	d11, [sp, #280]
    8ed8: ee02 1b03    	vmla.f64	d1, d2, d3
    8edc: ed1f 2ad2    	vldr	s4, [pc, #-840]         @ 0x8b98 <ram_probe::packed_probe::control+0x1490>
    8ee0: eef7 0bcb    	vcvt.f32.f64	s1, d11
    8ee4: ee48 0a4d    	vmls.f32	s1, s16, s26
    8ee8: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    8eec: ee61 8a02    	vmul.f32	s17, s2, s4
    8ef0: ed1f 1ad6    	vldr	s2, [pc, #-856]         @ 0x8b9c <ram_probe::packed_probe::control+0x1494>
    8ef4: ee40 8a01    	vmla.f32	s17, s0, s2
    8ef8: eeb4 ea68    	vcmp.f32	s28, s17
    8efc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f00: fe3e 0a28    	vselgt.f32	s0, s28, s17
    8f04: eeb4 0a4f    	vcmp.f32	s0, s30
    8f08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f0c: fe3f ca00    	vselgt.f32	s24, s30, s0
    8f10: eeb0 0a4c    	vmov.f32	s0, s24
    8f14: f7fb f92c    	bl	0x4170 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #-0x4da8
    8f18: ed9d 0a7a    	vldr	s0, [sp, #488]
    8f1c: f60f 3068    	adr.w	r0, #2920
    8f20: ee38 1a40    	vsub.f32	s2, s16, s0
    8f24: eef4 8a4f    	vcmp.f32	s17, s30
    8f28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f2c: bf48         	it	mi
    8f2e: 3004         	addmi	r0, #0x4
    8f30: eef4 8a4e    	vcmp.f32	s17, s28
    8f34: ee11 1a10    	vmov	r1, s2
    8f38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f3c: ed90 0a00    	vldr	s0, [r0]
    8f40: fe30 2a2f    	vselgt.f32	s4, s0, s31
    8f44: f021 4000    	bic	r0, r1, #0x80000000
    8f48: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8f4c: da3c         	bge	0x8fc8 <ram_probe::packed_probe::control+0x18c0> @ imm = #0x78
    8f4e: eeb0 0ac1    	vabs.f32	s0, s2
    8f52: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    8f56: ee80 0a03    	vdiv.f32	s0, s0, s6
    8f5a: ed9f 3a34    	vldr	s6, [pc, #208]          @ 0x902c <ram_probe::packed_probe::control+0x1924>
    8f5e: eeb4 0a43    	vcmp.f32	s0, s6
    8f62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f66: d82f         	bhi	0x8fc8 <ram_probe::packed_probe::control+0x18c0> @ imm = #0x5e
    8f68: ed9d 3a7b    	vldr	s6, [sp, #492]
    8f6c: ed9f 4ae3    	vldr	s8, [pc, #908]          @ 0x92fc <ram_probe::packed_probe::control+0x1bf4>
    8f70: ee22 2a03    	vmul.f32	s4, s4, s6
    8f74: ed9d 5a7c    	vldr	s10, [sp, #496]
    8f78: eeb0 3ac8    	vabs.f32	s6, s16
    8f7c: ee22 2a04    	vmul.f32	s4, s4, s8
    8f80: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    8f84: eeb4 3a43    	vcmp.f32	s6, s6
    8f88: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f8c: ee05 2a0d    	vmla.f32	s4, s10, s26
    8f90: fe14 3a03    	vselvs.f32	s6, s8, s6
    8f94: eeb4 3a44    	vcmp.f32	s6, s8
    8f98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f9c: ee32 2a04    	vadd.f32	s4, s4, s8
    8fa0: fe33 3a04    	vselgt.f32	s6, s6, s8
    8fa4: ee81 1a02    	vdiv.f32	s2, s2, s4
    8fa8: ed9f 2af4    	vldr	s4, [pc, #976]          @ 0x937c <ram_probe::packed_probe::control+0x1c74>
    8fac: ee23 2a02    	vmul.f32	s4, s6, s4
    8fb0: ed9f 3af3    	vldr	s6, [pc, #972]          @ 0x9380 <ram_probe::packed_probe::control+0x1c78>
    8fb4: eeb0 1ac1    	vabs.f32	s2, s2
    8fb8: fe82 2a43    	vminnm.f32	s4, s4, s6
    8fbc: eeb4 1a42    	vcmp.f32	s2, s4
    8fc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8fc4: f240 81e0    	bls.w	0x9388 <ram_probe::packed_probe::control+0x1c80> @ imm = #0x3c0
    8fc8: 4640         	mov	r0, r8
    8fca: eeb0 2a69    	vmov.f32	s4, s19
    8fce: e8ba 004e    	ldm.w	r10!, {r1, r2, r3, r6}
    8fd2: c04e         	stm	r0!, {r1, r2, r3, r6}
    8fd4: e89a 004e    	ldm.w	r10, {r1, r2, r3, r6}
    8fd8: c04e         	stm	r0!, {r1, r2, r3, r6}
    8fda: eeb0 0b4b    	vmov.f64	d0, d11
    8fde: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    8fe2: eeb0 1b4a    	vmov.f64	d1, d10
    8fe6: 3001         	adds	r0, #0x1
    8fe8: f8c4 010c    	str.w	r0, [r4, #0x10c]
    8fec: a863         	add	r0, sp, #0x18c
    8fee: aa5e         	add	r2, sp, #0x178
    8ff0: 4641         	mov	r1, r8
    8ff2: f7fa feb5    	bl	0x3d60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>> @ imm = #-0x5296
    8ff6: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    8ffa: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8ffe: 2800         	cmp	r0, #0x0
    9000: 4489         	add	r9, r1
    9002: f000 817d    	beq.w	0x9300 <ram_probe::packed_probe::control+0x1bf8> @ imm = #0x2fa
    9006: eeb4 9a49    	vcmp.f32	s18, s18
    900a: ed9d 0a63    	vldr	s0, [sp, #396]
    900e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9012: eeb4 0a40    	vcmp.f32	s0, s0
    9016: fe10 1a09    	vselvs.f32	s2, s0, s18
    901a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    901e: e9cd 9b1a    	strd	r9, r11, [sp, #104]
    9022: fe11 0a00    	vselvs.f32	s0, s2, s0
    9026: e1c4         	b	0x93b2 <ram_probe::packed_probe::control+0x1caa> @ imm = #0x388
    9028: 0a d7 23 3c  	.word	0x3c23d70a
    902c: 17 b7 d1 38  	.word	0x38d1b717
    9030: 00 00 00 80  	.word	0x80000000
    9034: 00 24 f4 4a  	.word	0x4af42400
    9038: 00 a0 0c 48  	.word	0x480ca000
    903c: 00 80 bb 47  	.word	0x47bb8000
    9040: 85 42 fe de  	.word	0xdefe4285
    9044: bb a7 01 41  	.word	0x4101a7bb
    9048: b4 cf 84 3d  	.word	0x3d84cfb4
    904c: da 49 7b 40  	.word	0x407b49da
    9050: eeb0 0ac5    	vabs.f32	s0, s10
    9054: 2200         	movs	r2, #0x0
    9056: eeb0 6ae3    	vabs.f32	s12, s7
    905a: f50d 7ec6    	add.w	lr, sp, #0x18c
    905e: eeb4 0a46    	vcmp.f32	s0, s12
    9062: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9066: bfc8         	it	gt
    9068: 2201         	movgt	r2, #0x1
    906a: fe35 0a23    	vselgt.f32	s0, s10, s7
    906e: eeb0 5acd    	vabs.f32	s10, s26
    9072: eeb0 0ac0    	vabs.f32	s0, s0
    9076: eeb4 5a40    	vcmp.f32	s10, s0
    907a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    907e: bfc8         	it	gt
    9080: 2202         	movgt	r2, #0x2
    9082: eb02 0042    	add.w	r0, r2, r2, lsl #1
    9086: eb0a 0180    	add.w	r1, r10, r0, lsl #2
    908a: f85a 0020    	ldr.w	r0, [r10, r0, lsl #2]
    908e: e9d1 3601    	ldrd	r3, r6, [r1, #4]
    9092: e88e 0049    	stm.w	lr, {r0, r3, r6}
    9096: edc1 3a00    	vstr	s7, [r1]
    909a: f50d 7e02    	add.w	lr, sp, #0x208
    909e: ed81 7a01    	vstr	s14, [r1, #4]
    90a2: edc1 7a02    	vstr	s15, [r1, #8]
    90a6: eb0e 0182    	add.w	r1, lr, r2, lsl #2
    90aa: ed9d 5a63    	vldr	s10, [sp, #396]
    90ae: f85e 2022    	ldr.w	r2, [lr, r2, lsl #2]
    90b2: ee15 0a10    	vmov	r0, s10
    90b6: 9282         	str	r2, [sp, #0x208]
    90b8: edc1 2a00    	vstr	s5, [r1]
    90bc: f020 4000    	bic	r0, r0, #0x80000000
    90c0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    90c4: f6bf adf4    	bge.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x418
    90c8: eeb0 0ac5    	vabs.f32	s0, s10
    90cc: ed9f 6aad    	vldr	s12, [pc, #692]         @ 0x9384 <ram_probe::packed_probe::control+0x1c7c>
    90d0: eeb4 0a46    	vcmp.f32	s0, s12
    90d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    90d8: f53f adea    	bmi.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x42c
    90dc: ed9d 0a69    	vldr	s0, [sp, #420]
    90e0: ed9d 7a66    	vldr	s14, [sp, #408]
    90e4: ee80 0a05    	vdiv.f32	s0, s0, s10
    90e8: eddd 3a6a    	vldr	s7, [sp, #424]
    90ec: eec7 0a05    	vdiv.f32	s1, s14, s10
    90f0: ed9d 7a64    	vldr	s14, [sp, #400]
    90f4: eddd 4a67    	vldr	s9, [sp, #412]
    90f8: eddd 1a82    	vldr	s3, [sp, #520]
    90fc: ee47 3a40    	vmls.f32	s7, s14, s0
    9100: eddd 2a65    	vldr	s5, [sp, #404]
    9104: ee40 4ac7    	vmls.f32	s9, s1, s14
    9108: eddd 5a68    	vldr	s11, [sp, #416]
    910c: ee40 5ae2    	vmls.f32	s11, s1, s5
    9110: eddd 6a83    	vldr	s13, [sp, #524]
    9114: ee40 6ae1    	vmls.f32	s13, s1, s3
    9118: f10a 000c    	add.w	r0, r10, #0xc
    911c: 4602         	mov	r2, r0
    911e: edcd 3a6a    	vstr	s7, [sp, #424]
    9122: edcd 4a67    	vstr	s9, [sp, #412]
    9126: eef0 0ae3    	vabs.f32	s1, s7
    912a: edcd 5a68    	vstr	s11, [sp, #416]
    912e: eef0 7ae4    	vabs.f32	s15, s9
    9132: eddd 4a6b    	vldr	s9, [sp, #428]
    9136: ee42 4ac0    	vmls.f32	s9, s5, s0
    913a: edcd 6a83    	vstr	s13, [sp, #524]
    913e: eef4 0a67    	vcmp.f32	s1, s15
    9142: eddd 0a84    	vldr	s1, [sp, #528]
    9146: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    914a: bfc8         	it	gt
    914c: f10a 0218    	addgt.w	r2, r10, #0x18
    9150: edcd 4a6b    	vstr	s9, [sp, #428]
    9154: 6803         	ldr	r3, [r0]
    9156: e9d2 6500    	ldrd	r6, r5, [r2]
    915a: 6891         	ldr	r1, [r2, #0x8]
    915c: 6006         	str	r6, [r0]
    915e: 6846         	ldr	r6, [r0, #0x4]
    9160: 6045         	str	r5, [r0, #0x4]
    9162: 6885         	ldr	r5, [r0, #0x8]
    9164: 6081         	str	r1, [r0, #0x8]
    9166: ee41 0ac0    	vmls.f32	s1, s3, s0
    916a: f04f 0004    	mov.w	r0, #0x4
    916e: e9c2 6501    	strd	r6, r5, [r2, #4]
    9172: eddd 3a67    	vldr	s7, [sp, #412]
    9176: ee13 1a90    	vmov	r1, s7
    917a: bfc8         	it	gt
    917c: 2008         	movgt	r0, #0x8
    917e: edcd 0a84    	vstr	s1, [sp, #528]
    9182: 6013         	str	r3, [r2]
    9184: f85e 2000    	ldr.w	r2, [lr, r0]
    9188: 4470         	add	r0, lr
    918a: f021 4100    	bic	r1, r1, #0x80000000
    918e: f1b1 4fff    	cmp.w	r1, #0x7f800000
    9192: 9283         	str	r2, [sp, #0x20c]
    9194: edc0 6a00    	vstr	s13, [r0]
    9198: f6bf ad8a    	bge.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x4ec
    919c: eeb0 0ae3    	vabs.f32	s0, s7
    91a0: eeb4 0a46    	vcmp.f32	s0, s12
    91a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91a8: f53f ad82    	bmi.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x4fc
    91ac: ed9d 0a6a    	vldr	s0, [sp, #424]
    91b0: eddd 6a6b    	vldr	s13, [sp, #428]
    91b4: eec0 5a23    	vdiv.f32	s11, s0, s7
    91b8: eddd 4a68    	vldr	s9, [sp, #416]
    91bc: ee45 6ae4    	vmls.f32	s13, s11, s9
    91c0: ee16 0a90    	vmov	r0, s13
    91c4: f020 4000    	bic	r0, r0, #0x80000000
    91c8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    91cc: f6bf ad70    	bge.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x520
    91d0: eeb0 0ae6    	vabs.f32	s0, s13
    91d4: eeb4 0a46    	vcmp.f32	s0, s12
    91d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91dc: f53f ad68    	bmi.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x530
    91e0: ed9d 0a83    	vldr	s0, [sp, #524]
    91e4: ed9d 6a84    	vldr	s12, [sp, #528]
    91e8: ee05 6ac0    	vmls.f32	s12, s11, s0
    91ec: eddd 0a18    	vldr	s1, [sp, #96]
    91f0: eef0 0ae0    	vabs.f32	s1, s1
    91f4: eef4 0a60    	vcmp.f32	s1, s1
    91f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91fc: ee86 6a26    	vdiv.f32	s12, s12, s13
    9200: ee04 0ac6    	vmls.f32	s0, s9, s12
    9204: eec0 3a23    	vdiv.f32	s7, s0, s7
    9208: fe18 0a20    	vselvs.f32	s0, s16, s1
    920c: ee47 1a63    	vmls.f32	s3, s14, s7
    9210: eeb4 0a48    	vcmp.f32	s0, s16
    9214: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9218: ee42 1ac6    	vmls.f32	s3, s5, s12
    921c: fe30 7a08    	vselgt.f32	s14, s0, s16
    9220: ed9f 0a56    	vldr	s0, [pc, #344]          @ 0x937c <ram_probe::packed_probe::control+0x1c74>
    9224: ee27 7a00    	vmul.f32	s14, s14, s0
    9228: ee81 5a85    	vdiv.f32	s10, s3, s10
    922c: eef0 0ac5    	vabs.f32	s1, s10
    9230: ed9f 5a53    	vldr	s10, [pc, #332]         @ 0x9380 <ram_probe::packed_probe::control+0x1c78>
    9234: fe87 7a45    	vminnm.f32	s14, s14, s10
    9238: eef4 0a47    	vcmp.f32	s1, s14
    923c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9240: f63f ad36    	bhi.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x594
    9244: eeb0 1ac1    	vabs.f32	s2, s2
    9248: eeb0 7ae3    	vabs.f32	s14, s7
    924c: eeb4 1a41    	vcmp.f32	s2, s2
    9250: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9254: fe18 1a01    	vselvs.f32	s2, s16, s2
    9258: eeb4 1a48    	vcmp.f32	s2, s16
    925c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9260: fe31 1a08    	vselgt.f32	s2, s2, s16
    9264: ee21 1a00    	vmul.f32	s2, s2, s0
    9268: fe81 1a45    	vminnm.f32	s2, s2, s10
    926c: eeb4 7a41    	vcmp.f32	s14, s2
    9270: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9274: f63f ad1c    	bhi.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x5c8
    9278: eeb0 1ac2    	vabs.f32	s2, s4
    927c: eeb4 1a41    	vcmp.f32	s2, s2
    9280: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9284: fe18 1a01    	vselvs.f32	s2, s16, s2
    9288: eeb4 1a48    	vcmp.f32	s2, s16
    928c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9290: fe31 1a08    	vselgt.f32	s2, s2, s16
    9294: ee21 0a00    	vmul.f32	s0, s2, s0
    9298: eeb0 1ac6    	vabs.f32	s2, s12
    929c: fe80 0a45    	vminnm.f32	s0, s0, s10
    92a0: eeb4 1a40    	vcmp.f32	s2, s0
    92a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92a8: f63f ad02    	bhi.w	0x8cb0 <ram_probe::packed_probe::control+0x15a8> @ imm = #-0x5fc
    92ac: ed9d 0a1a    	vldr	s0, [sp, #104]
    92b0: f8d4 0108    	ldr.w	r0, [r4, #0x108]
    92b4: eeb4 0a40    	vcmp.f32	s0, s0
    92b8: f8d4 1110    	ldr.w	r1, [r4, #0x110]
    92bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92c0: eeb4 4a44    	vcmp.f32	s8, s8
    92c4: eddd 9a1b    	vldr	s19, [sp, #108]
    92c8: fe14 0a00    	vselvs.f32	s0, s8, s0
    92cc: ed9d 2a16    	vldr	s4, [sp, #88]
    92d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92d4: ed8d 2a60    	vstr	s4, [sp, #384]
    92d8: f100 0001    	add.w	r0, r0, #0x1
    92dc: fe10 1a04    	vselvs.f32	s2, s0, s8
    92e0: edcd ea61    	vstr	s29, [sp, #388]
    92e4: f8c4 0108    	str.w	r0, [r4, #0x108]
    92e8: 1c48         	adds	r0, r1, #0x1
    92ea: f8c4 0110    	str.w	r0, [r4, #0x110]
    92ee: eeb4 0a41    	vcmp.f32	s0, s2
    92f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92f6: fe30 9a01    	vselgt.f32	s18, s0, s2
    92fa: e569         	b	0x8dd0 <ram_probe::packed_probe::control+0x16c8> @ imm = #-0x52e
    92fc: 82 76 ab bc  	.word	0xbcab7682
    9300: eeb0 0b4b    	vmov.f64	d0, d11
    9304: a863         	add	r0, sp, #0x18c
    9306: eeb0 1b4a    	vmov.f64	d1, d10
    930a: a956         	add	r1, sp, #0x158
    930c: eeb0 2a69    	vmov.f32	s4, s19
    9310: aa5e         	add	r2, sp, #0x178
    9312: 2500         	movs	r5, #0x0
    9314: 955d         	str	r5, [sp, #0x174]
    9316: f7fa fd23    	bl	0x3d60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>> @ imm = #-0x55ba
    931a: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    931e: eeb4 9a49    	vcmp.f32	s18, s18
    9322: 3001         	adds	r0, #0x1
    9324: bf28         	it	hs
    9326: f04f 30ff    	movhs.w	r0, #0xffffffff
    932a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    932e: ed9d 0a63    	vldr	s0, [sp, #396]
    9332: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    9336: fe10 1a09    	vselvs.f32	s2, s0, s18
    933a: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    933e: eeb4 0a40    	vcmp.f32	s0, s0
    9342: 4489         	add	r9, r1
    9344: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9348: f8c4 011c    	str.w	r0, [r4, #0x11c]
    934c: fe11 2a00    	vselvs.f32	s4, s2, s0
    9350: eeb4 1a42    	vcmp.f32	s2, s4
    9354: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9358: fe31 1a02    	vselgt.f32	s2, s2, s4
    935c: b122         	cbz	r2, 0x9368 <ram_probe::packed_probe::control+0x1c60> @ imm = #0x8
    935e: ed8d 1a00    	vstr	s2, [sp]
    9362: e9cd 9b1a    	strd	r9, r11, [sp, #104]
    9366: e02c         	b	0x93c2 <ram_probe::packed_probe::control+0x1cba> @ imm = #0x58
    9368: 69e0         	ldr	r0, [r4, #0x1c]
    936a: f8cb 0000    	str.w	r0, [r11]
    936e: ed8b 0a01    	vstr	s0, [r11, #4]
    9372: f88b 9008    	strb.w	r9, [r11, #0x8]
    9376: f88b 5009    	strb.w	r5, [r11, #0x9]
    937a: e1ed         	b	0x9758 <ram_probe::packed_probe::control+0x2050> @ imm = #0x3da
    937c: bd 37 06 36  	.word	0x360637bd
    9380: ac c5 a7 37  	.word	0x37a7c5ac
    9384: 08 e5 3c 1e  	.word	0x1e3ce508
    9388: eeb4 9a49    	vcmp.f32	s18, s18
    938c: f8d4 0114    	ldr.w	r0, [r4, #0x114]
    9390: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9394: eeb4 0a40    	vcmp.f32	s0, s0
    9398: ed8d ca62    	vstr	s24, [sp, #392]
    939c: fe10 1a09    	vselvs.f32	s2, s0, s18
    93a0: 3001         	adds	r0, #0x1
    93a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93a6: e9cd 9b1a    	strd	r9, r11, [sp, #104]
    93aa: fe11 0a00    	vselvs.f32	s0, s2, s0
    93ae: f8c4 0114    	str.w	r0, [r4, #0x114]
    93b2: eeb4 1a40    	vcmp.f32	s2, s0
    93b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93ba: fe31 0a00    	vselgt.f32	s0, s2, s0
    93be: ed8d 0a00    	vstr	s0, [sp]
    93c2: a863         	add	r0, sp, #0x18c
    93c4: a91c         	add	r1, sp, #0x70
    93c6: aa56         	add	r2, sp, #0x158
    93c8: ed9d 0a0b    	vldr	s0, [sp, #44]
    93cc: f7f7 fd0c    	bl	0xde8 <orange_dsp::generated_packed::update::<5>> @ imm = #-0x85e8
    93d0: eddd 2a6e    	vldr	s5, [sp, #440]
    93d4: eddd 3a6f    	vldr	s7, [sp, #444]
    93d8: eddd da64    	vldr	s27, [sp, #400]
    93dc: ee12 2a90    	vmov	r2, s5
    93e0: ee1d 0a90    	vmov	r0, s27
    93e4: eddd 4a70    	vldr	s9, [sp, #448]
    93e8: 9208         	str	r2, [sp, #0x20]
    93ea: ee13 2a90    	vmov	r2, s7
    93ee: eddd 5a71    	vldr	s11, [sp, #452]
    93f2: eddd fa66    	vldr	s31, [sp, #408]
    93f6: eddd ea65    	vldr	s29, [sp, #404]
    93fa: 920b         	str	r2, [sp, #0x2c]
    93fc: ee14 2a90    	vmov	r2, s9
    9400: ee15 8a90    	vmov	r8, s11
    9404: f020 4000    	bic	r0, r0, #0x80000000
    9408: ee1e 1a90    	vmov	r1, s29
    940c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9410: f04f 0000    	mov.w	r0, #0x0
    9414: ed9d 3a67    	vldr	s6, [sp, #412]
    9418: ed9d 4a68    	vldr	s8, [sp, #416]
    941c: ed9d 5a69    	vldr	s10, [sp, #420]
    9420: ed9d 6a6a    	vldr	s12, [sp, #424]
    9424: ed9d 7a6b    	vldr	s14, [sp, #428]
    9428: eddd 0a6c    	vldr	s1, [sp, #432]
    942c: eddd 1a6d    	vldr	s3, [sp, #436]
    9430: 920c         	str	r2, [sp, #0x30]
    9432: f8cd 8038    	str.w	r8, [sp, #0x38]
    9436: ee1f 5a90    	vmov	r5, s31
    943a: bfa8         	it	ge
    943c: 2001         	movge	r0, #0x1
    943e: ee13 6a10    	vmov	r6, s6
    9442: ee14 3a10    	vmov	r3, s8
    9446: 9019         	str	r0, [sp, #0x64]
    9448: f021 4000    	bic	r0, r1, #0x80000000
    944c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9450: f04f 0000    	mov.w	r0, #0x0
    9454: bfa8         	it	ge
    9456: 2001         	movge	r0, #0x1
    9458: ee15 ca10    	vmov	r12, s10
    945c: ee16 ea10    	vmov	lr, s12
    9460: 9018         	str	r0, [sp, #0x60]
    9462: f025 4000    	bic	r0, r5, #0x80000000
    9466: f1b0 4fff    	cmp.w	r0, #0x7f800000
    946a: f04f 0000    	mov.w	r0, #0x0
    946e: bfa8         	it	ge
    9470: 2001         	movge	r0, #0x1
    9472: ee17 9a10    	vmov	r9, s14
    9476: ee10 ba90    	vmov	r11, s1
    947a: 9016         	str	r0, [sp, #0x58]
    947c: f026 4000    	bic	r0, r6, #0x80000000
    9480: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9484: f04f 0000    	mov.w	r0, #0x0
    9488: bfa8         	it	ge
    948a: 2001         	movge	r0, #0x1
    948c: ee11 aa90    	vmov	r10, s3
    9490: f04f 0800    	mov.w	r8, #0x0
    9494: 9014         	str	r0, [sp, #0x50]
    9496: f023 4000    	bic	r0, r3, #0x80000000
    949a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    949e: f04f 0000    	mov.w	r0, #0x0
    94a2: bfa8         	it	ge
    94a4: 2001         	movge	r0, #0x1
    94a6: 9012         	str	r0, [sp, #0x48]
    94a8: f02c 4000    	bic	r0, r12, #0x80000000
    94ac: f1b0 4fff    	cmp.w	r0, #0x7f800000
    94b0: f04f 0000    	mov.w	r0, #0x0
    94b4: bfa8         	it	ge
    94b6: 2001         	movge	r0, #0x1
    94b8: f04f 0c00    	mov.w	r12, #0x0
    94bc: 9010         	str	r0, [sp, #0x40]
    94be: f02e 4000    	bic	r0, lr, #0x80000000
    94c2: f1b0 4fff    	cmp.w	r0, #0x7f800000
    94c6: f04f 0000    	mov.w	r0, #0x0
    94ca: bfa8         	it	ge
    94cc: 2001         	movge	r0, #0x1
    94ce: f04f 0e00    	mov.w	lr, #0x0
    94d2: 9007         	str	r0, [sp, #0x1c]
    94d4: f029 4000    	bic	r0, r9, #0x80000000
    94d8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    94dc: f04f 0000    	mov.w	r0, #0x0
    94e0: bfa8         	it	ge
    94e2: 2001         	movge	r0, #0x1
    94e4: f04f 0900    	mov.w	r9, #0x0
    94e8: 9006         	str	r0, [sp, #0x18]
    94ea: f02b 4000    	bic	r0, r11, #0x80000000
    94ee: f1b0 4fff    	cmp.w	r0, #0x7f800000
    94f2: f04f 0000    	mov.w	r0, #0x0
    94f6: bfa8         	it	ge
    94f8: 2001         	movge	r0, #0x1
    94fa: f04f 0b00    	mov.w	r11, #0x0
    94fe: 9005         	str	r0, [sp, #0x14]
    9500: f02a 4000    	bic	r0, r10, #0x80000000
    9504: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9508: f04f 0000    	mov.w	r0, #0x0
    950c: bfa8         	it	ge
    950e: 2001         	movge	r0, #0x1
    9510: f04f 0a00    	mov.w	r10, #0x0
    9514: 9004         	str	r0, [sp, #0x10]
    9516: 9808         	ldr	r0, [sp, #0x20]
    9518: f020 4000    	bic	r0, r0, #0x80000000
    951c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9520: f04f 0000    	mov.w	r0, #0x0
    9524: bfa8         	it	ge
    9526: 2001         	movge	r0, #0x1
    9528: 9008         	str	r0, [sp, #0x20]
    952a: 980b         	ldr	r0, [sp, #0x2c]
    952c: f020 4000    	bic	r0, r0, #0x80000000
    9530: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9534: f04f 0000    	mov.w	r0, #0x0
    9538: bfa8         	it	ge
    953a: 2001         	movge	r0, #0x1
    953c: 900b         	str	r0, [sp, #0x2c]
    953e: 980c         	ldr	r0, [sp, #0x30]
    9540: f020 4000    	bic	r0, r0, #0x80000000
    9544: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9548: f04f 0000    	mov.w	r0, #0x0
    954c: bfa8         	it	ge
    954e: 2001         	movge	r0, #0x1
    9550: eddd ca72    	vldr	s25, [sp, #456]
    9554: 900c         	str	r0, [sp, #0x30]
    9556: 980e         	ldr	r0, [sp, #0x38]
    9558: f020 4000    	bic	r0, r0, #0x80000000
    955c: ee1c 1a90    	vmov	r1, s25
    9560: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9564: f04f 0000    	mov.w	r0, #0x0
    9568: bfa8         	it	ge
    956a: 2001         	movge	r0, #0x1
    956c: eddd 7a73    	vldr	s15, [sp, #460]
    9570: 900e         	str	r0, [sp, #0x38]
    9572: f021 4000    	bic	r0, r1, #0x80000000
    9576: ee17 1a90    	vmov	r1, s15
    957a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    957e: f04f 0000    	mov.w	r0, #0x0
    9582: bfa8         	it	ge
    9584: 2001         	movge	r0, #0x1
    9586: ed9d 8a74    	vldr	s16, [sp, #464]
    958a: 9003         	str	r0, [sp, #0xc]
    958c: f021 4000    	bic	r0, r1, #0x80000000
    9590: ee18 1a10    	vmov	r1, s16
    9594: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9598: f04f 0000    	mov.w	r0, #0x0
    959c: bfa8         	it	ge
    959e: 2001         	movge	r0, #0x1
    95a0: ed9d 9a75    	vldr	s18, [sp, #468]
    95a4: 9002         	str	r0, [sp, #0x8]
    95a6: f021 4000    	bic	r0, r1, #0x80000000
    95aa: ee19 1a10    	vmov	r1, s18
    95ae: f1b0 4fff    	cmp.w	r0, #0x7f800000
    95b2: f04f 0000    	mov.w	r0, #0x0
    95b6: bfa8         	it	ge
    95b8: 2001         	movge	r0, #0x1
    95ba: ed9d aa76    	vldr	s20, [sp, #472]
    95be: 9001         	str	r0, [sp, #0x4]
    95c0: f021 4000    	bic	r0, r1, #0x80000000
    95c4: ee1a 1a10    	vmov	r1, s20
    95c8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    95cc: bfa8         	it	ge
    95ce: f04f 0e01    	movge.w	lr, #0x1
    95d2: ed9d ba77    	vldr	s22, [sp, #476]
    95d6: f021 4000    	bic	r0, r1, #0x80000000
    95da: ee1b 1a10    	vmov	r1, s22
    95de: f1b0 4fff    	cmp.w	r0, #0x7f800000
    95e2: bfa8         	it	ge
    95e4: f04f 0901    	movge.w	r9, #0x1
    95e8: ed9d ca78    	vldr	s24, [sp, #480]
    95ec: f021 4100    	bic	r1, r1, #0x80000000
    95f0: ee1c 2a10    	vmov	r2, s24
    95f4: f1b1 4fff    	cmp.w	r1, #0x7f800000
    95f8: bfa8         	it	ge
    95fa: f04f 0b01    	movge.w	r11, #0x1
    95fe: ed9d da79    	vldr	s26, [sp, #484]
    9602: ee1d 3a10    	vmov	r3, s26
    9606: f022 4200    	bic	r2, r2, #0x80000000
    960a: f1b2 4fff    	cmp.w	r2, #0x7f800000
    960e: f04f 0200    	mov.w	r2, #0x0
    9612: bfa8         	it	ge
    9614: 2201         	movge	r2, #0x1
    9616: f023 4300    	bic	r3, r3, #0x80000000
    961a: ed9d ea5e    	vldr	s28, [sp, #376]
    961e: f1b3 4fff    	cmp.w	r3, #0x7f800000
    9622: f04f 0300    	mov.w	r3, #0x0
    9626: ee1e 6a10    	vmov	r6, s28
    962a: bfa8         	it	ge
    962c: 2301         	movge	r3, #0x1
    962e: ed9d fa5f    	vldr	s30, [sp, #380]
    9632: ee1f 5a10    	vmov	r5, s30
    9636: f026 4600    	bic	r6, r6, #0x80000000
    963a: f1b6 4fff    	cmp.w	r6, #0x7f800000
    963e: bfa8         	it	ge
    9640: f04f 0c01    	movge.w	r12, #0x1
    9644: eddd 8a60    	vldr	s17, [sp, #384]
    9648: f025 4500    	bic	r5, r5, #0x80000000
    964c: ee18 6a90    	vmov	r6, s17
    9650: f1b5 4fff    	cmp.w	r5, #0x7f800000
    9654: f04f 0500    	mov.w	r5, #0x0
    9658: bfa8         	it	ge
    965a: 2501         	movge	r5, #0x1
    965c: eddd 9a61    	vldr	s19, [sp, #388]
    9660: f026 4600    	bic	r6, r6, #0x80000000
    9664: ee19 0a90    	vmov	r0, s19
    9668: f1b6 4fff    	cmp.w	r6, #0x7f800000
    966c: f04f 0600    	mov.w	r6, #0x0
    9670: eddd aa62    	vldr	s21, [sp, #392]
    9674: bfa8         	it	ge
    9676: 2601         	movge	r6, #0x1
    9678: f020 4000    	bic	r0, r0, #0x80000000
    967c: eddd ba63    	vldr	s23, [sp, #396]
    9680: ee1a 1a90    	vmov	r1, s21
    9684: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9688: ee1b 0a90    	vmov	r0, s23
    968c: bfa8         	it	ge
    968e: f04f 0801    	movge.w	r8, #0x1
    9692: f021 4100    	bic	r1, r1, #0x80000000
    9696: f020 4000    	bic	r0, r0, #0x80000000
    969a: f1b1 4fff    	cmp.w	r1, #0x7f800000
    969e: bfa8         	it	ge
    96a0: f04f 0a01    	movge.w	r10, #0x1
    96a4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    96a8: f04f 0100    	mov.w	r1, #0x0
    96ac: da4a         	bge	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x94
    96ae: 9819         	ldr	r0, [sp, #0x64]
    96b0: 2800         	cmp	r0, #0x0
    96b2: bf04         	itt	eq
    96b4: 9818         	ldreq	r0, [sp, #0x60]
    96b6: 2800         	cmpeq	r0, #0x0
    96b8: d144         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x88
    96ba: 9816         	ldr	r0, [sp, #0x58]
    96bc: 2800         	cmp	r0, #0x0
    96be: bf04         	itt	eq
    96c0: 9814         	ldreq	r0, [sp, #0x50]
    96c2: 2800         	cmpeq	r0, #0x0
    96c4: d13e         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x7c
    96c6: 9812         	ldr	r0, [sp, #0x48]
    96c8: 2800         	cmp	r0, #0x0
    96ca: bf04         	itt	eq
    96cc: 9810         	ldreq	r0, [sp, #0x40]
    96ce: 2800         	cmpeq	r0, #0x0
    96d0: d138         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x70
    96d2: 9807         	ldr	r0, [sp, #0x1c]
    96d4: 2800         	cmp	r0, #0x0
    96d6: bf04         	itt	eq
    96d8: 9806         	ldreq	r0, [sp, #0x18]
    96da: 2800         	cmpeq	r0, #0x0
    96dc: d132         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x64
    96de: 9805         	ldr	r0, [sp, #0x14]
    96e0: 2800         	cmp	r0, #0x0
    96e2: bf04         	itt	eq
    96e4: 9804         	ldreq	r0, [sp, #0x10]
    96e6: 2800         	cmpeq	r0, #0x0
    96e8: d12c         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x58
    96ea: 9808         	ldr	r0, [sp, #0x20]
    96ec: 2800         	cmp	r0, #0x0
    96ee: bf04         	itt	eq
    96f0: 980b         	ldreq	r0, [sp, #0x2c]
    96f2: 2800         	cmpeq	r0, #0x0
    96f4: d126         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x4c
    96f6: 980c         	ldr	r0, [sp, #0x30]
    96f8: 2800         	cmp	r0, #0x0
    96fa: bf04         	itt	eq
    96fc: 980e         	ldreq	r0, [sp, #0x38]
    96fe: 2800         	cmpeq	r0, #0x0
    9700: d120         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x40
    9702: 9803         	ldr	r0, [sp, #0xc]
    9704: 2800         	cmp	r0, #0x0
    9706: bf04         	itt	eq
    9708: 9802         	ldreq	r0, [sp, #0x8]
    970a: 2800         	cmpeq	r0, #0x0
    970c: d11a         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x34
    970e: 9801         	ldr	r0, [sp, #0x4]
    9710: 2800         	cmp	r0, #0x0
    9712: bf08         	it	eq
    9714: f1be 0f00    	cmpeq.w	lr, #0x0
    9718: d114         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x28
    971a: f1b9 0f00    	cmp.w	r9, #0x0
    971e: bf08         	it	eq
    9720: f1bb 0f00    	cmpeq.w	r11, #0x0
    9724: d10e         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x1c
    9726: 2a00         	cmp	r2, #0x0
    9728: bf08         	it	eq
    972a: 2b00         	cmpeq	r3, #0x0
    972c: d10a         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0x14
    972e: f1bc 0f00    	cmp.w	r12, #0x0
    9732: bf08         	it	eq
    9734: 2d00         	cmpeq	r5, #0x0
    9736: d105         	bne	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #0xa
    9738: 2e00         	cmp	r6, #0x0
    973a: bf08         	it	eq
    973c: f1b8 0f00    	cmpeq.w	r8, #0x0
    9740: f000 80e2    	beq.w	0x9908 <ram_probe::packed_probe::control+0x2200> @ imm = #0x1c4
    9744: 9a1b         	ldr	r2, [sp, #0x6c]
    9746: 69e0         	ldr	r0, [r4, #0x1c]
    9748: 460b         	mov	r3, r1
    974a: f04f 41ff    	mov.w	r1, #0x7f800000
    974e: e9c2 0100    	strd	r0, r1, [r2]
    9752: 981a         	ldr	r0, [sp, #0x68]
    9754: 7210         	strb	r0, [r2, #0x8]
    9756: 7253         	strb	r3, [r2, #0x9]
    9758: f50d 7d08    	add.w	sp, sp, #0x220
    975c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    9760: b001         	add	sp, #0x4
    9762: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    9766: bdf0         	pop	{r4, r5, r6, r7, pc}
    9768: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    976c: eef0 2a45    	vmov.f32	s5, s10
    9770: eef0 ca46    	vmov.f32	s25, s12
    9774: ed8d 9b08    	vstr	d9, [sp, #32]
    9778: eeb0 9a40    	vmov.f32	s18, s0
    977c: ed9f 0ac0    	vldr	s0, [pc, #768]          @ 0x9a80 <ram_probe::packed_probe::control+0x2378>
    9780: ee42 2a00    	vmla.f32	s5, s4, s0
    9784: ed8d 2a5c    	vstr	s4, [sp, #368]
    9788: ee42 ca25    	vmla.f32	s25, s4, s11
    978c: eeb0 0a49    	vmov.f32	s0, s18
    9790: fe82 9aec    	vminnm.f32	s18, s5, s25
    9794: ee3a cac9    	vsub.f32	s24, s21, s18
    9798: eeb8 9a00    	vmov.f32	s18, #-2.000000e+00
    979c: eeb4 ca49    	vcmp.f32	s24, s18
    97a0: ed9d 9b08    	vldr	d9, [sp, #32]
    97a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97a8: f77e ae2f    	ble.w	0x840a <ram_probe::packed_probe::control+0xd02> @ imm = #-0x13a2
    97ac: eef4 2a6c    	vcmp.f32	s5, s25
    97b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97b4: f63e ae29    	bhi.w	0x840a <ram_probe::packed_probe::control+0xd02> @ imm = #-0x13ae
    97b8: eeb5 ca40    	vcmp.f32	s24, #0
    97bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97c0: f57e ae23    	bpl.w	0x840a <ram_probe::packed_probe::control+0xd02> @ imm = #-0x13ba
    97c4: eef0 2a66    	vmov.f32	s5, s13
    97c8: ee4c 2a2a    	vmla.f32	s5, s24, s21
    97cc: ed9f 9aad    	vldr	s18, [pc, #692]         @ 0x9a84 <ram_probe::packed_probe::control+0x237c>
    97d0: ee62 2a80    	vmul.f32	s5, s5, s0
    97d4: eef4 2a49    	vcmp.f32	s5, s18
    97d8: ed9d 9b08    	vldr	d9, [sp, #32]
    97dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97e0: f77e ae13    	ble.w	0x840a <ram_probe::packed_probe::control+0xd02> @ imm = #-0x13da
    97e4: f7fe be9a    	b.w	0x851c <ram_probe::packed_probe::control+0xe14> @ imm = #-0x12cc
    97e8: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    97ec: eeb0 8a40    	vmov.f32	s16, s0
    97f0: ed9f 0aa3    	vldr	s0, [pc, #652]          @ 0x9a80 <ram_probe::packed_probe::control+0x2378>
    97f4: eef0 2a45    	vmov.f32	s5, s10
    97f8: eeb0 ca46    	vmov.f32	s24, s12
    97fc: ee42 2a00    	vmla.f32	s5, s4, s0
    9800: ed8d 2a5c    	vstr	s4, [sp, #368]
    9804: ee02 ca25    	vmla.f32	s24, s4, s11
    9808: eeb0 0a48    	vmov.f32	s0, s16
    980c: fe82 8acc    	vminnm.f32	s16, s5, s24
    9810: ee3a bac8    	vsub.f32	s22, s21, s16
    9814: eeb8 8a00    	vmov.f32	s16, #-2.000000e+00
    9818: eeb4 ba48    	vcmp.f32	s22, s16
    981c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9820: f77e ae36    	ble.w	0x8490 <ram_probe::packed_probe::control+0xd88> @ imm = #-0x1394
    9824: eeb4 ca62    	vcmp.f32	s24, s5
    9828: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    982c: f63e ae30    	bhi.w	0x8490 <ram_probe::packed_probe::control+0xd88> @ imm = #-0x13a0
    9830: eeb5 ba40    	vcmp.f32	s22, #0
    9834: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9838: f57e ae2a    	bpl.w	0x8490 <ram_probe::packed_probe::control+0xd88> @ imm = #-0x13ac
    983c: eef0 2a66    	vmov.f32	s5, s13
    9840: ee4b 2a2a    	vmla.f32	s5, s22, s21
    9844: ed9f 8a8f    	vldr	s16, [pc, #572]         @ 0x9a84 <ram_probe::packed_probe::control+0x237c>
    9848: ee62 2a80    	vmul.f32	s5, s5, s0
    984c: eef4 2a48    	vcmp.f32	s5, s16
    9850: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9854: f77e ae1c    	ble.w	0x8490 <ram_probe::packed_probe::control+0xd88> @ imm = #-0x13c8
    9858: f7fe be60    	b.w	0x851c <ram_probe::packed_probe::control+0xe14> @ imm = #-0x1340
    985c: bf00         	nop
    985e: bf00         	nop
    9860: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    9864: eeb0 9a40    	vmov.f32	s18, s0
    9868: ed9f 0a85    	vldr	s0, [pc, #532]          @ 0x9a80 <ram_probe::packed_probe::control+0x2378>
    986c: eef0 2a45    	vmov.f32	s5, s10
    9870: eef0 ca46    	vmov.f32	s25, s12
    9874: ee42 2a00    	vmla.f32	s5, s4, s0
    9878: ed8d 2a5c    	vstr	s4, [sp, #368]
    987c: ee42 ca25    	vmla.f32	s25, s4, s11
    9880: eeb0 0a49    	vmov.f32	s0, s18
    9884: fe82 9aec    	vminnm.f32	s18, s5, s25
    9888: ee3a cac9    	vsub.f32	s24, s21, s18
    988c: eeb8 9a00    	vmov.f32	s18, #-2.000000e+00
    9890: eeb4 ca49    	vcmp.f32	s24, s18
    9894: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9898: f77e adc2    	ble.w	0x8420 <ram_probe::packed_probe::control+0xd18> @ imm = #-0x147c
    989c: eef4 2a6c    	vcmp.f32	s5, s25
    98a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    98a4: f63e adbc    	bhi.w	0x8420 <ram_probe::packed_probe::control+0xd18> @ imm = #-0x1488
    98a8: eeb5 ca40    	vcmp.f32	s24, #0
    98ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    98b0: f57e adb6    	bpl.w	0x8420 <ram_probe::packed_probe::control+0xd18> @ imm = #-0x1494
    98b4: eef0 2a66    	vmov.f32	s5, s13
    98b8: ee4c 2a2a    	vmla.f32	s5, s24, s21
    98bc: ed9f 9a71    	vldr	s18, [pc, #452]         @ 0x9a84 <ram_probe::packed_probe::control+0x237c>
    98c0: ee62 2a80    	vmul.f32	s5, s5, s0
    98c4: eef4 2a49    	vcmp.f32	s5, s18
    98c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    98cc: f77e ada8    	ble.w	0x8420 <ram_probe::packed_probe::control+0xd18> @ imm = #-0x14b0
    98d0: f7fe be24    	b.w	0x851c <ram_probe::packed_probe::control+0xe14> @ imm = #-0x13b8
    98d4: bf00         	nop
    98d6: bf00         	nop
    98d8: f64d 20a3    	movw	r0, #0xdaa3
    98dc: f64d 7248    	movw	r2, #0xdf48
    98e0: f2c0 0000    	movt	r0, #0x0
    98e4: f2c0 0200    	movt	r2, #0x0
    98e8: a97a         	add	r1, sp, #0x1e8
    98ea: f002 fadf    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0x25be
    98ee: bf00         	nop
    98f0: f64d 20a3    	movw	r0, #0xdaa3
    98f4: f64d 7248    	movw	r2, #0xdf48
    98f8: f2c0 0000    	movt	r0, #0x0
    98fc: f2c0 0200    	movt	r2, #0x0
    9900: a963         	add	r1, sp, #0x18c
    9902: f002 fad3    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0x25a6
    9906: bf00         	nop
    9908: f1ba 0f00    	cmp.w	r10, #0x0
    990c: f47f af1a    	bne.w	0x9744 <ram_probe::packed_probe::control+0x203c> @ imm = #-0x1cc
    9910: f104 0120    	add.w	r1, r4, #0x20
    9914: f104 0090    	add.w	r0, r4, #0x90
    9918: 2270         	movs	r2, #0x70
    991a: ed8d 8a07    	vstr	s16, [sp, #28]
    991e: eeb0 8a43    	vmov.f32	s16, s6
    9922: ed8d 9a08    	vstr	s18, [sp, #32]
    9926: eeb0 9a44    	vmov.f32	s18, s8
    992a: ed8d aa0b    	vstr	s20, [sp, #44]
    992e: eeb0 aa45    	vmov.f32	s20, s10
    9932: ed8d ba0c    	vstr	s22, [sp, #48]
    9936: eeb0 ba46    	vmov.f32	s22, s12
    993a: ed8d ca0e    	vstr	s24, [sp, #56]
    993e: eeb0 ca47    	vmov.f32	s24, s14
    9942: ed8d da10    	vstr	s26, [sp, #64]
    9946: eeb0 da60    	vmov.f32	s26, s1
    994a: ed8d ea12    	vstr	s28, [sp, #72]
    994e: eeb0 ea61    	vmov.f32	s28, s3
    9952: ed8d fa14    	vstr	s30, [sp, #80]
    9956: eeb0 fa62    	vmov.f32	s30, s5
    995a: edcd 8a16    	vstr	s17, [sp, #88]
    995e: eef0 8a63    	vmov.f32	s17, s7
    9962: edcd 9a18    	vstr	s19, [sp, #96]
    9966: eef0 9a64    	vmov.f32	s19, s9
    996a: edcd aa19    	vstr	s21, [sp, #100]
    996e: eef0 aa65    	vmov.f32	s21, s11
    9972: edcd 7a06    	vstr	s15, [sp, #24]
    9976: f003 fe97    	bl	0xd6a8 <__aeabi_memcpy4> @ imm = #0x3d2e
    997a: ad56         	add	r5, sp, #0x158
    997c: edc4 ba08    	vstr	s23, [r4, #32]
    9980: edc4 da09    	vstr	s27, [r4, #36]
    9984: ed9d 0a06    	vldr	s0, [sp, #24]
    9988: edc4 ea0a    	vstr	s29, [r4, #40]
    998c: 4620         	mov	r0, r4
    998e: edc4 fa0b    	vstr	s31, [r4, #44]
    9992: ed84 8a0c    	vstr	s16, [r4, #48]
    9996: ed84 9a0d    	vstr	s18, [r4, #52]
    999a: ed84 aa0e    	vstr	s20, [r4, #56]
    999e: ed84 ba0f    	vstr	s22, [r4, #60]
    99a2: ed84 ca10    	vstr	s24, [r4, #64]
    99a6: ed84 da11    	vstr	s26, [r4, #68]
    99aa: ed84 ea12    	vstr	s28, [r4, #72]
    99ae: ed84 fa13    	vstr	s30, [r4, #76]
    99b2: edc4 8a14    	vstr	s17, [r4, #80]
    99b6: edc4 9a15    	vstr	s19, [r4, #84]
    99ba: edc4 aa16    	vstr	s21, [r4, #88]
    99be: edc4 ca17    	vstr	s25, [r4, #92]
    99c2: ed84 0a18    	vstr	s0, [r4, #96]
    99c6: ed9d 0a07    	vldr	s0, [sp, #28]
    99ca: ed84 0a19    	vstr	s0, [r4, #100]
    99ce: ed9d 0a08    	vldr	s0, [sp, #32]
    99d2: ed84 0a1a    	vstr	s0, [r4, #104]
    99d6: ed9d 0a0b    	vldr	s0, [sp, #44]
    99da: ed84 0a1b    	vstr	s0, [r4, #108]
    99de: ed9d 0a0c    	vldr	s0, [sp, #48]
    99e2: ed84 0a1c    	vstr	s0, [r4, #112]
    99e6: ed9d 0a0e    	vldr	s0, [sp, #56]
    99ea: ed84 0a1d    	vstr	s0, [r4, #116]
    99ee: ed9d 0a10    	vldr	s0, [sp, #64]
    99f2: ed84 0a1e    	vstr	s0, [r4, #120]
    99f6: ed9d 0a12    	vldr	s0, [sp, #72]
    99fa: ed84 0a1f    	vstr	s0, [r4, #124]
    99fe: ed9d 0a14    	vldr	s0, [sp, #80]
    9a02: ed84 0a20    	vstr	s0, [r4, #128]
    9a06: ed9d 0a16    	vldr	s0, [sp, #88]
    9a0a: ed84 0a21    	vstr	s0, [r4, #132]
    9a0e: ed9d 0a18    	vldr	s0, [sp, #96]
    9a12: ed84 0a22    	vstr	s0, [r4, #136]
    9a16: ed9d 0a19    	vldr	s0, [sp, #100]
    9a1a: ed84 0a23    	vstr	s0, [r4, #140]
    9a1e: cd4e         	ldm	r5!, {r1, r2, r3, r6}
    9a20: c04e         	stm	r0!, {r1, r2, r3, r6}
    9a22: e895 004e    	ldm.w	r5, {r1, r2, r3, r6}
    9a26: c04e         	stm	r0!, {r1, r2, r3, r6}
    9a28: f8d4 0118    	ldr.w	r0, [r4, #0x118]
    9a2c: 991b         	ldr	r1, [sp, #0x6c]
    9a2e: 3001         	adds	r0, #0x1
    9a30: ed9d 0a00    	vldr	s0, [sp]
    9a34: ed81 0a01    	vstr	s0, [r1, #4]
    9a38: bf28         	it	hs
    9a3a: f04f 30ff    	movhs.w	r0, #0xffffffff
    9a3e: f8c4 0118    	str.w	r0, [r4, #0x118]
    9a42: 985d         	ldr	r0, [sp, #0x174]
    9a44: 6008         	str	r0, [r1]
    9a46: 981a         	ldr	r0, [sp, #0x68]
    9a48: 7208         	strb	r0, [r1, #0x8]
    9a4a: 2001         	movs	r0, #0x1
    9a4c: 7248         	strb	r0, [r1, #0x9]
    9a4e: e683         	b	0x9758 <ram_probe::packed_probe::control+0x2050> @ imm = #-0x2fa
    9a50: ed9f 4a0a    	vldr	s8, [pc, #40]           @ 0x9a7c <ram_probe::packed_probe::control+0x2374>
    9a54: eeb0 3a44    	vmov.f32	s6, s8
    9a58: f7fe b9b1    	b.w	0x7dbe <ram_probe::packed_probe::control+0x6b6> @ imm = #-0x1c9e
    9a5c: bf00         	nop
    9a5e: bf00         	nop
    9a60: eddf 4a06    	vldr	s9, [pc, #24]           @ 0x9a7c <ram_probe::packed_probe::control+0x2374>
    9a64: eef0 2a64    	vmov.f32	s5, s9
    9a68: f7fe be59    	b.w	0x871e <ram_probe::packed_probe::control+0x1016> @ imm = #-0x134e
    9a6c: bf00         	nop
    9a6e: bf00         	nop
    9a70: ed9f fa02    	vldr	s30, [pc, #8]           @ 0x9a7c <ram_probe::packed_probe::control+0x2374>
    9a74: eeb0 ca4f    	vmov.f32	s24, s30
    9a78: f7fe bfa9    	b.w	0x89ce <ram_probe::packed_probe::control+0x12c6> @ imm = #-0x10ae
    9a7c: 00 00 c0 7f  	.word	0x7fc00000
    9a80: 99 76 cd 39  	.word	0x39cd7699
    9a84: 95 bf d6 33  	.word	0x33d6bf95
    9a88: 00 00 00 80  	.word	0x80000000
    9a8c: d2 4e da c3  	.word	0xc3da4ed2

00009a90 <ram_probe::packed_probe::candidate>:
    9a90: b5f0         	push	{r4, r5, r6, r7, lr}
    9a92: af03         	add	r7, sp, #0xc
    9a94: e92d 0f00    	push.w	{r8, r9, r10, r11}
    9a98: b081         	sub	sp, #0x4
    9a9a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    9a9e: f5ad 7d14    	sub.w	sp, sp, #0x250
    9aa2: eeb6 fa00    	vmov.f32	s30, #5.000000e-01
    9aa6: ed91 1a08    	vldr	s2, [r1, #32]
    9aaa: ed91 2a24    	vldr	s4, [r1, #144]
    9aae: ed91 3a09    	vldr	s6, [r1, #36]
    9ab2: ee31 1a01    	vadd.f32	s2, s2, s2
    9ab6: ed91 4a0a    	vldr	s8, [r1, #40]
    9aba: ee02 1a4f    	vmls.f32	s2, s4, s30
    9abe: ed91 5a0b    	vldr	s10, [r1, #44]
    9ac2: ee33 2a03    	vadd.f32	s4, s6, s6
    9ac6: ed91 3a25    	vldr	s6, [r1, #148]
    9aca: ee03 2a4f    	vmls.f32	s4, s6, s30
    9ace: ed91 6a30    	vldr	s12, [r1, #192]
    9ad2: ee34 3a04    	vadd.f32	s6, s8, s8
    9ad6: ed91 4a26    	vldr	s8, [r1, #152]
    9ada: ee04 3a4f    	vmls.f32	s6, s8, s30
    9ade: ed8d 1a16    	vstr	s2, [sp, #88]
    9ae2: ee35 4a05    	vadd.f32	s8, s10, s10
    9ae6: ed91 5a27    	vldr	s10, [r1, #156]
    9aea: ee05 4a4f    	vmls.f32	s8, s10, s30
    9aee: ed8d 2a17    	vstr	s4, [sp, #92]
    9af2: ed91 1a0c    	vldr	s2, [r1, #48]
    9af6: ed91 5a0f    	vldr	s10, [r1, #60]
    9afa: ed91 2a28    	vldr	s4, [r1, #160]
    9afe: ed8d 3a18    	vstr	s6, [sp, #96]
    9b02: ee31 1a01    	vadd.f32	s2, s2, s2
    9b06: ed91 3a29    	vldr	s6, [r1, #164]
    9b0a: ee02 1a4f    	vmls.f32	s2, s4, s30
    9b0e: ed91 2a0d    	vldr	s4, [r1, #52]
    9b12: ed8d 4a19    	vstr	s8, [sp, #100]
    9b16: ee32 2a02    	vadd.f32	s4, s4, s4
    9b1a: ee03 2a4f    	vmls.f32	s4, s6, s30
    9b1e: ed91 3a0e    	vldr	s6, [r1, #56]
    9b22: ed91 4a2a    	vldr	s8, [r1, #168]
    9b26: ee33 3a03    	vadd.f32	s6, s6, s6
    9b2a: ee04 3a4f    	vmls.f32	s6, s8, s30
    9b2e: ed8d 1a1a    	vstr	s2, [sp, #104]
    9b32: ee35 4a05    	vadd.f32	s8, s10, s10
    9b36: ed91 5a2b    	vldr	s10, [r1, #172]
    9b3a: ee05 4a4f    	vmls.f32	s8, s10, s30
    9b3e: ed91 1a10    	vldr	s2, [r1, #64]
    9b42: ed8d 2a1b    	vstr	s4, [sp, #108]
    9b46: ed91 2a11    	vldr	s4, [r1, #68]
    9b4a: ed8d 3a1c    	vstr	s6, [sp, #112]
    9b4e: ed91 3a2c    	vldr	s6, [r1, #176]
    9b52: ee31 1a01    	vadd.f32	s2, s2, s2
    9b56: ed91 5a2f    	vldr	s10, [r1, #188]
    9b5a: ee03 1a4f    	vmls.f32	s2, s6, s30
    9b5e: ed91 3a2d    	vldr	s6, [r1, #180]
    9b62: ed8d 4a1d    	vstr	s8, [sp, #116]
    9b66: ee32 2a02    	vadd.f32	s4, s4, s4
    9b6a: ee03 2a4f    	vmls.f32	s4, s6, s30
    9b6e: ed91 3a12    	vldr	s6, [r1, #72]
    9b72: ed91 4a2e    	vldr	s8, [r1, #184]
    9b76: ee33 3a03    	vadd.f32	s6, s6, s6
    9b7a: ee04 3a4f    	vmls.f32	s6, s8, s30
    9b7e: ed91 4a13    	vldr	s8, [r1, #76]
    9b82: ee34 4a04    	vadd.f32	s8, s8, s8
    9b86: ed8d 1a1e    	vstr	s2, [sp, #120]
    9b8a: ee05 4a4f    	vmls.f32	s8, s10, s30
    9b8e: ed8d 2a1f    	vstr	s4, [sp, #124]
    9b92: ed91 1a15    	vldr	s2, [r1, #84]
    9b96: ed91 5a14    	vldr	s10, [r1, #80]
    9b9a: ed91 2a31    	vldr	s4, [r1, #196]
    9b9e: ed8d 3a20    	vstr	s6, [sp, #128]
    9ba2: ee31 1a01    	vadd.f32	s2, s2, s2
    9ba6: ed91 3a32    	vldr	s6, [r1, #200]
    9baa: ee02 1a4f    	vmls.f32	s2, s4, s30
    9bae: ed91 2a16    	vldr	s4, [r1, #88]
    9bb2: ed8d 4a21    	vstr	s8, [sp, #132]
    9bb6: ee32 2a02    	vadd.f32	s4, s4, s4
    9bba: ee03 2a4f    	vmls.f32	s4, s6, s30
    9bbe: ed91 3a17    	vldr	s6, [r1, #92]
    9bc2: ed91 4a33    	vldr	s8, [r1, #204]
    9bc6: ee33 3a03    	vadd.f32	s6, s6, s6
    9bca: ee04 3a4f    	vmls.f32	s6, s8, s30
    9bce: ed8d 1a23    	vstr	s2, [sp, #140]
    9bd2: ee35 5a05    	vadd.f32	s10, s10, s10
    9bd6: ed91 1a1a    	vldr	s2, [r1, #104]
    9bda: ee06 5a4f    	vmls.f32	s10, s12, s30
    9bde: ed8d 2a24    	vstr	s4, [sp, #144]
    9be2: ed91 2a36    	vldr	s4, [r1, #216]
    9be6: ee31 1a01    	vadd.f32	s2, s2, s2
    9bea: ed8d 3a25    	vstr	s6, [sp, #148]
    9bee: ee02 1a4f    	vmls.f32	s2, s4, s30
    9bf2: ed91 2a1b    	vldr	s4, [r1, #108]
    9bf6: ed91 4a18    	vldr	s8, [r1, #96]
    9bfa: ed91 3a37    	vldr	s6, [r1, #220]
    9bfe: ee32 2a02    	vadd.f32	s4, s4, s4
    9c02: ee03 2a4f    	vmls.f32	s4, s6, s30
    9c06: ed8d 5a22    	vstr	s10, [sp, #136]
    9c0a: ed91 5a34    	vldr	s10, [r1, #208]
    9c0e: ee34 4a04    	vadd.f32	s8, s8, s8
    9c12: ee05 4a4f    	vmls.f32	s8, s10, s30
    9c16: ed91 5a19    	vldr	s10, [r1, #100]
    9c1a: ed91 6a35    	vldr	s12, [r1, #212]
    9c1e: ee35 5a05    	vadd.f32	s10, s10, s10
    9c22: ee06 5a4f    	vmls.f32	s10, s12, s30
    9c26: ed8d 1a28    	vstr	s2, [sp, #160]
    9c2a: ed8d 2a29    	vstr	s4, [sp, #164]
    9c2e: ed91 1a1f    	vldr	s2, [r1, #124]
    9c32: ed91 2a3b    	vldr	s4, [r1, #236]
    9c36: ee31 8a01    	vadd.f32	s16, s2, s2
    9c3a: ee02 8a4f    	vmls.f32	s16, s4, s30
    9c3e: ed91 1a20    	vldr	s2, [r1, #128]
    9c42: ed91 2a3c    	vldr	s4, [r1, #240]
    9c46: ed8d 4a26    	vstr	s8, [sp, #152]
    9c4a: ed91 3a1c    	vldr	s6, [r1, #112]
    9c4e: ee31 9a01    	vadd.f32	s18, s2, s2
    9c52: ed91 4a38    	vldr	s8, [r1, #224]
    9c56: ee02 9a4f    	vmls.f32	s18, s4, s30
    9c5a: ed91 1a21    	vldr	s2, [r1, #132]
    9c5e: ed8d 5a27    	vstr	s10, [sp, #156]
    9c62: ed91 2a3d    	vldr	s4, [r1, #244]
    9c66: ee33 3a03    	vadd.f32	s6, s6, s6
    9c6a: ee04 3a4f    	vmls.f32	s6, s8, s30
    9c6e: ed91 4a1d    	vldr	s8, [r1, #116]
    9c72: ed91 5a39    	vldr	s10, [r1, #228]
    9c76: ee31 ba01    	vadd.f32	s22, s2, s2
    9c7a: ee02 ba4f    	vmls.f32	s22, s4, s30
    9c7e: ed91 1a22    	vldr	s2, [r1, #136]
    9c82: ed91 2a3e    	vldr	s4, [r1, #248]
    9c86: ee34 4a04    	vadd.f32	s8, s8, s8
    9c8a: ee05 4a4f    	vmls.f32	s8, s10, s30
    9c8e: ed91 5a1e    	vldr	s10, [r1, #120]
    9c92: ed91 6a3a    	vldr	s12, [r1, #232]
    9c96: ee31 da01    	vadd.f32	s26, s2, s2
    9c9a: ee02 da4f    	vmls.f32	s26, s4, s30
    9c9e: ed91 1a23    	vldr	s2, [r1, #140]
    9ca2: ed91 2a3f    	vldr	s4, [r1, #252]
    9ca6: ee35 5a05    	vadd.f32	s10, s10, s10
    9caa: ee06 5a4f    	vmls.f32	s10, s12, s30
    9cae: 460c         	mov	r4, r1
    9cb0: ee31 ea01    	vadd.f32	s28, s2, s2
    9cb4: 4681         	mov	r9, r0
    9cb6: ee02 ea4f    	vmls.f32	s28, s4, s30
    9cba: a832         	add	r0, sp, #0xc8
    9cbc: a916         	add	r1, sp, #0x58
    9cbe: ed8d 3a2a    	vstr	s6, [sp, #168]
    9cc2: ed8d 4a2b    	vstr	s8, [sp, #172]
    9cc6: eef0 aa40    	vmov.f32	s21, s0
    9cca: ed8d 5a2c    	vstr	s10, [sp, #176]
    9cce: ed8d 8a2d    	vstr	s16, [sp, #180]
    9cd2: ed8d 9a2e    	vstr	s18, [sp, #184]
    9cd6: ed8d ba2f    	vstr	s22, [sp, #188]
    9cda: ed8d da30    	vstr	s26, [sp, #192]
    9cde: ed8d ea31    	vstr	s28, [sp, #196]
    9ce2: f7f6 fddd    	bl	0x8a0 <orange_dsp::generated_packed::origin::<5>> @ imm = #-0x9446
    9ce6: ed9f 1a9c    	vldr	s2, [pc, #624]          @ 0x9f58 <ram_probe::packed_probe::candidate+0x4c8>
    9cea: 4621         	mov	r1, r4
    9cec: ee28 aa01    	vmul.f32	s20, s16, s2
    9cf0: ed9f 3a9a    	vldr	s6, [pc, #616]          @ 0x9f5c <ram_probe::packed_probe::candidate+0x4cc>
    9cf4: ee29 7a01    	vmul.f32	s14, s18, s2
    9cf8: ed9f 5af6    	vldr	s10, [pc, #984]         @ 0xa0d4 <ram_probe::packed_probe::candidate+0x644>
    9cfc: ed9f 0af6    	vldr	s0, [pc, #984]          @ 0xa0d8 <ram_probe::packed_probe::candidate+0x648>
    9d00: ee2b ca01    	vmul.f32	s24, s22, s2
    9d04: ee3a 4a03    	vadd.f32	s8, s20, s6
    9d08: ed9f 2af4    	vldr	s4, [pc, #976]          @ 0xa0dc <ram_probe::packed_probe::candidate+0x64c>
    9d0c: ee3a 6a05    	vadd.f32	s12, s20, s10
    9d10: ed8d 7a55    	vstr	s14, [sp, #340]
    9d14: ee2d 8a01    	vmul.f32	s16, s26, s2
    9d18: ed8d aa51    	vstr	s20, [sp, #324]
    9d1c: eec4 8a00    	vdiv.f32	s17, s8, s0
    9d20: ed8d ca59    	vstr	s24, [sp, #356]
    9d24: ee37 4a03    	vadd.f32	s8, s14, s6
    9d28: edcd 8a53    	vstr	s17, [sp, #332]
    9d2c: ee2e ea01    	vmul.f32	s28, s28, s2
    9d30: ed8d 8a5d    	vstr	s16, [sp, #372]
    9d34: ee37 1a05    	vadd.f32	s2, s14, s10
    9d38: ed8d ea61    	vstr	s28, [sp, #388]
    9d3c: eec6 fa00    	vdiv.f32	s31, s12, s0
    9d40: a865         	add	r0, sp, #0x194
    9d42: ee84 4a00    	vdiv.f32	s8, s8, s0
    9d46: edcd fa54    	vstr	s31, [sp, #336]
    9d4a: ee27 6a02    	vmul.f32	s12, s14, s4
    9d4e: ed8d 4a57    	vstr	s8, [sp, #348]
    9d52: ee81 1a00    	vdiv.f32	s2, s2, s0
    9d56: ed8d 6a56    	vstr	s12, [sp, #344]
    9d5a: ee3c 6a03    	vadd.f32	s12, s24, s6
    9d5e: ed8d 1a58    	vstr	s2, [sp, #352]
    9d62: ee3c 4a05    	vadd.f32	s8, s24, s10
    9d66: ee38 1a03    	vadd.f32	s2, s16, s6
    9d6a: ee38 3a05    	vadd.f32	s6, s16, s10
    9d6e: ee6a ea02    	vmul.f32	s29, s20, s4
    9d72: ee2c da02    	vmul.f32	s26, s24, s4
    9d76: edcd ea52    	vstr	s29, [sp, #328]
    9d7a: ee86 7a00    	vdiv.f32	s14, s12, s0
    9d7e: ed8d da5a    	vstr	s26, [sp, #360]
    9d82: ee84 6a00    	vdiv.f32	s12, s8, s0
    9d86: ed8d 7a12    	vstr	s14, [sp, #72]
    9d8a: ee28 ba02    	vmul.f32	s22, s16, s4
    9d8e: ed9f 2ada    	vldr	s4, [pc, #872]          @ 0xa0f8 <ram_probe::packed_probe::candidate+0x668>
    9d92: ee81 4a00    	vdiv.f32	s8, s2, s0
    9d96: ed9f 1ad9    	vldr	s2, [pc, #868]          @ 0xa0fc <ram_probe::packed_probe::candidate+0x66c>
    9d9a: ee3e 1a01    	vadd.f32	s2, s28, s2
    9d9e: ed8d 7a5b    	vstr	s14, [sp, #364]
    9da2: ee3e 2a02    	vadd.f32	s4, s28, s4
    9da6: ed8d 6a13    	vstr	s12, [sp, #76]
    9daa: ee83 3a00    	vdiv.f32	s6, s6, s0
    9dae: ed8d 6a5c    	vstr	s12, [sp, #368]
    9db2: ed8d 3a11    	vstr	s6, [sp, #68]
    9db6: ee81 1a00    	vdiv.f32	s2, s2, s0
    9dba: ed8d 3a60    	vstr	s6, [sp, #384]
    9dbe: ed9f 3ad0    	vldr	s6, [pc, #832]          @ 0xa100 <ram_probe::packed_probe::candidate+0x670>
    9dc2: ee2e 3a03    	vmul.f32	s6, s28, s6
    9dc6: ed8d ba5e    	vstr	s22, [sp, #376]
    9dca: ee82 0a00    	vdiv.f32	s0, s4, s0
    9dce: ed8d 4a10    	vstr	s8, [sp, #64]
    9dd2: ed8d 4a5f    	vstr	s8, [sp, #380]
    9dd6: ed8d 1a14    	vstr	s2, [sp, #80]
    9dda: ed8d 3a0f    	vstr	s6, [sp, #60]
    9dde: ed8d 3a62    	vstr	s6, [sp, #392]
    9de2: ed8d 1a63    	vstr	s2, [sp, #396]
    9de6: ed8d 0a0e    	vstr	s0, [sp, #56]
    9dea: ed8d 0a64    	vstr	s0, [sp, #400]
    9dee: c96c         	ldm	r1!, {r2, r3, r5, r6}
    9df0: c06c         	stm	r0!, {r2, r3, r5, r6}
    9df2: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
    9df6: c06c         	stm	r0!, {r2, r3, r5, r6}
    9df8: ed9d 9b32    	vldr	d9, [sp, #200]
    9dfc: 2000         	movs	r0, #0x0
    9dfe: 906d         	str	r0, [sp, #0x1b4]
    9e00: ed9f 0bc1    	vldr	d0, [pc, #772]          @ 0xa108 <ram_probe::packed_probe::candidate+0x678>
    9e04: e9cd 0070    	strd	r0, r0, [sp, #448]
    9e08: ee89 0b00    	vdiv.f64	d0, d9, d0
    9e0c: e9cd 006e    	strd	r0, r0, [sp, #440]
    9e10: eeb7 2bc0    	vcvt.f32.f64	s4, d0
    9e14: ed9f 0ae9    	vldr	s0, [pc, #932]          @ 0xa1bc <ram_probe::packed_probe::candidate+0x72c>
    9e18: eeb0 1ac2    	vabs.f32	s2, s4
    9e1c: eeb4 1a40    	vcmp.f32	s2, s0
    9e20: ed9d 0a65    	vldr	s0, [sp, #404]
    9e24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e28: ed8d 2a65    	vstr	s4, [sp, #404]
    9e2c: d838         	bhi	0x9ea0 <ram_probe::packed_probe::candidate+0x410> @ imm = #0x70
    9e2e: ed9f 4ae4    	vldr	s8, [pc, #912]          @ 0xa1c0 <ram_probe::packed_probe::candidate+0x730>
    9e32: eeb7 3bc9    	vcvt.f32.f64	s6, d9
    9e36: ee02 3a04    	vmla.f32	s6, s4, s8
    9e3a: ee13 0a10    	vmov	r0, s6
    9e3e: f020 4000    	bic	r0, r0, #0x80000000
    9e42: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9e46: da2b         	bge	0x9ea0 <ram_probe::packed_probe::candidate+0x410> @ imm = #0x56
    9e48: eeb0 2ac3    	vabs.f32	s4, s6
    9e4c: ed9f 5add    	vldr	s10, [pc, #884]         @ 0xa1c4 <ram_probe::packed_probe::candidate+0x734>
    9e50: ee82 2a05    	vdiv.f32	s4, s4, s10
    9e54: ed9f 5adc    	vldr	s10, [pc, #880]         @ 0xa1c8 <ram_probe::packed_probe::candidate+0x738>
    9e58: eeb4 2a45    	vcmp.f32	s4, s10
    9e5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e60: d81e         	bhi	0x9ea0 <ram_probe::packed_probe::candidate+0x410> @ imm = #0x3c
    9e62: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    9e66: eeb4 1a41    	vcmp.f32	s2, s2
    9e6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e6e: ee83 3a04    	vdiv.f32	s6, s6, s8
    9e72: ed9f 4ad6    	vldr	s8, [pc, #856]          @ 0xa1cc <ram_probe::packed_probe::candidate+0x73c>
    9e76: fe15 1a01    	vselvs.f32	s2, s10, s2
    9e7a: eeb0 3ac3    	vabs.f32	s6, s6
    9e7e: eeb4 1a45    	vcmp.f32	s2, s10
    9e82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e86: fe31 1a05    	vselgt.f32	s2, s2, s10
    9e8a: ee21 1a04    	vmul.f32	s2, s2, s8
    9e8e: ed9f 4ad0    	vldr	s8, [pc, #832]          @ 0xa1d0 <ram_probe::packed_probe::candidate+0x740>
    9e92: fe81 1a44    	vminnm.f32	s2, s2, s8
    9e96: eeb4 3a41    	vcmp.f32	s6, s2
    9e9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e9e: d95f         	bls	0x9f60 <ram_probe::packed_probe::candidate+0x4d0> @ imm = #0xbe
    9ea0: ed8d 0a65    	vstr	s0, [sp, #404]
    9ea4: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    9ea8: eeb0 0b49    	vmov.f64	d0, d9
    9eac: 3001         	adds	r0, #0x1
    9eae: f8c4 010c    	str.w	r0, [r4, #0x10c]
    9eb2: a872         	add	r0, sp, #0x1c8
    9eb4: a965         	add	r1, sp, #0x194
    9eb6: f7fa fa8b    	bl	0x43d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>> @ imm = #-0x5aea
    9eba: f89d 01cd    	ldrb.w	r0, [sp, #0x1cd]
    9ebe: f89d 51cc    	ldrb.w	r5, [sp, #0x1cc]
    9ec2: b1c8         	cbz	r0, 0x9ef8 <ram_probe::packed_probe::candidate+0x468> @ imm = #0x32
    9ec4: ed9d 0a72    	vldr	s0, [sp, #456]
    9ec8: ed9f 1af1    	vldr	s2, [pc, #964]          @ 0xa290 <ram_probe::packed_probe::candidate+0x800>
    9ecc: eeb4 0a40    	vcmp.f32	s0, s0
    9ed0: ed8d da0d    	vstr	s26, [sp, #52]
    9ed4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ed8: ed8d ba0c    	vstr	s22, [sp, #48]
    9edc: fe11 0a00    	vselvs.f32	s0, s2, s0
    9ee0: edcd aa0b    	vstr	s21, [sp, #44]
    9ee4: eeb5 0a40    	vcmp.f32	s0, #0
    9ee8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9eec: fe70 da01    	vselgt.f32	s27, s0, s2
    9ef0: e050         	b	0x9f94 <ram_probe::packed_probe::candidate+0x504> @ imm = #0xa0
    9ef2: bf00         	nop
    9ef4: bf00         	nop
    9ef6: bf00         	nop
    9ef8: eeb0 0b49    	vmov.f64	d0, d9
    9efc: a872         	add	r0, sp, #0x1c8
    9efe: a965         	add	r1, sp, #0x194
    9f00: 2600         	movs	r6, #0x0
    9f02: 9665         	str	r6, [sp, #0x194]
    9f04: f7fa fa64    	bl	0x43d0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5, 1>> @ imm = #-0x5b38
    9f08: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    9f0c: ed9d 0a72    	vldr	s0, [sp, #456]
    9f10: 3001         	adds	r0, #0x1
    9f12: eeb4 0a40    	vcmp.f32	s0, s0
    9f16: bf28         	it	hs
    9f18: f04f 30ff    	movhs.w	r0, #0xffffffff
    9f1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f20: ed9f 1adb    	vldr	s2, [pc, #876]          @ 0xa290 <ram_probe::packed_probe::candidate+0x800>
    9f24: f89d 11cc    	ldrb.w	r1, [sp, #0x1cc]
    9f28: fe11 2a00    	vselvs.f32	s4, s2, s0
    9f2c: f89d 21cd    	ldrb.w	r2, [sp, #0x1cd]
    9f30: 440d         	add	r5, r1
    9f32: f8c4 011c    	str.w	r0, [r4, #0x11c]
    9f36: eeb5 2a40    	vcmp.f32	s4, #0
    9f3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f3e: fe72 da01    	vselgt.f32	s27, s4, s2
    9f42: 2a00         	cmp	r2, #0x0
    9f44: f000 82c6    	beq.w	0xa4d4 <ram_probe::packed_probe::candidate+0xa44> @ imm = #0x58c
    9f48: ed8d da0d    	vstr	s26, [sp, #52]
    9f4c: ed8d ba0c    	vstr	s22, [sp, #48]
    9f50: edcd aa0b    	vstr	s21, [sp, #44]
    9f54: e01e         	b	0x9f94 <ram_probe::packed_probe::candidate+0x504> @ imm = #0x3c
    9f56: bf00         	nop
    9f58: 00 80 bb 47  	.word	0x47bb8000
    9f5c: 00 24 74 cb  	.word	0xcb742400
    9f60: eeb4 2a42    	vcmp.f32	s4, s4
    9f64: ed9f 0aca    	vldr	s0, [pc, #808]          @ 0xa290 <ram_probe::packed_probe::candidate+0x800>
    9f68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f6c: f8d4 0100    	ldr.w	r0, [r4, #0x100]
    9f70: ed8d da0d    	vstr	s26, [sp, #52]
    9f74: fe10 1a02    	vselvs.f32	s2, s0, s4
    9f78: ed8d ba0c    	vstr	s22, [sp, #48]
    9f7c: edcd aa0b    	vstr	s21, [sp, #44]
    9f80: 3001         	adds	r0, #0x1
    9f82: f8c4 0100    	str.w	r0, [r4, #0x100]
    9f86: 2500         	movs	r5, #0x0
    9f88: eeb5 1a40    	vcmp.f32	s2, #0
    9f8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f90: fe71 da00    	vselgt.f32	s27, s2, s0
    9f94: ed9d 0a65    	vldr	s0, [sp, #404]
    9f98: eeba da0b    	vmov.f32	s26, #-1.350000e+01
    9f9c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    9fa0: ed9d 2a67    	vldr	s4, [sp, #412]
    9fa4: ed9f 1be6    	vldr	d1, [pc, #920]          @ 0xa340 <ram_probe::packed_probe::candidate+0x8b0>
    9fa8: eef2 ca0b    	vmov.f32	s25, #1.350000e+01
    9fac: ed9d 9b42    	vldr	d9, [sp, #264]
    9fb0: ee00 9b01    	vmla.f64	d9, d0, d1
    9fb4: ed9d 0a68    	vldr	s0, [sp, #416]
    9fb8: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    9fbc: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    9fc0: ed9f bbe1    	vldr	d11, [pc, #900]         @ 0xa348 <ram_probe::packed_probe::candidate+0x8b8>
    9fc4: eeb0 2b49    	vmov.f64	d2, d9
    9fc8: ee01 2b0b    	vmla.f64	d2, d1, d11
    9fcc: ed9d 1a6a    	vldr	s2, [sp, #424]
    9fd0: ee00 2b0b    	vmla.f64	d2, d0, d11
    9fd4: ed9d 0a69    	vldr	s0, [sp, #420]
    9fd8: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    9fdc: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    9fe0: ed8d 9b42    	vstr	d9, [sp, #264]
    9fe4: ee00 2b0b    	vmla.f64	d2, d0, d11
    9fe8: ed9d 0a6b    	vldr	s0, [sp, #428]
    9fec: ee01 2b0b    	vmla.f64	d2, d1, d11
    9ff0: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    9ff4: ed9d 1a6c    	vldr	s2, [sp, #432]
    9ff8: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    9ffc: ee00 2b0b    	vmla.f64	d2, d0, d11
    a000: eeb7 0aca    	vcvt.f64.f32	d0, s20
    a004: ee01 2b0b    	vmla.f64	d2, d1, d11
    a008: ed9f 1bd1    	vldr	d1, [pc, #836]          @ 0xa350 <ram_probe::packed_probe::candidate+0x8c0>
    a00c: ee80 0b01    	vdiv.f64	d0, d0, d1
    a010: ed9f 1bd1    	vldr	d1, [pc, #836]          @ 0xa358 <ram_probe::packed_probe::candidate+0x8c8>
    a014: ee02 0b01    	vmla.f64	d0, d2, d1
    a018: ed9f 1bd1    	vldr	d1, [pc, #836]          @ 0xa360 <ram_probe::packed_probe::candidate+0x8d0>
    a01c: ee80 0b01    	vdiv.f64	d0, d0, d1
    a020: ed9d ab34    	vldr	d10, [sp, #208]
    a024: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    a028: eeb4 da40    	vcmp.f32	s26, s0
    a02c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a030: fe3d 0a00    	vselgt.f32	s0, s26, s0
    a034: eeb4 0a6c    	vcmp.f32	s0, s25
    a038: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a03c: eef4 8a6f    	vcmp.f32	s17, s31
    a040: fe3c 2a80    	vselgt.f32	s4, s25, s0
    a044: ed9d 0a66    	vldr	s0, [sp, #408]
    a048: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a04c: ed8d 2a66    	vstr	s4, [sp, #408]
    a050: f201 86ea    	bhi.w	0xbe28 <ram_probe::packed_probe::candidate+0x2398> @ imm = #0x1dd4
    a054: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    a058: ed9f 5ac9    	vldr	s10, [pc, #804]         @ 0xa380 <ram_probe::packed_probe::candidate+0x8f0>
    a05c: ed9f 3bc2    	vldr	d3, [pc, #776]          @ 0xa368 <ram_probe::packed_probe::candidate+0x8d8>
    a060: eeb0 4b49    	vmov.f64	d4, d9
    a064: ee01 4b03    	vmla.f64	d4, d1, d3
    a068: ed9f 3ac6    	vldr	s6, [pc, #792]          @ 0xa384 <ram_probe::packed_probe::candidate+0x8f4>
    a06c: eeb7 1bc4    	vcvt.f32.f64	s2, d4
    a070: eeb7 4bca    	vcvt.f32.f64	s8, d10
    a074: ee41 ea03    	vmla.f32	s29, s2, s6
    a078: ed9f 1ac3    	vldr	s2, [pc, #780]          @ 0xa388 <ram_probe::packed_probe::candidate+0x8f8>
    a07c: ee02 4a01    	vmla.f32	s8, s4, s2
    a080: eef4 8a6e    	vcmp.f32	s17, s29
    a084: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a088: eeb0 3ac4    	vabs.f32	s6, s8
    a08c: fe38 1aae    	vselgt.f32	s2, s17, s29
    a090: eeb4 1a6f    	vcmp.f32	s2, s31
    a094: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a098: eeb4 3a45    	vcmp.f32	s6, s10
    a09c: fe3f 1a81    	vselgt.f32	s2, s31, s2
    a0a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a0a4: da1c         	bge	0xa0e0 <ram_probe::packed_probe::candidate+0x650> @ imm = #0x38
    a0a6: ed9f 5ab9    	vldr	s10, [pc, #740]         @ 0xa38c <ram_probe::packed_probe::candidate+0x8fc>
    a0aa: eeb4 3a45    	vcmp.f32	s6, s10
    a0ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a0b2: d91d         	bls	0xa0f0 <ram_probe::packed_probe::candidate+0x660> @ imm = #0x3a
    a0b4: ed9f 5aea    	vldr	s10, [pc, #936]         @ 0xa460 <ram_probe::packed_probe::candidate+0x9d0>
    a0b8: eeb4 3a45    	vcmp.f32	s6, s10
    a0bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a0c0: d926         	bls	0xa110 <ram_probe::packed_probe::candidate+0x680> @ imm = #0x4c
    a0c2: ed9f 5ae8    	vldr	s10, [pc, #928]         @ 0xa464 <ram_probe::packed_probe::candidate+0x9d4>
    a0c6: ee33 6a05    	vadd.f32	s12, s6, s10
    a0ca: ed9f 7ae7    	vldr	s14, [pc, #924]         @ 0xa468 <ram_probe::packed_probe::candidate+0x9d8>
    a0ce: eeb0 5a08    	vmov.f32	s10, #3.000000e+00
    a0d2: e025         	b	0xa120 <ram_probe::packed_probe::candidate+0x690> @ imm = #0x4a
    a0d4: 00 24 74 4b  	.word	0x4b742400
    a0d8: 00 a0 0c 48  	.word	0x480ca000
    a0dc: 50 d0 e8 36  	.word	0x36e8d050
    a0e0: ed9f 5a6b    	vldr	s10, [pc, #428]         @ 0xa290 <ram_probe::packed_probe::candidate+0x800>
    a0e4: eeb0 7a45    	vmov.f32	s14, s10
    a0e8: e076         	b	0xa1d8 <ram_probe::packed_probe::candidate+0x748> @ imm = #0xec
    a0ea: bf00         	nop
    a0ec: bf00         	nop
    a0ee: bf00         	nop
    a0f0: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    a0f4: e016         	b	0xa124 <ram_probe::packed_probe::candidate+0x694> @ imm = #0x2c
    a0f6: bf00         	nop
    a0f8: 00 24 f4 4a  	.word	0x4af42400
    a0fc: 00 24 f4 ca  	.word	0xcaf42400
    a100: df ff e7 36  	.word	0x36e7ffdf
    a104: 00 bf 00 bf  	.word	0xbf00bf00
    a108: 80 e5 70 28  	.word	0x2870e580
    a10c: a1 3a 03 3f  	.word	0x3f033aa1
    a110: ed9f 5ad6    	vldr	s10, [pc, #856]         @ 0xa46c <ram_probe::packed_probe::candidate+0x9dc>
    a114: ee33 6a05    	vadd.f32	s12, s6, s10
    a118: eeb7 5a08    	vmov.f32	s10, #1.500000e+00
    a11c: ed9f 7ad4    	vldr	s14, [pc, #848]         @ 0xa470 <ram_probe::packed_probe::candidate+0x9e0>
    a120: ee06 5a07    	vmla.f32	s10, s12, s14
    a124: eeb2 6a0e    	vmov.f32	s12, #1.500000e+01
    a128: ee36 6a45    	vsub.f32	s12, s12, s10
    a12c: ed9f 5a58    	vldr	s10, [pc, #352]         @ 0xa290 <ram_probe::packed_probe::candidate+0x800>
    a130: fe86 7a05    	vmaxnm.f32	s14, s12, s10
    a134: eeb5 7a40    	vcmp.f32	s14, #0
    a138: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a13c: d94c         	bls	0xa1d8 <ram_probe::packed_probe::candidate+0x748> @ imm = #0x98
    a13e: eeb0 5ac1    	vabs.f32	s10, s2
    a142: eeb4 5a47    	vcmp.f32	s10, s14
    a146: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a14a: f340 80a5    	ble.w	0xa298 <ram_probe::packed_probe::candidate+0x808> @ imm = #0x14a
    a14e: eec7 0a05    	vdiv.f32	s1, s14, s10
    a152: ee20 5aa0    	vmul.f32	s10, s1, s1
    a156: ee25 5a05    	vmul.f32	s10, s10, s10
    a15a: ee25 5a05    	vmul.f32	s10, s10, s10
    a15e: ee65 1a05    	vmul.f32	s3, s10, s10
    a162: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    a166: ee71 2a85    	vadd.f32	s5, s3, s10
    a16a: eeb0 6a45    	vmov.f32	s12, s10
    a16e: eef4 2a45    	vcmp.f32	s5, s10
    a172: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a176: d009         	beq	0xa18c <ram_probe::packed_probe::candidate+0x6fc> @ imm = #0x12
    a178: eef1 2ae2    	vsqrt.f32	s5, s5
    a17c: eef1 2ae2    	vsqrt.f32	s5, s5
    a180: eef1 2ae2    	vsqrt.f32	s5, s5
    a184: eef1 2ae2    	vsqrt.f32	s5, s5
    a188: eeb0 6a62    	vmov.f32	s12, s5
    a18c: ee11 0a10    	vmov	r0, s2
    a190: f04f 517e    	mov.w	r1, #0x3f800000
    a194: eec5 5a06    	vdiv.f32	s11, s10, s12
    a198: ed9f 6ad4    	vldr	s12, [pc, #848]         @ 0xa4ec <ram_probe::packed_probe::candidate+0xa5c>
    a19c: eeb4 1a41    	vcmp.f32	s2, s2
    a1a0: f361 001e    	bfi	r0, r1, #0, #31
    a1a4: ee02 0a90    	vmov	s5, r0
    a1a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a1ac: ee22 5a87    	vmul.f32	s10, s5, s14
    a1b0: ee25 5a25    	vmul.f32	s10, s10, s11
    a1b4: fe16 5a05    	vselvs.f32	s10, s12, s10
    a1b8: e014         	b	0xa1e4 <ram_probe::packed_probe::candidate+0x754> @ imm = #0x28
    a1ba: bf00         	nop
    a1bc: 93 18 36 41  	.word	0x41361893
    a1c0: 09 d5 19 b8  	.word	0xb819d509
    a1c4: 0a d7 23 3c  	.word	0x3c23d70a
    a1c8: 17 b7 d1 38  	.word	0x38d1b717
    a1cc: bd 37 06 36  	.word	0x360637bd
    a1d0: ac c5 a7 37  	.word	0x37a7c5ac
    a1d4: 00 bf 00 bf  	.word	0xbf00bf00
    a1d8: eef0 1a45    	vmov.f32	s3, s10
    a1dc: eef0 5a45    	vmov.f32	s11, s10
    a1e0: eef0 0a45    	vmov.f32	s1, s10
    a1e4: ee32 6a45    	vsub.f32	s12, s4, s10
    a1e8: ee16 0a10    	vmov	r0, s12
    a1ec: f020 4000    	bic	r0, r0, #0x80000000
    a1f0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a1f4: f280 8106    	bge.w	0xa404 <ram_probe::packed_probe::candidate+0x974> @ imm = #0x20c
    a1f8: eeb0 5ac6    	vabs.f32	s10, s12
    a1fc: eef2 2a0e    	vmov.f32	s5, #1.500000e+01
    a200: ee85 5a22    	vdiv.f32	s10, s10, s5
    a204: ed5f 2a10    	vldr	s5, [pc, #-64]          @ 0xa1c8 <ram_probe::packed_probe::candidate+0x738>
    a208: eeb4 5a62    	vcmp.f32	s10, s5
    a20c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a210: f200 80f8    	bhi.w	0xa404 <ram_probe::packed_probe::candidate+0x974> @ imm = #0x1f0
    a214: eddf 3a1e    	vldr	s7, [pc, #120]          @ 0xa290 <ram_probe::packed_probe::candidate+0x800>
    a218: 2100         	movs	r1, #0x0
    a21a: eef0 2a63    	vmov.f32	s5, s7
    a21e: eef0 4a63    	vmov.f32	s9, s7
    a222: eef4 ea68    	vcmp.f32	s29, s17
    a226: 2000         	movs	r0, #0x0
    a228: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a22c: bfc8         	it	gt
    a22e: 2101         	movgt	r1, #0x1
    a230: eef4 ea6f    	vcmp.f32	s29, s31
    a234: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a238: eeb5 7a40    	vcmp.f32	s14, #0
    a23c: bf48         	it	mi
    a23e: 2001         	movmi	r0, #0x1
    a240: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a244: d952         	bls	0xa2ec <ram_probe::packed_probe::candidate+0x85c> @ imm = #0xa4
    a246: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    a24a: eef0 4ac1    	vabs.f32	s9, s2
    a24e: ee71 2aa2    	vadd.f32	s5, s3, s5
    a252: eef4 4a47    	vcmp.f32	s9, s14
    a256: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a25a: eec5 2aa2    	vdiv.f32	s5, s11, s5
    a25e: dd3f         	ble	0xa2e0 <ram_probe::packed_probe::candidate+0x850> @ imm = #0x7e
    a260: ee11 2a10    	vmov	r2, s2
    a264: f04f 537e    	mov.w	r3, #0x3f800000
    a268: ee61 0aa0    	vmul.f32	s1, s3, s1
    a26c: eeb4 1a41    	vcmp.f32	s2, s2
    a270: f363 021e    	bfi	r2, r3, #0, #31
    a274: ee07 2a10    	vmov	s14, r2
    a278: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a27c: ee27 7a22    	vmul.f32	s14, s14, s5
    a280: ee62 2aa0    	vmul.f32	s5, s5, s1
    a284: eddf 0a99    	vldr	s1, [pc, #612]          @ 0xa4ec <ram_probe::packed_probe::candidate+0xa5c>
    a288: fe50 4a87    	vselvs.f32	s9, s1, s14
    a28c: e02e         	b	0xa2ec <ram_probe::packed_probe::candidate+0x85c> @ imm = #0x5c
    a28e: bf00         	nop
    a290: 00 00 00 00  	.word	0x00000000
    a294: 00 bf 00 bf  	.word	0xbf00bf00
    a298: eec1 0a07    	vdiv.f32	s1, s2, s14
    a29c: ee20 5aa0    	vmul.f32	s10, s1, s1
    a2a0: ee25 5a05    	vmul.f32	s10, s10, s10
    a2a4: ee25 5a05    	vmul.f32	s10, s10, s10
    a2a8: ee65 1a05    	vmul.f32	s3, s10, s10
    a2ac: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    a2b0: ee31 6a85    	vadd.f32	s12, s3, s10
    a2b4: eef0 2a45    	vmov.f32	s5, s10
    a2b8: eeb4 6a45    	vcmp.f32	s12, s10
    a2bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a2c0: d009         	beq	0xa2d6 <ram_probe::packed_probe::candidate+0x846> @ imm = #0x12
    a2c2: eeb1 6ac6    	vsqrt.f32	s12, s12
    a2c6: eeb1 6ac6    	vsqrt.f32	s12, s12
    a2ca: eeb1 6ac6    	vsqrt.f32	s12, s12
    a2ce: eeb1 6ac6    	vsqrt.f32	s12, s12
    a2d2: eef0 2a46    	vmov.f32	s5, s12
    a2d6: eec5 5a22    	vdiv.f32	s11, s10, s5
    a2da: ee21 5a25    	vmul.f32	s10, s2, s11
    a2de: e781         	b	0xa1e4 <ram_probe::packed_probe::candidate+0x754> @ imm = #-0xfe
    a2e0: ee61 0a21    	vmul.f32	s1, s2, s3
    a2e4: ee80 7a87    	vdiv.f32	s14, s1, s14
    a2e8: ee62 4a87    	vmul.f32	s9, s5, s14
    a2ec: eebf 7a00    	vmov.f32	s14, #-1.000000e+00
    a2f0: eeb5 4a40    	vcmp.f32	s8, #0
    a2f4: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    a2f8: eef0 0a63    	vmov.f32	s1, s7
    a2fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a300: bf48         	it	mi
    a302: eef0 0a47    	vmovmi.f32	s1, s14
    a306: ea00 0001    	and.w	r0, r0, r1
    a30a: fe34 7a20    	vselgt.f32	s14, s8, s1
    a30e: eddf 0a1c    	vldr	s1, [pc, #112]          @ 0xa380 <ram_probe::packed_probe::candidate+0x8f0>
    a312: eeb4 3a60    	vcmp.f32	s6, s1
    a316: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a31a: da3f         	bge	0xa39c <ram_probe::packed_probe::candidate+0x90c> @ imm = #0x7e
    a31c: eddf 0a4f    	vldr	s1, [pc, #316]          @ 0xa45c <ram_probe::packed_probe::candidate+0x9cc>
    a320: eeb4 3a60    	vcmp.f32	s6, s1
    a324: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a328: d926         	bls	0xa378 <ram_probe::packed_probe::candidate+0x8e8> @ imm = #0x4c
    a32a: eddf 0a4d    	vldr	s1, [pc, #308]          @ 0xa460 <ram_probe::packed_probe::candidate+0x9d0>
    a32e: eeb4 3a60    	vcmp.f32	s6, s1
    a332: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a336: d92b         	bls	0xa390 <ram_probe::packed_probe::candidate+0x900> @ imm = #0x56
    a338: ed9f 3a4b    	vldr	s6, [pc, #300]          @ 0xa468 <ram_probe::packed_probe::candidate+0x9d8>
    a33c: e02a         	b	0xa394 <ram_probe::packed_probe::candidate+0x904> @ imm = #0x54
    a33e: bf00         	nop
    a340: a2 0c d2 2e  	.word	0x2ed20ca2
    a344: ca fe ef 3f  	.word	0x3feffeca
		...
    a350: a7 2a 45 4f  	.word	0x4f452aa7
    a354: ed 97 01 41  	.word	0x410197ed
    a358: 26 88 21 19  	.word	0x19218826
    a35c: 2f cc 65 40  	.word	0x4065cc2f
    a360: e7 0c 1b 48  	.word	0x481b0ce7
    a364: 2d 35 17 40  	.word	0x4017352d
    a368: 1f 89 9b cf  	.word	0xcf9b891f
    a36c: ab 32 9c bf  	.word	0xbf9c32ab
    a370: a5 94 a7 50  	.word	0x50a794a5
    a374: 09 2c d5 3f  	.word	0x3fd52c09
    a378: ed1f 3a3b    	vldr	s6, [pc, #-236]         @ 0xa290 <ram_probe::packed_probe::candidate+0x800>
    a37c: e00c         	b	0xa398 <ram_probe::packed_probe::candidate+0x908> @ imm = #0x18
    a37e: bf00         	nop
    a380: 0a d7 23 3d  	.word	0x3d23d70a
    a384: 79 61 2e 43  	.word	0x432e6179
    a388: ab aa a0 b8  	.word	0xb8a0aaab
    a38c: 7c f2 b0 3a  	.word	0x3ab0f27c
    a390: ed9f 3a37    	vldr	s6, [pc, #220]          @ 0xa470 <ram_probe::packed_probe::candidate+0x9e0>
    a394: ee27 3a03    	vmul.f32	s6, s14, s6
    a398: eef1 3a43    	vneg.f32	s7, s6
    a39c: 2800         	cmp	r0, #0x0
    a39e: ed9f 3a7c    	vldr	s6, [pc, #496]          @ 0xa590 <ram_probe::packed_probe::candidate+0xb00>
    a3a2: ed9f 7a7c    	vldr	s14, [pc, #496]         @ 0xa594 <ram_probe::packed_probe::candidate+0xb04>
    a3a6: eeb0 2ac2    	vabs.f32	s4, s4
    a3aa: fe07 3a03    	vseleq.f32	s6, s14, s6
    a3ae: ed9f 7a7a    	vldr	s14, [pc, #488]         @ 0xa598 <ram_probe::packed_probe::candidate+0xb08>
    a3b2: eddf 0a7a    	vldr	s1, [pc, #488]          @ 0xa59c <ram_probe::packed_probe::candidate+0xb0c>
    a3b6: eeb4 2a42    	vcmp.f32	s4, s4
    a3ba: ee23 3a22    	vmul.f32	s6, s6, s5
    a3be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3c2: ee23 3a07    	vmul.f32	s6, s6, s14
    a3c6: ee24 7aa3    	vmul.f32	s14, s9, s7
    a3ca: fe14 2a02    	vselvs.f32	s4, s8, s4
    a3ce: ee07 3a20    	vmla.f32	s6, s14, s1
    a3d2: eeb4 2a44    	vcmp.f32	s4, s8
    a3d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3da: fe32 2a04    	vselgt.f32	s4, s4, s8
    a3de: ee33 3a04    	vadd.f32	s6, s6, s8
    a3e2: ed1f 4a86    	vldr	s8, [pc, #-536]         @ 0xa1cc <ram_probe::packed_probe::candidate+0x73c>
    a3e6: ee22 2a04    	vmul.f32	s4, s4, s8
    a3ea: ed1f 4a87    	vldr	s8, [pc, #-540]         @ 0xa1d0 <ram_probe::packed_probe::candidate+0x740>
    a3ee: ee86 3a03    	vdiv.f32	s6, s12, s6
    a3f2: fe82 2a44    	vminnm.f32	s4, s4, s8
    a3f6: eeb0 3ac3    	vabs.f32	s6, s6
    a3fa: eeb4 3a42    	vcmp.f32	s6, s4
    a3fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a402: d975         	bls	0xa4f0 <ram_probe::packed_probe::candidate+0xa60> @ imm = #0xea
    a404: ed8d 0a66    	vstr	s0, [sp, #408]
    a408: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    a40c: eeb0 0b4a    	vmov.f64	d0, d10
    a410: 3001         	adds	r0, #0x1
    a412: eeb0 1b49    	vmov.f64	d1, d9
    a416: f8c4 010c    	str.w	r0, [r4, #0x10c]
    a41a: a872         	add	r0, sp, #0x1c8
    a41c: a965         	add	r1, sp, #0x194
    a41e: aa51         	add	r2, sp, #0x144
    a420: ab6d         	add	r3, sp, #0x1b4
    a422: f7fa fa1d    	bl	0x4860 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>> @ imm = #-0x5bc6
    a426: f89d 01cd    	ldrb.w	r0, [sp, #0x1cd]
    a42a: f89d 11cc    	ldrb.w	r1, [sp, #0x1cc]
    a42e: 440d         	add	r5, r1
    a430: b310         	cbz	r0, 0xa478 <ram_probe::packed_probe::candidate+0x9e8> @ imm = #0x44
    a432: eef4 da6d    	vcmp.f32	s27, s27
    a436: ed9d 0a72    	vldr	s0, [sp, #456]
    a43a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a43e: eeb4 0a40    	vcmp.f32	s0, s0
    a442: fe10 1a2d    	vselvs.f32	s2, s0, s27
    a446: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a44a: fe11 0a00    	vselvs.f32	s0, s2, s0
    a44e: eeb4 1a40    	vcmp.f32	s2, s0
    a452: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a456: fe31 9a00    	vselgt.f32	s18, s2, s0
    a45a: e062         	b	0xa522 <ram_probe::packed_probe::candidate+0xa92> @ imm = #0xc4
    a45c: 7c f2 b0 3a  	.word	0x3ab0f27c
    a460: a6 9b c4 3b  	.word	0x3bc49ba6
    a464: a6 9b c4 bb  	.word	0xbbc49ba6
    a468: 79 78 b0 43  	.word	0x43b07879
    a46c: 7c f2 b0 ba  	.word	0xbab0f27c
    a470: 53 4a a1 43  	.word	0x43a14a53
    a474: 00 bf 00 bf  	.word	0xbf00bf00
    a478: eeb0 0b4a    	vmov.f64	d0, d10
    a47c: a872         	add	r0, sp, #0x1c8
    a47e: eeb0 1b49    	vmov.f64	d1, d9
    a482: a965         	add	r1, sp, #0x194
    a484: aa51         	add	r2, sp, #0x144
    a486: ab6d         	add	r3, sp, #0x1b4
    a488: 2600         	movs	r6, #0x0
    a48a: 9666         	str	r6, [sp, #0x198]
    a48c: f7fa f9e8    	bl	0x4860 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5, 1>> @ imm = #-0x5c30
    a490: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    a494: eef4 da6d    	vcmp.f32	s27, s27
    a498: 3001         	adds	r0, #0x1
    a49a: bf28         	it	hs
    a49c: f04f 30ff    	movhs.w	r0, #0xffffffff
    a4a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4a4: ed9d 0a72    	vldr	s0, [sp, #456]
    a4a8: f89d 11cc    	ldrb.w	r1, [sp, #0x1cc]
    a4ac: fe10 1a2d    	vselvs.f32	s2, s0, s27
    a4b0: f89d 21cd    	ldrb.w	r2, [sp, #0x1cd]
    a4b4: eeb4 0a40    	vcmp.f32	s0, s0
    a4b8: 440d         	add	r5, r1
    a4ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4be: f8c4 011c    	str.w	r0, [r4, #0x11c]
    a4c2: fe11 2a00    	vselvs.f32	s4, s2, s0
    a4c6: eeb4 1a42    	vcmp.f32	s2, s4
    a4ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4ce: fe31 9a02    	vselgt.f32	s18, s2, s4
    a4d2: bb32         	cbnz	r2, 0xa522 <ram_probe::packed_probe::candidate+0xa92> @ imm = #0x4c
    a4d4: 69e0         	ldr	r0, [r4, #0x1c]
    a4d6: f8c9 0000    	str.w	r0, [r9]
    a4da: ed89 0a01    	vstr	s0, [r9, #4]
    a4de: f889 5008    	strb.w	r5, [r9, #0x8]
    a4e2: f889 6009    	strb.w	r6, [r9, #0x9]
    a4e6: f001 bc94    	b.w	0xbe12 <ram_probe::packed_probe::candidate+0x2382> @ imm = #0x1928
    a4ea: bf00         	nop
    a4ec: 00 00 c0 7f  	.word	0x7fc00000
    a4f0: eef4 da6d    	vcmp.f32	s27, s27
    a4f4: f8d4 0104    	ldr.w	r0, [r4, #0x104]
    a4f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4fc: eeb4 5a45    	vcmp.f32	s10, s10
    a500: ed8d 1a6d    	vstr	s2, [sp, #436]
    a504: fe15 0a2d    	vselvs.f32	s0, s10, s27
    a508: 3001         	adds	r0, #0x1
    a50a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a50e: f8c4 0104    	str.w	r0, [r4, #0x104]
    a512: fe10 2a05    	vselvs.f32	s4, s0, s10
    a516: eeb4 0a42    	vcmp.f32	s0, s4
    a51a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a51e: fe30 9a02    	vselgt.f32	s18, s0, s4
    a522: ed9d 0a66    	vldr	s0, [sp, #408]
    a526: f50d 78e4    	add.w	r8, sp, #0x1c8
    a52a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a52e: a965         	add	r1, sp, #0x194
    a530: ed1f 2b71    	vldr	d2, [pc, #-452]         @ 0xa370 <ram_probe::packed_probe::candidate+0x8e0>
    a534: aa32         	add	r2, sp, #0xc8
    a536: ab51         	add	r3, sp, #0x144
    a538: ed9d 1b44    	vldr	d1, [sp, #272]
    a53c: 4640         	mov	r0, r8
    a53e: f50d 7ada    	add.w	r10, sp, #0x1b4
    a542: ee00 1b02    	vmla.f64	d1, d0, d2
    a546: f8cd a000    	str.w	r10, [sp]
    a54a: ed8d 1b44    	vstr	d1, [sp, #272]
    a54e: f7fa fceb    	bl	0x4f28 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>> @ imm = #-0x562a
    a552: f89d 01cd    	ldrb.w	r0, [sp, #0x1cd]
    a556: f89d 11cc    	ldrb.w	r1, [sp, #0x1cc]
    a55a: 2801         	cmp	r0, #0x1
    a55c: eb01 0b05    	add.w	r11, r1, r5
    a560: d11e         	bne	0xa5a0 <ram_probe::packed_probe::candidate+0xb10> @ imm = #0x3c
    a562: eeb4 9a49    	vcmp.f32	s18, s18
    a566: ed9d 0a72    	vldr	s0, [sp, #456]
    a56a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a56e: eeb4 0a40    	vcmp.f32	s0, s0
    a572: fe10 1a09    	vselvs.f32	s2, s0, s18
    a576: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a57a: fe11 0a00    	vselvs.f32	s0, s2, s0
    a57e: eeb4 1a40    	vcmp.f32	s2, s0
    a582: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a586: fe31 0a00    	vselgt.f32	s0, s2, s0
    a58a: ed8d 0a0a    	vstr	s0, [sp, #40]
    a58e: e038         	b	0xa602 <ram_probe::packed_probe::candidate+0xb72> @ imm = #0x70
    a590: 79 61 2e c3  	.word	0xc32e6179
    a594: 00 00 00 80  	.word	0x80000000
    a598: 5e 95 e1 bc  	.word	0xbce1955e
    a59c: ab aa a0 38  	.word	0x38a0aaab
    a5a0: a872         	add	r0, sp, #0x1c8
    a5a2: a965         	add	r1, sp, #0x194
    a5a4: aa32         	add	r2, sp, #0xc8
    a5a6: ab51         	add	r3, sp, #0x144
    a5a8: 2600         	movs	r6, #0x0
    a5aa: f8cd a000    	str.w	r10, [sp]
    a5ae: e9cd 6667    	strd	r6, r6, [sp, #412]
    a5b2: f7fa fcb9    	bl	0x4f28 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5, 2>> @ imm = #-0x568e
    a5b6: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    a5ba: eeb4 9a49    	vcmp.f32	s18, s18
    a5be: 3001         	adds	r0, #0x1
    a5c0: bf28         	it	hs
    a5c2: f04f 30ff    	movhs.w	r0, #0xffffffff
    a5c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5ca: ed9d 0a72    	vldr	s0, [sp, #456]
    a5ce: f89d 11cc    	ldrb.w	r1, [sp, #0x1cc]
    a5d2: fe10 1a09    	vselvs.f32	s2, s0, s18
    a5d6: f89d 21cd    	ldrb.w	r2, [sp, #0x1cd]
    a5da: eeb4 0a40    	vcmp.f32	s0, s0
    a5de: 448b         	add	r11, r1
    a5e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5e4: f8c4 011c    	str.w	r0, [r4, #0x11c]
    a5e8: fe11 2a00    	vselvs.f32	s4, s2, s0
    a5ec: eeb4 1a42    	vcmp.f32	s2, s4
    a5f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5f4: fe31 1a02    	vselgt.f32	s2, s2, s4
    a5f8: 2a00         	cmp	r2, #0x0
    a5fa: f001 8319    	beq.w	0xbc30 <ram_probe::packed_probe::candidate+0x21a0> @ imm = #0x1632
    a5fe: ed8d 1a0a    	vstr	s2, [sp, #40]
    a602: ed9d 0a67    	vldr	s0, [sp, #412]
    a606: ed9d 2a68    	vldr	s4, [sp, #416]
    a60a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a60e: eddf faf7    	vldr	s31, [pc, #988]         @ 0xa9ec <ram_probe::packed_probe::candidate+0xf5c>
    a612: ed9f 1bf7    	vldr	d1, [pc, #988]          @ 0xa9f0 <ram_probe::packed_probe::candidate+0xf60>
    a616: ed9d 6b46    	vldr	d6, [sp, #280]
    a61a: ee00 6b01    	vmla.f64	d6, d0, d1
    a61e: eeb7 0ac2    	vcvt.f64.f32	d0, s4
    a622: ed9d 2a6a    	vldr	s4, [sp, #424]
    a626: ed9f 1bf4    	vldr	d1, [pc, #976]          @ 0xa9f8 <ram_probe::packed_probe::candidate+0xf68>
    a62a: ed8d 2a09    	vstr	s4, [sp, #36]
    a62e: ee00 6b01    	vmla.f64	d6, d0, d1
    a632: eeb7 0ac2    	vcvt.f64.f32	d0, s4
    a636: ed9d 2a6b    	vldr	s4, [sp, #428]
    a63a: ed8d 2a08    	vstr	s4, [sp, #32]
    a63e: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    a642: eeb0 1b46    	vmov.f64	d1, d6
    a646: ee00 1b0b    	vmla.f64	d1, d0, d11
    a64a: ed9d 0a6c    	vldr	s0, [sp, #432]
    a64e: ee22 2b0b    	vmul.f64	d2, d2, d11
    a652: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a656: ed1f 5bc2    	vldr	d5, [pc, #-776]         @ 0xa350 <ram_probe::packed_probe::candidate+0x8c0>
    a65a: ee31 1b02    	vadd.f64	d1, d1, d2
    a65e: ee20 3b0b    	vmul.f64	d3, d0, d11
    a662: eeb7 0acc    	vcvt.f64.f32	d0, s24
    a666: ed1f 7bc4    	vldr	d7, [pc, #-784]         @ 0xa358 <ram_probe::packed_probe::candidate+0x8c8>
    a66a: ee31 1b03    	vadd.f64	d1, d1, d3
    a66e: ee80 0b05    	vdiv.f64	d0, d0, d5
    a672: ee01 0b07    	vmla.f64	d0, d1, d7
    a676: ed9f 1be2    	vldr	d1, [pc, #904]          @ 0xaa00 <ram_probe::packed_probe::candidate+0xf70>
    a67a: ee80 0b01    	vdiv.f64	d0, d0, d1
    a67e: ed9f 4be2    	vldr	d4, [pc, #904]          @ 0xaa08 <ram_probe::packed_probe::candidate+0xf78>
    a682: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    a686: eddf 0aee    	vldr	s1, [pc, #952]          @ 0xaa40 <ram_probe::packed_probe::candidate+0xfb0>
    a68a: ed9d bb48    	vldr	d11, [sp, #288]
    a68e: eeb4 da40    	vcmp.f32	s26, s0
    a692: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a696: ed9d 9b4e    	vldr	d9, [sp, #312]
    a69a: fe3d 0a00    	vselgt.f32	s0, s26, s0
    a69e: ed8d 6b46    	vstr	d6, [sp, #280]
    a6a2: eeb4 0a6c    	vcmp.f32	s0, s25
    a6a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a6aa: fe3c 0a80    	vselgt.f32	s0, s25, s0
    a6ae: ed8d 0a15    	vstr	s0, [sp, #84]
    a6b2: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    a6b6: ee01 bb04    	vmla.f64	d11, d1, d4
    a6ba: eeb7 4ac8    	vcvt.f64.f32	d4, s16
    a6be: ed9f 8be2    	vldr	d8, [pc, #904]          @ 0xaa48 <ram_probe::packed_probe::candidate+0xfb8>
    a6c2: ee32 2b0b    	vadd.f64	d2, d2, d11
    a6c6: ee33 2b02    	vadd.f64	d2, d3, d2
    a6ca: ee84 3b05    	vdiv.f64	d3, d4, d5
    a6ce: ee02 3b07    	vmla.f64	d3, d2, d7
    a6d2: ed9f 2bdf    	vldr	d2, [pc, #892]          @ 0xaa50 <ram_probe::packed_probe::candidate+0xfc0>
    a6d6: ee83 2b02    	vdiv.f64	d2, d3, d2
    a6da: ed9d 3b4c    	vldr	d3, [sp, #304]
    a6de: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    a6e2: ed9f 7bdd    	vldr	d7, [pc, #884]          @ 0xaa58 <ram_probe::packed_probe::candidate+0xfc8>
    a6e6: eeb4 da42    	vcmp.f32	s26, s4
    a6ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a6ee: eeb7 5bc9    	vcvt.f32.f64	s10, d9
    a6f2: fe3d 2a02    	vselgt.f32	s4, s26, s4
    a6f6: ed9d db3e    	vldr	d13, [sp, #248]
    a6fa: eeb4 2a6c    	vcmp.f32	s4, s25
    a6fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a702: ed8d db04    	vstr	d13, [sp, #16]
    a706: fe3c 4a82    	vselgt.f32	s8, s25, s4
    a70a: eeb7 2bc3    	vcvt.f32.f64	s4, d3
    a70e: ed8d 4a6a    	vstr	s8, [sp, #424]
    a712: eeb7 cac4    	vcvt.f64.f32	d12, s8
    a716: ee64 2a20    	vmul.f32	s5, s8, s1
    a71a: ee0c db08    	vmla.f64	d13, d12, d8
    a71e: ee72 ea85    	vadd.f32	s29, s5, s10
    a722: ee8d ab07    	vdiv.f64	d10, d13, d7
    a726: ee32 7a82    	vadd.f32	s14, s5, s4
    a72a: eef0 2a6e    	vmov.f32	s5, s29
    a72e: eeb7 5bca    	vcvt.f32.f64	s10, d10
    a732: eeb0 2a47    	vmov.f32	s4, s14
    a736: ee05 2a2f    	vmla.f32	s4, s10, s31
    a73a: ee45 2a60    	vmls.f32	s5, s10, s1
    a73e: eddd 0a69    	vldr	s1, [sp, #420]
    a742: edcd 0a07    	vstr	s1, [sp, #28]
    a746: ed8d 0a69    	vstr	s0, [sp, #420]
    a74a: fe82 2a62    	vminnm.f32	s4, s4, s5
    a74e: eeb4 2a4f    	vcmp.f32	s4, s30
    a752: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a756: f240 80f3    	bls.w	0xa940 <ram_probe::packed_probe::candidate+0xeb0> @ imm = #0x1e6
    a75a: ed9f 2bc1    	vldr	d2, [pc, #772]          @ 0xaa60 <ram_probe::packed_probe::candidate+0xfd0>
    a75e: eef0 0a6e    	vmov.f32	s1, s29
    a762: eef7 7a00    	vmov.f32	s15, #1.000000e+00
    a766: ee8d 2b02    	vdiv.f64	d2, d13, d2
    a76a: eeb7 5bc2    	vcvt.f32.f64	s10, d2
    a76e: eddf 2ab0    	vldr	s5, [pc, #704]          @ 0xaa30 <ram_probe::packed_probe::candidate+0xfa0>
    a772: eeb0 2a47    	vmov.f32	s4, s14
    a776: ee05 2a2f    	vmla.f32	s4, s10, s31
    a77a: ee45 0a22    	vmla.f32	s1, s10, s5
    a77e: fe82 2a60    	vminnm.f32	s4, s4, s1
    a782: eddf 0af1    	vldr	s1, [pc, #964]          @ 0xab48 <ram_probe::packed_probe::candidate+0x10b8>
    a786: ee3f 2a42    	vsub.f32	s4, s30, s4
    a78a: fe82 2a60    	vminnm.f32	s4, s4, s1
    a78e: eef0 0a67    	vmov.f32	s1, s15
    a792: ee42 0a0f    	vmla.f32	s1, s4, s30
    a796: ed9f 2aed    	vldr	s4, [pc, #948]          @ 0xab4c <ram_probe::packed_probe::candidate+0x10bc>
    a79a: ee20 2a82    	vmul.f32	s4, s1, s4
    a79e: eddf 0aec    	vldr	s1, [pc, #944]          @ 0xab50 <ram_probe::packed_probe::candidate+0x10c0>
    a7a2: eeb4 2a60    	vcmp.f32	s4, s1
    a7a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a7aa: f240 80c9    	bls.w	0xa940 <ram_probe::packed_probe::candidate+0xeb0> @ imm = #0x192
    a7ae: ed9f 2bae    	vldr	d2, [pc, #696]          @ 0xaa68 <ram_probe::packed_probe::candidate+0xfd8>
    a7b2: eeb6 0b00    	vmov.f64	d0, #5.000000e-01
    a7b6: ee2c ab02    	vmul.f64	d10, d12, d2
    a7ba: ee33 2b0a    	vadd.f64	d2, d3, d10
    a7be: eeb7 3b00    	vmov.f64	d3, #1.000000e+00
    a7c2: ee30 2b42    	vsub.f64	d2, d0, d2
    a7c6: eeb0 5b43    	vmov.f64	d5, d3
    a7ca: ee02 5b00    	vmla.f64	d5, d2, d0
    a7ce: eeb0 2b48    	vmov.f64	d2, d8
    a7d2: ed9f 0ba7    	vldr	d0, [pc, #668]          @ 0xaa70 <ram_probe::packed_probe::candidate+0xfe0>
    a7d6: ee05 2b00    	vmla.f64	d2, d5, d0
    a7da: ed9f 5ba7    	vldr	d5, [pc, #668]          @ 0xaa78 <ram_probe::packed_probe::candidate+0xfe8>
    a7de: ee2d 5b05    	vmul.f64	d5, d13, d5
    a7e2: ee02 5b02    	vmla.f64	d5, d2, d2
    a7e6: eeb1 0b4d    	vneg.f64	d0, d13
    a7ea: eeb5 5b40    	vcmp.f64	d5, #0
    a7ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a7f2: ed8d 0b02    	vstr	d0, [sp, #8]
    a7f6: d42a         	bmi	0xa84e <ram_probe::packed_probe::candidate+0xdbe> @ imm = #0x54
    a7f8: ec51 0b12    	vmov	r0, r1, d2
    a7fc: eeb1 5bc5    	vsqrt.f64	d5, d5
    a800: ec52 0b15    	vmov	r0, r2, d5
    a804: 0fc9         	lsrs	r1, r1, #0x1f
    a806: f361 72df    	bfi	r2, r1, #31, #1
    a80a: ec42 0b15    	vmov	d5, r0, r2
    a80e: ee32 2b05    	vadd.f64	d2, d2, d5
    a812: eebe 5b00    	vmov.f64	d5, #-5.000000e-01
    a816: ee22 2b05    	vmul.f64	d2, d2, d5
    a81a: ed9f 5b99    	vldr	d5, [pc, #612]          @ 0xaa80 <ram_probe::packed_probe::candidate+0xff0>
    a81e: ee82 5b05    	vdiv.f64	d5, d2, d5
    a822: ec51 0b15    	vmov	r0, r1, d5
    a826: f64f 70ff    	movw	r0, #0xffff
    a82a: f6c7 70ef    	movt	r0, #0x7fef
    a82e: f021 4100    	bic	r1, r1, #0x80000000
    a832: 4281         	cmp	r1, r0
    a834: f340 83b8    	ble.w	0xafa8 <ram_probe::packed_probe::candidate+0x1518> @ imm = #0x770
    a838: ed9d 0b02    	vldr	d0, [sp, #8]
    a83c: ee80 2b02    	vdiv.f64	d2, d0, d2
    a840: ec52 1b12    	vmov	r1, r2, d2
    a844: f022 4100    	bic	r1, r2, #0x80000000
    a848: 4281         	cmp	r1, r0
    a84a: f340 8421    	ble.w	0xb090 <ram_probe::packed_probe::candidate+0x1600> @ imm = #0x842
    a84e: ee39 2b0a    	vadd.f64	d2, d9, d10
    a852: eeb6 0b00    	vmov.f64	d0, #5.000000e-01
    a856: ee30 2b42    	vsub.f64	d2, d0, d2
    a85a: ee02 3b00    	vmla.f64	d3, d2, d0
    a85e: ed9f 0b84    	vldr	d0, [pc, #528]          @ 0xaa70 <ram_probe::packed_probe::candidate+0xfe0>
    a862: ee03 8b00    	vmla.f64	d8, d3, d0
    a866: ed9f 3b88    	vldr	d3, [pc, #544]          @ 0xaa88 <ram_probe::packed_probe::candidate+0xff8>
    a86a: ee28 2b08    	vmul.f64	d2, d8, d8
    a86e: ee0d 2b03    	vmla.f64	d2, d13, d3
    a872: eeb5 2b40    	vcmp.f64	d2, #0
    a876: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a87a: f100 85a8    	bmi.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #0xb50
    a87e: ec51 0b18    	vmov	r0, r1, d8
    a882: eeb1 2bc2    	vsqrt.f64	d2, d2
    a886: ec52 0b12    	vmov	r0, r2, d2
    a88a: 0fc9         	lsrs	r1, r1, #0x1f
    a88c: eebe 3b00    	vmov.f64	d3, #-5.000000e-01
    a890: f361 72df    	bfi	r2, r1, #31, #1
    a894: ec42 0b12    	vmov	d2, r0, r2
    a898: ee38 2b02    	vadd.f64	d2, d8, d2
    a89c: ee22 2b03    	vmul.f64	d2, d2, d3
    a8a0: ed9f 3b7b    	vldr	d3, [pc, #492]          @ 0xaa90 <ram_probe::packed_probe::candidate+0x1000>
    a8a4: ee82 3b03    	vdiv.f64	d3, d2, d3
    a8a8: ec51 0b13    	vmov	r0, r1, d3
    a8ac: f64f 70ff    	movw	r0, #0xffff
    a8b0: f6c7 70ef    	movt	r0, #0x7fef
    a8b4: f021 4100    	bic	r1, r1, #0x80000000
    a8b8: 4281         	cmp	r1, r0
    a8ba: f340 83b1    	ble.w	0xb020 <ram_probe::packed_probe::candidate+0x1590> @ imm = #0x762
    a8be: ed9d 0b02    	vldr	d0, [sp, #8]
    a8c2: ee80 2b02    	vdiv.f64	d2, d0, d2
    a8c6: ec52 1b12    	vmov	r1, r2, d2
    a8ca: f022 4100    	bic	r1, r2, #0x80000000
    a8ce: 4281         	cmp	r1, r0
    a8d0: f300 857d    	bgt.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #0xafa
    a8d4: eeb7 5bc2    	vcvt.f32.f64	s10, d2
    a8d8: ed9f 2aa3    	vldr	s4, [pc, #652]          @ 0xab68 <ram_probe::packed_probe::candidate+0x10d8>
    a8dc: eeb0 3a6e    	vmov.f32	s6, s29
    a8e0: eef0 0a47    	vmov.f32	s1, s14
    a8e4: eef8 2a00    	vmov.f32	s5, #-2.000000e+00
    a8e8: ee05 3a02    	vmla.f32	s6, s10, s4
    a8ec: ed8d 5a6b    	vstr	s10, [sp, #428]
    a8f0: ee45 0a2f    	vmla.f32	s1, s10, s31
    a8f4: fe80 2ac3    	vminnm.f32	s4, s1, s6
    a8f8: ee3f 2a42    	vsub.f32	s4, s30, s4
    a8fc: eeb4 2a62    	vcmp.f32	s4, s5
    a900: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a904: f340 8563    	ble.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #0xac6
    a908: eeb4 3a60    	vcmp.f32	s6, s1
    a90c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a910: f200 855d    	bhi.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #0xaba
    a914: eeb5 2a40    	vcmp.f32	s4, #0
    a918: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a91c: f140 8557    	bpl.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #0xaae
    a920: ee42 7a0f    	vmla.f32	s15, s4, s30
    a924: ed9f 2a92    	vldr	s4, [pc, #584]          @ 0xab70 <ram_probe::packed_probe::candidate+0x10e0>
    a928: ed9f 3a92    	vldr	s6, [pc, #584]          @ 0xab74 <ram_probe::packed_probe::candidate+0x10e4>
    a92c: ee27 2a82    	vmul.f32	s4, s15, s4
    a930: eeb4 2a43    	vcmp.f32	s4, s6
    a934: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a938: dc04         	bgt	0xa944 <ram_probe::packed_probe::candidate+0xeb4> @ imm = #0x8
    a93a: f000 bd48    	b.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #0xa90
    a93e: bf00         	nop
    a940: ed8d 5a6b    	vstr	s10, [sp, #428]
    a944: ed9d 3a13    	vldr	s6, [sp, #76]
    a948: eddd 0a12    	vldr	s1, [sp, #72]
    a94c: eef4 0a43    	vcmp.f32	s1, s6
    a950: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a954: f201 8268    	bhi.w	0xbe28 <ram_probe::packed_probe::candidate+0x2398> @ imm = #0x14d0
    a958: ed9f 2b4f    	vldr	d2, [pc, #316]          @ 0xaa98 <ram_probe::packed_probe::candidate+0x1008>
    a95c: eddf 4ad4    	vldr	s9, [pc, #848]          @ 0xacb0 <ram_probe::packed_probe::candidate+0x1220>
    a960: ed9d 9a0d    	vldr	s18, [sp, #52]
    a964: ee01 6b02    	vmla.f64	d6, d1, d2
    a968: ed9d 0a15    	vldr	s0, [sp, #84]
    a96c: ed9f 2ad1    	vldr	s4, [pc, #836]          @ 0xacb4 <ram_probe::packed_probe::candidate+0x1224>
    a970: eeb7 1bc6    	vcvt.f32.f64	s2, d6
    a974: ee01 9a24    	vmla.f32	s18, s2, s9
    a978: ed9d 1b3a    	vldr	d1, [sp, #232]
    a97c: eef7 6bc1    	vcvt.f32.f64	s13, d1
    a980: ed9f 1acd    	vldr	s2, [pc, #820]          @ 0xacb8 <ram_probe::packed_probe::candidate+0x1228>
    a984: ee40 6a01    	vmla.f32	s13, s0, s2
    a988: eef4 0a49    	vcmp.f32	s1, s18
    a98c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a990: ee44 6a02    	vmla.f32	s13, s8, s4
    a994: fe30 1a89    	vselgt.f32	s2, s1, s18
    a998: eeb4 1a43    	vcmp.f32	s2, s6
    a99c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9a0: eef0 5ae6    	vabs.f32	s11, s13
    a9a4: fe73 1a01    	vselgt.f32	s3, s6, s2
    a9a8: ed9f 1ac4    	vldr	s2, [pc, #784]          @ 0xacbc <ram_probe::packed_probe::candidate+0x122c>
    a9ac: eef4 5a41    	vcmp.f32	s11, s2
    a9b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9b4: da2c         	bge	0xaa10 <ram_probe::packed_probe::candidate+0xf80> @ imm = #0x58
    a9b6: ed9f 1ac2    	vldr	s2, [pc, #776]          @ 0xacc0 <ram_probe::packed_probe::candidate+0x1230>
    a9ba: eddd 0a11    	vldr	s1, [sp, #68]
    a9be: eef4 5a41    	vcmp.f32	s11, s2
    a9c2: eddd 2a10    	vldr	s5, [sp, #64]
    a9c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9ca: d935         	bls	0xaa38 <ram_probe::packed_probe::candidate+0xfa8> @ imm = #0x6a
    a9cc: ed9f 1aea    	vldr	s2, [pc, #936]          @ 0xad78 <ram_probe::packed_probe::candidate+0x12e8>
    a9d0: eef4 5a41    	vcmp.f32	s11, s2
    a9d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9d8: d962         	bls	0xaaa0 <ram_probe::packed_probe::candidate+0x1010> @ imm = #0xc4
    a9da: ed9f 1ae8    	vldr	s2, [pc, #928]          @ 0xad7c <ram_probe::packed_probe::candidate+0x12ec>
    a9de: ee35 3a81    	vadd.f32	s6, s11, s2
    a9e2: ed9f 6ae7    	vldr	s12, [pc, #924]         @ 0xad80 <ram_probe::packed_probe::candidate+0x12f0>
    a9e6: eeb0 1a08    	vmov.f32	s2, #3.000000e+00
    a9ea: e061         	b	0xaab0 <ram_probe::packed_probe::candidate+0x1020> @ imm = #0xc2
    a9ec: 99 76 cd 39  	.word	0x39cd7699
    a9f0: ab 14 f2 db  	.word	0xdbf214ab
    a9f4: ec cd d7 3f  	.word	0x3fd7cdec
    a9f8: c4 a9 9f 7b  	.word	0x7b9fa9c4
    a9fc: 67 dd c7 3f  	.word	0x3fc7dd67
    aa00: c6 e6 eb 5a  	.word	0x5aebe6c6
    aa04: d9 83 57 40  	.word	0x405783d9
    aa08: 15 be b6 e5  	.word	0xe5b6be15
    aa0c: 6d 7e c0 bf  	.word	0xbfc07e6d
    aa10: eddf 8a56    	vldr	s17, [pc, #344]         @ 0xab6c <ram_probe::packed_probe::candidate+0x10dc>
    aa14: eddd 0a11    	vldr	s1, [sp, #68]
    aa18: eeb0 da68    	vmov.f32	s26, s17
    aa1c: eef0 da68    	vmov.f32	s27, s17
    aa20: eef0 9a68    	vmov.f32	s19, s17
    aa24: eeb0 1a68    	vmov.f32	s2, s17
    aa28: eddd 2a10    	vldr	s5, [sp, #64]
    aa2c: e0c7         	b	0xabbe <ram_probe::packed_probe::candidate+0x112e> @ imm = #0x18e
    aa2e: bf00         	nop
    aa30: 51 e6 7f bf  	.word	0xbf7fe651
    aa34: 00 bf 00 bf  	.word	0xbf00bf00
    aa38: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    aa3c: e03a         	b	0xaab4 <ram_probe::packed_probe::candidate+0x1024> @ imm = #0x74
    aa3e: bf00         	nop
    aa40: 51 e6 7f 3f  	.word	0x3f7fe651
    aa44: 00 bf 00 bf  	.word	0xbf00bf00
    aa48: d2 ce fe 14  	.word	0x14feced2
    aa4c: cf 45 20 3f  	.word	0x3f2045cf
    aa50: 33 5a 1f 17  	.word	0x171f5a33
    aa54: c7 76 4c 40  	.word	0x404c76c7
    aa58: 39 0e ce cb  	.word	0xcbce0e39
    aa5c: 33 25 73 3f  	.word	0x3f732533
    aa60: 68 26 52 13  	.word	0x13522668
    aa64: 2a 49 20 3f  	.word	0x3f20492a
    aa68: 10 43 9c 25  	.word	0x259c4310
    aa6c: ca fc ef 3f  	.word	0x3feffcca
    aa70: c2 17 26 53  	.word	0x532617c2
    aa74: 05 a3 72 3f  	.word	0x3f72a305
    aa78: 44 1c 7f 14  	.word	0x147f1c44
    aa7c: 5b ea cd be  	.word	0xbecdea5b
    aa80: 44 1c 7f 14  	.word	0x147f1c44
    aa84: 5b ea ad be  	.word	0xbeadea5b
    aa88: d0 cf 74 ad  	.word	0xad74cfd0
    aa8c: 26 a1 82 3f  	.word	0x3f82a126
    aa90: d0 cf 74 ad  	.word	0xad74cfd0
    aa94: 26 a1 62 3f  	.word	0x3f62a126
    aa98: 1c 38 88 77  	.word	0x7788381c
    aa9c: bf 13 e1 bf  	.word	0xbfe113bf
    aaa0: ed9f 1aea    	vldr	s2, [pc, #936]          @ 0xae4c <ram_probe::packed_probe::candidate+0x13bc>
    aaa4: ee35 3a81    	vadd.f32	s6, s11, s2
    aaa8: eeb7 1a08    	vmov.f32	s2, #1.500000e+00
    aaac: ed9f 6ae8    	vldr	s12, [pc, #928]         @ 0xae50 <ram_probe::packed_probe::candidate+0x13c0>
    aab0: ee03 1a06    	vmla.f32	s2, s6, s12
    aab4: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    aab8: eddf 8a2c    	vldr	s17, [pc, #176]         @ 0xab6c <ram_probe::packed_probe::candidate+0x10dc>
    aabc: ee33 1a41    	vsub.f32	s2, s6, s2
    aac0: fe81 da28    	vmaxnm.f32	s26, s2, s17
    aac4: eeb5 da40    	vcmp.f32	s26, #0
    aac8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aacc: d944         	bls	0xab58 <ram_probe::packed_probe::candidate+0x10c8> @ imm = #0x88
    aace: eeb0 1ae1    	vabs.f32	s2, s3
    aad2: eeb4 1a4d    	vcmp.f32	s2, s26
    aad6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aada: dd4d         	ble	0xab78 <ram_probe::packed_probe::candidate+0x10e8> @ imm = #0x9a
    aadc: eecd 8a01    	vdiv.f32	s17, s26, s2
    aae0: ee28 1aa8    	vmul.f32	s2, s17, s17
    aae4: ee21 1a01    	vmul.f32	s2, s2, s2
    aae8: ee21 1a01    	vmul.f32	s2, s2, s2
    aaec: ee61 9a01    	vmul.f32	s19, s2, s2
    aaf0: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    aaf4: ee39 6a81    	vadd.f32	s12, s19, s2
    aaf8: eeb0 3a41    	vmov.f32	s6, s2
    aafc: eeb4 6a41    	vcmp.f32	s12, s2
    ab00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab04: d009         	beq	0xab1a <ram_probe::packed_probe::candidate+0x108a> @ imm = #0x12
    ab06: eeb1 6ac6    	vsqrt.f32	s12, s12
    ab0a: eeb1 6ac6    	vsqrt.f32	s12, s12
    ab0e: eeb1 6ac6    	vsqrt.f32	s12, s12
    ab12: eeb1 6ac6    	vsqrt.f32	s12, s12
    ab16: eeb0 3a46    	vmov.f32	s6, s12
    ab1a: ee11 0a90    	vmov	r0, s3
    ab1e: f04f 517e    	mov.w	r1, #0x3f800000
    ab22: eec1 da03    	vdiv.f32	s27, s2, s6
    ab26: ed9f 3acb    	vldr	s6, [pc, #812]          @ 0xae54 <ram_probe::packed_probe::candidate+0x13c4>
    ab2a: eef4 1a61    	vcmp.f32	s3, s3
    ab2e: f361 001e    	bfi	r0, r1, #0, #31
    ab32: ee06 0a10    	vmov	s12, r0
    ab36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab3a: ee26 1a0d    	vmul.f32	s2, s12, s26
    ab3e: ee21 1a2d    	vmul.f32	s2, s2, s27
    ab42: fe13 1a01    	vselvs.f32	s2, s6, s2
    ab46: e03a         	b	0xabbe <ram_probe::packed_probe::candidate+0x112e> @ imm = #0x74
    ab48: 00 00 00 00  	.word	0x00000000
    ab4c: 2b 18 95 3b  	.word	0x3b95182b
    ab50: 95 bf d6 33  	.word	0x33d6bf95
    ab54: 00 bf 00 bf  	.word	0xbf00bf00
    ab58: eef0 da68    	vmov.f32	s27, s17
    ab5c: eef0 9a68    	vmov.f32	s19, s17
    ab60: eeb0 1a68    	vmov.f32	s2, s17
    ab64: e02b         	b	0xabbe <ram_probe::packed_probe::candidate+0x112e> @ imm = #0x56
    ab66: bf00         	nop
    ab68: 51 e6 7f bf  	.word	0xbf7fe651
    ab6c: 00 00 00 00  	.word	0x00000000
    ab70: 2b 18 95 3b  	.word	0x3b95182b
    ab74: 95 bf d6 33  	.word	0x33d6bf95
    ab78: eec1 8a8d    	vdiv.f32	s17, s3, s26
    ab7c: ee28 1aa8    	vmul.f32	s2, s17, s17
    ab80: ee21 1a01    	vmul.f32	s2, s2, s2
    ab84: ee21 1a01    	vmul.f32	s2, s2, s2
    ab88: ee61 9a01    	vmul.f32	s19, s2, s2
    ab8c: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    ab90: ee39 3a81    	vadd.f32	s6, s19, s2
    ab94: eeb0 6a41    	vmov.f32	s12, s2
    ab98: eeb4 3a41    	vcmp.f32	s6, s2
    ab9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aba0: d009         	beq	0xabb6 <ram_probe::packed_probe::candidate+0x1126> @ imm = #0x12
    aba2: eeb1 3ac3    	vsqrt.f32	s6, s6
    aba6: eeb1 3ac3    	vsqrt.f32	s6, s6
    abaa: eeb1 3ac3    	vsqrt.f32	s6, s6
    abae: eeb1 3ac3    	vsqrt.f32	s6, s6
    abb2: eeb0 6a43    	vmov.f32	s12, s6
    abb6: eec1 da06    	vdiv.f32	s27, s2, s12
    abba: ee21 1aad    	vmul.f32	s2, s3, s27
    abbe: ed9d 0a15    	vldr	s0, [sp, #84]
    abc2: ee70 3a41    	vsub.f32	s7, s0, s2
    abc6: ee13 0a90    	vmov	r0, s7
    abca: f020 4000    	bic	r0, r0, #0x80000000
    abce: f1b0 4fff    	cmp.w	r0, #0x7f800000
    abd2: db05         	blt	0xabe0 <ram_probe::packed_probe::candidate+0x1150> @ imm = #0xa
    abd4: ed9f 1add    	vldr	s2, [pc, #884]          @ 0xaf4c <ram_probe::packed_probe::candidate+0x14bc>
    abd8: e00c         	b	0xabf4 <ram_probe::packed_probe::candidate+0x1164> @ imm = #0x18
    abda: bf00         	nop
    abdc: bf00         	nop
    abde: bf00         	nop
    abe0: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    abe4: ed1f 3a1f    	vldr	s6, [pc, #-124]         @ 0xab6c <ram_probe::packed_probe::candidate+0x10dc>
    abe8: ee83 1a81    	vdiv.f32	s2, s7, s2
    abec: eeb0 1ac1    	vabs.f32	s2, s2
    abf0: fe81 1a03    	vmaxnm.f32	s2, s2, s6
    abf4: eef4 2a60    	vcmp.f32	s5, s1
    abf8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    abfc: f201 8114    	bhi.w	0xbe28 <ram_probe::packed_probe::candidate+0x2398> @ imm = #0x1228
    ac00: ed9f abe7    	vldr	d10, [pc, #924]         @ 0xafa0 <ram_probe::packed_probe::candidate+0x1510>
    ac04: ed9d 0a15    	vldr	s0, [sp, #84]
    ac08: edcd 1a0d    	vstr	s3, [sp, #52]
    ac0c: ee0c bb0a    	vmla.f64	d11, d12, d10
    ac10: eddd 1a0c    	vldr	s3, [sp, #48]
    ac14: ed9d ab3c    	vldr	d10, [sp, #240]
    ac18: eeb7 3bcb    	vcvt.f32.f64	s6, d11
    ac1c: ee43 1a24    	vmla.f32	s3, s6, s9
    ac20: eddf 4ac8    	vldr	s9, [pc, #800]          @ 0xaf44 <ram_probe::packed_probe::candidate+0x14b4>
    ac24: eeb7 3bca    	vcvt.f32.f64	s6, d10
    ac28: ee00 3a02    	vmla.f32	s6, s0, s4
    ac2c: ed9f 2ac6    	vldr	s4, [pc, #792]          @ 0xaf48 <ram_probe::packed_probe::candidate+0x14b8>
    ac30: ee04 3a02    	vmla.f32	s6, s8, s4
    ac34: eef4 2a61    	vcmp.f32	s5, s3
    ac38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac3c: ee25 2a24    	vmul.f32	s4, s10, s9
    ac40: fe32 6aa1    	vselgt.f32	s12, s5, s3
    ac44: ee32 8a03    	vadd.f32	s16, s4, s6
    ac48: ed9f 3a1c    	vldr	s6, [pc, #112]          @ 0xacbc <ram_probe::packed_probe::candidate+0x122c>
    ac4c: eeb4 6a60    	vcmp.f32	s12, s1
    ac50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac54: eef0 7ac8    	vabs.f32	s15, s16
    ac58: fe70 2a86    	vselgt.f32	s5, s1, s12
    ac5c: eef4 7a43    	vcmp.f32	s15, s6
    ac60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac64: da18         	bge	0xac98 <ram_probe::packed_probe::candidate+0x1208> @ imm = #0x30
    ac66: ed9f 3a43    	vldr	s6, [pc, #268]          @ 0xad74 <ram_probe::packed_probe::candidate+0x12e4>
    ac6a: eef4 7a43    	vcmp.f32	s15, s6
    ac6e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac72: d919         	bls	0xaca8 <ram_probe::packed_probe::candidate+0x1218> @ imm = #0x32
    ac74: ed9f 3a40    	vldr	s6, [pc, #256]          @ 0xad78 <ram_probe::packed_probe::candidate+0x12e8>
    ac78: eef4 7a43    	vcmp.f32	s15, s6
    ac7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac80: d922         	bls	0xacc8 <ram_probe::packed_probe::candidate+0x1238> @ imm = #0x44
    ac82: ed9f 3a3e    	vldr	s6, [pc, #248]          @ 0xad7c <ram_probe::packed_probe::candidate+0x12ec>
    ac86: ee37 6a83    	vadd.f32	s12, s15, s6
    ac8a: eddf 0a3d    	vldr	s1, [pc, #244]          @ 0xad80 <ram_probe::packed_probe::candidate+0x12f0>
    ac8e: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    ac92: e021         	b	0xacd8 <ram_probe::packed_probe::candidate+0x1248> @ imm = #0x42
    ac94: bf00         	nop
    ac96: bf00         	nop
    ac98: ed1f 3a4c    	vldr	s6, [pc, #-304]         @ 0xab6c <ram_probe::packed_probe::candidate+0x10dc>
    ac9c: eeb0 ca43    	vmov.f32	s24, s6
    aca0: e072         	b	0xad88 <ram_probe::packed_probe::candidate+0x12f8> @ imm = #0xe4
    aca2: bf00         	nop
    aca4: bf00         	nop
    aca6: bf00         	nop
    aca8: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    acac: e016         	b	0xacdc <ram_probe::packed_probe::candidate+0x124c> @ imm = #0x2c
    acae: bf00         	nop
    acb0: 79 61 2e 43  	.word	0x432e6179
    acb4: d6 f8 e4 36  	.word	0x36e4f8d6
    acb8: 83 c0 96 b8  	.word	0xb896c083
    acbc: 0a d7 23 3d  	.word	0x3d23d70a
    acc0: 7c f2 b0 3a  	.word	0x3ab0f27c
    acc4: 00 bf 00 bf  	.word	0xbf00bf00
    acc8: ed9f 3a60    	vldr	s6, [pc, #384]          @ 0xae4c <ram_probe::packed_probe::candidate+0x13bc>
    accc: ee37 6a83    	vadd.f32	s12, s15, s6
    acd0: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    acd4: eddf 0a5e    	vldr	s1, [pc, #376]          @ 0xae50 <ram_probe::packed_probe::candidate+0x13c0>
    acd8: ee06 3a20    	vmla.f32	s6, s12, s1
    acdc: eeb2 6a0e    	vmov.f32	s12, #1.500000e+01
    ace0: ee36 6a43    	vsub.f32	s12, s12, s6
    ace4: ed1f 3a5f    	vldr	s6, [pc, #-380]         @ 0xab6c <ram_probe::packed_probe::candidate+0x10dc>
    ace8: fe86 ca03    	vmaxnm.f32	s24, s12, s6
    acec: eeb5 ca40    	vcmp.f32	s24, #0
    acf0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    acf4: d948         	bls	0xad88 <ram_probe::packed_probe::candidate+0x12f8> @ imm = #0x90
    acf6: eeb0 3ae2    	vabs.f32	s6, s5
    acfa: eeb4 3a4c    	vcmp.f32	s6, s24
    acfe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad02: f340 8125    	ble.w	0xaf50 <ram_probe::packed_probe::candidate+0x14c0> @ imm = #0x24a
    ad06: eecc ba03    	vdiv.f32	s23, s24, s6
    ad0a: ee2b 3aab    	vmul.f32	s6, s23, s23
    ad0e: ee23 3a03    	vmul.f32	s6, s6, s6
    ad12: ee23 3a03    	vmul.f32	s6, s6, s6
    ad16: ee63 ca03    	vmul.f32	s25, s6, s6
    ad1a: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    ad1e: ee7c 0a83    	vadd.f32	s1, s25, s6
    ad22: eeb0 6a43    	vmov.f32	s12, s6
    ad26: eef4 0a43    	vcmp.f32	s1, s6
    ad2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad2e: d009         	beq	0xad44 <ram_probe::packed_probe::candidate+0x12b4> @ imm = #0x12
    ad30: eef1 0ae0    	vsqrt.f32	s1, s1
    ad34: eef1 0ae0    	vsqrt.f32	s1, s1
    ad38: eef1 0ae0    	vsqrt.f32	s1, s1
    ad3c: eef1 0ae0    	vsqrt.f32	s1, s1
    ad40: eeb0 6a60    	vmov.f32	s12, s1
    ad44: ee12 0a90    	vmov	r0, s5
    ad48: f04f 517e    	mov.w	r1, #0x3f800000
    ad4c: ee83 6a06    	vdiv.f32	s12, s6, s12
    ad50: eef4 2a62    	vcmp.f32	s5, s5
    ad54: f361 001e    	bfi	r0, r1, #0, #31
    ad58: ee00 0a90    	vmov	s1, r0
    ad5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad60: ee20 3a8c    	vmul.f32	s6, s1, s24
    ad64: eddf 0a3b    	vldr	s1, [pc, #236]          @ 0xae54 <ram_probe::packed_probe::candidate+0x13c4>
    ad68: ee23 3a06    	vmul.f32	s6, s6, s12
    ad6c: fe10 3a83    	vselvs.f32	s6, s1, s6
    ad70: e010         	b	0xad94 <ram_probe::packed_probe::candidate+0x1304> @ imm = #0x20
    ad72: bf00         	nop
    ad74: 7c f2 b0 3a  	.word	0x3ab0f27c
    ad78: a6 9b c4 3b  	.word	0x3bc49ba6
    ad7c: a6 9b c4 bb  	.word	0xbbc49ba6
    ad80: 79 78 b0 43  	.word	0x43b07879
    ad84: 00 bf 00 bf  	.word	0xbf00bf00
    ad88: eef0 ca43    	vmov.f32	s25, s6
    ad8c: eeb0 6a43    	vmov.f32	s12, s6
    ad90: eef0 ba43    	vmov.f32	s23, s6
    ad94: ee34 ba43    	vsub.f32	s22, s8, s6
    ad98: ee1b 0a10    	vmov	r0, s22
    ad9c: f020 4000    	bic	r0, r0, #0x80000000
    ada0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    ada4: db04         	blt	0xadb0 <ram_probe::packed_probe::candidate+0x1320> @ imm = #0x8
    ada6: ed9f 3a7c    	vldr	s6, [pc, #496]          @ 0xaf98 <ram_probe::packed_probe::candidate+0x1508>
    adaa: e019         	b	0xade0 <ram_probe::packed_probe::candidate+0x1350> @ imm = #0x32
    adac: bf00         	nop
    adae: bf00         	nop
    adb0: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    adb4: eeb4 1a41    	vcmp.f32	s2, s2
    adb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    adbc: ee8b 3a03    	vdiv.f32	s6, s22, s6
    adc0: eeb0 3ac3    	vabs.f32	s6, s6
    adc4: fe13 1a01    	vselvs.f32	s2, s6, s2
    adc8: eeb4 3a43    	vcmp.f32	s6, s6
    adcc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    add0: fe11 3a03    	vselvs.f32	s6, s2, s6
    add4: eeb4 1a43    	vcmp.f32	s2, s6
    add8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    addc: fe31 3a03    	vselgt.f32	s6, s2, s6
    ade0: ed1f 1a9f    	vldr	s2, [pc, #-636]         @ 0xab68 <ram_probe::packed_probe::candidate+0x10d8>
    ade4: ee05 7a2f    	vmla.f32	s14, s10, s31
    ade8: ee45 ea01    	vmla.f32	s29, s10, s2
    adec: ed9d ab04    	vldr	d10, [sp, #16]
    adf0: eeb7 1bca    	vcvt.f32.f64	s2, d10
    adf4: ee04 1a24    	vmla.f32	s2, s8, s9
    adf8: fec7 0a6e    	vminnm.f32	s1, s14, s29
    adfc: ee7f fa60    	vsub.f32	s31, s30, s1
    ae00: eef8 0a00    	vmov.f32	s1, #-2.000000e+00
    ae04: ee31 aa42    	vsub.f32	s20, s2, s4
    ae08: eef4 fa60    	vcmp.f32	s31, s1
    ae0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae10: d922         	bls	0xae58 <ram_probe::packed_probe::candidate+0x13c8> @ imm = #0x44
    ae12: eef4 fa6f    	vcmp.f32	s31, s31
    ae16: ed1f 1aab    	vldr	s2, [pc, #-684]         @ 0xab6c <ram_probe::packed_probe::candidate+0x10dc>
    ae1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae1e: fe11 2a2f    	vselvs.f32	s4, s2, s31
    ae22: eeb5 2a40    	vcmp.f32	s4, #0
    ae26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae2a: bfb8         	it	lt
    ae2c: eeb0 1a42    	vmovlt.f32	s2, s4
    ae30: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    ae34: ee01 2a0f    	vmla.f32	s4, s2, s30
    ae38: ed1f 1ab3    	vldr	s2, [pc, #-716]         @ 0xab70 <ram_probe::packed_probe::candidate+0x10e0>
    ae3c: ee22 1a01    	vmul.f32	s2, s4, s2
    ae40: ed1f 2ab4    	vldr	s4, [pc, #-720]         @ 0xab74 <ram_probe::packed_probe::candidate+0x10e4>
    ae44: fe81 1a02    	vmaxnm.f32	s2, s2, s4
    ae48: e008         	b	0xae5c <ram_probe::packed_probe::candidate+0x13cc> @ imm = #0x10
    ae4a: bf00         	nop
    ae4c: 7c f2 b0 ba  	.word	0xbab0f27c
    ae50: 53 4a a1 43  	.word	0x43a14a53
    ae54: 00 00 c0 7f  	.word	0x7fc00000
    ae58: ed1f 1aba    	vldr	s2, [pc, #-744]         @ 0xab74 <ram_probe::packed_probe::candidate+0x10e4>
    ae5c: ee15 aa01    	vnmls.f32	s20, s10, s2
    ae60: ee1a 0a10    	vmov	r0, s20
    ae64: f020 4000    	bic	r0, r0, #0x80000000
    ae68: f1b0 4fff    	cmp.w	r0, #0x7f800000
    ae6c: f280 82af    	bge.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #0x55e
    ae70: ed9f 2abd    	vldr	s4, [pc, #756]          @ 0xb168 <ram_probe::packed_probe::candidate+0x16d8>
    ae74: eeb4 3a43    	vcmp.f32	s6, s6
    ae78: ee8a 2a02    	vdiv.f32	s4, s20, s4
    ae7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae80: eeb0 2ac2    	vabs.f32	s4, s4
    ae84: fe12 3a03    	vselvs.f32	s6, s4, s6
    ae88: eeb4 2a42    	vcmp.f32	s4, s4
    ae8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae90: fe13 2a02    	vselvs.f32	s4, s6, s4
    ae94: eeb4 3a42    	vcmp.f32	s6, s4
    ae98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae9c: fe33 2a02    	vselgt.f32	s4, s6, s4
    aea0: ed9f 3ae9    	vldr	s6, [pc, #932]          @ 0xb248 <ram_probe::packed_probe::candidate+0x17b8>
    aea4: eeb4 2a43    	vcmp.f32	s4, s6
    aea8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aeac: f300 828f    	bgt.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #0x51e
    aeb0: eef0 aa42    	vmov.f32	s21, s4
    aeb4: ed9d 2a12    	vldr	s4, [sp, #72]
    aeb8: 2100         	movs	r1, #0x0
    aeba: edcd 2a0c    	vstr	s5, [sp, #48]
    aebe: eeb4 9a42    	vcmp.f32	s18, s4
    aec2: 2000         	movs	r0, #0x0
    aec4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aec8: bfc8         	it	gt
    aeca: 2101         	movgt	r1, #0x1
    aecc: ed9d 2a13    	vldr	s4, [sp, #76]
    aed0: eeb4 9a42    	vcmp.f32	s18, s4
    aed4: ed1f 2adb    	vldr	s4, [pc, #-876]         @ 0xab6c <ram_probe::packed_probe::candidate+0x10dc>
    aed8: eef0 2a42    	vmov.f32	s5, s4
    aedc: eeb0 9a42    	vmov.f32	s18, s4
    aee0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aee4: eeb5 da40    	vcmp.f32	s26, #0
    aee8: bf48         	it	mi
    aeea: 2001         	movmi	r0, #0x1
    aeec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aef0: f240 810c    	bls.w	0xb10c <ram_probe::packed_probe::candidate+0x167c> @ imm = #0x218
    aef4: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    aef8: ed9d 9a0d    	vldr	s18, [sp, #52]
    aefc: ee39 3a83    	vadd.f32	s6, s19, s6
    af00: eecd 2a83    	vdiv.f32	s5, s27, s6
    af04: eeb0 3ac9    	vabs.f32	s6, s18
    af08: eeb4 3a4d    	vcmp.f32	s6, s26
    af0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    af10: f340 80f6    	ble.w	0xb100 <ram_probe::packed_probe::candidate+0x1670> @ imm = #0x1ec
    af14: ee19 2a10    	vmov	r2, s18
    af18: f04f 537e    	mov.w	r3, #0x3f800000
    af1c: ee68 0aa9    	vmul.f32	s1, s17, s19
    af20: eeb4 9a49    	vcmp.f32	s18, s18
    af24: f363 021e    	bfi	r2, r3, #0, #31
    af28: ee03 2a10    	vmov	s6, r2
    af2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    af30: ee23 3a22    	vmul.f32	s6, s6, s5
    af34: ee60 2aa2    	vmul.f32	s5, s1, s5
    af38: ed5f 0a3a    	vldr	s1, [pc, #-232]         @ 0xae54 <ram_probe::packed_probe::candidate+0x13c4>
    af3c: fe10 9a83    	vselvs.f32	s18, s1, s6
    af40: e0e4         	b	0xb10c <ram_probe::packed_probe::candidate+0x167c> @ imm = #0x1c8
    af42: bf00         	nop
    af44: 79 2e 02 39  	.word	0x39022e79
    af48: af e6 27 b9  	.word	0xb927e6af
    af4c: 00 00 80 7f  	.word	0x7f800000
    af50: eec2 ba8c    	vdiv.f32	s23, s5, s24
    af54: ee2b 3aab    	vmul.f32	s6, s23, s23
    af58: ee23 3a03    	vmul.f32	s6, s6, s6
    af5c: ee23 3a03    	vmul.f32	s6, s6, s6
    af60: ee63 ca03    	vmul.f32	s25, s6, s6
    af64: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    af68: ee3c 6a83    	vadd.f32	s12, s25, s6
    af6c: eef0 0a43    	vmov.f32	s1, s6
    af70: eeb4 6a43    	vcmp.f32	s12, s6
    af74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    af78: d009         	beq	0xaf8e <ram_probe::packed_probe::candidate+0x14fe> @ imm = #0x12
    af7a: eeb1 6ac6    	vsqrt.f32	s12, s12
    af7e: eeb1 6ac6    	vsqrt.f32	s12, s12
    af82: eeb1 6ac6    	vsqrt.f32	s12, s12
    af86: eeb1 6ac6    	vsqrt.f32	s12, s12
    af8a: eef0 0a46    	vmov.f32	s1, s12
    af8e: ee83 6a20    	vdiv.f32	s12, s6, s1
    af92: ee22 3a86    	vmul.f32	s6, s5, s12
    af96: e6fd         	b	0xad94 <ram_probe::packed_probe::candidate+0x1304> @ imm = #-0x206
    af98: 00 00 80 7f  	.word	0x7f800000
    af9c: 00 bf 00 bf  	.word	0xbf00bf00
    afa0: 67 42 87 92  	.word	0x92874267
    afa4: ba 86 d4 bf  	.word	0xbfd486ba
    afa8: eeb7 5bc5    	vcvt.f32.f64	s10, d5
    afac: eddf 4ac2    	vldr	s9, [pc, #776]          @ 0xb2b8 <ram_probe::packed_probe::candidate+0x1828>
    afb0: eef0 5a47    	vmov.f32	s11, s14
    afb4: eef0 0a6e    	vmov.f32	s1, s29
    afb8: ed8d 5a6b    	vstr	s10, [sp, #428]
    afbc: ee45 5a2f    	vmla.f32	s11, s10, s31
    afc0: eef8 fa00    	vmov.f32	s31, #-2.000000e+00
    afc4: ee45 0a24    	vmla.f32	s1, s10, s9
    afc8: fec5 4ae0    	vminnm.f32	s9, s11, s1
    afcc: ee7f 4a64    	vsub.f32	s9, s30, s9
    afd0: eef4 4a6f    	vcmp.f32	s9, s31
    afd4: eddf fab9    	vldr	s31, [pc, #740]         @ 0xb2bc <ram_probe::packed_probe::candidate+0x182c>
    afd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    afdc: f77f ac2c    	ble.w	0xa838 <ram_probe::packed_probe::candidate+0xda8> @ imm = #-0x7a8
    afe0: eef4 5a60    	vcmp.f32	s11, s1
    afe4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    afe8: f63f ac26    	bhi.w	0xa838 <ram_probe::packed_probe::candidate+0xda8> @ imm = #-0x7b4
    afec: eef5 4a40    	vcmp.f32	s9, #0
    aff0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aff4: f57f ac20    	bpl.w	0xa838 <ram_probe::packed_probe::candidate+0xda8> @ imm = #-0x7c0
    aff8: eef0 0a67    	vmov.f32	s1, s15
    affc: ee44 0a8f    	vmla.f32	s1, s9, s30
    b000: eddf 4aaf    	vldr	s9, [pc, #700]          @ 0xb2c0 <ram_probe::packed_probe::candidate+0x1830>
    b004: ee60 0aa4    	vmul.f32	s1, s1, s9
    b008: eddf 4aae    	vldr	s9, [pc, #696]          @ 0xb2c4 <ram_probe::packed_probe::candidate+0x1834>
    b00c: eef4 0a64    	vcmp.f32	s1, s9
    b010: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b014: f77f ac10    	ble.w	0xa838 <ram_probe::packed_probe::candidate+0xda8> @ imm = #-0x7e0
    b018: e494         	b	0xa944 <ram_probe::packed_probe::candidate+0xeb4> @ imm = #-0x6d8
    b01a: bf00         	nop
    b01c: bf00         	nop
    b01e: bf00         	nop
    b020: eeb7 5bc3    	vcvt.f32.f64	s10, d3
    b024: ed9f 3aa4    	vldr	s6, [pc, #656]          @ 0xb2b8 <ram_probe::packed_probe::candidate+0x1828>
    b028: eef0 3a47    	vmov.f32	s7, s14
    b02c: eef0 0a6e    	vmov.f32	s1, s29
    b030: eef8 4a00    	vmov.f32	s9, #-2.000000e+00
    b034: ee45 3a2f    	vmla.f32	s7, s10, s31
    b038: ed8d 5a6b    	vstr	s10, [sp, #428]
    b03c: ee45 0a03    	vmla.f32	s1, s10, s6
    b040: fe83 3ae0    	vminnm.f32	s6, s7, s1
    b044: ee3f 3a43    	vsub.f32	s6, s30, s6
    b048: eeb4 3a64    	vcmp.f32	s6, s9
    b04c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b050: f77f ac35    	ble.w	0xa8be <ram_probe::packed_probe::candidate+0xe2e> @ imm = #-0x796
    b054: eef4 0a63    	vcmp.f32	s1, s7
    b058: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b05c: f63f ac2f    	bhi.w	0xa8be <ram_probe::packed_probe::candidate+0xe2e> @ imm = #-0x7a2
    b060: eeb5 3a40    	vcmp.f32	s6, #0
    b064: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b068: f57f ac29    	bpl.w	0xa8be <ram_probe::packed_probe::candidate+0xe2e> @ imm = #-0x7ae
    b06c: eef0 0a67    	vmov.f32	s1, s15
    b070: ee43 0a0f    	vmla.f32	s1, s6, s30
    b074: ed9f 3a92    	vldr	s6, [pc, #584]          @ 0xb2c0 <ram_probe::packed_probe::candidate+0x1830>
    b078: ee20 3a83    	vmul.f32	s6, s1, s6
    b07c: eddf 0a91    	vldr	s1, [pc, #580]          @ 0xb2c4 <ram_probe::packed_probe::candidate+0x1834>
    b080: eeb4 3a60    	vcmp.f32	s6, s1
    b084: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b088: f77f ac19    	ble.w	0xa8be <ram_probe::packed_probe::candidate+0xe2e> @ imm = #-0x7ce
    b08c: e45a         	b	0xa944 <ram_probe::packed_probe::candidate+0xeb4> @ imm = #-0x74c
    b08e: bf00         	nop
    b090: eeb7 5bc2    	vcvt.f32.f64	s10, d2
    b094: ed9f 2a88    	vldr	s4, [pc, #544]          @ 0xb2b8 <ram_probe::packed_probe::candidate+0x1828>
    b098: eef0 2a47    	vmov.f32	s5, s14
    b09c: eef0 0a6e    	vmov.f32	s1, s29
    b0a0: eef8 4a00    	vmov.f32	s9, #-2.000000e+00
    b0a4: ee45 2a2f    	vmla.f32	s5, s10, s31
    b0a8: ed8d 5a6b    	vstr	s10, [sp, #428]
    b0ac: ee45 0a02    	vmla.f32	s1, s10, s4
    b0b0: fe82 2ae0    	vminnm.f32	s4, s5, s1
    b0b4: ee3f 2a42    	vsub.f32	s4, s30, s4
    b0b8: eeb4 2a64    	vcmp.f32	s4, s9
    b0bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b0c0: f77f abc5    	ble.w	0xa84e <ram_probe::packed_probe::candidate+0xdbe> @ imm = #-0x876
    b0c4: eef4 2a60    	vcmp.f32	s5, s1
    b0c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b0cc: f63f abbf    	bhi.w	0xa84e <ram_probe::packed_probe::candidate+0xdbe> @ imm = #-0x882
    b0d0: eeb5 2a40    	vcmp.f32	s4, #0
    b0d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b0d8: f57f abb9    	bpl.w	0xa84e <ram_probe::packed_probe::candidate+0xdbe> @ imm = #-0x88e
    b0dc: eef0 0a67    	vmov.f32	s1, s15
    b0e0: ee42 0a0f    	vmla.f32	s1, s4, s30
    b0e4: ed9f 2a76    	vldr	s4, [pc, #472]          @ 0xb2c0 <ram_probe::packed_probe::candidate+0x1830>
    b0e8: ee20 2a82    	vmul.f32	s4, s1, s4
    b0ec: eddf 0a75    	vldr	s1, [pc, #468]          @ 0xb2c4 <ram_probe::packed_probe::candidate+0x1834>
    b0f0: eeb4 2a60    	vcmp.f32	s4, s1
    b0f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b0f8: f77f aba9    	ble.w	0xa84e <ram_probe::packed_probe::candidate+0xdbe> @ imm = #-0x8ae
    b0fc: f7ff bc22    	b.w	0xa944 <ram_probe::packed_probe::candidate+0xeb4> @ imm = #-0x7bc
    b100: ee29 3a29    	vmul.f32	s6, s18, s19
    b104: ee83 3a0d    	vdiv.f32	s6, s6, s26
    b108: ee22 9a83    	vmul.f32	s18, s5, s6
    b10c: eeff 9a00    	vmov.f32	s19, #-1.000000e+00
    b110: eef5 6a40    	vcmp.f32	s13, #0
    b114: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    b118: eeb0 3a42    	vmov.f32	s6, s4
    b11c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b120: bf48         	it	mi
    b122: eeb0 3a69    	vmovmi.f32	s6, s19
    b126: eeb0 da42    	vmov.f32	s26, s4
    b12a: eddf 0ac7    	vldr	s1, [pc, #796]          @ 0xb448 <ram_probe::packed_probe::candidate+0x19b8>
    b12e: fe36 3a83    	vselgt.f32	s6, s13, s6
    b132: 4008         	ands	r0, r1
    b134: eef4 5a60    	vcmp.f32	s11, s1
    b138: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b13c: da1e         	bge	0xb17c <ram_probe::packed_probe::candidate+0x16ec> @ imm = #0x3c
    b13e: eddf 0ac3    	vldr	s1, [pc, #780]          @ 0xb44c <ram_probe::packed_probe::candidate+0x19bc>
    b142: eef4 5a60    	vcmp.f32	s11, s1
    b146: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b14a: d909         	bls	0xb160 <ram_probe::packed_probe::candidate+0x16d0> @ imm = #0x12
    b14c: eddf 0ac0    	vldr	s1, [pc, #768]          @ 0xb450 <ram_probe::packed_probe::candidate+0x19c0>
    b150: eef4 5a60    	vcmp.f32	s11, s1
    b154: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b158: d90a         	bls	0xb170 <ram_probe::packed_probe::candidate+0x16e0> @ imm = #0x14
    b15a: eddf 0abe    	vldr	s1, [pc, #760]          @ 0xb454 <ram_probe::packed_probe::candidate+0x19c4>
    b15e: e009         	b	0xb174 <ram_probe::packed_probe::candidate+0x16e4> @ imm = #0x12
    b160: ed9f 3abd    	vldr	s6, [pc, #756]          @ 0xb458 <ram_probe::packed_probe::candidate+0x19c8>
    b164: e008         	b	0xb178 <ram_probe::packed_probe::candidate+0x16e8> @ imm = #0x10
    b166: bf00         	nop
    b168: 0a d7 23 3c  	.word	0x3c23d70a
    b16c: 00 bf 00 bf  	.word	0xbf00bf00
    b170: ed5f 0ac9    	vldr	s1, [pc, #-804]         @ 0xae50 <ram_probe::packed_probe::candidate+0x13c0>
    b174: ee23 3a20    	vmul.f32	s6, s6, s1
    b178: eeb1 da43    	vneg.f32	s26, s6
    b17c: 2800         	cmp	r0, #0x0
    b17e: ed9f 3ab7    	vldr	s6, [pc, #732]          @ 0xb45c <ram_probe::packed_probe::candidate+0x19cc>
    b182: eddf 8ab7    	vldr	s17, [pc, #732]         @ 0xb460 <ram_probe::packed_probe::candidate+0x19d0>
    b186: f04f 0100    	mov.w	r1, #0x0
    b18a: fe48 0a83    	vseleq.f32	s1, s17, s6
    b18e: eddf 5ab5    	vldr	s11, [pc, #724]         @ 0xb464 <ram_probe::packed_probe::candidate+0x19d4>
    b192: 2000         	movs	r0, #0x0
    b194: ee60 0aa2    	vmul.f32	s1, s1, s5
    b198: ee69 2a0d    	vmul.f32	s5, s18, s26
    b19c: ed9f 9ab2    	vldr	s18, [pc, #712]         @ 0xb468 <ram_probe::packed_probe::candidate+0x19d8>
    b1a0: ed9f dab2    	vldr	s26, [pc, #712]         @ 0xb46c <ram_probe::packed_probe::candidate+0x19dc>
    b1a4: ee60 5aa5    	vmul.f32	s11, s1, s11
    b1a8: ee60 0a82    	vmul.f32	s1, s1, s4
    b1ac: ee42 5a89    	vmla.f32	s11, s5, s18
    b1b0: eeb0 9a60    	vmov.f32	s18, s1
    b1b4: ee42 0a8d    	vmla.f32	s1, s5, s26
    b1b8: ee02 9aa8    	vmla.f32	s18, s5, s17
    b1bc: eef0 2a42    	vmov.f32	s5, s4
    b1c0: ee75 5aa6    	vadd.f32	s11, s11, s13
    b1c4: edcd 0a73    	vstr	s1, [sp, #460]
    b1c8: eddd 0a10    	vldr	s1, [sp, #64]
    b1cc: edcd 5a72    	vstr	s11, [sp, #456]
    b1d0: eef4 1a60    	vcmp.f32	s3, s1
    b1d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b1d8: bfc8         	it	gt
    b1da: 2101         	movgt	r1, #0x1
    b1dc: eddd 0a11    	vldr	s1, [sp, #68]
    b1e0: eef4 1a60    	vcmp.f32	s3, s1
    b1e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b1e8: bf48         	it	mi
    b1ea: 2001         	movmi	r0, #0x1
    b1ec: ed8d 9a74    	vstr	s18, [sp, #464]
    b1f0: eeb0 9a42    	vmov.f32	s18, s4
    b1f4: eeb5 ca40    	vcmp.f32	s24, #0
    b1f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b1fc: d92e         	bls	0xb25c <ram_probe::packed_probe::candidate+0x17cc> @ imm = #0x5c
    b1fe: ee7c 0aa6    	vadd.f32	s1, s25, s13
    b202: eddd 1a0c    	vldr	s3, [sp, #48]
    b206: eec6 2a20    	vdiv.f32	s5, s12, s1
    b20a: eeb0 6ae1    	vabs.f32	s12, s3
    b20e: eeb4 6a4c    	vcmp.f32	s12, s24
    b212: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b216: dd1b         	ble	0xb250 <ram_probe::packed_probe::candidate+0x17c0> @ imm = #0x36
    b218: ee11 2a90    	vmov	r2, s3
    b21c: f04f 537e    	mov.w	r3, #0x3f800000
    b220: ee6c 0aab    	vmul.f32	s1, s25, s23
    b224: eef4 1a61    	vcmp.f32	s3, s3
    b228: f363 021e    	bfi	r2, r3, #0, #31
    b22c: ee06 2a10    	vmov	s12, r2
    b230: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b234: ee26 6a22    	vmul.f32	s12, s12, s5
    b238: ee62 2aa0    	vmul.f32	s5, s5, s1
    b23c: eddf 0af1    	vldr	s1, [pc, #964]          @ 0xb604 <ram_probe::packed_probe::candidate+0x1b74>
    b240: fe10 9a86    	vselvs.f32	s18, s1, s12
    b244: e00a         	b	0xb25c <ram_probe::packed_probe::candidate+0x17cc> @ imm = #0x14
    b246: bf00         	nop
    b248: 17 b7 d1 38  	.word	0x38d1b717
    b24c: 00 bf 00 bf  	.word	0xbf00bf00
    b250: ee21 6aac    	vmul.f32	s12, s3, s25
    b254: ee86 6a0c    	vdiv.f32	s12, s12, s24
    b258: ee22 9a86    	vmul.f32	s18, s5, s12
    b25c: eeb5 8a40    	vcmp.f32	s16, #0
    b260: eeb0 6a42    	vmov.f32	s12, s4
    b264: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b268: bf48         	it	mi
    b26a: eeb0 6a69    	vmovmi.f32	s12, s19
    b26e: eddf 0a76    	vldr	s1, [pc, #472]          @ 0xb448 <ram_probe::packed_probe::candidate+0x19b8>
    b272: ea00 0001    	and.w	r0, r0, r1
    b276: fe36 6a86    	vselgt.f32	s12, s13, s12
    b27a: eef4 7a60    	vcmp.f32	s15, s1
    b27e: eef0 0a42    	vmov.f32	s1, s4
    b282: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b286: da25         	bge	0xb2d4 <ram_probe::packed_probe::candidate+0x1844> @ imm = #0x4a
    b288: eddf 0a70    	vldr	s1, [pc, #448]          @ 0xb44c <ram_probe::packed_probe::candidate+0x19bc>
    b28c: eef4 7a60    	vcmp.f32	s15, s1
    b290: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b294: d90c         	bls	0xb2b0 <ram_probe::packed_probe::candidate+0x1820> @ imm = #0x18
    b296: eddf 0a6e    	vldr	s1, [pc, #440]          @ 0xb450 <ram_probe::packed_probe::candidate+0x19c0>
    b29a: eef4 7a60    	vcmp.f32	s15, s1
    b29e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b2a2: d911         	bls	0xb2c8 <ram_probe::packed_probe::candidate+0x1838> @ imm = #0x22
    b2a4: eddf 0a6b    	vldr	s1, [pc, #428]          @ 0xb454 <ram_probe::packed_probe::candidate+0x19c4>
    b2a8: e010         	b	0xb2cc <ram_probe::packed_probe::candidate+0x183c> @ imm = #0x20
    b2aa: bf00         	nop
    b2ac: bf00         	nop
    b2ae: bf00         	nop
    b2b0: ed9f 6a69    	vldr	s12, [pc, #420]         @ 0xb458 <ram_probe::packed_probe::candidate+0x19c8>
    b2b4: e00c         	b	0xb2d0 <ram_probe::packed_probe::candidate+0x1840> @ imm = #0x18
    b2b6: bf00         	nop
    b2b8: 51 e6 7f bf  	.word	0xbf7fe651
    b2bc: 99 76 cd 39  	.word	0x39cd7699
    b2c0: 2b 18 95 3b  	.word	0x3b95182b
    b2c4: 95 bf d6 33  	.word	0x33d6bf95
    b2c8: eddf 0acf    	vldr	s1, [pc, #828]          @ 0xb608 <ram_probe::packed_probe::candidate+0x1b78>
    b2cc: ee26 6a20    	vmul.f32	s12, s12, s1
    b2d0: eef1 0a46    	vneg.f32	s1, s12
    b2d4: 2800         	cmp	r0, #0x0
    b2d6: ee69 0a20    	vmul.f32	s1, s18, s1
    b2da: ed9f 6acc    	vldr	s12, [pc, #816]         @ 0xb60c <ram_probe::packed_probe::candidate+0x1b7c>
    b2de: eeb4 7a6e    	vcmp.f32	s14, s29
    b2e2: fe08 3a83    	vseleq.f32	s6, s17, s6
    b2e6: eeb8 7a00    	vmov.f32	s14, #-2.000000e+00
    b2ea: 200d         	movs	r0, #0xd
    b2ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b2f0: ee63 2a22    	vmul.f32	s5, s6, s5
    b2f4: ed9f 3ac6    	vldr	s6, [pc, #792]          @ 0xb610 <ram_probe::packed_probe::candidate+0x1b80>
    b2f8: eef4 fa47    	vcmp.f32	s31, s14
    b2fc: ee62 7a83    	vmul.f32	s15, s5, s6
    b300: ed9f 3ac4    	vldr	s6, [pc, #784]          @ 0xb614 <ram_probe::packed_probe::candidate+0x1b84>
    b304: ee40 7a83    	vmla.f32	s15, s1, s6
    b308: ee20 3a8d    	vmul.f32	s6, s1, s26
    b30c: ee02 3a86    	vmla.f32	s6, s5, s12
    b310: ed9f 6ac1    	vldr	s12, [pc, #772]         @ 0xb618 <ram_probe::packed_probe::candidate+0x1b88>
    b314: ee60 0a86    	vmul.f32	s1, s1, s12
    b318: ee42 0a82    	vmla.f32	s1, s5, s4
    b31c: ee77 2aa6    	vadd.f32	s5, s15, s13
    b320: ed8d 3a75    	vstr	s6, [sp, #468]
    b324: edcd 2a76    	vstr	s5, [sp, #472]
    b328: bf88         	it	hi
    b32a: 200e         	movhi	r0, #0xe
    b32c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b330: edcd 0a77    	vstr	s1, [sp, #476]
    b334: dd15         	ble	0xb362 <ram_probe::packed_probe::candidate+0x18d2> @ imm = #0x2a
    b336: eef5 fa40    	vcmp.f32	s31, #0
    b33a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b33e: d510         	bpl	0xb362 <ram_probe::packed_probe::candidate+0x18d2> @ imm = #0x20
    b340: eeb0 7a66    	vmov.f32	s14, s13
    b344: ee0f 7a8f    	vmla.f32	s14, s31, s30
    b348: ed5f 0a23    	vldr	s1, [pc, #-140]         @ 0xb2c0 <ram_probe::packed_probe::candidate+0x1830>
    b34c: ee27 7a20    	vmul.f32	s14, s14, s1
    b350: ed5f 0a24    	vldr	s1, [pc, #-144]         @ 0xb2c4 <ram_probe::packed_probe::candidate+0x1834>
    b354: eeb4 7a60    	vcmp.f32	s14, s1
    b358: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b35c: bfc8         	it	gt
    b35e: ed9f 2aaf    	vldrgt	s4, [pc, #700]          @ 0xb61c <ram_probe::packed_probe::candidate+0x1b8c>
    b362: f64d 3168    	movw	r1, #0xdb68
    b366: ee25 2a02    	vmul.f32	s4, s10, s4
    b36a: f2c0 0100    	movt	r1, #0x0
    b36e: eb01 1080    	add.w	r0, r1, r0, lsl #6
    b372: ed90 8b0c    	vldr	d8, [r0, #48]
    b376: eef7 0bc8    	vcvt.f32.f64	s1, d8
    b37a: ed90 8b0a    	vldr	d8, [r0, #40]
    b37e: ee42 4a60    	vmls.f32	s9, s4, s1
    b382: ed90 7b08    	vldr	d7, [r0, #32]
    b386: eef7 0bc8    	vcvt.f32.f64	s1, d8
    b38a: eeb7 7bc7    	vcvt.f32.f64	s14, d7
    b38e: ee02 6a60    	vmls.f32	s12, s4, s1
    b392: ee31 1a24    	vadd.f32	s2, s2, s9
    b396: ee27 7a42    	vnmul.f32	s14, s14, s4
    b39a: ed8d 1a7a    	vstr	s2, [sp, #488]
    b39e: eeb1 2a63    	vneg.f32	s4, s7
    b3a2: ed8d 7a78    	vstr	s14, [sp, #480]
    b3a6: eeb1 1a4b    	vneg.f32	s2, s22
    b3aa: ed8d 6a79    	vstr	s12, [sp, #484]
    b3ae: ed8d 1a8f    	vstr	s2, [sp, #572]
    b3b2: ed1f 1a5b    	vldr	s2, [pc, #-364]         @ 0xb248 <ram_probe::packed_probe::candidate+0x17b8>
    b3b6: eeb1 6a4a    	vneg.f32	s12, s20
    b3ba: ed8d 2a8e    	vstr	s4, [sp, #568]
    b3be: eef4 aa41    	vcmp.f32	s21, s2
    b3c2: ed8d 6a90    	vstr	s12, [sp, #576]
    b3c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b3ca: f240 81fd    	bls.w	0xb7c8 <ram_probe::packed_probe::candidate+0x1d38> @ imm = #0x3fa
    b3ce: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    b3d2: a965         	add	r1, sp, #0x194
    b3d4: 3001         	adds	r0, #0x1
    b3d6: f8c4 010c    	str.w	r0, [r4, #0x10c]
    b3da: a872         	add	r0, sp, #0x1c8
    b3dc: aa32         	add	r2, sp, #0xc8
    b3de: ab51         	add	r3, sp, #0x144
    b3e0: ed9d 0a07    	vldr	s0, [sp, #28]
    b3e4: ed8d 0a69    	vstr	s0, [sp, #420]
    b3e8: ed9d 0a09    	vldr	s0, [sp, #36]
    b3ec: ed8d 0a6a    	vstr	s0, [sp, #424]
    b3f0: ed9d 0a08    	vldr	s0, [sp, #32]
    b3f4: ed8d 0a6b    	vstr	s0, [sp, #428]
    b3f8: f8cd a000    	str.w	r10, [sp]
    b3fc: f7fa fc78    	bl	0x5cf0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>> @ imm = #-0x5710
    b400: f89d 01cd    	ldrb.w	r0, [sp, #0x1cd]
    b404: f89d 11cc    	ldrb.w	r1, [sp, #0x1cc]
    b408: 2801         	cmp	r0, #0x1
    b40a: 448b         	add	r11, r1
    b40c: d130         	bne	0xb470 <ram_probe::packed_probe::candidate+0x19e0> @ imm = #0x60
    b40e: ed9d 1a0a    	vldr	s2, [sp, #40]
    b412: ed9d 0a72    	vldr	s0, [sp, #456]
    b416: eeb4 1a41    	vcmp.f32	s2, s2
    b41a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b41e: eeb4 0a40    	vcmp.f32	s0, s0
    b422: fe10 1a01    	vselvs.f32	s2, s0, s2
    b426: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b42a: fe11 0a00    	vselvs.f32	s0, s2, s0
    b42e: eeb4 1a40    	vcmp.f32	s2, s0
    b432: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b436: fe31 8a00    	vselgt.f32	s16, s2, s0
    b43a: eddd ea0f    	vldr	s29, [sp, #60]
    b43e: eddd fa0e    	vldr	s31, [sp, #56]
    b442: ed9d 6a14    	vldr	s12, [sp, #80]
    b446: e04b         	b	0xb4e0 <ram_probe::packed_probe::candidate+0x1a50> @ imm = #0x96
    b448: 0a d7 23 3d  	.word	0x3d23d70a
    b44c: 7c f2 b0 3a  	.word	0x3ab0f27c
    b450: a6 9b c4 3b  	.word	0x3bc49ba6
    b454: 79 78 b0 43  	.word	0x43b07879
    b458: 00 00 00 00  	.word	0x00000000
    b45c: 79 61 2e c3  	.word	0xc32e6179
    b460: 00 00 00 80  	.word	0x80000000
    b464: fc 9d 08 bf  	.word	0xbf089dfc
    b468: 83 c0 96 38  	.word	0x3896c083
    b46c: d6 f8 e4 b6  	.word	0xb6e4f8d6
    b470: a872         	add	r0, sp, #0x1c8
    b472: a965         	add	r1, sp, #0x194
    b474: aa32         	add	r2, sp, #0xc8
    b476: ab51         	add	r3, sp, #0x144
    b478: 2600         	movs	r6, #0x0
    b47a: 966b         	str	r6, [sp, #0x1ac]
    b47c: e9cd 6669    	strd	r6, r6, [sp, #420]
    b480: f8cd a000    	str.w	r10, [sp]
    b484: f7fa fc34    	bl	0x5cf0 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5, 3>> @ imm = #-0x5798
    b488: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    b48c: 3001         	adds	r0, #0x1
    b48e: bf28         	it	hs
    b490: f04f 30ff    	movhs.w	r0, #0xffffffff
    b494: ed9d 1a0a    	vldr	s2, [sp, #40]
    b498: ed9d 0a72    	vldr	s0, [sp, #456]
    b49c: eeb4 1a41    	vcmp.f32	s2, s2
    b4a0: f89d 11cc    	ldrb.w	r1, [sp, #0x1cc]
    b4a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b4a8: eeb4 0a40    	vcmp.f32	s0, s0
    b4ac: f89d 21cd    	ldrb.w	r2, [sp, #0x1cd]
    b4b0: fe10 1a01    	vselvs.f32	s2, s0, s2
    b4b4: 448b         	add	r11, r1
    b4b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b4ba: eddd ea0f    	vldr	s29, [sp, #60]
    b4be: eddd fa0e    	vldr	s31, [sp, #56]
    b4c2: fe11 2a00    	vselvs.f32	s4, s2, s0
    b4c6: ed9d 6a14    	vldr	s12, [sp, #80]
    b4ca: f8c4 011c    	str.w	r0, [r4, #0x11c]
    b4ce: eeb4 1a42    	vcmp.f32	s2, s4
    b4d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b4d6: fe31 8a02    	vselgt.f32	s16, s2, s4
    b4da: 2a00         	cmp	r2, #0x0
    b4dc: f000 83a8    	beq.w	0xbc30 <ram_probe::packed_probe::candidate+0x21a0> @ imm = #0x750
    b4e0: ed9d 0a6a    	vldr	s0, [sp, #424]
    b4e4: ed9d 1a6b    	vldr	s2, [sp, #428]
    b4e8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b4ec: eeb3 4a05    	vmov.f32	s8, #2.100000e+01
    b4f0: ed9f 2bab    	vldr	d2, [pc, #684]          @ 0xb7a0 <ram_probe::packed_probe::candidate+0x1d10>
    b4f4: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    b4f8: ed9d 9b4a    	vldr	d9, [sp, #296]
    b4fc: ee00 9b02    	vmla.f64	d9, d0, d2
    b500: eeb7 0ace    	vcvt.f64.f32	d0, s28
    b504: ee01 9b42    	vmls.f64	d9, d1, d2
    b508: ed9f 1ba7    	vldr	d1, [pc, #668]          @ 0xb7a8 <ram_probe::packed_probe::candidate+0x1d18>
    b50c: ee80 0b01    	vdiv.f64	d0, d0, d1
    b510: ed9f 1ba7    	vldr	d1, [pc, #668]          @ 0xb7b0 <ram_probe::packed_probe::candidate+0x1d20>
    b514: ee09 0b01    	vmla.f64	d0, d9, d1
    b518: ed9f 1ba7    	vldr	d1, [pc, #668]          @ 0xb7b8 <ram_probe::packed_probe::candidate+0x1d28>
    b51c: ee80 0b01    	vdiv.f64	d0, d0, d1
    b520: eebb 1a05    	vmov.f32	s2, #-2.100000e+01
    b524: ed9d ab40    	vldr	d10, [sp, #256]
    b528: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b52c: eeb4 1a40    	vcmp.f32	s2, s0
    b530: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b534: fe31 0a00    	vselgt.f32	s0, s2, s0
    b538: eeb4 0a44    	vcmp.f32	s0, s8
    b53c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b540: eeb4 6a6f    	vcmp.f32	s12, s31
    b544: fe34 2a00    	vselgt.f32	s4, s8, s0
    b548: ed9d 0a6c    	vldr	s0, [sp, #432]
    b54c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b550: ed8d 2a6c    	vstr	s4, [sp, #432]
    b554: f200 8468    	bhi.w	0xbe28 <ram_probe::packed_probe::candidate+0x2398> @ imm = #0x8d0
    b558: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    b55c: ed9f 3b98    	vldr	d3, [pc, #608]          @ 0xb7c0 <ram_probe::packed_probe::candidate+0x1d30>
    b560: eeb0 5b49    	vmov.f64	d5, d9
    b564: ee01 5b03    	vmla.f64	d5, d1, d3
    b568: ed9f 3a2d    	vldr	s6, [pc, #180]          @ 0xb620 <ram_probe::packed_probe::candidate+0x1b90>
    b56c: eeb7 1bc5    	vcvt.f32.f64	s2, d5
    b570: eeb7 5bca    	vcvt.f32.f64	s10, d10
    b574: ee41 ea03    	vmla.f32	s29, s2, s6
    b578: ed9f 3a2a    	vldr	s6, [pc, #168]          @ 0xb624 <ram_probe::packed_probe::candidate+0x1b94>
    b57c: ee02 5a03    	vmla.f32	s10, s4, s6
    b580: eeb4 6a6e    	vcmp.f32	s12, s29
    b584: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b588: fe36 1a2e    	vselgt.f32	s2, s12, s29
    b58c: eeb4 1a6f    	vcmp.f32	s2, s31
    b590: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b594: fe3f 1a81    	vselgt.f32	s2, s31, s2
    b598: eeb0 6ac1    	vabs.f32	s12, s2
    b59c: eeb4 6a44    	vcmp.f32	s12, s8
    b5a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b5a4: dd44         	ble	0xb630 <ram_probe::packed_probe::candidate+0x1ba0> @ imm = #0x88
    b5a6: eec4 2a06    	vdiv.f32	s5, s8, s12
    b5aa: ee22 3aa2    	vmul.f32	s6, s5, s5
    b5ae: ee23 3a03    	vmul.f32	s6, s6, s6
    b5b2: ee23 3a03    	vmul.f32	s6, s6, s6
    b5b6: ee63 4a03    	vmul.f32	s9, s6, s6
    b5ba: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    b5be: ee74 0a83    	vadd.f32	s1, s9, s6
    b5c2: eeb0 7a43    	vmov.f32	s14, s6
    b5c6: eef4 0a43    	vcmp.f32	s1, s6
    b5ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b5ce: d009         	beq	0xb5e4 <ram_probe::packed_probe::candidate+0x1b54> @ imm = #0x12
    b5d0: eef1 0ae0    	vsqrt.f32	s1, s1
    b5d4: eef1 0ae0    	vsqrt.f32	s1, s1
    b5d8: eef1 0ae0    	vsqrt.f32	s1, s1
    b5dc: eef1 0ae0    	vsqrt.f32	s1, s1
    b5e0: eeb0 7a60    	vmov.f32	s14, s1
    b5e4: ee11 0a10    	vmov	r0, s2
    b5e8: f04f 517e    	mov.w	r1, #0x3f800000
    b5ec: eec3 8a07    	vdiv.f32	s17, s6, s14
    b5f0: f361 001e    	bfi	r0, r1, #0, #31
    b5f4: ee00 0a90    	vmov	s1, r0
    b5f8: ee20 3a84    	vmul.f32	s6, s1, s8
    b5fc: ee23 3a28    	vmul.f32	s6, s6, s17
    b600: e039         	b	0xb676 <ram_probe::packed_probe::candidate+0x1be6> @ imm = #0x72
    b602: bf00         	nop
    b604: 00 00 c0 7f  	.word	0x7fc00000
    b608: 53 4a a1 43  	.word	0x43a14a53
    b60c: 6f f3 03 be  	.word	0xbe03f36f
    b610: d5 35 a4 be  	.word	0xbea435d5
    b614: af e6 27 39  	.word	0x3927e6af
    b618: 79 2e 02 b9  	.word	0xb9022e79
    b61c: 2b 18 15 3b  	.word	0x3b15182b
    b620: d2 4e da 43  	.word	0x43da4ed2
    b624: cd 1e 2c be  	.word	0xbe2c1ecd
    b628: 00 00 70 42  	.word	0x42700000
    b62c: 00 bf 00 bf  	.word	0xbf00bf00
    b630: eec1 2a04    	vdiv.f32	s5, s2, s8
    b634: ee22 3aa2    	vmul.f32	s6, s5, s5
    b638: ee23 3a03    	vmul.f32	s6, s6, s6
    b63c: ee23 3a03    	vmul.f32	s6, s6, s6
    b640: ee63 4a03    	vmul.f32	s9, s6, s6
    b644: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    b648: ee34 7a83    	vadd.f32	s14, s9, s6
    b64c: eef0 0a43    	vmov.f32	s1, s6
    b650: eeb4 7a43    	vcmp.f32	s14, s6
    b654: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b658: d009         	beq	0xb66e <ram_probe::packed_probe::candidate+0x1bde> @ imm = #0x12
    b65a: eeb1 7ac7    	vsqrt.f32	s14, s14
    b65e: eeb1 7ac7    	vsqrt.f32	s14, s14
    b662: eeb1 7ac7    	vsqrt.f32	s14, s14
    b666: eeb1 7ac7    	vsqrt.f32	s14, s14
    b66a: eef0 0a47    	vmov.f32	s1, s14
    b66e: eec3 8a20    	vdiv.f32	s17, s6, s1
    b672: ee21 3a28    	vmul.f32	s6, s2, s17
    b676: eef0 0ac3    	vabs.f32	s1, s6
    b67a: eeb3 7a08    	vmov.f32	s14, #2.400000e+01
    b67e: eef2 6a00    	vmov.f32	s13, #8.000000e+00
    b682: ed5f 3a17    	vldr	s7, [pc, #-92]          @ 0xb628 <ram_probe::packed_probe::candidate+0x1b98>
    b686: eeb1 da04    	vmov.f32	s26, #5.000000e+00
    b68a: eef0 7ac5    	vabs.f32	s15, s10
    b68e: ee77 5a60    	vsub.f32	s11, s14, s1
    b692: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    b696: fec5 1aa6    	vmaxnm.f32	s3, s11, s13
    b69a: ee83 caa1    	vdiv.f32	s24, s7, s3
    b69e: fe8c ea4d    	vminnm.f32	s28, s24, s26
    b6a2: ee87 ba8e    	vdiv.f32	s22, s15, s28
    b6a6: eece ba27    	vdiv.f32	s23, s28, s15
    b6aa: eeb4 ba60    	vcmp.f32	s22, s1
    b6ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b6b2: fe7b 7a8b    	vselgt.f32	s15, s23, s22
    b6b6: ee67 7aa7    	vmul.f32	s15, s15, s15
    b6ba: ee67 7aa7    	vmul.f32	s15, s15, s15
    b6be: ee67 7aa7    	vmul.f32	s15, s15, s15
    b6c2: ee27 faa7    	vmul.f32	s30, s15, s15
    b6c6: eef0 7a60    	vmov.f32	s15, s1
    b6ca: ee7f ca20    	vadd.f32	s25, s30, s1
    b6ce: eef4 ca60    	vcmp.f32	s25, s1
    b6d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b6d6: d009         	beq	0xb6ec <ram_probe::packed_probe::candidate+0x1c5c> @ imm = #0x12
    b6d8: eef0 7a6c    	vmov.f32	s15, s25
    b6dc: eef1 7ae7    	vsqrt.f32	s15, s15
    b6e0: eef1 7ae7    	vsqrt.f32	s15, s15
    b6e4: eef1 7ae7    	vsqrt.f32	s15, s15
    b6e8: eef1 7ae7    	vsqrt.f32	s15, s15
    b6ec: eec0 7aa7    	vdiv.f32	s15, s1, s15
    b6f0: eeb4 ba60    	vcmp.f32	s22, s1
    b6f4: eef0 0a42    	vmov.f32	s1, s4
    b6f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b6fc: ee6b daa7    	vmul.f32	s27, s23, s15
    b700: eef1 ba6b    	vneg.f32	s23, s23
    b704: fe7d daa7    	vselgt.f32	s27, s27, s15
    b708: fe7b ba8b    	vselgt.f32	s23, s23, s22
    b70c: ee43 0a6d    	vmls.f32	s1, s6, s27
    b710: ee10 0a90    	vmov	r0, s1
    b714: f020 4000    	bic	r0, r0, #0x80000000
    b718: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b71c: f280 8228    	bge.w	0xbb70 <ram_probe::packed_probe::candidate+0x20e0> @ imm = #0x450
    b720: eeb0 bae0    	vabs.f32	s22, s1
    b724: ee8b 7a07    	vdiv.f32	s14, s22, s14
    b728: ed9f baf2    	vldr	s22, [pc, #968]         @ 0xbaf4 <ram_probe::packed_probe::candidate+0x2064>
    b72c: eeb4 7a4b    	vcmp.f32	s14, s22
    b730: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b734: f200 821c    	bhi.w	0xbb70 <ram_probe::packed_probe::candidate+0x20e0> @ imm = #0x438
    b738: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    b73c: ee64 2aa2    	vmul.f32	s5, s9, s5
    b740: 2000         	movs	r0, #0x0
    b742: 2100         	movs	r1, #0x0
    b744: eec7 caac    	vdiv.f32	s25, s15, s25
    b748: ee74 da8b    	vadd.f32	s27, s9, s22
    b74c: ed9d ba14    	vldr	s22, [sp, #80]
    b750: eef4 ea4b    	vcmp.f32	s29, s22
    b754: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b758: eec8 8aad    	vdiv.f32	s17, s17, s27
    b75c: bfc8         	it	gt
    b75e: 2001         	movgt	r0, #0x1
    b760: eef4 ea6f    	vcmp.f32	s29, s31
    b764: ee68 2aa2    	vmul.f32	s5, s17, s5
    b768: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b76c: bf48         	it	mi
    b76e: 2101         	movmi	r1, #0x1
    b770: eeb4 6a44    	vcmp.f32	s12, s8
    b774: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b778: eef5 ba40    	vcmp.f32	s23, #0
    b77c: fe32 4aa8    	vselgt.f32	s8, s5, s17
    b780: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b784: f280 8178    	bge.w	0xba78 <ram_probe::packed_probe::candidate+0x1fe8> @ imm = #0x2f0
    b788: ee8b 5a85    	vdiv.f32	s10, s23, s10
    b78c: eeb1 fa6b    	vneg.f32	s30, s23
    b790: ee6b 7ae7    	vnmul.f32	s15, s23, s15
    b794: ee25 5a2c    	vmul.f32	s10, s10, s25
    b798: e17c         	b	0xba94 <ram_probe::packed_probe::candidate+0x2004> @ imm = #0x2f8
    b79a: bf00         	nop
    b79c: bf00         	nop
    b79e: bf00         	nop
    b7a0: e6 a7 5c a0  	.word	0xa05ca7e6
    b7a4: 06 41 d9 3f  	.word	0x3fd94106
    b7a8: 85 42 fe de  	.word	0xdefe4285
    b7ac: bb a7 01 41  	.word	0x4101a7bb
    b7b0: b4 cf 84 3d  	.word	0x3d84cfb4
    b7b4: da 49 7b 40  	.word	0x407b49da
    b7b8: d1 a7 00 a5  	.word	0xa500a7d1
    b7bc: f6 46 24 40  	.word	0x402446f6
    b7c0: 19 d5 65 36  	.word	0x3665d519
    b7c4: d0 6e 95 bf  	.word	0xbf956ed0
    b7c8: eeb0 1ac3    	vabs.f32	s2, s6
    b7cc: 2100         	movs	r1, #0x0
    b7ce: eeb0 6ae5    	vabs.f32	s12, s11
    b7d2: eeb4 1a46    	vcmp.f32	s2, s12
    b7d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b7da: bfc8         	it	gt
    b7dc: 2101         	movgt	r1, #0x1
    b7de: fe33 1a25    	vselgt.f32	s2, s6, s11
    b7e2: eeb0 3ac7    	vabs.f32	s6, s14
    b7e6: eeb0 1ac1    	vabs.f32	s2, s2
    b7ea: eeb4 3a41    	vcmp.f32	s6, s2
    b7ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b7f2: bfc8         	it	gt
    b7f4: 2102         	movgt	r1, #0x2
    b7f6: f8dd c1cc    	ldr.w	r12, [sp, #0x1cc]
    b7fa: eb01 0041    	add.w	r0, r1, r1, lsl #1
    b7fe: eb08 0280    	add.w	r2, r8, r0, lsl #2
    b802: f858 3020    	ldr.w	r3, [r8, r0, lsl #2]
    b806: e9d2 6501    	ldrd	r6, r5, [r2, #4]
    b80a: 9673         	str	r6, [sp, #0x1cc]
    b80c: 9e74         	ldr	r6, [sp, #0x1d0]
    b80e: 9574         	str	r5, [sp, #0x1d0]
    b810: 9d72         	ldr	r5, [sp, #0x1c8]
    b812: 9372         	str	r3, [sp, #0x1c8]
    b814: f848 5020    	str.w	r5, [r8, r0, lsl #2]
    b818: e9c2 c601    	strd	r12, r6, [r2, #4]
    b81c: f50d 7c0e    	add.w	r12, sp, #0x238
    b820: ed9d 1a72    	vldr	s2, [sp, #456]
    b824: eb0c 0281    	add.w	r2, r12, r1, lsl #2
    b828: ee11 0a10    	vmov	r0, s2
    b82c: f85c 1021    	ldr.w	r1, [r12, r1, lsl #2]
    b830: 918e         	str	r1, [sp, #0x238]
    b832: ed82 2a00    	vstr	s4, [r2]
    b836: f020 4000    	bic	r0, r0, #0x80000000
    b83a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b83e: f6bf adc6    	bge.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #-0x474
    b842: eeb0 3ac1    	vabs.f32	s6, s2
    b846: ed9f 2ae1    	vldr	s4, [pc, #900]          @ 0xbbcc <ram_probe::packed_probe::candidate+0x213c>
    b84a: eeb4 3a42    	vcmp.f32	s6, s4
    b84e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b852: f53f adbc    	bmi.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #-0x488
    b856: ed9d 3a78    	vldr	s6, [sp, #480]
    b85a: ed9d 6a75    	vldr	s12, [sp, #468]
    b85e: eec3 0a01    	vdiv.f32	s1, s6, s2
    b862: ed9d 3a73    	vldr	s6, [sp, #460]
    b866: eec6 2a01    	vdiv.f32	s5, s12, s2
    b86a: eddd 3a79    	vldr	s7, [sp, #484]
    b86e: eddd 4a76    	vldr	s9, [sp, #472]
    b872: ed9d 6a8e    	vldr	s12, [sp, #568]
    b876: ee43 3a60    	vmls.f32	s7, s6, s1
    b87a: ed9d 7a74    	vldr	s14, [sp, #464]
    b87e: ee42 4ac3    	vmls.f32	s9, s5, s6
    b882: eddd 5a77    	vldr	s11, [sp, #476]
    b886: ee42 5ac7    	vmls.f32	s11, s5, s14
    b88a: eddd 7a8f    	vldr	s15, [sp, #572]
    b88e: ee42 7ac6    	vmls.f32	s15, s5, s12
    b892: f108 020c    	add.w	r2, r8, #0xc
    b896: 4611         	mov	r1, r2
    b898: edcd 3a79    	vstr	s7, [sp, #484]
    b89c: edcd 4a76    	vstr	s9, [sp, #472]
    b8a0: eef0 2ae3    	vabs.f32	s5, s7
    b8a4: edcd 5a77    	vstr	s11, [sp, #476]
    b8a8: eeb0 8ae4    	vabs.f32	s16, s9
    b8ac: eddd 4a7a    	vldr	s9, [sp, #488]
    b8b0: ee47 4a60    	vmls.f32	s9, s14, s1
    b8b4: edcd 7a8f    	vstr	s15, [sp, #572]
    b8b8: eef4 2a48    	vcmp.f32	s5, s16
    b8bc: eddd 2a90    	vldr	s5, [sp, #576]
    b8c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b8c4: bfc8         	it	gt
    b8c6: f108 0118    	addgt.w	r1, r8, #0x18
    b8ca: edcd 4a7a    	vstr	s9, [sp, #488]
    b8ce: f8d2 e000    	ldr.w	lr, [r2]
    b8d2: e9d1 6000    	ldrd	r6, r0, [r1]
    b8d6: 688b         	ldr	r3, [r1, #0x8]
    b8d8: 6016         	str	r6, [r2]
    b8da: 6856         	ldr	r6, [r2, #0x4]
    b8dc: 6050         	str	r0, [r2, #0x4]
    b8de: 6890         	ldr	r0, [r2, #0x8]
    b8e0: 6093         	str	r3, [r2, #0x8]
    b8e2: ee46 2a60    	vmls.f32	s5, s12, s1
    b8e6: e9c1 6001    	strd	r6, r0, [r1, #4]
    b8ea: eddd 0a76    	vldr	s1, [sp, #472]
    b8ee: f04f 0004    	mov.w	r0, #0x4
    b8f2: ee10 2a90    	vmov	r2, s1
    b8f6: bfc8         	it	gt
    b8f8: 2008         	movgt	r0, #0x8
    b8fa: edcd 2a90    	vstr	s5, [sp, #576]
    b8fe: f8c1 e000    	str.w	lr, [r1]
    b902: f85c 1000    	ldr.w	r1, [r12, r0]
    b906: 4460         	add	r0, r12
    b908: f022 4200    	bic	r2, r2, #0x80000000
    b90c: f1b2 4fff    	cmp.w	r2, #0x7f800000
    b910: 918f         	str	r1, [sp, #0x23c]
    b912: edc0 7a00    	vstr	s15, [r0]
    b916: f6bf ad5a    	bge.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #-0x54c
    b91a: eef0 2ae0    	vabs.f32	s5, s1
    b91e: eef4 2a42    	vcmp.f32	s5, s4
    b922: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b926: f53f ad52    	bmi.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #-0x55c
    b92a: eddd 2a79    	vldr	s5, [sp, #484]
    b92e: eddd 4a7a    	vldr	s9, [sp, #488]
    b932: eec2 3aa0    	vdiv.f32	s7, s5, s1
    b936: eddd 2a77    	vldr	s5, [sp, #476]
    b93a: ee43 4ae2    	vmls.f32	s9, s7, s5
    b93e: ee14 0a90    	vmov	r0, s9
    b942: f020 4000    	bic	r0, r0, #0x80000000
    b946: f1b0 4fff    	cmp.w	r0, #0x7f800000
    b94a: f6bf ad40    	bge.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #-0x580
    b94e: eef0 5ae4    	vabs.f32	s11, s9
    b952: eef4 5a42    	vcmp.f32	s11, s4
    b956: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b95a: f53f ad38    	bmi.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #-0x590
    b95e: eddd 5a8f    	vldr	s11, [sp, #572]
    b962: ed9d 2a90    	vldr	s4, [sp, #576]
    b966: ee03 2ae5    	vmls.f32	s4, s7, s11
    b96a: ed9d 0a15    	vldr	s0, [sp, #84]
    b96e: eeb0 0ac0    	vabs.f32	s0, s0
    b972: eeb4 0a40    	vcmp.f32	s0, s0
    b976: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b97a: ee82 2a24    	vdiv.f32	s4, s4, s9
    b97e: fe16 0a80    	vselvs.f32	s0, s13, s0
    b982: ee42 5ac2    	vmls.f32	s11, s5, s4
    b986: eeb4 0a66    	vcmp.f32	s0, s13
    b98a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b98e: eec5 0aa0    	vdiv.f32	s1, s11, s1
    b992: ee03 6a60    	vmls.f32	s12, s6, s1
    b996: fe30 3a26    	vselgt.f32	s6, s0, s13
    b99a: ed9f 0aaa    	vldr	s0, [pc, #680]          @ 0xbc44 <ram_probe::packed_probe::candidate+0x21b4>
    b99e: ee07 6a42    	vmls.f32	s12, s14, s4
    b9a2: ee23 3a00    	vmul.f32	s6, s6, s0
    b9a6: ee86 1a01    	vdiv.f32	s2, s12, s2
    b9aa: eeb0 6ac1    	vabs.f32	s12, s2
    b9ae: ed9f 1aa6    	vldr	s2, [pc, #664]          @ 0xbc48 <ram_probe::packed_probe::candidate+0x21b8>
    b9b2: fe83 3a41    	vminnm.f32	s6, s6, s2
    b9b6: eeb4 6a43    	vcmp.f32	s12, s6
    b9ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9be: f63f ad06    	bhi.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #-0x5f4
    b9c2: eeb0 3ac4    	vabs.f32	s6, s8
    b9c6: eeb0 4ae0    	vabs.f32	s8, s1
    b9ca: eeb4 3a43    	vcmp.f32	s6, s6
    b9ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9d2: fe16 3a83    	vselvs.f32	s6, s13, s6
    b9d6: eeb4 3a66    	vcmp.f32	s6, s13
    b9da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9de: fe33 3a26    	vselgt.f32	s6, s6, s13
    b9e2: ee23 3a00    	vmul.f32	s6, s6, s0
    b9e6: fe83 3a41    	vminnm.f32	s6, s6, s2
    b9ea: eeb4 4a43    	vcmp.f32	s8, s6
    b9ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9f2: f63f acec    	bhi.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #-0x628
    b9f6: eeb0 3ac5    	vabs.f32	s6, s10
    b9fa: eeb0 2ac2    	vabs.f32	s4, s4
    b9fe: eeb4 3a43    	vcmp.f32	s6, s6
    ba02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba06: fe16 3a83    	vselvs.f32	s6, s13, s6
    ba0a: eeb4 3a66    	vcmp.f32	s6, s13
    ba0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba12: fe33 3a26    	vselgt.f32	s6, s6, s13
    ba16: ee23 0a00    	vmul.f32	s0, s6, s0
    ba1a: fe80 0a41    	vminnm.f32	s0, s0, s2
    ba1e: eeb4 2a40    	vcmp.f32	s4, s0
    ba22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba26: f63f acd2    	bhi.w	0xb3ce <ram_probe::packed_probe::candidate+0x193e> @ imm = #-0x65c
    ba2a: ed9d 0a0a    	vldr	s0, [sp, #40]
    ba2e: f8d4 0108    	ldr.w	r0, [r4, #0x108]
    ba32: eeb4 0a40    	vcmp.f32	s0, s0
    ba36: f8d4 1110    	ldr.w	r1, [r4, #0x110]
    ba3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba3e: eef4 aa6a    	vcmp.f32	s21, s21
    ba42: ed9d 2a0d    	vldr	s4, [sp, #52]
    ba46: fe1a 0a80    	vselvs.f32	s0, s21, s0
    ba4a: ed8d 2a6f    	vstr	s4, [sp, #444]
    ba4e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba52: ed9d 2a0c    	vldr	s4, [sp, #48]
    ba56: ed8d 2a70    	vstr	s4, [sp, #448]
    ba5a: fe10 1a2a    	vselvs.f32	s2, s0, s21
    ba5e: 3001         	adds	r0, #0x1
    ba60: f8c4 0108    	str.w	r0, [r4, #0x108]
    ba64: 1c48         	adds	r0, r1, #0x1
    ba66: f8c4 0110    	str.w	r0, [r4, #0x110]
    ba6a: eeb4 0a41    	vcmp.f32	s0, s2
    ba6e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba72: fe30 8a01    	vselgt.f32	s16, s0, s2
    ba76: e4e0         	b	0xb43a <ram_probe::packed_probe::candidate+0x19aa> @ imm = #-0x640
    ba78: eeb1 6a4f    	vneg.f32	s12, s30
    ba7c: eeb5 5a40    	vcmp.f32	s10, #0
    ba80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba84: ee86 6a05    	vdiv.f32	s12, s12, s10
    ba88: ed9f 5ae6    	vldr	s10, [pc, #920]         @ 0xbe24 <ram_probe::packed_probe::candidate+0x2394>
    ba8c: ee26 6a2c    	vmul.f32	s12, s12, s25
    ba90: fe05 5a06    	vseleq.f32	s10, s10, s12
    ba94: ee8f 6a0e    	vdiv.f32	s12, s30, s28
    ba98: 4008         	ands	r0, r1
    ba9a: eeb4 ca4d    	vcmp.f32	s24, s26
    ba9e: eddf 2ae1    	vldr	s5, [pc, #900]          @ 0xbe24 <ram_probe::packed_probe::candidate+0x2394>
    baa2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    baa6: ee2c 6a86    	vmul.f32	s12, s25, s12
    baaa: d525         	bpl	0xbaf8 <ram_probe::packed_probe::candidate+0x2068> @ imm = #0x4a
    baac: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    bab0: eeb5 3a40    	vcmp.f32	s6, #0
    bab4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bab8: d020         	beq	0xbafc <ram_probe::packed_probe::candidate+0x206c> @ imm = #0x40
    baba: eef4 5a66    	vcmp.f32	s11, s13
    babe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bac2: dd1b         	ble	0xbafc <ram_probe::packed_probe::candidate+0x206c> @ imm = #0x36
    bac4: ee13 1a10    	vmov	r1, s6
    bac8: f04f 527e    	mov.w	r2, #0x3f800000
    bacc: eeb4 3a43    	vcmp.f32	s6, s6
    bad0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bad4: f362 011e    	bfi	r1, r2, #0, #31
    bad8: ee61 1aa1    	vmul.f32	s3, s3, s3
    badc: ee02 1a90    	vmov	s5, r1
    bae0: ee62 2aa3    	vmul.f32	s5, s5, s7
    bae4: eddf 3ad6    	vldr	s7, [pc, #856]          @ 0xbe40 <ram_probe::packed_probe::candidate+0x23b0>
    bae8: fe53 2aa2    	vselvs.f32	s5, s7, s5
    baec: eec2 2aa1    	vdiv.f32	s5, s5, s3
    baf0: e004         	b	0xbafc <ram_probe::packed_probe::candidate+0x206c> @ imm = #0x8
    baf2: bf00         	nop
    baf4: 17 b7 d1 38  	.word	0x38d1b717
    baf8: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    bafc: ee23 6a06    	vmul.f32	s12, s6, s12
    bb00: 2800         	cmp	r0, #0x0
    bb02: eddf 1ae6    	vldr	s3, [pc, #920]          @ 0xbe9c <ram_probe::packed_probe::candidate+0x240c>
    bb06: eeb0 2ac2    	vabs.f32	s4, s4
    bb0a: ee23 3a05    	vmul.f32	s6, s6, s10
    bb0e: ed9f 5ae6    	vldr	s10, [pc, #920]         @ 0xbea8 <ram_probe::packed_probe::candidate+0x2418>
    bb12: ee46 7a22    	vmla.f32	s15, s12, s5
    bb16: ed9f 6ae2    	vldr	s12, [pc, #904]         @ 0xbea0 <ram_probe::packed_probe::candidate+0x2410>
    bb1a: fe01 6a86    	vseleq.f32	s12, s3, s12
    bb1e: eeb4 2a42    	vcmp.f32	s4, s4
    bb22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bb26: fe14 2a82    	vselvs.f32	s4, s9, s4
    bb2a: ee24 4a27    	vmul.f32	s8, s8, s15
    bb2e: eeb4 2a64    	vcmp.f32	s4, s9
    bb32: ee26 4a04    	vmul.f32	s8, s12, s8
    bb36: ed9f 6adb    	vldr	s12, [pc, #876]         @ 0xbea4 <ram_probe::packed_probe::candidate+0x2414>
    bb3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bb3e: ee24 4a06    	vmul.f32	s8, s8, s12
    bb42: ee03 4a05    	vmla.f32	s8, s6, s10
    bb46: fe32 2a24    	vselgt.f32	s4, s4, s9
    bb4a: ee34 3a24    	vadd.f32	s6, s8, s9
    bb4e: ed9f 4ad1    	vldr	s8, [pc, #836]          @ 0xbe94 <ram_probe::packed_probe::candidate+0x2404>
    bb52: ee22 2a04    	vmul.f32	s4, s4, s8
    bb56: ed9f 4ad0    	vldr	s8, [pc, #832]          @ 0xbe98 <ram_probe::packed_probe::candidate+0x2408>
    bb5a: ee80 3a83    	vdiv.f32	s6, s1, s6
    bb5e: fe82 2a44    	vminnm.f32	s4, s4, s8
    bb62: eeb0 3ac3    	vabs.f32	s6, s6
    bb66: eeb4 3a42    	vcmp.f32	s6, s4
    bb6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bb6e: d96f         	bls	0xbc50 <ram_probe::packed_probe::candidate+0x21c0> @ imm = #0xde
    bb70: ed8d 0a6c    	vstr	s0, [sp, #432]
    bb74: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    bb78: eeb0 0b4a    	vmov.f64	d0, d10
    bb7c: 3001         	adds	r0, #0x1
    bb7e: eeb0 1b49    	vmov.f64	d1, d9
    bb82: f8c4 010c    	str.w	r0, [r4, #0x10c]
    bb86: a872         	add	r0, sp, #0x1c8
    bb88: a965         	add	r1, sp, #0x194
    bb8a: aa51         	add	r2, sp, #0x144
    bb8c: ab6d         	add	r3, sp, #0x1b4
    bb8e: f7fb fa3f    	bl	0x7010 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>> @ imm = #-0x4b82
    bb92: f89d 01cd    	ldrb.w	r0, [sp, #0x1cd]
    bb96: f89d 11cc    	ldrb.w	r1, [sp, #0x1cc]
    bb9a: 448b         	add	r11, r1
    bb9c: b1c0         	cbz	r0, 0xbbd0 <ram_probe::packed_probe::candidate+0x2140> @ imm = #0x30
    bb9e: eeb4 8a48    	vcmp.f32	s16, s16
    bba2: ed9d 0a72    	vldr	s0, [sp, #456]
    bba6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bbaa: eeb4 0a40    	vcmp.f32	s0, s0
    bbae: 4645         	mov	r5, r8
    bbb0: fe10 1a08    	vselvs.f32	s2, s0, s16
    bbb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bbb8: fe11 0a00    	vselvs.f32	s0, s2, s0
    bbbc: eeb4 1a40    	vcmp.f32	s2, s0
    bbc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bbc4: fe31 8a00    	vselgt.f32	s16, s2, s0
    bbc8: e05d         	b	0xbc86 <ram_probe::packed_probe::candidate+0x21f6> @ imm = #0xba
    bbca: bf00         	nop
    bbcc: 08 e5 3c 1e  	.word	0x1e3ce508
    bbd0: eeb0 0b4a    	vmov.f64	d0, d10
    bbd4: a872         	add	r0, sp, #0x1c8
    bbd6: eeb0 1b49    	vmov.f64	d1, d9
    bbda: a965         	add	r1, sp, #0x194
    bbdc: aa51         	add	r2, sp, #0x144
    bbde: ab6d         	add	r3, sp, #0x1b4
    bbe0: 2600         	movs	r6, #0x0
    bbe2: 966c         	str	r6, [sp, #0x1b0]
    bbe4: f7fb fa14    	bl	0x7010 <orange_dsp::repeated::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5, 1>> @ imm = #-0x4bd8
    bbe8: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    bbec: eeb4 8a48    	vcmp.f32	s16, s16
    bbf0: 3001         	adds	r0, #0x1
    bbf2: bf28         	it	hs
    bbf4: f04f 30ff    	movhs.w	r0, #0xffffffff
    bbf8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bbfc: ed9d 0a72    	vldr	s0, [sp, #456]
    bc00: f89d 11cc    	ldrb.w	r1, [sp, #0x1cc]
    bc04: fe10 1a08    	vselvs.f32	s2, s0, s16
    bc08: f89d 21cd    	ldrb.w	r2, [sp, #0x1cd]
    bc0c: eeb4 0a40    	vcmp.f32	s0, s0
    bc10: 448b         	add	r11, r1
    bc12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bc16: f8c4 011c    	str.w	r0, [r4, #0x11c]
    bc1a: fe11 2a00    	vselvs.f32	s4, s2, s0
    bc1e: eeb4 1a42    	vcmp.f32	s2, s4
    bc22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bc26: fe31 8a02    	vselgt.f32	s16, s2, s4
    bc2a: b10a         	cbz	r2, 0xbc30 <ram_probe::packed_probe::candidate+0x21a0> @ imm = #0x2
    bc2c: 4645         	mov	r5, r8
    bc2e: e02a         	b	0xbc86 <ram_probe::packed_probe::candidate+0x21f6> @ imm = #0x54
    bc30: 69e0         	ldr	r0, [r4, #0x1c]
    bc32: f8c9 0000    	str.w	r0, [r9]
    bc36: ed89 0a01    	vstr	s0, [r9, #4]
    bc3a: f889 b008    	strb.w	r11, [r9, #0x8]
    bc3e: f889 6009    	strb.w	r6, [r9, #0x9]
    bc42: e0e6         	b	0xbe12 <ram_probe::packed_probe::candidate+0x2382> @ imm = #0x1cc
    bc44: bd 37 06 36  	.word	0x360637bd
    bc48: ac c5 a7 37  	.word	0x37a7c5ac
    bc4c: 00 bf 00 bf  	.word	0xbf00bf00
    bc50: eeb4 8a48    	vcmp.f32	s16, s16
    bc54: 4645         	mov	r5, r8
    bc56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bc5a: eeb4 7a47    	vcmp.f32	s14, s14
    bc5e: f8d4 0114    	ldr.w	r0, [r4, #0x114]
    bc62: fe17 0a08    	vselvs.f32	s0, s14, s16
    bc66: ed8d 1a71    	vstr	s2, [sp, #452]
    bc6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bc6e: f100 0001    	add.w	r0, r0, #0x1
    bc72: f8c4 0114    	str.w	r0, [r4, #0x114]
    bc76: fe10 2a07    	vselvs.f32	s4, s0, s14
    bc7a: eeb4 0a42    	vcmp.f32	s0, s4
    bc7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    bc82: fe30 8a02    	vselgt.f32	s16, s0, s4
    bc86: f50d 78ca    	add.w	r8, sp, #0x194
    bc8a: a816         	add	r0, sp, #0x58
    bc8c: ed9d 0a0b    	vldr	s0, [sp, #44]
    bc90: 4641         	mov	r1, r8
    bc92: 462a         	mov	r2, r5
    bc94: f000 f914    	bl	0xbec0 <orange_dsp::generated_repeated::update_into> @ imm = #0x228
    bc98: f105 005c    	add.w	r0, r5, #0x5c
    bc9c: e89a 006e    	ldm.w	r10, {r1, r2, r3, r5, r6}
    bca0: c06e         	stm	r0!, {r1, r2, r3, r5, r6}
    bca2: 9872         	ldr	r0, [sp, #0x1c8]
    bca4: f020 4000    	bic	r0, r0, #0x80000000
    bca8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcac: f280 80a7    	bge.w	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x14e
    bcb0: 9873         	ldr	r0, [sp, #0x1cc]
    bcb2: f020 4000    	bic	r0, r0, #0x80000000
    bcb6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcba: f280 80a0    	bge.w	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x140
    bcbe: 9874         	ldr	r0, [sp, #0x1d0]
    bcc0: f020 4000    	bic	r0, r0, #0x80000000
    bcc4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcc8: f280 8099    	bge.w	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x132
    bccc: 9875         	ldr	r0, [sp, #0x1d4]
    bcce: f020 4000    	bic	r0, r0, #0x80000000
    bcd2: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcd6: f280 8092    	bge.w	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x124
    bcda: 9876         	ldr	r0, [sp, #0x1d8]
    bcdc: f020 4000    	bic	r0, r0, #0x80000000
    bce0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bce4: f280 808b    	bge.w	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x116
    bce8: 9877         	ldr	r0, [sp, #0x1dc]
    bcea: f020 4000    	bic	r0, r0, #0x80000000
    bcee: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bcf2: f280 8084    	bge.w	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x108
    bcf6: 9878         	ldr	r0, [sp, #0x1e0]
    bcf8: f020 4000    	bic	r0, r0, #0x80000000
    bcfc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd00: da7d         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xfa
    bd02: 9879         	ldr	r0, [sp, #0x1e4]
    bd04: f020 4000    	bic	r0, r0, #0x80000000
    bd08: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd0c: da77         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xee
    bd0e: 987a         	ldr	r0, [sp, #0x1e8]
    bd10: f020 4000    	bic	r0, r0, #0x80000000
    bd14: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd18: da71         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xe2
    bd1a: 987b         	ldr	r0, [sp, #0x1ec]
    bd1c: f020 4000    	bic	r0, r0, #0x80000000
    bd20: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd24: da6b         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xd6
    bd26: 987c         	ldr	r0, [sp, #0x1f0]
    bd28: f020 4000    	bic	r0, r0, #0x80000000
    bd2c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd30: da65         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xca
    bd32: 987d         	ldr	r0, [sp, #0x1f4]
    bd34: f020 4000    	bic	r0, r0, #0x80000000
    bd38: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd3c: da5f         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xbe
    bd3e: 987e         	ldr	r0, [sp, #0x1f8]
    bd40: f020 4000    	bic	r0, r0, #0x80000000
    bd44: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd48: da59         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xb2
    bd4a: 987f         	ldr	r0, [sp, #0x1fc]
    bd4c: f020 4000    	bic	r0, r0, #0x80000000
    bd50: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd54: da53         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xa6
    bd56: 9880         	ldr	r0, [sp, #0x200]
    bd58: f020 4000    	bic	r0, r0, #0x80000000
    bd5c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd60: da4d         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x9a
    bd62: 9881         	ldr	r0, [sp, #0x204]
    bd64: f020 4000    	bic	r0, r0, #0x80000000
    bd68: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd6c: da47         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x8e
    bd6e: 9882         	ldr	r0, [sp, #0x208]
    bd70: f020 4000    	bic	r0, r0, #0x80000000
    bd74: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd78: da41         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x82
    bd7a: 9883         	ldr	r0, [sp, #0x20c]
    bd7c: f020 4000    	bic	r0, r0, #0x80000000
    bd80: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd84: da3b         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x76
    bd86: 9884         	ldr	r0, [sp, #0x210]
    bd88: f020 4000    	bic	r0, r0, #0x80000000
    bd8c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd90: da35         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x6a
    bd92: 9885         	ldr	r0, [sp, #0x214]
    bd94: f020 4000    	bic	r0, r0, #0x80000000
    bd98: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bd9c: da2f         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x5e
    bd9e: 9886         	ldr	r0, [sp, #0x218]
    bda0: f020 4000    	bic	r0, r0, #0x80000000
    bda4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bda8: da29         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x52
    bdaa: 9887         	ldr	r0, [sp, #0x21c]
    bdac: f020 4000    	bic	r0, r0, #0x80000000
    bdb0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bdb4: da23         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x46
    bdb6: 9888         	ldr	r0, [sp, #0x220]
    bdb8: f020 4000    	bic	r0, r0, #0x80000000
    bdbc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bdc0: da1d         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x3a
    bdc2: 9889         	ldr	r0, [sp, #0x224]
    bdc4: f020 4000    	bic	r0, r0, #0x80000000
    bdc8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bdcc: da17         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x2e
    bdce: 988a         	ldr	r0, [sp, #0x228]
    bdd0: f020 4000    	bic	r0, r0, #0x80000000
    bdd4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bdd8: da11         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x22
    bdda: 988b         	ldr	r0, [sp, #0x22c]
    bddc: f020 4000    	bic	r0, r0, #0x80000000
    bde0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bde4: da0b         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0x16
    bde6: 988c         	ldr	r0, [sp, #0x230]
    bde8: f020 4000    	bic	r0, r0, #0x80000000
    bdec: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bdf0: da05         	bge	0xbdfe <ram_probe::packed_probe::candidate+0x236e> @ imm = #0xa
    bdf2: 988d         	ldr	r0, [sp, #0x234]
    bdf4: f020 4000    	bic	r0, r0, #0x80000000
    bdf8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bdfc: db24         	blt	0xbe48 <ram_probe::packed_probe::candidate+0x23b8> @ imm = #0x48
    bdfe: 69e0         	ldr	r0, [r4, #0x1c]
    be00: f04f 41ff    	mov.w	r1, #0x7f800000
    be04: e9c9 0100    	strd	r0, r1, [r9]
    be08: f889 b008    	strb.w	r11, [r9, #0x8]
    be0c: 2000         	movs	r0, #0x0
    be0e: f889 0009    	strb.w	r0, [r9, #0x9]
    be12: f50d 7d14    	add.w	sp, sp, #0x250
    be16: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    be1a: b001         	add	sp, #0x4
    be1c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    be20: bdf0         	pop	{r4, r5, r6, r7, pc}
    be22: bf00         	nop
    be24: 00 00 00 00  	.word	0x00000000
    be28: f64d 20a3    	movw	r0, #0xdaa3
    be2c: f64d 7248    	movw	r2, #0xdf48
    be30: f2c0 0000    	movt	r0, #0x0
    be34: f2c0 0200    	movt	r2, #0x0
    be38: a972         	add	r1, sp, #0x1c8
    be3a: f000 f837    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #0x6e
    be3e: bf00         	nop
    be40: 00 00 c0 7f  	.word	0x7fc00000
    be44: 00 bf 00 bf  	.word	0xbf00bf00
    be48: f104 0520    	add.w	r5, r4, #0x20
    be4c: f104 0090    	add.w	r0, r4, #0x90
    be50: 2270         	movs	r2, #0x70
    be52: 4629         	mov	r1, r5
    be54: f001 fc28    	bl	0xd6a8 <__aeabi_memcpy4> @ imm = #0x1850
    be58: a972         	add	r1, sp, #0x1c8
    be5a: 2270         	movs	r2, #0x70
    be5c: 4628         	mov	r0, r5
    be5e: f001 fc23    	bl	0xd6a8 <__aeabi_memcpy4> @ imm = #0x1846
    be62: 4620         	mov	r0, r4
    be64: e8b8 004e    	ldm.w	r8!, {r1, r2, r3, r6}
    be68: c04e         	stm	r0!, {r1, r2, r3, r6}
    be6a: e898 004e    	ldm.w	r8, {r1, r2, r3, r6}
    be6e: c04e         	stm	r0!, {r1, r2, r3, r6}
    be70: f8d4 0118    	ldr.w	r0, [r4, #0x118]
    be74: 3001         	adds	r0, #0x1
    be76: bf28         	it	hs
    be78: f04f 30ff    	movhs.w	r0, #0xffffffff
    be7c: ed89 8a01    	vstr	s16, [r9, #4]
    be80: f8c4 0118    	str.w	r0, [r4, #0x118]
    be84: 986c         	ldr	r0, [sp, #0x1b0]
    be86: f8c9 0000    	str.w	r0, [r9]
    be8a: 2001         	movs	r0, #0x1
    be8c: f889 b008    	strb.w	r11, [r9, #0x8]
    be90: e7bd         	b	0xbe0e <ram_probe::packed_probe::candidate+0x237e> @ imm = #-0x86
    be92: bf00         	nop
    be94: bd 37 06 36  	.word	0x360637bd
    be98: ac c5 a7 37  	.word	0x37a7c5ac
    be9c: 00 00 00 80  	.word	0x80000000
    bea0: d2 4e da c3  	.word	0xc3da4ed2
    bea4: 82 76 ab bc  	.word	0xbcab7682
    bea8: cd 1e 2c 3e  	.word	0x3e2c1ecd

0000beac <core::panicking::panic_fmt>:
    beac: b580         	push	{r7, lr}
    beae: 466f         	mov	r7, sp
    beb0: f7fb fc1e    	bl	0x76f0 <__rustc::rust_begin_unwind> @ imm = #-0x47c4

0000beb4 <core::panicking::panic>:
    beb4: b580         	push	{r7, lr}
    beb6: 466f         	mov	r7, sp
    beb8: 0049         	lsls	r1, r1, #0x1
    beba: 3101         	adds	r1, #0x1
    bebc: f7ff fff6    	bl	0xbeac <core::panicking::panic_fmt> @ imm = #-0x14

0000bec0 <orange_dsp::generated_repeated::update_into>:
    bec0: b580         	push	{r7, lr}
    bec2: 466f         	mov	r7, sp
    bec4: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    bec8: b0a8         	sub	sp, #0xa0
    beca: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bece: ed90 4a01    	vldr	s8, [r0, #4]
    bed2: ed9f 1bfd    	vldr	d1, [pc, #1012]         @ 0xc2c8 <orange_dsp::generated_repeated::update_into+0x408>
    bed6: ed90 3a02    	vldr	s6, [r0, #8]
    beda: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    bede: ee20 8b01    	vmul.f64	d8, d0, d1
    bee2: ed90 1a03    	vldr	s2, [r0, #12]
    bee6: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    beea: ed9f 0bf9    	vldr	d0, [pc, #996]          @ 0xc2d0 <orange_dsp::generated_repeated::update_into+0x410>
    beee: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    bef2: ed9f 2bf9    	vldr	d2, [pc, #996]          @ 0xc2d8 <orange_dsp::generated_repeated::update_into+0x418>
    bef6: eeb0 ab48    	vmov.f64	d10, d8
    befa: ed9f 5bf9    	vldr	d5, [pc, #996]          @ 0xc2e0 <orange_dsp::generated_repeated::update_into+0x420>
    befe: ee04 ab00    	vmla.f64	d10, d4, d0
    bf02: ed9f 0bf9    	vldr	d0, [pc, #996]          @ 0xc2e8 <orange_dsp::generated_repeated::update_into+0x428>
    bf06: ee21 2b02    	vmul.f64	d2, d1, d2
    bf0a: ee03 2b05    	vmla.f64	d2, d3, d5
    bf0e: ee23 3b00    	vmul.f64	d3, d3, d0
    bf12: ed91 0a01    	vldr	s0, [r1, #4]
    bf16: ed9f 4bf6    	vldr	d4, [pc, #984]          @ 0xc2f0 <orange_dsp::generated_repeated::update_into+0x430>
    bf1a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    bf1e: ee38 5b02    	vadd.f64	d5, d8, d2
    bf22: ed9f 2bf5    	vldr	d2, [pc, #980]          @ 0xc2f8 <orange_dsp::generated_repeated::update_into+0x438>
    bf26: ee01 3b04    	vmla.f64	d3, d1, d4
    bf2a: ed90 4a04    	vldr	s8, [r0, #16]
    bf2e: ee00 5b02    	vmla.f64	d5, d0, d2
    bf32: ed90 2a05    	vldr	s4, [r0, #20]
    bf36: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    bf3a: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    bf3e: ed8d 5b26    	vstr	d5, [sp, #152]
    bf42: ee38 6b03    	vadd.f64	d6, d8, d3
    bf46: ed9f 3bee    	vldr	d3, [pc, #952]          @ 0xc300 <orange_dsp::generated_repeated::update_into+0x440>
    bf4a: ed9f 5bef    	vldr	d5, [pc, #956]          @ 0xc308 <orange_dsp::generated_repeated::update_into+0x448>
    bf4e: ee22 3b03    	vmul.f64	d3, d2, d3
    bf52: ee04 3b05    	vmla.f64	d3, d4, d5
    bf56: ed9f 1bee    	vldr	d1, [pc, #952]          @ 0xc310 <orange_dsp::generated_repeated::update_into+0x450>
    bf5a: ee38 5b03    	vadd.f64	d5, d8, d3
    bf5e: ed9f 3bee    	vldr	d3, [pc, #952]          @ 0xc318 <orange_dsp::generated_repeated::update_into+0x458>
    bf62: ee24 3b03    	vmul.f64	d3, d4, d3
    bf66: ed9f 4bee    	vldr	d4, [pc, #952]          @ 0xc320 <orange_dsp::generated_repeated::update_into+0x460>
    bf6a: ee00 6b01    	vmla.f64	d6, d0, d1
    bf6e: ed9f 1bee    	vldr	d1, [pc, #952]          @ 0xc328 <orange_dsp::generated_repeated::update_into+0x468>
    bf72: ee02 3b04    	vmla.f64	d3, d2, d4
    bf76: ee00 5b01    	vmla.f64	d5, d0, d1
    bf7a: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xc330 <orange_dsp::generated_repeated::update_into+0x470>
    bf7e: ee38 2b03    	vadd.f64	d2, d8, d3
    bf82: ee00 2b01    	vmla.f64	d2, d0, d1
    bf86: ed90 0a07    	vldr	s0, [r0, #28]
    bf8a: ed90 1a06    	vldr	s2, [r0, #24]
    bf8e: eeb7 fac0    	vcvt.f64.f32	d15, s0
    bf92: ed9f 0be9    	vldr	d0, [pc, #932]          @ 0xc338 <orange_dsp::generated_repeated::update_into+0x478>
    bf96: ee2f 7b00    	vmul.f64	d7, d15, d0
    bf9a: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    bf9e: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc340 <orange_dsp::generated_repeated::update_into+0x480>
    bfa2: ee00 7b01    	vmla.f64	d7, d0, d1
    bfa6: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc348 <orange_dsp::generated_repeated::update_into+0x488>
    bfaa: ee2f 3b01    	vmul.f64	d3, d15, d1
    bfae: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc350 <orange_dsp::generated_repeated::update_into+0x490>
    bfb2: ee00 3b01    	vmla.f64	d3, d0, d1
    bfb6: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc358 <orange_dsp::generated_repeated::update_into+0x498>
    bfba: ee2f 4b01    	vmul.f64	d4, d15, d1
    bfbe: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc360 <orange_dsp::generated_repeated::update_into+0x4a0>
    bfc2: ee00 4b01    	vmla.f64	d4, d0, d1
    bfc6: ed9f 1be8    	vldr	d1, [pc, #928]          @ 0xc368 <orange_dsp::generated_repeated::update_into+0x4a8>
    bfca: ed8d 5b22    	vstr	d5, [sp, #136]
    bfce: ee20 5b01    	vmul.f64	d5, d0, d1
    bfd2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc370 <orange_dsp::generated_repeated::update_into+0x4b0>
    bfd6: ee0f 5b01    	vmla.f64	d5, d15, d1
    bfda: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc378 <orange_dsp::generated_repeated::update_into+0x4b8>
    bfde: ee2f bb01    	vmul.f64	d11, d15, d1
    bfe2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc380 <orange_dsp::generated_repeated::update_into+0x4c0>
    bfe6: ee00 bb01    	vmla.f64	d11, d0, d1
    bfea: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc388 <orange_dsp::generated_repeated::update_into+0x4c8>
    bfee: ee2f cb01    	vmul.f64	d12, d15, d1
    bff2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc390 <orange_dsp::generated_repeated::update_into+0x4d0>
    bff6: ee00 cb01    	vmla.f64	d12, d0, d1
    bffa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc398 <orange_dsp::generated_repeated::update_into+0x4d8>
    bffe: ee20 db01    	vmul.f64	d13, d0, d1
    c002: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc3a0 <orange_dsp::generated_repeated::update_into+0x4e0>
    c006: ee0f db01    	vmla.f64	d13, d15, d1
    c00a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc3a8 <orange_dsp::generated_repeated::update_into+0x4e8>
    c00e: ee2f eb01    	vmul.f64	d14, d15, d1
    c012: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc3b0 <orange_dsp::generated_repeated::update_into+0x4f0>
    c016: ee00 eb01    	vmla.f64	d14, d0, d1
    c01a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc3b8 <orange_dsp::generated_repeated::update_into+0x4f8>
    c01e: ee2f fb01    	vmul.f64	d15, d15, d1
    c022: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xc3c0 <orange_dsp::generated_repeated::update_into+0x500>
    c026: ee00 fb01    	vmla.f64	d15, d0, d1
    c02a: ed90 0a08    	vldr	s0, [r0, #32]
    c02e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c032: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3c8 <orange_dsp::generated_repeated::update_into+0x508>
    c036: ee00 7b01    	vmla.f64	d7, d0, d1
    c03a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3d0 <orange_dsp::generated_repeated::update_into+0x510>
    c03e: ee00 3b01    	vmla.f64	d3, d0, d1
    c042: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3d8 <orange_dsp::generated_repeated::update_into+0x518>
    c046: ee00 4b01    	vmla.f64	d4, d0, d1
    c04a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3e0 <orange_dsp::generated_repeated::update_into+0x520>
    c04e: ee00 5b01    	vmla.f64	d5, d0, d1
    c052: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3e8 <orange_dsp::generated_repeated::update_into+0x528>
    c056: ee00 bb01    	vmla.f64	d11, d0, d1
    c05a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3f0 <orange_dsp::generated_repeated::update_into+0x530>
    c05e: ee00 cb01    	vmla.f64	d12, d0, d1
    c062: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc3f8 <orange_dsp::generated_repeated::update_into+0x538>
    c066: ee00 db01    	vmla.f64	d13, d0, d1
    c06a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc400 <orange_dsp::generated_repeated::update_into+0x540>
    c06e: ee00 eb01    	vmla.f64	d14, d0, d1
    c072: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xc408 <orange_dsp::generated_repeated::update_into+0x548>
    c076: ee00 fb01    	vmla.f64	d15, d0, d1
    c07a: ed90 0a09    	vldr	s0, [r0, #36]
    c07e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c082: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc410 <orange_dsp::generated_repeated::update_into+0x550>
    c086: ee00 7b01    	vmla.f64	d7, d0, d1
    c08a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc418 <orange_dsp::generated_repeated::update_into+0x558>
    c08e: ee00 3b01    	vmla.f64	d3, d0, d1
    c092: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc420 <orange_dsp::generated_repeated::update_into+0x560>
    c096: ee00 4b01    	vmla.f64	d4, d0, d1
    c09a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc428 <orange_dsp::generated_repeated::update_into+0x568>
    c09e: ee00 5b01    	vmla.f64	d5, d0, d1
    c0a2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc430 <orange_dsp::generated_repeated::update_into+0x570>
    c0a6: ee00 bb01    	vmla.f64	d11, d0, d1
    c0aa: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc438 <orange_dsp::generated_repeated::update_into+0x578>
    c0ae: ee00 cb01    	vmla.f64	d12, d0, d1
    c0b2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc440 <orange_dsp::generated_repeated::update_into+0x580>
    c0b6: ee00 db01    	vmla.f64	d13, d0, d1
    c0ba: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc448 <orange_dsp::generated_repeated::update_into+0x588>
    c0be: ee00 eb01    	vmla.f64	d14, d0, d1
    c0c2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xc450 <orange_dsp::generated_repeated::update_into+0x590>
    c0c6: ee00 fb01    	vmla.f64	d15, d0, d1
    c0ca: ed90 0a0a    	vldr	s0, [r0, #40]
    c0ce: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c0d2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc458 <orange_dsp::generated_repeated::update_into+0x598>
    c0d6: ee00 7b01    	vmla.f64	d7, d0, d1
    c0da: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc460 <orange_dsp::generated_repeated::update_into+0x5a0>
    c0de: ee00 3b01    	vmla.f64	d3, d0, d1
    c0e2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc468 <orange_dsp::generated_repeated::update_into+0x5a8>
    c0e6: ee00 4b01    	vmla.f64	d4, d0, d1
    c0ea: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc470 <orange_dsp::generated_repeated::update_into+0x5b0>
    c0ee: ee00 5b01    	vmla.f64	d5, d0, d1
    c0f2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc478 <orange_dsp::generated_repeated::update_into+0x5b8>
    c0f6: ee00 bb01    	vmla.f64	d11, d0, d1
    c0fa: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc480 <orange_dsp::generated_repeated::update_into+0x5c0>
    c0fe: ee00 cb01    	vmla.f64	d12, d0, d1
    c102: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc488 <orange_dsp::generated_repeated::update_into+0x5c8>
    c106: ee00 db01    	vmla.f64	d13, d0, d1
    c10a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc490 <orange_dsp::generated_repeated::update_into+0x5d0>
    c10e: ee00 eb01    	vmla.f64	d14, d0, d1
    c112: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc498 <orange_dsp::generated_repeated::update_into+0x5d8>
    c116: ee00 fb01    	vmla.f64	d15, d0, d1
    c11a: ed90 0a0b    	vldr	s0, [r0, #44]
    c11e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c122: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4a0 <orange_dsp::generated_repeated::update_into+0x5e0>
    c126: ee00 7b01    	vmla.f64	d7, d0, d1
    c12a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4a8 <orange_dsp::generated_repeated::update_into+0x5e8>
    c12e: ee00 3b01    	vmla.f64	d3, d0, d1
    c132: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4b0 <orange_dsp::generated_repeated::update_into+0x5f0>
    c136: ee00 4b01    	vmla.f64	d4, d0, d1
    c13a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4b8 <orange_dsp::generated_repeated::update_into+0x5f8>
    c13e: ee00 5b01    	vmla.f64	d5, d0, d1
    c142: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4c0 <orange_dsp::generated_repeated::update_into+0x600>
    c146: ee00 bb01    	vmla.f64	d11, d0, d1
    c14a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4c8 <orange_dsp::generated_repeated::update_into+0x608>
    c14e: ee00 cb01    	vmla.f64	d12, d0, d1
    c152: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4d0 <orange_dsp::generated_repeated::update_into+0x610>
    c156: ee00 db01    	vmla.f64	d13, d0, d1
    c15a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4d8 <orange_dsp::generated_repeated::update_into+0x618>
    c15e: ee00 eb01    	vmla.f64	d14, d0, d1
    c162: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xc4e0 <orange_dsp::generated_repeated::update_into+0x620>
    c166: ee00 fb01    	vmla.f64	d15, d0, d1
    c16a: ed90 0a0c    	vldr	s0, [r0, #48]
    c16e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c172: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4e8 <orange_dsp::generated_repeated::update_into+0x628>
    c176: ee00 7b01    	vmla.f64	d7, d0, d1
    c17a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4f0 <orange_dsp::generated_repeated::update_into+0x630>
    c17e: ee00 3b01    	vmla.f64	d3, d0, d1
    c182: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc4f8 <orange_dsp::generated_repeated::update_into+0x638>
    c186: ee00 4b01    	vmla.f64	d4, d0, d1
    c18a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc500 <orange_dsp::generated_repeated::update_into+0x640>
    c18e: ee00 5b01    	vmla.f64	d5, d0, d1
    c192: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc508 <orange_dsp::generated_repeated::update_into+0x648>
    c196: ee00 bb01    	vmla.f64	d11, d0, d1
    c19a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc510 <orange_dsp::generated_repeated::update_into+0x650>
    c19e: ee00 cb01    	vmla.f64	d12, d0, d1
    c1a2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc518 <orange_dsp::generated_repeated::update_into+0x658>
    c1a6: ee00 db01    	vmla.f64	d13, d0, d1
    c1aa: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc520 <orange_dsp::generated_repeated::update_into+0x660>
    c1ae: ee00 eb01    	vmla.f64	d14, d0, d1
    c1b2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xc528 <orange_dsp::generated_repeated::update_into+0x668>
    c1b6: ee00 fb01    	vmla.f64	d15, d0, d1
    c1ba: ed90 0a0d    	vldr	s0, [r0, #52]
    c1be: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c1c2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc530 <orange_dsp::generated_repeated::update_into+0x670>
    c1c6: ee00 7b01    	vmla.f64	d7, d0, d1
    c1ca: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc538 <orange_dsp::generated_repeated::update_into+0x678>
    c1ce: ee00 3b01    	vmla.f64	d3, d0, d1
    c1d2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc540 <orange_dsp::generated_repeated::update_into+0x680>
    c1d6: ee00 4b01    	vmla.f64	d4, d0, d1
    c1da: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc548 <orange_dsp::generated_repeated::update_into+0x688>
    c1de: ee00 5b01    	vmla.f64	d5, d0, d1
    c1e2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc550 <orange_dsp::generated_repeated::update_into+0x690>
    c1e6: ee00 bb01    	vmla.f64	d11, d0, d1
    c1ea: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc558 <orange_dsp::generated_repeated::update_into+0x698>
    c1ee: ee00 cb01    	vmla.f64	d12, d0, d1
    c1f2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc560 <orange_dsp::generated_repeated::update_into+0x6a0>
    c1f6: ee00 db01    	vmla.f64	d13, d0, d1
    c1fa: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc568 <orange_dsp::generated_repeated::update_into+0x6a8>
    c1fe: ee00 eb01    	vmla.f64	d14, d0, d1
    c202: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc570 <orange_dsp::generated_repeated::update_into+0x6b0>
    c206: ee00 fb01    	vmla.f64	d15, d0, d1
    c20a: ed90 0a0e    	vldr	s0, [r0, #56]
    c20e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c212: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc578 <orange_dsp::generated_repeated::update_into+0x6b8>
    c216: ee00 7b01    	vmla.f64	d7, d0, d1
    c21a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc580 <orange_dsp::generated_repeated::update_into+0x6c0>
    c21e: ee00 3b01    	vmla.f64	d3, d0, d1
    c222: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc588 <orange_dsp::generated_repeated::update_into+0x6c8>
    c226: ee00 4b01    	vmla.f64	d4, d0, d1
    c22a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc590 <orange_dsp::generated_repeated::update_into+0x6d0>
    c22e: ee00 5b01    	vmla.f64	d5, d0, d1
    c232: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc598 <orange_dsp::generated_repeated::update_into+0x6d8>
    c236: ee00 bb01    	vmla.f64	d11, d0, d1
    c23a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc5a0 <orange_dsp::generated_repeated::update_into+0x6e0>
    c23e: ee00 cb01    	vmla.f64	d12, d0, d1
    c242: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc5a8 <orange_dsp::generated_repeated::update_into+0x6e8>
    c246: ee00 db01    	vmla.f64	d13, d0, d1
    c24a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc5b0 <orange_dsp::generated_repeated::update_into+0x6f0>
    c24e: ee00 eb01    	vmla.f64	d14, d0, d1
    c252: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc5b8 <orange_dsp::generated_repeated::update_into+0x6f8>
    c256: ee00 fb01    	vmla.f64	d15, d0, d1
    c25a: ed91 0a03    	vldr	s0, [r1, #12]
    c25e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c262: ed9f 1bd7    	vldr	d1, [pc, #860]          @ 0xc5c0 <orange_dsp::generated_repeated::update_into+0x700>
    c266: ed8d 3b1e    	vstr	d3, [sp, #120]
    c26a: ee20 3b01    	vmul.f64	d3, d0, d1
    c26e: ed91 1a02    	vldr	s2, [r1, #8]
    c272: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    c276: ed8d 2b20    	vstr	d2, [sp, #128]
    c27a: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xc5c8 <orange_dsp::generated_repeated::update_into+0x708>
    c27e: ee01 3b02    	vmla.f64	d3, d1, d2
    c282: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xc5d0 <orange_dsp::generated_repeated::update_into+0x710>
    c286: ed8d 3b18    	vstr	d3, [sp, #96]
    c28a: ee20 3b02    	vmul.f64	d3, d0, d2
    c28e: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xc5d8 <orange_dsp::generated_repeated::update_into+0x718>
    c292: ee01 3b02    	vmla.f64	d3, d1, d2
    c296: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xc5e0 <orange_dsp::generated_repeated::update_into+0x720>
    c29a: ed8d 3b16    	vstr	d3, [sp, #88]
    c29e: ee20 3b02    	vmul.f64	d3, d0, d2
    c2a2: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xc5e8 <orange_dsp::generated_repeated::update_into+0x728>
    c2a6: ee01 3b02    	vmla.f64	d3, d1, d2
    c2aa: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xc5f0 <orange_dsp::generated_repeated::update_into+0x730>
    c2ae: ed8d 3b14    	vstr	d3, [sp, #80]
    c2b2: ee20 3b02    	vmul.f64	d3, d0, d2
    c2b6: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xc5f8 <orange_dsp::generated_repeated::update_into+0x738>
    c2ba: ee01 3b02    	vmla.f64	d3, d1, d2
    c2be: f000 b99f    	b.w	0xc600 <orange_dsp::generated_repeated::update_into+0x740> @ imm = #0x33e
    c2c2: bf00         	nop
    c2c4: bf00         	nop
    c2c6: bf00         	nop
		...
    c2d0: c1 5d e1 c9  	.word	0xc9e15dc1
    c2d4: 86 54 e5 3f  	.word	0x3fe55486
    c2d8: a9 0f 6b 00  	.word	0x006b0fa9
    c2dc: 3e 31 92 bf  	.word	0xbf92313e
    c2e0: a2 48 2a 74  	.word	0x742a48a2
    c2e4: 54 ba e4 3f  	.word	0x3fe4ba54
    c2e8: 00 60 41 1f  	.word	0x1f416000
    c2ec: 45 49 27 bf  	.word	0xbf274945
    c2f0: 1a 5d 10 11  	.word	0x11105d1a
    c2f4: ce 53 e5 3f  	.word	0x3fe553ce
    c2f8: 46 6c 1c 77  	.word	0x771c6c46
    c2fc: d3 64 5c bf  	.word	0xbf5c64d3
    c300: 80 0d 59 22  	.word	0x22590d80
    c304: 9f d9 b8 be  	.word	0xbeb8d99f
    c308: b0 e5 93 25  	.word	0x2593e5b0
    c30c: 2e 54 e5 3f  	.word	0x3fe5542e
    c310: 00 60 e7 86  	.word	0x86e76000
    c314: ec 07 ec 3e  	.word	0x3eec07ec
    c318: 00 f0 f8 21  	.word	0x21f8f000
    c31c: c8 2c 12 bf  	.word	0xbf122cc8
    c320: 3d 6e 12 0b  	.word	0x0b126e3d
    c324: a1 53 e5 3f  	.word	0x3fe553a1
    c328: 00 80 77 22  	.word	0x22778000
    c32c: 7a ac 2b 3f  	.word	0x3f2bac7a
    c330: 00 60 f5 32  	.word	0x32f56000
    c334: 2c 43 1b 3f  	.word	0x3f1b432c
    c338: 06 42 bd ec  	.word	0xecbd4206
    c33c: 6c ee e0 3f  	.word	0x3fe0ee6c
    c340: 75 22 80 1e  	.word	0x1e802275
    c344: ff ca ba 3f  	.word	0x3fbacaff
    c348: a3 83 c9 c1  	.word	0xc1c983a3
    c34c: 1d 54 e5 3f  	.word	0x3fe5541d
    c350: 00 ac c1 aa  	.word	0xaac1ac00
    c354: b7 a1 1d 3f  	.word	0x3f1da1b7
    c358: 00 8f fc e0  	.word	0xe0fc8f00
    c35c: bb 3a 58 bf  	.word	0xbf583abb
    c360: 80 c5 13 c0  	.word	0xc013c580
    c364: 2a 6f 52 3f  	.word	0x3f526f2a
    c368: 1a c8 c7 76  	.word	0x76c7c81a
    c36c: 6e b2 14 bf  	.word	0xbf14b26e
    c370: e2 63 27 22  	.word	0x222763e2
    c374: 1a 34 1b 3f  	.word	0x3f1b341a
    c378: 00 00 77 9e  	.word	0x9e770000
    c37c: d4 83 d1 be  	.word	0xbed183d4
    c380: 00 80 54 bc  	.word	0xbc548000
    c384: c7 a6 ca 3e  	.word	0x3ecaa6c7
    c388: 78 c9 65 d2  	.word	0xd265c978
    c38c: fb aa 81 bf  	.word	0xbf81aafb
    c390: 38 4b 1c 74  	.word	0x741c4b38
    c394: 5b e2 7a 3f  	.word	0x3f7ae25b
    c398: 00 a8 b7 3b  	.word	0x3bb7a800
    c39c: a0 24 e9 be  	.word	0xbee924a0
    c3a0: 00 b0 3a 3d  	.word	0x3d3ab000
    c3a4: 0e 86 f0 3e  	.word	0x3ef0860e
    c3a8: 80 45 eb ca  	.word	0xcaeb4580
    c3ac: d6 b8 28 bf  	.word	0xbf28b8d6
    c3b0: 40 1e 97 40  	.word	0x40971e40
    c3b4: 1c cf 22 3f  	.word	0x3f22cf1c
    c3b8: 00 80 9e 71  	.word	0x719e8000
    c3bc: 3d 11 ca be  	.word	0xbeca113d
    c3c0: 00 00 cc 39  	.word	0x39cc0000
    c3c4: 23 d5 c3 3e  	.word	0x3ec3d523
    c3c8: 94 54 5e e4  	.word	0xe45e5494
    c3cc: 65 da e0 3f  	.word	0x3fe0da65
    c3d0: 00 d0 32 e7  	.word	0xe732d000
    c3d4: 2f 62 23 bf  	.word	0xbf23622f
    c3d8: b0 9a 2c 49  	.word	0x492c9ab0
    c3dc: 0a 30 e5 3f  	.word	0x3fe5300a
    c3e0: 6a 59 88 8d  	.word	0x8d88596a
    c3e4: ec 13 1b 3f  	.word	0x3f1b13ec
    c3e8: 00 80 a9 db  	.word	0xdba98000
    c3ec: 1c 6f d1 be  	.word	0xbed16f1c
    c3f0: 70 a7 27 c0  	.word	0xc027a770
    c3f4: 15 96 81 bf  	.word	0xbf819615
    c3f8: 00 10 7b a9  	.word	0xa97b1000
    c3fc: 82 72 f0 3e  	.word	0x3ef07282
    c400: 80 84 35 a4  	.word	0xa4358480
    c404: 98 9b 28 bf  	.word	0xbf289b98
    c408: 00 00 11 e3  	.word	0xe3110000
    c40c: 67 f2 c9 be  	.word	0xbec9f267
    c410: 7f 02 92 0b  	.word	0x0b92027f
    c414: f9 a6 d7 bf  	.word	0xbfd7a6f9
    c418: 00 70 27 22  	.word	0x22277000
    c41c: 1a 34 1b 3f  	.word	0x3f1b341a
    c420: 00 37 75 d8  	.word	0xd8753700
    c424: 73 ec 50 3f  	.word	0x3f50ec73
    c428: f9 c7 6f 0d  	.word	0x0d6fc7f9
    c42c: d1 52 e5 3f  	.word	0x3fe552d1
    c430: 00 c0 70 c7  	.word	0xc770c000
    c434: ac e2 f3 be  	.word	0xbef3e2ac
    c438: b8 ba 9c 87  	.word	0x879cbab8
    c43c: 20 0f a4 bf  	.word	0xbfa40f20
    c440: 00 58 ad cf  	.word	0xcfad5800
    c444: 8d c2 12 3f  	.word	0x3f12c28d
    c448: 00 67 c9 53  	.word	0x53c96700
    c44c: 63 11 4c bf  	.word	0xbf4c1163
    c450: 00 00 01 7a  	.word	0x7a010000
    c454: 66 98 ed be  	.word	0xbeed9866
    c458: 49 ec 9f 20  	.word	0x209fec49
    c45c: fa 74 8e 3f  	.word	0x3f8e74fa
    c460: 00 b8 a6 9d  	.word	0x9da6b800
    c464: d4 83 d1 be  	.word	0xbed183d4
    c468: 00 0a 5f 13  	.word	0x135f0a00
    c46c: e4 ca 05 bf  	.word	0xbf05cae4
    c470: 78 b8 70 c7  	.word	0xc770b878
    c474: ac e2 f3 be  	.word	0xbef3e2ac
    c478: 5b ad 92 3c  	.word	0x3c92ad5b
    c47c: 15 55 e5 3f  	.word	0x3fe55515
    c480: 00 25 a5 be  	.word	0xbea52500
    c484: 02 2a b0 bf  	.word	0xbfb02a02
    c488: 00 f8 5d c6  	.word	0xc65df800
    c48c: 07 3c 1e 3f  	.word	0x3f1e3c07
    c490: 40 ea 5d 38  	.word	0x385dea40
    c494: 29 9e 56 bf  	.word	0xbf569e29
    c498: 00 c0 dc 8e  	.word	0x8edcc000
    c49c: 3f d9 f7 be  	.word	0xbef7d93f
    c4a0: 47 e4 bd ce  	.word	0xcebde447
    c4a4: 0e 2b 69 3f  	.word	0x3f692b0e
    c4a8: 00 40 8f da  	.word	0xda8f4000
    c4ac: 74 f2 ac be  	.word	0xbeacf274
    c4b0: 00 a7 84 8f  	.word	0x8f84a700
    c4b4: 22 02 e2 be  	.word	0xbee20222
    c4b8: 1f bc 4a 33  	.word	0x334abc1f
    c4bc: b2 6e d0 be  	.word	0xbed06eb2
    c4c0: 00 fc fb 7d  	.word	0x7dfbfc00
    c4c4: b7 7b da be  	.word	0xbeda7bb7
    c4c8: 8f e3 b2 48  	.word	0x48b2e38f
    c4cc: 3c e9 e2 3f  	.word	0x3fe2e93c
    c4d0: 00 e4 71 6e  	.word	0x6e71e400
    c4d4: 56 32 23 3f  	.word	0x3f233256
    c4d8: 00 05 e0 bc  	.word	0xbce00500
    c4dc: 17 92 30 bf  	.word	0xbf309217
    c4e0: 00 80 de 1d  	.word	0x1dde8000
    c4e4: 5b d0 f4 be  	.word	0xbef4d05b
    c4e8: f4 24 ee df  	.word	0xdfee24f4
    c4ec: 96 e5 64 bf  	.word	0xbf64e596
    c4f0: 00 60 1c e5  	.word	0xe51c6000
    c4f4: ce 08 a8 3e  	.word	0x3ea808ce
    c4f8: 00 e0 2c 34  	.word	0x342ce000
    c4fc: 79 e7 dd 3e  	.word	0x3edde779
    c500: e7 ed e4 73  	.word	0x73e4ede7
    c504: 88 49 cb 3e  	.word	0x3ecb4988
    c508: 00 54 55 ed  	.word	0xed555400
    c50c: 1c fd d5 3e  	.word	0x3ed5fd1c
    c510: 20 1d 0d ea  	.word	0xea0d1d20
    c514: de 0a b1 3f  	.word	0x3fb10ade
    c518: 0e cf 4c 9e  	.word	0x9e4ccf0e
    c51c: ea 50 e5 3f  	.word	0x3fe550ea
    c520: 90 b1 c1 c8  	.word	0xc8c1b190
    c524: ce b5 51 3f  	.word	0x3f51b5ce
    c528: 00 c0 f7 85  	.word	0x85f7c000
    c52c: e2 5d f8 be  	.word	0xbef85de2
    c530: cf 1e ec 24  	.word	0x24ec1ecf
    c534: 9c 63 8d 3f  	.word	0x3f8d639c
    c538: 00 80 67 df  	.word	0xdf678000
    c53c: 9f e6 d0 be  	.word	0xbed0e69f
    c540: 00 ba a2 95  	.word	0x95a2ba00
    c544: 4a 07 05 bf  	.word	0xbf05074a
    c548: 5f e8 1a 49  	.word	0x491ae85f
    c54c: 31 30 f3 be  	.word	0xbef33031
    c550: 00 bc c0 af  	.word	0xafc0bc00
    c554: ba ec fe be  	.word	0xbefeecba
    c558: 40 2a 3d 87  	.word	0x873d2a40
    c55c: 32 a8 ab bf  	.word	0xbfaba832
    c560: 00 58 47 7f  	.word	0x7f475800
    c564: c7 a5 40 3f  	.word	0x3f40a5c7
    c568: c6 60 4c 9c  	.word	0x9c4c60c6
    c56c: 3d 43 e5 3f  	.word	0x3fe5433d
    c570: 00 80 ea 14  	.word	0x14ea8000
    c574: fe 54 f5 3e  	.word	0x3ef554fe
    c578: 30 f8 ed 0a  	.word	0x0aedf830
    c57c: b2 7b 40 3f  	.word	0x3f407bb2
    c580: 00 d0 c0 ef  	.word	0xefc0d000
    c584: 43 f5 82 be  	.word	0xbe82f543
    c588: 00 44 9d fc  	.word	0xfc9d4400
    c58c: 8c 96 b7 be  	.word	0xbeb7968c
    c590: 33 60 a3 fb  	.word	0xfba36033
    c594: 1b 86 a5 be  	.word	0xbea5861b
    c598: 00 9e 73 39  	.word	0x39739e00
    c59c: 2e 58 b1 be  	.word	0xbeb1582e
    c5a0: a7 94 9b fb  	.word	0xfb9b94a7
    c5a4: 6d 7a 82 bf  	.word	0xbf827a6d
    c5a8: 00 2c 02 86  	.word	0x86022c00
    c5ac: e2 5d f8 be  	.word	0xbef85de2
    c5b0: 40 eb 05 06  	.word	0x0605eb40
    c5b4: 91 b1 06 3f  	.word	0x3f06b191
    c5b8: 03 bd 02 e5  	.word	0xe502bd03
    c5bc: fa 54 e5 3f  	.word	0x3fe554fa
    c5c0: 76 43 71 a5  	.word	0xa5714376
    c5c4: f8 73 e2 bf  	.word	0xbfe273f8
    c5c8: 90 85 b9 69  	.word	0x69b98590
    c5cc: a2 a1 ce bf  	.word	0xbfcea1a2
    c5d0: 00 70 07 91  	.word	0x91077000
    c5d4: 41 39 25 3f  	.word	0x3f253941
    c5d8: 00 80 10 04  	.word	0x04108000
    c5dc: 83 9d 11 3f  	.word	0x3f119d83
    c5e0: 00 b8 93 75  	.word	0x7593b800
    c5e4: 30 68 5a 3f  	.word	0x3f5a6830
    c5e8: 00 5c 9c 19  	.word	0x199c5c00
    c5ec: d8 ea 45 3f  	.word	0x3f45ead8
    c5f0: 28 b4 ed 8f  	.word	0x8fedb428
    c5f4: 1e 56 3c bf  	.word	0xbf3c561e
    c5f8: 00 80 d1 f5  	.word	0xf5d18000
    c5fc: d4 ff 33 3f  	.word	0x3f33ffd4
    c600: ed9f 2be5    	vldr	d2, [pc, #916]          @ 0xc998 <orange_dsp::generated_repeated::update_into+0xad8>
    c604: ed8d 3b12    	vstr	d3, [sp, #72]
    c608: ee20 3b02    	vmul.f64	d3, d0, d2
    c60c: ed9f 2be4    	vldr	d2, [pc, #912]          @ 0xc9a0 <orange_dsp::generated_repeated::update_into+0xae0>
    c610: ee01 3b02    	vmla.f64	d3, d1, d2
    c614: ed9f 2be4    	vldr	d2, [pc, #912]          @ 0xc9a8 <orange_dsp::generated_repeated::update_into+0xae8>
    c618: ed8d 3b10    	vstr	d3, [sp, #64]
    c61c: ee20 3b02    	vmul.f64	d3, d0, d2
    c620: ed9f 2be3    	vldr	d2, [pc, #908]          @ 0xc9b0 <orange_dsp::generated_repeated::update_into+0xaf0>
    c624: ee01 3b02    	vmla.f64	d3, d1, d2
    c628: ed9f 2be3    	vldr	d2, [pc, #908]          @ 0xc9b8 <orange_dsp::generated_repeated::update_into+0xaf8>
    c62c: ed8d 3b0e    	vstr	d3, [sp, #56]
    c630: ee20 3b02    	vmul.f64	d3, d0, d2
    c634: ed9f 2be2    	vldr	d2, [pc, #904]          @ 0xc9c0 <orange_dsp::generated_repeated::update_into+0xb00>
    c638: ee01 3b02    	vmla.f64	d3, d1, d2
    c63c: ed9f 2be2    	vldr	d2, [pc, #904]          @ 0xc9c8 <orange_dsp::generated_repeated::update_into+0xb08>
    c640: ed8d 3b0c    	vstr	d3, [sp, #48]
    c644: ee20 3b02    	vmul.f64	d3, d0, d2
    c648: ed9f 2be1    	vldr	d2, [pc, #900]          @ 0xc9d0 <orange_dsp::generated_repeated::update_into+0xb10>
    c64c: ee01 3b02    	vmla.f64	d3, d1, d2
    c650: ed9f 2be1    	vldr	d2, [pc, #900]          @ 0xc9d8 <orange_dsp::generated_repeated::update_into+0xb18>
    c654: ee20 2b02    	vmul.f64	d2, d0, d2
    c658: ed9f 0be1    	vldr	d0, [pc, #900]          @ 0xc9e0 <orange_dsp::generated_repeated::update_into+0xb20>
    c65c: ee01 2b00    	vmla.f64	d2, d1, d0
    c660: ed90 0a10    	vldr	s0, [r0, #64]
    c664: ed8d 2b08    	vstr	d2, [sp, #32]
    c668: ed90 2a0f    	vldr	s4, [r0, #60]
    c66c: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    c670: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c674: ed8d 3b0a    	vstr	d3, [sp, #40]
    c678: ed9f 0bdb    	vldr	d0, [pc, #876]          @ 0xc9e8 <orange_dsp::generated_repeated::update_into+0xb28>
    c67c: ed9f 3bdc    	vldr	d3, [pc, #880]          @ 0xc9f0 <orange_dsp::generated_repeated::update_into+0xb30>
    c680: ee21 0b00    	vmul.f64	d0, d1, d0
    c684: ee02 0b03    	vmla.f64	d0, d2, d3
    c688: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0xca00 <orange_dsp::generated_repeated::update_into+0xb40>
    c68c: ee21 1b03    	vmul.f64	d1, d1, d3
    c690: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0xca08 <orange_dsp::generated_repeated::update_into+0xb48>
    c694: ee02 1b03    	vmla.f64	d1, d2, d3
    c698: ed90 2a12    	vldr	s4, [r0, #72]
    c69c: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c6a0: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0xca18 <orange_dsp::generated_repeated::update_into+0xb58>
    c6a4: ed8d 5b1c    	vstr	d5, [sp, #112]
    c6a8: ee22 5b03    	vmul.f64	d5, d2, d3
    c6ac: ed90 3a11    	vldr	s6, [r0, #68]
    c6b0: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    c6b4: ed8d 4b1a    	vstr	d4, [sp, #104]
    c6b8: ed9f 4bd9    	vldr	d4, [pc, #868]          @ 0xca20 <orange_dsp::generated_repeated::update_into+0xb60>
    c6bc: ee03 5b04    	vmla.f64	d5, d3, d4
    c6c0: ed9f 4bdd    	vldr	d4, [pc, #884]          @ 0xca38 <orange_dsp::generated_repeated::update_into+0xb78>
    c6c4: ee23 4b04    	vmul.f64	d4, d3, d4
    c6c8: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0xca40 <orange_dsp::generated_repeated::update_into+0xb80>
    c6cc: ee02 4b03    	vmla.f64	d4, d2, d3
    c6d0: ee38 3b00    	vadd.f64	d3, d8, d0
    c6d4: ed91 0a04    	vldr	s0, [r1, #16]
    c6d8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c6dc: ed9f 2bc6    	vldr	d2, [pc, #792]          @ 0xc9f8 <orange_dsp::generated_repeated::update_into+0xb38>
    c6e0: ee00 3b02    	vmla.f64	d3, d0, d2
    c6e4: ee38 2b01    	vadd.f64	d2, d8, d1
    c6e8: ed9f 1bc9    	vldr	d1, [pc, #804]          @ 0xca10 <orange_dsp::generated_repeated::update_into+0xb50>
    c6ec: ee00 2b01    	vmla.f64	d2, d0, d1
    c6f0: ed91 1a05    	vldr	s2, [r1, #20]
    c6f4: ed8d 6b24    	vstr	d6, [sp, #144]
    c6f8: eeb7 6ac1    	vcvt.f64.f32	d6, s2
    c6fc: ed9f 1bca    	vldr	d1, [pc, #808]          @ 0xca28 <orange_dsp::generated_repeated::update_into+0xb68>
    c700: ed8d 5b02    	vstr	d5, [sp, #8]
    c704: ee26 5b01    	vmul.f64	d5, d6, d1
    c708: ed9f 1bc9    	vldr	d1, [pc, #804]          @ 0xca30 <orange_dsp::generated_repeated::update_into+0xb70>
    c70c: ed8d 4b00    	vstr	d4, [sp]
    c710: ee00 5b01    	vmla.f64	d5, d0, d1
    c714: ed9f 1bcc    	vldr	d1, [pc, #816]          @ 0xca48 <orange_dsp::generated_repeated::update_into+0xb88>
    c718: ed9f 4bcd    	vldr	d4, [pc, #820]          @ 0xca50 <orange_dsp::generated_repeated::update_into+0xb90>
    c71c: ed8d 3b06    	vstr	d3, [sp, #24]
    c720: ee26 3b01    	vmul.f64	d3, d6, d1
    c724: ee00 3b04    	vmla.f64	d3, d0, d4
    c728: ed90 0a14    	vldr	s0, [r0, #80]
    c72c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c730: ed8d 2b04    	vstr	d2, [sp, #16]
    c734: ed9f 2bc8    	vldr	d2, [pc, #800]          @ 0xca58 <orange_dsp::generated_repeated::update_into+0xb98>
    c738: ee20 4b02    	vmul.f64	d4, d0, d2
    c73c: ed90 2a13    	vldr	s4, [r0, #76]
    c740: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c744: ed9f 9bc6    	vldr	d9, [pc, #792]          @ 0xca60 <orange_dsp::generated_repeated::update_into+0xba0>
    c748: ee02 4b09    	vmla.f64	d4, d2, d9
    c74c: ed9f 9bc8    	vldr	d9, [pc, #800]          @ 0xca70 <orange_dsp::generated_repeated::update_into+0xbb0>
    c750: ee22 2b09    	vmul.f64	d2, d2, d9
    c754: ed9f 9bc8    	vldr	d9, [pc, #800]          @ 0xca78 <orange_dsp::generated_repeated::update_into+0xbb8>
    c758: ee00 2b09    	vmla.f64	d2, d0, d9
    c75c: ed91 0a00    	vldr	s0, [r1]
    c760: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c764: ed9f 9b8a    	vldr	d9, [pc, #552]          @ 0xc990 <orange_dsp::generated_repeated::update_into+0xad0>
    c768: ed9f 1b87    	vldr	d1, [pc, #540]          @ 0xc988 <orange_dsp::generated_repeated::update_into+0xac8>
    c76c: ee00 ab09    	vmla.f64	d10, d0, d9
    c770: ee38 9b01    	vadd.f64	d9, d8, d1
    c774: ee38 1b07    	vadd.f64	d1, d8, d7
    c778: ee39 9b00    	vadd.f64	d9, d9, d0
    c77c: ed9d 0b18    	vldr	d0, [sp, #96]
    c780: ee31 0b00    	vadd.f64	d0, d1, d0
    c784: ed8d 0b18    	vstr	d0, [sp, #96]
    c788: ed9d 0b1e    	vldr	d0, [sp, #120]
    c78c: ee38 1b00    	vadd.f64	d1, d8, d0
    c790: ed9d 0b1a    	vldr	d0, [sp, #104]
    c794: ed9d 7b16    	vldr	d7, [sp, #88]
    c798: ee38 0b00    	vadd.f64	d0, d8, d0
    c79c: ee31 1b07    	vadd.f64	d1, d1, d7
    c7a0: ed8d 1b1a    	vstr	d1, [sp, #104]
    c7a4: ed9d 1b14    	vldr	d1, [sp, #80]
    c7a8: ee30 0b01    	vadd.f64	d0, d0, d1
    c7ac: ed8d 0b16    	vstr	d0, [sp, #88]
    c7b0: ed9d 0b1c    	vldr	d0, [sp, #112]
    c7b4: ee38 1b00    	vadd.f64	d1, d8, d0
    c7b8: ed9d 0b12    	vldr	d0, [sp, #72]
    c7bc: ee38 bb0b    	vadd.f64	d11, d8, d11
    c7c0: ee31 0b00    	vadd.f64	d0, d1, d0
    c7c4: ed8d 0b14    	vstr	d0, [sp, #80]
    c7c8: ed9d 0b10    	vldr	d0, [sp, #64]
    c7cc: ee38 1b0c    	vadd.f64	d1, d8, d12
    c7d0: ee3b bb00    	vadd.f64	d11, d11, d0
    c7d4: ed9d 0b0e    	vldr	d0, [sp, #56]
    c7d8: ee38 cb0d    	vadd.f64	d12, d8, d13
    c7dc: ee31 db00    	vadd.f64	d13, d1, d0
    c7e0: ed9d 0b0c    	vldr	d0, [sp, #48]
    c7e4: ee38 1b0e    	vadd.f64	d1, d8, d14
    c7e8: ee3c cb00    	vadd.f64	d12, d12, d0
    c7ec: ed9d 0b0a    	vldr	d0, [sp, #40]
    c7f0: ee38 eb0f    	vadd.f64	d14, d8, d15
    c7f4: ee31 fb00    	vadd.f64	d15, d1, d0
    c7f8: ed9d 0b08    	vldr	d0, [sp, #32]
    c7fc: ee3e eb00    	vadd.f64	d14, d14, d0
    c800: ed9d 0b02    	vldr	d0, [sp, #8]
    c804: ed9d 1b00    	vldr	d1, [sp]
    c808: ee38 0b00    	vadd.f64	d0, d8, d0
    c80c: ee38 7b01    	vadd.f64	d7, d8, d1
    c810: eeb0 1b48    	vmov.f64	d1, d8
    c814: ee30 0b05    	vadd.f64	d0, d0, d5
    c818: ed8d 0b1c    	vstr	d0, [sp, #112]
    c81c: ee37 0b03    	vadd.f64	d0, d7, d3
    c820: ed8d 0b1e    	vstr	d0, [sp, #120]
    c824: ed91 0a06    	vldr	s0, [r1, #24]
    c828: eeb7 5ac0    	vcvt.f64.f32	d5, s0
    c82c: ed9f 7b8e    	vldr	d7, [pc, #568]          @ 0xca68 <orange_dsp::generated_repeated::update_into+0xba8>
    c830: ed9d 3b26    	vldr	d3, [sp, #152]
    c834: ee26 0b07    	vmul.f64	d0, d6, d7
    c838: ee05 0b47    	vmls.f64	d0, d5, d7
    c83c: eeb7 7bc9    	vcvt.f32.f64	s14, d9
    c840: ed82 7a00    	vstr	s14, [r2]
    c844: eeb7 9bc3    	vcvt.f32.f64	s18, d3
    c848: ed82 9a02    	vstr	s18, [r2, #8]
    c84c: ed9d 3b24    	vldr	d3, [sp, #144]
    c850: eef7 9bc3    	vcvt.f32.f64	s19, d3
    c854: edc2 9a03    	vstr	s19, [r2, #12]
    c858: ed9d 3b22    	vldr	d3, [sp, #136]
    c85c: eef7 8bc3    	vcvt.f32.f64	s17, d3
    c860: edc2 8a04    	vstr	s17, [r2, #16]
    c864: ed9d 3b20    	vldr	d3, [sp, #128]
    c868: eef7 7bca    	vcvt.f32.f64	s15, d10
    c86c: edc2 7a01    	vstr	s15, [r2, #4]
    c870: eeb7 8bc3    	vcvt.f32.f64	s16, d3
    c874: ed82 8a05    	vstr	s16, [r2, #20]
    c878: ed9d 3b18    	vldr	d3, [sp, #96]
    c87c: ed9d ab1a    	vldr	d10, [sp, #104]
    c880: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    c884: ed82 3a06    	vstr	s6, [r2, #24]
    c888: eef7 3bca    	vcvt.f32.f64	s7, d10
    c88c: edc2 3a07    	vstr	s7, [r2, #28]
    c890: ed9d ab16    	vldr	d10, [sp, #88]
    c894: eeb7 abca    	vcvt.f32.f64	s20, d10
    c898: ed8d aa26    	vstr	s20, [sp, #152]
    c89c: ed9d ab14    	vldr	d10, [sp, #80]
    c8a0: eeb7 abca    	vcvt.f32.f64	s20, d10
    c8a4: ed9d 3a26    	vldr	s6, [sp, #152]
    c8a8: ed82 3a08    	vstr	s6, [r2, #32]
    c8ac: eef7 abcf    	vcvt.f32.f64	s21, d15
    c8b0: ed82 aa09    	vstr	s20, [r2, #36]
    c8b4: ed9f fb72    	vldr	d15, [pc, #456]         @ 0xca80 <orange_dsp::generated_repeated::update_into+0xbc0>
    c8b8: edc2 aa0d    	vstr	s21, [r2, #52]
    c8bc: ee31 2b02    	vadd.f64	d2, d1, d2
    c8c0: ee26 6b0f    	vmul.f64	d6, d6, d15
    c8c4: ee05 6b4f    	vmls.f64	d6, d5, d15
    c8c8: ee31 4b04    	vadd.f64	d4, d1, d4
    c8cc: ee32 2b06    	vadd.f64	d2, d2, d6
    c8d0: ed9f 3b6d    	vldr	d3, [pc, #436]          @ 0xca88 <orange_dsp::generated_repeated::update_into+0xbc8>
    c8d4: eeb7 6bc2    	vcvt.f32.f64	s12, d2
    c8d8: ed90 2a15    	vldr	s4, [r0, #84]
    c8dc: ed82 6a14    	vstr	s12, [r2, #80]
    c8e0: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c8e4: ee34 0b00    	vadd.f64	d0, d4, d0
    c8e8: eeb0 4b41    	vmov.f64	d4, d1
    c8ec: ee02 4b03    	vmla.f64	d4, d2, d3
    c8f0: ed91 2a07    	vldr	s4, [r1, #28]
    c8f4: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c8f8: ed9f 3b65    	vldr	d3, [pc, #404]          @ 0xca90 <orange_dsp::generated_repeated::update_into+0xbd0>
    c8fc: ee02 4b03    	vmla.f64	d4, d2, d3
    c900: ed90 3a16    	vldr	s6, [r0, #88]
    c904: eeb7 bbcb    	vcvt.f32.f64	s22, d11
    c908: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    c90c: ed82 ba0a    	vstr	s22, [r2, #40]
    c910: eef7 bbcc    	vcvt.f32.f64	s23, d12
    c914: edc2 ba0c    	vstr	s23, [r2, #48]
    c918: ed9d cb06    	vldr	d12, [sp, #24]
    c91c: ed9f 5b5e    	vldr	d5, [pc, #376]          @ 0xca98 <orange_dsp::generated_repeated::update_into+0xbd8>
    c920: eeb7 7bcc    	vcvt.f32.f64	s14, d12
    c924: ed82 7a0f    	vstr	s14, [r2, #60]
    c928: ed9d cb04    	vldr	d12, [sp, #16]
    c92c: ee03 1b05    	vmla.f64	d1, d3, d5
    c930: ed9f 3b5b    	vldr	d3, [pc, #364]          @ 0xcaa0 <orange_dsp::generated_repeated::update_into+0xbe0>
    c934: eef7 7bcc    	vcvt.f32.f64	s15, d12
    c938: edc2 7a10    	vstr	s15, [r2, #64]
    c93c: ed9d cb1c    	vldr	d12, [sp, #112]
    c940: ee02 1b03    	vmla.f64	d1, d2, d3
    c944: eeb7 9bcc    	vcvt.f32.f64	s18, d12
    c948: ed82 9a11    	vstr	s18, [r2, #68]
    c94c: ed9d cb1e    	vldr	d12, [sp, #120]
    c950: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    c954: ed82 0a13    	vstr	s0, [r2, #76]
    c958: eeb7 0bc4    	vcvt.f32.f64	s0, d4
    c95c: ed82 0a15    	vstr	s0, [r2, #84]
    c960: eeb7 dbcd    	vcvt.f32.f64	s26, d13
    c964: ed82 da0b    	vstr	s26, [r2, #44]
    c968: eeb7 ebce    	vcvt.f32.f64	s28, d14
    c96c: ed82 ea0e    	vstr	s28, [r2, #56]
    c970: eef7 9bcc    	vcvt.f32.f64	s19, d12
    c974: edc2 9a12    	vstr	s19, [r2, #72]
    c978: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    c97c: ed82 0a16    	vstr	s0, [r2, #88]
    c980: b028         	add	sp, #0xa0
    c982: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    c986: bd80         	pop	{r7, pc}
		...
    c990: 00 e0 35 df  	.word	0xdf35e000
    c994: 12 5d 23 3f  	.word	0x3f235d12
    c998: 00 40 b2 d2  	.word	0xd2b24000
    c99c: 8e 3e f2 3e  	.word	0x3ef23e8e
    c9a0: 00 40 3c 73  	.word	0x733c4000
    c9a4: b9 32 02 3f  	.word	0x3f0232b9
    c9a8: 08 f7 83 70  	.word	0x7083f708
    c9ac: 57 67 a2 3f  	.word	0x3fa26757
    c9b0: 70 97 28 9d  	.word	0x9d289770
    c9b4: 67 5b b2 3f  	.word	0x3fb25b67
    c9b8: 00 18 07 f2  	.word	0xf2071800
    c9bc: 36 36 11 bf  	.word	0xbf113636
    c9c0: 00 2c 41 07  	.word	0x07412c00
    c9c4: 0d 2b 21 bf  	.word	0xbf212b0d
    c9c8: 00 11 6e ab  	.word	0xab6e1100
    c9cc: 66 c0 49 3f  	.word	0x3f49c066
    c9d0: 00 57 e3 c4  	.word	0xc4e35700
    c9d4: b2 af 59 3f  	.word	0x3f59afb2
    c9d8: 00 00 53 f5  	.word	0xf5530000
    c9dc: 24 27 eb 3e  	.word	0x3eeb2724
    c9e0: 00 00 83 5f  	.word	0x5f830000
    c9e4: 88 15 fb 3e  	.word	0x3efb1588
    c9e8: 30 b5 9f 60  	.word	0x609fb530
    c9ec: ab e5 d3 3f  	.word	0x3fd3e5ab
    c9f0: 3b cc c8 6a  	.word	0x6ac8cc3b
    c9f4: c2 ed a6 3f  	.word	0x3fa6edc2
    c9f8: c8 8f ef 10  	.word	0x10ef8fc8
    c9fc: 81 d8 dd bf  	.word	0xbfddd881
    ca00: 28 3f 82 e4  	.word	0xe4823f28
    ca04: 69 54 e5 3f  	.word	0x3fe55469
    ca08: bf 80 ca 02  	.word	0x02ca80bf
    ca0c: ca a2 ed 3e  	.word	0x3eeda2ca
    ca10: e4 27 14 ca  	.word	0xca1427e4
    ca14: 93 12 26 3f  	.word	0x3f261293
    ca18: f7 82 13 a7  	.word	0xa71382f7
    ca1c: 09 7c d7 bf  	.word	0xbfd77c09
    ca20: 7b 84 3a 2a  	.word	0x2a3a847b
    ca24: 5a 5f c0 3f  	.word	0x3fc05f5a
    ca28: cc 5e bc b6  	.word	0xb6bc5ecc
    ca2c: a2 bc e5 bf  	.word	0xbfe5bca2
    ca30: 15 be b6 e5  	.word	0xe5b6be15
    ca34: 6d 7e c0 3f  	.word	0x3fc07e6d
    ca38: 00 90 99 b0  	.word	0xb0999000
    ca3c: 0f 3d 03 bf  	.word	0xbf033d0f
    ca40: 36 0c 56 03  	.word	0x03560c36
    ca44: a1 54 e5 3f  	.word	0x3fe554a1
    ca48: 00 60 f1 d0  	.word	0xd0f16000
    ca4c: 95 1e 18 bf  	.word	0xbf181e95
    ca50: 00 70 fc 18  	.word	0x18fc7000
    ca54: 94 61 03 bf  	.word	0xbf036194
    ca58: d2 4f d6 fa  	.word	0xfad64fd2
    ca5c: 97 86 f2 be  	.word	0xbef28697
    ca60: b5 2c 68 6e  	.word	0x6e682cb5
    ca64: 31 53 e5 3f  	.word	0x3fe55331
    ca68: 00 80 e7 1d  	.word	0x1de78000
    ca6c: d3 ae 39 3f  	.word	0x3f39aed3
    ca70: 00 d8 8b f9  	.word	0xf98bd800
    ca74: 3d 28 27 bf  	.word	0xbf27283d
    ca78: ca 9f ba 05  	.word	0x05ba9fca
    ca7c: 70 52 e5 3f  	.word	0x3fe55270
    ca80: 00 e4 28 7b  	.word	0x7b28e400
    ca84: 2e 5e 31 3f  	.word	0x3f315e2e
    ca88: 5d ef 75 b1  	.word	0xb175ef5d
    ca8c: 41 55 e5 3f  	.word	0x3fe55541
    ca90: 77 21 f7 18  	.word	0x18f72177
    ca94: cf 75 ed 3e  	.word	0x3eed75cf
    ca98: 21 8e 90 51  	.word	0x51908e21
    ca9c: b7 61 83 3f  	.word	0x3f8361b7
    caa0: ab 9c 16 b4  	.word	0xb4169cab
    caa4: b5 8b ef 3f  	.word	0x3fef8bb5

0000caa8 <orange_dsp::generated_condensed::update>:
    caa8: b580         	push	{r7, lr}
    caaa: 466f         	mov	r7, sp
    caac: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    cab0: b0b0         	sub	sp, #0xc0
    cab2: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cab6: ed91 3a02    	vldr	s6, [r1, #8]
    caba: ed9f 1bfd    	vldr	d1, [pc, #1012]         @ 0xceb0 <orange_dsp::generated_condensed::update+0x408>
    cabe: ed91 4a01    	vldr	s8, [r1, #4]
    cac2: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    cac6: ee20 8b01    	vmul.f64	d8, d0, d1
    caca: ed91 1a03    	vldr	s2, [r1, #12]
    cace: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    cad2: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    cad6: ed9f 0bf8    	vldr	d0, [pc, #992]          @ 0xceb8 <orange_dsp::generated_condensed::update+0x410>
    cada: ed9f 2bf9    	vldr	d2, [pc, #996]          @ 0xcec0 <orange_dsp::generated_condensed::update+0x418>
    cade: ed9f 5bfa    	vldr	d5, [pc, #1000]         @ 0xcec8 <orange_dsp::generated_condensed::update+0x420>
    cae2: ee21 2b02    	vmul.f64	d2, d1, d2
    cae6: ee03 2b05    	vmla.f64	d2, d3, d5
    caea: eeb0 5b48    	vmov.f64	d5, d8
    caee: ee04 5b00    	vmla.f64	d5, d4, d0
    caf2: ed9f 0bf7    	vldr	d0, [pc, #988]          @ 0xced0 <orange_dsp::generated_condensed::update+0x428>
    caf6: ee23 3b00    	vmul.f64	d3, d3, d0
    cafa: ed92 0a01    	vldr	s0, [r2, #4]
    cafe: ed9f 4bf6    	vldr	d4, [pc, #984]          @ 0xced8 <orange_dsp::generated_condensed::update+0x430>
    cb02: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cb06: ed8d 5b2c    	vstr	d5, [sp, #176]
    cb0a: ee38 5b02    	vadd.f64	d5, d8, d2
    cb0e: ed9f 2bf4    	vldr	d2, [pc, #976]          @ 0xcee0 <orange_dsp::generated_condensed::update+0x438>
    cb12: ee01 3b04    	vmla.f64	d3, d1, d4
    cb16: ed91 4a04    	vldr	s8, [r1, #16]
    cb1a: ee00 5b02    	vmla.f64	d5, d0, d2
    cb1e: ed91 2a05    	vldr	s4, [r1, #20]
    cb22: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    cb26: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    cb2a: ed8d 5b2e    	vstr	d5, [sp, #184]
    cb2e: ee38 6b03    	vadd.f64	d6, d8, d3
    cb32: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xcee8 <orange_dsp::generated_condensed::update+0x440>
    cb36: ed9f 5bee    	vldr	d5, [pc, #952]          @ 0xcef0 <orange_dsp::generated_condensed::update+0x448>
    cb3a: ee22 3b03    	vmul.f64	d3, d2, d3
    cb3e: ee04 3b05    	vmla.f64	d3, d4, d5
    cb42: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xcef8 <orange_dsp::generated_condensed::update+0x450>
    cb46: ee38 5b03    	vadd.f64	d5, d8, d3
    cb4a: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xcf00 <orange_dsp::generated_condensed::update+0x458>
    cb4e: ee24 3b03    	vmul.f64	d3, d4, d3
    cb52: ed9f 4bed    	vldr	d4, [pc, #948]          @ 0xcf08 <orange_dsp::generated_condensed::update+0x460>
    cb56: ee00 6b01    	vmla.f64	d6, d0, d1
    cb5a: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xcf10 <orange_dsp::generated_condensed::update+0x468>
    cb5e: ee02 3b04    	vmla.f64	d3, d2, d4
    cb62: ee00 5b01    	vmla.f64	d5, d0, d1
    cb66: ed9f 1bec    	vldr	d1, [pc, #944]          @ 0xcf18 <orange_dsp::generated_condensed::update+0x470>
    cb6a: ee38 2b03    	vadd.f64	d2, d8, d3
    cb6e: ee00 2b01    	vmla.f64	d2, d0, d1
    cb72: ed91 0a07    	vldr	s0, [r1, #28]
    cb76: ed91 1a06    	vldr	s2, [r1, #24]
    cb7a: eeb7 fac0    	vcvt.f64.f32	d15, s0
    cb7e: ed9f 0be8    	vldr	d0, [pc, #928]          @ 0xcf20 <orange_dsp::generated_condensed::update+0x478>
    cb82: ee2f 9b00    	vmul.f64	d9, d15, d0
    cb86: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    cb8a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf28 <orange_dsp::generated_condensed::update+0x480>
    cb8e: ee00 9b01    	vmla.f64	d9, d0, d1
    cb92: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf30 <orange_dsp::generated_condensed::update+0x488>
    cb96: ee2f 3b01    	vmul.f64	d3, d15, d1
    cb9a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf38 <orange_dsp::generated_condensed::update+0x490>
    cb9e: ee00 3b01    	vmla.f64	d3, d0, d1
    cba2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf40 <orange_dsp::generated_condensed::update+0x498>
    cba6: ee2f 4b01    	vmul.f64	d4, d15, d1
    cbaa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf48 <orange_dsp::generated_condensed::update+0x4a0>
    cbae: ee00 4b01    	vmla.f64	d4, d0, d1
    cbb2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf50 <orange_dsp::generated_condensed::update+0x4a8>
    cbb6: ee20 ab01    	vmul.f64	d10, d0, d1
    cbba: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf58 <orange_dsp::generated_condensed::update+0x4b0>
    cbbe: ee0f ab01    	vmla.f64	d10, d15, d1
    cbc2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf60 <orange_dsp::generated_condensed::update+0x4b8>
    cbc6: ee2f bb01    	vmul.f64	d11, d15, d1
    cbca: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf68 <orange_dsp::generated_condensed::update+0x4c0>
    cbce: ee00 bb01    	vmla.f64	d11, d0, d1
    cbd2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf70 <orange_dsp::generated_condensed::update+0x4c8>
    cbd6: ee2f cb01    	vmul.f64	d12, d15, d1
    cbda: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf78 <orange_dsp::generated_condensed::update+0x4d0>
    cbde: ee00 cb01    	vmla.f64	d12, d0, d1
    cbe2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf80 <orange_dsp::generated_condensed::update+0x4d8>
    cbe6: ee20 db01    	vmul.f64	d13, d0, d1
    cbea: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf88 <orange_dsp::generated_condensed::update+0x4e0>
    cbee: ee0f db01    	vmla.f64	d13, d15, d1
    cbf2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf90 <orange_dsp::generated_condensed::update+0x4e8>
    cbf6: ee2f eb01    	vmul.f64	d14, d15, d1
    cbfa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcf98 <orange_dsp::generated_condensed::update+0x4f0>
    cbfe: ee00 eb01    	vmla.f64	d14, d0, d1
    cc02: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcfa0 <orange_dsp::generated_condensed::update+0x4f8>
    cc06: ee2f fb01    	vmul.f64	d15, d15, d1
    cc0a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcfa8 <orange_dsp::generated_condensed::update+0x500>
    cc0e: ee00 fb01    	vmla.f64	d15, d0, d1
    cc12: ed91 0a08    	vldr	s0, [r1, #32]
    cc16: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cc1a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfb0 <orange_dsp::generated_condensed::update+0x508>
    cc1e: ee00 9b01    	vmla.f64	d9, d0, d1
    cc22: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfb8 <orange_dsp::generated_condensed::update+0x510>
    cc26: ee00 3b01    	vmla.f64	d3, d0, d1
    cc2a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfc0 <orange_dsp::generated_condensed::update+0x518>
    cc2e: ee00 4b01    	vmla.f64	d4, d0, d1
    cc32: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfc8 <orange_dsp::generated_condensed::update+0x520>
    cc36: ee00 ab01    	vmla.f64	d10, d0, d1
    cc3a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfd0 <orange_dsp::generated_condensed::update+0x528>
    cc3e: ee00 bb01    	vmla.f64	d11, d0, d1
    cc42: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfd8 <orange_dsp::generated_condensed::update+0x530>
    cc46: ee00 cb01    	vmla.f64	d12, d0, d1
    cc4a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfe0 <orange_dsp::generated_condensed::update+0x538>
    cc4e: ee00 db01    	vmla.f64	d13, d0, d1
    cc52: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcfe8 <orange_dsp::generated_condensed::update+0x540>
    cc56: ee00 eb01    	vmla.f64	d14, d0, d1
    cc5a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcff0 <orange_dsp::generated_condensed::update+0x548>
    cc5e: ee00 fb01    	vmla.f64	d15, d0, d1
    cc62: ed91 0a09    	vldr	s0, [r1, #36]
    cc66: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cc6a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xcff8 <orange_dsp::generated_condensed::update+0x550>
    cc6e: ee00 9b01    	vmla.f64	d9, d0, d1
    cc72: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd000 <orange_dsp::generated_condensed::update+0x558>
    cc76: ee00 3b01    	vmla.f64	d3, d0, d1
    cc7a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd008 <orange_dsp::generated_condensed::update+0x560>
    cc7e: ee00 4b01    	vmla.f64	d4, d0, d1
    cc82: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd010 <orange_dsp::generated_condensed::update+0x568>
    cc86: ee00 ab01    	vmla.f64	d10, d0, d1
    cc8a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd018 <orange_dsp::generated_condensed::update+0x570>
    cc8e: ee00 bb01    	vmla.f64	d11, d0, d1
    cc92: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd020 <orange_dsp::generated_condensed::update+0x578>
    cc96: ee00 cb01    	vmla.f64	d12, d0, d1
    cc9a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd028 <orange_dsp::generated_condensed::update+0x580>
    cc9e: ee00 db01    	vmla.f64	d13, d0, d1
    cca2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd030 <orange_dsp::generated_condensed::update+0x588>
    cca6: ee00 eb01    	vmla.f64	d14, d0, d1
    ccaa: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xd038 <orange_dsp::generated_condensed::update+0x590>
    ccae: ee00 fb01    	vmla.f64	d15, d0, d1
    ccb2: ed91 0a0a    	vldr	s0, [r1, #40]
    ccb6: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ccba: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd040 <orange_dsp::generated_condensed::update+0x598>
    ccbe: ee00 9b01    	vmla.f64	d9, d0, d1
    ccc2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd048 <orange_dsp::generated_condensed::update+0x5a0>
    ccc6: ee00 3b01    	vmla.f64	d3, d0, d1
    ccca: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd050 <orange_dsp::generated_condensed::update+0x5a8>
    ccce: ee00 4b01    	vmla.f64	d4, d0, d1
    ccd2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd058 <orange_dsp::generated_condensed::update+0x5b0>
    ccd6: ee00 ab01    	vmla.f64	d10, d0, d1
    ccda: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd060 <orange_dsp::generated_condensed::update+0x5b8>
    ccde: ee00 bb01    	vmla.f64	d11, d0, d1
    cce2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd068 <orange_dsp::generated_condensed::update+0x5c0>
    cce6: ee00 cb01    	vmla.f64	d12, d0, d1
    ccea: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd070 <orange_dsp::generated_condensed::update+0x5c8>
    ccee: ee00 db01    	vmla.f64	d13, d0, d1
    ccf2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd078 <orange_dsp::generated_condensed::update+0x5d0>
    ccf6: ee00 eb01    	vmla.f64	d14, d0, d1
    ccfa: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xd080 <orange_dsp::generated_condensed::update+0x5d8>
    ccfe: ee00 fb01    	vmla.f64	d15, d0, d1
    cd02: ed91 0a0b    	vldr	s0, [r1, #44]
    cd06: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cd0a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd088 <orange_dsp::generated_condensed::update+0x5e0>
    cd0e: ee00 9b01    	vmla.f64	d9, d0, d1
    cd12: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd090 <orange_dsp::generated_condensed::update+0x5e8>
    cd16: ee00 3b01    	vmla.f64	d3, d0, d1
    cd1a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd098 <orange_dsp::generated_condensed::update+0x5f0>
    cd1e: ee00 4b01    	vmla.f64	d4, d0, d1
    cd22: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd0a0 <orange_dsp::generated_condensed::update+0x5f8>
    cd26: ee00 ab01    	vmla.f64	d10, d0, d1
    cd2a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd0a8 <orange_dsp::generated_condensed::update+0x600>
    cd2e: ee00 bb01    	vmla.f64	d11, d0, d1
    cd32: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd0b0 <orange_dsp::generated_condensed::update+0x608>
    cd36: ee00 cb01    	vmla.f64	d12, d0, d1
    cd3a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd0b8 <orange_dsp::generated_condensed::update+0x610>
    cd3e: ee00 db01    	vmla.f64	d13, d0, d1
    cd42: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd0c0 <orange_dsp::generated_condensed::update+0x618>
    cd46: ee00 eb01    	vmla.f64	d14, d0, d1
    cd4a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xd0c8 <orange_dsp::generated_condensed::update+0x620>
    cd4e: ee00 fb01    	vmla.f64	d15, d0, d1
    cd52: ed91 0a0c    	vldr	s0, [r1, #48]
    cd56: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cd5a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0d0 <orange_dsp::generated_condensed::update+0x628>
    cd5e: ee00 9b01    	vmla.f64	d9, d0, d1
    cd62: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0d8 <orange_dsp::generated_condensed::update+0x630>
    cd66: ee00 3b01    	vmla.f64	d3, d0, d1
    cd6a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0e0 <orange_dsp::generated_condensed::update+0x638>
    cd6e: ee00 4b01    	vmla.f64	d4, d0, d1
    cd72: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0e8 <orange_dsp::generated_condensed::update+0x640>
    cd76: ee00 ab01    	vmla.f64	d10, d0, d1
    cd7a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0f0 <orange_dsp::generated_condensed::update+0x648>
    cd7e: ee00 bb01    	vmla.f64	d11, d0, d1
    cd82: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd0f8 <orange_dsp::generated_condensed::update+0x650>
    cd86: ee00 cb01    	vmla.f64	d12, d0, d1
    cd8a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd100 <orange_dsp::generated_condensed::update+0x658>
    cd8e: ee00 db01    	vmla.f64	d13, d0, d1
    cd92: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd108 <orange_dsp::generated_condensed::update+0x660>
    cd96: ee00 eb01    	vmla.f64	d14, d0, d1
    cd9a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xd110 <orange_dsp::generated_condensed::update+0x668>
    cd9e: ee00 fb01    	vmla.f64	d15, d0, d1
    cda2: ed91 0a0d    	vldr	s0, [r1, #52]
    cda6: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cdaa: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd118 <orange_dsp::generated_condensed::update+0x670>
    cdae: ee00 9b01    	vmla.f64	d9, d0, d1
    cdb2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd120 <orange_dsp::generated_condensed::update+0x678>
    cdb6: ee00 3b01    	vmla.f64	d3, d0, d1
    cdba: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd128 <orange_dsp::generated_condensed::update+0x680>
    cdbe: ee00 4b01    	vmla.f64	d4, d0, d1
    cdc2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd130 <orange_dsp::generated_condensed::update+0x688>
    cdc6: ee00 ab01    	vmla.f64	d10, d0, d1
    cdca: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd138 <orange_dsp::generated_condensed::update+0x690>
    cdce: ee00 bb01    	vmla.f64	d11, d0, d1
    cdd2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd140 <orange_dsp::generated_condensed::update+0x698>
    cdd6: ee00 cb01    	vmla.f64	d12, d0, d1
    cdda: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd148 <orange_dsp::generated_condensed::update+0x6a0>
    cdde: ee00 db01    	vmla.f64	d13, d0, d1
    cde2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd150 <orange_dsp::generated_condensed::update+0x6a8>
    cde6: ee00 eb01    	vmla.f64	d14, d0, d1
    cdea: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xd158 <orange_dsp::generated_condensed::update+0x6b0>
    cdee: ee00 fb01    	vmla.f64	d15, d0, d1
    cdf2: ed91 0a0e    	vldr	s0, [r1, #56]
    cdf6: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cdfa: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd160 <orange_dsp::generated_condensed::update+0x6b8>
    cdfe: ee00 9b01    	vmla.f64	d9, d0, d1
    ce02: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd168 <orange_dsp::generated_condensed::update+0x6c0>
    ce06: ee00 3b01    	vmla.f64	d3, d0, d1
    ce0a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd170 <orange_dsp::generated_condensed::update+0x6c8>
    ce0e: ee00 4b01    	vmla.f64	d4, d0, d1
    ce12: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd178 <orange_dsp::generated_condensed::update+0x6d0>
    ce16: ee00 ab01    	vmla.f64	d10, d0, d1
    ce1a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd180 <orange_dsp::generated_condensed::update+0x6d8>
    ce1e: ee00 bb01    	vmla.f64	d11, d0, d1
    ce22: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd188 <orange_dsp::generated_condensed::update+0x6e0>
    ce26: ee00 cb01    	vmla.f64	d12, d0, d1
    ce2a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd190 <orange_dsp::generated_condensed::update+0x6e8>
    ce2e: ee00 db01    	vmla.f64	d13, d0, d1
    ce32: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd198 <orange_dsp::generated_condensed::update+0x6f0>
    ce36: ee00 eb01    	vmla.f64	d14, d0, d1
    ce3a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xd1a0 <orange_dsp::generated_condensed::update+0x6f8>
    ce3e: ee00 fb01    	vmla.f64	d15, d0, d1
    ce42: ed92 0a03    	vldr	s0, [r2, #12]
    ce46: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ce4a: ed9f 1bd7    	vldr	d1, [pc, #860]          @ 0xd1a8 <orange_dsp::generated_condensed::update+0x700>
    ce4e: ed8d 3b1c    	vstr	d3, [sp, #112]
    ce52: ee20 3b01    	vmul.f64	d3, d0, d1
    ce56: ed92 1a02    	vldr	s2, [r2, #8]
    ce5a: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    ce5e: ed8d 2b26    	vstr	d2, [sp, #152]
    ce62: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xd1b0 <orange_dsp::generated_condensed::update+0x708>
    ce66: ee01 3b02    	vmla.f64	d3, d1, d2
    ce6a: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xd1b8 <orange_dsp::generated_condensed::update+0x710>
    ce6e: ed8d 3b24    	vstr	d3, [sp, #144]
    ce72: ee20 3b02    	vmul.f64	d3, d0, d2
    ce76: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xd1c0 <orange_dsp::generated_condensed::update+0x718>
    ce7a: ee01 3b02    	vmla.f64	d3, d1, d2
    ce7e: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xd1c8 <orange_dsp::generated_condensed::update+0x720>
    ce82: ed8d 3b22    	vstr	d3, [sp, #136]
    ce86: ee20 3b02    	vmul.f64	d3, d0, d2
    ce8a: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xd1d0 <orange_dsp::generated_condensed::update+0x728>
    ce8e: ee01 3b02    	vmla.f64	d3, d1, d2
    ce92: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xd1d8 <orange_dsp::generated_condensed::update+0x730>
    ce96: ed8d 3b20    	vstr	d3, [sp, #128]
    ce9a: ee20 3b02    	vmul.f64	d3, d0, d2
    ce9e: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xd1e0 <orange_dsp::generated_condensed::update+0x738>
    cea2: ee01 3b02    	vmla.f64	d3, d1, d2
    cea6: f000 b99f    	b.w	0xd1e8 <orange_dsp::generated_condensed::update+0x740> @ imm = #0x33e
    ceaa: bf00         	nop
    ceac: bf00         	nop
    ceae: bf00         	nop
		...
    ceb8: c1 5d e1 c9  	.word	0xc9e15dc1
    cebc: 86 54 e5 3f  	.word	0x3fe55486
    cec0: a9 0f 6b 00  	.word	0x006b0fa9
    cec4: 3e 31 92 bf  	.word	0xbf92313e
    cec8: a2 48 2a 74  	.word	0x742a48a2
    cecc: 54 ba e4 3f  	.word	0x3fe4ba54
    ced0: 00 60 41 1f  	.word	0x1f416000
    ced4: 45 49 27 bf  	.word	0xbf274945
    ced8: 1a 5d 10 11  	.word	0x11105d1a
    cedc: ce 53 e5 3f  	.word	0x3fe553ce
    cee0: 46 6c 1c 77  	.word	0x771c6c46
    cee4: d3 64 5c bf  	.word	0xbf5c64d3
    cee8: 80 0d 59 22  	.word	0x22590d80
    ceec: 9f d9 b8 be  	.word	0xbeb8d99f
    cef0: b0 e5 93 25  	.word	0x2593e5b0
    cef4: 2e 54 e5 3f  	.word	0x3fe5542e
    cef8: 00 60 e7 86  	.word	0x86e76000
    cefc: ec 07 ec 3e  	.word	0x3eec07ec
    cf00: 00 f0 f8 21  	.word	0x21f8f000
    cf04: c8 2c 12 bf  	.word	0xbf122cc8
    cf08: 3d 6e 12 0b  	.word	0x0b126e3d
    cf0c: a1 53 e5 3f  	.word	0x3fe553a1
    cf10: 00 80 77 22  	.word	0x22778000
    cf14: 7a ac 2b 3f  	.word	0x3f2bac7a
    cf18: 00 60 f5 32  	.word	0x32f56000
    cf1c: 2c 43 1b 3f  	.word	0x3f1b432c
    cf20: 06 42 bd ec  	.word	0xecbd4206
    cf24: 6c ee e0 3f  	.word	0x3fe0ee6c
    cf28: 75 22 80 1e  	.word	0x1e802275
    cf2c: ff ca ba 3f  	.word	0x3fbacaff
    cf30: a3 83 c9 c1  	.word	0xc1c983a3
    cf34: 1d 54 e5 3f  	.word	0x3fe5541d
    cf38: 00 ac c1 aa  	.word	0xaac1ac00
    cf3c: b7 a1 1d 3f  	.word	0x3f1da1b7
    cf40: 00 8f fc e0  	.word	0xe0fc8f00
    cf44: bb 3a 58 bf  	.word	0xbf583abb
    cf48: 80 c5 13 c0  	.word	0xc013c580
    cf4c: 2a 6f 52 3f  	.word	0x3f526f2a
    cf50: 1a c8 c7 76  	.word	0x76c7c81a
    cf54: 6e b2 14 bf  	.word	0xbf14b26e
    cf58: e2 63 27 22  	.word	0x222763e2
    cf5c: 1a 34 1b 3f  	.word	0x3f1b341a
    cf60: 00 00 77 9e  	.word	0x9e770000
    cf64: d4 83 d1 be  	.word	0xbed183d4
    cf68: 00 80 54 bc  	.word	0xbc548000
    cf6c: c7 a6 ca 3e  	.word	0x3ecaa6c7
    cf70: 78 c9 65 d2  	.word	0xd265c978
    cf74: fb aa 81 bf  	.word	0xbf81aafb
    cf78: 38 4b 1c 74  	.word	0x741c4b38
    cf7c: 5b e2 7a 3f  	.word	0x3f7ae25b
    cf80: 00 a8 b7 3b  	.word	0x3bb7a800
    cf84: a0 24 e9 be  	.word	0xbee924a0
    cf88: 00 b0 3a 3d  	.word	0x3d3ab000
    cf8c: 0e 86 f0 3e  	.word	0x3ef0860e
    cf90: 80 45 eb ca  	.word	0xcaeb4580
    cf94: d6 b8 28 bf  	.word	0xbf28b8d6
    cf98: 40 1e 97 40  	.word	0x40971e40
    cf9c: 1c cf 22 3f  	.word	0x3f22cf1c
    cfa0: 00 80 9e 71  	.word	0x719e8000
    cfa4: 3d 11 ca be  	.word	0xbeca113d
    cfa8: 00 00 cc 39  	.word	0x39cc0000
    cfac: 23 d5 c3 3e  	.word	0x3ec3d523
    cfb0: 94 54 5e e4  	.word	0xe45e5494
    cfb4: 65 da e0 3f  	.word	0x3fe0da65
    cfb8: 00 d0 32 e7  	.word	0xe732d000
    cfbc: 2f 62 23 bf  	.word	0xbf23622f
    cfc0: b0 9a 2c 49  	.word	0x492c9ab0
    cfc4: 0a 30 e5 3f  	.word	0x3fe5300a
    cfc8: 6a 59 88 8d  	.word	0x8d88596a
    cfcc: ec 13 1b 3f  	.word	0x3f1b13ec
    cfd0: 00 80 a9 db  	.word	0xdba98000
    cfd4: 1c 6f d1 be  	.word	0xbed16f1c
    cfd8: 70 a7 27 c0  	.word	0xc027a770
    cfdc: 15 96 81 bf  	.word	0xbf819615
    cfe0: 00 10 7b a9  	.word	0xa97b1000
    cfe4: 82 72 f0 3e  	.word	0x3ef07282
    cfe8: 80 84 35 a4  	.word	0xa4358480
    cfec: 98 9b 28 bf  	.word	0xbf289b98
    cff0: 00 00 11 e3  	.word	0xe3110000
    cff4: 67 f2 c9 be  	.word	0xbec9f267
    cff8: 7f 02 92 0b  	.word	0x0b92027f
    cffc: f9 a6 d7 bf  	.word	0xbfd7a6f9
    d000: 00 70 27 22  	.word	0x22277000
    d004: 1a 34 1b 3f  	.word	0x3f1b341a
    d008: 00 37 75 d8  	.word	0xd8753700
    d00c: 73 ec 50 3f  	.word	0x3f50ec73
    d010: f9 c7 6f 0d  	.word	0x0d6fc7f9
    d014: d1 52 e5 3f  	.word	0x3fe552d1
    d018: 00 c0 70 c7  	.word	0xc770c000
    d01c: ac e2 f3 be  	.word	0xbef3e2ac
    d020: b8 ba 9c 87  	.word	0x879cbab8
    d024: 20 0f a4 bf  	.word	0xbfa40f20
    d028: 00 58 ad cf  	.word	0xcfad5800
    d02c: 8d c2 12 3f  	.word	0x3f12c28d
    d030: 00 67 c9 53  	.word	0x53c96700
    d034: 63 11 4c bf  	.word	0xbf4c1163
    d038: 00 00 01 7a  	.word	0x7a010000
    d03c: 66 98 ed be  	.word	0xbeed9866
    d040: 49 ec 9f 20  	.word	0x209fec49
    d044: fa 74 8e 3f  	.word	0x3f8e74fa
    d048: 00 b8 a6 9d  	.word	0x9da6b800
    d04c: d4 83 d1 be  	.word	0xbed183d4
    d050: 00 0a 5f 13  	.word	0x135f0a00
    d054: e4 ca 05 bf  	.word	0xbf05cae4
    d058: 78 b8 70 c7  	.word	0xc770b878
    d05c: ac e2 f3 be  	.word	0xbef3e2ac
    d060: 5b ad 92 3c  	.word	0x3c92ad5b
    d064: 15 55 e5 3f  	.word	0x3fe55515
    d068: 00 25 a5 be  	.word	0xbea52500
    d06c: 02 2a b0 bf  	.word	0xbfb02a02
    d070: 00 f8 5d c6  	.word	0xc65df800
    d074: 07 3c 1e 3f  	.word	0x3f1e3c07
    d078: 40 ea 5d 38  	.word	0x385dea40
    d07c: 29 9e 56 bf  	.word	0xbf569e29
    d080: 00 c0 dc 8e  	.word	0x8edcc000
    d084: 3f d9 f7 be  	.word	0xbef7d93f
    d088: 47 e4 bd ce  	.word	0xcebde447
    d08c: 0e 2b 69 3f  	.word	0x3f692b0e
    d090: 00 40 8f da  	.word	0xda8f4000
    d094: 74 f2 ac be  	.word	0xbeacf274
    d098: 00 a7 84 8f  	.word	0x8f84a700
    d09c: 22 02 e2 be  	.word	0xbee20222
    d0a0: 1f bc 4a 33  	.word	0x334abc1f
    d0a4: b2 6e d0 be  	.word	0xbed06eb2
    d0a8: 00 fc fb 7d  	.word	0x7dfbfc00
    d0ac: b7 7b da be  	.word	0xbeda7bb7
    d0b0: 8f e3 b2 48  	.word	0x48b2e38f
    d0b4: 3c e9 e2 3f  	.word	0x3fe2e93c
    d0b8: 00 e4 71 6e  	.word	0x6e71e400
    d0bc: 56 32 23 3f  	.word	0x3f233256
    d0c0: 00 05 e0 bc  	.word	0xbce00500
    d0c4: 17 92 30 bf  	.word	0xbf309217
    d0c8: 00 80 de 1d  	.word	0x1dde8000
    d0cc: 5b d0 f4 be  	.word	0xbef4d05b
    d0d0: f4 24 ee df  	.word	0xdfee24f4
    d0d4: 96 e5 64 bf  	.word	0xbf64e596
    d0d8: 00 60 1c e5  	.word	0xe51c6000
    d0dc: ce 08 a8 3e  	.word	0x3ea808ce
    d0e0: 00 e0 2c 34  	.word	0x342ce000
    d0e4: 79 e7 dd 3e  	.word	0x3edde779
    d0e8: e7 ed e4 73  	.word	0x73e4ede7
    d0ec: 88 49 cb 3e  	.word	0x3ecb4988
    d0f0: 00 54 55 ed  	.word	0xed555400
    d0f4: 1c fd d5 3e  	.word	0x3ed5fd1c
    d0f8: 20 1d 0d ea  	.word	0xea0d1d20
    d0fc: de 0a b1 3f  	.word	0x3fb10ade
    d100: 0e cf 4c 9e  	.word	0x9e4ccf0e
    d104: ea 50 e5 3f  	.word	0x3fe550ea
    d108: 90 b1 c1 c8  	.word	0xc8c1b190
    d10c: ce b5 51 3f  	.word	0x3f51b5ce
    d110: 00 c0 f7 85  	.word	0x85f7c000
    d114: e2 5d f8 be  	.word	0xbef85de2
    d118: cf 1e ec 24  	.word	0x24ec1ecf
    d11c: 9c 63 8d 3f  	.word	0x3f8d639c
    d120: 00 80 67 df  	.word	0xdf678000
    d124: 9f e6 d0 be  	.word	0xbed0e69f
    d128: 00 ba a2 95  	.word	0x95a2ba00
    d12c: 4a 07 05 bf  	.word	0xbf05074a
    d130: 5f e8 1a 49  	.word	0x491ae85f
    d134: 31 30 f3 be  	.word	0xbef33031
    d138: 00 bc c0 af  	.word	0xafc0bc00
    d13c: ba ec fe be  	.word	0xbefeecba
    d140: 40 2a 3d 87  	.word	0x873d2a40
    d144: 32 a8 ab bf  	.word	0xbfaba832
    d148: 00 58 47 7f  	.word	0x7f475800
    d14c: c7 a5 40 3f  	.word	0x3f40a5c7
    d150: c6 60 4c 9c  	.word	0x9c4c60c6
    d154: 3d 43 e5 3f  	.word	0x3fe5433d
    d158: 00 80 ea 14  	.word	0x14ea8000
    d15c: fe 54 f5 3e  	.word	0x3ef554fe
    d160: 30 f8 ed 0a  	.word	0x0aedf830
    d164: b2 7b 40 3f  	.word	0x3f407bb2
    d168: 00 d0 c0 ef  	.word	0xefc0d000
    d16c: 43 f5 82 be  	.word	0xbe82f543
    d170: 00 44 9d fc  	.word	0xfc9d4400
    d174: 8c 96 b7 be  	.word	0xbeb7968c
    d178: 33 60 a3 fb  	.word	0xfba36033
    d17c: 1b 86 a5 be  	.word	0xbea5861b
    d180: 00 9e 73 39  	.word	0x39739e00
    d184: 2e 58 b1 be  	.word	0xbeb1582e
    d188: a7 94 9b fb  	.word	0xfb9b94a7
    d18c: 6d 7a 82 bf  	.word	0xbf827a6d
    d190: 00 2c 02 86  	.word	0x86022c00
    d194: e2 5d f8 be  	.word	0xbef85de2
    d198: 40 eb 05 06  	.word	0x0605eb40
    d19c: 91 b1 06 3f  	.word	0x3f06b191
    d1a0: 03 bd 02 e5  	.word	0xe502bd03
    d1a4: fa 54 e5 3f  	.word	0x3fe554fa
    d1a8: 76 43 71 a5  	.word	0xa5714376
    d1ac: f8 73 e2 bf  	.word	0xbfe273f8
    d1b0: 90 85 b9 69  	.word	0x69b98590
    d1b4: a2 a1 ce bf  	.word	0xbfcea1a2
    d1b8: 00 70 07 91  	.word	0x91077000
    d1bc: 41 39 25 3f  	.word	0x3f253941
    d1c0: 00 80 10 04  	.word	0x04108000
    d1c4: 83 9d 11 3f  	.word	0x3f119d83
    d1c8: 00 b8 93 75  	.word	0x7593b800
    d1cc: 30 68 5a 3f  	.word	0x3f5a6830
    d1d0: 00 5c 9c 19  	.word	0x199c5c00
    d1d4: d8 ea 45 3f  	.word	0x3f45ead8
    d1d8: 28 b4 ed 8f  	.word	0x8fedb428
    d1dc: 1e 56 3c bf  	.word	0xbf3c561e
    d1e0: 00 80 d1 f5  	.word	0xf5d18000
    d1e4: d4 ff 33 3f  	.word	0x3f33ffd4
    d1e8: ed9f 2beb    	vldr	d2, [pc, #940]          @ 0xd598 <orange_dsp::generated_condensed::update+0xaf0>
    d1ec: ed8d 3b1e    	vstr	d3, [sp, #120]
    d1f0: ee20 3b02    	vmul.f64	d3, d0, d2
    d1f4: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xd5a0 <orange_dsp::generated_condensed::update+0xaf8>
    d1f8: ee01 3b02    	vmla.f64	d3, d1, d2
    d1fc: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xd5a8 <orange_dsp::generated_condensed::update+0xb00>
    d200: ed8d 3b18    	vstr	d3, [sp, #96]
    d204: ee20 3b02    	vmul.f64	d3, d0, d2
    d208: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xd5b0 <orange_dsp::generated_condensed::update+0xb08>
    d20c: ee01 3b02    	vmla.f64	d3, d1, d2
    d210: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xd5b8 <orange_dsp::generated_condensed::update+0xb10>
    d214: ed8d 3b16    	vstr	d3, [sp, #88]
    d218: ee20 3b02    	vmul.f64	d3, d0, d2
    d21c: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xd5c0 <orange_dsp::generated_condensed::update+0xb18>
    d220: ee01 3b02    	vmla.f64	d3, d1, d2
    d224: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xd5c8 <orange_dsp::generated_condensed::update+0xb20>
    d228: ed8d 3b14    	vstr	d3, [sp, #80]
    d22c: ee20 3b02    	vmul.f64	d3, d0, d2
    d230: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xd5d0 <orange_dsp::generated_condensed::update+0xb28>
    d234: ee01 3b02    	vmla.f64	d3, d1, d2
    d238: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xd5d8 <orange_dsp::generated_condensed::update+0xb30>
    d23c: ee20 2b02    	vmul.f64	d2, d0, d2
    d240: ed9f 0be7    	vldr	d0, [pc, #924]          @ 0xd5e0 <orange_dsp::generated_condensed::update+0xb38>
    d244: ee01 2b00    	vmla.f64	d2, d1, d0
    d248: ed91 0a10    	vldr	s0, [r1, #64]
    d24c: ed8d 2b10    	vstr	d2, [sp, #64]
    d250: ed91 2a0f    	vldr	s4, [r1, #60]
    d254: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    d258: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    d25c: ed8d 3b12    	vstr	d3, [sp, #72]
    d260: ed9f 0be1    	vldr	d0, [pc, #900]          @ 0xd5e8 <orange_dsp::generated_condensed::update+0xb40>
    d264: ed9f 3be2    	vldr	d3, [pc, #904]          @ 0xd5f0 <orange_dsp::generated_condensed::update+0xb48>
    d268: ee21 0b00    	vmul.f64	d0, d1, d0
    d26c: ee02 0b03    	vmla.f64	d0, d2, d3
    d270: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd600 <orange_dsp::generated_condensed::update+0xb58>
    d274: ee21 1b03    	vmul.f64	d1, d1, d3
    d278: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd608 <orange_dsp::generated_condensed::update+0xb60>
    d27c: ee02 1b03    	vmla.f64	d1, d2, d3
    d280: ed91 2a12    	vldr	s4, [r1, #72]
    d284: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    d288: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd618 <orange_dsp::generated_condensed::update+0xb70>
    d28c: ed8d 5b28    	vstr	d5, [sp, #160]
    d290: ee22 5b03    	vmul.f64	d5, d2, d3
    d294: ed91 3a11    	vldr	s6, [r1, #68]
    d298: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    d29c: ed8d 4b1a    	vstr	d4, [sp, #104]
    d2a0: ed9f 4bdf    	vldr	d4, [pc, #892]          @ 0xd620 <orange_dsp::generated_condensed::update+0xb78>
    d2a4: ee03 5b04    	vmla.f64	d5, d3, d4
    d2a8: ed9f 4be3    	vldr	d4, [pc, #908]          @ 0xd638 <orange_dsp::generated_condensed::update+0xb90>
    d2ac: ee23 7b04    	vmul.f64	d7, d3, d4
    d2b0: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd640 <orange_dsp::generated_condensed::update+0xb98>
    d2b4: ee02 7b03    	vmla.f64	d7, d2, d3
    d2b8: ee38 3b00    	vadd.f64	d3, d8, d0
    d2bc: ed92 0a04    	vldr	s0, [r2, #16]
    d2c0: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d2c4: ed9f 2bcc    	vldr	d2, [pc, #816]          @ 0xd5f8 <orange_dsp::generated_condensed::update+0xb50>
    d2c8: ee00 3b02    	vmla.f64	d3, d0, d2
    d2cc: ee38 2b01    	vadd.f64	d2, d8, d1
    d2d0: ed9f 1bcf    	vldr	d1, [pc, #828]          @ 0xd610 <orange_dsp::generated_condensed::update+0xb68>
    d2d4: ee00 2b01    	vmla.f64	d2, d0, d1
    d2d8: ed92 1a05    	vldr	s2, [r2, #20]
    d2dc: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    d2e0: ed8d 2b0c    	vstr	d2, [sp, #48]
    d2e4: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xd628 <orange_dsp::generated_condensed::update+0xb80>
    d2e8: ed8d 3b0e    	vstr	d3, [sp, #56]
    d2ec: ee21 3b02    	vmul.f64	d3, d1, d2
    d2f0: ed9f 2bcf    	vldr	d2, [pc, #828]          @ 0xd630 <orange_dsp::generated_condensed::update+0xb88>
    d2f4: ee00 3b02    	vmla.f64	d3, d0, d2
    d2f8: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xd648 <orange_dsp::generated_condensed::update+0xba0>
    d2fc: ed8d 3b0a    	vstr	d3, [sp, #40]
    d300: ee21 3b02    	vmul.f64	d3, d1, d2
    d304: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xd650 <orange_dsp::generated_condensed::update+0xba8>
    d308: ee00 3b02    	vmla.f64	d3, d0, d2
    d30c: ed91 0a14    	vldr	s0, [r1, #80]
    d310: ed8d 3b06    	vstr	d3, [sp, #24]
    d314: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    d318: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0xd658 <orange_dsp::generated_condensed::update+0xbb0>
    d31c: ee23 2b00    	vmul.f64	d2, d3, d0
    d320: ed91 0a13    	vldr	s0, [r1, #76]
    d324: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d328: ed9f 4bcd    	vldr	d4, [pc, #820]          @ 0xd660 <orange_dsp::generated_condensed::update+0xbb8>
    d32c: ee00 2b04    	vmla.f64	d2, d0, d4
    d330: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xd670 <orange_dsp::generated_condensed::update+0xbc8>
    d334: ee20 0b04    	vmul.f64	d0, d0, d4
    d338: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xd678 <orange_dsp::generated_condensed::update+0xbd0>
    d33c: ee03 0b04    	vmla.f64	d0, d3, d4
    d340: ed92 3a06    	vldr	s6, [r2, #24]
    d344: ed8d 5b08    	vstr	d5, [sp, #32]
    d348: eeb0 5b48    	vmov.f64	d5, d8
    d34c: eeb7 8ac3    	vcvt.f64.f32	d8, s6
    d350: ed9f 4bc5    	vldr	d4, [pc, #788]          @ 0xd668 <orange_dsp::generated_condensed::update+0xbc0>
    d354: ed8d 6b2a    	vstr	d6, [sp, #168]
    d358: ee21 6b04    	vmul.f64	d6, d1, d4
    d35c: ee08 6b44    	vmls.f64	d6, d8, d4
    d360: ed9f 4bc7    	vldr	d4, [pc, #796]          @ 0xd680 <orange_dsp::generated_condensed::update+0xbd8>
    d364: ee21 3b04    	vmul.f64	d3, d1, d4
    d368: ee08 3b44    	vmls.f64	d3, d8, d4
    d36c: ed91 4a15    	vldr	s8, [r1, #84]
    d370: eeb7 8ac4    	vcvt.f64.f32	d8, s8
    d374: ed9f 1bc4    	vldr	d1, [pc, #784]          @ 0xd688 <orange_dsp::generated_condensed::update+0xbe0>
    d378: eeb0 4b45    	vmov.f64	d4, d5
    d37c: ee08 4b01    	vmla.f64	d4, d8, d1
    d380: ed9f 1b81    	vldr	d1, [pc, #516]          @ 0xd588 <orange_dsp::generated_condensed::update+0xae0>
    d384: ee35 8b01    	vadd.f64	d8, d5, d1
    d388: eeb0 1b45    	vmov.f64	d1, d5
    d38c: ee35 9b09    	vadd.f64	d9, d5, d9
    d390: ed9d 5b1c    	vldr	d5, [sp, #112]
    d394: ee31 5b05    	vadd.f64	d5, d1, d5
    d398: ed8d 5b1c    	vstr	d5, [sp, #112]
    d39c: ed9d 5b1a    	vldr	d5, [sp, #104]
    d3a0: ee31 0b00    	vadd.f64	d0, d1, d0
    d3a4: ee31 5b05    	vadd.f64	d5, d1, d5
    d3a8: ed8d 0b00    	vstr	d0, [sp]
    d3ac: ed91 0a16    	vldr	s0, [r1, #88]
    d3b0: ed8d 5b1a    	vstr	d5, [sp, #104]
    d3b4: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d3b8: ed9d 5b08    	vldr	d5, [sp, #32]
    d3bc: ee31 2b02    	vadd.f64	d2, d1, d2
    d3c0: ed8d 2b02    	vstr	d2, [sp, #8]
    d3c4: ed9f 2bb4    	vldr	d2, [pc, #720]          @ 0xd698 <orange_dsp::generated_condensed::update+0xbf0>
    d3c8: ee31 5b05    	vadd.f64	d5, d1, d5
    d3cc: ed8d 5b08    	vstr	d5, [sp, #32]
    d3d0: ee31 5b07    	vadd.f64	d5, d1, d7
    d3d4: eeb0 7b41    	vmov.f64	d7, d1
    d3d8: ee00 7b02    	vmla.f64	d7, d0, d2
    d3dc: ed92 0a07    	vldr	s0, [r2, #28]
    d3e0: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d3e4: ed9f 2baa    	vldr	d2, [pc, #680]          @ 0xd690 <orange_dsp::generated_condensed::update+0xbe8>
    d3e8: ee00 4b02    	vmla.f64	d4, d0, d2
    d3ec: ed9f 2bac    	vldr	d2, [pc, #688]          @ 0xd6a0 <orange_dsp::generated_condensed::update+0xbf8>
    d3f0: ee00 7b02    	vmla.f64	d7, d0, d2
    d3f4: ed92 0a00    	vldr	s0, [r2]
    d3f8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d3fc: ed9f 2b64    	vldr	d2, [pc, #400]          @ 0xd590 <orange_dsp::generated_condensed::update+0xae8>
    d400: ee31 ab0a    	vadd.f64	d10, d1, d10
    d404: ee31 bb0b    	vadd.f64	d11, d1, d11
    d408: ee31 cb0c    	vadd.f64	d12, d1, d12
    d40c: ee31 db0d    	vadd.f64	d13, d1, d13
    d410: ee31 eb0e    	vadd.f64	d14, d1, d14
    d414: ee31 fb0f    	vadd.f64	d15, d1, d15
    d418: ed9d 1b2c    	vldr	d1, [sp, #176]
    d41c: ee00 1b02    	vmla.f64	d1, d0, d2
    d420: ee38 0b00    	vadd.f64	d0, d8, d0
    d424: ed8d 5b04    	vstr	d5, [sp, #16]
    d428: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d42c: ed80 0a00    	vstr	s0, [r0]
    d430: ed9d 2b24    	vldr	d2, [sp, #144]
    d434: ed9d 5b22    	vldr	d5, [sp, #136]
    d438: ed9d 8b1c    	vldr	d8, [sp, #112]
    d43c: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    d440: ed80 0a01    	vstr	s0, [r0, #4]
    d444: ed9d 0b2e    	vldr	d0, [sp, #184]
    d448: ee39 2b02    	vadd.f64	d2, d9, d2
    d44c: ee38 8b05    	vadd.f64	d8, d8, d5
    d450: ed9d 5b20    	vldr	d5, [sp, #128]
    d454: ed9d 9b1a    	vldr	d9, [sp, #104]
    d458: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d45c: ed80 0a02    	vstr	s0, [r0, #8]
    d460: ee39 9b05    	vadd.f64	d9, d9, d5
    d464: ed9d 5b1e    	vldr	d5, [sp, #120]
    d468: ed9d 0b2a    	vldr	d0, [sp, #168]
    d46c: ee3a ab05    	vadd.f64	d10, d10, d5
    d470: ed9d 5b18    	vldr	d5, [sp, #96]
    d474: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d478: ed80 0a03    	vstr	s0, [r0, #12]
    d47c: ed9d 0b28    	vldr	d0, [sp, #160]
    d480: ee3b bb05    	vadd.f64	d11, d11, d5
    d484: ed9d 5b16    	vldr	d5, [sp, #88]
    d488: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d48c: ed80 0a04    	vstr	s0, [r0, #16]
    d490: ee3c cb05    	vadd.f64	d12, d12, d5
    d494: ed9d 5b14    	vldr	d5, [sp, #80]
    d498: ed9d 0b26    	vldr	d0, [sp, #152]
    d49c: ee3d db05    	vadd.f64	d13, d13, d5
    d4a0: ed9d 5b12    	vldr	d5, [sp, #72]
    d4a4: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d4a8: ed80 0a05    	vstr	s0, [r0, #20]
    d4ac: eeb7 0bc2    	vcvt.f32.f64	s0, d2
    d4b0: ed80 0a06    	vstr	s0, [r0, #24]
    d4b4: ee3e eb05    	vadd.f64	d14, d14, d5
    d4b8: ed9d 5b10    	vldr	d5, [sp, #64]
    d4bc: eeb7 0bc8    	vcvt.f32.f64	s0, d8
    d4c0: ed80 0a07    	vstr	s0, [r0, #28]
    d4c4: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    d4c8: ed80 0a08    	vstr	s0, [r0, #32]
    d4cc: ee3f 5b05    	vadd.f64	d5, d15, d5
    d4d0: eeb7 0bca    	vcvt.f32.f64	s0, d10
    d4d4: ed80 0a09    	vstr	s0, [r0, #36]
    d4d8: ed8d 5b24    	vstr	d5, [sp, #144]
    d4dc: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    d4e0: ed80 0a0a    	vstr	s0, [r0, #40]
    d4e4: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    d4e8: ed80 0a0b    	vstr	s0, [r0, #44]
    d4ec: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    d4f0: ed80 0a0c    	vstr	s0, [r0, #48]
    d4f4: eeb7 0bce    	vcvt.f32.f64	s0, d14
    d4f8: ed80 0a0d    	vstr	s0, [r0, #52]
    d4fc: ed9d 0b24    	vldr	d0, [sp, #144]
    d500: ed9d 5b0a    	vldr	d5, [sp, #40]
    d504: ed9d fb08    	vldr	d15, [sp, #32]
    d508: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d50c: ed80 0a0e    	vstr	s0, [r0, #56]
    d510: ed9d 0b0e    	vldr	d0, [sp, #56]
    d514: ee3f 5b05    	vadd.f64	d5, d15, d5
    d518: ed8d 5b2c    	vstr	d5, [sp, #176]
    d51c: ed9d 5b06    	vldr	d5, [sp, #24]
    d520: ed9d fb04    	vldr	d15, [sp, #16]
    d524: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d528: ed80 0a0f    	vstr	s0, [r0, #60]
    d52c: ed9d 0b0c    	vldr	d0, [sp, #48]
    d530: ee3f 5b05    	vadd.f64	d5, d15, d5
    d534: ed9d fb02    	vldr	d15, [sp, #8]
    d538: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d53c: ed80 0a10    	vstr	s0, [r0, #64]
    d540: ee3f 6b06    	vadd.f64	d6, d15, d6
    d544: ed9d fb00    	vldr	d15, [sp]
    d548: ed9d 0b2c    	vldr	d0, [sp, #176]
    d54c: ee3f 3b03    	vadd.f64	d3, d15, d3
    d550: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d554: ed80 0a11    	vstr	s0, [r0, #68]
    d558: eeb7 0bc5    	vcvt.f32.f64	s0, d5
    d55c: ed80 0a12    	vstr	s0, [r0, #72]
    d560: eeb7 0bc6    	vcvt.f32.f64	s0, d6
    d564: ed80 0a13    	vstr	s0, [r0, #76]
    d568: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    d56c: ed80 0a14    	vstr	s0, [r0, #80]
    d570: eeb7 0bc4    	vcvt.f32.f64	s0, d4
    d574: ed80 0a15    	vstr	s0, [r0, #84]
    d578: eeb7 0bc7    	vcvt.f32.f64	s0, d7
    d57c: ed80 0a16    	vstr	s0, [r0, #88]
    d580: b030         	add	sp, #0xc0
    d582: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    d586: bd80         	pop	{r7, pc}
		...
    d590: 00 e0 35 df  	.word	0xdf35e000
    d594: 12 5d 23 3f  	.word	0x3f235d12
    d598: 00 40 b2 d2  	.word	0xd2b24000
    d59c: 8e 3e f2 3e  	.word	0x3ef23e8e
    d5a0: 00 40 3c 73  	.word	0x733c4000
    d5a4: b9 32 02 3f  	.word	0x3f0232b9
    d5a8: 08 f7 83 70  	.word	0x7083f708
    d5ac: 57 67 a2 3f  	.word	0x3fa26757
    d5b0: 70 97 28 9d  	.word	0x9d289770
    d5b4: 67 5b b2 3f  	.word	0x3fb25b67
    d5b8: 00 18 07 f2  	.word	0xf2071800
    d5bc: 36 36 11 bf  	.word	0xbf113636
    d5c0: 00 2c 41 07  	.word	0x07412c00
    d5c4: 0d 2b 21 bf  	.word	0xbf212b0d
    d5c8: 00 11 6e ab  	.word	0xab6e1100
    d5cc: 66 c0 49 3f  	.word	0x3f49c066
    d5d0: 00 57 e3 c4  	.word	0xc4e35700
    d5d4: b2 af 59 3f  	.word	0x3f59afb2
    d5d8: 00 00 53 f5  	.word	0xf5530000
    d5dc: 24 27 eb 3e  	.word	0x3eeb2724
    d5e0: 00 00 83 5f  	.word	0x5f830000
    d5e4: 88 15 fb 3e  	.word	0x3efb1588
    d5e8: 30 b5 9f 60  	.word	0x609fb530
    d5ec: ab e5 d3 3f  	.word	0x3fd3e5ab
    d5f0: 3b cc c8 6a  	.word	0x6ac8cc3b
    d5f4: c2 ed a6 3f  	.word	0x3fa6edc2
    d5f8: c8 8f ef 10  	.word	0x10ef8fc8
    d5fc: 81 d8 dd bf  	.word	0xbfddd881
    d600: 28 3f 82 e4  	.word	0xe4823f28
    d604: 69 54 e5 3f  	.word	0x3fe55469
    d608: bf 80 ca 02  	.word	0x02ca80bf
    d60c: ca a2 ed 3e  	.word	0x3eeda2ca
    d610: e4 27 14 ca  	.word	0xca1427e4
    d614: 93 12 26 3f  	.word	0x3f261293
    d618: f7 82 13 a7  	.word	0xa71382f7
    d61c: 09 7c d7 bf  	.word	0xbfd77c09
    d620: 7b 84 3a 2a  	.word	0x2a3a847b
    d624: 5a 5f c0 3f  	.word	0x3fc05f5a
    d628: cc 5e bc b6  	.word	0xb6bc5ecc
    d62c: a2 bc e5 bf  	.word	0xbfe5bca2
    d630: 15 be b6 e5  	.word	0xe5b6be15
    d634: 6d 7e c0 3f  	.word	0x3fc07e6d
    d638: 00 90 99 b0  	.word	0xb0999000
    d63c: 0f 3d 03 bf  	.word	0xbf033d0f
    d640: 36 0c 56 03  	.word	0x03560c36
    d644: a1 54 e5 3f  	.word	0x3fe554a1
    d648: 00 60 f1 d0  	.word	0xd0f16000
    d64c: 95 1e 18 bf  	.word	0xbf181e95
    d650: 00 70 fc 18  	.word	0x18fc7000
    d654: 94 61 03 bf  	.word	0xbf036194
    d658: d2 4f d6 fa  	.word	0xfad64fd2
    d65c: 97 86 f2 be  	.word	0xbef28697
    d660: b5 2c 68 6e  	.word	0x6e682cb5
    d664: 31 53 e5 3f  	.word	0x3fe55331
    d668: 00 80 e7 1d  	.word	0x1de78000
    d66c: d3 ae 39 3f  	.word	0x3f39aed3
    d670: 00 d8 8b f9  	.word	0xf98bd800
    d674: 3d 28 27 bf  	.word	0xbf27283d
    d678: ca 9f ba 05  	.word	0x05ba9fca
    d67c: 70 52 e5 3f  	.word	0x3fe55270
    d680: 00 e4 28 7b  	.word	0x7b28e400
    d684: 2e 5e 31 3f  	.word	0x3f315e2e
    d688: 5d ef 75 b1  	.word	0xb175ef5d
    d68c: 41 55 e5 3f  	.word	0x3fe55541
    d690: 77 21 f7 18  	.word	0x18f72177
    d694: cf 75 ed 3e  	.word	0x3eed75cf
    d698: 21 8e 90 51  	.word	0x51908e21
    d69c: b7 61 83 3f  	.word	0x3f8361b7
    d6a0: ab 9c 16 b4  	.word	0xb4169cab
    d6a4: b5 8b ef 3f  	.word	0x3fef8bb5

0000d6a8 <__aeabi_memcpy4>:
    d6a8: 2a04         	cmp	r2, #0x4
    d6aa: d309         	blo	0xd6c0 <__aeabi_memcpy4+0x18> @ imm = #0x12
    d6ac: b5d0         	push	{r4, r6, r7, lr}
    d6ae: af02         	add	r7, sp, #0x8
    d6b0: f1a2 0e04    	sub.w	lr, r2, #0x4
    d6b4: ea6f 030e    	mvn.w	r3, lr
    d6b8: f013 0f0c    	tst.w	r3, #0xc
    d6bc: d106         	bne	0xd6cc <__aeabi_memcpy4+0x24> @ imm = #0xc
    d6be: e023         	b	0xd708 <__aeabi_memcpy4+0x60> @ imm = #0x46
    d6c0: 460b         	mov	r3, r1
    d6c2: 4684         	mov	r12, r0
    d6c4: 4660         	mov	r0, r12
    d6c6: 4619         	mov	r1, r3
    d6c8: f000 b83c    	b.w	0xd744 <compiler_builtins::mem::memcpy> @ imm = #0x78
    d6cc: 460b         	mov	r3, r1
    d6ce: 4684         	mov	r12, r0
    d6d0: f853 4b04    	ldr	r4, [r3], #4
    d6d4: f01e 0f0c    	tst.w	lr, #0xc
    d6d8: f84c 4b04    	str	r4, [r12], #4
    d6dc: d009         	beq	0xd6f2 <__aeabi_memcpy4+0x4a> @ imm = #0x12
    d6de: 684b         	ldr	r3, [r1, #0x4]
    d6e0: 6043         	str	r3, [r0, #0x4]
    d6e2: f00e 030c    	and	r3, lr, #0xc
    d6e6: 2b04         	cmp	r3, #0x4
    d6e8: d107         	bne	0xd6fa <__aeabi_memcpy4+0x52> @ imm = #0xe
    d6ea: 3a08         	subs	r2, #0x8
    d6ec: 3108         	adds	r1, #0x8
    d6ee: 3008         	adds	r0, #0x8
    d6f0: e008         	b	0xd704 <__aeabi_memcpy4+0x5c> @ imm = #0x10
    d6f2: 4672         	mov	r2, lr
    d6f4: 4660         	mov	r0, r12
    d6f6: 4619         	mov	r1, r3
    d6f8: e006         	b	0xd708 <__aeabi_memcpy4+0x60> @ imm = #0xc
    d6fa: 688b         	ldr	r3, [r1, #0x8]
    d6fc: 3a0c         	subs	r2, #0xc
    d6fe: 6083         	str	r3, [r0, #0x8]
    d700: 310c         	adds	r1, #0xc
    d702: 300c         	adds	r0, #0xc
    d704: 4684         	mov	r12, r0
    d706: 460b         	mov	r3, r1
    d708: f1be 0f0c    	cmp.w	lr, #0xc
    d70c: d314         	blo	0xd738 <__aeabi_memcpy4+0x90> @ imm = #0x28
    d70e: 4684         	mov	r12, r0
    d710: 460b         	mov	r3, r1
    d712: 6818         	ldr	r0, [r3]
    d714: 3a10         	subs	r2, #0x10
    d716: f8cc 0000    	str.w	r0, [r12]
    d71a: 2a03         	cmp	r2, #0x3
    d71c: 6858         	ldr	r0, [r3, #0x4]
    d71e: f8cc 0004    	str.w	r0, [r12, #0x4]
    d722: 6898         	ldr	r0, [r3, #0x8]
    d724: f8cc 0008    	str.w	r0, [r12, #0x8]
    d728: 68d8         	ldr	r0, [r3, #0xc]
    d72a: f103 0310    	add.w	r3, r3, #0x10
    d72e: f8cc 000c    	str.w	r0, [r12, #0xc]
    d732: f10c 0c10    	add.w	r12, r12, #0x10
    d736: d8ec         	bhi	0xd712 <__aeabi_memcpy4+0x6a> @ imm = #-0x28
    d738: e8bd 40d0    	pop.w	{r4, r6, r7, lr}
    d73c: 4660         	mov	r0, r12
    d73e: 4619         	mov	r1, r3
    d740: f000 b800    	b.w	0xd744 <compiler_builtins::mem::memcpy> @ imm = #0x0

0000d744 <compiler_builtins::mem::memcpy>:
    d744: b5f0         	push	{r4, r5, r6, r7, lr}
    d746: af03         	add	r7, sp, #0xc
    d748: e92d 0f00    	push.w	{r8, r9, r10, r11}
    d74c: b089         	sub	sp, #0x24
    d74e: 4680         	mov	r8, r0
    d750: 2a10         	cmp	r2, #0x10
    d752: d321         	blo	0xd798 <compiler_builtins::mem::memcpy+0x54> @ imm = #0x42
    d754: f1c8 0000    	rsb.w	r0, r8, #0x0
    d758: f000 0a03    	and	r10, r0, #0x3
    d75c: eb08 030a    	add.w	r3, r8, r10
    d760: 4598         	cmp	r8, r3
    d762: d237         	bhs	0xd7d4 <compiler_builtins::mem::memcpy+0x90> @ imm = #0x6e
    d764: f1aa 0601    	sub.w	r6, r10, #0x1
    d768: 4644         	mov	r4, r8
    d76a: 460d         	mov	r5, r1
    d76c: f1ba 0f00    	cmp.w	r10, #0x0
    d770: d01f         	beq	0xd7b2 <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x3e
    d772: 460d         	mov	r5, r1
    d774: 4644         	mov	r4, r8
    d776: f815 0b01    	ldrb	r0, [r5], #1
    d77a: f1ba 0f01    	cmp.w	r10, #0x1
    d77e: f804 0b01    	strb	r0, [r4], #1
    d782: d016         	beq	0xd7b2 <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x2c
    d784: 7848         	ldrb	r0, [r1, #0x1]
    d786: f1ba 0f02    	cmp.w	r10, #0x2
    d78a: f888 0001    	strb.w	r0, [r8, #0x1]
    d78e: d10a         	bne	0xd7a6 <compiler_builtins::mem::memcpy+0x62> @ imm = #0x14
    d790: 1c8d         	adds	r5, r1, #0x2
    d792: f108 0402    	add.w	r4, r8, #0x2
    d796: e00c         	b	0xd7b2 <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x18
    d798: 46c4         	mov	r12, r8
    d79a: eb0c 0302    	add.w	r3, r12, r2
    d79e: 459c         	cmp	r12, r3
    d7a0: f0c0 80e3    	blo.w	0xd96a <compiler_builtins::mem::memcpy+0x226> @ imm = #0x1c6
    d7a4: e10b         	b	0xd9be <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x216
    d7a6: 1ccd         	adds	r5, r1, #0x3
    d7a8: f108 0403    	add.w	r4, r8, #0x3
    d7ac: 7888         	ldrb	r0, [r1, #0x2]
    d7ae: f888 0002    	strb.w	r0, [r8, #0x2]
    d7b2: 2e03         	cmp	r6, #0x3
    d7b4: d30e         	blo	0xd7d4 <compiler_builtins::mem::memcpy+0x90> @ imm = #0x1c
    d7b6: 1f2e         	subs	r6, r5, #0x4
    d7b8: 1f25         	subs	r5, r4, #0x4
    d7ba: f816 0f04    	ldrb	r0, [r6, #4]!
    d7be: f805 0f04    	strb	r0, [r5, #4]!
    d7c2: 7870         	ldrb	r0, [r6, #0x1]
    d7c4: 7068         	strb	r0, [r5, #0x1]
    d7c6: 78b0         	ldrb	r0, [r6, #0x2]
    d7c8: 70a8         	strb	r0, [r5, #0x2]
    d7ca: 78f0         	ldrb	r0, [r6, #0x3]
    d7cc: 70e8         	strb	r0, [r5, #0x3]
    d7ce: 1d28         	adds	r0, r5, #0x4
    d7d0: 4298         	cmp	r0, r3
    d7d2: d1f2         	bne	0xd7ba <compiler_builtins::mem::memcpy+0x76> @ imm = #-0x1c
    d7d4: eba2 0b0a    	sub.w	r11, r2, r10
    d7d8: eb01 040a    	add.w	r4, r1, r10
    d7dc: f02b 0203    	bic	r2, r11, #0x3
    d7e0: f014 0003    	ands	r0, r4, #0x3
    d7e4: eb03 0c02    	add.w	r12, r3, r2
    d7e8: d063         	beq	0xd8b2 <compiler_builtins::mem::memcpy+0x16e> @ imm = #0xc6
    d7ea: f04f 0900    	mov.w	r9, #0x0
    d7ee: f1c0 0604    	rsb.w	r6, r0, #0x4
    d7f2: 9204         	str	r2, [sp, #0x10]
    d7f4: aa08         	add	r2, sp, #0x20
    d7f6: f8cd 9020    	str.w	r9, [sp, #0x20]
    d7fa: 4402         	add	r2, r0
    d7fc: 07f5         	lsls	r5, r6, #0x1f
    d7fe: bf1e         	ittt	ne
    d800: 7825         	ldrbne	r5, [r4]
    d802: 7015         	strbne	r5, [r2]
    d804: f04f 0901    	movne.w	r9, #0x1
    d808: 07b6         	lsls	r6, r6, #0x1e
    d80a: bf44         	itt	mi
    d80c: f834 6009    	ldrhmi.w	r6, [r4, r9]
    d810: f822 6009    	strhmi.w	r6, [r2, r9]
    d814: 1a25         	subs	r5, r4, r0
    d816: 9405         	str	r4, [sp, #0x14]
    d818: 1d1c         	adds	r4, r3, #0x4
    d81a: 9a08         	ldr	r2, [sp, #0x20]
    d81c: ea4f 0ec0    	lsl.w	lr, r0, #0x3
    d820: 4564         	cmp	r4, r12
    d822: f1ce 0400    	rsb.w	r4, lr, #0x0
    d826: e9cd 0402    	strd	r0, r4, [sp, #8]
    d82a: d25b         	bhs	0xd8e4 <compiler_builtins::mem::memcpy+0x1a0> @ imm = #0xb6
    d82c: 4243         	rsbs	r3, r0, #0
    d82e: 4646         	mov	r6, r8
    d830: f8cd b000    	str.w	r11, [sp]
    d834: eb01 0803    	add.w	r8, r1, r3
    d838: f004 0b18    	and	r11, r4, #0x18
    d83c: 9601         	str	r6, [sp, #0x4]
    d83e: eb08 050a    	add.w	r5, r8, r10
    d842: eb06 040a    	add.w	r4, r6, r10
    d846: fa22 f10e    	lsr.w	r1, r2, lr
    d84a: f8d5 9004    	ldr.w	r9, [r5, #0x4]
    d84e: fa09 f20b    	lsl.w	r2, r9, r11
    d852: 4311         	orrs	r1, r2
    d854: 4622         	mov	r2, r4
    d856: f842 1b08    	str	r1, [r2], #8
    d85a: 4562         	cmp	r2, r12
    d85c: d244         	bhs	0xd8e8 <compiler_builtins::mem::memcpy+0x1a4> @ imm = #0x88
    d85e: 68a9         	ldr	r1, [r5, #0x8]
    d860: fa29 f30e    	lsr.w	r3, r9, lr
    d864: fa01 f00b    	lsl.w	r0, r1, r11
    d868: 4318         	orrs	r0, r3
    d86a: f104 030c    	add.w	r3, r4, #0xc
    d86e: 4563         	cmp	r3, r12
    d870: 6060         	str	r0, [r4, #0x4]
    d872: d23c         	bhs	0xd8ee <compiler_builtins::mem::memcpy+0x1aa> @ imm = #0x78
    d874: f8d5 900c    	ldr.w	r9, [r5, #0xc]
    d878: fa21 f00e    	lsr.w	r0, r1, lr
    d87c: fa09 f10b    	lsl.w	r1, r9, r11
    d880: 4308         	orrs	r0, r1
    d882: 6010         	str	r0, [r2]
    d884: f104 0010    	add.w	r0, r4, #0x10
    d888: 4560         	cmp	r0, r12
    d88a: d235         	bhs	0xd8f8 <compiler_builtins::mem::memcpy+0x1b4> @ imm = #0x6a
    d88c: 692a         	ldr	r2, [r5, #0x10]
    d88e: fa29 f00e    	lsr.w	r0, r9, lr
    d892: 3610         	adds	r6, #0x10
    d894: f108 0810    	add.w	r8, r8, #0x10
    d898: fa02 f10b    	lsl.w	r1, r2, r11
    d89c: 4308         	orrs	r0, r1
    d89e: 6018         	str	r0, [r3]
    d8a0: eb06 030a    	add.w	r3, r6, r10
    d8a4: 1d18         	adds	r0, r3, #0x4
    d8a6: 4560         	cmp	r0, r12
    d8a8: d3c9         	blo	0xd83e <compiler_builtins::mem::memcpy+0xfa> @ imm = #-0x6e
    d8aa: eb08 050a    	add.w	r5, r8, r10
    d8ae: 4691         	mov	r9, r2
    d8b0: e023         	b	0xd8fa <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x46
    d8b2: 4563         	cmp	r3, r12
    d8b4: d252         	bhs	0xd95c <compiler_builtins::mem::memcpy+0x218> @ imm = #0xa4
    d8b6: 4621         	mov	r1, r4
    d8b8: 6808         	ldr	r0, [r1]
    d8ba: f843 0b04    	str	r0, [r3], #4
    d8be: 4563         	cmp	r3, r12
    d8c0: d24c         	bhs	0xd95c <compiler_builtins::mem::memcpy+0x218> @ imm = #0x98
    d8c2: 6848         	ldr	r0, [r1, #0x4]
    d8c4: f843 0b04    	str	r0, [r3], #4
    d8c8: 4563         	cmp	r3, r12
    d8ca: bf3e         	ittt	lo
    d8cc: 6888         	ldrlo	r0, [r1, #0x8]
    d8ce: f843 0b04    	strlo	r0, [r3], #4
    d8d2: 4563         	cmplo	r3, r12
    d8d4: d242         	bhs	0xd95c <compiler_builtins::mem::memcpy+0x218> @ imm = #0x84
    d8d6: 68c8         	ldr	r0, [r1, #0xc]
    d8d8: 3110         	adds	r1, #0x10
    d8da: f843 0b04    	str	r0, [r3], #4
    d8de: 4563         	cmp	r3, r12
    d8e0: d3ea         	blo	0xd8b8 <compiler_builtins::mem::memcpy+0x174> @ imm = #-0x2c
    d8e2: e03b         	b	0xd95c <compiler_builtins::mem::memcpy+0x218> @ imm = #0x76
    d8e4: 4691         	mov	r9, r2
    d8e6: e00a         	b	0xd8fe <compiler_builtins::mem::memcpy+0x1ba> @ imm = #0x14
    d8e8: 3504         	adds	r5, #0x4
    d8ea: 1d23         	adds	r3, r4, #0x4
    d8ec: e005         	b	0xd8fa <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0xa
    d8ee: 3508         	adds	r5, #0x8
    d8f0: f104 0308    	add.w	r3, r4, #0x8
    d8f4: 4689         	mov	r9, r1
    d8f6: e000         	b	0xd8fa <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x0
    d8f8: 350c         	adds	r5, #0xc
    d8fa: e9dd b800    	ldrd	r11, r8, [sp]
    d8fe: 9802         	ldr	r0, [sp, #0x8]
    d900: 2200         	movs	r2, #0x0
    d902: f88d 201c    	strb.w	r2, [sp, #0x1c]
    d906: 2801         	cmp	r0, #0x1
    d908: f807 2c26    	strb	r2, [r7, #-38]
    d90c: d10e         	bne	0xd92c <compiler_builtins::mem::memcpy+0x1e8> @ imm = #0x1c
    d90e: ae07         	add	r6, sp, #0x1c
    d910: 2400         	movs	r4, #0x0
    d912: 2000         	movs	r0, #0x0
    d914: 9905         	ldr	r1, [sp, #0x14]
    d916: 07c9         	lsls	r1, r1, #0x1f
    d918: d013         	beq	0xd942 <compiler_builtins::mem::memcpy+0x1fe> @ imm = #0x26
    d91a: 1d29         	adds	r1, r5, #0x4
    d91c: 5c08         	ldrb	r0, [r1, r0]
    d91e: 7030         	strb	r0, [r6]
    d920: f817 0c26    	ldrb	r0, [r7, #-38]
    d924: f89d 201c    	ldrb.w	r2, [sp, #0x1c]
    d928: 0400         	lsls	r0, r0, #0x10
    d92a: e00b         	b	0xd944 <compiler_builtins::mem::memcpy+0x200> @ imm = #0x16
    d92c: 7968         	ldrb	r0, [r5, #0x5]
    d92e: f1a7 0626    	sub.w	r6, r7, #0x26
    d932: 792a         	ldrb	r2, [r5, #0x4]
    d934: f88d 201c    	strb.w	r2, [sp, #0x1c]
    d938: 0204         	lsls	r4, r0, #0x8
    d93a: 2002         	movs	r0, #0x2
    d93c: 9905         	ldr	r1, [sp, #0x14]
    d93e: 07c9         	lsls	r1, r1, #0x1f
    d940: d1eb         	bne	0xd91a <compiler_builtins::mem::memcpy+0x1d6> @ imm = #-0x2a
    d942: 2000         	movs	r0, #0x0
    d944: 4320         	orrs	r0, r4
    d946: fa29 f10e    	lsr.w	r1, r9, lr
    d94a: 4310         	orrs	r0, r2
    d94c: 9a03         	ldr	r2, [sp, #0xc]
    d94e: f002 0218    	and	r2, r2, #0x18
    d952: 4090         	lsls	r0, r2
    d954: e9dd 2404    	ldrd	r2, r4, [sp, #16]
    d958: 4308         	orrs	r0, r1
    d95a: 6018         	str	r0, [r3]
    d95c: 18a1         	adds	r1, r4, r2
    d95e: f00b 0203    	and	r2, r11, #0x3
    d962: eb0c 0302    	add.w	r3, r12, r2
    d966: 459c         	cmp	r12, r3
    d968: d229         	bhs	0xd9be <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x52
    d96a: 1e56         	subs	r6, r2, #0x1
    d96c: f012 0003    	ands	r0, r2, #0x3
    d970: d012         	beq	0xd998 <compiler_builtins::mem::memcpy+0x254> @ imm = #0x24
    d972: 460a         	mov	r2, r1
    d974: 4665         	mov	r5, r12
    d976: f812 4b01    	ldrb	r4, [r2], #1
    d97a: 2801         	cmp	r0, #0x1
    d97c: f805 4b01    	strb	r4, [r5], #1
    d980: d00c         	beq	0xd99c <compiler_builtins::mem::memcpy+0x258> @ imm = #0x18
    d982: 784a         	ldrb	r2, [r1, #0x1]
    d984: 2802         	cmp	r0, #0x2
    d986: f88c 2001    	strb.w	r2, [r12, #0x1]
    d98a: d11d         	bne	0xd9c8 <compiler_builtins::mem::memcpy+0x284> @ imm = #0x3a
    d98c: 1c8a         	adds	r2, r1, #0x2
    d98e: f10c 0502    	add.w	r5, r12, #0x2
    d992: 2e03         	cmp	r6, #0x3
    d994: d204         	bhs	0xd9a0 <compiler_builtins::mem::memcpy+0x25c> @ imm = #0x8
    d996: e012         	b	0xd9be <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x24
    d998: 4665         	mov	r5, r12
    d99a: 460a         	mov	r2, r1
    d99c: 2e03         	cmp	r6, #0x3
    d99e: d30e         	blo	0xd9be <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x1c
    d9a0: 1f11         	subs	r1, r2, #0x4
    d9a2: 1f2a         	subs	r2, r5, #0x4
    d9a4: f811 0f04    	ldrb	r0, [r1, #4]!
    d9a8: f802 0f04    	strb	r0, [r2, #4]!
    d9ac: 7848         	ldrb	r0, [r1, #0x1]
    d9ae: 7050         	strb	r0, [r2, #0x1]
    d9b0: 7888         	ldrb	r0, [r1, #0x2]
    d9b2: 7090         	strb	r0, [r2, #0x2]
    d9b4: 78c8         	ldrb	r0, [r1, #0x3]
    d9b6: 70d0         	strb	r0, [r2, #0x3]
    d9b8: 1d10         	adds	r0, r2, #0x4
    d9ba: 4298         	cmp	r0, r3
    d9bc: d1f2         	bne	0xd9a4 <compiler_builtins::mem::memcpy+0x260> @ imm = #-0x1c
    d9be: 4640         	mov	r0, r8
    d9c0: b009         	add	sp, #0x24
    d9c2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    d9c6: bdf0         	pop	{r4, r5, r6, r7, pc}
    d9c8: 1cca         	adds	r2, r1, #0x3
    d9ca: f10c 0503    	add.w	r5, r12, #0x3
    d9ce: 7888         	ldrb	r0, [r1, #0x2]
    d9d0: f88c 0002    	strb.w	r0, [r12, #0x2]
    d9d4: 2e03         	cmp	r6, #0x3
    d9d6: d2e3         	bhs	0xd9a0 <compiler_builtins::mem::memcpy+0x25c> @ imm = #-0x3a
    d9d8: e7f1         	b	0xd9be <compiler_builtins::mem::memcpy+0x27a> @ imm = #-0x1e

0000d9da <__aeabi_memclr4>:
    d9da: b580         	push	{r7, lr}
    d9dc: 466f         	mov	r7, sp
    d9de: 2904         	cmp	r1, #0x4
    d9e0: d305         	blo	0xd9ee <__aeabi_memclr4+0x14> @ imm = #0xa
    d9e2: 1f0b         	subs	r3, r1, #0x4
    d9e4: 43da         	mvns	r2, r3
    d9e6: f012 0f0c    	tst.w	r2, #0xc
    d9ea: d102         	bne	0xd9f2 <__aeabi_memclr4+0x18> @ imm = #0x4
    d9ec: e01a         	b	0xda24 <__aeabi_memclr4+0x4a> @ imm = #0x34
    d9ee: 4602         	mov	r2, r0
    d9f0: e024         	b	0xda3c <__aeabi_memclr4+0x62> @ imm = #0x48
    d9f2: f04f 0c00    	mov.w	r12, #0x0
    d9f6: 4602         	mov	r2, r0
    d9f8: f842 cb04    	str	r12, [r2], #4
    d9fc: f013 0f0c    	tst.w	r3, #0xc
    da00: d008         	beq	0xda14 <__aeabi_memclr4+0x3a> @ imm = #0x10
    da02: f003 020c    	and	r2, r3, #0xc
    da06: f8c0 c004    	str.w	r12, [r0, #0x4]
    da0a: 2a04         	cmp	r2, #0x4
    da0c: d105         	bne	0xda1a <__aeabi_memclr4+0x40> @ imm = #0xa
    da0e: 3908         	subs	r1, #0x8
    da10: 3008         	adds	r0, #0x8
    da12: e006         	b	0xda22 <__aeabi_memclr4+0x48> @ imm = #0xc
    da14: 4619         	mov	r1, r3
    da16: 4610         	mov	r0, r2
    da18: e004         	b	0xda24 <__aeabi_memclr4+0x4a> @ imm = #0x8
    da1a: 2200         	movs	r2, #0x0
    da1c: 390c         	subs	r1, #0xc
    da1e: 6082         	str	r2, [r0, #0x8]
    da20: 300c         	adds	r0, #0xc
    da22: 4602         	mov	r2, r0
    da24: 2b0c         	cmp	r3, #0xc
    da26: d309         	blo	0xda3c <__aeabi_memclr4+0x62> @ imm = #0x12
    da28: 2300         	movs	r3, #0x0
    da2a: 4602         	mov	r2, r0
    da2c: 3910         	subs	r1, #0x10
    da2e: e9c2 3300    	strd	r3, r3, [r2]
    da32: e9c2 3302    	strd	r3, r3, [r2, #8]
    da36: 3210         	adds	r2, #0x10
    da38: 2903         	cmp	r1, #0x3
    da3a: d8f7         	bhi	0xda2c <__aeabi_memclr4+0x52> @ imm = #-0x12
    da3c: 1850         	adds	r0, r2, r1
    da3e: 4282         	cmp	r2, r0
    da40: d221         	bhs	0xda86 <__aeabi_memclr4+0xac> @ imm = #0x42
    da42: f1a1 0c01    	sub.w	r12, r1, #0x1
    da46: f011 0303    	ands	r3, r1, #0x3
    da4a: d00c         	beq	0xda66 <__aeabi_memclr4+0x8c> @ imm = #0x18
    da4c: f04f 0e00    	mov.w	lr, #0x0
    da50: 4611         	mov	r1, r2
    da52: f801 eb01    	strb	lr, [r1], #1
    da56: 2b01         	cmp	r3, #0x1
    da58: d00a         	beq	0xda70 <__aeabi_memclr4+0x96> @ imm = #0x14
    da5a: 2b02         	cmp	r3, #0x2
    da5c: f882 e001    	strb.w	lr, [r2, #0x1]
    da60: d103         	bne	0xda6a <__aeabi_memclr4+0x90> @ imm = #0x6
    da62: 1c91         	adds	r1, r2, #0x2
    da64: e004         	b	0xda70 <__aeabi_memclr4+0x96> @ imm = #0x8
    da66: 4611         	mov	r1, r2
    da68: e002         	b	0xda70 <__aeabi_memclr4+0x96> @ imm = #0x4
    da6a: 2100         	movs	r1, #0x0
    da6c: 7091         	strb	r1, [r2, #0x2]
    da6e: 1cd1         	adds	r1, r2, #0x3
    da70: f1bc 0f03    	cmp.w	r12, #0x3
    da74: bf38         	it	lo
    da76: bd80         	poplo	{r7, pc}
    da78: 3904         	subs	r1, #0x4
    da7a: 2200         	movs	r2, #0x0
    da7c: f841 2f04    	str	r2, [r1, #4]!
    da80: 1d0b         	adds	r3, r1, #0x4
    da82: 4283         	cmp	r3, r0
    da84: d1fa         	bne	0xda7c <__aeabi_memclr4+0xa2> @ imm = #-0xc
    da86: bd80         	pop	{r7, pc}
    da88: 726f         	strb	r7, [r5, #0x9]
    da8a: 6e61         	ldr	r1, [r4, #0x64]
    da8c: 6567         	str	r7, [r4, #0x54]
    da8e: 642d         	str	r5, [r5, #0x40]
    da90: 7073         	strb	r3, [r6, #0x1]
    da92: 732f         	strb	r7, [r5, #0xc]
    da94: 6372         	str	r2, [r6, #0x34]
    da96: 722f         	strb	r7, [r5, #0x8]
    da98: 7065         	strb	r5, [r4, #0x1]
    da9a: 6165         	str	r5, [r4, #0x14]
    da9c: 6574         	str	r4, [r6, #0x54]
    da9e: 2e64         	cmp	r6, #0x64
    daa0: 7372         	strb	r2, [r6, #0xd]
    daa2: 2400         	movs	r4, #0x0
    daa4: 696d         	ldr	r5, [r5, #0x14]
    daa6: 206e         	movs	r0, #0x6e
    daa8: 203e         	movs	r0, #0x3e
    daaa: 616d         	str	r5, [r5, #0x14]
    daac: 2c78         	cmp	r4, #0x78
    daae: 6f20         	ldr	r0, [r4, #0x70]
    dab0: 2072         	movs	r0, #0x72
    dab2: 6965         	ldr	r5, [r4, #0x14]
    dab4: 6874         	ldr	r4, [r6, #0x4]
    dab6: 7265         	strb	r5, [r4, #0x9]
    dab8: 7720         	strb	r0, [r4, #0x1c]
    daba: 7361         	strb	r1, [r4, #0xd]
    dabc: 4e20         	ldr	r6, [pc, #0x80]         @ 0xdb40 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.2+0x7>
    dabe: 4e61         	ldr	r6, [pc, #0x184]        @ 0xdc44 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.3+0xdc>
    dac0: 202e         	movs	r0, #0x2e
    dac2: 696d         	ldr	r5, [r5, #0x14]
    dac4: 206e         	movs	r0, #0x6e
    dac6: 203d         	movs	r0, #0x3d
    dac8: 08c0         	lsrs	r0, r0, #0x3
    daca: 202c         	movs	r0, #0x2c
    dacc: 616d         	str	r5, [r5, #0x14]
    dace: 2078         	movs	r0, #0x78
    dad0: 203d         	movs	r0, #0x3d
    dad2: 00c0         	lsls	r0, r0, #0x3
    dad4: 722f         	strb	r7, [r5, #0x8]
    dad6: 7375         	strb	r5, [r6, #0xd]
    dad8: 6374         	str	r4, [r6, #0x34]
    dada: 342f         	adds	r4, #0x2f
    dadc: 6138         	str	r0, [r7, #0x10]
    dade: 3232         	adds	r2, #0x32
    dae0: 6339         	str	r1, [r7, #0x30]
    dae2: 6165         	str	r5, [r4, #0x14]
    dae4: 6665         	str	r5, [r4, #0x64]
    dae6: 3464         	adds	r4, #0x64
    dae8: 3839         	subs	r0, #0x39
    daea: 6335         	str	r5, [r6, #0x30]
    daec: 3035         	adds	r0, #0x35
    daee: 3939         	subs	r1, #0x39
    daf0: 6230         	str	r0, [r6, #0x20]
    daf2: 3431         	adds	r4, #0x31
    daf4: 3131         	adds	r1, #0x31
    daf6: 6236         	str	r6, [r6, #0x20]
    daf8: 6436         	str	r6, [r6, #0x40]
    dafa: 3538         	adds	r5, #0x38
    dafc: 6136         	str	r6, [r6, #0x10]
    dafe: 3066         	adds	r0, #0x66
    db00: 3839         	subs	r0, #0x39
    db02: 2f35         	cmp	r7, #0x35
    db04: 696c         	ldr	r4, [r5, #0x14]
    db06: 7262         	strb	r2, [r4, #0x9]
    db08: 7261         	strb	r1, [r4, #0x9]
    db0a: 2f79         	cmp	r7, #0x79
    db0c: 6f63         	ldr	r3, [r4, #0x74]
    db0e: 6572         	str	r2, [r6, #0x54]
    db10: 732f         	strb	r7, [r5, #0xc]
    db12: 6372         	str	r2, [r6, #0x34]
    db14: 6e2f         	ldr	r7, [r5, #0x60]
    db16: 6d75         	ldr	r5, [r6, #0x54]
    db18: 662f         	str	r7, [r5, #0x60]
    db1a: 3233         	adds	r2, #0x33
    db1c: 722e         	strb	r6, [r5, #0x8]
    db1e: 0073         	lsls	r3, r6, #0x1
    db20: 726f         	strb	r7, [r5, #0x9]
    db22: 6e61         	ldr	r1, [r4, #0x64]
    db24: 6567         	str	r7, [r4, #0x54]
    db26: 642d         	str	r5, [r5, #0x40]
    db28: 7073         	strb	r3, [r6, #0x1]
    db2a: 732f         	strb	r7, [r5, #0xc]
    db2c: 6372         	str	r2, [r6, #0x34]
    db2e: 702f         	strb	r7, [r5]
    db30: 6361         	str	r1, [r4, #0x34]
    db32: 656b         	str	r3, [r5, #0x54]
    db34: 2e64         	cmp	r6, #0x64
    db36: 7372         	strb	r2, [r6, #0xd]
    db38: 6900         	ldr	r0, [r0, #0x10]

0000db39 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.2>:
    db39: 69 6e 74 65 72 6e 61 6c         internal
    db41: 20 65 72 72 6f 72 3a 20          error: 
    db49: 65 6e 74 65 72 65 64 20         entered 
    db51: 75 6e 72 65 61 63 68 61         unreacha
    db59: 62 6c 65 20 63 6f 64 65         ble code
    db61: d4 d4 d4 d4 d4 d4 d4            .......

0000db68 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.3>:
    db68: 80 e5 70 28 a1 3a 03 bf         ..p(.:..
    db70: 00 00 00 00 00 00 00 00         ........
    db78: 00 00 00 00 00 00 00 00         ........
    db80: 00 00 00 00 00 00 00 00         ........
    db88: 00 00 00 00 00 00 00 00         ........
    db90: 00 00 00 00 00 00 00 00         ........
    db98: 00 00 00 00 00 00 00 00         ........
    dba0: 00 00 00 00 00 00 00 00         ........
    dba8: 00 00 00 00 00 00 00 00         ........
    dbb0: 00 f0 e6 61 55 15 14 bf         ...aU...
    dbb8: 00 00 00 00 00 00 00 00         ........
    dbc0: 00 00 00 00 00 00 00 00         ........
    dbc8: 00 00 00 00 00 00 00 00         ........
    dbd0: 00 00 00 00 00 00 00 00         ........
    dbd8: 00 00 00 00 00 00 00 00         ........
    dbe0: 00 00 00 00 00 00 00 00         ........
    dbe8: 00 00 00 00 00 00 00 00         ........
    dbf0: 00 00 00 00 00 00 00 00         ........
    dbf8: 00 50 66 db 76 ec 1e bf         .Pf.v...
    dc00: 0f 97 9b b4 e8 75 16 3f         .....u.?
    dc08: 00 00 00 00 00 00 00 00         ........
    dc10: 00 00 00 00 00 00 00 00         ........
    dc18: 00 00 00 00 00 00 00 00         ........
    dc20: 00 00 00 00 00 00 00 00         ........
    dc28: 00 00 00 00 00 00 00 00         ........
    dc30: 00 00 00 00 00 00 00 00         ........
    dc38: e0 96 9b b4 e8 75 16 3f         .....u.?
    dc40: 32 e2 b6 04 2a ad 22 bf         2...*.".
    dc48: 00 00 00 00 00 00 00 00         ........
    dc50: 00 00 00 00 00 00 00 00         ........
    dc58: 00 00 00 00 00 00 00 00         ........
    dc60: 00 00 00 00 00 00 00 00         ........
    dc68: 00 00 00 00 00 00 00 00         ........
    dc70: 00 00 00 00 00 00 00 00         ........
    dc78: 00 00 00 00 00 00 00 00         ........
    dc80: 00 00 00 00 00 00 00 00         ........
    dc88: 61 05 bc 57 10 d8 12 bf         a..W....
    dc90: 58 62 94 b9 1a 9f dc 3e         Xb.....>
    dc98: 00 00 00 00 00 00 00 00         ........
    dca0: 00 00 00 00 00 00 00 00         ........
    dca8: 00 00 00 00 00 00 00 00         ........
    dcb0: 00 00 00 00 00 00 00 00         ........
    dcb8: 00 00 00 00 00 00 00 00         ........
    dcc0: 00 00 00 00 00 00 00 00         ........
    dcc8: 59 62 94 b9 1a 9f dc 3e         Yb.....>
    dcd0: 14 90 51 d1 d5 fc 24 bf         ..Q...$.
    dcd8: 14 d0 fe 14 cf 45 20 3f         .....E ?
    dce0: 00 00 00 00 00 00 00 00         ........
    dce8: 00 00 00 00 00 00 00 00         ........
    dcf0: 00 00 00 00 00 00 00 00         ........
    dcf8: 00 00 00 00 00 00 00 00         ........
    dd00: 00 00 00 00 00 00 00 00         ........
    dd08: 00 00 00 00 00 00 00 00         ........
    dd10: d2 ce fe 14 cf 45 20 3f         .....E ?
    dd18: d2 ce fe 14 cf 45 20 bf         .....E .
    dd20: 00 00 00 00 00 00 00 00         ........
    dd28: 00 00 00 00 00 00 00 00         ........
    dd30: 00 00 00 00 00 00 00 00         ........
    dd38: 00 00 00 00 00 00 00 00         ........
    dd40: 00 00 00 00 00 00 00 00         ........
    dd48: 00 00 00 00 00 00 00 00         ........
    dd50: 00 00 00 00 00 00 00 00         ........
    dd58: 00 00 00 00 00 00 00 00         ........
    dd60: 42 6f 24 95 d9 83 c5 bf         Bo$.....
    dd68: a2 0c d2 2e ca fe ef 3f         .......?
    dd70: 1f 89 9b cf ab 32 9c bf         .....2..
    dd78: 00 00 00 00 00 00 00 00         ........
    dd80: 00 00 00 00 00 00 00 00         ........
    dd88: 00 00 00 00 00 00 00 00         ........
    dd90: 00 00 00 00 00 00 00 00         ........
    dd98: 00 00 00 00 00 00 00 00         ........
    dda0: 00 00 00 00 00 00 00 00         ........
    dda8: 00 00 00 00 00 00 00 00         ........
    ddb0: a5 94 a7 50 09 2c d5 3f         ...P.,.?
    ddb8: 9c 9e 91 65 97 57 e8 bf         ...e.W..
    ddc0: 76 43 71 a5 f8 73 e2 3f         vCq..s.?
    ddc8: 00 00 00 00 00 00 00 00         ........
    ddd0: 00 00 00 00 00 00 00 00         ........
    ddd8: 00 00 00 00 00 00 00 00         ........
    dde0: 00 00 00 00 00 00 00 00         ........
    dde8: 00 00 00 00 00 00 00 00         ........
    ddf0: 00 00 00 00 00 00 00 00         ........
    ddf8: ab 14 f2 db ec cd d7 3f         .......?
    de00: c4 a9 9f 7b 67 dd c7 3f         ...{g..?
    de08: 1c 38 88 77 bf 13 e1 bf         .8.w....
    de10: 00 00 00 00 00 00 00 00         ........
    de18: 00 00 00 00 00 00 00 00         ........
    de20: 00 00 00 00 00 00 00 00         ........
    de28: 00 00 00 00 00 00 00 00         ........
    de30: 00 00 00 00 00 00 00 00         ........
    de38: 00 00 00 00 00 00 00 00         ........
    de40: 00 00 00 00 00 00 00 00         ........
    de48: 15 be b6 e5 6d 7e c0 bf         ....m~..
    de50: 67 42 87 92 ba 86 d4 bf         gB......
    de58: 00 00 00 00 00 00 00 00         ........
    de60: 00 00 00 00 00 00 00 00         ........
    de68: 00 00 00 00 00 00 00 00         ........
    de70: 00 00 00 00 00 00 00 00         ........
    de78: 00 00 00 00 00 00 00 00         ........
    de80: 00 00 00 00 00 00 00 00         ........
    de88: 00 00 00 00 00 00 00 00         ........
    de90: e6 a7 5c a0 06 41 d9 3f         ..\..A.?
    de98: e6 a7 5c a0 06 41 d9 bf         ..\..A..
    dea0: 19 d5 65 36 d0 6e 95 bf         ..e6.n..
    dea8: 00 00 00 00 00 00 00 00         ........
    deb0: 00 00 00 00 00 00 00 00         ........
    deb8: 00 00 00 00 00 00 00 00         ........
    dec0: 00 00 00 00 00 00 00 00         ........
    dec8: 00 00 00 00 00 00 00 00         ........
    ded0: 10 43 9c 25 ca fc ef 3f         .C.%...?
    ded8: 00 80 e7 1d d3 ae 39 3f         ......9?
    dee0: 00 00 00 00 00 00 00 00         ........
    dee8: 00 00 00 00 00 00 00 00         ........
    def0: 00 00 00 00 00 00 00 00         ........
    def8: 00 00 00 00 00 00 00 00         ........
    df00: 00 00 00 00 00 00 00 00         ........
    df08: 00 00 00 00 00 00 00 00         ........
    df10: 10 43 9c 25 ca fc ef 3f         .C.%...?
    df18: 10 43 9c 25 ca fc ef bf         .C.%....
    df20: 00 00 00 00 00 00 00 00         ........

0000df28 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.4>:
    df28: 20 db 00 00 18 00 00 00          .......
    df30: 26 02 00 00 05 00 00 00         &.......

0000df38 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.5>:
    df38: 88 da 00 00 1a 00 00 00         ........
    df40: 7b 02 00 00 05 00 00 00         {.......

0000df48 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.8>:
    df48: d4 da 00 00 4b 00 00 00         ....K...
    df50: 1e 06 00 00 09 00 00 00         ........
