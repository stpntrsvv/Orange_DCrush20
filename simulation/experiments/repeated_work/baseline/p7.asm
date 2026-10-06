
simulation/experiments/repeated_work/baseline/p7.elf:	file format elf32-littlearm

Disassembly of section .text:

00000408 <Reset>:
     408: b580         	push	{r7, lr}
     40a: 466f         	mov	r7, sp
     40c: f5ad 7d40    	sub.w	sp, sp, #0x300
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
     484: a9ba         	add	r1, sp, #0x2e8
     486: ed9f cace    	vldr	s24, [pc, #824]         @ 0x7c0 <Reset+0x3b8>
     48a: ed9f dace    	vldr	s26, [pc, #824]         @ 0x7c4 <Reset+0x3bc>
     48e: 3090         	adds	r0, #0x90
     490: 9001         	str	r0, [sp, #0x4]
     492: f101 000c    	add.w	r0, r1, #0xc
     496: 900d         	str	r0, [sp, #0x34]
     498: 2000         	movs	r0, #0x0
     49a: 901a         	str	r0, [sp, #0x68]
     49c: e06c         	b	0x578 <Reset+0x170>     @ imm = #0xd8
     49e: bf00         	nop
     4a0: f241 0000    	movw	r0, #0x1000
     4a4: 9d1a         	ldr	r5, [sp, #0x68]
     4a6: f2c2 0000    	movt	r0, #0x2000
     4aa: 9320         	str	r3, [sp, #0x80]
     4ac: 46a4         	mov	r12, r4
     4ae: eb00 2305    	add.w	r3, r0, r5, lsl #8
     4b2: 9c69         	ldr	r4, [sp, #0x1a4]
     4b4: 9423         	str	r4, [sp, #0x8c]
     4b6: f44f 4468    	mov.w	r4, #0xe800
     4ba: f503 4068    	add.w	r0, r3, #0xe800
     4be: 9a6b         	ldr	r2, [sp, #0x1ac]
     4c0: 9968         	ldr	r1, [sp, #0x1a0]
     4c2: f8dd 82b4    	ldr.w	r8, [sp, #0x2b4]
     4c6: f8dd b040    	ldr.w	r11, [sp, #0x40]
     4ca: e9dd 9664    	ldrd	r9, r6, [sp, #400]
     4ce: e9dd ae66    	ldrd	r10, lr, [sp, #408]
     4d2: f843 b004    	str.w	r11, [r3, r4]
     4d6: 2400         	movs	r4, #0x0
     4d8: 9b11         	ldr	r3, [sp, #0x44]
     4da: 6043         	str	r3, [r0, #0x4]
     4dc: 9b12         	ldr	r3, [sp, #0x48]
     4de: 6083         	str	r3, [r0, #0x8]
     4e0: 60c2         	str	r2, [r0, #0xc]
     4e2: 3501         	adds	r5, #0x1
     4e4: 9a06         	ldr	r2, [sp, #0x18]
     4e6: 6102         	str	r2, [r0, #0x10]
     4e8: 9a04         	ldr	r2, [sp, #0x10]
     4ea: 6142         	str	r2, [r0, #0x14]
     4ec: 6184         	str	r4, [r0, #0x18]
     4ee: f44f 7290    	mov.w	r2, #0x120
     4f2: 61c2         	str	r2, [r0, #0x1c]
     4f4: 2d03         	cmp	r5, #0x3
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
     50a: 6344         	str	r4, [r0, #0x34]
     50c: 6384         	str	r4, [r0, #0x38]
     50e: 63c4         	str	r4, [r0, #0x3c]
     510: 6404         	str	r4, [r0, #0x40]
     512: 6444         	str	r4, [r0, #0x44]
     514: 9a13         	ldr	r2, [sp, #0x4c]
     516: 6482         	str	r2, [r0, #0x48]
     518: 9a14         	ldr	r2, [sp, #0x50]
     51a: 64c2         	str	r2, [r0, #0x4c]
     51c: 9a15         	ldr	r2, [sp, #0x54]
     51e: 6502         	str	r2, [r0, #0x50]
     520: 9a16         	ldr	r2, [sp, #0x58]
     522: 6542         	str	r2, [r0, #0x54]
     524: 9a17         	ldr	r2, [sp, #0x5c]
     526: 6582         	str	r2, [r0, #0x58]
     528: 65c4         	str	r4, [r0, #0x5c]
     52a: 6604         	str	r4, [r0, #0x60]
     52c: 6644         	str	r4, [r0, #0x64]
     52e: 6684         	str	r4, [r0, #0x68]
     530: 9a19         	ldr	r2, [sp, #0x64]
     532: 66c2         	str	r2, [r0, #0x6c]
     534: 9a18         	ldr	r2, [sp, #0x60]
     536: 6702         	str	r2, [r0, #0x70]
     538: f8c0 8074    	str.w	r8, [r0, #0x74]
     53c: f8c0 9078    	str.w	r9, [r0, #0x78]
     540: 67c6         	str	r6, [r0, #0x7c]
     542: f8c0 a080    	str.w	r10, [r0, #0x80]
     546: f8c0 e084    	str.w	lr, [r0, #0x84]
     54a: f8c0 1088    	str.w	r1, [r0, #0x88]
     54e: f04f 0107    	mov.w	r1, #0x7
     552: f8c0 108c    	str.w	r1, [r0, #0x8c]
     556: f8c0 c090    	str.w	r12, [r0, #0x90]
     55a: 9920         	ldr	r1, [sp, #0x80]
     55c: f8c0 1094    	str.w	r1, [r0, #0x94]
     560: 9923         	ldr	r1, [sp, #0x8c]
     562: f8c0 1098    	str.w	r1, [r0, #0x98]
     566: 951a         	str	r5, [sp, #0x68]
     568: f8c0 409c    	str.w	r4, [r0, #0x9c]
     56c: f8dd a00c    	ldr.w	r10, [sp, #0xc]
     570: f50a 4a80    	add.w	r10, r10, #0x4000
     574: f000 8180    	beq.w	0x878 <Reset+0x470>     @ imm = #0x300
     578: 2170         	movs	r1, #0x70
     57a: 9801         	ldr	r0, [sp, #0x4]
     57c: f00b fc45    	bl	0xbe0a <__aeabi_memclr4> @ imm = #0xb88a
     580: f44f 7190    	mov.w	r1, #0x120
     584: a824         	add	r0, sp, #0x90
     586: e9cd 4472    	strd	r4, r4, [sp, #456]
     58a: e9cd 4470    	strd	r4, r4, [sp, #448]
     58e: e9cd 446e    	strd	r4, r4, [sp, #440]
     592: e9cd 446c    	strd	r4, r4, [sp, #432]
     596: f00b fc38    	bl	0xbe0a <__aeabi_memclr4> @ imm = #0xb870
     59a: 2170         	movs	r1, #0x70
     59c: 9802         	ldr	r0, [sp, #0x8]
     59e: f00b fc34    	bl	0xbe0a <__aeabi_memclr4> @ imm = #0xb868
     5a2: e9cd 44ac    	strd	r4, r4, [sp, #688]
     5a6: 2201         	movs	r2, #0x1
     5a8: f04f 0860    	mov.w	r8, #0x60
     5ac: 2300         	movs	r3, #0x0
     5ae: 2400         	movs	r4, #0x0
     5b0: 2500         	movs	r5, #0x0
     5b2: f04f 0c00    	mov.w	r12, #0x0
     5b6: f04f 0b00    	mov.w	r11, #0x0
     5ba: 201f         	movs	r0, #0x1f
     5bc: 9021         	str	r0, [sp, #0x84]
     5be: 2000         	movs	r0, #0x0
     5c0: f8cd a00c    	str.w	r10, [sp, #0xc]
     5c4: 900a         	str	r0, [sp, #0x28]
     5c6: e9cd 0008    	strd	r0, r0, [sp, #32]
     5ca: e9cd 0004    	strd	r0, r0, [sp, #16]
     5ce: e9cd 0006    	strd	r0, r0, [sp, #24]
     5d2: e9cd 0011    	strd	r0, r0, [sp, #68]
     5d6: 9019         	str	r0, [sp, #0x64]
     5d8: e9cd 0017    	strd	r0, r0, [sp, #92]
     5dc: e9cd 0015    	strd	r0, r0, [sp, #84]
     5e0: e9cd 0013    	strd	r0, r0, [sp, #76]
     5e4: e9cd 000e    	strd	r0, r0, [sp, #56]
     5e8: 9010         	str	r0, [sp, #0x40]
     5ea: e03b         	b	0x664 <Reset+0x25c>     @ imm = #0x76
     5ec: bf00         	nop
     5ee: bf00         	nop
     5f0: f082 0e01    	eor	lr, r2, #0x1
     5f4: f081 0801    	eor	r8, r1, #0x1
     5f8: e9dd 54b1    	ldrd	r5, r4, [sp, #708]
     5fc: 9ab3         	ldr	r2, [sp, #0x2cc]
     5fe: f8ca 5000    	str.w	r5, [r10]
     602: e9dd 31ae    	ldrd	r3, r1, [sp, #696]
     606: f8dd 92c0    	ldr.w	r9, [sp, #0x2c0]
     60a: f8ca 3004    	str.w	r3, [r10, #0x4]
     60e: f8ca 0008    	str.w	r0, [r10, #0x8]
     612: f50d 7c34    	add.w	r12, sp, #0x2d0
     616: f8ca 600c    	str.w	r6, [r10, #0xc]
     61a: f10b 0b01    	add.w	r11, r11, #0x1
     61e: 980d         	ldr	r0, [sp, #0x34]
     620: 92bc         	str	r2, [sp, #0x2f0]
     622: e9cd 54ba    	strd	r5, r4, [sp, #744]
     626: e9c0 3100    	strd	r3, r1, [r0]
     62a: a9ba         	add	r1, sp, #0x2e8
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
     656: e9dd c522    	ldrd	r12, r5, [sp, #136]
     65a: f1a0 0001    	sub.w	r0, r0, #0x1
     65e: 9021         	str	r0, [sp, #0x84]
     660: f43f af1e    	beq.w	0x4a0 <Reset+0x98>      @ imm = #-0x1c4
     664: f64a 20ab    	movw	r0, #0xaaab
     668: 9320         	str	r3, [sp, #0x80]
     66a: f6ca 20aa    	movt	r0, #0xaaaa
     66e: 9523         	str	r5, [sp, #0x8c]
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
     6a6: f241 0604    	movw	r6, #0x1004
     6aa: 2801         	cmp	r0, #0x1
     6ac: f2ce 0600    	movt	r6, #0xe000
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
     6d0: f241 0604    	movw	r6, #0x1004
     6d4: f2ce 0600    	movt	r6, #0xe000
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
     706: 6835         	ldr	r5, [r6]
     708: d116         	bne	0x738 <Reset+0x330>     @ imm = #0x2c
     70a: ed8d faba    	vstr	s30, [sp, #744]
     70e: f50d 793a    	add.w	r9, sp, #0x2e8
     712: a8b1         	add	r0, sp, #0x2c4
     714: ed9d 0aba    	vldr	s0, [sp, #744]
     718: a924         	add	r1, sp, #0x90
     71a: f007 fdc1    	bl	0x82a0 <ram_probe::packed_probe::candidate> @ imm = #0x7b82
     71e: 6834         	ldr	r4, [r6]
     720: ed8d faba    	vstr	s30, [sp, #744]
     724: a8ae         	add	r0, sp, #0x2b8
     726: ed9d 0aba    	vldr	s0, [sp, #744]
     72a: a96c         	add	r1, sp, #0x1b0
     72c: f007 f82c    	bl	0x7788 <ram_probe::packed_probe::control> @ imm = #0x7058
     730: 6831         	ldr	r1, [r6]
     732: 1b60         	subs	r0, r4, r5
     734: 1b0e         	subs	r6, r1, r4
     736: e015         	b	0x764 <Reset+0x35c>     @ imm = #0x2a
     738: ed8d faba    	vstr	s30, [sp, #744]
     73c: f50d 793a    	add.w	r9, sp, #0x2e8
     740: a8ae         	add	r0, sp, #0x2b8
     742: ed9d 0aba    	vldr	s0, [sp, #744]
     746: a96c         	add	r1, sp, #0x1b0
     748: f007 f81e    	bl	0x7788 <ram_probe::packed_probe::control> @ imm = #0x703c
     74c: 6834         	ldr	r4, [r6]
     74e: ed8d faba    	vstr	s30, [sp, #744]
     752: a8b1         	add	r0, sp, #0x2c4
     754: ed9d 0aba    	vldr	s0, [sp, #744]
     758: a924         	add	r1, sp, #0x90
     75a: f007 fda1    	bl	0x82a0 <ram_probe::packed_probe::candidate> @ imm = #0x7b42
     75e: 6830         	ldr	r0, [r6]
     760: 1b66         	subs	r6, r4, r5
     762: 1b00         	subs	r0, r0, r4
     764: f89d 22cd    	ldrb.w	r2, [sp, #0x2cd]
     768: f89d 12c1    	ldrb.w	r1, [sp, #0x2c1]
     76c: f1bb 0f1f    	cmp.w	r11, #0x1f
     770: f8cd 8074    	str.w	r8, [sp, #0x74]
     774: f67f af3c    	bls.w	0x5f0 <Reset+0x1e8>     @ imm = #-0x188
     778: 9b15         	ldr	r3, [sp, #0x54]
     77a: 46b6         	mov	lr, r6
     77c: e9cd 210b    	strd	r2, r1, [sp, #44]
     780: 4298         	cmp	r0, r3
     782: bf88         	it	hi
     784: 4603         	movhi	r3, r0
     786: 9c16         	ldr	r4, [sp, #0x58]
     788: f89d 92cc    	ldrb.w	r9, [sp, #0x2cc]
     78c: 42a6         	cmp	r6, r4
     78e: bf88         	it	hi
     790: 4634         	movhi	r4, r6
     792: 9a11         	ldr	r2, [sp, #0x44]
     794: 99b2         	ldr	r1, [sp, #0x2c8]
     796: 454a         	cmp	r2, r9
     798: bf98         	it	ls
     79a: 464a         	movls	r2, r9
     79c: 9211         	str	r2, [sp, #0x44]
     79e: 9a12         	ldr	r2, [sp, #0x48]
     7a0: 4291         	cmp	r1, r2
     7a2: bf88         	it	hi
     7a4: 460a         	movhi	r2, r1
     7a6: 991b         	ldr	r1, [sp, #0x6c]
     7a8: 9d23         	ldr	r5, [sp, #0x8c]
     7aa: f8dd c03c    	ldr.w	r12, [sp, #0x3c]
     7ae: 4405         	add	r5, r0
     7b0: 44b4         	add	r12, r6
     7b2: b949         	cbnz	r1, 0x7c8 <Reset+0x3c0> @ imm = #0x12
     7b4: f8cd c03c    	str.w	r12, [sp, #0x3c]
     7b8: e013         	b	0x7e2 <Reset+0x3da>     @ imm = #0x26
     7ba: bf00         	nop
     7bc: 00 00 c0 43  	.word	0x43c00000
     7c0: cd cc cc 3d  	.word	0x3dcccccd
     7c4: 00 00 00 30  	.word	0x30000000
     7c8: 9906         	ldr	r1, [sp, #0x18]
     7ca: 428d         	cmp	r5, r1
     7cc: bf88         	it	hi
     7ce: 4629         	movhi	r1, r5
     7d0: 2500         	movs	r5, #0x0
     7d2: 9106         	str	r1, [sp, #0x18]
     7d4: 9907         	ldr	r1, [sp, #0x1c]
     7d6: 458c         	cmp	r12, r1
     7d8: bf88         	it	hi
     7da: 4661         	movhi	r1, r12
     7dc: 9107         	str	r1, [sp, #0x1c]
     7de: 2100         	movs	r1, #0x0
     7e0: 910f         	str	r1, [sp, #0x3c]
     7e2: e9dd 1621    	ldrd	r1, r6, [sp, #132]
     7e6: 0649         	lsls	r1, r1, #0x19
     7e8: 990e         	ldr	r1, [sp, #0x38]
     7ea: f8dd c070    	ldr.w	r12, [sp, #0x70]
     7ee: 4406         	add	r6, r0
     7f0: 4471         	add	r1, lr
     7f2: 9212         	str	r2, [sp, #0x48]
     7f4: e9cd 3415    	strd	r3, r4, [sp, #84]
     7f8: d10c         	bne	0x814 <Reset+0x40c>     @ imm = #0x18
     7fa: 460a         	mov	r2, r1
     7fc: 9904         	ldr	r1, [sp, #0x10]
     7fe: 428e         	cmp	r6, r1
     800: bf88         	it	hi
     802: 4631         	movhi	r1, r6
     804: 2600         	movs	r6, #0x0
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
     824: e9cd 6522    	strd	r6, r5, [sp, #136]
     828: f081 0501    	eor	r5, r1, #0x1
     82c: 9917         	ldr	r1, [sp, #0x5c]
     82e: 4411         	add	r1, r2
     830: 9117         	str	r1, [sp, #0x5c]
     832: 9918         	ldr	r1, [sp, #0x60]
     834: 9c13         	ldr	r4, [sp, #0x4c]
     836: 4676         	mov	r6, lr
     838: 4473         	add	r3, lr
     83a: 4696         	mov	lr, r2
     83c: 46a8         	mov	r8, r5
     83e: 4429         	add	r1, r5
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
     df0: f009 befe    	b.w	0xabf0 <orange_dsp::generated_condensed::update> @ imm = #0x9dfc
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
    11f0: f64b 706a    	movw	r0, #0xbf6a
    11f4: f24c 3258    	movw	r2, #0xc358
    11f8: f2c0 0000    	movt	r0, #0x0
    11fc: f2c0 0200    	movt	r2, #0x0
    1200: 2128         	movs	r1, #0x28
    1202: f009 fa15    	bl	0xa630 <core::panicking::panic> @ imm = #0x942a
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
    19a2: f64b 706a    	movw	r0, #0xbf6a
    19a6: f24c 3258    	movw	r2, #0xc358
    19aa: f2c0 0000    	movt	r0, #0x0
    19ae: f2c0 0200    	movt	r2, #0x0
    19b2: 2128         	movs	r1, #0x28
    19b4: f008 fe3c    	bl	0xa630 <core::panicking::panic> @ imm = #0x8c78
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
    1a28: f64b 60b8    	movw	r0, #0xbeb8
    1a2c: f24c 3278    	movw	r2, #0xc378
    1a30: f2c0 0000    	movt	r0, #0x0
    1a34: f2c0 0200    	movt	r2, #0x0
    1a38: a904         	add	r1, sp, #0x10
    1a3a: f008 fdf5    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #0x8bea
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
    1e20: ee24 8aa7    	vmul.f32	s16, s9, s15
    1e24: ee38 da28    	vadd.f32	s26, s16, s17
    1e28: eeb5 8a40    	vcmp.f32	s16, #0
    1e2c: ee38 ea0c    	vadd.f32	s28, s16, s24
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
    1e6c: ee36 8aa8    	vadd.f32	s16, s13, s17
    1e70: ee0c 2a10    	vmov	s24, r2
    1e74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e78: eefd 7ae7    	vcvt.s32.f32	s15, s15
    1e7c: eddf 6af2    	vldr	s13, [pc, #968]         @ 0x2248 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7b8>
    1e80: eebd 8ac8    	vcvt.s32.f32	s16, s16
    1e84: eeb8 cacc    	vcvt.f32.s32	s24, s24
    1e88: ee17 3a90    	vmov	r3, s15
    1e8c: ee18 6a10    	vmov	r6, s16
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
    1eb8: eeb0 8a66    	vmov.f32	s16, s13
    1ebc: ee04 8aa7    	vmla.f32	s16, s9, s15
    1ec0: ee45 6aa7    	vmla.f32	s13, s11, s15
    1ec4: eddf 7aef    	vldr	s15, [pc, #956]         @ 0x2284 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    1ec8: eeb0 ca67    	vmov.f32	s24, s15
    1ecc: ee25 daa5    	vmul.f32	s26, s11, s11
    1ed0: ee04 ca88    	vmla.f32	s24, s9, s16
    1ed4: eeb7 8a00    	vmov.f32	s16, #1.000000e+00
    1ed8: ee45 7aa6    	vmla.f32	s15, s11, s13
    1edc: eef0 6a68    	vmov.f32	s13, s17
    1ee0: ee44 6a8c    	vmla.f32	s13, s9, s24
    1ee4: eeb0 ca68    	vmov.f32	s24, s17
    1ee8: ee05 caa7    	vmla.f32	s24, s11, s15
    1eec: ee64 7aa4    	vmul.f32	s15, s9, s9
    1ef0: ee74 4a88    	vadd.f32	s9, s9, s16
    1ef4: ee47 4aa6    	vmla.f32	s9, s15, s13
    1ef8: ee07 3a90    	vmov	s15, r3
    1efc: ee75 6a88    	vadd.f32	s13, s11, s16
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
    1f70: ed9f 8ac5    	vldr	s16, [pc, #788]         @ 0x2288 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f8>
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
    1fb0: ee47 4a88    	vmla.f32	s9, s15, s16
    1fb4: eddf 7ab2    	vldr	s15, [pc, #712]         @ 0x2280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    1fb8: ed9f 8ab0    	vldr	s16, [pc, #704]         @ 0x227c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    1fbc: eb02 52c3    	add.w	r2, r2, r3, lsl #23
    1fc0: ee06 2a90    	vmov	s13, r2
    1fc4: ee04 8aa7    	vmla.f32	s16, s9, s15
    1fc8: eddf 7aae    	vldr	s15, [pc, #696]         @ 0x2284 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    1fcc: ee44 7a88    	vmla.f32	s15, s9, s16
    1fd0: eeb0 8a68    	vmov.f32	s16, s17
    1fd4: ee04 8aa7    	vmla.f32	s16, s9, s15
    1fd8: ee64 7aa4    	vmul.f32	s15, s9, s9
    1fdc: ee74 4a8a    	vadd.f32	s9, s9, s20
    1fe0: ee47 4a88    	vmla.f32	s9, s15, s16
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
    2094: ed9f 9aee    	vldr	s18, [pc, #952]         @ 0x2450 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c0>
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
    20da: ee34 4a09    	vadd.f32	s8, s8, s18
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
    2290: eef0 ba49    	vmov.f32	s23, s18
    2294: f5a9 0900    	sub.w	r9, r9, #0x800000
    2298: f1b9 5f66    	cmp.w	r9, #0x39800000
    229c: f000 82b4    	beq.w	0x2808 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd78> @ imm = #0x568
    22a0: ee02 9a10    	vmov	s4, r9
    22a4: eddd 7a0b    	vldr	s15, [sp, #44]
    22a8: eeb0 8a6b    	vmov.f32	s16, s23
    22ac: eeb0 4a6f    	vmov.f32	s8, s31
    22b0: ed9f fb7b    	vldr	d15, [pc, #492]         @ 0x24a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa10>
    22b4: ee41 7a82    	vmla.f32	s15, s3, s4
    22b8: eeb0 9a6b    	vmov.f32	s18, s23
    22bc: ee07 8a02    	vmla.f32	s16, s14, s4
    22c0: eef0 ba6c    	vmov.f32	s23, s25
    22c4: ed9d db08    	vldr	d13, [sp, #32]
    22c8: eeb0 ea6c    	vmov.f32	s28, s25
    22cc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
    22d0: eeb7 2ac8    	vcvt.f64.f32	d2, s16
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
    2304: ee08 2a2f    	vmla.f32	s4, s16, s31
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
    252a: ee88 da04    	vdiv.f32	s26, s16, s8
    252e: eeb0 4acd    	vabs.f32	s8, s26
    2532: eeb4 4a68    	vcmp.f32	s8, s17
    2536: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    253a: f280 808d    	bge.w	0x2658 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbc8> @ imm = #0x11a
    253e: eeb4 ca4d    	vcmp.f32	s24, s26
    2542: eebe fa00    	vmov.f32	s30, #-5.000000e-01
    2546: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    254a: fe3c 4a0d    	vselgt.f32	s8, s24, s26
    254e: ed9f dae3    	vldr	s26, [pc, #908]         @ 0x28dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe4c>
    2552: ee88 da0d    	vdiv.f32	s26, s16, s26
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
    26f2: ee08 da22    	vmla.f32	s26, s16, s5
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
    279c: ed81 8a03    	vstr	s16, [r1, #12]
    27a0: ed9f 9a52    	vldr	s18, [pc, #328]         @ 0x28ec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe5c>
    27a4: 9410         	str	r4, [sp, #0x40]
    27a6: e9cd 440c    	strd	r4, r4, [sp, #48]
    27aa: e9cd 440e    	strd	r4, r4, [sp, #56]
    27ae: d01f         	beq	0x27f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd60> @ imm = #0x3e
    27b0: ee2b 2a82    	vmul.f32	s4, s23, s4
    27b4: eef0 ba48    	vmov.f32	s23, s16
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
    27f0: f64b 706a    	movw	r0, #0xbf6a
    27f4: f24c 3258    	movw	r2, #0xc358
    27f8: f2c0 0000    	movt	r0, #0x0
    27fc: f2c0 0200    	movt	r2, #0x0
    2800: 2128         	movs	r1, #0x28
    2802: f007 ff15    	bl	0xa630 <core::panicking::panic> @ imm = #0x7e2a
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
    2890: f64b 60b8    	movw	r0, #0xbeb8
    2894: f24c 3278    	movw	r2, #0xc378
    2898: f2c0 0000    	movt	r0, #0x0
    289c: f2c0 0200    	movt	r2, #0x0
    28a0: a911         	add	r1, sp, #0x44
    28a2: f007 fec1    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #0x7d82
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
    2cd4: ee35 2a08    	vadd.f32	s4, s10, s16
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
    306c: f64b 7098    	movw	r0, #0xbf98
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
    3af0: f64b 7298    	movw	r2, #0xbf98
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
    3cd0: f64b 60b8    	movw	r0, #0xbeb8
    3cd4: f24c 3278    	movw	r2, #0xc378
    3cd8: f2c0 0000    	movt	r0, #0x0
    3cdc: f2c0 0200    	movt	r2, #0x0
    3ce0: a922         	add	r1, sp, #0x88
    3ce2: f006 fca1    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #0x6942
    3ce6: bf00         	nop
    3ce8: f64b 706a    	movw	r0, #0xbf6a
    3cec: f24c 3258    	movw	r2, #0xc358
    3cf0: f2c0 0000    	movt	r0, #0x0
    3cf4: f2c0 0200    	movt	r2, #0x0
    3cf8: 2128         	movs	r1, #0x28
    3cfa: f006 fc99    	bl	0xa630 <core::panicking::panic> @ imm = #0x6932
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
    4086: f64b 706a    	movw	r0, #0xbf6a
    408a: f24c 3258    	movw	r2, #0xc358
    408e: f2c0 0000    	movt	r0, #0x0
    4092: f2c0 0200    	movt	r2, #0x0
    4096: 2128         	movs	r1, #0x28
    4098: f006 faca    	bl	0xa630 <core::panicking::panic> @ imm = #0x6594
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
    4100: f64b 60b8    	movw	r0, #0xbeb8
    4104: f24c 3278    	movw	r2, #0xc378
    4108: f2c0 0000    	movt	r0, #0x0
    410c: f2c0 0200    	movt	r2, #0x0
    4110: a906         	add	r1, sp, #0x18
    4112: f006 fa89    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #0x6512
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

000043d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>>:
    43d0: b5f0         	push	{r4, r5, r6, r7, lr}
    43d2: af03         	add	r7, sp, #0xc
    43d4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    43d8: b081         	sub	sp, #0x4
    43da: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    43de: b09e         	sub	sp, #0x78
    43e0: 460c         	mov	r4, r1
    43e2: 9003         	str	r0, [sp, #0xc]
    43e4: f244 4508    	movw	r5, #0x4408
    43e8: f240 1855    	movw	r8, #0x155
    43ec: a805         	add	r0, sp, #0x14
    43ee: 2134         	movs	r1, #0x34
    43f0: 4616         	mov	r6, r2
    43f2: f6c4 0500    	movt	r5, #0x4800
    43f6: f2c0 0808    	movt	r8, #0x8
    43fa: f007 fd06    	bl	0xbe0a <__aeabi_memclr4> @ imm = #0x7a0c
    43fe: eeba 4a0e    	vmov.f32	s8, #-1.500000e+01
    4402: edd4 fa00    	vldr	s31, [r4]
    4406: ed9f 5abb    	vldr	s10, [pc, #748]         @ 0x46f4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x324>
    440a: eebe 7a00    	vmov.f32	s14, #-5.000000e-01
    440e: ed9f aaba    	vldr	s20, [pc, #744]         @ 0x46f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x328>
    4412: eeb6 fa00    	vmov.f32	s30, #5.000000e-01
    4416: ee3f 0a84    	vadd.f32	s0, s31, s8
    441a: ed9f bab8    	vldr	s22, [pc, #736]         @ 0x46fc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x32c>
    441e: ed9f 6ab8    	vldr	s12, [pc, #736]         @ 0x4700 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x330>
    4422: 9402         	str	r4, [sp, #0x8]
    4424: eddf 8ab7    	vldr	s17, [pc, #732]         @ 0x4704 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x334>
    4428: eeff 9a00    	vmov.f32	s19, #-1.000000e+00
    442c: ee80 0a05    	vdiv.f32	s0, s0, s10
    4430: eddf aab5    	vldr	s21, [pc, #724]         @ 0x4708 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x338>
    4434: eddf bab5    	vldr	s23, [pc, #724]         @ 0x470c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x33c>
    4438: eddf eab5    	vldr	s29, [pc, #724]         @ 0x4710 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x340>
    443c: eeb4 aa40    	vcmp.f32	s20, s0
    4440: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4444: fe3a 0a00    	vselgt.f32	s0, s20, s0
    4448: eeb4 0a4b    	vcmp.f32	s0, s22
    444c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4450: fe3b 0a00    	vselgt.f32	s0, s22, s0
    4454: ee20 1a06    	vmul.f32	s2, s0, s12
    4458: ee31 2a07    	vadd.f32	s4, s2, s14
    445c: eeb5 1a40    	vcmp.f32	s2, #0
    4460: ee31 3a0f    	vadd.f32	s6, s2, s30
    4464: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4468: eebd 2ac2    	vcvt.s32.f32	s4, s4
    446c: eebd 3ac3    	vcvt.s32.f32	s6, s6
    4470: ee12 0a10    	vmov	r0, s4
    4474: ee13 1a10    	vmov	r1, s6
    4478: bfa8         	it	ge
    447a: 4608         	movge	r0, r1
    447c: ee01 0a10    	vmov	s2, r0
    4480: eeb8 1ac1    	vcvt.f32.s32	s2, s2
    4484: ee01 0a68    	vmls.f32	s0, s2, s17
    4488: ee34 1a6f    	vsub.f32	s2, s8, s31
    448c: ee81 1a05    	vdiv.f32	s2, s2, s10
    4490: ee20 0a0f    	vmul.f32	s0, s0, s30
    4494: eef4 9a40    	vcmp.f32	s19, s0
    4498: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    449c: fe39 0a80    	vselgt.f32	s0, s19, s0
    44a0: eeb4 0a6a    	vcmp.f32	s0, s21
    44a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    44a8: eeb4 aa41    	vcmp.f32	s20, s2
    44ac: fe3a 0a80    	vselgt.f32	s0, s21, s0
    44b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    44b4: fe3a 1a01    	vselgt.f32	s2, s20, s2
    44b8: ee20 0a2b    	vmul.f32	s0, s0, s23
    44bc: eeb4 1a4b    	vcmp.f32	s2, s22
    44c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    44c4: eebd 0ac0    	vcvt.s32.f32	s0, s0
    44c8: fe3b 1a01    	vselgt.f32	s2, s22, s2
    44cc: ee21 2a06    	vmul.f32	s4, s2, s12
    44d0: ed9f 6a90    	vldr	s12, [pc, #576]         @ 0x4714 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x344>
    44d4: ee32 3a07    	vadd.f32	s6, s4, s14
    44d8: eeb5 2a40    	vcmp.f32	s4, #0
    44dc: ee32 4a0f    	vadd.f32	s8, s4, s30
    44e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    44e4: eebd 3ac3    	vcvt.s32.f32	s6, s6
    44e8: eebd 4ac4    	vcvt.s32.f32	s8, s8
    44ec: ee13 1a10    	vmov	r1, s6
    44f0: eeb7 3aef    	vcvt.f64.f32	d3, s31
    44f4: ee14 2a10    	vmov	r2, s8
    44f8: bfa8         	it	ge
    44fa: 4611         	movge	r1, r2
    44fc: ed96 cb00    	vldr	d12, [r6]
    4500: ee02 1a10    	vmov	s4, r1
    4504: f845 8c08    	str	r8, [r5, #-8]
    4508: ed05 0a01    	vstr	s0, [r5, #-4]
    450c: ed9f 4b82    	vldr	d4, [pc, #520]          @ 0x4718 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x348>
    4510: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    4514: ee02 1a68    	vmls.f32	s2, s4, s17
    4518: ee21 1a0f    	vmul.f32	s2, s2, s30
    451c: eef4 9a41    	vcmp.f32	s19, s2
    4520: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4524: fe39 1a81    	vselgt.f32	s2, s19, s2
    4528: eeb4 1a6a    	vcmp.f32	s2, s21
    452c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4530: fe3a 0a81    	vselgt.f32	s0, s21, s2
    4534: ed95 1a00    	vldr	s2, [r5]
    4538: ed95 2a00    	vldr	s4, [r5]
    453c: eeb8 1ac1    	vcvt.f32.s32	s2, s2
    4540: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    4544: f845 8c08    	str	r8, [r5, #-8]
    4548: ee20 0a2b    	vmul.f32	s0, s0, s23
    454c: f04f 587e    	mov.w	r8, #0x3f800000
    4550: eb08 50c0    	add.w	r0, r8, r0, lsl #23
    4554: ee22 2a2e    	vmul.f32	s4, s4, s29
    4558: eebd 0ac0    	vcvt.s32.f32	s0, s0
    455c: ed05 0a01    	vstr	s0, [r5, #-4]
    4560: ee01 2a2e    	vmla.f32	s4, s2, s29
    4564: ed95 0a00    	vldr	s0, [r5]
    4568: ed95 1a00    	vldr	s2, [r5]
    456c: eeb8 1ac1    	vcvt.f32.s32	s2, s2
    4570: eeb8 0ac0    	vcvt.f32.s32	s0, s0
    4574: ee21 1a2e    	vmul.f32	s2, s2, s29
    4578: ee00 1a2e    	vmla.f32	s2, s0, s29
    457c: ee32 0a02    	vadd.f32	s0, s4, s4
    4580: ee02 0a10    	vmov	s4, r0
    4584: eb08 50c1    	add.w	r0, r8, r1, lsl #23
    4588: ee20 0a02    	vmul.f32	s0, s0, s4
    458c: ee02 0a10    	vmov	s4, r0
    4590: ee31 1a01    	vadd.f32	s2, s2, s2
    4594: ee21 1a02    	vmul.f32	s2, s2, s4
    4598: eeb0 2b4c    	vmov.f64	d2, d12
    459c: ee03 2b04    	vmla.f64	d2, d3, d4
    45a0: ee30 3a41    	vsub.f32	s6, s0, s2
    45a4: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    45a8: ee13 2a06    	vnmls.f32	s4, s6, s12
    45ac: ee12 0a10    	vmov	r0, s4
    45b0: f020 4000    	bic	r0, r0, #0x80000000
    45b4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    45b8: db02         	blt	0x45c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x1f0> @ imm = #0x4
    45ba: ed9f eaf5    	vldr	s28, [pc, #980]         @ 0x4990 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5c0>
    45be: e009         	b	0x45d4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x204> @ imm = #0x12
    45c0: ed9f 3af4    	vldr	s6, [pc, #976]          @ 0x4994 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5c4>
    45c4: ee82 3a03    	vdiv.f32	s6, s4, s6
    45c8: ed9f 4af3    	vldr	s8, [pc, #972]          @ 0x4998 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5c8>
    45cc: eeb0 3ac3    	vabs.f32	s6, s6
    45d0: fe83 ea04    	vmaxnm.f32	s28, s6, s8
    45d4: ee30 1a01    	vadd.f32	s2, s0, s2
    45d8: a815         	add	r0, sp, #0x54
    45da: eeb1 0a42    	vneg.f32	s0, s4
    45de: f04f 0a00    	mov.w	r10, #0x0
    45e2: f100 0c04    	add.w	r12, r0, #0x4
    45e6: 2100         	movs	r1, #0x0
    45e8: ed9f 2af4    	vldr	s4, [pc, #976]          @ 0x49bc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5ec>
    45ec: f10d 0e48    	add.w	lr, sp, #0x48
    45f0: 2400         	movs	r4, #0x0
    45f2: 46d3         	mov	r11, r10
    45f4: f8cd c004    	str.w	r12, [sp, #0x4]
    45f8: ee21 1a06    	vmul.f32	s2, s2, s12
    45fc: ed8d 0a12    	vstr	s0, [sp, #72]
    4600: 9114         	str	r1, [sp, #0x50]
    4602: 46d1         	mov	r9, r10
    4604: 9113         	str	r1, [sp, #0x4c]
    4606: a905         	add	r1, sp, #0x14
    4608: ee81 1a05    	vdiv.f32	s2, s2, s10
    460c: 9404         	str	r4, [sp, #0x10]
    460e: f1ba 0f10    	cmp.w	r10, #0x10
    4612: 4682         	mov	r10, r0
    4614: ee31 0a02    	vadd.f32	s0, s2, s4
    4618: ed8d 0a15    	vstr	s0, [sp, #84]
    461c: c95c         	ldm	r1!, {r2, r3, r4, r6}
    461e: e8ac 005c    	stm.w	r12!, {r2, r3, r4, r6}
    4622: e891 005c    	ldm.w	r1, {r2, r3, r4, r6}
    4626: e88c 005c    	stm.w	r12, {r2, r3, r4, r6}
    462a: f04f 0201    	mov.w	r2, #0x1
    462e: 4671         	mov	r1, lr
    4630: bf18         	it	ne
    4632: f10b 0b01    	addne.w	r11, r11, #0x1
    4636: f007 f8db    	bl	0xb7f0 <orange_dsp::condensed::solve> @ imm = #0x71b6
    463a: 2800         	cmp	r0, #0x0
    463c: f000 819c    	beq.w	0x4978 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5a8> @ imm = #0x338
    4640: eef0 4a4e    	vmov.f32	s9, s28
    4644: eddf 7ade    	vldr	s15, [pc, #888]         @ 0x49c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5f0>
    4648: eeb4 ea67    	vcmp.f32	s28, s15
    464c: 9c04         	ldr	r4, [sp, #0x10]
    464e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4652: d911         	bls	0x4678 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x2a8> @ imm = #0x22
    4654: eeba 6a0e    	vmov.f32	s12, #-1.500000e+01
    4658: eefe 3a00    	vmov.f32	s7, #-5.000000e-01
    465c: f1b9 0f10    	cmp.w	r9, #0x10
    4660: ed9f 7ad1    	vldr	s14, [pc, #836]         @ 0x49a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5d8>
    4664: eddf 0ad1    	vldr	s1, [pc, #836]          @ 0x49ac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5dc>
    4668: eddf 6ad1    	vldr	s13, [pc, #836]         @ 0x49b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5e0>
    466c: f000 818c    	beq.w	0x4988 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5b8> @ imm = #0x318
    4670: ed9d 0a12    	vldr	s0, [sp, #72]
    4674: e037         	b	0x46e6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x316> @ imm = #0x6e
    4676: bf00         	nop
    4678: eeb0 0aef    	vabs.f32	s0, s31
    467c: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    4680: eeba 6a0e    	vmov.f32	s12, #-1.500000e+01
    4684: eefe 3a00    	vmov.f32	s7, #-5.000000e-01
    4688: 2000         	movs	r0, #0x0
    468a: ed9f 7ac7    	vldr	s14, [pc, #796]         @ 0x49a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5d8>
    468e: eeb4 0a40    	vcmp.f32	s0, s0
    4692: eddf 0ac6    	vldr	s1, [pc, #792]          @ 0x49ac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5dc>
    4696: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    469a: eddf 6ac5    	vldr	s13, [pc, #788]         @ 0x49b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5e0>
    469e: fe11 0a00    	vselvs.f32	s0, s2, s0
    46a2: eeb4 0a41    	vcmp.f32	s0, s2
    46a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46aa: fe30 0a01    	vselgt.f32	s0, s0, s2
    46ae: ed9f 1ac5    	vldr	s2, [pc, #788]          @ 0x49c4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5f4>
    46b2: ee20 0a01    	vmul.f32	s0, s0, s2
    46b6: ed9f 1ac4    	vldr	s2, [pc, #784]          @ 0x49c8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5f8>
    46ba: fe80 1a41    	vminnm.f32	s2, s0, s2
    46be: ed9d 0a12    	vldr	s0, [sp, #72]
    46c2: eeb0 2ac0    	vabs.f32	s4, s0
    46c6: eeb4 2a41    	vcmp.f32	s4, s2
    46ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46ce: bf98         	it	ls
    46d0: 2001         	movls	r0, #0x1
    46d2: f1b9 0f10    	cmp.w	r9, #0x10
    46d6: f000 8158    	beq.w	0x498a <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5ba> @ imm = #0x2b0
    46da: eeb4 2a41    	vcmp.f32	s4, s2
    46de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46e2: f240 8152    	bls.w	0x498a <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5ba> @ imm = #0x2a4
    46e6: f240 1655    	movw	r6, #0x155
    46ea: f04f 507e    	mov.w	r0, #0x3f800000
    46ee: f2c0 0608    	movt	r6, #0x8
    46f2: e01b         	b	0x472c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x35c> @ imm = #0x36
    46f4: f5 4a 39 3d  	.word	0x3d394af5
    46f8: 00 00 a0 c2  	.word	0xc2a00000
    46fc: 00 00 a0 42  	.word	0x42a00000
    4700: 3b aa b8 3f  	.word	0x3fb8aa3b
    4704: 18 72 31 3f  	.word	0x3f317218
    4708: fe ff 7f 3f  	.word	0x3f7ffffe
    470c: 00 00 00 4f  	.word	0x4f000000
    4710: 00 00 00 30  	.word	0x30000000
    4714: 77 cc 2b 31  	.word	0x312bcc77
    4718: 80 e5 70 28  	.word	0x2870e580
    471c: a1 3a 03 bf  	.word	0xbf033aa1
    4720: f5a0 0000    	sub.w	r0, r0, #0x800000
    4724: f1b0 5f66    	cmp.w	r0, #0x39800000
    4728: f000 8106    	beq.w	0x4938 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x568> @ imm = #0x20c
    472c: ee01 0a10    	vmov	s2, r0
    4730: eeb0 da6f    	vmov.f32	s26, s31
    4734: ee00 da01    	vmla.f32	s26, s0, s2
    4738: ee3d 1a06    	vadd.f32	s2, s26, s12
    473c: ee81 1a07    	vdiv.f32	s2, s2, s14
    4740: eeb4 aa41    	vcmp.f32	s20, s2
    4744: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4748: fe3a 1a01    	vselgt.f32	s2, s20, s2
    474c: eeb4 1a4b    	vcmp.f32	s2, s22
    4750: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4754: fe3b 1a01    	vselgt.f32	s2, s22, s2
    4758: ee21 2a20    	vmul.f32	s4, s2, s1
    475c: ee32 3a23    	vadd.f32	s6, s4, s7
    4760: eeb5 2a40    	vcmp.f32	s4, #0
    4764: ee32 4a0f    	vadd.f32	s8, s4, s30
    4768: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    476c: eebd 3ac3    	vcvt.s32.f32	s6, s6
    4770: eebd 4ac4    	vcvt.s32.f32	s8, s8
    4774: ee13 1a10    	vmov	r1, s6
    4778: ee14 2a10    	vmov	r2, s8
    477c: bfa8         	it	ge
    477e: 4611         	movge	r1, r2
    4780: ee02 1a10    	vmov	s4, r1
    4784: eb08 51c1    	add.w	r1, r8, r1, lsl #23
    4788: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    478c: ee02 1a68    	vmls.f32	s2, s4, s17
    4790: ee36 2a4d    	vsub.f32	s4, s12, s26
    4794: ee82 2a07    	vdiv.f32	s4, s4, s14
    4798: ee21 1a0f    	vmul.f32	s2, s2, s30
    479c: eef4 9a41    	vcmp.f32	s19, s2
    47a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47a4: fe39 1a81    	vselgt.f32	s2, s19, s2
    47a8: eeb4 1a6a    	vcmp.f32	s2, s21
    47ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47b0: eeb4 aa42    	vcmp.f32	s20, s4
    47b4: fe3a 1a81    	vselgt.f32	s2, s21, s2
    47b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47bc: fe3a 2a02    	vselgt.f32	s4, s20, s4
    47c0: ee21 1a2b    	vmul.f32	s2, s2, s23
    47c4: eeb4 2a4b    	vcmp.f32	s4, s22
    47c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47cc: eebd 1ac1    	vcvt.s32.f32	s2, s2
    47d0: fe3b 2a02    	vselgt.f32	s4, s22, s4
    47d4: ee22 3a20    	vmul.f32	s6, s4, s1
    47d8: ee33 4a23    	vadd.f32	s8, s6, s7
    47dc: eeb5 3a40    	vcmp.f32	s6, #0
    47e0: ee33 5a0f    	vadd.f32	s10, s6, s30
    47e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47e8: eebd 4ac4    	vcvt.s32.f32	s8, s8
    47ec: eebd 5ac5    	vcvt.s32.f32	s10, s10
    47f0: ee14 2a10    	vmov	r2, s8
    47f4: ee15 3a10    	vmov	r3, s10
    47f8: bfa8         	it	ge
    47fa: 461a         	movge	r2, r3
    47fc: f845 6c08    	str	r6, [r5, #-8]
    4800: ee03 2a10    	vmov	s6, r2
    4804: ed05 1a01    	vstr	s2, [r5, #-4]
    4808: ed9f 5b65    	vldr	d5, [pc, #404]          @ 0x49a0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5d0>
    480c: eeb8 3ac3    	vcvt.f32.s32	s6, s6
    4810: ee03 2a68    	vmls.f32	s4, s6, s17
    4814: ee22 2a0f    	vmul.f32	s4, s4, s30
    4818: eef4 9a42    	vcmp.f32	s19, s4
    481c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4820: fe39 2a82    	vselgt.f32	s4, s19, s4
    4824: eeb4 2a6a    	vcmp.f32	s4, s21
    4828: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    482c: fe3a 2a82    	vselgt.f32	s4, s21, s4
    4830: ee22 1a2b    	vmul.f32	s2, s4, s23
    4834: ed95 2a00    	vldr	s4, [r5]
    4838: ed95 3a00    	vldr	s6, [r5]
    483c: f845 6c08    	str	r6, [r5, #-8]
    4840: eeb8 3ac3    	vcvt.f32.s32	s6, s6
    4844: eebd 1ac1    	vcvt.s32.f32	s2, s2
    4848: ed05 1a01    	vstr	s2, [r5, #-4]
    484c: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    4850: ee23 1a2e    	vmul.f32	s2, s6, s29
    4854: ed95 3a00    	vldr	s6, [r5]
    4858: ed95 4a00    	vldr	s8, [r5]
    485c: eeb8 3ac3    	vcvt.f32.s32	s6, s6
    4860: eeb8 4ac4    	vcvt.f32.s32	s8, s8
    4864: ee02 1a2e    	vmla.f32	s2, s4, s29
    4868: ee24 2a2e    	vmul.f32	s4, s8, s29
    486c: ee03 2a2e    	vmla.f32	s4, s6, s29
    4870: ee03 1a10    	vmov	s6, r1
    4874: eb08 51c2    	add.w	r1, r8, r2, lsl #23
    4878: ee04 1a10    	vmov	s8, r1
    487c: ee31 1a01    	vadd.f32	s2, s2, s2
    4880: ee32 2a02    	vadd.f32	s4, s4, s4
    4884: ee21 8a03    	vmul.f32	s16, s2, s6
    4888: eeb7 1acd    	vcvt.f64.f32	d1, s26
    488c: ee22 9a04    	vmul.f32	s18, s4, s8
    4890: eeb0 2b4c    	vmov.f64	d2, d12
    4894: ee01 2b05    	vmla.f64	d2, d1, d5
    4898: ee38 1a49    	vsub.f32	s2, s16, s18
    489c: eef7 dbc2    	vcvt.f32.f64	s27, d2
    48a0: ee51 da26    	vnmls.f32	s27, s2, s13
    48a4: ee1d 1a90    	vmov	r1, s27
    48a8: f021 4100    	bic	r1, r1, #0x80000000
    48ac: f1b1 4fff    	cmp.w	r1, #0x7f800000
    48b0: f6bf af36    	bge.w	0x4720 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x350> @ imm = #-0x194
    48b4: ed9f 1a3f    	vldr	s2, [pc, #252]          @ 0x49b4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5e4>
    48b8: ee8d 1a81    	vdiv.f32	s2, s27, s2
    48bc: ed9f 2a3e    	vldr	s4, [pc, #248]          @ 0x49b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5e8>
    48c0: eeb0 1ac1    	vabs.f32	s2, s2
    48c4: fe81 ea02    	vmaxnm.f32	s28, s2, s4
    48c8: eeb4 ea64    	vcmp.f32	s28, s9
    48cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    48d0: f57f af26    	bpl.w	0x4720 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x350> @ imm = #-0x1b4
    48d4: 9802         	ldr	r0, [sp, #0x8]
    48d6: 2134         	movs	r1, #0x34
    48d8: ed80 da00    	vstr	s26, [r0]
    48dc: a805         	add	r0, sp, #0x14
    48de: f007 fa94    	bl	0xbe0a <__aeabi_memclr4> @ imm = #0x7528
    48e2: ed9f 6a33    	vldr	s12, [pc, #204]         @ 0x49b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5e0>
    48e6: f1b9 0f10    	cmp.w	r9, #0x10
    48ea: ed9f 5a2f    	vldr	s10, [pc, #188]         @ 0x49a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5d8>
    48ee: f8dd c004    	ldr.w	r12, [sp, #0x4]
    48f2: f04f 0100    	mov.w	r1, #0x0
    48f6: ed9f 2a31    	vldr	s4, [pc, #196]          @ 0x49bc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5ec>
    48fa: f10d 0e48    	add.w	lr, sp, #0x48
    48fe: d00d         	beq	0x491c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x54c> @ imm = #0x1a
    4900: ee38 1a09    	vadd.f32	s2, s16, s18
    4904: eef0 fa4d    	vmov.f32	s31, s26
    4908: eeb1 0a6d    	vneg.f32	s0, s27
    490c: 4650         	mov	r0, r10
    490e: f1bb 0f10    	cmp.w	r11, #0x10
    4912: f104 0401    	add.w	r4, r4, #0x1
    4916: 46da         	mov	r10, r11
    4918: f77f ae6e    	ble.w	0x45f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x228> @ imm = #-0x324
    491c: f64b 706a    	movw	r0, #0xbf6a
    4920: f24c 3268    	movw	r2, #0xc368
    4924: f2c0 0000    	movt	r0, #0x0
    4928: f2c0 0200    	movt	r2, #0x0
    492c: 2128         	movs	r1, #0x28
    492e: f005 fe7f    	bl	0xa630 <core::panicking::panic> @ imm = #0x5cfe
    4932: bf00         	nop
    4934: bf00         	nop
    4936: bf00         	nop
    4938: eef4 4a67    	vcmp.f32	s9, s15
    493c: 3401         	adds	r4, #0x1
    493e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4942: f04f 0000    	mov.w	r0, #0x0
    4946: 9903         	ldr	r1, [sp, #0xc]
    4948: d809         	bhi	0x495e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x58e> @ imm = #0x12
    494a: eeb0 0ac0    	vabs.f32	s0, s0
    494e: ed9f 1a1e    	vldr	s2, [pc, #120]          @ 0x49c8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5f8>
    4952: eeb4 0a41    	vcmp.f32	s0, s2
    4956: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    495a: bf98         	it	ls
    495c: 2001         	movls	r0, #0x1
    495e: edc1 4a00    	vstr	s9, [r1]
    4962: 710c         	strb	r4, [r1, #0x4]
    4964: 7148         	strb	r0, [r1, #0x5]
    4966: b01e         	add	sp, #0x78
    4968: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    496c: b001         	add	sp, #0x4
    496e: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    4972: bdf0         	pop	{r4, r5, r6, r7, pc}
    4974: bf00         	nop
    4976: bf00         	nop
    4978: 9903         	ldr	r1, [sp, #0xc]
    497a: 9804         	ldr	r0, [sp, #0x10]
    497c: 7108         	strb	r0, [r1, #0x4]
    497e: 2000         	movs	r0, #0x0
    4980: ed81 ea00    	vstr	s28, [r1]
    4984: e7ee         	b	0x4964 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x594> @ imm = #-0x24
    4986: bf00         	nop
    4988: 2000         	movs	r0, #0x0
    498a: 9903         	ldr	r1, [sp, #0xc]
    498c: e7e7         	b	0x495e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x58e> @ imm = #-0x32
    498e: bf00         	nop
    4990: 00 00 80 7f  	.word	0x7f800000
    4994: 0a d7 23 3c  	.word	0x3c23d70a
    4998: 00 00 00 00  	.word	0x00000000
    499c: 00 bf 00 bf  	.word	0xbf00bf00
    49a0: 80 e5 70 28  	.word	0x2870e580
    49a4: a1 3a 03 bf  	.word	0xbf033aa1
    49a8: f5 4a 39 3d  	.word	0x3d394af5
    49ac: 3b aa b8 3f  	.word	0x3fb8aa3b
    49b0: 77 cc 2b 31  	.word	0x312bcc77
    49b4: 0a d7 23 3c  	.word	0x3c23d70a
    49b8: 00 00 00 00  	.word	0x00000000
    49bc: 09 d5 19 38  	.word	0x3819d509
    49c0: 17 b7 d1 38  	.word	0x38d1b717
    49c4: bd 37 06 36  	.word	0x360637bd
    49c8: ac c5 a7 37  	.word	0x37a7c5ac
    49cc: d4 d4 d4 d4  	.word	0xd4d4d4d4

000049d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>>:
    49d0: b5f0         	push	{r4, r5, r6, r7, lr}
    49d2: af03         	add	r7, sp, #0xc
    49d4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    49d8: b081         	sub	sp, #0x4
    49da: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    49de: b092         	sub	sp, #0x48
    49e0: ed9f 3ae4    	vldr	s6, [pc, #912]          @ 0x4d74 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3a4>
    49e4: ee22 2a03    	vmul.f32	s4, s4, s6
    49e8: ed9f 3ae3    	vldr	s6, [pc, #908]          @ 0x4d78 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3a8>
    49ec: ed9f 4ae3    	vldr	s8, [pc, #908]          @ 0x4d7c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3ac>
    49f0: ed9f 5ae3    	vldr	s10, [pc, #908]         @ 0x4d80 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3b0>
    49f4: ee32 3a03    	vadd.f32	s6, s4, s6
    49f8: ee32 4a04    	vadd.f32	s8, s4, s8
    49fc: ee83 aa05    	vdiv.f32	s20, s6, s10
    4a00: ee84 ba05    	vdiv.f32	s22, s8, s10
    4a04: eeb4 aa4b    	vcmp.f32	s20, s22
    4a08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a0c: f200 839c    	bhi.w	0x5148 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x778> @ imm = #0x738
    4a10: eeb0 9b40    	vmov.f64	d9, d0
    4a14: 2300         	movs	r3, #0x0
    4a16: ed91 0a00    	vldr	s0, [r1]
    4a1a: 9101         	str	r1, [sp, #0x4]
    4a1c: ed8d 0a02    	vstr	s0, [sp, #8]
    4a20: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    4a24: eeb0 8b41    	vmov.f64	d8, d1
    4a28: edd1 aa01    	vldr	s21, [r1, #4]
    4a2c: eeb7 eac2    	vcvt.f64.f32	d14, s4
    4a30: 2100         	movs	r1, #0x0
    4a32: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0x4de8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x418>
    4a36: eeb7 da00    	vmov.f32	s26, #1.000000e+00
    4a3a: eddf dac8    	vldr	s27, [pc, #800]         @ 0x4d5c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x38c>
    4a3e: ee00 8b01    	vmla.f64	d8, d0, d1
    4a42: eeb7 0aea    	vcvt.f64.f32	d0, s21
    4a46: ed9f 3b6e    	vldr	d3, [pc, #440]          @ 0x4c00 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x230>
    4a4a: eeb0 1b48    	vmov.f64	d1, d8
    4a4e: eeb0 2b4e    	vmov.f64	d2, d14
    4a52: ee00 1b03    	vmla.f64	d1, d0, d3
    4a56: ed9f 3b6c    	vldr	d3, [pc, #432]          @ 0x4c08 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x238>
    4a5a: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    4a5e: ed9f 4b6c    	vldr	d4, [pc, #432]          @ 0x4c10 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x240>
    4a62: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    4a66: ed9f cb6c    	vldr	d12, [pc, #432]         @ 0x4c18 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x248>
    4a6a: ee01 2b03    	vmla.f64	d2, d1, d3
    4a6e: eeb0 3b49    	vmov.f64	d3, d9
    4a72: ed9f 1b6b    	vldr	d1, [pc, #428]          @ 0x4c20 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x250>
    4a76: ee82 1b01    	vdiv.f64	d1, d2, d1
    4a7a: ee00 3b04    	vmla.f64	d3, d0, d4
    4a7e: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    4a82: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    4a86: eeb4 aa41    	vcmp.f32	s20, s2
    4a8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a8e: bf48         	it	mi
    4a90: 2301         	movmi	r3, #0x1
    4a92: fe3a 2a01    	vselgt.f32	s4, s20, s2
    4a96: eeb0 5ac0    	vabs.f32	s10, s0
    4a9a: ed9f 0ab1    	vldr	s0, [pc, #708]          @ 0x4d60 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x390>
    4a9e: eeb4 2a4b    	vcmp.f32	s4, s22
    4aa2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4aa6: eeb4 ba41    	vcmp.f32	s22, s2
    4aaa: ed9f 1bd1    	vldr	d1, [pc, #836]          @ 0x4df0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x420>
    4aae: fe3b 7a02    	vselgt.f32	s14, s22, s4
    4ab2: eeb0 2a40    	vmov.f32	s4, s0
    4ab6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4aba: eeb4 1b43    	vcmp.f64	d1, d3
    4abe: eebf 1a00    	vmov.f32	s2, #-1.000000e+00
    4ac2: bfc8         	it	gt
    4ac4: 2101         	movgt	r1, #0x1
    4ac6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4aca: eeb4 3b4c    	vcmp.f64	d3, d12
    4ace: eeb0 3a40    	vmov.f32	s6, s0
    4ad2: fe31 1a00    	vselgt.f32	s2, s2, s0
    4ad6: 400b         	ands	r3, r1
    4ad8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4adc: eeb4 5a6d    	vcmp.f32	s10, s27
    4ae0: fe3d 4a01    	vselgt.f32	s8, s26, s2
    4ae4: eeb0 1a40    	vmov.f32	s2, s0
    4ae8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4aec: f280 80c7    	bge.w	0x4c7e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x2ae> @ imm = #0x18e
    4af0: ed9f 0a9c    	vldr	s0, [pc, #624]          @ 0x4d64 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x394>
    4af4: eeb4 5a40    	vcmp.f32	s10, s0
    4af8: ed9f 1a99    	vldr	s2, [pc, #612]          @ 0x4d60 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x390>
    4afc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b00: d912         	bls	0x4b28 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x158> @ imm = #0x24
    4b02: ed9f 0a99    	vldr	s0, [pc, #612]          @ 0x4d68 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x398>
    4b06: eeb4 5a40    	vcmp.f32	s10, s0
    4b0a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b0e: d913         	bls	0x4b38 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x168> @ imm = #0x26
    4b10: ed9f 0a96    	vldr	s0, [pc, #600]          @ 0x4d6c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x39c>
    4b14: ee35 2a00    	vadd.f32	s4, s10, s0
    4b18: ed9f 3a95    	vldr	s6, [pc, #596]          @ 0x4d70 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3a0>
    4b1c: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    4b20: e012         	b	0x4b48 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x178> @ imm = #0x24
    4b22: bf00         	nop
    4b24: bf00         	nop
    4b26: bf00         	nop
    4b28: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    4b2c: eeb0 3a41    	vmov.f32	s6, s2
    4b30: e00e         	b	0x4b50 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x180> @ imm = #0x1c
    4b32: bf00         	nop
    4b34: bf00         	nop
    4b36: bf00         	nop
    4b38: ed9f 0ae8    	vldr	s0, [pc, #928]          @ 0x4edc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x50c>
    4b3c: ee35 2a00    	vadd.f32	s4, s10, s0
    4b40: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    4b44: ed9f 3ae6    	vldr	s6, [pc, #920]          @ 0x4ee0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x510>
    4b48: ee02 0a03    	vmla.f32	s0, s4, s6
    4b4c: ee24 3a03    	vmul.f32	s6, s8, s6
    4b50: eeb2 2a0e    	vmov.f32	s4, #1.500000e+01
    4b54: ee32 0a40    	vsub.f32	s0, s4, s0
    4b58: fe80 2a01    	vmaxnm.f32	s4, s0, s2
    4b5c: eeb1 0a43    	vneg.f32	s0, s6
    4b60: eeb5 2a40    	vcmp.f32	s4, #0
    4b64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b68: d942         	bls	0x4bf0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x220> @ imm = #0x84
    4b6a: eeb0 1ac7    	vabs.f32	s2, s14
    4b6e: eeb4 1a42    	vcmp.f32	s2, s4
    4b72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b76: d957         	bls	0x4c28 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x258> @ imm = #0xae
    4b78: ee82 3a01    	vdiv.f32	s6, s4, s2
    4b7c: ee23 1a03    	vmul.f32	s2, s6, s6
    4b80: ee21 1a01    	vmul.f32	s2, s2, s2
    4b84: ee21 1a01    	vmul.f32	s2, s2, s2
    4b88: ee21 4a01    	vmul.f32	s8, s2, s2
    4b8c: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    4b90: ee34 5a01    	vadd.f32	s10, s8, s2
    4b94: eeb0 6a41    	vmov.f32	s12, s2
    4b98: eeb4 5a41    	vcmp.f32	s10, s2
    4b9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ba0: d009         	beq	0x4bb6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x1e6> @ imm = #0x12
    4ba2: eeb0 6a45    	vmov.f32	s12, s10
    4ba6: eeb1 6ac6    	vsqrt.f32	s12, s12
    4baa: eeb1 6ac6    	vsqrt.f32	s12, s12
    4bae: eeb1 6ac6    	vsqrt.f32	s12, s12
    4bb2: eeb1 6ac6    	vsqrt.f32	s12, s12
    4bb6: ee81 1a06    	vdiv.f32	s2, s2, s12
    4bba: eeb4 7a47    	vcmp.f32	s14, s14
    4bbe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bc2: ee81 5a05    	vdiv.f32	s10, s2, s10
    4bc6: f180 82cf    	bvs.w	0x5168 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x798> @ imm = #0x59e
    4bca: ee17 1a10    	vmov	r1, s14
    4bce: f04f 557e    	mov.w	r5, #0x3f800000
    4bd2: f365 011e    	bfi	r1, r5, #0, #31
    4bd6: ee06 1a10    	vmov	s12, r1
    4bda: ee26 2a02    	vmul.f32	s4, s12, s4
    4bde: ee22 1a01    	vmul.f32	s2, s4, s2
    4be2: ee26 2a05    	vmul.f32	s4, s12, s10
    4be6: ee23 3a04    	vmul.f32	s6, s6, s8
    4bea: ee23 3a05    	vmul.f32	s6, s6, s10
    4bee: e046         	b	0x4c7e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x2ae> @ imm = #0x8c
    4bf0: eeb0 3a41    	vmov.f32	s6, s2
    4bf4: eeb0 2a41    	vmov.f32	s4, s2
    4bf8: e041         	b	0x4c7e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x2ae> @ imm = #0x82
    4bfa: bf00         	nop
    4bfc: bf00         	nop
    4bfe: bf00         	nop
    4c00: 1f 89 9b cf  	.word	0xcf9b891f
    4c04: ab 32 9c bf  	.word	0xbf9c32ab
    4c08: 91 d4 a8 53  	.word	0x53a8d491
    4c0c: ec f7 77 41  	.word	0x4177f7ec
    4c10: 00 f0 e6 61  	.word	0x61e6f000
    4c14: 55 15 14 bf  	.word	0xbf141555
    4c18: 00 00 00 00  	.word	0x00000000
    4c1c: 00 00 90 36  	.word	0x36900000
    4c20: a7 2a 45 4f  	.word	0x4f452aa7
    4c24: ed 97 01 41  	.word	0x410197ed
    4c28: ee87 1a02    	vdiv.f32	s2, s14, s4
    4c2c: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    4c30: ee21 1a01    	vmul.f32	s2, s2, s2
    4c34: eeb0 5a44    	vmov.f32	s10, s8
    4c38: ee21 1a01    	vmul.f32	s2, s2, s2
    4c3c: ee21 1a01    	vmul.f32	s2, s2, s2
    4c40: ee21 1a01    	vmul.f32	s2, s2, s2
    4c44: ee31 3a04    	vadd.f32	s6, s2, s8
    4c48: eeb4 3a44    	vcmp.f32	s6, s8
    4c4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c50: d009         	beq	0x4c66 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x296> @ imm = #0x12
    4c52: eeb0 5a43    	vmov.f32	s10, s6
    4c56: eeb1 5ac5    	vsqrt.f32	s10, s10
    4c5a: eeb1 5ac5    	vsqrt.f32	s10, s10
    4c5e: eeb1 5ac5    	vsqrt.f32	s10, s10
    4c62: eeb1 5ac5    	vsqrt.f32	s10, s10
    4c66: ee84 4a05    	vdiv.f32	s8, s8, s10
    4c6a: ee27 1a01    	vmul.f32	s2, s14, s2
    4c6e: ee84 3a03    	vdiv.f32	s6, s8, s6
    4c72: ee81 2a02    	vdiv.f32	s4, s2, s4
    4c76: ee27 1a04    	vmul.f32	s2, s14, s8
    4c7a: ee22 2a03    	vmul.f32	s4, s4, s6
    4c7e: 2b00         	cmp	r3, #0x0
    4c80: ee3a 1ac1    	vsub.f32	s2, s21, s2
    4c84: ed9f 4aca    	vldr	s8, [pc, #808]          @ 0x4fb0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5e0>
    4c88: ee20 0a02    	vmul.f32	s0, s0, s4
    4c8c: ed9f 5ac9    	vldr	s10, [pc, #804]         @ 0x4fb4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5e4>
    4c90: ed8d 7a05    	vstr	s14, [sp, #20]
    4c94: fe05 4a04    	vseleq.f32	s8, s10, s8
    4c98: ee11 1a10    	vmov	r1, s2
    4c9c: ed9f 5ac6    	vldr	s10, [pc, #792]         @ 0x4fb8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5e8>
    4ca0: e9cd 2003    	strd	r2, r0, [sp, #12]
    4ca4: ee24 2a03    	vmul.f32	s4, s8, s6
    4ca8: ed9f 3ac4    	vldr	s6, [pc, #784]          @ 0x4fbc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5ec>
    4cac: ee20 0a03    	vmul.f32	s0, s0, s6
    4cb0: f021 4100    	bic	r1, r1, #0x80000000
    4cb4: f1b1 4fff    	cmp.w	r1, #0x7f800000
    4cb8: db02         	blt	0x4cc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x2f0> @ imm = #0x4
    4cba: ed9f fac1    	vldr	s30, [pc, #772]         @ 0x4fc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5f0>
    4cbe: e009         	b	0x4cd4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x304> @ imm = #0x12
    4cc0: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    4cc4: ed9f 4a26    	vldr	s8, [pc, #152]          @ 0x4d60 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x390>
    4cc8: ee81 3a03    	vdiv.f32	s6, s2, s6
    4ccc: eeb0 3ac3    	vabs.f32	s6, s6
    4cd0: fe83 fa04    	vmaxnm.f32	s30, s6, s8
    4cd4: ee02 0a05    	vmla.f32	s0, s4, s10
    4cd8: eef2 ba0e    	vmov.f32	s23, #1.500000e+01
    4cdc: eeb1 3a41    	vneg.f32	s6, s2
    4ce0: a809         	add	r0, sp, #0x24
    4ce2: f04f 0b00    	mov.w	r11, #0x0
    4ce6: 1d04         	adds	r4, r0, #0x4
    4ce8: f04f 0800    	mov.w	r8, #0x0
    4cec: a906         	add	r1, sp, #0x18
    4cee: eddf fa1c    	vldr	s31, [pc, #112]         @ 0x4d60 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x390>
    4cf2: f04f 557e    	mov.w	r5, #0x3f800000
    4cf6: 2600         	movs	r6, #0x0
    4cf8: 46da         	mov	r10, r11
    4cfa: ee30 0a0d    	vadd.f32	s0, s0, s26
    4cfe: 2201         	movs	r2, #0x1
    4d00: ed8d 3a06    	vstr	s6, [sp, #24]
    4d04: f1bb 0f10    	cmp.w	r11, #0x10
    4d08: f8cd 8020    	str.w	r8, [sp, #0x20]
    4d0c: 4689         	mov	r9, r1
    4d0e: f8cd 801c    	str.w	r8, [sp, #0x1c]
    4d12: ed8d 0a09    	vstr	s0, [sp, #36]
    4d16: e9c4 8800    	strd	r8, r8, [r4]
    4d1a: e9c4 8802    	strd	r8, r8, [r4, #8]
    4d1e: e9c4 8804    	strd	r8, r8, [r4, #16]
    4d22: f8c4 8018    	str.w	r8, [r4, #0x18]
    4d26: bf18         	it	ne
    4d28: f10a 0a01    	addne.w	r10, r10, #0x1
    4d2c: f8c4 801c    	str.w	r8, [r4, #0x1c]
    4d30: f006 fd5e    	bl	0xb7f0 <orange_dsp::condensed::solve> @ imm = #0x6abc
    4d34: 2800         	cmp	r0, #0x0
    4d36: f000 81f7    	beq.w	0x5128 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x758> @ imm = #0x3ee
    4d3a: ed9f 0ae7    	vldr	s0, [pc, #924]          @ 0x50d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x708>
    4d3e: eeb4 fa40    	vcmp.f32	s30, s0
    4d42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d46: d91f         	bls	0x4d88 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3b8> @ imm = #0x3e
    4d48: eeff 7a00    	vmov.f32	s15, #-1.000000e+00
    4d4c: f1bb 0f10    	cmp.w	r11, #0x10
    4d50: f000 81f2    	beq.w	0x5138 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x768> @ imm = #0x3e4
    4d54: ed9d 0a06    	vldr	s0, [sp, #24]
    4d58: e043         	b	0x4de2 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x412> @ imm = #0x86
    4d5a: bf00         	nop
    4d5c: 0a d7 23 3d  	.word	0x3d23d70a
    4d60: 00 00 00 00  	.word	0x00000000
    4d64: 7c f2 b0 3a  	.word	0x3ab0f27c
    4d68: a6 9b c4 3b  	.word	0x3bc49ba6
    4d6c: a6 9b c4 bb  	.word	0xbbc49ba6
    4d70: 79 78 b0 43  	.word	0x43b07879
    4d74: 00 80 bb 47  	.word	0x47bb8000
    4d78: 00 24 74 cb  	.word	0xcb742400
    4d7c: 00 24 74 4b  	.word	0x4b742400
    4d80: 00 a0 0c 48  	.word	0x480ca000
    4d84: 00 bf 00 bf  	.word	0xbf00bf00
    4d88: eeb0 0aea    	vabs.f32	s0, s21
    4d8c: ed9f 1ae8    	vldr	s2, [pc, #928]          @ 0x5130 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x760>
    4d90: eeff 7a00    	vmov.f32	s15, #-1.000000e+00
    4d94: 2000         	movs	r0, #0x0
    4d96: eeb4 0a40    	vcmp.f32	s0, s0
    4d9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d9e: fe1d 0a00    	vselvs.f32	s0, s26, s0
    4da2: eeb4 0a4d    	vcmp.f32	s0, s26
    4da6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4daa: fe30 0a0d    	vselgt.f32	s0, s0, s26
    4dae: ee20 0a01    	vmul.f32	s0, s0, s2
    4db2: ed9f 1aeb    	vldr	s2, [pc, #940]          @ 0x5160 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x790>
    4db6: fe80 1a41    	vminnm.f32	s2, s0, s2
    4dba: ed9d 0a06    	vldr	s0, [sp, #24]
    4dbe: eeb0 2ac0    	vabs.f32	s4, s0
    4dc2: eeb4 2a41    	vcmp.f32	s4, s2
    4dc6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4dca: bf98         	it	ls
    4dcc: 2001         	movls	r0, #0x1
    4dce: f1bb 0f10    	cmp.w	r11, #0x10
    4dd2: f000 81b2    	beq.w	0x513a <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x76a> @ imm = #0x364
    4dd6: eeb4 2a41    	vcmp.f32	s4, s2
    4dda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4dde: f240 81ac    	bls.w	0x513a <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x76a> @ imm = #0x358
    4de2: f04f 507e    	mov.w	r0, #0x3f800000
    4de6: e00d         	b	0x4e04 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x434> @ imm = #0x1a
    4de8: a2 0c d2 2e  	.word	0x2ed20ca2
    4dec: ca fe ef 3f  	.word	0x3feffeca
    4df0: 00 00 00 00  	.word	0x00000000
    4df4: 00 00 90 b6  	.word	0xb6900000
    4df8: f5a0 0000    	sub.w	r0, r0, #0x800000
    4dfc: f1b0 5f66    	cmp.w	r0, #0x39800000
    4e00: f000 816e    	beq.w	0x50e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x710> @ imm = #0x2dc
    4e04: ee02 0a10    	vmov	s4, r0
    4e08: eeb0 1a6a    	vmov.f32	s2, s21
    4e0c: ed9f 4bda    	vldr	d4, [pc, #872]          @ 0x5178 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7a8>
    4e10: eeb0 3b48    	vmov.f64	d3, d8
    4e14: eef0 0a6f    	vmov.f32	s1, s31
    4e18: ee00 1a02    	vmla.f32	s2, s0, s4
    4e1c: ed9f 5bda    	vldr	d5, [pc, #872]          @ 0x5188 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7b8>
    4e20: eeb0 6b49    	vmov.f64	d6, d9
    4e24: eeb0 7a6f    	vmov.f32	s14, s31
    4e28: eeb7 2ac1    	vcvt.f64.f32	d2, s2
    4e2c: ee02 3b04    	vmla.f64	d3, d2, d4
    4e30: eeb0 4b4e    	vmov.f64	d4, d14
    4e34: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    4e38: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    4e3c: ee03 4b05    	vmla.f64	d4, d3, d5
    4e40: ed9f 3bd3    	vldr	d3, [pc, #844]          @ 0x5190 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7c0>
    4e44: ee84 3b03    	vdiv.f64	d3, d4, d3
    4e48: ed9f 5bcd    	vldr	d5, [pc, #820]          @ 0x5180 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7b0>
    4e4c: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    4e50: ee02 6b05    	vmla.f64	d6, d2, d5
    4e54: eeb4 aa43    	vcmp.f32	s20, s6
    4e58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e5c: eeb7 5bc6    	vcvt.f32.f64	s10, d6
    4e60: fe3a 4a03    	vselgt.f32	s8, s20, s6
    4e64: eeb0 5ac5    	vabs.f32	s10, s10
    4e68: eeb4 4a4b    	vcmp.f32	s8, s22
    4e6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e70: fe3b 2a04    	vselgt.f32	s4, s22, s8
    4e74: ed9f 4bc8    	vldr	d4, [pc, #800]          @ 0x5198 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7c8>
    4e78: eeb4 4b46    	vcmp.f64	d4, d6
    4e7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e80: eeb4 6b4c    	vcmp.f64	d6, d12
    4e84: eeb0 6a6f    	vmov.f32	s12, s31
    4e88: fe37 4aaf    	vselgt.f32	s8, s15, s31
    4e8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4e90: eeb4 5a6d    	vcmp.f32	s10, s27
    4e94: fe7d 1a04    	vselgt.f32	s3, s26, s8
    4e98: eeb0 4a6f    	vmov.f32	s8, s31
    4e9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ea0: f280 80be    	bge.w	0x5020 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x650> @ imm = #0x17c
    4ea4: ed9f 4abe    	vldr	s8, [pc, #760]          @ 0x51a0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7d0>
    4ea8: eeb0 6a6f    	vmov.f32	s12, s31
    4eac: eeb4 5a44    	vcmp.f32	s10, s8
    4eb0: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    4eb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4eb8: d922         	bls	0x4f00 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x530> @ imm = #0x44
    4eba: ed9f 4aba    	vldr	s8, [pc, #744]          @ 0x51a4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7d4>
    4ebe: eeb4 5a44    	vcmp.f32	s10, s8
    4ec2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ec6: d90f         	bls	0x4ee8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x518> @ imm = #0x1e
    4ec8: ed9f 4ab9    	vldr	s8, [pc, #740]          @ 0x51b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7e0>
    4ecc: ee35 5a04    	vadd.f32	s10, s10, s8
    4ed0: eeb0 4a08    	vmov.f32	s8, #3.000000e+00
    4ed4: ed9f 6ab7    	vldr	s12, [pc, #732]         @ 0x51b4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7e4>
    4ed8: e00e         	b	0x4ef8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x528> @ imm = #0x1c
    4eda: bf00         	nop
    4edc: 7c f2 b0 ba  	.word	0xbab0f27c
    4ee0: 53 4a a1 43  	.word	0x43a14a53
    4ee4: 00 bf 00 bf  	.word	0xbf00bf00
    4ee8: ed9f 4aaf    	vldr	s8, [pc, #700]          @ 0x51a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7d8>
    4eec: ee35 5a04    	vadd.f32	s10, s10, s8
    4ef0: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    4ef4: ed9f 6aad    	vldr	s12, [pc, #692]         @ 0x51ac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7dc>
    4ef8: ee05 4a06    	vmla.f32	s8, s10, s12
    4efc: ee21 6a86    	vmul.f32	s12, s3, s12
    4f00: ee3b 4ac4    	vsub.f32	s8, s23, s8
    4f04: fe84 5a2f    	vmaxnm.f32	s10, s8, s31
    4f08: eeb1 4a46    	vneg.f32	s8, s12
    4f0c: eeb5 5a40    	vcmp.f32	s10, #0
    4f10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4f14: d944         	bls	0x4fa0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5d0> @ imm = #0x88
    4f16: eeb0 6ac2    	vabs.f32	s12, s4
    4f1a: eeb4 6a45    	vcmp.f32	s12, s10
    4f1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4f22: d951         	bls	0x4fc8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5f8> @ imm = #0xa2
    4f24: ee85 7a06    	vdiv.f32	s14, s10, s12
    4f28: eef0 0a4d    	vmov.f32	s1, s26
    4f2c: ee27 6a07    	vmul.f32	s12, s14, s14
    4f30: ee26 6a06    	vmul.f32	s12, s12, s12
    4f34: ee26 6a06    	vmul.f32	s12, s12, s12
    4f38: ee66 1a06    	vmul.f32	s3, s12, s12
    4f3c: ee31 6a8d    	vadd.f32	s12, s3, s26
    4f40: eeb4 6a4d    	vcmp.f32	s12, s26
    4f44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4f48: d009         	beq	0x4f5e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x58e> @ imm = #0x12
    4f4a: eef0 0a46    	vmov.f32	s1, s12
    4f4e: eef1 0ae0    	vsqrt.f32	s1, s1
    4f52: eef1 0ae0    	vsqrt.f32	s1, s1
    4f56: eef1 0ae0    	vsqrt.f32	s1, s1
    4f5a: eef1 0ae0    	vsqrt.f32	s1, s1
    4f5e: eecd 3a20    	vdiv.f32	s7, s26, s1
    4f62: eddf 0a95    	vldr	s1, [pc, #596]          @ 0x51b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7e8>
    4f66: eeb4 2a42    	vcmp.f32	s4, s4
    4f6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4f6e: eec3 2a86    	vdiv.f32	s5, s7, s12
    4f72: eeb0 6a60    	vmov.f32	s12, s1
    4f76: bf7f         	itttt	vc
    4f78: ee12 1a10    	vmovvc	r1, s4
    4f7c: f365 011e    	bfivc	r1, r5, #0, #31
    4f80: ee06 1a10    	vmovvc	s12, r1
    4f84: ee26 5a05    	vmulvc.f32	s10, s12, s10
    4f88: bf7c         	itt	vc
    4f8a: ee65 0a23    	vmulvc.f32	s1, s10, s7
    4f8e: ee26 6a22    	vmulvc.f32	s12, s12, s5
    4f92: ee27 5a21    	vmul.f32	s10, s14, s3
    4f96: ee25 7a22    	vmul.f32	s14, s10, s5
    4f9a: e041         	b	0x5020 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x650> @ imm = #0x82
    4f9c: bf00         	nop
    4f9e: bf00         	nop
    4fa0: eef0 0a6f    	vmov.f32	s1, s31
    4fa4: eeb0 7a6f    	vmov.f32	s14, s31
    4fa8: eeb0 6a6f    	vmov.f32	s12, s31
    4fac: e038         	b	0x5020 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x650> @ imm = #0x70
    4fae: bf00         	nop
    4fb0: 79 61 2e c3  	.word	0xc32e6179
    4fb4: 00 00 00 80  	.word	0x80000000
    4fb8: 5e 95 e1 bc  	.word	0xbce1955e
    4fbc: ab aa a0 38  	.word	0x38a0aaab
    4fc0: 00 00 80 7f  	.word	0x7f800000
    4fc4: 00 bf 00 bf  	.word	0xbf00bf00
    4fc8: ee82 6a05    	vdiv.f32	s12, s4, s10
    4fcc: eef0 0a4d    	vmov.f32	s1, s26
    4fd0: ee26 6a06    	vmul.f32	s12, s12, s12
    4fd4: ee26 6a06    	vmul.f32	s12, s12, s12
    4fd8: ee26 6a06    	vmul.f32	s12, s12, s12
    4fdc: ee26 6a06    	vmul.f32	s12, s12, s12
    4fe0: ee36 7a0d    	vadd.f32	s14, s12, s26
    4fe4: eeb4 7a4d    	vcmp.f32	s14, s26
    4fe8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fec: d009         	beq	0x5002 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x632> @ imm = #0x12
    4fee: eef0 0a47    	vmov.f32	s1, s14
    4ff2: eef1 0ae0    	vsqrt.f32	s1, s1
    4ff6: eef1 0ae0    	vsqrt.f32	s1, s1
    4ffa: eef1 0ae0    	vsqrt.f32	s1, s1
    4ffe: eef1 0ae0    	vsqrt.f32	s1, s1
    5002: eecd 0a20    	vdiv.f32	s1, s26, s1
    5006: ee22 6a06    	vmul.f32	s12, s4, s12
    500a: ee80 7a87    	vdiv.f32	s14, s1, s14
    500e: ee86 5a05    	vdiv.f32	s10, s12, s10
    5012: ee62 0a20    	vmul.f32	s1, s4, s1
    5016: ee25 6a07    	vmul.f32	s12, s10, s14
    501a: bf00         	nop
    501c: bf00         	nop
    501e: bf00         	nop
    5020: ee31 5a60    	vsub.f32	s10, s2, s1
    5024: ee15 1a10    	vmov	r1, s10
    5028: f021 4100    	bic	r1, r1, #0x80000000
    502c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    5030: f6bf aee2    	bge.w	0x4df8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x428> @ imm = #-0x23c
    5034: eec5 0a2b    	vdiv.f32	s1, s10, s23
    5038: eef0 0ae0    	vabs.f32	s1, s1
    503c: fec0 0aaf    	vmaxnm.f32	s1, s1, s31
    5040: eef4 0a4f    	vcmp.f32	s1, s30
    5044: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5048: f57f aed6    	bpl.w	0x4df8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x428> @ imm = #-0x254
    504c: a060         	adr	r0, #384 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x6e0>
    504e: eeb4 ba43    	vcmp.f32	s22, s6
    5052: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5056: bfc8         	it	gt
    5058: 3004         	addgt	r0, #0x4
    505a: eeb4 3a4a    	vcmp.f32	s6, s20
    505e: ed9f 3a57    	vldr	s6, [pc, #348]          @ 0x51bc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7ec>
    5062: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5066: ed90 0a00    	vldr	s0, [r0]
    506a: 9801         	ldr	r0, [sp, #0x4]
    506c: fe30 0a03    	vselgt.f32	s0, s0, s6
    5070: f04f 557e    	mov.w	r5, #0x3f800000
    5074: ed9d 3a02    	vldr	s6, [sp, #8]
    5078: ed80 3a00    	vstr	s6, [r0]
    507c: f1bb 0f10    	cmp.w	r11, #0x10
    5080: ed80 1a01    	vstr	s2, [r0, #4]
    5084: a809         	add	r0, sp, #0x24
    5086: d01b         	beq	0x50c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x6f0> @ imm = #0x36
    5088: ee24 3a06    	vmul.f32	s6, s8, s12
    508c: eef0 aa41    	vmov.f32	s21, s2
    5090: ee20 4a07    	vmul.f32	s8, s0, s14
    5094: ed9f 0a4a    	vldr	s0, [pc, #296]          @ 0x51c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7f0>
    5098: eeb0 fa60    	vmov.f32	s30, s1
    509c: 4649         	mov	r1, r9
    509e: ee23 0a00    	vmul.f32	s0, s6, s0
    50a2: ed9f 3a48    	vldr	s6, [pc, #288]          @ 0x51c4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7f4>
    50a6: ee04 0a03    	vmla.f32	s0, s8, s6
    50aa: f1ba 0f10    	cmp.w	r10, #0x10
    50ae: eeb1 3a45    	vneg.f32	s6, s10
    50b2: f106 0601    	add.w	r6, r6, #0x1
    50b6: 46d3         	mov	r11, r10
    50b8: ed8d 2a05    	vstr	s4, [sp, #20]
    50bc: f77f ae1d    	ble.w	0x4cfa <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x32a> @ imm = #-0x3c6
    50c0: f64b 706a    	movw	r0, #0xbf6a
    50c4: f24c 3268    	movw	r2, #0xc368
    50c8: f2c0 0000    	movt	r0, #0x0
    50cc: f2c0 0200    	movt	r2, #0x0
    50d0: 2128         	movs	r1, #0x28
    50d2: f005 faad    	bl	0xa630 <core::panicking::panic> @ imm = #0x555a
    50d6: bf00         	nop
    50d8: 17 b7 d1 38  	.word	0x38d1b717
    50dc: 00 bf 00 bf  	.word	0xbf00bf00
    50e0: ed9f 1a39    	vldr	s2, [pc, #228]          @ 0x51c8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7f8>
    50e4: 3601         	adds	r6, #0x1
    50e6: eeb4 fa41    	vcmp.f32	s30, s2
    50ea: 2000         	movs	r0, #0x0
    50ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    50f0: e9dd 2103    	ldrd	r2, r1, [sp, #12]
    50f4: ed9d 1a05    	vldr	s2, [sp, #20]
    50f8: d809         	bhi	0x510e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x73e> @ imm = #0x12
    50fa: eeb0 0ac0    	vabs.f32	s0, s0
    50fe: ed9f 2a33    	vldr	s4, [pc, #204]          @ 0x51cc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7fc>
    5102: eeb4 0a42    	vcmp.f32	s0, s4
    5106: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    510a: bf98         	it	ls
    510c: 2001         	movls	r0, #0x1
    510e: ed82 1a00    	vstr	s2, [r2]
    5112: ed81 fa00    	vstr	s30, [r1]
    5116: 710e         	strb	r6, [r1, #0x4]
    5118: 7148         	strb	r0, [r1, #0x5]
    511a: b012         	add	sp, #0x48
    511c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    5120: b001         	add	sp, #0x4
    5122: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    5126: bdf0         	pop	{r4, r5, r6, r7, pc}
    5128: 9904         	ldr	r1, [sp, #0x10]
    512a: 2000         	movs	r0, #0x0
    512c: e7f1         	b	0x5112 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x742> @ imm = #-0x1e
    512e: bf00         	nop
    5130: bd 37 06 36  	.word	0x360637bd
    5134: 00 bf 00 bf  	.word	0xbf00bf00
    5138: 2000         	movs	r0, #0x0
    513a: e9dd 2103    	ldrd	r2, r1, [sp, #12]
    513e: ed9d 1a05    	vldr	s2, [sp, #20]
    5142: e7e4         	b	0x510e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x73e> @ imm = #-0x38
    5144: bf00         	nop
    5146: bf00         	nop
    5148: f64b 60b8    	movw	r0, #0xbeb8
    514c: f24c 3278    	movw	r2, #0xc378
    5150: f2c0 0000    	movt	r0, #0x0
    5154: f2c0 0200    	movt	r2, #0x0
    5158: a909         	add	r1, sp, #0x24
    515a: f005 fa65    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #0x54ca
    515e: bf00         	nop
    5160: ac c5 a7 37  	.word	0x37a7c5ac
    5164: 00 bf 00 bf  	.word	0xbf00bf00
    5168: ed9f 2a13    	vldr	s4, [pc, #76]           @ 0x51b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7e8>
    516c: eeb0 1a42    	vmov.f32	s2, s4
    5170: e539         	b	0x4be6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x216> @ imm = #-0x58e
    5172: bf00         	nop
    5174: bf00         	nop
    5176: bf00         	nop
    5178: 1f 89 9b cf  	.word	0xcf9b891f
    517c: ab 32 9c bf  	.word	0xbf9c32ab
    5180: 00 f0 e6 61  	.word	0x61e6f000
    5184: 55 15 14 bf  	.word	0xbf141555
    5188: 91 d4 a8 53  	.word	0x53a8d491
    518c: ec f7 77 41  	.word	0x4177f7ec
    5190: a7 2a 45 4f  	.word	0x4f452aa7
    5194: ed 97 01 41  	.word	0x410197ed
    5198: 00 00 00 00  	.word	0x00000000
    519c: 00 00 90 b6  	.word	0xb6900000
    51a0: 7c f2 b0 3a  	.word	0x3ab0f27c
    51a4: a6 9b c4 3b  	.word	0x3bc49ba6
    51a8: 7c f2 b0 ba  	.word	0xbab0f27c
    51ac: 53 4a a1 43  	.word	0x43a14a53
    51b0: a6 9b c4 bb  	.word	0xbbc49ba6
    51b4: 79 78 b0 43  	.word	0x43b07879
    51b8: 00 00 c0 7f  	.word	0x7fc00000
    51bc: 00 00 00 80  	.word	0x80000000
    51c0: ab aa a0 38  	.word	0x38a0aaab
    51c4: 5e 95 e1 bc  	.word	0xbce1955e
    51c8: 17 b7 d1 38  	.word	0x38d1b717
    51cc: ac c5 a7 37  	.word	0x37a7c5ac
    51d0: 00 00 00 80  	.word	0x80000000
    51d4: 79 61 2e c3  	.word	0xc32e6179

000051d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>>:
    51d8: b5f0         	push	{r4, r5, r6, r7, lr}
    51da: af03         	add	r7, sp, #0xc
    51dc: e92d 0f00    	push.w	{r8, r9, r10, r11}
    51e0: b081         	sub	sp, #0x4
    51e2: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    51e6: b0a6         	sub	sp, #0x98
    51e8: ed9f 1a9a    	vldr	s2, [pc, #616]          @ 0x5454 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x27c>
    51ec: 2500         	movs	r5, #0x0
    51ee: ee20 2a01    	vmul.f32	s4, s0, s2
    51f2: ed9f 0a99    	vldr	s0, [pc, #612]          @ 0x5458 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x280>
    51f6: ed9f 1a99    	vldr	s2, [pc, #612]          @ 0x545c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x284>
    51fa: 9519         	str	r5, [sp, #0x64]
    51fc: ed9f 3a98    	vldr	s6, [pc, #608]          @ 0x5460 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x288>
    5200: 9518         	str	r5, [sp, #0x60]
    5202: ee32 0a00    	vadd.f32	s0, s4, s0
    5206: 9515         	str	r5, [sp, #0x54]
    5208: ee32 1a01    	vadd.f32	s2, s4, s2
    520c: e9cd 5516    	strd	r5, r5, [sp, #88]
    5210: eec0 ea03    	vdiv.f32	s29, s0, s6
    5214: ee81 9a03    	vdiv.f32	s18, s2, s6
    5218: eef4 ea49    	vcmp.f32	s29, s18
    521c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5220: f200 8676    	bhi.w	0x5f10 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd38> @ imm = #0xcec
    5224: ed91 0a01    	vldr	s0, [r1, #4]
    5228: ed8d 0a04    	vstr	s0, [sp, #16]
    522c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    5230: ed91 4a02    	vldr	s8, [r1, #8]
    5234: ed9f 1b8c    	vldr	d1, [pc, #560]          @ 0x5468 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x290>
    5238: ed8d 4a14    	vstr	s8, [sp, #80]
    523c: 2600         	movs	r6, #0x0
    523e: ed92 3b12    	vldr	d3, [r2, #72]
    5242: eebf fa00    	vmov.f32	s30, #-1.000000e+00
    5246: ee00 3b01    	vmla.f64	d3, d0, d1
    524a: eeb7 1ac4    	vcvt.f64.f32	d1, s8
    524e: ed91 4a03    	vldr	s8, [r1, #12]
    5252: ed9f 0b87    	vldr	d0, [pc, #540]          @ 0x5470 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x298>
    5256: ed8d 4a13    	vstr	s8, [sp, #76]
    525a: ed8d 3b10    	vstr	d3, [sp, #64]
    525e: ee01 3b00    	vmla.f64	d3, d1, d0
    5262: eeb7 0ac4    	vcvt.f64.f32	d0, s8
    5266: ed9f 4b84    	vldr	d4, [pc, #528]          @ 0x5478 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2a0>
    526a: ee00 3b04    	vmla.f64	d3, d0, d4
    526e: eeb7 4ac2    	vcvt.f64.f32	d4, s4
    5272: ed9f 5b83    	vldr	d5, [pc, #524]          @ 0x5480 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2a8>
    5276: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    527a: ed9f 6b83    	vldr	d6, [pc, #524]          @ 0x5488 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2b0>
    527e: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    5282: eeb0 3b44    	vmov.f64	d3, d4
    5286: ee02 3b05    	vmla.f64	d3, d2, d5
    528a: ed9f 2b81    	vldr	d2, [pc, #516]          @ 0x5490 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2b8>
    528e: ee83 2b02    	vdiv.f64	d2, d3, d2
    5292: ed9f 5b81    	vldr	d5, [pc, #516]          @ 0x5498 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2c0>
    5296: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    529a: ed8d 4b0e    	vstr	d4, [sp, #56]
    529e: eef4 ea42    	vcmp.f32	s29, s4
    52a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    52a6: ed92 4b04    	vldr	d4, [r2, #16]
    52aa: fe3e 3a82    	vselgt.f32	s6, s29, s4
    52ae: ed8d 4b0c    	vstr	d4, [sp, #48]
    52b2: bf48         	it	mi
    52b4: 2601         	movmi	r6, #0x1
    52b6: ee01 4b05    	vmla.f64	d4, d1, d5
    52ba: eeb4 3a49    	vcmp.f32	s6, s18
    52be: ee00 4b06    	vmla.f64	d4, d0, d6
    52c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    52c6: eeb4 9a42    	vcmp.f32	s18, s4
    52ca: ed9f 2b75    	vldr	d2, [pc, #468]          @ 0x54a0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2c8>
    52ce: fe39 8a03    	vselgt.f32	s16, s18, s6
    52d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    52d6: eeb4 2b44    	vcmp.f64	d2, d4
    52da: bfc8         	it	gt
    52dc: 2501         	movgt	r5, #0x1
    52de: ed9f 3b72    	vldr	d3, [pc, #456]          @ 0x54a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2d0>
    52e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    52e6: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    52ea: ea05 0506    	and.w	r5, r5, r6
    52ee: eeb4 4b43    	vcmp.f64	d4, d3
    52f2: ed9f 4a4c    	vldr	s8, [pc, #304]          @ 0x5424 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x24c>
    52f6: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    52fa: eeb0 7ac2    	vabs.f32	s14, s4
    52fe: eeb0 5a44    	vmov.f32	s10, s8
    5302: fe3f 2a04    	vselgt.f32	s4, s30, s8
    5306: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    530a: fe33 6a02    	vselgt.f32	s12, s6, s4
    530e: ed9f 2a46    	vldr	s4, [pc, #280]          @ 0x5428 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x250>
    5312: eeb4 7a42    	vcmp.f32	s14, s4
    5316: eeb0 2a44    	vmov.f32	s4, s8
    531a: eeb0 3a44    	vmov.f32	s6, s8
    531e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5322: f280 80f8    	bge.w	0x5516 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x33e> @ imm = #0x1f0
    5326: ed9f 2a41    	vldr	s4, [pc, #260]          @ 0x542c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x254>
    532a: eeb4 7a42    	vcmp.f32	s14, s4
    532e: ed9f 2a3d    	vldr	s4, [pc, #244]          @ 0x5424 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x24c>
    5332: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5336: d90f         	bls	0x5358 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x180> @ imm = #0x1e
    5338: ed9f 3a3d    	vldr	s6, [pc, #244]          @ 0x5430 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x258>
    533c: eeb4 7a43    	vcmp.f32	s14, s6
    5340: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5344: d910         	bls	0x5368 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x190> @ imm = #0x20
    5346: ed9f 3a3b    	vldr	s6, [pc, #236]          @ 0x5434 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x25c>
    534a: ee37 4a03    	vadd.f32	s8, s14, s6
    534e: ed9f 5a3a    	vldr	s10, [pc, #232]         @ 0x5438 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x260>
    5352: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    5356: e00f         	b	0x5378 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x1a0> @ imm = #0x1e
    5358: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    535c: eeb0 4a42    	vmov.f32	s8, s4
    5360: e00e         	b	0x5380 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x1a8> @ imm = #0x1c
    5362: bf00         	nop
    5364: bf00         	nop
    5366: bf00         	nop
    5368: ed9f 3a34    	vldr	s6, [pc, #208]          @ 0x543c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x264>
    536c: ee37 4a03    	vadd.f32	s8, s14, s6
    5370: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    5374: ed9f 5a32    	vldr	s10, [pc, #200]         @ 0x5440 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x268>
    5378: ee04 3a05    	vmla.f32	s6, s8, s10
    537c: ee26 4a05    	vmul.f32	s8, s12, s10
    5380: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    5384: eeb1 4a44    	vneg.f32	s8, s8
    5388: ee35 3a43    	vsub.f32	s6, s10, s6
    538c: fe83 5a02    	vmaxnm.f32	s10, s6, s4
    5390: eeb5 5a40    	vcmp.f32	s10, #0
    5394: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5398: d956         	bls	0x5448 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x270> @ imm = #0xac
    539a: eeb0 2ac8    	vabs.f32	s4, s16
    539e: eeb4 2a45    	vcmp.f32	s4, s10
    53a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53a6: f240 808b    	bls.w	0x54c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2e8> @ imm = #0x116
    53aa: ee85 3a02    	vdiv.f32	s6, s10, s4
    53ae: ee23 2a03    	vmul.f32	s4, s6, s6
    53b2: ee22 2a02    	vmul.f32	s4, s4, s4
    53b6: ee22 2a02    	vmul.f32	s4, s4, s4
    53ba: ee22 6a02    	vmul.f32	s12, s4, s4
    53be: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    53c2: ee36 7a02    	vadd.f32	s14, s12, s4
    53c6: eef0 2a42    	vmov.f32	s5, s4
    53ca: eeb4 7a42    	vcmp.f32	s14, s4
    53ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53d2: d009         	beq	0x53e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x210> @ imm = #0x12
    53d4: eef0 2a47    	vmov.f32	s5, s14
    53d8: eef1 2ae2    	vsqrt.f32	s5, s5
    53dc: eef1 2ae2    	vsqrt.f32	s5, s5
    53e0: eef1 2ae2    	vsqrt.f32	s5, s5
    53e4: eef1 2ae2    	vsqrt.f32	s5, s5
    53e8: ee82 2a22    	vdiv.f32	s4, s4, s5
    53ec: eeb4 8a48    	vcmp.f32	s16, s16
    53f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53f4: ee82 7a07    	vdiv.f32	s14, s4, s14
    53f8: f180 8596    	bvs.w	0x5f28 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd50> @ imm = #0xb2c
    53fc: ee18 6a10    	vmov	r6, s16
    5400: f04f 547e    	mov.w	r4, #0x3f800000
    5404: f364 061e    	bfi	r6, r4, #0, #31
    5408: ee02 6a90    	vmov	s5, r6
    540c: ee22 5a85    	vmul.f32	s10, s5, s10
    5410: ee25 2a02    	vmul.f32	s4, s10, s4
    5414: ee22 5a87    	vmul.f32	s10, s5, s14
    5418: ee23 3a06    	vmul.f32	s6, s6, s12
    541c: ee23 3a07    	vmul.f32	s6, s6, s14
    5420: e079         	b	0x5516 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x33e> @ imm = #0xf2
    5422: bf00         	nop
    5424: 00 00 00 00  	.word	0x00000000
    5428: 0a d7 23 3d  	.word	0x3d23d70a
    542c: 7c f2 b0 3a  	.word	0x3ab0f27c
    5430: a6 9b c4 3b  	.word	0x3bc49ba6
    5434: a6 9b c4 bb  	.word	0xbbc49ba6
    5438: 79 78 b0 43  	.word	0x43b07879
    543c: 7c f2 b0 ba  	.word	0xbab0f27c
    5440: 53 4a a1 43  	.word	0x43a14a53
    5444: 00 bf 00 bf  	.word	0xbf00bf00
    5448: eeb0 3a42    	vmov.f32	s6, s4
    544c: eeb0 5a42    	vmov.f32	s10, s4
    5450: e061         	b	0x5516 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x33e> @ imm = #0xc2
    5452: bf00         	nop
    5454: 00 80 bb 47  	.word	0x47bb8000
    5458: 00 24 74 cb  	.word	0xcb742400
    545c: 00 24 74 4b  	.word	0x4b742400
    5460: 00 a0 0c 48  	.word	0x480ca000
    5464: 00 bf 00 bf  	.word	0xbf00bf00
    5468: a5 94 a7 50  	.word	0x50a794a5
    546c: 09 2c d5 3f  	.word	0x3fd52c09
    5470: 9c 9e 91 65  	.word	0x65919e9c
    5474: 97 57 e8 bf  	.word	0xbfe85797
    5478: 76 43 71 a5  	.word	0xa5714376
    547c: f8 73 e2 3f  	.word	0x3fe273f8
    5480: 91 d4 a8 53  	.word	0x53a8d491
    5484: ec f7 77 41  	.word	0x4177f7ec
    5488: 0f 97 9b b4  	.word	0xb49b970f
    548c: e8 75 16 3f  	.word	0x3f1675e8
    5490: a7 2a 45 4f  	.word	0x4f452aa7
    5494: ed 97 01 41  	.word	0x410197ed
    5498: 00 50 66 db  	.word	0xdb665000
    549c: 76 ec 1e bf  	.word	0xbf1eec76
    54a0: 00 00 00 00  	.word	0x00000000
    54a4: 00 00 90 b6  	.word	0xb6900000
    54a8: 00 00 00 00  	.word	0x00000000
    54ac: 00 00 90 36  	.word	0x36900000
    54b0: e0 96 9b b4  	.word	0xb49b96e0
    54b4: e8 75 16 3f  	.word	0x3f1675e8
    54b8: 32 e2 b6 04  	.word	0x04b6e232
    54bc: 2a ad 22 bf  	.word	0xbf22ad2a
    54c0: ee88 2a05    	vdiv.f32	s4, s16, s10
    54c4: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    54c8: ee22 2a02    	vmul.f32	s4, s4, s4
    54cc: eeb0 7a46    	vmov.f32	s14, s12
    54d0: ee22 2a02    	vmul.f32	s4, s4, s4
    54d4: ee22 2a02    	vmul.f32	s4, s4, s4
    54d8: ee22 2a02    	vmul.f32	s4, s4, s4
    54dc: ee32 3a06    	vadd.f32	s6, s4, s12
    54e0: eeb4 3a46    	vcmp.f32	s6, s12
    54e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54e8: d009         	beq	0x54fe <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x326> @ imm = #0x12
    54ea: eeb0 7a43    	vmov.f32	s14, s6
    54ee: eeb1 7ac7    	vsqrt.f32	s14, s14
    54f2: eeb1 7ac7    	vsqrt.f32	s14, s14
    54f6: eeb1 7ac7    	vsqrt.f32	s14, s14
    54fa: eeb1 7ac7    	vsqrt.f32	s14, s14
    54fe: ee86 6a07    	vdiv.f32	s12, s12, s14
    5502: ee28 2a02    	vmul.f32	s4, s16, s4
    5506: ee86 3a03    	vdiv.f32	s6, s12, s6
    550a: ee82 5a05    	vdiv.f32	s10, s4, s10
    550e: ee28 2a06    	vmul.f32	s4, s16, s12
    5512: ee25 5a03    	vmul.f32	s10, s10, s6
    5516: ed9d 6a14    	vldr	s12, [sp, #80]
    551a: 2d00         	cmp	r5, #0x0
    551c: ee36 2a42    	vsub.f32	s4, s12, s4
    5520: ed9f 6aed    	vldr	s12, [pc, #948]         @ 0x58d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x700>
    5524: e9cd 3005    	strd	r3, r0, [sp, #20]
    5528: ee24 4a05    	vmul.f32	s8, s8, s10
    552c: ed9f 5aeb    	vldr	s10, [pc, #940]         @ 0x58dc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x704>
    5530: ee12 0a10    	vmov	r0, s4
    5534: eddf 6aea    	vldr	s13, [pc, #936]         @ 0x58e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x708>
    5538: fe06 6a05    	vseleq.f32	s12, s12, s10
    553c: ed9f 5ae9    	vldr	s10, [pc, #932]         @ 0x58e4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x70c>
    5540: eddf 7ae9    	vldr	s15, [pc, #932]         @ 0x58e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x710>
    5544: f020 4000    	bic	r0, r0, #0x80000000
    5548: f1b0 4fff    	cmp.w	r0, #0x7f800000
    554c: da09         	bge	0x5562 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x38a> @ imm = #0x12
    554e: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    5552: ed1f 7a4c    	vldr	s14, [pc, #-304]        @ 0x5424 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x24c>
    5556: ee82 5a05    	vdiv.f32	s10, s4, s10
    555a: eeb0 5ac5    	vabs.f32	s10, s10
    555e: fe85 5a07    	vmaxnm.f32	s10, s10, s14
    5562: ed9f 7ae2    	vldr	s14, [pc, #904]         @ 0x58ec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x714>
    5566: eddd 5a13    	vldr	s11, [sp, #76]
    556a: ee85 7a87    	vdiv.f32	s14, s11, s14
    556e: eddf cae0    	vldr	s25, [pc, #896]         @ 0x58f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x718>
    5572: ed9f aae0    	vldr	s20, [pc, #896]         @ 0x58f4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x71c>
    5576: eefe 8a00    	vmov.f32	s17, #-5.000000e-01
    557a: ed9f badf    	vldr	s22, [pc, #892]         @ 0x58f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x720>
    557e: eeb6 ea00    	vmov.f32	s28, #5.000000e-01
    5582: eef4 ca47    	vcmp.f32	s25, s14
    5586: ed9f dadd    	vldr	s26, [pc, #884]         @ 0x58fc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x724>
    558a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    558e: ed9f cadc    	vldr	s24, [pc, #880]         @ 0x5900 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x728>
    5592: f244 4508    	movw	r5, #0x4408
    5596: fe3c 7a87    	vselgt.f32	s14, s25, s14
    559a: f6c4 0500    	movt	r5, #0x4800
    559e: f240 1455    	movw	r4, #0x155
    55a2: eddf fad8    	vldr	s31, [pc, #864]         @ 0x5904 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x72c>
    55a6: f2c0 0408    	movt	r4, #0x8
    55aa: f04f 587e    	mov.w	r8, #0x3f800000
    55ae: eeb4 7a4a    	vcmp.f32	s14, s20
    55b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55b6: ee26 3a03    	vmul.f32	s6, s12, s6
    55ba: ed9f 6ad3    	vldr	s12, [pc, #844]         @ 0x5908 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x730>
    55be: fe3a 7a07    	vselgt.f32	s14, s20, s14
    55c2: ee67 2a0b    	vmul.f32	s5, s14, s22
    55c6: ee72 3aa8    	vadd.f32	s7, s5, s17
    55ca: eef5 2a40    	vcmp.f32	s5, #0
    55ce: ee72 4a8e    	vadd.f32	s9, s5, s28
    55d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55d6: eefd 3ae3    	vcvt.s32.f32	s7, s7
    55da: eefd 4ae4    	vcvt.s32.f32	s9, s9
    55de: ee13 0a90    	vmov	r0, s7
    55e2: ee14 3a90    	vmov	r3, s9
    55e6: bfa8         	it	ge
    55e8: 4618         	movge	r0, r3
    55ea: ee02 0a90    	vmov	s5, r0
    55ee: eb08 50c0    	add.w	r0, r8, r0, lsl #23
    55f2: eef8 2ae2    	vcvt.f32.s32	s5, s5
    55f6: ee02 7acd    	vmls.f32	s14, s5, s26
    55fa: eddf 2ac4    	vldr	s5, [pc, #784]          @ 0x590c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x734>
    55fe: eec5 2aa2    	vdiv.f32	s5, s11, s5
    5602: ee27 7a0e    	vmul.f32	s14, s14, s28
    5606: eeb4 fa47    	vcmp.f32	s30, s14
    560a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    560e: fe3f 7a07    	vselgt.f32	s14, s30, s14
    5612: eeb4 7a4c    	vcmp.f32	s14, s24
    5616: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    561a: eef4 ca62    	vcmp.f32	s25, s5
    561e: fe3c 7a07    	vselgt.f32	s14, s24, s14
    5622: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5626: fe7c 2aa2    	vselgt.f32	s5, s25, s5
    562a: eef4 2a4a    	vcmp.f32	s5, s20
    562e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5632: fe7a 2a22    	vselgt.f32	s5, s20, s5
    5636: ee62 3a8b    	vmul.f32	s7, s5, s22
    563a: ee73 4aa8    	vadd.f32	s9, s7, s17
    563e: eef5 3a40    	vcmp.f32	s7, #0
    5642: ee73 5a8e    	vadd.f32	s11, s7, s28
    5646: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    564a: eefd 4ae4    	vcvt.s32.f32	s9, s9
    564e: eefd 5ae5    	vcvt.s32.f32	s11, s11
    5652: ee14 6a90    	vmov	r6, s9
    5656: ee15 3a90    	vmov	r3, s11
    565a: bfa8         	it	ge
    565c: 461e         	movge	r6, r3
    565e: ed92 bb06    	vldr	d11, [r2, #24]
    5662: ee03 6a90    	vmov	s7, r6
    5666: f845 4c08    	str	r4, [r5, #-8]
    566a: eb08 52c6    	add.w	r2, r8, r6, lsl #23
    566e: eef8 3ae3    	vcvt.f32.s32	s7, s7
    5672: ee43 2acd    	vmls.f32	s5, s7, s26
    5676: eddf 3ae9    	vldr	s7, [pc, #932]          @ 0x5a1c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x844>
    567a: ee27 7a23    	vmul.f32	s14, s14, s7
    567e: ed1f db74    	vldr	d13, [pc, #-464]        @ 0x54b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2d8>
    5682: eebd 7ac7    	vcvt.s32.f32	s14, s14
    5686: ed05 7a01    	vstr	s14, [r5, #-4]
    568a: ee62 2a8e    	vmul.f32	s5, s5, s28
    568e: eeb4 fa62    	vcmp.f32	s30, s5
    5692: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5696: fe7f 2a22    	vselgt.f32	s5, s30, s5
    569a: eef4 2a4c    	vcmp.f32	s5, s24
    569e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56a2: fe7c 2a22    	vselgt.f32	s5, s24, s5
    56a6: ee22 7aa3    	vmul.f32	s14, s5, s7
    56aa: edd5 2a00    	vldr	s5, [r5]
    56ae: edd5 3a00    	vldr	s7, [r5]
    56b2: f845 4c08    	str	r4, [r5, #-8]
    56b6: eef8 3ae3    	vcvt.f32.s32	s7, s7
    56ba: eebd 7ac7    	vcvt.s32.f32	s14, s14
    56be: ed05 7a01    	vstr	s14, [r5, #-4]
    56c2: eef8 2ae2    	vcvt.f32.s32	s5, s5
    56c6: ee23 7aaf    	vmul.f32	s14, s7, s31
    56ca: edd5 3a00    	vldr	s7, [r5]
    56ce: edd5 4a00    	vldr	s9, [r5]
    56d2: eef8 3ae3    	vcvt.f32.s32	s7, s7
    56d6: eef8 4ae4    	vcvt.f32.s32	s9, s9
    56da: ee02 7aaf    	vmla.f32	s14, s5, s31
    56de: ed8d bb0a    	vstr	d11, [sp, #40]
    56e2: ee64 2aaf    	vmul.f32	s5, s9, s31
    56e6: ee43 2aaf    	vmla.f32	s5, s7, s31
    56ea: ee03 0a90    	vmov	s7, r0
    56ee: ee01 bb0d    	vmla.f64	d11, d1, d13
    56f2: ee01 2a90    	vmov	s3, r2
    56f6: ee37 7a07    	vadd.f32	s14, s14, s14
    56fa: ed1f db91    	vldr	d13, [pc, #-580]        @ 0x54b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2e0>
    56fe: ee32 1aa2    	vadd.f32	s2, s5, s5
    5702: eddf 2ac7    	vldr	s5, [pc, #796]          @ 0x5a20 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x848>
    5706: ee27 7a23    	vmul.f32	s14, s14, s7
    570a: ee00 bb0d    	vmla.f64	d11, d0, d13
    570e: ee61 1a21    	vmul.f32	s3, s2, s3
    5712: ed9f 1ac4    	vldr	s2, [pc, #784]          @ 0x5a24 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x84c>
    5716: ed9f da73    	vldr	s26, [pc, #460]         @ 0x58e4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x70c>
    571a: eef7 0bcb    	vcvt.f32.f64	s1, d11
    571e: ee37 0a61    	vsub.f32	s0, s14, s3
    5722: ee50 0a01    	vnmls.f32	s1, s0, s2
    5726: ee24 0a26    	vmul.f32	s0, s8, s13
    572a: ee24 1a27    	vmul.f32	s2, s8, s15
    572e: ee10 0a90    	vmov	r0, s1
    5732: f020 4000    	bic	r0, r0, #0x80000000
    5736: f1b0 4fff    	cmp.w	r0, #0x7f800000
    573a: da17         	bge	0x576c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x594> @ imm = #0x2e
    573c: ed9f 4af0    	vldr	s8, [pc, #960]          @ 0x5b00 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x928>
    5740: eeb4 5a45    	vcmp.f32	s10, s10
    5744: ee80 4a84    	vdiv.f32	s8, s1, s8
    5748: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    574c: eeb0 4ac4    	vabs.f32	s8, s8
    5750: fe14 5a05    	vselvs.f32	s10, s8, s10
    5754: eeb4 4a44    	vcmp.f32	s8, s8
    5758: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    575c: fe15 4a04    	vselvs.f32	s8, s10, s8
    5760: eeb4 5a44    	vcmp.f32	s10, s8
    5764: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5768: fe35 da04    	vselgt.f32	s26, s10, s8
    576c: ee03 0a06    	vmla.f32	s0, s6, s12
    5770: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    5774: ee03 1a22    	vmla.f32	s2, s6, s5
    5778: a81d         	add	r0, sp, #0x74
    577a: ee37 7a21    	vadd.f32	s14, s14, s3
    577e: f64a 7346    	movw	r3, #0xaf46
    5782: eeb1 6a42    	vneg.f32	s12, s4
    5786: f04f 0a00    	mov.w	r10, #0x0
    578a: eeb1 4a60    	vneg.f32	s8, s1
    578e: f100 0214    	add.w	r2, r0, #0x14
    5792: 9103         	str	r1, [sp, #0xc]
    5794: 6809         	ldr	r1, [r1]
    5796: 9101         	str	r1, [sp, #0x4]
    5798: 2100         	movs	r1, #0x0
    579a: f6cb 03b3    	movt	r3, #0xb8b3
    579e: f04f 0900    	mov.w	r9, #0x0
    57a2: 46d3         	mov	r11, r10
    57a4: eddf 7adc    	vldr	s15, [pc, #880]         @ 0x5b18 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x940>
    57a8: eddf badc    	vldr	s23, [pc, #880]         @ 0x5b1c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x944>
    57ac: 9202         	str	r2, [sp, #0x8]
    57ae: eddf aadc    	vldr	s21, [pc, #880]         @ 0x5b20 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x948>
    57b2: ed5f 9ae4    	vldr	s19, [pc, #-912]        @ 0x5424 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x24c>
    57b6: ed9f 2a9b    	vldr	s4, [pc, #620]          @ 0x5a24 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x84c>
    57ba: ee30 0a0b    	vadd.f32	s0, s0, s22
    57be: ee27 2a02    	vmul.f32	s4, s14, s4
    57c2: ed9f 3a4a    	vldr	s6, [pc, #296]          @ 0x58ec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x714>
    57c6: ed8d 0a1d    	vstr	s0, [sp, #116]
    57ca: f1ba 0f10    	cmp.w	r10, #0x10
    57ce: ed8d 6a1a    	vstr	s12, [sp, #104]
    57d2: 4606         	mov	r6, r0
    57d4: ee82 2a03    	vdiv.f32	s4, s4, s6
    57d8: ed8d 4a1b    	vstr	s8, [sp, #108]
    57dc: ed8d 1a1e    	vstr	s2, [sp, #120]
    57e0: 911c         	str	r1, [sp, #0x70]
    57e2: ee32 0a27    	vadd.f32	s0, s4, s15
    57e6: 911f         	str	r1, [sp, #0x7c]
    57e8: ed8d 0a21    	vstr	s0, [sp, #132]
    57ec: bf18         	it	ne
    57ee: f10b 0b01    	addne.w	r11, r11, #0x1
    57f2: 9915         	ldr	r1, [sp, #0x54]
    57f4: 6011         	str	r1, [r2]
    57f6: 9916         	ldr	r1, [sp, #0x58]
    57f8: 6051         	str	r1, [r2, #0x4]
    57fa: 9917         	ldr	r1, [sp, #0x5c]
    57fc: 6091         	str	r1, [r2, #0x8]
    57fe: 9918         	ldr	r1, [sp, #0x60]
    5800: 60d1         	str	r1, [r2, #0xc]
    5802: 2202         	movs	r2, #0x2
    5804: a91a         	add	r1, sp, #0x68
    5806: 9320         	str	r3, [sp, #0x80]
    5808: f005 fff2    	bl	0xb7f0 <orange_dsp::condensed::solve> @ imm = #0x5fe4
    580c: 2800         	cmp	r0, #0x0
    580e: f000 8377    	beq.w	0x5f00 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd28> @ imm = #0x6ee
    5812: ed9d 0a14    	vldr	s0, [sp, #80]
    5816: ed9d 1a1a    	vldr	s2, [sp, #104]
    581a: eeb0 0ac0    	vabs.f32	s0, s0
    581e: eeb0 3ac1    	vabs.f32	s6, s2
    5822: eeb4 0a40    	vcmp.f32	s0, s0
    5826: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    582a: fe1b 0a00    	vselvs.f32	s0, s22, s0
    582e: eeb4 0a4b    	vcmp.f32	s0, s22
    5832: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5836: fe30 0a0b    	vselgt.f32	s0, s0, s22
    583a: ee20 0a2b    	vmul.f32	s0, s0, s23
    583e: fe80 0a6a    	vminnm.f32	s0, s0, s21
    5842: eeb4 3a40    	vcmp.f32	s6, s0
    5846: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    584a: d81c         	bhi	0x5886 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x6ae> @ imm = #0x38
    584c: ed9d 0a13    	vldr	s0, [sp, #76]
    5850: ed9d 2a1b    	vldr	s4, [sp, #108]
    5854: eeb0 0ac0    	vabs.f32	s0, s0
    5858: eeb0 2ac2    	vabs.f32	s4, s4
    585c: eeb4 0a40    	vcmp.f32	s0, s0
    5860: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5864: fe1b 0a00    	vselvs.f32	s0, s22, s0
    5868: eeb4 0a4b    	vcmp.f32	s0, s22
    586c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5870: fe30 0a0b    	vselgt.f32	s0, s0, s22
    5874: ee20 0a2b    	vmul.f32	s0, s0, s23
    5878: fe80 0a6a    	vminnm.f32	s0, s0, s21
    587c: eeb4 2a40    	vcmp.f32	s4, s0
    5880: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5884: d910         	bls	0x58a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x6d0> @ imm = #0x20
    5886: 2000         	movs	r0, #0x0
    5888: ed9f 0aa6    	vldr	s0, [pc, #664]          @ 0x5b24 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x94c>
    588c: eeb4 da40    	vcmp.f32	s26, s0
    5890: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5894: d810         	bhi	0x58b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x6e0> @ imm = #0x20
    5896: f1aa 0110    	sub.w	r1, r10, #0x10
    589a: fab1 f181    	clz	r1, r1
    589e: 0949         	lsrs	r1, r1, #0x5
    58a0: 4301         	orrs	r1, r0
    58a2: d00d         	beq	0x58c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x6e8> @ imm = #0x1a
    58a4: e31b         	b	0x5ede <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd06> @ imm = #0x636
    58a6: bf00         	nop
    58a8: 2001         	movs	r0, #0x1
    58aa: ed9f 0a9e    	vldr	s0, [pc, #632]          @ 0x5b24 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x94c>
    58ae: eeb4 da40    	vcmp.f32	s26, s0
    58b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58b6: d9ee         	bls	0x5896 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x6be> @ imm = #-0x24
    58b8: f1ba 0f10    	cmp.w	r10, #0x10
    58bc: f000 8324    	beq.w	0x5f08 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd30> @ imm = #0x648
    58c0: f04f 507e    	mov.w	r0, #0x3f800000
    58c4: ed9d 4a1b    	vldr	s8, [sp, #108]
    58c8: ed8d 3a07    	vstr	s6, [sp, #28]
    58cc: ed8d da09    	vstr	s26, [sp, #36]
    58d0: ed8d 8a08    	vstr	s16, [sp, #32]
    58d4: e022         	b	0x591c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x744> @ imm = #0x44
    58d6: bf00         	nop
    58d8: 00 00 00 80  	.word	0x80000000
    58dc: 79 61 2e c3  	.word	0xc32e6179
    58e0: b7 63 f7 38  	.word	0x38f763b7
    58e4: 00 00 80 7f  	.word	0x7f800000
    58e8: 46 af b3 b8  	.word	0xb8b3af46
    58ec: f5 4a 39 3d  	.word	0x3d394af5
    58f0: 00 00 a0 c2  	.word	0xc2a00000
    58f4: 00 00 a0 42  	.word	0x42a00000
    58f8: 3b aa b8 3f  	.word	0x3fb8aa3b
    58fc: 18 72 31 3f  	.word	0x3f317218
    5900: fe ff 7f 3f  	.word	0x3f7ffffe
    5904: 00 00 00 30  	.word	0x30000000
    5908: bb bc 42 bf  	.word	0xbf42bcbb
    590c: f5 4a 39 bd  	.word	0xbd394af5
    5910: f5a0 0000    	sub.w	r0, r0, #0x800000
    5914: f1b0 5f66    	cmp.w	r0, #0x39800000
    5918: f000 82ba    	beq.w	0x5e90 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xcb8> @ imm = #0x574
    591c: ee00 0a10    	vmov	s0, r0
    5920: ed9d 2a14    	vldr	s4, [sp, #80]
    5924: ed9d 3a13    	vldr	s6, [sp, #76]
    5928: eef0 4a69    	vmov.f32	s9, s19
    592c: ed9f 6b7e    	vldr	d6, [pc, #504]          @ 0x5b28 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x950>
    5930: ee01 2a00    	vmla.f32	s4, s2, s0
    5934: eef0 3a69    	vmov.f32	s7, s19
    5938: ee04 3a00    	vmla.f32	s6, s8, s0
    593c: ed9d 5b10    	vldr	d5, [sp, #64]
    5940: ed9f bb7b    	vldr	d11, [pc, #492]         @ 0x5b30 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x958>
    5944: eeb7 7ac2    	vcvt.f64.f32	d7, s4
    5948: eeb7 0ac3    	vcvt.f64.f32	d0, s6
    594c: ed9f 8b7a    	vldr	d8, [pc, #488]          @ 0x5b38 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x960>
    5950: ee07 5b06    	vmla.f64	d5, d7, d6
    5954: ed9f 6b7a    	vldr	d6, [pc, #488]          @ 0x5b40 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x968>
    5958: ee00 5b06    	vmla.f64	d5, d0, d6
    595c: ed9d 6b0e    	vldr	d6, [sp, #56]
    5960: eeb7 5bc5    	vcvt.f32.f64	s10, d5
    5964: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    5968: ee05 6b0b    	vmla.f64	d6, d5, d11
    596c: ed9f 5b76    	vldr	d5, [pc, #472]          @ 0x5b48 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x970>
    5970: ee86 5b05    	vdiv.f64	d5, d6, d5
    5974: eef0 6a69    	vmov.f32	s13, s19
    5978: ed9d bb0c    	vldr	d11, [sp, #48]
    597c: eeb7 6bc5    	vcvt.f32.f64	s12, d5
    5980: ed9f 5b73    	vldr	d5, [pc, #460]          @ 0x5b50 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x978>
    5984: eef4 ea46    	vcmp.f32	s29, s12
    5988: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    598c: ee07 bb05    	vmla.f64	d11, d7, d5
    5990: fe3e 5a86    	vselgt.f32	s10, s29, s12
    5994: ee00 bb08    	vmla.f64	d11, d0, d8
    5998: eeb4 5a49    	vcmp.f32	s10, s18
    599c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59a0: ed9f 8b6d    	vldr	d8, [pc, #436]          @ 0x5b58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x980>
    59a4: fe39 5a05    	vselgt.f32	s10, s18, s10
    59a8: eef7 1bcb    	vcvt.f32.f64	s3, d11
    59ac: eeb4 8b4b    	vcmp.f64	d8, d11
    59b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59b4: ed9f 8b6a    	vldr	d8, [pc, #424]          @ 0x5b60 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x988>
    59b8: fe7f 2a29    	vselgt.f32	s5, s30, s19
    59bc: eeb4 bb48    	vcmp.f64	d11, d8
    59c0: eeb7 8a00    	vmov.f32	s16, #1.000000e+00
    59c4: eef0 1ae1    	vabs.f32	s3, s3
    59c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59cc: fe78 5a22    	vselgt.f32	s11, s16, s5
    59d0: eddf 2a44    	vldr	s5, [pc, #272]          @ 0x5ae4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x90c>
    59d4: eef4 1a62    	vcmp.f32	s3, s5
    59d8: eef0 2a69    	vmov.f32	s5, s19
    59dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59e0: f280 80ee    	bge.w	0x5bc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x9e8> @ imm = #0x1dc
    59e4: eddf 2a40    	vldr	s5, [pc, #256]          @ 0x5ae8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x910>
    59e8: eef0 3a69    	vmov.f32	s7, s19
    59ec: eef4 1a62    	vcmp.f32	s3, s5
    59f0: eef7 2a08    	vmov.f32	s5, #1.500000e+00
    59f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    59f8: d922         	bls	0x5a40 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x868> @ imm = #0x44
    59fa: eddf 2a3c    	vldr	s5, [pc, #240]          @ 0x5aec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x914>
    59fe: eef4 1a62    	vcmp.f32	s3, s5
    5a02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a06: d90f         	bls	0x5a28 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x850> @ imm = #0x1e
    5a08: eddf 2a39    	vldr	s5, [pc, #228]          @ 0x5af0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x918>
    5a0c: ee71 1aa2    	vadd.f32	s3, s3, s5
    5a10: eef0 2a08    	vmov.f32	s5, #3.000000e+00
    5a14: eddf 3a37    	vldr	s7, [pc, #220]          @ 0x5af4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x91c>
    5a18: e00e         	b	0x5a38 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x860> @ imm = #0x1c
    5a1a: bf00         	nop
    5a1c: 00 00 00 4f  	.word	0x4f000000
    5a20: c5 9f 13 3f  	.word	0x3f139fc5
    5a24: 77 cc 2b 31  	.word	0x312bcc77
    5a28: eddf 2a33    	vldr	s5, [pc, #204]          @ 0x5af8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x920>
    5a2c: ee71 1aa2    	vadd.f32	s3, s3, s5
    5a30: eef7 2a08    	vmov.f32	s5, #1.500000e+00
    5a34: eddf 3a31    	vldr	s7, [pc, #196]          @ 0x5afc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x924>
    5a38: ee41 2aa3    	vmla.f32	s5, s3, s7
    5a3c: ee65 3aa3    	vmul.f32	s7, s11, s7
    5a40: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    5a44: ee71 1ae2    	vsub.f32	s3, s3, s5
    5a48: eef1 2a63    	vneg.f32	s5, s7
    5a4c: fec1 5aa9    	vmaxnm.f32	s11, s3, s19
    5a50: eef5 5a40    	vcmp.f32	s11, #0
    5a54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a58: d956         	bls	0x5b08 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x930> @ imm = #0xac
    5a5a: eef0 1ac5    	vabs.f32	s3, s10
    5a5e: eef4 1a65    	vcmp.f32	s3, s11
    5a62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a66: f240 807f    	bls.w	0x5b68 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x990> @ imm = #0xfe
    5a6a: eec5 1aa1    	vdiv.f32	s3, s11, s3
    5a6e: eef0 6a48    	vmov.f32	s13, s16
    5a72: ee61 3aa1    	vmul.f32	s7, s3, s3
    5a76: ee63 3aa3    	vmul.f32	s7, s7, s7
    5a7a: ee63 3aa3    	vmul.f32	s7, s7, s7
    5a7e: ee63 4aa3    	vmul.f32	s9, s7, s7
    5a82: ee74 3a88    	vadd.f32	s7, s9, s16
    5a86: eef4 3a48    	vcmp.f32	s7, s16
    5a8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a8e: d009         	beq	0x5aa4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x8cc> @ imm = #0x12
    5a90: eef0 6a63    	vmov.f32	s13, s7
    5a94: eef1 6ae6    	vsqrt.f32	s13, s13
    5a98: eef1 6ae6    	vsqrt.f32	s13, s13
    5a9c: eef1 6ae6    	vsqrt.f32	s13, s13
    5aa0: eef1 6ae6    	vsqrt.f32	s13, s13
    5aa4: eec8 aa26    	vdiv.f32	s21, s16, s13
    5aa8: eddf 6af8    	vldr	s13, [pc, #992]         @ 0x5e8c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xcb4>
    5aac: ee61 1aa4    	vmul.f32	s3, s3, s9
    5ab0: eeb4 5a45    	vcmp.f32	s10, s10
    5ab4: eeca 8aa3    	vdiv.f32	s17, s21, s7
    5ab8: eef0 3a66    	vmov.f32	s7, s13
    5abc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ac0: bf7f         	itttt	vc
    5ac2: ee15 1a10    	vmovvc	r1, s10
    5ac6: f368 011e    	bfivc	r1, r8, #0, #31
    5aca: ee03 1a90    	vmovvc	s7, r1
    5ace: ee63 5aa5    	vmulvc.f32	s11, s7, s11
    5ad2: bf7c         	itt	vc
    5ad4: ee65 6aaa    	vmulvc.f32	s13, s11, s21
    5ad8: ee63 3aa8    	vmulvc.f32	s7, s7, s17
    5adc: ee61 4aa8    	vmul.f32	s9, s3, s17
    5ae0: e06e         	b	0x5bc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x9e8> @ imm = #0xdc
    5ae2: bf00         	nop
    5ae4: 0a d7 23 3d  	.word	0x3d23d70a
    5ae8: 7c f2 b0 3a  	.word	0x3ab0f27c
    5aec: a6 9b c4 3b  	.word	0x3bc49ba6
    5af0: a6 9b c4 bb  	.word	0xbbc49ba6
    5af4: 79 78 b0 43  	.word	0x43b07879
    5af8: 7c f2 b0 ba  	.word	0xbab0f27c
    5afc: 53 4a a1 43  	.word	0x43a14a53
    5b00: 0a d7 23 3c  	.word	0x3c23d70a
    5b04: 00 bf 00 bf  	.word	0xbf00bf00
    5b08: eef0 6a69    	vmov.f32	s13, s19
    5b0c: eef0 4a69    	vmov.f32	s9, s19
    5b10: eef0 3a69    	vmov.f32	s7, s19
    5b14: e054         	b	0x5bc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x9e8> @ imm = #0xa8
    5b16: bf00         	nop
    5b18: 50 69 15 39  	.word	0x39156950
    5b1c: bd 37 06 36  	.word	0x360637bd
    5b20: ac c5 a7 37  	.word	0x37a7c5ac
    5b24: 17 b7 d1 38  	.word	0x38d1b717
    5b28: 9c 9e 91 65  	.word	0x65919e9c
    5b2c: 97 57 e8 bf  	.word	0xbfe85797
    5b30: 91 d4 a8 53  	.word	0x53a8d491
    5b34: ec f7 77 41  	.word	0x4177f7ec
    5b38: 0f 97 9b b4  	.word	0xb49b970f
    5b3c: e8 75 16 3f  	.word	0x3f1675e8
    5b40: 76 43 71 a5  	.word	0xa5714376
    5b44: f8 73 e2 3f  	.word	0x3fe273f8
    5b48: a7 2a 45 4f  	.word	0x4f452aa7
    5b4c: ed 97 01 41  	.word	0x410197ed
    5b50: 00 50 66 db  	.word	0xdb665000
    5b54: 76 ec 1e bf  	.word	0xbf1eec76
    5b58: 00 00 00 00  	.word	0x00000000
    5b5c: 00 00 90 b6  	.word	0xb6900000
    5b60: 00 00 00 00  	.word	0x00000000
    5b64: 00 00 90 36  	.word	0x36900000
    5b68: eec5 1a25    	vdiv.f32	s3, s10, s11
    5b6c: eef0 4a48    	vmov.f32	s9, s16
    5b70: ee61 1aa1    	vmul.f32	s3, s3, s3
    5b74: ee61 1aa1    	vmul.f32	s3, s3, s3
    5b78: ee61 1aa1    	vmul.f32	s3, s3, s3
    5b7c: ee61 1aa1    	vmul.f32	s3, s3, s3
    5b80: ee71 3a88    	vadd.f32	s7, s3, s16
    5b84: eef4 3a48    	vcmp.f32	s7, s16
    5b88: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b8c: d009         	beq	0x5ba2 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x9ca> @ imm = #0x12
    5b8e: eef0 4a63    	vmov.f32	s9, s7
    5b92: eef1 4ae4    	vsqrt.f32	s9, s9
    5b96: eef1 4ae4    	vsqrt.f32	s9, s9
    5b9a: eef1 4ae4    	vsqrt.f32	s9, s9
    5b9e: eef1 4ae4    	vsqrt.f32	s9, s9
    5ba2: eec8 6a24    	vdiv.f32	s13, s16, s9
    5ba6: ee65 1a21    	vmul.f32	s3, s10, s3
    5baa: eec6 4aa3    	vdiv.f32	s9, s13, s7
    5bae: eec1 1aa5    	vdiv.f32	s3, s3, s11
    5bb2: ee65 6a26    	vmul.f32	s13, s10, s13
    5bb6: ee61 3aa4    	vmul.f32	s7, s3, s9
    5bba: bf00         	nop
    5bbc: bf00         	nop
    5bbe: bf00         	nop
    5bc0: ee72 5a66    	vsub.f32	s11, s4, s13
    5bc4: eddf 6ae6    	vldr	s13, [pc, #920]         @ 0x5f60 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd88>
    5bc8: ee15 1a90    	vmov	r1, s11
    5bcc: f021 4100    	bic	r1, r1, #0x80000000
    5bd0: f1b1 4fff    	cmp.w	r1, #0x7f800000
    5bd4: da07         	bge	0x5be6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xa0e> @ imm = #0xe
    5bd6: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    5bda: eec5 1aa1    	vdiv.f32	s3, s11, s3
    5bde: eef0 1ae1    	vabs.f32	s3, s3
    5be2: fec1 6aa9    	vmaxnm.f32	s13, s3, s19
    5be6: eddf 1adf    	vldr	s3, [pc, #892]          @ 0x5f64 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd8c>
    5bea: eefe ba00    	vmov.f32	s23, #-5.000000e-01
    5bee: eec3 1a21    	vdiv.f32	s3, s6, s3
    5bf2: ed9f 8ade    	vldr	s16, [pc, #888]         @ 0x5f6c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd94>
    5bf6: ed9f dade    	vldr	s26, [pc, #888]         @ 0x5f70 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd98>
    5bfa: eef4 ca61    	vcmp.f32	s25, s3
    5bfe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c02: fe7c 1aa1    	vselgt.f32	s3, s25, s3
    5c06: eef4 1a4a    	vcmp.f32	s3, s20
    5c0a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c0e: fe7a 1a21    	vselgt.f32	s3, s20, s3
    5c12: ee21 ba88    	vmul.f32	s22, s3, s16
    5c16: ee7b 8a2b    	vadd.f32	s17, s22, s23
    5c1a: eeb5 ba40    	vcmp.f32	s22, #0
    5c1e: ee7b aa0e    	vadd.f32	s21, s22, s28
    5c22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c26: eefd 8ae8    	vcvt.s32.f32	s17, s17
    5c2a: eefd aaea    	vcvt.s32.f32	s21, s21
    5c2e: ee18 1a90    	vmov	r1, s17
    5c32: ee1a 2a90    	vmov	r2, s21
    5c36: bfa8         	it	ge
    5c38: 4611         	movge	r1, r2
    5c3a: ee0b 1a10    	vmov	s22, r1
    5c3e: eb08 51c1    	add.w	r1, r8, r1, lsl #23
    5c42: eeb8 bacb    	vcvt.f32.s32	s22, s22
    5c46: ee4b 1a4d    	vmls.f32	s3, s22, s26
    5c4a: ed9f bac7    	vldr	s22, [pc, #796]         @ 0x5f68 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd90>
    5c4e: ee83 ba0b    	vdiv.f32	s22, s6, s22
    5c52: ee61 1a8e    	vmul.f32	s3, s3, s28
    5c56: eeb4 fa61    	vcmp.f32	s30, s3
    5c5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c5e: fe7f 1a21    	vselgt.f32	s3, s30, s3
    5c62: eef4 1a4c    	vcmp.f32	s3, s24
    5c66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c6a: eef4 ca4b    	vcmp.f32	s25, s22
    5c6e: fe7c 1a21    	vselgt.f32	s3, s24, s3
    5c72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c76: fe3c ba8b    	vselgt.f32	s22, s25, s22
    5c7a: eeb4 ba4a    	vcmp.f32	s22, s20
    5c7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c82: fe3a ba0b    	vselgt.f32	s22, s20, s22
    5c86: ee6b 8a08    	vmul.f32	s17, s22, s16
    5c8a: ed9f 8aba    	vldr	s16, [pc, #744]         @ 0x5f74 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd9c>
    5c8e: ee61 1a88    	vmul.f32	s3, s3, s16
    5c92: ee78 aaab    	vadd.f32	s21, s17, s23
    5c96: eef5 8a40    	vcmp.f32	s17, #0
    5c9a: ee78 ba8e    	vadd.f32	s23, s17, s28
    5c9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ca2: eefd aaea    	vcvt.s32.f32	s21, s21
    5ca6: eefd baeb    	vcvt.s32.f32	s23, s23
    5caa: eefd 1ae1    	vcvt.s32.f32	s3, s3
    5cae: ee1a 2a90    	vmov	r2, s21
    5cb2: ee1b 3a90    	vmov	r3, s23
    5cb6: bfa8         	it	ge
    5cb8: 461a         	movge	r2, r3
    5cba: f845 4c08    	str	r4, [r5, #-8]
    5cbe: ee08 2a90    	vmov	s17, r2
    5cc2: ed45 1a01    	vstr	s3, [r5, #-4]
    5cc6: eb08 52c2    	add.w	r2, r8, r2, lsl #23
    5cca: eef8 8ae8    	vcvt.f32.s32	s17, s17
    5cce: ee08 bacd    	vmls.f32	s22, s17, s26
    5cd2: ed9f db99    	vldr	d13, [pc, #612]         @ 0x5f38 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd60>
    5cd6: ee2b ba0e    	vmul.f32	s22, s22, s28
    5cda: eeb4 fa4b    	vcmp.f32	s30, s22
    5cde: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ce2: fe3f ba0b    	vselgt.f32	s22, s30, s22
    5ce6: eeb4 ba4c    	vcmp.f32	s22, s24
    5cea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5cee: fe3c ba0b    	vselgt.f32	s22, s24, s22
    5cf2: ee6b 1a08    	vmul.f32	s3, s22, s16
    5cf6: ed95 ba00    	vldr	s22, [r5]
    5cfa: edd5 8a00    	vldr	s17, [r5]
    5cfe: f845 4c08    	str	r4, [r5, #-8]
    5d02: eef8 8ae8    	vcvt.f32.s32	s17, s17
    5d06: eefd 1ae1    	vcvt.s32.f32	s3, s3
    5d0a: ed45 1a01    	vstr	s3, [r5, #-4]
    5d0e: eeb8 bacb    	vcvt.f32.s32	s22, s22
    5d12: ee68 1aaf    	vmul.f32	s3, s17, s31
    5d16: edd5 8a00    	vldr	s17, [r5]
    5d1a: edd5 aa00    	vldr	s21, [r5]
    5d1e: eef8 8ae8    	vcvt.f32.s32	s17, s17
    5d22: eef8 aaea    	vcvt.f32.s32	s21, s21
    5d26: ee4b 1a2f    	vmla.f32	s3, s22, s31
    5d2a: ee2a baaf    	vmul.f32	s22, s21, s31
    5d2e: ee0a 2a90    	vmov	s21, r2
    5d32: ee08 baaf    	vmla.f32	s22, s17, s31
    5d36: ee08 1a90    	vmov	s17, r1
    5d3a: ee71 1aa1    	vadd.f32	s3, s3, s3
    5d3e: ee3b ba0b    	vadd.f32	s22, s22, s22
    5d42: ee61 1aa8    	vmul.f32	s3, s3, s17
    5d46: ee6b 8a2a    	vmul.f32	s17, s22, s21
    5d4a: ed9d bb0a    	vldr	d11, [sp, #40]
    5d4e: ee07 bb0d    	vmla.f64	d11, d7, d13
    5d52: ed9f 7b7b    	vldr	d7, [pc, #492]          @ 0x5f40 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd68>
    5d56: ee00 bb07    	vmla.f64	d11, d0, d7
    5d5a: ee31 0ae8    	vsub.f32	s0, s3, s17
    5d5e: ed9f 7a86    	vldr	s14, [pc, #536]         @ 0x5f78 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xda0>
    5d62: eef7 0bcb    	vcvt.f32.f64	s1, d11
    5d66: ee50 0a07    	vnmls.f32	s1, s0, s14
    5d6a: ee10 1a90    	vmov	r1, s1
    5d6e: f021 4100    	bic	r1, r1, #0x80000000
    5d72: f1b1 4fff    	cmp.w	r1, #0x7f800000
    5d76: f6bf adcb    	bge.w	0x5910 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x738> @ imm = #-0x46a
    5d7a: ed9f 0a80    	vldr	s0, [pc, #512]          @ 0x5f7c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xda4>
    5d7e: eef4 6a66    	vcmp.f32	s13, s13
    5d82: ee80 0a80    	vdiv.f32	s0, s1, s0
    5d86: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d8a: eeb0 0ac0    	vabs.f32	s0, s0
    5d8e: fe10 7a26    	vselvs.f32	s14, s0, s13
    5d92: eeb4 0a40    	vcmp.f32	s0, s0
    5d96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d9a: fe17 0a00    	vselvs.f32	s0, s14, s0
    5d9e: eeb4 7a40    	vcmp.f32	s14, s0
    5da2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5da6: fe77 6a00    	vselgt.f32	s13, s14, s0
    5daa: ed9d 0a09    	vldr	s0, [sp, #36]
    5dae: eef4 6a40    	vcmp.f32	s13, s0
    5db2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5db6: f57f adab    	bpl.w	0x5910 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x738> @ imm = #-0x4aa
    5dba: a075         	adr	r0, #468 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xc5b>
    5dbc: eeb4 9a46    	vcmp.f32	s18, s12
    5dc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5dc4: bfc8         	it	gt
    5dc6: 3004         	addgt	r0, #0x4
    5dc8: 9903         	ldr	r1, [sp, #0xc]
    5dca: eeb4 6a6e    	vcmp.f32	s12, s29
    5dce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5dd2: ed9d 0a04    	vldr	s0, [sp, #16]
    5dd6: ed81 0a01    	vstr	s0, [r1, #4]
    5dda: ed90 0a00    	vldr	s0, [r0]
    5dde: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    5de2: ed9f 1a5a    	vldr	s2, [pc, #360]          @ 0x5f4c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd74>
    5de6: f64a 7346    	movw	r3, #0xaf46
    5dea: fe30 0a01    	vselgt.f32	s0, s0, s2
    5dee: 9a01         	ldr	r2, [sp, #0x4]
    5df0: 600a         	str	r2, [r1]
    5df2: f1ba 0f10    	cmp.w	r10, #0x10
    5df6: ed81 2a02    	vstr	s4, [r1, #8]
    5dfa: ed9f 6a56    	vldr	s12, [pc, #344]         @ 0x5f54 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd7c>
    5dfe: ed81 3a03    	vstr	s6, [r1, #12]
    5e02: f04f 0100    	mov.w	r1, #0x0
    5e06: ed9f 7a55    	vldr	s14, [pc, #340]         @ 0x5f5c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd84>
    5e0a: 9a02         	ldr	r2, [sp, #0x8]
    5e0c: f6cb 03b3    	movt	r3, #0xb8b3
    5e10: eddf aa5d    	vldr	s21, [pc, #372]         @ 0x5f88 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xdb0>
    5e14: eddf 7a5a    	vldr	s15, [pc, #360]         @ 0x5f80 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xda8>
    5e18: 9119         	str	r1, [sp, #0x64]
    5e1a: eddf ba5a    	vldr	s23, [pc, #360]         @ 0x5f84 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xdac>
    5e1e: e9cd 1115    	strd	r1, r1, [sp, #84]
    5e22: e9cd 1117    	strd	r1, r1, [sp, #92]
    5e26: d025         	beq	0x5e74 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xc9c> @ imm = #0x4a
    5e28: ee22 1aa3    	vmul.f32	s2, s5, s7
    5e2c: eeb0 8a45    	vmov.f32	s16, s10
    5e30: ee20 4a24    	vmul.f32	s8, s0, s9
    5e34: ed9f 0a46    	vldr	s0, [pc, #280]          @ 0x5f50 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd78>
    5e38: eeb0 da66    	vmov.f32	s26, s13
    5e3c: 4630         	mov	r0, r6
    5e3e: ee21 0a00    	vmul.f32	s0, s2, s0
    5e42: f1bb 0f10    	cmp.w	r11, #0x10
    5e46: ee04 0a06    	vmla.f32	s0, s8, s12
    5e4a: ed9f 6a43    	vldr	s12, [pc, #268]         @ 0x5f58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd80>
    5e4e: ee21 1a06    	vmul.f32	s2, s2, s12
    5e52: f109 0901    	add.w	r9, r9, #0x1
    5e56: ee04 1a07    	vmla.f32	s2, s8, s14
    5e5a: 46da         	mov	r10, r11
    5e5c: ee31 7aa8    	vadd.f32	s14, s3, s17
    5e60: ed8d 3a13    	vstr	s6, [sp, #76]
    5e64: eeb1 6a65    	vneg.f32	s12, s11
    5e68: ed8d 2a14    	vstr	s4, [sp, #80]
    5e6c: eeb1 4a60    	vneg.f32	s8, s1
    5e70: f77f aca1    	ble.w	0x57b6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x5de> @ imm = #-0x6be
    5e74: f64b 706a    	movw	r0, #0xbf6a
    5e78: f24c 3268    	movw	r2, #0xc368
    5e7c: f2c0 0000    	movt	r0, #0x0
    5e80: f2c0 0200    	movt	r2, #0x0
    5e84: 2128         	movs	r1, #0x28
    5e86: f004 fbd3    	bl	0xa630 <core::panicking::panic> @ imm = #0x47a6
    5e8a: bf00         	nop
    5e8c: 00 00 c0 7f  	.word	0x7fc00000
    5e90: ed9d da09    	vldr	s26, [sp, #36]
    5e94: ed9f 0a3d    	vldr	s0, [pc, #244]          @ 0x5f8c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xdb4>
    5e98: eeb4 da40    	vcmp.f32	s26, s0
    5e9c: ed9f 1a3a    	vldr	s2, [pc, #232]          @ 0x5f88 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xdb0>
    5ea0: ed9d 0a07    	vldr	s0, [sp, #28]
    5ea4: 2000         	movs	r0, #0x0
    5ea6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5eaa: eeb4 0a41    	vcmp.f32	s0, s2
    5eae: f04f 0100    	mov.w	r1, #0x0
    5eb2: eeb0 0ac4    	vabs.f32	s0, s8
    5eb6: f04f 0200    	mov.w	r2, #0x0
    5eba: bf98         	it	ls
    5ebc: 2001         	movls	r0, #0x1
    5ebe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ec2: bf98         	it	ls
    5ec4: 2201         	movls	r2, #0x1
    5ec6: eeb4 0a41    	vcmp.f32	s0, s2
    5eca: f109 0901    	add.w	r9, r9, #0x1
    5ece: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ed2: bf98         	it	ls
    5ed4: 2101         	movls	r1, #0x1
    5ed6: ed9d 8a08    	vldr	s16, [sp, #32]
    5eda: 4011         	ands	r1, r2
    5edc: 4008         	ands	r0, r1
    5ede: 9905         	ldr	r1, [sp, #0x14]
    5ee0: ed81 8a01    	vstr	s16, [r1, #4]
    5ee4: 9906         	ldr	r1, [sp, #0x18]
    5ee6: ed81 da00    	vstr	s26, [r1]
    5eea: f881 9004    	strb.w	r9, [r1, #0x4]
    5eee: 7148         	strb	r0, [r1, #0x5]
    5ef0: b026         	add	sp, #0x98
    5ef2: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    5ef6: b001         	add	sp, #0x4
    5ef8: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    5efc: bdf0         	pop	{r4, r5, r6, r7, pc}
    5efe: bf00         	nop
    5f00: 9906         	ldr	r1, [sp, #0x18]
    5f02: 2000         	movs	r0, #0x0
    5f04: e7ef         	b	0x5ee6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd0e> @ imm = #-0x22
    5f06: bf00         	nop
    5f08: 2000         	movs	r0, #0x0
    5f0a: e7e8         	b	0x5ede <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd06> @ imm = #-0x30
    5f0c: bf00         	nop
    5f0e: bf00         	nop
    5f10: f64b 60b8    	movw	r0, #0xbeb8
    5f14: f24c 3278    	movw	r2, #0xc378
    5f18: f2c0 0000    	movt	r0, #0x0
    5f1c: f2c0 0200    	movt	r2, #0x0
    5f20: a91d         	add	r1, sp, #0x74
    5f22: f004 fb81    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #0x4702
    5f26: bf00         	nop
    5f28: ed9f 5a07    	vldr	s10, [pc, #28]          @ 0x5f48 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd70>
    5f2c: eeb0 2a45    	vmov.f32	s4, s10
    5f30: f7ff ba72    	b.w	0x5418 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x240> @ imm = #-0xb1c
    5f34: bf00         	nop
    5f36: bf00         	nop
    5f38: e0 96 9b b4  	.word	0xb49b96e0
    5f3c: e8 75 16 3f  	.word	0x3f1675e8
    5f40: 32 e2 b6 04  	.word	0x04b6e232
    5f44: 2a ad 22 bf  	.word	0xbf22ad2a
    5f48: 00 00 c0 7f  	.word	0x7fc00000
    5f4c: 00 00 00 80  	.word	0x80000000
    5f50: b7 63 f7 38  	.word	0x38f763b7
    5f54: bb bc 42 bf  	.word	0xbf42bcbb
    5f58: 46 af b3 b8  	.word	0xb8b3af46
    5f5c: c5 9f 13 3f  	.word	0x3f139fc5
    5f60: 00 00 80 7f  	.word	0x7f800000
    5f64: f5 4a 39 3d  	.word	0x3d394af5
    5f68: f5 4a 39 bd  	.word	0xbd394af5
    5f6c: 3b aa b8 3f  	.word	0x3fb8aa3b
    5f70: 18 72 31 3f  	.word	0x3f317218
    5f74: 00 00 00 4f  	.word	0x4f000000
    5f78: 77 cc 2b 31  	.word	0x312bcc77
    5f7c: 0a d7 23 3c  	.word	0x3c23d70a
    5f80: 50 69 15 39  	.word	0x39156950
    5f84: bd 37 06 36  	.word	0x360637bd
    5f88: ac c5 a7 37  	.word	0x37a7c5ac
    5f8c: 17 b7 d1 38  	.word	0x38d1b717
    5f90: 00 00 00 80  	.word	0x80000000
    5f94: 79 61 2e c3  	.word	0xc32e6179

00005f98 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>>:
    5f98: b5f0         	push	{r4, r5, r6, r7, lr}
    5f9a: af03         	add	r7, sp, #0xc
    5f9c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    5fa0: b081         	sub	sp, #0x4
    5fa2: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    5fa6: b0b4         	sub	sp, #0xd0
    5fa8: eddf 2abd    	vldr	s5, [pc, #756]          @ 0x62a0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x308>
    5fac: ee20 0a22    	vmul.f32	s0, s0, s5
    5fb0: eddf 3abc    	vldr	s7, [pc, #752]          @ 0x62a4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x30c>
    5fb4: eddf 6abc    	vldr	s13, [pc, #752]         @ 0x62a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x310>
    5fb8: eddf 5abc    	vldr	s11, [pc, #752]         @ 0x62ac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x314>
    5fbc: ee30 1a23    	vadd.f32	s2, s0, s7
    5fc0: ee30 2a26    	vadd.f32	s4, s0, s13
    5fc4: eec1 9a25    	vdiv.f32	s19, s2, s11
    5fc8: eec2 ea25    	vdiv.f32	s29, s4, s11
    5fcc: eef4 9a6e    	vcmp.f32	s19, s29
    5fd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5fd4: f201 814c    	bhi.w	0x7270 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12d8> @ imm = #0x1298
    5fd8: ed91 1a02    	vldr	s2, [r1, #8]
    5fdc: ed8d 1a04    	vstr	s2, [sp, #16]
    5fe0: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    5fe4: ed91 2a03    	vldr	s4, [r1, #12]
    5fe8: ed9f 4b81    	vldr	d4, [pc, #516]          @ 0x61f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x258>
    5fec: ed8d 2a03    	vstr	s4, [sp, #12]
    5ff0: 2500         	movs	r5, #0x0
    5ff2: ed92 7b14    	vldr	d7, [r2, #80]
    5ff6: 460e         	mov	r6, r1
    5ff8: eddf faad    	vldr	s31, [pc, #692]         @ 0x62b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x318>
    5ffc: ee01 7b04    	vmla.f64	d7, d1, d4
    6000: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    6004: ed91 2a04    	vldr	s4, [r1, #16]
    6008: ed9f 4b7b    	vldr	d4, [pc, #492]          @ 0x61f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x260>
    600c: ed8d 2a26    	vstr	s4, [sp, #152]
    6010: eef7 da00    	vmov.f32	s27, #1.000000e+00
    6014: ee01 7b04    	vmla.f64	d7, d1, d4
    6018: eeb7 4ac2    	vcvt.f64.f32	d4, s4
    601c: ed91 2a05    	vldr	s4, [r1, #20]
    6020: ed9f 8b77    	vldr	d8, [pc, #476]          @ 0x6200 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x268>
    6024: eeb0 1b47    	vmov.f64	d1, d7
    6028: ed8d 2a24    	vstr	s4, [sp, #144]
    602c: 2100         	movs	r1, #0x0
    602e: eeb0 9a6f    	vmov.f32	s18, s31
    6032: ee04 1b08    	vmla.f64	d1, d4, d8
    6036: ed9f ab74    	vldr	d10, [pc, #464]         @ 0x6208 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x270>
    603a: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    603e: ed8d 7b1c    	vstr	d7, [sp, #112]
    6042: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    6046: eeb7 7ac0    	vcvt.f64.f32	d7, s0
    604a: ed8d 7b18    	vstr	d7, [sp, #96]
    604e: ee01 7b0a    	vmla.f64	d7, d1, d10
    6052: ed9f 1bef    	vldr	d1, [pc, #956]          @ 0x6410 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x478>
    6056: ee87 1b01    	vdiv.f64	d1, d7, d1
    605a: ed92 8b08    	vldr	d8, [r2, #32]
    605e: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    6062: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    6066: ed9f abec    	vldr	d10, [pc, #944]         @ 0x6418 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x480>
    606a: eef4 9a40    	vcmp.f32	s19, s0
    606e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6072: ed8d 8b1a    	vstr	d8, [sp, #104]
    6076: fe39 2a80    	vselgt.f32	s4, s19, s0
    607a: eeb0 7b48    	vmov.f64	d7, d8
    607e: bf48         	it	mi
    6080: 2501         	movmi	r5, #0x1
    6082: ed9f 8be7    	vldr	d8, [pc, #924]          @ 0x6420 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x488>
    6086: eeb4 2a6e    	vcmp.f32	s4, s29
    608a: ee04 7b0a    	vmla.f64	d7, d4, d10
    608e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6092: ee01 7b08    	vmla.f64	d7, d1, d8
    6096: fe3e ca82    	vselgt.f32	s24, s29, s4
    609a: eebf 2a00    	vmov.f32	s4, #-1.000000e+00
    609e: ed9f 8be2    	vldr	d8, [pc, #904]          @ 0x6428 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x490>
    60a2: eef4 ea40    	vcmp.f32	s29, s0
    60a6: eeb0 0a6f    	vmov.f32	s0, s31
    60aa: eeb7 3bc7    	vcvt.f32.f64	s6, d7
    60ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    60b2: eeb4 8b47    	vcmp.f64	d8, d7
    60b6: bfc8         	it	gt
    60b8: 2101         	movgt	r1, #0x1
    60ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    60be: ed9f 8bdc    	vldr	d8, [pc, #880]          @ 0x6430 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x498>
    60c2: fe32 2a2f    	vselgt.f32	s4, s4, s31
    60c6: ea05 0401    	and.w	r4, r5, r1
    60ca: eeb4 7b48    	vcmp.f64	d7, d8
    60ce: eef0 7ac3    	vabs.f32	s15, s6
    60d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    60d6: eeb0 3a6f    	vmov.f32	s6, s31
    60da: fe3d 7a82    	vselgt.f32	s14, s27, s4
    60de: ed9f 2ae7    	vldr	s4, [pc, #924]          @ 0x647c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4e4>
    60e2: eef4 7a42    	vcmp.f32	s15, s4
    60e6: eeb0 2a6f    	vmov.f32	s4, s31
    60ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    60ee: f280 80c2    	bge.w	0x6276 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x2de> @ imm = #0x184
    60f2: ed9f 2ae3    	vldr	s4, [pc, #908]          @ 0x6480 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4e8>
    60f6: eef4 7a42    	vcmp.f32	s15, s4
    60fa: ed9f 2a6d    	vldr	s4, [pc, #436]          @ 0x62b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x318>
    60fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6102: d911         	bls	0x6128 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x190> @ imm = #0x22
    6104: ed9f 3adf    	vldr	s6, [pc, #892]          @ 0x6484 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4ec>
    6108: eef4 7a43    	vcmp.f32	s15, s6
    610c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6110: d912         	bls	0x6138 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1a0> @ imm = #0x24
    6112: ed9f 3add    	vldr	s6, [pc, #884]          @ 0x6488 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f0>
    6116: ee37 5a83    	vadd.f32	s10, s15, s6
    611a: ed9f 6adc    	vldr	s12, [pc, #880]         @ 0x648c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f4>
    611e: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    6122: e011         	b	0x6148 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1b0> @ imm = #0x22
    6124: bf00         	nop
    6126: bf00         	nop
    6128: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    612c: eeb0 6a42    	vmov.f32	s12, s4
    6130: e00e         	b	0x6150 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1b8> @ imm = #0x1c
    6132: bf00         	nop
    6134: bf00         	nop
    6136: bf00         	nop
    6138: ed9f 3ad5    	vldr	s6, [pc, #852]          @ 0x6490 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f8>
    613c: ee37 5a83    	vadd.f32	s10, s15, s6
    6140: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    6144: ed9f 6ad3    	vldr	s12, [pc, #844]         @ 0x6494 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4fc>
    6148: ee05 3a06    	vmla.f32	s6, s10, s12
    614c: ee27 6a06    	vmul.f32	s12, s14, s12
    6150: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    6154: eeb1 0a46    	vneg.f32	s0, s12
    6158: ee35 3a43    	vsub.f32	s6, s10, s6
    615c: fe83 5a02    	vmaxnm.f32	s10, s6, s4
    6160: eeb5 5a40    	vcmp.f32	s10, #0
    6164: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6168: d952         	bls	0x6210 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x278> @ imm = #0xa4
    616a: eeb0 2acc    	vabs.f32	s4, s24
    616e: eeb4 2a45    	vcmp.f32	s4, s10
    6172: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6176: d953         	bls	0x6220 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x288> @ imm = #0xa6
    6178: ee85 6a02    	vdiv.f32	s12, s10, s4
    617c: ee26 2a06    	vmul.f32	s4, s12, s12
    6180: ee22 2a02    	vmul.f32	s4, s4, s4
    6184: ee22 2a02    	vmul.f32	s4, s4, s4
    6188: ee22 7a02    	vmul.f32	s14, s4, s4
    618c: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    6190: ee77 7a02    	vadd.f32	s15, s14, s4
    6194: eeb0 8a42    	vmov.f32	s16, s4
    6198: eef4 7a42    	vcmp.f32	s15, s4
    619c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    61a0: d009         	beq	0x61b6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x21e> @ imm = #0x12
    61a2: eeb0 8a67    	vmov.f32	s16, s15
    61a6: eeb1 8ac8    	vsqrt.f32	s16, s16
    61aa: eeb1 8ac8    	vsqrt.f32	s16, s16
    61ae: eeb1 8ac8    	vsqrt.f32	s16, s16
    61b2: eeb1 8ac8    	vsqrt.f32	s16, s16
    61b6: ee82 2a08    	vdiv.f32	s4, s4, s16
    61ba: eeb4 ca4c    	vcmp.f32	s24, s24
    61be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    61c2: eec2 7a27    	vdiv.f32	s15, s4, s15
    61c6: f181 805f    	bvs.w	0x7288 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12f0> @ imm = #0x10be
    61ca: ee1c 1a10    	vmov	r1, s24
    61ce: f04f 557e    	mov.w	r5, #0x3f800000
    61d2: f365 011e    	bfi	r1, r5, #0, #31
    61d6: ee08 1a10    	vmov	s16, r1
    61da: ee28 5a05    	vmul.f32	s10, s16, s10
    61de: ee28 3a27    	vmul.f32	s6, s16, s15
    61e2: ee25 2a02    	vmul.f32	s4, s10, s4
    61e6: ee26 6a07    	vmul.f32	s12, s12, s14
    61ea: ee26 9a27    	vmul.f32	s18, s12, s15
    61ee: e042         	b	0x6276 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x2de> @ imm = #0x84
    61f0: ab 14 f2 db  	.word	0xdbf214ab
    61f4: ec cd d7 3f  	.word	0x3fd7cdec
    61f8: c4 a9 9f 7b  	.word	0x7b9fa9c4
    61fc: 67 dd c7 3f  	.word	0x3fc7dd67
    6200: 1c 38 88 77  	.word	0x7788381c
    6204: bf 13 e1 bf  	.word	0xbfe113bf
    6208: 91 d4 a8 53  	.word	0x53a8d491
    620c: ec f7 77 41  	.word	0x4177f7ec
    6210: eeb0 9a42    	vmov.f32	s18, s4
    6214: eeb0 3a42    	vmov.f32	s6, s4
    6218: e02d         	b	0x6276 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x2de> @ imm = #0x5a
    621a: bf00         	nop
    621c: bf00         	nop
    621e: bf00         	nop
    6220: ee8c 2a05    	vdiv.f32	s4, s24, s10
    6224: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    6228: ee22 2a02    	vmul.f32	s4, s4, s4
    622c: eef0 7a47    	vmov.f32	s15, s14
    6230: ee22 2a02    	vmul.f32	s4, s4, s4
    6234: ee22 2a02    	vmul.f32	s4, s4, s4
    6238: ee22 2a02    	vmul.f32	s4, s4, s4
    623c: ee32 6a07    	vadd.f32	s12, s4, s14
    6240: eeb4 6a47    	vcmp.f32	s12, s14
    6244: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6248: d009         	beq	0x625e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x2c6> @ imm = #0x12
    624a: eef0 7a46    	vmov.f32	s15, s12
    624e: eef1 7ae7    	vsqrt.f32	s15, s15
    6252: eef1 7ae7    	vsqrt.f32	s15, s15
    6256: eef1 7ae7    	vsqrt.f32	s15, s15
    625a: eef1 7ae7    	vsqrt.f32	s15, s15
    625e: ee87 7a27    	vdiv.f32	s14, s14, s15
    6262: ee2c 2a02    	vmul.f32	s4, s24, s4
    6266: ee87 9a06    	vdiv.f32	s18, s14, s12
    626a: ee82 5a05    	vdiv.f32	s10, s4, s10
    626e: ee2c 2a07    	vmul.f32	s4, s24, s14
    6272: ee25 3a09    	vmul.f32	s6, s10, s18
    6276: ed9d 7a26    	vldr	s14, [sp, #152]
    627a: 2c00         	cmp	r4, #0x0
    627c: ee37 2a42    	vsub.f32	s4, s14, s4
    6280: ed9f dada    	vldr	s26, [pc, #872]         @ 0x65ec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x654>
    6284: ed9f eada    	vldr	s28, [pc, #872]         @ 0x65f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x658>
    6288: fe0e 5a0d    	vseleq.f32	s10, s28, s26
    628c: ee12 1a10    	vmov	r1, s4
    6290: f021 4100    	bic	r1, r1, #0x80000000
    6294: f1b1 4fff    	cmp.w	r1, #0x7f800000
    6298: db0e         	blt	0x62b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x320> @ imm = #0x1c
    629a: eddf 7ad6    	vldr	s15, [pc, #856]         @ 0x65f4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x65c>
    629e: e015         	b	0x62cc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x334> @ imm = #0x2a
    62a0: 00 80 bb 47  	.word	0x47bb8000
    62a4: 00 24 74 cb  	.word	0xcb742400
    62a8: 00 24 74 4b  	.word	0x4b742400
    62ac: 00 a0 0c 48  	.word	0x480ca000
    62b0: 00 00 00 00  	.word	0x00000000
    62b4: 00 bf 00 bf  	.word	0xbf00bf00
    62b8: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
    62bc: ed1f 8a04    	vldr	s16, [pc, #-16]         @ 0x62b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x318>
    62c0: eec2 7a27    	vdiv.f32	s15, s4, s15
    62c4: eef0 7ae7    	vabs.f32	s15, s15
    62c8: fec7 7a88    	vmaxnm.f32	s15, s15, s16
    62cc: ee60 0aa2    	vmul.f32	s1, s1, s5
    62d0: ee70 2aa3    	vadd.f32	s5, s1, s7
    62d4: ee70 3aa6    	vadd.f32	s7, s1, s13
    62d8: ee82 faa5    	vdiv.f32	s30, s5, s11
    62dc: eec3 caa5    	vdiv.f32	s25, s7, s11
    62e0: eeb4 fa6c    	vcmp.f32	s30, s25
    62e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    62e8: f200 87c2    	bhi.w	0x7270 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12d8> @ imm = #0xf84
    62ec: ed9f ab52    	vldr	d10, [pc, #328]         @ 0x6438 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4a0>
    62f0: ed8d 3a1e    	vstr	s6, [sp, #120]
    62f4: 2500         	movs	r5, #0x0
    62f6: ed92 8b16    	vldr	d8, [r2, #88]
    62fa: ed8d 0a21    	vstr	s0, [sp, #132]
    62fe: 2100         	movs	r1, #0x0
    6300: ed8d 8b16    	vstr	d8, [sp, #88]
    6304: ee04 8b0a    	vmla.f64	d8, d4, d10
    6308: ed9f ab4d    	vldr	d10, [pc, #308]         @ 0x6440 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4a8>
    630c: ee01 8b0a    	vmla.f64	d8, d1, d10
    6310: eeb7 aae0    	vcvt.f64.f32	d10, s1
    6314: ed1f bb44    	vldr	d11, [pc, #-272]        @ 0x6208 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x270>
    6318: eef7 2bc8    	vcvt.f32.f64	s5, d8
    631c: ed9f 0b4a    	vldr	d0, [pc, #296]          @ 0x6448 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4b0>
    6320: eeb7 3ae2    	vcvt.f64.f32	d3, s5
    6324: ed8d ab14    	vstr	d10, [sp, #80]
    6328: ee03 ab0b    	vmla.f64	d10, d3, d11
    632c: ed96 3a06    	vldr	s6, [r6, #24]
    6330: ed8d 3a23    	vstr	s6, [sp, #140]
    6334: ed92 8b0a    	vldr	d8, [r2, #40]
    6338: eeb7 bac3    	vcvt.f64.f32	d11, s6
    633c: ed8d 8b12    	vstr	d8, [sp, #72]
    6340: ee04 8b00    	vmla.f64	d8, d4, d0
    6344: ed9f 4b32    	vldr	d4, [pc, #200]          @ 0x6410 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x478>
    6348: ee8a 4b04    	vdiv.f64	d4, d10, d4
    634c: ed1f aa28    	vldr	s20, [pc, #-160]        @ 0x62b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x318>
    6350: ed9f 0b3f    	vldr	d0, [pc, #252]          @ 0x6450 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4b8>
    6354: eef0 2a4a    	vmov.f32	s5, s20
    6358: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    635c: ed9f 3b3e    	vldr	d3, [pc, #248]          @ 0x6458 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4c0>
    6360: eeb4 fa44    	vcmp.f32	s30, s8
    6364: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6368: ee01 8b00    	vmla.f64	d8, d1, d0
    636c: fe7f 0a04    	vselgt.f32	s1, s30, s8
    6370: ee0b 8b03    	vmla.f64	d8, d11, d3
    6374: bf48         	it	mi
    6376: 2501         	movmi	r5, #0x1
    6378: eef4 0a6c    	vcmp.f32	s1, s25
    637c: eef0 3a4a    	vmov.f32	s7, s20
    6380: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6384: eef4 ca44    	vcmp.f32	s25, s8
    6388: eeb7 4bc8    	vcvt.f32.f64	s8, d8
    638c: fe3c 0aa0    	vselgt.f32	s0, s25, s1
    6390: eeff 0a00    	vmov.f32	s1, #-1.000000e+00
    6394: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6398: eef0 5ac4    	vabs.f32	s11, s8
    639c: ed9f 4b22    	vldr	d4, [pc, #136]          @ 0x6428 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x490>
    63a0: bfc8         	it	gt
    63a2: 2101         	movgt	r1, #0x1
    63a4: eeb4 4b48    	vcmp.f64	d4, d8
    63a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63ac: ed9f 4b20    	vldr	d4, [pc, #128]          @ 0x6430 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x498>
    63b0: fe70 0a8a    	vselgt.f32	s1, s1, s20
    63b4: ea05 0401    	and.w	r4, r5, r1
    63b8: eeb4 8b44    	vcmp.f64	d8, d4
    63bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63c0: fe7d 4aa0    	vselgt.f32	s9, s27, s1
    63c4: eddf 0a2d    	vldr	s1, [pc, #180]          @ 0x647c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4e4>
    63c8: eef4 5a60    	vcmp.f32	s11, s1
    63cc: eef0 0a4a    	vmov.f32	s1, s20
    63d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63d4: f280 80ef    	bge.w	0x65b6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x61e> @ imm = #0x1de
    63d8: eddf 0a29    	vldr	s1, [pc, #164]          @ 0x6480 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4e8>
    63dc: eef4 5a60    	vcmp.f32	s11, s1
    63e0: ed5f 0a4d    	vldr	s1, [pc, #-308]         @ 0x62b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x318>
    63e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63e8: d942         	bls	0x6470 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4d8> @ imm = #0x84
    63ea: eddf 2a26    	vldr	s5, [pc, #152]          @ 0x6484 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4ec>
    63ee: eef4 5a62    	vcmp.f32	s11, s5
    63f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63f6: d94f         	bls	0x6498 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x500> @ imm = #0x9e
    63f8: eddf 2a23    	vldr	s5, [pc, #140]          @ 0x6488 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f0>
    63fc: ee75 3aa2    	vadd.f32	s7, s11, s5
    6400: eddf 5a22    	vldr	s11, [pc, #136]         @ 0x648c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f4>
    6404: eef0 2a08    	vmov.f32	s5, #3.000000e+00
    6408: e04e         	b	0x64a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x510> @ imm = #0x9c
    640a: bf00         	nop
    640c: bf00         	nop
    640e: bf00         	nop
    6410: a7 2a 45 4f  	.word	0x4f452aa7
    6414: ed 97 01 41  	.word	0x410197ed
    6418: 61 05 bc 57  	.word	0x57bc0561
    641c: 10 d8 12 bf  	.word	0xbf12d810
    6420: 58 62 94 b9  	.word	0xb9946258
    6424: 1a 9f dc 3e  	.word	0x3edc9f1a
    6428: 00 00 00 00  	.word	0x00000000
    642c: 00 00 90 b6  	.word	0xb6900000
    6430: 00 00 00 00  	.word	0x00000000
    6434: 00 00 90 36  	.word	0x36900000
    6438: 15 be b6 e5  	.word	0xe5b6be15
    643c: 6d 7e c0 bf  	.word	0xbfc07e6d
    6440: 67 42 87 92  	.word	0x92874267
    6444: ba 86 d4 bf  	.word	0xbfd486ba
    6448: 59 62 94 b9  	.word	0xb9946259
    644c: 1a 9f dc 3e  	.word	0x3edc9f1a
    6450: 14 90 51 d1  	.word	0xd1519014
    6454: d5 fc 24 bf  	.word	0xbf24fcd5
    6458: 14 d0 fe 14  	.word	0x14fed014
    645c: cf 45 20 3f  	.word	0x3f2045cf
    6460: 10 43 9c 25  	.word	0x259c4310
    6464: ca fc ef 3f  	.word	0x3feffcca
    6468: 00 80 e7 1d  	.word	0x1de78000
    646c: d3 ae 39 3f  	.word	0x3f39aed3
    6470: eef7 2a08    	vmov.f32	s5, #1.500000e+00
    6474: eef0 3a60    	vmov.f32	s7, s1
    6478: e01a         	b	0x64b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x518> @ imm = #0x34
    647a: bf00         	nop
    647c: 0a d7 23 3d  	.word	0x3d23d70a
    6480: 7c f2 b0 3a  	.word	0x3ab0f27c
    6484: a6 9b c4 3b  	.word	0x3bc49ba6
    6488: a6 9b c4 bb  	.word	0xbbc49ba6
    648c: 79 78 b0 43  	.word	0x43b07879
    6490: 7c f2 b0 ba  	.word	0xbab0f27c
    6494: 53 4a a1 43  	.word	0x43a14a53
    6498: ed5f 2a03    	vldr	s5, [pc, #-12]          @ 0x6490 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f8>
    649c: ee75 3aa2    	vadd.f32	s7, s11, s5
    64a0: eef7 2a08    	vmov.f32	s5, #1.500000e+00
    64a4: ed5f 5a05    	vldr	s11, [pc, #-20]         @ 0x6494 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4fc>
    64a8: ee43 2aa5    	vmla.f32	s5, s7, s11
    64ac: ee64 3aa5    	vmul.f32	s7, s9, s11
    64b0: eef2 4a0e    	vmov.f32	s9, #1.500000e+01
    64b4: ee74 2ae2    	vsub.f32	s5, s9, s5
    64b8: fec2 4aa0    	vmaxnm.f32	s9, s5, s1
    64bc: eef1 2a63    	vneg.f32	s5, s7
    64c0: eef5 4a40    	vcmp.f32	s9, #0
    64c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64c8: d942         	bls	0x6550 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x5b8> @ imm = #0x84
    64ca: eef0 0ac0    	vabs.f32	s1, s0
    64ce: eef4 0a64    	vcmp.f32	s1, s9
    64d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64d6: d943         	bls	0x6560 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x5c8> @ imm = #0x86
    64d8: eec4 3aa0    	vdiv.f32	s7, s9, s1
    64dc: ee63 0aa3    	vmul.f32	s1, s7, s7
    64e0: ee60 0aa0    	vmul.f32	s1, s1, s1
    64e4: ee60 0aa0    	vmul.f32	s1, s1, s1
    64e8: ee60 5aa0    	vmul.f32	s11, s1, s1
    64ec: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    64f0: ee75 6aa0    	vadd.f32	s13, s11, s1
    64f4: eeb0 8a60    	vmov.f32	s16, s1
    64f8: eef4 6a60    	vcmp.f32	s13, s1
    64fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6500: d009         	beq	0x6516 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x57e> @ imm = #0x12
    6502: eeb0 8a66    	vmov.f32	s16, s13
    6506: eeb1 8ac8    	vsqrt.f32	s16, s16
    650a: eeb1 8ac8    	vsqrt.f32	s16, s16
    650e: eeb1 8ac8    	vsqrt.f32	s16, s16
    6512: eeb1 8ac8    	vsqrt.f32	s16, s16
    6516: eec0 0a88    	vdiv.f32	s1, s1, s16
    651a: eeb4 0a40    	vcmp.f32	s0, s0
    651e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6522: eec0 6aa6    	vdiv.f32	s13, s1, s13
    6526: f180 86b7    	bvs.w	0x7298 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1300> @ imm = #0xd6e
    652a: ee10 1a10    	vmov	r1, s0
    652e: f04f 557e    	mov.w	r5, #0x3f800000
    6532: f365 011e    	bfi	r1, r5, #0, #31
    6536: ee08 1a10    	vmov	s16, r1
    653a: ee68 4a24    	vmul.f32	s9, s16, s9
    653e: ee28 aa26    	vmul.f32	s20, s16, s13
    6542: ee64 0aa0    	vmul.f32	s1, s9, s1
    6546: ee63 3aa5    	vmul.f32	s7, s7, s11
    654a: ee63 3aa6    	vmul.f32	s7, s7, s13
    654e: e032         	b	0x65b6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x61e> @ imm = #0x64
    6550: eef0 3a60    	vmov.f32	s7, s1
    6554: eeb0 aa60    	vmov.f32	s20, s1
    6558: e02d         	b	0x65b6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x61e> @ imm = #0x5a
    655a: bf00         	nop
    655c: bf00         	nop
    655e: bf00         	nop
    6560: eec0 0a24    	vdiv.f32	s1, s0, s9
    6564: eef7 5a00    	vmov.f32	s11, #1.000000e+00
    6568: ee60 0aa0    	vmul.f32	s1, s1, s1
    656c: eef0 6a65    	vmov.f32	s13, s11
    6570: ee60 0aa0    	vmul.f32	s1, s1, s1
    6574: ee60 0aa0    	vmul.f32	s1, s1, s1
    6578: ee60 0aa0    	vmul.f32	s1, s1, s1
    657c: ee70 3aa5    	vadd.f32	s7, s1, s11
    6580: eef4 3a65    	vcmp.f32	s7, s11
    6584: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6588: d009         	beq	0x659e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x606> @ imm = #0x12
    658a: eef0 6a63    	vmov.f32	s13, s7
    658e: eef1 6ae6    	vsqrt.f32	s13, s13
    6592: eef1 6ae6    	vsqrt.f32	s13, s13
    6596: eef1 6ae6    	vsqrt.f32	s13, s13
    659a: eef1 6ae6    	vsqrt.f32	s13, s13
    659e: eec5 5aa6    	vdiv.f32	s11, s11, s13
    65a2: ee60 0a20    	vmul.f32	s1, s0, s1
    65a6: eec5 3aa3    	vdiv.f32	s7, s11, s7
    65aa: eec0 4aa4    	vdiv.f32	s9, s1, s9
    65ae: ee60 0a25    	vmul.f32	s1, s0, s11
    65b2: ee24 aaa3    	vmul.f32	s20, s9, s7
    65b6: eddd 4a24    	vldr	s9, [sp, #144]
    65ba: 2c00         	cmp	r4, #0x0
    65bc: ee74 0ae0    	vsub.f32	s1, s9, s1
    65c0: eef0 aa6f    	vmov.f32	s21, s31
    65c4: fe4e 5a0d    	vseleq.f32	s11, s28, s26
    65c8: ed8d ca09    	vstr	s24, [sp, #36]
    65cc: ed8d fa20    	vstr	s30, [sp, #128]
    65d0: ee10 1a90    	vmov	r1, s1
    65d4: edcd ca1f    	vstr	s25, [sp, #124]
    65d8: ed8d 2a22    	vstr	s4, [sp, #136]
    65dc: f021 4100    	bic	r1, r1, #0x80000000
    65e0: f1b1 4fff    	cmp.w	r1, #0x7f800000
    65e4: db08         	blt	0x65f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x660> @ imm = #0x10
    65e6: ed9f 2a03    	vldr	s4, [pc, #12]           @ 0x65f4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x65c>
    65ea: e01d         	b	0x6628 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x690> @ imm = #0x3a
    65ec: 79 61 2e c3  	.word	0xc32e6179
    65f0: 00 00 00 80  	.word	0x80000000
    65f4: 00 00 80 7f  	.word	0x7f800000
    65f8: eef2 4a0e    	vmov.f32	s9, #1.500000e+01
    65fc: eef4 7a67    	vcmp.f32	s15, s15
    6600: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6604: eec0 4aa4    	vdiv.f32	s9, s1, s9
    6608: eef0 4ae4    	vabs.f32	s9, s9
    660c: fe54 6aa7    	vselvs.f32	s13, s9, s15
    6610: eef4 4a64    	vcmp.f32	s9, s9
    6614: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6618: fe56 4aa4    	vselvs.f32	s9, s13, s9
    661c: eef4 6a64    	vcmp.f32	s13, s9
    6620: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6624: fe36 2aa4    	vselgt.f32	s4, s13, s9
    6628: ed1f 7b73    	vldr	d7, [pc, #-460]         @ 0x6460 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4c8>
    662c: ed9d 3a21    	vldr	s6, [sp, #132]
    6630: ee21 8b07    	vmul.f64	d8, d1, d7
    6634: ed92 cb1a    	vldr	d12, [r2, #104]
    6638: ed92 fb1c    	vldr	d15, [r2, #112]
    663c: ed1f 6b76    	vldr	d6, [pc, #-472]         @ 0x6468 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4d0>
    6640: ed8d cb0e    	vstr	d12, [sp, #56]
    6644: ee38 cb0c    	vadd.f64	d12, d8, d12
    6648: ee0b cb06    	vmla.f64	d12, d11, d6
    664c: ed9d 6a1e    	vldr	s12, [sp, #120]
    6650: ee65 6a09    	vmul.f32	s13, s10, s18
    6654: ee38 8b0f    	vadd.f64	d8, d8, d15
    6658: ee23 3a06    	vmul.f32	s6, s6, s12
    665c: ed9f 9ad2    	vldr	s18, [pc, #840]         @ 0x69a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xa10>
    6660: ee0b 8b47    	vmls.f64	d8, d11, d7
    6664: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    6668: ee22 5a8a    	vmul.f32	s10, s5, s20
    666c: eef7 7bcc    	vcvt.f32.f64	s15, d12
    6670: eeb7 6bc8    	vcvt.f32.f64	s12, d8
    6674: ed9f 4bce    	vldr	d4, [pc, #824]          @ 0x69b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xa18>
    6678: eef4 7a46    	vcmp.f32	s15, s12
    667c: ed92 db0c    	vldr	d13, [r2, #48]
    6680: 220d         	movs	r2, #0xd
    6682: ed8d db10    	vstr	d13, [sp, #64]
    6686: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    668a: ee01 db04    	vmla.f64	d13, d1, d4
    668e: fe87 1ac6    	vminnm.f32	s2, s15, s12
    6692: eddf 1ab2    	vldr	s3, [pc, #712]          @ 0x695c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9c4>
    6696: ee0b db44    	vmls.f64	d13, d11, d4
    669a: eeb0 4a47    	vmov.f32	s8, s14
    669e: eddf 4ab0    	vldr	s9, [pc, #704]          @ 0x6960 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9c8>
    66a2: ee37 6a41    	vsub.f32	s12, s14, s2
    66a6: eeb8 7a00    	vmov.f32	s14, #-2.000000e+00
    66aa: eeb7 1bcd    	vcvt.f32.f64	s2, d13
    66ae: ed8d fb0c    	vstr	d15, [sp, #48]
    66b2: bf88         	it	hi
    66b4: 220e         	movhi	r2, #0xe
    66b6: eeb4 6a47    	vcmp.f32	s12, s14
    66ba: ed8d 0a08    	vstr	s0, [sp, #32]
    66be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66c2: d925         	bls	0x6710 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x778> @ imm = #0x4a
    66c4: eeb4 6a46    	vcmp.f32	s12, s12
    66c8: ed9f 7aa6    	vldr	s14, [pc, #664]         @ 0x6964 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9cc>
    66cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66d0: f60f 4118    	adr.w	r1, #3096
    66d4: fe57 2a06    	vselvs.f32	s5, s14, s12
    66d8: eef5 2a40    	vcmp.f32	s5, #0
    66dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66e0: bfb8         	it	lt
    66e2: eeb0 7a62    	vmovlt.f32	s14, s5
    66e6: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    66ea: eeb5 6a40    	vcmp.f32	s12, #0
    66ee: ee47 2a04    	vmla.f32	s5, s14, s8
    66f2: ed9f 7a9d    	vldr	s14, [pc, #628]         @ 0x6968 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9d0>
    66f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66fa: bf48         	it	mi
    66fc: 3104         	addmi	r1, #0x4
    66fe: ed91 6a00    	vldr	s12, [r1]
    6702: ee22 7a87    	vmul.f32	s14, s5, s14
    6706: eddf 2af2    	vldr	s5, [pc, #968]          @ 0x6ad0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb38>
    670a: fec7 2a22    	vmaxnm.f32	s5, s14, s5
    670e: e003         	b	0x6718 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x780> @ imm = #0x6
    6710: ed9f 6a94    	vldr	s12, [pc, #592]         @ 0x6964 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9cc>
    6714: eddf 2aee    	vldr	s5, [pc, #952]          @ 0x6ad0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb38>
    6718: f64b 7198    	movw	r1, #0xbf98
    671c: ed9d 0a23    	vldr	s0, [sp, #140]
    6720: f2c0 0100    	movt	r1, #0x0
    6724: ee10 1a22    	vnmls.f32	s2, s0, s5
    6728: e9cd 3005    	strd	r3, r0, [sp, #20]
    672c: eb01 1082    	add.w	r0, r1, r2, lsl #6
    6730: ee60 7a06    	vmul.f32	s15, s0, s12
    6734: eeb0 4a6a    	vmov.f32	s8, s21
    6738: ed9f 0ae6    	vldr	s0, [pc, #920]          @ 0x6ad4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb3c>
    673c: ed90 8b0c    	vldr	d8, [r0, #48]
    6740: ee23 da09    	vmul.f32	s26, s6, s18
    6744: ed1f 9a55    	vldr	s18, [pc, #-340]        @ 0x65f4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x65c>
    6748: eeb7 6bc8    	vcvt.f32.f64	s12, d8
    674c: ee25 8aa3    	vmul.f32	s16, s11, s7
    6750: eef0 5a40    	vmov.f32	s11, s0
    6754: ed90 ab08    	vldr	d10, [r0, #32]
    6758: ee47 5ac6    	vmls.f32	s11, s15, s12
    675c: ed9f cade    	vldr	s24, [pc, #888]         @ 0x6ad8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb40>
    6760: ed90 bb0a    	vldr	d11, [r0, #40]
    6764: ee11 0a10    	vmov	r0, s2
    6768: ee26 0a84    	vmul.f32	s0, s13, s8
    676c: ed9f 4adb    	vldr	s8, [pc, #876]          @ 0x6adc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb44>
    6770: ee65 3a21    	vmul.f32	s7, s10, s3
    6774: ee25 6a24    	vmul.f32	s12, s10, s9
    6778: ed9f fad9    	vldr	s30, [pc, #868]         @ 0x6ae0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb48>
    677c: eeb7 abca    	vcvt.f32.f64	s20, d10
    6780: f020 4000    	bic	r0, r0, #0x80000000
    6784: ee25 7a04    	vmul.f32	s14, s10, s8
    6788: f1b0 4fff    	cmp.w	r0, #0x7f800000
    678c: eeb7 bbcb    	vcvt.f32.f64	s22, d11
    6790: ed9f 4ad4    	vldr	s8, [pc, #848]          @ 0x6ae4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb4c>
    6794: da17         	bge	0x67c6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x82e> @ imm = #0x2e
    6796: ed9f 9ad4    	vldr	s18, [pc, #848]         @ 0x6ae8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb50>
    679a: eeb4 2a42    	vcmp.f32	s4, s4
    679e: ee81 9a09    	vdiv.f32	s18, s2, s18
    67a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67a6: eeb0 9ac9    	vabs.f32	s18, s18
    67aa: fe59 4a02    	vselvs.f32	s9, s18, s4
    67ae: eeb4 9a49    	vcmp.f32	s18, s18
    67b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67b6: fe14 9a89    	vselvs.f32	s18, s9, s18
    67ba: eef4 4a49    	vcmp.f32	s9, s18
    67be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67c2: fe34 9a89    	vselgt.f32	s18, s9, s18
    67c6: ed9f 2a67    	vldr	s4, [pc, #412]          @ 0x6964 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9cc>
    67ca: eef0 4a40    	vmov.f32	s9, s0
    67ce: ee03 0a21    	vmla.f32	s0, s6, s3
    67d2: f04f 0b00    	mov.w	r11, #0x0
    67d6: ee43 4a0e    	vmla.f32	s9, s6, s28
    67da: 9601         	str	r6, [sp, #0x4]
    67dc: ee06 da84    	vmla.f32	s26, s13, s8
    67e0: 69f0         	ldr	r0, [r6, #0x1c]
    67e2: ee08 7a02    	vmla.f32	s14, s16, s4
    67e6: ed9d 2a22    	vldr	s4, [sp, #136]
    67ea: ee48 3a0c    	vmla.f32	s7, s16, s24
    67ee: 9002         	str	r0, [sp, #0x8]
    67f0: ee08 6a0f    	vmla.f32	s12, s16, s30
    67f4: 2500         	movs	r5, #0x0
    67f6: ee6a 6a67    	vnmul.f32	s13, s20, s15
    67fa: a82b         	add	r0, sp, #0xac
    67fc: ee27 aa8b    	vmul.f32	s20, s15, s22
    6800: a928         	add	r1, sp, #0xa0
    6802: ee72 7aa5    	vadd.f32	s15, s5, s11
    6806: f04f 567e    	mov.w	r6, #0x3f800000
    680a: eeb1 2a42    	vneg.f32	s4, s4
    680e: f60f 29dc    	adr.w	r9, #2780
    6812: eef1 2a60    	vneg.f32	s5, s1
    6816: 46da         	mov	r10, r11
    6818: eef1 0a41    	vneg.f32	s1, s2
    681c: ed9f ca51    	vldr	s24, [pc, #324]         @ 0x6964 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9cc>
    6820: eef7 ca00    	vmov.f32	s25, #1.000000e+00
    6824: ed8d 0a2c    	vstr	s0, [sp, #176]
    6828: 2203         	movs	r2, #0x3
    682a: ed8d 2a28    	vstr	s4, [sp, #160]
    682e: edcd 2a29    	vstr	s5, [sp, #164]
    6832: f1bb 0f10    	cmp.w	r11, #0x10
    6836: ee36 0a2c    	vadd.f32	s0, s12, s25
    683a: edcd 0a2a    	vstr	s1, [sp, #168]
    683e: ed8d 0a2f    	vstr	s0, [sp, #188]
    6842: ed9f 0aa6    	vldr	s0, [pc, #664]          @ 0x6adc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb44>
    6846: ee3d 1a2c    	vadd.f32	s2, s26, s25
    684a: edcd 4a2d    	vstr	s9, [sp, #180]
    684e: ee30 0a4a    	vsub.f32	s0, s0, s20
    6852: ed8d 1a2b    	vstr	s2, [sp, #172]
    6856: edcd 3a2e    	vstr	s7, [sp, #184]
    685a: 4604         	mov	r4, r0
    685c: ed8d 7a30    	vstr	s14, [sp, #192]
    6860: 4688         	mov	r8, r1
    6862: edcd 6a31    	vstr	s13, [sp, #196]
    6866: ed8d 0a32    	vstr	s0, [sp, #200]
    686a: bf18         	it	ne
    686c: f10a 0a01    	addne.w	r10, r10, #0x1
    6870: edcd 7a33    	vstr	s15, [sp, #204]
    6874: f004 ffbc    	bl	0xb7f0 <orange_dsp::condensed::solve> @ imm = #0x4f78
    6878: 2800         	cmp	r0, #0x0
    687a: f000 84f1    	beq.w	0x7260 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12c8> @ imm = #0x9e2
    687e: ed9d 0a26    	vldr	s0, [sp, #152]
    6882: ed9f 3adb    	vldr	s6, [pc, #876]          @ 0x6bf0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc58>
    6886: eeb0 0ac0    	vabs.f32	s0, s0
    688a: ed9f 2ada    	vldr	s4, [pc, #872]          @ 0x6bf4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc5c>
    688e: ed9d 1a28    	vldr	s2, [sp, #160]
    6892: ed8d 1a1e    	vstr	s2, [sp, #120]
    6896: eeb0 4ac1    	vabs.f32	s8, s2
    689a: eeb4 0a40    	vcmp.f32	s0, s0
    689e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68a2: fe1c 0a80    	vselvs.f32	s0, s25, s0
    68a6: eeb4 0a6c    	vcmp.f32	s0, s25
    68aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68ae: fe30 0a2c    	vselgt.f32	s0, s0, s25
    68b2: ee20 0a03    	vmul.f32	s0, s0, s6
    68b6: fe80 0a42    	vminnm.f32	s0, s0, s4
    68ba: eeb4 4a40    	vcmp.f32	s8, s0
    68be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68c2: d839         	bhi	0x6938 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9a0> @ imm = #0x72
    68c4: ed9d 0a24    	vldr	s0, [sp, #144]
    68c8: ed9d 1a29    	vldr	s2, [sp, #164]
    68cc: eeb0 0ac0    	vabs.f32	s0, s0
    68d0: eeb0 1ac1    	vabs.f32	s2, s2
    68d4: eeb4 0a40    	vcmp.f32	s0, s0
    68d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68dc: fe1c 0a80    	vselvs.f32	s0, s25, s0
    68e0: eeb4 0a6c    	vcmp.f32	s0, s25
    68e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68e8: fe30 0a2c    	vselgt.f32	s0, s0, s25
    68ec: ee20 0a03    	vmul.f32	s0, s0, s6
    68f0: fe80 0a42    	vminnm.f32	s0, s0, s4
    68f4: eeb4 1a40    	vcmp.f32	s2, s0
    68f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68fc: d81c         	bhi	0x6938 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9a0> @ imm = #0x38
    68fe: ed9d 0a23    	vldr	s0, [sp, #140]
    6902: ed9d 1a2a    	vldr	s2, [sp, #168]
    6906: eeb0 0ac0    	vabs.f32	s0, s0
    690a: eeb0 1ac1    	vabs.f32	s2, s2
    690e: eeb4 0a40    	vcmp.f32	s0, s0
    6912: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6916: fe1c 0a80    	vselvs.f32	s0, s25, s0
    691a: eeb4 0a6c    	vcmp.f32	s0, s25
    691e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6922: fe30 0a2c    	vselgt.f32	s0, s0, s25
    6926: ee20 0a03    	vmul.f32	s0, s0, s6
    692a: fe80 0a42    	vminnm.f32	s0, s0, s4
    692e: eeb4 1a40    	vcmp.f32	s2, s0
    6932: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6936: d91b         	bls	0x6970 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9d8> @ imm = #0x36
    6938: 2000         	movs	r0, #0x0
    693a: ed9f 0aaf    	vldr	s0, [pc, #700]          @ 0x6bf8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc60>
    693e: eeb4 9a40    	vcmp.f32	s18, s0
    6942: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6946: d81b         	bhi	0x6980 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9e8> @ imm = #0x36
    6948: f1ab 0110    	sub.w	r1, r11, #0x10
    694c: fab1 f181    	clz	r1, r1
    6950: 0949         	lsrs	r1, r1, #0x5
    6952: 4301         	orrs	r1, r0
    6954: d018         	beq	0x6988 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9f0> @ imm = #0x30
    6956: f000 bc6c    	b.w	0x7232 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x129a> @ imm = #0x8d8
    695a: bf00         	nop
    695c: d6 f8 e4 b6  	.word	0xb6e4f8d6
    6960: af e6 27 39  	.word	0x3927e6af
    6964: 00 00 00 00  	.word	0x00000000
    6968: 2b 18 95 3b  	.word	0x3b95182b
    696c: 00 bf 00 bf  	.word	0xbf00bf00
    6970: 2001         	movs	r0, #0x1
    6972: ed9f 0aa1    	vldr	s0, [pc, #644]          @ 0x6bf8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc60>
    6976: eeb4 9a40    	vcmp.f32	s18, s0
    697a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    697e: d9e3         	bls	0x6948 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9b0> @ imm = #-0x3a
    6980: f1bb 0f10    	cmp.w	r11, #0x10
    6984: f000 8470    	beq.w	0x7268 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12d0> @ imm = #0x8e0
    6988: f04f 507e    	mov.w	r0, #0x3f800000
    698c: ed8d 4a07    	vstr	s8, [sp, #28]
    6990: ed8d 9a0a    	vstr	s18, [sp, #40]
    6994: ed9d 0a29    	vldr	s0, [sp, #164]
    6998: ed8d 0a21    	vstr	s0, [sp, #132]
    699c: ed9d 0a2a    	vldr	s0, [sp, #168]
    69a0: ed8d 0a22    	vstr	s0, [sp, #136]
    69a4: e014         	b	0x69d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xa38> @ imm = #0x28
    69a6: bf00         	nop
    69a8: 83 c0 96 38  	.word	0x3896c083
    69ac: 00 bf 00 bf  	.word	0xbf00bf00
    69b0: d2 ce fe 14  	.word	0x14feced2
    69b4: cf 45 20 3f  	.word	0x3f2045cf
    69b8: eef0 9a4d    	vmov.f32	s19, s26
    69bc: eef0 ea42    	vmov.f32	s29, s4
    69c0: eef7 ca00    	vmov.f32	s25, #1.000000e+00
    69c4: f5a0 0000    	sub.w	r0, r0, #0x800000
    69c8: f1b0 5f66    	cmp.w	r0, #0x39800000
    69cc: f000 8400    	beq.w	0x71d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1238> @ imm = #0x800
    69d0: ee05 0a90    	vmov	s11, r0
    69d4: ed9d 0a1e    	vldr	s0, [sp, #120]
    69d8: ed9d 1a26    	vldr	s2, [sp, #152]
    69dc: eeb0 6a4c    	vmov.f32	s12, s24
    69e0: ed9f 2b71    	vldr	d2, [pc, #452]          @ 0x6ba8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc10>
    69e4: ee00 1a25    	vmla.f32	s2, s0, s11
    69e8: ed9d 3a24    	vldr	s6, [sp, #144]
    69ec: ed9d 0b1c    	vldr	d0, [sp, #112]
    69f0: eef0 3a4c    	vmov.f32	s7, s24
    69f4: ed9d 4b18    	vldr	d4, [sp, #96]
    69f8: ed9d 8b1a    	vldr	d8, [sp, #104]
    69fc: eeb7 aac1    	vcvt.f64.f32	d10, s2
    6a00: ee0a 0b02    	vmla.f64	d0, d10, d2
    6a04: ed9f 2b6a    	vldr	d2, [pc, #424]          @ 0x6bb0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc18>
    6a08: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    6a0c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    6a10: ee00 4b02    	vmla.f64	d4, d0, d2
    6a14: ed9d 0a21    	vldr	s0, [sp, #132]
    6a18: ee00 3a25    	vmla.f32	s6, s0, s11
    6a1c: ed9f 0b66    	vldr	d0, [pc, #408]          @ 0x6bb8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc20>
    6a20: ee84 0b00    	vdiv.f64	d0, d4, d0
    6a24: ed9f 2b66    	vldr	d2, [pc, #408]          @ 0x6bc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc28>
    6a28: eeb7 bac3    	vcvt.f64.f32	d11, s6
    6a2c: eeb7 7bc0    	vcvt.f32.f64	s14, d0
    6a30: ed9f 0b65    	vldr	d0, [pc, #404]          @ 0x6bc8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc30>
    6a34: eef4 9a47    	vcmp.f32	s19, s14
    6a38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a3c: ee0a 8b00    	vmla.f64	d8, d10, d0
    6a40: fe39 0a87    	vselgt.f32	s0, s19, s14
    6a44: ee0b 8b02    	vmla.f64	d8, d11, d2
    6a48: ed9f 2b61    	vldr	d2, [pc, #388]          @ 0x6bd0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc38>
    6a4c: eeb4 0a6e    	vcmp.f32	s0, s29
    6a50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a54: eeb4 2b48    	vcmp.f64	d2, d8
    6a58: fe3e 5a80    	vselgt.f32	s10, s29, s0
    6a5c: ed9f 2b5e    	vldr	d2, [pc, #376]          @ 0x6bd8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc40>
    6a60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a64: eef7 0bc8    	vcvt.f32.f64	s1, d8
    6a68: eeb4 8b42    	vcmp.f64	d8, d2
    6a6c: eebf 2a00    	vmov.f32	s4, #-1.000000e+00
    6a70: eef0 2a4c    	vmov.f32	s5, s24
    6a74: eeb0 0ae0    	vabs.f32	s0, s1
    6a78: fe72 0a0c    	vselgt.f32	s1, s4, s24
    6a7c: ed9f 2ac2    	vldr	s4, [pc, #776]          @ 0x6d88 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xdf0>
    6a80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a84: eeb4 0a42    	vcmp.f32	s0, s4
    6a88: eeb0 2a4c    	vmov.f32	s4, s24
    6a8c: fe7c 1aa0    	vselgt.f32	s3, s25, s1
    6a90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a94: f280 80e0    	bge.w	0x6c58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xcc0> @ imm = #0x1c0
    6a98: eef0 2a4c    	vmov.f32	s5, s24
    6a9c: eef7 0a08    	vmov.f32	s1, #1.500000e+00
    6aa0: ed9f 2aba    	vldr	s4, [pc, #744]          @ 0x6d8c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xdf4>
    6aa4: eeb4 0a42    	vcmp.f32	s0, s4
    6aa8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6aac: d92a         	bls	0x6b04 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb6c> @ imm = #0x54
    6aae: ed9f 2ab8    	vldr	s4, [pc, #736]          @ 0x6d90 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xdf8>
    6ab2: eeb4 0a42    	vcmp.f32	s0, s4
    6ab6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6aba: d919         	bls	0x6af0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb58> @ imm = #0x32
    6abc: ed9f 2ab5    	vldr	s4, [pc, #724]          @ 0x6d94 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xdfc>
    6ac0: eef0 0a08    	vmov.f32	s1, #3.000000e+00
    6ac4: ee30 0a02    	vadd.f32	s0, s0, s4
    6ac8: ed9f 2ab3    	vldr	s4, [pc, #716]          @ 0x6d98 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xe00>
    6acc: e016         	b	0x6afc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb64> @ imm = #0x2c
    6ace: bf00         	nop
    6ad0: 95 bf d6 33  	.word	0x33d6bf95
    6ad4: 79 2e 02 39  	.word	0x39022e79
    6ad8: 6f f3 03 be  	.word	0xbe03f36f
    6adc: 79 2e 02 b9  	.word	0xb9022e79
    6ae0: d5 35 a4 be  	.word	0xbea435d5
    6ae4: fc 9d 08 bf  	.word	0xbf089dfc
    6ae8: 0a d7 23 3c  	.word	0x3c23d70a
    6aec: 00 bf 00 bf  	.word	0xbf00bf00
    6af0: ed9f 2aeb    	vldr	s4, [pc, #940]          @ 0x6ea0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf08>
    6af4: ee30 0a02    	vadd.f32	s0, s0, s4
    6af8: ed9f 2aea    	vldr	s4, [pc, #936]          @ 0x6ea4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf0c>
    6afc: ee40 0a02    	vmla.f32	s1, s0, s4
    6b00: ee61 2a82    	vmul.f32	s5, s3, s4
    6b04: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    6b08: eeb1 6a62    	vneg.f32	s12, s5
    6b0c: ee30 0a60    	vsub.f32	s0, s0, s1
    6b10: fe80 0a0c    	vmaxnm.f32	s0, s0, s24
    6b14: eeb5 0a40    	vcmp.f32	s0, #0
    6b18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b1c: d960         	bls	0x6be0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc48> @ imm = #0xc0
    6b1e: eef0 1ac5    	vabs.f32	s3, s10
    6b22: eef4 1a40    	vcmp.f32	s3, s0
    6b26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b2a: d969         	bls	0x6c00 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc68> @ imm = #0xd2
    6b2c: eec0 1a21    	vdiv.f32	s3, s0, s3
    6b30: eef0 3a6c    	vmov.f32	s7, s25
    6b34: ee61 2aa1    	vmul.f32	s5, s3, s3
    6b38: ee62 2aa2    	vmul.f32	s5, s5, s5
    6b3c: ee62 2aa2    	vmul.f32	s5, s5, s5
    6b40: ee62 4aa2    	vmul.f32	s9, s5, s5
    6b44: ee74 2aac    	vadd.f32	s5, s9, s25
    6b48: eef4 2a6c    	vcmp.f32	s5, s25
    6b4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b50: d009         	beq	0x6b66 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xbce> @ imm = #0x12
    6b52: eef0 3a62    	vmov.f32	s7, s5
    6b56: eef1 3ae3    	vsqrt.f32	s7, s7
    6b5a: eef1 3ae3    	vsqrt.f32	s7, s7
    6b5e: eef1 3ae3    	vsqrt.f32	s7, s7
    6b62: eef1 3ae3    	vsqrt.f32	s7, s7
    6b66: eecc 7aa3    	vdiv.f32	s15, s25, s7
    6b6a: eeb4 5a45    	vcmp.f32	s10, s10
    6b6e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b72: eec7 6aa2    	vdiv.f32	s13, s15, s5
    6b76: eddf 2acc    	vldr	s5, [pc, #816]          @ 0x6ea8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf10>
    6b7a: eef0 3a62    	vmov.f32	s7, s5
    6b7e: bf7f         	itttt	vc
    6b80: ee15 1a10    	vmovvc	r1, s10
    6b84: f366 011e    	bfivc	r1, r6, #0, #31
    6b88: ee03 1a90    	vmovvc	s7, r1
    6b8c: ee23 0a80    	vmulvc.f32	s0, s7, s0
    6b90: bf7c         	itt	vc
    6b92: ee60 2a27    	vmulvc.f32	s5, s0, s15
    6b96: ee63 3aa6    	vmulvc.f32	s7, s7, s13
    6b9a: ee21 0aa4    	vmul.f32	s0, s3, s9
    6b9e: ee20 2a26    	vmul.f32	s4, s0, s13
    6ba2: e059         	b	0x6c58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xcc0> @ imm = #0xb2
    6ba4: bf00         	nop
    6ba6: bf00         	nop
    6ba8: 1c 38 88 77  	.word	0x7788381c
    6bac: bf 13 e1 bf  	.word	0xbfe113bf
    6bb0: 91 d4 a8 53  	.word	0x53a8d491
    6bb4: ec f7 77 41  	.word	0x4177f7ec
    6bb8: a7 2a 45 4f  	.word	0x4f452aa7
    6bbc: ed 97 01 41  	.word	0x410197ed
    6bc0: 58 62 94 b9  	.word	0xb9946258
    6bc4: 1a 9f dc 3e  	.word	0x3edc9f1a
    6bc8: 61 05 bc 57  	.word	0x57bc0561
    6bcc: 10 d8 12 bf  	.word	0xbf12d810
    6bd0: 00 00 00 00  	.word	0x00000000
    6bd4: 00 00 90 b6  	.word	0xb6900000
    6bd8: 00 00 00 00  	.word	0x00000000
    6bdc: 00 00 90 36  	.word	0x36900000
    6be0: eef0 2a4c    	vmov.f32	s5, s24
    6be4: eeb0 2a4c    	vmov.f32	s4, s24
    6be8: eef0 3a4c    	vmov.f32	s7, s24
    6bec: e034         	b	0x6c58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xcc0> @ imm = #0x68
    6bee: bf00         	nop
    6bf0: bd 37 06 36  	.word	0x360637bd
    6bf4: ac c5 a7 37  	.word	0x37a7c5ac
    6bf8: 17 b7 d1 38  	.word	0x38d1b717
    6bfc: 00 bf 00 bf  	.word	0xbf00bf00
    6c00: eec5 1a00    	vdiv.f32	s3, s10, s0
    6c04: eef0 3a6c    	vmov.f32	s7, s25
    6c08: ee61 1aa1    	vmul.f32	s3, s3, s3
    6c0c: ee61 1aa1    	vmul.f32	s3, s3, s3
    6c10: ee61 1aa1    	vmul.f32	s3, s3, s3
    6c14: ee61 1aa1    	vmul.f32	s3, s3, s3
    6c18: ee71 2aac    	vadd.f32	s5, s3, s25
    6c1c: eef4 2a6c    	vcmp.f32	s5, s25
    6c20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c24: d009         	beq	0x6c3a <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xca2> @ imm = #0x12
    6c26: eef0 3a62    	vmov.f32	s7, s5
    6c2a: eef1 3ae3    	vsqrt.f32	s7, s7
    6c2e: eef1 3ae3    	vsqrt.f32	s7, s7
    6c32: eef1 3ae3    	vsqrt.f32	s7, s7
    6c36: eef1 3ae3    	vsqrt.f32	s7, s7
    6c3a: eecc 3aa3    	vdiv.f32	s7, s25, s7
    6c3e: ee65 1a21    	vmul.f32	s3, s10, s3
    6c42: ee83 2aa2    	vdiv.f32	s4, s7, s5
    6c46: ee81 0a80    	vdiv.f32	s0, s3, s0
    6c4a: ee65 2a23    	vmul.f32	s5, s10, s7
    6c4e: ee60 3a02    	vmul.f32	s7, s0, s4
    6c52: bf00         	nop
    6c54: bf00         	nop
    6c56: bf00         	nop
    6c58: ee71 2a62    	vsub.f32	s5, s2, s5
    6c5c: ed9d 0a22    	vldr	s0, [sp, #136]
    6c60: eddd 1a23    	vldr	s3, [sp, #140]
    6c64: ee40 1a25    	vmla.f32	s3, s0, s11
    6c68: ed8d 2a0b    	vstr	s4, [sp, #44]
    6c6c: eeb0 2a6e    	vmov.f32	s4, s29
    6c70: ee12 1a90    	vmov	r1, s5
    6c74: eddf 8a8d    	vldr	s17, [pc, #564]         @ 0x6eac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf14>
    6c78: f021 4100    	bic	r1, r1, #0x80000000
    6c7c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    6c80: da07         	bge	0x6c92 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xcfa> @ imm = #0xe
    6c82: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    6c86: ee82 0a80    	vdiv.f32	s0, s5, s0
    6c8a: eeb0 0ac0    	vabs.f32	s0, s0
    6c8e: fec0 8a0c    	vmaxnm.f32	s17, s0, s24
    6c92: ed9f db71    	vldr	d13, [pc, #452]         @ 0x6e58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xec0>
    6c96: eddd 5a1f    	vldr	s11, [sp, #124]
    6c9a: ed9d fb16    	vldr	d15, [sp, #88]
    6c9e: ee0a fb0d    	vmla.f64	d15, d10, d13
    6ca2: ed9f db6f    	vldr	d13, [pc, #444]         @ 0x6e60 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xec8>
    6ca6: ee0b fb0d    	vmla.f64	d15, d11, d13
    6caa: ed1f db3f    	vldr	d13, [pc, #-252]        @ 0x6bb0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc18>
    6cae: eeb7 0bcf    	vcvt.f32.f64	s0, d15
    6cb2: ed9d eb14    	vldr	d14, [sp, #80]
    6cb6: eeb7 fac0    	vcvt.f64.f32	d15, s0
    6cba: ed9d 0a20    	vldr	s0, [sp, #128]
    6cbe: ee0f eb0d    	vmla.f64	d14, d15, d13
    6cc2: eeb7 fae1    	vcvt.f64.f32	d15, s3
    6cc6: ed1f db44    	vldr	d13, [pc, #-272]        @ 0x6bb8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc20>
    6cca: ee8e eb0d    	vdiv.f64	d14, d14, d13
    6cce: ed9f db66    	vldr	d13, [pc, #408]         @ 0x6e68 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xed0>
    6cd2: eef7 7bce    	vcvt.f32.f64	s15, d14
    6cd6: ed9d eb12    	vldr	d14, [sp, #72]
    6cda: eeb4 0a67    	vcmp.f32	s0, s15
    6cde: ee0a eb0d    	vmla.f64	d14, d10, d13
    6ce2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ce6: ed9f ab62    	vldr	d10, [pc, #392]         @ 0x6e70 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xed8>
    6cea: fe30 0a27    	vselgt.f32	s0, s0, s15
    6cee: ee0b eb0a    	vmla.f64	d14, d11, d10
    6cf2: ed9f ab61    	vldr	d10, [pc, #388]         @ 0x6e78 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xee0>
    6cf6: eeb4 0a65    	vcmp.f32	s0, s11
    6cfa: ee0f eb0a    	vmla.f64	d14, d15, d10
    6cfe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d02: ed1f ab4d    	vldr	d10, [pc, #-308]        @ 0x6bd0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc38>
    6d06: fe75 5a80    	vselgt.f32	s11, s11, s0
    6d0a: eef7 6bce    	vcvt.f32.f64	s13, d14
    6d0e: eeb4 ab4e    	vcmp.f64	d10, d14
    6d12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d16: eeb0 0ae6    	vabs.f32	s0, s13
    6d1a: eeff 6a00    	vmov.f32	s13, #-1.000000e+00
    6d1e: ed1f ab52    	vldr	d10, [pc, #-328]        @ 0x6bd8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc40>
    6d22: fe76 6a8c    	vselgt.f32	s13, s13, s24
    6d26: eeb4 eb4a    	vcmp.f64	d14, d10
    6d2a: eeb0 ea4c    	vmov.f32	s28, s24
    6d2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d32: eef0 aa4c    	vmov.f32	s21, s24
    6d36: eeb0 aa4c    	vmov.f32	s20, s24
    6d3a: fe3c 8aa6    	vselgt.f32	s16, s25, s13
    6d3e: eddf 6a12    	vldr	s13, [pc, #72]          @ 0x6d88 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xdf0>
    6d42: eeb4 0a66    	vcmp.f32	s0, s13
    6d46: eef0 6a4c    	vmov.f32	s13, s24
    6d4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d4e: f280 80db    	bge.w	0x6f08 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf70> @ imm = #0x1b6
    6d52: eeb0 9a4c    	vmov.f32	s18, s24
    6d56: eef7 6a08    	vmov.f32	s13, #1.500000e+00
    6d5a: ed9f 4a4d    	vldr	s8, [pc, #308]          @ 0x6e90 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xef8>
    6d5e: eeb4 0a44    	vcmp.f32	s0, s8
    6d62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d66: d925         	bls	0x6db4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xe1c> @ imm = #0x4a
    6d68: ed9f 4a4a    	vldr	s8, [pc, #296]          @ 0x6e94 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xefc>
    6d6c: eeb4 0a44    	vcmp.f32	s0, s8
    6d70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d74: d914         	bls	0x6da0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xe08> @ imm = #0x28
    6d76: ed9f 4a48    	vldr	s8, [pc, #288]          @ 0x6e98 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf00>
    6d7a: eef0 6a08    	vmov.f32	s13, #3.000000e+00
    6d7e: ee30 0a04    	vadd.f32	s0, s0, s8
    6d82: ed9f 4a46    	vldr	s8, [pc, #280]          @ 0x6e9c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf04>
    6d86: e011         	b	0x6dac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xe14> @ imm = #0x22
    6d88: 0a d7 23 3d  	.word	0x3d23d70a
    6d8c: 7c f2 b0 3a  	.word	0x3ab0f27c
    6d90: a6 9b c4 3b  	.word	0x3bc49ba6
    6d94: a6 9b c4 bb  	.word	0xbbc49ba6
    6d98: 79 78 b0 43  	.word	0x43b07879
    6d9c: 00 bf 00 bf  	.word	0xbf00bf00
    6da0: ed9f 4a3f    	vldr	s8, [pc, #252]          @ 0x6ea0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf08>
    6da4: ee30 0a04    	vadd.f32	s0, s0, s8
    6da8: ed9f 4a3e    	vldr	s8, [pc, #248]          @ 0x6ea4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf0c>
    6dac: ee40 6a04    	vmla.f32	s13, s0, s8
    6db0: ee28 9a04    	vmul.f32	s18, s16, s8
    6db4: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    6db8: ee30 0a66    	vsub.f32	s0, s0, s13
    6dbc: eef1 6a49    	vneg.f32	s13, s18
    6dc0: fe80 0a0c    	vmaxnm.f32	s0, s0, s24
    6dc4: eeb5 0a40    	vcmp.f32	s0, #0
    6dc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6dcc: d958         	bls	0x6e80 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xee8> @ imm = #0xb0
    6dce: eeb0 8ae5    	vabs.f32	s16, s11
    6dd2: eeb4 8a40    	vcmp.f32	s16, s0
    6dd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6dda: d969         	bls	0x6eb0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf18> @ imm = #0xd2
    6ddc: ee80 8a08    	vdiv.f32	s16, s0, s16
    6de0: eeb0 aa6c    	vmov.f32	s20, s25
    6de4: ee28 9a08    	vmul.f32	s18, s16, s16
    6de8: ee29 9a09    	vmul.f32	s18, s18, s18
    6dec: ee29 9a09    	vmul.f32	s18, s18, s18
    6df0: ee69 aa09    	vmul.f32	s21, s18, s18
    6df4: ee3a 9aac    	vadd.f32	s18, s21, s25
    6df8: eeb4 9a6c    	vcmp.f32	s18, s25
    6dfc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e00: d009         	beq	0x6e16 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xe7e> @ imm = #0x12
    6e02: eeb0 aa49    	vmov.f32	s20, s18
    6e06: eeb1 aaca    	vsqrt.f32	s20, s20
    6e0a: eeb1 aaca    	vsqrt.f32	s20, s20
    6e0e: eeb1 aaca    	vsqrt.f32	s20, s20
    6e12: eeb1 aaca    	vsqrt.f32	s20, s20
    6e16: eecc da8a    	vdiv.f32	s27, s25, s20
    6e1a: ed9f ea23    	vldr	s28, [pc, #140]         @ 0x6ea8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf10>
    6e1e: eef4 5a65    	vcmp.f32	s11, s11
    6e22: eeb0 aa4e    	vmov.f32	s20, s28
    6e26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e2a: eecd ca89    	vdiv.f32	s25, s27, s18
    6e2e: bf7f         	itttt	vc
    6e30: ee15 1a90    	vmovvc	r1, s11
    6e34: f366 011e    	bfivc	r1, r6, #0, #31
    6e38: ee09 1a10    	vmovvc	s18, r1
    6e3c: ee29 0a00    	vmulvc.f32	s0, s18, s0
    6e40: bf7c         	itt	vc
    6e42: ee20 ea2d    	vmulvc.f32	s28, s0, s27
    6e46: ee29 aa2c    	vmulvc.f32	s20, s18, s25
    6e4a: ee28 0a2a    	vmul.f32	s0, s16, s21
    6e4e: ee60 aa2c    	vmul.f32	s21, s0, s25
    6e52: e059         	b	0x6f08 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf70> @ imm = #0xb2
    6e54: bf00         	nop
    6e56: bf00         	nop
    6e58: 15 be b6 e5  	.word	0xe5b6be15
    6e5c: 6d 7e c0 bf  	.word	0xbfc07e6d
    6e60: 67 42 87 92  	.word	0x92874267
    6e64: ba 86 d4 bf  	.word	0xbfd486ba
    6e68: 59 62 94 b9  	.word	0xb9946259
    6e6c: 1a 9f dc 3e  	.word	0x3edc9f1a
    6e70: 14 90 51 d1  	.word	0xd1519014
    6e74: d5 fc 24 bf  	.word	0xbf24fcd5
    6e78: 14 d0 fe 14  	.word	0x14fed014
    6e7c: cf 45 20 3f  	.word	0x3f2045cf
    6e80: eeb0 ea4c    	vmov.f32	s28, s24
    6e84: eef0 aa4c    	vmov.f32	s21, s24
    6e88: eeb0 aa4c    	vmov.f32	s20, s24
    6e8c: e03c         	b	0x6f08 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf70> @ imm = #0x78
    6e8e: bf00         	nop
    6e90: 7c f2 b0 3a  	.word	0x3ab0f27c
    6e94: a6 9b c4 3b  	.word	0x3bc49ba6
    6e98: a6 9b c4 bb  	.word	0xbbc49ba6
    6e9c: 79 78 b0 43  	.word	0x43b07879
    6ea0: 7c f2 b0 ba  	.word	0xbab0f27c
    6ea4: 53 4a a1 43  	.word	0x43a14a53
    6ea8: 00 00 c0 7f  	.word	0x7fc00000
    6eac: 00 00 80 7f  	.word	0x7f800000
    6eb0: ee85 8a80    	vdiv.f32	s16, s11, s0
    6eb4: eeb0 aa6c    	vmov.f32	s20, s25
    6eb8: ee28 8a08    	vmul.f32	s16, s16, s16
    6ebc: ee28 8a08    	vmul.f32	s16, s16, s16
    6ec0: ee28 8a08    	vmul.f32	s16, s16, s16
    6ec4: ee28 8a08    	vmul.f32	s16, s16, s16
    6ec8: ee38 9a2c    	vadd.f32	s18, s16, s25
    6ecc: eeb4 9a6c    	vcmp.f32	s18, s25
    6ed0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ed4: d009         	beq	0x6eea <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf52> @ imm = #0x12
    6ed6: eeb0 aa49    	vmov.f32	s20, s18
    6eda: eeb1 aaca    	vsqrt.f32	s20, s20
    6ede: eeb1 aaca    	vsqrt.f32	s20, s20
    6ee2: eeb1 aaca    	vsqrt.f32	s20, s20
    6ee6: eeb1 aaca    	vsqrt.f32	s20, s20
    6eea: ee8c aa8a    	vdiv.f32	s20, s25, s20
    6eee: ee25 8a88    	vmul.f32	s16, s11, s16
    6ef2: eeca aa09    	vdiv.f32	s21, s20, s18
    6ef6: ee88 0a00    	vdiv.f32	s0, s16, s0
    6efa: ee25 ea8a    	vmul.f32	s28, s11, s20
    6efe: ee20 aa2a    	vmul.f32	s20, s0, s21
    6f02: bf00         	nop
    6f04: bf00         	nop
    6f06: bf00         	nop
    6f08: ee73 ca4e    	vsub.f32	s25, s6, s28
    6f0c: eeb0 da69    	vmov.f32	s26, s19
    6f10: ed9f 8af0    	vldr	s16, [pc, #960]         @ 0x72d4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x133c>
    6f14: ee1c 1a90    	vmov	r1, s25
    6f18: f021 4100    	bic	r1, r1, #0x80000000
    6f1c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    6f20: da17         	bge	0x6f52 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xfba> @ imm = #0x2e
    6f22: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    6f26: eef4 8a68    	vcmp.f32	s17, s17
    6f2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f2e: ee8c 0a80    	vdiv.f32	s0, s25, s0
    6f32: eeb0 0ac0    	vabs.f32	s0, s0
    6f36: fe10 8a28    	vselvs.f32	s16, s0, s17
    6f3a: eeb4 0a40    	vcmp.f32	s0, s0
    6f3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f42: fe18 0a00    	vselvs.f32	s0, s16, s0
    6f46: eeb4 8a40    	vcmp.f32	s16, s0
    6f4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f4e: fe38 8a00    	vselgt.f32	s16, s16, s0
    6f52: ed9f 4bd7    	vldr	d4, [pc, #860]          @ 0x72b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1318>
    6f56: eddf 8ae3    	vldr	s17, [pc, #908]         @ 0x72e4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x134c>
    6f5a: ee2b eb04    	vmul.f64	d14, d11, d4
    6f5e: ed9d 9b0e    	vldr	d9, [sp, #56]
    6f62: ed9f 0bd5    	vldr	d0, [pc, #852]          @ 0x72b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1320>
    6f66: ee3e 9b09    	vadd.f64	d9, d14, d9
    6f6a: ee0f 9b00    	vmla.f64	d9, d15, d0
    6f6e: ed9d 0b0c    	vldr	d0, [sp, #48]
    6f72: ee3e eb00    	vadd.f64	d14, d14, d0
    6f76: eef8 0a00    	vmov.f32	s1, #-2.000000e+00
    6f7a: ee0f eb44    	vmls.f64	d14, d15, d4
    6f7e: eeb6 4a00    	vmov.f32	s8, #5.000000e-01
    6f82: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    6f86: eef7 dbce    	vcvt.f32.f64	s27, d14
    6f8a: eeb0 ea4c    	vmov.f32	s28, s24
    6f8e: fe80 9a6d    	vminnm.f32	s18, s0, s27
    6f92: ee34 9a49    	vsub.f32	s18, s8, s18
    6f96: eeb4 9a60    	vcmp.f32	s18, s1
    6f9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f9e: d923         	bls	0x6fe8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1050> @ imm = #0x46
    6fa0: eeb4 9a49    	vcmp.f32	s18, s18
    6fa4: eef0 8a4c    	vmov.f32	s17, s24
    6fa8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6fac: 4649         	mov	r1, r9
    6fae: fe1c ea09    	vselvs.f32	s28, s24, s18
    6fb2: eeb5 ea40    	vcmp.f32	s28, #0
    6fb6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6fba: bfb8         	it	lt
    6fbc: eef0 8a4e    	vmovlt.f32	s17, s28
    6fc0: eeb7 ea00    	vmov.f32	s28, #1.000000e+00
    6fc4: eeb5 9a40    	vcmp.f32	s18, #0
    6fc8: ee08 ea84    	vmla.f32	s28, s17, s8
    6fcc: ed9f 4ac6    	vldr	s8, [pc, #792]          @ 0x72e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1350>
    6fd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6fd4: bf48         	it	mi
    6fd6: 3104         	addmi	r1, #0x4
    6fd8: ee2e ea04    	vmul.f32	s28, s28, s8
    6fdc: ed9f 4ac1    	vldr	s8, [pc, #772]          @ 0x72e4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x134c>
    6fe0: fece 8a04    	vmaxnm.f32	s17, s28, s8
    6fe4: ed91 ea00    	vldr	s28, [r1]
    6fe8: ed9f 4baf    	vldr	d4, [pc, #700]          @ 0x72a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1310>
    6fec: ed9d 9b10    	vldr	d9, [sp, #64]
    6ff0: ee0b 9b04    	vmla.f64	d9, d11, d4
    6ff4: ee0f 9b44    	vmls.f64	d9, d15, d4
    6ff8: eeb7 bbc9    	vcvt.f32.f64	s22, d9
    6ffc: ee11 baa8    	vnmls.f32	s22, s3, s17
    7000: ee1b 1a10    	vmov	r1, s22
    7004: f021 4100    	bic	r1, r1, #0x80000000
    7008: f1b1 4fff    	cmp.w	r1, #0x7f800000
    700c: f6bf acd4    	bge.w	0x69b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xa20> @ imm = #-0x658
    7010: ed9f 4ab9    	vldr	s8, [pc, #740]          @ 0x72f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1360>
    7014: eeb4 8a48    	vcmp.f32	s16, s16
    7018: ee8b 9a04    	vdiv.f32	s18, s22, s8
    701c: ed9d 4a0a    	vldr	s8, [sp, #40]
    7020: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7024: eeb0 9ac9    	vabs.f32	s18, s18
    7028: fe19 8a08    	vselvs.f32	s16, s18, s16
    702c: eeb4 9a49    	vcmp.f32	s18, s18
    7030: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7034: fe18 9a09    	vselvs.f32	s18, s16, s18
    7038: eeb4 8a49    	vcmp.f32	s16, s18
    703c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7040: fe38 fa09    	vselgt.f32	s30, s16, s18
    7044: eeb4 fa44    	vcmp.f32	s30, s8
    7048: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    704c: f57f acb4    	bpl.w	0x69b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xa20> @ imm = #-0x698
    7050: eeb4 2a47    	vcmp.f32	s4, s14
    7054: ed9f 4a9b    	vldr	s8, [pc, #620]          @ 0x72c4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x132c>
    7058: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    705c: eeb4 7a4d    	vcmp.f32	s14, s26
    7060: ed9f 7a99    	vldr	s14, [pc, #612]         @ 0x72c8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1330>
    7064: eef0 ea42    	vmov.f32	s29, s4
    7068: f44f 7050    	mov.w	r0, #0x340
    706c: fe34 2a07    	vselgt.f32	s4, s8, s14
    7070: f64b 7198    	movw	r1, #0xbf98
    7074: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7078: f2c0 0100    	movt	r1, #0x0
    707c: f04f 567e    	mov.w	r6, #0x3f800000
    7080: fe72 0a07    	vselgt.f32	s1, s4, s14
    7084: ed9d 2a1f    	vldr	s4, [sp, #124]
    7088: eeb4 2a67    	vcmp.f32	s4, s15
    708c: ed9d 2a20    	vldr	s4, [sp, #128]
    7090: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7094: eef4 7a42    	vcmp.f32	s15, s4
    7098: ed9f 8a8f    	vldr	s16, [pc, #572]         @ 0x72d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1340>
    709c: fe34 2a07    	vselgt.f32	s4, s8, s14
    70a0: eddf ba8f    	vldr	s23, [pc, #572]         @ 0x72e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1348>
    70a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70a8: eeb4 0a6d    	vcmp.f32	s0, s27
    70ac: fe32 2a07    	vselgt.f32	s4, s4, s14
    70b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70b4: bf88         	it	hi
    70b6: f44f 7060    	movhi.w	r0, #0x380
    70ba: f1bb 0f10    	cmp.w	r11, #0x10
    70be: ed9d 0a04    	vldr	s0, [sp, #16]
    70c2: 4408         	add	r0, r1
    70c4: 9901         	ldr	r1, [sp, #0x4]
    70c6: ed90 7b0c    	vldr	d7, [r0, #48]
    70ca: ed81 0a02    	vstr	s0, [r1, #8]
    70ce: ed9d 0a03    	vldr	s0, [sp, #12]
    70d2: ed90 4b08    	vldr	d4, [r0, #32]
    70d6: ed81 0a03    	vstr	s0, [r1, #12]
    70da: ed8d 4b24    	vstr	d4, [sp, #144]
    70de: ed81 1a04    	vstr	s2, [r1, #16]
    70e2: ed90 4b0a    	vldr	d4, [r0, #40]
    70e6: ed81 3a05    	vstr	s6, [r1, #20]
    70ea: 9802         	ldr	r0, [sp, #0x8]
    70ec: ed8d 4b26    	vstr	d4, [sp, #152]
    70f0: eddf 4a77    	vldr	s9, [pc, #476]          @ 0x72d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1338>
    70f4: edc1 1a06    	vstr	s3, [r1, #24]
    70f8: 61c8         	str	r0, [r1, #0x1c]
    70fa: d05e         	beq	0x71ba <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1222> @ imm = #0xbc
    70fc: ed9d 0a0b    	vldr	s0, [sp, #44]
    7100: eef0 9a4d    	vmov.f32	s19, s26
    7104: ee20 4a80    	vmul.f32	s8, s1, s0
    7108: eddf da7e    	vldr	s27, [pc, #504]         @ 0x7304 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x136c>
    710c: ee66 0a23    	vmul.f32	s1, s12, s7
    7110: ed9f 6a6e    	vldr	s12, [pc, #440]         @ 0x72cc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1334>
    7114: ee66 6a8a    	vmul.f32	s13, s13, s20
    7118: ed9f 9a76    	vldr	s18, [pc, #472]         @ 0x72f4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x135c>
    711c: ee24 0a0c    	vmul.f32	s0, s8, s24
    7120: 4620         	mov	r0, r4
    7122: ee20 da86    	vmul.f32	s26, s1, s12
    7126: ed9f 6a68    	vldr	s12, [pc, #416]         @ 0x72c8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1330>
    712a: ee04 da24    	vmla.f32	s26, s8, s9
    712e: ed9f 4a6b    	vldr	s8, [pc, #428]          @ 0x72dc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1344>
    7132: eef0 4a40    	vmov.f32	s9, s0
    7136: ee40 4a86    	vmla.f32	s9, s1, s12
    713a: ee00 0aed    	vmls.f32	s0, s1, s27
    713e: 4641         	mov	r1, r8
    7140: ee61 0a8e    	vmul.f32	s1, s3, s28
    7144: f1ba 0f10    	cmp.w	r10, #0x10
    7148: eeb7 6bc7    	vcvt.f32.f64	s12, d7
    714c: f105 0501    	add.w	r5, r5, #0x1
    7150: ee22 2a2a    	vmul.f32	s4, s4, s21
    7154: eef0 7a49    	vmov.f32	s15, s18
    7158: ed9d ab24    	vldr	d10, [sp, #144]
    715c: ee40 7ac6    	vmls.f32	s15, s1, s12
    7160: 46d3         	mov	r11, r10
    7162: ee26 6a84    	vmul.f32	s12, s13, s8
    7166: edcd 1a23    	vstr	s3, [sp, #140]
    716a: ee02 6a2b    	vmla.f32	s12, s4, s23
    716e: ed8d 3a24    	vstr	s6, [sp, #144]
    7172: ee22 7a0c    	vmul.f32	s14, s4, s24
    7176: ed8d 5a09    	vstr	s10, [sp, #36]
    717a: ee62 3a08    	vmul.f32	s7, s4, s16
    717e: edcd 5a08    	vstr	s11, [sp, #32]
    7182: eeb7 2bca    	vcvt.f32.f64	s4, d10
    7186: ee46 3aed    	vmls.f32	s7, s13, s27
    718a: ed9d ab26    	vldr	d10, [sp, #152]
    718e: ee06 7ac9    	vmls.f32	s14, s13, s18
    7192: eeb0 9a4f    	vmov.f32	s18, s30
    7196: eeb7 8bca    	vcvt.f32.f64	s16, d10
    719a: ee62 6a60    	vnmul.f32	s13, s4, s1
    719e: ed8d 1a26    	vstr	s2, [sp, #152]
    71a2: ee78 7aa7    	vadd.f32	s15, s17, s15
    71a6: ee20 aa88    	vmul.f32	s20, s1, s16
    71aa: eeb1 2a62    	vneg.f32	s4, s5
    71ae: eef1 2a6c    	vneg.f32	s5, s25
    71b2: eef1 0a4b    	vneg.f32	s1, s22
    71b6: f77f ab33    	ble.w	0x6820 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x888> @ imm = #-0x99a
    71ba: f64b 706a    	movw	r0, #0xbf6a
    71be: f24c 3268    	movw	r2, #0xc368
    71c2: f2c0 0000    	movt	r0, #0x0
    71c6: f2c0 0200    	movt	r2, #0x0
    71ca: 2128         	movs	r1, #0x28
    71cc: f003 fa30    	bl	0xa630 <core::panicking::panic> @ imm = #0x3460
    71d0: ed9d 9a0a    	vldr	s18, [sp, #40]
    71d4: ed9f 0a4a    	vldr	s0, [pc, #296]          @ 0x7300 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1368>
    71d8: eeb4 9a40    	vcmp.f32	s18, s0
    71dc: ed9d 0a21    	vldr	s0, [sp, #132]
    71e0: eeb0 0ac0    	vabs.f32	s0, s0
    71e4: 2000         	movs	r0, #0x0
    71e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71ea: bf98         	it	ls
    71ec: 2001         	movls	r0, #0x1
    71ee: ed9f 1a43    	vldr	s2, [pc, #268]          @ 0x72fc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1364>
    71f2: ed9d 2a07    	vldr	s4, [sp, #28]
    71f6: 2100         	movs	r1, #0x0
    71f8: eeb4 2a41    	vcmp.f32	s4, s2
    71fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7200: eeb4 0a41    	vcmp.f32	s0, s2
    7204: f04f 0300    	mov.w	r3, #0x0
    7208: bf98         	it	ls
    720a: 2101         	movls	r1, #0x1
    720c: ed9d 0a22    	vldr	s0, [sp, #136]
    7210: 2200         	movs	r2, #0x0
    7212: eeb0 0ac0    	vabs.f32	s0, s0
    7216: 3501         	adds	r5, #0x1
    7218: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    721c: bf98         	it	ls
    721e: 2301         	movls	r3, #0x1
    7220: eeb4 0a41    	vcmp.f32	s0, s2
    7224: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7228: bf98         	it	ls
    722a: 2201         	movls	r2, #0x1
    722c: 4019         	ands	r1, r3
    722e: 4011         	ands	r1, r2
    7230: 4008         	ands	r0, r1
    7232: 9905         	ldr	r1, [sp, #0x14]
    7234: ed9d 0a09    	vldr	s0, [sp, #36]
    7238: ed81 0a02    	vstr	s0, [r1, #8]
    723c: ed9d 0a08    	vldr	s0, [sp, #32]
    7240: ed81 0a03    	vstr	s0, [r1, #12]
    7244: 9906         	ldr	r1, [sp, #0x18]
    7246: ed81 9a00    	vstr	s18, [r1]
    724a: 710d         	strb	r5, [r1, #0x4]
    724c: 7148         	strb	r0, [r1, #0x5]
    724e: b034         	add	sp, #0xd0
    7250: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    7254: b001         	add	sp, #0x4
    7256: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    725a: bdf0         	pop	{r4, r5, r6, r7, pc}
    725c: bf00         	nop
    725e: bf00         	nop
    7260: 9906         	ldr	r1, [sp, #0x18]
    7262: 2000         	movs	r0, #0x0
    7264: e7ef         	b	0x7246 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12ae> @ imm = #-0x22
    7266: bf00         	nop
    7268: 2000         	movs	r0, #0x0
    726a: e7e2         	b	0x7232 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x129a> @ imm = #-0x3c
    726c: bf00         	nop
    726e: bf00         	nop
    7270: f64b 60b8    	movw	r0, #0xbeb8
    7274: f24c 3278    	movw	r2, #0xc378
    7278: f2c0 0000    	movt	r0, #0x0
    727c: f2c0 0200    	movt	r2, #0x0
    7280: a92b         	add	r1, sp, #0xac
    7282: f003 f9d1    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #0x33a2
    7286: bf00         	nop
    7288: ed9f 3a0d    	vldr	s6, [pc, #52]           @ 0x72c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1328>
    728c: eeb0 2a43    	vmov.f32	s4, s6
    7290: f7fe bfa9    	b.w	0x61e6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x24e> @ imm = #-0x10ae
    7294: bf00         	nop
    7296: bf00         	nop
    7298: ed9f aa09    	vldr	s20, [pc, #36]          @ 0x72c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1328>
    729c: eef0 0a4a    	vmov.f32	s1, s20
    72a0: f7ff b951    	b.w	0x6546 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x5ae> @ imm = #-0xd5e
    72a4: bf00         	nop
    72a6: bf00         	nop
    72a8: d2 ce fe 14  	.word	0x14feced2
    72ac: cf 45 20 3f  	.word	0x3f2045cf
    72b0: 10 43 9c 25  	.word	0x259c4310
    72b4: ca fc ef 3f  	.word	0x3feffcca
    72b8: 00 80 e7 1d  	.word	0x1de78000
    72bc: d3 ae 39 3f  	.word	0x3f39aed3
    72c0: 00 00 c0 7f  	.word	0x7fc00000
    72c4: 79 61 2e c3  	.word	0xc32e6179
    72c8: 00 00 00 80  	.word	0x80000000
    72cc: 83 c0 96 38  	.word	0x3896c083
    72d0: fc 9d 08 bf  	.word	0xbf089dfc
    72d4: 00 00 80 7f  	.word	0x7f800000
    72d8: 6f f3 03 be  	.word	0xbe03f36f
    72dc: af e6 27 39  	.word	0x3927e6af
    72e0: d5 35 a4 be  	.word	0xbea435d5
    72e4: 95 bf d6 33  	.word	0x33d6bf95
    72e8: 2b 18 95 3b  	.word	0x3b95182b
    72ec: 00 00 00 00  	.word	0x00000000
    72f0: 2b 18 15 3b  	.word	0x3b15182b
    72f4: 79 2e 02 39  	.word	0x39022e79
    72f8: 0a d7 23 3c  	.word	0x3c23d70a
    72fc: ac c5 a7 37  	.word	0x37a7c5ac
    7300: 17 b7 d1 38  	.word	0x38d1b717
    7304: d6 f8 e4 36  	.word	0x36e4f8d6

00007308 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>>:
    7308: b5f0         	push	{r4, r5, r6, r7, lr}
    730a: af03         	add	r7, sp, #0xc
    730c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    7310: b081         	sub	sp, #0x4
    7312: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    7316: b098         	sub	sp, #0x60
    7318: ed9f 3af3    	vldr	s6, [pc, #972]          @ 0x76e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3e0>
    731c: ee22 2a03    	vmul.f32	s4, s4, s6
    7320: ed9f 3af2    	vldr	s6, [pc, #968]          @ 0x76ec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3e4>
    7324: ed9f 4af2    	vldr	s8, [pc, #968]          @ 0x76f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3e8>
    7328: ed9f 5af2    	vldr	s10, [pc, #968]         @ 0x76f4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3ec>
    732c: ee32 3a03    	vadd.f32	s6, s4, s6
    7330: ee32 4a04    	vadd.f32	s8, s4, s8
    7334: ee83 ca05    	vdiv.f32	s24, s6, s10
    7338: ee84 da05    	vdiv.f32	s26, s8, s10
    733c: eeb4 ca4d    	vcmp.f32	s24, s26
    7340: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7344: f200 81e0    	bhi.w	0x7708 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x400> @ imm = #0x3c0
    7348: eeb0 9b40    	vmov.f64	d9, d0
    734c: 4604         	mov	r4, r0
    734e: ed91 0a05    	vldr	s0, [r1, #20]
    7352: a80c         	add	r0, sp, #0x30
    7354: ed91 3a06    	vldr	s6, [r1, #24]
    7358: ed8d 0a03    	vstr	s0, [sp, #12]
    735c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    7360: ed8d 3a02    	vstr	s6, [sp, #8]
    7364: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    7368: ed91 ea07    	vldr	s28, [r1, #28]
    736c: eeb0 8b41    	vmov.f64	d8, d1
    7370: eeb7 fac2    	vcvt.f64.f32	d15, s4
    7374: 4615         	mov	r5, r2
    7376: 460e         	mov	r6, r1
    7378: ed9f 1be9    	vldr	d1, [pc, #932]          @ 0x7720 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x418>
    737c: eeb0 2b4f    	vmov.f64	d2, d15
    7380: ee00 8b01    	vmla.f64	d8, d0, d1
    7384: eeb7 0ace    	vcvt.f64.f32	d0, s28
    7388: ee03 8b41    	vmls.f64	d8, d3, d1
    738c: ed9f 3be6    	vldr	d3, [pc, #920]          @ 0x7728 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x420>
    7390: eeb0 1b48    	vmov.f64	d1, d8
    7394: ee00 1b03    	vmla.f64	d1, d0, d3
    7398: ed9f 3be7    	vldr	d3, [pc, #924]          @ 0x7738 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x430>
    739c: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    73a0: ed9f abe3    	vldr	d10, [pc, #908]         @ 0x7730 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x428>
    73a4: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    73a8: ee01 2b03    	vmla.f64	d2, d1, d3
    73ac: ed9f 1be4    	vldr	d1, [pc, #912]          @ 0x7740 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x438>
    73b0: ee82 1b01    	vdiv.f64	d1, d2, d1
    73b4: eeb0 2b49    	vmov.f64	d2, d9
    73b8: eeb7 bbc1    	vcvt.f32.f64	s22, d1
    73bc: ee00 2b0a    	vmla.f64	d2, d0, d10
    73c0: eeb4 ca4b    	vcmp.f32	s24, s22
    73c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    73c8: eef7 0bc2    	vcvt.f32.f64	s1, d2
    73cc: fe3c 1a0b    	vselgt.f32	s2, s24, s22
    73d0: eeb4 1a4d    	vcmp.f32	s2, s26
    73d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    73d8: fe7d da01    	vselgt.f32	s27, s26, s2
    73dc: eeb0 0a6d    	vmov.f32	s0, s27
    73e0: f7fc fec6    	bl	0x4170 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #-0x3274
    73e4: a0d8         	adr	r0, #864 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x1b8>
    73e6: ed9d 0a0c    	vldr	s0, [sp, #48]
    73ea: 1d01         	adds	r1, r0, #0x4
    73ec: eeb4 da4b    	vcmp.f32	s26, s22
    73f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    73f4: 9101         	str	r1, [sp, #0x4]
    73f6: eeb4 ba4c    	vcmp.f32	s22, s24
    73fa: bfc8         	it	gt
    73fc: 4608         	movgt	r0, r1
    73fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7402: ee3e 1a40    	vsub.f32	s2, s28, s0
    7406: ed90 0a00    	vldr	s0, [r0]
    740a: ed9f 2ad1    	vldr	s4, [pc, #836]          @ 0x7750 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x448>
    740e: ed9d 3a0e    	vldr	s6, [sp, #56]
    7412: fe30 0a02    	vselgt.f32	s0, s0, s4
    7416: ed9d 2a0d    	vldr	s4, [sp, #52]
    741a: ee11 0a10    	vmov	r0, s2
    741e: ed9f 5ace    	vldr	s10, [pc, #824]         @ 0x7758 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x450>
    7422: e9cd 5405    	strd	r5, r4, [sp, #20]
    7426: ee20 2a02    	vmul.f32	s4, s0, s4
    742a: ed9f 0aca    	vldr	s0, [pc, #808]          @ 0x7754 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x44c>
    742e: ee23 0a00    	vmul.f32	s0, s6, s0
    7432: f020 4000    	bic	r0, r0, #0x80000000
    7436: f1b0 4fff    	cmp.w	r0, #0x7f800000
    743a: db05         	blt	0x7448 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x140> @ imm = #0xa
    743c: eddf bac7    	vldr	s23, [pc, #796]         @ 0x775c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x454>
    7440: e00c         	b	0x745c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x154> @ imm = #0x18
    7442: bf00         	nop
    7444: bf00         	nop
    7446: bf00         	nop
    7448: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    744c: ed9f 4ac4    	vldr	s8, [pc, #784]          @ 0x7760 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x458>
    7450: ee81 3a03    	vdiv.f32	s6, s2, s6
    7454: eeb0 3ac3    	vabs.f32	s6, s6
    7458: fec3 ba04    	vmaxnm.f32	s23, s6, s8
    745c: ee02 0a05    	vmla.f32	s0, s4, s10
    7460: eef7 ea00    	vmov.f32	s29, #1.000000e+00
    7464: eeb1 1a41    	vneg.f32	s2, s2
    7468: a80c         	add	r0, sp, #0x30
    746a: 2400         	movs	r4, #0x0
    746c: f100 0904    	add.w	r9, r0, #0x4
    7470: f04f 0b00    	mov.w	r11, #0x0
    7474: a909         	add	r1, sp, #0x24
    7476: eddf cabb    	vldr	s25, [pc, #748]         @ 0x7764 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x45c>
    747a: ad15         	add	r5, sp, #0x54
    747c: 46a2         	mov	r10, r4
    747e: 2000         	movs	r0, #0x0
    7480: 9008         	str	r0, [sp, #0x20]
    7482: 9604         	str	r6, [sp, #0x10]
    7484: ee30 0a2e    	vadd.f32	s0, s0, s29
    7488: 2201         	movs	r2, #0x1
    748a: a80c         	add	r0, sp, #0x30
    748c: ed8d 1a09    	vstr	s2, [sp, #36]
    7490: f8cd b02c    	str.w	r11, [sp, #0x2c]
    7494: 2c10         	cmp	r4, #0x10
    7496: f8cd b028    	str.w	r11, [sp, #0x28]
    749a: 4688         	mov	r8, r1
    749c: ed8d 0a0c    	vstr	s0, [sp, #48]
    74a0: e9c9 bb00    	strd	r11, r11, [r9]
    74a4: e9c9 bb02    	strd	r11, r11, [r9, #8]
    74a8: e9c9 bb04    	strd	r11, r11, [r9, #16]
    74ac: f8c9 b018    	str.w	r11, [r9, #0x18]
    74b0: bf18         	it	ne
    74b2: f10a 0a01    	addne.w	r10, r10, #0x1
    74b6: f8c9 b01c    	str.w	r11, [r9, #0x1c]
    74ba: f004 f999    	bl	0xb7f0 <orange_dsp::condensed::solve> @ imm = #0x4332
    74be: 2800         	cmp	r0, #0x0
    74c0: f000 810a    	beq.w	0x76d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3d0> @ imm = #0x214
    74c4: eef4 ba6c    	vcmp.f32	s23, s25
    74c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74cc: d908         	bls	0x74e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x1d8> @ imm = #0x10
    74ce: 2c10         	cmp	r4, #0x10
    74d0: f000 8112    	beq.w	0x76f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3f0> @ imm = #0x224
    74d4: eddd ca09    	vldr	s25, [sp, #36]
    74d8: e02c         	b	0x7534 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x22c> @ imm = #0x58
    74da: bf00         	nop
    74dc: bf00         	nop
    74de: bf00         	nop
    74e0: eeb0 0ace    	vabs.f32	s0, s28
    74e4: ed9f 1aa0    	vldr	s2, [pc, #640]          @ 0x7768 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x460>
    74e8: eddd ca09    	vldr	s25, [sp, #36]
    74ec: 2000         	movs	r0, #0x0
    74ee: eeb4 0a40    	vcmp.f32	s0, s0
    74f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74f6: fe1e 0a80    	vselvs.f32	s0, s29, s0
    74fa: eeb4 0a6e    	vcmp.f32	s0, s29
    74fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7502: fe30 0a2e    	vselgt.f32	s0, s0, s29
    7506: ee20 0a01    	vmul.f32	s0, s0, s2
    750a: ed9f 1a98    	vldr	s2, [pc, #608]          @ 0x776c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x464>
    750e: fe80 0a41    	vminnm.f32	s0, s0, s2
    7512: eeb0 1aec    	vabs.f32	s2, s25
    7516: eeb4 1a40    	vcmp.f32	s2, s0
    751a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    751e: bf98         	it	ls
    7520: 2001         	movls	r0, #0x1
    7522: 2c10         	cmp	r4, #0x10
    7524: f000 80e9    	beq.w	0x76fa <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3f2> @ imm = #0x1d2
    7528: eeb4 1a40    	vcmp.f32	s2, s0
    752c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7530: f240 80e3    	bls.w	0x76fa <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3f2> @ imm = #0x1c6
    7534: f04f 567e    	mov.w	r6, #0x3f800000
    7538: edcd da07    	vstr	s27, [sp, #28]
    753c: e006         	b	0x754c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x244> @ imm = #0xc
    753e: bf00         	nop
    7540: f5a6 0600    	sub.w	r6, r6, #0x800000
    7544: f1b6 5f66    	cmp.w	r6, #0x39800000
    7548: f000 809e    	beq.w	0x7688 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x380> @ imm = #0x13c
    754c: ee00 6a10    	vmov	s0, r6
    7550: eef0 da4e    	vmov.f32	s27, s28
    7554: ed9f 2b74    	vldr	d2, [pc, #464]          @ 0x7728 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x420>
    7558: eeb0 1b48    	vmov.f64	d1, d8
    755c: 4628         	mov	r0, r5
    755e: ee4c da80    	vmla.f32	s27, s25, s0
    7562: ed9f 3b75    	vldr	d3, [pc, #468]          @ 0x7738 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x430>
    7566: eeb7 0aed    	vcvt.f64.f32	d0, s27
    756a: ee00 1b02    	vmla.f64	d1, d0, d2
    756e: eeb0 2b4f    	vmov.f64	d2, d15
    7572: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    7576: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    757a: ee01 2b03    	vmla.f64	d2, d1, d3
    757e: ed9f 1b70    	vldr	d1, [pc, #448]          @ 0x7740 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x438>
    7582: ee82 1b01    	vdiv.f64	d1, d2, d1
    7586: eeb0 2b49    	vmov.f64	d2, d9
    758a: eef7 ebc1    	vcvt.f32.f64	s29, d1
    758e: ee00 2b0a    	vmla.f64	d2, d0, d10
    7592: eeb4 ca6e    	vcmp.f32	s24, s29
    7596: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    759a: eef7 0bc2    	vcvt.f32.f64	s1, d2
    759e: fe3c 1a2e    	vselgt.f32	s2, s24, s29
    75a2: eeb4 1a4d    	vcmp.f32	s2, s26
    75a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    75aa: fe3d ba01    	vselgt.f32	s22, s26, s2
    75ae: eeb0 0a4b    	vmov.f32	s0, s22
    75b2: f7fc fddd    	bl	0x4170 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #-0x3446
    75b6: ed9d 0a15    	vldr	s0, [sp, #84]
    75ba: ee3d 1ac0    	vsub.f32	s2, s27, s0
    75be: ee11 0a10    	vmov	r0, s2
    75c2: f020 4000    	bic	r0, r0, #0x80000000
    75c6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    75ca: dab9         	bge	0x7540 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x238> @ imm = #-0x8e
    75cc: eeb3 0a08    	vmov.f32	s0, #2.400000e+01
    75d0: ed9f 2a63    	vldr	s4, [pc, #396]          @ 0x7760 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x458>
    75d4: ee81 0a00    	vdiv.f32	s0, s2, s0
    75d8: eeb0 0ac0    	vabs.f32	s0, s0
    75dc: fe80 2a02    	vmaxnm.f32	s4, s0, s4
    75e0: eeb4 2a6b    	vcmp.f32	s4, s23
    75e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    75e8: d5aa         	bpl	0x7540 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x238> @ imm = #-0xac
    75ea: a057         	adr	r0, #348 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x33d>
    75ec: 9901         	ldr	r1, [sp, #0x4]
    75ee: eeb4 da6e    	vcmp.f32	s26, s29
    75f2: ed9f 3a57    	vldr	s6, [pc, #348]          @ 0x7750 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x448>
    75f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    75fa: bfc8         	it	gt
    75fc: 4608         	movgt	r0, r1
    75fe: 9e04         	ldr	r6, [sp, #0x10]
    7600: eef4 ea4c    	vcmp.f32	s29, s24
    7604: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7608: ed9d 0a03    	vldr	s0, [sp, #12]
    760c: ed86 0a05    	vstr	s0, [r6, #20]
    7610: ed90 0a00    	vldr	s0, [r0]
    7614: eef7 ea00    	vmov.f32	s29, #1.000000e+00
    7618: fe30 0a03    	vselgt.f32	s0, s0, s6
    761c: ed9d 3a02    	vldr	s6, [sp, #8]
    7620: ed86 3a06    	vstr	s6, [r6, #24]
    7624: 2c10         	cmp	r4, #0x10
    7626: ed9d 4a16    	vldr	s8, [sp, #88]
    762a: ed9d 3a17    	vldr	s6, [sp, #92]
    762e: ed9f 5a4a    	vldr	s10, [pc, #296]         @ 0x7758 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x450>
    7632: edc6 da07    	vstr	s27, [r6, #28]
    7636: eddf ca4b    	vldr	s25, [pc, #300]         @ 0x7764 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x45c>
    763a: d019         	beq	0x7670 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x368> @ imm = #0x32
    763c: ee20 4a04    	vmul.f32	s8, s0, s8
    7640: ed9f 0a44    	vldr	s0, [pc, #272]          @ 0x7754 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x44c>
    7644: ee23 0a00    	vmul.f32	s0, s6, s0
    7648: eeb0 ea6d    	vmov.f32	s28, s27
    764c: eeb1 1a41    	vneg.f32	s2, s2
    7650: eef0 ba42    	vmov.f32	s23, s4
    7654: ee04 0a05    	vmla.f32	s0, s8, s10
    7658: eef0 da4b    	vmov.f32	s27, s22
    765c: 4641         	mov	r1, r8
    765e: f1ba 0f10    	cmp.w	r10, #0x10
    7662: 9808         	ldr	r0, [sp, #0x20]
    7664: 4654         	mov	r4, r10
    7666: f100 0001    	add.w	r0, r0, #0x1
    766a: 9008         	str	r0, [sp, #0x20]
    766c: f77f af0a    	ble.w	0x7484 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x17c> @ imm = #-0x1ec
    7670: f64b 706a    	movw	r0, #0xbf6a
    7674: f24c 3268    	movw	r2, #0xc368
    7678: f2c0 0000    	movt	r0, #0x0
    767c: f2c0 0200    	movt	r2, #0x0
    7680: 2128         	movs	r1, #0x28
    7682: f002 ffd5    	bl	0xa630 <core::panicking::panic> @ imm = #0x2faa
    7686: bf00         	nop
    7688: ed9f 0a36    	vldr	s0, [pc, #216]          @ 0x7764 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x45c>
    768c: 9b08         	ldr	r3, [sp, #0x20]
    768e: eef4 ba40    	vcmp.f32	s23, s0
    7692: 3301         	adds	r3, #0x1
    7694: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7698: f04f 0000    	mov.w	r0, #0x0
    769c: e9dd 2105    	ldrd	r2, r1, [sp, #20]
    76a0: d809         	bhi	0x76b6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3ae> @ imm = #0x12
    76a2: eeb0 0aec    	vabs.f32	s0, s25
    76a6: ed9f 1a31    	vldr	s2, [pc, #196]          @ 0x776c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x464>
    76aa: eeb4 0a41    	vcmp.f32	s0, s2
    76ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    76b2: bf98         	it	ls
    76b4: 2001         	movls	r0, #0x1
    76b6: eddd da07    	vldr	s27, [sp, #28]
    76ba: edc2 da04    	vstr	s27, [r2, #16]
    76be: edc1 ba00    	vstr	s23, [r1]
    76c2: 710b         	strb	r3, [r1, #0x4]
    76c4: 7148         	strb	r0, [r1, #0x5]
    76c6: b018         	add	sp, #0x60
    76c8: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    76cc: b001         	add	sp, #0x4
    76ce: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    76d2: bdf0         	pop	{r4, r5, r6, r7, pc}
    76d4: bf00         	nop
    76d6: bf00         	nop
    76d8: 9906         	ldr	r1, [sp, #0x18]
    76da: 9808         	ldr	r0, [sp, #0x20]
    76dc: 7108         	strb	r0, [r1, #0x4]
    76de: 2000         	movs	r0, #0x0
    76e0: edc1 ba00    	vstr	s23, [r1]
    76e4: e7ee         	b	0x76c4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3bc> @ imm = #-0x24
    76e6: bf00         	nop
    76e8: 00 80 bb 47  	.word	0x47bb8000
    76ec: 00 24 f4 ca  	.word	0xcaf42400
    76f0: 00 24 f4 4a  	.word	0x4af42400
    76f4: 00 a0 0c 48  	.word	0x480ca000
    76f8: 2000         	movs	r0, #0x0
    76fa: e9dd 2105    	ldrd	r2, r1, [sp, #20]
    76fe: 9b08         	ldr	r3, [sp, #0x20]
    7700: e7db         	b	0x76ba <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3b2> @ imm = #-0x4a
    7702: bf00         	nop
    7704: bf00         	nop
    7706: bf00         	nop
    7708: f64b 60b8    	movw	r0, #0xbeb8
    770c: f24c 3278    	movw	r2, #0xc378
    7710: f2c0 0000    	movt	r0, #0x0
    7714: f2c0 0200    	movt	r2, #0x0
    7718: a90c         	add	r1, sp, #0x30
    771a: f002 ff85    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #0x2f0a
    771e: bf00         	nop
    7720: e6 a7 5c a0  	.word	0xa05ca7e6
    7724: 06 41 d9 3f  	.word	0x3fd94106
    7728: 19 d5 65 36  	.word	0x3665d519
    772c: d0 6e 95 bf  	.word	0xbf956ed0
    7730: 42 6f 24 95  	.word	0x95246f42
    7734: d9 83 c5 bf  	.word	0xbfc583d9
    7738: d9 3f b8 22  	.word	0x22b83fd9
    773c: 8b 1c 8e 41  	.word	0x418e1c8b
    7740: 85 42 fe de  	.word	0xdefe4285
    7744: bb a7 01 41  	.word	0x4101a7bb
    7748: 00 00 00 80  	.word	0x80000000
    774c: d2 4e da c3  	.word	0xc3da4ed2
    7750: 00 00 00 80  	.word	0x80000000
    7754: cd 1e 2c 3e  	.word	0x3e2c1ecd
    7758: 82 76 ab bc  	.word	0xbcab7682
    775c: 00 00 80 7f  	.word	0x7f800000
    7760: 00 00 00 00  	.word	0x00000000
    7764: 17 b7 d1 38  	.word	0x38d1b717
    7768: bd 37 06 36  	.word	0x360637bd
    776c: ac c5 a7 37  	.word	0x37a7c5ac

00007770 <__rustc::rust_begin_unwind>:
    7770: b580         	push	{r7, lr}
    7772: 466f         	mov	r7, sp
    7774: bf00         	nop
    7776: bf00         	nop
    7778: bf10         	yield
    777a: bf10         	yield
    777c: bf10         	yield
    777e: bf10         	yield
    7780: e7fa         	b	0x7778 <__rustc::rust_begin_unwind+0x8> @ imm = #-0xc
    7782: d4d4         	bmi	0x772e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x426> @ imm = #-0x58
    7784: d4d4         	bmi	0x7730 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x428> @ imm = #-0x58
    7786: d4d4         	bmi	0x7732 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x42a> @ imm = #-0x58

00007788 <ram_probe::packed_probe::control>:
    7788: b5f0         	push	{r4, r5, r6, r7, lr}
    778a: af03         	add	r7, sp, #0xc
    778c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    7790: b081         	sub	sp, #0x4
    7792: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    7796: b0f2         	sub	sp, #0x1c8
    7798: eeb6 1a00    	vmov.f32	s2, #5.000000e-01
    779c: ed91 2a08    	vldr	s4, [r1, #32]
    77a0: ed91 4a24    	vldr	s8, [r1, #144]
    77a4: ee32 2a02    	vadd.f32	s4, s4, s4
    77a8: ed91 3a09    	vldr	s6, [r1, #36]
    77ac: ed91 5a0a    	vldr	s10, [r1, #40]
    77b0: ee04 2a41    	vmls.f32	s4, s8, s2
    77b4: ed91 4a25    	vldr	s8, [r1, #148]
    77b8: ee33 3a03    	vadd.f32	s6, s6, s6
    77bc: ed91 6a0b    	vldr	s12, [r1, #44]
    77c0: ee04 3a41    	vmls.f32	s6, s8, s2
    77c4: ed91 7a29    	vldr	s14, [r1, #164]
    77c8: ee35 4a05    	vadd.f32	s8, s10, s10
    77cc: ed91 5a26    	vldr	s10, [r1, #152]
    77d0: ee05 4a41    	vmls.f32	s8, s10, s2
    77d4: ed91 5a27    	vldr	s10, [r1, #156]
    77d8: ed8d 2a14    	vstr	s4, [sp, #80]
    77dc: ee36 2a06    	vadd.f32	s4, s12, s12
    77e0: ee05 2a41    	vmls.f32	s4, s10, s2
    77e4: ed91 5a0c    	vldr	s10, [r1, #48]
    77e8: ed91 6a28    	vldr	s12, [r1, #160]
    77ec: ee35 5a05    	vadd.f32	s10, s10, s10
    77f0: ee06 5a41    	vmls.f32	s10, s12, s2
    77f4: ed91 6a0d    	vldr	s12, [r1, #52]
    77f8: ee36 6a06    	vadd.f32	s12, s12, s12
    77fc: ed8d 4a16    	vstr	s8, [sp, #88]
    7800: ee07 6a41    	vmls.f32	s12, s14, s2
    7804: ed8d 2a17    	vstr	s4, [sp, #92]
    7808: ed91 2a0e    	vldr	s4, [r1, #56]
    780c: ed8d 3a15    	vstr	s6, [sp, #84]
    7810: ed91 4a2a    	vldr	s8, [r1, #168]
    7814: ee32 2a02    	vadd.f32	s4, s4, s4
    7818: ee04 2a41    	vmls.f32	s4, s8, s2
    781c: ed8d 5a18    	vstr	s10, [sp, #96]
    7820: ed91 3a0f    	vldr	s6, [r1, #60]
    7824: ed91 5a10    	vldr	s10, [r1, #64]
    7828: ed91 4a2b    	vldr	s8, [r1, #172]
    782c: ee33 3a03    	vadd.f32	s6, s6, s6
    7830: ee04 3a41    	vmls.f32	s6, s8, s2
    7834: ed8d 6a19    	vstr	s12, [sp, #100]
    7838: ee35 4a05    	vadd.f32	s8, s10, s10
    783c: ed91 5a2c    	vldr	s10, [r1, #176]
    7840: ed91 6a11    	vldr	s12, [r1, #68]
    7844: ee05 4a41    	vmls.f32	s8, s10, s2
    7848: ed91 5a2d    	vldr	s10, [r1, #180]
    784c: ed8d 2a1a    	vstr	s4, [sp, #104]
    7850: ee36 2a06    	vadd.f32	s4, s12, s12
    7854: ed91 6a2e    	vldr	s12, [r1, #184]
    7858: ee05 2a41    	vmls.f32	s4, s10, s2
    785c: ed91 5a12    	vldr	s10, [r1, #72]
    7860: ee35 5a05    	vadd.f32	s10, s10, s10
    7864: ed91 7a2f    	vldr	s14, [r1, #188]
    7868: ee06 5a41    	vmls.f32	s10, s12, s2
    786c: ed91 6a13    	vldr	s12, [r1, #76]
    7870: ee36 6a06    	vadd.f32	s12, s12, s12
    7874: ed8d 4a1c    	vstr	s8, [sp, #112]
    7878: ee07 6a41    	vmls.f32	s12, s14, s2
    787c: ed8d 2a1d    	vstr	s4, [sp, #116]
    7880: ed91 2a14    	vldr	s4, [r1, #80]
    7884: ed8d 3a1b    	vstr	s6, [sp, #108]
    7888: ed91 4a30    	vldr	s8, [r1, #192]
    788c: ee32 2a02    	vadd.f32	s4, s4, s4
    7890: ee04 2a41    	vmls.f32	s4, s8, s2
    7894: ed8d 5a1e    	vstr	s10, [sp, #120]
    7898: ed91 3a15    	vldr	s6, [r1, #84]
    789c: ed91 5a16    	vldr	s10, [r1, #88]
    78a0: ed91 4a31    	vldr	s8, [r1, #196]
    78a4: ee33 3a03    	vadd.f32	s6, s6, s6
    78a8: ee04 3a41    	vmls.f32	s6, s8, s2
    78ac: ed8d 6a1f    	vstr	s12, [sp, #124]
    78b0: ee35 4a05    	vadd.f32	s8, s10, s10
    78b4: ed91 5a32    	vldr	s10, [r1, #200]
    78b8: ed91 6a17    	vldr	s12, [r1, #92]
    78bc: ee05 4a41    	vmls.f32	s8, s10, s2
    78c0: ed91 5a33    	vldr	s10, [r1, #204]
    78c4: ed8d 2a20    	vstr	s4, [sp, #128]
    78c8: ee36 2a06    	vadd.f32	s4, s12, s12
    78cc: ed8d 3a21    	vstr	s6, [sp, #132]
    78d0: ee05 2a41    	vmls.f32	s4, s10, s2
    78d4: ed91 3a36    	vldr	s6, [r1, #216]
    78d8: ed8d 4a22    	vstr	s8, [sp, #136]
    78dc: ed91 4a37    	vldr	s8, [r1, #220]
    78e0: ed91 5a18    	vldr	s10, [r1, #96]
    78e4: ed91 7a35    	vldr	s14, [r1, #212]
    78e8: ed91 6a34    	vldr	s12, [r1, #208]
    78ec: ee35 5a05    	vadd.f32	s10, s10, s10
    78f0: ed8d 2a23    	vstr	s4, [sp, #140]
    78f4: ed91 2a1a    	vldr	s4, [r1, #104]
    78f8: ee32 2a02    	vadd.f32	s4, s4, s4
    78fc: f10d 08c0    	add.w	r8, sp, #0xc0
    7900: ee03 2a41    	vmls.f32	s4, s6, s2
    7904: ed91 3a1b    	vldr	s6, [r1, #108]
    7908: ee33 3a03    	vadd.f32	s6, s6, s6
    790c: 468b         	mov	r11, r1
    790e: ee04 3a41    	vmls.f32	s6, s8, s2
    7912: ed91 4a1c    	vldr	s8, [r1, #112]
    7916: ee06 5a41    	vmls.f32	s10, s12, s2
    791a: ed91 6a19    	vldr	s12, [r1, #100]
    791e: ee36 6a06    	vadd.f32	s12, s12, s12
    7922: ed8d 2a26    	vstr	s4, [sp, #152]
    7926: ee07 6a41    	vmls.f32	s12, s14, s2
    792a: ed91 2a1f    	vldr	s4, [r1, #124]
    792e: ed8d 3a27    	vstr	s6, [sp, #156]
    7932: ed91 3a3b    	vldr	s6, [r1, #236]
    7936: ee32 da02    	vadd.f32	s26, s4, s4
    793a: ed91 2a20    	vldr	s4, [r1, #128]
    793e: ee03 da41    	vmls.f32	s26, s6, s2
    7942: ed91 3a3c    	vldr	s6, [r1, #240]
    7946: ed8d 5a24    	vstr	s10, [sp, #144]
    794a: ed91 5a38    	vldr	s10, [r1, #224]
    794e: ee32 ca02    	vadd.f32	s24, s4, s4
    7952: ed91 2a21    	vldr	s4, [r1, #132]
    7956: ee03 ca41    	vmls.f32	s24, s6, s2
    795a: ed91 3a3d    	vldr	s6, [r1, #244]
    795e: ed8d 6a25    	vstr	s12, [sp, #148]
    7962: ee34 4a04    	vadd.f32	s8, s8, s8
    7966: ee05 4a41    	vmls.f32	s8, s10, s2
    796a: ed91 5a1d    	vldr	s10, [r1, #116]
    796e: ed91 6a39    	vldr	s12, [r1, #228]
    7972: ee32 aa02    	vadd.f32	s20, s4, s4
    7976: ee03 aa41    	vmls.f32	s20, s6, s2
    797a: ed91 2a22    	vldr	s4, [r1, #136]
    797e: ed91 3a3e    	vldr	s6, [r1, #248]
    7982: ee35 5a05    	vadd.f32	s10, s10, s10
    7986: ee06 5a41    	vmls.f32	s10, s12, s2
    798a: ed91 6a1e    	vldr	s12, [r1, #120]
    798e: ed91 7a3a    	vldr	s14, [r1, #232]
    7992: ee32 ba02    	vadd.f32	s22, s4, s4
    7996: ee03 ba41    	vmls.f32	s22, s6, s2
    799a: ed91 2a23    	vldr	s4, [r1, #140]
    799e: ed91 3a3f    	vldr	s6, [r1, #252]
    79a2: ee36 6a06    	vadd.f32	s12, s12, s12
    79a6: ee07 6a41    	vmls.f32	s12, s14, s2
    79aa: 4681         	mov	r9, r0
    79ac: ee32 9a02    	vadd.f32	s18, s4, s4
    79b0: a914         	add	r1, sp, #0x50
    79b2: ee03 9a41    	vmls.f32	s18, s6, s2
    79b6: 4640         	mov	r0, r8
    79b8: ed8d 4a28    	vstr	s8, [sp, #160]
    79bc: eeb0 8a40    	vmov.f32	s16, s0
    79c0: ed8d 5a29    	vstr	s10, [sp, #164]
    79c4: ed8d 6a2a    	vstr	s12, [sp, #168]
    79c8: ed8d da2b    	vstr	s26, [sp, #172]
    79cc: ed8d ca2c    	vstr	s24, [sp, #176]
    79d0: ed8d aa2d    	vstr	s20, [sp, #180]
    79d4: ed8d ba2e    	vstr	s22, [sp, #184]
    79d8: ed8d 9a2f    	vstr	s18, [sp, #188]
    79dc: f002 fe30    	bl	0xa640 <orange_dsp::generated_condensed::origin> @ imm = #0x2c60
    79e0: a94e         	add	r1, sp, #0x138
    79e2: 4658         	mov	r0, r11
    79e4: 460a         	mov	r2, r1
    79e6: c878         	ldm	r0!, {r3, r4, r5, r6}
    79e8: c278         	stm	r2!, {r3, r4, r5, r6}
    79ea: e890 0078    	ldm.w	r0, {r3, r4, r5, r6}
    79ee: c278         	stm	r2!, {r3, r4, r5, r6}
    79f0: a85b         	add	r0, sp, #0x16c
    79f2: 4642         	mov	r2, r8
    79f4: 2500         	movs	r5, #0x0
    79f6: 955a         	str	r5, [sp, #0x168]
    79f8: e9cd 5558    	strd	r5, r5, [sp, #352]
    79fc: e9cd 5556    	strd	r5, r5, [sp, #344]
    7a00: f7fc fce6    	bl	0x43d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>> @ imm = #-0x3634
    7a04: f89d 0171    	ldrb.w	r0, [sp, #0x171]
    7a08: f89d 6170    	ldrb.w	r6, [sp, #0x170]
    7a0c: b180         	cbz	r0, 0x7a30 <ram_probe::packed_probe::control+0x2a8> @ imm = #0x20
    7a0e: ed9d 0a5b    	vldr	s0, [sp, #364]
    7a12: ed9f 1ac5    	vldr	s2, [pc, #788]          @ 0x7d28 <ram_probe::packed_probe::control+0x5a0>
    7a16: eeb4 0a40    	vcmp.f32	s0, s0
    7a1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a1e: fe11 0a00    	vselvs.f32	s0, s2, s0
    7a22: eeb5 0a40    	vcmp.f32	s0, #0
    7a26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a2a: fe70 8a01    	vselgt.f32	s17, s0, s2
    7a2e: e025         	b	0x7a7c <ram_probe::packed_probe::control+0x2f4> @ imm = #0x4a
    7a30: a85b         	add	r0, sp, #0x16c
    7a32: a94e         	add	r1, sp, #0x138
    7a34: aa30         	add	r2, sp, #0xc0
    7a36: 954e         	str	r5, [sp, #0x138]
    7a38: f7fc fcca    	bl	0x43d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>> @ imm = #-0x366c
    7a3c: f8db 0104    	ldr.w	r0, [r11, #0x104]
    7a40: ed9d 0a5b    	vldr	s0, [sp, #364]
    7a44: 3001         	adds	r0, #0x1
    7a46: eeb4 0a40    	vcmp.f32	s0, s0
    7a4a: bf28         	it	hs
    7a4c: f04f 30ff    	movhs.w	r0, #0xffffffff
    7a50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a54: ed9f 1ab4    	vldr	s2, [pc, #720]          @ 0x7d28 <ram_probe::packed_probe::control+0x5a0>
    7a58: f89d 1170    	ldrb.w	r1, [sp, #0x170]
    7a5c: fe11 2a00    	vselvs.f32	s4, s2, s0
    7a60: f89d 2171    	ldrb.w	r2, [sp, #0x171]
    7a64: 440e         	add	r6, r1
    7a66: f8cb 0104    	str.w	r0, [r11, #0x104]
    7a6a: eeb5 2a40    	vcmp.f32	s4, #0
    7a6e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a72: fe72 8a01    	vselgt.f32	s17, s4, s2
    7a76: 2a00         	cmp	r2, #0x0
    7a78: f000 80de    	beq.w	0x7c38 <ram_probe::packed_probe::control+0x4b0> @ imm = #0x1bc
    7a7c: ed9d eb32    	vldr	d14, [sp, #200]
    7a80: eeb0 2a4d    	vmov.f32	s4, s26
    7a84: a85b         	add	r0, sp, #0x16c
    7a86: ed9d fb40    	vldr	d15, [sp, #256]
    7a8a: eeb0 0b4e    	vmov.f64	d0, d14
    7a8e: a94e         	add	r1, sp, #0x138
    7a90: eeb0 1b4f    	vmov.f64	d1, d15
    7a94: aa56         	add	r2, sp, #0x158
    7a96: f7fc ff9b    	bl	0x49d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>> @ imm = #-0x30ca
    7a9a: f89d 0171    	ldrb.w	r0, [sp, #0x171]
    7a9e: f89d 1170    	ldrb.w	r1, [sp, #0x170]
    7aa2: eb01 0506    	add.w	r5, r1, r6
    7aa6: b1b8         	cbz	r0, 0x7ad8 <ram_probe::packed_probe::control+0x350> @ imm = #0x2e
    7aa8: eef4 8a68    	vcmp.f32	s17, s17
    7aac: ed9d 0a5b    	vldr	s0, [sp, #364]
    7ab0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ab4: eeb4 0a40    	vcmp.f32	s0, s0
    7ab8: fe10 1a28    	vselvs.f32	s2, s0, s17
    7abc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ac0: fe11 0a00    	vselvs.f32	s0, s2, s0
    7ac4: eeb4 1a40    	vcmp.f32	s2, s0
    7ac8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7acc: fe31 da00    	vselgt.f32	s26, s2, s0
    7ad0: e033         	b	0x7b3a <ram_probe::packed_probe::control+0x3b2> @ imm = #0x66
    7ad2: bf00         	nop
    7ad4: bf00         	nop
    7ad6: bf00         	nop
    7ad8: eeb0 0b4e    	vmov.f64	d0, d14
    7adc: a85b         	add	r0, sp, #0x16c
    7ade: eeb0 1b4f    	vmov.f64	d1, d15
    7ae2: a94e         	add	r1, sp, #0x138
    7ae4: eeb0 2a4d    	vmov.f32	s4, s26
    7ae8: aa56         	add	r2, sp, #0x158
    7aea: 2600         	movs	r6, #0x0
    7aec: 964f         	str	r6, [sp, #0x13c]
    7aee: f7fc ff6f    	bl	0x49d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>> @ imm = #-0x3122
    7af2: f8db 0104    	ldr.w	r0, [r11, #0x104]
    7af6: eef4 8a68    	vcmp.f32	s17, s17
    7afa: 3001         	adds	r0, #0x1
    7afc: bf28         	it	hs
    7afe: f04f 30ff    	movhs.w	r0, #0xffffffff
    7b02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b06: ed9d 0a5b    	vldr	s0, [sp, #364]
    7b0a: f89d 1170    	ldrb.w	r1, [sp, #0x170]
    7b0e: fe10 1a28    	vselvs.f32	s2, s0, s17
    7b12: f89d 2171    	ldrb.w	r2, [sp, #0x171]
    7b16: eeb4 0a40    	vcmp.f32	s0, s0
    7b1a: 440d         	add	r5, r1
    7b1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b20: f8cb 0104    	str.w	r0, [r11, #0x104]
    7b24: fe11 2a00    	vselvs.f32	s4, s2, s0
    7b28: eeb4 1a42    	vcmp.f32	s2, s4
    7b2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b30: fe31 da02    	vselgt.f32	s26, s2, s4
    7b34: 2a00         	cmp	r2, #0x0
    7b36: f000 80eb    	beq.w	0x7d10 <ram_probe::packed_probe::control+0x588> @ imm = #0x1d6
    7b3a: eeb0 0a4c    	vmov.f32	s0, s24
    7b3e: a85b         	add	r0, sp, #0x16c
    7b40: a94e         	add	r1, sp, #0x138
    7b42: aa30         	add	r2, sp, #0xc0
    7b44: ab56         	add	r3, sp, #0x158
    7b46: f7fd fb47    	bl	0x51d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>> @ imm = #-0x2972
    7b4a: f89d 0171    	ldrb.w	r0, [sp, #0x171]
    7b4e: f89d 1170    	ldrb.w	r1, [sp, #0x170]
    7b52: 2801         	cmp	r0, #0x1
    7b54: 440d         	add	r5, r1
    7b56: d117         	bne	0x7b88 <ram_probe::packed_probe::control+0x400> @ imm = #0x2e
    7b58: eeb4 da4d    	vcmp.f32	s26, s26
    7b5c: ed9d 0a5b    	vldr	s0, [sp, #364]
    7b60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b64: eeb4 0a40    	vcmp.f32	s0, s0
    7b68: fe10 1a0d    	vselvs.f32	s2, s0, s26
    7b6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b70: fe11 0a00    	vselvs.f32	s0, s2, s0
    7b74: eeb4 1a40    	vcmp.f32	s2, s0
    7b78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b7c: fe31 ca00    	vselgt.f32	s24, s2, s0
    7b80: e031         	b	0x7be6 <ram_probe::packed_probe::control+0x45e> @ imm = #0x62
    7b82: bf00         	nop
    7b84: bf00         	nop
    7b86: bf00         	nop
    7b88: eeb0 0a4c    	vmov.f32	s0, s24
    7b8c: a85b         	add	r0, sp, #0x16c
    7b8e: a94e         	add	r1, sp, #0x138
    7b90: aa30         	add	r2, sp, #0xc0
    7b92: ab56         	add	r3, sp, #0x158
    7b94: 2600         	movs	r6, #0x0
    7b96: e9cd 6650    	strd	r6, r6, [sp, #320]
    7b9a: f7fd fb1d    	bl	0x51d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>> @ imm = #-0x29c6
    7b9e: f8db 0104    	ldr.w	r0, [r11, #0x104]
    7ba2: eeb4 da4d    	vcmp.f32	s26, s26
    7ba6: 3001         	adds	r0, #0x1
    7ba8: bf28         	it	hs
    7baa: f04f 30ff    	movhs.w	r0, #0xffffffff
    7bae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bb2: ed9d 0a5b    	vldr	s0, [sp, #364]
    7bb6: f89d 1170    	ldrb.w	r1, [sp, #0x170]
    7bba: fe10 1a0d    	vselvs.f32	s2, s0, s26
    7bbe: f89d 2171    	ldrb.w	r2, [sp, #0x171]
    7bc2: eeb4 0a40    	vcmp.f32	s0, s0
    7bc6: 440d         	add	r5, r1
    7bc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bcc: f8cb 0104    	str.w	r0, [r11, #0x104]
    7bd0: fe11 2a00    	vselvs.f32	s4, s2, s0
    7bd4: eeb4 1a42    	vcmp.f32	s2, s4
    7bd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bdc: fe31 ca02    	vselgt.f32	s24, s2, s4
    7be0: 2a00         	cmp	r2, #0x0
    7be2: f000 8095    	beq.w	0x7d10 <ram_probe::packed_probe::control+0x588> @ imm = #0x12a
    7be6: eeb0 0a4a    	vmov.f32	s0, s20
    7bea: eef0 0a4b    	vmov.f32	s1, s22
    7bee: a85b         	add	r0, sp, #0x16c
    7bf0: a94e         	add	r1, sp, #0x138
    7bf2: aa30         	add	r2, sp, #0xc0
    7bf4: ab56         	add	r3, sp, #0x158
    7bf6: f7fe f9cf    	bl	0x5f98 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>> @ imm = #-0x1c62
    7bfa: f89d 0171    	ldrb.w	r0, [sp, #0x171]
    7bfe: f89d 1170    	ldrb.w	r1, [sp, #0x170]
    7c02: 2801         	cmp	r0, #0x1
    7c04: 440d         	add	r5, r1
    7c06: d123         	bne	0x7c50 <ram_probe::packed_probe::control+0x4c8> @ imm = #0x46
    7c08: eeb4 ca4c    	vcmp.f32	s24, s24
    7c0c: ed9d 0a5b    	vldr	s0, [sp, #364]
    7c10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c14: eeb4 0a40    	vcmp.f32	s0, s0
    7c18: fe10 1a0c    	vselvs.f32	s2, s0, s24
    7c1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c20: fe11 0a00    	vselvs.f32	s0, s2, s0
    7c24: eeb4 1a40    	vcmp.f32	s2, s0
    7c28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c2c: fe31 ca00    	vselgt.f32	s24, s2, s0
    7c30: e03e         	b	0x7cb0 <ram_probe::packed_probe::control+0x528> @ imm = #0x7c
    7c32: bf00         	nop
    7c34: bf00         	nop
    7c36: bf00         	nop
    7c38: f8db 001c    	ldr.w	r0, [r11, #0x1c]
    7c3c: f8c9 0000    	str.w	r0, [r9]
    7c40: ed89 0a01    	vstr	s0, [r9, #4]
    7c44: 2000         	movs	r0, #0x0
    7c46: f889 6008    	strb.w	r6, [r9, #0x8]
    7c4a: f889 0009    	strb.w	r0, [r9, #0x9]
    7c4e: e279         	b	0x8144 <ram_probe::packed_probe::control+0x9bc> @ imm = #0x4f2
    7c50: eeb0 0a4a    	vmov.f32	s0, s20
    7c54: eef0 0a4b    	vmov.f32	s1, s22
    7c58: a85b         	add	r0, sp, #0x16c
    7c5a: a94e         	add	r1, sp, #0x138
    7c5c: aa30         	add	r2, sp, #0xc0
    7c5e: ab56         	add	r3, sp, #0x158
    7c60: 2600         	movs	r6, #0x0
    7c62: 9654         	str	r6, [sp, #0x150]
    7c64: e9cd 6652    	strd	r6, r6, [sp, #328]
    7c68: f7fe f996    	bl	0x5f98 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>> @ imm = #-0x1cd4
    7c6c: f8db 0104    	ldr.w	r0, [r11, #0x104]
    7c70: eeb4 ca4c    	vcmp.f32	s24, s24
    7c74: 3001         	adds	r0, #0x1
    7c76: bf28         	it	hs
    7c78: f04f 30ff    	movhs.w	r0, #0xffffffff
    7c7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c80: ed9d 0a5b    	vldr	s0, [sp, #364]
    7c84: f89d 1170    	ldrb.w	r1, [sp, #0x170]
    7c88: fe10 1a0c    	vselvs.f32	s2, s0, s24
    7c8c: f89d 2171    	ldrb.w	r2, [sp, #0x171]
    7c90: eeb4 0a40    	vcmp.f32	s0, s0
    7c94: 440d         	add	r5, r1
    7c96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c9a: f8cb 0104    	str.w	r0, [r11, #0x104]
    7c9e: fe11 2a00    	vselvs.f32	s4, s2, s0
    7ca2: eeb4 1a42    	vcmp.f32	s2, s4
    7ca6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7caa: fe31 ca02    	vselgt.f32	s24, s2, s4
    7cae: b37a         	cbz	r2, 0x7d10 <ram_probe::packed_probe::control+0x588> @ imm = #0x5e
    7cb0: ed9d ab3e    	vldr	d10, [sp, #248]
    7cb4: eeb0 2a49    	vmov.f32	s4, s18
    7cb8: a85b         	add	r0, sp, #0x16c
    7cba: ed9d bb48    	vldr	d11, [sp, #288]
    7cbe: eeb0 0b4a    	vmov.f64	d0, d10
    7cc2: a94e         	add	r1, sp, #0x138
    7cc4: eeb0 1b4b    	vmov.f64	d1, d11
    7cc8: aa56         	add	r2, sp, #0x158
    7cca: f7ff fb1d    	bl	0x7308 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>> @ imm = #-0x9c6
    7cce: f89d 0171    	ldrb.w	r0, [sp, #0x171]
    7cd2: f89d 1170    	ldrb.w	r1, [sp, #0x170]
    7cd6: eb01 0405    	add.w	r4, r1, r5
    7cda: b348         	cbz	r0, 0x7d30 <ram_probe::packed_probe::control+0x5a8> @ imm = #0x52
    7cdc: eeb4 ca4c    	vcmp.f32	s24, s24
    7ce0: ed9d 0a5b    	vldr	s0, [sp, #364]
    7ce4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ce8: eeb4 0a40    	vcmp.f32	s0, s0
    7cec: fe10 1a0c    	vselvs.f32	s2, s0, s24
    7cf0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7cf4: e9cd 4912    	strd	r4, r9, [sp, #72]
    7cf8: fe11 0a00    	vselvs.f32	s0, s2, s0
    7cfc: eeb4 1a40    	vcmp.f32	s2, s0
    7d00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d04: fe31 0a00    	vselgt.f32	s0, s2, s0
    7d08: ed8d 0a00    	vstr	s0, [sp]
    7d0c: e045         	b	0x7d9a <ram_probe::packed_probe::control+0x612> @ imm = #0x8a
    7d0e: bf00         	nop
    7d10: f8db 001c    	ldr.w	r0, [r11, #0x1c]
    7d14: f8c9 0000    	str.w	r0, [r9]
    7d18: ed89 0a01    	vstr	s0, [r9, #4]
    7d1c: f889 5008    	strb.w	r5, [r9, #0x8]
    7d20: f889 6009    	strb.w	r6, [r9, #0x9]
    7d24: e20e         	b	0x8144 <ram_probe::packed_probe::control+0x9bc> @ imm = #0x41c
    7d26: bf00         	nop
    7d28: 00 00 00 00  	.word	0x00000000
    7d2c: 00 bf 00 bf  	.word	0xbf00bf00
    7d30: eeb0 0b4a    	vmov.f64	d0, d10
    7d34: a85b         	add	r0, sp, #0x16c
    7d36: eeb0 1b4b    	vmov.f64	d1, d11
    7d3a: a94e         	add	r1, sp, #0x138
    7d3c: eeb0 2a49    	vmov.f32	s4, s18
    7d40: aa56         	add	r2, sp, #0x158
    7d42: 2500         	movs	r5, #0x0
    7d44: 9555         	str	r5, [sp, #0x154]
    7d46: f7ff fadf    	bl	0x7308 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>> @ imm = #-0xa42
    7d4a: f8db 0104    	ldr.w	r0, [r11, #0x104]
    7d4e: eeb4 ca4c    	vcmp.f32	s24, s24
    7d52: 3001         	adds	r0, #0x1
    7d54: bf28         	it	hs
    7d56: f04f 30ff    	movhs.w	r0, #0xffffffff
    7d5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d5e: ed9d 0a5b    	vldr	s0, [sp, #364]
    7d62: f89d 1170    	ldrb.w	r1, [sp, #0x170]
    7d66: fe10 1a0c    	vselvs.f32	s2, s0, s24
    7d6a: f89d 2171    	ldrb.w	r2, [sp, #0x171]
    7d6e: eeb4 0a40    	vcmp.f32	s0, s0
    7d72: 440c         	add	r4, r1
    7d74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d78: f8cb 0104    	str.w	r0, [r11, #0x104]
    7d7c: fe11 2a00    	vselvs.f32	s4, s2, s0
    7d80: eeb4 1a42    	vcmp.f32	s2, s4
    7d84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d88: fe31 1a02    	vselgt.f32	s2, s2, s4
    7d8c: 2a00         	cmp	r2, #0x0
    7d8e: f000 81cf    	beq.w	0x8130 <ram_probe::packed_probe::control+0x9a8> @ imm = #0x39e
    7d92: ed8d 1a00    	vstr	s2, [sp]
    7d96: e9cd 4912    	strd	r4, r9, [sp, #72]
    7d9a: eeb0 0a48    	vmov.f32	s0, s16
    7d9e: a85b         	add	r0, sp, #0x16c
    7da0: a914         	add	r1, sp, #0x50
    7da2: aa4e         	add	r2, sp, #0x138
    7da4: f002 ff24    	bl	0xabf0 <orange_dsp::generated_condensed::update> @ imm = #0x2e48
    7da8: eddd 2a66    	vldr	s5, [sp, #408]
    7dac: eddd 3a67    	vldr	s7, [sp, #412]
    7db0: eddd da5c    	vldr	s27, [sp, #368]
    7db4: ee12 4a90    	vmov	r4, s5
    7db8: ee1d 0a90    	vmov	r0, s27
    7dbc: eddd 4a68    	vldr	s9, [sp, #416]
    7dc0: 9409         	str	r4, [sp, #0x24]
    7dc2: ee13 4a90    	vmov	r4, s7
    7dc6: eddd 5a69    	vldr	s11, [sp, #420]
    7dca: eddd fa5e    	vldr	s31, [sp, #376]
    7dce: eddd ea5d    	vldr	s29, [sp, #372]
    7dd2: 940a         	str	r4, [sp, #0x28]
    7dd4: ee14 4a90    	vmov	r4, s9
    7dd8: ee15 8a90    	vmov	r8, s11
    7ddc: f020 4000    	bic	r0, r0, #0x80000000
    7de0: ee1e 1a90    	vmov	r1, s29
    7de4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7de8: f04f 0000    	mov.w	r0, #0x0
    7dec: ed9d 3a5f    	vldr	s6, [sp, #380]
    7df0: ed9d 4a60    	vldr	s8, [sp, #384]
    7df4: ed9d 5a61    	vldr	s10, [sp, #388]
    7df8: ed9d 6a62    	vldr	s12, [sp, #392]
    7dfc: ed9d 7a63    	vldr	s14, [sp, #396]
    7e00: eddd 0a64    	vldr	s1, [sp, #400]
    7e04: eddd 1a65    	vldr	s3, [sp, #404]
    7e08: 940b         	str	r4, [sp, #0x2c]
    7e0a: f8cd 8030    	str.w	r8, [sp, #0x30]
    7e0e: ee1f 5a90    	vmov	r5, s31
    7e12: bfa8         	it	ge
    7e14: 2001         	movge	r0, #0x1
    7e16: ee13 6a10    	vmov	r6, s6
    7e1a: ee14 3a10    	vmov	r3, s8
    7e1e: 9011         	str	r0, [sp, #0x44]
    7e20: f021 4000    	bic	r0, r1, #0x80000000
    7e24: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7e28: f04f 0000    	mov.w	r0, #0x0
    7e2c: bfa8         	it	ge
    7e2e: 2001         	movge	r0, #0x1
    7e30: ee15 2a10    	vmov	r2, s10
    7e34: ee16 ca10    	vmov	r12, s12
    7e38: 9010         	str	r0, [sp, #0x40]
    7e3a: f025 4000    	bic	r0, r5, #0x80000000
    7e3e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7e42: f04f 0000    	mov.w	r0, #0x0
    7e46: bfa8         	it	ge
    7e48: 2001         	movge	r0, #0x1
    7e4a: ee17 ea10    	vmov	lr, s14
    7e4e: ee10 9a90    	vmov	r9, s1
    7e52: 900f         	str	r0, [sp, #0x3c]
    7e54: f026 4000    	bic	r0, r6, #0x80000000
    7e58: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7e5c: f04f 0000    	mov.w	r0, #0x0
    7e60: bfa8         	it	ge
    7e62: 2001         	movge	r0, #0x1
    7e64: ee11 aa90    	vmov	r10, s3
    7e68: f04f 0800    	mov.w	r8, #0x0
    7e6c: 900e         	str	r0, [sp, #0x38]
    7e6e: f023 4000    	bic	r0, r3, #0x80000000
    7e72: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7e76: f04f 0000    	mov.w	r0, #0x0
    7e7a: bfa8         	it	ge
    7e7c: 2001         	movge	r0, #0x1
    7e7e: 900d         	str	r0, [sp, #0x34]
    7e80: f022 4000    	bic	r0, r2, #0x80000000
    7e84: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7e88: f04f 0000    	mov.w	r0, #0x0
    7e8c: bfa8         	it	ge
    7e8e: 2001         	movge	r0, #0x1
    7e90: 9008         	str	r0, [sp, #0x20]
    7e92: f02c 4000    	bic	r0, r12, #0x80000000
    7e96: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7e9a: f04f 0000    	mov.w	r0, #0x0
    7e9e: bfa8         	it	ge
    7ea0: 2001         	movge	r0, #0x1
    7ea2: f04f 0c00    	mov.w	r12, #0x0
    7ea6: 9007         	str	r0, [sp, #0x1c]
    7ea8: f02e 4000    	bic	r0, lr, #0x80000000
    7eac: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7eb0: f04f 0000    	mov.w	r0, #0x0
    7eb4: bfa8         	it	ge
    7eb6: 2001         	movge	r0, #0x1
    7eb8: f04f 0e00    	mov.w	lr, #0x0
    7ebc: 9006         	str	r0, [sp, #0x18]
    7ebe: f029 4000    	bic	r0, r9, #0x80000000
    7ec2: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7ec6: f04f 0000    	mov.w	r0, #0x0
    7eca: bfa8         	it	ge
    7ecc: 2001         	movge	r0, #0x1
    7ece: f04f 0900    	mov.w	r9, #0x0
    7ed2: 9005         	str	r0, [sp, #0x14]
    7ed4: f02a 4000    	bic	r0, r10, #0x80000000
    7ed8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7edc: f04f 0000    	mov.w	r0, #0x0
    7ee0: bfa8         	it	ge
    7ee2: 2001         	movge	r0, #0x1
    7ee4: f04f 0a00    	mov.w	r10, #0x0
    7ee8: 9004         	str	r0, [sp, #0x10]
    7eea: 9809         	ldr	r0, [sp, #0x24]
    7eec: f020 4000    	bic	r0, r0, #0x80000000
    7ef0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7ef4: f04f 0000    	mov.w	r0, #0x0
    7ef8: bfa8         	it	ge
    7efa: 2001         	movge	r0, #0x1
    7efc: 9009         	str	r0, [sp, #0x24]
    7efe: 980a         	ldr	r0, [sp, #0x28]
    7f00: f020 4000    	bic	r0, r0, #0x80000000
    7f04: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7f08: f04f 0000    	mov.w	r0, #0x0
    7f0c: bfa8         	it	ge
    7f0e: 2001         	movge	r0, #0x1
    7f10: 900a         	str	r0, [sp, #0x28]
    7f12: 980b         	ldr	r0, [sp, #0x2c]
    7f14: f020 4000    	bic	r0, r0, #0x80000000
    7f18: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7f1c: f04f 0000    	mov.w	r0, #0x0
    7f20: bfa8         	it	ge
    7f22: 2001         	movge	r0, #0x1
    7f24: eddd ca6a    	vldr	s25, [sp, #424]
    7f28: 900b         	str	r0, [sp, #0x2c]
    7f2a: 980c         	ldr	r0, [sp, #0x30]
    7f2c: f020 4000    	bic	r0, r0, #0x80000000
    7f30: ee1c 1a90    	vmov	r1, s25
    7f34: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7f38: f04f 0000    	mov.w	r0, #0x0
    7f3c: bfa8         	it	ge
    7f3e: 2001         	movge	r0, #0x1
    7f40: eddd 7a6b    	vldr	s15, [sp, #428]
    7f44: 900c         	str	r0, [sp, #0x30]
    7f46: f021 4000    	bic	r0, r1, #0x80000000
    7f4a: ee17 1a90    	vmov	r1, s15
    7f4e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7f52: f04f 0000    	mov.w	r0, #0x0
    7f56: bfa8         	it	ge
    7f58: 2001         	movge	r0, #0x1
    7f5a: ed9d 8a6c    	vldr	s16, [sp, #432]
    7f5e: 9003         	str	r0, [sp, #0xc]
    7f60: f021 4000    	bic	r0, r1, #0x80000000
    7f64: ee18 1a10    	vmov	r1, s16
    7f68: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7f6c: f04f 0000    	mov.w	r0, #0x0
    7f70: bfa8         	it	ge
    7f72: 2001         	movge	r0, #0x1
    7f74: ed9d 9a6d    	vldr	s18, [sp, #436]
    7f78: 9002         	str	r0, [sp, #0x8]
    7f7a: f021 4000    	bic	r0, r1, #0x80000000
    7f7e: ee19 1a10    	vmov	r1, s18
    7f82: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7f86: f04f 0000    	mov.w	r0, #0x0
    7f8a: bfa8         	it	ge
    7f8c: 2001         	movge	r0, #0x1
    7f8e: ed9d aa6e    	vldr	s20, [sp, #440]
    7f92: 9001         	str	r0, [sp, #0x4]
    7f94: f021 4000    	bic	r0, r1, #0x80000000
    7f98: ee1a 1a10    	vmov	r1, s20
    7f9c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7fa0: bfa8         	it	ge
    7fa2: f04f 0c01    	movge.w	r12, #0x1
    7fa6: ed9d ba6f    	vldr	s22, [sp, #444]
    7faa: f021 4000    	bic	r0, r1, #0x80000000
    7fae: ee1b 1a10    	vmov	r1, s22
    7fb2: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7fb6: bfa8         	it	ge
    7fb8: f04f 0e01    	movge.w	lr, #0x1
    7fbc: ed9d ca70    	vldr	s24, [sp, #448]
    7fc0: f021 4000    	bic	r0, r1, #0x80000000
    7fc4: ee1c 1a10    	vmov	r1, s24
    7fc8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7fcc: bfa8         	it	ge
    7fce: f04f 0801    	movge.w	r8, #0x1
    7fd2: ed9d da71    	vldr	s26, [sp, #452]
    7fd6: ee1d 2a10    	vmov	r2, s26
    7fda: f021 4100    	bic	r1, r1, #0x80000000
    7fde: f1b1 4fff    	cmp.w	r1, #0x7f800000
    7fe2: f04f 0100    	mov.w	r1, #0x0
    7fe6: bfa8         	it	ge
    7fe8: 2101         	movge	r1, #0x1
    7fea: ed9d ea56    	vldr	s28, [sp, #344]
    7fee: f022 4200    	bic	r2, r2, #0x80000000
    7ff2: ee1e 3a10    	vmov	r3, s28
    7ff6: f1b2 4fff    	cmp.w	r2, #0x7f800000
    7ffa: f04f 0200    	mov.w	r2, #0x0
    7ffe: bfa8         	it	ge
    8000: 2201         	movge	r2, #0x1
    8002: ed9d fa57    	vldr	s30, [sp, #348]
    8006: f023 4300    	bic	r3, r3, #0x80000000
    800a: ee1f 5a10    	vmov	r5, s30
    800e: f1b3 4fff    	cmp.w	r3, #0x7f800000
    8012: f04f 0300    	mov.w	r3, #0x0
    8016: bfa8         	it	ge
    8018: 2301         	movge	r3, #0x1
    801a: eddd 8a58    	vldr	s17, [sp, #352]
    801e: f025 4500    	bic	r5, r5, #0x80000000
    8022: ee18 6a90    	vmov	r6, s17
    8026: f1b5 4fff    	cmp.w	r5, #0x7f800000
    802a: f04f 0500    	mov.w	r5, #0x0
    802e: bfa8         	it	ge
    8030: 2501         	movge	r5, #0x1
    8032: eddd 9a59    	vldr	s19, [sp, #356]
    8036: f026 4600    	bic	r6, r6, #0x80000000
    803a: ee19 4a90    	vmov	r4, s19
    803e: f1b6 4fff    	cmp.w	r6, #0x7f800000
    8042: eddd aa5a    	vldr	s21, [sp, #360]
    8046: f04f 0600    	mov.w	r6, #0x0
    804a: bfa8         	it	ge
    804c: 2601         	movge	r6, #0x1
    804e: ee1a 0a90    	vmov	r0, s21
    8052: f024 4400    	bic	r4, r4, #0x80000000
    8056: eddd ba5b    	vldr	s23, [sp, #364]
    805a: f1b4 4fff    	cmp.w	r4, #0x7f800000
    805e: ee1b 4a90    	vmov	r4, s23
    8062: f020 4000    	bic	r0, r0, #0x80000000
    8066: bfa8         	it	ge
    8068: f04f 0a01    	movge.w	r10, #0x1
    806c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8070: f024 4000    	bic	r0, r4, #0x80000000
    8074: bfa8         	it	ge
    8076: f04f 0901    	movge.w	r9, #0x1
    807a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    807e: f04f 0400    	mov.w	r4, #0x0
    8082: da48         	bge	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x90
    8084: 9811         	ldr	r0, [sp, #0x44]
    8086: 2800         	cmp	r0, #0x0
    8088: bf04         	itt	eq
    808a: 9810         	ldreq	r0, [sp, #0x40]
    808c: 2800         	cmpeq	r0, #0x0
    808e: d142         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x84
    8090: 980f         	ldr	r0, [sp, #0x3c]
    8092: 2800         	cmp	r0, #0x0
    8094: bf04         	itt	eq
    8096: 980e         	ldreq	r0, [sp, #0x38]
    8098: 2800         	cmpeq	r0, #0x0
    809a: d13c         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x78
    809c: 980d         	ldr	r0, [sp, #0x34]
    809e: 2800         	cmp	r0, #0x0
    80a0: bf04         	itt	eq
    80a2: 9808         	ldreq	r0, [sp, #0x20]
    80a4: 2800         	cmpeq	r0, #0x0
    80a6: d136         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x6c
    80a8: 9807         	ldr	r0, [sp, #0x1c]
    80aa: 2800         	cmp	r0, #0x0
    80ac: bf04         	itt	eq
    80ae: 9806         	ldreq	r0, [sp, #0x18]
    80b0: 2800         	cmpeq	r0, #0x0
    80b2: d130         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x60
    80b4: 9805         	ldr	r0, [sp, #0x14]
    80b6: 2800         	cmp	r0, #0x0
    80b8: bf04         	itt	eq
    80ba: 9804         	ldreq	r0, [sp, #0x10]
    80bc: 2800         	cmpeq	r0, #0x0
    80be: d12a         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x54
    80c0: 9809         	ldr	r0, [sp, #0x24]
    80c2: 2800         	cmp	r0, #0x0
    80c4: bf04         	itt	eq
    80c6: 980a         	ldreq	r0, [sp, #0x28]
    80c8: 2800         	cmpeq	r0, #0x0
    80ca: d124         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x48
    80cc: 980b         	ldr	r0, [sp, #0x2c]
    80ce: 2800         	cmp	r0, #0x0
    80d0: bf04         	itt	eq
    80d2: 980c         	ldreq	r0, [sp, #0x30]
    80d4: 2800         	cmpeq	r0, #0x0
    80d6: d11e         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x3c
    80d8: 9803         	ldr	r0, [sp, #0xc]
    80da: 2800         	cmp	r0, #0x0
    80dc: bf04         	itt	eq
    80de: 9802         	ldreq	r0, [sp, #0x8]
    80e0: 2800         	cmpeq	r0, #0x0
    80e2: d118         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x30
    80e4: 9801         	ldr	r0, [sp, #0x4]
    80e6: 2800         	cmp	r0, #0x0
    80e8: bf08         	it	eq
    80ea: f1bc 0f00    	cmpeq.w	r12, #0x0
    80ee: d112         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x24
    80f0: f1be 0f00    	cmp.w	lr, #0x0
    80f4: bf08         	it	eq
    80f6: f1b8 0f00    	cmpeq.w	r8, #0x0
    80fa: d10c         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x18
    80fc: 2900         	cmp	r1, #0x0
    80fe: bf08         	it	eq
    8100: 2a00         	cmpeq	r2, #0x0
    8102: d108         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x10
    8104: 2b00         	cmp	r3, #0x0
    8106: bf08         	it	eq
    8108: 2d00         	cmpeq	r5, #0x0
    810a: d104         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #0x8
    810c: 2e00         	cmp	r6, #0x0
    810e: bf08         	it	eq
    8110: f1ba 0f00    	cmpeq.w	r10, #0x0
    8114: d020         	beq	0x8158 <ram_probe::packed_probe::control+0x9d0> @ imm = #0x40
    8116: 9a13         	ldr	r2, [sp, #0x4c]
    8118: f8db 001c    	ldr.w	r0, [r11, #0x1c]
    811c: f04f 41ff    	mov.w	r1, #0x7f800000
    8120: e9c2 0100    	strd	r0, r1, [r2]
    8124: 9812         	ldr	r0, [sp, #0x48]
    8126: 7210         	strb	r0, [r2, #0x8]
    8128: 7254         	strb	r4, [r2, #0x9]
    812a: e00b         	b	0x8144 <ram_probe::packed_probe::control+0x9bc> @ imm = #0x16
    812c: bf00         	nop
    812e: bf00         	nop
    8130: f8db 001c    	ldr.w	r0, [r11, #0x1c]
    8134: f8c9 0000    	str.w	r0, [r9]
    8138: ed89 0a01    	vstr	s0, [r9, #4]
    813c: f889 4008    	strb.w	r4, [r9, #0x8]
    8140: f889 5009    	strb.w	r5, [r9, #0x9]
    8144: b072         	add	sp, #0x1c8
    8146: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    814a: b001         	add	sp, #0x4
    814c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    8150: bdf0         	pop	{r4, r5, r6, r7, pc}
    8152: bf00         	nop
    8154: bf00         	nop
    8156: bf00         	nop
    8158: f1b9 0f00    	cmp.w	r9, #0x0
    815c: d1db         	bne	0x8116 <ram_probe::packed_probe::control+0x98e> @ imm = #-0x4a
    815e: f10b 0120    	add.w	r1, r11, #0x20
    8162: f10b 0090    	add.w	r0, r11, #0x90
    8166: 2270         	movs	r2, #0x70
    8168: ed8d 9a0a    	vstr	s18, [sp, #40]
    816c: eeb0 9a43    	vmov.f32	s18, s6
    8170: ed8d 8a07    	vstr	s16, [sp, #28]
    8174: eeb0 8a44    	vmov.f32	s16, s8
    8178: ed8d aa08    	vstr	s20, [sp, #32]
    817c: eeb0 aa45    	vmov.f32	s20, s10
    8180: ed8d ba09    	vstr	s22, [sp, #36]
    8184: eeb0 ba46    	vmov.f32	s22, s12
    8188: ed8d ca0b    	vstr	s24, [sp, #44]
    818c: eeb0 ca47    	vmov.f32	s24, s14
    8190: ed8d da0c    	vstr	s26, [sp, #48]
    8194: eeb0 da60    	vmov.f32	s26, s1
    8198: ed8d ea0d    	vstr	s28, [sp, #52]
    819c: eeb0 ea61    	vmov.f32	s28, s3
    81a0: ed8d fa0e    	vstr	s30, [sp, #56]
    81a4: eeb0 fa62    	vmov.f32	s30, s5
    81a8: edcd 8a0f    	vstr	s17, [sp, #60]
    81ac: eef0 8a63    	vmov.f32	s17, s7
    81b0: edcd 9a10    	vstr	s19, [sp, #64]
    81b4: eef0 9a64    	vmov.f32	s19, s9
    81b8: edcd aa11    	vstr	s21, [sp, #68]
    81bc: eef0 aa65    	vmov.f32	s21, s11
    81c0: edcd 7a06    	vstr	s15, [sp, #24]
    81c4: f003 fc88    	bl	0xbad8 <__aeabi_memcpy4> @ imm = #0x3910
    81c8: ad4e         	add	r5, sp, #0x138
    81ca: edcb ba08    	vstr	s23, [r11, #32]
    81ce: edcb da09    	vstr	s27, [r11, #36]
    81d2: ed9d 0a06    	vldr	s0, [sp, #24]
    81d6: edcb ea0a    	vstr	s29, [r11, #40]
    81da: 4658         	mov	r0, r11
    81dc: edcb fa0b    	vstr	s31, [r11, #44]
    81e0: ed8b 9a0c    	vstr	s18, [r11, #48]
    81e4: ed8b 8a0d    	vstr	s16, [r11, #52]
    81e8: ed8b aa0e    	vstr	s20, [r11, #56]
    81ec: ed8b ba0f    	vstr	s22, [r11, #60]
    81f0: ed8b ca10    	vstr	s24, [r11, #64]
    81f4: ed8b da11    	vstr	s26, [r11, #68]
    81f8: ed8b ea12    	vstr	s28, [r11, #72]
    81fc: ed8b fa13    	vstr	s30, [r11, #76]
    8200: edcb 8a14    	vstr	s17, [r11, #80]
    8204: edcb 9a15    	vstr	s19, [r11, #84]
    8208: edcb aa16    	vstr	s21, [r11, #88]
    820c: edcb ca17    	vstr	s25, [r11, #92]
    8210: ed8b 0a18    	vstr	s0, [r11, #96]
    8214: ed9d 0a07    	vldr	s0, [sp, #28]
    8218: ed8b 0a19    	vstr	s0, [r11, #100]
    821c: ed9d 0a0a    	vldr	s0, [sp, #40]
    8220: ed8b 0a1a    	vstr	s0, [r11, #104]
    8224: ed9d 0a08    	vldr	s0, [sp, #32]
    8228: ed8b 0a1b    	vstr	s0, [r11, #108]
    822c: ed9d 0a09    	vldr	s0, [sp, #36]
    8230: ed8b 0a1c    	vstr	s0, [r11, #112]
    8234: ed9d 0a0b    	vldr	s0, [sp, #44]
    8238: ed8b 0a1d    	vstr	s0, [r11, #116]
    823c: ed9d 0a0c    	vldr	s0, [sp, #48]
    8240: ed8b 0a1e    	vstr	s0, [r11, #120]
    8244: ed9d 0a0d    	vldr	s0, [sp, #52]
    8248: ed8b 0a1f    	vstr	s0, [r11, #124]
    824c: ed9d 0a0e    	vldr	s0, [sp, #56]
    8250: ed8b 0a20    	vstr	s0, [r11, #128]
    8254: ed9d 0a0f    	vldr	s0, [sp, #60]
    8258: ed8b 0a21    	vstr	s0, [r11, #132]
    825c: ed9d 0a10    	vldr	s0, [sp, #64]
    8260: ed8b 0a22    	vstr	s0, [r11, #136]
    8264: ed9d 0a11    	vldr	s0, [sp, #68]
    8268: ed8b 0a23    	vstr	s0, [r11, #140]
    826c: cd4e         	ldm	r5!, {r1, r2, r3, r6}
    826e: c04e         	stm	r0!, {r1, r2, r3, r6}
    8270: e895 004e    	ldm.w	r5, {r1, r2, r3, r6}
    8274: c04e         	stm	r0!, {r1, r2, r3, r6}
    8276: f8db 0100    	ldr.w	r0, [r11, #0x100]
    827a: 9913         	ldr	r1, [sp, #0x4c]
    827c: 3001         	adds	r0, #0x1
    827e: ed9d 0a00    	vldr	s0, [sp]
    8282: ed81 0a01    	vstr	s0, [r1, #4]
    8286: bf28         	it	hs
    8288: f04f 30ff    	movhs.w	r0, #0xffffffff
    828c: f8cb 0100    	str.w	r0, [r11, #0x100]
    8290: 9855         	ldr	r0, [sp, #0x154]
    8292: 6008         	str	r0, [r1]
    8294: 9812         	ldr	r0, [sp, #0x48]
    8296: 7208         	strb	r0, [r1, #0x8]
    8298: 2001         	movs	r0, #0x1
    829a: 7248         	strb	r0, [r1, #0x9]
    829c: e752         	b	0x8144 <ram_probe::packed_probe::control+0x9bc> @ imm = #-0x15c
    829e: d4d4         	bmi	0x824a <ram_probe::packed_probe::control+0xac2> @ imm = #-0x58

000082a0 <ram_probe::packed_probe::candidate>:
    82a0: b5f0         	push	{r4, r5, r6, r7, lr}
    82a2: af03         	add	r7, sp, #0xc
    82a4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    82a8: b081         	sub	sp, #0x4
    82aa: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    82ae: f5ad 7d08    	sub.w	sp, sp, #0x220
    82b2: eef6 aa00    	vmov.f32	s21, #5.000000e-01
    82b6: ed91 1a08    	vldr	s2, [r1, #32]
    82ba: ed91 2a24    	vldr	s4, [r1, #144]
    82be: ed91 3a09    	vldr	s6, [r1, #36]
    82c2: ee31 1a01    	vadd.f32	s2, s2, s2
    82c6: ed91 4a0a    	vldr	s8, [r1, #40]
    82ca: ee02 1a6a    	vmls.f32	s2, s4, s21
    82ce: ed91 5a0b    	vldr	s10, [r1, #44]
    82d2: ee33 2a03    	vadd.f32	s4, s6, s6
    82d6: ed91 3a25    	vldr	s6, [r1, #148]
    82da: ee03 2a6a    	vmls.f32	s4, s6, s21
    82de: ed91 6a30    	vldr	s12, [r1, #192]
    82e2: ee34 3a04    	vadd.f32	s6, s8, s8
    82e6: ed91 4a26    	vldr	s8, [r1, #152]
    82ea: ee04 3a6a    	vmls.f32	s6, s8, s21
    82ee: ed8d 1a1c    	vstr	s2, [sp, #112]
    82f2: ee35 4a05    	vadd.f32	s8, s10, s10
    82f6: ed91 5a27    	vldr	s10, [r1, #156]
    82fa: ee05 4a6a    	vmls.f32	s8, s10, s21
    82fe: ed8d 2a1d    	vstr	s4, [sp, #116]
    8302: ed91 1a0c    	vldr	s2, [r1, #48]
    8306: ed91 5a0f    	vldr	s10, [r1, #60]
    830a: ed91 2a28    	vldr	s4, [r1, #160]
    830e: ed8d 3a1e    	vstr	s6, [sp, #120]
    8312: ee31 1a01    	vadd.f32	s2, s2, s2
    8316: ed91 3a29    	vldr	s6, [r1, #164]
    831a: ee02 1a6a    	vmls.f32	s2, s4, s21
    831e: ed91 2a0d    	vldr	s4, [r1, #52]
    8322: ed8d 4a1f    	vstr	s8, [sp, #124]
    8326: ee32 2a02    	vadd.f32	s4, s4, s4
    832a: ee03 2a6a    	vmls.f32	s4, s6, s21
    832e: ed91 3a0e    	vldr	s6, [r1, #56]
    8332: ed91 4a2a    	vldr	s8, [r1, #168]
    8336: ee33 3a03    	vadd.f32	s6, s6, s6
    833a: ee04 3a6a    	vmls.f32	s6, s8, s21
    833e: ed8d 1a20    	vstr	s2, [sp, #128]
    8342: ee35 4a05    	vadd.f32	s8, s10, s10
    8346: ed91 5a2b    	vldr	s10, [r1, #172]
    834a: ee05 4a6a    	vmls.f32	s8, s10, s21
    834e: ed91 1a10    	vldr	s2, [r1, #64]
    8352: ed8d 2a21    	vstr	s4, [sp, #132]
    8356: ed91 2a11    	vldr	s4, [r1, #68]
    835a: ed8d 3a22    	vstr	s6, [sp, #136]
    835e: ed91 3a2c    	vldr	s6, [r1, #176]
    8362: ee31 1a01    	vadd.f32	s2, s2, s2
    8366: ed91 5a2f    	vldr	s10, [r1, #188]
    836a: ee03 1a6a    	vmls.f32	s2, s6, s21
    836e: ed91 3a2d    	vldr	s6, [r1, #180]
    8372: ed8d 4a23    	vstr	s8, [sp, #140]
    8376: ee32 2a02    	vadd.f32	s4, s4, s4
    837a: ee03 2a6a    	vmls.f32	s4, s6, s21
    837e: ed91 3a12    	vldr	s6, [r1, #72]
    8382: ed91 4a2e    	vldr	s8, [r1, #184]
    8386: ee33 3a03    	vadd.f32	s6, s6, s6
    838a: ee04 3a6a    	vmls.f32	s6, s8, s21
    838e: ed91 4a13    	vldr	s8, [r1, #76]
    8392: ee34 4a04    	vadd.f32	s8, s8, s8
    8396: ed8d 1a24    	vstr	s2, [sp, #144]
    839a: ee05 4a6a    	vmls.f32	s8, s10, s21
    839e: ed8d 2a25    	vstr	s4, [sp, #148]
    83a2: ed91 1a15    	vldr	s2, [r1, #84]
    83a6: ed91 5a14    	vldr	s10, [r1, #80]
    83aa: ed91 2a31    	vldr	s4, [r1, #196]
    83ae: ed8d 3a26    	vstr	s6, [sp, #152]
    83b2: ee31 1a01    	vadd.f32	s2, s2, s2
    83b6: ed91 3a32    	vldr	s6, [r1, #200]
    83ba: ee02 1a6a    	vmls.f32	s2, s4, s21
    83be: ed91 2a16    	vldr	s4, [r1, #88]
    83c2: ed8d 4a27    	vstr	s8, [sp, #156]
    83c6: ee32 2a02    	vadd.f32	s4, s4, s4
    83ca: ee03 2a6a    	vmls.f32	s4, s6, s21
    83ce: ed91 3a17    	vldr	s6, [r1, #92]
    83d2: ed91 4a33    	vldr	s8, [r1, #204]
    83d6: ee33 3a03    	vadd.f32	s6, s6, s6
    83da: ee04 3a6a    	vmls.f32	s6, s8, s21
    83de: ed8d 1a29    	vstr	s2, [sp, #164]
    83e2: ee35 5a05    	vadd.f32	s10, s10, s10
    83e6: ed91 1a1a    	vldr	s2, [r1, #104]
    83ea: ee06 5a6a    	vmls.f32	s10, s12, s21
    83ee: ed8d 2a2a    	vstr	s4, [sp, #168]
    83f2: ed91 2a36    	vldr	s4, [r1, #216]
    83f6: ee31 1a01    	vadd.f32	s2, s2, s2
    83fa: ed8d 3a2b    	vstr	s6, [sp, #172]
    83fe: ee02 1a6a    	vmls.f32	s2, s4, s21
    8402: ed91 2a1b    	vldr	s4, [r1, #108]
    8406: ed91 4a18    	vldr	s8, [r1, #96]
    840a: ed91 3a37    	vldr	s6, [r1, #220]
    840e: ee32 2a02    	vadd.f32	s4, s4, s4
    8412: ee03 2a6a    	vmls.f32	s4, s6, s21
    8416: ed8d 5a28    	vstr	s10, [sp, #160]
    841a: ed91 5a34    	vldr	s10, [r1, #208]
    841e: ee34 4a04    	vadd.f32	s8, s8, s8
    8422: ee05 4a6a    	vmls.f32	s8, s10, s21
    8426: ed91 5a19    	vldr	s10, [r1, #100]
    842a: ed91 6a35    	vldr	s12, [r1, #212]
    842e: ee35 5a05    	vadd.f32	s10, s10, s10
    8432: ee06 5a6a    	vmls.f32	s10, s12, s21
    8436: ed8d 1a2e    	vstr	s2, [sp, #184]
    843a: ed8d 2a2f    	vstr	s4, [sp, #188]
    843e: ed91 1a1f    	vldr	s2, [r1, #124]
    8442: ed91 2a3b    	vldr	s4, [r1, #236]
    8446: ee31 da01    	vadd.f32	s26, s2, s2
    844a: ee02 da6a    	vmls.f32	s26, s4, s21
    844e: ed91 1a20    	vldr	s2, [r1, #128]
    8452: ed91 2a3c    	vldr	s4, [r1, #240]
    8456: ed8d 4a2c    	vstr	s8, [sp, #176]
    845a: ed91 3a1c    	vldr	s6, [r1, #112]
    845e: ee31 ca01    	vadd.f32	s24, s2, s2
    8462: ed91 4a38    	vldr	s8, [r1, #224]
    8466: ee02 ca6a    	vmls.f32	s24, s4, s21
    846a: ed91 1a21    	vldr	s2, [r1, #132]
    846e: ed8d 5a2d    	vstr	s10, [sp, #180]
    8472: ed91 2a3d    	vldr	s4, [r1, #244]
    8476: ee33 3a03    	vadd.f32	s6, s6, s6
    847a: ee04 3a6a    	vmls.f32	s6, s8, s21
    847e: ed91 4a1d    	vldr	s8, [r1, #116]
    8482: ed91 5a39    	vldr	s10, [r1, #228]
    8486: ee31 9a01    	vadd.f32	s18, s2, s2
    848a: ee02 9a6a    	vmls.f32	s18, s4, s21
    848e: ed91 1a22    	vldr	s2, [r1, #136]
    8492: ed91 2a3e    	vldr	s4, [r1, #248]
    8496: ee34 4a04    	vadd.f32	s8, s8, s8
    849a: ee05 4a6a    	vmls.f32	s8, s10, s21
    849e: ed91 5a1e    	vldr	s10, [r1, #120]
    84a2: ed91 6a3a    	vldr	s12, [r1, #232]
    84a6: ee31 aa01    	vadd.f32	s20, s2, s2
    84aa: ee02 aa6a    	vmls.f32	s20, s4, s21
    84ae: ed91 1a23    	vldr	s2, [r1, #140]
    84b2: ed91 2a3f    	vldr	s4, [r1, #252]
    84b6: ee35 5a05    	vadd.f32	s10, s10, s10
    84ba: ee06 5a6a    	vmls.f32	s10, s12, s21
    84be: 460c         	mov	r4, r1
    84c0: ee31 1a01    	vadd.f32	s2, s2, s2
    84c4: 4683         	mov	r11, r0
    84c6: ee02 1a6a    	vmls.f32	s2, s4, s21
    84ca: a838         	add	r0, sp, #0xe0
    84cc: a91c         	add	r1, sp, #0x70
    84ce: ed8d 3a30    	vstr	s6, [sp, #192]
    84d2: ed8d 4a31    	vstr	s8, [sp, #196]
    84d6: eeb0 8a40    	vmov.f32	s16, s0
    84da: ed8d 5a32    	vstr	s10, [sp, #200]
    84de: ed8d da33    	vstr	s26, [sp, #204]
    84e2: ed8d ca34    	vstr	s24, [sp, #208]
    84e6: ed8d 9a35    	vstr	s18, [sp, #212]
    84ea: ed8d aa36    	vstr	s20, [sp, #216]
    84ee: ed8d 1a1b    	vstr	s2, [sp, #108]
    84f2: ed8d 1a37    	vstr	s2, [sp, #220]
    84f6: f7f8 f9d3    	bl	0x8a0 <orange_dsp::generated_packed::origin::<5>> @ imm = #-0x7c5a
    84fa: f50d 78ac    	add.w	r8, sp, #0x158
    84fe: 4620         	mov	r0, r4
    8500: 4641         	mov	r1, r8
    8502: ed9f 2ada    	vldr	s4, [pc, #872]          @ 0x886c <ram_probe::packed_probe::candidate+0x5cc>
    8506: c86c         	ldm	r0!, {r2, r3, r5, r6}
    8508: c16c         	stm	r1!, {r2, r3, r5, r6}
    850a: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
    850e: c16c         	stm	r1!, {r2, r3, r5, r6}
    8510: ed9d eb38    	vldr	d14, [sp, #224]
    8514: 2000         	movs	r0, #0x0
    8516: 905e         	str	r0, [sp, #0x178]
    8518: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0x8858 <ram_probe::packed_probe::candidate+0x5b8>
    851c: e9cd 0061    	strd	r0, r0, [sp, #388]
    8520: ee8e 0b00    	vdiv.f64	d0, d14, d0
    8524: e9cd 005f    	strd	r0, r0, [sp, #380]
    8528: eeb7 1bc0    	vcvt.f32.f64	s2, d0
    852c: ed8d 1a56    	vstr	s2, [sp, #344]
    8530: eeb0 0ac1    	vabs.f32	s0, s2
    8534: eeb4 0a42    	vcmp.f32	s0, s4
    8538: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    853c: d838         	bhi	0x85b0 <ram_probe::packed_probe::candidate+0x310> @ imm = #0x70
    853e: ed9f 3acc    	vldr	s6, [pc, #816]          @ 0x8870 <ram_probe::packed_probe::candidate+0x5d0>
    8542: eeb7 2bce    	vcvt.f32.f64	s4, d14
    8546: ee01 2a03    	vmla.f32	s4, s2, s6
    854a: ee12 0a10    	vmov	r0, s4
    854e: f020 4000    	bic	r0, r0, #0x80000000
    8552: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8556: da2b         	bge	0x85b0 <ram_probe::packed_probe::candidate+0x310> @ imm = #0x56
    8558: eeb0 1ac2    	vabs.f32	s2, s4
    855c: ed9f 4a3c    	vldr	s8, [pc, #240]          @ 0x8650 <ram_probe::packed_probe::candidate+0x3b0>
    8560: ee81 1a04    	vdiv.f32	s2, s2, s8
    8564: ed9f 4a3b    	vldr	s8, [pc, #236]          @ 0x8654 <ram_probe::packed_probe::candidate+0x3b4>
    8568: eeb4 1a44    	vcmp.f32	s2, s8
    856c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8570: d81e         	bhi	0x85b0 <ram_probe::packed_probe::candidate+0x310> @ imm = #0x3c
    8572: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    8576: eeb4 0a40    	vcmp.f32	s0, s0
    857a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    857e: ee82 2a03    	vdiv.f32	s4, s4, s6
    8582: ed9f 3a35    	vldr	s6, [pc, #212]          @ 0x8658 <ram_probe::packed_probe::candidate+0x3b8>
    8586: fe14 0a00    	vselvs.f32	s0, s8, s0
    858a: eeb0 2ac2    	vabs.f32	s4, s4
    858e: eeb4 0a44    	vcmp.f32	s0, s8
    8592: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8596: fe30 0a04    	vselgt.f32	s0, s0, s8
    859a: ee20 0a03    	vmul.f32	s0, s0, s6
    859e: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x8964 <ram_probe::packed_probe::candidate+0x6c4>
    85a2: fe80 0a43    	vminnm.f32	s0, s0, s6
    85a6: eeb4 2a40    	vcmp.f32	s4, s0
    85aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85ae: d957         	bls	0x8660 <ram_probe::packed_probe::candidate+0x3c0> @ imm = #0xae
    85b0: 4620         	mov	r0, r4
    85b2: 4641         	mov	r1, r8
    85b4: eeb0 0b4e    	vmov.f64	d0, d14
    85b8: c86c         	ldm	r0!, {r2, r3, r5, r6}
    85ba: c16c         	stm	r1!, {r2, r3, r5, r6}
    85bc: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
    85c0: c16c         	stm	r1!, {r2, r3, r5, r6}
    85c2: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    85c6: 4641         	mov	r1, r8
    85c8: 3001         	adds	r0, #0x1
    85ca: f8c4 010c    	str.w	r0, [r4, #0x10c]
    85ce: a863         	add	r0, sp, #0x18c
    85d0: f7f8 fc12    	bl	0xdf8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>> @ imm = #-0x77dc
    85d4: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    85d8: f89d 9190    	ldrb.w	r9, [sp, #0x190]
    85dc: b180         	cbz	r0, 0x8600 <ram_probe::packed_probe::candidate+0x360> @ imm = #0x20
    85de: ed9d 0a63    	vldr	s0, [sp, #396]
    85e2: ed9f 1ae6    	vldr	s2, [pc, #920]          @ 0x897c <ram_probe::packed_probe::candidate+0x6dc>
    85e6: eeb4 0a40    	vcmp.f32	s0, s0
    85ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85ee: fe11 0a00    	vselvs.f32	s0, s2, s0
    85f2: eeb5 0a40    	vcmp.f32	s0, #0
    85f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    85fa: fe70 da01    	vselgt.f32	s27, s0, s2
    85fe: e044         	b	0x868a <ram_probe::packed_probe::candidate+0x3ea> @ imm = #0x88
    8600: eeb0 0b4e    	vmov.f64	d0, d14
    8604: a863         	add	r0, sp, #0x18c
    8606: a956         	add	r1, sp, #0x158
    8608: 2600         	movs	r6, #0x0
    860a: 9656         	str	r6, [sp, #0x158]
    860c: f7f8 fbf4    	bl	0xdf8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>> @ imm = #-0x7818
    8610: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    8614: ed9d 0a63    	vldr	s0, [sp, #396]
    8618: 3001         	adds	r0, #0x1
    861a: eeb4 0a40    	vcmp.f32	s0, s0
    861e: bf28         	it	hs
    8620: f04f 30ff    	movhs.w	r0, #0xffffffff
    8624: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8628: ed9f 1ad4    	vldr	s2, [pc, #848]          @ 0x897c <ram_probe::packed_probe::candidate+0x6dc>
    862c: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8630: fe11 2a00    	vselvs.f32	s4, s2, s0
    8634: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    8638: 4489         	add	r9, r1
    863a: f8c4 011c    	str.w	r0, [r4, #0x11c]
    863e: eeb5 2a40    	vcmp.f32	s4, #0
    8642: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8646: fe72 da01    	vselgt.f32	s27, s4, s2
    864a: b9f2         	cbnz	r2, 0x868a <ram_probe::packed_probe::candidate+0x3ea> @ imm = #0x3c
    864c: e27f         	b	0x8b4e <ram_probe::packed_probe::candidate+0x8ae> @ imm = #0x4fe
    864e: bf00         	nop
    8650: 0a d7 23 3c  	.word	0x3c23d70a
    8654: 17 b7 d1 38  	.word	0x38d1b717
    8658: bd 37 06 36  	.word	0x360637bd
    865c: 00 bf 00 bf  	.word	0xbf00bf00
    8660: eeb4 1a41    	vcmp.f32	s2, s2
    8664: ed9f 0ac5    	vldr	s0, [pc, #788]          @ 0x897c <ram_probe::packed_probe::candidate+0x6dc>
    8668: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    866c: f8d4 0100    	ldr.w	r0, [r4, #0x100]
    8670: f04f 0900    	mov.w	r9, #0x0
    8674: fe10 1a01    	vselvs.f32	s2, s0, s2
    8678: 3001         	adds	r0, #0x1
    867a: f8c4 0100    	str.w	r0, [r4, #0x100]
    867e: eeb5 1a40    	vcmp.f32	s2, #0
    8682: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8686: fe71 da00    	vselgt.f32	s27, s2, s0
    868a: f50d 7cc6    	add.w	r12, sp, #0x18c
    868e: 4642         	mov	r2, r8
    8690: 4661         	mov	r1, r12
    8692: eddf 9abb    	vldr	s19, [pc, #748]         @ 0x8980 <ram_probe::packed_probe::candidate+0x6e0>
    8696: ca69         	ldm	r2!, {r0, r3, r5, r6}
    8698: c169         	stm	r1!, {r0, r3, r5, r6}
    869a: e892 0069    	ldm.w	r2, {r0, r3, r5, r6}
    869e: c169         	stm	r1!, {r0, r3, r5, r6}
    86a0: ed9d 0a56    	vldr	s0, [sp, #344]
    86a4: eefa ca0b    	vmov.f32	s25, #-1.350000e+01
    86a8: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    86ac: ed9d 3a58    	vldr	s6, [sp, #352]
    86b0: ed9d eb48    	vldr	d14, [sp, #288]
    86b4: eef2 ba0b    	vmov.f32	s23, #1.350000e+01
    86b8: ed9f 6ab2    	vldr	s12, [pc, #712]         @ 0x8984 <ram_probe::packed_probe::candidate+0x6e4>
    86bc: ed9f 2b6e    	vldr	d2, [pc, #440]          @ 0x8878 <ram_probe::packed_probe::candidate+0x5d8>
    86c0: eeb0 0b4e    	vmov.f64	d0, d14
    86c4: ee01 0b02    	vmla.f64	d0, d1, d2
    86c8: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    86cc: ed9d 1a59    	vldr	s2, [sp, #356]
    86d0: ed9f 5b6b    	vldr	d5, [pc, #428]          @ 0x8880 <ram_probe::packed_probe::candidate+0x5e0>
    86d4: ed9d 3a5a    	vldr	s6, [sp, #360]
    86d8: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    86dc: eeb0 4b40    	vmov.f64	d4, d0
    86e0: ee02 4b05    	vmla.f64	d4, d2, d5
    86e4: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    86e8: ee01 4b05    	vmla.f64	d4, d1, d5
    86ec: ed9d 1a5b    	vldr	s2, [sp, #364]
    86f0: ee02 4b05    	vmla.f64	d4, d2, d5
    86f4: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    86f8: ed9d 2a5c    	vldr	s4, [sp, #368]
    86fc: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    8700: ed9f 3b61    	vldr	d3, [pc, #388]          @ 0x8888 <ram_probe::packed_probe::candidate+0x5e8>
    8704: ee01 4b05    	vmla.f64	d4, d1, d5
    8708: ed9d 1a5d    	vldr	s2, [sp, #372]
    870c: ee02 4b05    	vmla.f64	d4, d2, d5
    8710: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    8714: ee2d 2a29    	vmul.f32	s4, s26, s19
    8718: ee01 4b05    	vmla.f64	d4, d1, d5
    871c: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    8720: ee81 1b03    	vdiv.f64	d1, d1, d3
    8724: ed9f 3b5a    	vldr	d3, [pc, #360]          @ 0x8890 <ram_probe::packed_probe::candidate+0x5f0>
    8728: ee04 1b03    	vmla.f64	d1, d4, d3
    872c: ed9f 4aea    	vldr	s8, [pc, #936]          @ 0x8ad8 <ram_probe::packed_probe::candidate+0x838>
    8730: ed9f 3b59    	vldr	d3, [pc, #356]          @ 0x8898 <ram_probe::packed_probe::candidate+0x5f8>
    8734: ee32 5a04    	vadd.f32	s10, s4, s8
    8738: ee81 1b03    	vdiv.f64	d1, d1, d3
    873c: ed9f 3ae7    	vldr	s6, [pc, #924]          @ 0x8adc <ram_probe::packed_probe::candidate+0x83c>
    8740: ee32 3a03    	vadd.f32	s6, s4, s6
    8744: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    8748: ee83 4a06    	vdiv.f32	s8, s6, s12
    874c: eef4 ca41    	vcmp.f32	s25, s2
    8750: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8754: ee85 3a06    	vdiv.f32	s6, s10, s12
    8758: fe3c 1a81    	vselgt.f32	s2, s25, s2
    875c: eeb4 1a6b    	vcmp.f32	s2, s23
    8760: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8764: eeb4 4a43    	vcmp.f32	s8, s6
    8768: fe3b 1a81    	vselgt.f32	s2, s23, s2
    876c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8770: ed8d 1a57    	vstr	s2, [sp, #348]
    8774: f201 867c    	bhi.w	0xa470 <ram_probe::packed_probe::candidate+0x21d0> @ imm = #0x1cf8
    8778: eeb7 5ac1    	vcvt.f64.f32	d5, s2
    877c: 2100         	movs	r1, #0x0
    877e: ed9f 6b48    	vldr	d6, [pc, #288]          @ 0x88a0 <ram_probe::packed_probe::candidate+0x600>
    8782: 2000         	movs	r0, #0x0
    8784: eef7 1a00    	vmov.f32	s3, #1.000000e+00
    8788: ee05 0b06    	vmla.f64	d0, d5, d6
    878c: ed9f 5ad4    	vldr	s10, [pc, #848]         @ 0x8ae0 <ram_probe::packed_probe::candidate+0x840>
    8790: ed9d fb3a    	vldr	d15, [sp, #232]
    8794: ed9f 6ad3    	vldr	s12, [pc, #844]         @ 0x8ae4 <ram_probe::packed_probe::candidate+0x844>
    8798: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    879c: ee20 5a05    	vmul.f32	s10, s0, s10
    87a0: ed9f 0ad1    	vldr	s0, [pc, #836]          @ 0x8ae8 <ram_probe::packed_probe::candidate+0x848>
    87a4: ee02 5a00    	vmla.f32	s10, s4, s0
    87a8: eeb7 2bcf    	vcvt.f32.f64	s4, d15
    87ac: ee01 2a06    	vmla.f32	s4, s2, s12
    87b0: eeb4 4a45    	vcmp.f32	s8, s10
    87b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87b8: eeb0 6ac2    	vabs.f32	s12, s4
    87bc: fe34 0a05    	vselgt.f32	s0, s8, s10
    87c0: eeb4 0a43    	vcmp.f32	s0, s6
    87c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87c8: eeb4 5a44    	vcmp.f32	s10, s8
    87cc: eebf 4a00    	vmov.f32	s8, #-1.000000e+00
    87d0: fe33 0a00    	vselgt.f32	s0, s6, s0
    87d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87d8: bfc8         	it	gt
    87da: 2101         	movgt	r1, #0x1
    87dc: eeb4 5a43    	vcmp.f32	s10, s6
    87e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87e4: eeb5 2a40    	vcmp.f32	s4, #0
    87e8: ed9f 2a64    	vldr	s4, [pc, #400]          @ 0x897c <ram_probe::packed_probe::candidate+0x6dc>
    87ec: eeb0 3a42    	vmov.f32	s6, s4
    87f0: eeb0 5a42    	vmov.f32	s10, s4
    87f4: bf48         	it	mi
    87f6: 2001         	movmi	r0, #0x1
    87f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87fc: bf48         	it	mi
    87fe: eeb0 3a44    	vmovmi.f32	s6, s8
    8802: eeb0 4a42    	vmov.f32	s8, s4
    8806: ea01 0100    	and.w	r1, r1, r0
    880a: fe31 7a83    	vselgt.f32	s14, s3, s6
    880e: ed9f 3ad5    	vldr	s6, [pc, #852]          @ 0x8b64 <ram_probe::packed_probe::candidate+0x8c4>
    8812: eeb4 6a43    	vcmp.f32	s12, s6
    8816: eeb0 3a42    	vmov.f32	s6, s4
    881a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    881e: f280 80de    	bge.w	0x89de <ram_probe::packed_probe::candidate+0x73e> @ imm = #0x1bc
    8822: ed9f 2ad1    	vldr	s4, [pc, #836]          @ 0x8b68 <ram_probe::packed_probe::candidate+0x8c8>
    8826: eeb4 6a42    	vcmp.f32	s12, s4
    882a: ed9f 3a54    	vldr	s6, [pc, #336]          @ 0x897c <ram_probe::packed_probe::candidate+0x6dc>
    882e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8832: d915         	bls	0x8860 <ram_probe::packed_probe::candidate+0x5c0> @ imm = #0x2a
    8834: ed9f 2acd    	vldr	s4, [pc, #820]          @ 0x8b6c <ram_probe::packed_probe::candidate+0x8cc>
    8838: eeb4 6a42    	vcmp.f32	s12, s4
    883c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8840: d932         	bls	0x88a8 <ram_probe::packed_probe::candidate+0x608> @ imm = #0x64
    8842: ed9f 2acb    	vldr	s4, [pc, #812]          @ 0x8b70 <ram_probe::packed_probe::candidate+0x8d0>
    8846: ee36 4a02    	vadd.f32	s8, s12, s4
    884a: ed9f 5aee    	vldr	s10, [pc, #952]         @ 0x8c04 <ram_probe::packed_probe::candidate+0x964>
    884e: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    8852: e031         	b	0x88b8 <ram_probe::packed_probe::candidate+0x618> @ imm = #0x62
    8854: bf00         	nop
    8856: bf00         	nop
    8858: 80 e5 70 28  	.word	0x2870e580
    885c: a1 3a 03 3f  	.word	0x3f033aa1
    8860: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    8864: eeb0 5a43    	vmov.f32	s10, s6
    8868: e02a         	b	0x88c0 <ram_probe::packed_probe::candidate+0x620> @ imm = #0x54
    886a: bf00         	nop
    886c: 93 18 36 41  	.word	0x41361893
    8870: 09 d5 19 b8  	.word	0xb819d509
    8874: 00 bf 00 bf  	.word	0xbf00bf00
    8878: a2 0c d2 2e  	.word	0x2ed20ca2
    887c: ca fe ef 3f  	.word	0x3feffeca
		...
    8888: a7 2a 45 4f  	.word	0x4f452aa7
    888c: ed 97 01 41  	.word	0x410197ed
    8890: 26 88 21 19  	.word	0x19218826
    8894: 2f cc 65 40  	.word	0x4065cc2f
    8898: e7 0c 1b 48  	.word	0x481b0ce7
    889c: 2d 35 17 40  	.word	0x4017352d
    88a0: 1f 89 9b cf  	.word	0xcf9b891f
    88a4: ab 32 9c bf  	.word	0xbf9c32ab
    88a8: ed9f 2ad7    	vldr	s4, [pc, #860]          @ 0x8c08 <ram_probe::packed_probe::candidate+0x968>
    88ac: ee36 4a02    	vadd.f32	s8, s12, s4
    88b0: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    88b4: ed9f 5ad5    	vldr	s10, [pc, #852]         @ 0x8c0c <ram_probe::packed_probe::candidate+0x96c>
    88b8: ee04 2a05    	vmla.f32	s4, s8, s10
    88bc: ee27 5a05    	vmul.f32	s10, s14, s10
    88c0: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    88c4: ee34 2a42    	vsub.f32	s4, s8, s4
    88c8: fe82 4a03    	vmaxnm.f32	s8, s4, s6
    88cc: eeb1 2a45    	vneg.f32	s4, s10
    88d0: eeb5 4a40    	vcmp.f32	s8, #0
    88d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88d8: d946         	bls	0x8968 <ram_probe::packed_probe::candidate+0x6c8> @ imm = #0x8c
    88da: eeb0 3ac0    	vabs.f32	s6, s0
    88de: eeb4 3a44    	vcmp.f32	s6, s8
    88e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88e6: d94f         	bls	0x8988 <ram_probe::packed_probe::candidate+0x6e8> @ imm = #0x9e
    88e8: ee84 5a03    	vdiv.f32	s10, s8, s6
    88ec: ee25 3a05    	vmul.f32	s6, s10, s10
    88f0: ee23 3a03    	vmul.f32	s6, s6, s6
    88f4: ee23 3a03    	vmul.f32	s6, s6, s6
    88f8: ee23 6a03    	vmul.f32	s12, s6, s6
    88fc: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    8900: ee36 7a03    	vadd.f32	s14, s12, s6
    8904: eef0 0a43    	vmov.f32	s1, s6
    8908: eeb4 7a43    	vcmp.f32	s14, s6
    890c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8910: d009         	beq	0x8926 <ram_probe::packed_probe::candidate+0x686> @ imm = #0x12
    8912: eef0 0a47    	vmov.f32	s1, s14
    8916: eef1 0ae0    	vsqrt.f32	s1, s1
    891a: eef1 0ae0    	vsqrt.f32	s1, s1
    891e: eef1 0ae0    	vsqrt.f32	s1, s1
    8922: eef1 0ae0    	vsqrt.f32	s1, s1
    8926: ee83 3a20    	vdiv.f32	s6, s6, s1
    892a: eeb4 0a40    	vcmp.f32	s0, s0
    892e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8932: ee83 7a07    	vdiv.f32	s14, s6, s14
    8936: f181 8657    	bvs.w	0xa5e8 <ram_probe::packed_probe::candidate+0x2348> @ imm = #0x1cae
    893a: ee10 0a10    	vmov	r0, s0
    893e: f04f 527e    	mov.w	r2, #0x3f800000
    8942: f362 001e    	bfi	r0, r2, #0, #31
    8946: ee00 0a90    	vmov	s1, r0
    894a: ee20 4a84    	vmul.f32	s8, s1, s8
    894e: ee24 3a03    	vmul.f32	s6, s8, s6
    8952: ee20 4a87    	vmul.f32	s8, s1, s14
    8956: ee25 5a06    	vmul.f32	s10, s10, s12
    895a: ee25 5a07    	vmul.f32	s10, s10, s14
    895e: e03e         	b	0x89de <ram_probe::packed_probe::candidate+0x73e> @ imm = #0x7c
    8960: 17 b7 d1 38  	.word	0x38d1b717
    8964: ac c5 a7 37  	.word	0x37a7c5ac
    8968: eeb0 5a43    	vmov.f32	s10, s6
    896c: eeb0 4a43    	vmov.f32	s8, s6
    8970: e035         	b	0x89de <ram_probe::packed_probe::candidate+0x73e> @ imm = #0x6a
    8972: bf00         	nop
    8974: bd 37 06 36  	.word	0x360637bd
    8978: ac c5 a7 37  	.word	0x37a7c5ac
    897c: 00 00 00 00  	.word	0x00000000
    8980: 00 80 bb 47  	.word	0x47bb8000
    8984: 00 a0 0c 48  	.word	0x480ca000
    8988: ee80 3a04    	vdiv.f32	s6, s0, s8
    898c: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    8990: ee23 3a03    	vmul.f32	s6, s6, s6
    8994: eeb0 7a46    	vmov.f32	s14, s12
    8998: ee23 3a03    	vmul.f32	s6, s6, s6
    899c: ee23 3a03    	vmul.f32	s6, s6, s6
    89a0: ee23 3a03    	vmul.f32	s6, s6, s6
    89a4: ee33 5a06    	vadd.f32	s10, s6, s12
    89a8: eeb4 5a46    	vcmp.f32	s10, s12
    89ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89b0: d009         	beq	0x89c6 <ram_probe::packed_probe::candidate+0x726> @ imm = #0x12
    89b2: eeb0 7a45    	vmov.f32	s14, s10
    89b6: eeb1 7ac7    	vsqrt.f32	s14, s14
    89ba: eeb1 7ac7    	vsqrt.f32	s14, s14
    89be: eeb1 7ac7    	vsqrt.f32	s14, s14
    89c2: eeb1 7ac7    	vsqrt.f32	s14, s14
    89c6: ee86 6a07    	vdiv.f32	s12, s12, s14
    89ca: ee20 3a03    	vmul.f32	s6, s0, s6
    89ce: ee86 5a05    	vdiv.f32	s10, s12, s10
    89d2: ee83 4a04    	vdiv.f32	s8, s6, s8
    89d6: ee20 3a06    	vmul.f32	s6, s0, s12
    89da: ee24 4a05    	vmul.f32	s8, s8, s10
    89de: ee31 6a43    	vsub.f32	s12, s2, s6
    89e2: 2900         	cmp	r1, #0x0
    89e4: ed9f 7a8a    	vldr	s14, [pc, #552]         @ 0x8c10 <ram_probe::packed_probe::candidate+0x970>
    89e8: ed9f 3a8a    	vldr	s6, [pc, #552]          @ 0x8c14 <ram_probe::packed_probe::candidate+0x974>
    89ec: ee16 0a10    	vmov	r0, s12
    89f0: fe03 7a07    	vseleq.f32	s14, s6, s14
    89f4: f020 4000    	bic	r0, r0, #0x80000000
    89f8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    89fc: da3a         	bge	0x8a74 <ram_probe::packed_probe::candidate+0x7d4> @ imm = #0x74
    89fe: eeb0 3ac6    	vabs.f32	s6, s12
    8a02: eef2 0a0e    	vmov.f32	s1, #1.500000e+01
    8a06: ee83 3a20    	vdiv.f32	s6, s6, s1
    8a0a: ed5f 0a2b    	vldr	s1, [pc, #-172]         @ 0x8960 <ram_probe::packed_probe::candidate+0x6c0>
    8a0e: eeb4 3a60    	vcmp.f32	s6, s1
    8a12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a16: d82d         	bhi	0x8a74 <ram_probe::packed_probe::candidate+0x7d4> @ imm = #0x5a
    8a18: ee27 5a05    	vmul.f32	s10, s14, s10
    8a1c: eeb0 1ac1    	vabs.f32	s2, s2
    8a20: ee22 2a04    	vmul.f32	s4, s4, s8
    8a24: ed9f 4a7c    	vldr	s8, [pc, #496]          @ 0x8c18 <ram_probe::packed_probe::candidate+0x978>
    8a28: ee25 4a04    	vmul.f32	s8, s10, s8
    8a2c: ed9f 5a7b    	vldr	s10, [pc, #492]         @ 0x8c1c <ram_probe::packed_probe::candidate+0x97c>
    8a30: eeb4 1a41    	vcmp.f32	s2, s2
    8a34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a38: ee02 4a05    	vmla.f32	s8, s4, s10
    8a3c: fe11 1a81    	vselvs.f32	s2, s3, s2
    8a40: eeb4 1a61    	vcmp.f32	s2, s3
    8a44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a48: ee34 2a21    	vadd.f32	s4, s8, s3
    8a4c: ed1f 4a37    	vldr	s8, [pc, #-220]         @ 0x8974 <ram_probe::packed_probe::candidate+0x6d4>
    8a50: fe31 1a21    	vselgt.f32	s2, s2, s3
    8a54: ee86 2a02    	vdiv.f32	s4, s12, s4
    8a58: ee21 1a04    	vmul.f32	s2, s2, s8
    8a5c: ed1f 4a3a    	vldr	s8, [pc, #-232]         @ 0x8978 <ram_probe::packed_probe::candidate+0x6d8>
    8a60: eeb0 2ac2    	vabs.f32	s4, s4
    8a64: fe81 1a44    	vminnm.f32	s2, s2, s8
    8a68: eeb4 2a41    	vcmp.f32	s4, s2
    8a6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a70: f240 8082    	bls.w	0x8b78 <ram_probe::packed_probe::candidate+0x8d8> @ imm = #0x104
    8a74: 4640         	mov	r0, r8
    8a76: eeb0 2a4d    	vmov.f32	s4, s26
    8a7a: e8bc 004e    	ldm.w	r12!, {r1, r2, r3, r6}
    8a7e: c04e         	stm	r0!, {r1, r2, r3, r6}
    8a80: e89c 004e    	ldm.w	r12, {r1, r2, r3, r6}
    8a84: c04e         	stm	r0!, {r1, r2, r3, r6}
    8a86: eeb0 0b4f    	vmov.f64	d0, d15
    8a8a: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    8a8e: eeb0 1b4e    	vmov.f64	d1, d14
    8a92: 3001         	adds	r0, #0x1
    8a94: f8c4 010c    	str.w	r0, [r4, #0x10c]
    8a98: a863         	add	r0, sp, #0x18c
    8a9a: aa5e         	add	r2, sp, #0x178
    8a9c: 4641         	mov	r1, r8
    8a9e: f7f8 fc03    	bl	0x12a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>> @ imm = #-0x77fa
    8aa2: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    8aa6: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8aaa: 4489         	add	r9, r1
    8aac: b300         	cbz	r0, 0x8af0 <ram_probe::packed_probe::candidate+0x850> @ imm = #0x40
    8aae: eef4 da6d    	vcmp.f32	s27, s27
    8ab2: ed9d 0a63    	vldr	s0, [sp, #396]
    8ab6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8aba: eeb4 0a40    	vcmp.f32	s0, s0
    8abe: fe10 1a2d    	vselvs.f32	s2, s0, s27
    8ac2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ac6: fe11 0a00    	vselvs.f32	s0, s2, s0
    8aca: eeb4 1a40    	vcmp.f32	s2, s0
    8ace: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ad2: fe31 da00    	vselgt.f32	s26, s2, s0
    8ad6: e068         	b	0x8baa <ram_probe::packed_probe::candidate+0x90a> @ imm = #0xd0
    8ad8: 00 24 74 4b  	.word	0x4b742400
    8adc: 00 24 74 cb  	.word	0xcb742400
    8ae0: 79 61 2e 43  	.word	0x432e6179
    8ae4: ab aa a0 b8  	.word	0xb8a0aaab
    8ae8: 50 d0 e8 36  	.word	0x36e8d050
    8aec: 00 bf 00 bf  	.word	0xbf00bf00
    8af0: eeb0 0b4f    	vmov.f64	d0, d15
    8af4: a863         	add	r0, sp, #0x18c
    8af6: eeb0 1b4e    	vmov.f64	d1, d14
    8afa: a956         	add	r1, sp, #0x158
    8afc: eeb0 2a4d    	vmov.f32	s4, s26
    8b00: aa5e         	add	r2, sp, #0x178
    8b02: 2600         	movs	r6, #0x0
    8b04: 9657         	str	r6, [sp, #0x15c]
    8b06: f7f8 fbcf    	bl	0x12a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>> @ imm = #-0x7862
    8b0a: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    8b0e: eef4 da6d    	vcmp.f32	s27, s27
    8b12: 3001         	adds	r0, #0x1
    8b14: bf28         	it	hs
    8b16: f04f 30ff    	movhs.w	r0, #0xffffffff
    8b1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b1e: ed9d 0a63    	vldr	s0, [sp, #396]
    8b22: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8b26: fe10 1a2d    	vselvs.f32	s2, s0, s27
    8b2a: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    8b2e: eeb4 0a40    	vcmp.f32	s0, s0
    8b32: 4489         	add	r9, r1
    8b34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b38: f8c4 011c    	str.w	r0, [r4, #0x11c]
    8b3c: fe11 2a00    	vselvs.f32	s4, s2, s0
    8b40: eeb4 1a42    	vcmp.f32	s2, s4
    8b44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b48: fe31 da02    	vselgt.f32	s26, s2, s4
    8b4c: bb6a         	cbnz	r2, 0x8baa <ram_probe::packed_probe::candidate+0x90a> @ imm = #0x5a
    8b4e: 69e0         	ldr	r0, [r4, #0x1c]
    8b50: f8cb 0000    	str.w	r0, [r11]
    8b54: ed8b 0a01    	vstr	s0, [r11, #4]
    8b58: f88b 9008    	strb.w	r9, [r11, #0x8]
    8b5c: f88b 6009    	strb.w	r6, [r11, #0x9]
    8b60: f001 bbc6    	b.w	0xa2f0 <ram_probe::packed_probe::candidate+0x2050> @ imm = #0x178c
    8b64: 0a d7 23 3d  	.word	0x3d23d70a
    8b68: 7c f2 b0 3a  	.word	0x3ab0f27c
    8b6c: a6 9b c4 3b  	.word	0x3bc49ba6
    8b70: a6 9b c4 bb  	.word	0xbbc49ba6
    8b74: 00 bf 00 bf  	.word	0xbf00bf00
    8b78: eef4 da6d    	vcmp.f32	s27, s27
    8b7c: f8d4 0104    	ldr.w	r0, [r4, #0x104]
    8b80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b84: eeb4 3a43    	vcmp.f32	s6, s6
    8b88: ed8d 0a5e    	vstr	s0, [sp, #376]
    8b8c: fe13 1a2d    	vselvs.f32	s2, s6, s27
    8b90: 3001         	adds	r0, #0x1
    8b92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b96: f8c4 0104    	str.w	r0, [r4, #0x104]
    8b9a: fe11 2a03    	vselvs.f32	s4, s2, s6
    8b9e: eeb4 1a42    	vcmp.f32	s2, s4
    8ba2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ba6: fe31 da02    	vselgt.f32	s26, s2, s4
    8baa: eeb0 0a4c    	vmov.f32	s0, s24
    8bae: f50d 7ac6    	add.w	r10, sp, #0x18c
    8bb2: f50d 78ac    	add.w	r8, sp, #0x158
    8bb6: aa38         	add	r2, sp, #0xe0
    8bb8: ab5e         	add	r3, sp, #0x178
    8bba: 4650         	mov	r0, r10
    8bbc: 4641         	mov	r1, r8
    8bbe: f7f8 ff67    	bl	0x1a90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>> @ imm = #-0x7132
    8bc2: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    8bc6: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8bca: 2801         	cmp	r0, #0x1
    8bcc: 4489         	add	r9, r1
    8bce: d16b         	bne	0x8ca8 <ram_probe::packed_probe::candidate+0xa08> @ imm = #0xd6
    8bd0: eeb4 da4d    	vcmp.f32	s26, s26
    8bd4: ed9d 0a63    	vldr	s0, [sp, #396]
    8bd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8bdc: eeb4 0a40    	vcmp.f32	s0, s0
    8be0: ed8d 8a0b    	vstr	s16, [sp, #44]
    8be4: fe10 1a0d    	vselvs.f32	s2, s0, s26
    8be8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8bec: fe11 0a00    	vselvs.f32	s0, s2, s0
    8bf0: eeb4 1a40    	vcmp.f32	s2, s0
    8bf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8bf8: fe31 0a00    	vselgt.f32	s0, s2, s0
    8bfc: ed8d 0a1a    	vstr	s0, [sp, #104]
    8c00: e085         	b	0x8d0e <ram_probe::packed_probe::candidate+0xa6e> @ imm = #0x10a
    8c02: bf00         	nop
    8c04: 79 78 b0 43  	.word	0x43b07879
    8c08: 7c f2 b0 ba  	.word	0xbab0f27c
    8c0c: 53 4a a1 43  	.word	0x43a14a53
    8c10: 79 61 2e c3  	.word	0xc32e6179
    8c14: 00 00 00 80  	.word	0x80000000
    8c18: 5e 95 e1 bc  	.word	0xbce1955e
    8c1c: ab aa a0 38  	.word	0x38a0aaab
		...
    8c28: ab 14 f2 db  	.word	0xdbf214ab
    8c2c: ec cd d7 3f  	.word	0x3fd7cdec
    8c30: c4 a9 9f 7b  	.word	0x7b9fa9c4
    8c34: 67 dd c7 3f  	.word	0x3fc7dd67
    8c38: a7 2a 45 4f  	.word	0x4f452aa7
    8c3c: ed 97 01 41  	.word	0x410197ed
    8c40: 26 88 21 19  	.word	0x19218826
    8c44: 2f cc 65 40  	.word	0x4065cc2f
    8c48: c6 e6 eb 5a  	.word	0x5aebe6c6
    8c4c: d9 83 57 40  	.word	0x405783d9
    8c50: 15 be b6 e5  	.word	0xe5b6be15
    8c54: 6d 7e c0 3f  	.word	0x3fc07e6d
    8c58: 33 5a 1f 17  	.word	0x171f5a33
    8c5c: c7 76 4c 40  	.word	0x404c76c7
    8c60: 39 0e ce cb  	.word	0xcbce0e39
    8c64: 33 25 73 3f  	.word	0x3f732533
    8c68: d2 ce fe 14  	.word	0x14feced2
    8c6c: cf 45 20 3f  	.word	0x3f2045cf
    8c70: 68 26 52 13  	.word	0x13522668
    8c74: 2a 49 20 3f  	.word	0x3f20492a
    8c78: 10 43 9c 25  	.word	0x259c4310
    8c7c: ca fc ef 3f  	.word	0x3feffcca
    8c80: c2 17 26 53  	.word	0x532617c2
    8c84: 05 a3 72 3f  	.word	0x3f72a305
    8c88: 44 1c 7f 14  	.word	0x147f1c44
    8c8c: 5b ea cd be  	.word	0xbecdea5b
    8c90: 44 1c 7f 14  	.word	0x147f1c44
    8c94: 5b ea ad be  	.word	0xbeadea5b
    8c98: d0 cf 74 ad  	.word	0xad74cfd0
    8c9c: 26 a1 82 3f  	.word	0x3f82a126
    8ca0: d0 cf 74 ad  	.word	0xad74cfd0
    8ca4: 26 a1 62 3f  	.word	0x3f62a126
    8ca8: eeb0 0a4c    	vmov.f32	s0, s24
    8cac: a863         	add	r0, sp, #0x18c
    8cae: a956         	add	r1, sp, #0x158
    8cb0: aa38         	add	r2, sp, #0xe0
    8cb2: ab5e         	add	r3, sp, #0x178
    8cb4: 2500         	movs	r5, #0x0
    8cb6: e9cd 5558    	strd	r5, r5, [sp, #352]
    8cba: f7f8 fee9    	bl	0x1a90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>> @ imm = #-0x722e
    8cbe: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    8cc2: eeb4 da4d    	vcmp.f32	s26, s26
    8cc6: 3001         	adds	r0, #0x1
    8cc8: bf28         	it	hs
    8cca: f04f 30ff    	movhs.w	r0, #0xffffffff
    8cce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cd2: ed9d 0a63    	vldr	s0, [sp, #396]
    8cd6: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    8cda: fe10 1a0d    	vselvs.f32	s2, s0, s26
    8cde: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    8ce2: eeb4 0a40    	vcmp.f32	s0, s0
    8ce6: 4489         	add	r9, r1
    8ce8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cec: f8c4 011c    	str.w	r0, [r4, #0x11c]
    8cf0: fe11 2a00    	vselvs.f32	s4, s2, s0
    8cf4: eeb4 1a42    	vcmp.f32	s2, s4
    8cf8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cfc: fe31 1a02    	vselgt.f32	s2, s2, s4
    8d00: 2a00         	cmp	r2, #0x0
    8d02: f001 80fd    	beq.w	0x9f00 <ram_probe::packed_probe::candidate+0x1c60> @ imm = #0x11fa
    8d06: ed8d 1a1a    	vstr	s2, [sp, #104]
    8d0a: ed8d 8a0b    	vstr	s16, [sp, #44]
    8d0e: f50d 7cf4    	add.w	r12, sp, #0x1e8
    8d12: 4641         	mov	r1, r8
    8d14: 4662         	mov	r2, r12
    8d16: c969         	ldm	r1!, {r0, r3, r5, r6}
    8d18: c269         	stm	r2!, {r0, r3, r5, r6}
    8d1a: e891 0069    	ldm.w	r1, {r0, r3, r5, r6}
    8d1e: c269         	stm	r2!, {r0, r3, r5, r6}
    8d20: ed9d 0a56    	vldr	s0, [sp, #344]
    8d24: ed9d 1a57    	vldr	s2, [sp, #348]
    8d28: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    8d2c: ed9d ba5c    	vldr	s22, [sp, #368]
    8d30: ed1f 8b45    	vldr	d8, [pc, #-276]         @ 0x8c20 <ram_probe::packed_probe::candidate+0x980>
    8d34: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    8d38: ed8d 9a19    	vstr	s18, [sp, #100]
    8d3c: ee20 0b08    	vmul.f64	d0, d0, d8
    8d40: eeb7 eacb    	vcvt.f64.f32	d14, s22
    8d44: ed9d ba5d    	vldr	s22, [sp, #372]
    8d48: ed9d 2b4c    	vldr	d2, [sp, #304]
    8d4c: ed8d 2b16    	vstr	d2, [sp, #88]
    8d50: ee32 4b00    	vadd.f64	d4, d2, d0
    8d54: ee21 2b08    	vmul.f64	d2, d1, d8
    8d58: ed1f 5b4d    	vldr	d5, [pc, #-308]         @ 0x8c28 <ram_probe::packed_probe::candidate+0x988>
    8d5c: ee34 1b02    	vadd.f64	d1, d4, d2
    8d60: ed9d 4a58    	vldr	s8, [sp, #352]
    8d64: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    8d68: ed1f 6b4f    	vldr	d6, [pc, #-316]         @ 0x8c30 <ram_probe::packed_probe::candidate+0x990>
    8d6c: ee24 3b05    	vmul.f64	d3, d4, d5
    8d70: ed9d 5a59    	vldr	s10, [sp, #356]
    8d74: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    8d78: ee31 1b03    	vadd.f64	d1, d1, d3
    8d7c: ee25 7b06    	vmul.f64	d7, d5, d6
    8d80: ed9d 6a5b    	vldr	s12, [sp, #364]
    8d84: eeb7 6ac6    	vcvt.f64.f32	d6, s12
    8d88: ee31 1b07    	vadd.f64	d1, d1, d7
    8d8c: ee06 1b08    	vmla.f64	d1, d6, d8
    8d90: ee2e 6b08    	vmul.f64	d6, d14, d8
    8d94: eeb7 eacb    	vcvt.f64.f32	d14, s22
    8d98: eeb0 ba69    	vmov.f32	s22, s19
    8d9c: ed8d 3b14    	vstr	d3, [sp, #80]
    8da0: ee31 fb06    	vadd.f64	d15, d1, d6
    8da4: ee69 1a29    	vmul.f32	s3, s18, s19
    8da8: ee2e eb08    	vmul.f64	d14, d14, d8
    8dac: eeb7 9ae1    	vcvt.f64.f32	d9, s3
    8db0: ee3f fb0e    	vadd.f64	d15, d15, d14
    8db4: ed1f 3b60    	vldr	d3, [pc, #-384]         @ 0x8c38 <ram_probe::packed_probe::candidate+0x998>
    8db8: ed1f db5f    	vldr	d13, [pc, #-380]        @ 0x8c40 <ram_probe::packed_probe::candidate+0x9a0>
    8dbc: ee89 9b03    	vdiv.f64	d9, d9, d3
    8dc0: ee0f 9b0d    	vmla.f64	d9, d15, d13
    8dc4: ed1f fb60    	vldr	d15, [pc, #-384]        @ 0x8c48 <ram_probe::packed_probe::candidate+0x9a8>
    8dc8: ee89 9b0f    	vdiv.f64	d9, d9, d15
    8dcc: ed9d fb54    	vldr	d15, [sp, #336]
    8dd0: eeb7 1bc9    	vcvt.f32.f64	s2, d9
    8dd4: ed9d 9b4e    	vldr	d9, [sp, #312]
    8dd8: eef4 ca41    	vcmp.f32	s25, s2
    8ddc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8de0: ee30 0b09    	vadd.f64	d0, d0, d9
    8de4: fe3c 1a81    	vselgt.f32	s2, s25, s2
    8de8: ed8d 9b10    	vstr	d9, [sp, #64]
    8dec: eeb4 1a6b    	vcmp.f32	s2, s23
    8df0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8df4: ee32 2b00    	vadd.f64	d2, d2, d0
    8df8: fe3b 0a81    	vselgt.f32	s0, s23, s2
    8dfc: ee04 2b08    	vmla.f64	d2, d4, d8
    8e00: ee6a 0a0b    	vmul.f32	s1, s20, s22
    8e04: ed8d 0a18    	vstr	s0, [sp, #96]
    8e08: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    8e0c: ed8d 0a5a    	vstr	s0, [sp, #360]
    8e10: ee05 2b08    	vmla.f64	d2, d5, d8
    8e14: ed1f 5b72    	vldr	d5, [pc, #-456]         @ 0x8c50 <ram_probe::packed_probe::candidate+0x9b0>
    8e18: ee24 5b05    	vmul.f64	d5, d4, d5
    8e1c: ed8d 5b0e    	vstr	d5, [sp, #56]
    8e20: ee32 2b45    	vsub.f64	d2, d2, d5
    8e24: eeb7 5ae0    	vcvt.f64.f32	d5, s1
    8e28: ed9d 9b52    	vldr	d9, [sp, #328]
    8e2c: ee36 2b02    	vadd.f64	d2, d6, d2
    8e30: ee85 5b03    	vdiv.f64	d5, d5, d3
    8e34: ee3e 2b02    	vadd.f64	d2, d14, d2
    8e38: ed9d eb44    	vldr	d14, [sp, #272]
    8e3c: ee02 5b0d    	vmla.f64	d5, d2, d13
    8e40: ed1f 2b7b    	vldr	d2, [pc, #-492]         @ 0x8c58 <ram_probe::packed_probe::candidate+0x9b8>
    8e44: ee85 2b02    	vdiv.f64	d2, d5, d2
    8e48: eddf 5ae8    	vldr	s11, [pc, #928]         @ 0x91ec <ram_probe::packed_probe::candidate+0xf4c>
    8e4c: ed8d eb12    	vstr	d14, [sp, #72]
    8e50: eeb7 1bc2    	vcvt.f32.f64	s2, d2
    8e54: ed1f 2b7e    	vldr	d2, [pc, #-504]         @ 0x8c60 <ram_probe::packed_probe::candidate+0x9c0>
    8e58: eef4 ca41    	vcmp.f32	s25, s2
    8e5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e60: eeb7 5bc9    	vcvt.f32.f64	s10, d9
    8e64: fe3c 1a81    	vselgt.f32	s2, s25, s2
    8e68: eef7 6bcf    	vcvt.f32.f64	s13, d15
    8e6c: eeb4 1a6b    	vcmp.f32	s2, s23
    8e70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e74: fe3b 1a81    	vselgt.f32	s2, s23, s2
    8e78: ed1f bb85    	vldr	d11, [pc, #-532]        @ 0x8c68 <ram_probe::packed_probe::candidate+0x9c8>
    8e7c: ed8d 1a5b    	vstr	s2, [sp, #364]
    8e80: eeb7 3ac1    	vcvt.f64.f32	d3, s2
    8e84: ee21 6a25    	vmul.f32	s12, s2, s11
    8e88: ee03 eb0b    	vmla.f64	d14, d3, d11
    8e8c: ee36 5a05    	vadd.f32	s10, s12, s10
    8e90: ee36 6a26    	vadd.f32	s12, s12, s13
    8e94: eddf 6ad6    	vldr	s13, [pc, #856]         @ 0x91f0 <ram_probe::packed_probe::candidate+0xf50>
    8e98: ee8e 2b02    	vdiv.f64	d2, d14, d2
    8e9c: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    8ea0: eef0 2a46    	vmov.f32	s5, s12
    8ea4: ee42 2a65    	vmls.f32	s5, s4, s11
    8ea8: eef0 5a45    	vmov.f32	s11, s10
    8eac: ee42 5a26    	vmla.f32	s11, s4, s13
    8eb0: fec5 2ae2    	vminnm.f32	s5, s11, s5
    8eb4: eef4 2a6a    	vcmp.f32	s5, s21
    8eb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ebc: f240 80f8    	bls.w	0x90b0 <ram_probe::packed_probe::candidate+0xe10> @ imm = #0x1f0
    8ec0: ed1f 2b95    	vldr	d2, [pc, #-596]         @ 0x8c70 <ram_probe::packed_probe::candidate+0x9d0>
    8ec4: eddf 5acb    	vldr	s11, [pc, #812]         @ 0x91f4 <ram_probe::packed_probe::candidate+0xf54>
    8ec8: ee8e 2b02    	vdiv.f64	d2, d14, d2
    8ecc: ed9f caca    	vldr	s24, [pc, #808]         @ 0x91f8 <ram_probe::packed_probe::candidate+0xf58>
    8ed0: ed9f 0aca    	vldr	s0, [pc, #808]          @ 0x91fc <ram_probe::packed_probe::candidate+0xf5c>
    8ed4: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    8ed8: eef0 2a45    	vmov.f32	s5, s10
    8edc: ed9f 8ac8    	vldr	s16, [pc, #800]         @ 0x9200 <ram_probe::packed_probe::candidate+0xf60>
    8ee0: ee42 2a26    	vmla.f32	s5, s4, s13
    8ee4: eef0 6a46    	vmov.f32	s13, s12
    8ee8: ee42 6a25    	vmla.f32	s13, s4, s11
    8eec: fec2 2ae6    	vminnm.f32	s5, s5, s13
    8ef0: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    8ef4: ee7a 2ae2    	vsub.f32	s5, s21, s5
    8ef8: fec2 2acc    	vminnm.f32	s5, s5, s24
    8efc: eeb0 ca66    	vmov.f32	s24, s13
    8f00: ee02 caaa    	vmla.f32	s24, s5, s21
    8f04: ee6c 2a00    	vmul.f32	s5, s24, s0
    8f08: eef4 2a48    	vcmp.f32	s5, s16
    8f0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f10: f240 80ce    	bls.w	0x90b0 <ram_probe::packed_probe::candidate+0xe10> @ imm = #0x19c
    8f14: ed1f 2ba8    	vldr	d2, [pc, #-672]         @ 0x8c78 <ram_probe::packed_probe::candidate+0x9d8>
    8f18: eeb6 cb00    	vmov.f64	d12, #5.000000e-01
    8f1c: eeb7 8b00    	vmov.f64	d8, #1.000000e+00
    8f20: ee23 2b02    	vmul.f64	d2, d3, d2
    8f24: eeb0 db42    	vmov.f64	d13, d2
    8f28: ee39 2b02    	vadd.f64	d2, d9, d2
    8f2c: eeb0 9b48    	vmov.f64	d9, d8
    8f30: ee3c 2b42    	vsub.f64	d2, d12, d2
    8f34: ee02 9b0c    	vmla.f64	d9, d2, d12
    8f38: eeb0 cb4b    	vmov.f64	d12, d11
    8f3c: ed1f 2bb0    	vldr	d2, [pc, #-704]         @ 0x8c80 <ram_probe::packed_probe::candidate+0x9e0>
    8f40: ee09 cb02    	vmla.f64	d12, d9, d2
    8f44: ed1f 2bb0    	vldr	d2, [pc, #-704]         @ 0x8c88 <ram_probe::packed_probe::candidate+0x9e8>
    8f48: ee2e 2b02    	vmul.f64	d2, d14, d2
    8f4c: ee0c 2b0c    	vmla.f64	d2, d12, d12
    8f50: eeb1 9b4e    	vneg.f64	d9, d14
    8f54: eeb5 2b40    	vcmp.f64	d2, #0
    8f58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f5c: ed8d 9b0c    	vstr	d9, [sp, #48]
    8f60: d42a         	bmi	0x8fb8 <ram_probe::packed_probe::candidate+0xd18> @ imm = #0x54
    8f62: ec51 0b1c    	vmov	r0, r1, d12
    8f66: eeb1 2bc2    	vsqrt.f64	d2, d2
    8f6a: ec52 0b12    	vmov	r0, r2, d2
    8f6e: 0fc9         	lsrs	r1, r1, #0x1f
    8f70: eebe 9b00    	vmov.f64	d9, #-5.000000e-01
    8f74: f361 72df    	bfi	r2, r1, #31, #1
    8f78: ec42 0b12    	vmov	d2, r0, r2
    8f7c: ee3c 2b02    	vadd.f64	d2, d12, d2
    8f80: ee22 9b09    	vmul.f64	d9, d2, d9
    8f84: ed1f 2bbe    	vldr	d2, [pc, #-760]         @ 0x8c90 <ram_probe::packed_probe::candidate+0x9f0>
    8f88: ee89 2b02    	vdiv.f64	d2, d9, d2
    8f8c: ec51 0b12    	vmov	r0, r1, d2
    8f90: f021 4000    	bic	r0, r1, #0x80000000
    8f94: f64f 71ff    	movw	r1, #0xffff
    8f98: f6c7 71ef    	movt	r1, #0x7fef
    8f9c: 4288         	cmp	r0, r1
    8f9e: f341 81af    	ble.w	0xa300 <ram_probe::packed_probe::candidate+0x2060> @ imm = #0x135e
    8fa2: ed9d 2b0c    	vldr	d2, [sp, #48]
    8fa6: ee82 2b09    	vdiv.f64	d2, d2, d9
    8faa: ec52 0b12    	vmov	r0, r2, d2
    8fae: f022 4000    	bic	r0, r2, #0x80000000
    8fb2: 4288         	cmp	r0, r1
    8fb4: f341 8220    	ble.w	0xa3f8 <ram_probe::packed_probe::candidate+0x2158> @ imm = #0x1440
    8fb8: ee3f 2b0d    	vadd.f64	d2, d15, d13
    8fbc: eeb6 9b00    	vmov.f64	d9, #5.000000e-01
    8fc0: ee39 2b42    	vsub.f64	d2, d9, d2
    8fc4: ee02 8b09    	vmla.f64	d8, d2, d9
    8fc8: ed1f 2bd3    	vldr	d2, [pc, #-844]         @ 0x8c80 <ram_probe::packed_probe::candidate+0x9e0>
    8fcc: ee08 bb02    	vmla.f64	d11, d8, d2
    8fd0: ed1f 8bcf    	vldr	d8, [pc, #-828]         @ 0x8c98 <ram_probe::packed_probe::candidate+0x9f8>
    8fd4: ee2b 2b0b    	vmul.f64	d2, d11, d11
    8fd8: ee0e 2b08    	vmla.f64	d2, d14, d8
    8fdc: eeb5 2b40    	vcmp.f64	d2, #0
    8fe0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8fe4: f100 8430    	bmi.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #0x860
    8fe8: ec51 0b1b    	vmov	r0, r1, d11
    8fec: eeb1 2bc2    	vsqrt.f64	d2, d2
    8ff0: ec52 0b12    	vmov	r0, r2, d2
    8ff4: 0fc9         	lsrs	r1, r1, #0x1f
    8ff6: eebe 8b00    	vmov.f64	d8, #-5.000000e-01
    8ffa: f361 72df    	bfi	r2, r1, #31, #1
    8ffe: ec42 0b12    	vmov	d2, r0, r2
    9002: ee3b 2b02    	vadd.f64	d2, d11, d2
    9006: ee22 9b08    	vmul.f64	d9, d2, d8
    900a: ed1f 2bdb    	vldr	d2, [pc, #-876]         @ 0x8ca0 <ram_probe::packed_probe::candidate+0xa00>
    900e: ee89 2b02    	vdiv.f64	d2, d9, d2
    9012: ec51 0b12    	vmov	r0, r1, d2
    9016: f021 4000    	bic	r0, r1, #0x80000000
    901a: f64f 71ff    	movw	r1, #0xffff
    901e: f6c7 71ef    	movt	r1, #0x7fef
    9022: 4288         	cmp	r0, r1
    9024: f341 81ac    	ble.w	0xa380 <ram_probe::packed_probe::candidate+0x20e0> @ imm = #0x1358
    9028: ed9d 2b0c    	vldr	d2, [sp, #48]
    902c: ee82 2b09    	vdiv.f64	d2, d2, d9
    9030: ec52 0b12    	vmov	r0, r2, d2
    9034: f022 4000    	bic	r0, r2, #0x80000000
    9038: 4288         	cmp	r0, r1
    903a: f300 8405    	bgt.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #0x80a
    903e: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    9042: eef0 2a46    	vmov.f32	s5, s12
    9046: eeb0 9a45    	vmov.f32	s18, s10
    904a: eeb8 8a00    	vmov.f32	s16, #-2.000000e+00
    904e: ed8d 2a5c    	vstr	s4, [sp, #368]
    9052: ee42 2a25    	vmla.f32	s5, s4, s11
    9056: eef0 5a40    	vmov.f32	s11, s0
    905a: ed9f 0a65    	vldr	s0, [pc, #404]          @ 0x91f0 <ram_probe::packed_probe::candidate+0xf50>
    905e: ee02 9a00    	vmla.f32	s18, s4, s0
    9062: eeb0 0a65    	vmov.f32	s0, s11
    9066: fec9 5a62    	vminnm.f32	s11, s18, s5
    906a: ee7a 5ae5    	vsub.f32	s11, s21, s11
    906e: eef4 5a48    	vcmp.f32	s11, s16
    9072: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9076: f340 83e7    	ble.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #0x7ce
    907a: eef4 2a49    	vcmp.f32	s5, s18
    907e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9082: f200 83e1    	bhi.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #0x7c2
    9086: eef5 5a40    	vcmp.f32	s11, #0
    908a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    908e: f140 83db    	bpl.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #0x7b6
    9092: ee45 6aaa    	vmla.f32	s13, s11, s21
    9096: ee66 2a80    	vmul.f32	s5, s13, s0
    909a: ed9f 0a59    	vldr	s0, [pc, #356]          @ 0x9200 <ram_probe::packed_probe::candidate+0xf60>
    909e: eef4 2a40    	vcmp.f32	s5, s0
    90a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    90a6: dc05         	bgt	0x90b4 <ram_probe::packed_probe::candidate+0xe14> @ imm = #0xa
    90a8: e3ce         	b	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #0x79c
    90aa: bf00         	nop
    90ac: bf00         	nop
    90ae: bf00         	nop
    90b0: ed8d 2a5c    	vstr	s4, [sp, #368]
    90b4: ed9f 8a85    	vldr	s16, [pc, #532]         @ 0x92cc <ram_probe::packed_probe::candidate+0x102c>
    90b8: ed9f ba85    	vldr	s22, [pc, #532]         @ 0x92d0 <ram_probe::packed_probe::candidate+0x1030>
    90bc: ee71 2a88    	vadd.f32	s5, s3, s16
    90c0: ee71 6a8b    	vadd.f32	s13, s3, s22
    90c4: ed9f 0aee    	vldr	s0, [pc, #952]          @ 0x9480 <ram_probe::packed_probe::candidate+0x11e0>
    90c8: eec2 5a80    	vdiv.f32	s11, s5, s0
    90cc: eec6 2a80    	vdiv.f32	s5, s13, s0
    90d0: eef4 5a62    	vcmp.f32	s11, s5
    90d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    90d8: f201 81d6    	bhi.w	0xa488 <ram_probe::packed_probe::candidate+0x21e8> @ imm = #0x13ac
    90dc: ed8d 3b0c    	vstr	d3, [sp, #48]
    90e0: eddf caec    	vldr	s25, [pc, #944]         @ 0x9494 <ram_probe::packed_probe::candidate+0x11f4>
    90e4: ed9d da18    	vldr	s26, [sp, #96]
    90e8: ed9d 3b16    	vldr	d3, [sp, #88]
    90ec: 2000         	movs	r0, #0x0
    90ee: 2100         	movs	r1, #0x0
    90f0: ed9d 9b14    	vldr	d9, [sp, #80]
    90f4: ed9f fae8    	vldr	s30, [pc, #928]         @ 0x9498 <ram_probe::packed_probe::candidate+0x11f8>
    90f8: ee33 3b09    	vadd.f64	d3, d3, d9
    90fc: eddf 9ae7    	vldr	s19, [pc, #924]         @ 0x949c <ram_probe::packed_probe::candidate+0x11fc>
    9100: eddf fae7    	vldr	s31, [pc, #924]         @ 0x94a0 <ram_probe::packed_probe::candidate+0x1200>
    9104: ee33 3b07    	vadd.f64	d3, d3, d7
    9108: eddf dae6    	vldr	s27, [pc, #920]         @ 0x94a4 <ram_probe::packed_probe::candidate+0x1204>
    910c: ed9f 7b90    	vldr	d7, [pc, #576]          @ 0x9350 <ram_probe::packed_probe::candidate+0x10b0>
    9110: ee04 3b07    	vmla.f64	d3, d4, d7
    9114: ed9f 4ae4    	vldr	s8, [pc, #912]          @ 0x94a8 <ram_probe::packed_probe::candidate+0x1208>
    9118: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    911c: ee23 7a29    	vmul.f32	s14, s6, s19
    9120: ee01 7aac    	vmla.f32	s14, s3, s25
    9124: ed9d 3b40    	vldr	d3, [sp, #256]
    9128: eef7 1bc3    	vcvt.f32.f64	s3, d3
    912c: ee4d 1a04    	vmla.f32	s3, s26, s8
    9130: ed9f 4ade    	vldr	s8, [pc, #888]          @ 0x94ac <ram_probe::packed_probe::candidate+0x120c>
    9134: eef4 5a47    	vcmp.f32	s11, s14
    9138: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    913c: ee41 1a04    	vmla.f32	s3, s2, s8
    9140: fe35 3a87    	vselgt.f32	s6, s11, s14
    9144: eeb4 3a62    	vcmp.f32	s6, s5
    9148: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    914c: eeb4 7a65    	vcmp.f32	s14, s11
    9150: fe72 8a83    	vselgt.f32	s17, s5, s6
    9154: eebf 3a00    	vmov.f32	s6, #-1.000000e+00
    9158: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    915c: eeb4 7a62    	vcmp.f32	s14, s5
    9160: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    9164: bfc8         	it	gt
    9166: 2001         	movgt	r0, #0x1
    9168: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    916c: eef5 1a40    	vcmp.f32	s3, #0
    9170: eef0 6ae1    	vabs.f32	s13, s3
    9174: eddf 1a20    	vldr	s3, [pc, #128]          @ 0x91f8 <ram_probe::packed_probe::candidate+0xf58>
    9178: eeb0 7a61    	vmov.f32	s14, s3
    917c: eef0 5a61    	vmov.f32	s11, s3
    9180: bf48         	it	mi
    9182: 2101         	movmi	r1, #0x1
    9184: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9188: bf48         	it	mi
    918a: eeb0 7a43    	vmovmi.f32	s14, s6
    918e: eef0 4a61    	vmov.f32	s9, s3
    9192: eef4 6a4f    	vcmp.f32	s13, s30
    9196: fe72 3a87    	vselgt.f32	s7, s5, s14
    919a: eeb0 7a61    	vmov.f32	s14, s3
    919e: eef0 2a61    	vmov.f32	s5, s3
    91a2: 4001         	ands	r1, r0
    91a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91a8: f280 80c1    	bge.w	0x932e <ram_probe::packed_probe::candidate+0x108e> @ imm = #0x182
    91ac: ed9f 7ac0    	vldr	s14, [pc, #768]         @ 0x94b0 <ram_probe::packed_probe::candidate+0x1210>
    91b0: eef4 6a47    	vcmp.f32	s13, s14
    91b4: eddf 2a10    	vldr	s5, [pc, #64]           @ 0x91f8 <ram_probe::packed_probe::candidate+0xf58>
    91b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91bc: d910         	bls	0x91e0 <ram_probe::packed_probe::candidate+0xf40> @ imm = #0x20
    91be: ed9f 7abd    	vldr	s14, [pc, #756]         @ 0x94b4 <ram_probe::packed_probe::candidate+0x1214>
    91c2: eef4 6a47    	vcmp.f32	s13, s14
    91c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91ca: d91d         	bls	0x9208 <ram_probe::packed_probe::candidate+0xf68> @ imm = #0x3a
    91cc: ed9f 7ae8    	vldr	s14, [pc, #928]         @ 0x9570 <ram_probe::packed_probe::candidate+0x12d0>
    91d0: ee76 4a87    	vadd.f32	s9, s13, s14
    91d4: eddf 5ae7    	vldr	s11, [pc, #924]         @ 0x9574 <ram_probe::packed_probe::candidate+0x12d4>
    91d8: eeb0 7a08    	vmov.f32	s14, #3.000000e+00
    91dc: e01c         	b	0x9218 <ram_probe::packed_probe::candidate+0xf78> @ imm = #0x38
    91de: bf00         	nop
    91e0: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    91e4: eef0 4a62    	vmov.f32	s9, s5
    91e8: e01a         	b	0x9220 <ram_probe::packed_probe::candidate+0xf80> @ imm = #0x34
    91ea: bf00         	nop
    91ec: 51 e6 7f 3f  	.word	0x3f7fe651
    91f0: 99 76 cd 39  	.word	0x39cd7699
    91f4: 51 e6 7f bf  	.word	0xbf7fe651
    91f8: 00 00 00 00  	.word	0x00000000
    91fc: 2b 18 95 3b  	.word	0x3b95182b
    9200: 95 bf d6 33  	.word	0x33d6bf95
    9204: 00 bf 00 bf  	.word	0xbf00bf00
    9208: ed9f 7ae0    	vldr	s14, [pc, #896]         @ 0x958c <ram_probe::packed_probe::candidate+0x12ec>
    920c: ee76 4a87    	vadd.f32	s9, s13, s14
    9210: eeb7 7a08    	vmov.f32	s14, #1.500000e+00
    9214: eddf 5ade    	vldr	s11, [pc, #888]         @ 0x9590 <ram_probe::packed_probe::candidate+0x12f0>
    9218: ee04 7aa5    	vmla.f32	s14, s9, s11
    921c: ee63 4aa5    	vmul.f32	s9, s7, s11
    9220: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    9224: ee33 7ac7    	vsub.f32	s14, s7, s14
    9228: fec7 3a22    	vmaxnm.f32	s7, s14, s5
    922c: eeb1 7a64    	vneg.f32	s14, s9
    9230: eef5 3a40    	vcmp.f32	s7, #0
    9234: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9238: d942         	bls	0x92c0 <ram_probe::packed_probe::candidate+0x1020> @ imm = #0x84
    923a: eef0 2ae8    	vabs.f32	s5, s17
    923e: eef4 2a63    	vcmp.f32	s5, s7
    9242: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9246: d947         	bls	0x92d8 <ram_probe::packed_probe::candidate+0x1038> @ imm = #0x8e
    9248: eec3 5aa2    	vdiv.f32	s11, s7, s5
    924c: ee65 2aa5    	vmul.f32	s5, s11, s11
    9250: ee62 2aa2    	vmul.f32	s5, s5, s5
    9254: ee62 2aa2    	vmul.f32	s5, s5, s5
    9258: ee62 6aa2    	vmul.f32	s13, s5, s5
    925c: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    9260: ee76 4aa2    	vadd.f32	s9, s13, s5
    9264: eef0 7a62    	vmov.f32	s15, s5
    9268: eef4 4a62    	vcmp.f32	s9, s5
    926c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9270: d009         	beq	0x9286 <ram_probe::packed_probe::candidate+0xfe6> @ imm = #0x12
    9272: eef0 7a64    	vmov.f32	s15, s9
    9276: eef1 7ae7    	vsqrt.f32	s15, s15
    927a: eef1 7ae7    	vsqrt.f32	s15, s15
    927e: eef1 7ae7    	vsqrt.f32	s15, s15
    9282: eef1 7ae7    	vsqrt.f32	s15, s15
    9286: eec2 2aa7    	vdiv.f32	s5, s5, s15
    928a: eef4 8a68    	vcmp.f32	s17, s17
    928e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9292: eec2 7aa4    	vdiv.f32	s15, s5, s9
    9296: f181 81af    	bvs.w	0xa5f8 <ram_probe::packed_probe::candidate+0x2358> @ imm = #0x135e
    929a: ee18 0a90    	vmov	r0, s17
    929e: f04f 527e    	mov.w	r2, #0x3f800000
    92a2: f362 001e    	bfi	r0, r2, #0, #31
    92a6: ee04 0a90    	vmov	s9, r0
    92aa: ee64 3aa3    	vmul.f32	s7, s9, s7
    92ae: ee64 4aa7    	vmul.f32	s9, s9, s15
    92b2: ee63 2aa2    	vmul.f32	s5, s7, s5
    92b6: ee65 3aa6    	vmul.f32	s7, s11, s13
    92ba: ee63 5aa7    	vmul.f32	s11, s7, s15
    92be: e036         	b	0x932e <ram_probe::packed_probe::candidate+0x108e> @ imm = #0x6c
    92c0: eef0 5a62    	vmov.f32	s11, s5
    92c4: eef0 4a62    	vmov.f32	s9, s5
    92c8: e031         	b	0x932e <ram_probe::packed_probe::candidate+0x108e> @ imm = #0x62
    92ca: bf00         	nop
    92cc: 00 24 74 cb  	.word	0xcb742400
    92d0: 00 24 74 4b  	.word	0x4b742400
    92d4: 00 bf 00 bf  	.word	0xbf00bf00
    92d8: eec8 2aa3    	vdiv.f32	s5, s17, s7
    92dc: eef7 5a00    	vmov.f32	s11, #1.000000e+00
    92e0: ee62 2aa2    	vmul.f32	s5, s5, s5
    92e4: eef0 6a65    	vmov.f32	s13, s11
    92e8: ee62 2aa2    	vmul.f32	s5, s5, s5
    92ec: ee62 2aa2    	vmul.f32	s5, s5, s5
    92f0: ee62 2aa2    	vmul.f32	s5, s5, s5
    92f4: ee72 4aa5    	vadd.f32	s9, s5, s11
    92f8: eef4 4a65    	vcmp.f32	s9, s11
    92fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9300: d009         	beq	0x9316 <ram_probe::packed_probe::candidate+0x1076> @ imm = #0x12
    9302: eef0 6a64    	vmov.f32	s13, s9
    9306: eef1 6ae6    	vsqrt.f32	s13, s13
    930a: eef1 6ae6    	vsqrt.f32	s13, s13
    930e: eef1 6ae6    	vsqrt.f32	s13, s13
    9312: eef1 6ae6    	vsqrt.f32	s13, s13
    9316: eec5 6aa6    	vdiv.f32	s13, s11, s13
    931a: ee68 2aa2    	vmul.f32	s5, s17, s5
    931e: eec6 5aa4    	vdiv.f32	s11, s13, s9
    9322: eec2 3aa3    	vdiv.f32	s7, s5, s7
    9326: ee68 2aa6    	vmul.f32	s5, s17, s13
    932a: ee63 4aa5    	vmul.f32	s9, s7, s11
    932e: ee7d 2a62    	vsub.f32	s5, s26, s5
    9332: 2900         	cmp	r1, #0x0
    9334: fe0f 9aad    	vseleq.f32	s18, s31, s27
    9338: ee12 0a90    	vmov	r0, s5
    933c: f020 4000    	bic	r0, r0, #0x80000000
    9340: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9344: db08         	blt	0x9358 <ram_probe::packed_probe::candidate+0x10b8> @ imm = #0x10
    9346: eddf 6aba    	vldr	s13, [pc, #744]         @ 0x9630 <ram_probe::packed_probe::candidate+0x1390>
    934a: e00f         	b	0x936c <ram_probe::packed_probe::candidate+0x10cc> @ imm = #0x1e
    934c: bf00         	nop
    934e: bf00         	nop
    9350: 1c 38 88 77  	.word	0x7788381c
    9354: bf 13 e1 bf  	.word	0xbfe113bf
    9358: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    935c: ed5f 6a5a    	vldr	s13, [pc, #-360]        @ 0x91f8 <ram_probe::packed_probe::candidate+0xf58>
    9360: eec2 3aa3    	vdiv.f32	s7, s5, s7
    9364: eef0 3ae3    	vabs.f32	s7, s7
    9368: fec3 6aa6    	vmaxnm.f32	s13, s7, s13
    936c: ee70 3a88    	vadd.f32	s7, s1, s16
    9370: ee70 7a8b    	vadd.f32	s15, s1, s22
    9374: eec3 3a80    	vdiv.f32	s7, s7, s0
    9378: ee87 ca80    	vdiv.f32	s24, s15, s0
    937c: eef4 3a4c    	vcmp.f32	s7, s24
    9380: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9384: f201 8080    	bhi.w	0xa488 <ram_probe::packed_probe::candidate+0x21e8> @ imm = #0x1100
    9388: edcd 8a16    	vstr	s17, [sp, #88]
    938c: 2000         	movs	r0, #0x0
    938e: ed9d 8b10    	vldr	d8, [sp, #64]
    9392: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    9396: ee29 9a25    	vmul.f32	s18, s18, s11
    939a: ed9d bb0e    	vldr	d11, [sp, #56]
    939e: 2100         	movs	r1, #0x0
    93a0: ee38 8b4b    	vsub.f64	d8, d8, d11
    93a4: ed9f bb74    	vldr	d11, [pc, #464]         @ 0x9578 <ram_probe::packed_probe::candidate+0x12d8>
    93a8: ed9d eb0c    	vldr	d14, [sp, #48]
    93ac: ee0e 8b0b    	vmla.f64	d8, d14, d11
    93b0: ed9d bb42    	vldr	d11, [sp, #264]
    93b4: eef7 7bc8    	vcvt.f32.f64	s15, d8
    93b8: eeb7 bbcb    	vcvt.f32.f64	s22, d11
    93bc: ee27 8aa9    	vmul.f32	s16, s15, s19
    93c0: ee00 8aac    	vmla.f32	s16, s1, s25
    93c4: eddf 0ad7    	vldr	s1, [pc, #860]          @ 0x9724 <ram_probe::packed_probe::candidate+0x1484>
    93c8: ee0d ba04    	vmla.f32	s22, s26, s8
    93cc: ee01 ba20    	vmla.f32	s22, s2, s1
    93d0: eef4 3a48    	vcmp.f32	s7, s16
    93d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93d8: fe33 4a88    	vselgt.f32	s8, s7, s16
    93dc: eeb4 4a4c    	vcmp.f32	s8, s24
    93e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93e4: eeb4 8a63    	vcmp.f32	s16, s7
    93e8: eddf 3acf    	vldr	s7, [pc, #828]          @ 0x9728 <ram_probe::packed_probe::candidate+0x1488>
    93ec: ee62 7a23    	vmul.f32	s15, s4, s7
    93f0: fe7c ea04    	vselgt.f32	s29, s24, s8
    93f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    93f8: ee37 4a8b    	vadd.f32	s8, s15, s22
    93fc: eeb4 8a4c    	vcmp.f32	s16, s24
    9400: bfc8         	it	gt
    9402: 2001         	movgt	r0, #0x1
    9404: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9408: eeb5 4a40    	vcmp.f32	s8, #0
    940c: eef0 bac4    	vabs.f32	s23, s8
    9410: ed1f 4a87    	vldr	s8, [pc, #-540]         @ 0x91f8 <ram_probe::packed_probe::candidate+0xf58>
    9414: eef0 5a44    	vmov.f32	s11, s8
    9418: eeb0 ea44    	vmov.f32	s28, s8
    941c: bf48         	it	mi
    941e: 2101         	movmi	r1, #0x1
    9420: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9424: bf48         	it	mi
    9426: eef0 5a43    	vmovmi.f32	s11, s6
    942a: eef4 ba4f    	vcmp.f32	s23, s30
    942e: eeb0 ca44    	vmov.f32	s24, s8
    9432: fe30 da25    	vselgt.f32	s26, s0, s11
    9436: eef0 9a44    	vmov.f32	s19, s8
    943a: eeb0 fa44    	vmov.f32	s30, s8
    943e: 4001         	ands	r1, r0
    9440: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9444: eddf 5add    	vldr	s11, [pc, #884]         @ 0x97bc <ram_probe::packed_probe::candidate+0x151c>
    9448: f280 80cf    	bge.w	0x95ea <ram_probe::packed_probe::candidate+0x134a> @ imm = #0x19e
    944c: ed9f 8a18    	vldr	s16, [pc, #96]          @ 0x94b0 <ram_probe::packed_probe::candidate+0x1210>
    9450: eef4 ba48    	vcmp.f32	s23, s16
    9454: ed1f ca98    	vldr	s24, [pc, #-608]        @ 0x91f8 <ram_probe::packed_probe::candidate+0xf58>
    9458: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    945c: d914         	bls	0x9488 <ram_probe::packed_probe::candidate+0x11e8> @ imm = #0x28
    945e: ed9f 8a15    	vldr	s16, [pc, #84]          @ 0x94b4 <ram_probe::packed_probe::candidate+0x1214>
    9462: eef4 ba48    	vcmp.f32	s23, s16
    9466: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    946a: d925         	bls	0x94b8 <ram_probe::packed_probe::candidate+0x1218> @ imm = #0x4a
    946c: ed9f 8a40    	vldr	s16, [pc, #256]         @ 0x9570 <ram_probe::packed_probe::candidate+0x12d0>
    9470: eeb0 ba08    	vmov.f32	s22, #3.000000e+00
    9474: ee3b 8a88    	vadd.f32	s16, s23, s16
    9478: ed9f ea3e    	vldr	s28, [pc, #248]         @ 0x9574 <ram_probe::packed_probe::candidate+0x12d4>
    947c: e024         	b	0x94c8 <ram_probe::packed_probe::candidate+0x1228> @ imm = #0x48
    947e: bf00         	nop
    9480: 00 a0 0c 48  	.word	0x480ca000
    9484: 00 bf 00 bf  	.word	0xbf00bf00
    9488: eeb7 ba08    	vmov.f32	s22, #1.500000e+00
    948c: eeb0 ea4c    	vmov.f32	s28, s24
    9490: e01e         	b	0x94d0 <ram_probe::packed_probe::candidate+0x1230> @ imm = #0x3c
    9492: bf00         	nop
    9494: 50 d0 e8 36  	.word	0x36e8d050
    9498: 0a d7 23 3d  	.word	0x3d23d70a
    949c: 79 61 2e 43  	.word	0x432e6179
    94a0: 00 00 00 80  	.word	0x80000000
    94a4: 79 61 2e c3  	.word	0xc32e6179
    94a8: 83 c0 96 b8  	.word	0xb896c083
    94ac: d6 f8 e4 36  	.word	0x36e4f8d6
    94b0: 7c f2 b0 3a  	.word	0x3ab0f27c
    94b4: a6 9b c4 3b  	.word	0x3bc49ba6
    94b8: ed9f 8a34    	vldr	s16, [pc, #208]         @ 0x958c <ram_probe::packed_probe::candidate+0x12ec>
    94bc: eeb7 ba08    	vmov.f32	s22, #1.500000e+00
    94c0: ee3b 8a88    	vadd.f32	s16, s23, s16
    94c4: ed9f ea32    	vldr	s28, [pc, #200]         @ 0x9590 <ram_probe::packed_probe::candidate+0x12f0>
    94c8: ee08 ba0e    	vmla.f32	s22, s16, s28
    94cc: ee2d ea0e    	vmul.f32	s28, s26, s28
    94d0: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    94d4: eeb1 ea4e    	vneg.f32	s28, s28
    94d8: ee38 8a4b    	vsub.f32	s16, s16, s22
    94dc: fe88 da0c    	vmaxnm.f32	s26, s16, s24
    94e0: eeb5 da40    	vcmp.f32	s26, #0
    94e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    94e8: d94a         	bls	0x9580 <ram_probe::packed_probe::candidate+0x12e0> @ imm = #0x94
    94ea: eeb0 baee    	vabs.f32	s22, s29
    94ee: eeb4 ba4d    	vcmp.f32	s22, s26
    94f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    94f6: d94f         	bls	0x9598 <ram_probe::packed_probe::candidate+0x12f8> @ imm = #0x9e
    94f8: eecd 9a0b    	vdiv.f32	s19, s26, s22
    94fc: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    9500: ee29 8aa9    	vmul.f32	s16, s19, s19
    9504: eeb0 fa4b    	vmov.f32	s30, s22
    9508: ee28 8a08    	vmul.f32	s16, s16, s16
    950c: ee28 8a08    	vmul.f32	s16, s16, s16
    9510: ee68 ba08    	vmul.f32	s23, s16, s16
    9514: ee3b ca8b    	vadd.f32	s24, s23, s22
    9518: eeb4 ca4b    	vcmp.f32	s24, s22
    951c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9520: d009         	beq	0x9536 <ram_probe::packed_probe::candidate+0x1296> @ imm = #0x12
    9522: eeb0 fa4c    	vmov.f32	s30, s24
    9526: eeb1 facf    	vsqrt.f32	s30, s30
    952a: eeb1 facf    	vsqrt.f32	s30, s30
    952e: eeb1 facf    	vsqrt.f32	s30, s30
    9532: eeb1 facf    	vsqrt.f32	s30, s30
    9536: ee8b ba0f    	vdiv.f32	s22, s22, s30
    953a: eef4 ea6e    	vcmp.f32	s29, s29
    953e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9542: eecb ca0c    	vdiv.f32	s25, s22, s24
    9546: f181 805f    	bvs.w	0xa608 <ram_probe::packed_probe::candidate+0x2368> @ imm = #0x10be
    954a: ee1e 0a90    	vmov	r0, s29
    954e: f04f 527e    	mov.w	r2, #0x3f800000
    9552: f362 001e    	bfi	r0, r2, #0, #31
    9556: ee08 0a10    	vmov	s16, r0
    955a: ee28 ca0d    	vmul.f32	s24, s16, s26
    955e: ee28 fa2c    	vmul.f32	s30, s16, s25
    9562: ee2c ca0b    	vmul.f32	s24, s24, s22
    9566: ee29 8aab    	vmul.f32	s16, s19, s23
    956a: ee68 9a2c    	vmul.f32	s19, s16, s25
    956e: e03c         	b	0x95ea <ram_probe::packed_probe::candidate+0x134a> @ imm = #0x78
    9570: a6 9b c4 bb  	.word	0xbbc49ba6
    9574: 79 78 b0 43  	.word	0x43b07879
    9578: 67 42 87 92  	.word	0x92874267
    957c: ba 86 d4 bf  	.word	0xbfd486ba
    9580: eef0 9a4c    	vmov.f32	s19, s24
    9584: eeb0 fa4c    	vmov.f32	s30, s24
    9588: e02f         	b	0x95ea <ram_probe::packed_probe::candidate+0x134a> @ imm = #0x5e
    958a: bf00         	nop
    958c: 7c f2 b0 ba  	.word	0xbab0f27c
    9590: 53 4a a1 43  	.word	0x43a14a53
    9594: 00 bf 00 bf  	.word	0xbf00bf00
    9598: ee8e 8a8d    	vdiv.f32	s16, s29, s26
    959c: eeb0 fa40    	vmov.f32	s30, s0
    95a0: ee28 8a08    	vmul.f32	s16, s16, s16
    95a4: ee28 8a08    	vmul.f32	s16, s16, s16
    95a8: ee28 8a08    	vmul.f32	s16, s16, s16
    95ac: ee28 ba08    	vmul.f32	s22, s16, s16
    95b0: ee3b ca00    	vadd.f32	s24, s22, s0
    95b4: eeb4 ca40    	vcmp.f32	s24, s0
    95b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    95bc: d009         	beq	0x95d2 <ram_probe::packed_probe::candidate+0x1332> @ imm = #0x12
    95be: eeb0 fa4c    	vmov.f32	s30, s24
    95c2: eeb1 facf    	vsqrt.f32	s30, s30
    95c6: eeb1 facf    	vsqrt.f32	s30, s30
    95ca: eeb1 facf    	vsqrt.f32	s30, s30
    95ce: eeb1 facf    	vsqrt.f32	s30, s30
    95d2: ee80 8a0f    	vdiv.f32	s16, s0, s30
    95d6: ee2e ba8b    	vmul.f32	s22, s29, s22
    95da: eec8 9a0c    	vdiv.f32	s19, s16, s24
    95de: ee8b ba0d    	vdiv.f32	s22, s22, s26
    95e2: ee2e ca88    	vmul.f32	s24, s29, s16
    95e6: ee2b fa29    	vmul.f32	s30, s22, s19
    95ea: 2900         	cmp	r1, #0x0
    95ec: ee31 ca4c    	vsub.f32	s24, s2, s24
    95f0: ee27 da24    	vmul.f32	s26, s14, s9
    95f4: ed9f 7ab1    	vldr	s14, [pc, #708]         @ 0x98bc <ram_probe::packed_probe::candidate+0x161c>
    95f8: fe0f 8aad    	vseleq.f32	s16, s31, s27
    95fc: eddf cab0    	vldr	s25, [pc, #704]         @ 0x98c0 <ram_probe::packed_probe::candidate+0x1620>
    9600: ee1c 0a10    	vmov	r0, s24
    9604: ee69 5a25    	vmul.f32	s11, s18, s11
    9608: ee6e ba0f    	vmul.f32	s23, s28, s30
    960c: ed9f faad    	vldr	s30, [pc, #692]         @ 0x98c4 <ram_probe::packed_probe::candidate+0x1624>
    9610: ee68 9a29    	vmul.f32	s19, s16, s19
    9614: eddf daac    	vldr	s27, [pc, #688]         @ 0x98c8 <ram_probe::packed_probe::candidate+0x1628>
    9618: f020 4000    	bic	r0, r0, #0x80000000
    961c: eddf 4aab    	vldr	s9, [pc, #684]          @ 0x98cc <ram_probe::packed_probe::candidate+0x162c>
    9620: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9624: ee29 ea87    	vmul.f32	s28, s19, s14
    9628: db06         	blt	0x9638 <ram_probe::packed_probe::candidate+0x1398> @ imm = #0xc
    962a: eddf 6a01    	vldr	s13, [pc, #4]           @ 0x9630 <ram_probe::packed_probe::candidate+0x1390>
    962e: e01b         	b	0x9668 <ram_probe::packed_probe::candidate+0x13c8> @ imm = #0x36
    9630: 00 00 80 7f  	.word	0x7f800000
    9634: 00 bf 00 bf  	.word	0xbf00bf00
    9638: eeb2 7a0e    	vmov.f32	s14, #1.500000e+01
    963c: eef4 6a66    	vcmp.f32	s13, s13
    9640: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9644: ee8c 7a07    	vdiv.f32	s14, s24, s14
    9648: eeb0 7ac7    	vabs.f32	s14, s14
    964c: fe57 6a26    	vselvs.f32	s13, s14, s13
    9650: eeb4 7a47    	vcmp.f32	s14, s14
    9654: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9658: fe16 7a87    	vselvs.f32	s14, s13, s14
    965c: eef4 6a47    	vcmp.f32	s13, s14
    9660: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9664: fe76 6a87    	vselgt.f32	s13, s13, s14
    9668: ed9f 7a99    	vldr	s14, [pc, #612]         @ 0x98d0 <ram_probe::packed_probe::candidate+0x1630>
    966c: ee4d 5a2c    	vmla.f32	s11, s26, s25
    9670: ee02 5a07    	vmla.f32	s10, s4, s14
    9674: ed9f 7a97    	vldr	s14, [pc, #604]         @ 0x98d4 <ram_probe::packed_probe::candidate+0x1634>
    9678: ee02 6a07    	vmla.f32	s12, s4, s14
    967c: 210d         	movs	r1, #0xd
    967e: ed9d 8b12    	vldr	d8, [sp, #72]
    9682: ee29 7a21    	vmul.f32	s14, s18, s3
    9686: eef7 1bc8    	vcvt.f32.f64	s3, d8
    968a: ee41 1a23    	vmla.f32	s3, s2, s7
    968e: ee0b eaad    	vmla.f32	s28, s23, s27
    9692: eeb4 5a46    	vcmp.f32	s10, s12
    9696: fe85 5a46    	vminnm.f32	s10, s10, s12
    969a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    969e: ee2b 6aa4    	vmul.f32	s12, s23, s9
    96a2: ee7a cac5    	vsub.f32	s25, s21, s10
    96a6: eeb8 5a00    	vmov.f32	s10, #-2.000000e+00
    96aa: ee71 1ae7    	vsub.f32	s3, s3, s15
    96ae: eddf 7a8a    	vldr	s15, [pc, #552]         @ 0x98d8 <ram_probe::packed_probe::candidate+0x1638>
    96b2: bf88         	it	hi
    96b4: 210e         	movhi	r1, #0xe
    96b6: eef4 ca45    	vcmp.f32	s25, s10
    96ba: ee2b 5a8f    	vmul.f32	s10, s23, s30
    96be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    96c2: d939         	bls	0x9738 <ram_probe::packed_probe::candidate+0x1498> @ imm = #0x72
    96c4: eef4 ca6c    	vcmp.f32	s25, s25
    96c8: eddf ba84    	vldr	s23, [pc, #528]         @ 0x98dc <ram_probe::packed_probe::candidate+0x163c>
    96cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    96d0: eeb0 9a6b    	vmov.f32	s18, s23
    96d4: ed9f ba82    	vldr	s22, [pc, #520]         @ 0x98e0 <ram_probe::packed_probe::candidate+0x1640>
    96d8: fe1b 8aac    	vselvs.f32	s16, s23, s25
    96dc: eddf da81    	vldr	s27, [pc, #516]         @ 0x98e4 <ram_probe::packed_probe::candidate+0x1644>
    96e0: eeb5 8a40    	vcmp.f32	s16, #0
    96e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    96e8: bfb8         	it	lt
    96ea: eeb0 9a48    	vmovlt.f32	s18, s16
    96ee: eeb0 8a40    	vmov.f32	s16, s0
    96f2: eef5 ca40    	vcmp.f32	s25, #0
    96f6: ee09 8a2a    	vmla.f32	s16, s18, s21
    96fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    96fe: ee28 8a0b    	vmul.f32	s16, s16, s22
    9702: fe88 9a2d    	vmaxnm.f32	s18, s16, s27
    9706: d51b         	bpl	0x9740 <ram_probe::packed_probe::candidate+0x14a0> @ imm = #0x36
    9708: eeb0 8a40    	vmov.f32	s16, s0
    970c: ee0c 8aaa    	vmla.f32	s16, s25, s21
    9710: ee28 8a0b    	vmul.f32	s16, s16, s22
    9714: eeb4 8a6d    	vcmp.f32	s16, s27
    9718: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    971c: bfc8         	it	gt
    971e: eddf ba72    	vldrgt	s23, [pc, #456]         @ 0x98e8 <ram_probe::packed_probe::candidate+0x1648>
    9722: e00d         	b	0x9740 <ram_probe::packed_probe::candidate+0x14a0> @ imm = #0x1a
    9724: af e6 27 b9  	.word	0xb927e6af
    9728: 79 2e 02 39  	.word	0x39022e79
    972c: cd 1e 2c 3e  	.word	0x3e2c1ecd
    9730: d2 4e da 43  	.word	0x43da4ed2
    9734: df ff e7 36  	.word	0x36e7ffdf
    9738: eddf ba68    	vldr	s23, [pc, #416]         @ 0x98dc <ram_probe::packed_probe::candidate+0x163c>
    973c: ed9f 9a69    	vldr	s18, [pc, #420]         @ 0x98e4 <ram_probe::packed_probe::candidate+0x1644>
    9740: f64b 7098    	movw	r0, #0xbf98
    9744: ee09 6a84    	vmla.f32	s12, s19, s8
    9748: f2c0 0000    	movt	r0, #0x0
    974c: ee22 4a2b    	vmul.f32	s8, s4, s23
    9750: eb00 1081    	add.w	r0, r0, r1, lsl #6
    9754: ee52 1a09    	vnmls.f32	s3, s4, s18
    9758: ee09 5aa7    	vmla.f32	s10, s19, s15
    975c: eef0 7a47    	vmov.f32	s15, s14
    9760: ed90 0b0c    	vldr	d0, [r0, #48]
    9764: ee0d 7a0f    	vmla.f32	s14, s26, s30
    9768: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    976c: ee4d 7a2f    	vmla.f32	s15, s26, s31
    9770: ed90 bb0a    	vldr	d11, [r0, #40]
    9774: ee44 3a40    	vmls.f32	s7, s8, s0
    9778: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    977c: eef1 2a62    	vneg.f32	s5, s5
    9780: ed90 8b08    	vldr	d8, [r0, #32]
    9784: ee44 4a40    	vmls.f32	s9, s8, s0
    9788: ee11 0a90    	vmov	r0, s3
    978c: eef7 0bc8    	vcvt.f32.f64	s1, d8
    9790: eeb7 8a00    	vmov.f32	s16, #1.000000e+00
    9794: ee39 9a23    	vadd.f32	s18, s18, s7
    9798: f020 4000    	bic	r0, r0, #0x80000000
    979c: ee20 dac4    	vnmul.f32	s26, s1, s8
    97a0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    97a4: ee75 3a88    	vadd.f32	s7, s11, s16
    97a8: ee3e ea08    	vadd.f32	s28, s28, s16
    97ac: eef1 5a4c    	vneg.f32	s11, s24
    97b0: eeb1 ca61    	vneg.f32	s24, s3
    97b4: db10         	blt	0x97d8 <ram_probe::packed_probe::candidate+0x1538> @ imm = #0x20
    97b6: ed1f 4a62    	vldr	s8, [pc, #-392]         @ 0x9630 <ram_probe::packed_probe::candidate+0x1390>
    97ba: e025         	b	0x9808 <ram_probe::packed_probe::candidate+0x1568> @ imm = #0x4a
    97bc: fc 9d 08 bf  	.word	0xbf089dfc
		...
    97c8: e6 a7 5c a0  	.word	0xa05ca7e6
    97cc: 06 41 d9 3f  	.word	0x3fd94106
    97d0: 19 d5 65 36  	.word	0x3665d519
    97d4: d0 6e 95 bf  	.word	0xbf956ed0
    97d8: ed9f 0af9    	vldr	s0, [pc, #996]          @ 0x9bc0 <ram_probe::packed_probe::candidate+0x1920>
    97dc: eef4 6a66    	vcmp.f32	s13, s13
    97e0: ee81 0a80    	vdiv.f32	s0, s3, s0
    97e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97e8: eeb0 0ac0    	vabs.f32	s0, s0
    97ec: fe10 4a26    	vselvs.f32	s8, s0, s13
    97f0: eeb4 0a40    	vcmp.f32	s0, s0
    97f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97f8: fe14 0a00    	vselvs.f32	s0, s8, s0
    97fc: eeb4 4a40    	vcmp.f32	s8, s0
    9800: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9804: fe34 4a00    	vselgt.f32	s8, s8, s0
    9808: ed9f 0aee    	vldr	s0, [pc, #952]          @ 0x9bc4 <ram_probe::packed_probe::candidate+0x1924>
    980c: ed8d ea67    	vstr	s28, [sp, #412]
    9810: eeb4 4a40    	vcmp.f32	s8, s0
    9814: ed8d 6a68    	vstr	s12, [sp, #416]
    9818: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    981c: edcd 4a6a    	vstr	s9, [sp, #424]
    9820: ed8d 9a6b    	vstr	s18, [sp, #428]
    9824: edcd 5a83    	vstr	s11, [sp, #524]
    9828: ed8d ca84    	vstr	s24, [sp, #528]
    982c: edcd 3a63    	vstr	s7, [sp, #396]
    9830: ed8d 7a64    	vstr	s14, [sp, #400]
    9834: edcd 7a65    	vstr	s15, [sp, #404]
    9838: ed8d 5a66    	vstr	s10, [sp, #408]
    983c: ed8d da69    	vstr	s26, [sp, #420]
    9840: edcd 2a82    	vstr	s5, [sp, #520]
    9844: f240 81d0    	bls.w	0x9be8 <ram_probe::packed_probe::candidate+0x1948> @ imm = #0x3a0
    9848: 4640         	mov	r0, r8
    984a: eef0 0a4a    	vmov.f32	s1, s20
    984e: e8bc 004e    	ldm.w	r12!, {r1, r2, r3, r6}
    9852: c04e         	stm	r0!, {r1, r2, r3, r6}
    9854: e89c 004e    	ldm.w	r12, {r1, r2, r3, r6}
    9858: c04e         	stm	r0!, {r1, r2, r3, r6}
    985a: ed9d 8a19    	vldr	s16, [sp, #100]
    985e: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    9862: eeb0 0a48    	vmov.f32	s0, s16
    9866: 3001         	adds	r0, #0x1
    9868: f8c4 010c    	str.w	r0, [r4, #0x10c]
    986c: a863         	add	r0, sp, #0x18c
    986e: aa38         	add	r2, sp, #0xe0
    9870: ab5e         	add	r3, sp, #0x178
    9872: 4641         	mov	r1, r8
    9874: f7f9 f844    	bl	0x2900 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>> @ imm = #-0x6f78
    9878: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    987c: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    9880: 2801         	cmp	r0, #0x1
    9882: 4489         	add	r9, r1
    9884: d138         	bne	0x98f8 <ram_probe::packed_probe::candidate+0x1658> @ imm = #0x70
    9886: ed9d 1a1a    	vldr	s2, [sp, #104]
    988a: ed9d 0a63    	vldr	s0, [sp, #396]
    988e: eeb4 1a41    	vcmp.f32	s2, s2
    9892: eddd 9a1b    	vldr	s19, [sp, #108]
    9896: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    989a: eeb4 0a40    	vcmp.f32	s0, s0
    989e: eddf faca    	vldr	s31, [pc, #808]         @ 0x9bc8 <ram_probe::packed_probe::candidate+0x1928>
    98a2: fe10 1a01    	vselvs.f32	s2, s0, s2
    98a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    98aa: fe11 0a00    	vselvs.f32	s0, s2, s0
    98ae: eeb4 1a40    	vcmp.f32	s2, s0
    98b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    98b6: fe31 9a00    	vselgt.f32	s18, s2, s0
    98ba: e055         	b	0x9968 <ram_probe::packed_probe::candidate+0x16c8> @ imm = #0xaa
    98bc: d5 35 a4 be  	.word	0xbea435d5
    98c0: 83 c0 96 38  	.word	0x3896c083
    98c4: d6 f8 e4 b6  	.word	0xb6e4f8d6
    98c8: af e6 27 39  	.word	0x3927e6af
    98cc: 79 2e 02 b9  	.word	0xb9022e79
    98d0: 99 76 cd 39  	.word	0x39cd7699
    98d4: 51 e6 7f bf  	.word	0xbf7fe651
    98d8: 6f f3 03 be  	.word	0xbe03f36f
    98dc: 00 00 00 00  	.word	0x00000000
    98e0: 2b 18 95 3b  	.word	0x3b95182b
    98e4: 95 bf d6 33  	.word	0x33d6bf95
    98e8: 2b 18 15 3b  	.word	0x3b15182b
    98ec: 00 24 f4 ca  	.word	0xcaf42400
    98f0: d1 a7 00 a5  	.word	0xa500a7d1
    98f4: f6 46 24 40  	.word	0x402446f6
    98f8: eeb0 0a48    	vmov.f32	s0, s16
    98fc: eef0 0a4a    	vmov.f32	s1, s20
    9900: a863         	add	r0, sp, #0x18c
    9902: a956         	add	r1, sp, #0x158
    9904: aa38         	add	r2, sp, #0xe0
    9906: ab5e         	add	r3, sp, #0x178
    9908: 2500         	movs	r5, #0x0
    990a: 955c         	str	r5, [sp, #0x170]
    990c: e9cd 555a    	strd	r5, r5, [sp, #360]
    9910: f7f8 fff6    	bl	0x2900 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>> @ imm = #-0x7014
    9914: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    9918: eddf faab    	vldr	s31, [pc, #684]         @ 0x9bc8 <ram_probe::packed_probe::candidate+0x1928>
    991c: 3001         	adds	r0, #0x1
    991e: bf28         	it	hs
    9920: f04f 30ff    	movhs.w	r0, #0xffffffff
    9924: ed9d 1a1a    	vldr	s2, [sp, #104]
    9928: ed9d 0a63    	vldr	s0, [sp, #396]
    992c: eeb4 1a41    	vcmp.f32	s2, s2
    9930: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    9934: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9938: eeb4 0a40    	vcmp.f32	s0, s0
    993c: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    9940: fe10 1a01    	vselvs.f32	s2, s0, s2
    9944: 4489         	add	r9, r1
    9946: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    994a: eddd 9a1b    	vldr	s19, [sp, #108]
    994e: f8c4 011c    	str.w	r0, [r4, #0x11c]
    9952: fe11 2a00    	vselvs.f32	s4, s2, s0
    9956: eeb4 1a42    	vcmp.f32	s2, s4
    995a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    995e: fe31 9a02    	vselgt.f32	s18, s2, s4
    9962: 2a00         	cmp	r2, #0x0
    9964: f000 82cc    	beq.w	0x9f00 <ram_probe::packed_probe::candidate+0x1c60> @ imm = #0x598
    9968: 4641         	mov	r1, r8
    996a: 4650         	mov	r0, r10
    996c: ed1f 4b6c    	vldr	d4, [pc, #-432]         @ 0x97c0 <ram_probe::packed_probe::candidate+0x1520>
    9970: c96c         	ldm	r1!, {r2, r3, r5, r6}
    9972: c06c         	stm	r0!, {r2, r3, r5, r6}
    9974: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
    9978: c06c         	stm	r0!, {r2, r3, r5, r6}
    997a: ed9d 0a56    	vldr	s0, [sp, #344]
    997e: ed9d 1a57    	vldr	s2, [sp, #348]
    9982: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    9986: ed9d 2a58    	vldr	s4, [sp, #352]
    998a: ed9d ab50    	vldr	d10, [sp, #320]
    998e: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    9992: ed9f 6a8e    	vldr	s12, [pc, #568]         @ 0x9bcc <ram_probe::packed_probe::candidate+0x192c>
    9996: eeb0 3b4a    	vmov.f64	d3, d10
    999a: ed9f 7a8d    	vldr	s14, [pc, #564]         @ 0x9bd0 <ram_probe::packed_probe::candidate+0x1930>
    999e: ee00 3b04    	vmla.f64	d3, d0, d4
    99a2: eeb7 0ac2    	vcvt.f64.f32	d0, s4
    99a6: ee01 3b04    	vmla.f64	d3, d1, d4
    99aa: ed9d 1a59    	vldr	s2, [sp, #356]
    99ae: ee00 3b04    	vmla.f64	d3, d0, d4
    99b2: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    99b6: ed9d 1a5a    	vldr	s2, [sp, #360]
    99ba: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    99be: ed1f 2b7e    	vldr	d2, [pc, #-504]         @ 0x97c8 <ram_probe::packed_probe::candidate+0x1528>
    99c2: ee00 3b04    	vmla.f64	d3, d0, d4
    99c6: ed9d 0a5b    	vldr	s0, [sp, #364]
    99ca: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    99ce: ee01 3b04    	vmla.f64	d3, d1, d4
    99d2: ee20 1b02    	vmul.f64	d1, d0, d2
    99d6: ed9d 0a5c    	vldr	s0, [sp, #368]
    99da: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    99de: ee33 3b01    	vadd.f64	d3, d3, d1
    99e2: ee20 2b02    	vmul.f64	d2, d0, d2
    99e6: ed9f 0a7b    	vldr	s0, [pc, #492]          @ 0x9bd4 <ram_probe::packed_probe::candidate+0x1934>
    99ea: ee29 0a80    	vmul.f32	s0, s19, s0
    99ee: ed9f 5b7a    	vldr	d5, [pc, #488]          @ 0x9bd8 <ram_probe::packed_probe::candidate+0x1938>
    99f2: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    99f6: ee33 3b42    	vsub.f64	d3, d3, d2
    99fa: ee30 6a06    	vadd.f32	s12, s0, s12
    99fe: ee84 4b05    	vdiv.f64	d4, d4, d5
    9a02: ed9f 5b77    	vldr	d5, [pc, #476]          @ 0x9be0 <ram_probe::packed_probe::candidate+0x1940>
    9a06: ee86 fa07    	vdiv.f32	s30, s12, s14
    9a0a: ee03 4b05    	vmla.f64	d4, d3, d5
    9a0e: ed1f 5a49    	vldr	s10, [pc, #-292]        @ 0x98ec <ram_probe::packed_probe::candidate+0x164c>
    9a12: ed1f 3b49    	vldr	d3, [pc, #-292]         @ 0x98f0 <ram_probe::packed_probe::candidate+0x1650>
    9a16: ee30 5a05    	vadd.f32	s10, s0, s10
    9a1a: ee84 3b03    	vdiv.f64	d3, d4, d3
    9a1e: eebb 4a05    	vmov.f32	s8, #-2.100000e+01
    9a22: ee85 ea07    	vdiv.f32	s28, s10, s14
    9a26: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    9a2a: eeb4 4a43    	vcmp.f32	s8, s6
    9a2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9a32: fe34 3a03    	vselgt.f32	s6, s8, s6
    9a36: eeb3 4a05    	vmov.f32	s8, #2.100000e+01
    9a3a: eeb4 3a44    	vcmp.f32	s6, s8
    9a3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9a42: eeb4 ea4f    	vcmp.f32	s28, s30
    9a46: fe34 8a03    	vselgt.f32	s16, s8, s6
    9a4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9a4e: ed8d 8a5d    	vstr	s16, [sp, #372]
    9a52: f200 850d    	bhi.w	0xa470 <ram_probe::packed_probe::candidate+0x21d0> @ imm = #0xa1a
    9a56: ee3a 1b01    	vadd.f64	d1, d10, d1
    9a5a: a87a         	add	r0, sp, #0x1e8
    9a5c: ed1f dacd    	vldr	s26, [pc, #-820]        @ 0x972c <ram_probe::packed_probe::candidate+0x148c>
    9a60: ed1f 3ba5    	vldr	d3, [pc, #-660]         @ 0x97d0 <ram_probe::packed_probe::candidate+0x1530>
    9a64: ee31 1b42    	vsub.f64	d1, d1, d2
    9a68: eeb7 2ac8    	vcvt.f64.f32	d2, s16
    9a6c: ed9d bb46    	vldr	d11, [sp, #280]
    9a70: ee02 1b03    	vmla.f64	d1, d2, d3
    9a74: ed1f 2ad2    	vldr	s4, [pc, #-840]         @ 0x9730 <ram_probe::packed_probe::candidate+0x1490>
    9a78: eef7 0bcb    	vcvt.f32.f64	s1, d11
    9a7c: ee48 0a4d    	vmls.f32	s1, s16, s26
    9a80: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    9a84: ee61 8a02    	vmul.f32	s17, s2, s4
    9a88: ed1f 1ad6    	vldr	s2, [pc, #-856]         @ 0x9734 <ram_probe::packed_probe::candidate+0x1494>
    9a8c: ee40 8a01    	vmla.f32	s17, s0, s2
    9a90: eeb4 ea68    	vcmp.f32	s28, s17
    9a94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9a98: fe3e 0a28    	vselgt.f32	s0, s28, s17
    9a9c: eeb4 0a4f    	vcmp.f32	s0, s30
    9aa0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9aa4: fe3f ca00    	vselgt.f32	s24, s30, s0
    9aa8: eeb0 0a4c    	vmov.f32	s0, s24
    9aac: f7fa fb60    	bl	0x4170 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #-0x5940
    9ab0: ed9d 0a7a    	vldr	s0, [sp, #488]
    9ab4: f60f 3068    	adr.w	r0, #2920
    9ab8: ee38 1a40    	vsub.f32	s2, s16, s0
    9abc: eef4 8a4f    	vcmp.f32	s17, s30
    9ac0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ac4: bf48         	it	mi
    9ac6: 3004         	addmi	r0, #0x4
    9ac8: eef4 8a4e    	vcmp.f32	s17, s28
    9acc: ee11 1a10    	vmov	r1, s2
    9ad0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ad4: ed90 0a00    	vldr	s0, [r0]
    9ad8: fe30 2a2f    	vselgt.f32	s4, s0, s31
    9adc: f021 4000    	bic	r0, r1, #0x80000000
    9ae0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9ae4: da3c         	bge	0x9b60 <ram_probe::packed_probe::candidate+0x18c0> @ imm = #0x78
    9ae6: eeb0 0ac1    	vabs.f32	s0, s2
    9aea: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    9aee: ee80 0a03    	vdiv.f32	s0, s0, s6
    9af2: ed9f 3a34    	vldr	s6, [pc, #208]          @ 0x9bc4 <ram_probe::packed_probe::candidate+0x1924>
    9af6: eeb4 0a43    	vcmp.f32	s0, s6
    9afa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9afe: d82f         	bhi	0x9b60 <ram_probe::packed_probe::candidate+0x18c0> @ imm = #0x5e
    9b00: ed9d 3a7b    	vldr	s6, [sp, #492]
    9b04: ed9f 4ae3    	vldr	s8, [pc, #908]          @ 0x9e94 <ram_probe::packed_probe::candidate+0x1bf4>
    9b08: ee22 2a03    	vmul.f32	s4, s4, s6
    9b0c: ed9d 5a7c    	vldr	s10, [sp, #496]
    9b10: eeb0 3ac8    	vabs.f32	s6, s16
    9b14: ee22 2a04    	vmul.f32	s4, s4, s8
    9b18: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    9b1c: eeb4 3a43    	vcmp.f32	s6, s6
    9b20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9b24: ee05 2a0d    	vmla.f32	s4, s10, s26
    9b28: fe14 3a03    	vselvs.f32	s6, s8, s6
    9b2c: eeb4 3a44    	vcmp.f32	s6, s8
    9b30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9b34: ee32 2a04    	vadd.f32	s4, s4, s8
    9b38: fe33 3a04    	vselgt.f32	s6, s6, s8
    9b3c: ee81 1a02    	vdiv.f32	s2, s2, s4
    9b40: ed9f 2af4    	vldr	s4, [pc, #976]          @ 0x9f14 <ram_probe::packed_probe::candidate+0x1c74>
    9b44: ee23 2a02    	vmul.f32	s4, s6, s4
    9b48: ed9f 3af3    	vldr	s6, [pc, #972]          @ 0x9f18 <ram_probe::packed_probe::candidate+0x1c78>
    9b4c: eeb0 1ac1    	vabs.f32	s2, s2
    9b50: fe82 2a43    	vminnm.f32	s4, s4, s6
    9b54: eeb4 1a42    	vcmp.f32	s2, s4
    9b58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9b5c: f240 81e0    	bls.w	0x9f20 <ram_probe::packed_probe::candidate+0x1c80> @ imm = #0x3c0
    9b60: 4640         	mov	r0, r8
    9b62: eeb0 2a69    	vmov.f32	s4, s19
    9b66: e8ba 004e    	ldm.w	r10!, {r1, r2, r3, r6}
    9b6a: c04e         	stm	r0!, {r1, r2, r3, r6}
    9b6c: e89a 004e    	ldm.w	r10, {r1, r2, r3, r6}
    9b70: c04e         	stm	r0!, {r1, r2, r3, r6}
    9b72: eeb0 0b4b    	vmov.f64	d0, d11
    9b76: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    9b7a: eeb0 1b4a    	vmov.f64	d1, d10
    9b7e: 3001         	adds	r0, #0x1
    9b80: f8c4 010c    	str.w	r0, [r4, #0x10c]
    9b84: a863         	add	r0, sp, #0x18c
    9b86: aa5e         	add	r2, sp, #0x178
    9b88: 4641         	mov	r1, r8
    9b8a: f7fa f8e9    	bl	0x3d60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>> @ imm = #-0x5e2e
    9b8e: f89d 0191    	ldrb.w	r0, [sp, #0x191]
    9b92: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    9b96: 2800         	cmp	r0, #0x0
    9b98: 4489         	add	r9, r1
    9b9a: f000 817d    	beq.w	0x9e98 <ram_probe::packed_probe::candidate+0x1bf8> @ imm = #0x2fa
    9b9e: eeb4 9a49    	vcmp.f32	s18, s18
    9ba2: ed9d 0a63    	vldr	s0, [sp, #396]
    9ba6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9baa: eeb4 0a40    	vcmp.f32	s0, s0
    9bae: fe10 1a09    	vselvs.f32	s2, s0, s18
    9bb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9bb6: e9cd 9b1a    	strd	r9, r11, [sp, #104]
    9bba: fe11 0a00    	vselvs.f32	s0, s2, s0
    9bbe: e1c4         	b	0x9f4a <ram_probe::packed_probe::candidate+0x1caa> @ imm = #0x388
    9bc0: 0a d7 23 3c  	.word	0x3c23d70a
    9bc4: 17 b7 d1 38  	.word	0x38d1b717
    9bc8: 00 00 00 80  	.word	0x80000000
    9bcc: 00 24 f4 4a  	.word	0x4af42400
    9bd0: 00 a0 0c 48  	.word	0x480ca000
    9bd4: 00 80 bb 47  	.word	0x47bb8000
    9bd8: 85 42 fe de  	.word	0xdefe4285
    9bdc: bb a7 01 41  	.word	0x4101a7bb
    9be0: b4 cf 84 3d  	.word	0x3d84cfb4
    9be4: da 49 7b 40  	.word	0x407b49da
    9be8: eeb0 0ac5    	vabs.f32	s0, s10
    9bec: 2200         	movs	r2, #0x0
    9bee: eeb0 6ae3    	vabs.f32	s12, s7
    9bf2: f50d 7ec6    	add.w	lr, sp, #0x18c
    9bf6: eeb4 0a46    	vcmp.f32	s0, s12
    9bfa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9bfe: bfc8         	it	gt
    9c00: 2201         	movgt	r2, #0x1
    9c02: fe35 0a23    	vselgt.f32	s0, s10, s7
    9c06: eeb0 5acd    	vabs.f32	s10, s26
    9c0a: eeb0 0ac0    	vabs.f32	s0, s0
    9c0e: eeb4 5a40    	vcmp.f32	s10, s0
    9c12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9c16: bfc8         	it	gt
    9c18: 2202         	movgt	r2, #0x2
    9c1a: eb02 0042    	add.w	r0, r2, r2, lsl #1
    9c1e: eb0a 0180    	add.w	r1, r10, r0, lsl #2
    9c22: f85a 0020    	ldr.w	r0, [r10, r0, lsl #2]
    9c26: e9d1 3601    	ldrd	r3, r6, [r1, #4]
    9c2a: e88e 0049    	stm.w	lr, {r0, r3, r6}
    9c2e: edc1 3a00    	vstr	s7, [r1]
    9c32: f50d 7e02    	add.w	lr, sp, #0x208
    9c36: ed81 7a01    	vstr	s14, [r1, #4]
    9c3a: edc1 7a02    	vstr	s15, [r1, #8]
    9c3e: eb0e 0182    	add.w	r1, lr, r2, lsl #2
    9c42: ed9d 5a63    	vldr	s10, [sp, #396]
    9c46: f85e 2022    	ldr.w	r2, [lr, r2, lsl #2]
    9c4a: ee15 0a10    	vmov	r0, s10
    9c4e: 9282         	str	r2, [sp, #0x208]
    9c50: edc1 2a00    	vstr	s5, [r1]
    9c54: f020 4000    	bic	r0, r0, #0x80000000
    9c58: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9c5c: f6bf adf4    	bge.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #-0x418
    9c60: eeb0 0ac5    	vabs.f32	s0, s10
    9c64: ed9f 6aad    	vldr	s12, [pc, #692]         @ 0x9f1c <ram_probe::packed_probe::candidate+0x1c7c>
    9c68: eeb4 0a46    	vcmp.f32	s0, s12
    9c6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9c70: f53f adea    	bmi.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #-0x42c
    9c74: ed9d 0a69    	vldr	s0, [sp, #420]
    9c78: ed9d 7a66    	vldr	s14, [sp, #408]
    9c7c: ee80 0a05    	vdiv.f32	s0, s0, s10
    9c80: eddd 3a6a    	vldr	s7, [sp, #424]
    9c84: eec7 0a05    	vdiv.f32	s1, s14, s10
    9c88: ed9d 7a64    	vldr	s14, [sp, #400]
    9c8c: eddd 4a67    	vldr	s9, [sp, #412]
    9c90: eddd 1a82    	vldr	s3, [sp, #520]
    9c94: ee47 3a40    	vmls.f32	s7, s14, s0
    9c98: eddd 2a65    	vldr	s5, [sp, #404]
    9c9c: ee40 4ac7    	vmls.f32	s9, s1, s14
    9ca0: eddd 5a68    	vldr	s11, [sp, #416]
    9ca4: ee40 5ae2    	vmls.f32	s11, s1, s5
    9ca8: eddd 6a83    	vldr	s13, [sp, #524]
    9cac: ee40 6ae1    	vmls.f32	s13, s1, s3
    9cb0: f10a 000c    	add.w	r0, r10, #0xc
    9cb4: 4602         	mov	r2, r0
    9cb6: edcd 3a6a    	vstr	s7, [sp, #424]
    9cba: edcd 4a67    	vstr	s9, [sp, #412]
    9cbe: eef0 0ae3    	vabs.f32	s1, s7
    9cc2: edcd 5a68    	vstr	s11, [sp, #416]
    9cc6: eef0 7ae4    	vabs.f32	s15, s9
    9cca: eddd 4a6b    	vldr	s9, [sp, #428]
    9cce: ee42 4ac0    	vmls.f32	s9, s5, s0
    9cd2: edcd 6a83    	vstr	s13, [sp, #524]
    9cd6: eef4 0a67    	vcmp.f32	s1, s15
    9cda: eddd 0a84    	vldr	s1, [sp, #528]
    9cde: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ce2: bfc8         	it	gt
    9ce4: f10a 0218    	addgt.w	r2, r10, #0x18
    9ce8: edcd 4a6b    	vstr	s9, [sp, #428]
    9cec: 6803         	ldr	r3, [r0]
    9cee: e9d2 6500    	ldrd	r6, r5, [r2]
    9cf2: 6891         	ldr	r1, [r2, #0x8]
    9cf4: 6006         	str	r6, [r0]
    9cf6: 6846         	ldr	r6, [r0, #0x4]
    9cf8: 6045         	str	r5, [r0, #0x4]
    9cfa: 6885         	ldr	r5, [r0, #0x8]
    9cfc: 6081         	str	r1, [r0, #0x8]
    9cfe: ee41 0ac0    	vmls.f32	s1, s3, s0
    9d02: f04f 0004    	mov.w	r0, #0x4
    9d06: e9c2 6501    	strd	r6, r5, [r2, #4]
    9d0a: eddd 3a67    	vldr	s7, [sp, #412]
    9d0e: ee13 1a90    	vmov	r1, s7
    9d12: bfc8         	it	gt
    9d14: 2008         	movgt	r0, #0x8
    9d16: edcd 0a84    	vstr	s1, [sp, #528]
    9d1a: 6013         	str	r3, [r2]
    9d1c: f85e 2000    	ldr.w	r2, [lr, r0]
    9d20: 4470         	add	r0, lr
    9d22: f021 4100    	bic	r1, r1, #0x80000000
    9d26: f1b1 4fff    	cmp.w	r1, #0x7f800000
    9d2a: 9283         	str	r2, [sp, #0x20c]
    9d2c: edc0 6a00    	vstr	s13, [r0]
    9d30: f6bf ad8a    	bge.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #-0x4ec
    9d34: eeb0 0ae3    	vabs.f32	s0, s7
    9d38: eeb4 0a46    	vcmp.f32	s0, s12
    9d3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d40: f53f ad82    	bmi.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #-0x4fc
    9d44: ed9d 0a6a    	vldr	s0, [sp, #424]
    9d48: eddd 6a6b    	vldr	s13, [sp, #428]
    9d4c: eec0 5a23    	vdiv.f32	s11, s0, s7
    9d50: eddd 4a68    	vldr	s9, [sp, #416]
    9d54: ee45 6ae4    	vmls.f32	s13, s11, s9
    9d58: ee16 0a90    	vmov	r0, s13
    9d5c: f020 4000    	bic	r0, r0, #0x80000000
    9d60: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9d64: f6bf ad70    	bge.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #-0x520
    9d68: eeb0 0ae6    	vabs.f32	s0, s13
    9d6c: eeb4 0a46    	vcmp.f32	s0, s12
    9d70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d74: f53f ad68    	bmi.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #-0x530
    9d78: ed9d 0a83    	vldr	s0, [sp, #524]
    9d7c: ed9d 6a84    	vldr	s12, [sp, #528]
    9d80: ee05 6ac0    	vmls.f32	s12, s11, s0
    9d84: eddd 0a18    	vldr	s1, [sp, #96]
    9d88: eef0 0ae0    	vabs.f32	s1, s1
    9d8c: eef4 0a60    	vcmp.f32	s1, s1
    9d90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d94: ee86 6a26    	vdiv.f32	s12, s12, s13
    9d98: ee04 0ac6    	vmls.f32	s0, s9, s12
    9d9c: eec0 3a23    	vdiv.f32	s7, s0, s7
    9da0: fe18 0a20    	vselvs.f32	s0, s16, s1
    9da4: ee47 1a63    	vmls.f32	s3, s14, s7
    9da8: eeb4 0a48    	vcmp.f32	s0, s16
    9dac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9db0: ee42 1ac6    	vmls.f32	s3, s5, s12
    9db4: fe30 7a08    	vselgt.f32	s14, s0, s16
    9db8: ed9f 0a56    	vldr	s0, [pc, #344]          @ 0x9f14 <ram_probe::packed_probe::candidate+0x1c74>
    9dbc: ee27 7a00    	vmul.f32	s14, s14, s0
    9dc0: ee81 5a85    	vdiv.f32	s10, s3, s10
    9dc4: eef0 0ac5    	vabs.f32	s1, s10
    9dc8: ed9f 5a53    	vldr	s10, [pc, #332]         @ 0x9f18 <ram_probe::packed_probe::candidate+0x1c78>
    9dcc: fe87 7a45    	vminnm.f32	s14, s14, s10
    9dd0: eef4 0a47    	vcmp.f32	s1, s14
    9dd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dd8: f63f ad36    	bhi.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #-0x594
    9ddc: eeb0 1ac1    	vabs.f32	s2, s2
    9de0: eeb0 7ae3    	vabs.f32	s14, s7
    9de4: eeb4 1a41    	vcmp.f32	s2, s2
    9de8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dec: fe18 1a01    	vselvs.f32	s2, s16, s2
    9df0: eeb4 1a48    	vcmp.f32	s2, s16
    9df4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9df8: fe31 1a08    	vselgt.f32	s2, s2, s16
    9dfc: ee21 1a00    	vmul.f32	s2, s2, s0
    9e00: fe81 1a45    	vminnm.f32	s2, s2, s10
    9e04: eeb4 7a41    	vcmp.f32	s14, s2
    9e08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e0c: f63f ad1c    	bhi.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #-0x5c8
    9e10: eeb0 1ac2    	vabs.f32	s2, s4
    9e14: eeb4 1a41    	vcmp.f32	s2, s2
    9e18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e1c: fe18 1a01    	vselvs.f32	s2, s16, s2
    9e20: eeb4 1a48    	vcmp.f32	s2, s16
    9e24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e28: fe31 1a08    	vselgt.f32	s2, s2, s16
    9e2c: ee21 0a00    	vmul.f32	s0, s2, s0
    9e30: eeb0 1ac6    	vabs.f32	s2, s12
    9e34: fe80 0a45    	vminnm.f32	s0, s0, s10
    9e38: eeb4 1a40    	vcmp.f32	s2, s0
    9e3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e40: f63f ad02    	bhi.w	0x9848 <ram_probe::packed_probe::candidate+0x15a8> @ imm = #-0x5fc
    9e44: ed9d 0a1a    	vldr	s0, [sp, #104]
    9e48: f8d4 0108    	ldr.w	r0, [r4, #0x108]
    9e4c: eeb4 0a40    	vcmp.f32	s0, s0
    9e50: f8d4 1110    	ldr.w	r1, [r4, #0x110]
    9e54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e58: eeb4 4a44    	vcmp.f32	s8, s8
    9e5c: eddd 9a1b    	vldr	s19, [sp, #108]
    9e60: fe14 0a00    	vselvs.f32	s0, s8, s0
    9e64: ed9d 2a16    	vldr	s4, [sp, #88]
    9e68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e6c: ed8d 2a60    	vstr	s4, [sp, #384]
    9e70: f100 0001    	add.w	r0, r0, #0x1
    9e74: fe10 1a04    	vselvs.f32	s2, s0, s8
    9e78: edcd ea61    	vstr	s29, [sp, #388]
    9e7c: f8c4 0108    	str.w	r0, [r4, #0x108]
    9e80: 1c48         	adds	r0, r1, #0x1
    9e82: f8c4 0110    	str.w	r0, [r4, #0x110]
    9e86: eeb4 0a41    	vcmp.f32	s0, s2
    9e8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e8e: fe30 9a01    	vselgt.f32	s18, s0, s2
    9e92: e569         	b	0x9968 <ram_probe::packed_probe::candidate+0x16c8> @ imm = #-0x52e
    9e94: 82 76 ab bc  	.word	0xbcab7682
    9e98: eeb0 0b4b    	vmov.f64	d0, d11
    9e9c: a863         	add	r0, sp, #0x18c
    9e9e: eeb0 1b4a    	vmov.f64	d1, d10
    9ea2: a956         	add	r1, sp, #0x158
    9ea4: eeb0 2a69    	vmov.f32	s4, s19
    9ea8: aa5e         	add	r2, sp, #0x178
    9eaa: 2500         	movs	r5, #0x0
    9eac: 955d         	str	r5, [sp, #0x174]
    9eae: f7f9 ff57    	bl	0x3d60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>> @ imm = #-0x6152
    9eb2: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    9eb6: eeb4 9a49    	vcmp.f32	s18, s18
    9eba: 3001         	adds	r0, #0x1
    9ebc: bf28         	it	hs
    9ebe: f04f 30ff    	movhs.w	r0, #0xffffffff
    9ec2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ec6: ed9d 0a63    	vldr	s0, [sp, #396]
    9eca: f89d 1190    	ldrb.w	r1, [sp, #0x190]
    9ece: fe10 1a09    	vselvs.f32	s2, s0, s18
    9ed2: f89d 2191    	ldrb.w	r2, [sp, #0x191]
    9ed6: eeb4 0a40    	vcmp.f32	s0, s0
    9eda: 4489         	add	r9, r1
    9edc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ee0: f8c4 011c    	str.w	r0, [r4, #0x11c]
    9ee4: fe11 2a00    	vselvs.f32	s4, s2, s0
    9ee8: eeb4 1a42    	vcmp.f32	s2, s4
    9eec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ef0: fe31 1a02    	vselgt.f32	s2, s2, s4
    9ef4: b122         	cbz	r2, 0x9f00 <ram_probe::packed_probe::candidate+0x1c60> @ imm = #0x8
    9ef6: ed8d 1a00    	vstr	s2, [sp]
    9efa: e9cd 9b1a    	strd	r9, r11, [sp, #104]
    9efe: e02c         	b	0x9f5a <ram_probe::packed_probe::candidate+0x1cba> @ imm = #0x58
    9f00: 69e0         	ldr	r0, [r4, #0x1c]
    9f02: f8cb 0000    	str.w	r0, [r11]
    9f06: ed8b 0a01    	vstr	s0, [r11, #4]
    9f0a: f88b 9008    	strb.w	r9, [r11, #0x8]
    9f0e: f88b 5009    	strb.w	r5, [r11, #0x9]
    9f12: e1ed         	b	0xa2f0 <ram_probe::packed_probe::candidate+0x2050> @ imm = #0x3da
    9f14: bd 37 06 36  	.word	0x360637bd
    9f18: ac c5 a7 37  	.word	0x37a7c5ac
    9f1c: 08 e5 3c 1e  	.word	0x1e3ce508
    9f20: eeb4 9a49    	vcmp.f32	s18, s18
    9f24: f8d4 0114    	ldr.w	r0, [r4, #0x114]
    9f28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f2c: eeb4 0a40    	vcmp.f32	s0, s0
    9f30: ed8d ca62    	vstr	s24, [sp, #392]
    9f34: fe10 1a09    	vselvs.f32	s2, s0, s18
    9f38: 3001         	adds	r0, #0x1
    9f3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f3e: e9cd 9b1a    	strd	r9, r11, [sp, #104]
    9f42: fe11 0a00    	vselvs.f32	s0, s2, s0
    9f46: f8c4 0114    	str.w	r0, [r4, #0x114]
    9f4a: eeb4 1a40    	vcmp.f32	s2, s0
    9f4e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f52: fe31 0a00    	vselgt.f32	s0, s2, s0
    9f56: ed8d 0a00    	vstr	s0, [sp]
    9f5a: a863         	add	r0, sp, #0x18c
    9f5c: a91c         	add	r1, sp, #0x70
    9f5e: aa56         	add	r2, sp, #0x158
    9f60: ed9d 0a0b    	vldr	s0, [sp, #44]
    9f64: f7f6 ff40    	bl	0xde8 <orange_dsp::generated_packed::update::<5>> @ imm = #-0x9180
    9f68: eddd 2a6e    	vldr	s5, [sp, #440]
    9f6c: eddd 3a6f    	vldr	s7, [sp, #444]
    9f70: eddd da64    	vldr	s27, [sp, #400]
    9f74: ee12 2a90    	vmov	r2, s5
    9f78: ee1d 0a90    	vmov	r0, s27
    9f7c: eddd 4a70    	vldr	s9, [sp, #448]
    9f80: 9208         	str	r2, [sp, #0x20]
    9f82: ee13 2a90    	vmov	r2, s7
    9f86: eddd 5a71    	vldr	s11, [sp, #452]
    9f8a: eddd fa66    	vldr	s31, [sp, #408]
    9f8e: eddd ea65    	vldr	s29, [sp, #404]
    9f92: 920b         	str	r2, [sp, #0x2c]
    9f94: ee14 2a90    	vmov	r2, s9
    9f98: ee15 8a90    	vmov	r8, s11
    9f9c: f020 4000    	bic	r0, r0, #0x80000000
    9fa0: ee1e 1a90    	vmov	r1, s29
    9fa4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9fa8: f04f 0000    	mov.w	r0, #0x0
    9fac: ed9d 3a67    	vldr	s6, [sp, #412]
    9fb0: ed9d 4a68    	vldr	s8, [sp, #416]
    9fb4: ed9d 5a69    	vldr	s10, [sp, #420]
    9fb8: ed9d 6a6a    	vldr	s12, [sp, #424]
    9fbc: ed9d 7a6b    	vldr	s14, [sp, #428]
    9fc0: eddd 0a6c    	vldr	s1, [sp, #432]
    9fc4: eddd 1a6d    	vldr	s3, [sp, #436]
    9fc8: 920c         	str	r2, [sp, #0x30]
    9fca: f8cd 8038    	str.w	r8, [sp, #0x38]
    9fce: ee1f 5a90    	vmov	r5, s31
    9fd2: bfa8         	it	ge
    9fd4: 2001         	movge	r0, #0x1
    9fd6: ee13 6a10    	vmov	r6, s6
    9fda: ee14 3a10    	vmov	r3, s8
    9fde: 9019         	str	r0, [sp, #0x64]
    9fe0: f021 4000    	bic	r0, r1, #0x80000000
    9fe4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9fe8: f04f 0000    	mov.w	r0, #0x0
    9fec: bfa8         	it	ge
    9fee: 2001         	movge	r0, #0x1
    9ff0: ee15 ca10    	vmov	r12, s10
    9ff4: ee16 ea10    	vmov	lr, s12
    9ff8: 9018         	str	r0, [sp, #0x60]
    9ffa: f025 4000    	bic	r0, r5, #0x80000000
    9ffe: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a002: f04f 0000    	mov.w	r0, #0x0
    a006: bfa8         	it	ge
    a008: 2001         	movge	r0, #0x1
    a00a: ee17 9a10    	vmov	r9, s14
    a00e: ee10 ba90    	vmov	r11, s1
    a012: 9016         	str	r0, [sp, #0x58]
    a014: f026 4000    	bic	r0, r6, #0x80000000
    a018: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a01c: f04f 0000    	mov.w	r0, #0x0
    a020: bfa8         	it	ge
    a022: 2001         	movge	r0, #0x1
    a024: ee11 aa90    	vmov	r10, s3
    a028: f04f 0800    	mov.w	r8, #0x0
    a02c: 9014         	str	r0, [sp, #0x50]
    a02e: f023 4000    	bic	r0, r3, #0x80000000
    a032: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a036: f04f 0000    	mov.w	r0, #0x0
    a03a: bfa8         	it	ge
    a03c: 2001         	movge	r0, #0x1
    a03e: 9012         	str	r0, [sp, #0x48]
    a040: f02c 4000    	bic	r0, r12, #0x80000000
    a044: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a048: f04f 0000    	mov.w	r0, #0x0
    a04c: bfa8         	it	ge
    a04e: 2001         	movge	r0, #0x1
    a050: f04f 0c00    	mov.w	r12, #0x0
    a054: 9010         	str	r0, [sp, #0x40]
    a056: f02e 4000    	bic	r0, lr, #0x80000000
    a05a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a05e: f04f 0000    	mov.w	r0, #0x0
    a062: bfa8         	it	ge
    a064: 2001         	movge	r0, #0x1
    a066: f04f 0e00    	mov.w	lr, #0x0
    a06a: 9007         	str	r0, [sp, #0x1c]
    a06c: f029 4000    	bic	r0, r9, #0x80000000
    a070: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a074: f04f 0000    	mov.w	r0, #0x0
    a078: bfa8         	it	ge
    a07a: 2001         	movge	r0, #0x1
    a07c: f04f 0900    	mov.w	r9, #0x0
    a080: 9006         	str	r0, [sp, #0x18]
    a082: f02b 4000    	bic	r0, r11, #0x80000000
    a086: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a08a: f04f 0000    	mov.w	r0, #0x0
    a08e: bfa8         	it	ge
    a090: 2001         	movge	r0, #0x1
    a092: f04f 0b00    	mov.w	r11, #0x0
    a096: 9005         	str	r0, [sp, #0x14]
    a098: f02a 4000    	bic	r0, r10, #0x80000000
    a09c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a0a0: f04f 0000    	mov.w	r0, #0x0
    a0a4: bfa8         	it	ge
    a0a6: 2001         	movge	r0, #0x1
    a0a8: f04f 0a00    	mov.w	r10, #0x0
    a0ac: 9004         	str	r0, [sp, #0x10]
    a0ae: 9808         	ldr	r0, [sp, #0x20]
    a0b0: f020 4000    	bic	r0, r0, #0x80000000
    a0b4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a0b8: f04f 0000    	mov.w	r0, #0x0
    a0bc: bfa8         	it	ge
    a0be: 2001         	movge	r0, #0x1
    a0c0: 9008         	str	r0, [sp, #0x20]
    a0c2: 980b         	ldr	r0, [sp, #0x2c]
    a0c4: f020 4000    	bic	r0, r0, #0x80000000
    a0c8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a0cc: f04f 0000    	mov.w	r0, #0x0
    a0d0: bfa8         	it	ge
    a0d2: 2001         	movge	r0, #0x1
    a0d4: 900b         	str	r0, [sp, #0x2c]
    a0d6: 980c         	ldr	r0, [sp, #0x30]
    a0d8: f020 4000    	bic	r0, r0, #0x80000000
    a0dc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a0e0: f04f 0000    	mov.w	r0, #0x0
    a0e4: bfa8         	it	ge
    a0e6: 2001         	movge	r0, #0x1
    a0e8: eddd ca72    	vldr	s25, [sp, #456]
    a0ec: 900c         	str	r0, [sp, #0x30]
    a0ee: 980e         	ldr	r0, [sp, #0x38]
    a0f0: f020 4000    	bic	r0, r0, #0x80000000
    a0f4: ee1c 1a90    	vmov	r1, s25
    a0f8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a0fc: f04f 0000    	mov.w	r0, #0x0
    a100: bfa8         	it	ge
    a102: 2001         	movge	r0, #0x1
    a104: eddd 7a73    	vldr	s15, [sp, #460]
    a108: 900e         	str	r0, [sp, #0x38]
    a10a: f021 4000    	bic	r0, r1, #0x80000000
    a10e: ee17 1a90    	vmov	r1, s15
    a112: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a116: f04f 0000    	mov.w	r0, #0x0
    a11a: bfa8         	it	ge
    a11c: 2001         	movge	r0, #0x1
    a11e: ed9d 8a74    	vldr	s16, [sp, #464]
    a122: 9003         	str	r0, [sp, #0xc]
    a124: f021 4000    	bic	r0, r1, #0x80000000
    a128: ee18 1a10    	vmov	r1, s16
    a12c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a130: f04f 0000    	mov.w	r0, #0x0
    a134: bfa8         	it	ge
    a136: 2001         	movge	r0, #0x1
    a138: ed9d 9a75    	vldr	s18, [sp, #468]
    a13c: 9002         	str	r0, [sp, #0x8]
    a13e: f021 4000    	bic	r0, r1, #0x80000000
    a142: ee19 1a10    	vmov	r1, s18
    a146: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a14a: f04f 0000    	mov.w	r0, #0x0
    a14e: bfa8         	it	ge
    a150: 2001         	movge	r0, #0x1
    a152: ed9d aa76    	vldr	s20, [sp, #472]
    a156: 9001         	str	r0, [sp, #0x4]
    a158: f021 4000    	bic	r0, r1, #0x80000000
    a15c: ee1a 1a10    	vmov	r1, s20
    a160: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a164: bfa8         	it	ge
    a166: f04f 0e01    	movge.w	lr, #0x1
    a16a: ed9d ba77    	vldr	s22, [sp, #476]
    a16e: f021 4000    	bic	r0, r1, #0x80000000
    a172: ee1b 1a10    	vmov	r1, s22
    a176: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a17a: bfa8         	it	ge
    a17c: f04f 0901    	movge.w	r9, #0x1
    a180: ed9d ca78    	vldr	s24, [sp, #480]
    a184: f021 4100    	bic	r1, r1, #0x80000000
    a188: ee1c 2a10    	vmov	r2, s24
    a18c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    a190: bfa8         	it	ge
    a192: f04f 0b01    	movge.w	r11, #0x1
    a196: ed9d da79    	vldr	s26, [sp, #484]
    a19a: ee1d 3a10    	vmov	r3, s26
    a19e: f022 4200    	bic	r2, r2, #0x80000000
    a1a2: f1b2 4fff    	cmp.w	r2, #0x7f800000
    a1a6: f04f 0200    	mov.w	r2, #0x0
    a1aa: bfa8         	it	ge
    a1ac: 2201         	movge	r2, #0x1
    a1ae: f023 4300    	bic	r3, r3, #0x80000000
    a1b2: ed9d ea5e    	vldr	s28, [sp, #376]
    a1b6: f1b3 4fff    	cmp.w	r3, #0x7f800000
    a1ba: f04f 0300    	mov.w	r3, #0x0
    a1be: ee1e 6a10    	vmov	r6, s28
    a1c2: bfa8         	it	ge
    a1c4: 2301         	movge	r3, #0x1
    a1c6: ed9d fa5f    	vldr	s30, [sp, #380]
    a1ca: ee1f 5a10    	vmov	r5, s30
    a1ce: f026 4600    	bic	r6, r6, #0x80000000
    a1d2: f1b6 4fff    	cmp.w	r6, #0x7f800000
    a1d6: bfa8         	it	ge
    a1d8: f04f 0c01    	movge.w	r12, #0x1
    a1dc: eddd 8a60    	vldr	s17, [sp, #384]
    a1e0: f025 4500    	bic	r5, r5, #0x80000000
    a1e4: ee18 6a90    	vmov	r6, s17
    a1e8: f1b5 4fff    	cmp.w	r5, #0x7f800000
    a1ec: f04f 0500    	mov.w	r5, #0x0
    a1f0: bfa8         	it	ge
    a1f2: 2501         	movge	r5, #0x1
    a1f4: eddd 9a61    	vldr	s19, [sp, #388]
    a1f8: f026 4600    	bic	r6, r6, #0x80000000
    a1fc: ee19 0a90    	vmov	r0, s19
    a200: f1b6 4fff    	cmp.w	r6, #0x7f800000
    a204: f04f 0600    	mov.w	r6, #0x0
    a208: eddd aa62    	vldr	s21, [sp, #392]
    a20c: bfa8         	it	ge
    a20e: 2601         	movge	r6, #0x1
    a210: f020 4000    	bic	r0, r0, #0x80000000
    a214: eddd ba63    	vldr	s23, [sp, #396]
    a218: ee1a 1a90    	vmov	r1, s21
    a21c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a220: ee1b 0a90    	vmov	r0, s23
    a224: bfa8         	it	ge
    a226: f04f 0801    	movge.w	r8, #0x1
    a22a: f021 4100    	bic	r1, r1, #0x80000000
    a22e: f020 4000    	bic	r0, r0, #0x80000000
    a232: f1b1 4fff    	cmp.w	r1, #0x7f800000
    a236: bfa8         	it	ge
    a238: f04f 0a01    	movge.w	r10, #0x1
    a23c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a240: f04f 0100    	mov.w	r1, #0x0
    a244: da4a         	bge	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x94
    a246: 9819         	ldr	r0, [sp, #0x64]
    a248: 2800         	cmp	r0, #0x0
    a24a: bf04         	itt	eq
    a24c: 9818         	ldreq	r0, [sp, #0x60]
    a24e: 2800         	cmpeq	r0, #0x0
    a250: d144         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x88
    a252: 9816         	ldr	r0, [sp, #0x58]
    a254: 2800         	cmp	r0, #0x0
    a256: bf04         	itt	eq
    a258: 9814         	ldreq	r0, [sp, #0x50]
    a25a: 2800         	cmpeq	r0, #0x0
    a25c: d13e         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x7c
    a25e: 9812         	ldr	r0, [sp, #0x48]
    a260: 2800         	cmp	r0, #0x0
    a262: bf04         	itt	eq
    a264: 9810         	ldreq	r0, [sp, #0x40]
    a266: 2800         	cmpeq	r0, #0x0
    a268: d138         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x70
    a26a: 9807         	ldr	r0, [sp, #0x1c]
    a26c: 2800         	cmp	r0, #0x0
    a26e: bf04         	itt	eq
    a270: 9806         	ldreq	r0, [sp, #0x18]
    a272: 2800         	cmpeq	r0, #0x0
    a274: d132         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x64
    a276: 9805         	ldr	r0, [sp, #0x14]
    a278: 2800         	cmp	r0, #0x0
    a27a: bf04         	itt	eq
    a27c: 9804         	ldreq	r0, [sp, #0x10]
    a27e: 2800         	cmpeq	r0, #0x0
    a280: d12c         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x58
    a282: 9808         	ldr	r0, [sp, #0x20]
    a284: 2800         	cmp	r0, #0x0
    a286: bf04         	itt	eq
    a288: 980b         	ldreq	r0, [sp, #0x2c]
    a28a: 2800         	cmpeq	r0, #0x0
    a28c: d126         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x4c
    a28e: 980c         	ldr	r0, [sp, #0x30]
    a290: 2800         	cmp	r0, #0x0
    a292: bf04         	itt	eq
    a294: 980e         	ldreq	r0, [sp, #0x38]
    a296: 2800         	cmpeq	r0, #0x0
    a298: d120         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x40
    a29a: 9803         	ldr	r0, [sp, #0xc]
    a29c: 2800         	cmp	r0, #0x0
    a29e: bf04         	itt	eq
    a2a0: 9802         	ldreq	r0, [sp, #0x8]
    a2a2: 2800         	cmpeq	r0, #0x0
    a2a4: d11a         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x34
    a2a6: 9801         	ldr	r0, [sp, #0x4]
    a2a8: 2800         	cmp	r0, #0x0
    a2aa: bf08         	it	eq
    a2ac: f1be 0f00    	cmpeq.w	lr, #0x0
    a2b0: d114         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x28
    a2b2: f1b9 0f00    	cmp.w	r9, #0x0
    a2b6: bf08         	it	eq
    a2b8: f1bb 0f00    	cmpeq.w	r11, #0x0
    a2bc: d10e         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x1c
    a2be: 2a00         	cmp	r2, #0x0
    a2c0: bf08         	it	eq
    a2c2: 2b00         	cmpeq	r3, #0x0
    a2c4: d10a         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0x14
    a2c6: f1bc 0f00    	cmp.w	r12, #0x0
    a2ca: bf08         	it	eq
    a2cc: 2d00         	cmpeq	r5, #0x0
    a2ce: d105         	bne	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #0xa
    a2d0: 2e00         	cmp	r6, #0x0
    a2d2: bf08         	it	eq
    a2d4: f1b8 0f00    	cmpeq.w	r8, #0x0
    a2d8: f000 80e2    	beq.w	0xa4a0 <ram_probe::packed_probe::candidate+0x2200> @ imm = #0x1c4
    a2dc: 9a1b         	ldr	r2, [sp, #0x6c]
    a2de: 69e0         	ldr	r0, [r4, #0x1c]
    a2e0: 460b         	mov	r3, r1
    a2e2: f04f 41ff    	mov.w	r1, #0x7f800000
    a2e6: e9c2 0100    	strd	r0, r1, [r2]
    a2ea: 981a         	ldr	r0, [sp, #0x68]
    a2ec: 7210         	strb	r0, [r2, #0x8]
    a2ee: 7253         	strb	r3, [r2, #0x9]
    a2f0: f50d 7d08    	add.w	sp, sp, #0x220
    a2f4: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    a2f8: b001         	add	sp, #0x4
    a2fa: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    a2fe: bdf0         	pop	{r4, r5, r6, r7, pc}
    a300: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    a304: eef0 2a45    	vmov.f32	s5, s10
    a308: eef0 ca46    	vmov.f32	s25, s12
    a30c: ed8d 9b08    	vstr	d9, [sp, #32]
    a310: eeb0 9a40    	vmov.f32	s18, s0
    a314: ed9f 0ac0    	vldr	s0, [pc, #768]          @ 0xa618 <ram_probe::packed_probe::candidate+0x2378>
    a318: ee42 2a00    	vmla.f32	s5, s4, s0
    a31c: ed8d 2a5c    	vstr	s4, [sp, #368]
    a320: ee42 ca25    	vmla.f32	s25, s4, s11
    a324: eeb0 0a49    	vmov.f32	s0, s18
    a328: fe82 9aec    	vminnm.f32	s18, s5, s25
    a32c: ee3a cac9    	vsub.f32	s24, s21, s18
    a330: eeb8 9a00    	vmov.f32	s18, #-2.000000e+00
    a334: eeb4 ca49    	vcmp.f32	s24, s18
    a338: ed9d 9b08    	vldr	d9, [sp, #32]
    a33c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a340: f77e ae2f    	ble.w	0x8fa2 <ram_probe::packed_probe::candidate+0xd02> @ imm = #-0x13a2
    a344: eef4 2a6c    	vcmp.f32	s5, s25
    a348: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a34c: f63e ae29    	bhi.w	0x8fa2 <ram_probe::packed_probe::candidate+0xd02> @ imm = #-0x13ae
    a350: eeb5 ca40    	vcmp.f32	s24, #0
    a354: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a358: f57e ae23    	bpl.w	0x8fa2 <ram_probe::packed_probe::candidate+0xd02> @ imm = #-0x13ba
    a35c: eef0 2a66    	vmov.f32	s5, s13
    a360: ee4c 2a2a    	vmla.f32	s5, s24, s21
    a364: ed9f 9aad    	vldr	s18, [pc, #692]         @ 0xa61c <ram_probe::packed_probe::candidate+0x237c>
    a368: ee62 2a80    	vmul.f32	s5, s5, s0
    a36c: eef4 2a49    	vcmp.f32	s5, s18
    a370: ed9d 9b08    	vldr	d9, [sp, #32]
    a374: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a378: f77e ae13    	ble.w	0x8fa2 <ram_probe::packed_probe::candidate+0xd02> @ imm = #-0x13da
    a37c: f7fe be9a    	b.w	0x90b4 <ram_probe::packed_probe::candidate+0xe14> @ imm = #-0x12cc
    a380: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    a384: eeb0 8a40    	vmov.f32	s16, s0
    a388: ed9f 0aa3    	vldr	s0, [pc, #652]          @ 0xa618 <ram_probe::packed_probe::candidate+0x2378>
    a38c: eef0 2a45    	vmov.f32	s5, s10
    a390: eeb0 ca46    	vmov.f32	s24, s12
    a394: ee42 2a00    	vmla.f32	s5, s4, s0
    a398: ed8d 2a5c    	vstr	s4, [sp, #368]
    a39c: ee02 ca25    	vmla.f32	s24, s4, s11
    a3a0: eeb0 0a48    	vmov.f32	s0, s16
    a3a4: fe82 8acc    	vminnm.f32	s16, s5, s24
    a3a8: ee3a bac8    	vsub.f32	s22, s21, s16
    a3ac: eeb8 8a00    	vmov.f32	s16, #-2.000000e+00
    a3b0: eeb4 ba48    	vcmp.f32	s22, s16
    a3b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3b8: f77e ae36    	ble.w	0x9028 <ram_probe::packed_probe::candidate+0xd88> @ imm = #-0x1394
    a3bc: eeb4 ca62    	vcmp.f32	s24, s5
    a3c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3c4: f63e ae30    	bhi.w	0x9028 <ram_probe::packed_probe::candidate+0xd88> @ imm = #-0x13a0
    a3c8: eeb5 ba40    	vcmp.f32	s22, #0
    a3cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3d0: f57e ae2a    	bpl.w	0x9028 <ram_probe::packed_probe::candidate+0xd88> @ imm = #-0x13ac
    a3d4: eef0 2a66    	vmov.f32	s5, s13
    a3d8: ee4b 2a2a    	vmla.f32	s5, s22, s21
    a3dc: ed9f 8a8f    	vldr	s16, [pc, #572]         @ 0xa61c <ram_probe::packed_probe::candidate+0x237c>
    a3e0: ee62 2a80    	vmul.f32	s5, s5, s0
    a3e4: eef4 2a48    	vcmp.f32	s5, s16
    a3e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3ec: f77e ae1c    	ble.w	0x9028 <ram_probe::packed_probe::candidate+0xd88> @ imm = #-0x13c8
    a3f0: f7fe be60    	b.w	0x90b4 <ram_probe::packed_probe::candidate+0xe14> @ imm = #-0x1340
    a3f4: bf00         	nop
    a3f6: bf00         	nop
    a3f8: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    a3fc: eeb0 9a40    	vmov.f32	s18, s0
    a400: ed9f 0a85    	vldr	s0, [pc, #532]          @ 0xa618 <ram_probe::packed_probe::candidate+0x2378>
    a404: eef0 2a45    	vmov.f32	s5, s10
    a408: eef0 ca46    	vmov.f32	s25, s12
    a40c: ee42 2a00    	vmla.f32	s5, s4, s0
    a410: ed8d 2a5c    	vstr	s4, [sp, #368]
    a414: ee42 ca25    	vmla.f32	s25, s4, s11
    a418: eeb0 0a49    	vmov.f32	s0, s18
    a41c: fe82 9aec    	vminnm.f32	s18, s5, s25
    a420: ee3a cac9    	vsub.f32	s24, s21, s18
    a424: eeb8 9a00    	vmov.f32	s18, #-2.000000e+00
    a428: eeb4 ca49    	vcmp.f32	s24, s18
    a42c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a430: f77e adc2    	ble.w	0x8fb8 <ram_probe::packed_probe::candidate+0xd18> @ imm = #-0x147c
    a434: eef4 2a6c    	vcmp.f32	s5, s25
    a438: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a43c: f63e adbc    	bhi.w	0x8fb8 <ram_probe::packed_probe::candidate+0xd18> @ imm = #-0x1488
    a440: eeb5 ca40    	vcmp.f32	s24, #0
    a444: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a448: f57e adb6    	bpl.w	0x8fb8 <ram_probe::packed_probe::candidate+0xd18> @ imm = #-0x1494
    a44c: eef0 2a66    	vmov.f32	s5, s13
    a450: ee4c 2a2a    	vmla.f32	s5, s24, s21
    a454: ed9f 9a71    	vldr	s18, [pc, #452]         @ 0xa61c <ram_probe::packed_probe::candidate+0x237c>
    a458: ee62 2a80    	vmul.f32	s5, s5, s0
    a45c: eef4 2a49    	vcmp.f32	s5, s18
    a460: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a464: f77e ada8    	ble.w	0x8fb8 <ram_probe::packed_probe::candidate+0xd18> @ imm = #-0x14b0
    a468: f7fe be24    	b.w	0x90b4 <ram_probe::packed_probe::candidate+0xe14> @ imm = #-0x13b8
    a46c: bf00         	nop
    a46e: bf00         	nop
    a470: f64b 60b8    	movw	r0, #0xbeb8
    a474: f24c 3278    	movw	r2, #0xc378
    a478: f2c0 0000    	movt	r0, #0x0
    a47c: f2c0 0200    	movt	r2, #0x0
    a480: a97a         	add	r1, sp, #0x1e8
    a482: f000 f8d1    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #0x1a2
    a486: bf00         	nop
    a488: f64b 60b8    	movw	r0, #0xbeb8
    a48c: f24c 3278    	movw	r2, #0xc378
    a490: f2c0 0000    	movt	r0, #0x0
    a494: f2c0 0200    	movt	r2, #0x0
    a498: a963         	add	r1, sp, #0x18c
    a49a: f000 f8c5    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #0x18a
    a49e: bf00         	nop
    a4a0: f1ba 0f00    	cmp.w	r10, #0x0
    a4a4: f47f af1a    	bne.w	0xa2dc <ram_probe::packed_probe::candidate+0x203c> @ imm = #-0x1cc
    a4a8: f104 0120    	add.w	r1, r4, #0x20
    a4ac: f104 0090    	add.w	r0, r4, #0x90
    a4b0: 2270         	movs	r2, #0x70
    a4b2: ed8d 8a07    	vstr	s16, [sp, #28]
    a4b6: eeb0 8a43    	vmov.f32	s16, s6
    a4ba: ed8d 9a08    	vstr	s18, [sp, #32]
    a4be: eeb0 9a44    	vmov.f32	s18, s8
    a4c2: ed8d aa0b    	vstr	s20, [sp, #44]
    a4c6: eeb0 aa45    	vmov.f32	s20, s10
    a4ca: ed8d ba0c    	vstr	s22, [sp, #48]
    a4ce: eeb0 ba46    	vmov.f32	s22, s12
    a4d2: ed8d ca0e    	vstr	s24, [sp, #56]
    a4d6: eeb0 ca47    	vmov.f32	s24, s14
    a4da: ed8d da10    	vstr	s26, [sp, #64]
    a4de: eeb0 da60    	vmov.f32	s26, s1
    a4e2: ed8d ea12    	vstr	s28, [sp, #72]
    a4e6: eeb0 ea61    	vmov.f32	s28, s3
    a4ea: ed8d fa14    	vstr	s30, [sp, #80]
    a4ee: eeb0 fa62    	vmov.f32	s30, s5
    a4f2: edcd 8a16    	vstr	s17, [sp, #88]
    a4f6: eef0 8a63    	vmov.f32	s17, s7
    a4fa: edcd 9a18    	vstr	s19, [sp, #96]
    a4fe: eef0 9a64    	vmov.f32	s19, s9
    a502: edcd aa19    	vstr	s21, [sp, #100]
    a506: eef0 aa65    	vmov.f32	s21, s11
    a50a: edcd 7a06    	vstr	s15, [sp, #24]
    a50e: f001 fae3    	bl	0xbad8 <__aeabi_memcpy4> @ imm = #0x15c6
    a512: ad56         	add	r5, sp, #0x158
    a514: edc4 ba08    	vstr	s23, [r4, #32]
    a518: edc4 da09    	vstr	s27, [r4, #36]
    a51c: ed9d 0a06    	vldr	s0, [sp, #24]
    a520: edc4 ea0a    	vstr	s29, [r4, #40]
    a524: 4620         	mov	r0, r4
    a526: edc4 fa0b    	vstr	s31, [r4, #44]
    a52a: ed84 8a0c    	vstr	s16, [r4, #48]
    a52e: ed84 9a0d    	vstr	s18, [r4, #52]
    a532: ed84 aa0e    	vstr	s20, [r4, #56]
    a536: ed84 ba0f    	vstr	s22, [r4, #60]
    a53a: ed84 ca10    	vstr	s24, [r4, #64]
    a53e: ed84 da11    	vstr	s26, [r4, #68]
    a542: ed84 ea12    	vstr	s28, [r4, #72]
    a546: ed84 fa13    	vstr	s30, [r4, #76]
    a54a: edc4 8a14    	vstr	s17, [r4, #80]
    a54e: edc4 9a15    	vstr	s19, [r4, #84]
    a552: edc4 aa16    	vstr	s21, [r4, #88]
    a556: edc4 ca17    	vstr	s25, [r4, #92]
    a55a: ed84 0a18    	vstr	s0, [r4, #96]
    a55e: ed9d 0a07    	vldr	s0, [sp, #28]
    a562: ed84 0a19    	vstr	s0, [r4, #100]
    a566: ed9d 0a08    	vldr	s0, [sp, #32]
    a56a: ed84 0a1a    	vstr	s0, [r4, #104]
    a56e: ed9d 0a0b    	vldr	s0, [sp, #44]
    a572: ed84 0a1b    	vstr	s0, [r4, #108]
    a576: ed9d 0a0c    	vldr	s0, [sp, #48]
    a57a: ed84 0a1c    	vstr	s0, [r4, #112]
    a57e: ed9d 0a0e    	vldr	s0, [sp, #56]
    a582: ed84 0a1d    	vstr	s0, [r4, #116]
    a586: ed9d 0a10    	vldr	s0, [sp, #64]
    a58a: ed84 0a1e    	vstr	s0, [r4, #120]
    a58e: ed9d 0a12    	vldr	s0, [sp, #72]
    a592: ed84 0a1f    	vstr	s0, [r4, #124]
    a596: ed9d 0a14    	vldr	s0, [sp, #80]
    a59a: ed84 0a20    	vstr	s0, [r4, #128]
    a59e: ed9d 0a16    	vldr	s0, [sp, #88]
    a5a2: ed84 0a21    	vstr	s0, [r4, #132]
    a5a6: ed9d 0a18    	vldr	s0, [sp, #96]
    a5aa: ed84 0a22    	vstr	s0, [r4, #136]
    a5ae: ed9d 0a19    	vldr	s0, [sp, #100]
    a5b2: ed84 0a23    	vstr	s0, [r4, #140]
    a5b6: cd4e         	ldm	r5!, {r1, r2, r3, r6}
    a5b8: c04e         	stm	r0!, {r1, r2, r3, r6}
    a5ba: e895 004e    	ldm.w	r5, {r1, r2, r3, r6}
    a5be: c04e         	stm	r0!, {r1, r2, r3, r6}
    a5c0: f8d4 0118    	ldr.w	r0, [r4, #0x118]
    a5c4: 991b         	ldr	r1, [sp, #0x6c]
    a5c6: 3001         	adds	r0, #0x1
    a5c8: ed9d 0a00    	vldr	s0, [sp]
    a5cc: ed81 0a01    	vstr	s0, [r1, #4]
    a5d0: bf28         	it	hs
    a5d2: f04f 30ff    	movhs.w	r0, #0xffffffff
    a5d6: f8c4 0118    	str.w	r0, [r4, #0x118]
    a5da: 985d         	ldr	r0, [sp, #0x174]
    a5dc: 6008         	str	r0, [r1]
    a5de: 981a         	ldr	r0, [sp, #0x68]
    a5e0: 7208         	strb	r0, [r1, #0x8]
    a5e2: 2001         	movs	r0, #0x1
    a5e4: 7248         	strb	r0, [r1, #0x9]
    a5e6: e683         	b	0xa2f0 <ram_probe::packed_probe::candidate+0x2050> @ imm = #-0x2fa
    a5e8: ed9f 4a0a    	vldr	s8, [pc, #40]           @ 0xa614 <ram_probe::packed_probe::candidate+0x2374>
    a5ec: eeb0 3a44    	vmov.f32	s6, s8
    a5f0: f7fe b9b1    	b.w	0x8956 <ram_probe::packed_probe::candidate+0x6b6> @ imm = #-0x1c9e
    a5f4: bf00         	nop
    a5f6: bf00         	nop
    a5f8: eddf 4a06    	vldr	s9, [pc, #24]           @ 0xa614 <ram_probe::packed_probe::candidate+0x2374>
    a5fc: eef0 2a64    	vmov.f32	s5, s9
    a600: f7fe be59    	b.w	0x92b6 <ram_probe::packed_probe::candidate+0x1016> @ imm = #-0x134e
    a604: bf00         	nop
    a606: bf00         	nop
    a608: ed9f fa02    	vldr	s30, [pc, #8]           @ 0xa614 <ram_probe::packed_probe::candidate+0x2374>
    a60c: eeb0 ca4f    	vmov.f32	s24, s30
    a610: f7fe bfa9    	b.w	0x9566 <ram_probe::packed_probe::candidate+0x12c6> @ imm = #-0x10ae
    a614: 00 00 c0 7f  	.word	0x7fc00000
    a618: 99 76 cd 39  	.word	0x39cd7699
    a61c: 95 bf d6 33  	.word	0x33d6bf95
    a620: 00 00 00 80  	.word	0x80000000
    a624: d2 4e da c3  	.word	0xc3da4ed2

0000a628 <core::panicking::panic_fmt>:
    a628: b580         	push	{r7, lr}
    a62a: 466f         	mov	r7, sp
    a62c: f7fd f8a0    	bl	0x7770 <__rustc::rust_begin_unwind> @ imm = #-0x2ec0

0000a630 <core::panicking::panic>:
    a630: b580         	push	{r7, lr}
    a632: 466f         	mov	r7, sp
    a634: 0049         	lsls	r1, r1, #0x1
    a636: 3101         	adds	r1, #0x1
    a638: f7ff fff6    	bl	0xa628 <core::panicking::panic_fmt> @ imm = #-0x14
    a63c: d4d4         	bmi	0xa5e8 <ram_probe::packed_probe::candidate+0x2348> @ imm = #-0x58
    a63e: d4d4         	bmi	0xa5ea <ram_probe::packed_probe::candidate+0x234a> @ imm = #-0x58

0000a640 <orange_dsp::generated_condensed::origin>:
    a640: b580         	push	{r7, lr}
    a642: 466f         	mov	r7, sp
    a644: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    a648: b084         	sub	sp, #0x10
    a64a: ed91 1a01    	vldr	s2, [r1, #4]
    a64e: ed91 2a00    	vldr	s4, [r1]
    a652: eeb7 8ac1    	vcvt.f64.f32	d8, s2
    a656: ed91 3a02    	vldr	s6, [r1, #8]
    a65a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xa9c0 <orange_dsp::generated_condensed::origin+0x380>
    a65e: eeb7 dac3    	vcvt.f64.f32	d13, s6
    a662: ed91 3a03    	vldr	s6, [r1, #12]
    a666: ee28 4b01    	vmul.f64	d4, d8, d1
    a66a: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    a66e: edd1 0a0c    	vldr	s1, [r1, #48]
    a672: ed9f 2bd5    	vldr	d2, [pc, #852]          @ 0xa9c8 <orange_dsp::generated_condensed::origin+0x388>
    a676: eeb7 aac3    	vcvt.f64.f32	d10, s6
    a67a: ee01 4b02    	vmla.f64	d4, d1, d2
    a67e: eeb7 fae0    	vcvt.f64.f32	d15, s1
    a682: edd1 0a0d    	vldr	s1, [r1, #52]
    a686: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0xa9d8 <orange_dsp::generated_condensed::origin+0x398>
    a68a: ee2d 2b01    	vmul.f64	d2, d13, d1
    a68e: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0xa9e0 <orange_dsp::generated_condensed::origin+0x3a0>
    a692: ee0a 2b01    	vmla.f64	d2, d10, d1
    a696: ed91 1a04    	vldr	s2, [r1, #16]
    a69a: eeb7 cac1    	vcvt.f64.f32	d12, s2
    a69e: ed9f 1bd2    	vldr	d1, [pc, #840]          @ 0xa9e8 <orange_dsp::generated_condensed::origin+0x3a8>
    a6a2: ee0c 2b01    	vmla.f64	d2, d12, d1
    a6a6: ed91 1a05    	vldr	s2, [r1, #20]
    a6aa: eeb7 eac1    	vcvt.f64.f32	d14, s2
    a6ae: ed9f 1bd0    	vldr	d1, [pc, #832]          @ 0xa9f0 <orange_dsp::generated_condensed::origin+0x3b0>
    a6b2: ee0e 2b01    	vmla.f64	d2, d14, d1
    a6b6: ed91 1a06    	vldr	s2, [r1, #24]
    a6ba: eeb7 9ac1    	vcvt.f64.f32	d9, s2
    a6be: ed9f 1bd0    	vldr	d1, [pc, #832]          @ 0xaa00 <orange_dsp::generated_condensed::origin+0x3c0>
    a6c2: ee29 3b01    	vmul.f64	d3, d9, d1
    a6c6: ed91 1a07    	vldr	s2, [r1, #28]
    a6ca: eeb7 bac1    	vcvt.f64.f32	d11, s2
    a6ce: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0xaa08 <orange_dsp::generated_condensed::origin+0x3c8>
    a6d2: ee0b 3b01    	vmla.f64	d3, d11, d1
    a6d6: ed91 1a08    	vldr	s2, [r1, #32]
    a6da: eeb7 6ac1    	vcvt.f64.f32	d6, s2
    a6de: ed9f 1bcc    	vldr	d1, [pc, #816]          @ 0xaa10 <orange_dsp::generated_condensed::origin+0x3d0>
    a6e2: ee06 3b01    	vmla.f64	d3, d6, d1
    a6e6: ed91 1a09    	vldr	s2, [r1, #36]
    a6ea: eeb7 7ac1    	vcvt.f64.f32	d7, s2
    a6ee: ed9f 1bca    	vldr	d1, [pc, #808]          @ 0xaa18 <orange_dsp::generated_condensed::origin+0x3d8>
    a6f2: ee07 3b01    	vmla.f64	d3, d7, d1
    a6f6: ed91 1a0a    	vldr	s2, [r1, #40]
    a6fa: eeb7 5ac1    	vcvt.f64.f32	d5, s2
    a6fe: ed9f 1bc8    	vldr	d1, [pc, #800]          @ 0xaa20 <orange_dsp::generated_condensed::origin+0x3e0>
    a702: ee05 3b01    	vmla.f64	d3, d5, d1
    a706: ed91 1a0b    	vldr	s2, [r1, #44]
    a70a: ed8d 4b02    	vstr	d4, [sp, #8]
    a70e: eeb7 4ac1    	vcvt.f64.f32	d4, s2
    a712: ed9f 1bc5    	vldr	d1, [pc, #788]          @ 0xaa28 <orange_dsp::generated_condensed::origin+0x3e8>
    a716: ee04 3b01    	vmla.f64	d3, d4, d1
    a71a: ed9f 1bf5    	vldr	d1, [pc, #980]          @ 0xaaf0 <orange_dsp::generated_condensed::origin+0x4b0>
    a71e: ee28 8b01    	vmul.f64	d8, d8, d1
    a722: ed9f 1bf5    	vldr	d1, [pc, #980]          @ 0xaaf8 <orange_dsp::generated_condensed::origin+0x4b8>
    a726: ee0d 8b01    	vmla.f64	d8, d13, d1
    a72a: eeb7 dae0    	vcvt.f64.f32	d13, s1
    a72e: edd1 0a0e    	vldr	s1, [r1, #56]
    a732: ed9f 1bbf    	vldr	d1, [pc, #764]          @ 0xaa30 <orange_dsp::generated_condensed::origin+0x3f0>
    a736: ee0f 3b01    	vmla.f64	d3, d15, d1
    a73a: ed9f 1bf1    	vldr	d1, [pc, #964]          @ 0xab00 <orange_dsp::generated_condensed::origin+0x4c0>
    a73e: ee0a 8b01    	vmla.f64	d8, d10, d1
    a742: ed9f 1bbd    	vldr	d1, [pc, #756]          @ 0xaa38 <orange_dsp::generated_condensed::origin+0x3f8>
    a746: ee0d 3b01    	vmla.f64	d3, d13, d1
    a74a: ed9f 1bef    	vldr	d1, [pc, #956]          @ 0xab08 <orange_dsp::generated_condensed::origin+0x4c8>
    a74e: ee2e ab01    	vmul.f64	d10, d14, d1
    a752: ed9f 1bef    	vldr	d1, [pc, #956]          @ 0xab10 <orange_dsp::generated_condensed::origin+0x4d0>
    a756: ee0c ab01    	vmla.f64	d10, d12, d1
    a75a: ed9f 1bbb    	vldr	d1, [pc, #748]          @ 0xaa48 <orange_dsp::generated_condensed::origin+0x408>
    a75e: ee29 cb01    	vmul.f64	d12, d9, d1
    a762: ed9f 1bbb    	vldr	d1, [pc, #748]          @ 0xaa50 <orange_dsp::generated_condensed::origin+0x410>
    a766: ee0b cb01    	vmla.f64	d12, d11, d1
    a76a: ed9f 1beb    	vldr	d1, [pc, #940]          @ 0xab18 <orange_dsp::generated_condensed::origin+0x4d8>
    a76e: ee09 ab01    	vmla.f64	d10, d9, d1
    a772: ed9f 1beb    	vldr	d1, [pc, #940]          @ 0xab20 <orange_dsp::generated_condensed::origin+0x4e0>
    a776: ee0b ab01    	vmla.f64	d10, d11, d1
    a77a: ed9f 1bf9    	vldr	d1, [pc, #996]          @ 0xab60 <orange_dsp::generated_condensed::origin+0x520>
    a77e: ee2b bb01    	vmul.f64	d11, d11, d1
    a782: ed9f 1bf9    	vldr	d1, [pc, #996]          @ 0xab68 <orange_dsp::generated_condensed::origin+0x528>
    a786: ee09 bb01    	vmla.f64	d11, d9, d1
    a78a: eeb7 9ae0    	vcvt.f64.f32	d9, s1
    a78e: edd1 0a10    	vldr	s1, [r1, #64]
    a792: ed9f 1bab    	vldr	d1, [pc, #684]          @ 0xaa40 <orange_dsp::generated_condensed::origin+0x400>
    a796: eeb7 eae0    	vcvt.f64.f32	d14, s1
    a79a: edd1 0a16    	vldr	s1, [r1, #88]
    a79e: ee09 3b01    	vmla.f64	d3, d9, d1
    a7a2: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xaa58 <orange_dsp::generated_condensed::origin+0x418>
    a7a6: ee06 cb01    	vmla.f64	d12, d6, d1
    a7aa: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xaa60 <orange_dsp::generated_condensed::origin+0x420>
    a7ae: ee07 cb01    	vmla.f64	d12, d7, d1
    a7b2: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xaa68 <orange_dsp::generated_condensed::origin+0x428>
    a7b6: ee05 cb01    	vmla.f64	d12, d5, d1
    a7ba: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xaa70 <orange_dsp::generated_condensed::origin+0x430>
    a7be: ee04 cb01    	vmla.f64	d12, d4, d1
    a7c2: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xaa78 <orange_dsp::generated_condensed::origin+0x438>
    a7c6: ee0f cb01    	vmla.f64	d12, d15, d1
    a7ca: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xaa80 <orange_dsp::generated_condensed::origin+0x440>
    a7ce: ee0d cb01    	vmla.f64	d12, d13, d1
    a7d2: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xaa88 <orange_dsp::generated_condensed::origin+0x448>
    a7d6: ee09 cb01    	vmla.f64	d12, d9, d1
    a7da: ed9f 1bd3    	vldr	d1, [pc, #844]          @ 0xab28 <orange_dsp::generated_condensed::origin+0x4e8>
    a7de: ee06 ab01    	vmla.f64	d10, d6, d1
    a7e2: ed9f 1bd3    	vldr	d1, [pc, #844]          @ 0xab30 <orange_dsp::generated_condensed::origin+0x4f0>
    a7e6: ee07 ab01    	vmla.f64	d10, d7, d1
    a7ea: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xab70 <orange_dsp::generated_condensed::origin+0x530>
    a7ee: ee06 bb01    	vmla.f64	d11, d6, d1
    a7f2: ed91 6a0f    	vldr	s12, [r1, #60]
    a7f6: ed9f 1be0    	vldr	d1, [pc, #896]          @ 0xab78 <orange_dsp::generated_condensed::origin+0x538>
    a7fa: ee07 bb01    	vmla.f64	d11, d7, d1
    a7fe: eeb7 7ac6    	vcvt.f64.f32	d7, s12
    a802: ed9f 1ba3    	vldr	d1, [pc, #652]          @ 0xaa90 <orange_dsp::generated_condensed::origin+0x450>
    a806: ee27 6b01    	vmul.f64	d6, d7, d1
    a80a: ed9f 1bcb    	vldr	d1, [pc, #812]          @ 0xab38 <orange_dsp::generated_condensed::origin+0x4f8>
    a80e: ee05 ab01    	vmla.f64	d10, d5, d1
    a812: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xab80 <orange_dsp::generated_condensed::origin+0x540>
    a816: ee05 bb01    	vmla.f64	d11, d5, d1
    a81a: ed91 5a11    	vldr	s10, [r1, #68]
    a81e: ed9f 1b9e    	vldr	d1, [pc, #632]          @ 0xaa98 <orange_dsp::generated_condensed::origin+0x458>
    a822: ee0e 6b01    	vmla.f64	d6, d14, d1
    a826: ed9f 1bc6    	vldr	d1, [pc, #792]          @ 0xab40 <orange_dsp::generated_condensed::origin+0x500>
    a82a: ee04 ab01    	vmla.f64	d10, d4, d1
    a82e: ed9f 1bd6    	vldr	d1, [pc, #856]          @ 0xab88 <orange_dsp::generated_condensed::origin+0x548>
    a832: ee04 bb01    	vmla.f64	d11, d4, d1
    a836: eeb7 1ac5    	vcvt.f64.f32	d1, s10
    a83a: ed91 5a12    	vldr	s10, [r1, #72]
    a83e: ed9f 4b98    	vldr	d4, [pc, #608]          @ 0xaaa0 <orange_dsp::generated_condensed::origin+0x460>
    a842: ee01 6b04    	vmla.f64	d6, d1, d4
    a846: ed9f 4bc0    	vldr	d4, [pc, #768]          @ 0xab48 <orange_dsp::generated_condensed::origin+0x508>
    a84a: ee0f ab04    	vmla.f64	d10, d15, d4
    a84e: ed9f 4bd0    	vldr	d4, [pc, #832]          @ 0xab90 <orange_dsp::generated_condensed::origin+0x550>
    a852: ee0f bb04    	vmla.f64	d11, d15, d4
    a856: eeb7 fac5    	vcvt.f64.f32	d15, s10
    a85a: ed9f 4b93    	vldr	d4, [pc, #588]          @ 0xaaa8 <orange_dsp::generated_condensed::origin+0x468>
    a85e: ee0f 6b04    	vmla.f64	d6, d15, d4
    a862: ed9f 4bbb    	vldr	d4, [pc, #748]          @ 0xab50 <orange_dsp::generated_condensed::origin+0x510>
    a866: ee0d ab04    	vmla.f64	d10, d13, d4
    a86a: ed9f 4bcb    	vldr	d4, [pc, #812]          @ 0xab98 <orange_dsp::generated_condensed::origin+0x558>
    a86e: ee0d bb04    	vmla.f64	d11, d13, d4
    a872: ed9f 4b8f    	vldr	d4, [pc, #572]          @ 0xaab0 <orange_dsp::generated_condensed::origin+0x470>
    a876: ed9f 5b90    	vldr	d5, [pc, #576]          @ 0xaab8 <orange_dsp::generated_condensed::origin+0x478>
    a87a: ee2f 4b04    	vmul.f64	d4, d15, d4
    a87e: ee01 4b05    	vmla.f64	d4, d1, d5
    a882: ed9f 5bb5    	vldr	d5, [pc, #724]          @ 0xab58 <orange_dsp::generated_condensed::origin+0x518>
    a886: ee09 ab05    	vmla.f64	d10, d9, d5
    a88a: ed9f 5bc5    	vldr	d5, [pc, #788]          @ 0xaba0 <orange_dsp::generated_condensed::origin+0x560>
    a88e: ee09 bb05    	vmla.f64	d11, d9, d5
    a892: eeb7 5ae0    	vcvt.f64.f32	d5, s1
    a896: edd1 0a15    	vldr	s1, [r1, #84]
    a89a: ed9f 9b91    	vldr	d9, [pc, #580]          @ 0xaae0 <orange_dsp::generated_condensed::origin+0x4a0>
    a89e: ee25 5b09    	vmul.f64	d5, d5, d9
    a8a2: ed9f 9bc1    	vldr	d9, [pc, #772]          @ 0xaba8 <orange_dsp::generated_condensed::origin+0x568>
    a8a6: ee07 bb09    	vmla.f64	d11, d7, d9
    a8aa: eeb7 9ae0    	vcvt.f64.f32	d9, s1
    a8ae: edd1 0a14    	vldr	s1, [r1, #80]
    a8b2: ed9f 7b8d    	vldr	d7, [pc, #564]          @ 0xaae8 <orange_dsp::generated_condensed::origin+0x4a8>
    a8b6: eeb7 dae0    	vcvt.f64.f32	d13, s1
    a8ba: edd1 0a13    	vldr	s1, [r1, #76]
    a8be: ee09 5b07    	vmla.f64	d5, d9, d7
    a8c2: ed9f 7bbb    	vldr	d7, [pc, #748]          @ 0xabb0 <orange_dsp::generated_condensed::origin+0x570>
    a8c6: ee0e bb07    	vmla.f64	d11, d14, d7
    a8ca: eeb7 eae0    	vcvt.f64.f32	d14, s1
    a8ce: ed9f 7bba    	vldr	d7, [pc, #744]          @ 0xabb8 <orange_dsp::generated_condensed::origin+0x578>
    a8d2: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a8d6: ee21 7b07    	vmul.f64	d7, d1, d7
    a8da: ed9f 1bb9    	vldr	d1, [pc, #740]          @ 0xabc0 <orange_dsp::generated_condensed::origin+0x580>
    a8de: ee0f 7b01    	vmla.f64	d7, d15, d1
    a8e2: ed9f 1bb9    	vldr	d1, [pc, #740]          @ 0xabc8 <orange_dsp::generated_condensed::origin+0x588>
    a8e6: ed9f fbba    	vldr	d15, [pc, #744]         @ 0xabd0 <orange_dsp::generated_condensed::origin+0x590>
    a8ea: ee2d 1b01    	vmul.f64	d1, d13, d1
    a8ee: ee0e 1b0f    	vmla.f64	d1, d14, d15
    a8f2: ed9f fbb9    	vldr	d15, [pc, #740]         @ 0xabd8 <orange_dsp::generated_condensed::origin+0x598>
    a8f6: ee09 1b0f    	vmla.f64	d1, d9, d15
    a8fa: ed9f 9b35    	vldr	d9, [pc, #212]          @ 0xa9d0 <orange_dsp::generated_condensed::origin+0x390>
    a8fe: ed8d 2b00    	vstr	d2, [sp]
    a902: ed9d 2b02    	vldr	d2, [sp, #8]
    a906: ee00 2b09    	vmla.f64	d2, d0, d9
    a90a: ed9f 9b3b    	vldr	d9, [pc, #236]          @ 0xa9f8 <orange_dsp::generated_condensed::origin+0x3b8>
    a90e: ee20 0b09    	vmul.f64	d0, d0, d9
    a912: ed9f 9b6b    	vldr	d9, [pc, #428]          @ 0xaac0 <orange_dsp::generated_condensed::origin+0x480>
    a916: ee0e 4b09    	vmla.f64	d4, d14, d9
    a91a: ed9f 9b6b    	vldr	d9, [pc, #428]          @ 0xaac8 <orange_dsp::generated_condensed::origin+0x488>
    a91e: ee0d 4b09    	vmla.f64	d4, d13, d9
    a922: ed9f 9b6b    	vldr	d9, [pc, #428]          @ 0xaad0 <orange_dsp::generated_condensed::origin+0x490>
    a926: ed9f fb6c    	vldr	d15, [pc, #432]         @ 0xaad8 <orange_dsp::generated_condensed::origin+0x498>
    a92a: ee2d 9b09    	vmul.f64	d9, d13, d9
    a92e: ee0e 9b0f    	vmla.f64	d9, d14, d15
    a932: ed9f fbab    	vldr	d15, [pc, #684]         @ 0xabe0 <orange_dsp::generated_condensed::origin+0x5a0>
    a936: ee2e eb0f    	vmul.f64	d14, d14, d15
    a93a: ed9f fbab    	vldr	d15, [pc, #684]         @ 0xabe8 <orange_dsp::generated_condensed::origin+0x5a8>
    a93e: ee0d eb0f    	vmla.f64	d14, d13, d15
    a942: ed9d db00    	vldr	d13, [sp]
    a946: ee30 db0d    	vadd.f64	d13, d0, d13
    a94a: ee30 3b03    	vadd.f64	d3, d0, d3
    a94e: ee30 cb0c    	vadd.f64	d12, d0, d12
    a952: ee30 6b06    	vadd.f64	d6, d0, d6
    a956: ee30 4b04    	vadd.f64	d4, d0, d4
    a95a: ee30 9b09    	vadd.f64	d9, d0, d9
    a95e: ee30 5b05    	vadd.f64	d5, d0, d5
    a962: ee30 8b08    	vadd.f64	d8, d0, d8
    a966: ee30 ab0a    	vadd.f64	d10, d0, d10
    a96a: ee30 bb0b    	vadd.f64	d11, d0, d11
    a96e: ee30 7b07    	vadd.f64	d7, d0, d7
    a972: ee30 1b01    	vadd.f64	d1, d0, d1
    a976: ee30 0b0e    	vadd.f64	d0, d0, d14
    a97a: ed80 2b00    	vstr	d2, [r0]
    a97e: ed80 db02    	vstr	d13, [r0, #8]
    a982: ed80 3b04    	vstr	d3, [r0, #16]
    a986: ed80 cb06    	vstr	d12, [r0, #24]
    a98a: ed80 6b08    	vstr	d6, [r0, #32]
    a98e: ed80 4b0a    	vstr	d4, [r0, #40]
    a992: ed80 9b0c    	vstr	d9, [r0, #48]
    a996: ed80 5b0e    	vstr	d5, [r0, #56]
    a99a: ed80 8b10    	vstr	d8, [r0, #64]
    a99e: ed80 ab12    	vstr	d10, [r0, #72]
    a9a2: ed80 bb14    	vstr	d11, [r0, #80]
    a9a6: ed80 7b16    	vstr	d7, [r0, #88]
    a9aa: ed80 1b18    	vstr	d1, [r0, #96]
    a9ae: ed80 0b1a    	vstr	d0, [r0, #104]
    a9b2: ed80 0b1c    	vstr	d0, [r0, #112]
    a9b6: b004         	add	sp, #0x10
    a9b8: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    a9bc: bd80         	pop	{r7, pc}
    a9be: bf00         	nop
    a9c0: 00 40 04 ed  	.word	0xed044000
    a9c4: c6 5d a6 3e  	.word	0x3ea65dc6
    a9c8: 76 83 0d f4  	.word	0xf40d8376
    a9cc: f5 21 e4 3e  	.word	0x3ee421f5
    a9d0: 16 75 bb 86  	.word	0x86bb7516
    a9d4: 64 4f f6 3e  	.word	0x3ef64f64
    a9d8: d5 97 bf f6  	.word	0xf6bf97d5
    a9dc: 19 b4 ce be  	.word	0xbeceb419
    a9e0: 36 5d 3e 75  	.word	0x753e5d36
    a9e4: 38 ae c7 3e  	.word	0x3ec7ae38
    a9e8: 00 40 c9 5b  	.word	0x5bc94000
    a9ec: f7 60 07 3f  	.word	0x3f0760f7
    a9f0: 4a 32 f7 68  	.word	0x68f7324a
    a9f4: 72 7d 9f 3e  	.word	0x3e9f7d72
		...
    aa00: 54 60 37 c3  	.word	0xc3376054
    aa04: e5 a4 e6 be  	.word	0xbee6a4e5
    aa08: c8 ad 1f 67  	.word	0x671fadc8
    aa0c: 45 c3 ed 3e  	.word	0x3eedc345
    aa10: 44 c6 ce d8  	.word	0xd8cec644
    aa14: 10 a0 ed 3e  	.word	0x3eeda010
    aa18: 00 50 60 e5  	.word	0xe5605000
    aa1c: 3b e5 10 3f  	.word	0x3f10e53b
    aa20: e3 53 33 7a  	.word	0x7a3353e3
    aa24: 61 bf de 3e  	.word	0x3edebf61
    aa28: 51 c8 f8 a5  	.word	0xa5f8c851
    aa2c: 8a 68 b9 3e  	.word	0x3eb9688a
    aa30: e2 d6 18 77  	.word	0x7718d6e2
    aa34: a3 18 b5 be  	.word	0xbeb518a3
    aa38: 67 b0 7b ae  	.word	0xae7bb067
    aa3c: 67 ab dd 3e  	.word	0x3eddab67
    aa40: b4 80 19 66  	.word	0x661980b4
    aa44: f6 a3 90 3e  	.word	0x3e90a3f6
    aa48: f6 5b 13 c0  	.word	0xc0135bf6
    aa4c: 5a 48 fb be  	.word	0xbefb485a
    aa50: 06 3c ee c7  	.word	0xc7ee3c06
    aa54: 03 ee 01 3f  	.word	0x3f01ee03
    aa58: 3c fc ce 6b  	.word	0x6bcefc3c
    aa5c: ce d8 01 3f  	.word	0x3f01d8ce
    aa60: 90 bd b4 b1  	.word	0xb1b4bd90
    aa64: 47 f0 17 bf  	.word	0xbf17f047
    aa68: 03 17 fc e7  	.word	0xe7fc1703
    aa6c: 5f d3 ce 3e  	.word	0x3eced35f
    aa70: 2a c5 55 47  	.word	0x4755c52a
    aa74: 10 79 a9 3e  	.word	0x3ea97910
    aa78: 42 55 13 46  	.word	0x46135542
    aa7c: 5b 26 a5 be  	.word	0xbea5265b
    aa80: 9c b2 92 a7  	.word	0xa792b29c
    aa84: b2 be cd 3e  	.word	0x3ecdbeb2
    aa88: 1a 5e 36 79  	.word	0x79365e1a
    aa8c: c8 ae 80 3e  	.word	0x3e80aec8
    aa90: 45 cd ea 54  	.word	0x54eacd45
    aa94: fd c6 d2 be  	.word	0xbed2c6fd
    aa98: 12 ba 8c 92  	.word	0x928cba12
    aa9c: 9b a5 02 3f  	.word	0x3f02a59b
    aaa0: 64 e4 12 a5  	.word	0xa512e464
    aaa4: 59 d4 c6 3e  	.word	0x3ec6d459
    aaa8: 84 07 31 a1  	.word	0xa1310784
    aaac: 8a 5f e0 be  	.word	0xbee05f8a
    aab0: b2 25 cb 22  	.word	0x22cb25b2
    aab4: 4a 60 f4 be  	.word	0xbef4604a
    aab8: 0a 0f aa 0d  	.word	0x0daa0f0a
    aabc: 20 16 ee be  	.word	0xbeee1620
    aac0: 00 c0 53 71  	.word	0x7153c000
    aac4: 69 b2 15 3f  	.word	0x3f15b269
    aac8: e7 c0 30 90  	.word	0x9030c0e7
    aacc: d0 79 d7 3e  	.word	0x3ed779d0
    aad0: c2 be 30 90  	.word	0x9030bec2
    aad4: d0 79 d7 be  	.word	0xbed779d0
    aad8: 60 be 53 71  	.word	0x7153be60
    aadc: 69 b2 15 bf  	.word	0xbf15b269
    aae0: 21 8e 90 51  	.word	0x51908e21
    aae4: b7 61 83 3f  	.word	0x3f8361b7
    aae8: 35 48 92 78  	.word	0x78924835
    aaec: 26 1c ff 3e  	.word	0x3eff1c26
    aaf0: c1 5d e1 c9  	.word	0xc9e15dc1
    aaf4: 86 54 e5 bf  	.word	0xbfe55486
    aaf8: 86 0c 11 0f  	.word	0x0f110c86
    aafc: c8 6c d7 3f  	.word	0x3fd76cc8
    ab00: 7d 24 f3 72  	.word	0x72f3247d
    ab04: 1b 11 d2 bf  	.word	0xbfd2111b
    ab08: 3d 68 b5 4d  	.word	0x4db5683d
    ab0c: 2d 2d e5 bf  	.word	0xbfe52d2d
    ab10: 30 c6 34 16  	.word	0x1634c630
    ab14: b7 3a cc bf  	.word	0xbfcc3ab7
    ab18: 75 22 80 1e  	.word	0x1e802275
    ab1c: ff ca ba bf  	.word	0xbfbacaff
    ab20: 06 42 bd ec  	.word	0xecbd4206
    ab24: 6c ee e0 bf  	.word	0xbfe0ee6c
    ab28: 94 54 5e e4  	.word	0xe45e5494
    ab2c: 65 da e0 bf  	.word	0xbfe0da65
    ab30: 7f 02 92 0b  	.word	0x0b92027f
    ab34: f9 a6 d7 3f  	.word	0x3fd7a6f9
    ab38: 49 ec 9f 20  	.word	0x209fec49
    ab3c: fa 74 8e bf  	.word	0xbf8e74fa
    ab40: 47 e4 bd ce  	.word	0xcebde447
    ab44: 0e 2b 69 bf  	.word	0xbf692b0e
    ab48: f4 24 ee df  	.word	0xdfee24f4
    ab4c: 96 e5 64 3f  	.word	0x3f64e596
    ab50: cf 1e ec 24  	.word	0x24ec1ecf
    ab54: 9c 63 8d bf  	.word	0xbf8d639c
    ab58: 30 f8 ed 0a  	.word	0x0aedf830
    ab5c: b2 7b 40 bf  	.word	0xbf407bb2
    ab60: d7 f6 ca fa  	.word	0xfacaf6d7
    ab64: 26 e9 a6 bf  	.word	0xbfa6e926
    ab68: 3a 53 cc f5  	.word	0xf5cc533a
    ab6c: 53 6e a1 3f  	.word	0x3fa16e53
    ab70: d2 bc 75 4e  	.word	0x4e75bcd2
    ab74: 0d ce a6 bf  	.word	0xbfa6ce0d
    ab78: 08 aa 3a 11  	.word	0x113aaa08
    ab7c: f2 02 ca bf  	.word	0xbfca02f2
    ab80: 3b 35 7d dc  	.word	0xdc7d353b
    ab84: f0 f5 d4 bf  	.word	0xbfd4f5f0
    ab88: 8a 7e 40 15  	.word	0x15407e8a
    ab8c: 20 4b d2 bf  	.word	0xbfd24b20
    ab90: 58 aa ae 17  	.word	0x17aeaa58
    ab94: 84 6a d5 bf  	.word	0xbfd56a84
    ab98: 1d ef 71 50  	.word	0x5071ef1d
    ab9c: b3 bf d2 3f  	.word	0x3fd2bfb3
    aba0: 59 b9 c0 26  	.word	0x26c0b959
    aba4: 2e df e3 bf  	.word	0xbfe3df2e
    aba8: 3b cc c8 6a  	.word	0x6ac8cc3b
    abac: c2 ed a6 bf  	.word	0xbfa6edc2
    abb0: 30 b5 9f 60  	.word	0x609fb530
    abb4: ab e5 d3 bf  	.word	0xbfd3e5ab
    abb8: 7b 84 3a 2a  	.word	0x2a3a847b
    abbc: 5a 5f c0 bf  	.word	0xbfc05f5a
    abc0: f7 82 13 a7  	.word	0xa71382f7
    abc4: 09 7c d7 3f  	.word	0x3fd77c09
    abc8: 34 38 d2 5b  	.word	0x5bd23834
    abcc: a6 d7 e0 bf  	.word	0xbfe0d7a6
    abd0: ee 6f e8 6a  	.word	0x6ae86fee
    abd4: 04 d6 d0 bf  	.word	0xbfd0d604
    abd8: 3b 36 33 54  	.word	0x5433363b
    abdc: 06 e3 e4 bf  	.word	0xbfe4e306
    abe0: b5 2c 68 6e  	.word	0x6e682cb5
    abe4: 31 53 e5 bf  	.word	0xbfe55331
    abe8: d2 4f d6 fa  	.word	0xfad64fd2
    abec: 97 86 f2 3e  	.word	0x3ef28697

0000abf0 <orange_dsp::generated_condensed::update>:
    abf0: b580         	push	{r7, lr}
    abf2: 466f         	mov	r7, sp
    abf4: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    abf8: b0b0         	sub	sp, #0xc0
    abfa: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    abfe: ed91 3a02    	vldr	s6, [r1, #8]
    ac02: ed9f 1bfd    	vldr	d1, [pc, #1012]         @ 0xaff8 <orange_dsp::generated_condensed::update+0x408>
    ac06: ed91 4a01    	vldr	s8, [r1, #4]
    ac0a: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    ac0e: ee20 8b01    	vmul.f64	d8, d0, d1
    ac12: ed91 1a03    	vldr	s2, [r1, #12]
    ac16: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    ac1a: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    ac1e: ed9f 0bf8    	vldr	d0, [pc, #992]          @ 0xb000 <orange_dsp::generated_condensed::update+0x410>
    ac22: ed9f 2bf9    	vldr	d2, [pc, #996]          @ 0xb008 <orange_dsp::generated_condensed::update+0x418>
    ac26: ed9f 5bfa    	vldr	d5, [pc, #1000]         @ 0xb010 <orange_dsp::generated_condensed::update+0x420>
    ac2a: ee21 2b02    	vmul.f64	d2, d1, d2
    ac2e: ee03 2b05    	vmla.f64	d2, d3, d5
    ac32: eeb0 5b48    	vmov.f64	d5, d8
    ac36: ee04 5b00    	vmla.f64	d5, d4, d0
    ac3a: ed9f 0bf7    	vldr	d0, [pc, #988]          @ 0xb018 <orange_dsp::generated_condensed::update+0x428>
    ac3e: ee23 3b00    	vmul.f64	d3, d3, d0
    ac42: ed92 0a01    	vldr	s0, [r2, #4]
    ac46: ed9f 4bf6    	vldr	d4, [pc, #984]          @ 0xb020 <orange_dsp::generated_condensed::update+0x430>
    ac4a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ac4e: ed8d 5b2c    	vstr	d5, [sp, #176]
    ac52: ee38 5b02    	vadd.f64	d5, d8, d2
    ac56: ed9f 2bf4    	vldr	d2, [pc, #976]          @ 0xb028 <orange_dsp::generated_condensed::update+0x438>
    ac5a: ee01 3b04    	vmla.f64	d3, d1, d4
    ac5e: ed91 4a04    	vldr	s8, [r1, #16]
    ac62: ee00 5b02    	vmla.f64	d5, d0, d2
    ac66: ed91 2a05    	vldr	s4, [r1, #20]
    ac6a: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    ac6e: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    ac72: ed8d 5b2e    	vstr	d5, [sp, #184]
    ac76: ee38 6b03    	vadd.f64	d6, d8, d3
    ac7a: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xb030 <orange_dsp::generated_condensed::update+0x440>
    ac7e: ed9f 5bee    	vldr	d5, [pc, #952]          @ 0xb038 <orange_dsp::generated_condensed::update+0x448>
    ac82: ee22 3b03    	vmul.f64	d3, d2, d3
    ac86: ee04 3b05    	vmla.f64	d3, d4, d5
    ac8a: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xb040 <orange_dsp::generated_condensed::update+0x450>
    ac8e: ee38 5b03    	vadd.f64	d5, d8, d3
    ac92: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xb048 <orange_dsp::generated_condensed::update+0x458>
    ac96: ee24 3b03    	vmul.f64	d3, d4, d3
    ac9a: ed9f 4bed    	vldr	d4, [pc, #948]          @ 0xb050 <orange_dsp::generated_condensed::update+0x460>
    ac9e: ee00 6b01    	vmla.f64	d6, d0, d1
    aca2: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xb058 <orange_dsp::generated_condensed::update+0x468>
    aca6: ee02 3b04    	vmla.f64	d3, d2, d4
    acaa: ee00 5b01    	vmla.f64	d5, d0, d1
    acae: ed9f 1bec    	vldr	d1, [pc, #944]          @ 0xb060 <orange_dsp::generated_condensed::update+0x470>
    acb2: ee38 2b03    	vadd.f64	d2, d8, d3
    acb6: ee00 2b01    	vmla.f64	d2, d0, d1
    acba: ed91 0a07    	vldr	s0, [r1, #28]
    acbe: ed91 1a06    	vldr	s2, [r1, #24]
    acc2: eeb7 fac0    	vcvt.f64.f32	d15, s0
    acc6: ed9f 0be8    	vldr	d0, [pc, #928]          @ 0xb068 <orange_dsp::generated_condensed::update+0x478>
    acca: ee2f 9b00    	vmul.f64	d9, d15, d0
    acce: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    acd2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb070 <orange_dsp::generated_condensed::update+0x480>
    acd6: ee00 9b01    	vmla.f64	d9, d0, d1
    acda: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb078 <orange_dsp::generated_condensed::update+0x488>
    acde: ee2f 3b01    	vmul.f64	d3, d15, d1
    ace2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb080 <orange_dsp::generated_condensed::update+0x490>
    ace6: ee00 3b01    	vmla.f64	d3, d0, d1
    acea: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb088 <orange_dsp::generated_condensed::update+0x498>
    acee: ee2f 4b01    	vmul.f64	d4, d15, d1
    acf2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb090 <orange_dsp::generated_condensed::update+0x4a0>
    acf6: ee00 4b01    	vmla.f64	d4, d0, d1
    acfa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb098 <orange_dsp::generated_condensed::update+0x4a8>
    acfe: ee20 ab01    	vmul.f64	d10, d0, d1
    ad02: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0a0 <orange_dsp::generated_condensed::update+0x4b0>
    ad06: ee0f ab01    	vmla.f64	d10, d15, d1
    ad0a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0a8 <orange_dsp::generated_condensed::update+0x4b8>
    ad0e: ee2f bb01    	vmul.f64	d11, d15, d1
    ad12: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0b0 <orange_dsp::generated_condensed::update+0x4c0>
    ad16: ee00 bb01    	vmla.f64	d11, d0, d1
    ad1a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0b8 <orange_dsp::generated_condensed::update+0x4c8>
    ad1e: ee2f cb01    	vmul.f64	d12, d15, d1
    ad22: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0c0 <orange_dsp::generated_condensed::update+0x4d0>
    ad26: ee00 cb01    	vmla.f64	d12, d0, d1
    ad2a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0c8 <orange_dsp::generated_condensed::update+0x4d8>
    ad2e: ee20 db01    	vmul.f64	d13, d0, d1
    ad32: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0d0 <orange_dsp::generated_condensed::update+0x4e0>
    ad36: ee0f db01    	vmla.f64	d13, d15, d1
    ad3a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0d8 <orange_dsp::generated_condensed::update+0x4e8>
    ad3e: ee2f eb01    	vmul.f64	d14, d15, d1
    ad42: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0e0 <orange_dsp::generated_condensed::update+0x4f0>
    ad46: ee00 eb01    	vmla.f64	d14, d0, d1
    ad4a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0e8 <orange_dsp::generated_condensed::update+0x4f8>
    ad4e: ee2f fb01    	vmul.f64	d15, d15, d1
    ad52: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb0f0 <orange_dsp::generated_condensed::update+0x500>
    ad56: ee00 fb01    	vmla.f64	d15, d0, d1
    ad5a: ed91 0a08    	vldr	s0, [r1, #32]
    ad5e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ad62: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb0f8 <orange_dsp::generated_condensed::update+0x508>
    ad66: ee00 9b01    	vmla.f64	d9, d0, d1
    ad6a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb100 <orange_dsp::generated_condensed::update+0x510>
    ad6e: ee00 3b01    	vmla.f64	d3, d0, d1
    ad72: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb108 <orange_dsp::generated_condensed::update+0x518>
    ad76: ee00 4b01    	vmla.f64	d4, d0, d1
    ad7a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb110 <orange_dsp::generated_condensed::update+0x520>
    ad7e: ee00 ab01    	vmla.f64	d10, d0, d1
    ad82: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb118 <orange_dsp::generated_condensed::update+0x528>
    ad86: ee00 bb01    	vmla.f64	d11, d0, d1
    ad8a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb120 <orange_dsp::generated_condensed::update+0x530>
    ad8e: ee00 cb01    	vmla.f64	d12, d0, d1
    ad92: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb128 <orange_dsp::generated_condensed::update+0x538>
    ad96: ee00 db01    	vmla.f64	d13, d0, d1
    ad9a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb130 <orange_dsp::generated_condensed::update+0x540>
    ad9e: ee00 eb01    	vmla.f64	d14, d0, d1
    ada2: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb138 <orange_dsp::generated_condensed::update+0x548>
    ada6: ee00 fb01    	vmla.f64	d15, d0, d1
    adaa: ed91 0a09    	vldr	s0, [r1, #36]
    adae: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    adb2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb140 <orange_dsp::generated_condensed::update+0x550>
    adb6: ee00 9b01    	vmla.f64	d9, d0, d1
    adba: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb148 <orange_dsp::generated_condensed::update+0x558>
    adbe: ee00 3b01    	vmla.f64	d3, d0, d1
    adc2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb150 <orange_dsp::generated_condensed::update+0x560>
    adc6: ee00 4b01    	vmla.f64	d4, d0, d1
    adca: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb158 <orange_dsp::generated_condensed::update+0x568>
    adce: ee00 ab01    	vmla.f64	d10, d0, d1
    add2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb160 <orange_dsp::generated_condensed::update+0x570>
    add6: ee00 bb01    	vmla.f64	d11, d0, d1
    adda: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb168 <orange_dsp::generated_condensed::update+0x578>
    adde: ee00 cb01    	vmla.f64	d12, d0, d1
    ade2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb170 <orange_dsp::generated_condensed::update+0x580>
    ade6: ee00 db01    	vmla.f64	d13, d0, d1
    adea: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb178 <orange_dsp::generated_condensed::update+0x588>
    adee: ee00 eb01    	vmla.f64	d14, d0, d1
    adf2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb180 <orange_dsp::generated_condensed::update+0x590>
    adf6: ee00 fb01    	vmla.f64	d15, d0, d1
    adfa: ed91 0a0a    	vldr	s0, [r1, #40]
    adfe: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ae02: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb188 <orange_dsp::generated_condensed::update+0x598>
    ae06: ee00 9b01    	vmla.f64	d9, d0, d1
    ae0a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb190 <orange_dsp::generated_condensed::update+0x5a0>
    ae0e: ee00 3b01    	vmla.f64	d3, d0, d1
    ae12: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb198 <orange_dsp::generated_condensed::update+0x5a8>
    ae16: ee00 4b01    	vmla.f64	d4, d0, d1
    ae1a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb1a0 <orange_dsp::generated_condensed::update+0x5b0>
    ae1e: ee00 ab01    	vmla.f64	d10, d0, d1
    ae22: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb1a8 <orange_dsp::generated_condensed::update+0x5b8>
    ae26: ee00 bb01    	vmla.f64	d11, d0, d1
    ae2a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb1b0 <orange_dsp::generated_condensed::update+0x5c0>
    ae2e: ee00 cb01    	vmla.f64	d12, d0, d1
    ae32: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb1b8 <orange_dsp::generated_condensed::update+0x5c8>
    ae36: ee00 db01    	vmla.f64	d13, d0, d1
    ae3a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb1c0 <orange_dsp::generated_condensed::update+0x5d0>
    ae3e: ee00 eb01    	vmla.f64	d14, d0, d1
    ae42: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb1c8 <orange_dsp::generated_condensed::update+0x5d8>
    ae46: ee00 fb01    	vmla.f64	d15, d0, d1
    ae4a: ed91 0a0b    	vldr	s0, [r1, #44]
    ae4e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ae52: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb1d0 <orange_dsp::generated_condensed::update+0x5e0>
    ae56: ee00 9b01    	vmla.f64	d9, d0, d1
    ae5a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb1d8 <orange_dsp::generated_condensed::update+0x5e8>
    ae5e: ee00 3b01    	vmla.f64	d3, d0, d1
    ae62: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb1e0 <orange_dsp::generated_condensed::update+0x5f0>
    ae66: ee00 4b01    	vmla.f64	d4, d0, d1
    ae6a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb1e8 <orange_dsp::generated_condensed::update+0x5f8>
    ae6e: ee00 ab01    	vmla.f64	d10, d0, d1
    ae72: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb1f0 <orange_dsp::generated_condensed::update+0x600>
    ae76: ee00 bb01    	vmla.f64	d11, d0, d1
    ae7a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb1f8 <orange_dsp::generated_condensed::update+0x608>
    ae7e: ee00 cb01    	vmla.f64	d12, d0, d1
    ae82: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb200 <orange_dsp::generated_condensed::update+0x610>
    ae86: ee00 db01    	vmla.f64	d13, d0, d1
    ae8a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb208 <orange_dsp::generated_condensed::update+0x618>
    ae8e: ee00 eb01    	vmla.f64	d14, d0, d1
    ae92: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb210 <orange_dsp::generated_condensed::update+0x620>
    ae96: ee00 fb01    	vmla.f64	d15, d0, d1
    ae9a: ed91 0a0c    	vldr	s0, [r1, #48]
    ae9e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    aea2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb218 <orange_dsp::generated_condensed::update+0x628>
    aea6: ee00 9b01    	vmla.f64	d9, d0, d1
    aeaa: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb220 <orange_dsp::generated_condensed::update+0x630>
    aeae: ee00 3b01    	vmla.f64	d3, d0, d1
    aeb2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb228 <orange_dsp::generated_condensed::update+0x638>
    aeb6: ee00 4b01    	vmla.f64	d4, d0, d1
    aeba: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb230 <orange_dsp::generated_condensed::update+0x640>
    aebe: ee00 ab01    	vmla.f64	d10, d0, d1
    aec2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb238 <orange_dsp::generated_condensed::update+0x648>
    aec6: ee00 bb01    	vmla.f64	d11, d0, d1
    aeca: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb240 <orange_dsp::generated_condensed::update+0x650>
    aece: ee00 cb01    	vmla.f64	d12, d0, d1
    aed2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb248 <orange_dsp::generated_condensed::update+0x658>
    aed6: ee00 db01    	vmla.f64	d13, d0, d1
    aeda: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb250 <orange_dsp::generated_condensed::update+0x660>
    aede: ee00 eb01    	vmla.f64	d14, d0, d1
    aee2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb258 <orange_dsp::generated_condensed::update+0x668>
    aee6: ee00 fb01    	vmla.f64	d15, d0, d1
    aeea: ed91 0a0d    	vldr	s0, [r1, #52]
    aeee: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    aef2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb260 <orange_dsp::generated_condensed::update+0x670>
    aef6: ee00 9b01    	vmla.f64	d9, d0, d1
    aefa: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb268 <orange_dsp::generated_condensed::update+0x678>
    aefe: ee00 3b01    	vmla.f64	d3, d0, d1
    af02: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb270 <orange_dsp::generated_condensed::update+0x680>
    af06: ee00 4b01    	vmla.f64	d4, d0, d1
    af0a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb278 <orange_dsp::generated_condensed::update+0x688>
    af0e: ee00 ab01    	vmla.f64	d10, d0, d1
    af12: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb280 <orange_dsp::generated_condensed::update+0x690>
    af16: ee00 bb01    	vmla.f64	d11, d0, d1
    af1a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb288 <orange_dsp::generated_condensed::update+0x698>
    af1e: ee00 cb01    	vmla.f64	d12, d0, d1
    af22: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb290 <orange_dsp::generated_condensed::update+0x6a0>
    af26: ee00 db01    	vmla.f64	d13, d0, d1
    af2a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb298 <orange_dsp::generated_condensed::update+0x6a8>
    af2e: ee00 eb01    	vmla.f64	d14, d0, d1
    af32: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb2a0 <orange_dsp::generated_condensed::update+0x6b0>
    af36: ee00 fb01    	vmla.f64	d15, d0, d1
    af3a: ed91 0a0e    	vldr	s0, [r1, #56]
    af3e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    af42: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb2a8 <orange_dsp::generated_condensed::update+0x6b8>
    af46: ee00 9b01    	vmla.f64	d9, d0, d1
    af4a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb2b0 <orange_dsp::generated_condensed::update+0x6c0>
    af4e: ee00 3b01    	vmla.f64	d3, d0, d1
    af52: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb2b8 <orange_dsp::generated_condensed::update+0x6c8>
    af56: ee00 4b01    	vmla.f64	d4, d0, d1
    af5a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb2c0 <orange_dsp::generated_condensed::update+0x6d0>
    af5e: ee00 ab01    	vmla.f64	d10, d0, d1
    af62: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb2c8 <orange_dsp::generated_condensed::update+0x6d8>
    af66: ee00 bb01    	vmla.f64	d11, d0, d1
    af6a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb2d0 <orange_dsp::generated_condensed::update+0x6e0>
    af6e: ee00 cb01    	vmla.f64	d12, d0, d1
    af72: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb2d8 <orange_dsp::generated_condensed::update+0x6e8>
    af76: ee00 db01    	vmla.f64	d13, d0, d1
    af7a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb2e0 <orange_dsp::generated_condensed::update+0x6f0>
    af7e: ee00 eb01    	vmla.f64	d14, d0, d1
    af82: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb2e8 <orange_dsp::generated_condensed::update+0x6f8>
    af86: ee00 fb01    	vmla.f64	d15, d0, d1
    af8a: ed92 0a03    	vldr	s0, [r2, #12]
    af8e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    af92: ed9f 1bd7    	vldr	d1, [pc, #860]          @ 0xb2f0 <orange_dsp::generated_condensed::update+0x700>
    af96: ed8d 3b1c    	vstr	d3, [sp, #112]
    af9a: ee20 3b01    	vmul.f64	d3, d0, d1
    af9e: ed92 1a02    	vldr	s2, [r2, #8]
    afa2: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    afa6: ed8d 2b26    	vstr	d2, [sp, #152]
    afaa: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xb2f8 <orange_dsp::generated_condensed::update+0x708>
    afae: ee01 3b02    	vmla.f64	d3, d1, d2
    afb2: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xb300 <orange_dsp::generated_condensed::update+0x710>
    afb6: ed8d 3b24    	vstr	d3, [sp, #144]
    afba: ee20 3b02    	vmul.f64	d3, d0, d2
    afbe: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xb308 <orange_dsp::generated_condensed::update+0x718>
    afc2: ee01 3b02    	vmla.f64	d3, d1, d2
    afc6: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xb310 <orange_dsp::generated_condensed::update+0x720>
    afca: ed8d 3b22    	vstr	d3, [sp, #136]
    afce: ee20 3b02    	vmul.f64	d3, d0, d2
    afd2: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xb318 <orange_dsp::generated_condensed::update+0x728>
    afd6: ee01 3b02    	vmla.f64	d3, d1, d2
    afda: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xb320 <orange_dsp::generated_condensed::update+0x730>
    afde: ed8d 3b20    	vstr	d3, [sp, #128]
    afe2: ee20 3b02    	vmul.f64	d3, d0, d2
    afe6: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xb328 <orange_dsp::generated_condensed::update+0x738>
    afea: ee01 3b02    	vmla.f64	d3, d1, d2
    afee: f000 b99f    	b.w	0xb330 <orange_dsp::generated_condensed::update+0x740> @ imm = #0x33e
    aff2: bf00         	nop
    aff4: bf00         	nop
    aff6: bf00         	nop
		...
    b000: c1 5d e1 c9  	.word	0xc9e15dc1
    b004: 86 54 e5 3f  	.word	0x3fe55486
    b008: a9 0f 6b 00  	.word	0x006b0fa9
    b00c: 3e 31 92 bf  	.word	0xbf92313e
    b010: a2 48 2a 74  	.word	0x742a48a2
    b014: 54 ba e4 3f  	.word	0x3fe4ba54
    b018: 00 60 41 1f  	.word	0x1f416000
    b01c: 45 49 27 bf  	.word	0xbf274945
    b020: 1a 5d 10 11  	.word	0x11105d1a
    b024: ce 53 e5 3f  	.word	0x3fe553ce
    b028: 46 6c 1c 77  	.word	0x771c6c46
    b02c: d3 64 5c bf  	.word	0xbf5c64d3
    b030: 80 0d 59 22  	.word	0x22590d80
    b034: 9f d9 b8 be  	.word	0xbeb8d99f
    b038: b0 e5 93 25  	.word	0x2593e5b0
    b03c: 2e 54 e5 3f  	.word	0x3fe5542e
    b040: 00 60 e7 86  	.word	0x86e76000
    b044: ec 07 ec 3e  	.word	0x3eec07ec
    b048: 00 f0 f8 21  	.word	0x21f8f000
    b04c: c8 2c 12 bf  	.word	0xbf122cc8
    b050: 3d 6e 12 0b  	.word	0x0b126e3d
    b054: a1 53 e5 3f  	.word	0x3fe553a1
    b058: 00 80 77 22  	.word	0x22778000
    b05c: 7a ac 2b 3f  	.word	0x3f2bac7a
    b060: 00 60 f5 32  	.word	0x32f56000
    b064: 2c 43 1b 3f  	.word	0x3f1b432c
    b068: 06 42 bd ec  	.word	0xecbd4206
    b06c: 6c ee e0 3f  	.word	0x3fe0ee6c
    b070: 75 22 80 1e  	.word	0x1e802275
    b074: ff ca ba 3f  	.word	0x3fbacaff
    b078: a3 83 c9 c1  	.word	0xc1c983a3
    b07c: 1d 54 e5 3f  	.word	0x3fe5541d
    b080: 00 ac c1 aa  	.word	0xaac1ac00
    b084: b7 a1 1d 3f  	.word	0x3f1da1b7
    b088: 00 8f fc e0  	.word	0xe0fc8f00
    b08c: bb 3a 58 bf  	.word	0xbf583abb
    b090: 80 c5 13 c0  	.word	0xc013c580
    b094: 2a 6f 52 3f  	.word	0x3f526f2a
    b098: 1a c8 c7 76  	.word	0x76c7c81a
    b09c: 6e b2 14 bf  	.word	0xbf14b26e
    b0a0: e2 63 27 22  	.word	0x222763e2
    b0a4: 1a 34 1b 3f  	.word	0x3f1b341a
    b0a8: 00 00 77 9e  	.word	0x9e770000
    b0ac: d4 83 d1 be  	.word	0xbed183d4
    b0b0: 00 80 54 bc  	.word	0xbc548000
    b0b4: c7 a6 ca 3e  	.word	0x3ecaa6c7
    b0b8: 78 c9 65 d2  	.word	0xd265c978
    b0bc: fb aa 81 bf  	.word	0xbf81aafb
    b0c0: 38 4b 1c 74  	.word	0x741c4b38
    b0c4: 5b e2 7a 3f  	.word	0x3f7ae25b
    b0c8: 00 a8 b7 3b  	.word	0x3bb7a800
    b0cc: a0 24 e9 be  	.word	0xbee924a0
    b0d0: 00 b0 3a 3d  	.word	0x3d3ab000
    b0d4: 0e 86 f0 3e  	.word	0x3ef0860e
    b0d8: 80 45 eb ca  	.word	0xcaeb4580
    b0dc: d6 b8 28 bf  	.word	0xbf28b8d6
    b0e0: 40 1e 97 40  	.word	0x40971e40
    b0e4: 1c cf 22 3f  	.word	0x3f22cf1c
    b0e8: 00 80 9e 71  	.word	0x719e8000
    b0ec: 3d 11 ca be  	.word	0xbeca113d
    b0f0: 00 00 cc 39  	.word	0x39cc0000
    b0f4: 23 d5 c3 3e  	.word	0x3ec3d523
    b0f8: 94 54 5e e4  	.word	0xe45e5494
    b0fc: 65 da e0 3f  	.word	0x3fe0da65
    b100: 00 d0 32 e7  	.word	0xe732d000
    b104: 2f 62 23 bf  	.word	0xbf23622f
    b108: b0 9a 2c 49  	.word	0x492c9ab0
    b10c: 0a 30 e5 3f  	.word	0x3fe5300a
    b110: 6a 59 88 8d  	.word	0x8d88596a
    b114: ec 13 1b 3f  	.word	0x3f1b13ec
    b118: 00 80 a9 db  	.word	0xdba98000
    b11c: 1c 6f d1 be  	.word	0xbed16f1c
    b120: 70 a7 27 c0  	.word	0xc027a770
    b124: 15 96 81 bf  	.word	0xbf819615
    b128: 00 10 7b a9  	.word	0xa97b1000
    b12c: 82 72 f0 3e  	.word	0x3ef07282
    b130: 80 84 35 a4  	.word	0xa4358480
    b134: 98 9b 28 bf  	.word	0xbf289b98
    b138: 00 00 11 e3  	.word	0xe3110000
    b13c: 67 f2 c9 be  	.word	0xbec9f267
    b140: 7f 02 92 0b  	.word	0x0b92027f
    b144: f9 a6 d7 bf  	.word	0xbfd7a6f9
    b148: 00 70 27 22  	.word	0x22277000
    b14c: 1a 34 1b 3f  	.word	0x3f1b341a
    b150: 00 37 75 d8  	.word	0xd8753700
    b154: 73 ec 50 3f  	.word	0x3f50ec73
    b158: f9 c7 6f 0d  	.word	0x0d6fc7f9
    b15c: d1 52 e5 3f  	.word	0x3fe552d1
    b160: 00 c0 70 c7  	.word	0xc770c000
    b164: ac e2 f3 be  	.word	0xbef3e2ac
    b168: b8 ba 9c 87  	.word	0x879cbab8
    b16c: 20 0f a4 bf  	.word	0xbfa40f20
    b170: 00 58 ad cf  	.word	0xcfad5800
    b174: 8d c2 12 3f  	.word	0x3f12c28d
    b178: 00 67 c9 53  	.word	0x53c96700
    b17c: 63 11 4c bf  	.word	0xbf4c1163
    b180: 00 00 01 7a  	.word	0x7a010000
    b184: 66 98 ed be  	.word	0xbeed9866
    b188: 49 ec 9f 20  	.word	0x209fec49
    b18c: fa 74 8e 3f  	.word	0x3f8e74fa
    b190: 00 b8 a6 9d  	.word	0x9da6b800
    b194: d4 83 d1 be  	.word	0xbed183d4
    b198: 00 0a 5f 13  	.word	0x135f0a00
    b19c: e4 ca 05 bf  	.word	0xbf05cae4
    b1a0: 78 b8 70 c7  	.word	0xc770b878
    b1a4: ac e2 f3 be  	.word	0xbef3e2ac
    b1a8: 5b ad 92 3c  	.word	0x3c92ad5b
    b1ac: 15 55 e5 3f  	.word	0x3fe55515
    b1b0: 00 25 a5 be  	.word	0xbea52500
    b1b4: 02 2a b0 bf  	.word	0xbfb02a02
    b1b8: 00 f8 5d c6  	.word	0xc65df800
    b1bc: 07 3c 1e 3f  	.word	0x3f1e3c07
    b1c0: 40 ea 5d 38  	.word	0x385dea40
    b1c4: 29 9e 56 bf  	.word	0xbf569e29
    b1c8: 00 c0 dc 8e  	.word	0x8edcc000
    b1cc: 3f d9 f7 be  	.word	0xbef7d93f
    b1d0: 47 e4 bd ce  	.word	0xcebde447
    b1d4: 0e 2b 69 3f  	.word	0x3f692b0e
    b1d8: 00 40 8f da  	.word	0xda8f4000
    b1dc: 74 f2 ac be  	.word	0xbeacf274
    b1e0: 00 a7 84 8f  	.word	0x8f84a700
    b1e4: 22 02 e2 be  	.word	0xbee20222
    b1e8: 1f bc 4a 33  	.word	0x334abc1f
    b1ec: b2 6e d0 be  	.word	0xbed06eb2
    b1f0: 00 fc fb 7d  	.word	0x7dfbfc00
    b1f4: b7 7b da be  	.word	0xbeda7bb7
    b1f8: 8f e3 b2 48  	.word	0x48b2e38f
    b1fc: 3c e9 e2 3f  	.word	0x3fe2e93c
    b200: 00 e4 71 6e  	.word	0x6e71e400
    b204: 56 32 23 3f  	.word	0x3f233256
    b208: 00 05 e0 bc  	.word	0xbce00500
    b20c: 17 92 30 bf  	.word	0xbf309217
    b210: 00 80 de 1d  	.word	0x1dde8000
    b214: 5b d0 f4 be  	.word	0xbef4d05b
    b218: f4 24 ee df  	.word	0xdfee24f4
    b21c: 96 e5 64 bf  	.word	0xbf64e596
    b220: 00 60 1c e5  	.word	0xe51c6000
    b224: ce 08 a8 3e  	.word	0x3ea808ce
    b228: 00 e0 2c 34  	.word	0x342ce000
    b22c: 79 e7 dd 3e  	.word	0x3edde779
    b230: e7 ed e4 73  	.word	0x73e4ede7
    b234: 88 49 cb 3e  	.word	0x3ecb4988
    b238: 00 54 55 ed  	.word	0xed555400
    b23c: 1c fd d5 3e  	.word	0x3ed5fd1c
    b240: 20 1d 0d ea  	.word	0xea0d1d20
    b244: de 0a b1 3f  	.word	0x3fb10ade
    b248: 0e cf 4c 9e  	.word	0x9e4ccf0e
    b24c: ea 50 e5 3f  	.word	0x3fe550ea
    b250: 90 b1 c1 c8  	.word	0xc8c1b190
    b254: ce b5 51 3f  	.word	0x3f51b5ce
    b258: 00 c0 f7 85  	.word	0x85f7c000
    b25c: e2 5d f8 be  	.word	0xbef85de2
    b260: cf 1e ec 24  	.word	0x24ec1ecf
    b264: 9c 63 8d 3f  	.word	0x3f8d639c
    b268: 00 80 67 df  	.word	0xdf678000
    b26c: 9f e6 d0 be  	.word	0xbed0e69f
    b270: 00 ba a2 95  	.word	0x95a2ba00
    b274: 4a 07 05 bf  	.word	0xbf05074a
    b278: 5f e8 1a 49  	.word	0x491ae85f
    b27c: 31 30 f3 be  	.word	0xbef33031
    b280: 00 bc c0 af  	.word	0xafc0bc00
    b284: ba ec fe be  	.word	0xbefeecba
    b288: 40 2a 3d 87  	.word	0x873d2a40
    b28c: 32 a8 ab bf  	.word	0xbfaba832
    b290: 00 58 47 7f  	.word	0x7f475800
    b294: c7 a5 40 3f  	.word	0x3f40a5c7
    b298: c6 60 4c 9c  	.word	0x9c4c60c6
    b29c: 3d 43 e5 3f  	.word	0x3fe5433d
    b2a0: 00 80 ea 14  	.word	0x14ea8000
    b2a4: fe 54 f5 3e  	.word	0x3ef554fe
    b2a8: 30 f8 ed 0a  	.word	0x0aedf830
    b2ac: b2 7b 40 3f  	.word	0x3f407bb2
    b2b0: 00 d0 c0 ef  	.word	0xefc0d000
    b2b4: 43 f5 82 be  	.word	0xbe82f543
    b2b8: 00 44 9d fc  	.word	0xfc9d4400
    b2bc: 8c 96 b7 be  	.word	0xbeb7968c
    b2c0: 33 60 a3 fb  	.word	0xfba36033
    b2c4: 1b 86 a5 be  	.word	0xbea5861b
    b2c8: 00 9e 73 39  	.word	0x39739e00
    b2cc: 2e 58 b1 be  	.word	0xbeb1582e
    b2d0: a7 94 9b fb  	.word	0xfb9b94a7
    b2d4: 6d 7a 82 bf  	.word	0xbf827a6d
    b2d8: 00 2c 02 86  	.word	0x86022c00
    b2dc: e2 5d f8 be  	.word	0xbef85de2
    b2e0: 40 eb 05 06  	.word	0x0605eb40
    b2e4: 91 b1 06 3f  	.word	0x3f06b191
    b2e8: 03 bd 02 e5  	.word	0xe502bd03
    b2ec: fa 54 e5 3f  	.word	0x3fe554fa
    b2f0: 76 43 71 a5  	.word	0xa5714376
    b2f4: f8 73 e2 bf  	.word	0xbfe273f8
    b2f8: 90 85 b9 69  	.word	0x69b98590
    b2fc: a2 a1 ce bf  	.word	0xbfcea1a2
    b300: 00 70 07 91  	.word	0x91077000
    b304: 41 39 25 3f  	.word	0x3f253941
    b308: 00 80 10 04  	.word	0x04108000
    b30c: 83 9d 11 3f  	.word	0x3f119d83
    b310: 00 b8 93 75  	.word	0x7593b800
    b314: 30 68 5a 3f  	.word	0x3f5a6830
    b318: 00 5c 9c 19  	.word	0x199c5c00
    b31c: d8 ea 45 3f  	.word	0x3f45ead8
    b320: 28 b4 ed 8f  	.word	0x8fedb428
    b324: 1e 56 3c bf  	.word	0xbf3c561e
    b328: 00 80 d1 f5  	.word	0xf5d18000
    b32c: d4 ff 33 3f  	.word	0x3f33ffd4
    b330: ed9f 2beb    	vldr	d2, [pc, #940]          @ 0xb6e0 <orange_dsp::generated_condensed::update+0xaf0>
    b334: ed8d 3b1e    	vstr	d3, [sp, #120]
    b338: ee20 3b02    	vmul.f64	d3, d0, d2
    b33c: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xb6e8 <orange_dsp::generated_condensed::update+0xaf8>
    b340: ee01 3b02    	vmla.f64	d3, d1, d2
    b344: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xb6f0 <orange_dsp::generated_condensed::update+0xb00>
    b348: ed8d 3b18    	vstr	d3, [sp, #96]
    b34c: ee20 3b02    	vmul.f64	d3, d0, d2
    b350: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xb6f8 <orange_dsp::generated_condensed::update+0xb08>
    b354: ee01 3b02    	vmla.f64	d3, d1, d2
    b358: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xb700 <orange_dsp::generated_condensed::update+0xb10>
    b35c: ed8d 3b16    	vstr	d3, [sp, #88]
    b360: ee20 3b02    	vmul.f64	d3, d0, d2
    b364: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xb708 <orange_dsp::generated_condensed::update+0xb18>
    b368: ee01 3b02    	vmla.f64	d3, d1, d2
    b36c: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xb710 <orange_dsp::generated_condensed::update+0xb20>
    b370: ed8d 3b14    	vstr	d3, [sp, #80]
    b374: ee20 3b02    	vmul.f64	d3, d0, d2
    b378: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xb718 <orange_dsp::generated_condensed::update+0xb28>
    b37c: ee01 3b02    	vmla.f64	d3, d1, d2
    b380: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xb720 <orange_dsp::generated_condensed::update+0xb30>
    b384: ee20 2b02    	vmul.f64	d2, d0, d2
    b388: ed9f 0be7    	vldr	d0, [pc, #924]          @ 0xb728 <orange_dsp::generated_condensed::update+0xb38>
    b38c: ee01 2b00    	vmla.f64	d2, d1, d0
    b390: ed91 0a10    	vldr	s0, [r1, #64]
    b394: ed8d 2b10    	vstr	d2, [sp, #64]
    b398: ed91 2a0f    	vldr	s4, [r1, #60]
    b39c: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    b3a0: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    b3a4: ed8d 3b12    	vstr	d3, [sp, #72]
    b3a8: ed9f 0be1    	vldr	d0, [pc, #900]          @ 0xb730 <orange_dsp::generated_condensed::update+0xb40>
    b3ac: ed9f 3be2    	vldr	d3, [pc, #904]          @ 0xb738 <orange_dsp::generated_condensed::update+0xb48>
    b3b0: ee21 0b00    	vmul.f64	d0, d1, d0
    b3b4: ee02 0b03    	vmla.f64	d0, d2, d3
    b3b8: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xb748 <orange_dsp::generated_condensed::update+0xb58>
    b3bc: ee21 1b03    	vmul.f64	d1, d1, d3
    b3c0: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xb750 <orange_dsp::generated_condensed::update+0xb60>
    b3c4: ee02 1b03    	vmla.f64	d1, d2, d3
    b3c8: ed91 2a12    	vldr	s4, [r1, #72]
    b3cc: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    b3d0: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xb760 <orange_dsp::generated_condensed::update+0xb70>
    b3d4: ed8d 5b28    	vstr	d5, [sp, #160]
    b3d8: ee22 5b03    	vmul.f64	d5, d2, d3
    b3dc: ed91 3a11    	vldr	s6, [r1, #68]
    b3e0: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    b3e4: ed8d 4b1a    	vstr	d4, [sp, #104]
    b3e8: ed9f 4bdf    	vldr	d4, [pc, #892]          @ 0xb768 <orange_dsp::generated_condensed::update+0xb78>
    b3ec: ee03 5b04    	vmla.f64	d5, d3, d4
    b3f0: ed9f 4be3    	vldr	d4, [pc, #908]          @ 0xb780 <orange_dsp::generated_condensed::update+0xb90>
    b3f4: ee23 7b04    	vmul.f64	d7, d3, d4
    b3f8: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xb788 <orange_dsp::generated_condensed::update+0xb98>
    b3fc: ee02 7b03    	vmla.f64	d7, d2, d3
    b400: ee38 3b00    	vadd.f64	d3, d8, d0
    b404: ed92 0a04    	vldr	s0, [r2, #16]
    b408: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b40c: ed9f 2bcc    	vldr	d2, [pc, #816]          @ 0xb740 <orange_dsp::generated_condensed::update+0xb50>
    b410: ee00 3b02    	vmla.f64	d3, d0, d2
    b414: ee38 2b01    	vadd.f64	d2, d8, d1
    b418: ed9f 1bcf    	vldr	d1, [pc, #828]          @ 0xb758 <orange_dsp::generated_condensed::update+0xb68>
    b41c: ee00 2b01    	vmla.f64	d2, d0, d1
    b420: ed92 1a05    	vldr	s2, [r2, #20]
    b424: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    b428: ed8d 2b0c    	vstr	d2, [sp, #48]
    b42c: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xb770 <orange_dsp::generated_condensed::update+0xb80>
    b430: ed8d 3b0e    	vstr	d3, [sp, #56]
    b434: ee21 3b02    	vmul.f64	d3, d1, d2
    b438: ed9f 2bcf    	vldr	d2, [pc, #828]          @ 0xb778 <orange_dsp::generated_condensed::update+0xb88>
    b43c: ee00 3b02    	vmla.f64	d3, d0, d2
    b440: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xb790 <orange_dsp::generated_condensed::update+0xba0>
    b444: ed8d 3b0a    	vstr	d3, [sp, #40]
    b448: ee21 3b02    	vmul.f64	d3, d1, d2
    b44c: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xb798 <orange_dsp::generated_condensed::update+0xba8>
    b450: ee00 3b02    	vmla.f64	d3, d0, d2
    b454: ed91 0a14    	vldr	s0, [r1, #80]
    b458: ed8d 3b06    	vstr	d3, [sp, #24]
    b45c: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    b460: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0xb7a0 <orange_dsp::generated_condensed::update+0xbb0>
    b464: ee23 2b00    	vmul.f64	d2, d3, d0
    b468: ed91 0a13    	vldr	s0, [r1, #76]
    b46c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b470: ed9f 4bcd    	vldr	d4, [pc, #820]          @ 0xb7a8 <orange_dsp::generated_condensed::update+0xbb8>
    b474: ee00 2b04    	vmla.f64	d2, d0, d4
    b478: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xb7b8 <orange_dsp::generated_condensed::update+0xbc8>
    b47c: ee20 0b04    	vmul.f64	d0, d0, d4
    b480: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xb7c0 <orange_dsp::generated_condensed::update+0xbd0>
    b484: ee03 0b04    	vmla.f64	d0, d3, d4
    b488: ed92 3a06    	vldr	s6, [r2, #24]
    b48c: ed8d 5b08    	vstr	d5, [sp, #32]
    b490: eeb0 5b48    	vmov.f64	d5, d8
    b494: eeb7 8ac3    	vcvt.f64.f32	d8, s6
    b498: ed9f 4bc5    	vldr	d4, [pc, #788]          @ 0xb7b0 <orange_dsp::generated_condensed::update+0xbc0>
    b49c: ed8d 6b2a    	vstr	d6, [sp, #168]
    b4a0: ee21 6b04    	vmul.f64	d6, d1, d4
    b4a4: ee08 6b44    	vmls.f64	d6, d8, d4
    b4a8: ed9f 4bc7    	vldr	d4, [pc, #796]          @ 0xb7c8 <orange_dsp::generated_condensed::update+0xbd8>
    b4ac: ee21 3b04    	vmul.f64	d3, d1, d4
    b4b0: ee08 3b44    	vmls.f64	d3, d8, d4
    b4b4: ed91 4a15    	vldr	s8, [r1, #84]
    b4b8: eeb7 8ac4    	vcvt.f64.f32	d8, s8
    b4bc: ed9f 1bc4    	vldr	d1, [pc, #784]          @ 0xb7d0 <orange_dsp::generated_condensed::update+0xbe0>
    b4c0: eeb0 4b45    	vmov.f64	d4, d5
    b4c4: ee08 4b01    	vmla.f64	d4, d8, d1
    b4c8: ed9f 1b81    	vldr	d1, [pc, #516]          @ 0xb6d0 <orange_dsp::generated_condensed::update+0xae0>
    b4cc: ee35 8b01    	vadd.f64	d8, d5, d1
    b4d0: eeb0 1b45    	vmov.f64	d1, d5
    b4d4: ee35 9b09    	vadd.f64	d9, d5, d9
    b4d8: ed9d 5b1c    	vldr	d5, [sp, #112]
    b4dc: ee31 5b05    	vadd.f64	d5, d1, d5
    b4e0: ed8d 5b1c    	vstr	d5, [sp, #112]
    b4e4: ed9d 5b1a    	vldr	d5, [sp, #104]
    b4e8: ee31 0b00    	vadd.f64	d0, d1, d0
    b4ec: ee31 5b05    	vadd.f64	d5, d1, d5
    b4f0: ed8d 0b00    	vstr	d0, [sp]
    b4f4: ed91 0a16    	vldr	s0, [r1, #88]
    b4f8: ed8d 5b1a    	vstr	d5, [sp, #104]
    b4fc: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b500: ed9d 5b08    	vldr	d5, [sp, #32]
    b504: ee31 2b02    	vadd.f64	d2, d1, d2
    b508: ed8d 2b02    	vstr	d2, [sp, #8]
    b50c: ed9f 2bb4    	vldr	d2, [pc, #720]          @ 0xb7e0 <orange_dsp::generated_condensed::update+0xbf0>
    b510: ee31 5b05    	vadd.f64	d5, d1, d5
    b514: ed8d 5b08    	vstr	d5, [sp, #32]
    b518: ee31 5b07    	vadd.f64	d5, d1, d7
    b51c: eeb0 7b41    	vmov.f64	d7, d1
    b520: ee00 7b02    	vmla.f64	d7, d0, d2
    b524: ed92 0a07    	vldr	s0, [r2, #28]
    b528: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b52c: ed9f 2baa    	vldr	d2, [pc, #680]          @ 0xb7d8 <orange_dsp::generated_condensed::update+0xbe8>
    b530: ee00 4b02    	vmla.f64	d4, d0, d2
    b534: ed9f 2bac    	vldr	d2, [pc, #688]          @ 0xb7e8 <orange_dsp::generated_condensed::update+0xbf8>
    b538: ee00 7b02    	vmla.f64	d7, d0, d2
    b53c: ed92 0a00    	vldr	s0, [r2]
    b540: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b544: ed9f 2b64    	vldr	d2, [pc, #400]          @ 0xb6d8 <orange_dsp::generated_condensed::update+0xae8>
    b548: ee31 ab0a    	vadd.f64	d10, d1, d10
    b54c: ee31 bb0b    	vadd.f64	d11, d1, d11
    b550: ee31 cb0c    	vadd.f64	d12, d1, d12
    b554: ee31 db0d    	vadd.f64	d13, d1, d13
    b558: ee31 eb0e    	vadd.f64	d14, d1, d14
    b55c: ee31 fb0f    	vadd.f64	d15, d1, d15
    b560: ed9d 1b2c    	vldr	d1, [sp, #176]
    b564: ee00 1b02    	vmla.f64	d1, d0, d2
    b568: ee38 0b00    	vadd.f64	d0, d8, d0
    b56c: ed8d 5b04    	vstr	d5, [sp, #16]
    b570: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b574: ed80 0a00    	vstr	s0, [r0]
    b578: ed9d 2b24    	vldr	d2, [sp, #144]
    b57c: ed9d 5b22    	vldr	d5, [sp, #136]
    b580: ed9d 8b1c    	vldr	d8, [sp, #112]
    b584: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    b588: ed80 0a01    	vstr	s0, [r0, #4]
    b58c: ed9d 0b2e    	vldr	d0, [sp, #184]
    b590: ee39 2b02    	vadd.f64	d2, d9, d2
    b594: ee38 8b05    	vadd.f64	d8, d8, d5
    b598: ed9d 5b20    	vldr	d5, [sp, #128]
    b59c: ed9d 9b1a    	vldr	d9, [sp, #104]
    b5a0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b5a4: ed80 0a02    	vstr	s0, [r0, #8]
    b5a8: ee39 9b05    	vadd.f64	d9, d9, d5
    b5ac: ed9d 5b1e    	vldr	d5, [sp, #120]
    b5b0: ed9d 0b2a    	vldr	d0, [sp, #168]
    b5b4: ee3a ab05    	vadd.f64	d10, d10, d5
    b5b8: ed9d 5b18    	vldr	d5, [sp, #96]
    b5bc: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b5c0: ed80 0a03    	vstr	s0, [r0, #12]
    b5c4: ed9d 0b28    	vldr	d0, [sp, #160]
    b5c8: ee3b bb05    	vadd.f64	d11, d11, d5
    b5cc: ed9d 5b16    	vldr	d5, [sp, #88]
    b5d0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b5d4: ed80 0a04    	vstr	s0, [r0, #16]
    b5d8: ee3c cb05    	vadd.f64	d12, d12, d5
    b5dc: ed9d 5b14    	vldr	d5, [sp, #80]
    b5e0: ed9d 0b26    	vldr	d0, [sp, #152]
    b5e4: ee3d db05    	vadd.f64	d13, d13, d5
    b5e8: ed9d 5b12    	vldr	d5, [sp, #72]
    b5ec: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b5f0: ed80 0a05    	vstr	s0, [r0, #20]
    b5f4: eeb7 0bc2    	vcvt.f32.f64	s0, d2
    b5f8: ed80 0a06    	vstr	s0, [r0, #24]
    b5fc: ee3e eb05    	vadd.f64	d14, d14, d5
    b600: ed9d 5b10    	vldr	d5, [sp, #64]
    b604: eeb7 0bc8    	vcvt.f32.f64	s0, d8
    b608: ed80 0a07    	vstr	s0, [r0, #28]
    b60c: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    b610: ed80 0a08    	vstr	s0, [r0, #32]
    b614: ee3f 5b05    	vadd.f64	d5, d15, d5
    b618: eeb7 0bca    	vcvt.f32.f64	s0, d10
    b61c: ed80 0a09    	vstr	s0, [r0, #36]
    b620: ed8d 5b24    	vstr	d5, [sp, #144]
    b624: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    b628: ed80 0a0a    	vstr	s0, [r0, #40]
    b62c: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    b630: ed80 0a0b    	vstr	s0, [r0, #44]
    b634: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    b638: ed80 0a0c    	vstr	s0, [r0, #48]
    b63c: eeb7 0bce    	vcvt.f32.f64	s0, d14
    b640: ed80 0a0d    	vstr	s0, [r0, #52]
    b644: ed9d 0b24    	vldr	d0, [sp, #144]
    b648: ed9d 5b0a    	vldr	d5, [sp, #40]
    b64c: ed9d fb08    	vldr	d15, [sp, #32]
    b650: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b654: ed80 0a0e    	vstr	s0, [r0, #56]
    b658: ed9d 0b0e    	vldr	d0, [sp, #56]
    b65c: ee3f 5b05    	vadd.f64	d5, d15, d5
    b660: ed8d 5b2c    	vstr	d5, [sp, #176]
    b664: ed9d 5b06    	vldr	d5, [sp, #24]
    b668: ed9d fb04    	vldr	d15, [sp, #16]
    b66c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b670: ed80 0a0f    	vstr	s0, [r0, #60]
    b674: ed9d 0b0c    	vldr	d0, [sp, #48]
    b678: ee3f 5b05    	vadd.f64	d5, d15, d5
    b67c: ed9d fb02    	vldr	d15, [sp, #8]
    b680: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b684: ed80 0a10    	vstr	s0, [r0, #64]
    b688: ee3f 6b06    	vadd.f64	d6, d15, d6
    b68c: ed9d fb00    	vldr	d15, [sp]
    b690: ed9d 0b2c    	vldr	d0, [sp, #176]
    b694: ee3f 3b03    	vadd.f64	d3, d15, d3
    b698: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b69c: ed80 0a11    	vstr	s0, [r0, #68]
    b6a0: eeb7 0bc5    	vcvt.f32.f64	s0, d5
    b6a4: ed80 0a12    	vstr	s0, [r0, #72]
    b6a8: eeb7 0bc6    	vcvt.f32.f64	s0, d6
    b6ac: ed80 0a13    	vstr	s0, [r0, #76]
    b6b0: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    b6b4: ed80 0a14    	vstr	s0, [r0, #80]
    b6b8: eeb7 0bc4    	vcvt.f32.f64	s0, d4
    b6bc: ed80 0a15    	vstr	s0, [r0, #84]
    b6c0: eeb7 0bc7    	vcvt.f32.f64	s0, d7
    b6c4: ed80 0a16    	vstr	s0, [r0, #88]
    b6c8: b030         	add	sp, #0xc0
    b6ca: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    b6ce: bd80         	pop	{r7, pc}
		...
    b6d8: 00 e0 35 df  	.word	0xdf35e000
    b6dc: 12 5d 23 3f  	.word	0x3f235d12
    b6e0: 00 40 b2 d2  	.word	0xd2b24000
    b6e4: 8e 3e f2 3e  	.word	0x3ef23e8e
    b6e8: 00 40 3c 73  	.word	0x733c4000
    b6ec: b9 32 02 3f  	.word	0x3f0232b9
    b6f0: 08 f7 83 70  	.word	0x7083f708
    b6f4: 57 67 a2 3f  	.word	0x3fa26757
    b6f8: 70 97 28 9d  	.word	0x9d289770
    b6fc: 67 5b b2 3f  	.word	0x3fb25b67
    b700: 00 18 07 f2  	.word	0xf2071800
    b704: 36 36 11 bf  	.word	0xbf113636
    b708: 00 2c 41 07  	.word	0x07412c00
    b70c: 0d 2b 21 bf  	.word	0xbf212b0d
    b710: 00 11 6e ab  	.word	0xab6e1100
    b714: 66 c0 49 3f  	.word	0x3f49c066
    b718: 00 57 e3 c4  	.word	0xc4e35700
    b71c: b2 af 59 3f  	.word	0x3f59afb2
    b720: 00 00 53 f5  	.word	0xf5530000
    b724: 24 27 eb 3e  	.word	0x3eeb2724
    b728: 00 00 83 5f  	.word	0x5f830000
    b72c: 88 15 fb 3e  	.word	0x3efb1588
    b730: 30 b5 9f 60  	.word	0x609fb530
    b734: ab e5 d3 3f  	.word	0x3fd3e5ab
    b738: 3b cc c8 6a  	.word	0x6ac8cc3b
    b73c: c2 ed a6 3f  	.word	0x3fa6edc2
    b740: c8 8f ef 10  	.word	0x10ef8fc8
    b744: 81 d8 dd bf  	.word	0xbfddd881
    b748: 28 3f 82 e4  	.word	0xe4823f28
    b74c: 69 54 e5 3f  	.word	0x3fe55469
    b750: bf 80 ca 02  	.word	0x02ca80bf
    b754: ca a2 ed 3e  	.word	0x3eeda2ca
    b758: e4 27 14 ca  	.word	0xca1427e4
    b75c: 93 12 26 3f  	.word	0x3f261293
    b760: f7 82 13 a7  	.word	0xa71382f7
    b764: 09 7c d7 bf  	.word	0xbfd77c09
    b768: 7b 84 3a 2a  	.word	0x2a3a847b
    b76c: 5a 5f c0 3f  	.word	0x3fc05f5a
    b770: cc 5e bc b6  	.word	0xb6bc5ecc
    b774: a2 bc e5 bf  	.word	0xbfe5bca2
    b778: 15 be b6 e5  	.word	0xe5b6be15
    b77c: 6d 7e c0 3f  	.word	0x3fc07e6d
    b780: 00 90 99 b0  	.word	0xb0999000
    b784: 0f 3d 03 bf  	.word	0xbf033d0f
    b788: 36 0c 56 03  	.word	0x03560c36
    b78c: a1 54 e5 3f  	.word	0x3fe554a1
    b790: 00 60 f1 d0  	.word	0xd0f16000
    b794: 95 1e 18 bf  	.word	0xbf181e95
    b798: 00 70 fc 18  	.word	0x18fc7000
    b79c: 94 61 03 bf  	.word	0xbf036194
    b7a0: d2 4f d6 fa  	.word	0xfad64fd2
    b7a4: 97 86 f2 be  	.word	0xbef28697
    b7a8: b5 2c 68 6e  	.word	0x6e682cb5
    b7ac: 31 53 e5 3f  	.word	0x3fe55331
    b7b0: 00 80 e7 1d  	.word	0x1de78000
    b7b4: d3 ae 39 3f  	.word	0x3f39aed3
    b7b8: 00 d8 8b f9  	.word	0xf98bd800
    b7bc: 3d 28 27 bf  	.word	0xbf27283d
    b7c0: ca 9f ba 05  	.word	0x05ba9fca
    b7c4: 70 52 e5 3f  	.word	0x3fe55270
    b7c8: 00 e4 28 7b  	.word	0x7b28e400
    b7cc: 2e 5e 31 3f  	.word	0x3f315e2e
    b7d0: 5d ef 75 b1  	.word	0xb175ef5d
    b7d4: 41 55 e5 3f  	.word	0x3fe55541
    b7d8: 77 21 f7 18  	.word	0x18f72177
    b7dc: cf 75 ed 3e  	.word	0x3eed75cf
    b7e0: 21 8e 90 51  	.word	0x51908e21
    b7e4: b7 61 83 3f  	.word	0x3f8361b7
    b7e8: ab 9c 16 b4  	.word	0xb4169cab
    b7ec: b5 8b ef 3f  	.word	0x3fef8bb5

0000b7f0 <orange_dsp::condensed::solve>:
    b7f0: b5f0         	push	{r4, r5, r6, r7, lr}
    b7f2: af03         	add	r7, sp, #0xc
    b7f4: e92d 0b00    	push.w	{r8, r9, r11}
    b7f8: b083         	sub	sp, #0xc
    b7fa: 2a01         	cmp	r2, #0x1
    b7fc: f04f 0e00    	mov.w	lr, #0x0
    b800: d923         	bls	0xb84a <orange_dsp::condensed::solve+0x5a> @ imm = #0x46
    b802: ed90 0a03    	vldr	s0, [r0, #12]
    b806: ed90 1a00    	vldr	s2, [r0]
    b80a: eeb0 0ac0    	vabs.f32	s0, s0
    b80e: eeb0 1ac1    	vabs.f32	s2, s2
    b812: eeb4 0a41    	vcmp.f32	s0, s2
    b816: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b81a: bfc8         	it	gt
    b81c: f04f 0e01    	movgt.w	lr, #0x1
    b820: 2a02         	cmp	r2, #0x2
    b822: d012         	beq	0xb84a <orange_dsp::condensed::solve+0x5a> @ imm = #0x24
    b824: eb0e 064e    	add.w	r6, lr, lr, lsl #1
    b828: ed90 0a06    	vldr	s0, [r0, #24]
    b82c: eeb0 0ac0    	vabs.f32	s0, s0
    b830: eb00 0686    	add.w	r6, r0, r6, lsl #2
    b834: ed96 1a00    	vldr	s2, [r6]
    b838: eeb0 1ac1    	vabs.f32	s2, s2
    b83c: eeb4 0a41    	vcmp.f32	s0, s2
    b840: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b844: bfc8         	it	gt
    b846: f04f 0e02    	movgt.w	lr, #0x2
    b84a: eb0e 064e    	add.w	r6, lr, lr, lsl #1
    b84e: f8d0 c000    	ldr.w	r12, [r0]
    b852: eb00 0586    	add.w	r5, r0, r6, lsl #2
    b856: f850 3026    	ldr.w	r3, [r0, r6, lsl #2]
    b85a: e9d5 4801    	ldrd	r4, r8, [r5, #4]
    b85e: 6003         	str	r3, [r0]
    b860: 6843         	ldr	r3, [r0, #0x4]
    b862: 6044         	str	r4, [r0, #0x4]
    b864: 6884         	ldr	r4, [r0, #0x8]
    b866: f8c0 8008    	str.w	r8, [r0, #0x8]
    b86a: f840 c026    	str.w	r12, [r0, r6, lsl #2]
    b86e: 680e         	ldr	r6, [r1]
    b870: e9c5 3401    	strd	r3, r4, [r5, #4]
    b874: ed90 0a00    	vldr	s0, [r0]
    b878: f851 502e    	ldr.w	r5, [r1, lr, lsl #2]
    b87c: ee10 3a10    	vmov	r3, s0
    b880: 600d         	str	r5, [r1]
    b882: f841 602e    	str.w	r6, [r1, lr, lsl #2]
    b886: f023 4300    	bic	r3, r3, #0x80000000
    b88a: f1b3 4fff    	cmp.w	r3, #0x7f800000
    b88e: f04f 0300    	mov.w	r3, #0x0
    b892: f280 8119    	bge.w	0xbac8 <orange_dsp::condensed::solve+0x2d8> @ imm = #0x232
    b896: eeb0 1ac0    	vabs.f32	s2, s0
    b89a: ed9f 0a8e    	vldr	s0, [pc, #568]          @ 0xbad4 <orange_dsp::condensed::solve+0x2e4>
    b89e: eeb4 1a40    	vcmp.f32	s2, s0
    b8a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b8a6: f100 810f    	bmi.w	0xbac8 <orange_dsp::condensed::solve+0x2d8> @ imm = #0x21e
    b8aa: 2a02         	cmp	r2, #0x2
    b8ac: f0c0 80b9    	blo.w	0xba22 <orange_dsp::condensed::solve+0x232> @ imm = #0x172
    b8b0: ed90 1a00    	vldr	s2, [r0]
    b8b4: ed90 2a03    	vldr	s4, [r0, #12]
    b8b8: ee82 1a01    	vdiv.f32	s2, s4, s2
    b8bc: ed90 2a01    	vldr	s4, [r0, #4]
    b8c0: ed90 3a04    	vldr	s6, [r0, #16]
    b8c4: 2a02         	cmp	r2, #0x2
    b8c6: ee01 3a42    	vmls.f32	s6, s2, s4
    b8ca: ed80 3a04    	vstr	s6, [r0, #16]
    b8ce: d10f         	bne	0xb8f0 <orange_dsp::condensed::solve+0x100> @ imm = #0x1e
    b8d0: ed91 2a00    	vldr	s4, [r1]
    b8d4: ed91 3a01    	vldr	s6, [r1, #4]
    b8d8: ee01 3a42    	vmls.f32	s6, s2, s4
    b8dc: f04f 0e01    	mov.w	lr, #0x1
    b8e0: f04f 0c00    	mov.w	r12, #0x0
    b8e4: ed81 3a01    	vstr	s6, [r1, #4]
    b8e8: e040         	b	0xb96c <orange_dsp::condensed::solve+0x17c> @ imm = #0x80
    b8ea: bf00         	nop
    b8ec: bf00         	nop
    b8ee: bf00         	nop
    b8f0: ed90 2a00    	vldr	s4, [r0]
    b8f4: ed90 6a07    	vldr	s12, [r0, #28]
    b8f8: ed90 3a06    	vldr	s6, [r0, #24]
    b8fc: ed90 4a05    	vldr	s8, [r0, #20]
    b900: ee83 2a02    	vdiv.f32	s4, s6, s4
    b904: ed90 3a01    	vldr	s6, [r0, #4]
    b908: ed90 5a02    	vldr	s10, [r0, #8]
    b90c: ed91 7a01    	vldr	s14, [r1, #4]
    b910: ee01 4a45    	vmls.f32	s8, s2, s10
    b914: edd0 0a08    	vldr	s1, [r0, #32]
    b918: ee02 6a43    	vmls.f32	s12, s4, s6
    b91c: ed91 3a00    	vldr	s6, [r1]
    b920: ee01 7a43    	vmls.f32	s14, s2, s6
    b924: ed90 1a04    	vldr	s2, [r0, #16]
    b928: ee42 0a45    	vmls.f32	s1, s4, s10
    b92c: ed91 5a02    	vldr	s10, [r1, #8]
    b930: ee02 5a43    	vmls.f32	s10, s4, s6
    b934: 1ed3         	subs	r3, r2, #0x3
    b936: eeb0 1ac1    	vabs.f32	s2, s2
    b93a: f04f 0e01    	mov.w	lr, #0x1
    b93e: fab3 f483    	clz	r4, r3
    b942: ed80 4a05    	vstr	s8, [r0, #20]
    b946: eeb0 2ac6    	vabs.f32	s4, s12
    b94a: ea4f 1c54    	lsr.w	r12, r4, #0x5
    b94e: ed81 7a01    	vstr	s14, [r1, #4]
    b952: ed80 6a07    	vstr	s12, [r0, #28]
    b956: edc0 0a08    	vstr	s1, [r0, #32]
    b95a: eeb4 2a41    	vcmp.f32	s4, s2
    b95e: ed81 5a02    	vstr	s10, [r1, #8]
    b962: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b966: bfc8         	it	gt
    b968: f04f 0e02    	movgt.w	lr, #0x2
    b96c: eb0e 044e    	add.w	r4, lr, lr, lsl #1
    b970: f8d0 800c    	ldr.w	r8, [r0, #0xc]
    b974: eb00 0384    	add.w	r3, r0, r4, lsl #2
    b978: f850 5024    	ldr.w	r5, [r0, r4, lsl #2]
    b97c: e9d3 6901    	ldrd	r6, r9, [r3, #4]
    b980: 60c5         	str	r5, [r0, #0xc]
    b982: 6905         	ldr	r5, [r0, #0x10]
    b984: 6106         	str	r6, [r0, #0x10]
    b986: 6946         	ldr	r6, [r0, #0x14]
    b988: f8c0 9014    	str.w	r9, [r0, #0x14]
    b98c: e9c3 5601    	strd	r5, r6, [r3, #4]
    b990: ed90 1a04    	vldr	s2, [r0, #16]
    b994: f840 8024    	str.w	r8, [r0, r4, lsl #2]
    b998: ee11 3a10    	vmov	r3, s2
    b99c: 684c         	ldr	r4, [r1, #0x4]
    b99e: f851 502e    	ldr.w	r5, [r1, lr, lsl #2]
    b9a2: 604d         	str	r5, [r1, #0x4]
    b9a4: f841 402e    	str.w	r4, [r1, lr, lsl #2]
    b9a8: f023 4300    	bic	r3, r3, #0x80000000
    b9ac: f1b3 4fff    	cmp.w	r3, #0x7f800000
    b9b0: f04f 0300    	mov.w	r3, #0x0
    b9b4: f280 8088    	bge.w	0xbac8 <orange_dsp::condensed::solve+0x2d8> @ imm = #0x110
    b9b8: eeb0 1ac1    	vabs.f32	s2, s2
    b9bc: eeb4 1a40    	vcmp.f32	s2, s0
    b9c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    b9c4: f100 8080    	bmi.w	0xbac8 <orange_dsp::condensed::solve+0x2d8> @ imm = #0x100
    b9c8: f1bc 0f00    	cmp.w	r12, #0x0
    b9cc: d015         	beq	0xb9fa <orange_dsp::condensed::solve+0x20a> @ imm = #0x2a
    b9ce: ed90 1a04    	vldr	s2, [r0, #16]
    b9d2: ed90 2a07    	vldr	s4, [r0, #28]
    b9d6: ee82 1a01    	vdiv.f32	s2, s4, s2
    b9da: ed90 2a05    	vldr	s4, [r0, #20]
    b9de: ed90 3a08    	vldr	s6, [r0, #32]
    b9e2: ed91 4a02    	vldr	s8, [r1, #8]
    b9e6: ee01 3a42    	vmls.f32	s6, s2, s4
    b9ea: ed91 2a01    	vldr	s4, [r1, #4]
    b9ee: ee01 4a42    	vmls.f32	s8, s2, s4
    b9f2: ed80 3a08    	vstr	s6, [r0, #32]
    b9f6: ed81 4a02    	vstr	s8, [r1, #8]
    b9fa: 2a02         	cmp	r2, #0x2
    b9fc: d011         	beq	0xba22 <orange_dsp::condensed::solve+0x232> @ imm = #0x22
    b9fe: ed90 1a08    	vldr	s2, [r0, #32]
    ba02: ee11 3a10    	vmov	r3, s2
    ba06: f023 4300    	bic	r3, r3, #0x80000000
    ba0a: f1b3 4fff    	cmp.w	r3, #0x7f800000
    ba0e: f04f 0300    	mov.w	r3, #0x0
    ba12: da59         	bge	0xbac8 <orange_dsp::condensed::solve+0x2d8> @ imm = #0xb2
    ba14: eeb0 1ac1    	vabs.f32	s2, s2
    ba18: eeb4 1a40    	vcmp.f32	s2, s0
    ba1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ba20: d452         	bmi	0xbac8 <orange_dsp::condensed::solve+0x2d8> @ imm = #0xa4
    ba22: 1e53         	subs	r3, r2, #0x1
    ba24: eb03 0643    	add.w	r6, r3, r3, lsl #1
    ba28: eb01 0483    	add.w	r4, r1, r3, lsl #2
    ba2c: eb00 0686    	add.w	r6, r0, r6, lsl #2
    ba30: eb06 0683    	add.w	r6, r6, r3, lsl #2
    ba34: ed94 0a00    	vldr	s0, [r4]
    ba38: ed96 1a00    	vldr	s2, [r6]
    ba3c: ee80 0a01    	vdiv.f32	s0, s0, s2
    ba40: ed84 0a00    	vstr	s0, [r4]
    ba44: d03f         	beq	0xbac6 <orange_dsp::condensed::solve+0x2d6> @ imm = #0x7e
    ba46: f1b2 0e02    	subs.w	lr, r2, #0x2
    ba4a: ed94 1a00    	vldr	s2, [r4]
    ba4e: eb0e 064e    	add.w	r6, lr, lr, lsl #1
    ba52: eb01 0c8e    	add.w	r12, r1, lr, lsl #2
    ba56: eb00 0586    	add.w	r5, r0, r6, lsl #2
    ba5a: eb05 0383    	add.w	r3, r5, r3, lsl #2
    ba5e: ed9c 2a00    	vldr	s4, [r12]
    ba62: ed93 0a00    	vldr	s0, [r3]
    ba66: eb05 038e    	add.w	r3, r5, lr, lsl #2
    ba6a: ee00 2a41    	vmls.f32	s4, s0, s2
    ba6e: ed93 0a00    	vldr	s0, [r3]
    ba72: ee82 0a00    	vdiv.f32	s0, s4, s0
    ba76: ed8c 0a00    	vstr	s0, [r12]
    ba7a: d024         	beq	0xbac6 <orange_dsp::condensed::solve+0x2d6> @ imm = #0x48
    ba7c: 1ed3         	subs	r3, r2, #0x3
    ba7e: ed9c 1a00    	vldr	s2, [r12]
    ba82: eb03 0443    	add.w	r4, r3, r3, lsl #1
    ba86: eb01 0583    	add.w	r5, r1, r3, lsl #2
    ba8a: eb00 0084    	add.w	r0, r0, r4, lsl #2
    ba8e: eb00 068e    	add.w	r6, r0, lr, lsl #2
    ba92: ed95 2a00    	vldr	s4, [r5]
    ba96: ed96 0a00    	vldr	s0, [r6]
    ba9a: f06f 0603    	mvn	r6, #0x3
    ba9e: eb06 0282    	add.w	r2, r6, r2, lsl #2
    baa2: ee00 2a41    	vmls.f32	s4, s0, s2
    baa6: 1886         	adds	r6, r0, r2
    baa8: 4411         	add	r1, r2
    baaa: eb00 0083    	add.w	r0, r0, r3, lsl #2
    baae: ed96 0a00    	vldr	s0, [r6]
    bab2: ed91 1a00    	vldr	s2, [r1]
    bab6: ee00 2a41    	vmls.f32	s4, s0, s2
    baba: ed90 0a00    	vldr	s0, [r0]
    babe: ee82 0a00    	vdiv.f32	s0, s4, s0
    bac2: ed85 0a00    	vstr	s0, [r5]
    bac6: 2301         	movs	r3, #0x1
    bac8: 4618         	mov	r0, r3
    baca: b003         	add	sp, #0xc
    bacc: e8bd 0b00    	pop.w	{r8, r9, r11}
    bad0: bdf0         	pop	{r4, r5, r6, r7, pc}
    bad2: bf00         	nop
    bad4: 08 e5 3c 1e  	.word	0x1e3ce508

0000bad8 <__aeabi_memcpy4>:
    bad8: 2a04         	cmp	r2, #0x4
    bada: d309         	blo	0xbaf0 <__aeabi_memcpy4+0x18> @ imm = #0x12
    badc: b5d0         	push	{r4, r6, r7, lr}
    bade: af02         	add	r7, sp, #0x8
    bae0: f1a2 0e04    	sub.w	lr, r2, #0x4
    bae4: ea6f 030e    	mvn.w	r3, lr
    bae8: f013 0f0c    	tst.w	r3, #0xc
    baec: d106         	bne	0xbafc <__aeabi_memcpy4+0x24> @ imm = #0xc
    baee: e023         	b	0xbb38 <__aeabi_memcpy4+0x60> @ imm = #0x46
    baf0: 460b         	mov	r3, r1
    baf2: 4684         	mov	r12, r0
    baf4: 4660         	mov	r0, r12
    baf6: 4619         	mov	r1, r3
    baf8: f000 b83c    	b.w	0xbb74 <compiler_builtins::mem::memcpy> @ imm = #0x78
    bafc: 460b         	mov	r3, r1
    bafe: 4684         	mov	r12, r0
    bb00: f853 4b04    	ldr	r4, [r3], #4
    bb04: f01e 0f0c    	tst.w	lr, #0xc
    bb08: f84c 4b04    	str	r4, [r12], #4
    bb0c: d009         	beq	0xbb22 <__aeabi_memcpy4+0x4a> @ imm = #0x12
    bb0e: 684b         	ldr	r3, [r1, #0x4]
    bb10: 6043         	str	r3, [r0, #0x4]
    bb12: f00e 030c    	and	r3, lr, #0xc
    bb16: 2b04         	cmp	r3, #0x4
    bb18: d107         	bne	0xbb2a <__aeabi_memcpy4+0x52> @ imm = #0xe
    bb1a: 3a08         	subs	r2, #0x8
    bb1c: 3108         	adds	r1, #0x8
    bb1e: 3008         	adds	r0, #0x8
    bb20: e008         	b	0xbb34 <__aeabi_memcpy4+0x5c> @ imm = #0x10
    bb22: 4672         	mov	r2, lr
    bb24: 4660         	mov	r0, r12
    bb26: 4619         	mov	r1, r3
    bb28: e006         	b	0xbb38 <__aeabi_memcpy4+0x60> @ imm = #0xc
    bb2a: 688b         	ldr	r3, [r1, #0x8]
    bb2c: 3a0c         	subs	r2, #0xc
    bb2e: 6083         	str	r3, [r0, #0x8]
    bb30: 310c         	adds	r1, #0xc
    bb32: 300c         	adds	r0, #0xc
    bb34: 4684         	mov	r12, r0
    bb36: 460b         	mov	r3, r1
    bb38: f1be 0f0c    	cmp.w	lr, #0xc
    bb3c: d314         	blo	0xbb68 <__aeabi_memcpy4+0x90> @ imm = #0x28
    bb3e: 4684         	mov	r12, r0
    bb40: 460b         	mov	r3, r1
    bb42: 6818         	ldr	r0, [r3]
    bb44: 3a10         	subs	r2, #0x10
    bb46: f8cc 0000    	str.w	r0, [r12]
    bb4a: 2a03         	cmp	r2, #0x3
    bb4c: 6858         	ldr	r0, [r3, #0x4]
    bb4e: f8cc 0004    	str.w	r0, [r12, #0x4]
    bb52: 6898         	ldr	r0, [r3, #0x8]
    bb54: f8cc 0008    	str.w	r0, [r12, #0x8]
    bb58: 68d8         	ldr	r0, [r3, #0xc]
    bb5a: f103 0310    	add.w	r3, r3, #0x10
    bb5e: f8cc 000c    	str.w	r0, [r12, #0xc]
    bb62: f10c 0c10    	add.w	r12, r12, #0x10
    bb66: d8ec         	bhi	0xbb42 <__aeabi_memcpy4+0x6a> @ imm = #-0x28
    bb68: e8bd 40d0    	pop.w	{r4, r6, r7, lr}
    bb6c: 4660         	mov	r0, r12
    bb6e: 4619         	mov	r1, r3
    bb70: f000 b800    	b.w	0xbb74 <compiler_builtins::mem::memcpy> @ imm = #0x0

0000bb74 <compiler_builtins::mem::memcpy>:
    bb74: b5f0         	push	{r4, r5, r6, r7, lr}
    bb76: af03         	add	r7, sp, #0xc
    bb78: e92d 0f00    	push.w	{r8, r9, r10, r11}
    bb7c: b089         	sub	sp, #0x24
    bb7e: 4680         	mov	r8, r0
    bb80: 2a10         	cmp	r2, #0x10
    bb82: d321         	blo	0xbbc8 <compiler_builtins::mem::memcpy+0x54> @ imm = #0x42
    bb84: f1c8 0000    	rsb.w	r0, r8, #0x0
    bb88: f000 0a03    	and	r10, r0, #0x3
    bb8c: eb08 030a    	add.w	r3, r8, r10
    bb90: 4598         	cmp	r8, r3
    bb92: d237         	bhs	0xbc04 <compiler_builtins::mem::memcpy+0x90> @ imm = #0x6e
    bb94: f1aa 0601    	sub.w	r6, r10, #0x1
    bb98: 4644         	mov	r4, r8
    bb9a: 460d         	mov	r5, r1
    bb9c: f1ba 0f00    	cmp.w	r10, #0x0
    bba0: d01f         	beq	0xbbe2 <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x3e
    bba2: 460d         	mov	r5, r1
    bba4: 4644         	mov	r4, r8
    bba6: f815 0b01    	ldrb	r0, [r5], #1
    bbaa: f1ba 0f01    	cmp.w	r10, #0x1
    bbae: f804 0b01    	strb	r0, [r4], #1
    bbb2: d016         	beq	0xbbe2 <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x2c
    bbb4: 7848         	ldrb	r0, [r1, #0x1]
    bbb6: f1ba 0f02    	cmp.w	r10, #0x2
    bbba: f888 0001    	strb.w	r0, [r8, #0x1]
    bbbe: d10a         	bne	0xbbd6 <compiler_builtins::mem::memcpy+0x62> @ imm = #0x14
    bbc0: 1c8d         	adds	r5, r1, #0x2
    bbc2: f108 0402    	add.w	r4, r8, #0x2
    bbc6: e00c         	b	0xbbe2 <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x18
    bbc8: 46c4         	mov	r12, r8
    bbca: eb0c 0302    	add.w	r3, r12, r2
    bbce: 459c         	cmp	r12, r3
    bbd0: f0c0 80e3    	blo.w	0xbd9a <compiler_builtins::mem::memcpy+0x226> @ imm = #0x1c6
    bbd4: e10b         	b	0xbdee <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x216
    bbd6: 1ccd         	adds	r5, r1, #0x3
    bbd8: f108 0403    	add.w	r4, r8, #0x3
    bbdc: 7888         	ldrb	r0, [r1, #0x2]
    bbde: f888 0002    	strb.w	r0, [r8, #0x2]
    bbe2: 2e03         	cmp	r6, #0x3
    bbe4: d30e         	blo	0xbc04 <compiler_builtins::mem::memcpy+0x90> @ imm = #0x1c
    bbe6: 1f2e         	subs	r6, r5, #0x4
    bbe8: 1f25         	subs	r5, r4, #0x4
    bbea: f816 0f04    	ldrb	r0, [r6, #4]!
    bbee: f805 0f04    	strb	r0, [r5, #4]!
    bbf2: 7870         	ldrb	r0, [r6, #0x1]
    bbf4: 7068         	strb	r0, [r5, #0x1]
    bbf6: 78b0         	ldrb	r0, [r6, #0x2]
    bbf8: 70a8         	strb	r0, [r5, #0x2]
    bbfa: 78f0         	ldrb	r0, [r6, #0x3]
    bbfc: 70e8         	strb	r0, [r5, #0x3]
    bbfe: 1d28         	adds	r0, r5, #0x4
    bc00: 4298         	cmp	r0, r3
    bc02: d1f2         	bne	0xbbea <compiler_builtins::mem::memcpy+0x76> @ imm = #-0x1c
    bc04: eba2 0b0a    	sub.w	r11, r2, r10
    bc08: eb01 040a    	add.w	r4, r1, r10
    bc0c: f02b 0203    	bic	r2, r11, #0x3
    bc10: f014 0003    	ands	r0, r4, #0x3
    bc14: eb03 0c02    	add.w	r12, r3, r2
    bc18: d063         	beq	0xbce2 <compiler_builtins::mem::memcpy+0x16e> @ imm = #0xc6
    bc1a: f04f 0900    	mov.w	r9, #0x0
    bc1e: f1c0 0604    	rsb.w	r6, r0, #0x4
    bc22: 9204         	str	r2, [sp, #0x10]
    bc24: aa08         	add	r2, sp, #0x20
    bc26: f8cd 9020    	str.w	r9, [sp, #0x20]
    bc2a: 4402         	add	r2, r0
    bc2c: 07f5         	lsls	r5, r6, #0x1f
    bc2e: bf1e         	ittt	ne
    bc30: 7825         	ldrbne	r5, [r4]
    bc32: 7015         	strbne	r5, [r2]
    bc34: f04f 0901    	movne.w	r9, #0x1
    bc38: 07b6         	lsls	r6, r6, #0x1e
    bc3a: bf44         	itt	mi
    bc3c: f834 6009    	ldrhmi.w	r6, [r4, r9]
    bc40: f822 6009    	strhmi.w	r6, [r2, r9]
    bc44: 1a25         	subs	r5, r4, r0
    bc46: 9405         	str	r4, [sp, #0x14]
    bc48: 1d1c         	adds	r4, r3, #0x4
    bc4a: 9a08         	ldr	r2, [sp, #0x20]
    bc4c: ea4f 0ec0    	lsl.w	lr, r0, #0x3
    bc50: 4564         	cmp	r4, r12
    bc52: f1ce 0400    	rsb.w	r4, lr, #0x0
    bc56: e9cd 0402    	strd	r0, r4, [sp, #8]
    bc5a: d25b         	bhs	0xbd14 <compiler_builtins::mem::memcpy+0x1a0> @ imm = #0xb6
    bc5c: 4243         	rsbs	r3, r0, #0
    bc5e: 4646         	mov	r6, r8
    bc60: f8cd b000    	str.w	r11, [sp]
    bc64: eb01 0803    	add.w	r8, r1, r3
    bc68: f004 0b18    	and	r11, r4, #0x18
    bc6c: 9601         	str	r6, [sp, #0x4]
    bc6e: eb08 050a    	add.w	r5, r8, r10
    bc72: eb06 040a    	add.w	r4, r6, r10
    bc76: fa22 f10e    	lsr.w	r1, r2, lr
    bc7a: f8d5 9004    	ldr.w	r9, [r5, #0x4]
    bc7e: fa09 f20b    	lsl.w	r2, r9, r11
    bc82: 4311         	orrs	r1, r2
    bc84: 4622         	mov	r2, r4
    bc86: f842 1b08    	str	r1, [r2], #8
    bc8a: 4562         	cmp	r2, r12
    bc8c: d244         	bhs	0xbd18 <compiler_builtins::mem::memcpy+0x1a4> @ imm = #0x88
    bc8e: 68a9         	ldr	r1, [r5, #0x8]
    bc90: fa29 f30e    	lsr.w	r3, r9, lr
    bc94: fa01 f00b    	lsl.w	r0, r1, r11
    bc98: 4318         	orrs	r0, r3
    bc9a: f104 030c    	add.w	r3, r4, #0xc
    bc9e: 4563         	cmp	r3, r12
    bca0: 6060         	str	r0, [r4, #0x4]
    bca2: d23c         	bhs	0xbd1e <compiler_builtins::mem::memcpy+0x1aa> @ imm = #0x78
    bca4: f8d5 900c    	ldr.w	r9, [r5, #0xc]
    bca8: fa21 f00e    	lsr.w	r0, r1, lr
    bcac: fa09 f10b    	lsl.w	r1, r9, r11
    bcb0: 4308         	orrs	r0, r1
    bcb2: 6010         	str	r0, [r2]
    bcb4: f104 0010    	add.w	r0, r4, #0x10
    bcb8: 4560         	cmp	r0, r12
    bcba: d235         	bhs	0xbd28 <compiler_builtins::mem::memcpy+0x1b4> @ imm = #0x6a
    bcbc: 692a         	ldr	r2, [r5, #0x10]
    bcbe: fa29 f00e    	lsr.w	r0, r9, lr
    bcc2: 3610         	adds	r6, #0x10
    bcc4: f108 0810    	add.w	r8, r8, #0x10
    bcc8: fa02 f10b    	lsl.w	r1, r2, r11
    bccc: 4308         	orrs	r0, r1
    bcce: 6018         	str	r0, [r3]
    bcd0: eb06 030a    	add.w	r3, r6, r10
    bcd4: 1d18         	adds	r0, r3, #0x4
    bcd6: 4560         	cmp	r0, r12
    bcd8: d3c9         	blo	0xbc6e <compiler_builtins::mem::memcpy+0xfa> @ imm = #-0x6e
    bcda: eb08 050a    	add.w	r5, r8, r10
    bcde: 4691         	mov	r9, r2
    bce0: e023         	b	0xbd2a <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x46
    bce2: 4563         	cmp	r3, r12
    bce4: d252         	bhs	0xbd8c <compiler_builtins::mem::memcpy+0x218> @ imm = #0xa4
    bce6: 4621         	mov	r1, r4
    bce8: 6808         	ldr	r0, [r1]
    bcea: f843 0b04    	str	r0, [r3], #4
    bcee: 4563         	cmp	r3, r12
    bcf0: d24c         	bhs	0xbd8c <compiler_builtins::mem::memcpy+0x218> @ imm = #0x98
    bcf2: 6848         	ldr	r0, [r1, #0x4]
    bcf4: f843 0b04    	str	r0, [r3], #4
    bcf8: 4563         	cmp	r3, r12
    bcfa: bf3e         	ittt	lo
    bcfc: 6888         	ldrlo	r0, [r1, #0x8]
    bcfe: f843 0b04    	strlo	r0, [r3], #4
    bd02: 4563         	cmplo	r3, r12
    bd04: d242         	bhs	0xbd8c <compiler_builtins::mem::memcpy+0x218> @ imm = #0x84
    bd06: 68c8         	ldr	r0, [r1, #0xc]
    bd08: 3110         	adds	r1, #0x10
    bd0a: f843 0b04    	str	r0, [r3], #4
    bd0e: 4563         	cmp	r3, r12
    bd10: d3ea         	blo	0xbce8 <compiler_builtins::mem::memcpy+0x174> @ imm = #-0x2c
    bd12: e03b         	b	0xbd8c <compiler_builtins::mem::memcpy+0x218> @ imm = #0x76
    bd14: 4691         	mov	r9, r2
    bd16: e00a         	b	0xbd2e <compiler_builtins::mem::memcpy+0x1ba> @ imm = #0x14
    bd18: 3504         	adds	r5, #0x4
    bd1a: 1d23         	adds	r3, r4, #0x4
    bd1c: e005         	b	0xbd2a <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0xa
    bd1e: 3508         	adds	r5, #0x8
    bd20: f104 0308    	add.w	r3, r4, #0x8
    bd24: 4689         	mov	r9, r1
    bd26: e000         	b	0xbd2a <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x0
    bd28: 350c         	adds	r5, #0xc
    bd2a: e9dd b800    	ldrd	r11, r8, [sp]
    bd2e: 9802         	ldr	r0, [sp, #0x8]
    bd30: 2200         	movs	r2, #0x0
    bd32: f88d 201c    	strb.w	r2, [sp, #0x1c]
    bd36: 2801         	cmp	r0, #0x1
    bd38: f807 2c26    	strb	r2, [r7, #-38]
    bd3c: d10e         	bne	0xbd5c <compiler_builtins::mem::memcpy+0x1e8> @ imm = #0x1c
    bd3e: ae07         	add	r6, sp, #0x1c
    bd40: 2400         	movs	r4, #0x0
    bd42: 2000         	movs	r0, #0x0
    bd44: 9905         	ldr	r1, [sp, #0x14]
    bd46: 07c9         	lsls	r1, r1, #0x1f
    bd48: d013         	beq	0xbd72 <compiler_builtins::mem::memcpy+0x1fe> @ imm = #0x26
    bd4a: 1d29         	adds	r1, r5, #0x4
    bd4c: 5c08         	ldrb	r0, [r1, r0]
    bd4e: 7030         	strb	r0, [r6]
    bd50: f817 0c26    	ldrb	r0, [r7, #-38]
    bd54: f89d 201c    	ldrb.w	r2, [sp, #0x1c]
    bd58: 0400         	lsls	r0, r0, #0x10
    bd5a: e00b         	b	0xbd74 <compiler_builtins::mem::memcpy+0x200> @ imm = #0x16
    bd5c: 7968         	ldrb	r0, [r5, #0x5]
    bd5e: f1a7 0626    	sub.w	r6, r7, #0x26
    bd62: 792a         	ldrb	r2, [r5, #0x4]
    bd64: f88d 201c    	strb.w	r2, [sp, #0x1c]
    bd68: 0204         	lsls	r4, r0, #0x8
    bd6a: 2002         	movs	r0, #0x2
    bd6c: 9905         	ldr	r1, [sp, #0x14]
    bd6e: 07c9         	lsls	r1, r1, #0x1f
    bd70: d1eb         	bne	0xbd4a <compiler_builtins::mem::memcpy+0x1d6> @ imm = #-0x2a
    bd72: 2000         	movs	r0, #0x0
    bd74: 4320         	orrs	r0, r4
    bd76: fa29 f10e    	lsr.w	r1, r9, lr
    bd7a: 4310         	orrs	r0, r2
    bd7c: 9a03         	ldr	r2, [sp, #0xc]
    bd7e: f002 0218    	and	r2, r2, #0x18
    bd82: 4090         	lsls	r0, r2
    bd84: e9dd 2404    	ldrd	r2, r4, [sp, #16]
    bd88: 4308         	orrs	r0, r1
    bd8a: 6018         	str	r0, [r3]
    bd8c: 18a1         	adds	r1, r4, r2
    bd8e: f00b 0203    	and	r2, r11, #0x3
    bd92: eb0c 0302    	add.w	r3, r12, r2
    bd96: 459c         	cmp	r12, r3
    bd98: d229         	bhs	0xbdee <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x52
    bd9a: 1e56         	subs	r6, r2, #0x1
    bd9c: f012 0003    	ands	r0, r2, #0x3
    bda0: d012         	beq	0xbdc8 <compiler_builtins::mem::memcpy+0x254> @ imm = #0x24
    bda2: 460a         	mov	r2, r1
    bda4: 4665         	mov	r5, r12
    bda6: f812 4b01    	ldrb	r4, [r2], #1
    bdaa: 2801         	cmp	r0, #0x1
    bdac: f805 4b01    	strb	r4, [r5], #1
    bdb0: d00c         	beq	0xbdcc <compiler_builtins::mem::memcpy+0x258> @ imm = #0x18
    bdb2: 784a         	ldrb	r2, [r1, #0x1]
    bdb4: 2802         	cmp	r0, #0x2
    bdb6: f88c 2001    	strb.w	r2, [r12, #0x1]
    bdba: d11d         	bne	0xbdf8 <compiler_builtins::mem::memcpy+0x284> @ imm = #0x3a
    bdbc: 1c8a         	adds	r2, r1, #0x2
    bdbe: f10c 0502    	add.w	r5, r12, #0x2
    bdc2: 2e03         	cmp	r6, #0x3
    bdc4: d204         	bhs	0xbdd0 <compiler_builtins::mem::memcpy+0x25c> @ imm = #0x8
    bdc6: e012         	b	0xbdee <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x24
    bdc8: 4665         	mov	r5, r12
    bdca: 460a         	mov	r2, r1
    bdcc: 2e03         	cmp	r6, #0x3
    bdce: d30e         	blo	0xbdee <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x1c
    bdd0: 1f11         	subs	r1, r2, #0x4
    bdd2: 1f2a         	subs	r2, r5, #0x4
    bdd4: f811 0f04    	ldrb	r0, [r1, #4]!
    bdd8: f802 0f04    	strb	r0, [r2, #4]!
    bddc: 7848         	ldrb	r0, [r1, #0x1]
    bdde: 7050         	strb	r0, [r2, #0x1]
    bde0: 7888         	ldrb	r0, [r1, #0x2]
    bde2: 7090         	strb	r0, [r2, #0x2]
    bde4: 78c8         	ldrb	r0, [r1, #0x3]
    bde6: 70d0         	strb	r0, [r2, #0x3]
    bde8: 1d10         	adds	r0, r2, #0x4
    bdea: 4298         	cmp	r0, r3
    bdec: d1f2         	bne	0xbdd4 <compiler_builtins::mem::memcpy+0x260> @ imm = #-0x1c
    bdee: 4640         	mov	r0, r8
    bdf0: b009         	add	sp, #0x24
    bdf2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    bdf6: bdf0         	pop	{r4, r5, r6, r7, pc}
    bdf8: 1cca         	adds	r2, r1, #0x3
    bdfa: f10c 0503    	add.w	r5, r12, #0x3
    bdfe: 7888         	ldrb	r0, [r1, #0x2]
    be00: f88c 0002    	strb.w	r0, [r12, #0x2]
    be04: 2e03         	cmp	r6, #0x3
    be06: d2e3         	bhs	0xbdd0 <compiler_builtins::mem::memcpy+0x25c> @ imm = #-0x3a
    be08: e7f1         	b	0xbdee <compiler_builtins::mem::memcpy+0x27a> @ imm = #-0x1e

0000be0a <__aeabi_memclr4>:
    be0a: b580         	push	{r7, lr}
    be0c: 466f         	mov	r7, sp
    be0e: 2904         	cmp	r1, #0x4
    be10: d305         	blo	0xbe1e <__aeabi_memclr4+0x14> @ imm = #0xa
    be12: 1f0b         	subs	r3, r1, #0x4
    be14: 43da         	mvns	r2, r3
    be16: f012 0f0c    	tst.w	r2, #0xc
    be1a: d102         	bne	0xbe22 <__aeabi_memclr4+0x18> @ imm = #0x4
    be1c: e01a         	b	0xbe54 <__aeabi_memclr4+0x4a> @ imm = #0x34
    be1e: 4602         	mov	r2, r0
    be20: e024         	b	0xbe6c <__aeabi_memclr4+0x62> @ imm = #0x48
    be22: f04f 0c00    	mov.w	r12, #0x0
    be26: 4602         	mov	r2, r0
    be28: f842 cb04    	str	r12, [r2], #4
    be2c: f013 0f0c    	tst.w	r3, #0xc
    be30: d008         	beq	0xbe44 <__aeabi_memclr4+0x3a> @ imm = #0x10
    be32: f003 020c    	and	r2, r3, #0xc
    be36: f8c0 c004    	str.w	r12, [r0, #0x4]
    be3a: 2a04         	cmp	r2, #0x4
    be3c: d105         	bne	0xbe4a <__aeabi_memclr4+0x40> @ imm = #0xa
    be3e: 3908         	subs	r1, #0x8
    be40: 3008         	adds	r0, #0x8
    be42: e006         	b	0xbe52 <__aeabi_memclr4+0x48> @ imm = #0xc
    be44: 4619         	mov	r1, r3
    be46: 4610         	mov	r0, r2
    be48: e004         	b	0xbe54 <__aeabi_memclr4+0x4a> @ imm = #0x8
    be4a: 2200         	movs	r2, #0x0
    be4c: 390c         	subs	r1, #0xc
    be4e: 6082         	str	r2, [r0, #0x8]
    be50: 300c         	adds	r0, #0xc
    be52: 4602         	mov	r2, r0
    be54: 2b0c         	cmp	r3, #0xc
    be56: d309         	blo	0xbe6c <__aeabi_memclr4+0x62> @ imm = #0x12
    be58: 2300         	movs	r3, #0x0
    be5a: 4602         	mov	r2, r0
    be5c: 3910         	subs	r1, #0x10
    be5e: e9c2 3300    	strd	r3, r3, [r2]
    be62: e9c2 3302    	strd	r3, r3, [r2, #8]
    be66: 3210         	adds	r2, #0x10
    be68: 2903         	cmp	r1, #0x3
    be6a: d8f7         	bhi	0xbe5c <__aeabi_memclr4+0x52> @ imm = #-0x12
    be6c: 1850         	adds	r0, r2, r1
    be6e: 4282         	cmp	r2, r0
    be70: d221         	bhs	0xbeb6 <__aeabi_memclr4+0xac> @ imm = #0x42
    be72: f1a1 0c01    	sub.w	r12, r1, #0x1
    be76: f011 0303    	ands	r3, r1, #0x3
    be7a: d00c         	beq	0xbe96 <__aeabi_memclr4+0x8c> @ imm = #0x18
    be7c: f04f 0e00    	mov.w	lr, #0x0
    be80: 4611         	mov	r1, r2
    be82: f801 eb01    	strb	lr, [r1], #1
    be86: 2b01         	cmp	r3, #0x1
    be88: d00a         	beq	0xbea0 <__aeabi_memclr4+0x96> @ imm = #0x14
    be8a: 2b02         	cmp	r3, #0x2
    be8c: f882 e001    	strb.w	lr, [r2, #0x1]
    be90: d103         	bne	0xbe9a <__aeabi_memclr4+0x90> @ imm = #0x6
    be92: 1c91         	adds	r1, r2, #0x2
    be94: e004         	b	0xbea0 <__aeabi_memclr4+0x96> @ imm = #0x8
    be96: 4611         	mov	r1, r2
    be98: e002         	b	0xbea0 <__aeabi_memclr4+0x96> @ imm = #0x4
    be9a: 2100         	movs	r1, #0x0
    be9c: 7091         	strb	r1, [r2, #0x2]
    be9e: 1cd1         	adds	r1, r2, #0x3
    bea0: f1bc 0f03    	cmp.w	r12, #0x3
    bea4: bf38         	it	lo
    bea6: bd80         	poplo	{r7, pc}
    bea8: 3904         	subs	r1, #0x4
    beaa: 2200         	movs	r2, #0x0
    beac: f841 2f04    	str	r2, [r1, #4]!
    beb0: 1d0b         	adds	r3, r1, #0x4
    beb2: 4283         	cmp	r3, r0
    beb4: d1fa         	bne	0xbeac <__aeabi_memclr4+0xa2> @ imm = #-0xc
    beb6: bd80         	pop	{r7, pc}
    beb8: 6d24         	ldr	r4, [r4, #0x50]
    beba: 6e69         	ldr	r1, [r5, #0x64]
    bebc: 3e20         	subs	r6, #0x20
    bebe: 6d20         	ldr	r0, [r4, #0x50]
    bec0: 7861         	ldrb	r1, [r4, #0x1]
    bec2: 202c         	movs	r0, #0x2c
    bec4: 726f         	strb	r7, [r5, #0x9]
    bec6: 6520         	str	r0, [r4, #0x50]
    bec8: 7469         	strb	r1, [r5, #0x11]
    beca: 6568         	str	r0, [r5, #0x54]
    becc: 2072         	movs	r0, #0x72
    bece: 6177         	str	r7, [r6, #0x14]
    bed0: 2073         	movs	r0, #0x73
    bed2: 614e         	str	r6, [r1, #0x14]
    bed4: 2e4e         	cmp	r6, #0x4e
    bed6: 6d20         	ldr	r0, [r4, #0x50]
    bed8: 6e69         	ldr	r1, [r5, #0x64]
    beda: 3d20         	subs	r5, #0x20
    bedc: c020         	stm	r0!, {r5}
    bede: 2c08         	cmp	r4, #0x8
    bee0: 6d20         	ldr	r0, [r4, #0x50]
    bee2: 7861         	ldrb	r1, [r4, #0x1]
    bee4: 3d20         	subs	r5, #0x20
    bee6: c020         	stm	r0!, {r5}
    bee8: 2f00         	cmp	r7, #0x0
    beea: 7572         	strb	r2, [r6, #0x15]
    beec: 7473         	strb	r3, [r6, #0x11]
    beee: 2f63         	cmp	r7, #0x63
    bef0: 3834         	subs	r0, #0x34
    bef2: 3261         	adds	r2, #0x61
    bef4: 3932         	subs	r1, #0x32
    bef6: 6563         	str	r3, [r4, #0x54]
    bef8: 6561         	str	r1, [r4, #0x54]
    befa: 6466         	str	r6, [r4, #0x44]
    befc: 3934         	subs	r1, #0x34
    befe: 3538         	adds	r5, #0x38
    bf00: 3563         	adds	r5, #0x63
    bf02: 3930         	subs	r1, #0x30
    bf04: 3039         	adds	r0, #0x39
    bf06: 3162         	adds	r1, #0x62
    bf08: 3134         	adds	r1, #0x34
    bf0a: 3631         	adds	r6, #0x31
    bf0c: 3662         	adds	r6, #0x62
    bf0e: 3864         	subs	r0, #0x64
    bf10: 3635         	adds	r6, #0x35
    bf12: 6661         	str	r1, [r4, #0x64]
    bf14: 3930         	subs	r1, #0x30
    bf16: 3538         	adds	r5, #0x38
    bf18: 6c2f         	ldr	r7, [r5, #0x40]
    bf1a: 6269         	str	r1, [r5, #0x24]
    bf1c: 6172         	str	r2, [r6, #0x14]
    bf1e: 7972         	ldrb	r2, [r6, #0x5]
    bf20: 632f         	str	r7, [r5, #0x30]
    bf22: 726f         	strb	r7, [r5, #0x9]
    bf24: 2f65         	cmp	r7, #0x65
    bf26: 7273         	strb	r3, [r6, #0x9]
    bf28: 2f63         	cmp	r7, #0x63
    bf2a: 756e         	strb	r6, [r5, #0x15]
    bf2c: 2f6d         	cmp	r7, #0x6d
    bf2e: 3366         	adds	r3, #0x66
    bf30: 2e32         	cmp	r6, #0x32
    bf32: 7372         	strb	r2, [r6, #0xd]
    bf34: 6f00         	ldr	r0, [r0, #0x70]
    bf36: 6172         	str	r2, [r6, #0x14]
    bf38: 676e         	str	r6, [r5, #0x74]
    bf3a: 2d65         	cmp	r5, #0x65
    bf3c: 7364         	strb	r4, [r4, #0xd]
    bf3e: 2f70         	cmp	r7, #0x70
    bf40: 7273         	strb	r3, [r6, #0x9]
    bf42: 2f63         	cmp	r7, #0x63
    bf44: 6f63         	ldr	r3, [r4, #0x74]
    bf46: 646e         	str	r6, [r5, #0x44]
    bf48: 6e65         	ldr	r5, [r4, #0x64]
    bf4a: 6573         	str	r3, [r6, #0x54]
    bf4c: 2e64         	cmp	r6, #0x64
    bf4e: 7372         	strb	r2, [r6, #0xd]
    bf50: 6f00         	ldr	r0, [r0, #0x70]
    bf52: 6172         	str	r2, [r6, #0x14]
    bf54: 676e         	str	r6, [r5, #0x74]
    bf56: 2d65         	cmp	r5, #0x65
    bf58: 7364         	strb	r4, [r4, #0xd]
    bf5a: 2f70         	cmp	r7, #0x70
    bf5c: 7273         	strb	r3, [r6, #0x9]
    bf5e: 2f63         	cmp	r7, #0x63
    bf60: 6170         	str	r0, [r6, #0x14]
    bf62: 6b63         	ldr	r3, [r4, #0x34]
    bf64: 6465         	str	r5, [r4, #0x44]
    bf66: 722e         	strb	r6, [r5, #0x8]
    bf68: 0073         	lsls	r3, r6, #0x1

0000bf6a <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.2>:
    bf6a: 69 6e 74 65 72 6e 61 6c         internal
    bf72: 20 65 72 72 6f 72 3a 20          error: 
    bf7a: 65 6e 74 65 72 65 64 20         entered 
    bf82: 75 6e 72 65 61 63 68 61         unreacha
    bf8a: 62 6c 65 20 63 6f 64 65         ble code
    bf92: d4 d4 d4 d4 d4 d4               ......

0000bf98 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.3>:
    bf98: 80 e5 70 28 a1 3a 03 bf         ..p(.:..
    bfa0: 00 00 00 00 00 00 00 00         ........
    bfa8: 00 00 00 00 00 00 00 00         ........
    bfb0: 00 00 00 00 00 00 00 00         ........
    bfb8: 00 00 00 00 00 00 00 00         ........
    bfc0: 00 00 00 00 00 00 00 00         ........
    bfc8: 00 00 00 00 00 00 00 00         ........
    bfd0: 00 00 00 00 00 00 00 00         ........
    bfd8: 00 00 00 00 00 00 00 00         ........
    bfe0: 00 f0 e6 61 55 15 14 bf         ...aU...
    bfe8: 00 00 00 00 00 00 00 00         ........
    bff0: 00 00 00 00 00 00 00 00         ........
    bff8: 00 00 00 00 00 00 00 00         ........
    c000: 00 00 00 00 00 00 00 00         ........
    c008: 00 00 00 00 00 00 00 00         ........
    c010: 00 00 00 00 00 00 00 00         ........
    c018: 00 00 00 00 00 00 00 00         ........
    c020: 00 00 00 00 00 00 00 00         ........
    c028: 00 50 66 db 76 ec 1e bf         .Pf.v...
    c030: 0f 97 9b b4 e8 75 16 3f         .....u.?
    c038: 00 00 00 00 00 00 00 00         ........
    c040: 00 00 00 00 00 00 00 00         ........
    c048: 00 00 00 00 00 00 00 00         ........
    c050: 00 00 00 00 00 00 00 00         ........
    c058: 00 00 00 00 00 00 00 00         ........
    c060: 00 00 00 00 00 00 00 00         ........
    c068: e0 96 9b b4 e8 75 16 3f         .....u.?
    c070: 32 e2 b6 04 2a ad 22 bf         2...*.".
    c078: 00 00 00 00 00 00 00 00         ........
    c080: 00 00 00 00 00 00 00 00         ........
    c088: 00 00 00 00 00 00 00 00         ........
    c090: 00 00 00 00 00 00 00 00         ........
    c098: 00 00 00 00 00 00 00 00         ........
    c0a0: 00 00 00 00 00 00 00 00         ........
    c0a8: 00 00 00 00 00 00 00 00         ........
    c0b0: 00 00 00 00 00 00 00 00         ........
    c0b8: 61 05 bc 57 10 d8 12 bf         a..W....
    c0c0: 58 62 94 b9 1a 9f dc 3e         Xb.....>
    c0c8: 00 00 00 00 00 00 00 00         ........
    c0d0: 00 00 00 00 00 00 00 00         ........
    c0d8: 00 00 00 00 00 00 00 00         ........
    c0e0: 00 00 00 00 00 00 00 00         ........
    c0e8: 00 00 00 00 00 00 00 00         ........
    c0f0: 00 00 00 00 00 00 00 00         ........
    c0f8: 59 62 94 b9 1a 9f dc 3e         Yb.....>
    c100: 14 90 51 d1 d5 fc 24 bf         ..Q...$.
    c108: 14 d0 fe 14 cf 45 20 3f         .....E ?
    c110: 00 00 00 00 00 00 00 00         ........
    c118: 00 00 00 00 00 00 00 00         ........
    c120: 00 00 00 00 00 00 00 00         ........
    c128: 00 00 00 00 00 00 00 00         ........
    c130: 00 00 00 00 00 00 00 00         ........
    c138: 00 00 00 00 00 00 00 00         ........
    c140: d2 ce fe 14 cf 45 20 3f         .....E ?
    c148: d2 ce fe 14 cf 45 20 bf         .....E .
    c150: 00 00 00 00 00 00 00 00         ........
    c158: 00 00 00 00 00 00 00 00         ........
    c160: 00 00 00 00 00 00 00 00         ........
    c168: 00 00 00 00 00 00 00 00         ........
    c170: 00 00 00 00 00 00 00 00         ........
    c178: 00 00 00 00 00 00 00 00         ........
    c180: 00 00 00 00 00 00 00 00         ........
    c188: 00 00 00 00 00 00 00 00         ........
    c190: 42 6f 24 95 d9 83 c5 bf         Bo$.....
    c198: a2 0c d2 2e ca fe ef 3f         .......?
    c1a0: 1f 89 9b cf ab 32 9c bf         .....2..
    c1a8: 00 00 00 00 00 00 00 00         ........
    c1b0: 00 00 00 00 00 00 00 00         ........
    c1b8: 00 00 00 00 00 00 00 00         ........
    c1c0: 00 00 00 00 00 00 00 00         ........
    c1c8: 00 00 00 00 00 00 00 00         ........
    c1d0: 00 00 00 00 00 00 00 00         ........
    c1d8: 00 00 00 00 00 00 00 00         ........
    c1e0: a5 94 a7 50 09 2c d5 3f         ...P.,.?
    c1e8: 9c 9e 91 65 97 57 e8 bf         ...e.W..
    c1f0: 76 43 71 a5 f8 73 e2 3f         vCq..s.?
    c1f8: 00 00 00 00 00 00 00 00         ........
    c200: 00 00 00 00 00 00 00 00         ........
    c208: 00 00 00 00 00 00 00 00         ........
    c210: 00 00 00 00 00 00 00 00         ........
    c218: 00 00 00 00 00 00 00 00         ........
    c220: 00 00 00 00 00 00 00 00         ........
    c228: ab 14 f2 db ec cd d7 3f         .......?
    c230: c4 a9 9f 7b 67 dd c7 3f         ...{g..?
    c238: 1c 38 88 77 bf 13 e1 bf         .8.w....
    c240: 00 00 00 00 00 00 00 00         ........
    c248: 00 00 00 00 00 00 00 00         ........
    c250: 00 00 00 00 00 00 00 00         ........
    c258: 00 00 00 00 00 00 00 00         ........
    c260: 00 00 00 00 00 00 00 00         ........
    c268: 00 00 00 00 00 00 00 00         ........
    c270: 00 00 00 00 00 00 00 00         ........
    c278: 15 be b6 e5 6d 7e c0 bf         ....m~..
    c280: 67 42 87 92 ba 86 d4 bf         gB......
    c288: 00 00 00 00 00 00 00 00         ........
    c290: 00 00 00 00 00 00 00 00         ........
    c298: 00 00 00 00 00 00 00 00         ........
    c2a0: 00 00 00 00 00 00 00 00         ........
    c2a8: 00 00 00 00 00 00 00 00         ........
    c2b0: 00 00 00 00 00 00 00 00         ........
    c2b8: 00 00 00 00 00 00 00 00         ........
    c2c0: e6 a7 5c a0 06 41 d9 3f         ..\..A.?
    c2c8: e6 a7 5c a0 06 41 d9 bf         ..\..A..
    c2d0: 19 d5 65 36 d0 6e 95 bf         ..e6.n..
    c2d8: 00 00 00 00 00 00 00 00         ........
    c2e0: 00 00 00 00 00 00 00 00         ........
    c2e8: 00 00 00 00 00 00 00 00         ........
    c2f0: 00 00 00 00 00 00 00 00         ........
    c2f8: 00 00 00 00 00 00 00 00         ........
    c300: 10 43 9c 25 ca fc ef 3f         .C.%...?
    c308: 00 80 e7 1d d3 ae 39 3f         ......9?
    c310: 00 00 00 00 00 00 00 00         ........
    c318: 00 00 00 00 00 00 00 00         ........
    c320: 00 00 00 00 00 00 00 00         ........
    c328: 00 00 00 00 00 00 00 00         ........
    c330: 00 00 00 00 00 00 00 00         ........
    c338: 00 00 00 00 00 00 00 00         ........
    c340: 10 43 9c 25 ca fc ef 3f         .C.%...?
    c348: 10 43 9c 25 ca fc ef bf         .C.%....
    c350: 00 00 00 00 00 00 00 00         ........

0000c358 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.4>:
    c358: 51 bf 00 00 18 00 00 00         Q.......
    c360: 26 02 00 00 05 00 00 00         &.......

0000c368 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.5>:
    c368: 35 bf 00 00 1b 00 00 00         5.......
    c370: 29 01 00 00 05 00 00 00         ).......

0000c378 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.8>:
    c378: e9 be 00 00 4b 00 00 00         ....K...
    c380: 1e 06 00 00 09 00 00 00         ........
