
simulation/experiments/solver_time/etd_20260927T131953Z/exponential.elf:	file format elf32-littlearm

Disassembly of section .text:

00000408 <Reset>:
     408: b580         	push	{r7, lr}
     40a: 466f         	mov	r7, sp
     40c: f5ad 7d58    	sub.w	sp, sp, #0x360
     410: f244 503c    	movw	r0, #0x453c
     414: f241 0404    	movw	r4, #0x1004
     418: f6c5 0002    	movt	r0, #0x5802
     41c: f2ce 0400    	movt	r4, #0xe000
     420: 2500         	movs	r5, #0x0
     422: f64f 0200    	movw	r2, #0xf800
     426: 6801         	ldr	r1, [r0]
     428: f2c2 0200    	movt	r2, #0x2000
     42c: f441 4180    	orr	r1, r1, #0x4000
     430: 6001         	str	r1, [r0]
     432: f64e 51fc    	movw	r1, #0xedfc
     436: 6800         	ldr	r0, [r0]
     438: f2ce 0100    	movt	r1, #0xe000
     43c: 6808         	ldr	r0, [r1]
     43e: f040 7080    	orr	r0, r0, #0x1000000
     442: 6008         	str	r0, [r1]
     444: 6025         	str	r5, [r4]
     446: f64f 71fc    	movw	r1, #0xfffc
     44a: f2c2 0100    	movt	r1, #0x2000
     44e: f854 0c04    	ldr	r0, [r4, #-4]
     452: f040 0001    	orr	r0, r0, #0x1
     456: f844 0c04    	str	r0, [r4, #-4]
     45a: f244 304b    	movw	r0, #0x434b
     45e: f2c5 0041    	movt	r0, #0x5041
     462: f8c2 07f0    	str.w	r0, [r2, #0x7f0]
     466: a81e         	add	r0, sp, #0x78
     468: 600d         	str	r5, [r1]
     46a: f44f 71a4    	mov.w	r1, #0x148
     46e: f500 76a4    	add.w	r6, r0, #0x148
     472: f00b fe22    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0xbc44
     476: 2134         	movs	r1, #0x34
     478: 4630         	mov	r0, r6
     47a: e9cd 55c2    	strd	r5, r5, [sp, #776]
     47e: e9cd 55c0    	strd	r5, r5, [sp, #768]
     482: e9cd 55be    	strd	r5, r5, [sp, #760]
     486: f00b fe18    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0xbc30
     48a: a8d2         	add	r0, sp, #0x348
     48c: f44f 7180    	mov.w	r1, #0x100
     490: 300c         	adds	r0, #0xc
     492: 900e         	str	r0, [sp, #0x38]
     494: a87e         	add	r0, sp, #0x1f8
     496: 95c4         	str	r5, [sp, #0x310]
     498: 95c5         	str	r5, [sp, #0x314]
     49a: f00b ff01    	bl	0xc2a0 <__aeabi_memclr4> @ imm = #0xbe02
     49e: eebe ba00    	vmov.f32	s22, #-5.000000e-01
     4a2: eeb9 ca00    	vmov.f32	s24, #-4.000000e+00
     4a6: eeb7 da00    	vmov.f32	s26, #1.000000e+00
     4aa: f241 0b00    	movw	r11, #0x1000
     4ae: ed9f 9ad1    	vldr	s18, [pc, #836]         @ 0x7f4 <Reset+0x3ec>
     4b2: 261f         	movs	r6, #0x1f
     4b4: f2c2 0b00    	movt	r11, #0x2000
     4b8: ed9f aacf    	vldr	s20, [pc, #828]         @ 0x7f8 <Reset+0x3f0>
     4bc: ed9f eacf    	vldr	s28, [pc, #828]         @ 0x7fc <Reset+0x3f4>
     4c0: f04f 0a00    	mov.w	r10, #0x0
     4c4: 2000         	movs	r0, #0x0
     4c6: 901d         	str	r0, [sp, #0x74]
     4c8: 9007         	str	r0, [sp, #0x1c]
     4ca: e9cd 0005    	strd	r0, r0, [sp, #20]
     4ce: e9cd 0001    	strd	r0, r0, [sp, #4]
     4d2: e9cd 0003    	strd	r0, r0, [sp, #12]
     4d6: e9cd 0010    	strd	r0, r0, [sp, #64]
     4da: 9018         	str	r0, [sp, #0x60]
     4dc: e9cd 0016    	strd	r0, r0, [sp, #88]
     4e0: e9cd 0014    	strd	r0, r0, [sp, #80]
     4e4: e9cd 0012    	strd	r0, r0, [sp, #72]
     4e8: e9cd 000a    	strd	r0, r0, [sp, #40]
     4ec: e9cd 000c    	strd	r0, r0, [sp, #48]
     4f0: 900f         	str	r0, [sp, #0x3c]
     4f2: e036         	b	0x562 <Reset+0x15a>     @ imm = #0x6c
     4f4: bf00         	nop
     4f6: bf00         	nop
     4f8: f081 0e01    	eor	lr, r1, #0x1
     4fc: f080 0c01    	eor	r12, r0, #0x1
     500: e9dd 65c9    	ldrd	r6, r5, [sp, #804]
     504: 9ccb         	ldr	r4, [sp, #0x32c]
     506: f8cb 6000    	str.w	r6, [r11]
     50a: e9dd 23c6    	ldrd	r2, r3, [sp, #792]
     50e: 99c8         	ldr	r1, [sp, #0x320]
     510: f8cb 2004    	str.w	r2, [r11, #0x4]
     514: f8cb 9008    	str.w	r9, [r11, #0x8]
     518: f50d 7952    	add.w	r9, sp, #0x348
     51c: f8cb 800c    	str.w	r8, [r11, #0xc]
     520: f50d 784c    	add.w	r8, sp, #0x330
     524: 980e         	ldr	r0, [sp, #0x38]
     526: 94d4         	str	r4, [sp, #0x350]
     528: e9cd 65d2    	strd	r6, r5, [sp, #840]
     52c: e9c0 2300    	strd	r2, r3, [r0]
     530: 6081         	str	r1, [r0, #0x8]
     532: 4641         	mov	r1, r8
     534: e899 007d    	ldm.w	r9, {r0, r2, r3, r4, r5, r6}
     538: c17d         	stm	r1!, {r0, r2, r3, r4, r5, r6}
     53a: 981d         	ldr	r0, [sp, #0x74]
     53c: 9d1c         	ldr	r5, [sp, #0x70]
     53e: 4470         	add	r0, lr
     540: 901d         	str	r0, [sp, #0x74]
     542: f10a 0a01    	add.w	r10, r10, #0x1
     546: 9e1b         	ldr	r6, [sp, #0x6c]
     548: f241 0404    	movw	r4, #0x1004
     54c: 4465         	add	r5, r12
     54e: f5ba 6f80    	cmp.w	r10, #0x400
     552: f1a6 0601    	sub.w	r6, r6, #0x1
     556: f10b 0b10    	add.w	r11, r11, #0x10
     55a: f2ce 0400    	movt	r4, #0xe000
     55e: f000 80e3    	beq.w	0x728 <Reset+0x320>     @ imm = #0x1c6
     562: 2060         	movs	r0, #0x60
     564: f642 22ab    	movw	r2, #0x2aab
     568: eb00 004a    	add.w	r0, r0, r10, lsl #1
     56c: eeb0 1a4d    	vmov.f32	s2, s26
     570: b281         	uxth	r1, r0
     572: eeb0 8a49    	vmov.f32	s16, s18
     576: 4351         	muls	r1, r2, r1
     578: 951c         	str	r5, [sp, #0x70]
     57a: 0d89         	lsrs	r1, r1, #0x16
     57c: eb01 0141    	add.w	r1, r1, r1, lsl #1
     580: eba0 10c1    	sub.w	r0, r0, r1, lsl #7
     584: b280         	uxth	r0, r0
     586: ee00 0a10    	vmov	s0, r0
     58a: ea5f 70ca    	lsls.w	r0, r10, #0x1f
     58e: 9019         	str	r0, [sp, #0x64]
     590: 9879         	ldr	r0, [sp, #0x1e4]
     592: 901a         	str	r0, [sp, #0x68]
     594: eeb8 0a40    	vcvt.f32.u32	s0, s0
     598: f8d4 8000    	ldr.w	r8, [r4]
     59c: ee80 0a0a    	vdiv.f32	s0, s0, s20
     5a0: ee30 0a0b    	vadd.f32	s0, s0, s22
     5a4: eeb0 0ac0    	vabs.f32	s0, s0
     5a8: ee00 1a0c    	vmla.f32	s2, s0, s24
     5ac: ee21 9a0e    	vmul.f32	s18, s2, s28
     5b0: d11a         	bne	0x5e8 <Reset+0x1e0>     @ imm = #0x34
     5b2: ed8d 9ad2    	vstr	s18, [sp, #840]
     5b6: f50d 7952    	add.w	r9, sp, #0x348
     5ba: a8c9         	add	r0, sp, #0x324
     5bc: ed9d 0ad2    	vldr	s0, [sp, #840]
     5c0: a91e         	add	r1, sp, #0x78
     5c2: f009 f9ed    	bl	0x99a0 <ram_probe::packed_probe::candidate> @ imm = #0x93da
     5c6: 6825         	ldr	r5, [r4]
     5c8: ed8d 9ad2    	vstr	s18, [sp, #840]
     5cc: eef0 0a48    	vmov.f32	s1, s16
     5d0: ed9d 0ad2    	vldr	s0, [sp, #840]
     5d4: a8c6         	add	r0, sp, #0x318
     5d6: a97e         	add	r1, sp, #0x1f8
     5d8: f009 f99e    	bl	0x9918 <ram_probe::packed_probe::control> @ imm = #0x933c
     5dc: 6821         	ldr	r1, [r4]
     5de: eba5 0908    	sub.w	r9, r5, r8
     5e2: eba1 0805    	sub.w	r8, r1, r5
     5e6: e019         	b	0x61c <Reset+0x214>     @ imm = #0x32
     5e8: ed8d 9ad2    	vstr	s18, [sp, #840]
     5ec: eef0 0a48    	vmov.f32	s1, s16
     5f0: f50d 7952    	add.w	r9, sp, #0x348
     5f4: ed9d 0ad2    	vldr	s0, [sp, #840]
     5f8: a8c6         	add	r0, sp, #0x318
     5fa: a97e         	add	r1, sp, #0x1f8
     5fc: f009 f98c    	bl	0x9918 <ram_probe::packed_probe::control> @ imm = #0x9318
     600: 6825         	ldr	r5, [r4]
     602: ed8d 9ad2    	vstr	s18, [sp, #840]
     606: a8c9         	add	r0, sp, #0x324
     608: ed9d 0ad2    	vldr	s0, [sp, #840]
     60c: a91e         	add	r1, sp, #0x78
     60e: f009 f9c7    	bl	0x99a0 <ram_probe::packed_probe::candidate> @ imm = #0x938e
     612: 6820         	ldr	r0, [r4]
     614: eba5 0808    	sub.w	r8, r5, r8
     618: eba0 0905    	sub.w	r9, r0, r5
     61c: f89d 132d    	ldrb.w	r1, [sp, #0x32d]
     620: f89d 0321    	ldrb.w	r0, [sp, #0x321]
     624: f1ba 0f1f    	cmp.w	r10, #0x1f
     628: 961b         	str	r6, [sp, #0x6c]
     62a: f67f af65    	bls.w	0x4f8 <Reset+0xf0>      @ imm = #-0x136
     62e: 9c14         	ldr	r4, [sp, #0x50]
     630: e9cd 1008    	strd	r1, r0, [sp, #32]
     634: 45a1         	cmp	r9, r4
     636: bf88         	it	hi
     638: 464c         	movhi	r4, r9
     63a: 9d15         	ldr	r5, [sp, #0x54]
     63c: f89d c32c    	ldrb.w	r12, [sp, #0x32c]
     640: 45a8         	cmp	r8, r5
     642: bf88         	it	hi
     644: 4645         	movhi	r5, r8
     646: 9a10         	ldr	r2, [sp, #0x40]
     648: 4562         	cmp	r2, r12
     64a: 99ca         	ldr	r1, [sp, #0x328]
     64c: bf98         	it	ls
     64e: 4662         	movls	r2, r12
     650: 9210         	str	r2, [sp, #0x40]
     652: 9a11         	ldr	r2, [sp, #0x44]
     654: 4291         	cmp	r1, r2
     656: bf88         	it	hi
     658: 460a         	movhi	r2, r1
     65a: 9819         	ldr	r0, [sp, #0x64]
     65c: f8dd e02c    	ldr.w	lr, [sp, #0x2c]
     660: 9b0d         	ldr	r3, [sp, #0x34]
     662: 44ce         	add	lr, r9
     664: 4443         	add	r3, r8
     666: b918         	cbnz	r0, 0x670 <Reset+0x268> @ imm = #0x6
     668: f8cd e02c    	str.w	lr, [sp, #0x2c]
     66c: e00d         	b	0x68a <Reset+0x282>     @ imm = #0x1a
     66e: bf00         	nop
     670: 9903         	ldr	r1, [sp, #0xc]
     672: 458e         	cmp	lr, r1
     674: bf88         	it	hi
     676: 4671         	movhi	r1, lr
     678: 9103         	str	r1, [sp, #0xc]
     67a: 9904         	ldr	r1, [sp, #0x10]
     67c: 428b         	cmp	r3, r1
     67e: bf88         	it	hi
     680: 4619         	movhi	r1, r3
     682: 2300         	movs	r3, #0x0
     684: 9104         	str	r1, [sp, #0x10]
     686: 2100         	movs	r1, #0x0
     688: 910b         	str	r1, [sp, #0x2c]
     68a: 980a         	ldr	r0, [sp, #0x28]
     68c: 0671         	lsls	r1, r6, #0x19
     68e: 990c         	ldr	r1, [sp, #0x30]
     690: 4448         	add	r0, r9
     692: f8dd e068    	ldr.w	lr, [sp, #0x68]
     696: 4441         	add	r1, r8
     698: e9cd 4514    	strd	r4, r5, [sp, #80]
     69c: 9211         	str	r2, [sp, #0x44]
     69e: d003         	beq	0x6a8 <Reset+0x2a0>     @ imm = #0x6
     6a0: 900a         	str	r0, [sp, #0x28]
     6a2: e00f         	b	0x6c4 <Reset+0x2bc>     @ imm = #0x1e
     6a4: bf00         	nop
     6a6: bf00         	nop
     6a8: 460a         	mov	r2, r1
     6aa: 9901         	ldr	r1, [sp, #0x4]
     6ac: 4288         	cmp	r0, r1
     6ae: bf88         	it	hi
     6b0: 4601         	movhi	r1, r0
     6b2: 2000         	movs	r0, #0x0
     6b4: 9101         	str	r1, [sp, #0x4]
     6b6: 9902         	ldr	r1, [sp, #0x8]
     6b8: 428a         	cmp	r2, r1
     6ba: bf88         	it	hi
     6bc: 4611         	movhi	r1, r2
     6be: 900a         	str	r0, [sp, #0x28]
     6c0: 9102         	str	r1, [sp, #0x8]
     6c2: 2100         	movs	r1, #0x0
     6c4: 910c         	str	r1, [sp, #0x30]
     6c6: 9979         	ldr	r1, [sp, #0x1e4]
     6c8: 9808         	ldr	r0, [sp, #0x20]
     6ca: 4571         	cmp	r1, lr
     6cc: 9909         	ldr	r1, [sp, #0x24]
     6ce: f080 0001    	eor	r0, r0, #0x1
     6d2: f081 0201    	eor	r2, r1, #0x1
     6d6: 9916         	ldr	r1, [sp, #0x58]
     6d8: 9c13         	ldr	r4, [sp, #0x4c]
     6da: 4401         	add	r1, r0
     6dc: 9116         	str	r1, [sp, #0x58]
     6de: 9917         	ldr	r1, [sp, #0x5c]
     6e0: 9d12         	ldr	r5, [sp, #0x48]
     6e2: 4686         	mov	lr, r0
     6e4: 4610         	mov	r0, r2
     6e6: 4411         	add	r1, r2
     6e8: 9117         	str	r1, [sp, #0x5c]
     6ea: 9918         	ldr	r1, [sp, #0x60]
     6ec: 9a0f         	ldr	r2, [sp, #0x3c]
     6ee: 930d         	str	r3, [sp, #0x34]
     6f0: 444d         	add	r5, r9
     6f2: 4444         	add	r4, r8
     6f4: f101 0101    	add.w	r1, r1, #0x1
     6f8: 4462         	add	r2, r12
     6fa: 9118         	str	r1, [sp, #0x60]
     6fc: e9cd 5412    	strd	r5, r4, [sp, #72]
     700: 920f         	str	r2, [sp, #0x3c]
     702: d90d         	bls	0x720 <Reset+0x318>     @ imm = #0x1a
     704: 9905         	ldr	r1, [sp, #0x14]
     706: 9a06         	ldr	r2, [sp, #0x18]
     708: 4449         	add	r1, r9
     70a: 9105         	str	r1, [sp, #0x14]
     70c: 9907         	ldr	r1, [sp, #0x1c]
     70e: 3201         	adds	r2, #0x1
     710: 4589         	cmp	r9, r1
     712: 9206         	str	r2, [sp, #0x18]
     714: bf88         	it	hi
     716: 4649         	movhi	r1, r9
     718: 4684         	mov	r12, r0
     71a: 9107         	str	r1, [sp, #0x1c]
     71c: e6f0         	b	0x500 <Reset+0xf8>      @ imm = #-0x220
     71e: bf00         	nop
     720: 4684         	mov	r12, r0
     722: e6ed         	b	0x500 <Reset+0xf8>      @ imm = #-0x226
     724: bf00         	nop
     726: bf00         	nop
     728: f64f 0200    	movw	r2, #0xf800
     72c: 9879         	ldr	r0, [sp, #0x1e4]
     72e: f2c2 0200    	movt	r2, #0x2000
     732: f8dd 9314    	ldr.w	r9, [sp, #0x314]
     736: e9dd 8372    	ldrd	r8, r3, [sp, #456]
     73a: e9dd 6474    	ldrd	r6, r4, [sp, #464]
     73e: e9dd ec76    	ldrd	lr, r12, [sp, #472]
     742: 990f         	ldr	r1, [sp, #0x3c]
     744: 6011         	str	r1, [r2]
     746: 9910         	ldr	r1, [sp, #0x40]
     748: 6051         	str	r1, [r2, #0x4]
     74a: 9911         	ldr	r1, [sp, #0x44]
     74c: 6091         	str	r1, [r2, #0x8]
     74e: 60d0         	str	r0, [r2, #0xc]
     750: f44f 71c0    	mov.w	r1, #0x180
     754: 9803         	ldr	r0, [sp, #0xc]
     756: 6110         	str	r0, [r2, #0x10]
     758: 9801         	ldr	r0, [sp, #0x4]
     75a: 6150         	str	r0, [r2, #0x14]
     75c: 2000         	movs	r0, #0x0
     75e: 6190         	str	r0, [r2, #0x18]
     760: 61d1         	str	r1, [r2, #0x1c]
     762: 9905         	ldr	r1, [sp, #0x14]
     764: 6211         	str	r1, [r2, #0x20]
     766: 9906         	ldr	r1, [sp, #0x18]
     768: 6251         	str	r1, [r2, #0x24]
     76a: 9907         	ldr	r1, [sp, #0x1c]
     76c: 6291         	str	r1, [r2, #0x28]
     76e: 9904         	ldr	r1, [sp, #0x10]
     770: 62d1         	str	r1, [r2, #0x2c]
     772: 9902         	ldr	r1, [sp, #0x8]
     774: 6311         	str	r1, [r2, #0x30]
     776: 6350         	str	r0, [r2, #0x34]
     778: 6390         	str	r0, [r2, #0x38]
     77a: 63d0         	str	r0, [r2, #0x3c]
     77c: 6410         	str	r0, [r2, #0x40]
     77e: 6450         	str	r0, [r2, #0x44]
     780: 9912         	ldr	r1, [sp, #0x48]
     782: 6491         	str	r1, [r2, #0x48]
     784: 9913         	ldr	r1, [sp, #0x4c]
     786: 64d1         	str	r1, [r2, #0x4c]
     788: 9914         	ldr	r1, [sp, #0x50]
     78a: 6511         	str	r1, [r2, #0x50]
     78c: 9915         	ldr	r1, [sp, #0x54]
     78e: 6551         	str	r1, [r2, #0x54]
     790: 9916         	ldr	r1, [sp, #0x58]
     792: 6591         	str	r1, [r2, #0x58]
     794: 65d0         	str	r0, [r2, #0x5c]
     796: f64f 71fc    	movw	r1, #0xfffc
     79a: 6610         	str	r0, [r2, #0x60]
     79c: f2c2 0100    	movt	r1, #0x2000
     7a0: 6650         	str	r0, [r2, #0x64]
     7a2: 6690         	str	r0, [r2, #0x68]
     7a4: 9818         	ldr	r0, [sp, #0x60]
     7a6: 66d0         	str	r0, [r2, #0x6c]
     7a8: 9817         	ldr	r0, [sp, #0x5c]
     7aa: 6710         	str	r0, [r2, #0x70]
     7ac: f8c2 9074    	str.w	r9, [r2, #0x74]
     7b0: 200a         	movs	r0, #0xa
     7b2: f8c2 8078    	str.w	r8, [r2, #0x78]
     7b6: 67d3         	str	r3, [r2, #0x7c]
     7b8: f8c2 6080    	str.w	r6, [r2, #0x80]
     7bc: f8c2 4084    	str.w	r4, [r2, #0x84]
     7c0: f8c2 e088    	str.w	lr, [r2, #0x88]
     7c4: f8c2 008c    	str.w	r0, [r2, #0x8c]
     7c8: 981d         	ldr	r0, [sp, #0x74]
     7ca: f8c2 0090    	str.w	r0, [r2, #0x90]
     7ce: f8c2 5094    	str.w	r5, [r2, #0x94]
     7d2: 2002         	movs	r0, #0x2
     7d4: f8c2 c098    	str.w	r12, [r2, #0x98]
     7d8: f8c2 009c    	str.w	r0, [r2, #0x9c]
     7dc: f644 6045    	movw	r0, #0x4e45
     7e0: f2c4 404f    	movt	r0, #0x444f
     7e4: 6008         	str	r0, [r1]
     7e6: bf00         	nop
     7e8: bf10         	yield
     7ea: bf10         	yield
     7ec: bf10         	yield
     7ee: bf10         	yield
     7f0: e7fa         	b	0x7e8 <Reset+0x3e0>     @ imm = #-0xc
     7f2: bf00         	nop
     7f4: 00 00 00 00  	.word	0x00000000
     7f8: 00 00 c0 43  	.word	0x43c00000
     7fc: cd cc cc 3d  	.word	0x3dcccccd

00000800 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>>:
     800: b5f0         	push	{r4, r5, r6, r7, lr}
     802: af03         	add	r7, sp, #0xc
     804: e92d 0f00    	push.w	{r8, r9, r10, r11}
     808: b081         	sub	sp, #0x4
     80a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
     80e: f5ad 7d0a    	sub.w	sp, sp, #0x228
     812: eef6 aa00    	vmov.f32	s21, #5.000000e-01
     816: ed91 1a08    	vldr	s2, [r1, #32]
     81a: ed91 2a24    	vldr	s4, [r1, #144]
     81e: ed91 3a09    	vldr	s6, [r1, #36]
     822: ee31 1a01    	vadd.f32	s2, s2, s2
     826: ed91 4a0a    	vldr	s8, [r1, #40]
     82a: ee02 1a6a    	vmls.f32	s2, s4, s21
     82e: ed91 5a0b    	vldr	s10, [r1, #44]
     832: ee33 2a03    	vadd.f32	s4, s6, s6
     836: ed91 3a25    	vldr	s6, [r1, #148]
     83a: ee03 2a6a    	vmls.f32	s4, s6, s21
     83e: ed91 6a30    	vldr	s12, [r1, #192]
     842: ee34 3a04    	vadd.f32	s6, s8, s8
     846: ed91 4a26    	vldr	s8, [r1, #152]
     84a: ee04 3a6a    	vmls.f32	s6, s8, s21
     84e: ed8d 1a1e    	vstr	s2, [sp, #120]
     852: ee35 4a05    	vadd.f32	s8, s10, s10
     856: ed91 5a27    	vldr	s10, [r1, #156]
     85a: ee05 4a6a    	vmls.f32	s8, s10, s21
     85e: ed8d 2a1f    	vstr	s4, [sp, #124]
     862: ed91 1a0c    	vldr	s2, [r1, #48]
     866: ed91 5a0f    	vldr	s10, [r1, #60]
     86a: ed91 2a28    	vldr	s4, [r1, #160]
     86e: ed8d 3a20    	vstr	s6, [sp, #128]
     872: ee31 1a01    	vadd.f32	s2, s2, s2
     876: ed91 3a29    	vldr	s6, [r1, #164]
     87a: ee02 1a6a    	vmls.f32	s2, s4, s21
     87e: ed91 2a0d    	vldr	s4, [r1, #52]
     882: ed8d 4a21    	vstr	s8, [sp, #132]
     886: ee32 2a02    	vadd.f32	s4, s4, s4
     88a: ee03 2a6a    	vmls.f32	s4, s6, s21
     88e: ed91 3a0e    	vldr	s6, [r1, #56]
     892: ed91 4a2a    	vldr	s8, [r1, #168]
     896: ee33 3a03    	vadd.f32	s6, s6, s6
     89a: ee04 3a6a    	vmls.f32	s6, s8, s21
     89e: ed8d 1a22    	vstr	s2, [sp, #136]
     8a2: ee35 4a05    	vadd.f32	s8, s10, s10
     8a6: ed91 5a2b    	vldr	s10, [r1, #172]
     8aa: ee05 4a6a    	vmls.f32	s8, s10, s21
     8ae: ed91 1a10    	vldr	s2, [r1, #64]
     8b2: ed8d 2a23    	vstr	s4, [sp, #140]
     8b6: ed91 2a11    	vldr	s4, [r1, #68]
     8ba: ed8d 3a24    	vstr	s6, [sp, #144]
     8be: ed91 3a2c    	vldr	s6, [r1, #176]
     8c2: ee31 1a01    	vadd.f32	s2, s2, s2
     8c6: ed91 5a2f    	vldr	s10, [r1, #188]
     8ca: ee03 1a6a    	vmls.f32	s2, s6, s21
     8ce: ed91 3a2d    	vldr	s6, [r1, #180]
     8d2: ed8d 4a25    	vstr	s8, [sp, #148]
     8d6: ee32 2a02    	vadd.f32	s4, s4, s4
     8da: ee03 2a6a    	vmls.f32	s4, s6, s21
     8de: ed91 3a12    	vldr	s6, [r1, #72]
     8e2: ed91 4a2e    	vldr	s8, [r1, #184]
     8e6: ee33 3a03    	vadd.f32	s6, s6, s6
     8ea: ee04 3a6a    	vmls.f32	s6, s8, s21
     8ee: ed91 4a13    	vldr	s8, [r1, #76]
     8f2: ee34 4a04    	vadd.f32	s8, s8, s8
     8f6: ed8d 1a26    	vstr	s2, [sp, #152]
     8fa: ee05 4a6a    	vmls.f32	s8, s10, s21
     8fe: ed8d 2a27    	vstr	s4, [sp, #156]
     902: ed91 1a15    	vldr	s2, [r1, #84]
     906: ed91 5a14    	vldr	s10, [r1, #80]
     90a: ed91 2a31    	vldr	s4, [r1, #196]
     90e: ed8d 3a28    	vstr	s6, [sp, #160]
     912: ee31 1a01    	vadd.f32	s2, s2, s2
     916: ed91 3a32    	vldr	s6, [r1, #200]
     91a: ee02 1a6a    	vmls.f32	s2, s4, s21
     91e: ed91 2a16    	vldr	s4, [r1, #88]
     922: ed8d 4a29    	vstr	s8, [sp, #164]
     926: ee32 2a02    	vadd.f32	s4, s4, s4
     92a: ee03 2a6a    	vmls.f32	s4, s6, s21
     92e: ed91 3a17    	vldr	s6, [r1, #92]
     932: ed91 4a33    	vldr	s8, [r1, #204]
     936: ee33 3a03    	vadd.f32	s6, s6, s6
     93a: ee04 3a6a    	vmls.f32	s6, s8, s21
     93e: ed8d 1a2b    	vstr	s2, [sp, #172]
     942: ee35 5a05    	vadd.f32	s10, s10, s10
     946: ed91 1a1a    	vldr	s2, [r1, #104]
     94a: ee06 5a6a    	vmls.f32	s10, s12, s21
     94e: ed8d 2a2c    	vstr	s4, [sp, #176]
     952: ed91 2a36    	vldr	s4, [r1, #216]
     956: ee31 1a01    	vadd.f32	s2, s2, s2
     95a: ed8d 3a2d    	vstr	s6, [sp, #180]
     95e: ee02 1a6a    	vmls.f32	s2, s4, s21
     962: ed91 2a1b    	vldr	s4, [r1, #108]
     966: ed91 4a18    	vldr	s8, [r1, #96]
     96a: ed91 3a37    	vldr	s6, [r1, #220]
     96e: ee32 2a02    	vadd.f32	s4, s4, s4
     972: ee03 2a6a    	vmls.f32	s4, s6, s21
     976: ed8d 5a2a    	vstr	s10, [sp, #168]
     97a: ed91 5a34    	vldr	s10, [r1, #208]
     97e: ee34 4a04    	vadd.f32	s8, s8, s8
     982: ee05 4a6a    	vmls.f32	s8, s10, s21
     986: ed91 5a19    	vldr	s10, [r1, #100]
     98a: ed91 6a35    	vldr	s12, [r1, #212]
     98e: ee35 5a05    	vadd.f32	s10, s10, s10
     992: ee06 5a6a    	vmls.f32	s10, s12, s21
     996: ed8d 1a30    	vstr	s2, [sp, #192]
     99a: ed8d 2a31    	vstr	s4, [sp, #196]
     99e: ed91 1a1f    	vldr	s2, [r1, #124]
     9a2: ed91 2a3b    	vldr	s4, [r1, #236]
     9a6: ee31 da01    	vadd.f32	s26, s2, s2
     9aa: ee02 da6a    	vmls.f32	s26, s4, s21
     9ae: ed91 1a20    	vldr	s2, [r1, #128]
     9b2: ed91 2a3c    	vldr	s4, [r1, #240]
     9b6: ed8d 4a2e    	vstr	s8, [sp, #184]
     9ba: ed91 3a1c    	vldr	s6, [r1, #112]
     9be: ee31 ca01    	vadd.f32	s24, s2, s2
     9c2: ed91 4a38    	vldr	s8, [r1, #224]
     9c6: ee02 ca6a    	vmls.f32	s24, s4, s21
     9ca: ed91 1a21    	vldr	s2, [r1, #132]
     9ce: ed8d 5a2f    	vstr	s10, [sp, #188]
     9d2: ed91 2a3d    	vldr	s4, [r1, #244]
     9d6: ee33 3a03    	vadd.f32	s6, s6, s6
     9da: ee04 3a6a    	vmls.f32	s6, s8, s21
     9de: ed91 4a1d    	vldr	s8, [r1, #116]
     9e2: ed91 5a39    	vldr	s10, [r1, #228]
     9e6: ee71 8a01    	vadd.f32	s17, s2, s2
     9ea: ee42 8a6a    	vmls.f32	s17, s4, s21
     9ee: ed91 1a22    	vldr	s2, [r1, #136]
     9f2: ed91 2a3e    	vldr	s4, [r1, #248]
     9f6: ee34 4a04    	vadd.f32	s8, s8, s8
     9fa: ee05 4a6a    	vmls.f32	s8, s10, s21
     9fe: ed91 5a1e    	vldr	s10, [r1, #120]
     a02: ed91 6a3a    	vldr	s12, [r1, #232]
     a06: ee31 aa01    	vadd.f32	s20, s2, s2
     a0a: ee02 aa6a    	vmls.f32	s20, s4, s21
     a0e: ed91 1a23    	vldr	s2, [r1, #140]
     a12: ed91 2a3f    	vldr	s4, [r1, #252]
     a16: ee35 5a05    	vadd.f32	s10, s10, s10
     a1a: ee06 5a6a    	vmls.f32	s10, s12, s21
     a1e: 460c         	mov	r4, r1
     a20: ee31 9a01    	vadd.f32	s18, s2, s2
     a24: 4683         	mov	r11, r0
     a26: ee02 9a6a    	vmls.f32	s18, s4, s21
     a2a: a83a         	add	r0, sp, #0xe8
     a2c: a91e         	add	r1, sp, #0x78
     a2e: ed8d 3a32    	vstr	s6, [sp, #200]
     a32: ed8d 4a33    	vstr	s8, [sp, #204]
     a36: eeb0 8a40    	vmov.f32	s16, s0
     a3a: ed8d 5a34    	vstr	s10, [sp, #208]
     a3e: ed8d da35    	vstr	s26, [sp, #212]
     a42: ed8d ca36    	vstr	s24, [sp, #216]
     a46: edcd 8a37    	vstr	s17, [sp, #220]
     a4a: ed8d aa38    	vstr	s20, [sp, #224]
     a4e: ed8d 9a39    	vstr	s18, [sp, #228]
     a52: f005 f9bd    	bl	0x5dd0 <orange_dsp::generated_packed::origin::<5>> @ imm = #0x537a
     a56: f50d 78b0    	add.w	r8, sp, #0x160
     a5a: 4620         	mov	r0, r4
     a5c: 4641         	mov	r1, r8
     a5e: ed9f 2ad5    	vldr	s4, [pc, #852]          @ 0xdb4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x5b4>
     a62: c86c         	ldm	r0!, {r2, r3, r5, r6}
     a64: c16c         	stm	r1!, {r2, r3, r5, r6}
     a66: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
     a6a: c16c         	stm	r1!, {r2, r3, r5, r6}
     a6c: ed9d eb3a    	vldr	d14, [sp, #232]
     a70: 2000         	movs	r0, #0x0
     a72: 9060         	str	r0, [sp, #0x180]
     a74: ed9f 0bd0    	vldr	d0, [pc, #832]          @ 0xdb8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x5b8>
     a78: e9cd 0063    	strd	r0, r0, [sp, #396]
     a7c: ee8e 0b00    	vdiv.f64	d0, d14, d0
     a80: e9cd 0061    	strd	r0, r0, [sp, #388]
     a84: eeb7 1bc0    	vcvt.f32.f64	s2, d0
     a88: ed8d 1a58    	vstr	s2, [sp, #352]
     a8c: eeb0 0ac1    	vabs.f32	s0, s2
     a90: eeb4 0a42    	vcmp.f32	s0, s4
     a94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     a98: d838         	bhi	0xb0c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x30c> @ imm = #0x70
     a9a: ed9f 3ac2    	vldr	s6, [pc, #776]          @ 0xda4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x5a4>
     a9e: eeb7 2bce    	vcvt.f32.f64	s4, d14
     aa2: ee01 2a03    	vmla.f32	s4, s2, s6
     aa6: ee12 0a10    	vmov	r0, s4
     aaa: f020 4000    	bic	r0, r0, #0x80000000
     aae: f1b0 4fff    	cmp.w	r0, #0x7f800000
     ab2: da2b         	bge	0xb0c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x30c> @ imm = #0x56
     ab4: eeb0 1ac2    	vabs.f32	s2, s4
     ab8: ed9f 4af0    	vldr	s8, [pc, #960]          @ 0xe7c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x67c>
     abc: ee81 1a04    	vdiv.f32	s2, s2, s8
     ac0: ed9f 4aef    	vldr	s8, [pc, #956]          @ 0xe80 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x680>
     ac4: eeb4 1a44    	vcmp.f32	s2, s8
     ac8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     acc: d81e         	bhi	0xb0c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x30c> @ imm = #0x3c
     ace: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
     ad2: eeb4 0a40    	vcmp.f32	s0, s0
     ad6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     ada: ee82 2a03    	vdiv.f32	s4, s4, s6
     ade: ed9f 3aef    	vldr	s6, [pc, #956]          @ 0xe9c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x69c>
     ae2: fe14 0a00    	vselvs.f32	s0, s8, s0
     ae6: eeb0 2ac2    	vabs.f32	s4, s4
     aea: eeb4 0a44    	vcmp.f32	s0, s8
     aee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     af2: fe30 0a04    	vselgt.f32	s0, s0, s8
     af6: ee20 0a03    	vmul.f32	s0, s0, s6
     afa: ed9f 3ae9    	vldr	s6, [pc, #932]          @ 0xea0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6a0>
     afe: fe80 0a43    	vminnm.f32	s0, s0, s6
     b02: eeb4 2a40    	vcmp.f32	s4, s0
     b06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     b0a: d951         	bls	0xbb0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x3b0> @ imm = #0xa2
     b0c: 4620         	mov	r0, r4
     b0e: 4641         	mov	r1, r8
     b10: eeb0 0b4e    	vmov.f64	d0, d14
     b14: c86c         	ldm	r0!, {r2, r3, r5, r6}
     b16: c16c         	stm	r1!, {r2, r3, r5, r6}
     b18: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
     b1c: c16c         	stm	r1!, {r2, r3, r5, r6}
     b1e: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
     b22: 4641         	mov	r1, r8
     b24: 3001         	adds	r0, #0x1
     b26: f8c4 010c    	str.w	r0, [r4, #0x10c]
     b2a: a865         	add	r0, sp, #0x194
     b2c: f005 fbfc    	bl	0x6328 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>> @ imm = #0x57f8
     b30: f89d 0199    	ldrb.w	r0, [sp, #0x199]
     b34: f89d 9198    	ldrb.w	r9, [sp, #0x198]
     b38: b190         	cbz	r0, 0xb60 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x360> @ imm = #0x24
     b3a: ed9d 0a65    	vldr	s0, [sp, #404]
     b3e: ed9f 1ad9    	vldr	s2, [pc, #868]          @ 0xea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6a4>
     b42: eeb4 0a40    	vcmp.f32	s0, s0
     b46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     b4a: fe11 0a00    	vselvs.f32	s0, s2, s0
     b4e: eeb5 0a40    	vcmp.f32	s0, #0
     b52: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     b56: fe70 da01    	vselgt.f32	s27, s0, s2
     b5a: e03e         	b	0xbda <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x3da> @ imm = #0x7c
     b5c: bf00         	nop
     b5e: bf00         	nop
     b60: eeb0 0b4e    	vmov.f64	d0, d14
     b64: a865         	add	r0, sp, #0x194
     b66: a958         	add	r1, sp, #0x160
     b68: 2600         	movs	r6, #0x0
     b6a: 9658         	str	r6, [sp, #0x160]
     b6c: f005 fbdc    	bl	0x6328 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>> @ imm = #0x57b8
     b70: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
     b74: ed9d 0a65    	vldr	s0, [sp, #404]
     b78: 3001         	adds	r0, #0x1
     b7a: eeb4 0a40    	vcmp.f32	s0, s0
     b7e: bf28         	it	hs
     b80: f04f 30ff    	movhs.w	r0, #0xffffffff
     b84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     b88: ed9f 1ac6    	vldr	s2, [pc, #792]          @ 0xea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6a4>
     b8c: f89d 1198    	ldrb.w	r1, [sp, #0x198]
     b90: fe11 2a00    	vselvs.f32	s4, s2, s0
     b94: f89d 2199    	ldrb.w	r2, [sp, #0x199]
     b98: 4489         	add	r9, r1
     b9a: f8c4 011c    	str.w	r0, [r4, #0x11c]
     b9e: eeb5 2a40    	vcmp.f32	s4, #0
     ba2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     ba6: fe72 da01    	vselgt.f32	s27, s4, s2
     baa: b9b2         	cbnz	r2, 0xbda <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x3da> @ imm = #0x2c
     bac: e287         	b	0x10be <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x8be> @ imm = #0x50e
     bae: bf00         	nop
     bb0: eeb4 1a41    	vcmp.f32	s2, s2
     bb4: ed9f 0abb    	vldr	s0, [pc, #748]          @ 0xea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6a4>
     bb8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     bbc: f8d4 0100    	ldr.w	r0, [r4, #0x100]
     bc0: f04f 0900    	mov.w	r9, #0x0
     bc4: fe10 1a01    	vselvs.f32	s2, s0, s2
     bc8: 3001         	adds	r0, #0x1
     bca: f8c4 0100    	str.w	r0, [r4, #0x100]
     bce: eeb5 1a40    	vcmp.f32	s2, #0
     bd2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     bd6: fe71 da00    	vselgt.f32	s27, s2, s0
     bda: f50d 7cca    	add.w	r12, sp, #0x194
     bde: 4642         	mov	r2, r8
     be0: 4661         	mov	r1, r12
     be2: eddf 9ab1    	vldr	s19, [pc, #708]         @ 0xea8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6a8>
     be6: ca69         	ldm	r2!, {r0, r3, r5, r6}
     be8: c169         	stm	r1!, {r0, r3, r5, r6}
     bea: e892 0069    	ldm.w	r2, {r0, r3, r5, r6}
     bee: c169         	stm	r1!, {r0, r3, r5, r6}
     bf0: ed9d 0a58    	vldr	s0, [sp, #352]
     bf4: eefa ca0b    	vmov.f32	s25, #-1.350000e+01
     bf8: eeb7 1ac0    	vcvt.f64.f32	d1, s0
     bfc: ed9d 3a5a    	vldr	s6, [sp, #360]
     c00: ed9d eb4a    	vldr	d14, [sp, #296]
     c04: eef2 ba0b    	vmov.f32	s23, #1.350000e+01
     c08: ed9f 6aa8    	vldr	s12, [pc, #672]         @ 0xeac <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6ac>
     c0c: ed9f 2ba8    	vldr	d2, [pc, #672]          @ 0xeb0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6b0>
     c10: eeb0 0b4e    	vmov.f64	d0, d14
     c14: ee01 0b02    	vmla.f64	d0, d1, d2
     c18: eeb7 2ac3    	vcvt.f64.f32	d2, s6
     c1c: ed9d 1a5b    	vldr	s2, [sp, #364]
     c20: ed9f 5ba5    	vldr	d5, [pc, #660]          @ 0xeb8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6b8>
     c24: ed9d 3a5c    	vldr	s6, [sp, #368]
     c28: eeb7 1ac1    	vcvt.f64.f32	d1, s2
     c2c: eeb0 4b40    	vmov.f64	d4, d0
     c30: ee02 4b05    	vmla.f64	d4, d2, d5
     c34: eeb7 2ac3    	vcvt.f64.f32	d2, s6
     c38: ee01 4b05    	vmla.f64	d4, d1, d5
     c3c: ed9d 1a5d    	vldr	s2, [sp, #372]
     c40: ee02 4b05    	vmla.f64	d4, d2, d5
     c44: eeb7 1ac1    	vcvt.f64.f32	d1, s2
     c48: ed9d 2a5e    	vldr	s4, [sp, #376]
     c4c: eeb7 2ac2    	vcvt.f64.f32	d2, s4
     c50: ed9f 3b9b    	vldr	d3, [pc, #620]          @ 0xec0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6c0>
     c54: ee01 4b05    	vmla.f64	d4, d1, d5
     c58: ed9d 1a5f    	vldr	s2, [sp, #380]
     c5c: ee02 4b05    	vmla.f64	d4, d2, d5
     c60: eeb7 1ac1    	vcvt.f64.f32	d1, s2
     c64: ee2d 2a29    	vmul.f32	s4, s26, s19
     c68: ee01 4b05    	vmla.f64	d4, d1, d5
     c6c: eeb7 1ac2    	vcvt.f64.f32	d1, s4
     c70: ee81 1b03    	vdiv.f64	d1, d1, d3
     c74: ed9f 3b94    	vldr	d3, [pc, #592]          @ 0xec8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6c8>
     c78: ee04 1b03    	vmla.f64	d1, d4, d3
     c7c: ed9f 4a81    	vldr	s8, [pc, #516]          @ 0xe84 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x684>
     c80: ed9f 3b93    	vldr	d3, [pc, #588]          @ 0xed0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6d0>
     c84: ee32 5a04    	vadd.f32	s10, s4, s8
     c88: ee81 1b03    	vdiv.f64	d1, d1, d3
     c8c: ed9f 3a7e    	vldr	s6, [pc, #504]          @ 0xe88 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x688>
     c90: ee32 3a03    	vadd.f32	s6, s4, s6
     c94: eeb7 1bc1    	vcvt.f32.f64	s2, d1
     c98: ee83 4a06    	vdiv.f32	s8, s6, s12
     c9c: eef4 ca41    	vcmp.f32	s25, s2
     ca0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     ca4: ee85 3a06    	vdiv.f32	s6, s10, s12
     ca8: fe3c 1a81    	vselgt.f32	s2, s25, s2
     cac: eeb4 1a6b    	vcmp.f32	s2, s23
     cb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     cb4: eeb4 4a43    	vcmp.f32	s8, s6
     cb8: fe3b 1a81    	vselgt.f32	s2, s23, s2
     cbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     cc0: ed8d 1a59    	vstr	s2, [sp, #356]
     cc4: f201 866c    	bhi.w	0x29a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x21a0> @ imm = #0x1cd8
     cc8: eeb7 5ac1    	vcvt.f64.f32	d5, s2
     ccc: 2100         	movs	r1, #0x0
     cce: ed9f 6b82    	vldr	d6, [pc, #520]          @ 0xed8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6d8>
     cd2: 2000         	movs	r0, #0x0
     cd4: ee05 0b06    	vmla.f64	d0, d5, d6
     cd8: ed9f 5ade    	vldr	s10, [pc, #888]         @ 0x1054 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x854>
     cdc: ed9d fb3c    	vldr	d15, [sp, #240]
     ce0: ed9f 6add    	vldr	s12, [pc, #884]         @ 0x1058 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x858>
     ce4: eeb7 0bc0    	vcvt.f32.f64	s0, d0
     ce8: ee20 5a05    	vmul.f32	s10, s0, s10
     cec: ed9f 0adb    	vldr	s0, [pc, #876]          @ 0x105c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x85c>
     cf0: ee02 5a00    	vmla.f32	s10, s4, s0
     cf4: eeb7 2bcf    	vcvt.f32.f64	s4, d15
     cf8: ee01 2a06    	vmla.f32	s4, s2, s12
     cfc: eeb4 4a45    	vcmp.f32	s8, s10
     d00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d04: eeb0 6ac2    	vabs.f32	s12, s4
     d08: fe34 0a05    	vselgt.f32	s0, s8, s10
     d0c: eeb4 0a43    	vcmp.f32	s0, s6
     d10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d14: eeb4 5a44    	vcmp.f32	s10, s8
     d18: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
     d1c: fe33 0a00    	vselgt.f32	s0, s6, s0
     d20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d24: bfc8         	it	gt
     d26: 2101         	movgt	r1, #0x1
     d28: eeb4 5a43    	vcmp.f32	s10, s6
     d2c: eebf 5a00    	vmov.f32	s10, #-1.000000e+00
     d30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d34: eeb5 2a40    	vcmp.f32	s4, #0
     d38: ed9f 2a5a    	vldr	s4, [pc, #360]          @ 0xea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6a4>
     d3c: eeb0 3a42    	vmov.f32	s6, s4
     d40: bf48         	it	mi
     d42: 2001         	movmi	r0, #0x1
     d44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d48: bf48         	it	mi
     d4a: eeb0 3a45    	vmovmi.f32	s6, s10
     d4e: eeb0 5a42    	vmov.f32	s10, s4
     d52: ea01 0100    	and.w	r1, r1, r0
     d56: fe34 7a03    	vselgt.f32	s14, s8, s6
     d5a: ed9f 3ade    	vldr	s6, [pc, #888]          @ 0x10d4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x8d4>
     d5e: eeb4 6a43    	vcmp.f32	s12, s6
     d62: eeb0 3a42    	vmov.f32	s6, s4
     d66: eeb0 4a42    	vmov.f32	s8, s4
     d6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d6e: f280 80f2    	bge.w	0xf56 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x756> @ imm = #0x1e4
     d72: ed9f 2ad9    	vldr	s4, [pc, #868]          @ 0x10d8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x8d8>
     d76: eeb4 6a42    	vcmp.f32	s12, s4
     d7a: ed9f 3a4a    	vldr	s6, [pc, #296]          @ 0xea4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6a4>
     d7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d82: d911         	bls	0xda8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x5a8> @ imm = #0x22
     d84: ed9f 2ad5    	vldr	s4, [pc, #852]          @ 0x10dc <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x8dc>
     d88: eeb4 6a42    	vcmp.f32	s12, s4
     d8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d90: d916         	bls	0xdc0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x5c0> @ imm = #0x2c
     d92: ed9f 2ad3    	vldr	s4, [pc, #844]          @ 0x10e0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x8e0>
     d96: ee36 4a02    	vadd.f32	s8, s12, s4
     d9a: ed9f 5ad2    	vldr	s10, [pc, #840]         @ 0x10e4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x8e4>
     d9e: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
     da2: e015         	b	0xdd0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x5d0> @ imm = #0x2a
     da4: 09 d5 19 b8  	.word	0xb819d509
     da8: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
     dac: eeb0 5a43    	vmov.f32	s10, s6
     db0: e012         	b	0xdd8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x5d8> @ imm = #0x24
     db2: bf00         	nop
     db4: 93 18 36 41  	.word	0x41361893
     db8: 80 e5 70 28  	.word	0x2870e580
     dbc: a1 3a 03 3f  	.word	0x3f033aa1
     dc0: ed9f 2aed    	vldr	s4, [pc, #948]          @ 0x1178 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x978>
     dc4: ee36 4a02    	vadd.f32	s8, s12, s4
     dc8: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
     dcc: ed9f 5aeb    	vldr	s10, [pc, #940]         @ 0x117c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x97c>
     dd0: ee04 2a05    	vmla.f32	s4, s8, s10
     dd4: ee27 5a05    	vmul.f32	s10, s14, s10
     dd8: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
     ddc: ee34 2a42    	vsub.f32	s4, s8, s4
     de0: fe82 4a03    	vmaxnm.f32	s8, s4, s6
     de4: eeb1 2a45    	vneg.f32	s4, s10
     de8: eeb5 4a40    	vcmp.f32	s8, #0
     dec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     df0: d94e         	bls	0xe90 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x690> @ imm = #0x9c
     df2: eeb0 3ac0    	vabs.f32	s6, s0
     df6: eeb4 3a44    	vcmp.f32	s6, s8
     dfa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     dfe: f240 807f    	bls.w	0xf00 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x700> @ imm = #0xfe
     e02: ee84 5a03    	vdiv.f32	s10, s8, s6
     e06: ee25 3a05    	vmul.f32	s6, s10, s10
     e0a: ee23 3a03    	vmul.f32	s6, s6, s6
     e0e: ee23 3a03    	vmul.f32	s6, s6, s6
     e12: ee23 6a03    	vmul.f32	s12, s6, s6
     e16: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
     e1a: ee36 7a03    	vadd.f32	s14, s12, s6
     e1e: eef0 0a43    	vmov.f32	s1, s6
     e22: eeb4 7a43    	vcmp.f32	s14, s6
     e26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e2a: d009         	beq	0xe40 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x640> @ imm = #0x12
     e2c: eef0 0a47    	vmov.f32	s1, s14
     e30: eef1 0ae0    	vsqrt.f32	s1, s1
     e34: eef1 0ae0    	vsqrt.f32	s1, s1
     e38: eef1 0ae0    	vsqrt.f32	s1, s1
     e3c: eef1 0ae0    	vsqrt.f32	s1, s1
     e40: ee83 3a20    	vdiv.f32	s6, s6, s1
     e44: eeb4 0a40    	vcmp.f32	s0, s0
     e48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     e4c: ee83 7a07    	vdiv.f32	s14, s6, s14
     e50: f181 8662    	bvs.w	0x2b18 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2318> @ imm = #0x1cc4
     e54: ee10 0a10    	vmov	r0, s0
     e58: f04f 527e    	mov.w	r2, #0x3f800000
     e5c: f362 001e    	bfi	r0, r2, #0, #31
     e60: ee00 0a90    	vmov	s1, r0
     e64: ee20 4a84    	vmul.f32	s8, s1, s8
     e68: ee24 3a03    	vmul.f32	s6, s8, s6
     e6c: ee20 4a87    	vmul.f32	s8, s1, s14
     e70: ee25 5a06    	vmul.f32	s10, s10, s12
     e74: ee25 5a07    	vmul.f32	s10, s10, s14
     e78: e06d         	b	0xf56 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x756> @ imm = #0xda
     e7a: bf00         	nop
     e7c: 0a d7 23 3c  	.word	0x3c23d70a
     e80: 17 b7 d1 38  	.word	0x38d1b717
     e84: 00 24 74 4b  	.word	0x4b742400
     e88: 00 24 74 cb  	.word	0xcb742400
     e8c: 00 bf 00 bf  	.word	0xbf00bf00
     e90: eeb0 5a43    	vmov.f32	s10, s6
     e94: eeb0 4a43    	vmov.f32	s8, s6
     e98: e05d         	b	0xf56 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x756> @ imm = #0xba
     e9a: bf00         	nop
     e9c: bd 37 06 36  	.word	0x360637bd
     ea0: ac c5 a7 37  	.word	0x37a7c5ac
     ea4: 00 00 00 00  	.word	0x00000000
     ea8: 00 80 bb 47  	.word	0x47bb8000
     eac: 00 a0 0c 48  	.word	0x480ca000
     eb0: a2 0c d2 2e  	.word	0x2ed20ca2
     eb4: ca fe ef 3f  	.word	0x3feffeca
		...
     ec0: a7 2a 45 4f  	.word	0x4f452aa7
     ec4: ed 97 01 41  	.word	0x410197ed
     ec8: 26 88 21 19  	.word	0x19218826
     ecc: 2f cc 65 40  	.word	0x4065cc2f
     ed0: e7 0c 1b 48  	.word	0x481b0ce7
     ed4: 2d 35 17 40  	.word	0x4017352d
     ed8: 1f 89 9b cf  	.word	0xcf9b891f
     edc: ab 32 9c bf  	.word	0xbf9c32ab
     ee0: ab 14 f2 db  	.word	0xdbf214ab
     ee4: ec cd d7 3f  	.word	0x3fd7cdec
     ee8: c4 a9 9f 7b  	.word	0x7b9fa9c4
     eec: 67 dd c7 3f  	.word	0x3fc7dd67
     ef0: 26 88 21 19  	.word	0x19218826
     ef4: 2f cc 65 40  	.word	0x4065cc2f
     ef8: c6 e6 eb 5a  	.word	0x5aebe6c6
     efc: d9 83 57 40  	.word	0x405783d9
     f00: ee80 3a04    	vdiv.f32	s6, s0, s8
     f04: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
     f08: ee23 3a03    	vmul.f32	s6, s6, s6
     f0c: eeb0 7a46    	vmov.f32	s14, s12
     f10: ee23 3a03    	vmul.f32	s6, s6, s6
     f14: ee23 3a03    	vmul.f32	s6, s6, s6
     f18: ee23 3a03    	vmul.f32	s6, s6, s6
     f1c: ee33 5a06    	vadd.f32	s10, s6, s12
     f20: eeb4 5a46    	vcmp.f32	s10, s12
     f24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     f28: d009         	beq	0xf3e <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x73e> @ imm = #0x12
     f2a: eeb0 7a45    	vmov.f32	s14, s10
     f2e: eeb1 7ac7    	vsqrt.f32	s14, s14
     f32: eeb1 7ac7    	vsqrt.f32	s14, s14
     f36: eeb1 7ac7    	vsqrt.f32	s14, s14
     f3a: eeb1 7ac7    	vsqrt.f32	s14, s14
     f3e: ee86 6a07    	vdiv.f32	s12, s12, s14
     f42: ee20 3a03    	vmul.f32	s6, s0, s6
     f46: ee86 5a05    	vdiv.f32	s10, s12, s10
     f4a: ee83 4a04    	vdiv.f32	s8, s6, s8
     f4e: ee20 3a06    	vmul.f32	s6, s0, s12
     f52: ee24 4a05    	vmul.f32	s8, s8, s10
     f56: ee31 6a43    	vsub.f32	s12, s2, s6
     f5a: 2900         	cmp	r1, #0x0
     f5c: ed9f 7a88    	vldr	s14, [pc, #544]         @ 0x1180 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x980>
     f60: ed9f 3a88    	vldr	s6, [pc, #544]          @ 0x1184 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x984>
     f64: ee16 0a10    	vmov	r0, s12
     f68: fe03 7a07    	vseleq.f32	s14, s6, s14
     f6c: f020 4000    	bic	r0, r0, #0x80000000
     f70: f1b0 4fff    	cmp.w	r0, #0x7f800000
     f74: da3c         	bge	0xff0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x7f0> @ imm = #0x78
     f76: eeb0 3ac6    	vabs.f32	s6, s12
     f7a: eef2 0a0e    	vmov.f32	s1, #1.500000e+01
     f7e: ee83 3a20    	vdiv.f32	s6, s6, s1
     f82: ed5f 0a41    	vldr	s1, [pc, #-260]         @ 0xe80 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x680>
     f86: eeb4 3a60    	vcmp.f32	s6, s1
     f8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     f8e: d82f         	bhi	0xff0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x7f0> @ imm = #0x5e
     f90: ee22 2a04    	vmul.f32	s4, s4, s8
     f94: ee27 4a05    	vmul.f32	s8, s14, s10
     f98: ed9f 5a7b    	vldr	s10, [pc, #492]         @ 0x1188 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x988>
     f9c: eeb0 1ac1    	vabs.f32	s2, s2
     fa0: ee22 2a05    	vmul.f32	s4, s4, s10
     fa4: ed9f 5a79    	vldr	s10, [pc, #484]         @ 0x118c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x98c>
     fa8: ee04 2a05    	vmla.f32	s4, s8, s10
     fac: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
     fb0: eeb4 1a41    	vcmp.f32	s2, s2
     fb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     fb8: fe14 1a01    	vselvs.f32	s2, s8, s2
     fbc: ee32 2a04    	vadd.f32	s4, s4, s8
     fc0: eeb4 1a44    	vcmp.f32	s2, s8
     fc4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     fc8: ee86 2a02    	vdiv.f32	s4, s12, s4
     fcc: fe31 1a04    	vselgt.f32	s2, s2, s8
     fd0: ed1f 4a4e    	vldr	s8, [pc, #-312]         @ 0xe9c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x69c>
     fd4: eeb0 2ac2    	vabs.f32	s4, s4
     fd8: ee21 1a04    	vmul.f32	s2, s2, s8
     fdc: ed1f 4a50    	vldr	s8, [pc, #-320]         @ 0xea0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6a0>
     fe0: fe81 1a44    	vminnm.f32	s2, s2, s8
     fe4: eeb4 2a41    	vcmp.f32	s4, s2
     fe8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     fec: f240 807c    	bls.w	0x10e8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x8e8> @ imm = #0xf8
     ff0: 4640         	mov	r0, r8
     ff2: eeb0 2a4d    	vmov.f32	s4, s26
     ff6: e8bc 004e    	ldm.w	r12!, {r1, r2, r3, r6}
     ffa: c04e         	stm	r0!, {r1, r2, r3, r6}
     ffc: e89c 004e    	ldm.w	r12, {r1, r2, r3, r6}
    1000: c04e         	stm	r0!, {r1, r2, r3, r6}
    1002: eeb0 0b4f    	vmov.f64	d0, d15
    1006: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    100a: eeb0 1b4e    	vmov.f64	d1, d14
    100e: 3001         	adds	r0, #0x1
    1010: f8c4 010c    	str.w	r0, [r4, #0x10c]
    1014: a865         	add	r0, sp, #0x194
    1016: aa60         	add	r2, sp, #0x180
    1018: 4641         	mov	r1, r8
    101a: f005 fbdd    	bl	0x67d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>> @ imm = #0x57ba
    101e: f89d 0199    	ldrb.w	r0, [sp, #0x199]
    1022: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    1026: 4489         	add	r9, r1
    1028: b1d0         	cbz	r0, 0x1060 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x860> @ imm = #0x34
    102a: eef4 da6d    	vcmp.f32	s27, s27
    102e: ed9d 0a65    	vldr	s0, [sp, #404]
    1032: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1036: eeb4 0a40    	vcmp.f32	s0, s0
    103a: fe10 1a2d    	vselvs.f32	s2, s0, s27
    103e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1042: fe11 0a00    	vselvs.f32	s0, s2, s0
    1046: eeb4 1a40    	vcmp.f32	s2, s0
    104a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    104e: fe31 da00    	vselgt.f32	s26, s2, s0
    1052: e062         	b	0x111a <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x91a> @ imm = #0xc4
    1054: 79 61 2e 43  	.word	0x432e6179
    1058: ab aa a0 b8  	.word	0xb8a0aaab
    105c: 50 d0 e8 36  	.word	0x36e8d050
    1060: eeb0 0b4f    	vmov.f64	d0, d15
    1064: a865         	add	r0, sp, #0x194
    1066: eeb0 1b4e    	vmov.f64	d1, d14
    106a: a958         	add	r1, sp, #0x160
    106c: eeb0 2a4d    	vmov.f32	s4, s26
    1070: aa60         	add	r2, sp, #0x180
    1072: 2600         	movs	r6, #0x0
    1074: 9659         	str	r6, [sp, #0x164]
    1076: f005 fbaf    	bl	0x67d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>> @ imm = #0x575e
    107a: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    107e: eef4 da6d    	vcmp.f32	s27, s27
    1082: 3001         	adds	r0, #0x1
    1084: bf28         	it	hs
    1086: f04f 30ff    	movhs.w	r0, #0xffffffff
    108a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    108e: ed9d 0a65    	vldr	s0, [sp, #404]
    1092: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    1096: fe10 1a2d    	vselvs.f32	s2, s0, s27
    109a: f89d 2199    	ldrb.w	r2, [sp, #0x199]
    109e: eeb4 0a40    	vcmp.f32	s0, s0
    10a2: 4489         	add	r9, r1
    10a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10a8: f8c4 011c    	str.w	r0, [r4, #0x11c]
    10ac: fe11 2a00    	vselvs.f32	s4, s2, s0
    10b0: eeb4 1a42    	vcmp.f32	s2, s4
    10b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10b8: fe31 da02    	vselgt.f32	s26, s2, s4
    10bc: bb6a         	cbnz	r2, 0x111a <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x91a> @ imm = #0x5a
    10be: 69e0         	ldr	r0, [r4, #0x1c]
    10c0: f8cb 0000    	str.w	r0, [r11]
    10c4: ed8b 0a01    	vstr	s0, [r11, #4]
    10c8: f88b 9008    	strb.w	r9, [r11, #0x8]
    10cc: f88b 6009    	strb.w	r6, [r11, #0x9]
    10d0: f001 bbae    	b.w	0x2830 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2030> @ imm = #0x175c
    10d4: 0a d7 23 3d  	.word	0x3d23d70a
    10d8: 7c f2 b0 3a  	.word	0x3ab0f27c
    10dc: a6 9b c4 3b  	.word	0x3bc49ba6
    10e0: a6 9b c4 bb  	.word	0xbbc49ba6
    10e4: 79 78 b0 43  	.word	0x43b07879
    10e8: eef4 da6d    	vcmp.f32	s27, s27
    10ec: f8d4 0104    	ldr.w	r0, [r4, #0x104]
    10f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10f4: eeb4 3a43    	vcmp.f32	s6, s6
    10f8: ed8d 0a60    	vstr	s0, [sp, #384]
    10fc: fe13 1a2d    	vselvs.f32	s2, s6, s27
    1100: 3001         	adds	r0, #0x1
    1102: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1106: f8c4 0104    	str.w	r0, [r4, #0x104]
    110a: fe11 2a03    	vselvs.f32	s4, s2, s6
    110e: eeb4 1a42    	vcmp.f32	s2, s4
    1112: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1116: fe31 da02    	vselgt.f32	s26, s2, s4
    111a: eeb0 0a4c    	vmov.f32	s0, s24
    111e: f50d 7aca    	add.w	r10, sp, #0x194
    1122: f50d 78b0    	add.w	r8, sp, #0x160
    1126: aa3a         	add	r2, sp, #0xe8
    1128: ab60         	add	r3, sp, #0x180
    112a: 4650         	mov	r0, r10
    112c: 4641         	mov	r1, r8
    112e: f005 ff47    	bl	0x6fc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>> @ imm = #0x5e8e
    1132: f89d 0199    	ldrb.w	r0, [sp, #0x199]
    1136: ed8d 9a1d    	vstr	s18, [sp, #116]
    113a: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    113e: 2801         	cmp	r0, #0x1
    1140: 4489         	add	r9, r1
    1142: d125         	bne	0x1190 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x990> @ imm = #0x4a
    1144: eeb4 da4d    	vcmp.f32	s26, s26
    1148: ed9d 0a65    	vldr	s0, [sp, #404]
    114c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1150: eeb4 0a40    	vcmp.f32	s0, s0
    1154: ed8d 8a0d    	vstr	s16, [sp, #52]
    1158: fe10 1a0d    	vselvs.f32	s2, s0, s26
    115c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1160: fe11 0a00    	vselvs.f32	s0, s2, s0
    1164: eeb4 1a40    	vcmp.f32	s2, s0
    1168: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    116c: fe31 0a00    	vselgt.f32	s0, s2, s0
    1170: ed8d 0a1c    	vstr	s0, [sp, #112]
    1174: e03f         	b	0x11f6 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x9f6> @ imm = #0x7e
    1176: bf00         	nop
    1178: 7c f2 b0 ba  	.word	0xbab0f27c
    117c: 53 4a a1 43  	.word	0x43a14a53
    1180: 79 61 2e c3  	.word	0xc32e6179
    1184: 00 00 00 80  	.word	0x80000000
    1188: ab aa a0 38  	.word	0x38a0aaab
    118c: 5e 95 e1 bc  	.word	0xbce1955e
    1190: eeb0 0a4c    	vmov.f32	s0, s24
    1194: a865         	add	r0, sp, #0x194
    1196: a958         	add	r1, sp, #0x160
    1198: aa3a         	add	r2, sp, #0xe8
    119a: ab60         	add	r3, sp, #0x180
    119c: 2500         	movs	r5, #0x0
    119e: e9cd 555a    	strd	r5, r5, [sp, #360]
    11a2: f005 ff0d    	bl	0x6fc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>> @ imm = #0x5e1a
    11a6: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    11aa: eeb4 da4d    	vcmp.f32	s26, s26
    11ae: 3001         	adds	r0, #0x1
    11b0: bf28         	it	hs
    11b2: f04f 30ff    	movhs.w	r0, #0xffffffff
    11b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    11ba: ed9d 0a65    	vldr	s0, [sp, #404]
    11be: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    11c2: fe10 1a0d    	vselvs.f32	s2, s0, s26
    11c6: f89d 2199    	ldrb.w	r2, [sp, #0x199]
    11ca: eeb4 0a40    	vcmp.f32	s0, s0
    11ce: 4489         	add	r9, r1
    11d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    11d4: f8c4 011c    	str.w	r0, [r4, #0x11c]
    11d8: fe11 2a00    	vselvs.f32	s4, s2, s0
    11dc: eeb4 1a42    	vcmp.f32	s2, s4
    11e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    11e4: fe31 1a02    	vselgt.f32	s2, s2, s4
    11e8: 2a00         	cmp	r2, #0x0
    11ea: f001 8129    	beq.w	0x2440 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c40> @ imm = #0x1252
    11ee: ed8d 1a1c    	vstr	s2, [sp, #112]
    11f2: ed8d 8a0d    	vstr	s16, [sp, #52]
    11f6: f50d 7cf8    	add.w	r12, sp, #0x1f0
    11fa: 4641         	mov	r1, r8
    11fc: 4662         	mov	r2, r12
    11fe: eeb0 8a69    	vmov.f32	s16, s19
    1202: c969         	ldm	r1!, {r0, r3, r5, r6}
    1204: c269         	stm	r2!, {r0, r3, r5, r6}
    1206: e891 0069    	ldm.w	r1, {r0, r3, r5, r6}
    120a: c269         	stm	r2!, {r0, r3, r5, r6}
    120c: ed9d 0a58    	vldr	s0, [sp, #352]
    1210: ed9d 1a59    	vldr	s2, [sp, #356]
    1214: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    1218: ed9d ba5e    	vldr	s22, [sp, #376]
    121c: ed1f 3bda    	vldr	d3, [pc, #-872]         @ 0xeb8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6b8>
    1220: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    1224: edcd 8a1b    	vstr	s17, [sp, #108]
    1228: ee20 0b03    	vmul.f64	d0, d0, d3
    122c: eeb7 eacb    	vcvt.f64.f32	d14, s22
    1230: ed9d ba5f    	vldr	s22, [sp, #380]
    1234: ed9d 2b4e    	vldr	d2, [sp, #312]
    1238: ed8d 2b18    	vstr	d2, [sp, #96]
    123c: ee32 4b00    	vadd.f64	d4, d2, d0
    1240: ee21 2b03    	vmul.f64	d2, d1, d3
    1244: ed1f 5bda    	vldr	d5, [pc, #-872]         @ 0xee0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6e0>
    1248: ee34 1b02    	vadd.f64	d1, d4, d2
    124c: ed9d 4a5a    	vldr	s8, [sp, #360]
    1250: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    1254: ed1f 6bdc    	vldr	d6, [pc, #-880]         @ 0xee8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6e8>
    1258: ee24 5b05    	vmul.f64	d5, d4, d5
    125c: ed8d 5b16    	vstr	d5, [sp, #88]
    1260: ee31 1b05    	vadd.f64	d1, d1, d5
    1264: ed9d 5a5b    	vldr	s10, [sp, #364]
    1268: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    126c: ed1f dbec    	vldr	d13, [pc, #-944]        @ 0xec0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6c0>
    1270: ee25 7b06    	vmul.f64	d7, d5, d6
    1274: ed9d 6a5d    	vldr	s12, [sp, #372]
    1278: eeb7 6ac6    	vcvt.f64.f32	d6, s12
    127c: ee31 1b07    	vadd.f64	d1, d1, d7
    1280: ee06 1b03    	vmla.f64	d1, d6, d3
    1284: ee2e 6b03    	vmul.f64	d6, d14, d3
    1288: eeb7 eacb    	vcvt.f64.f32	d14, s22
    128c: ed8d 7b14    	vstr	d7, [sp, #80]
    1290: ee31 fb06    	vadd.f64	d15, d1, d6
    1294: ee68 1aa9    	vmul.f32	s3, s17, s19
    1298: ee2e eb03    	vmul.f64	d14, d14, d3
    129c: eeb7 9ae1    	vcvt.f64.f32	d9, s3
    12a0: ee3f fb0e    	vadd.f64	d15, d15, d14
    12a4: ed1f 7bee    	vldr	d7, [pc, #-952]         @ 0xef0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6f0>
    12a8: ee89 9b0d    	vdiv.f64	d9, d9, d13
    12ac: ee0f 9b07    	vmla.f64	d9, d15, d7
    12b0: ed1f fbef    	vldr	d15, [pc, #-956]        @ 0xef8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x6f8>
    12b4: ee89 9b0f    	vdiv.f64	d9, d9, d15
    12b8: ed9d fb56    	vldr	d15, [sp, #344]
    12bc: eeb7 1bc9    	vcvt.f32.f64	s2, d9
    12c0: ed9d 9b50    	vldr	d9, [sp, #320]
    12c4: eef4 ca41    	vcmp.f32	s25, s2
    12c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    12cc: ee30 0b09    	vadd.f64	d0, d0, d9
    12d0: fe3c 1a81    	vselgt.f32	s2, s25, s2
    12d4: ed8d 9b12    	vstr	d9, [sp, #72]
    12d8: eeb4 1a6b    	vcmp.f32	s2, s23
    12dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    12e0: ee32 2b00    	vadd.f64	d2, d2, d0
    12e4: fe3b 0a81    	vselgt.f32	s0, s23, s2
    12e8: ee04 2b03    	vmla.f64	d2, d4, d3
    12ec: ee6a 0a08    	vmul.f32	s1, s20, s16
    12f0: ed8d 0a5c    	vstr	s0, [sp, #368]
    12f4: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    12f8: ee05 2b03    	vmla.f64	d2, d5, d3
    12fc: ed9f 5bf2    	vldr	d5, [pc, #968]          @ 0x16c8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xec8>
    1300: ee24 3b05    	vmul.f64	d3, d4, d5
    1304: eeb7 5ae0    	vcvt.f64.f32	d5, s1
    1308: ed8d 3b10    	vstr	d3, [sp, #64]
    130c: ee32 2b43    	vsub.f64	d2, d2, d3
    1310: ee85 5b0d    	vdiv.f64	d5, d5, d13
    1314: ee36 2b02    	vadd.f64	d2, d6, d2
    1318: ed9d 3b46    	vldr	d3, [sp, #280]
    131c: ee3e 2b02    	vadd.f64	d2, d14, d2
    1320: eeb0 eb43    	vmov.f64	d14, d3
    1324: ee02 5b07    	vmla.f64	d5, d2, d7
    1328: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0x16d0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xed0>
    132c: ee85 2b02    	vdiv.f64	d2, d5, d2
    1330: eddf 5af4    	vldr	s11, [pc, #976]         @ 0x1704 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf04>
    1334: ed9d 9b54    	vldr	d9, [sp, #336]
    1338: eeb7 1bc2    	vcvt.f32.f64	s2, d2
    133c: ed9f 2be6    	vldr	d2, [pc, #920]          @ 0x16d8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xed8>
    1340: eef4 ca41    	vcmp.f32	s25, s2
    1344: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1348: eeb7 5bc9    	vcvt.f32.f64	s10, d9
    134c: fe3c 1a81    	vselgt.f32	s2, s25, s2
    1350: eef7 6bcf    	vcvt.f32.f64	s13, d15
    1354: eeb4 1a6b    	vcmp.f32	s2, s23
    1358: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    135c: fe3b 1a81    	vselgt.f32	s2, s23, s2
    1360: ed9f bbdf    	vldr	d11, [pc, #892]         @ 0x16e0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xee0>
    1364: ed8d 1a5d    	vstr	s2, [sp, #372]
    1368: eeb7 7ac1    	vcvt.f64.f32	d7, s2
    136c: ee21 6a25    	vmul.f32	s12, s2, s11
    1370: ee07 eb0b    	vmla.f64	d14, d7, d11
    1374: ee36 5a05    	vadd.f32	s10, s12, s10
    1378: ee36 6a26    	vadd.f32	s12, s12, s13
    137c: eddf 6ae2    	vldr	s13, [pc, #904]         @ 0x1708 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf08>
    1380: ee8e 2b02    	vdiv.f64	d2, d14, d2
    1384: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    1388: eef0 2a46    	vmov.f32	s5, s12
    138c: ee42 2a65    	vmls.f32	s5, s4, s11
    1390: eef0 5a45    	vmov.f32	s11, s10
    1394: ee42 5a26    	vmla.f32	s11, s4, s13
    1398: fec5 2ae2    	vminnm.f32	s5, s11, s5
    139c: eef4 2a6a    	vcmp.f32	s5, s21
    13a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13a4: f240 80f4    	bls.w	0x1590 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xd90> @ imm = #0x1e8
    13a8: ed9f 2bcf    	vldr	d2, [pc, #828]          @ 0x16e8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xee8>
    13ac: eddf 5ad7    	vldr	s11, [pc, #860]         @ 0x170c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf0c>
    13b0: ee8e 2b02    	vdiv.f64	d2, d14, d2
    13b4: ed9f cad6    	vldr	s24, [pc, #856]         @ 0x1710 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    13b8: ed9f 8ad6    	vldr	s16, [pc, #856]         @ 0x1714 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf14>
    13bc: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    13c0: eef0 2a45    	vmov.f32	s5, s10
    13c4: ee42 2a26    	vmla.f32	s5, s4, s13
    13c8: eef0 6a46    	vmov.f32	s13, s12
    13cc: ee42 6a25    	vmla.f32	s13, s4, s11
    13d0: fec2 2ae6    	vminnm.f32	s5, s5, s13
    13d4: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    13d8: ee7a 2ae2    	vsub.f32	s5, s21, s5
    13dc: fec2 2acc    	vminnm.f32	s5, s5, s24
    13e0: eeb0 ca66    	vmov.f32	s24, s13
    13e4: ee02 caaa    	vmla.f32	s24, s5, s21
    13e8: eddf 2acb    	vldr	s5, [pc, #812]          @ 0x1718 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf18>
    13ec: ee6c 2a22    	vmul.f32	s5, s24, s5
    13f0: eef4 2a48    	vcmp.f32	s5, s16
    13f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    13f8: f240 80ca    	bls.w	0x1590 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xd90> @ imm = #0x194
    13fc: ed9f 2bbc    	vldr	d2, [pc, #752]          @ 0x16f0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xef0>
    1400: eeb6 cb00    	vmov.f64	d12, #5.000000e-01
    1404: eeb7 8b00    	vmov.f64	d8, #1.000000e+00
    1408: ee27 2b02    	vmul.f64	d2, d7, d2
    140c: eeb0 db42    	vmov.f64	d13, d2
    1410: ee39 2b02    	vadd.f64	d2, d9, d2
    1414: eeb0 9b48    	vmov.f64	d9, d8
    1418: ee3c 2b42    	vsub.f64	d2, d12, d2
    141c: ee02 9b0c    	vmla.f64	d9, d2, d12
    1420: eeb0 cb4b    	vmov.f64	d12, d11
    1424: ed9f 2bec    	vldr	d2, [pc, #944]          @ 0x17d8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xfd8>
    1428: ee09 cb02    	vmla.f64	d12, d9, d2
    142c: ed9f 2bec    	vldr	d2, [pc, #944]          @ 0x17e0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xfe0>
    1430: ee2e 2b02    	vmul.f64	d2, d14, d2
    1434: ee0c 2b0c    	vmla.f64	d2, d12, d12
    1438: eeb1 9b4e    	vneg.f64	d9, d14
    143c: eeb5 2b40    	vcmp.f64	d2, #0
    1440: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1444: ed8d 9b0e    	vstr	d9, [sp, #56]
    1448: d42a         	bmi	0x14a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xca0> @ imm = #0x54
    144a: ec51 0b1c    	vmov	r0, r1, d12
    144e: eeb1 2bc2    	vsqrt.f64	d2, d2
    1452: ec52 0b12    	vmov	r0, r2, d2
    1456: 0fc9         	lsrs	r1, r1, #0x1f
    1458: eebe 9b00    	vmov.f64	d9, #-5.000000e-01
    145c: f361 72df    	bfi	r2, r1, #31, #1
    1460: ec42 0b12    	vmov	d2, r0, r2
    1464: ee3c 2b02    	vadd.f64	d2, d12, d2
    1468: ee22 9b09    	vmul.f64	d9, d2, d9
    146c: ed9f 2bde    	vldr	d2, [pc, #888]          @ 0x17e8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xfe8>
    1470: ee89 2b02    	vdiv.f64	d2, d9, d2
    1474: ec51 0b12    	vmov	r0, r1, d2
    1478: f021 4000    	bic	r0, r1, #0x80000000
    147c: f64f 71ff    	movw	r1, #0xffff
    1480: f6c7 71ef    	movt	r1, #0x7fef
    1484: 4288         	cmp	r0, r1
    1486: f341 81db    	ble.w	0x2840 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2040> @ imm = #0x13b6
    148a: ed9d 2b0e    	vldr	d2, [sp, #56]
    148e: ee82 2b09    	vdiv.f64	d2, d2, d9
    1492: ec52 0b12    	vmov	r0, r2, d2
    1496: f022 4000    	bic	r0, r2, #0x80000000
    149a: 4288         	cmp	r0, r1
    149c: f341 8248    	ble.w	0x2930 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2130> @ imm = #0x1490
    14a0: ee3f 2b0d    	vadd.f64	d2, d15, d13
    14a4: eeb6 9b00    	vmov.f64	d9, #5.000000e-01
    14a8: ee39 2b42    	vsub.f64	d2, d9, d2
    14ac: ee02 8b09    	vmla.f64	d8, d2, d9
    14b0: ed9f 2bc9    	vldr	d2, [pc, #804]          @ 0x17d8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xfd8>
    14b4: ee08 bb02    	vmla.f64	d11, d8, d2
    14b8: ed9f 8bcd    	vldr	d8, [pc, #820]          @ 0x17f0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xff0>
    14bc: ee2b 2b0b    	vmul.f64	d2, d11, d11
    14c0: ee0e 2b08    	vmla.f64	d2, d14, d8
    14c4: eeb5 2b40    	vcmp.f64	d2, #0
    14c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    14cc: f100 8464    	bmi.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x8c8
    14d0: ec51 0b1b    	vmov	r0, r1, d11
    14d4: eeb1 2bc2    	vsqrt.f64	d2, d2
    14d8: ec52 0b12    	vmov	r0, r2, d2
    14dc: 0fc9         	lsrs	r1, r1, #0x1f
    14de: eebe 8b00    	vmov.f64	d8, #-5.000000e-01
    14e2: f361 72df    	bfi	r2, r1, #31, #1
    14e6: ec42 0b12    	vmov	d2, r0, r2
    14ea: ee3b 2b02    	vadd.f64	d2, d11, d2
    14ee: ee22 9b08    	vmul.f64	d9, d2, d8
    14f2: ed9f 2bc1    	vldr	d2, [pc, #772]          @ 0x17f8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xff8>
    14f6: ee89 2b02    	vdiv.f64	d2, d9, d2
    14fa: ec51 0b12    	vmov	r0, r1, d2
    14fe: f021 4000    	bic	r0, r1, #0x80000000
    1502: f64f 71ff    	movw	r1, #0xffff
    1506: f6c7 71ef    	movt	r1, #0x7fef
    150a: 4288         	cmp	r0, r1
    150c: f341 81d8    	ble.w	0x28c0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x20c0> @ imm = #0x13b0
    1510: ed9d 2b0e    	vldr	d2, [sp, #56]
    1514: ee82 2b09    	vdiv.f64	d2, d2, d9
    1518: ec52 0b12    	vmov	r0, r2, d2
    151c: f022 4000    	bic	r0, r2, #0x80000000
    1520: 4288         	cmp	r0, r1
    1522: f300 8439    	bgt.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x872
    1526: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    152a: eef0 2a46    	vmov.f32	s5, s12
    152e: eeb0 9a45    	vmov.f32	s18, s10
    1532: eeb8 8a00    	vmov.f32	s16, #-2.000000e+00
    1536: ed8d 2a5e    	vstr	s4, [sp, #376]
    153a: ee42 2a25    	vmla.f32	s5, s4, s11
    153e: eddf 5a72    	vldr	s11, [pc, #456]         @ 0x1708 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf08>
    1542: ee02 9a25    	vmla.f32	s18, s4, s11
    1546: fec9 5a62    	vminnm.f32	s11, s18, s5
    154a: ee7a 5ae5    	vsub.f32	s11, s21, s11
    154e: eef4 5a48    	vcmp.f32	s11, s16
    1552: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1556: f340 841f    	ble.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x83e
    155a: eef4 2a49    	vcmp.f32	s5, s18
    155e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1562: f200 8419    	bhi.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x832
    1566: eef5 5a40    	vcmp.f32	s11, #0
    156a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    156e: f140 8413    	bpl.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x826
    1572: ee45 6aaa    	vmla.f32	s13, s11, s21
    1576: eddf 2a68    	vldr	s5, [pc, #416]          @ 0x1718 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf18>
    157a: eddf 5a66    	vldr	s11, [pc, #408]         @ 0x1714 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf14>
    157e: ee66 2aa2    	vmul.f32	s5, s13, s5
    1582: eef4 2a65    	vcmp.f32	s5, s11
    1586: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    158a: dc03         	bgt	0x1594 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xd94> @ imm = #0x6
    158c: f000 bc04    	b.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #0x808
    1590: ed8d 2a5e    	vstr	s4, [sp, #376]
    1594: ed9f 9abf    	vldr	s18, [pc, #764]         @ 0x1894 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1094>
    1598: ed9f babf    	vldr	s22, [pc, #764]         @ 0x1898 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1098>
    159c: ee71 2a89    	vadd.f32	s5, s3, s18
    15a0: ee71 6a8b    	vadd.f32	s13, s3, s22
    15a4: ed9f 8abd    	vldr	s16, [pc, #756]         @ 0x189c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x109c>
    15a8: eec2 5a88    	vdiv.f32	s11, s5, s16
    15ac: eec6 2a88    	vdiv.f32	s5, s13, s16
    15b0: eef4 5a62    	vcmp.f32	s11, s5
    15b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    15b8: f201 81fe    	bhi.w	0x29b8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x21b8> @ imm = #0x13fc
    15bc: eeb0 db47    	vmov.f64	d13, d7
    15c0: 2000         	movs	r0, #0x0
    15c2: ed9f fab7    	vldr	s30, [pc, #732]         @ 0x18a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x10a0>
    15c6: 2100         	movs	r1, #0x0
    15c8: ed8d 3b0e    	vstr	d3, [sp, #56]
    15cc: eddf 9ab5    	vldr	s19, [pc, #724]         @ 0x18a4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x10a4>
    15d0: eebf ca00    	vmov.f32	s24, #-1.000000e+00
    15d4: ed9d 3b18    	vldr	d3, [sp, #96]
    15d8: eef7 ea00    	vmov.f32	s29, #1.000000e+00
    15dc: ed9f eab2    	vldr	s28, [pc, #712]         @ 0x18a8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x10a8>
    15e0: ed9d 7b16    	vldr	d7, [sp, #88]
    15e4: eddf fab1    	vldr	s31, [pc, #708]         @ 0x18ac <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x10ac>
    15e8: ee33 3b07    	vadd.f64	d3, d3, d7
    15ec: eddf cab0    	vldr	s25, [pc, #704]         @ 0x18b0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x10b0>
    15f0: ed9d 7b14    	vldr	d7, [sp, #80]
    15f4: ee33 3b07    	vadd.f64	d3, d3, d7
    15f8: ed9f 7b81    	vldr	d7, [pc, #516]          @ 0x1800 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1000>
    15fc: ee04 3b07    	vmla.f64	d3, d4, d7
    1600: ed9f 4aac    	vldr	s8, [pc, #688]          @ 0x18b4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x10b4>
    1604: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    1608: ee23 7a0f    	vmul.f32	s14, s6, s30
    160c: ee01 7aa9    	vmla.f32	s14, s3, s19
    1610: ed9d 3b42    	vldr	d3, [sp, #264]
    1614: eef7 1bc3    	vcvt.f32.f64	s3, d3
    1618: ee40 1a04    	vmla.f32	s3, s0, s8
    161c: ed9f 4aee    	vldr	s8, [pc, #952]          @ 0x19d8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x11d8>
    1620: eef4 5a47    	vcmp.f32	s11, s14
    1624: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1628: ee41 1a04    	vmla.f32	s3, s2, s8
    162c: fe35 3a87    	vselgt.f32	s6, s11, s14
    1630: eeb4 3a62    	vcmp.f32	s6, s5
    1634: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1638: eeb4 7a65    	vcmp.f32	s14, s11
    163c: fe72 8a83    	vselgt.f32	s17, s5, s6
    1640: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1644: eeb4 7a62    	vcmp.f32	s14, s5
    1648: bfc8         	it	gt
    164a: 2001         	movgt	r0, #0x1
    164c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1650: eef5 1a40    	vcmp.f32	s3, #0
    1654: eef0 6ae1    	vabs.f32	s13, s3
    1658: eddf 1a2d    	vldr	s3, [pc, #180]          @ 0x1710 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    165c: eeb0 7a61    	vmov.f32	s14, s3
    1660: eef0 3a61    	vmov.f32	s7, s3
    1664: bf48         	it	mi
    1666: 2101         	movmi	r1, #0x1
    1668: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    166c: bf48         	it	mi
    166e: eeb0 7a4c    	vmovmi.f32	s14, s24
    1672: eef0 4a61    	vmov.f32	s9, s3
    1676: eef0 5a61    	vmov.f32	s11, s3
    167a: fe7e 2a87    	vselgt.f32	s5, s29, s14
    167e: eeb0 7a61    	vmov.f32	s14, s3
    1682: eef4 6a4e    	vcmp.f32	s13, s28
    1686: 4001         	ands	r1, r0
    1688: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    168c: f280 80f3    	bge.w	0x1876 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1076> @ imm = #0x1e6
    1690: ed9f 7ad6    	vldr	s14, [pc, #856]         @ 0x19ec <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x11ec>
    1694: eef4 6a47    	vcmp.f32	s13, s14
    1698: ed9f 7a1d    	vldr	s14, [pc, #116]         @ 0x1710 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    169c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16a0: d92a         	bls	0x16f8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xef8> @ imm = #0x54
    16a2: eddf 3ad3    	vldr	s7, [pc, #844]          @ 0x19f0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x11f0>
    16a6: eef4 6a63    	vcmp.f32	s13, s7
    16aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    16ae: d937         	bls	0x1720 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf20> @ imm = #0x6e
    16b0: eddf 3ad0    	vldr	s7, [pc, #832]          @ 0x19f4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x11f4>
    16b4: ee76 4aa3    	vadd.f32	s9, s13, s7
    16b8: eddf 5acf    	vldr	s11, [pc, #828]         @ 0x19f8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x11f8>
    16bc: eef0 3a08    	vmov.f32	s7, #3.000000e+00
    16c0: e036         	b	0x1730 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf30> @ imm = #0x6c
    16c2: bf00         	nop
    16c4: bf00         	nop
    16c6: bf00         	nop
    16c8: 15 be b6 e5  	.word	0xe5b6be15
    16cc: 6d 7e c0 3f  	.word	0x3fc07e6d
    16d0: 33 5a 1f 17  	.word	0x171f5a33
    16d4: c7 76 4c 40  	.word	0x404c76c7
    16d8: 39 0e ce cb  	.word	0xcbce0e39
    16dc: 33 25 73 3f  	.word	0x3f732533
    16e0: d2 ce fe 14  	.word	0x14feced2
    16e4: cf 45 20 3f  	.word	0x3f2045cf
    16e8: 68 26 52 13  	.word	0x13522668
    16ec: 2a 49 20 3f  	.word	0x3f20492a
    16f0: 10 43 9c 25  	.word	0x259c4310
    16f4: ca fc ef 3f  	.word	0x3feffcca
    16f8: eef7 3a08    	vmov.f32	s7, #1.500000e+00
    16fc: eef0 4a47    	vmov.f32	s9, s14
    1700: e01a         	b	0x1738 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf38> @ imm = #0x34
    1702: bf00         	nop
    1704: 51 e6 7f 3f  	.word	0x3f7fe651
    1708: 99 76 cd 39  	.word	0x39cd7699
    170c: 51 e6 7f bf  	.word	0xbf7fe651
    1710: 00 00 00 00  	.word	0x00000000
    1714: 95 bf d6 33  	.word	0x33d6bf95
    1718: 2b 18 95 3b  	.word	0x3b95182b
    171c: 00 bf 00 bf  	.word	0xbf00bf00
    1720: eddf 3ae8    	vldr	s7, [pc, #928]          @ 0x1ac4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x12c4>
    1724: ee76 4aa3    	vadd.f32	s9, s13, s7
    1728: eef7 3a08    	vmov.f32	s7, #1.500000e+00
    172c: eddf 5ae6    	vldr	s11, [pc, #920]         @ 0x1ac8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x12c8>
    1730: ee44 3aa5    	vmla.f32	s7, s9, s11
    1734: ee62 4aa5    	vmul.f32	s9, s5, s11
    1738: eef2 2a0e    	vmov.f32	s5, #1.500000e+01
    173c: ee72 2ae3    	vsub.f32	s5, s5, s7
    1740: eef1 3a64    	vneg.f32	s7, s9
    1744: fec2 2a87    	vmaxnm.f32	s5, s5, s14
    1748: eef5 2a40    	vcmp.f32	s5, #0
    174c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1750: d95e         	bls	0x1810 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1010> @ imm = #0xbc
    1752: eeb0 7ae8    	vabs.f32	s14, s17
    1756: eeb4 7a62    	vcmp.f32	s14, s5
    175a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    175e: d95f         	bls	0x1820 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1020> @ imm = #0xbe
    1760: eec2 4a87    	vdiv.f32	s9, s5, s14
    1764: ee24 7aa4    	vmul.f32	s14, s9, s9
    1768: ee27 7a07    	vmul.f32	s14, s14, s14
    176c: ee27 7a07    	vmul.f32	s14, s14, s14
    1770: ee67 6a07    	vmul.f32	s13, s14, s14
    1774: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    1778: ee76 5a87    	vadd.f32	s11, s13, s14
    177c: eef0 7a47    	vmov.f32	s15, s14
    1780: eef4 5a47    	vcmp.f32	s11, s14
    1784: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1788: d009         	beq	0x179e <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf9e> @ imm = #0x12
    178a: eef0 7a65    	vmov.f32	s15, s11
    178e: eef1 7ae7    	vsqrt.f32	s15, s15
    1792: eef1 7ae7    	vsqrt.f32	s15, s15
    1796: eef1 7ae7    	vsqrt.f32	s15, s15
    179a: eef1 7ae7    	vsqrt.f32	s15, s15
    179e: ee87 7a27    	vdiv.f32	s14, s14, s15
    17a2: eef4 8a68    	vcmp.f32	s17, s17
    17a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    17aa: eec7 7a25    	vdiv.f32	s15, s14, s11
    17ae: f181 81bb    	bvs.w	0x2b28 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2328> @ imm = #0x1376
    17b2: ee18 0a90    	vmov	r0, s17
    17b6: f04f 527e    	mov.w	r2, #0x3f800000
    17ba: f362 001e    	bfi	r0, r2, #0, #31
    17be: ee05 0a90    	vmov	s11, r0
    17c2: ee65 2aa2    	vmul.f32	s5, s11, s5
    17c6: ee65 5aa7    	vmul.f32	s11, s11, s15
    17ca: ee22 7a87    	vmul.f32	s14, s5, s14
    17ce: ee64 2aa6    	vmul.f32	s5, s9, s13
    17d2: ee62 4aa7    	vmul.f32	s9, s5, s15
    17d6: e04e         	b	0x1876 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1076> @ imm = #0x9c
    17d8: c2 17 26 53  	.word	0x532617c2
    17dc: 05 a3 72 3f  	.word	0x3f72a305
    17e0: 44 1c 7f 14  	.word	0x147f1c44
    17e4: 5b ea cd be  	.word	0xbecdea5b
    17e8: 44 1c 7f 14  	.word	0x147f1c44
    17ec: 5b ea ad be  	.word	0xbeadea5b
    17f0: d0 cf 74 ad  	.word	0xad74cfd0
    17f4: 26 a1 82 3f  	.word	0x3f82a126
    17f8: d0 cf 74 ad  	.word	0xad74cfd0
    17fc: 26 a1 62 3f  	.word	0x3f62a126
    1800: 1c 38 88 77  	.word	0x7788381c
    1804: bf 13 e1 bf  	.word	0xbfe113bf
    1808: 67 42 87 92  	.word	0x92874267
    180c: ba 86 d4 bf  	.word	0xbfd486ba
    1810: eef0 4a47    	vmov.f32	s9, s14
    1814: eef0 5a47    	vmov.f32	s11, s14
    1818: e02d         	b	0x1876 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1076> @ imm = #0x5a
    181a: bf00         	nop
    181c: bf00         	nop
    181e: bf00         	nop
    1820: ee88 7aa2    	vdiv.f32	s14, s17, s5
    1824: eef7 5a00    	vmov.f32	s11, #1.000000e+00
    1828: ee27 7a07    	vmul.f32	s14, s14, s14
    182c: eef0 6a65    	vmov.f32	s13, s11
    1830: ee27 7a07    	vmul.f32	s14, s14, s14
    1834: ee27 7a07    	vmul.f32	s14, s14, s14
    1838: ee27 7a07    	vmul.f32	s14, s14, s14
    183c: ee77 4a25    	vadd.f32	s9, s14, s11
    1840: eef4 4a65    	vcmp.f32	s9, s11
    1844: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1848: d009         	beq	0x185e <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x105e> @ imm = #0x12
    184a: eef0 6a64    	vmov.f32	s13, s9
    184e: eef1 6ae6    	vsqrt.f32	s13, s13
    1852: eef1 6ae6    	vsqrt.f32	s13, s13
    1856: eef1 6ae6    	vsqrt.f32	s13, s13
    185a: eef1 6ae6    	vsqrt.f32	s13, s13
    185e: eec5 5aa6    	vdiv.f32	s11, s11, s13
    1862: ee28 7a87    	vmul.f32	s14, s17, s14
    1866: eec5 4aa4    	vdiv.f32	s9, s11, s9
    186a: eec7 2a22    	vdiv.f32	s5, s14, s5
    186e: ee28 7aa5    	vmul.f32	s14, s17, s11
    1872: ee62 5aa4    	vmul.f32	s11, s5, s9
    1876: ee70 2a47    	vsub.f32	s5, s0, s14
    187a: 2900         	cmp	r1, #0x0
    187c: fe0f 3aac    	vseleq.f32	s6, s31, s25
    1880: ee12 0a90    	vmov	r0, s5
    1884: f020 4000    	bic	r0, r0, #0x80000000
    1888: f1b0 4fff    	cmp.w	r0, #0x7f800000
    188c: db14         	blt	0x18b8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x10b8> @ imm = #0x28
    188e: eddf 6ab6    	vldr	s13, [pc, #728]         @ 0x1b68 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1368>
    1892: e01b         	b	0x18cc <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x10cc> @ imm = #0x36
    1894: 00 24 74 cb  	.word	0xcb742400
    1898: 00 24 74 4b  	.word	0x4b742400
    189c: 00 a0 0c 48  	.word	0x480ca000
    18a0: 79 61 2e 43  	.word	0x432e6179
    18a4: 50 d0 e8 36  	.word	0x36e8d050
    18a8: 0a d7 23 3d  	.word	0x3d23d70a
    18ac: 00 00 00 80  	.word	0x80000000
    18b0: 79 61 2e c3  	.word	0xc32e6179
    18b4: 83 c0 96 b8  	.word	0xb896c083
    18b8: eeb2 7a0e    	vmov.f32	s14, #1.500000e+01
    18bc: ed5f 6a6c    	vldr	s13, [pc, #-432]        @ 0x1710 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    18c0: ee82 7a87    	vdiv.f32	s14, s5, s14
    18c4: eeb0 7ac7    	vabs.f32	s14, s14
    18c8: fec7 6a26    	vmaxnm.f32	s13, s14, s13
    18cc: ee30 7a89    	vadd.f32	s14, s1, s18
    18d0: ee70 7a8b    	vadd.f32	s15, s1, s22
    18d4: ee87 7a08    	vdiv.f32	s14, s14, s16
    18d8: ee87 9a88    	vdiv.f32	s18, s15, s16
    18dc: eeb4 7a49    	vcmp.f32	s14, s18
    18e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    18e4: f201 8068    	bhi.w	0x29b8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x21b8> @ imm = #0x10d0
    18e8: edcd 8a18    	vstr	s17, [sp, #96]
    18ec: 2000         	movs	r0, #0x0
    18ee: ed9d 8b12    	vldr	d8, [sp, #72]
    18f2: ee63 3aa5    	vmul.f32	s7, s7, s11
    18f6: 2100         	movs	r1, #0x0
    18f8: ed9d bb10    	vldr	d11, [sp, #64]
    18fc: ee38 8b4b    	vsub.f64	d8, d8, d11
    1900: ed1f bb3f    	vldr	d11, [pc, #-252]        @ 0x1808 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1008>
    1904: ee0d 8b0b    	vmla.f64	d8, d13, d11
    1908: ed9d bb44    	vldr	d11, [sp, #272]
    190c: eef7 7bc8    	vcvt.f32.f64	s15, d8
    1910: eeb7 bbcb    	vcvt.f32.f64	s22, d11
    1914: ee27 8a8f    	vmul.f32	s16, s15, s30
    1918: ee00 8aa9    	vmla.f32	s16, s1, s19
    191c: eddf 0acf    	vldr	s1, [pc, #828]          @ 0x1c5c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x145c>
    1920: ee00 ba04    	vmla.f32	s22, s0, s8
    1924: ee01 ba20    	vmla.f32	s22, s2, s1
    1928: eeb4 7a48    	vcmp.f32	s14, s16
    192c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1930: fe37 4a08    	vselgt.f32	s8, s14, s16
    1934: eeb4 4a49    	vcmp.f32	s8, s18
    1938: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    193c: eeb4 8a47    	vcmp.f32	s16, s14
    1940: ed9f 7ae8    	vldr	s14, [pc, #928]         @ 0x1ce4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x14e4>
    1944: ee62 7a07    	vmul.f32	s15, s4, s14
    1948: fe79 0a04    	vselgt.f32	s1, s18, s8
    194c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1950: ee37 4a8b    	vadd.f32	s8, s15, s22
    1954: eeb4 8a49    	vcmp.f32	s16, s18
    1958: bfc8         	it	gt
    195a: 2001         	movgt	r0, #0x1
    195c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1960: eeb5 4a40    	vcmp.f32	s8, #0
    1964: eef0 9ac4    	vabs.f32	s19, s8
    1968: ed1f 4a97    	vldr	s8, [pc, #-604]         @ 0x1710 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    196c: eef0 5a44    	vmov.f32	s11, s8
    1970: eeb0 9a44    	vmov.f32	s18, s8
    1974: bf48         	it	mi
    1976: 2101         	movmi	r1, #0x1
    1978: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    197c: bf48         	it	mi
    197e: eef0 5a4c    	vmovmi.f32	s11, s24
    1982: eef4 9a4e    	vcmp.f32	s19, s28
    1986: eeb0 ca44    	vmov.f32	s24, s8
    198a: fe3e faa5    	vselgt.f32	s30, s29, s11
    198e: eef0 ba44    	vmov.f32	s23, s8
    1992: eeb0 ea44    	vmov.f32	s28, s8
    1996: 4001         	ands	r1, r0
    1998: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    199c: eddf 5ad2    	vldr	s11, [pc, #840]         @ 0x1ce8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x14e8>
    19a0: f280 80bf    	bge.w	0x1b22 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1322> @ imm = #0x17e
    19a4: ed9f 8a11    	vldr	s16, [pc, #68]          @ 0x19ec <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x11ec>
    19a8: eef4 9a48    	vcmp.f32	s19, s16
    19ac: ed1f 9aa8    	vldr	s18, [pc, #-672]        @ 0x1710 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xf10>
    19b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19b4: d914         	bls	0x19e0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x11e0> @ imm = #0x28
    19b6: ed9f 8a0e    	vldr	s16, [pc, #56]          @ 0x19f0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x11f0>
    19ba: eef4 9a48    	vcmp.f32	s19, s16
    19be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19c2: d91d         	bls	0x1a00 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1200> @ imm = #0x3a
    19c4: ed9f 8a0b    	vldr	s16, [pc, #44]          @ 0x19f4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x11f4>
    19c8: eeb0 ba08    	vmov.f32	s22, #3.000000e+00
    19cc: ee39 8a88    	vadd.f32	s16, s19, s16
    19d0: ed9f ca09    	vldr	s24, [pc, #36]          @ 0x19f8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x11f8>
    19d4: e01c         	b	0x1a10 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1210> @ imm = #0x38
    19d6: bf00         	nop
    19d8: d6 f8 e4 36  	.word	0x36e4f8d6
    19dc: 00 bf 00 bf  	.word	0xbf00bf00
    19e0: eeb7 ba08    	vmov.f32	s22, #1.500000e+00
    19e4: eeb0 ca49    	vmov.f32	s24, s18
    19e8: e016         	b	0x1a18 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1218> @ imm = #0x2c
    19ea: bf00         	nop
    19ec: 7c f2 b0 3a  	.word	0x3ab0f27c
    19f0: a6 9b c4 3b  	.word	0x3bc49ba6
    19f4: a6 9b c4 bb  	.word	0xbbc49ba6
    19f8: 79 78 b0 43  	.word	0x43b07879
    19fc: 00 bf 00 bf  	.word	0xbf00bf00
    1a00: ed9f 8a30    	vldr	s16, [pc, #192]         @ 0x1ac4 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x12c4>
    1a04: eeb7 ba08    	vmov.f32	s22, #1.500000e+00
    1a08: ee39 8a88    	vadd.f32	s16, s19, s16
    1a0c: ed9f ca2e    	vldr	s24, [pc, #184]         @ 0x1ac8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x12c8>
    1a10: ee08 ba0c    	vmla.f32	s22, s16, s24
    1a14: ee2f ca0c    	vmul.f32	s24, s30, s24
    1a18: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    1a1c: eeb1 ca4c    	vneg.f32	s24, s24
    1a20: ee38 8a4b    	vsub.f32	s16, s16, s22
    1a24: fe88 ea09    	vmaxnm.f32	s28, s16, s18
    1a28: eeb5 ea40    	vcmp.f32	s28, #0
    1a2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a30: d942         	bls	0x1ab8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x12b8> @ imm = #0x84
    1a32: eeb0 9ae0    	vabs.f32	s18, s1
    1a36: eeb4 9a4e    	vcmp.f32	s18, s28
    1a3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a3e: d947         	bls	0x1ad0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x12d0> @ imm = #0x8e
    1a40: ee8e fa09    	vdiv.f32	s30, s28, s18
    1a44: eeb7 9a00    	vmov.f32	s18, #1.000000e+00
    1a48: ee2f 8a0f    	vmul.f32	s16, s30, s30
    1a4c: eef0 ba49    	vmov.f32	s23, s18
    1a50: ee28 8a08    	vmul.f32	s16, s16, s16
    1a54: ee28 8a08    	vmul.f32	s16, s16, s16
    1a58: ee68 9a08    	vmul.f32	s19, s16, s16
    1a5c: ee39 ba89    	vadd.f32	s22, s19, s18
    1a60: eeb4 ba49    	vcmp.f32	s22, s18
    1a64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a68: d009         	beq	0x1a7e <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x127e> @ imm = #0x12
    1a6a: eef0 ba4b    	vmov.f32	s23, s22
    1a6e: eef1 baeb    	vsqrt.f32	s23, s23
    1a72: eef1 baeb    	vsqrt.f32	s23, s23
    1a76: eef1 baeb    	vsqrt.f32	s23, s23
    1a7a: eef1 baeb    	vsqrt.f32	s23, s23
    1a7e: ee89 9a2b    	vdiv.f32	s18, s18, s23
    1a82: eef4 0a60    	vcmp.f32	s1, s1
    1a86: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a8a: eec9 ba0b    	vdiv.f32	s23, s18, s22
    1a8e: f181 8053    	bvs.w	0x2b38 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2338> @ imm = #0x10a6
    1a92: ee10 0a90    	vmov	r0, s1
    1a96: f04f 527e    	mov.w	r2, #0x3f800000
    1a9a: f362 001e    	bfi	r0, r2, #0, #31
    1a9e: ee08 0a10    	vmov	s16, r0
    1aa2: ee28 ba0e    	vmul.f32	s22, s16, s28
    1aa6: ee28 ea2b    	vmul.f32	s28, s16, s23
    1aaa: ee2b 9a09    	vmul.f32	s18, s22, s18
    1aae: ee2f 8a29    	vmul.f32	s16, s30, s19
    1ab2: ee68 ba2b    	vmul.f32	s23, s16, s23
    1ab6: e034         	b	0x1b22 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1322> @ imm = #0x68
    1ab8: eef0 ba49    	vmov.f32	s23, s18
    1abc: eeb0 ea49    	vmov.f32	s28, s18
    1ac0: e02f         	b	0x1b22 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1322> @ imm = #0x5e
    1ac2: bf00         	nop
    1ac4: 7c f2 b0 ba  	.word	0xbab0f27c
    1ac8: 53 4a a1 43  	.word	0x43a14a53
    1acc: 00 bf 00 bf  	.word	0xbf00bf00
    1ad0: ee80 8a8e    	vdiv.f32	s16, s1, s28
    1ad4: eeb0 fa6e    	vmov.f32	s30, s29
    1ad8: ee28 8a08    	vmul.f32	s16, s16, s16
    1adc: ee28 8a08    	vmul.f32	s16, s16, s16
    1ae0: ee28 8a08    	vmul.f32	s16, s16, s16
    1ae4: ee28 9a08    	vmul.f32	s18, s16, s16
    1ae8: ee39 ba2e    	vadd.f32	s22, s18, s29
    1aec: eeb4 ba6e    	vcmp.f32	s22, s29
    1af0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1af4: d009         	beq	0x1b0a <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x130a> @ imm = #0x12
    1af6: eeb0 fa4b    	vmov.f32	s30, s22
    1afa: eeb1 facf    	vsqrt.f32	s30, s30
    1afe: eeb1 facf    	vsqrt.f32	s30, s30
    1b02: eeb1 facf    	vsqrt.f32	s30, s30
    1b06: eeb1 facf    	vsqrt.f32	s30, s30
    1b0a: ee8e 8a8f    	vdiv.f32	s16, s29, s30
    1b0e: ee20 9a89    	vmul.f32	s18, s1, s18
    1b12: eec8 ba0b    	vdiv.f32	s23, s16, s22
    1b16: ee89 ba0e    	vdiv.f32	s22, s18, s28
    1b1a: ee20 9a88    	vmul.f32	s18, s1, s16
    1b1e: ee2b ea2b    	vmul.f32	s28, s22, s23
    1b22: 2900         	cmp	r1, #0x0
    1b24: ee31 9a49    	vsub.f32	s18, s2, s18
    1b28: ee63 9a24    	vmul.f32	s19, s6, s9
    1b2c: ed9f dab7    	vldr	s26, [pc, #732]         @ 0x1e0c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x160c>
    1b30: fe4f 4aac    	vseleq.f32	s9, s31, s25
    1b34: eddf cab6    	vldr	s25, [pc, #728]         @ 0x1e10 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1610>
    1b38: ee2c fa0e    	vmul.f32	s30, s24, s28
    1b3c: ee19 0a10    	vmov	r0, s18
    1b40: ee63 5aa5    	vmul.f32	s11, s7, s11
    1b44: ee24 eaab    	vmul.f32	s28, s9, s23
    1b48: eddf 4ab2    	vldr	s9, [pc, #712]          @ 0x1e14 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1614>
    1b4c: ee2f ca24    	vmul.f32	s24, s30, s9
    1b50: f020 4000    	bic	r0, r0, #0x80000000
    1b54: f1b0 4fff    	cmp.w	r0, #0x7f800000
    1b58: eddf baaf    	vldr	s23, [pc, #700]         @ 0x1e18 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1618>
    1b5c: eddf 4aaf    	vldr	s9, [pc, #700]          @ 0x1e1c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x161c>
    1b60: db06         	blt	0x1b70 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1370> @ imm = #0xc
    1b62: eddf 6a01    	vldr	s13, [pc, #4]           @ 0x1b68 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1368>
    1b66: e01b         	b	0x1ba0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x13a0> @ imm = #0x36
    1b68: 00 00 80 7f  	.word	0x7f800000
    1b6c: 00 bf 00 bf  	.word	0xbf00bf00
    1b70: eeb2 8a0e    	vmov.f32	s16, #1.500000e+01
    1b74: eef4 6a66    	vcmp.f32	s13, s13
    1b78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b7c: ee89 8a08    	vdiv.f32	s16, s18, s16
    1b80: eeb0 8ac8    	vabs.f32	s16, s16
    1b84: fe58 6a26    	vselvs.f32	s13, s16, s13
    1b88: eeb4 8a48    	vcmp.f32	s16, s16
    1b8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b90: fe16 8a88    	vselvs.f32	s16, s13, s16
    1b94: eef4 6a48    	vcmp.f32	s13, s16
    1b98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b9c: fe76 6a88    	vselgt.f32	s13, s13, s16
    1ba0: ed9f 8a9f    	vldr	s16, [pc, #636]         @ 0x1e20 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1620>
    1ba4: ee49 5aac    	vmla.f32	s11, s19, s25
    1ba8: ee02 5a08    	vmla.f32	s10, s4, s16
    1bac: ed9f 8a9d    	vldr	s16, [pc, #628]         @ 0x1e24 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1624>
    1bb0: ee02 6a08    	vmla.f32	s12, s4, s16
    1bb4: 210d         	movs	r1, #0xd
    1bb6: ed9d 8b0e    	vldr	d8, [sp, #56]
    1bba: ee0e ca2b    	vmla.f32	s24, s28, s23
    1bbe: eeb7 8bc8    	vcvt.f32.f64	s16, d8
    1bc2: ee01 8a07    	vmla.f32	s16, s2, s14
    1bc6: eeb4 5a46    	vcmp.f32	s10, s12
    1bca: fe85 6a46    	vminnm.f32	s12, s10, s12
    1bce: ee29 5aa1    	vmul.f32	s10, s19, s3
    1bd2: eddf 9a95    	vldr	s19, [pc, #596]         @ 0x1e28 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1628>
    1bd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bda: ee7a cac6    	vsub.f32	s25, s21, s12
    1bde: eeb8 6a00    	vmov.f32	s12, #-2.000000e+00
    1be2: ee78 7a67    	vsub.f32	s15, s16, s15
    1be6: ee6f 1a24    	vmul.f32	s3, s30, s9
    1bea: eef4 ca46    	vcmp.f32	s25, s12
    1bee: ee2f 6a0d    	vmul.f32	s12, s30, s26
    1bf2: bf88         	it	hi
    1bf4: 210e         	movhi	r1, #0xe
    1bf6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bfa: d931         	bls	0x1c60 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1460> @ imm = #0x62
    1bfc: eef4 ca6c    	vcmp.f32	s25, s25
    1c00: eddf ba8a    	vldr	s23, [pc, #552]         @ 0x1e2c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x162c>
    1c04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c08: eeb0 ba6b    	vmov.f32	s22, s23
    1c0c: eddf da88    	vldr	s27, [pc, #544]         @ 0x1e30 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1630>
    1c10: fe1b 8aac    	vselvs.f32	s16, s23, s25
    1c14: eeb5 8a40    	vcmp.f32	s16, #0
    1c18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c1c: bfb8         	it	lt
    1c1e: eeb0 ba48    	vmovlt.f32	s22, s16
    1c22: eeb0 8a6e    	vmov.f32	s16, s29
    1c26: eef5 ca40    	vcmp.f32	s25, #0
    1c2a: ee0b 8a2a    	vmla.f32	s16, s22, s21
    1c2e: ed9f ba81    	vldr	s22, [pc, #516]         @ 0x1e34 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1634>
    1c32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c36: ee28 8a0b    	vmul.f32	s16, s16, s22
    1c3a: fe88 fa2d    	vmaxnm.f32	s30, s16, s27
    1c3e: d513         	bpl	0x1c68 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1468> @ imm = #0x26
    1c40: eeb0 8a6e    	vmov.f32	s16, s29
    1c44: ee0c 8aaa    	vmla.f32	s16, s25, s21
    1c48: ee28 8a0b    	vmul.f32	s16, s16, s22
    1c4c: eeb4 8a6d    	vcmp.f32	s16, s27
    1c50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c54: bfc8         	it	gt
    1c56: eddf ba78    	vldrgt	s23, [pc, #480]         @ 0x1e38 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1638>
    1c5a: e005         	b	0x1c68 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1468> @ imm = #0xa
    1c5c: af e6 27 b9  	.word	0xb927e6af
    1c60: eddf ba72    	vldr	s23, [pc, #456]         @ 0x1e2c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x162c>
    1c64: ed9f fa72    	vldr	s30, [pc, #456]         @ 0x1e30 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1630>
    1c68: f24f 6008    	movw	r0, #0xf608
    1c6c: ee0e 6a29    	vmla.f32	s12, s28, s19
    1c70: f2c0 0000    	movt	r0, #0x0
    1c74: ee4e 1a04    	vmla.f32	s3, s28, s8
    1c78: eb00 1081    	add.w	r0, r0, r1, lsl #6
    1c7c: ee22 4a2b    	vmul.f32	s8, s4, s23
    1c80: ee52 7a0f    	vnmls.f32	s15, s4, s30
    1c84: ed90 eb0c    	vldr	d14, [r0, #48]
    1c88: eeb7 bbce    	vcvt.f32.f64	s22, d14
    1c8c: eeb0 ea45    	vmov.f32	s28, s10
    1c90: ee03 5a8d    	vmla.f32	s10, s7, s26
    1c94: ed90 db0a    	vldr	d13, [r0, #40]
    1c98: ee04 7a4b    	vmls.f32	s14, s8, s22
    1c9c: eeb7 bbcd    	vcvt.f32.f64	s22, d13
    1ca0: ee03 eaaf    	vmla.f32	s28, s7, s31
    1ca4: ed90 8b08    	vldr	d8, [r0, #32]
    1ca8: ee44 4a4b    	vmls.f32	s9, s8, s22
    1cac: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    1cb0: eeb7 8bc8    	vcvt.f32.f64	s16, d8
    1cb4: ee17 0a90    	vmov	r0, s15
    1cb8: ee3f fa07    	vadd.f32	s30, s30, s14
    1cbc: ee75 3a8b    	vadd.f32	s7, s11, s22
    1cc0: ee28 da44    	vnmul.f32	s26, s16, s8
    1cc4: eeb1 7a62    	vneg.f32	s14, s5
    1cc8: f020 4000    	bic	r0, r0, #0x80000000
    1ccc: ee3c ca0b    	vadd.f32	s24, s24, s22
    1cd0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    1cd4: eef1 2a49    	vneg.f32	s5, s18
    1cd8: eef1 5a67    	vneg.f32	s11, s15
    1cdc: db20         	blt	0x1d20 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1520> @ imm = #0x40
    1cde: ed1f 4a5e    	vldr	s8, [pc, #-376]         @ 0x1b68 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1368>
    1ce2: e035         	b	0x1d50 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1550> @ imm = #0x6a
    1ce4: 79 2e 02 39  	.word	0x39022e79
    1ce8: 83 c0 96 38  	.word	0x3896c083
    1cec: 00 bf 00 bf  	.word	0xbf00bf00
		...
    1cf8: e6 a7 5c a0  	.word	0xa05ca7e6
    1cfc: 06 41 d9 3f  	.word	0x3fd94106
    1d00: 85 42 fe de  	.word	0xdefe4285
    1d04: bb a7 01 41  	.word	0x4101a7bb
    1d08: b4 cf 84 3d  	.word	0x3d84cfb4
    1d0c: da 49 7b 40  	.word	0x407b49da
    1d10: d1 a7 00 a5  	.word	0xa500a7d1
    1d14: f6 46 24 40  	.word	0x402446f6
    1d18: 19 d5 65 36  	.word	0x3665d519
    1d1c: d0 6e 95 bf  	.word	0xbf956ed0
    1d20: ed9f 4af9    	vldr	s8, [pc, #996]          @ 0x2108 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1908>
    1d24: eef4 6a66    	vcmp.f32	s13, s13
    1d28: ee87 4a84    	vdiv.f32	s8, s15, s8
    1d2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d30: eeb0 4ac4    	vabs.f32	s8, s8
    1d34: fe54 6a26    	vselvs.f32	s13, s8, s13
    1d38: eeb4 4a44    	vcmp.f32	s8, s8
    1d3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d40: fe16 4a84    	vselvs.f32	s8, s13, s8
    1d44: eef4 6a44    	vcmp.f32	s13, s8
    1d48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d4c: fe36 4a84    	vselgt.f32	s8, s13, s8
    1d50: edcd 1a6a    	vstr	s3, [sp, #424]
    1d54: eddf 1aed    	vldr	s3, [pc, #948]          @ 0x210c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x190c>
    1d58: eddd 9a1d    	vldr	s19, [sp, #116]
    1d5c: ed9d 3a18    	vldr	s6, [sp, #96]
    1d60: eeb4 4a61    	vcmp.f32	s8, s3
    1d64: ed8d ca69    	vstr	s24, [sp, #420]
    1d68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d6c: edcd 4a6c    	vstr	s9, [sp, #432]
    1d70: ed8d fa6d    	vstr	s30, [sp, #436]
    1d74: edcd 2a85    	vstr	s5, [sp, #532]
    1d78: edcd 5a86    	vstr	s11, [sp, #536]
    1d7c: edcd 3a65    	vstr	s7, [sp, #404]
    1d80: ed8d 5a66    	vstr	s10, [sp, #408]
    1d84: ed8d ea67    	vstr	s28, [sp, #412]
    1d88: ed8d 6a68    	vstr	s12, [sp, #416]
    1d8c: ed8d da6b    	vstr	s26, [sp, #428]
    1d90: ed8d 7a84    	vstr	s14, [sp, #528]
    1d94: f240 81cc    	bls.w	0x2130 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1930> @ imm = #0x398
    1d98: 4640         	mov	r0, r8
    1d9a: eef0 0a4a    	vmov.f32	s1, s20
    1d9e: e8bc 004e    	ldm.w	r12!, {r1, r2, r3, r6}
    1da2: c04e         	stm	r0!, {r1, r2, r3, r6}
    1da4: e89c 004e    	ldm.w	r12, {r1, r2, r3, r6}
    1da8: c04e         	stm	r0!, {r1, r2, r3, r6}
    1daa: ed9d 8a1b    	vldr	s16, [sp, #108]
    1dae: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    1db2: eeb0 0a48    	vmov.f32	s0, s16
    1db6: 3001         	adds	r0, #0x1
    1db8: f8c4 010c    	str.w	r0, [r4, #0x10c]
    1dbc: a865         	add	r0, sp, #0x194
    1dbe: aa3a         	add	r2, sp, #0xe8
    1dc0: ab60         	add	r3, sp, #0x180
    1dc2: 4641         	mov	r1, r8
    1dc4: f006 f834    	bl	0x7e30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>> @ imm = #0x6068
    1dc8: f89d 0199    	ldrb.w	r0, [sp, #0x199]
    1dcc: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    1dd0: 2801         	cmp	r0, #0x1
    1dd2: 4489         	add	r9, r1
    1dd4: d134         	bne	0x1e40 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1640> @ imm = #0x68
    1dd6: ed9d 1a1c    	vldr	s2, [sp, #112]
    1dda: ed9d 0a65    	vldr	s0, [sp, #404]
    1dde: eeb4 1a41    	vcmp.f32	s2, s2
    1de2: eddd 9a1d    	vldr	s19, [sp, #116]
    1de6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1dea: eeb4 0a40    	vcmp.f32	s0, s0
    1dee: eddf fac8    	vldr	s31, [pc, #800]         @ 0x2110 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1910>
    1df2: fe10 1a01    	vselvs.f32	s2, s0, s2
    1df6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1dfa: fe11 0a00    	vselvs.f32	s0, s2, s0
    1dfe: eeb4 1a40    	vcmp.f32	s2, s0
    1e02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e06: fe31 9a00    	vselgt.f32	s18, s2, s0
    1e0a: e051         	b	0x1eb0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x16b0> @ imm = #0xa2
    1e0c: d6 f8 e4 b6  	.word	0xb6e4f8d6
    1e10: fc 9d 08 bf  	.word	0xbf089dfc
    1e14: af e6 27 39  	.word	0x3927e6af
    1e18: d5 35 a4 be  	.word	0xbea435d5
    1e1c: 79 2e 02 b9  	.word	0xb9022e79
    1e20: 99 76 cd 39  	.word	0x39cd7699
    1e24: 51 e6 7f bf  	.word	0xbf7fe651
    1e28: 6f f3 03 be  	.word	0xbe03f36f
    1e2c: 00 00 00 00  	.word	0x00000000
    1e30: 95 bf d6 33  	.word	0x33d6bf95
    1e34: 2b 18 95 3b  	.word	0x3b95182b
    1e38: 2b 18 15 3b  	.word	0x3b15182b
    1e3c: 00 bf 00 bf  	.word	0xbf00bf00
    1e40: eeb0 0a48    	vmov.f32	s0, s16
    1e44: eef0 0a4a    	vmov.f32	s1, s20
    1e48: a865         	add	r0, sp, #0x194
    1e4a: a958         	add	r1, sp, #0x160
    1e4c: aa3a         	add	r2, sp, #0xe8
    1e4e: ab60         	add	r3, sp, #0x180
    1e50: 2500         	movs	r5, #0x0
    1e52: 955e         	str	r5, [sp, #0x178]
    1e54: e9cd 555c    	strd	r5, r5, [sp, #368]
    1e58: f005 ffea    	bl	0x7e30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>> @ imm = #0x5fd4
    1e5c: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    1e60: eddf faab    	vldr	s31, [pc, #684]         @ 0x2110 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1910>
    1e64: 3001         	adds	r0, #0x1
    1e66: bf28         	it	hs
    1e68: f04f 30ff    	movhs.w	r0, #0xffffffff
    1e6c: ed9d 1a1c    	vldr	s2, [sp, #112]
    1e70: ed9d 0a65    	vldr	s0, [sp, #404]
    1e74: eeb4 1a41    	vcmp.f32	s2, s2
    1e78: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    1e7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e80: eeb4 0a40    	vcmp.f32	s0, s0
    1e84: f89d 2199    	ldrb.w	r2, [sp, #0x199]
    1e88: fe10 1a01    	vselvs.f32	s2, s0, s2
    1e8c: 4489         	add	r9, r1
    1e8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e92: eddd 9a1d    	vldr	s19, [sp, #116]
    1e96: f8c4 011c    	str.w	r0, [r4, #0x11c]
    1e9a: fe11 2a00    	vselvs.f32	s4, s2, s0
    1e9e: eeb4 1a42    	vcmp.f32	s2, s4
    1ea2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ea6: fe31 9a02    	vselgt.f32	s18, s2, s4
    1eaa: 2a00         	cmp	r2, #0x0
    1eac: f000 82c8    	beq.w	0x2440 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c40> @ imm = #0x590
    1eb0: 4641         	mov	r1, r8
    1eb2: 4650         	mov	r0, r10
    1eb4: ed1f 4b72    	vldr	d4, [pc, #-456]         @ 0x1cf0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x14f0>
    1eb8: c96c         	ldm	r1!, {r2, r3, r5, r6}
    1eba: c06c         	stm	r0!, {r2, r3, r5, r6}
    1ebc: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
    1ec0: c06c         	stm	r0!, {r2, r3, r5, r6}
    1ec2: ed9d 0a58    	vldr	s0, [sp, #352]
    1ec6: ed9d 1a59    	vldr	s2, [sp, #356]
    1eca: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    1ece: ed9d 2a5a    	vldr	s4, [sp, #360]
    1ed2: ed9d ab52    	vldr	d10, [sp, #328]
    1ed6: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    1eda: ed9f 6a8e    	vldr	s12, [pc, #568]         @ 0x2114 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1914>
    1ede: eeb0 3b4a    	vmov.f64	d3, d10
    1ee2: ed9f 7a8d    	vldr	s14, [pc, #564]         @ 0x2118 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1918>
    1ee6: ee00 3b04    	vmla.f64	d3, d0, d4
    1eea: eeb7 0ac2    	vcvt.f64.f32	d0, s4
    1eee: ee01 3b04    	vmla.f64	d3, d1, d4
    1ef2: ed9d 1a5b    	vldr	s2, [sp, #364]
    1ef6: ee00 3b04    	vmla.f64	d3, d0, d4
    1efa: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    1efe: ed9d 1a5c    	vldr	s2, [sp, #368]
    1f02: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    1f06: ed1f 2b84    	vldr	d2, [pc, #-528]         @ 0x1cf8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x14f8>
    1f0a: ee00 3b04    	vmla.f64	d3, d0, d4
    1f0e: ed9d 0a5d    	vldr	s0, [sp, #372]
    1f12: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    1f16: ee01 3b04    	vmla.f64	d3, d1, d4
    1f1a: ee20 1b02    	vmul.f64	d1, d0, d2
    1f1e: ed9d 0a5e    	vldr	s0, [sp, #376]
    1f22: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    1f26: ee33 3b01    	vadd.f64	d3, d3, d1
    1f2a: ee20 2b02    	vmul.f64	d2, d0, d2
    1f2e: ed9f 0a7b    	vldr	s0, [pc, #492]          @ 0x211c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x191c>
    1f32: ee29 0a80    	vmul.f32	s0, s19, s0
    1f36: ed1f 5b8e    	vldr	d5, [pc, #-568]         @ 0x1d00 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1500>
    1f3a: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    1f3e: ee33 3b42    	vsub.f64	d3, d3, d2
    1f42: ee30 6a06    	vadd.f32	s12, s0, s12
    1f46: ee84 4b05    	vdiv.f64	d4, d4, d5
    1f4a: ed1f 5b91    	vldr	d5, [pc, #-580]         @ 0x1d08 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1508>
    1f4e: ee86 fa07    	vdiv.f32	s30, s12, s14
    1f52: ee03 4b05    	vmla.f64	d4, d3, d5
    1f56: ed9f 5a72    	vldr	s10, [pc, #456]         @ 0x2120 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1920>
    1f5a: ed1f 3b93    	vldr	d3, [pc, #-588]         @ 0x1d10 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1510>
    1f5e: ee30 5a05    	vadd.f32	s10, s0, s10
    1f62: ee84 3b03    	vdiv.f64	d3, d4, d3
    1f66: eebb 4a05    	vmov.f32	s8, #-2.100000e+01
    1f6a: ee85 ea07    	vdiv.f32	s28, s10, s14
    1f6e: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    1f72: eeb4 4a43    	vcmp.f32	s8, s6
    1f76: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f7a: fe34 3a03    	vselgt.f32	s6, s8, s6
    1f7e: eeb3 4a05    	vmov.f32	s8, #2.100000e+01
    1f82: eeb4 3a44    	vcmp.f32	s6, s8
    1f86: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f8a: eeb4 ea4f    	vcmp.f32	s28, s30
    1f8e: fe34 8a03    	vselgt.f32	s16, s8, s6
    1f92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f96: ed8d 8a5f    	vstr	s16, [sp, #380]
    1f9a: f200 8501    	bhi.w	0x29a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x21a0> @ imm = #0xa02
    1f9e: ee3a 1b01    	vadd.f64	d1, d10, d1
    1fa2: a87c         	add	r0, sp, #0x1f0
    1fa4: ed9f da5f    	vldr	s26, [pc, #380]         @ 0x2124 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1924>
    1fa8: ed1f 3ba5    	vldr	d3, [pc, #-660]         @ 0x1d18 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1518>
    1fac: ee31 1b42    	vsub.f64	d1, d1, d2
    1fb0: eeb7 2ac8    	vcvt.f64.f32	d2, s16
    1fb4: ed9d bb48    	vldr	d11, [sp, #288]
    1fb8: ee02 1b03    	vmla.f64	d1, d2, d3
    1fbc: ed9f 2a5a    	vldr	s4, [pc, #360]          @ 0x2128 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1928>
    1fc0: eef7 0bcb    	vcvt.f32.f64	s1, d11
    1fc4: ee48 0a4d    	vmls.f32	s1, s16, s26
    1fc8: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    1fcc: ee61 8a02    	vmul.f32	s17, s2, s4
    1fd0: ed9f 1a56    	vldr	s2, [pc, #344]          @ 0x212c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x192c>
    1fd4: ee40 8a01    	vmla.f32	s17, s0, s2
    1fd8: eeb4 ea68    	vcmp.f32	s28, s17
    1fdc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fe0: fe3e 0a28    	vselgt.f32	s0, s28, s17
    1fe4: eeb4 0a4f    	vcmp.f32	s0, s30
    1fe8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fec: fe3f ca00    	vselgt.f32	s24, s30, s0
    1ff0: eeb0 0a4c    	vmov.f32	s0, s24
    1ff4: f007 fb54    	bl	0x96a0 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x76a8
    1ff8: ed9d 0a7c    	vldr	s0, [sp, #496]
    1ffc: f60f 3054    	adr.w	r0, #2900
    2000: ee38 1a40    	vsub.f32	s2, s16, s0
    2004: eef4 8a4f    	vcmp.f32	s17, s30
    2008: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    200c: bf48         	it	mi
    200e: 3004         	addmi	r0, #0x4
    2010: eef4 8a4e    	vcmp.f32	s17, s28
    2014: ee11 1a10    	vmov	r1, s2
    2018: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    201c: ed90 0a00    	vldr	s0, [r0]
    2020: fe30 2a2f    	vselgt.f32	s4, s0, s31
    2024: f021 4000    	bic	r0, r1, #0x80000000
    2028: f1b0 4fff    	cmp.w	r0, #0x7f800000
    202c: da3c         	bge	0x20a8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x18a8> @ imm = #0x78
    202e: eeb0 0ac1    	vabs.f32	s0, s2
    2032: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    2036: ee80 0a03    	vdiv.f32	s0, s0, s6
    203a: ed9f 3a34    	vldr	s6, [pc, #208]          @ 0x210c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x190c>
    203e: eeb4 0a43    	vcmp.f32	s0, s6
    2042: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2046: d82f         	bhi	0x20a8 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x18a8> @ imm = #0x5e
    2048: ed9d 3a7d    	vldr	s6, [sp, #500]
    204c: eeb0 4ac8    	vabs.f32	s8, s16
    2050: ee22 2a03    	vmul.f32	s4, s4, s6
    2054: ed9d 5a7e    	vldr	s10, [sp, #504]
    2058: ee25 3a0d    	vmul.f32	s6, s10, s26
    205c: ed9f 5af6    	vldr	s10, [pc, #984]         @ 0x2438 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c38>
    2060: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    2064: eeb4 4a44    	vcmp.f32	s8, s8
    2068: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    206c: ee02 3a05    	vmla.f32	s6, s4, s10
    2070: fe16 2a04    	vselvs.f32	s4, s12, s8
    2074: eeb4 2a46    	vcmp.f32	s4, s12
    2078: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    207c: ee33 3a06    	vadd.f32	s6, s6, s12
    2080: fe32 2a06    	vselgt.f32	s4, s4, s12
    2084: ee81 1a03    	vdiv.f32	s2, s2, s6
    2088: ed9f 3af2    	vldr	s6, [pc, #968]          @ 0x2454 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c54>
    208c: ee22 2a03    	vmul.f32	s4, s4, s6
    2090: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x2458 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c58>
    2094: eeb0 1ac1    	vabs.f32	s2, s2
    2098: fe82 2a43    	vminnm.f32	s4, s4, s6
    209c: eeb4 1a42    	vcmp.f32	s2, s4
    20a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    20a4: f240 81dc    	bls.w	0x2460 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c60> @ imm = #0x3b8
    20a8: 4640         	mov	r0, r8
    20aa: eeb0 2a69    	vmov.f32	s4, s19
    20ae: e8ba 004e    	ldm.w	r10!, {r1, r2, r3, r6}
    20b2: c04e         	stm	r0!, {r1, r2, r3, r6}
    20b4: e89a 004e    	ldm.w	r10, {r1, r2, r3, r6}
    20b8: c04e         	stm	r0!, {r1, r2, r3, r6}
    20ba: eeb0 0b4b    	vmov.f64	d0, d11
    20be: f8d4 010c    	ldr.w	r0, [r4, #0x10c]
    20c2: eeb0 1b4a    	vmov.f64	d1, d10
    20c6: 3001         	adds	r0, #0x1
    20c8: f8c4 010c    	str.w	r0, [r4, #0x10c]
    20cc: a865         	add	r0, sp, #0x194
    20ce: aa60         	add	r2, sp, #0x180
    20d0: 4641         	mov	r1, r8
    20d2: f007 f8dd    	bl	0x9290 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>> @ imm = #0x71ba
    20d6: f89d 0199    	ldrb.w	r0, [sp, #0x199]
    20da: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    20de: 2800         	cmp	r0, #0x0
    20e0: 4489         	add	r9, r1
    20e2: f000 8175    	beq.w	0x23d0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1bd0> @ imm = #0x2ea
    20e6: eeb4 9a49    	vcmp.f32	s18, s18
    20ea: ed9d 0a65    	vldr	s0, [sp, #404]
    20ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    20f2: eeb4 0a40    	vcmp.f32	s0, s0
    20f6: fe10 1a09    	vselvs.f32	s2, s0, s18
    20fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    20fe: e9cd 9b1c    	strd	r9, r11, [sp, #112]
    2102: fe11 0a00    	vselvs.f32	s0, s2, s0
    2106: e1c0         	b	0x248a <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c8a> @ imm = #0x380
    2108: 0a d7 23 3c  	.word	0x3c23d70a
    210c: 17 b7 d1 38  	.word	0x38d1b717
    2110: 00 00 00 80  	.word	0x80000000
    2114: 00 24 f4 4a  	.word	0x4af42400
    2118: 00 a0 0c 48  	.word	0x480ca000
    211c: 00 80 bb 47  	.word	0x47bb8000
    2120: 00 24 f4 ca  	.word	0xcaf42400
    2124: cd 1e 2c 3e  	.word	0x3e2c1ecd
    2128: d2 4e da 43  	.word	0x43da4ed2
    212c: df ff e7 36  	.word	0x36e7ffdf
    2130: eef0 1ac6    	vabs.f32	s3, s12
    2134: 2200         	movs	r2, #0x0
    2136: eef0 2ae3    	vabs.f32	s5, s7
    213a: f50d 7eca    	add.w	lr, sp, #0x194
    213e: eef4 1a62    	vcmp.f32	s3, s5
    2142: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2146: eef0 1acd    	vabs.f32	s3, s26
    214a: fe36 6a23    	vselgt.f32	s12, s12, s7
    214e: bfc8         	it	gt
    2150: 2201         	movgt	r2, #0x1
    2152: eeb0 6ac6    	vabs.f32	s12, s12
    2156: eef4 1a46    	vcmp.f32	s3, s12
    215a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    215e: bfc8         	it	gt
    2160: 2202         	movgt	r2, #0x2
    2162: eb02 0042    	add.w	r0, r2, r2, lsl #1
    2166: eb0a 0180    	add.w	r1, r10, r0, lsl #2
    216a: f85a 0020    	ldr.w	r0, [r10, r0, lsl #2]
    216e: e9d1 3601    	ldrd	r3, r6, [r1, #4]
    2172: e88e 0049    	stm.w	lr, {r0, r3, r6}
    2176: edc1 3a00    	vstr	s7, [r1]
    217a: f50d 7e04    	add.w	lr, sp, #0x210
    217e: ed81 5a01    	vstr	s10, [r1, #4]
    2182: ed81 ea02    	vstr	s28, [r1, #8]
    2186: eb0e 0182    	add.w	r1, lr, r2, lsl #2
    218a: ed9d 6a65    	vldr	s12, [sp, #404]
    218e: f85e 2022    	ldr.w	r2, [lr, r2, lsl #2]
    2192: ee16 0a10    	vmov	r0, s12
    2196: 9284         	str	r2, [sp, #0x210]
    2198: ed81 7a00    	vstr	s14, [r1]
    219c: f020 4000    	bic	r0, r0, #0x80000000
    21a0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    21a4: f6bf adf8    	bge.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x410
    21a8: eeb0 7ac6    	vabs.f32	s14, s12
    21ac: ed9f 5aab    	vldr	s10, [pc, #684]         @ 0x245c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c5c>
    21b0: eeb4 7a45    	vcmp.f32	s14, s10
    21b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    21b8: f53f adee    	bmi.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x424
    21bc: ed9d 7a6b    	vldr	s14, [sp, #428]
    21c0: eddd 1a68    	vldr	s3, [sp, #416]
    21c4: eec7 3a06    	vdiv.f32	s7, s14, s12
    21c8: ed9d 7a66    	vldr	s14, [sp, #408]
    21cc: eec1 4a86    	vdiv.f32	s9, s3, s12
    21d0: eddd 5a6c    	vldr	s11, [sp, #432]
    21d4: eddd 6a69    	vldr	s13, [sp, #420]
    21d8: eddd 1a84    	vldr	s3, [sp, #528]
    21dc: ee47 5a63    	vmls.f32	s11, s14, s7
    21e0: eddd 2a67    	vldr	s5, [sp, #412]
    21e4: ee44 6ac7    	vmls.f32	s13, s9, s14
    21e8: eddd 7a6a    	vldr	s15, [sp, #424]
    21ec: ee44 7ae2    	vmls.f32	s15, s9, s5
    21f0: ed9d 8a85    	vldr	s16, [sp, #532]
    21f4: ee04 8ae1    	vmls.f32	s16, s9, s3
    21f8: f10a 000c    	add.w	r0, r10, #0xc
    21fc: 4602         	mov	r2, r0
    21fe: edcd 5a6c    	vstr	s11, [sp, #432]
    2202: edcd 6a69    	vstr	s13, [sp, #420]
    2206: eef0 4ae5    	vabs.f32	s9, s11
    220a: edcd 7a6a    	vstr	s15, [sp, #424]
    220e: eeb0 9ae6    	vabs.f32	s18, s13
    2212: eddd 6a6d    	vldr	s13, [sp, #436]
    2216: ee42 6ae3    	vmls.f32	s13, s5, s7
    221a: ed8d 8a85    	vstr	s16, [sp, #532]
    221e: eef4 4a49    	vcmp.f32	s9, s18
    2222: eddd 4a86    	vldr	s9, [sp, #536]
    2226: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    222a: bfc8         	it	gt
    222c: f10a 0218    	addgt.w	r2, r10, #0x18
    2230: edcd 6a6d    	vstr	s13, [sp, #436]
    2234: 6803         	ldr	r3, [r0]
    2236: e9d2 6500    	ldrd	r6, r5, [r2]
    223a: 6891         	ldr	r1, [r2, #0x8]
    223c: 6006         	str	r6, [r0]
    223e: 6846         	ldr	r6, [r0, #0x4]
    2240: 6045         	str	r5, [r0, #0x4]
    2242: 6885         	ldr	r5, [r0, #0x8]
    2244: 6081         	str	r1, [r0, #0x8]
    2246: ee41 4ae3    	vmls.f32	s9, s3, s7
    224a: f04f 0004    	mov.w	r0, #0x4
    224e: e9c2 6501    	strd	r6, r5, [r2, #4]
    2252: eddd 3a69    	vldr	s7, [sp, #420]
    2256: ee13 1a90    	vmov	r1, s7
    225a: bfc8         	it	gt
    225c: 2008         	movgt	r0, #0x8
    225e: edcd 4a86    	vstr	s9, [sp, #536]
    2262: 6013         	str	r3, [r2]
    2264: f85e 2000    	ldr.w	r2, [lr, r0]
    2268: 4470         	add	r0, lr
    226a: f021 4100    	bic	r1, r1, #0x80000000
    226e: f1b1 4fff    	cmp.w	r1, #0x7f800000
    2272: 9285         	str	r2, [sp, #0x214]
    2274: ed80 8a00    	vstr	s16, [r0]
    2278: f6bf ad8e    	bge.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x4e4
    227c: eef0 4ae3    	vabs.f32	s9, s7
    2280: eef4 4a45    	vcmp.f32	s9, s10
    2284: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2288: f53f ad86    	bmi.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x4f4
    228c: eddd 4a6c    	vldr	s9, [sp, #432]
    2290: eddd 6a6d    	vldr	s13, [sp, #436]
    2294: eec4 5aa3    	vdiv.f32	s11, s9, s7
    2298: eddd 4a6a    	vldr	s9, [sp, #424]
    229c: ee45 6ae4    	vmls.f32	s13, s11, s9
    22a0: ee16 0a90    	vmov	r0, s13
    22a4: f020 4000    	bic	r0, r0, #0x80000000
    22a8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    22ac: f6bf ad74    	bge.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x518
    22b0: eef0 7ae6    	vabs.f32	s15, s13
    22b4: eef4 7a45    	vcmp.f32	s15, s10
    22b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    22bc: f53f ad6c    	bmi.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x528
    22c0: eddd 7a85    	vldr	s15, [sp, #532]
    22c4: ed9d 5a86    	vldr	s10, [sp, #536]
    22c8: ee05 5ae7    	vmls.f32	s10, s11, s15
    22cc: eeb0 0ac0    	vabs.f32	s0, s0
    22d0: eeb4 0a40    	vcmp.f32	s0, s0
    22d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    22d8: ee85 5a26    	vdiv.f32	s10, s10, s13
    22dc: fe1b 0a00    	vselvs.f32	s0, s22, s0
    22e0: ee44 7ac5    	vmls.f32	s15, s9, s10
    22e4: eeb4 0a4b    	vcmp.f32	s0, s22
    22e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    22ec: eec7 3aa3    	vdiv.f32	s7, s15, s7
    22f0: ee47 1a63    	vmls.f32	s3, s14, s7
    22f4: fe30 7a0b    	vselgt.f32	s14, s0, s22
    22f8: ed9f 0a56    	vldr	s0, [pc, #344]          @ 0x2454 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c54>
    22fc: ee42 1ac5    	vmls.f32	s3, s5, s10
    2300: ee27 7a00    	vmul.f32	s14, s14, s0
    2304: ee81 6a86    	vdiv.f32	s12, s3, s12
    2308: eef0 1ac6    	vabs.f32	s3, s12
    230c: ed9f 6a52    	vldr	s12, [pc, #328]         @ 0x2458 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c58>
    2310: fe87 7a46    	vminnm.f32	s14, s14, s12
    2314: eef4 1a47    	vcmp.f32	s3, s14
    2318: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    231c: f63f ad3c    	bhi.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x588
    2320: eeb0 1ac1    	vabs.f32	s2, s2
    2324: eeb0 7ae3    	vabs.f32	s14, s7
    2328: eeb4 1a41    	vcmp.f32	s2, s2
    232c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2330: fe1b 1a01    	vselvs.f32	s2, s22, s2
    2334: eeb4 1a4b    	vcmp.f32	s2, s22
    2338: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    233c: fe31 1a0b    	vselgt.f32	s2, s2, s22
    2340: ee21 1a00    	vmul.f32	s2, s2, s0
    2344: fe81 1a46    	vminnm.f32	s2, s2, s12
    2348: eeb4 7a41    	vcmp.f32	s14, s2
    234c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2350: f63f ad22    	bhi.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x5bc
    2354: eeb0 1ac2    	vabs.f32	s2, s4
    2358: eeb4 1a41    	vcmp.f32	s2, s2
    235c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2360: fe1b 1a01    	vselvs.f32	s2, s22, s2
    2364: eeb4 1a4b    	vcmp.f32	s2, s22
    2368: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    236c: fe31 1a0b    	vselgt.f32	s2, s2, s22
    2370: ee21 0a00    	vmul.f32	s0, s2, s0
    2374: eeb0 1ac5    	vabs.f32	s2, s10
    2378: fe80 0a46    	vminnm.f32	s0, s0, s12
    237c: eeb4 1a40    	vcmp.f32	s2, s0
    2380: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2384: f63f ad08    	bhi.w	0x1d98 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1598> @ imm = #-0x5f0
    2388: ed9d 0a1c    	vldr	s0, [sp, #112]
    238c: f8d4 0108    	ldr.w	r0, [r4, #0x108]
    2390: eeb4 0a40    	vcmp.f32	s0, s0
    2394: f8d4 1110    	ldr.w	r1, [r4, #0x110]
    2398: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    239c: eeb4 4a44    	vcmp.f32	s8, s8
    23a0: ed8d 3a62    	vstr	s6, [sp, #392]
    23a4: fe14 0a00    	vselvs.f32	s0, s8, s0
    23a8: edcd 0a63    	vstr	s1, [sp, #396]
    23ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23b0: f100 0001    	add.w	r0, r0, #0x1
    23b4: f8c4 0108    	str.w	r0, [r4, #0x108]
    23b8: fe10 1a04    	vselvs.f32	s2, s0, s8
    23bc: 1c48         	adds	r0, r1, #0x1
    23be: f8c4 0110    	str.w	r0, [r4, #0x110]
    23c2: eeb4 0a41    	vcmp.f32	s0, s2
    23c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23ca: fe30 9a01    	vselgt.f32	s18, s0, s2
    23ce: e56f         	b	0x1eb0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x16b0> @ imm = #-0x522
    23d0: eeb0 0b4b    	vmov.f64	d0, d11
    23d4: a865         	add	r0, sp, #0x194
    23d6: eeb0 1b4a    	vmov.f64	d1, d10
    23da: a958         	add	r1, sp, #0x160
    23dc: eeb0 2a69    	vmov.f32	s4, s19
    23e0: aa60         	add	r2, sp, #0x180
    23e2: 2500         	movs	r5, #0x0
    23e4: 955f         	str	r5, [sp, #0x17c]
    23e6: f006 ff53    	bl	0x9290 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>> @ imm = #0x6ea6
    23ea: f8d4 011c    	ldr.w	r0, [r4, #0x11c]
    23ee: eeb4 9a49    	vcmp.f32	s18, s18
    23f2: 3001         	adds	r0, #0x1
    23f4: bf28         	it	hs
    23f6: f04f 30ff    	movhs.w	r0, #0xffffffff
    23fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23fe: ed9d 0a65    	vldr	s0, [sp, #404]
    2402: f89d 1198    	ldrb.w	r1, [sp, #0x198]
    2406: fe10 1a09    	vselvs.f32	s2, s0, s18
    240a: f89d 2199    	ldrb.w	r2, [sp, #0x199]
    240e: eeb4 0a40    	vcmp.f32	s0, s0
    2412: 4489         	add	r9, r1
    2414: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2418: f8c4 011c    	str.w	r0, [r4, #0x11c]
    241c: fe11 2a00    	vselvs.f32	s4, s2, s0
    2420: eeb4 1a42    	vcmp.f32	s2, s4
    2424: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2428: fe31 1a02    	vselgt.f32	s2, s2, s4
    242c: b142         	cbz	r2, 0x2440 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c40> @ imm = #0x10
    242e: ed8d 1a01    	vstr	s2, [sp, #4]
    2432: e9cd 9b1c    	strd	r9, r11, [sp, #112]
    2436: e030         	b	0x249a <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x1c9a> @ imm = #0x60
    2438: 82 76 ab bc  	.word	0xbcab7682
    243c: 00 bf 00 bf  	.word	0xbf00bf00
    2440: 69e0         	ldr	r0, [r4, #0x1c]
    2442: f8cb 0000    	str.w	r0, [r11]
    2446: ed8b 0a01    	vstr	s0, [r11, #4]
    244a: f88b 9008    	strb.w	r9, [r11, #0x8]
    244e: f88b 5009    	strb.w	r5, [r11, #0x9]
    2452: e1ed         	b	0x2830 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2030> @ imm = #0x3da
    2454: bd 37 06 36  	.word	0x360637bd
    2458: ac c5 a7 37  	.word	0x37a7c5ac
    245c: 08 e5 3c 1e  	.word	0x1e3ce508
    2460: eeb4 9a49    	vcmp.f32	s18, s18
    2464: f8d4 0114    	ldr.w	r0, [r4, #0x114]
    2468: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    246c: eeb4 0a40    	vcmp.f32	s0, s0
    2470: ed8d ca64    	vstr	s24, [sp, #400]
    2474: fe10 1a09    	vselvs.f32	s2, s0, s18
    2478: 3001         	adds	r0, #0x1
    247a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    247e: e9cd 9b1c    	strd	r9, r11, [sp, #112]
    2482: fe11 0a00    	vselvs.f32	s0, s2, s0
    2486: f8c4 0114    	str.w	r0, [r4, #0x114]
    248a: eeb4 1a40    	vcmp.f32	s2, s0
    248e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2492: fe31 0a00    	vselgt.f32	s0, s2, s0
    2496: ed8d 0a01    	vstr	s0, [sp, #4]
    249a: a865         	add	r0, sp, #0x194
    249c: a91e         	add	r1, sp, #0x78
    249e: aa58         	add	r2, sp, #0x160
    24a0: ed9d 0a0d    	vldr	s0, [sp, #52]
    24a4: f003 ff38    	bl	0x6318 <orange_dsp::generated_packed::update::<5>> @ imm = #0x3e70
    24a8: eddd 2a70    	vldr	s5, [sp, #448]
    24ac: eddd 3a71    	vldr	s7, [sp, #452]
    24b0: eddd da66    	vldr	s27, [sp, #408]
    24b4: ee12 2a90    	vmov	r2, s5
    24b8: ee1d 0a90    	vmov	r0, s27
    24bc: eddd 4a72    	vldr	s9, [sp, #456]
    24c0: 9209         	str	r2, [sp, #0x24]
    24c2: ee13 2a90    	vmov	r2, s7
    24c6: eddd 5a73    	vldr	s11, [sp, #460]
    24ca: eddd fa68    	vldr	s31, [sp, #416]
    24ce: eddd ea67    	vldr	s29, [sp, #412]
    24d2: 920a         	str	r2, [sp, #0x28]
    24d4: ee14 2a90    	vmov	r2, s9
    24d8: ee15 8a90    	vmov	r8, s11
    24dc: f020 4000    	bic	r0, r0, #0x80000000
    24e0: ee1e 1a90    	vmov	r1, s29
    24e4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    24e8: f04f 0000    	mov.w	r0, #0x0
    24ec: ed9d 3a69    	vldr	s6, [sp, #420]
    24f0: ed9d 4a6a    	vldr	s8, [sp, #424]
    24f4: ed9d 5a6b    	vldr	s10, [sp, #428]
    24f8: ed9d 6a6c    	vldr	s12, [sp, #432]
    24fc: ed9d 7a6d    	vldr	s14, [sp, #436]
    2500: eddd 0a6e    	vldr	s1, [sp, #440]
    2504: eddd 1a6f    	vldr	s3, [sp, #444]
    2508: 920d         	str	r2, [sp, #0x34]
    250a: f8cd 8038    	str.w	r8, [sp, #0x38]
    250e: ee1f 5a90    	vmov	r5, s31
    2512: bfa8         	it	ge
    2514: 2001         	movge	r0, #0x1
    2516: ee13 6a10    	vmov	r6, s6
    251a: ee14 3a10    	vmov	r3, s8
    251e: 901b         	str	r0, [sp, #0x6c]
    2520: f021 4000    	bic	r0, r1, #0x80000000
    2524: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2528: f04f 0000    	mov.w	r0, #0x0
    252c: bfa8         	it	ge
    252e: 2001         	movge	r0, #0x1
    2530: ee15 ca10    	vmov	r12, s10
    2534: ee16 ea10    	vmov	lr, s12
    2538: 9018         	str	r0, [sp, #0x60]
    253a: f025 4000    	bic	r0, r5, #0x80000000
    253e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2542: f04f 0000    	mov.w	r0, #0x0
    2546: bfa8         	it	ge
    2548: 2001         	movge	r0, #0x1
    254a: ee17 9a10    	vmov	r9, s14
    254e: ee10 ba90    	vmov	r11, s1
    2552: 9016         	str	r0, [sp, #0x58]
    2554: f026 4000    	bic	r0, r6, #0x80000000
    2558: f1b0 4fff    	cmp.w	r0, #0x7f800000
    255c: f04f 0000    	mov.w	r0, #0x0
    2560: bfa8         	it	ge
    2562: 2001         	movge	r0, #0x1
    2564: ee11 aa90    	vmov	r10, s3
    2568: f04f 0800    	mov.w	r8, #0x0
    256c: 9014         	str	r0, [sp, #0x50]
    256e: f023 4000    	bic	r0, r3, #0x80000000
    2572: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2576: f04f 0000    	mov.w	r0, #0x0
    257a: bfa8         	it	ge
    257c: 2001         	movge	r0, #0x1
    257e: 9012         	str	r0, [sp, #0x48]
    2580: f02c 4000    	bic	r0, r12, #0x80000000
    2584: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2588: f04f 0000    	mov.w	r0, #0x0
    258c: bfa8         	it	ge
    258e: 2001         	movge	r0, #0x1
    2590: f04f 0c00    	mov.w	r12, #0x0
    2594: 9010         	str	r0, [sp, #0x40]
    2596: f02e 4000    	bic	r0, lr, #0x80000000
    259a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    259e: f04f 0000    	mov.w	r0, #0x0
    25a2: bfa8         	it	ge
    25a4: 2001         	movge	r0, #0x1
    25a6: f04f 0e00    	mov.w	lr, #0x0
    25aa: 9008         	str	r0, [sp, #0x20]
    25ac: f029 4000    	bic	r0, r9, #0x80000000
    25b0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    25b4: f04f 0000    	mov.w	r0, #0x0
    25b8: bfa8         	it	ge
    25ba: 2001         	movge	r0, #0x1
    25bc: f04f 0900    	mov.w	r9, #0x0
    25c0: 9007         	str	r0, [sp, #0x1c]
    25c2: f02b 4000    	bic	r0, r11, #0x80000000
    25c6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    25ca: f04f 0000    	mov.w	r0, #0x0
    25ce: bfa8         	it	ge
    25d0: 2001         	movge	r0, #0x1
    25d2: f04f 0b00    	mov.w	r11, #0x0
    25d6: 9006         	str	r0, [sp, #0x18]
    25d8: f02a 4000    	bic	r0, r10, #0x80000000
    25dc: f1b0 4fff    	cmp.w	r0, #0x7f800000
    25e0: f04f 0000    	mov.w	r0, #0x0
    25e4: bfa8         	it	ge
    25e6: 2001         	movge	r0, #0x1
    25e8: f04f 0a00    	mov.w	r10, #0x0
    25ec: 9005         	str	r0, [sp, #0x14]
    25ee: 9809         	ldr	r0, [sp, #0x24]
    25f0: f020 4000    	bic	r0, r0, #0x80000000
    25f4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    25f8: f04f 0000    	mov.w	r0, #0x0
    25fc: bfa8         	it	ge
    25fe: 2001         	movge	r0, #0x1
    2600: 9009         	str	r0, [sp, #0x24]
    2602: 980a         	ldr	r0, [sp, #0x28]
    2604: f020 4000    	bic	r0, r0, #0x80000000
    2608: f1b0 4fff    	cmp.w	r0, #0x7f800000
    260c: f04f 0000    	mov.w	r0, #0x0
    2610: bfa8         	it	ge
    2612: 2001         	movge	r0, #0x1
    2614: 900a         	str	r0, [sp, #0x28]
    2616: 980d         	ldr	r0, [sp, #0x34]
    2618: f020 4000    	bic	r0, r0, #0x80000000
    261c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2620: f04f 0000    	mov.w	r0, #0x0
    2624: bfa8         	it	ge
    2626: 2001         	movge	r0, #0x1
    2628: eddd ca74    	vldr	s25, [sp, #464]
    262c: 900d         	str	r0, [sp, #0x34]
    262e: 980e         	ldr	r0, [sp, #0x38]
    2630: f020 4000    	bic	r0, r0, #0x80000000
    2634: ee1c 1a90    	vmov	r1, s25
    2638: f1b0 4fff    	cmp.w	r0, #0x7f800000
    263c: f04f 0000    	mov.w	r0, #0x0
    2640: bfa8         	it	ge
    2642: 2001         	movge	r0, #0x1
    2644: eddd 7a75    	vldr	s15, [sp, #468]
    2648: 900e         	str	r0, [sp, #0x38]
    264a: f021 4000    	bic	r0, r1, #0x80000000
    264e: ee17 1a90    	vmov	r1, s15
    2652: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2656: f04f 0000    	mov.w	r0, #0x0
    265a: bfa8         	it	ge
    265c: 2001         	movge	r0, #0x1
    265e: ed9d 8a76    	vldr	s16, [sp, #472]
    2662: 9004         	str	r0, [sp, #0x10]
    2664: f021 4000    	bic	r0, r1, #0x80000000
    2668: ee18 1a10    	vmov	r1, s16
    266c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2670: f04f 0000    	mov.w	r0, #0x0
    2674: bfa8         	it	ge
    2676: 2001         	movge	r0, #0x1
    2678: ed9d 9a77    	vldr	s18, [sp, #476]
    267c: 9003         	str	r0, [sp, #0xc]
    267e: f021 4000    	bic	r0, r1, #0x80000000
    2682: ee19 1a10    	vmov	r1, s18
    2686: f1b0 4fff    	cmp.w	r0, #0x7f800000
    268a: f04f 0000    	mov.w	r0, #0x0
    268e: bfa8         	it	ge
    2690: 2001         	movge	r0, #0x1
    2692: ed9d aa78    	vldr	s20, [sp, #480]
    2696: 9002         	str	r0, [sp, #0x8]
    2698: f021 4000    	bic	r0, r1, #0x80000000
    269c: ee1a 1a10    	vmov	r1, s20
    26a0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    26a4: bfa8         	it	ge
    26a6: f04f 0e01    	movge.w	lr, #0x1
    26aa: ed9d ba79    	vldr	s22, [sp, #484]
    26ae: f021 4000    	bic	r0, r1, #0x80000000
    26b2: ee1b 1a10    	vmov	r1, s22
    26b6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    26ba: bfa8         	it	ge
    26bc: f04f 0901    	movge.w	r9, #0x1
    26c0: ed9d ca7a    	vldr	s24, [sp, #488]
    26c4: f021 4100    	bic	r1, r1, #0x80000000
    26c8: ee1c 2a10    	vmov	r2, s24
    26cc: f1b1 4fff    	cmp.w	r1, #0x7f800000
    26d0: bfa8         	it	ge
    26d2: f04f 0b01    	movge.w	r11, #0x1
    26d6: ed9d da7b    	vldr	s26, [sp, #492]
    26da: ee1d 3a10    	vmov	r3, s26
    26de: f022 4200    	bic	r2, r2, #0x80000000
    26e2: f1b2 4fff    	cmp.w	r2, #0x7f800000
    26e6: f04f 0200    	mov.w	r2, #0x0
    26ea: bfa8         	it	ge
    26ec: 2201         	movge	r2, #0x1
    26ee: f023 4300    	bic	r3, r3, #0x80000000
    26f2: ed9d ea60    	vldr	s28, [sp, #384]
    26f6: f1b3 4fff    	cmp.w	r3, #0x7f800000
    26fa: f04f 0300    	mov.w	r3, #0x0
    26fe: ee1e 6a10    	vmov	r6, s28
    2702: bfa8         	it	ge
    2704: 2301         	movge	r3, #0x1
    2706: ed9d fa61    	vldr	s30, [sp, #388]
    270a: ee1f 5a10    	vmov	r5, s30
    270e: f026 4600    	bic	r6, r6, #0x80000000
    2712: f1b6 4fff    	cmp.w	r6, #0x7f800000
    2716: bfa8         	it	ge
    2718: f04f 0c01    	movge.w	r12, #0x1
    271c: eddd 8a62    	vldr	s17, [sp, #392]
    2720: f025 4500    	bic	r5, r5, #0x80000000
    2724: ee18 6a90    	vmov	r6, s17
    2728: f1b5 4fff    	cmp.w	r5, #0x7f800000
    272c: f04f 0500    	mov.w	r5, #0x0
    2730: bfa8         	it	ge
    2732: 2501         	movge	r5, #0x1
    2734: eddd 9a63    	vldr	s19, [sp, #396]
    2738: f026 4600    	bic	r6, r6, #0x80000000
    273c: ee19 0a90    	vmov	r0, s19
    2740: f1b6 4fff    	cmp.w	r6, #0x7f800000
    2744: f04f 0600    	mov.w	r6, #0x0
    2748: eddd aa64    	vldr	s21, [sp, #400]
    274c: bfa8         	it	ge
    274e: 2601         	movge	r6, #0x1
    2750: f020 4000    	bic	r0, r0, #0x80000000
    2754: eddd ba65    	vldr	s23, [sp, #404]
    2758: ee1a 1a90    	vmov	r1, s21
    275c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2760: ee1b 0a90    	vmov	r0, s23
    2764: bfa8         	it	ge
    2766: f04f 0801    	movge.w	r8, #0x1
    276a: f021 4100    	bic	r1, r1, #0x80000000
    276e: f020 4000    	bic	r0, r0, #0x80000000
    2772: f1b1 4fff    	cmp.w	r1, #0x7f800000
    2776: bfa8         	it	ge
    2778: f04f 0a01    	movge.w	r10, #0x1
    277c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    2780: f04f 0100    	mov.w	r1, #0x0
    2784: da4a         	bge	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x94
    2786: 981b         	ldr	r0, [sp, #0x6c]
    2788: 2800         	cmp	r0, #0x0
    278a: bf04         	itt	eq
    278c: 9818         	ldreq	r0, [sp, #0x60]
    278e: 2800         	cmpeq	r0, #0x0
    2790: d144         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x88
    2792: 9816         	ldr	r0, [sp, #0x58]
    2794: 2800         	cmp	r0, #0x0
    2796: bf04         	itt	eq
    2798: 9814         	ldreq	r0, [sp, #0x50]
    279a: 2800         	cmpeq	r0, #0x0
    279c: d13e         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x7c
    279e: 9812         	ldr	r0, [sp, #0x48]
    27a0: 2800         	cmp	r0, #0x0
    27a2: bf04         	itt	eq
    27a4: 9810         	ldreq	r0, [sp, #0x40]
    27a6: 2800         	cmpeq	r0, #0x0
    27a8: d138         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x70
    27aa: 9808         	ldr	r0, [sp, #0x20]
    27ac: 2800         	cmp	r0, #0x0
    27ae: bf04         	itt	eq
    27b0: 9807         	ldreq	r0, [sp, #0x1c]
    27b2: 2800         	cmpeq	r0, #0x0
    27b4: d132         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x64
    27b6: 9806         	ldr	r0, [sp, #0x18]
    27b8: 2800         	cmp	r0, #0x0
    27ba: bf04         	itt	eq
    27bc: 9805         	ldreq	r0, [sp, #0x14]
    27be: 2800         	cmpeq	r0, #0x0
    27c0: d12c         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x58
    27c2: 9809         	ldr	r0, [sp, #0x24]
    27c4: 2800         	cmp	r0, #0x0
    27c6: bf04         	itt	eq
    27c8: 980a         	ldreq	r0, [sp, #0x28]
    27ca: 2800         	cmpeq	r0, #0x0
    27cc: d126         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x4c
    27ce: 980d         	ldr	r0, [sp, #0x34]
    27d0: 2800         	cmp	r0, #0x0
    27d2: bf04         	itt	eq
    27d4: 980e         	ldreq	r0, [sp, #0x38]
    27d6: 2800         	cmpeq	r0, #0x0
    27d8: d120         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x40
    27da: 9804         	ldr	r0, [sp, #0x10]
    27dc: 2800         	cmp	r0, #0x0
    27de: bf04         	itt	eq
    27e0: 9803         	ldreq	r0, [sp, #0xc]
    27e2: 2800         	cmpeq	r0, #0x0
    27e4: d11a         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x34
    27e6: 9802         	ldr	r0, [sp, #0x8]
    27e8: 2800         	cmp	r0, #0x0
    27ea: bf08         	it	eq
    27ec: f1be 0f00    	cmpeq.w	lr, #0x0
    27f0: d114         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x28
    27f2: f1b9 0f00    	cmp.w	r9, #0x0
    27f6: bf08         	it	eq
    27f8: f1bb 0f00    	cmpeq.w	r11, #0x0
    27fc: d10e         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x1c
    27fe: 2a00         	cmp	r2, #0x0
    2800: bf08         	it	eq
    2802: 2b00         	cmpeq	r3, #0x0
    2804: d10a         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0x14
    2806: f1bc 0f00    	cmp.w	r12, #0x0
    280a: bf08         	it	eq
    280c: 2d00         	cmpeq	r5, #0x0
    280e: d105         	bne	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #0xa
    2810: 2e00         	cmp	r6, #0x0
    2812: bf08         	it	eq
    2814: f1b8 0f00    	cmpeq.w	r8, #0x0
    2818: f000 80da    	beq.w	0x29d0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x21d0> @ imm = #0x1b4
    281c: 9a1d         	ldr	r2, [sp, #0x74]
    281e: 69e0         	ldr	r0, [r4, #0x1c]
    2820: 460b         	mov	r3, r1
    2822: f04f 41ff    	mov.w	r1, #0x7f800000
    2826: e9c2 0100    	strd	r0, r1, [r2]
    282a: 981c         	ldr	r0, [sp, #0x70]
    282c: 7210         	strb	r0, [r2, #0x8]
    282e: 7253         	strb	r3, [r2, #0x9]
    2830: f50d 7d0a    	add.w	sp, sp, #0x228
    2834: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    2838: b001         	add	sp, #0x4
    283a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    283e: bdf0         	pop	{r4, r5, r6, r7, pc}
    2840: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    2844: eef0 2a45    	vmov.f32	s5, s10
    2848: eef0 ca46    	vmov.f32	s25, s12
    284c: ed8d 9b0a    	vstr	d9, [sp, #40]
    2850: ed9f 9abd    	vldr	s18, [pc, #756]         @ 0x2b48 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2348>
    2854: ee42 ca25    	vmla.f32	s25, s4, s11
    2858: ee42 2a09    	vmla.f32	s5, s4, s18
    285c: ed8d 2a5e    	vstr	s4, [sp, #376]
    2860: fe82 9aec    	vminnm.f32	s18, s5, s25
    2864: ee3a cac9    	vsub.f32	s24, s21, s18
    2868: eeb8 9a00    	vmov.f32	s18, #-2.000000e+00
    286c: eeb4 ca49    	vcmp.f32	s24, s18
    2870: ed9d 9b0a    	vldr	d9, [sp, #40]
    2874: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2878: f77e ae07    	ble.w	0x148a <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xc8a> @ imm = #-0x13f2
    287c: eef4 2a6c    	vcmp.f32	s5, s25
    2880: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2884: f63e ae01    	bhi.w	0x148a <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xc8a> @ imm = #-0x13fe
    2888: eeb5 ca40    	vcmp.f32	s24, #0
    288c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2890: f57e adfb    	bpl.w	0x148a <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xc8a> @ imm = #-0x140a
    2894: eef0 2a66    	vmov.f32	s5, s13
    2898: ee4c 2a2a    	vmla.f32	s5, s24, s21
    289c: ed9f 9aab    	vldr	s18, [pc, #684]         @ 0x2b4c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x234c>
    28a0: ee62 2a89    	vmul.f32	s5, s5, s18
    28a4: ed9f 9aaa    	vldr	s18, [pc, #680]         @ 0x2b50 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2350>
    28a8: eef4 2a49    	vcmp.f32	s5, s18
    28ac: ed9d 9b0a    	vldr	d9, [sp, #40]
    28b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    28b4: f77e ade9    	ble.w	0x148a <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xc8a> @ imm = #-0x142e
    28b8: f7fe be6c    	b.w	0x1594 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xd94> @ imm = #-0x1328
    28bc: bf00         	nop
    28be: bf00         	nop
    28c0: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    28c4: ed9f 8aa0    	vldr	s16, [pc, #640]         @ 0x2b48 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2348>
    28c8: eef0 2a45    	vmov.f32	s5, s10
    28cc: eeb0 ca46    	vmov.f32	s24, s12
    28d0: ed8d 2a5e    	vstr	s4, [sp, #376]
    28d4: ee42 2a08    	vmla.f32	s5, s4, s16
    28d8: ee02 ca25    	vmla.f32	s24, s4, s11
    28dc: fe82 8acc    	vminnm.f32	s16, s5, s24
    28e0: ee3a bac8    	vsub.f32	s22, s21, s16
    28e4: eeb8 8a00    	vmov.f32	s16, #-2.000000e+00
    28e8: eeb4 ba48    	vcmp.f32	s22, s16
    28ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    28f0: f77e ae0e    	ble.w	0x1510 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xd10> @ imm = #-0x13e4
    28f4: eeb4 ca62    	vcmp.f32	s24, s5
    28f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    28fc: f63e ae08    	bhi.w	0x1510 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xd10> @ imm = #-0x13f0
    2900: eeb5 ba40    	vcmp.f32	s22, #0
    2904: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2908: f57e ae02    	bpl.w	0x1510 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xd10> @ imm = #-0x13fc
    290c: eef0 2a66    	vmov.f32	s5, s13
    2910: ee4b 2a2a    	vmla.f32	s5, s22, s21
    2914: ed9f 8a8d    	vldr	s16, [pc, #564]         @ 0x2b4c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x234c>
    2918: ee62 2a88    	vmul.f32	s5, s5, s16
    291c: ed9f 8a8c    	vldr	s16, [pc, #560]         @ 0x2b50 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2350>
    2920: eef4 2a48    	vcmp.f32	s5, s16
    2924: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2928: f77e adf2    	ble.w	0x1510 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xd10> @ imm = #-0x141c
    292c: f7fe be32    	b.w	0x1594 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xd94> @ imm = #-0x139c
    2930: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    2934: ed9f 9a84    	vldr	s18, [pc, #528]         @ 0x2b48 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2348>
    2938: eef0 2a45    	vmov.f32	s5, s10
    293c: eef0 ca46    	vmov.f32	s25, s12
    2940: ed8d 2a5e    	vstr	s4, [sp, #376]
    2944: ee42 2a09    	vmla.f32	s5, s4, s18
    2948: ee42 ca25    	vmla.f32	s25, s4, s11
    294c: fe82 9aec    	vminnm.f32	s18, s5, s25
    2950: ee3a cac9    	vsub.f32	s24, s21, s18
    2954: eeb8 9a00    	vmov.f32	s18, #-2.000000e+00
    2958: eeb4 ca49    	vcmp.f32	s24, s18
    295c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2960: f77e ad9e    	ble.w	0x14a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xca0> @ imm = #-0x14c4
    2964: eef4 2a6c    	vcmp.f32	s5, s25
    2968: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    296c: f63e ad98    	bhi.w	0x14a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xca0> @ imm = #-0x14d0
    2970: eeb5 ca40    	vcmp.f32	s24, #0
    2974: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2978: f57e ad92    	bpl.w	0x14a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xca0> @ imm = #-0x14dc
    297c: eef0 2a66    	vmov.f32	s5, s13
    2980: ee4c 2a2a    	vmla.f32	s5, s24, s21
    2984: ed9f 9a71    	vldr	s18, [pc, #452]         @ 0x2b4c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x234c>
    2988: ee62 2a89    	vmul.f32	s5, s5, s18
    298c: ed9f 9a70    	vldr	s18, [pc, #448]         @ 0x2b50 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2350>
    2990: eef4 2a49    	vcmp.f32	s5, s18
    2994: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2998: f77e ad82    	ble.w	0x14a0 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xca0> @ imm = #-0x14fc
    299c: f7fe bdfa    	b.w	0x1594 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xd94> @ imm = #-0x140c
    29a0: f24c 304e    	movw	r0, #0xc34e
    29a4: f64f 12d8    	movw	r2, #0xf9d8
    29a8: f2c0 0000    	movt	r0, #0x0
    29ac: f2c0 0200    	movt	r2, #0x0
    29b0: a97c         	add	r1, sp, #0x1f0
    29b2: f007 fcd9    	bl	0xa368 <core::panicking::panic_fmt> @ imm = #0x79b2
    29b6: bf00         	nop
    29b8: f24c 304e    	movw	r0, #0xc34e
    29bc: f64f 12d8    	movw	r2, #0xf9d8
    29c0: f2c0 0000    	movt	r0, #0x0
    29c4: f2c0 0200    	movt	r2, #0x0
    29c8: a965         	add	r1, sp, #0x194
    29ca: f007 fccd    	bl	0xa368 <core::panicking::panic_fmt> @ imm = #0x799a
    29ce: bf00         	nop
    29d0: f1ba 0f00    	cmp.w	r10, #0x0
    29d4: f47f af22    	bne.w	0x281c <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x201c> @ imm = #-0x1bc
    29d8: f104 0120    	add.w	r1, r4, #0x20
    29dc: f104 0090    	add.w	r0, r4, #0x90
    29e0: 2270         	movs	r2, #0x70
    29e2: ed8d 8a08    	vstr	s16, [sp, #32]
    29e6: eeb0 8a43    	vmov.f32	s16, s6
    29ea: ed8d 9a09    	vstr	s18, [sp, #36]
    29ee: eeb0 9a44    	vmov.f32	s18, s8
    29f2: ed8d aa0a    	vstr	s20, [sp, #40]
    29f6: eeb0 aa45    	vmov.f32	s20, s10
    29fa: ed8d ba0d    	vstr	s22, [sp, #52]
    29fe: eeb0 ba46    	vmov.f32	s22, s12
    2a02: ed8d ca0e    	vstr	s24, [sp, #56]
    2a06: eeb0 ca47    	vmov.f32	s24, s14
    2a0a: ed8d da10    	vstr	s26, [sp, #64]
    2a0e: eeb0 da60    	vmov.f32	s26, s1
    2a12: ed8d ea12    	vstr	s28, [sp, #72]
    2a16: eeb0 ea61    	vmov.f32	s28, s3
    2a1a: ed8d fa14    	vstr	s30, [sp, #80]
    2a1e: eeb0 fa62    	vmov.f32	s30, s5
    2a22: edcd 8a16    	vstr	s17, [sp, #88]
    2a26: eef0 8a63    	vmov.f32	s17, s7
    2a2a: edcd 9a18    	vstr	s19, [sp, #96]
    2a2e: eef0 9a64    	vmov.f32	s19, s9
    2a32: edcd aa1b    	vstr	s21, [sp, #108]
    2a36: eef0 aa65    	vmov.f32	s21, s11
    2a3a: edcd 7a07    	vstr	s15, [sp, #28]
    2a3e: f009 fbe1    	bl	0xc204 <__aeabi_memcpy4> @ imm = #0x97c2
    2a42: ad58         	add	r5, sp, #0x160
    2a44: edc4 ba08    	vstr	s23, [r4, #32]
    2a48: edc4 da09    	vstr	s27, [r4, #36]
    2a4c: ed9d 0a07    	vldr	s0, [sp, #28]
    2a50: edc4 ea0a    	vstr	s29, [r4, #40]
    2a54: 4620         	mov	r0, r4
    2a56: edc4 fa0b    	vstr	s31, [r4, #44]
    2a5a: ed84 8a0c    	vstr	s16, [r4, #48]
    2a5e: ed84 9a0d    	vstr	s18, [r4, #52]
    2a62: ed84 aa0e    	vstr	s20, [r4, #56]
    2a66: ed84 ba0f    	vstr	s22, [r4, #60]
    2a6a: ed84 ca10    	vstr	s24, [r4, #64]
    2a6e: ed84 da11    	vstr	s26, [r4, #68]
    2a72: ed84 ea12    	vstr	s28, [r4, #72]
    2a76: ed84 fa13    	vstr	s30, [r4, #76]
    2a7a: edc4 8a14    	vstr	s17, [r4, #80]
    2a7e: edc4 9a15    	vstr	s19, [r4, #84]
    2a82: edc4 aa16    	vstr	s21, [r4, #88]
    2a86: edc4 ca17    	vstr	s25, [r4, #92]
    2a8a: ed84 0a18    	vstr	s0, [r4, #96]
    2a8e: ed9d 0a08    	vldr	s0, [sp, #32]
    2a92: ed84 0a19    	vstr	s0, [r4, #100]
    2a96: ed9d 0a09    	vldr	s0, [sp, #36]
    2a9a: ed84 0a1a    	vstr	s0, [r4, #104]
    2a9e: ed9d 0a0a    	vldr	s0, [sp, #40]
    2aa2: ed84 0a1b    	vstr	s0, [r4, #108]
    2aa6: ed9d 0a0d    	vldr	s0, [sp, #52]
    2aaa: ed84 0a1c    	vstr	s0, [r4, #112]
    2aae: ed9d 0a0e    	vldr	s0, [sp, #56]
    2ab2: ed84 0a1d    	vstr	s0, [r4, #116]
    2ab6: ed9d 0a10    	vldr	s0, [sp, #64]
    2aba: ed84 0a1e    	vstr	s0, [r4, #120]
    2abe: ed9d 0a12    	vldr	s0, [sp, #72]
    2ac2: ed84 0a1f    	vstr	s0, [r4, #124]
    2ac6: ed9d 0a14    	vldr	s0, [sp, #80]
    2aca: ed84 0a20    	vstr	s0, [r4, #128]
    2ace: ed9d 0a16    	vldr	s0, [sp, #88]
    2ad2: ed84 0a21    	vstr	s0, [r4, #132]
    2ad6: ed9d 0a18    	vldr	s0, [sp, #96]
    2ada: ed84 0a22    	vstr	s0, [r4, #136]
    2ade: ed9d 0a1b    	vldr	s0, [sp, #108]
    2ae2: ed84 0a23    	vstr	s0, [r4, #140]
    2ae6: cd4e         	ldm	r5!, {r1, r2, r3, r6}
    2ae8: c04e         	stm	r0!, {r1, r2, r3, r6}
    2aea: e895 004e    	ldm.w	r5, {r1, r2, r3, r6}
    2aee: c04e         	stm	r0!, {r1, r2, r3, r6}
    2af0: f8d4 0118    	ldr.w	r0, [r4, #0x118]
    2af4: 991d         	ldr	r1, [sp, #0x74]
    2af6: 3001         	adds	r0, #0x1
    2af8: ed9d 0a01    	vldr	s0, [sp, #4]
    2afc: ed81 0a01    	vstr	s0, [r1, #4]
    2b00: bf28         	it	hs
    2b02: f04f 30ff    	movhs.w	r0, #0xffffffff
    2b06: f8c4 0118    	str.w	r0, [r4, #0x118]
    2b0a: 985f         	ldr	r0, [sp, #0x17c]
    2b0c: 6008         	str	r0, [r1]
    2b0e: 981c         	ldr	r0, [sp, #0x70]
    2b10: 7208         	strb	r0, [r1, #0x8]
    2b12: 2001         	movs	r0, #0x1
    2b14: 7248         	strb	r0, [r1, #0x9]
    2b16: e68b         	b	0x2830 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2030> @ imm = #-0x2ea
    2b18: ed9f 4a0a    	vldr	s8, [pc, #40]           @ 0x2b44 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2344>
    2b1c: eeb0 3a44    	vmov.f32	s6, s8
    2b20: f7fe b9a6    	b.w	0xe70 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x670> @ imm = #-0x1cb4
    2b24: bf00         	nop
    2b26: bf00         	nop
    2b28: eddf 5a06    	vldr	s11, [pc, #24]          @ 0x2b44 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2344>
    2b2c: eeb0 7a65    	vmov.f32	s14, s11
    2b30: f7fe be4d    	b.w	0x17ce <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0xfce> @ imm = #-0x1366
    2b34: bf00         	nop
    2b36: bf00         	nop
    2b38: ed9f ea02    	vldr	s28, [pc, #8]           @ 0x2b44 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x2344>
    2b3c: eeb0 9a4e    	vmov.f32	s18, s28
    2b40: f7fe bfb5    	b.w	0x1aae <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>+0x12ae> @ imm = #-0x1096
    2b44: 00 00 c0 7f  	.word	0x7fc00000
    2b48: 99 76 cd 39  	.word	0x39cd7699
    2b4c: 2b 18 95 3b  	.word	0x3b95182b
    2b50: 95 bf d6 33  	.word	0x33d6bf95
    2b54: 00 00 00 80  	.word	0x80000000
    2b58: d2 4e da c3  	.word	0xc3da4ed2
    2b5c: d4 d4 d4 d4  	.word	0xd4d4d4d4

00002b60 <orange_dsp::exponential::observations::<false>>:
    2b60: b5f0         	push	{r4, r5, r6, r7, lr}
    2b62: af03         	add	r7, sp, #0xc
    2b64: e92d 0700    	push.w	{r8, r9, r10}
    2b68: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    2b6c: 4615         	mov	r5, r2
    2b6e: 2298         	movs	r2, #0x98
    2b70: 4604         	mov	r4, r0
    2b72: f009 faf9    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x95f2
    2b76: ed9f eb48    	vldr	d14, [pc, #288]         @ 0x2c98 <orange_dsp::exponential::observations::<false>+0x138>
    2b7a: ec95 0b1a    	vldmia	r5, {d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12}
    2b7e: f64e 6e28    	movw	lr, #0xee28
    2b82: f64b 58ee    	movw	r8, #0xbdee
    2b86: f643 19cc    	movw	r9, #0x39cc
    2b8a: f242 1a00    	movw	r10, #0x2100
    2b8e: ed94 db00    	vldr	d13, [r4]
    2b92: f104 0008    	add.w	r0, r4, #0x8
    2b96: f04f 0c01    	mov.w	r12, #0x1
    2b9a: ee00 db0e    	vmla.f64	d13, d0, d14
    2b9e: 2200         	movs	r2, #0x0
    2ba0: f2c0 0e00    	movt	lr, #0x0
    2ba4: f2c0 0807    	movt	r8, #0x7
    2ba8: f2c0 0907    	movt	r9, #0x7
    2bac: f2c0 0a04    	movt	r10, #0x4
    2bb0: 2301         	movs	r3, #0x1
    2bb2: ed84 db00    	vstr	d13, [r4]
    2bb6: e006         	b	0x2bc6 <orange_dsp::exponential::observations::<false>+0x66> @ imm = #0xc
    2bb8: 3268         	adds	r2, #0x68
    2bba: 3301         	adds	r3, #0x1
    2bbc: f5b2 6fea    	cmp.w	r2, #0x750
    2bc0: f100 0008    	add.w	r0, r0, #0x8
    2bc4: d060         	beq	0x2c88 <orange_dsp::exponential::observations::<false>+0x128> @ imm = #0xc0
    2bc6: eb0e 0602    	add.w	r6, lr, r2
    2bca: fa0c f103    	lsl.w	r1, r12, r3
    2bce: ed90 db00    	vldr	d13, [r0]
    2bd2: ea11 0508    	ands.w	r5, r1, r8
    2bd6: ed96 eb1a    	vldr	d14, [r6, #104]
    2bda: ee0e db00    	vmla.f64	d13, d14, d0
    2bde: ed80 db00    	vstr	d13, [r0]
    2be2: d005         	beq	0x2bf0 <orange_dsp::exponential::observations::<false>+0x90> @ imm = #0xa
    2be4: ed96 eb1c    	vldr	d14, [r6, #112]
    2be8: ee0e db01    	vmla.f64	d13, d14, d1
    2bec: ed80 db00    	vstr	d13, [r0]
    2bf0: ea11 0409    	ands.w	r4, r1, r9
    2bf4: d005         	beq	0x2c02 <orange_dsp::exponential::observations::<false>+0xa2> @ imm = #0xa
    2bf6: ed96 eb1e    	vldr	d14, [r6, #120]
    2bfa: ee0e db02    	vmla.f64	d13, d14, d2
    2bfe: ed80 db00    	vstr	d13, [r0]
    2c02: ed96 eb20    	vldr	d14, [r6, #128]
    2c06: ee0e db03    	vmla.f64	d13, d14, d3
    2c0a: ed80 db00    	vstr	d13, [r0]
    2c0e: b12d         	cbz	r5, 0x2c1c <orange_dsp::exponential::observations::<false>+0xbc> @ imm = #0xa
    2c10: ed96 eb22    	vldr	d14, [r6, #136]
    2c14: ee0e db04    	vmla.f64	d13, d14, d4
    2c18: ed80 db00    	vstr	d13, [r0]
    2c1c: b14c         	cbz	r4, 0x2c32 <orange_dsp::exponential::observations::<false>+0xd2> @ imm = #0x12
    2c1e: ed96 eb24    	vldr	d14, [r6, #144]
    2c22: ed96 fb26    	vldr	d15, [r6, #152]
    2c26: ee0e db05    	vmla.f64	d13, d14, d5
    2c2a: ee0f db06    	vmla.f64	d13, d15, d6
    2c2e: ed80 db00    	vstr	d13, [r0]
    2c32: ea11 010a    	ands.w	r1, r1, r10
    2c36: d005         	beq	0x2c44 <orange_dsp::exponential::observations::<false>+0xe4> @ imm = #0xa
    2c38: ed96 eb28    	vldr	d14, [r6, #160]
    2c3c: ee0e db07    	vmla.f64	d13, d14, d7
    2c40: ed80 db00    	vstr	d13, [r0]
    2c44: ed96 eb2a    	vldr	d14, [r6, #168]
    2c48: ee0e db08    	vmla.f64	d13, d14, d8
    2c4c: ed80 db00    	vstr	d13, [r0]
    2c50: b12d         	cbz	r5, 0x2c5e <orange_dsp::exponential::observations::<false>+0xfe> @ imm = #0xa
    2c52: ed96 eb2c    	vldr	d14, [r6, #176]
    2c56: ee0e db09    	vmla.f64	d13, d14, d9
    2c5a: ed80 db00    	vstr	d13, [r0]
    2c5e: b14c         	cbz	r4, 0x2c74 <orange_dsp::exponential::observations::<false>+0x114> @ imm = #0x12
    2c60: ed96 eb2e    	vldr	d14, [r6, #184]
    2c64: ed96 fb30    	vldr	d15, [r6, #192]
    2c68: ee0e db0a    	vmla.f64	d13, d14, d10
    2c6c: ee0f db0b    	vmla.f64	d13, d15, d11
    2c70: ed80 db00    	vstr	d13, [r0]
    2c74: 2900         	cmp	r1, #0x0
    2c76: d09f         	beq	0x2bb8 <orange_dsp::exponential::observations::<false>+0x58> @ imm = #-0xc2
    2c78: ed96 eb32    	vldr	d14, [r6, #200]
    2c7c: ee0e db0c    	vmla.f64	d13, d14, d12
    2c80: ed80 db00    	vstr	d13, [r0]
    2c84: e798         	b	0x2bb8 <orange_dsp::exponential::observations::<false>+0x58> @ imm = #-0xd0
    2c86: bf00         	nop
    2c88: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    2c8c: e8bd 0700    	pop.w	{r8, r9, r10}
    2c90: bdf0         	pop	{r4, r5, r6, r7, pc}
    2c92: bf00         	nop
    2c94: bf00         	nop
    2c96: bf00         	nop
    2c98: fb f0 9b 24  	.word	0x249bf0fb
    2c9c: c5 11 76 c0  	.word	0xc07611c5

00002ca0 <orange_dsp::exponential::block::<false, 0, 1>>:
    2ca0: b5f0         	push	{r4, r5, r6, r7, lr}
    2ca2: af03         	add	r7, sp, #0xc
    2ca4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    2ca8: b081         	sub	sp, #0x4
    2caa: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    2cae: b0fc         	sub	sp, #0x1f0
    2cb0: 46e9         	mov	r9, sp
    2cb2: 4680         	mov	r8, r0
    2cb4: 4648         	mov	r0, r9
    2cb6: 4615         	mov	r5, r2
    2cb8: 460e         	mov	r6, r1
    2cba: f001 fc49    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x1892
    2cbe: eeb6 bb00    	vmov.f64	d11, #5.000000e-01
    2cc2: f64f 7bff    	movw	r11, #0xffff
    2cc6: eeb5 cb00    	vmov.f64	d12, #2.500000e-01
    2cca: 2400         	movs	r4, #0x0
    2ccc: f6c7 7bef    	movt	r11, #0x7fef
    2cd0: f10d 0af8    	add.w	r10, sp, #0xf8
    2cd4: ed95 eb00    	vldr	d14, [r5]
    2cd8: ed9f 9bcd    	vldr	d9, [pc, #820]          @ 0x3010 <orange_dsp::exponential::block::<false, 0, 1>+0x370>
    2cdc: ed9f abce    	vldr	d10, [pc, #824]         @ 0x3018 <orange_dsp::exponential::block::<false, 0, 1>+0x378>
    2ce0: e00a         	b	0x2cf8 <orange_dsp::exponential::block::<false, 0, 1>+0x58> @ imm = #0x14
    2ce2: bf00         	nop
    2ce4: bf00         	nop
    2ce6: bf00         	nop
    2ce8: 22f8         	movs	r2, #0xf8
    2cea: 4648         	mov	r0, r9
    2cec: 4651         	mov	r1, r10
    2cee: 3401         	adds	r4, #0x1
    2cf0: f009 fa3a    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x9474
    2cf4: eeb0 eb4f    	vmov.f64	d14, d15
    2cf8: 2c18         	cmp	r4, #0x18
    2cfa: f000 8169    	beq.w	0x2fd0 <orange_dsp::exponential::block::<false, 0, 1>+0x330> @ imm = #0x2d2
    2cfe: ed9d 8b3c    	vldr	d8, [sp, #240]
    2d02: eeb4 8b49    	vcmp.f64	d8, d9
    2d06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d0a: f100 816d    	bmi.w	0x2fe8 <orange_dsp::exponential::block::<false, 0, 1>+0x348> @ imm = #0x2da
    2d0e: ed9d 0b0a    	vldr	d0, [sp, #40]
    2d12: ec51 0b10    	vmov	r0, r1, d0
    2d16: f021 4000    	bic	r0, r1, #0x80000000
    2d1a: 4558         	cmp	r0, r11
    2d1c: f04f 0000    	mov.w	r0, #0x0
    2d20: f300 8168    	bgt.w	0x2ff4 <orange_dsp::exponential::block::<false, 0, 1>+0x354> @ imm = #0x2d0
    2d24: eeb0 1bc0    	vabs.f64	d1, d0
    2d28: eeb4 1b4a    	vcmp.f64	d1, d10
    2d2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d30: f100 8160    	bmi.w	0x2ff4 <orange_dsp::exponential::block::<false, 0, 1>+0x354> @ imm = #0x2c0
    2d34: ed9d 1b00    	vldr	d1, [sp]
    2d38: 4650         	mov	r0, r10
    2d3a: 4631         	mov	r1, r6
    2d3c: ee81 db00    	vdiv.f64	d13, d1, d0
    2d40: 462a         	mov	r2, r5
    2d42: ee3e fb0d    	vadd.f64	d15, d14, d13
    2d46: ed85 fb00    	vstr	d15, [r5]
    2d4a: f001 fc01    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x1802
    2d4e: ed9d 0b7a    	vldr	d0, [sp, #488]
    2d52: eeb4 0b48    	vcmp.f64	d0, d8
    2d56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d5a: d4c5         	bmi	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x76
    2d5c: eeb0 fb4e    	vmov.f64	d15, d14
    2d60: 4650         	mov	r0, r10
    2d62: 4631         	mov	r1, r6
    2d64: 462a         	mov	r2, r5
    2d66: ee0d fb0b    	vmla.f64	d15, d13, d11
    2d6a: ed85 fb00    	vstr	d15, [r5]
    2d6e: f001 fbef    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x17de
    2d72: ed9d 0b7a    	vldr	d0, [sp, #488]
    2d76: eeb4 0b48    	vcmp.f64	d0, d8
    2d7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d7e: d4b3         	bmi	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x9a
    2d80: eeb0 fb4e    	vmov.f64	d15, d14
    2d84: 4650         	mov	r0, r10
    2d86: 4631         	mov	r1, r6
    2d88: 462a         	mov	r2, r5
    2d8a: ee0d fb0c    	vmla.f64	d15, d13, d12
    2d8e: ed85 fb00    	vstr	d15, [r5]
    2d92: f001 fbdd    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x17ba
    2d96: ed9d 0b7a    	vldr	d0, [sp, #488]
    2d9a: eeb4 0b48    	vcmp.f64	d0, d8
    2d9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2da2: d4a1         	bmi	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0xbe
    2da4: eeb4 0b00    	vmov.f64	d0, #1.250000e-01
    2da8: 4650         	mov	r0, r10
    2daa: eeb0 fb4e    	vmov.f64	d15, d14
    2dae: 4631         	mov	r1, r6
    2db0: 462a         	mov	r2, r5
    2db2: ee0d fb00    	vmla.f64	d15, d13, d0
    2db6: ed85 fb00    	vstr	d15, [r5]
    2dba: f001 fbc9    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x1792
    2dbe: ed9d 0b7a    	vldr	d0, [sp, #488]
    2dc2: eeb4 0b48    	vcmp.f64	d0, d8
    2dc6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2dca: d48d         	bmi	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0xe6
    2dcc: ed9f 0b94    	vldr	d0, [pc, #592]          @ 0x3020 <orange_dsp::exponential::block::<false, 0, 1>+0x380>
    2dd0: eeb0 fb4e    	vmov.f64	d15, d14
    2dd4: 4650         	mov	r0, r10
    2dd6: 4631         	mov	r1, r6
    2dd8: 462a         	mov	r2, r5
    2dda: ee0d fb00    	vmla.f64	d15, d13, d0
    2dde: ed85 fb00    	vstr	d15, [r5]
    2de2: f001 fbb5    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x176a
    2de6: ed9d 0b7a    	vldr	d0, [sp, #488]
    2dea: eeb4 0b48    	vcmp.f64	d0, d8
    2dee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2df2: f53f af79    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x10e
    2df6: ed9f 0b8c    	vldr	d0, [pc, #560]          @ 0x3028 <orange_dsp::exponential::block::<false, 0, 1>+0x388>
    2dfa: eeb0 fb4e    	vmov.f64	d15, d14
    2dfe: 4650         	mov	r0, r10
    2e00: 4631         	mov	r1, r6
    2e02: 462a         	mov	r2, r5
    2e04: ee0d fb00    	vmla.f64	d15, d13, d0
    2e08: ed85 fb00    	vstr	d15, [r5]
    2e0c: f001 fba0    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x1740
    2e10: ed9d 0b7a    	vldr	d0, [sp, #488]
    2e14: eeb4 0b48    	vcmp.f64	d0, d8
    2e18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e1c: f53f af64    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x138
    2e20: ed9f 0b83    	vldr	d0, [pc, #524]          @ 0x3030 <orange_dsp::exponential::block::<false, 0, 1>+0x390>
    2e24: eeb0 fb4e    	vmov.f64	d15, d14
    2e28: 4650         	mov	r0, r10
    2e2a: 4631         	mov	r1, r6
    2e2c: 462a         	mov	r2, r5
    2e2e: ee0d fb00    	vmla.f64	d15, d13, d0
    2e32: ed85 fb00    	vstr	d15, [r5]
    2e36: f001 fb8b    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x1716
    2e3a: ed9d 0b7a    	vldr	d0, [sp, #488]
    2e3e: eeb4 0b48    	vcmp.f64	d0, d8
    2e42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e46: f53f af4f    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x162
    2e4a: ed9f 0b7b    	vldr	d0, [pc, #492]          @ 0x3038 <orange_dsp::exponential::block::<false, 0, 1>+0x398>
    2e4e: eeb0 fb4e    	vmov.f64	d15, d14
    2e52: 4650         	mov	r0, r10
    2e54: 4631         	mov	r1, r6
    2e56: 462a         	mov	r2, r5
    2e58: ee0d fb00    	vmla.f64	d15, d13, d0
    2e5c: ed85 fb00    	vstr	d15, [r5]
    2e60: f001 fb76    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x16ec
    2e64: ed9d 0b7a    	vldr	d0, [sp, #488]
    2e68: eeb4 0b48    	vcmp.f64	d0, d8
    2e6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e70: f53f af3a    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x18c
    2e74: ed9f 0b72    	vldr	d0, [pc, #456]          @ 0x3040 <orange_dsp::exponential::block::<false, 0, 1>+0x3a0>
    2e78: eeb0 fb4e    	vmov.f64	d15, d14
    2e7c: 4650         	mov	r0, r10
    2e7e: 4631         	mov	r1, r6
    2e80: 462a         	mov	r2, r5
    2e82: ee0d fb00    	vmla.f64	d15, d13, d0
    2e86: ed85 fb00    	vstr	d15, [r5]
    2e8a: f001 fb61    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x16c2
    2e8e: ed9d 0b7a    	vldr	d0, [sp, #488]
    2e92: eeb4 0b48    	vcmp.f64	d0, d8
    2e96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e9a: f53f af25    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x1b6
    2e9e: ed9f 0b6a    	vldr	d0, [pc, #424]          @ 0x3048 <orange_dsp::exponential::block::<false, 0, 1>+0x3a8>
    2ea2: eeb0 fb4e    	vmov.f64	d15, d14
    2ea6: 4650         	mov	r0, r10
    2ea8: 4631         	mov	r1, r6
    2eaa: 462a         	mov	r2, r5
    2eac: ee0d fb00    	vmla.f64	d15, d13, d0
    2eb0: ed85 fb00    	vstr	d15, [r5]
    2eb4: f001 fb4c    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x1698
    2eb8: ed9d 0b7a    	vldr	d0, [sp, #488]
    2ebc: eeb4 0b48    	vcmp.f64	d0, d8
    2ec0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ec4: f53f af10    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x1e0
    2ec8: ed9f 0b61    	vldr	d0, [pc, #388]          @ 0x3050 <orange_dsp::exponential::block::<false, 0, 1>+0x3b0>
    2ecc: eeb0 fb4e    	vmov.f64	d15, d14
    2ed0: 4650         	mov	r0, r10
    2ed2: 4631         	mov	r1, r6
    2ed4: 462a         	mov	r2, r5
    2ed6: ee0d fb00    	vmla.f64	d15, d13, d0
    2eda: ed85 fb00    	vstr	d15, [r5]
    2ede: f001 fb37    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x166e
    2ee2: ed9d 0b7a    	vldr	d0, [sp, #488]
    2ee6: eeb4 0b48    	vcmp.f64	d0, d8
    2eea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2eee: f53f aefb    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x20a
    2ef2: ed9f 0b59    	vldr	d0, [pc, #356]          @ 0x3058 <orange_dsp::exponential::block::<false, 0, 1>+0x3b8>
    2ef6: eeb0 fb4e    	vmov.f64	d15, d14
    2efa: 4650         	mov	r0, r10
    2efc: 4631         	mov	r1, r6
    2efe: 462a         	mov	r2, r5
    2f00: ee0d fb00    	vmla.f64	d15, d13, d0
    2f04: ed85 fb00    	vstr	d15, [r5]
    2f08: f001 fb22    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x1644
    2f0c: ed9d 0b7a    	vldr	d0, [sp, #488]
    2f10: eeb4 0b48    	vcmp.f64	d0, d8
    2f14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f18: f53f aee6    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x234
    2f1c: ed9f 0b50    	vldr	d0, [pc, #320]          @ 0x3060 <orange_dsp::exponential::block::<false, 0, 1>+0x3c0>
    2f20: eeb0 fb4e    	vmov.f64	d15, d14
    2f24: 4650         	mov	r0, r10
    2f26: 4631         	mov	r1, r6
    2f28: 462a         	mov	r2, r5
    2f2a: ee0d fb00    	vmla.f64	d15, d13, d0
    2f2e: ed85 fb00    	vstr	d15, [r5]
    2f32: f001 fb0d    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x161a
    2f36: ed9d 0b7a    	vldr	d0, [sp, #488]
    2f3a: eeb4 0b48    	vcmp.f64	d0, d8
    2f3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f42: f53f aed1    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x25e
    2f46: ed9f 0b48    	vldr	d0, [pc, #288]          @ 0x3068 <orange_dsp::exponential::block::<false, 0, 1>+0x3c8>
    2f4a: eeb0 fb4e    	vmov.f64	d15, d14
    2f4e: 4650         	mov	r0, r10
    2f50: 4631         	mov	r1, r6
    2f52: 462a         	mov	r2, r5
    2f54: ee0d fb00    	vmla.f64	d15, d13, d0
    2f58: ed85 fb00    	vstr	d15, [r5]
    2f5c: f001 faf8    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x15f0
    2f60: ed9d 0b7a    	vldr	d0, [sp, #488]
    2f64: eeb4 0b48    	vcmp.f64	d0, d8
    2f68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f6c: f53f aebc    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x288
    2f70: ed9f 0b3f    	vldr	d0, [pc, #252]          @ 0x3070 <orange_dsp::exponential::block::<false, 0, 1>+0x3d0>
    2f74: eeb0 fb4e    	vmov.f64	d15, d14
    2f78: 4650         	mov	r0, r10
    2f7a: 4631         	mov	r1, r6
    2f7c: 462a         	mov	r2, r5
    2f7e: ee0d fb00    	vmla.f64	d15, d13, d0
    2f82: ed85 fb00    	vstr	d15, [r5]
    2f86: f001 fae3    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x15c6
    2f8a: ed9d 0b7a    	vldr	d0, [sp, #488]
    2f8e: eeb4 0b48    	vcmp.f64	d0, d8
    2f92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f96: f53f aea7    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x2b2
    2f9a: ed9f 0b37    	vldr	d0, [pc, #220]          @ 0x3078 <orange_dsp::exponential::block::<false, 0, 1>+0x3d8>
    2f9e: eeb0 fb4e    	vmov.f64	d15, d14
    2fa2: 4650         	mov	r0, r10
    2fa4: 4631         	mov	r1, r6
    2fa6: 462a         	mov	r2, r5
    2fa8: ee0d fb00    	vmla.f64	d15, d13, d0
    2fac: ed85 fb00    	vstr	d15, [r5]
    2fb0: f001 face    	bl	0x4550 <orange_dsp::exponential::evaluate::<false, 0, 1>> @ imm = #0x159c
    2fb4: ed9d 0b7a    	vldr	d0, [sp, #488]
    2fb8: eeb4 0b48    	vcmp.f64	d0, d8
    2fbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fc0: f53f ae92    	bmi.w	0x2ce8 <orange_dsp::exponential::block::<false, 0, 1>+0x48> @ imm = #-0x2dc
    2fc4: 2000         	movs	r0, #0x0
    2fc6: ed85 eb00    	vstr	d14, [r5]
    2fca: e013         	b	0x2ff4 <orange_dsp::exponential::block::<false, 0, 1>+0x354> @ imm = #0x26
    2fcc: bf00         	nop
    2fce: bf00         	nop
    2fd0: ed9d 8b3c    	vldr	d8, [sp, #240]
    2fd4: eeb4 8b49    	vcmp.f64	d8, d9
    2fd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fdc: d508         	bpl	0x2ff0 <orange_dsp::exponential::block::<false, 0, 1>+0x350> @ imm = #0x10
    2fde: 2001         	movs	r0, #0x1
    2fe0: e007         	b	0x2ff2 <orange_dsp::exponential::block::<false, 0, 1>+0x352> @ imm = #0xe
    2fe2: bf00         	nop
    2fe4: bf00         	nop
    2fe6: bf00         	nop
    2fe8: 2001         	movs	r0, #0x1
    2fea: e003         	b	0x2ff4 <orange_dsp::exponential::block::<false, 0, 1>+0x354> @ imm = #0x6
    2fec: bf00         	nop
    2fee: bf00         	nop
    2ff0: 2000         	movs	r0, #0x0
    2ff2: 2418         	movs	r4, #0x18
    2ff4: ed88 8b00    	vstr	d8, [r8]
    2ff8: f888 4008    	strb.w	r4, [r8, #0x8]
    2ffc: f888 0009    	strb.w	r0, [r8, #0x9]
    3000: b07c         	add	sp, #0x1f0
    3002: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    3006: b001         	add	sp, #0x4
    3008: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    300c: bdf0         	pop	{r4, r5, r6, r7, pc}
    300e: bf00         	nop
    3010: bb bd d7 d9  	.word	0xd9d7bdbb
    3014: df 7c db 3d  	.word	0x3ddb7cdf
    3018: a7 8e a8 99  	.word	0x99a88ea7
    301c: c2 57 f3 3a  	.word	0x3af357c2
    3020: 00 00 00 00  	.word	0x00000000
    3024: 00 00 b0 3f  	.word	0x3fb00000
    3028: 00 00 00 00  	.word	0x00000000
    302c: 00 00 a0 3f  	.word	0x3fa00000
    3030: 00 00 00 00  	.word	0x00000000
    3034: 00 00 90 3f  	.word	0x3f900000
    3038: 00 00 00 00  	.word	0x00000000
    303c: 00 00 80 3f  	.word	0x3f800000
    3040: 00 00 00 00  	.word	0x00000000
    3044: 00 00 70 3f  	.word	0x3f700000
    3048: 00 00 00 00  	.word	0x00000000
    304c: 00 00 60 3f  	.word	0x3f600000
    3050: 00 00 00 00  	.word	0x00000000
    3054: 00 00 50 3f  	.word	0x3f500000
    3058: 00 00 00 00  	.word	0x00000000
    305c: 00 00 40 3f  	.word	0x3f400000
    3060: 00 00 00 00  	.word	0x00000000
    3064: 00 00 30 3f  	.word	0x3f300000
    3068: 00 00 00 00  	.word	0x00000000
    306c: 00 00 20 3f  	.word	0x3f200000
    3070: 00 00 00 00  	.word	0x00000000
    3074: 00 00 10 3f  	.word	0x3f100000
    3078: 00 00 00 00  	.word	0x00000000
    307c: 00 00 00 3f  	.word	0x3f000000

00003080 <orange_dsp::exponential::block::<false, 1, 2>>:
    3080: b5f0         	push	{r4, r5, r6, r7, lr}
    3082: af03         	add	r7, sp, #0xc
    3084: e92d 0f00    	push.w	{r8, r9, r10, r11}
    3088: b081         	sub	sp, #0x4
    308a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    308e: f5ad 7d36    	sub.w	sp, sp, #0x2d8
    3092: ae04         	add	r6, sp, #0x10
    3094: 9000         	str	r0, [sp]
    3096: 4630         	mov	r0, r6
    3098: 4691         	mov	r9, r2
    309a: 4688         	mov	r8, r1
    309c: f001 fc00    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x1800
    30a0: ed99 eb06    	vldr	d14, [r9, #24]
    30a4: f106 0028    	add.w	r0, r6, #0x28
    30a8: 2600         	movs	r6, #0x0
    30aa: ed99 8b10    	vldr	d8, [r9, #64]
    30ae: 9002         	str	r0, [sp, #0x8]
    30b0: ed9f 9b03    	vldr	d9, [pc, #12]           @ 0x30c0 <orange_dsp::exponential::block::<false, 1, 2>+0x40>
    30b4: f8cd 8004    	str.w	r8, [sp, #0x4]
    30b8: e015         	b	0x30e6 <orange_dsp::exponential::block::<false, 1, 2>+0x66> @ imm = #0x2a
    30ba: bf00         	nop
    30bc: bf00         	nop
    30be: bf00         	nop
    30c0: a7 8e a8 99  	.word	0x99a88ea7
    30c4: c2 57 f3 3a  	.word	0x3af357c2
    30c8: bb bd d7 d9  	.word	0xd9d7bdbb
    30cc: df 7c db 3d  	.word	0x3ddb7cdf
    30d0: 9e03         	ldr	r6, [sp, #0xc]
    30d2: 22f8         	movs	r2, #0xf8
    30d4: a804         	add	r0, sp, #0x10
    30d6: 4621         	mov	r1, r4
    30d8: 3601         	adds	r6, #0x1
    30da: f009 f845    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x908a
    30de: eeb0 8b4a    	vmov.f64	d8, d10
    30e2: eeb0 eb4b    	vmov.f64	d14, d11
    30e6: 2e18         	cmp	r6, #0x18
    30e8: f000 8236    	beq.w	0x3558 <orange_dsp::exponential::block::<false, 1, 2>+0x4d8> @ imm = #0x46c
    30ec: ed9d fb40    	vldr	d15, [sp, #256]
    30f0: ed1f 0b0b    	vldr	d0, [pc, #-44]          @ 0x30c8 <orange_dsp::exponential::block::<false, 1, 2>+0x48>
    30f4: eeb4 fb40    	vcmp.f64	d15, d0
    30f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    30fc: f100 8236    	bmi.w	0x356c <orange_dsp::exponential::block::<false, 1, 2>+0x4ec> @ imm = #0x46c
    3100: 9603         	str	r6, [sp, #0xc]
    3102: ae46         	add	r6, sp, #0x118
    3104: 9d02         	ldr	r5, [sp, #0x8]
    3106: 9807         	ldr	r0, [sp, #0x1c]
    3108: 9043         	str	r0, [sp, #0x10c]
    310a: 9806         	ldr	r0, [sp, #0x18]
    310c: 9042         	str	r0, [sp, #0x108]
    310e: 22c8         	movs	r2, #0xc8
    3110: 4630         	mov	r0, r6
    3112: 4629         	mov	r1, r5
    3114: f8dd a014    	ldr.w	r10, [sp, #0x14]
    3118: f8cd a114    	str.w	r10, [sp, #0x114]
    311c: f8dd b010    	ldr.w	r11, [sp, #0x10]
    3120: f8cd b110    	str.w	r11, [sp, #0x110]
    3124: f009 f820    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x9040
    3128: ed9d 0b46    	vldr	d0, [sp, #280]
    312c: 4634         	mov	r4, r6
    312e: f50d 7888    	add.w	r8, sp, #0x110
    3132: ed9d 1b50    	vldr	d1, [sp, #320]
    3136: a842         	add	r0, sp, #0x108
    3138: 2228         	movs	r2, #0x28
    313a: eeb0 1bc1    	vabs.f64	d1, d1
    313e: eeb0 0bc0    	vabs.f64	d0, d0
    3142: eeb4 1b40    	vcmp.f64	d1, d0
    3146: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    314a: bfc8         	it	gt
    314c: 3428         	addgt	r4, #0x28
    314e: bfc8         	it	gt
    3150: 4680         	movgt	r8, r0
    3152: 4630         	mov	r0, r6
    3154: 4621         	mov	r1, r4
    3156: f008 fb9b    	bl	0xb890 <__aeabi_memmove8> @ imm = #0x8736
    315a: 4628         	mov	r0, r5
    315c: c86e         	ldm	r0!, {r1, r2, r3, r5, r6}
    315e: c46e         	stm	r4!, {r1, r2, r3, r5, r6}
    3160: e890 006e    	ldm.w	r0, {r1, r2, r3, r5, r6}
    3164: c46e         	stm	r4!, {r1, r2, r3, r5, r6}
    3166: ed9d 0b46    	vldr	d0, [sp, #280]
    316a: ec51 0b10    	vmov	r0, r1, d0
    316e: e9d8 0200    	ldrd	r0, r2, [r8]
    3172: 9245         	str	r2, [sp, #0x114]
    3174: f64f 72ff    	movw	r2, #0xffff
    3178: 9044         	str	r0, [sp, #0x110]
    317a: f021 4000    	bic	r0, r1, #0x80000000
    317e: f6c7 72ef    	movt	r2, #0x7fef
    3182: 4290         	cmp	r0, r2
    3184: e9c8 ba00    	strd	r11, r10, [r8]
    3188: f300 81de    	bgt.w	0x3548 <orange_dsp::exponential::block::<false, 1, 2>+0x4c8> @ imm = #0x3bc
    318c: eeb0 1bc0    	vabs.f64	d1, d0
    3190: eeb4 1b49    	vcmp.f64	d1, d9
    3194: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3198: f100 81d6    	bmi.w	0x3548 <orange_dsp::exponential::block::<false, 1, 2>+0x4c8> @ imm = #0x3ac
    319c: ed9d 2b50    	vldr	d2, [sp, #320]
    31a0: ee82 2b00    	vdiv.f64	d2, d2, d0
    31a4: ed9d 1b48    	vldr	d1, [sp, #288]
    31a8: ed9d 3b52    	vldr	d3, [sp, #328]
    31ac: ee02 3b41    	vmls.f64	d3, d2, d1
    31b0: ec51 0b13    	vmov	r0, r1, d3
    31b4: f021 4000    	bic	r0, r1, #0x80000000
    31b8: 4290         	cmp	r0, r2
    31ba: f300 81c5    	bgt.w	0x3548 <orange_dsp::exponential::block::<false, 1, 2>+0x4c8> @ imm = #0x38a
    31be: eeb0 4bc3    	vabs.f64	d4, d3
    31c2: eeb4 4b49    	vcmp.f64	d4, d9
    31c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    31ca: f100 81bd    	bmi.w	0x3548 <orange_dsp::exponential::block::<false, 1, 2>+0x4c8> @ imm = #0x37a
    31ce: ed9d 5b44    	vldr	d5, [sp, #272]
    31d2: ac78         	add	r4, sp, #0x1e0
    31d4: f8dd 8004    	ldr.w	r8, [sp, #0x4]
    31d8: ed9d 4b42    	vldr	d4, [sp, #264]
    31dc: 4620         	mov	r0, r4
    31de: 4641         	mov	r1, r8
    31e0: ee02 4b45    	vmls.f64	d4, d2, d5
    31e4: 464a         	mov	r2, r9
    31e6: ee84 db03    	vdiv.f64	d13, d4, d3
    31ea: ee01 5b4d    	vmls.f64	d5, d1, d13
    31ee: ee38 ab0d    	vadd.f64	d10, d8, d13
    31f2: ee85 cb00    	vdiv.f64	d12, d5, d0
    31f6: ed89 ab10    	vstr	d10, [r9, #64]
    31fa: ee3e bb0c    	vadd.f64	d11, d14, d12
    31fe: ed89 bb06    	vstr	d11, [r9, #24]
    3202: f001 fb4d    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x169a
    3206: ed9d 0bb4    	vldr	d0, [sp, #720]
    320a: eeb4 0b4f    	vcmp.f64	d0, d15
    320e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3212: f53f af5d    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x146
    3216: eeb6 0b00    	vmov.f64	d0, #5.000000e-01
    321a: 4620         	mov	r0, r4
    321c: eeb0 bb4e    	vmov.f64	d11, d14
    3220: 4641         	mov	r1, r8
    3222: eeb0 ab48    	vmov.f64	d10, d8
    3226: 464a         	mov	r2, r9
    3228: ee0c bb00    	vmla.f64	d11, d12, d0
    322c: ee0d ab00    	vmla.f64	d10, d13, d0
    3230: ed89 bb06    	vstr	d11, [r9, #24]
    3234: ed89 ab10    	vstr	d10, [r9, #64]
    3238: f001 fb32    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x1664
    323c: ed9d 0bb4    	vldr	d0, [sp, #720]
    3240: eeb4 0b4f    	vcmp.f64	d0, d15
    3244: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3248: f53f af42    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x17c
    324c: eeb5 0b00    	vmov.f64	d0, #2.500000e-01
    3250: 4620         	mov	r0, r4
    3252: eeb0 bb4e    	vmov.f64	d11, d14
    3256: 4641         	mov	r1, r8
    3258: eeb0 ab48    	vmov.f64	d10, d8
    325c: 464a         	mov	r2, r9
    325e: ee0c bb00    	vmla.f64	d11, d12, d0
    3262: ee0d ab00    	vmla.f64	d10, d13, d0
    3266: ed89 bb06    	vstr	d11, [r9, #24]
    326a: ed89 ab10    	vstr	d10, [r9, #64]
    326e: f001 fb17    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x162e
    3272: ed9d 0bb4    	vldr	d0, [sp, #720]
    3276: eeb4 0b4f    	vcmp.f64	d0, d15
    327a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    327e: f53f af27    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x1b2
    3282: eeb4 0b00    	vmov.f64	d0, #1.250000e-01
    3286: 4620         	mov	r0, r4
    3288: eeb0 bb4e    	vmov.f64	d11, d14
    328c: 4641         	mov	r1, r8
    328e: eeb0 ab48    	vmov.f64	d10, d8
    3292: 464a         	mov	r2, r9
    3294: ee0c bb00    	vmla.f64	d11, d12, d0
    3298: ee0d ab00    	vmla.f64	d10, d13, d0
    329c: ed89 bb06    	vstr	d11, [r9, #24]
    32a0: ed89 ab10    	vstr	d10, [r9, #64]
    32a4: f001 fafc    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x15f8
    32a8: ed9d 0bb4    	vldr	d0, [sp, #720]
    32ac: eeb4 0b4f    	vcmp.f64	d0, d15
    32b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    32b4: f53f af0c    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x1e8
    32b8: ed9f 0bb9    	vldr	d0, [pc, #740]          @ 0x35a0 <orange_dsp::exponential::block::<false, 1, 2>+0x520>
    32bc: eeb0 bb4e    	vmov.f64	d11, d14
    32c0: 4620         	mov	r0, r4
    32c2: eeb0 ab48    	vmov.f64	d10, d8
    32c6: 4641         	mov	r1, r8
    32c8: 464a         	mov	r2, r9
    32ca: ee0c bb00    	vmla.f64	d11, d12, d0
    32ce: ee0d ab00    	vmla.f64	d10, d13, d0
    32d2: ed89 bb06    	vstr	d11, [r9, #24]
    32d6: ed89 ab10    	vstr	d10, [r9, #64]
    32da: f001 fae1    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x15c2
    32de: ed9d 0bb4    	vldr	d0, [sp, #720]
    32e2: eeb4 0b4f    	vcmp.f64	d0, d15
    32e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    32ea: f53f aef1    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x21e
    32ee: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0x35a8 <orange_dsp::exponential::block::<false, 1, 2>+0x528>
    32f2: eeb0 bb4e    	vmov.f64	d11, d14
    32f6: 4620         	mov	r0, r4
    32f8: eeb0 ab48    	vmov.f64	d10, d8
    32fc: 4641         	mov	r1, r8
    32fe: 464a         	mov	r2, r9
    3300: ee0c bb00    	vmla.f64	d11, d12, d0
    3304: ee0d ab00    	vmla.f64	d10, d13, d0
    3308: ed89 bb06    	vstr	d11, [r9, #24]
    330c: ed89 ab10    	vstr	d10, [r9, #64]
    3310: f001 fac6    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x158c
    3314: ed9d 0bb4    	vldr	d0, [sp, #720]
    3318: eeb4 0b4f    	vcmp.f64	d0, d15
    331c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3320: f53f aed6    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x254
    3324: ed9f 0ba2    	vldr	d0, [pc, #648]          @ 0x35b0 <orange_dsp::exponential::block::<false, 1, 2>+0x530>
    3328: eeb0 bb4e    	vmov.f64	d11, d14
    332c: 4620         	mov	r0, r4
    332e: eeb0 ab48    	vmov.f64	d10, d8
    3332: 4641         	mov	r1, r8
    3334: 464a         	mov	r2, r9
    3336: ee0c bb00    	vmla.f64	d11, d12, d0
    333a: ee0d ab00    	vmla.f64	d10, d13, d0
    333e: ed89 bb06    	vstr	d11, [r9, #24]
    3342: ed89 ab10    	vstr	d10, [r9, #64]
    3346: f001 faab    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x1556
    334a: ed9d 0bb4    	vldr	d0, [sp, #720]
    334e: eeb4 0b4f    	vcmp.f64	d0, d15
    3352: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3356: f53f aebb    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x28a
    335a: ed9f 0b97    	vldr	d0, [pc, #604]          @ 0x35b8 <orange_dsp::exponential::block::<false, 1, 2>+0x538>
    335e: eeb0 bb4e    	vmov.f64	d11, d14
    3362: 4620         	mov	r0, r4
    3364: eeb0 ab48    	vmov.f64	d10, d8
    3368: 4641         	mov	r1, r8
    336a: 464a         	mov	r2, r9
    336c: ee0c bb00    	vmla.f64	d11, d12, d0
    3370: ee0d ab00    	vmla.f64	d10, d13, d0
    3374: ed89 bb06    	vstr	d11, [r9, #24]
    3378: ed89 ab10    	vstr	d10, [r9, #64]
    337c: f001 fa90    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x1520
    3380: ed9d 0bb4    	vldr	d0, [sp, #720]
    3384: eeb4 0b4f    	vcmp.f64	d0, d15
    3388: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    338c: f53f aea0    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x2c0
    3390: ed9f 0b8b    	vldr	d0, [pc, #556]          @ 0x35c0 <orange_dsp::exponential::block::<false, 1, 2>+0x540>
    3394: eeb0 bb4e    	vmov.f64	d11, d14
    3398: 4620         	mov	r0, r4
    339a: eeb0 ab48    	vmov.f64	d10, d8
    339e: 4641         	mov	r1, r8
    33a0: 464a         	mov	r2, r9
    33a2: ee0c bb00    	vmla.f64	d11, d12, d0
    33a6: ee0d ab00    	vmla.f64	d10, d13, d0
    33aa: ed89 bb06    	vstr	d11, [r9, #24]
    33ae: ed89 ab10    	vstr	d10, [r9, #64]
    33b2: f001 fa75    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x14ea
    33b6: ed9d 0bb4    	vldr	d0, [sp, #720]
    33ba: eeb4 0b4f    	vcmp.f64	d0, d15
    33be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33c2: f53f ae85    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x2f6
    33c6: ed9f 0b80    	vldr	d0, [pc, #512]          @ 0x35c8 <orange_dsp::exponential::block::<false, 1, 2>+0x548>
    33ca: eeb0 bb4e    	vmov.f64	d11, d14
    33ce: 4620         	mov	r0, r4
    33d0: eeb0 ab48    	vmov.f64	d10, d8
    33d4: 4641         	mov	r1, r8
    33d6: 464a         	mov	r2, r9
    33d8: ee0c bb00    	vmla.f64	d11, d12, d0
    33dc: ee0d ab00    	vmla.f64	d10, d13, d0
    33e0: ed89 bb06    	vstr	d11, [r9, #24]
    33e4: ed89 ab10    	vstr	d10, [r9, #64]
    33e8: f001 fa5a    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x14b4
    33ec: ed9d 0bb4    	vldr	d0, [sp, #720]
    33f0: eeb4 0b4f    	vcmp.f64	d0, d15
    33f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33f8: f53f ae6a    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x32c
    33fc: ed9f 0b74    	vldr	d0, [pc, #464]          @ 0x35d0 <orange_dsp::exponential::block::<false, 1, 2>+0x550>
    3400: eeb0 bb4e    	vmov.f64	d11, d14
    3404: 4620         	mov	r0, r4
    3406: eeb0 ab48    	vmov.f64	d10, d8
    340a: 4641         	mov	r1, r8
    340c: 464a         	mov	r2, r9
    340e: ee0c bb00    	vmla.f64	d11, d12, d0
    3412: ee0d ab00    	vmla.f64	d10, d13, d0
    3416: ed89 bb06    	vstr	d11, [r9, #24]
    341a: ed89 ab10    	vstr	d10, [r9, #64]
    341e: f001 fa3f    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x147e
    3422: ed9d 0bb4    	vldr	d0, [sp, #720]
    3426: eeb4 0b4f    	vcmp.f64	d0, d15
    342a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    342e: f53f ae4f    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x362
    3432: ed9f 0b69    	vldr	d0, [pc, #420]          @ 0x35d8 <orange_dsp::exponential::block::<false, 1, 2>+0x558>
    3436: eeb0 bb4e    	vmov.f64	d11, d14
    343a: 4620         	mov	r0, r4
    343c: eeb0 ab48    	vmov.f64	d10, d8
    3440: 4641         	mov	r1, r8
    3442: 464a         	mov	r2, r9
    3444: ee0c bb00    	vmla.f64	d11, d12, d0
    3448: ee0d ab00    	vmla.f64	d10, d13, d0
    344c: ed89 bb06    	vstr	d11, [r9, #24]
    3450: ed89 ab10    	vstr	d10, [r9, #64]
    3454: f001 fa24    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x1448
    3458: ed9d 0bb4    	vldr	d0, [sp, #720]
    345c: eeb4 0b4f    	vcmp.f64	d0, d15
    3460: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3464: f53f ae34    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x398
    3468: ed9f 0b5d    	vldr	d0, [pc, #372]          @ 0x35e0 <orange_dsp::exponential::block::<false, 1, 2>+0x560>
    346c: eeb0 bb4e    	vmov.f64	d11, d14
    3470: 4620         	mov	r0, r4
    3472: eeb0 ab48    	vmov.f64	d10, d8
    3476: 4641         	mov	r1, r8
    3478: 464a         	mov	r2, r9
    347a: ee0c bb00    	vmla.f64	d11, d12, d0
    347e: ee0d ab00    	vmla.f64	d10, d13, d0
    3482: ed89 bb06    	vstr	d11, [r9, #24]
    3486: ed89 ab10    	vstr	d10, [r9, #64]
    348a: f001 fa09    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x1412
    348e: ed9d 0bb4    	vldr	d0, [sp, #720]
    3492: eeb4 0b4f    	vcmp.f64	d0, d15
    3496: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    349a: f53f ae19    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x3ce
    349e: ed9f 0b52    	vldr	d0, [pc, #328]          @ 0x35e8 <orange_dsp::exponential::block::<false, 1, 2>+0x568>
    34a2: eeb0 bb4e    	vmov.f64	d11, d14
    34a6: 4620         	mov	r0, r4
    34a8: eeb0 ab48    	vmov.f64	d10, d8
    34ac: 4641         	mov	r1, r8
    34ae: 464a         	mov	r2, r9
    34b0: ee0c bb00    	vmla.f64	d11, d12, d0
    34b4: ee0d ab00    	vmla.f64	d10, d13, d0
    34b8: ed89 bb06    	vstr	d11, [r9, #24]
    34bc: ed89 ab10    	vstr	d10, [r9, #64]
    34c0: f001 f9ee    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x13dc
    34c4: ed9d 0bb4    	vldr	d0, [sp, #720]
    34c8: eeb4 0b4f    	vcmp.f64	d0, d15
    34cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    34d0: f53f adfe    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x404
    34d4: ed9f 0b46    	vldr	d0, [pc, #280]          @ 0x35f0 <orange_dsp::exponential::block::<false, 1, 2>+0x570>
    34d8: eeb0 bb4e    	vmov.f64	d11, d14
    34dc: 4620         	mov	r0, r4
    34de: eeb0 ab48    	vmov.f64	d10, d8
    34e2: 4641         	mov	r1, r8
    34e4: 464a         	mov	r2, r9
    34e6: ee0c bb00    	vmla.f64	d11, d12, d0
    34ea: ee0d ab00    	vmla.f64	d10, d13, d0
    34ee: ed89 bb06    	vstr	d11, [r9, #24]
    34f2: ed89 ab10    	vstr	d10, [r9, #64]
    34f6: f001 f9d3    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x13a6
    34fa: ed9d 0bb4    	vldr	d0, [sp, #720]
    34fe: eeb4 0b4f    	vcmp.f64	d0, d15
    3502: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3506: f53f ade3    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x43a
    350a: ed9f 0b3b    	vldr	d0, [pc, #236]          @ 0x35f8 <orange_dsp::exponential::block::<false, 1, 2>+0x578>
    350e: eeb0 bb4e    	vmov.f64	d11, d14
    3512: 4620         	mov	r0, r4
    3514: eeb0 ab48    	vmov.f64	d10, d8
    3518: 4641         	mov	r1, r8
    351a: 464a         	mov	r2, r9
    351c: ee0c bb00    	vmla.f64	d11, d12, d0
    3520: ee0d ab00    	vmla.f64	d10, d13, d0
    3524: ed89 bb06    	vstr	d11, [r9, #24]
    3528: ed89 ab10    	vstr	d10, [r9, #64]
    352c: f001 f9b8    	bl	0x48a0 <orange_dsp::exponential::evaluate::<false, 1, 2>> @ imm = #0x1370
    3530: ed9d 0bb4    	vldr	d0, [sp, #720]
    3534: eeb4 0b4f    	vcmp.f64	d0, d15
    3538: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    353c: f53f adc8    	bmi.w	0x30d0 <orange_dsp::exponential::block::<false, 1, 2>+0x50> @ imm = #-0x470
    3540: ed89 eb06    	vstr	d14, [r9, #24]
    3544: ed89 8b10    	vstr	d8, [r9, #64]
    3548: 9900         	ldr	r1, [sp]
    354a: 9803         	ldr	r0, [sp, #0xc]
    354c: ed81 fb00    	vstr	d15, [r1]
    3550: 7208         	strb	r0, [r1, #0x8]
    3552: 2000         	movs	r0, #0x0
    3554: 7248         	strb	r0, [r1, #0x9]
    3556: e017         	b	0x3588 <orange_dsp::exponential::block::<false, 1, 2>+0x508> @ imm = #0x2e
    3558: ed9d fb40    	vldr	d15, [sp, #256]
    355c: 2618         	movs	r6, #0x18
    355e: ed9f 0b0e    	vldr	d0, [pc, #56]           @ 0x3598 <orange_dsp::exponential::block::<false, 1, 2>+0x518>
    3562: eeb4 fb40    	vcmp.f64	d15, d0
    3566: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    356a: d509         	bpl	0x3580 <orange_dsp::exponential::block::<false, 1, 2>+0x500> @ imm = #0x12
    356c: 9900         	ldr	r1, [sp]
    356e: 2001         	movs	r0, #0x1
    3570: ed81 fb00    	vstr	d15, [r1]
    3574: 720e         	strb	r6, [r1, #0x8]
    3576: 7248         	strb	r0, [r1, #0x9]
    3578: e006         	b	0x3588 <orange_dsp::exponential::block::<false, 1, 2>+0x508> @ imm = #0xc
    357a: bf00         	nop
    357c: bf00         	nop
    357e: bf00         	nop
    3580: 9800         	ldr	r0, [sp]
    3582: ed80 fb00    	vstr	d15, [r0]
    3586: 8106         	strh	r6, [r0, #0x8]
    3588: f50d 7d36    	add.w	sp, sp, #0x2d8
    358c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    3590: b001         	add	sp, #0x4
    3592: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    3596: bdf0         	pop	{r4, r5, r6, r7, pc}
    3598: bb bd d7 d9  	.word	0xd9d7bdbb
    359c: df 7c db 3d  	.word	0x3ddb7cdf
    35a0: 00 00 00 00  	.word	0x00000000
    35a4: 00 00 b0 3f  	.word	0x3fb00000
    35a8: 00 00 00 00  	.word	0x00000000
    35ac: 00 00 a0 3f  	.word	0x3fa00000
    35b0: 00 00 00 00  	.word	0x00000000
    35b4: 00 00 90 3f  	.word	0x3f900000
    35b8: 00 00 00 00  	.word	0x00000000
    35bc: 00 00 80 3f  	.word	0x3f800000
    35c0: 00 00 00 00  	.word	0x00000000
    35c4: 00 00 70 3f  	.word	0x3f700000
    35c8: 00 00 00 00  	.word	0x00000000
    35cc: 00 00 60 3f  	.word	0x3f600000
    35d0: 00 00 00 00  	.word	0x00000000
    35d4: 00 00 50 3f  	.word	0x3f500000
    35d8: 00 00 00 00  	.word	0x00000000
    35dc: 00 00 40 3f  	.word	0x3f400000
    35e0: 00 00 00 00  	.word	0x00000000
    35e4: 00 00 30 3f  	.word	0x3f300000
    35e8: 00 00 00 00  	.word	0x00000000
    35ec: 00 00 20 3f  	.word	0x3f200000
    35f0: 00 00 00 00  	.word	0x00000000
    35f4: 00 00 10 3f  	.word	0x3f100000
    35f8: 00 00 00 00  	.word	0x00000000
    35fc: 00 00 00 3f  	.word	0x3f000000

00003600 <orange_dsp::exponential::block::<false, 2, 3>>:
    3600: b5f0         	push	{r4, r5, r6, r7, lr}
    3602: af03         	add	r7, sp, #0xc
    3604: e92d 0f00    	push.w	{r8, r9, r10, r11}
    3608: b081         	sub	sp, #0x4
    360a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    360e: f5ad 7d44    	sub.w	sp, sp, #0x310
    3612: ac0c         	add	r4, sp, #0x30
    3614: 9003         	str	r0, [sp, #0xc]
    3616: 4620         	mov	r0, r4
    3618: 4615         	mov	r5, r2
    361a: 460e         	mov	r6, r1
    361c: f001 fc1c    	bl	0x4e58 <orange_dsp::exponential::evaluate::<false, 2, 3>> @ imm = #0x1838
    3620: ed95 0b02    	vldr	d0, [r5, #8]
    3624: a854         	add	r0, sp, #0x150
    3626: f50d 7a94    	add.w	r10, sp, #0x128
    362a: ed8d 0b08    	vstr	d0, [sp, #32]
    362e: f04f 0800    	mov.w	r8, #0x0
    3632: f104 0128    	add.w	r1, r4, #0x28
    3636: ed95 ab08    	vldr	d10, [r5, #32]
    363a: 9106         	str	r1, [sp, #0x18]
    363c: 3028         	adds	r0, #0x28
    363e: ed95 0b12    	vldr	d0, [r5, #72]
    3642: 9005         	str	r0, [sp, #0x14]
    3644: ed8d 0b0a    	vstr	d0, [sp, #40]
    3648: e9d5 0100    	ldrd	r0, r1, [r5]
    364c: ed9f 0bd2    	vldr	d0, [pc, #840]          @ 0x3998 <orange_dsp::exponential::block::<false, 2, 3>+0x398>
    3650: e9cd 1001    	strd	r1, r0, [sp, #4]
    3654: ed9f 8bd2    	vldr	d8, [pc, #840]          @ 0x39a0 <orange_dsp::exponential::block::<false, 2, 3>+0x3a0>
    3658: 9604         	str	r6, [sp, #0x10]
    365a: f1b8 0f18    	cmp.w	r8, #0x18
    365e: f000 8163    	beq.w	0x3928 <orange_dsp::exponential::block::<false, 2, 3>+0x328> @ imm = #0x2c6
    3662: ed9d db48    	vldr	d13, [sp, #288]
    3666: eeb4 db40    	vcmp.f64	d13, d0
    366a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    366e: f100 8164    	bmi.w	0x393a <orange_dsp::exponential::block::<false, 2, 3>+0x33a> @ imm = #0x2c8
    3672: 46a4         	mov	r12, r4
    3674: f8cd 801c    	str.w	r8, [sp, #0x1c]
    3678: 4651         	mov	r1, r10
    367a: e8bc 005d    	ldm.w	r12!, {r0, r2, r3, r4, r6}
    367e: c15d         	stm	r1!, {r0, r2, r3, r4, r6}
    3680: e89c 005d    	ldm.w	r12, {r0, r2, r3, r4, r6}
    3684: c15d         	stm	r1!, {r0, r2, r3, r4, r6}
    3686: ac54         	add	r4, sp, #0x150
    3688: 9e06         	ldr	r6, [sp, #0x18]
    368a: 22c8         	movs	r2, #0xc8
    368c: 4620         	mov	r0, r4
    368e: 4631         	mov	r1, r6
    3690: f008 fd6a    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x8ad4
    3694: ed9d 0b54    	vldr	d0, [sp, #336]
    3698: f04f 0b00    	mov.w	r11, #0x0
    369c: 2228         	movs	r2, #0x28
    369e: ed9d 1b5e    	vldr	d1, [sp, #376]
    36a2: eeb0 2bc1    	vabs.f64	d2, d1
    36a6: eeb0 3bc0    	vabs.f64	d3, d0
    36aa: ed9d 4b68    	vldr	d4, [sp, #416]
    36ae: eeb4 2b43    	vcmp.f64	d2, d3
    36b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    36b6: bfc8         	it	gt
    36b8: f04f 0b01    	movgt.w	r11, #0x1
    36bc: fe31 0b00    	vselgt.f64	d0, d1, d0
    36c0: eeb0 1bc4    	vabs.f64	d1, d4
    36c4: eeb0 0bc0    	vabs.f64	d0, d0
    36c8: eeb4 1b40    	vcmp.f64	d1, d0
    36cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    36d0: bfc8         	it	gt
    36d2: f04f 0b02    	movgt.w	r11, #0x2
    36d6: ea4b 008b    	orr.w	r0, r11, r11, lsl #2
    36da: eb04 08c0    	add.w	r8, r4, r0, lsl #3
    36de: 4620         	mov	r0, r4
    36e0: 4641         	mov	r1, r8
    36e2: f008 f8d5    	bl	0xb890 <__aeabi_memmove8> @ imm = #0x81aa
    36e6: 4630         	mov	r0, r6
    36e8: c85e         	ldm	r0!, {r1, r2, r3, r4, r6}
    36ea: e8a8 005e    	stm.w	r8!, {r1, r2, r3, r4, r6}
    36ee: e890 005e    	ldm.w	r0, {r1, r2, r3, r4, r6}
    36f2: e888 005e    	stm.w	r8, {r1, r2, r3, r4, r6}
    36f6: ed9d eb54    	vldr	d14, [sp, #336]
    36fa: eb0a 00cb    	add.w	r0, r10, r11, lsl #3
    36fe: 994a         	ldr	r1, [sp, #0x128]
    3700: ec53 2b1e    	vmov	r2, r3, d14
    3704: 9a4b         	ldr	r2, [sp, #0x12c]
    3706: 6846         	ldr	r6, [r0, #0x4]
    3708: f85a 403b    	ldr.w	r4, [r10, r11, lsl #3]
    370c: e9cd 464a    	strd	r4, r6, [sp, #296]
    3710: f84a 103b    	str.w	r1, [r10, r11, lsl #3]
    3714: f64f 71ff    	movw	r1, #0xffff
    3718: f023 4300    	bic	r3, r3, #0x80000000
    371c: f6c7 71ef    	movt	r1, #0x7fef
    3720: 428b         	cmp	r3, r1
    3722: 6042         	str	r2, [r0, #0x4]
    3724: f300 811e    	bgt.w	0x3964 <orange_dsp::exponential::block::<false, 2, 3>+0x364> @ imm = #0x23c
    3728: eeb0 0bce    	vabs.f64	d0, d14
    372c: eeb4 0b48    	vcmp.f64	d0, d8
    3730: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3734: f100 8116    	bmi.w	0x3964 <orange_dsp::exponential::block::<false, 2, 3>+0x364> @ imm = #0x22c
    3738: ed9d 0b5e    	vldr	d0, [sp, #376]
    373c: f8dd a014    	ldr.w	r10, [sp, #0x14]
    3740: f50d 7906    	add.w	r9, sp, #0x218
    3744: ee80 0b0e    	vdiv.f64	d0, d0, d14
    3748: 46d6         	mov	lr, r10
    374a: 46cc         	mov	r12, r9
    374c: 46d3         	mov	r11, r10
    374e: ed9d bb56    	vldr	d11, [sp, #344]
    3752: f04f 0808    	mov.w	r8, #0x8
    3756: ed9d 9b58    	vldr	d9, [sp, #352]
    375a: ed9d cb4a    	vldr	d12, [sp, #296]
    375e: ed9d 1b60    	vldr	d1, [sp, #384]
    3762: ee00 1b4b    	vmls.f64	d1, d0, d11
    3766: ed9d 2b62    	vldr	d2, [sp, #392]
    376a: ee00 2b49    	vmls.f64	d2, d0, d9
    376e: ed9d fb4c    	vldr	d15, [sp, #304]
    3772: ee00 fb4c    	vmls.f64	d15, d0, d12
    3776: ed9d 0b68    	vldr	d0, [sp, #416]
    377a: ee80 0b0e    	vdiv.f64	d0, d0, d14
    377e: ed8d 2b62    	vstr	d2, [sp, #392]
    3782: ed9d 2b4e    	vldr	d2, [sp, #312]
    3786: ed9d 3b6a    	vldr	d3, [sp, #424]
    378a: ee0b 3b40    	vmls.f64	d3, d11, d0
    378e: ed9d 4b6c    	vldr	d4, [sp, #432]
    3792: ee09 4b40    	vmls.f64	d4, d9, d0
    3796: ee0c 2b40    	vmls.f64	d2, d12, d0
    379a: ed8d 1b60    	vstr	d1, [sp, #384]
    379e: ed8d fb4c    	vstr	d15, [sp, #304]
    37a2: ed8d 3b6a    	vstr	d3, [sp, #424]
    37a6: ed8d 4b6c    	vstr	d4, [sp, #432]
    37aa: ed8d 2b4e    	vstr	d2, [sp, #312]
    37ae: e8be 005d    	ldm.w	lr!, {r0, r2, r3, r4, r6}
    37b2: eeb0 0bc3    	vabs.f64	d0, d3
    37b6: e8ac 005d    	stm.w	r12!, {r0, r2, r3, r4, r6}
    37ba: eeb0 1bc1    	vabs.f64	d1, d1
    37be: e89e 004f    	ldm.w	lr, {r0, r1, r2, r3, r6}
    37c2: e88c 004f    	stm.w	r12, {r0, r1, r2, r3, r6}
    37c6: a854         	add	r0, sp, #0x150
    37c8: 2228         	movs	r2, #0x28
    37ca: eeb4 0b41    	vcmp.f64	d0, d1
    37ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    37d2: bfc8         	it	gt
    37d4: f100 0b50    	addgt.w	r11, r0, #0x50
    37d8: 4650         	mov	r0, r10
    37da: f50d 7a94    	add.w	r10, sp, #0x128
    37de: 4659         	mov	r1, r11
    37e0: bfc8         	it	gt
    37e2: f04f 0810    	movgt.w	r8, #0x10
    37e6: f008 f853    	bl	0xb890 <__aeabi_memmove8> @ imm = #0x80a6
    37ea: e8b9 005e    	ldm.w	r9!, {r1, r2, r3, r4, r6}
    37ee: e8ab 005e    	stm.w	r11!, {r1, r2, r3, r4, r6}
    37f2: e899 005e    	ldm.w	r9, {r1, r2, r3, r4, r6}
    37f6: e88b 005e    	stm.w	r11, {r1, r2, r3, r4, r6}
    37fa: ed9d 0b60    	vldr	d0, [sp, #384]
    37fe: eb0a 0008    	add.w	r0, r10, r8
    3802: f85a 3008    	ldr.w	r3, [r10, r8]
    3806: ec52 1b10    	vmov	r1, r2, d0
    380a: 6841         	ldr	r1, [r0, #0x4]
    380c: 914d         	str	r1, [sp, #0x134]
    380e: f64f 71ff    	movw	r1, #0xffff
    3812: 934c         	str	r3, [sp, #0x130]
    3814: f022 4200    	bic	r2, r2, #0x80000000
    3818: f6c7 71ef    	movt	r1, #0x7fef
    381c: 428a         	cmp	r2, r1
    381e: ed80 fb00    	vstr	d15, [r0]
    3822: f300 809f    	bgt.w	0x3964 <orange_dsp::exponential::block::<false, 2, 3>+0x364> @ imm = #0x13e
    3826: eeb0 1bc0    	vabs.f64	d1, d0
    382a: eeb4 1b48    	vcmp.f64	d1, d8
    382e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3832: f100 8097    	bmi.w	0x3964 <orange_dsp::exponential::block::<false, 2, 3>+0x364> @ imm = #0x12e
    3836: ed9d 2b6a    	vldr	d2, [sp, #424]
    383a: ee82 2b00    	vdiv.f64	d2, d2, d0
    383e: ed9d 1b62    	vldr	d1, [sp, #392]
    3842: ed9d 3b6c    	vldr	d3, [sp, #432]
    3846: ee02 3b41    	vmls.f64	d3, d2, d1
    384a: ec51 0b13    	vmov	r0, r1, d3
    384e: f021 4000    	bic	r0, r1, #0x80000000
    3852: f64f 71ff    	movw	r1, #0xffff
    3856: f6c7 71ef    	movt	r1, #0x7fef
    385a: 4288         	cmp	r0, r1
    385c: f300 8082    	bgt.w	0x3964 <orange_dsp::exponential::block::<false, 2, 3>+0x364> @ imm = #0x104
    3860: eeb0 4bc3    	vabs.f64	d4, d3
    3864: eeb4 4b48    	vcmp.f64	d4, d8
    3868: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    386c: d47a         	bmi	0x3964 <orange_dsp::exponential::block::<false, 2, 3>+0x364> @ imm = #0xf4
    386e: ed9d 4b4c    	vldr	d4, [sp, #304]
    3872: 9807         	ldr	r0, [sp, #0x1c]
    3874: 2400         	movs	r4, #0x0
    3876: ed9d 5b4e    	vldr	d5, [sp, #312]
    387a: f100 0801    	add.w	r8, r0, #0x1
    387e: f04f 0900    	mov.w	r9, #0x0
    3882: ee02 5b44    	vmls.f64	d5, d2, d4
    3886: f50d 7b06    	add.w	r11, sp, #0x218
    388a: 9e04         	ldr	r6, [sp, #0x10]
    388c: ee85 fb03    	vdiv.f64	d15, d5, d3
    3890: ee01 4b4f    	vmls.f64	d4, d1, d15
    3894: ee84 8b00    	vdiv.f64	d8, d4, d0
    3898: ee0b cb48    	vmls.f64	d12, d11, d8
    389c: ee09 cb4f    	vmls.f64	d12, d9, d15
    38a0: ee8c cb0e    	vdiv.f64	d12, d12, d14
    38a4: bf00         	nop
    38a6: bf00         	nop
    38a8: 2000         	movs	r0, #0x0
    38aa: 4631         	mov	r1, r6
    38ac: f6c3 70f0    	movt	r0, #0x3ff0
    38b0: 462a         	mov	r2, r5
    38b2: eba0 5004    	sub.w	r0, r0, r4, lsl #20
    38b6: ec40 9b10    	vmov	d0, r9, r0
    38ba: eeb0 eb4a    	vmov.f64	d14, d10
    38be: 4658         	mov	r0, r11
    38c0: ee0c eb00    	vmla.f64	d14, d12, d0
    38c4: ed9d 9b0a    	vldr	d9, [sp, #40]
    38c8: ee08 9b00    	vmla.f64	d9, d8, d0
    38cc: ed9d bb08    	vldr	d11, [sp, #32]
    38d0: ee0f bb00    	vmla.f64	d11, d15, d0
    38d4: ed85 eb08    	vstr	d14, [r5, #32]
    38d8: ed85 9b12    	vstr	d9, [r5, #72]
    38dc: ed85 bb02    	vstr	d11, [r5, #8]
    38e0: f001 faba    	bl	0x4e58 <orange_dsp::exponential::evaluate::<false, 2, 3>> @ imm = #0x1574
    38e4: ed9d 0bc2    	vldr	d0, [sp, #776]
    38e8: eeb4 0b4d    	vcmp.f64	d0, d13
    38ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    38f0: d406         	bmi	0x3900 <orange_dsp::exponential::block::<false, 2, 3>+0x300> @ imm = #0xc
    38f2: 3401         	adds	r4, #0x1
    38f4: 2c10         	cmp	r4, #0x10
    38f6: d1d7         	bne	0x38a8 <orange_dsp::exponential::block::<false, 2, 3>+0x2a8> @ imm = #-0x52
    38f8: e026         	b	0x3948 <orange_dsp::exponential::block::<false, 2, 3>+0x348> @ imm = #0x4c
    38fa: bf00         	nop
    38fc: bf00         	nop
    38fe: bf00         	nop
    3900: ac0c         	add	r4, sp, #0x30
    3902: 22f8         	movs	r2, #0xf8
    3904: 4620         	mov	r0, r4
    3906: 4659         	mov	r1, r11
    3908: f008 fc2e    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x885c
    390c: ed9f 0b22    	vldr	d0, [pc, #136]          @ 0x3998 <orange_dsp::exponential::block::<false, 2, 3>+0x398>
    3910: eeb0 ab4e    	vmov.f64	d10, d14
    3914: ed9f 8b22    	vldr	d8, [pc, #136]          @ 0x39a0 <orange_dsp::exponential::block::<false, 2, 3>+0x3a0>
    3918: ed8d 9b0a    	vstr	d9, [sp, #40]
    391c: ed8d bb08    	vstr	d11, [sp, #32]
    3920: f1b8 0f18    	cmp.w	r8, #0x18
    3924: f47f ae9d    	bne.w	0x3662 <orange_dsp::exponential::block::<false, 2, 3>+0x62> @ imm = #-0x2c6
    3928: ed9d db48    	vldr	d13, [sp, #288]
    392c: f04f 0818    	mov.w	r8, #0x18
    3930: eeb4 db40    	vcmp.f64	d13, d0
    3934: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3938: d526         	bpl	0x3988 <orange_dsp::exponential::block::<false, 2, 3>+0x388> @ imm = #0x4c
    393a: 9903         	ldr	r1, [sp, #0xc]
    393c: 2001         	movs	r0, #0x1
    393e: ed81 db00    	vstr	d13, [r1]
    3942: f881 8008    	strb.w	r8, [r1, #0x8]
    3946: e013         	b	0x3970 <orange_dsp::exponential::block::<false, 2, 3>+0x370> @ imm = #0x26
    3948: ed9d 0b08    	vldr	d0, [sp, #32]
    394c: e9dd 1001    	ldrd	r1, r0, [sp, #4]
    3950: ed85 0b02    	vstr	d0, [r5, #8]
    3954: e9c5 0100    	strd	r0, r1, [r5]
    3958: ed85 ab08    	vstr	d10, [r5, #32]
    395c: ed9d 0b0a    	vldr	d0, [sp, #40]
    3960: ed85 0b12    	vstr	d0, [r5, #72]
    3964: 9903         	ldr	r1, [sp, #0xc]
    3966: 9807         	ldr	r0, [sp, #0x1c]
    3968: ed81 db00    	vstr	d13, [r1]
    396c: 7208         	strb	r0, [r1, #0x8]
    396e: 2000         	movs	r0, #0x0
    3970: 7248         	strb	r0, [r1, #0x9]
    3972: f50d 7d44    	add.w	sp, sp, #0x310
    3976: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    397a: b001         	add	sp, #0x4
    397c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    3980: bdf0         	pop	{r4, r5, r6, r7, pc}
    3982: bf00         	nop
    3984: bf00         	nop
    3986: bf00         	nop
    3988: 9803         	ldr	r0, [sp, #0xc]
    398a: ed80 db00    	vstr	d13, [r0]
    398e: f8a0 8008    	strh.w	r8, [r0, #0x8]
    3992: e7ee         	b	0x3972 <orange_dsp::exponential::block::<false, 2, 3>+0x372> @ imm = #-0x24
    3994: bf00         	nop
    3996: bf00         	nop
    3998: bb bd d7 d9  	.word	0xd9d7bdbb
    399c: df 7c db 3d  	.word	0x3ddb7cdf
    39a0: a7 8e a8 99  	.word	0x99a88ea7
    39a4: c2 57 f3 3a  	.word	0x3af357c2

000039a8 <orange_dsp::exponential::block::<false, 3, 5>>:
    39a8: b5f0         	push	{r4, r5, r6, r7, lr}
    39aa: af03         	add	r7, sp, #0xc
    39ac: e92d 0f00    	push.w	{r8, r9, r10, r11}
    39b0: b081         	sub	sp, #0x4
    39b2: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    39b6: f5ad 7d58    	sub.w	sp, sp, #0x360
    39ba: ac20         	add	r4, sp, #0x80
    39bc: 900a         	str	r0, [sp, #0x28]
    39be: 4620         	mov	r0, r4
    39c0: 4615         	mov	r5, r2
    39c2: 460e         	mov	r6, r1
    39c4: f001 fdc8    	bl	0x5558 <orange_dsp::exponential::evaluate::<false, 3, 5>> @ imm = #0x1b90
    39c8: ed95 0b04    	vldr	d0, [r5, #16]
    39cc: e9d5 0118    	ldrd	r0, r1, [r5, #96]
    39d0: ed8d 0b0c    	vstr	d0, [sp, #48]
    39d4: e9cd 1001    	strd	r1, r0, [sp, #4]
    39d8: ed95 0b0a    	vldr	d0, [r5, #40]
    39dc: a868         	add	r0, sp, #0x1a0
    39de: f104 0128    	add.w	r1, r4, #0x28
    39e2: ed8d 0b0e    	vstr	d0, [sp, #56]
    39e6: f1a0 0850    	sub.w	r8, r0, #0x50
    39ea: f100 0918    	add.w	r9, r0, #0x18
    39ee: ed95 0b0c    	vldr	d0, [r5, #48]
    39f2: f1a0 0a08    	sub.w	r10, r0, #0x8
    39f6: f04f 0e00    	mov.w	lr, #0x0
    39fa: ed8d 0b10    	vstr	d0, [sp, #64]
    39fe: 9509         	str	r5, [sp, #0x24]
    3a00: ed95 0b14    	vldr	d0, [r5, #80]
    3a04: 9103         	str	r1, [sp, #0xc]
    3a06: ed8d 0b12    	vstr	d0, [sp, #72]
    3a0a: e9cd 8607    	strd	r8, r6, [sp, #28]
    3a0e: ed95 0b16    	vldr	d0, [r5, #88]
    3a12: e9cd a905    	strd	r10, r9, [sp, #20]
    3a16: ed8d 0b14    	vstr	d0, [sp, #80]
    3a1a: ed9f 0bd7    	vldr	d0, [pc, #860]          @ 0x3d78 <orange_dsp::exponential::block::<false, 3, 5>+0x3d0>
    3a1e: ed9f 8bd8    	vldr	d8, [pc, #864]          @ 0x3d80 <orange_dsp::exponential::block::<false, 3, 5>+0x3d8>
    3a22: f1be 0f18    	cmp.w	lr, #0x18
    3a26: f000 8285    	beq.w	0x3f34 <orange_dsp::exponential::block::<false, 3, 5>+0x58c> @ imm = #0x50a
    3a2a: ed9d 9b5c    	vldr	d9, [sp, #368]
    3a2e: eeb4 9b40    	vcmp.f64	d9, d0
    3a32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3a36: f100 8286    	bmi.w	0x3f46 <orange_dsp::exponential::block::<false, 3, 5>+0x59e> @ imm = #0x50c
    3a3a: 46a4         	mov	r12, r4
    3a3c: a85e         	add	r0, sp, #0x178
    3a3e: e8bc 007c    	ldm.w	r12!, {r2, r3, r4, r5, r6}
    3a42: c07c         	stm	r0!, {r2, r3, r4, r5, r6}
    3a44: e89c 007c    	ldm.w	r12, {r2, r3, r4, r5, r6}
    3a48: c07c         	stm	r0!, {r2, r3, r4, r5, r6}
    3a4a: f10e 0001    	add.w	r0, lr, #0x1
    3a4e: 9004         	str	r0, [sp, #0x10]
    3a50: 22c8         	movs	r2, #0xc8
    3a52: a868         	add	r0, sp, #0x1a0
    3a54: f8cd e02c    	str.w	lr, [sp, #0x2c]
    3a58: f008 fb86    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x870c
    3a5c: 2600         	movs	r6, #0x0
    3a5e: f8cd a078    	str.w	r10, [sp, #0x78]
    3a62: f8cd 9060    	str.w	r9, [sp, #0x60]
    3a66: e00e         	b	0x3a86 <orange_dsp::exponential::block::<false, 3, 5>+0xde> @ imm = #0x1c
    3a68: f8dd 805c    	ldr.w	r8, [sp, #0x5c]
    3a6c: 9818         	ldr	r0, [sp, #0x60]
    3a6e: f108 0808    	add.w	r8, r8, #0x8
    3a72: 2e05         	cmp	r6, #0x5
    3a74: f100 0028    	add.w	r0, r0, #0x28
    3a78: 9018         	str	r0, [sp, #0x60]
    3a7a: 981e         	ldr	r0, [sp, #0x78]
    3a7c: f100 0028    	add.w	r0, r0, #0x28
    3a80: 901e         	str	r0, [sp, #0x78]
    3a82: f000 81b1    	beq.w	0x3de8 <orange_dsp::exponential::block::<false, 3, 5>+0x440> @ imm = #0x362
    3a86: 46b3         	mov	r11, r6
    3a88: 2e03         	cmp	r6, #0x3
    3a8a: f1c6 0600    	rsb.w	r6, r6, #0x0
    3a8e: f10b 0301    	add.w	r3, r11, #0x1
    3a92: 465d         	mov	r5, r11
    3a94: f200 80b4    	bhi.w	0x3c00 <orange_dsp::exponential::block::<false, 3, 5>+0x258> @ imm = #0x168
    3a98: a868         	add	r0, sp, #0x1a0
    3a9a: f016 0203    	ands	r2, r6, #0x3
    3a9e: eb00 00cb    	add.w	r0, r0, r11, lsl #3
    3aa2: 465d         	mov	r5, r11
    3aa4: 4619         	mov	r1, r3
    3aa6: d037         	beq	0x3b18 <orange_dsp::exponential::block::<false, 3, 5>+0x170> @ imm = #0x6e
    3aa8: eb03 0183    	add.w	r1, r3, r3, lsl #2
    3aac: 465d         	mov	r5, r11
    3aae: eb00 01c1    	add.w	r1, r0, r1, lsl #3
    3ab2: ed91 0b00    	vldr	d0, [r1]
    3ab6: eb0b 018b    	add.w	r1, r11, r11, lsl #2
    3aba: eeb0 0bc0    	vabs.f64	d0, d0
    3abe: eb00 01c1    	add.w	r1, r0, r1, lsl #3
    3ac2: ed91 1b00    	vldr	d1, [r1]
    3ac6: f10b 0102    	add.w	r1, r11, #0x2
    3aca: eeb0 1bc1    	vabs.f64	d1, d1
    3ace: eeb4 0b41    	vcmp.f64	d0, d1
    3ad2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ad6: bfc8         	it	gt
    3ad8: 461d         	movgt	r5, r3
    3ada: 2a01         	cmp	r2, #0x1
    3adc: d01c         	beq	0x3b18 <orange_dsp::exponential::block::<false, 3, 5>+0x170> @ imm = #0x38
    3ade: eb01 0381    	add.w	r3, r1, r1, lsl #2
    3ae2: eb00 03c3    	add.w	r3, r0, r3, lsl #3
    3ae6: ed93 0b00    	vldr	d0, [r3]
    3aea: eb05 0385    	add.w	r3, r5, r5, lsl #2
    3aee: eeb0 0bc0    	vabs.f64	d0, d0
    3af2: eb00 03c3    	add.w	r3, r0, r3, lsl #3
    3af6: ed93 1b00    	vldr	d1, [r3]
    3afa: eeb0 1bc1    	vabs.f64	d1, d1
    3afe: eeb4 0b41    	vcmp.f64	d0, d1
    3b02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b06: bfc8         	it	gt
    3b08: 460d         	movgt	r5, r1
    3b0a: 2a02         	cmp	r2, #0x2
    3b0c: f10b 0203    	add.w	r2, r11, #0x3
    3b10: d15a         	bne	0x3bc8 <orange_dsp::exponential::block::<false, 3, 5>+0x220> @ imm = #0xb4
    3b12: 4611         	mov	r1, r2
    3b14: bf00         	nop
    3b16: bf00         	nop
    3b18: f1bb 0f00    	cmp.w	r11, #0x0
    3b1c: d170         	bne	0x3c00 <orange_dsp::exponential::block::<false, 3, 5>+0x258> @ imm = #0xe0
    3b1e: eb01 0281    	add.w	r2, r1, r1, lsl #2
    3b22: eb08 02c2    	add.w	r2, r8, r2, lsl #3
    3b26: bf00         	nop
    3b28: eb05 0385    	add.w	r3, r5, r5, lsl #2
    3b2c: ed92 0b14    	vldr	d0, [r2, #80]
    3b30: eb00 03c3    	add.w	r3, r0, r3, lsl #3
    3b34: eeb0 0bc0    	vabs.f64	d0, d0
    3b38: ed93 1b00    	vldr	d1, [r3]
    3b3c: eeb0 1bc1    	vabs.f64	d1, d1
    3b40: eeb4 0b41    	vcmp.f64	d0, d1
    3b44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b48: bfc8         	it	gt
    3b4a: 460d         	movgt	r5, r1
    3b4c: ed92 0b1e    	vldr	d0, [r2, #120]
    3b50: eb05 0385    	add.w	r3, r5, r5, lsl #2
    3b54: eeb0 0bc0    	vabs.f64	d0, d0
    3b58: eb00 03c3    	add.w	r3, r0, r3, lsl #3
    3b5c: ed93 1b00    	vldr	d1, [r3]
    3b60: eeb0 1bc1    	vabs.f64	d1, d1
    3b64: eeb4 0b41    	vcmp.f64	d0, d1
    3b68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b6c: bfc8         	it	gt
    3b6e: 1c4d         	addgt	r5, r1, #0x1
    3b70: ed92 0b28    	vldr	d0, [r2, #160]
    3b74: eb05 0385    	add.w	r3, r5, r5, lsl #2
    3b78: eeb0 0bc0    	vabs.f64	d0, d0
    3b7c: eb00 03c3    	add.w	r3, r0, r3, lsl #3
    3b80: ed93 1b00    	vldr	d1, [r3]
    3b84: eeb0 1bc1    	vabs.f64	d1, d1
    3b88: eeb4 0b41    	vcmp.f64	d0, d1
    3b8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3b90: bfc8         	it	gt
    3b92: 1c8d         	addgt	r5, r1, #0x2
    3b94: ed92 0b32    	vldr	d0, [r2, #200]
    3b98: 32a0         	adds	r2, #0xa0
    3b9a: eb05 0385    	add.w	r3, r5, r5, lsl #2
    3b9e: eeb0 0bc0    	vabs.f64	d0, d0
    3ba2: eb00 03c3    	add.w	r3, r0, r3, lsl #3
    3ba6: ed93 1b00    	vldr	d1, [r3]
    3baa: eeb0 1bc1    	vabs.f64	d1, d1
    3bae: eeb4 0b41    	vcmp.f64	d0, d1
    3bb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3bb6: bfc8         	it	gt
    3bb8: 1ccd         	addgt	r5, r1, #0x3
    3bba: 3104         	adds	r1, #0x4
    3bbc: 2905         	cmp	r1, #0x5
    3bbe: d1b3         	bne	0x3b28 <orange_dsp::exponential::block::<false, 3, 5>+0x180> @ imm = #-0x9a
    3bc0: e01e         	b	0x3c00 <orange_dsp::exponential::block::<false, 3, 5>+0x258> @ imm = #0x3c
    3bc2: bf00         	nop
    3bc4: bf00         	nop
    3bc6: bf00         	nop
    3bc8: eb02 0182    	add.w	r1, r2, r2, lsl #2
    3bcc: eb00 01c1    	add.w	r1, r0, r1, lsl #3
    3bd0: ed91 0b00    	vldr	d0, [r1]
    3bd4: eb05 0185    	add.w	r1, r5, r5, lsl #2
    3bd8: eeb0 0bc0    	vabs.f64	d0, d0
    3bdc: eb00 01c1    	add.w	r1, r0, r1, lsl #3
    3be0: ed91 1b00    	vldr	d1, [r1]
    3be4: f04b 0104    	orr	r1, r11, #0x4
    3be8: eeb0 1bc1    	vabs.f64	d1, d1
    3bec: eeb4 0b41    	vcmp.f64	d0, d1
    3bf0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3bf4: bfc8         	it	gt
    3bf6: 4615         	movgt	r5, r2
    3bf8: f1bb 0f00    	cmp.w	r11, #0x0
    3bfc: d08f         	beq	0x3b1e <orange_dsp::exponential::block::<false, 3, 5>+0x176> @ imm = #-0xe2
    3bfe: bf00         	nop
    3c00: eb0b 008b    	add.w	r0, r11, r11, lsl #2
    3c04: f8cd 805c    	str.w	r8, [sp, #0x5c]
    3c08: f50d 78d0    	add.w	r8, sp, #0x1a0
    3c0c: f50d 791a    	add.w	r9, sp, #0x268
    3c10: eb08 0ac0    	add.w	r10, r8, r0, lsl #3
    3c14: 961c         	str	r6, [sp, #0x70]
    3c16: 46d4         	mov	r12, r10
    3c18: 4649         	mov	r1, r9
    3c1a: eb05 0e85    	add.w	lr, r5, r5, lsl #2
    3c1e: e8bc 005d    	ldm.w	r12!, {r0, r2, r3, r4, r6}
    3c22: c15d         	stm	r1!, {r0, r2, r3, r4, r6}
    3c24: e89c 005d    	ldm.w	r12, {r0, r2, r3, r4, r6}
    3c28: eb08 08ce    	add.w	r8, r8, lr, lsl #3
    3c2c: c15d         	stm	r1!, {r0, r2, r3, r4, r6}
    3c2e: 2228         	movs	r2, #0x28
    3c30: 4650         	mov	r0, r10
    3c32: 4641         	mov	r1, r8
    3c34: f007 fe2c    	bl	0xb890 <__aeabi_memmove8> @ imm = #0x7c58
    3c38: 4649         	mov	r1, r9
    3c3a: eb0a 0ecb    	add.w	lr, r10, r11, lsl #3
    3c3e: c95d         	ldm	r1!, {r0, r2, r3, r4, r6}
    3c40: e8a8 005d    	stm.w	r8!, {r0, r2, r3, r4, r6}
    3c44: e891 005d    	ldm.w	r1, {r0, r2, r3, r4, r6}
    3c48: e888 005d    	stm.w	r8, {r0, r2, r3, r4, r6}
    3c4c: ed9e 0b00    	vldr	d0, [lr]
    3c50: aa5e         	add	r2, sp, #0x178
    3c52: eb02 01cb    	add.w	r1, r2, r11, lsl #3
    3c56: eb02 00c5    	add.w	r0, r2, r5, lsl #3
    3c5a: f852 c03b    	ldr.w	r12, [r2, r11, lsl #3]
    3c5e: ec56 3b10    	vmov	r3, r6, d0
    3c62: 6843         	ldr	r3, [r0, #0x4]
    3c64: f852 4035    	ldr.w	r4, [r2, r5, lsl #3]
    3c68: f842 403b    	str.w	r4, [r2, r11, lsl #3]
    3c6c: 684c         	ldr	r4, [r1, #0x4]
    3c6e: 604b         	str	r3, [r1, #0x4]
    3c70: f842 c035    	str.w	r12, [r2, r5, lsl #3]
    3c74: f64f 72ff    	movw	r2, #0xffff
    3c78: f026 4300    	bic	r3, r6, #0x80000000
    3c7c: f6c7 72ef    	movt	r2, #0x7fef
    3c80: 4293         	cmp	r3, r2
    3c82: 6044         	str	r4, [r0, #0x4]
    3c84: f300 8182    	bgt.w	0x3f8c <orange_dsp::exponential::block::<false, 3, 5>+0x5e4> @ imm = #0x304
    3c88: eeb0 0bc0    	vabs.f64	d0, d0
    3c8c: eeb4 0b48    	vcmp.f64	d0, d8
    3c90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3c94: f100 817a    	bmi.w	0x3f8c <orange_dsp::exponential::block::<false, 3, 5>+0x5e4> @ imm = #0x2f4
    3c98: f1bb 0f03    	cmp.w	r11, #0x3
    3c9c: f10b 0601    	add.w	r6, r11, #0x1
    3ca0: f63f aee2    	bhi.w	0x3a68 <orange_dsp::exponential::block::<false, 3, 5>+0xc0> @ imm = #-0x23c
    3ca4: f10b 0302    	add.w	r3, r11, #0x2
    3ca8: f10b 0403    	add.w	r4, r11, #0x3
    3cac: 9a1c         	ldr	r2, [sp, #0x70]
    3cae: eb0a 00c6    	add.w	r0, r10, r6, lsl #3
    3cb2: f002 0503    	and	r5, r2, #0x3
    3cb6: eb0a 02c3    	add.w	r2, r10, r3, lsl #3
    3cba: 921c         	str	r2, [sp, #0x70]
    3cbc: f04b 0204    	orr	r2, r11, #0x4
    3cc0: 921a         	str	r2, [sp, #0x68]
    3cc2: eb0a 02c4    	add.w	r2, r10, r4, lsl #3
    3cc6: f8dd 9060    	ldr.w	r9, [sp, #0x60]
    3cca: 4634         	mov	r4, r6
    3ccc: 9219         	str	r2, [sp, #0x64]
    3cce: e015         	b	0x3cfc <orange_dsp::exponential::block::<false, 3, 5>+0x354> @ imm = #0x2a
    3cd0: f1bb 0f00    	cmp.w	r11, #0x0
    3cd4: d058         	beq	0x3d88 <orange_dsp::exponential::block::<false, 3, 5>+0x3e0> @ imm = #0xb0
    3cd6: aa5e         	add	r2, sp, #0x178
    3cd8: f109 0928    	add.w	r9, r9, #0x28
    3cdc: ed91 1b00    	vldr	d1, [r1]
    3ce0: eb02 02c4    	add.w	r2, r2, r4, lsl #3
    3ce4: 3401         	adds	r4, #0x1
    3ce6: 2c05         	cmp	r4, #0x5
    3ce8: f10b 0601    	add.w	r6, r11, #0x1
    3cec: ed92 2b00    	vldr	d2, [r2]
    3cf0: ee00 2b41    	vmls.f64	d2, d0, d1
    3cf4: ed82 2b00    	vstr	d2, [r2]
    3cf8: f43f aeb6    	beq.w	0x3a68 <orange_dsp::exponential::block::<false, 3, 5>+0xc0> @ imm = #-0x294
    3cfc: eb04 0284    	add.w	r2, r4, r4, lsl #2
    3d00: ab68         	add	r3, sp, #0x1a0
    3d02: ed9e 1b00    	vldr	d1, [lr]
    3d06: eb03 02c2    	add.w	r2, r3, r2, lsl #3
    3d0a: 2d00         	cmp	r5, #0x0
    3d0c: eb02 03cb    	add.w	r3, r2, r11, lsl #3
    3d10: ed93 0b00    	vldr	d0, [r3]
    3d14: 4633         	mov	r3, r6
    3d16: ee80 0b01    	vdiv.f64	d0, d0, d1
    3d1a: d0d9         	beq	0x3cd0 <orange_dsp::exponential::block::<false, 3, 5>+0x328> @ imm = #-0x4e
    3d1c: ed90 1b00    	vldr	d1, [r0]
    3d20: eb02 03c6    	add.w	r3, r2, r6, lsl #3
    3d24: 2d01         	cmp	r5, #0x1
    3d26: ed93 2b00    	vldr	d2, [r3]
    3d2a: ee00 2b41    	vmls.f64	d2, d0, d1
    3d2e: ed83 2b00    	vstr	d2, [r3]
    3d32: f10b 0302    	add.w	r3, r11, #0x2
    3d36: d0cb         	beq	0x3cd0 <orange_dsp::exponential::block::<false, 3, 5>+0x328> @ imm = #-0x6a
    3d38: 9b1c         	ldr	r3, [sp, #0x70]
    3d3a: 2d02         	cmp	r5, #0x2
    3d3c: ed93 1b00    	vldr	d1, [r3]
    3d40: f10b 0302    	add.w	r3, r11, #0x2
    3d44: eb02 03c3    	add.w	r3, r2, r3, lsl #3
    3d48: ed93 2b00    	vldr	d2, [r3]
    3d4c: ee00 2b41    	vmls.f64	d2, d0, d1
    3d50: ed83 2b00    	vstr	d2, [r3]
    3d54: f10b 0303    	add.w	r3, r11, #0x3
    3d58: d0ba         	beq	0x3cd0 <orange_dsp::exponential::block::<false, 3, 5>+0x328> @ imm = #-0x8c
    3d5a: 9b19         	ldr	r3, [sp, #0x64]
    3d5c: ed93 1b00    	vldr	d1, [r3]
    3d60: f10b 0303    	add.w	r3, r11, #0x3
    3d64: eb02 02c3    	add.w	r2, r2, r3, lsl #3
    3d68: 9b1a         	ldr	r3, [sp, #0x68]
    3d6a: ed92 2b00    	vldr	d2, [r2]
    3d6e: ee00 2b41    	vmls.f64	d2, d0, d1
    3d72: ed82 2b00    	vstr	d2, [r2]
    3d76: e7ab         	b	0x3cd0 <orange_dsp::exponential::block::<false, 3, 5>+0x328> @ imm = #-0xaa
    3d78: bb bd d7 d9  	.word	0xd9d7bdbb
    3d7c: df 7c db 3d  	.word	0x3ddb7cdf
    3d80: a7 8e a8 99  	.word	0x99a88ea7
    3d84: c2 57 f3 3a  	.word	0x3af357c2
    3d88: 9a1e         	ldr	r2, [sp, #0x78]
    3d8a: eb09 0ac3    	add.w	r10, r9, r3, lsl #3
    3d8e: f1a3 0805    	sub.w	r8, r3, #0x5
    3d92: eb02 0cc3    	add.w	r12, r2, r3, lsl #3
    3d96: bf00         	nop
    3d98: ed9c 1b02    	vldr	d1, [r12, #8]
    3d9c: f10a 0210    	add.w	r2, r10, #0x10
    3da0: f118 0804    	adds.w	r8, r8, #0x4
    3da4: ec92 2b08    	vldmia	r2, {d2, d3, d4, d5}
    3da8: ee00 2b41    	vmls.f64	d2, d0, d1
    3dac: f10a 0220    	add.w	r2, r10, #0x20
    3db0: ed8a 2b04    	vstr	d2, [r10, #16]
    3db4: ed9c 1b04    	vldr	d1, [r12, #16]
    3db8: ee00 3b41    	vmls.f64	d3, d0, d1
    3dbc: ed8a 3b06    	vstr	d3, [r10, #24]
    3dc0: ed9c 1b06    	vldr	d1, [r12, #24]
    3dc4: ee00 4b41    	vmls.f64	d4, d0, d1
    3dc8: ed8a 4b08    	vstr	d4, [r10, #32]
    3dcc: ed9c 1b08    	vldr	d1, [r12, #32]
    3dd0: f10c 0c20    	add.w	r12, r12, #0x20
    3dd4: ee00 5b41    	vmls.f64	d5, d0, d1
    3dd8: ed8a 5b0a    	vstr	d5, [r10, #40]
    3ddc: 4692         	mov	r10, r2
    3dde: d1db         	bne	0x3d98 <orange_dsp::exponential::block::<false, 3, 5>+0x3f0> @ imm = #-0x4a
    3de0: e779         	b	0x3cd6 <orange_dsp::exponential::block::<false, 3, 5>+0x32e> @ imm = #-0x10e
    3de2: bf00         	nop
    3de4: bf00         	nop
    3de6: bf00         	nop
    3de8: ed9d 0b66    	vldr	d0, [sp, #408]
    3dec: a85e         	add	r0, sp, #0x178
    3dee: 2400         	movs	r4, #0x0
    3df0: ed9d 1b98    	vldr	d1, [sp, #608]
    3df4: 9d09         	ldr	r5, [sp, #0x24]
    3df6: f04f 0b00    	mov.w	r11, #0x0
    3dfa: ee80 5b01    	vdiv.f64	d5, d0, d1
    3dfe: ec90 0b08    	vldmia	r0, {d0, d1, d2, d3}
    3e02: ed9d 4b8e    	vldr	d4, [sp, #568]
    3e06: a86a         	add	r0, sp, #0x1a8
    3e08: ee05 3b44    	vmls.f64	d3, d5, d4
    3e0c: eeb0 8b45    	vmov.f64	d8, d5
    3e10: e9dd 8607    	ldrd	r8, r6, [sp, #28]
    3e14: ed9d 4b8c    	vldr	d4, [sp, #560]
    3e18: e9dd a905    	ldrd	r10, r9, [sp, #20]
    3e1c: ee83 4b04    	vdiv.f64	d4, d3, d4
    3e20: ed9d 3b82    	vldr	d3, [sp, #520]
    3e24: ee04 2b43    	vmls.f64	d2, d4, d3
    3e28: ed9d 3b84    	vldr	d3, [sp, #528]
    3e2c: ee05 2b43    	vmls.f64	d2, d5, d3
    3e30: ed9d 3b80    	vldr	d3, [sp, #512]
    3e34: ee82 6b03    	vdiv.f64	d6, d2, d3
    3e38: ed9d 2b76    	vldr	d2, [sp, #472]
    3e3c: ee06 1b42    	vmls.f64	d1, d6, d2
    3e40: ed9d 2b78    	vldr	d2, [sp, #480]
    3e44: ee04 1b42    	vmls.f64	d1, d4, d2
    3e48: ed9d 2b7a    	vldr	d2, [sp, #488]
    3e4c: ee05 1b42    	vmls.f64	d1, d5, d2
    3e50: ed9d 2b74    	vldr	d2, [sp, #464]
    3e54: ee81 7b02    	vdiv.f64	d7, d1, d2
    3e58: ec90 1b06    	vldmia	r0, {d1, d2, d3}
    3e5c: ed8d 9b1e    	vstr	d9, [sp, #120]
    3e60: eeb0 9b44    	vmov.f64	d9, d4
    3e64: ee07 0b41    	vmls.f64	d0, d7, d1
    3e68: ed9d 1b70    	vldr	d1, [sp, #448]
    3e6c: ee06 0b42    	vmls.f64	d0, d6, d2
    3e70: ee04 0b43    	vmls.f64	d0, d4, d3
    3e74: ee05 0b41    	vmls.f64	d0, d5, d1
    3e78: ed9d 1b68    	vldr	d1, [sp, #416]
    3e7c: ee80 ab01    	vdiv.f64	d10, d0, d1
    3e80: ed8d 7b1a    	vstr	d7, [sp, #104]
    3e84: ed8d 6b1c    	vstr	d6, [sp, #112]
    3e88: 2000         	movs	r0, #0x0
    3e8a: 4631         	mov	r1, r6
    3e8c: f6c3 70f0    	movt	r0, #0x3ff0
    3e90: 462a         	mov	r2, r5
    3e92: eba0 5004    	sub.w	r0, r0, r4, lsl #20
    3e96: ec40 bb10    	vmov	d0, r11, r0
    3e9a: a89a         	add	r0, sp, #0x268
    3e9c: ed9d 1b1a    	vldr	d1, [sp, #104]
    3ea0: ed9d db12    	vldr	d13, [sp, #72]
    3ea4: ee01 db00    	vmla.f64	d13, d1, d0
    3ea8: ed9d 1b1c    	vldr	d1, [sp, #112]
    3eac: ed9d bb0e    	vldr	d11, [sp, #56]
    3eb0: ee0a bb00    	vmla.f64	d11, d10, d0
    3eb4: ed9d fb10    	vldr	d15, [sp, #64]
    3eb8: ee01 fb00    	vmla.f64	d15, d1, d0
    3ebc: ed9d cb14    	vldr	d12, [sp, #80]
    3ec0: ee09 cb00    	vmla.f64	d12, d9, d0
    3ec4: ed9d eb0c    	vldr	d14, [sp, #48]
    3ec8: ee08 eb00    	vmla.f64	d14, d8, d0
    3ecc: ed85 bb0a    	vstr	d11, [r5, #40]
    3ed0: ed85 fb0c    	vstr	d15, [r5, #48]
    3ed4: ed85 db14    	vstr	d13, [r5, #80]
    3ed8: ed85 cb16    	vstr	d12, [r5, #88]
    3edc: ed85 eb04    	vstr	d14, [r5, #16]
    3ee0: f001 fb3a    	bl	0x5558 <orange_dsp::exponential::evaluate::<false, 3, 5>> @ imm = #0x1674
    3ee4: ed9d 0bd6    	vldr	d0, [sp, #856]
    3ee8: ed9d 1b1e    	vldr	d1, [sp, #120]
    3eec: eeb4 0b41    	vcmp.f64	d0, d1
    3ef0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3ef4: d404         	bmi	0x3f00 <orange_dsp::exponential::block::<false, 3, 5>+0x558> @ imm = #0x8
    3ef6: 3401         	adds	r4, #0x1
    3ef8: 2c10         	cmp	r4, #0x10
    3efa: d1c5         	bne	0x3e88 <orange_dsp::exponential::block::<false, 3, 5>+0x4e0> @ imm = #-0x76
    3efc: e02c         	b	0x3f58 <orange_dsp::exponential::block::<false, 3, 5>+0x5b0> @ imm = #0x58
    3efe: bf00         	nop
    3f00: ac20         	add	r4, sp, #0x80
    3f02: 22f8         	movs	r2, #0xf8
    3f04: 4620         	mov	r0, r4
    3f06: a99a         	add	r1, sp, #0x268
    3f08: f008 f92e    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x825c
    3f0c: ed9f 0b2c    	vldr	d0, [pc, #176]          @ 0x3fc0 <orange_dsp::exponential::block::<false, 3, 5>+0x618>
    3f10: e9dd 1e03    	ldrd	r1, lr, [sp, #12]
    3f14: ed9f 8b2c    	vldr	d8, [pc, #176]          @ 0x3fc8 <orange_dsp::exponential::block::<false, 3, 5>+0x620>
    3f18: ed8d cb14    	vstr	d12, [sp, #80]
    3f1c: ed8d db12    	vstr	d13, [sp, #72]
    3f20: ed8d fb10    	vstr	d15, [sp, #64]
    3f24: ed8d bb0e    	vstr	d11, [sp, #56]
    3f28: ed8d eb0c    	vstr	d14, [sp, #48]
    3f2c: f1be 0f18    	cmp.w	lr, #0x18
    3f30: f47f ad7b    	bne.w	0x3a2a <orange_dsp::exponential::block::<false, 3, 5>+0x82> @ imm = #-0x50a
    3f34: ed9d 9b5c    	vldr	d9, [sp, #368]
    3f38: f04f 0e18    	mov.w	lr, #0x18
    3f3c: eeb4 9b40    	vcmp.f64	d9, d0
    3f40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3f44: d534         	bpl	0x3fb0 <orange_dsp::exponential::block::<false, 3, 5>+0x608> @ imm = #0x68
    3f46: 990a         	ldr	r1, [sp, #0x28]
    3f48: 2001         	movs	r0, #0x1
    3f4a: ed81 9b00    	vstr	d9, [r1]
    3f4e: f881 e008    	strb.w	lr, [r1, #0x8]
    3f52: e021         	b	0x3f98 <orange_dsp::exponential::block::<false, 3, 5>+0x5f0> @ imm = #0x42
    3f54: bf00         	nop
    3f56: bf00         	nop
    3f58: ed9d 9b1e    	vldr	d9, [sp, #120]
    3f5c: e9dd 1001    	ldrd	r1, r0, [sp, #4]
    3f60: ed9d 0b0c    	vldr	d0, [sp, #48]
    3f64: e9c5 0118    	strd	r0, r1, [r5, #96]
    3f68: ed85 0b04    	vstr	d0, [r5, #16]
    3f6c: ed9d 0b0e    	vldr	d0, [sp, #56]
    3f70: ed85 0b0a    	vstr	d0, [r5, #40]
    3f74: ed9d 0b10    	vldr	d0, [sp, #64]
    3f78: ed85 0b0c    	vstr	d0, [r5, #48]
    3f7c: ed9d 0b12    	vldr	d0, [sp, #72]
    3f80: ed85 0b14    	vstr	d0, [r5, #80]
    3f84: ed9d 0b14    	vldr	d0, [sp, #80]
    3f88: ed85 0b16    	vstr	d0, [r5, #88]
    3f8c: 990a         	ldr	r1, [sp, #0x28]
    3f8e: 980b         	ldr	r0, [sp, #0x2c]
    3f90: ed81 9b00    	vstr	d9, [r1]
    3f94: 7208         	strb	r0, [r1, #0x8]
    3f96: 2000         	movs	r0, #0x0
    3f98: 7248         	strb	r0, [r1, #0x9]
    3f9a: f50d 7d58    	add.w	sp, sp, #0x360
    3f9e: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    3fa2: b001         	add	sp, #0x4
    3fa4: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    3fa8: bdf0         	pop	{r4, r5, r6, r7, pc}
    3faa: bf00         	nop
    3fac: bf00         	nop
    3fae: bf00         	nop
    3fb0: 980a         	ldr	r0, [sp, #0x28]
    3fb2: ed80 9b00    	vstr	d9, [r0]
    3fb6: f8a0 e008    	strh.w	lr, [r0, #0x8]
    3fba: e7ee         	b	0x3f9a <orange_dsp::exponential::block::<false, 3, 5>+0x5f2> @ imm = #-0x24
    3fbc: bf00         	nop
    3fbe: bf00         	nop
    3fc0: bb bd d7 d9  	.word	0xd9d7bdbb
    3fc4: df 7c db 3d  	.word	0x3ddb7cdf
    3fc8: a7 8e a8 99  	.word	0x99a88ea7
    3fcc: c2 57 f3 3a  	.word	0x3af357c2

00003fd0 <orange_dsp::exponential::block::<false, 4, 2>>:
    3fd0: b5f0         	push	{r4, r5, r6, r7, lr}
    3fd2: af03         	add	r7, sp, #0xc
    3fd4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    3fd8: b081         	sub	sp, #0x4
    3fda: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    3fde: f5ad 7d36    	sub.w	sp, sp, #0x2d8
    3fe2: ae04         	add	r6, sp, #0x10
    3fe4: 9000         	str	r0, [sp]
    3fe6: 4630         	mov	r0, r6
    3fe8: 4691         	mov	r9, r2
    3fea: 4688         	mov	r8, r1
    3fec: f001 fcdc    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x19b8
    3ff0: ed99 eb0e    	vldr	d14, [r9, #56]
    3ff4: f106 0028    	add.w	r0, r6, #0x28
    3ff8: 2600         	movs	r6, #0x0
    3ffa: ed99 8b18    	vldr	d8, [r9, #96]
    3ffe: 9002         	str	r0, [sp, #0x8]
    4000: ed9f 9b03    	vldr	d9, [pc, #12]           @ 0x4010 <orange_dsp::exponential::block::<false, 4, 2>+0x40>
    4004: f8cd 8004    	str.w	r8, [sp, #0x4]
    4008: e015         	b	0x4036 <orange_dsp::exponential::block::<false, 4, 2>+0x66> @ imm = #0x2a
    400a: bf00         	nop
    400c: bf00         	nop
    400e: bf00         	nop
    4010: a7 8e a8 99  	.word	0x99a88ea7
    4014: c2 57 f3 3a  	.word	0x3af357c2
    4018: bb bd d7 d9  	.word	0xd9d7bdbb
    401c: df 7c db 3d  	.word	0x3ddb7cdf
    4020: 9e03         	ldr	r6, [sp, #0xc]
    4022: 22f8         	movs	r2, #0xf8
    4024: a804         	add	r0, sp, #0x10
    4026: 4621         	mov	r1, r4
    4028: 3601         	adds	r6, #0x1
    402a: f008 f89d    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x813a
    402e: eeb0 8b4a    	vmov.f64	d8, d10
    4032: eeb0 eb4b    	vmov.f64	d14, d11
    4036: 2e18         	cmp	r6, #0x18
    4038: f000 8236    	beq.w	0x44a8 <orange_dsp::exponential::block::<false, 4, 2>+0x4d8> @ imm = #0x46c
    403c: ed9d fb40    	vldr	d15, [sp, #256]
    4040: ed1f 0b0b    	vldr	d0, [pc, #-44]          @ 0x4018 <orange_dsp::exponential::block::<false, 4, 2>+0x48>
    4044: eeb4 fb40    	vcmp.f64	d15, d0
    4048: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    404c: f100 8236    	bmi.w	0x44bc <orange_dsp::exponential::block::<false, 4, 2>+0x4ec> @ imm = #0x46c
    4050: 9603         	str	r6, [sp, #0xc]
    4052: ae46         	add	r6, sp, #0x118
    4054: 9d02         	ldr	r5, [sp, #0x8]
    4056: 9807         	ldr	r0, [sp, #0x1c]
    4058: 9043         	str	r0, [sp, #0x10c]
    405a: 9806         	ldr	r0, [sp, #0x18]
    405c: 9042         	str	r0, [sp, #0x108]
    405e: 22c8         	movs	r2, #0xc8
    4060: 4630         	mov	r0, r6
    4062: 4629         	mov	r1, r5
    4064: f8dd a014    	ldr.w	r10, [sp, #0x14]
    4068: f8cd a114    	str.w	r10, [sp, #0x114]
    406c: f8dd b010    	ldr.w	r11, [sp, #0x10]
    4070: f8cd b110    	str.w	r11, [sp, #0x110]
    4074: f008 f878    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x80f0
    4078: ed9d 0b46    	vldr	d0, [sp, #280]
    407c: 4634         	mov	r4, r6
    407e: f50d 7888    	add.w	r8, sp, #0x110
    4082: ed9d 1b50    	vldr	d1, [sp, #320]
    4086: a842         	add	r0, sp, #0x108
    4088: 2228         	movs	r2, #0x28
    408a: eeb0 1bc1    	vabs.f64	d1, d1
    408e: eeb0 0bc0    	vabs.f64	d0, d0
    4092: eeb4 1b40    	vcmp.f64	d1, d0
    4096: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    409a: bfc8         	it	gt
    409c: 3428         	addgt	r4, #0x28
    409e: bfc8         	it	gt
    40a0: 4680         	movgt	r8, r0
    40a2: 4630         	mov	r0, r6
    40a4: 4621         	mov	r1, r4
    40a6: f007 fbf3    	bl	0xb890 <__aeabi_memmove8> @ imm = #0x77e6
    40aa: 4628         	mov	r0, r5
    40ac: c86e         	ldm	r0!, {r1, r2, r3, r5, r6}
    40ae: c46e         	stm	r4!, {r1, r2, r3, r5, r6}
    40b0: e890 006e    	ldm.w	r0, {r1, r2, r3, r5, r6}
    40b4: c46e         	stm	r4!, {r1, r2, r3, r5, r6}
    40b6: ed9d 0b46    	vldr	d0, [sp, #280]
    40ba: ec51 0b10    	vmov	r0, r1, d0
    40be: e9d8 0200    	ldrd	r0, r2, [r8]
    40c2: 9245         	str	r2, [sp, #0x114]
    40c4: f64f 72ff    	movw	r2, #0xffff
    40c8: 9044         	str	r0, [sp, #0x110]
    40ca: f021 4000    	bic	r0, r1, #0x80000000
    40ce: f6c7 72ef    	movt	r2, #0x7fef
    40d2: 4290         	cmp	r0, r2
    40d4: e9c8 ba00    	strd	r11, r10, [r8]
    40d8: f300 81de    	bgt.w	0x4498 <orange_dsp::exponential::block::<false, 4, 2>+0x4c8> @ imm = #0x3bc
    40dc: eeb0 1bc0    	vabs.f64	d1, d0
    40e0: eeb4 1b49    	vcmp.f64	d1, d9
    40e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    40e8: f100 81d6    	bmi.w	0x4498 <orange_dsp::exponential::block::<false, 4, 2>+0x4c8> @ imm = #0x3ac
    40ec: ed9d 2b50    	vldr	d2, [sp, #320]
    40f0: ee82 2b00    	vdiv.f64	d2, d2, d0
    40f4: ed9d 1b48    	vldr	d1, [sp, #288]
    40f8: ed9d 3b52    	vldr	d3, [sp, #328]
    40fc: ee02 3b41    	vmls.f64	d3, d2, d1
    4100: ec51 0b13    	vmov	r0, r1, d3
    4104: f021 4000    	bic	r0, r1, #0x80000000
    4108: 4290         	cmp	r0, r2
    410a: f300 81c5    	bgt.w	0x4498 <orange_dsp::exponential::block::<false, 4, 2>+0x4c8> @ imm = #0x38a
    410e: eeb0 4bc3    	vabs.f64	d4, d3
    4112: eeb4 4b49    	vcmp.f64	d4, d9
    4116: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    411a: f100 81bd    	bmi.w	0x4498 <orange_dsp::exponential::block::<false, 4, 2>+0x4c8> @ imm = #0x37a
    411e: ed9d 5b44    	vldr	d5, [sp, #272]
    4122: ac78         	add	r4, sp, #0x1e0
    4124: f8dd 8004    	ldr.w	r8, [sp, #0x4]
    4128: ed9d 4b42    	vldr	d4, [sp, #264]
    412c: 4620         	mov	r0, r4
    412e: 4641         	mov	r1, r8
    4130: ee02 4b45    	vmls.f64	d4, d2, d5
    4134: 464a         	mov	r2, r9
    4136: ee84 db03    	vdiv.f64	d13, d4, d3
    413a: ee01 5b4d    	vmls.f64	d5, d1, d13
    413e: ee38 ab0d    	vadd.f64	d10, d8, d13
    4142: ee85 cb00    	vdiv.f64	d12, d5, d0
    4146: ed89 ab18    	vstr	d10, [r9, #96]
    414a: ee3e bb0c    	vadd.f64	d11, d14, d12
    414e: ed89 bb0e    	vstr	d11, [r9, #56]
    4152: f001 fc29    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x1852
    4156: ed9d 0bb4    	vldr	d0, [sp, #720]
    415a: eeb4 0b4f    	vcmp.f64	d0, d15
    415e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4162: f53f af5d    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x146
    4166: eeb6 0b00    	vmov.f64	d0, #5.000000e-01
    416a: 4620         	mov	r0, r4
    416c: eeb0 bb4e    	vmov.f64	d11, d14
    4170: 4641         	mov	r1, r8
    4172: eeb0 ab48    	vmov.f64	d10, d8
    4176: 464a         	mov	r2, r9
    4178: ee0c bb00    	vmla.f64	d11, d12, d0
    417c: ee0d ab00    	vmla.f64	d10, d13, d0
    4180: ed89 bb0e    	vstr	d11, [r9, #56]
    4184: ed89 ab18    	vstr	d10, [r9, #96]
    4188: f001 fc0e    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x181c
    418c: ed9d 0bb4    	vldr	d0, [sp, #720]
    4190: eeb4 0b4f    	vcmp.f64	d0, d15
    4194: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4198: f53f af42    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x17c
    419c: eeb5 0b00    	vmov.f64	d0, #2.500000e-01
    41a0: 4620         	mov	r0, r4
    41a2: eeb0 bb4e    	vmov.f64	d11, d14
    41a6: 4641         	mov	r1, r8
    41a8: eeb0 ab48    	vmov.f64	d10, d8
    41ac: 464a         	mov	r2, r9
    41ae: ee0c bb00    	vmla.f64	d11, d12, d0
    41b2: ee0d ab00    	vmla.f64	d10, d13, d0
    41b6: ed89 bb0e    	vstr	d11, [r9, #56]
    41ba: ed89 ab18    	vstr	d10, [r9, #96]
    41be: f001 fbf3    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x17e6
    41c2: ed9d 0bb4    	vldr	d0, [sp, #720]
    41c6: eeb4 0b4f    	vcmp.f64	d0, d15
    41ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    41ce: f53f af27    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x1b2
    41d2: eeb4 0b00    	vmov.f64	d0, #1.250000e-01
    41d6: 4620         	mov	r0, r4
    41d8: eeb0 bb4e    	vmov.f64	d11, d14
    41dc: 4641         	mov	r1, r8
    41de: eeb0 ab48    	vmov.f64	d10, d8
    41e2: 464a         	mov	r2, r9
    41e4: ee0c bb00    	vmla.f64	d11, d12, d0
    41e8: ee0d ab00    	vmla.f64	d10, d13, d0
    41ec: ed89 bb0e    	vstr	d11, [r9, #56]
    41f0: ed89 ab18    	vstr	d10, [r9, #96]
    41f4: f001 fbd8    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x17b0
    41f8: ed9d 0bb4    	vldr	d0, [sp, #720]
    41fc: eeb4 0b4f    	vcmp.f64	d0, d15
    4200: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4204: f53f af0c    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x1e8
    4208: ed9f 0bb9    	vldr	d0, [pc, #740]          @ 0x44f0 <orange_dsp::exponential::block::<false, 4, 2>+0x520>
    420c: eeb0 bb4e    	vmov.f64	d11, d14
    4210: 4620         	mov	r0, r4
    4212: eeb0 ab48    	vmov.f64	d10, d8
    4216: 4641         	mov	r1, r8
    4218: 464a         	mov	r2, r9
    421a: ee0c bb00    	vmla.f64	d11, d12, d0
    421e: ee0d ab00    	vmla.f64	d10, d13, d0
    4222: ed89 bb0e    	vstr	d11, [r9, #56]
    4226: ed89 ab18    	vstr	d10, [r9, #96]
    422a: f001 fbbd    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x177a
    422e: ed9d 0bb4    	vldr	d0, [sp, #720]
    4232: eeb4 0b4f    	vcmp.f64	d0, d15
    4236: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    423a: f53f aef1    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x21e
    423e: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0x44f8 <orange_dsp::exponential::block::<false, 4, 2>+0x528>
    4242: eeb0 bb4e    	vmov.f64	d11, d14
    4246: 4620         	mov	r0, r4
    4248: eeb0 ab48    	vmov.f64	d10, d8
    424c: 4641         	mov	r1, r8
    424e: 464a         	mov	r2, r9
    4250: ee0c bb00    	vmla.f64	d11, d12, d0
    4254: ee0d ab00    	vmla.f64	d10, d13, d0
    4258: ed89 bb0e    	vstr	d11, [r9, #56]
    425c: ed89 ab18    	vstr	d10, [r9, #96]
    4260: f001 fba2    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x1744
    4264: ed9d 0bb4    	vldr	d0, [sp, #720]
    4268: eeb4 0b4f    	vcmp.f64	d0, d15
    426c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4270: f53f aed6    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x254
    4274: ed9f 0ba2    	vldr	d0, [pc, #648]          @ 0x4500 <orange_dsp::exponential::block::<false, 4, 2>+0x530>
    4278: eeb0 bb4e    	vmov.f64	d11, d14
    427c: 4620         	mov	r0, r4
    427e: eeb0 ab48    	vmov.f64	d10, d8
    4282: 4641         	mov	r1, r8
    4284: 464a         	mov	r2, r9
    4286: ee0c bb00    	vmla.f64	d11, d12, d0
    428a: ee0d ab00    	vmla.f64	d10, d13, d0
    428e: ed89 bb0e    	vstr	d11, [r9, #56]
    4292: ed89 ab18    	vstr	d10, [r9, #96]
    4296: f001 fb87    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x170e
    429a: ed9d 0bb4    	vldr	d0, [sp, #720]
    429e: eeb4 0b4f    	vcmp.f64	d0, d15
    42a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42a6: f53f aebb    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x28a
    42aa: ed9f 0b97    	vldr	d0, [pc, #604]          @ 0x4508 <orange_dsp::exponential::block::<false, 4, 2>+0x538>
    42ae: eeb0 bb4e    	vmov.f64	d11, d14
    42b2: 4620         	mov	r0, r4
    42b4: eeb0 ab48    	vmov.f64	d10, d8
    42b8: 4641         	mov	r1, r8
    42ba: 464a         	mov	r2, r9
    42bc: ee0c bb00    	vmla.f64	d11, d12, d0
    42c0: ee0d ab00    	vmla.f64	d10, d13, d0
    42c4: ed89 bb0e    	vstr	d11, [r9, #56]
    42c8: ed89 ab18    	vstr	d10, [r9, #96]
    42cc: f001 fb6c    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x16d8
    42d0: ed9d 0bb4    	vldr	d0, [sp, #720]
    42d4: eeb4 0b4f    	vcmp.f64	d0, d15
    42d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    42dc: f53f aea0    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x2c0
    42e0: ed9f 0b8b    	vldr	d0, [pc, #556]          @ 0x4510 <orange_dsp::exponential::block::<false, 4, 2>+0x540>
    42e4: eeb0 bb4e    	vmov.f64	d11, d14
    42e8: 4620         	mov	r0, r4
    42ea: eeb0 ab48    	vmov.f64	d10, d8
    42ee: 4641         	mov	r1, r8
    42f0: 464a         	mov	r2, r9
    42f2: ee0c bb00    	vmla.f64	d11, d12, d0
    42f6: ee0d ab00    	vmla.f64	d10, d13, d0
    42fa: ed89 bb0e    	vstr	d11, [r9, #56]
    42fe: ed89 ab18    	vstr	d10, [r9, #96]
    4302: f001 fb51    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x16a2
    4306: ed9d 0bb4    	vldr	d0, [sp, #720]
    430a: eeb4 0b4f    	vcmp.f64	d0, d15
    430e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4312: f53f ae85    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x2f6
    4316: ed9f 0b80    	vldr	d0, [pc, #512]          @ 0x4518 <orange_dsp::exponential::block::<false, 4, 2>+0x548>
    431a: eeb0 bb4e    	vmov.f64	d11, d14
    431e: 4620         	mov	r0, r4
    4320: eeb0 ab48    	vmov.f64	d10, d8
    4324: 4641         	mov	r1, r8
    4326: 464a         	mov	r2, r9
    4328: ee0c bb00    	vmla.f64	d11, d12, d0
    432c: ee0d ab00    	vmla.f64	d10, d13, d0
    4330: ed89 bb0e    	vstr	d11, [r9, #56]
    4334: ed89 ab18    	vstr	d10, [r9, #96]
    4338: f001 fb36    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x166c
    433c: ed9d 0bb4    	vldr	d0, [sp, #720]
    4340: eeb4 0b4f    	vcmp.f64	d0, d15
    4344: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4348: f53f ae6a    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x32c
    434c: ed9f 0b74    	vldr	d0, [pc, #464]          @ 0x4520 <orange_dsp::exponential::block::<false, 4, 2>+0x550>
    4350: eeb0 bb4e    	vmov.f64	d11, d14
    4354: 4620         	mov	r0, r4
    4356: eeb0 ab48    	vmov.f64	d10, d8
    435a: 4641         	mov	r1, r8
    435c: 464a         	mov	r2, r9
    435e: ee0c bb00    	vmla.f64	d11, d12, d0
    4362: ee0d ab00    	vmla.f64	d10, d13, d0
    4366: ed89 bb0e    	vstr	d11, [r9, #56]
    436a: ed89 ab18    	vstr	d10, [r9, #96]
    436e: f001 fb1b    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x1636
    4372: ed9d 0bb4    	vldr	d0, [sp, #720]
    4376: eeb4 0b4f    	vcmp.f64	d0, d15
    437a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    437e: f53f ae4f    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x362
    4382: ed9f 0b69    	vldr	d0, [pc, #420]          @ 0x4528 <orange_dsp::exponential::block::<false, 4, 2>+0x558>
    4386: eeb0 bb4e    	vmov.f64	d11, d14
    438a: 4620         	mov	r0, r4
    438c: eeb0 ab48    	vmov.f64	d10, d8
    4390: 4641         	mov	r1, r8
    4392: 464a         	mov	r2, r9
    4394: ee0c bb00    	vmla.f64	d11, d12, d0
    4398: ee0d ab00    	vmla.f64	d10, d13, d0
    439c: ed89 bb0e    	vstr	d11, [r9, #56]
    43a0: ed89 ab18    	vstr	d10, [r9, #96]
    43a4: f001 fb00    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x1600
    43a8: ed9d 0bb4    	vldr	d0, [sp, #720]
    43ac: eeb4 0b4f    	vcmp.f64	d0, d15
    43b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    43b4: f53f ae34    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x398
    43b8: ed9f 0b5d    	vldr	d0, [pc, #372]          @ 0x4530 <orange_dsp::exponential::block::<false, 4, 2>+0x560>
    43bc: eeb0 bb4e    	vmov.f64	d11, d14
    43c0: 4620         	mov	r0, r4
    43c2: eeb0 ab48    	vmov.f64	d10, d8
    43c6: 4641         	mov	r1, r8
    43c8: 464a         	mov	r2, r9
    43ca: ee0c bb00    	vmla.f64	d11, d12, d0
    43ce: ee0d ab00    	vmla.f64	d10, d13, d0
    43d2: ed89 bb0e    	vstr	d11, [r9, #56]
    43d6: ed89 ab18    	vstr	d10, [r9, #96]
    43da: f001 fae5    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x15ca
    43de: ed9d 0bb4    	vldr	d0, [sp, #720]
    43e2: eeb4 0b4f    	vcmp.f64	d0, d15
    43e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    43ea: f53f ae19    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x3ce
    43ee: ed9f 0b52    	vldr	d0, [pc, #328]          @ 0x4538 <orange_dsp::exponential::block::<false, 4, 2>+0x568>
    43f2: eeb0 bb4e    	vmov.f64	d11, d14
    43f6: 4620         	mov	r0, r4
    43f8: eeb0 ab48    	vmov.f64	d10, d8
    43fc: 4641         	mov	r1, r8
    43fe: 464a         	mov	r2, r9
    4400: ee0c bb00    	vmla.f64	d11, d12, d0
    4404: ee0d ab00    	vmla.f64	d10, d13, d0
    4408: ed89 bb0e    	vstr	d11, [r9, #56]
    440c: ed89 ab18    	vstr	d10, [r9, #96]
    4410: f001 faca    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x1594
    4414: ed9d 0bb4    	vldr	d0, [sp, #720]
    4418: eeb4 0b4f    	vcmp.f64	d0, d15
    441c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4420: f53f adfe    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x404
    4424: ed9f 0b46    	vldr	d0, [pc, #280]          @ 0x4540 <orange_dsp::exponential::block::<false, 4, 2>+0x570>
    4428: eeb0 bb4e    	vmov.f64	d11, d14
    442c: 4620         	mov	r0, r4
    442e: eeb0 ab48    	vmov.f64	d10, d8
    4432: 4641         	mov	r1, r8
    4434: 464a         	mov	r2, r9
    4436: ee0c bb00    	vmla.f64	d11, d12, d0
    443a: ee0d ab00    	vmla.f64	d10, d13, d0
    443e: ed89 bb0e    	vstr	d11, [r9, #56]
    4442: ed89 ab18    	vstr	d10, [r9, #96]
    4446: f001 faaf    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x155e
    444a: ed9d 0bb4    	vldr	d0, [sp, #720]
    444e: eeb4 0b4f    	vcmp.f64	d0, d15
    4452: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4456: f53f ade3    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x43a
    445a: ed9f 0b3b    	vldr	d0, [pc, #236]          @ 0x4548 <orange_dsp::exponential::block::<false, 4, 2>+0x578>
    445e: eeb0 bb4e    	vmov.f64	d11, d14
    4462: 4620         	mov	r0, r4
    4464: eeb0 ab48    	vmov.f64	d10, d8
    4468: 4641         	mov	r1, r8
    446a: 464a         	mov	r2, r9
    446c: ee0c bb00    	vmla.f64	d11, d12, d0
    4470: ee0d ab00    	vmla.f64	d10, d13, d0
    4474: ed89 bb0e    	vstr	d11, [r9, #56]
    4478: ed89 ab18    	vstr	d10, [r9, #96]
    447c: f001 fa94    	bl	0x59a8 <orange_dsp::exponential::evaluate::<false, 4, 2>> @ imm = #0x1528
    4480: ed9d 0bb4    	vldr	d0, [sp, #720]
    4484: eeb4 0b4f    	vcmp.f64	d0, d15
    4488: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    448c: f53f adc8    	bmi.w	0x4020 <orange_dsp::exponential::block::<false, 4, 2>+0x50> @ imm = #-0x470
    4490: ed89 eb0e    	vstr	d14, [r9, #56]
    4494: ed89 8b18    	vstr	d8, [r9, #96]
    4498: 9900         	ldr	r1, [sp]
    449a: 9803         	ldr	r0, [sp, #0xc]
    449c: ed81 fb00    	vstr	d15, [r1]
    44a0: 7208         	strb	r0, [r1, #0x8]
    44a2: 2000         	movs	r0, #0x0
    44a4: 7248         	strb	r0, [r1, #0x9]
    44a6: e017         	b	0x44d8 <orange_dsp::exponential::block::<false, 4, 2>+0x508> @ imm = #0x2e
    44a8: ed9d fb40    	vldr	d15, [sp, #256]
    44ac: 2618         	movs	r6, #0x18
    44ae: ed9f 0b0e    	vldr	d0, [pc, #56]           @ 0x44e8 <orange_dsp::exponential::block::<false, 4, 2>+0x518>
    44b2: eeb4 fb40    	vcmp.f64	d15, d0
    44b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    44ba: d509         	bpl	0x44d0 <orange_dsp::exponential::block::<false, 4, 2>+0x500> @ imm = #0x12
    44bc: 9900         	ldr	r1, [sp]
    44be: 2001         	movs	r0, #0x1
    44c0: ed81 fb00    	vstr	d15, [r1]
    44c4: 720e         	strb	r6, [r1, #0x8]
    44c6: 7248         	strb	r0, [r1, #0x9]
    44c8: e006         	b	0x44d8 <orange_dsp::exponential::block::<false, 4, 2>+0x508> @ imm = #0xc
    44ca: bf00         	nop
    44cc: bf00         	nop
    44ce: bf00         	nop
    44d0: 9800         	ldr	r0, [sp]
    44d2: ed80 fb00    	vstr	d15, [r0]
    44d6: 8106         	strh	r6, [r0, #0x8]
    44d8: f50d 7d36    	add.w	sp, sp, #0x2d8
    44dc: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    44e0: b001         	add	sp, #0x4
    44e2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    44e6: bdf0         	pop	{r4, r5, r6, r7, pc}
    44e8: bb bd d7 d9  	.word	0xd9d7bdbb
    44ec: df 7c db 3d  	.word	0x3ddb7cdf
    44f0: 00 00 00 00  	.word	0x00000000
    44f4: 00 00 b0 3f  	.word	0x3fb00000
    44f8: 00 00 00 00  	.word	0x00000000
    44fc: 00 00 a0 3f  	.word	0x3fa00000
    4500: 00 00 00 00  	.word	0x00000000
    4504: 00 00 90 3f  	.word	0x3f900000
    4508: 00 00 00 00  	.word	0x00000000
    450c: 00 00 80 3f  	.word	0x3f800000
    4510: 00 00 00 00  	.word	0x00000000
    4514: 00 00 70 3f  	.word	0x3f700000
    4518: 00 00 00 00  	.word	0x00000000
    451c: 00 00 60 3f  	.word	0x3f600000
    4520: 00 00 00 00  	.word	0x00000000
    4524: 00 00 50 3f  	.word	0x3f500000
    4528: 00 00 00 00  	.word	0x00000000
    452c: 00 00 40 3f  	.word	0x3f400000
    4530: 00 00 00 00  	.word	0x00000000
    4534: 00 00 30 3f  	.word	0x3f300000
    4538: 00 00 00 00  	.word	0x00000000
    453c: 00 00 20 3f  	.word	0x3f200000
    4540: 00 00 00 00  	.word	0x00000000
    4544: 00 00 10 3f  	.word	0x3f100000
    4548: 00 00 00 00  	.word	0x00000000
    454c: 00 00 00 3f  	.word	0x3f000000

00004550 <orange_dsp::exponential::evaluate::<false, 0, 1>>:
    4550: b5f0         	push	{r4, r5, r6, r7, lr}
    4552: af03         	add	r7, sp, #0xc
    4554: f84d bd04    	str	r11, [sp, #-4]!
    4558: ed2d 8b02    	vpush	{d8}
    455c: b0ce         	sub	sp, #0x138
    455e: 466e         	mov	r6, sp
    4560: 4604         	mov	r4, r0
    4562: 4630         	mov	r0, r6
    4564: 4615         	mov	r5, r2
    4566: f7fe fafb    	bl	0x2b60 <orange_dsp::exponential::observations::<false>> @ imm = #-0x1a0a
    456a: ed95 8b00    	vldr	d8, [r5]
    456e: a826         	add	r0, sp, #0x98
    4570: 2100         	movs	r1, #0x0
    4572: 4632         	mov	r2, r6
    4574: 2500         	movs	r5, #0x0
    4576: f005 ff0b    	bl	0xa390 <orange_dsp::exponential::law> @ imm = #0x5e16
    457a: eeb7 0b00    	vmov.f64	d0, #1.000000e+00
    457e: f104 0030    	add.w	r0, r4, #0x30
    4582: 21c0         	movs	r1, #0xc0
    4584: ed9d 1b28    	vldr	d1, [sp, #160]
    4588: eeb0 3b40    	vmov.f64	d3, d0
    458c: eeb5 1b40    	vcmp.f64	d1, #0
    4590: ed9f 2b9b    	vldr	d2, [pc, #620]          @ 0x4800 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x2b0>
    4594: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4598: ee01 3b02    	vmla.f64	d3, d1, d2
    459c: ed9d 2b2a    	vldr	d2, [sp, #168]
    45a0: bf18         	it	ne
    45a2: eeb0 0b43    	vmovne.f64	d0, d3
    45a6: ed9f 1b98    	vldr	d1, [pc, #608]          @ 0x4808 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x2b8>
    45aa: eeb0 3b40    	vmov.f64	d3, d0
    45ae: eeb5 2b40    	vcmp.f64	d2, #0
    45b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45b6: ee02 3b01    	vmla.f64	d3, d2, d1
    45ba: ed9d 1b2c    	vldr	d1, [sp, #176]
    45be: bf18         	it	ne
    45c0: eeb0 0b43    	vmovne.f64	d0, d3
    45c4: ed9f 2b92    	vldr	d2, [pc, #584]          @ 0x4810 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x2c0>
    45c8: eeb0 3b40    	vmov.f64	d3, d0
    45cc: eeb5 1b40    	vcmp.f64	d1, #0
    45d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45d4: ee01 3b02    	vmla.f64	d3, d1, d2
    45d8: ed9d 2b2e    	vldr	d2, [sp, #184]
    45dc: bf18         	it	ne
    45de: eeb0 0b43    	vmovne.f64	d0, d3
    45e2: ed9f 1b8d    	vldr	d1, [pc, #564]          @ 0x4818 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x2c8>
    45e6: eeb0 3b40    	vmov.f64	d3, d0
    45ea: eeb5 2b40    	vcmp.f64	d2, #0
    45ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    45f2: ee02 3b01    	vmla.f64	d3, d2, d1
    45f6: ed9d 1b30    	vldr	d1, [sp, #192]
    45fa: bf18         	it	ne
    45fc: eeb0 0b43    	vmovne.f64	d0, d3
    4600: ed9f 2b87    	vldr	d2, [pc, #540]          @ 0x4820 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x2d0>
    4604: eeb0 3b40    	vmov.f64	d3, d0
    4608: eeb5 1b40    	vcmp.f64	d1, #0
    460c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4610: ee01 3b02    	vmla.f64	d3, d1, d2
    4614: ed9d 2b32    	vldr	d2, [sp, #200]
    4618: bf18         	it	ne
    461a: eeb0 0b43    	vmovne.f64	d0, d3
    461e: ed9f 1b82    	vldr	d1, [pc, #520]          @ 0x4828 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x2d8>
    4622: eeb0 3b40    	vmov.f64	d3, d0
    4626: eeb5 2b40    	vcmp.f64	d2, #0
    462a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    462e: ee02 3b01    	vmla.f64	d3, d2, d1
    4632: ed9d 1b34    	vldr	d1, [sp, #208]
    4636: bf18         	it	ne
    4638: eeb0 0b43    	vmovne.f64	d0, d3
    463c: ed9f 2b7c    	vldr	d2, [pc, #496]          @ 0x4830 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x2e0>
    4640: eeb0 3b40    	vmov.f64	d3, d0
    4644: eeb5 1b40    	vcmp.f64	d1, #0
    4648: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    464c: ee01 3b02    	vmla.f64	d3, d1, d2
    4650: ed9d 2b36    	vldr	d2, [sp, #216]
    4654: bf18         	it	ne
    4656: eeb0 0b43    	vmovne.f64	d0, d3
    465a: ed9f 1b77    	vldr	d1, [pc, #476]          @ 0x4838 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x2e8>
    465e: eeb0 3b40    	vmov.f64	d3, d0
    4662: eeb5 2b40    	vcmp.f64	d2, #0
    4666: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    466a: ee02 3b01    	vmla.f64	d3, d2, d1
    466e: ed9d 1b38    	vldr	d1, [sp, #224]
    4672: bf18         	it	ne
    4674: eeb0 0b43    	vmovne.f64	d0, d3
    4678: ed9f 2b71    	vldr	d2, [pc, #452]          @ 0x4840 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x2f0>
    467c: eeb0 3b40    	vmov.f64	d3, d0
    4680: eeb5 1b40    	vcmp.f64	d1, #0
    4684: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4688: ee01 3b02    	vmla.f64	d3, d1, d2
    468c: ed9d 2b3a    	vldr	d2, [sp, #232]
    4690: bf18         	it	ne
    4692: eeb0 0b43    	vmovne.f64	d0, d3
    4696: ed9f 1b6c    	vldr	d1, [pc, #432]          @ 0x4848 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x2f8>
    469a: eeb0 3b40    	vmov.f64	d3, d0
    469e: eeb5 2b40    	vcmp.f64	d2, #0
    46a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46a6: ee02 3b01    	vmla.f64	d3, d2, d1
    46aa: ed9d 1b3c    	vldr	d1, [sp, #240]
    46ae: bf18         	it	ne
    46b0: eeb0 0b43    	vmovne.f64	d0, d3
    46b4: ed9f 2b66    	vldr	d2, [pc, #408]          @ 0x4850 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x300>
    46b8: eeb0 3b40    	vmov.f64	d3, d0
    46bc: eeb5 1b40    	vcmp.f64	d1, #0
    46c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46c4: ee01 3b02    	vmla.f64	d3, d1, d2
    46c8: ed9d 2b3e    	vldr	d2, [sp, #248]
    46cc: bf18         	it	ne
    46ce: eeb0 0b43    	vmovne.f64	d0, d3
    46d2: ed9f 1b61    	vldr	d1, [pc, #388]          @ 0x4858 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x308>
    46d6: eeb0 3b40    	vmov.f64	d3, d0
    46da: eeb5 2b40    	vcmp.f64	d2, #0
    46de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46e2: ee02 3b01    	vmla.f64	d3, d2, d1
    46e6: ed9d 1b40    	vldr	d1, [sp, #256]
    46ea: bf18         	it	ne
    46ec: eeb0 0b43    	vmovne.f64	d0, d3
    46f0: ed9f 2b5b    	vldr	d2, [pc, #364]          @ 0x4860 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x310>
    46f4: eeb0 3b40    	vmov.f64	d3, d0
    46f8: eeb5 1b40    	vcmp.f64	d1, #0
    46fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4700: ee01 3b02    	vmla.f64	d3, d1, d2
    4704: ed9d 2b42    	vldr	d2, [sp, #264]
    4708: bf18         	it	ne
    470a: eeb0 0b43    	vmovne.f64	d0, d3
    470e: ed9f 1b56    	vldr	d1, [pc, #344]          @ 0x4868 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x318>
    4712: eeb0 3b40    	vmov.f64	d3, d0
    4716: eeb5 2b40    	vcmp.f64	d2, #0
    471a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    471e: ee02 3b01    	vmla.f64	d3, d2, d1
    4722: ed9d 1b44    	vldr	d1, [sp, #272]
    4726: bf18         	it	ne
    4728: eeb0 0b43    	vmovne.f64	d0, d3
    472c: ed9f 2b50    	vldr	d2, [pc, #320]          @ 0x4870 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x320>
    4730: eeb0 3b40    	vmov.f64	d3, d0
    4734: eeb5 1b40    	vcmp.f64	d1, #0
    4738: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    473c: ee01 3b02    	vmla.f64	d3, d1, d2
    4740: ed9d 2b46    	vldr	d2, [sp, #280]
    4744: bf18         	it	ne
    4746: eeb0 0b43    	vmovne.f64	d0, d3
    474a: ed9f 1b4b    	vldr	d1, [pc, #300]          @ 0x4878 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x328>
    474e: eeb0 3b40    	vmov.f64	d3, d0
    4752: eeb5 2b40    	vcmp.f64	d2, #0
    4756: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    475a: ee02 3b01    	vmla.f64	d3, d2, d1
    475e: ed9d 1b48    	vldr	d1, [sp, #288]
    4762: bf18         	it	ne
    4764: eeb0 0b43    	vmovne.f64	d0, d3
    4768: ed9f 2b45    	vldr	d2, [pc, #276]          @ 0x4880 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x330>
    476c: eeb0 3b40    	vmov.f64	d3, d0
    4770: eeb5 1b40    	vcmp.f64	d1, #0
    4774: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4778: ee01 3b02    	vmla.f64	d3, d1, d2
    477c: ed9d 2b4a    	vldr	d2, [sp, #296]
    4780: bf18         	it	ne
    4782: eeb0 0b43    	vmovne.f64	d0, d3
    4786: ed9f 1b40    	vldr	d1, [pc, #256]          @ 0x4888 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x338>
    478a: eeb0 3b40    	vmov.f64	d3, d0
    478e: eeb5 2b40    	vcmp.f64	d2, #0
    4792: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4796: ee02 3b01    	vmla.f64	d3, d2, d1
    479a: ed9d 1b4c    	vldr	d1, [sp, #304]
    479e: bf18         	it	ne
    47a0: eeb0 0b43    	vmovne.f64	d0, d3
    47a4: ed9f 2b3a    	vldr	d2, [pc, #232]          @ 0x4890 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x340>
    47a8: eeb0 3b40    	vmov.f64	d3, d0
    47ac: eeb5 1b40    	vcmp.f64	d1, #0
    47b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    47b4: ee01 3b02    	vmla.f64	d3, d1, d2
    47b8: ed9d 2b26    	vldr	d2, [sp, #152]
    47bc: bf18         	it	ne
    47be: eeb0 0b43    	vmovne.f64	d0, d3
    47c2: ee32 1b48    	vsub.f64	d1, d2, d8
    47c6: 60a5         	str	r5, [r4, #0x8]
    47c8: e9c4 5503    	strd	r5, r5, [r4, #12]
    47cc: ed84 1b00    	vstr	d1, [r4]
    47d0: 6165         	str	r5, [r4, #0x14]
    47d2: eeb0 1bc1    	vabs.f64	d1, d1
    47d6: e9c4 5506    	strd	r5, r5, [r4, #24]
    47da: ed84 0b0a    	vstr	d0, [r4, #40]
    47de: e9c4 5508    	strd	r5, r5, [r4, #32]
    47e2: ed9f 0b2d    	vldr	d0, [pc, #180]          @ 0x4898 <orange_dsp::exponential::evaluate::<false, 0, 1>+0x348>
    47e6: fe81 8b00    	vmaxnm.f64	d8, d1, d0
    47ea: f007 fc66    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0x78cc
    47ee: ed84 8b3c    	vstr	d8, [r4, #240]
    47f2: b04e         	add	sp, #0x138
    47f4: ecbd 8b02    	vpop	{d8}
    47f8: f85d bb04    	ldr	r11, [sp], #4
    47fc: bdf0         	pop	{r4, r5, r6, r7, pc}
    47fe: bf00         	nop
    4800: fb f0 9b 24  	.word	0x249bf0fb
    4804: c5 11 76 40  	.word	0x407611c5
    4808: 9e 79 e2 6b  	.word	0x6be2799e
    480c: b4 2e ba 40  	.word	0x40ba2eb4
    4810: ce e6 2e 8a  	.word	0x8a2ee6ce
    4814: 6d 9b af c0  	.word	0xc0af9b6d
    4818: 7b e2 11 6d  	.word	0x6d11e27b
    481c: 6d c4 ae c0  	.word	0xc0aec46d
    4820: b4 c6 22 a7  	.word	0xa722c6b4
    4824: a6 c8 c6 40  	.word	0x40c6c8a6
    4828: 1d 3f e4 dd  	.word	0xdde43f1d
    482c: 2d 5e c4 40  	.word	0x40c45e2d
    4830: 84 09 01 2e  	.word	0x2e010984
    4834: c4 b7 c2 40  	.word	0x40c2b7c4
    4838: e4 e7 32 ce  	.word	0xce32e7e4
    483c: cd 9d af c0  	.word	0xc0af9dcd
    4840: af df 76 5c  	.word	0x5c76dfaf
    4844: 5d 73 f0 c0  	.word	0xc0f0735d
    4848: 49 00 60 39  	.word	0x39600049
    484c: c3 98 ec bf  	.word	0xbfec98c3
    4850: 07 01 ad bb  	.word	0xbbad0107
    4854: 1c 29 e4 bf  	.word	0xbfe4291c
    4858: f2 d7 ad 91  	.word	0x91add7f2
    485c: fe 87 e6 bf  	.word	0xbfe687fe
    4860: df c1 1d ab  	.word	0xab1dc1df
    4864: 39 1a e6 3f  	.word	0x3fe61a39
    4868: 71 6f 52 dd  	.word	0xdd526f71
    486c: 58 04 c6 40  	.word	0x40c60458
    4870: 34 d3 c6 17  	.word	0x17c6d334
    4874: 02 26 c6 41  	.word	0x41c62602
    4878: 80 0f ee c5  	.word	0xc5ee0f80
    487c: a2 cf cc 41  	.word	0x41cccfa2
    4880: 90 2b 6e 91  	.word	0x916e2b90
    4884: 7f 0d ca 41  	.word	0x41ca0d7f
    4888: ae e5 98 3f  	.word	0x3f98e5ae
    488c: ec 15 bf c1  	.word	0xc1bf15ec
    4890: bf fe 95 3f  	.word	0x3f95febf
    4894: ca f0 00 c2  	.word	0xc200f0ca
		...

000048a0 <orange_dsp::exponential::evaluate::<false, 1, 2>>:
    48a0: b5f0         	push	{r4, r5, r6, r7, lr}
    48a2: af03         	add	r7, sp, #0xc
    48a4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    48a8: b081         	sub	sp, #0x4
    48aa: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    48ae: f5ad 7d06    	sub.w	sp, sp, #0x218
    48b2: 9001         	str	r0, [sp, #0x4]
    48b4: a802         	add	r0, sp, #0x8
    48b6: 4693         	mov	r11, r2
    48b8: f7fe f952    	bl	0x2b60 <orange_dsp::exponential::observations::<false>> @ imm = #-0x1d5c
    48bc: ac2c         	add	r4, sp, #0xb0
    48be: 21c8         	movs	r1, #0xc8
    48c0: 4620         	mov	r0, r4
    48c2: 2600         	movs	r6, #0x0
    48c4: e9cd 662a    	strd	r6, r6, [sp, #168]
    48c8: e9cd 6628    	strd	r6, r6, [sp, #160]
    48cc: f007 fbf5    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0x77ea
    48d0: ed9f bb0d    	vldr	d11, [pc, #52]          @ 0x4908 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x68>
    48d4: eeb7 eb00    	vmov.f64	d14, #1.000000e+00
    48d8: f104 0528    	add.w	r5, r4, #0x28
    48dc: eeb0 8b4b    	vmov.f64	d8, d11
    48e0: f10d 09a8    	add.w	r9, sp, #0xa8
    48e4: eeb0 9b4b    	vmov.f64	d9, d11
    48e8: f04f 0a01    	mov.w	r10, #0x1
    48ec: f10d 08a0    	add.w	r8, sp, #0xa0
    48f0: ed9f fb07    	vldr	d15, [pc, #28]          @ 0x4910 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x70>
    48f4: ed9f ab08    	vldr	d10, [pc, #32]          @ 0x4918 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x78>
    48f8: ed9f cb09    	vldr	d12, [pc, #36]          @ 0x4920 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x80>
    48fc: ed9f db0a    	vldr	d13, [pc, #40]          @ 0x4928 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x88>
    4900: e016         	b	0x4930 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x90> @ imm = #0x2c
    4902: bf00         	nop
    4904: bf00         	nop
    4906: bf00         	nop
		...
    4910: 01 de ad 58  	.word	0x58adde01
    4914: 89 37 35 41  	.word	0x41353789
    4918: 52 97 42 4a  	.word	0x4a429752
    491c: 82 90 26 c1  	.word	0xc1269082
    4920: e4 f4 1f c6  	.word	0xc61ff4e4
    4924: be 0d 2d c1  	.word	0xc12d0dbe
    4928: ab d5 cb 90  	.word	0x90cbd5ab
    492c: f6 13 70 c1  	.word	0xc17013f6
    4930: f24c 4044    	movw	r0, #0xc444
    4934: aa02         	add	r2, sp, #0x8
    4936: f2c0 0000    	movt	r0, #0x0
    493a: f850 6026    	ldr.w	r6, [r0, r6, lsl #2]
    493e: a85e         	add	r0, sp, #0x178
    4940: 4631         	mov	r1, r6
    4942: f005 fd25    	bl	0xa390 <orange_dsp::exponential::law> @ imm = #0x5a4a
    4946: ed9d 1b60    	vldr	d1, [sp, #384]
    494a: ea5f 70ca    	lsls.w	r0, r10, #0x1f
    494e: f04f 0a00    	mov.w	r10, #0x0
    4952: ee21 2b0b    	vmul.f64	d2, d1, d11
    4956: eeb5 1b40    	vcmp.f64	d1, #0
    495a: eeb0 6b4b    	vmov.f64	d6, d11
    495e: eb0b 01c6    	add.w	r1, r11, r6, lsl #3
    4962: f04f 0601    	mov.w	r6, #0x1
    4966: fe0b 5b0e    	vseleq.f64	d5, d11, d14
    496a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    496e: ed9d 0b5e    	vldr	d0, [sp, #376]
    4972: ed9d 4b62    	vldr	d4, [sp, #392]
    4976: ed9d 3b64    	vldr	d3, [sp, #400]
    497a: bf18         	it	ne
    497c: eeb0 6b42    	vmovne.f64	d6, d2
    4980: ed9f 7bf9    	vldr	d7, [pc, #996]          @ 0x4d68 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x4c8>
    4984: eeb5 4b40    	vcmp.f64	d4, #0
    4988: ee35 1b46    	vsub.f64	d1, d5, d6
    498c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4990: ee39 2b46    	vsub.f64	d2, d9, d6
    4994: eeb5 3b40    	vcmp.f64	d3, #0
    4998: eeb0 5b41    	vmov.f64	d5, d1
    499c: eeb0 9b4e    	vmov.f64	d9, d14
    49a0: ed9f 6bed    	vldr	d6, [pc, #948]          @ 0x4d58 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x4b8>
    49a4: ee04 5b06    	vmla.f64	d5, d4, d6
    49a8: eeb0 6b42    	vmov.f64	d6, d2
    49ac: ee04 6b07    	vmla.f64	d6, d4, d7
    49b0: ed9d 4b66    	vldr	d4, [sp, #408]
    49b4: bf18         	it	ne
    49b6: eeb0 1b45    	vmovne.f64	d1, d5
    49ba: ed9f 7be9    	vldr	d7, [pc, #932]          @ 0x4d60 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x4c0>
    49be: eeb0 5b41    	vmov.f64	d5, d1
    49c2: bf18         	it	ne
    49c4: eeb0 2b46    	vmovne.f64	d2, d6
    49c8: ee03 5b07    	vmla.f64	d5, d3, d7
    49cc: eeb0 6b42    	vmov.f64	d6, d2
    49d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    49d4: ed9f 7be8    	vldr	d7, [pc, #928]          @ 0x4d78 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x4d8>
    49d8: eeb5 4b40    	vcmp.f64	d4, #0
    49dc: ee03 6b07    	vmla.f64	d6, d3, d7
    49e0: ed9d 3b68    	vldr	d3, [sp, #416]
    49e4: bf18         	it	ne
    49e6: eeb0 1b45    	vmovne.f64	d1, d5
    49ea: ed9f 7be1    	vldr	d7, [pc, #900]          @ 0x4d70 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x4d0>
    49ee: eeb0 5b41    	vmov.f64	d5, d1
    49f2: bf18         	it	ne
    49f4: eeb0 2b46    	vmovne.f64	d2, d6
    49f8: ee04 5b07    	vmla.f64	d5, d4, d7
    49fc: eeb0 6b42    	vmov.f64	d6, d2
    4a00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a04: ed9f 7be0    	vldr	d7, [pc, #896]          @ 0x4d88 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x4e8>
    4a08: eeb5 3b40    	vcmp.f64	d3, #0
    4a0c: ee04 6b07    	vmla.f64	d6, d4, d7
    4a10: ed9d 4b6a    	vldr	d4, [sp, #424]
    4a14: bf18         	it	ne
    4a16: eeb0 1b45    	vmovne.f64	d1, d5
    4a1a: ed9f 7bd9    	vldr	d7, [pc, #868]          @ 0x4d80 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x4e0>
    4a1e: eeb0 5b41    	vmov.f64	d5, d1
    4a22: bf18         	it	ne
    4a24: eeb0 2b46    	vmovne.f64	d2, d6
    4a28: ee03 5b07    	vmla.f64	d5, d3, d7
    4a2c: eeb0 6b42    	vmov.f64	d6, d2
    4a30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a34: ed9f 7bd8    	vldr	d7, [pc, #864]          @ 0x4d98 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x4f8>
    4a38: eeb5 4b40    	vcmp.f64	d4, #0
    4a3c: ee03 6b07    	vmla.f64	d6, d3, d7
    4a40: ed9d 3b6c    	vldr	d3, [sp, #432]
    4a44: bf18         	it	ne
    4a46: eeb0 1b45    	vmovne.f64	d1, d5
    4a4a: ed9f 7bd1    	vldr	d7, [pc, #836]          @ 0x4d90 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x4f0>
    4a4e: eeb0 5b41    	vmov.f64	d5, d1
    4a52: bf18         	it	ne
    4a54: eeb0 2b46    	vmovne.f64	d2, d6
    4a58: ee04 5b07    	vmla.f64	d5, d4, d7
    4a5c: eeb0 6b42    	vmov.f64	d6, d2
    4a60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a64: ed9f 7bd0    	vldr	d7, [pc, #832]          @ 0x4da8 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x508>
    4a68: eeb5 3b40    	vcmp.f64	d3, #0
    4a6c: ee04 6b07    	vmla.f64	d6, d4, d7
    4a70: ed9d 4b6e    	vldr	d4, [sp, #440]
    4a74: bf18         	it	ne
    4a76: eeb0 1b45    	vmovne.f64	d1, d5
    4a7a: ed9f 7bc9    	vldr	d7, [pc, #804]          @ 0x4da0 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x500>
    4a7e: eeb0 5b41    	vmov.f64	d5, d1
    4a82: bf18         	it	ne
    4a84: eeb0 2b46    	vmovne.f64	d2, d6
    4a88: ee03 5b07    	vmla.f64	d5, d3, d7
    4a8c: eeb0 6b42    	vmov.f64	d6, d2
    4a90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a94: ed9f 7bc8    	vldr	d7, [pc, #800]          @ 0x4db8 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x518>
    4a98: eeb5 4b40    	vcmp.f64	d4, #0
    4a9c: ee03 6b07    	vmla.f64	d6, d3, d7
    4aa0: ed9d 3b70    	vldr	d3, [sp, #448]
    4aa4: bf18         	it	ne
    4aa6: eeb0 1b45    	vmovne.f64	d1, d5
    4aaa: ed9f 7bc1    	vldr	d7, [pc, #772]          @ 0x4db0 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x510>
    4aae: eeb0 5b41    	vmov.f64	d5, d1
    4ab2: bf18         	it	ne
    4ab4: eeb0 2b46    	vmovne.f64	d2, d6
    4ab8: ee04 5b07    	vmla.f64	d5, d4, d7
    4abc: eeb0 6b42    	vmov.f64	d6, d2
    4ac0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ac4: ed9f 7bc0    	vldr	d7, [pc, #768]          @ 0x4dc8 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x528>
    4ac8: eeb5 3b40    	vcmp.f64	d3, #0
    4acc: ee04 6b07    	vmla.f64	d6, d4, d7
    4ad0: ed9d 4b72    	vldr	d4, [sp, #456]
    4ad4: bf18         	it	ne
    4ad6: eeb0 1b45    	vmovne.f64	d1, d5
    4ada: ed9f 7bb9    	vldr	d7, [pc, #740]          @ 0x4dc0 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x520>
    4ade: eeb0 5b41    	vmov.f64	d5, d1
    4ae2: bf18         	it	ne
    4ae4: eeb0 2b46    	vmovne.f64	d2, d6
    4ae8: ee03 5b07    	vmla.f64	d5, d3, d7
    4aec: eeb0 6b42    	vmov.f64	d6, d2
    4af0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4af4: ed9f 7bb8    	vldr	d7, [pc, #736]          @ 0x4dd8 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x538>
    4af8: eeb5 4b40    	vcmp.f64	d4, #0
    4afc: ee03 6b07    	vmla.f64	d6, d3, d7
    4b00: ed9d 3b74    	vldr	d3, [sp, #464]
    4b04: bf18         	it	ne
    4b06: eeb0 1b45    	vmovne.f64	d1, d5
    4b0a: ed9f 7bb1    	vldr	d7, [pc, #708]          @ 0x4dd0 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x530>
    4b0e: eeb0 5b41    	vmov.f64	d5, d1
    4b12: bf18         	it	ne
    4b14: eeb0 2b46    	vmovne.f64	d2, d6
    4b18: ee04 5b07    	vmla.f64	d5, d4, d7
    4b1c: eeb0 6b42    	vmov.f64	d6, d2
    4b20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b24: ed9f 7bb0    	vldr	d7, [pc, #704]          @ 0x4de8 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x548>
    4b28: eeb5 3b40    	vcmp.f64	d3, #0
    4b2c: ee04 6b07    	vmla.f64	d6, d4, d7
    4b30: ed9d 4b76    	vldr	d4, [sp, #472]
    4b34: bf18         	it	ne
    4b36: eeb0 1b45    	vmovne.f64	d1, d5
    4b3a: ed9f 7ba9    	vldr	d7, [pc, #676]          @ 0x4de0 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x540>
    4b3e: eeb0 5b41    	vmov.f64	d5, d1
    4b42: bf18         	it	ne
    4b44: eeb0 2b46    	vmovne.f64	d2, d6
    4b48: ee03 5b07    	vmla.f64	d5, d3, d7
    4b4c: eeb0 6b42    	vmov.f64	d6, d2
    4b50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b54: ed9f 7ba8    	vldr	d7, [pc, #672]          @ 0x4df8 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x558>
    4b58: eeb5 4b40    	vcmp.f64	d4, #0
    4b5c: ee03 6b07    	vmla.f64	d6, d3, d7
    4b60: ed9d 3b78    	vldr	d3, [sp, #480]
    4b64: bf18         	it	ne
    4b66: eeb0 1b45    	vmovne.f64	d1, d5
    4b6a: ed9f 7ba1    	vldr	d7, [pc, #644]          @ 0x4df0 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x550>
    4b6e: eeb0 5b41    	vmov.f64	d5, d1
    4b72: bf18         	it	ne
    4b74: eeb0 2b46    	vmovne.f64	d2, d6
    4b78: ee04 5b07    	vmla.f64	d5, d4, d7
    4b7c: eeb0 6b42    	vmov.f64	d6, d2
    4b80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b84: ed9f 7ba0    	vldr	d7, [pc, #640]          @ 0x4e08 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x568>
    4b88: eeb5 3b40    	vcmp.f64	d3, #0
    4b8c: ee04 6b07    	vmla.f64	d6, d4, d7
    4b90: ed9d 4b7a    	vldr	d4, [sp, #488]
    4b94: bf18         	it	ne
    4b96: eeb0 1b45    	vmovne.f64	d1, d5
    4b9a: ed9f 7b99    	vldr	d7, [pc, #612]          @ 0x4e00 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x560>
    4b9e: eeb0 5b41    	vmov.f64	d5, d1
    4ba2: bf18         	it	ne
    4ba4: eeb0 2b46    	vmovne.f64	d2, d6
    4ba8: ee03 5b07    	vmla.f64	d5, d3, d7
    4bac: eeb0 6b42    	vmov.f64	d6, d2
    4bb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bb4: ed9f 7b98    	vldr	d7, [pc, #608]          @ 0x4e18 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x578>
    4bb8: eeb5 4b40    	vcmp.f64	d4, #0
    4bbc: ee03 6b07    	vmla.f64	d6, d3, d7
    4bc0: ed9d 3b7c    	vldr	d3, [sp, #496]
    4bc4: bf18         	it	ne
    4bc6: eeb0 1b45    	vmovne.f64	d1, d5
    4bca: ed9f 7b91    	vldr	d7, [pc, #580]          @ 0x4e10 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x570>
    4bce: eeb0 5b41    	vmov.f64	d5, d1
    4bd2: bf18         	it	ne
    4bd4: eeb0 2b46    	vmovne.f64	d2, d6
    4bd8: ee04 5b07    	vmla.f64	d5, d4, d7
    4bdc: eeb0 6b42    	vmov.f64	d6, d2
    4be0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4be4: ed9f 7b90    	vldr	d7, [pc, #576]          @ 0x4e28 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x588>
    4be8: eeb5 3b40    	vcmp.f64	d3, #0
    4bec: ee04 6b07    	vmla.f64	d6, d4, d7
    4bf0: ed9d 4b7e    	vldr	d4, [sp, #504]
    4bf4: bf18         	it	ne
    4bf6: eeb0 1b45    	vmovne.f64	d1, d5
    4bfa: ed9f 7b89    	vldr	d7, [pc, #548]          @ 0x4e20 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x580>
    4bfe: eeb0 5b41    	vmov.f64	d5, d1
    4c02: bf18         	it	ne
    4c04: eeb0 2b46    	vmovne.f64	d2, d6
    4c08: ee03 5b07    	vmla.f64	d5, d3, d7
    4c0c: eeb0 6b42    	vmov.f64	d6, d2
    4c10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c14: ed9f 7b88    	vldr	d7, [pc, #544]          @ 0x4e38 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x598>
    4c18: eeb5 4b40    	vcmp.f64	d4, #0
    4c1c: ee03 6b07    	vmla.f64	d6, d3, d7
    4c20: ed9d 3b80    	vldr	d3, [sp, #512]
    4c24: bf18         	it	ne
    4c26: eeb0 1b45    	vmovne.f64	d1, d5
    4c2a: ed9f 7b81    	vldr	d7, [pc, #516]          @ 0x4e30 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x590>
    4c2e: eeb0 5b41    	vmov.f64	d5, d1
    4c32: bf18         	it	ne
    4c34: eeb0 2b46    	vmovne.f64	d2, d6
    4c38: ee04 5b07    	vmla.f64	d5, d4, d7
    4c3c: eeb0 6b42    	vmov.f64	d6, d2
    4c40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c44: ed9f 7b80    	vldr	d7, [pc, #512]          @ 0x4e48 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x5a8>
    4c48: eeb5 3b40    	vcmp.f64	d3, #0
    4c4c: ee04 6b07    	vmla.f64	d6, d4, d7
    4c50: ed9d 4b82    	vldr	d4, [sp, #520]
    4c54: bf18         	it	ne
    4c56: eeb0 1b45    	vmovne.f64	d1, d5
    4c5a: ed9f 7b79    	vldr	d7, [pc, #484]          @ 0x4e40 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x5a0>
    4c5e: bf18         	it	ne
    4c60: eeb0 2b46    	vmovne.f64	d2, d6
    4c64: eeb0 5b41    	vmov.f64	d5, d1
    4c68: eeb0 6b42    	vmov.f64	d6, d2
    4c6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c70: ee03 5b07    	vmla.f64	d5, d3, d7
    4c74: eeb5 4b40    	vcmp.f64	d4, #0
    4c78: ee03 6b0f    	vmla.f64	d6, d3, d15
    4c7c: ed9d 3b84    	vldr	d3, [sp, #528]
    4c80: bf18         	it	ne
    4c82: eeb0 1b45    	vmovne.f64	d1, d5
    4c86: ed9f 7b72    	vldr	d7, [pc, #456]          @ 0x4e50 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x5b0>
    4c8a: bf18         	it	ne
    4c8c: eeb0 2b46    	vmovne.f64	d2, d6
    4c90: eeb0 5b41    	vmov.f64	d5, d1
    4c94: eeb0 6b42    	vmov.f64	d6, d2
    4c98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c9c: ee04 5b07    	vmla.f64	d5, d4, d7
    4ca0: eeb5 3b40    	vcmp.f64	d3, #0
    4ca4: ee04 6b0c    	vmla.f64	d6, d4, d12
    4ca8: ed91 4b00    	vldr	d4, [r1]
    4cac: bf18         	it	ne
    4cae: eeb0 1b45    	vmovne.f64	d1, d5
    4cb2: ee30 0b44    	vsub.f64	d0, d0, d4
    4cb6: bf18         	it	ne
    4cb8: eeb0 2b46    	vmovne.f64	d2, d6
    4cbc: eeb0 5b41    	vmov.f64	d5, d1
    4cc0: eeb0 6b42    	vmov.f64	d6, d2
    4cc4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cc8: ee03 5b0a    	vmla.f64	d5, d3, d10
    4ccc: eeb4 8b48    	vcmp.f64	d8, d8
    4cd0: ee03 6b0d    	vmla.f64	d6, d3, d13
    4cd4: bf1c         	itt	ne
    4cd6: eeb0 1b45    	vmovne.f64	d1, d5
    4cda: eeb0 2b46    	vmovne.f64	d2, d6
    4cde: eeb0 3bc0    	vabs.f64	d3, d0
    4ce2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ce6: ed89 0b00    	vstr	d0, [r9]
    4cea: eeb4 3b43    	vcmp.f64	d3, d3
    4cee: 46c1         	mov	r9, r8
    4cf0: fe13 4b08    	vselvs.f64	d4, d3, d8
    4cf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cf8: ed84 1b00    	vstr	d1, [r4]
    4cfc: fe14 3b03    	vselvs.f64	d3, d4, d3
    4d00: ed84 2b02    	vstr	d2, [r4, #8]
    4d04: eeb4 4b43    	vcmp.f64	d4, d3
    4d08: 462c         	mov	r4, r5
    4d0a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d0e: fe34 8b03    	vselgt.f64	d8, d4, d3
    4d12: 2800         	cmp	r0, #0x0
    4d14: f47f ae0c    	bne.w	0x4930 <orange_dsp::exponential::evaluate::<false, 1, 2>+0x90> @ imm = #-0x3e8
    4d18: 9c01         	ldr	r4, [sp, #0x4]
    4d1a: 982a         	ldr	r0, [sp, #0xa8]
    4d1c: a92c         	add	r1, sp, #0xb0
    4d1e: 22c8         	movs	r2, #0xc8
    4d20: 6020         	str	r0, [r4]
    4d22: 982b         	ldr	r0, [sp, #0xac]
    4d24: 6060         	str	r0, [r4, #0x4]
    4d26: 9828         	ldr	r0, [sp, #0xa0]
    4d28: 60a0         	str	r0, [r4, #0x8]
    4d2a: 9829         	ldr	r0, [sp, #0xa4]
    4d2c: e9c4 0a03    	strd	r0, r10, [r4, #12]
    4d30: f104 0028    	add.w	r0, r4, #0x28
    4d34: f8c4 a024    	str.w	r10, [r4, #0x24]
    4d38: e9c4 aa05    	strd	r10, r10, [r4, #20]
    4d3c: e9c4 aa07    	strd	r10, r10, [r4, #28]
    4d40: f007 fa12    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x7424
    4d44: ed84 8b3c    	vstr	d8, [r4, #240]
    4d48: f50d 7d06    	add.w	sp, sp, #0x218
    4d4c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    4d50: b001         	add	sp, #0x4
    4d52: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    4d56: bdf0         	pop	{r4, r5, r6, r7, pc}
    4d58: b6 e1 a0 fd  	.word	0xfda0e1b6
    4d5c: c9 49 f2 3f  	.word	0x3ff249c9
    4d60: 87 2d 86 09  	.word	0x09862d87
    4d64: 85 94 ec bf  	.word	0xbfec9485
    4d68: b0 92 f8 5c  	.word	0x5cf892b0
    4d6c: a5 28 2c 40  	.word	0x402c28a5
    4d70: e4 88 73 95  	.word	0x957388e4
    4d74: 1c d2 eb bf  	.word	0xbfebd21c
    4d78: 22 59 79 ce  	.word	0xce795922
    4d7c: 68 1d 22 c0  	.word	0xc0221d68
    4d80: 19 a7 4b d9  	.word	0xd94ba719
    4d84: 6b 08 2c c0  	.word	0xc02c086b
    4d88: be 4b eb f1  	.word	0xf1eb4bbe
    4d8c: 2f a2 21 c0  	.word	0xc021a22f
    4d90: 9d b0 4e 8a  	.word	0x8a4eb09d
    4d94: 05 a9 f7 3f  	.word	0x3ff7a905
    4d98: 57 ce be 1e  	.word	0x1ebece57
    4d9c: 6b 47 35 40  	.word	0x4035476b
    4da0: 63 f3 cd bc  	.word	0xbccdf363
    4da4: a9 e4 f4 3f  	.word	0x3ff4e4a9
    4da8: 77 e4 c0 0c  	.word	0x0cc0e477
    4dac: 76 f2 34 40  	.word	0x4034f276
    4db0: 75 ab 2e 69  	.word	0x692eab75
    4db4: 58 98 ec bf  	.word	0xbfec9858
    4db8: 36 15 ba 83  	.word	0x83ba1536
    4dbc: d4 28 33 40  	.word	0x403328d4
    4dc0: 82 fe 1e 06  	.word	0x061efe82
    4dc4: 92 a5 2f c0  	.word	0xc02fa592
    4dc8: 6a c5 77 32  	.word	0x3277c56a
    4dcc: ff 1e 22 c0  	.word	0xc0221eff
    4dd0: 3e 00 6d 40  	.word	0x406d003e
    4dd4: bd bd 13 bf  	.word	0xbf13bdbd
    4dd8: ce c7 a6 bf  	.word	0xbfa6c7ce
    4ddc: 4c 2f 63 c0  	.word	0xc0632f4c
    4de0: 7c 82 6c 2b  	.word	0x2b6c827c
    4de4: e6 08 10 bf  	.word	0xbf1008e6
    4de8: 09 e9 ff fc  	.word	0xfcffe909
    4dec: bb b4 5a bf  	.word	0xbf5ab4bb
    4df0: 3c 93 53 2f  	.word	0x2f53933c
    4df4: 73 83 18 bf  	.word	0xbf188373
    4df8: 97 ff 1d d1  	.word	0xd11dff97
    4dfc: a8 42 53 bf  	.word	0xbf5342a8
    4e00: cc 84 48 da  	.word	0xda4884cc
    4e04: 8c c5 21 3f  	.word	0x3f21c58c
    4e08: d8 c6 4f 36  	.word	0x364fc6d8
    4e0c: 59 ec 56 bf  	.word	0xbf56ec59
    4e10: c8 9e fe eb  	.word	0xebfe9ec8
    4e14: 2a 13 04 40  	.word	0x4004132a
    4e18: 1a b1 f6 1c  	.word	0x1cf6b11a
    4e1c: e5 8c 58 3f  	.word	0x3f588ce5
    4e20: ae 4e 38 8b  	.word	0x8b384eae
    4e24: 4c 1f 26 c1  	.word	0xc1261f4c
    4e28: d0 6a 94 f7  	.word	0xf7946ad0
    4e2c: fd 4b 39 40  	.word	0x40394bfd
    4e30: bc 8c df 4c  	.word	0x4cdf8cbc
    4e34: 3d 33 df 40  	.word	0x40df333d
    4e38: 71 fb 79 f5  	.word	0xf579fb71
    4e3c: 89 85 6c c1  	.word	0xc16c8589
    4e40: 7d d4 6c bf  	.word	0xbf6cd47d
    4e44: e4 09 d2 40  	.word	0x40d209e4
    4e48: b5 88 09 18  	.word	0x180988b5
    4e4c: 3d 07 38 41  	.word	0x4138073d
    4e50: 86 15 8e ef  	.word	0xef8e1586
    4e54: 19 0b e3 c0  	.word	0xc0e30b19

00004e58 <orange_dsp::exponential::evaluate::<false, 2, 3>>:
    4e58: b5f0         	push	{r4, r5, r6, r7, lr}
    4e5a: af03         	add	r7, sp, #0xc
    4e5c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    4e60: b081         	sub	sp, #0x4
    4e62: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    4e66: f5ad 7d0e    	sub.w	sp, sp, #0x238
    4e6a: 9001         	str	r0, [sp, #0x4]
    4e6c: a804         	add	r0, sp, #0x10
    4e6e: 4615         	mov	r5, r2
    4e70: f7fd fe76    	bl	0x2b60 <orange_dsp::exponential::observations::<false>> @ imm = #-0x2314
    4e74: ac2a         	add	r4, sp, #0xa8
    4e76: 2128         	movs	r1, #0x28
    4e78: 4620         	mov	r0, r4
    4e7a: f007 f91e    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0x723c
    4e7e: f10d 0bd0    	add.w	r11, sp, #0xd0
    4e82: 21c8         	movs	r1, #0xc8
    4e84: 4658         	mov	r0, r11
    4e86: f007 f918    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0x7230
    4e8a: ed9f ab09    	vldr	d10, [pc, #36]          @ 0x4eb0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x58>
    4e8e: f24c 404c    	movw	r0, #0xc44c
    4e92: f1a4 0a08    	sub.w	r10, r4, #0x8
    4e96: eeb0 8b4a    	vmov.f64	d8, d10
    4e9a: f2c0 0000    	movt	r0, #0x0
    4e9e: f1a0 0804    	sub.w	r8, r0, #0x4
    4ea2: f04f 0900    	mov.w	r9, #0x0
    4ea6: ae66         	add	r6, sp, #0x198
    4ea8: e02a         	b	0x4f00 <orange_dsp::exponential::evaluate::<false, 2, 3>+0xa8> @ imm = #0x54
    4eaa: bf00         	nop
    4eac: bf00         	nop
    4eae: bf00         	nop
		...
    4eb8: 48 de 48 5d  	.word	0x5d48de48
    4ebc: 36 f2 b9 3f  	.word	0x3fb9f236
    4ec0: bd 10 88 8a  	.word	0x8a8810bd
    4ec4: 47 1f f5 3f  	.word	0x3ff51f47
    4ec8: 43 5f 62 d2  	.word	0xd2625f43
    4ecc: 68 88 65 40  	.word	0x40658868
    4ed0: f8 5c 60 6c  	.word	0x6c605cf8
    4ed4: 8f 7e b4 bf  	.word	0xbfb47e8f
    4ed8: 52 94 4e 03  	.word	0x034e9452
    4edc: e0 b5 eb bf  	.word	0xbfebb5e0
    4ee0: 2b 08 67 ac  	.word	0xac67082b
    4ee4: fc 28 52 c0  	.word	0xc05228fc
    4ee8: 36 e3 ba 4f  	.word	0x4fbae336
    4eec: 27 f3 b3 bf  	.word	0xbfb3f327
    4ef0: 08 5f ab ae  	.word	0xaeab5f08
    4ef4: 61 f9 ea bf  	.word	0xbfeaf961
    4ef8: f4 88 58 0f  	.word	0x0f5888f4
    4efc: 75 ad 51 c0  	.word	0xc051ad75
    4f00: f858 4f04    	ldr	r4, [r8, #4]!
    4f04: 4630         	mov	r0, r6
    4f06: 4621         	mov	r1, r4
    4f08: aa04         	add	r2, sp, #0x10
    4f0a: f005 fa41    	bl	0xa390 <orange_dsp::exponential::law> @ imm = #0x5482
    4f0e: ed9d 1b68    	vldr	d1, [sp, #416]
    4f12: eeb7 9b00    	vmov.f64	d9, #1.000000e+00
    4f16: eb05 00c4    	add.w	r0, r5, r4, lsl #3
    4f1a: f1b9 0f00    	cmp.w	r9, #0x0
    4f1e: eeb5 1b40    	vcmp.f64	d1, #0
    4f22: ee21 2b0a    	vmul.f64	d2, d1, d10
    4f26: eeb0 1b4a    	vmov.f64	d1, d10
    4f2a: ed9d 0b66    	vldr	d0, [sp, #408]
    4f2e: ed9d 6b6a    	vldr	d6, [sp, #424]
    4f32: ed9d cb6c    	vldr	d12, [sp, #432]
    4f36: ed9d fb6e    	vldr	d15, [sp, #440]
    4f3a: ed9d bb70    	vldr	d11, [sp, #448]
    4f3e: ed9d eb72    	vldr	d14, [sp, #456]
    4f42: ed9d 5b74    	vldr	d5, [sp, #464]
    4f46: ed9d 4b76    	vldr	d4, [sp, #472]
    4f4a: ed90 3b00    	vldr	d3, [r0]
    4f4e: eb0b 0009    	add.w	r0, r11, r9
    4f52: fe09 7b0a    	vseleq.f64	d7, d9, d10
    4f56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4f5a: bf18         	it	ne
    4f5c: eeb0 1b42    	vmovne.f64	d1, d2
    4f60: f1b9 0f28    	cmp.w	r9, #0x28
    4f64: eeb5 6b40    	vcmp.f64	d6, #0
    4f68: ee30 0b43    	vsub.f64	d0, d0, d3
    4f6c: fe09 3b0a    	vseleq.f64	d3, d9, d10
    4f70: f1b9 0f50    	cmp.w	r9, #0x50
    4f74: f109 0928    	add.w	r9, r9, #0x28
    4f78: ee37 2b41    	vsub.f64	d2, d7, d1
    4f7c: fe09 7b0a    	vseleq.f64	d7, d9, d10
    4f80: eeb0 db42    	vmov.f64	d13, d2
    4f84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4f88: ed8d 0b02    	vstr	d0, [sp, #8]
    4f8c: eeb5 cb40    	vcmp.f64	d12, #0
    4f90: ed1f 0b37    	vldr	d0, [pc, #-220]         @ 0x4eb8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x60>
    4f94: ee33 3b41    	vsub.f64	d3, d3, d1
    4f98: ee37 1b41    	vsub.f64	d1, d7, d1
    4f9c: eeb0 9b43    	vmov.f64	d9, d3
    4fa0: ee06 db00    	vmla.f64	d13, d6, d0
    4fa4: ed1f 0b3a    	vldr	d0, [pc, #-232]         @ 0x4ec0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x68>
    4fa8: ed1f 7b39    	vldr	d7, [pc, #-228]         @ 0x4ec8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x70>
    4fac: ee06 9b00    	vmla.f64	d9, d6, d0
    4fb0: eeb0 0b41    	vmov.f64	d0, d1
    4fb4: ee06 0b07    	vmla.f64	d0, d6, d7
    4fb8: ed9d 7b78    	vldr	d7, [sp, #480]
    4fbc: bf18         	it	ne
    4fbe: eeb0 2b4d    	vmovne.f64	d2, d13
    4fc2: ed1f db3d    	vldr	d13, [pc, #-244]        @ 0x4ed0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x78>
    4fc6: ed9d 6b7a    	vldr	d6, [sp, #488]
    4fca: bf18         	it	ne
    4fcc: eeb0 3b49    	vmovne.f64	d3, d9
    4fd0: eeb0 9b42    	vmov.f64	d9, d2
    4fd4: bf18         	it	ne
    4fd6: eeb0 1b40    	vmovne.f64	d1, d0
    4fda: ee0c 9b0d    	vmla.f64	d9, d12, d13
    4fde: eeb0 0b43    	vmov.f64	d0, d3
    4fe2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4fe6: ed1f db44    	vldr	d13, [pc, #-272]        @ 0x4ed8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x80>
    4fea: bf18         	it	ne
    4fec: eeb0 2b49    	vmovne.f64	d2, d9
    4ff0: ee0c 0b0d    	vmla.f64	d0, d12, d13
    4ff4: eeb5 fb40    	vcmp.f64	d15, #0
    4ff8: eeb0 9b41    	vmov.f64	d9, d1
    4ffc: ed1f db48    	vldr	d13, [pc, #-288]        @ 0x4ee0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x88>
    5000: ee0c 9b0d    	vmla.f64	d9, d12, d13
    5004: eeb0 cb42    	vmov.f64	d12, d2
    5008: bf1c         	itt	ne
    500a: eeb0 3b40    	vmovne.f64	d3, d0
    500e: eeb0 1b49    	vmovne.f64	d1, d9
    5012: ed1f db4b    	vldr	d13, [pc, #-300]        @ 0x4ee8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x90>
    5016: eeb0 0b43    	vmov.f64	d0, d3
    501a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    501e: ee0f cb0d    	vmla.f64	d12, d15, d13
    5022: eeb5 bb40    	vcmp.f64	d11, #0
    5026: bf18         	it	ne
    5028: eeb0 2b4c    	vmovne.f64	d2, d12
    502c: ed1f 9b50    	vldr	d9, [pc, #-320]         @ 0x4ef0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x98>
    5030: ed1f db4f    	vldr	d13, [pc, #-316]        @ 0x4ef8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0xa0>
    5034: ee0f 0b09    	vmla.f64	d0, d15, d9
    5038: eeb0 9b41    	vmov.f64	d9, d1
    503c: ee0f 9b0d    	vmla.f64	d9, d15, d13
    5040: ee2b db0a    	vmul.f64	d13, d11, d10
    5044: ed9d fb7c    	vldr	d15, [sp, #496]
    5048: bf1c         	itt	ne
    504a: eeb0 3b40    	vmovne.f64	d3, d0
    504e: eeb0 1b49    	vmovne.f64	d1, d9
    5052: ee32 0b4d    	vsub.f64	d0, d2, d13
    5056: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    505a: bf18         	it	ne
    505c: eeb0 2b40    	vmovne.f64	d2, d0
    5060: ed9f bbf5    	vldr	d11, [pc, #980]         @ 0x5438 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x5e0>
    5064: eeb5 eb40    	vcmp.f64	d14, #0
    5068: ee33 9b4d    	vsub.f64	d9, d3, d13
    506c: bf18         	it	ne
    506e: eeb0 3b49    	vmovne.f64	d3, d9
    5072: eeb0 9b42    	vmov.f64	d9, d2
    5076: ee0e 9b0b    	vmla.f64	d9, d14, d11
    507a: ed9f bbf3    	vldr	d11, [pc, #972]         @ 0x5448 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x5f0>
    507e: ee31 0b4d    	vsub.f64	d0, d1, d13
    5082: bf18         	it	ne
    5084: eeb0 1b40    	vmovne.f64	d1, d0
    5088: eeb0 0b43    	vmov.f64	d0, d3
    508c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5090: ee0e 0b0b    	vmla.f64	d0, d14, d11
    5094: eeb5 5b40    	vcmp.f64	d5, #0
    5098: bf18         	it	ne
    509a: eeb0 2b49    	vmovne.f64	d2, d9
    509e: ed9f bbec    	vldr	d11, [pc, #944]         @ 0x5450 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x5f8>
    50a2: eeb0 9b41    	vmov.f64	d9, d1
    50a6: eeb0 cb42    	vmov.f64	d12, d2
    50aa: ee0e 9b0b    	vmla.f64	d9, d14, d11
    50ae: bf1c         	itt	ne
    50b0: eeb0 3b40    	vmovne.f64	d3, d0
    50b4: eeb0 1b49    	vmovne.f64	d1, d9
    50b8: ed9f bbe1    	vldr	d11, [pc, #900]         @ 0x5440 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x5e8>
    50bc: eeb0 0b43    	vmov.f64	d0, d3
    50c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    50c4: ee05 cb0b    	vmla.f64	d12, d5, d11
    50c8: eeb5 4b40    	vcmp.f64	d4, #0
    50cc: ed9f 9be4    	vldr	d9, [pc, #912]          @ 0x5460 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x608>
    50d0: ed9f bbe5    	vldr	d11, [pc, #916]         @ 0x5468 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x610>
    50d4: ee05 0b09    	vmla.f64	d0, d5, d9
    50d8: eeb0 9b41    	vmov.f64	d9, d1
    50dc: ee05 9b0b    	vmla.f64	d9, d5, d11
    50e0: ed9d bb7e    	vldr	d11, [sp, #504]
    50e4: bf18         	it	ne
    50e6: eeb0 2b4c    	vmovne.f64	d2, d12
    50ea: ed9f cbdb    	vldr	d12, [pc, #876]         @ 0x5458 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x600>
    50ee: ed9d 5b80    	vldr	d5, [sp, #512]
    50f2: bf18         	it	ne
    50f4: eeb0 3b40    	vmovne.f64	d3, d0
    50f8: eeb0 0b42    	vmov.f64	d0, d2
    50fc: bf18         	it	ne
    50fe: eeb0 1b49    	vmovne.f64	d1, d9
    5102: ee04 0b0c    	vmla.f64	d0, d4, d12
    5106: eeb0 9b43    	vmov.f64	d9, d3
    510a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    510e: ed9f cbda    	vldr	d12, [pc, #872]         @ 0x5478 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x620>
    5112: bf18         	it	ne
    5114: eeb0 2b40    	vmovne.f64	d2, d0
    5118: ee04 9b0c    	vmla.f64	d9, d4, d12
    511c: eeb5 7b40    	vcmp.f64	d7, #0
    5120: eeb0 0b41    	vmov.f64	d0, d1
    5124: ed9f cbd6    	vldr	d12, [pc, #856]         @ 0x5480 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x628>
    5128: ee04 0b0c    	vmla.f64	d0, d4, d12
    512c: eeb0 4b42    	vmov.f64	d4, d2
    5130: bf1c         	itt	ne
    5132: eeb0 3b49    	vmovne.f64	d3, d9
    5136: eeb0 1b40    	vmovne.f64	d1, d0
    513a: ed9f cbcd    	vldr	d12, [pc, #820]         @ 0x5470 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x618>
    513e: eeb0 0b43    	vmov.f64	d0, d3
    5142: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5146: ee07 4b0c    	vmla.f64	d4, d7, d12
    514a: eeb5 6b40    	vcmp.f64	d6, #0
    514e: bf18         	it	ne
    5150: eeb0 2b44    	vmovne.f64	d2, d4
    5154: ed9f 9bcc    	vldr	d9, [pc, #816]          @ 0x5488 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x630>
    5158: ed9f cbcd    	vldr	d12, [pc, #820]         @ 0x5490 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x638>
    515c: ee07 0b09    	vmla.f64	d0, d7, d9
    5160: eeb0 9b41    	vmov.f64	d9, d1
    5164: ee07 9b0c    	vmla.f64	d9, d7, d12
    5168: ee26 7b0a    	vmul.f64	d7, d6, d10
    516c: ed9d 4b82    	vldr	d4, [sp, #520]
    5170: bf1c         	itt	ne
    5172: eeb0 3b40    	vmovne.f64	d3, d0
    5176: eeb0 1b49    	vmovne.f64	d1, d9
    517a: ee32 0b47    	vsub.f64	d0, d2, d7
    517e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5182: ee33 6b47    	vsub.f64	d6, d3, d7
    5186: eeb5 fb40    	vcmp.f64	d15, #0
    518a: bf18         	it	ne
    518c: eeb0 2b40    	vmovne.f64	d2, d0
    5190: ee31 0b47    	vsub.f64	d0, d1, d7
    5194: bf18         	it	ne
    5196: eeb0 3b46    	vmovne.f64	d3, d6
    519a: ed9f 7bbf    	vldr	d7, [pc, #764]          @ 0x5498 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x640>
    519e: eeb0 6b42    	vmov.f64	d6, d2
    51a2: bf18         	it	ne
    51a4: eeb0 1b40    	vmovne.f64	d1, d0
    51a8: ee0f 6b07    	vmla.f64	d6, d15, d7
    51ac: eeb0 0b43    	vmov.f64	d0, d3
    51b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51b4: ed9f 7bbc    	vldr	d7, [pc, #752]          @ 0x54a8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x650>
    51b8: bf18         	it	ne
    51ba: eeb0 2b46    	vmovne.f64	d2, d6
    51be: ee0f 0b07    	vmla.f64	d0, d15, d7
    51c2: eeb5 bb40    	vcmp.f64	d11, #0
    51c6: eeb0 6b41    	vmov.f64	d6, d1
    51ca: eeb0 9b42    	vmov.f64	d9, d2
    51ce: ed9f 7bb8    	vldr	d7, [pc, #736]          @ 0x54b0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x658>
    51d2: ee0f 6b07    	vmla.f64	d6, d15, d7
    51d6: bf1c         	itt	ne
    51d8: eeb0 3b40    	vmovne.f64	d3, d0
    51dc: eeb0 1b46    	vmovne.f64	d1, d6
    51e0: ed9f 6bb7    	vldr	d6, [pc, #732]          @ 0x54c0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x668>
    51e4: eeb0 0b43    	vmov.f64	d0, d3
    51e8: eeb0 cb41    	vmov.f64	d12, d1
    51ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    51f0: ed9f 7bab    	vldr	d7, [pc, #684]          @ 0x54a0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x648>
    51f4: eeb5 5b40    	vcmp.f64	d5, #0
    51f8: ee0b 0b06    	vmla.f64	d0, d11, d6
    51fc: ed9f 6bb2    	vldr	d6, [pc, #712]          @ 0x54c8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x670>
    5200: ee0b 9b07    	vmla.f64	d9, d11, d7
    5204: ee0b cb06    	vmla.f64	d12, d11, d6
    5208: ed9d 7b84    	vldr	d7, [sp, #528]
    520c: bf18         	it	ne
    520e: eeb0 2b49    	vmovne.f64	d2, d9
    5212: ed9d 6b86    	vldr	d6, [sp, #536]
    5216: bf18         	it	ne
    5218: eeb0 3b40    	vmovne.f64	d3, d0
    521c: ed9f 9ba6    	vldr	d9, [pc, #664]          @ 0x54b8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x660>
    5220: eeb0 0b42    	vmov.f64	d0, d2
    5224: bf18         	it	ne
    5226: eeb0 1b4c    	vmovne.f64	d1, d12
    522a: ed9f bbab    	vldr	d11, [pc, #684]         @ 0x54d8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x680>
    522e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5232: ee05 0b09    	vmla.f64	d0, d5, d9
    5236: eeb5 4b40    	vcmp.f64	d4, #0
    523a: eeb0 9b43    	vmov.f64	d9, d3
    523e: bf18         	it	ne
    5240: eeb0 2b40    	vmovne.f64	d2, d0
    5244: ee05 9b0b    	vmla.f64	d9, d5, d11
    5248: eeb0 0b41    	vmov.f64	d0, d1
    524c: ed9f bba4    	vldr	d11, [pc, #656]         @ 0x54e0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x688>
    5250: ee05 0b0b    	vmla.f64	d0, d5, d11
    5254: eeb0 5b42    	vmov.f64	d5, d2
    5258: bf1c         	itt	ne
    525a: eeb0 3b49    	vmovne.f64	d3, d9
    525e: eeb0 1b40    	vmovne.f64	d1, d0
    5262: ed9f bb9b    	vldr	d11, [pc, #620]         @ 0x54d0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x678>
    5266: eeb0 0b43    	vmov.f64	d0, d3
    526a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    526e: ee04 5b0b    	vmla.f64	d5, d4, d11
    5272: eeb5 7b40    	vcmp.f64	d7, #0
    5276: bf18         	it	ne
    5278: eeb0 2b45    	vmovne.f64	d2, d5
    527c: ed9f 9b9a    	vldr	d9, [pc, #616]          @ 0x54e8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x690>
    5280: ed9f bb9b    	vldr	d11, [pc, #620]         @ 0x54f0 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x698>
    5284: ee04 0b09    	vmla.f64	d0, d4, d9
    5288: eeb0 9b41    	vmov.f64	d9, d1
    528c: ee04 9b0b    	vmla.f64	d9, d4, d11
    5290: ee27 bb0a    	vmul.f64	d11, d7, d10
    5294: ed9d 4b88    	vldr	d4, [sp, #544]
    5298: bf1c         	itt	ne
    529a: eeb0 3b40    	vmovne.f64	d3, d0
    529e: eeb0 1b49    	vmovne.f64	d1, d9
    52a2: ee32 0b4b    	vsub.f64	d0, d2, d11
    52a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    52aa: bf18         	it	ne
    52ac: eeb0 2b40    	vmovne.f64	d2, d0
    52b0: ed9f 7b91    	vldr	d7, [pc, #580]          @ 0x54f8 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6a0>
    52b4: eeb5 6b40    	vcmp.f64	d6, #0
    52b8: ee33 5b4b    	vsub.f64	d5, d3, d11
    52bc: bf18         	it	ne
    52be: eeb0 3b45    	vmovne.f64	d3, d5
    52c2: eeb0 5b42    	vmov.f64	d5, d2
    52c6: ee06 5b07    	vmla.f64	d5, d6, d7
    52ca: ed9f 7b8f    	vldr	d7, [pc, #572]          @ 0x5508 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6b0>
    52ce: ee31 0b4b    	vsub.f64	d0, d1, d11
    52d2: bf18         	it	ne
    52d4: eeb0 1b40    	vmovne.f64	d1, d0
    52d8: eeb0 0b43    	vmov.f64	d0, d3
    52dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    52e0: ee06 0b07    	vmla.f64	d0, d6, d7
    52e4: eeb5 4b40    	vcmp.f64	d4, #0
    52e8: bf18         	it	ne
    52ea: eeb0 2b45    	vmovne.f64	d2, d5
    52ee: ed9f 7b88    	vldr	d7, [pc, #544]          @ 0x5510 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6b8>
    52f2: eeb0 5b41    	vmov.f64	d5, d1
    52f6: ee06 5b07    	vmla.f64	d5, d6, d7
    52fa: eeb0 6b42    	vmov.f64	d6, d2
    52fe: bf1c         	itt	ne
    5300: eeb0 3b40    	vmovne.f64	d3, d0
    5304: eeb0 1b45    	vmovne.f64	d1, d5
    5308: ed9f 7b7d    	vldr	d7, [pc, #500]          @ 0x5500 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6a8>
    530c: eeb0 0b43    	vmov.f64	d0, d3
    5310: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5314: ee04 6b07    	vmla.f64	d6, d4, d7
    5318: ed9f 5b81    	vldr	d5, [pc, #516]          @ 0x5520 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6c8>
    531c: ed9f 7b82    	vldr	d7, [pc, #520]          @ 0x5528 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6d0>
    5320: ee04 0b05    	vmla.f64	d0, d4, d5
    5324: eeb0 5b41    	vmov.f64	d5, d1
    5328: ee04 5b07    	vmla.f64	d5, d4, d7
    532c: ed9d 7b8a    	vldr	d7, [sp, #552]
    5330: bf18         	it	ne
    5332: eeb0 2b46    	vmovne.f64	d2, d6
    5336: ed9f 6b78    	vldr	d6, [pc, #480]          @ 0x5518 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6c0>
    533a: eeb5 7b40    	vcmp.f64	d7, #0
    533e: ed9d 4b8c    	vldr	d4, [sp, #560]
    5342: bf18         	it	ne
    5344: eeb0 3b40    	vmovne.f64	d3, d0
    5348: eeb0 0b42    	vmov.f64	d0, d2
    534c: bf18         	it	ne
    534e: eeb0 1b45    	vmovne.f64	d1, d5
    5352: ee07 0b06    	vmla.f64	d0, d7, d6
    5356: eeb0 5b43    	vmov.f64	d5, d3
    535a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    535e: ed9f 6b76    	vldr	d6, [pc, #472]          @ 0x5538 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6e0>
    5362: bf18         	it	ne
    5364: eeb0 2b40    	vmovne.f64	d2, d0
    5368: ee07 5b06    	vmla.f64	d5, d7, d6
    536c: eeb5 4b40    	vcmp.f64	d4, #0
    5370: eeb0 0b41    	vmov.f64	d0, d1
    5374: ed9f 6b72    	vldr	d6, [pc, #456]          @ 0x5540 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6e8>
    5378: ee07 0b06    	vmla.f64	d0, d7, d6
    537c: eeb0 6b42    	vmov.f64	d6, d2
    5380: bf1c         	itt	ne
    5382: eeb0 3b45    	vmovne.f64	d3, d5
    5386: eeb0 1b40    	vmovne.f64	d1, d0
    538a: ed9f 7b69    	vldr	d7, [pc, #420]          @ 0x5530 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6d8>
    538e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5392: ee04 6b07    	vmla.f64	d6, d4, d7
    5396: bf18         	it	ne
    5398: eeb0 2b46    	vmovne.f64	d2, d6
    539c: ed9f 5b6a    	vldr	d5, [pc, #424]          @ 0x5548 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6f0>
    53a0: eeb0 0b43    	vmov.f64	d0, d3
    53a4: eeb4 8b48    	vcmp.f64	d8, d8
    53a8: ed9f 7b69    	vldr	d7, [pc, #420]          @ 0x5550 <orange_dsp::exponential::evaluate::<false, 2, 3>+0x6f8>
    53ac: ed80 2b00    	vstr	d2, [r0]
    53b0: ed9d 2b02    	vldr	d2, [sp, #8]
    53b4: ee04 0b05    	vmla.f64	d0, d4, d5
    53b8: eeb0 5b41    	vmov.f64	d5, d1
    53bc: ee04 5b07    	vmla.f64	d5, d4, d7
    53c0: ed8a 2b02    	vstr	d2, [r10, #8]
    53c4: bf1c         	itt	ne
    53c6: eeb0 3b40    	vmovne.f64	d3, d0
    53ca: eeb0 1b45    	vmovne.f64	d1, d5
    53ce: eeb0 0bc2    	vabs.f64	d0, d2
    53d2: f10a 0a08    	add.w	r10, r10, #0x8
    53d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53da: ed80 3b02    	vstr	d3, [r0, #8]
    53de: eeb4 0b40    	vcmp.f64	d0, d0
    53e2: fe10 2b08    	vselvs.f64	d2, d0, d8
    53e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53ea: ed80 1b04    	vstr	d1, [r0, #16]
    53ee: fe12 0b00    	vselvs.f64	d0, d2, d0
    53f2: eeb4 2b40    	vcmp.f64	d2, d0
    53f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    53fa: fe32 8b00    	vselgt.f64	d8, d2, d0
    53fe: f1b9 0f78    	cmp.w	r9, #0x78
    5402: f47f ad7d    	bne.w	0x4f00 <orange_dsp::exponential::evaluate::<false, 2, 3>+0xa8> @ imm = #-0x506
    5406: f8dd 8004    	ldr.w	r8, [sp, #0x4]
    540a: ac2a         	add	r4, sp, #0xa8
    540c: 4640         	mov	r0, r8
    540e: cc6e         	ldm	r4!, {r1, r2, r3, r5, r6}
    5410: c06e         	stm	r0!, {r1, r2, r3, r5, r6}
    5412: e894 006e    	ldm.w	r4, {r1, r2, r3, r5, r6}
    5416: c06e         	stm	r0!, {r1, r2, r3, r5, r6}
    5418: f108 0028    	add.w	r0, r8, #0x28
    541c: a934         	add	r1, sp, #0xd0
    541e: 22c8         	movs	r2, #0xc8
    5420: f006 fea2    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x6d44
    5424: ed88 8b3c    	vstr	d8, [r8, #240]
    5428: f50d 7d0e    	add.w	sp, sp, #0x238
    542c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    5430: b001         	add	sp, #0x4
    5432: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    5436: bdf0         	pop	{r4, r5, r6, r7, pc}
    5438: ee 17 f2 bf  	.word	0xbff217ee
    543c: eb bc 2d c0  	.word	0xc02dbceb
    5440: 60 c8 9f 3f  	.word	0x3f9fc860
    5444: d9 62 bd 3f  	.word	0x3fbd62d9
    5448: 34 9c 3d 8e  	.word	0x8e3d9c34
    544c: d3 16 ff 3f  	.word	0x3fff16d3
    5450: 3c 32 b2 10  	.word	0x10b2323c
    5454: a8 c8 61 40  	.word	0x4061c8a8
    5458: fb 40 56 89  	.word	0x895640fb
    545c: 7c 81 b4 bf  	.word	0xbfb4817c
    5460: 58 3e f3 6f  	.word	0x6ff33e58
    5464: 7b 57 fc 3f  	.word	0x3ffc577b
    5468: ae 0c ba 90  	.word	0x90ba0cae
    546c: 11 58 63 40  	.word	0x40635811
    5470: 07 5b 7c 75  	.word	0x757c5b07
    5474: 4e be f6 bf  	.word	0xbff6be4e
    5478: f6 6f 60 ac  	.word	0xac606ff6
    547c: 74 b8 eb bf  	.word	0xbfebb874
    5480: 44 26 49 a7  	.word	0xa7492644
    5484: 95 2a 52 c0  	.word	0xc0522a95
    5488: 19 34 d7 bf  	.word	0xbfd73419
    548c: 10 7e 2d c0  	.word	0xc02d7e10
    5490: ae c1 b3 f2  	.word	0xf2b3c1ae
    5494: 3c 37 93 c0  	.word	0xc093373c
    5498: 67 06 aa dd  	.word	0xddaa0667
    549c: 77 ab d6 be  	.word	0xbed6ab77
    54a0: 31 67 39 eb  	.word	0xeb396731
    54a4: af 3e e1 be  	.word	0xbee13eaf
    54a8: 9c 95 29 1f  	.word	0x1f29959c
    54ac: 12 0b 1c bf  	.word	0xbf1c0b12
    54b0: 10 b9 11 33  	.word	0x3311b910
    54b4: 8a f2 50 bf  	.word	0xbf50f28a
    54b8: 1e 0e 5f 5c  	.word	0x5c5f0e1e
    54bc: 86 63 e9 3e  	.word	0x3ee96386
    54c0: e7 a5 9f 28  	.word	0x289fa5e7
    54c4: 1b ef 20 bf  	.word	0xbf20ef1b
    54c8: a2 90 71 78  	.word	0x787190a2
    54cc: 91 29 87 bf  	.word	0xbf872991
    54d0: c0 b2 e6 8e  	.word	0x8ee6b2c0
    54d4: cc cb cc 3f  	.word	0x3fcccbcc
    54d8: 31 e4 d7 d1  	.word	0xd1d7e431
    54dc: bc 9c 22 3f  	.word	0x3f229cbc
    54e0: 42 fa cc 9c  	.word	0x9cccfa42
    54e4: 8b a8 88 3f  	.word	0x3f88a88b
    54e8: c2 ee ec a6  	.word	0xa6eceec2
    54ec: 53 5c 03 40  	.word	0x40035c53
    54f0: d5 a9 60 f9  	.word	0xf960a9d5
    54f4: 31 5b 69 40  	.word	0x40695b31
    54f8: 7b 65 0f 29  	.word	0x290f657b
    54fc: f1 e1 25 c1  	.word	0xc125e1f1
    5500: a6 9e 0e 27  	.word	0x270e9ea6
    5504: 6c 6d 9b 40  	.word	0x409b6d6c
    5508: 93 6d 66 01  	.word	0x01666d93
    550c: 62 40 6e c1  	.word	0xc16e4062
    5510: 03 39 cc e5  	.word	0xe5cc3903
    5514: 13 8f 66 41  	.word	0x41668f13
    5518: 21 d0 d6 9a  	.word	0x9ad6d021
    551c: 46 a2 a9 c0  	.word	0xc0a9a246
    5520: 64 52 06 a3  	.word	0xa3065264
    5524: b9 d6 fd 40  	.word	0x40fdd6b9
    5528: 7b 6b 76 f3  	.word	0xf3766b7b
    552c: df 2a 66 41  	.word	0x41662adf
    5530: 6d c7 0e 5f  	.word	0x5f0ec76d
    5534: 0e 3e ee c0  	.word	0xc0ee3e0e
    5538: 2f a2 3d 09  	.word	0x093da22f
    553c: 40 d5 f4 c0  	.word	0xc0f4d540
    5540: 60 9a e6 46  	.word	0x46e69a60
    5544: d5 83 5d c1  	.word	0xc15d83d5
    5548: 67 a4 be 94  	.word	0x94bea467
    554c: 84 1b 37 c1  	.word	0xc1371b84
    5550: 5d ea a9 e7  	.word	0xe7a9ea5d
    5554: 99 49 a0 c1  	.word	0xc1a04999

00005558 <orange_dsp::exponential::evaluate::<false, 3, 5>>:
    5558: b5f0         	push	{r4, r5, r6, r7, lr}
    555a: af03         	add	r7, sp, #0xc
    555c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    5560: b081         	sub	sp, #0x4
    5562: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    5566: f5ad 7d1e    	sub.w	sp, sp, #0x278
    556a: 9001         	str	r0, [sp, #0x4]
    556c: a814         	add	r0, sp, #0x50
    556e: 4614         	mov	r4, r2
    5570: f7fd faf6    	bl	0x2b60 <orange_dsp::exponential::observations::<false>> @ imm = #-0x2a14
    5574: f10d 0be8    	add.w	r11, sp, #0xe8
    5578: 2128         	movs	r1, #0x28
    557a: 4658         	mov	r0, r11
    557c: f006 fd9d    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0x6b3a
    5580: ae44         	add	r6, sp, #0x110
    5582: 21c8         	movs	r1, #0xc8
    5584: 4630         	mov	r0, r6
    5586: f006 fd98    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0x6b30
    558a: ed9f 8b3b    	vldr	d8, [pc, #236]          @ 0x5678 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x120>
    558e: f24c 4958    	movw	r9, #0xc458
    5592: f64e 6a28    	movw	r10, #0xee28
    5596: f04f 0800    	mov.w	r8, #0x0
    559a: f2c0 0900    	movt	r9, #0x0
    559e: f2c0 0a00    	movt	r10, #0x0
    55a2: e020         	b	0x55e6 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x8e> @ imm = #0x40
    55a4: bf00         	nop
    55a6: bf00         	nop
    55a8: ed9d 0b02    	vldr	d0, [sp, #8]
    55ac: f108 0801    	add.w	r8, r8, #0x1
    55b0: 3628         	adds	r6, #0x28
    55b2: ed9d 1b04    	vldr	d1, [sp, #16]
    55b6: eeb0 0bc0    	vabs.f64	d0, d0
    55ba: eeb4 1b41    	vcmp.f64	d1, d1
    55be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55c2: eeb4 0b40    	vcmp.f64	d0, d0
    55c6: fe10 1b01    	vselvs.f64	d1, d0, d1
    55ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55ce: fe11 0b00    	vselvs.f64	d0, d1, d0
    55d2: eeb4 1b40    	vcmp.f64	d1, d0
    55d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    55da: fe31 8b00    	vselgt.f64	d8, d1, d0
    55de: f1b8 0f05    	cmp.w	r8, #0x5
    55e2: f000 81c5    	beq.w	0x5970 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x418> @ imm = #0x38a
    55e6: f859 5028    	ldr.w	r5, [r9, r8, lsl #2]
    55ea: a876         	add	r0, sp, #0x1d8
    55ec: 4629         	mov	r1, r5
    55ee: aa14         	add	r2, sp, #0x50
    55f0: ed8d 8b04    	vstr	d8, [sp, #16]
    55f4: f004 fecc    	bl	0xa390 <orange_dsp::exponential::law> @ imm = #0x4d98
    55f8: a880         	add	r0, sp, #0x200
    55fa: 4631         	mov	r1, r6
    55fc: ed9d 0b76    	vldr	d0, [sp, #472]
    5600: ec90 bb0a    	vldmia	r0, {d11, d12, d13, d14, d15}
    5604: eb04 00c5    	add.w	r0, r4, r5, lsl #3
    5608: ed9d 1b78    	vldr	d1, [sp, #480]
    560c: ed8d 1b12    	vstr	d1, [sp, #72]
    5610: ed9d 1b7a    	vldr	d1, [sp, #488]
    5614: ed8d 1b0e    	vstr	d1, [sp, #56]
    5618: ed9d 1b90    	vldr	d1, [sp, #576]
    561c: ed8d 1b0c    	vstr	d1, [sp, #48]
    5620: ed9d 1b92    	vldr	d1, [sp, #584]
    5624: ed8d 1b0a    	vstr	d1, [sp, #40]
    5628: ed9d 1b94    	vldr	d1, [sp, #592]
    562c: ed8d 1b08    	vstr	d1, [sp, #32]
    5630: ed90 1b00    	vldr	d1, [r0]
    5634: eb0b 00c8    	add.w	r0, r11, r8, lsl #3
    5638: ed9d 6b7c    	vldr	d6, [sp, #496]
    563c: ed9d 7b7e    	vldr	d7, [sp, #504]
    5640: ed9d 8b8a    	vldr	d8, [sp, #552]
    5644: ed9d ab8c    	vldr	d10, [sp, #560]
    5648: ed9d 9b8e    	vldr	d9, [sp, #568]
    564c: ee30 0b41    	vsub.f64	d0, d0, d1
    5650: ed9d 1b96    	vldr	d1, [sp, #600]
    5654: ed9d 2b98    	vldr	d2, [sp, #608]
    5658: ed80 0b00    	vstr	d0, [r0]
    565c: 2000         	movs	r0, #0x0
    565e: ed8d 0b02    	vstr	d0, [sp, #8]
    5662: ed9d 0b9a    	vldr	d0, [sp, #616]
    5666: ed9d 4b9c    	vldr	d4, [sp, #624]
    566a: ed8d 0b06    	vstr	d0, [sp, #24]
    566e: ed8d 4b10    	vstr	d4, [sp, #64]
    5672: e009         	b	0x5688 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x130> @ imm = #0x12
    5674: bf00         	nop
    5676: bf00         	nop
		...
    5680: 3001         	adds	r0, #0x1
    5682: 3108         	adds	r1, #0x8
    5684: 2805         	cmp	r0, #0x5
    5686: d08f         	beq	0x55a8 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x50> @ imm = #-0xe2
    5688: eeb7 4b00    	vmov.f64	d4, #1.000000e+00
    568c: 4580         	cmp	r8, r0
    568e: eeb0 0b49    	vmov.f64	d0, d9
    5692: eeb0 9b4a    	vmov.f64	d9, d10
    5696: eeb0 ab48    	vmov.f64	d10, d8
    569a: eeb0 8b4f    	vmov.f64	d8, d15
    569e: eeb0 fb4e    	vmov.f64	d15, d14
    56a2: eeb0 eb4d    	vmov.f64	d14, d13
    56a6: eeb0 db4c    	vmov.f64	d13, d12
    56aa: eeb0 cb4b    	vmov.f64	d12, d11
    56ae: eeb0 bb47    	vmov.f64	d11, d7
    56b2: ed9f 3bbb    	vldr	d3, [pc, #748]          @ 0x59a0 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x448>
    56b6: fe04 3b03    	vseleq.f64	d3, d4, d3
    56ba: ed9d 4b12    	vldr	d4, [sp, #72]
    56be: eeb5 4b40    	vcmp.f64	d4, #0
    56c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56c6: ed81 3b00    	vstr	d3, [r1]
    56ca: d00b         	beq	0x56e4 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x18c> @ imm = #0x16
    56cc: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    56d0: ed9d 5b12    	vldr	d5, [sp, #72]
    56d4: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    56d8: ed92 4b00    	vldr	d4, [r2]
    56dc: ee05 3b44    	vmls.f64	d3, d5, d4
    56e0: ed81 3b00    	vstr	d3, [r1]
    56e4: ed9d 4b0e    	vldr	d4, [sp, #56]
    56e8: eeb5 4b40    	vcmp.f64	d4, #0
    56ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    56f0: d00b         	beq	0x570a <orange_dsp::exponential::evaluate::<false, 3, 5>+0x1b2> @ imm = #0x16
    56f2: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    56f6: ed9d 5b0e    	vldr	d5, [sp, #56]
    56fa: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    56fe: ed92 4b1a    	vldr	d4, [r2, #104]
    5702: ee05 3b44    	vmls.f64	d3, d5, d4
    5706: ed81 3b00    	vstr	d3, [r1]
    570a: eeb0 7b4b    	vmov.f64	d7, d11
    570e: eeb5 6b40    	vcmp.f64	d6, #0
    5712: eeb0 bb4c    	vmov.f64	d11, d12
    5716: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    571a: d009         	beq	0x5730 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x1d8> @ imm = #0x12
    571c: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    5720: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    5724: ed92 4b34    	vldr	d4, [r2, #208]
    5728: ee06 3b44    	vmls.f64	d3, d6, d4
    572c: ed81 3b00    	vstr	d3, [r1]
    5730: eeb0 cb4d    	vmov.f64	d12, d13
    5734: eeb5 7b40    	vcmp.f64	d7, #0
    5738: eeb0 db4e    	vmov.f64	d13, d14
    573c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5740: d009         	beq	0x5756 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x1fe> @ imm = #0x12
    5742: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    5746: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    574a: ed92 4b4e    	vldr	d4, [r2, #312]
    574e: ee07 3b44    	vmls.f64	d3, d7, d4
    5752: ed81 3b00    	vstr	d3, [r1]
    5756: eeb0 eb4f    	vmov.f64	d14, d15
    575a: eeb5 bb40    	vcmp.f64	d11, #0
    575e: eeb0 fb48    	vmov.f64	d15, d8
    5762: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5766: d009         	beq	0x577c <orange_dsp::exponential::evaluate::<false, 3, 5>+0x224> @ imm = #0x12
    5768: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    576c: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    5770: ed92 4b68    	vldr	d4, [r2, #416]
    5774: ee0b 3b44    	vmls.f64	d3, d11, d4
    5778: ed81 3b00    	vstr	d3, [r1]
    577c: eeb0 8b4a    	vmov.f64	d8, d10
    5780: eeb5 cb40    	vcmp.f64	d12, #0
    5784: eeb0 ab49    	vmov.f64	d10, d9
    5788: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    578c: d009         	beq	0x57a2 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x24a> @ imm = #0x12
    578e: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    5792: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    5796: ed92 4b82    	vldr	d4, [r2, #520]
    579a: ee0c 3b44    	vmls.f64	d3, d12, d4
    579e: ed81 3b00    	vstr	d3, [r1]
    57a2: eeb0 9b40    	vmov.f64	d9, d0
    57a6: eeb5 db40    	vcmp.f64	d13, #0
    57aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    57ae: ed9d 0b0c    	vldr	d0, [sp, #48]
    57b2: d009         	beq	0x57c8 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x270> @ imm = #0x12
    57b4: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    57b8: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    57bc: ed92 4b9c    	vldr	d4, [r2, #624]
    57c0: ee0d 3b44    	vmls.f64	d3, d13, d4
    57c4: ed81 3b00    	vstr	d3, [r1]
    57c8: eeb5 eb40    	vcmp.f64	d14, #0
    57cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    57d0: d009         	beq	0x57e6 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x28e> @ imm = #0x12
    57d2: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    57d6: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    57da: ed92 4bb6    	vldr	d4, [r2, #728]
    57de: ee0e 3b44    	vmls.f64	d3, d14, d4
    57e2: ed81 3b00    	vstr	d3, [r1]
    57e6: eeb5 fb40    	vcmp.f64	d15, #0
    57ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    57ee: d009         	beq	0x5804 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x2ac> @ imm = #0x12
    57f0: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    57f4: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    57f8: ed92 4bd0    	vldr	d4, [r2, #832]
    57fc: ee0f 3b44    	vmls.f64	d3, d15, d4
    5800: ed81 3b00    	vstr	d3, [r1]
    5804: eeb5 8b40    	vcmp.f64	d8, #0
    5808: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    580c: d009         	beq	0x5822 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x2ca> @ imm = #0x12
    580e: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    5812: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    5816: ed92 4bea    	vldr	d4, [r2, #936]
    581a: ee08 3b44    	vmls.f64	d3, d8, d4
    581e: ed81 3b00    	vstr	d3, [r1]
    5822: eeb5 ab40    	vcmp.f64	d10, #0
    5826: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    582a: d00b         	beq	0x5844 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x2ec> @ imm = #0x16
    582c: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    5830: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    5834: f502 6282    	add.w	r2, r2, #0x410
    5838: ed92 4b00    	vldr	d4, [r2]
    583c: ee0a 3b44    	vmls.f64	d3, d10, d4
    5840: ed81 3b00    	vstr	d3, [r1]
    5844: eeb5 9b40    	vcmp.f64	d9, #0
    5848: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    584c: d00b         	beq	0x5866 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x30e> @ imm = #0x16
    584e: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    5852: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    5856: f502 628f    	add.w	r2, r2, #0x478
    585a: ed92 4b00    	vldr	d4, [r2]
    585e: ee09 3b44    	vmls.f64	d3, d9, d4
    5862: ed81 3b00    	vstr	d3, [r1]
    5866: eeb5 0b40    	vcmp.f64	d0, #0
    586a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    586e: d00b         	beq	0x5888 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x330> @ imm = #0x16
    5870: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    5874: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    5878: f502 629c    	add.w	r2, r2, #0x4e0
    587c: ed92 4b00    	vldr	d4, [r2]
    5880: ee00 3b44    	vmls.f64	d3, d0, d4
    5884: ed81 3b00    	vstr	d3, [r1]
    5888: ed9d 0b0a    	vldr	d0, [sp, #40]
    588c: eeb5 0b40    	vcmp.f64	d0, #0
    5890: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5894: d00b         	beq	0x58ae <orange_dsp::exponential::evaluate::<false, 3, 5>+0x356> @ imm = #0x16
    5896: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    589a: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    589e: f502 62a9    	add.w	r2, r2, #0x548
    58a2: ed92 4b00    	vldr	d4, [r2]
    58a6: ee00 3b44    	vmls.f64	d3, d0, d4
    58aa: ed81 3b00    	vstr	d3, [r1]
    58ae: ed9d 0b08    	vldr	d0, [sp, #32]
    58b2: eeb5 0b40    	vcmp.f64	d0, #0
    58b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58ba: d00b         	beq	0x58d4 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x37c> @ imm = #0x16
    58bc: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    58c0: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    58c4: f502 62b6    	add.w	r2, r2, #0x5b0
    58c8: ed92 4b00    	vldr	d4, [r2]
    58cc: ee00 3b44    	vmls.f64	d3, d0, d4
    58d0: ed81 3b00    	vstr	d3, [r1]
    58d4: ed9d 0b06    	vldr	d0, [sp, #24]
    58d8: eeb5 1b40    	vcmp.f64	d1, #0
    58dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58e0: d00b         	beq	0x58fa <orange_dsp::exponential::evaluate::<false, 3, 5>+0x3a2> @ imm = #0x16
    58e2: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    58e6: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    58ea: f502 62c3    	add.w	r2, r2, #0x618
    58ee: ed92 4b00    	vldr	d4, [r2]
    58f2: ee01 3b44    	vmls.f64	d3, d1, d4
    58f6: ed81 3b00    	vstr	d3, [r1]
    58fa: eeb5 2b40    	vcmp.f64	d2, #0
    58fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5902: d00b         	beq	0x591c <orange_dsp::exponential::evaluate::<false, 3, 5>+0x3c4> @ imm = #0x16
    5904: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    5908: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    590c: f502 62d0    	add.w	r2, r2, #0x680
    5910: ed92 4b00    	vldr	d4, [r2]
    5914: ee02 3b44    	vmls.f64	d3, d2, d4
    5918: ed81 3b00    	vstr	d3, [r1]
    591c: eeb5 0b40    	vcmp.f64	d0, #0
    5920: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5924: d00b         	beq	0x593e <orange_dsp::exponential::evaluate::<false, 3, 5>+0x3e6> @ imm = #0x16
    5926: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    592a: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    592e: f502 62dd    	add.w	r2, r2, #0x6e8
    5932: ed92 4b00    	vldr	d4, [r2]
    5936: ee00 3b44    	vmls.f64	d3, d0, d4
    593a: ed81 3b00    	vstr	d3, [r1]
    593e: ed9d 4b10    	vldr	d4, [sp, #64]
    5942: eeb5 4b40    	vcmp.f64	d4, #0
    5946: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    594a: f43f ae99    	beq.w	0x5680 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x128> @ imm = #-0x2ce
    594e: f859 2020    	ldr.w	r2, [r9, r0, lsl #2]
    5952: ed9d 5b10    	vldr	d5, [sp, #64]
    5956: eb0a 02c2    	add.w	r2, r10, r2, lsl #3
    595a: f502 62ea    	add.w	r2, r2, #0x750
    595e: ed92 4b00    	vldr	d4, [r2]
    5962: ee05 3b44    	vmls.f64	d3, d5, d4
    5966: ed81 3b00    	vstr	d3, [r1]
    596a: e689         	b	0x5680 <orange_dsp::exponential::evaluate::<false, 3, 5>+0x128> @ imm = #-0x2ee
    596c: bf00         	nop
    596e: bf00         	nop
    5970: 9c01         	ldr	r4, [sp, #0x4]
    5972: 4620         	mov	r0, r4
    5974: e8bb 006e    	ldm.w	r11!, {r1, r2, r3, r5, r6}
    5978: c06e         	stm	r0!, {r1, r2, r3, r5, r6}
    597a: e89b 006e    	ldm.w	r11, {r1, r2, r3, r5, r6}
    597e: c06e         	stm	r0!, {r1, r2, r3, r5, r6}
    5980: f104 0028    	add.w	r0, r4, #0x28
    5984: a944         	add	r1, sp, #0x110
    5986: 22c8         	movs	r2, #0xc8
    5988: f006 fbee    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x67dc
    598c: ed84 8b3c    	vstr	d8, [r4, #240]
    5990: f50d 7d1e    	add.w	sp, sp, #0x278
    5994: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    5998: b001         	add	sp, #0x4
    599a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    599e: bdf0         	pop	{r4, r5, r6, r7, pc}
		...

000059a8 <orange_dsp::exponential::evaluate::<false, 4, 2>>:
    59a8: b5f0         	push	{r4, r5, r6, r7, lr}
    59aa: af03         	add	r7, sp, #0xc
    59ac: e92d 0f00    	push.w	{r8, r9, r10, r11}
    59b0: b081         	sub	sp, #0x4
    59b2: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    59b6: f5ad 7d0c    	sub.w	sp, sp, #0x230
    59ba: 9001         	str	r0, [sp, #0x4]
    59bc: a808         	add	r0, sp, #0x20
    59be: 4693         	mov	r11, r2
    59c0: f7fd f8ce    	bl	0x2b60 <orange_dsp::exponential::observations::<false>> @ imm = #-0x2e64
    59c4: ac32         	add	r4, sp, #0xc8
    59c6: 21c8         	movs	r1, #0xc8
    59c8: 4620         	mov	r0, r4
    59ca: 2600         	movs	r6, #0x0
    59cc: e9cd 6630    	strd	r6, r6, [sp, #192]
    59d0: e9cd 662e    	strd	r6, r6, [sp, #184]
    59d4: f006 fb71    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0x66e2
    59d8: ed9f abef    	vldr	d10, [pc, #956]         @ 0x5d98 <orange_dsp::exponential::evaluate::<false, 4, 2>+0x3f0>
    59dc: f104 0528    	add.w	r5, r4, #0x28
    59e0: f10d 09c0    	add.w	r9, sp, #0xc0
    59e4: eeb0 8b4a    	vmov.f64	d8, d10
    59e8: f04f 0a01    	mov.w	r10, #0x1
    59ec: eeb0 db4a    	vmov.f64	d13, d10
    59f0: f10d 08b8    	add.w	r8, sp, #0xb8
    59f4: bf00         	nop
    59f6: bf00         	nop
    59f8: f24c 403c    	movw	r0, #0xc43c
    59fc: aa08         	add	r2, sp, #0x20
    59fe: f2c0 0000    	movt	r0, #0x0
    5a02: ed8d 8b04    	vstr	d8, [sp, #16]
    5a06: f850 6026    	ldr.w	r6, [r0, r6, lsl #2]
    5a0a: a864         	add	r0, sp, #0x190
    5a0c: 4631         	mov	r1, r6
    5a0e: f004 fcbf    	bl	0xa390 <orange_dsp::exponential::law> @ imm = #0x497e
    5a12: ed9d 0b64    	vldr	d0, [sp, #400]
    5a16: ea5f 70ca    	lsls.w	r0, r10, #0x1f
    5a1a: f04f 0a00    	mov.w	r10, #0x0
    5a1e: ed8d 0b06    	vstr	d0, [sp, #24]
    5a22: eeb0 9b4a    	vmov.f64	d9, d10
    5a26: eb0b 01c6    	add.w	r1, r11, r6, lsl #3
    5a2a: f04f 0601    	mov.w	r6, #0x1
    5a2e: ed9d 0b7a    	vldr	d0, [sp, #488]
    5a32: ed8d 0b02    	vstr	d0, [sp, #8]
    5a36: eeb7 0b00    	vmov.f64	d0, #1.000000e+00
    5a3a: ed9d 1b66    	vldr	d1, [sp, #408]
    5a3e: ee21 2b0a    	vmul.f64	d2, d1, d10
    5a42: eeb5 1b40    	vcmp.f64	d1, #0
    5a46: fe0a 0b00    	vseleq.f64	d0, d10, d0
    5a4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a4e: ed9d eb68    	vldr	d14, [sp, #416]
    5a52: ed9d fb6a    	vldr	d15, [sp, #424]
    5a56: eeb5 eb40    	vcmp.f64	d14, #0
    5a5a: ed9d 7b6c    	vldr	d7, [sp, #432]
    5a5e: ed9d bb6e    	vldr	d11, [sp, #440]
    5a62: ed9d 6b70    	vldr	d6, [sp, #448]
    5a66: ed9d cb72    	vldr	d12, [sp, #456]
    5a6a: ed9d 3b74    	vldr	d3, [sp, #464]
    5a6e: ed9d 5b76    	vldr	d5, [sp, #472]
    5a72: ed9d 4b78    	vldr	d4, [sp, #480]
    5a76: bf18         	it	ne
    5a78: eeb0 9b42    	vmovne.f64	d9, d2
    5a7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5a80: ee30 1b49    	vsub.f64	d1, d0, d9
    5a84: eeb5 fb40    	vcmp.f64	d15, #0
    5a88: ee2e 0b0a    	vmul.f64	d0, d14, d10
    5a8c: ee3d 2b49    	vsub.f64	d2, d13, d9
    5a90: ee31 9b40    	vsub.f64	d9, d1, d0
    5a94: ee2f db0a    	vmul.f64	d13, d15, d10
    5a98: ee32 0b40    	vsub.f64	d0, d2, d0
    5a9c: ed9d eb7c    	vldr	d14, [sp, #496]
    5aa0: bf18         	it	ne
    5aa2: eeb0 1b49    	vmovne.f64	d1, d9
    5aa6: bf18         	it	ne
    5aa8: eeb0 2b40    	vmovne.f64	d2, d0
    5aac: ee31 9b4d    	vsub.f64	d9, d1, d13
    5ab0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ab4: ee27 8b0a    	vmul.f64	d8, d7, d10
    5ab8: eeb5 7b40    	vcmp.f64	d7, #0
    5abc: ee32 0b4d    	vsub.f64	d0, d2, d13
    5ac0: ed9d fb7e    	vldr	d15, [sp, #504]
    5ac4: bf18         	it	ne
    5ac6: eeb0 1b49    	vmovne.f64	d1, d9
    5aca: bf18         	it	ne
    5acc: eeb0 2b40    	vmovne.f64	d2, d0
    5ad0: ee31 9b48    	vsub.f64	d9, d1, d8
    5ad4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ad8: ee2b db0a    	vmul.f64	d13, d11, d10
    5adc: eeb5 bb40    	vcmp.f64	d11, #0
    5ae0: ee32 0b48    	vsub.f64	d0, d2, d8
    5ae4: ed9d 7b80    	vldr	d7, [sp, #512]
    5ae8: bf18         	it	ne
    5aea: eeb0 1b49    	vmovne.f64	d1, d9
    5aee: bf18         	it	ne
    5af0: eeb0 2b40    	vmovne.f64	d2, d0
    5af4: ee31 8b4d    	vsub.f64	d8, d1, d13
    5af8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5afc: ee26 9b0a    	vmul.f64	d9, d6, d10
    5b00: eeb5 6b40    	vcmp.f64	d6, #0
    5b04: ee32 0b4d    	vsub.f64	d0, d2, d13
    5b08: ed9d bb82    	vldr	d11, [sp, #520]
    5b0c: bf18         	it	ne
    5b0e: eeb0 1b48    	vmovne.f64	d1, d8
    5b12: bf18         	it	ne
    5b14: eeb0 2b40    	vmovne.f64	d2, d0
    5b18: ee31 8b49    	vsub.f64	d8, d1, d9
    5b1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b20: ee32 0b49    	vsub.f64	d0, d2, d9
    5b24: eeb5 cb40    	vcmp.f64	d12, #0
    5b28: ee2c 9b0a    	vmul.f64	d9, d12, d10
    5b2c: ed9d db84    	vldr	d13, [sp, #528]
    5b30: ed9d 6b86    	vldr	d6, [sp, #536]
    5b34: bf18         	it	ne
    5b36: eeb0 1b48    	vmovne.f64	d1, d8
    5b3a: bf18         	it	ne
    5b3c: eeb0 2b40    	vmovne.f64	d2, d0
    5b40: ee31 8b49    	vsub.f64	d8, d1, d9
    5b44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b48: ee32 0b49    	vsub.f64	d0, d2, d9
    5b4c: eeb5 3b40    	vcmp.f64	d3, #0
    5b50: bf18         	it	ne
    5b52: eeb0 1b48    	vmovne.f64	d1, d8
    5b56: ee23 9b0a    	vmul.f64	d9, d3, d10
    5b5a: ed9d cb88    	vldr	d12, [sp, #544]
    5b5e: bf18         	it	ne
    5b60: eeb0 2b40    	vmovne.f64	d2, d0
    5b64: ee31 0b49    	vsub.f64	d0, d1, d9
    5b68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b6c: bf18         	it	ne
    5b6e: eeb0 1b40    	vmovne.f64	d1, d0
    5b72: ed9f 8b8b    	vldr	d8, [pc, #556]          @ 0x5da0 <orange_dsp::exponential::evaluate::<false, 4, 2>+0x3f8>
    5b76: eeb0 0b41    	vmov.f64	d0, d1
    5b7a: eeb5 5b40    	vcmp.f64	d5, #0
    5b7e: ee32 3b49    	vsub.f64	d3, d2, d9
    5b82: bf18         	it	ne
    5b84: eeb0 2b43    	vmovne.f64	d2, d3
    5b88: ee05 0b08    	vmla.f64	d0, d5, d8
    5b8c: eeb0 3b42    	vmov.f64	d3, d2
    5b90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5b94: ed9f 8b84    	vldr	d8, [pc, #528]          @ 0x5da8 <orange_dsp::exponential::evaluate::<false, 4, 2>+0x400>
    5b98: bf18         	it	ne
    5b9a: eeb0 1b40    	vmovne.f64	d1, d0
    5b9e: ee05 3b08    	vmla.f64	d3, d5, d8
    5ba2: eeb5 4b40    	vcmp.f64	d4, #0
    5ba6: bf18         	it	ne
    5ba8: eeb0 2b43    	vmovne.f64	d2, d3
    5bac: ee24 5b0a    	vmul.f64	d5, d4, d10
    5bb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5bb4: ed9d 8b02    	vldr	d8, [sp, #8]
    5bb8: ee31 0b45    	vsub.f64	d0, d1, d5
    5bbc: eeb5 8b40    	vcmp.f64	d8, #0
    5bc0: bf18         	it	ne
    5bc2: eeb0 1b40    	vmovne.f64	d1, d0
    5bc6: ee28 3b0a    	vmul.f64	d3, d8, d10
    5bca: ee32 4b45    	vsub.f64	d4, d2, d5
    5bce: bf18         	it	ne
    5bd0: eeb0 2b44    	vmovne.f64	d2, d4
    5bd4: ee31 0b43    	vsub.f64	d0, d1, d3
    5bd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5bdc: ee2e 4b0a    	vmul.f64	d4, d14, d10
    5be0: eeb5 eb40    	vcmp.f64	d14, #0
    5be4: bf18         	it	ne
    5be6: eeb0 1b40    	vmovne.f64	d1, d0
    5bea: ee32 3b43    	vsub.f64	d3, d2, d3
    5bee: bf18         	it	ne
    5bf0: eeb0 2b43    	vmovne.f64	d2, d3
    5bf4: ee31 0b44    	vsub.f64	d0, d1, d4
    5bf8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5bfc: ee2f 5b0a    	vmul.f64	d5, d15, d10
    5c00: eeb5 fb40    	vcmp.f64	d15, #0
    5c04: bf18         	it	ne
    5c06: eeb0 1b40    	vmovne.f64	d1, d0
    5c0a: ee32 4b44    	vsub.f64	d4, d2, d4
    5c0e: ed9d 3b8a    	vldr	d3, [sp, #552]
    5c12: bf18         	it	ne
    5c14: eeb0 2b44    	vmovne.f64	d2, d4
    5c18: ee31 0b45    	vsub.f64	d0, d1, d5
    5c1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c20: ee32 4b45    	vsub.f64	d4, d2, d5
    5c24: eeb5 7b40    	vcmp.f64	d7, #0
    5c28: bf18         	it	ne
    5c2a: eeb0 1b40    	vmovne.f64	d1, d0
    5c2e: ed9f 5b60    	vldr	d5, [pc, #384]          @ 0x5db0 <orange_dsp::exponential::evaluate::<false, 4, 2>+0x408>
    5c32: eeb0 0b41    	vmov.f64	d0, d1
    5c36: bf18         	it	ne
    5c38: eeb0 2b44    	vmovne.f64	d2, d4
    5c3c: ee07 0b05    	vmla.f64	d0, d7, d5
    5c40: eeb0 4b42    	vmov.f64	d4, d2
    5c44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c48: ed9f 5b5b    	vldr	d5, [pc, #364]          @ 0x5db8 <orange_dsp::exponential::evaluate::<false, 4, 2>+0x410>
    5c4c: bf18         	it	ne
    5c4e: eeb0 1b40    	vmovne.f64	d1, d0
    5c52: ee07 4b05    	vmla.f64	d4, d7, d5
    5c56: eeb5 bb40    	vcmp.f64	d11, #0
    5c5a: bf18         	it	ne
    5c5c: eeb0 2b44    	vmovne.f64	d2, d4
    5c60: ee2b 5b0a    	vmul.f64	d5, d11, d10
    5c64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c68: ee2d 4b0a    	vmul.f64	d4, d13, d10
    5c6c: eeb5 db40    	vcmp.f64	d13, #0
    5c70: eeb7 db00    	vmov.f64	d13, #1.000000e+00
    5c74: ee31 0b45    	vsub.f64	d0, d1, d5
    5c78: bf18         	it	ne
    5c7a: eeb0 1b40    	vmovne.f64	d1, d0
    5c7e: ee32 5b45    	vsub.f64	d5, d2, d5
    5c82: bf18         	it	ne
    5c84: eeb0 2b45    	vmovne.f64	d2, d5
    5c88: ee31 0b44    	vsub.f64	d0, d1, d4
    5c8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5c90: ee32 4b44    	vsub.f64	d4, d2, d4
    5c94: eeb5 6b40    	vcmp.f64	d6, #0
    5c98: bf1c         	itt	ne
    5c9a: eeb0 1b40    	vmovne.f64	d1, d0
    5c9e: eeb0 2b44    	vmovne.f64	d2, d4
    5ca2: ee26 5b0a    	vmul.f64	d5, d6, d10
    5ca6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5caa: ee2c 4b0a    	vmul.f64	d4, d12, d10
    5cae: eeb5 cb40    	vcmp.f64	d12, #0
    5cb2: ee31 0b45    	vsub.f64	d0, d1, d5
    5cb6: bf18         	it	ne
    5cb8: eeb0 1b40    	vmovne.f64	d1, d0
    5cbc: ee32 5b45    	vsub.f64	d5, d2, d5
    5cc0: ed91 0b00    	vldr	d0, [r1]
    5cc4: bf18         	it	ne
    5cc6: eeb0 2b45    	vmovne.f64	d2, d5
    5cca: ee31 5b44    	vsub.f64	d5, d1, d4
    5cce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5cd2: bf18         	it	ne
    5cd4: eeb0 1b45    	vmovne.f64	d1, d5
    5cd8: ed9f 6b39    	vldr	d6, [pc, #228]          @ 0x5dc0 <orange_dsp::exponential::evaluate::<false, 4, 2>+0x418>
    5cdc: eeb0 5b41    	vmov.f64	d5, d1
    5ce0: eeb5 3b40    	vcmp.f64	d3, #0
    5ce4: ee32 4b44    	vsub.f64	d4, d2, d4
    5ce8: bf18         	it	ne
    5cea: eeb0 2b44    	vmovne.f64	d2, d4
    5cee: ee03 5b06    	vmla.f64	d5, d3, d6
    5cf2: eeb0 4b42    	vmov.f64	d4, d2
    5cf6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5cfa: ed9f 6b33    	vldr	d6, [pc, #204]          @ 0x5dc8 <orange_dsp::exponential::evaluate::<false, 4, 2>+0x420>
    5cfe: ee03 4b06    	vmla.f64	d4, d3, d6
    5d02: ed9d 6b06    	vldr	d6, [sp, #24]
    5d06: bf1c         	itt	ne
    5d08: eeb0 1b45    	vmovne.f64	d1, d5
    5d0c: eeb0 2b44    	vmovne.f64	d2, d4
    5d10: ee36 0b40    	vsub.f64	d0, d6, d0
    5d14: ed9d 4b04    	vldr	d4, [sp, #16]
    5d18: eeb0 3bc0    	vabs.f64	d3, d0
    5d1c: eeb4 4b44    	vcmp.f64	d4, d4
    5d20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d24: eeb4 3b43    	vcmp.f64	d3, d3
    5d28: fe13 4b04    	vselvs.f64	d4, d3, d4
    5d2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d30: ed89 0b00    	vstr	d0, [r9]
    5d34: 46c1         	mov	r9, r8
    5d36: fe14 3b03    	vselvs.f64	d3, d4, d3
    5d3a: ed84 1b00    	vstr	d1, [r4]
    5d3e: eeb4 4b43    	vcmp.f64	d4, d3
    5d42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d46: ed84 2b02    	vstr	d2, [r4, #8]
    5d4a: 462c         	mov	r4, r5
    5d4c: fe34 8b03    	vselgt.f64	d8, d4, d3
    5d50: 2800         	cmp	r0, #0x0
    5d52: f47f ae51    	bne.w	0x59f8 <orange_dsp::exponential::evaluate::<false, 4, 2>+0x50> @ imm = #-0x35e
    5d56: 9c01         	ldr	r4, [sp, #0x4]
    5d58: 9830         	ldr	r0, [sp, #0xc0]
    5d5a: a932         	add	r1, sp, #0xc8
    5d5c: 22c8         	movs	r2, #0xc8
    5d5e: 6020         	str	r0, [r4]
    5d60: 9831         	ldr	r0, [sp, #0xc4]
    5d62: 6060         	str	r0, [r4, #0x4]
    5d64: 982e         	ldr	r0, [sp, #0xb8]
    5d66: 60a0         	str	r0, [r4, #0x8]
    5d68: 982f         	ldr	r0, [sp, #0xbc]
    5d6a: e9c4 0a03    	strd	r0, r10, [r4, #12]
    5d6e: f104 0028    	add.w	r0, r4, #0x28
    5d72: f8c4 a024    	str.w	r10, [r4, #0x24]
    5d76: e9c4 aa05    	strd	r10, r10, [r4, #20]
    5d7a: e9c4 aa07    	strd	r10, r10, [r4, #28]
    5d7e: f006 f9f3    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x63e6
    5d82: ed84 8b3c    	vstr	d8, [r4, #240]
    5d86: f50d 7d0c    	add.w	sp, sp, #0x230
    5d8a: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    5d8e: b001         	add	sp, #0x4
    5d90: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    5d94: bdf0         	pop	{r4, r5, r6, r7, pc}
    5d96: bf00         	nop
		...
    5da0: 52 cd ca 3d  	.word	0x3dcacd52
    5da4: 6a 1e 37 c0  	.word	0xc0371e6a
    5da8: 69 07 f3 2e  	.word	0x2ef30769
    5dac: 9e 50 17 40  	.word	0x4017509e
    5db0: 20 20 2a d5  	.word	0xd52a2020
    5db4: 1a 5d c1 bf  	.word	0xbfc15d1a
    5db8: b6 45 2d 2a  	.word	0x2a2d45b6
    5dbc: ba a1 ed bf  	.word	0xbfeda1ba
    5dc0: e3 f9 21 df  	.word	0xdf21f9e3
    5dc4: 2c 92 31 c1  	.word	0xc131922c
    5dc8: ba d8 52 92  	.word	0x9252d8ba
    5dcc: 3f 69 5d c1  	.word	0xc15d693f

00005dd0 <orange_dsp::generated_packed::origin::<5>>:
    5dd0: b580         	push	{r7, lr}
    5dd2: 466f         	mov	r7, sp
    5dd4: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    5dd8: b084         	sub	sp, #0x10
    5dda: edd1 ba01    	vldr	s23, [r1, #4]
    5dde: ed91 1a02    	vldr	s2, [r1, #8]
    5de2: eeb7 2aeb    	vcvt.f64.f32	d2, s23
    5de6: edd1 6a03    	vldr	s13, [r1, #12]
    5dea: ed9f 3be5    	vldr	d3, [pc, #916]          @ 0x6180 <orange_dsp::generated_packed::origin::<5>+0x3b0>
    5dee: eef0 7a40    	vmov.f32	s15, s0
    5df2: edd1 ea04    	vldr	s29, [r1, #16]
    5df6: ee22 8b03    	vmul.f64	d8, d2, d3
    5dfa: eeb7 2ac1    	vcvt.f64.f32	d2, s2
    5dfe: ed91 6a06    	vldr	s12, [r1, #24]
    5e02: ed9f 3be1    	vldr	d3, [pc, #900]          @ 0x6188 <orange_dsp::generated_packed::origin::<5>+0x3b8>
    5e06: edd1 aa07    	vldr	s21, [r1, #28]
    5e0a: ed91 fa08    	vldr	s30, [r1, #32]
    5e0e: ee02 8b03    	vmla.f64	d8, d2, d3
    5e12: eeb7 2ae6    	vcvt.f64.f32	d2, s13
    5e16: ed91 ea09    	vldr	s28, [r1, #36]
    5e1a: ed9f 3bdd    	vldr	d3, [pc, #884]          @ 0x6190 <orange_dsp::generated_packed::origin::<5>+0x3c0>
    5e1e: eeb7 cacf    	vcvt.f64.f32	d12, s30
    5e22: ed91 ba0a    	vldr	s22, [r1, #40]
    5e26: ee02 8b03    	vmla.f64	d8, d2, d3
    5e2a: eeb7 2ac0    	vcvt.f64.f32	d2, s0
    5e2e: ed91 0a05    	vldr	s0, [r1, #20]
    5e32: ed9f 3bd9    	vldr	d3, [pc, #868]          @ 0x6198 <orange_dsp::generated_packed::origin::<5>+0x3c8>
    5e36: eeb7 dace    	vcvt.f64.f32	d13, s28
    5e3a: ed8d 1a02    	vstr	s2, [sp, #8]
    5e3e: ee22 3b03    	vmul.f64	d3, d2, d3
    5e42: eeb7 2ac0    	vcvt.f64.f32	d2, s0
    5e46: ed91 aa0b    	vldr	s20, [r1, #44]
    5e4a: ed9f 4bd5    	vldr	d4, [pc, #852]          @ 0x61a0 <orange_dsp::generated_packed::origin::<5>+0x3d0>
    5e4e: ed8d 0a03    	vstr	s0, [sp, #12]
    5e52: eeb7 0aca    	vcvt.f64.f32	d0, s20
    5e56: ee22 4b04    	vmul.f64	d4, d2, d4
    5e5a: eeb7 2aee    	vcvt.f64.f32	d2, s29
    5e5e: edd1 fa0c    	vldr	s31, [r1, #48]
    5e62: ed9f 5bd1    	vldr	d5, [pc, #836]          @ 0x61a8 <orange_dsp::generated_packed::origin::<5>+0x3d8>
    5e66: ee02 4b05    	vmla.f64	d4, d2, d5
    5e6a: eeb7 2ac6    	vcvt.f64.f32	d2, s12
    5e6e: ed9f 5bd0    	vldr	d5, [pc, #832]          @ 0x61b0 <orange_dsp::generated_packed::origin::<5>+0x3e0>
    5e72: ee02 4b05    	vmla.f64	d4, d2, d5
    5e76: eeb7 5aea    	vcvt.f64.f32	d5, s21
    5e7a: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x61b8 <orange_dsp::generated_packed::origin::<5>+0x3e8>
    5e7e: ee05 4b09    	vmla.f64	d4, d5, d9
    5e82: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x61c0 <orange_dsp::generated_packed::origin::<5>+0x3f0>
    5e86: ee0c 4b09    	vmla.f64	d4, d12, d9
    5e8a: ed9f 9bcf    	vldr	d9, [pc, #828]          @ 0x61c8 <orange_dsp::generated_packed::origin::<5>+0x3f8>
    5e8e: ee0d 4b09    	vmla.f64	d4, d13, d9
    5e92: eeb7 9acb    	vcvt.f64.f32	d9, s22
    5e96: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0x61d0 <orange_dsp::generated_packed::origin::<5>+0x400>
    5e9a: ee09 4b01    	vmla.f64	d4, d9, d1
    5e9e: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0x61d8 <orange_dsp::generated_packed::origin::<5>+0x408>
    5ea2: ee00 4b01    	vmla.f64	d4, d0, d1
    5ea6: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x61f8 <orange_dsp::generated_packed::origin::<5>+0x428>
    5eaa: ee25 5b01    	vmul.f64	d5, d5, d1
    5eae: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x6200 <orange_dsp::generated_packed::origin::<5>+0x430>
    5eb2: ee02 5b01    	vmla.f64	d5, d2, d1
    5eb6: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0x6208 <orange_dsp::generated_packed::origin::<5>+0x438>
    5eba: ee0c 5b01    	vmla.f64	d5, d12, d1
    5ebe: eeb7 caef    	vcvt.f64.f32	d12, s31
    5ec2: ed9f 1bc7    	vldr	d1, [pc, #796]          @ 0x61e0 <orange_dsp::generated_packed::origin::<5>+0x410>
    5ec6: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0x6210 <orange_dsp::generated_packed::origin::<5>+0x440>
    5eca: ee0c 4b01    	vmla.f64	d4, d12, d1
    5ece: ed91 1a0d    	vldr	s2, [r1, #52]
    5ed2: eddf 1afc    	vldr	s3, [pc, #1008]         @ 0x62c4 <orange_dsp::generated_packed::origin::<5>+0x4f4>
    5ed6: ee0d 5b02    	vmla.f64	d5, d13, d2
    5eda: eeb7 dac1    	vcvt.f64.f32	d13, s2
    5ede: ed9f 2bc2    	vldr	d2, [pc, #776]          @ 0x61e8 <orange_dsp::generated_packed::origin::<5>+0x418>
    5ee2: ee0d 4b02    	vmla.f64	d4, d13, d2
    5ee6: ed9f 2aec    	vldr	s4, [pc, #944]          @ 0x6298 <orange_dsp::generated_packed::origin::<5>+0x4c8>
    5eea: ee26 7a02    	vmul.f32	s14, s12, s4
    5eee: ed9f 2aeb    	vldr	s4, [pc, #940]          @ 0x629c <orange_dsp::generated_packed::origin::<5>+0x4cc>
    5ef2: ee0a 7a82    	vmla.f32	s14, s21, s4
    5ef6: ed9f 2af1    	vldr	s4, [pc, #964]          @ 0x62bc <orange_dsp::generated_packed::origin::<5>+0x4ec>
    5efa: ee26 6a02    	vmul.f32	s12, s12, s4
    5efe: ed9f 2af0    	vldr	s4, [pc, #960]          @ 0x62c0 <orange_dsp::generated_packed::origin::<5>+0x4f0>
    5f02: ee0a 6a82    	vmla.f32	s12, s21, s4
    5f06: ed9f 2ae6    	vldr	s4, [pc, #920]          @ 0x62a0 <orange_dsp::generated_packed::origin::<5>+0x4d0>
    5f0a: ee0f 7a02    	vmla.f32	s14, s30, s4
    5f0e: edd1 aa0e    	vldr	s21, [r1, #56]
    5f12: eeb7 2aea    	vcvt.f64.f32	d2, s21
    5f16: ee0f 6a21    	vmla.f32	s12, s30, s3
    5f1a: eddf 1ad7    	vldr	s3, [pc, #860]          @ 0x6278 <orange_dsp::generated_packed::origin::<5>+0x4a8>
    5f1e: ee2b faa1    	vmul.f32	s30, s23, s3
    5f22: edd1 1a00    	vldr	s3, [r1]
    5f26: eddf bad5    	vldr	s23, [pc, #852]         @ 0x627c <orange_dsp::generated_packed::origin::<5>+0x4ac>
    5f2a: ed8d 0b00    	vstr	d0, [sp]
    5f2e: ee01 faab    	vmla.f32	s30, s3, s23
    5f32: eddf 1adc    	vldr	s3, [pc, #880]          @ 0x62a4 <orange_dsp::generated_packed::origin::<5>+0x4d4>
    5f36: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0x61f0 <orange_dsp::generated_packed::origin::<5>+0x420>
    5f3a: ee0e 7a21    	vmla.f32	s14, s28, s3
    5f3e: eddf 1ae2    	vldr	s3, [pc, #904]          @ 0x62c8 <orange_dsp::generated_packed::origin::<5>+0x4f8>
    5f42: ee02 4b00    	vmla.f64	d4, d2, d0
    5f46: ee0e 6a21    	vmla.f32	s12, s28, s3
    5f4a: eddf 1ace    	vldr	s3, [pc, #824]          @ 0x6284 <orange_dsp::generated_packed::origin::<5>+0x4b4>
    5f4e: ed9d 0a02    	vldr	s0, [sp, #8]
    5f52: ed9f eacd    	vldr	s28, [pc, #820]         @ 0x6288 <orange_dsp::generated_packed::origin::<5>+0x4b8>
    5f56: ee60 1a21    	vmul.f32	s3, s0, s3
    5f5a: eddf 0ad5    	vldr	s1, [pc, #852]          @ 0x62b0 <orange_dsp::generated_packed::origin::<5>+0x4e0>
    5f5e: ee46 1a8e    	vmla.f32	s3, s13, s28
    5f62: eddf 6ad1    	vldr	s13, [pc, #836]         @ 0x62a8 <orange_dsp::generated_packed::origin::<5>+0x4d8>
    5f66: ee0b 7a26    	vmla.f32	s14, s22, s13
    5f6a: eddf 6ad8    	vldr	s13, [pc, #864]         @ 0x62cc <orange_dsp::generated_packed::origin::<5>+0x4fc>
    5f6e: ee0b 6a26    	vmla.f32	s12, s22, s13
    5f72: eddf 6ac6    	vldr	s13, [pc, #792]         @ 0x628c <orange_dsp::generated_packed::origin::<5>+0x4bc>
    5f76: ee4e 1aa6    	vmla.f32	s3, s29, s13
    5f7a: eddf 6acc    	vldr	s13, [pc, #816]         @ 0x62ac <orange_dsp::generated_packed::origin::<5>+0x4dc>
    5f7e: ee0a 7a26    	vmla.f32	s14, s20, s13
    5f82: eddf 6ad3    	vldr	s13, [pc, #844]         @ 0x62d0 <orange_dsp::generated_packed::origin::<5>+0x500>
    5f86: ee0a 6a26    	vmla.f32	s12, s20, s13
    5f8a: eddf 6abd    	vldr	s13, [pc, #756]         @ 0x6280 <orange_dsp::generated_packed::origin::<5>+0x4b0>
    5f8e: ed9f bba2    	vldr	d11, [pc, #648]         @ 0x6218 <orange_dsp::generated_packed::origin::<5>+0x448>
    5f92: ee0f 7aa0    	vmla.f32	s14, s31, s1
    5f96: eddf 0acf    	vldr	s1, [pc, #828]          @ 0x62d4 <orange_dsp::generated_packed::origin::<5>+0x504>
    5f9a: ee09 5b0b    	vmla.f64	d5, d9, d11
    5f9e: ee0f 6aa0    	vmla.f32	s12, s31, s1
    5fa2: eddf 0ac4    	vldr	s1, [pc, #784]          @ 0x62b4 <orange_dsp::generated_packed::origin::<5>+0x4e4>
    5fa6: ed9f 9b9e    	vldr	d9, [pc, #632]          @ 0x6220 <orange_dsp::generated_packed::origin::<5>+0x450>
    5faa: ee01 7a20    	vmla.f32	s14, s2, s1
    5fae: eddf 0aca    	vldr	s1, [pc, #808]          @ 0x62d8 <orange_dsp::generated_packed::origin::<5>+0x508>
    5fb2: ed9d bb00    	vldr	d11, [sp]
    5fb6: ee01 6a20    	vmla.f32	s12, s2, s1
    5fba: ed9d 0a03    	vldr	s0, [sp, #12]
    5fbe: ee0b 5b09    	vmla.f64	d5, d11, d9
    5fc2: ee07 faa6    	vmla.f32	s30, s15, s13
    5fc6: eddf 6ab2    	vldr	s13, [pc, #712]         @ 0x6290 <orange_dsp::generated_packed::origin::<5>+0x4c0>
    5fca: ed9f 9b97    	vldr	d9, [pc, #604]          @ 0x6228 <orange_dsp::generated_packed::origin::<5>+0x458>
    5fce: ed9f 1ac3    	vldr	s2, [pc, #780]          @ 0x62dc <orange_dsp::generated_packed::origin::<5>+0x50c>
    5fd2: ee40 1a26    	vmla.f32	s3, s0, s13
    5fd6: ee0c 5b09    	vmla.f64	d5, d12, d9
    5fda: eddf 6aae    	vldr	s13, [pc, #696]         @ 0x6294 <orange_dsp::generated_packed::origin::<5>+0x4c4>
    5fde: ee0a 6a81    	vmla.f32	s12, s21, s2
    5fe2: ed9f 9b93    	vldr	d9, [pc, #588]          @ 0x6230 <orange_dsp::generated_packed::origin::<5>+0x460>
    5fe6: ed91 1a0f    	vldr	s2, [r1, #60]
    5fea: ee27 0aa6    	vmul.f32	s0, s15, s13
    5fee: ee0d 5b09    	vmla.f64	d5, d13, d9
    5ff2: eddf 6ab1    	vldr	s13, [pc, #708]         @ 0x62b8 <orange_dsp::generated_packed::origin::<5>+0x4e8>
    5ff6: ed9f 9b90    	vldr	d9, [pc, #576]          @ 0x6238 <orange_dsp::generated_packed::origin::<5>+0x468>
    5ffa: ee0a 7aa6    	vmla.f32	s14, s21, s13
    5ffe: eddf 0ab8    	vldr	s1, [pc, #736]          @ 0x62e0 <orange_dsp::generated_packed::origin::<5>+0x510>
    6002: ee02 5b09    	vmla.f64	d5, d2, d9
    6006: eeb7 9ac1    	vcvt.f64.f32	d9, s2
    600a: edd1 6a10    	vldr	s13, [r1, #64]
    600e: ed9f ab8c    	vldr	d10, [pc, #560]         @ 0x6240 <orange_dsp::generated_packed::origin::<5>+0x470>
    6012: eddf 7ab4    	vldr	s15, [pc, #720]         @ 0x62e4 <orange_dsp::generated_packed::origin::<5>+0x514>
    6016: ee61 0a20    	vmul.f32	s1, s2, s1
    601a: ee46 0aa7    	vmla.f32	s1, s13, s15
    601e: edd1 7a11    	vldr	s15, [r1, #68]
    6022: ee09 5b0a    	vmla.f64	d5, d9, d10
    6026: eeb7 9ae6    	vcvt.f64.f32	d9, s13
    602a: ed9f 2aaf    	vldr	s4, [pc, #700]          @ 0x62e8 <orange_dsp::generated_packed::origin::<5>+0x518>
    602e: ed9f ab86    	vldr	d10, [pc, #536]         @ 0x6248 <orange_dsp::generated_packed::origin::<5>+0x478>
    6032: ee47 0a82    	vmla.f32	s1, s15, s4
    6036: ed91 1a12    	vldr	s2, [r1, #72]
    603a: ee09 5b0a    	vmla.f64	d5, d9, d10
    603e: eeb7 9ae7    	vcvt.f64.f32	d9, s15
    6042: ed9f 2aaa    	vldr	s4, [pc, #680]          @ 0x62ec <orange_dsp::generated_packed::origin::<5>+0x51c>
    6046: ed9f ab82    	vldr	d10, [pc, #520]         @ 0x6250 <orange_dsp::generated_packed::origin::<5>+0x480>
    604a: ee41 0a02    	vmla.f32	s1, s2, s4
    604e: ed9f 2aa8    	vldr	s4, [pc, #672]          @ 0x62f0 <orange_dsp::generated_packed::origin::<5>+0x520>
    6052: ee29 9b0a    	vmul.f64	d9, d9, d10
    6056: eeb7 aac1    	vcvt.f64.f32	d10, s2
    605a: edd1 6a14    	vldr	s13, [r1, #80]
    605e: ee21 ba02    	vmul.f32	s22, s2, s4
    6062: ed9f 2aa4    	vldr	s4, [pc, #656]          @ 0x62f4 <orange_dsp::generated_packed::origin::<5>+0x524>
    6066: ed9f cb7c    	vldr	d12, [pc, #496]         @ 0x6258 <orange_dsp::generated_packed::origin::<5>+0x488>
    606a: ee07 ba82    	vmla.f32	s22, s15, s4
    606e: edd1 7a13    	vldr	s15, [r1, #76]
    6072: eeb7 2ae6    	vcvt.f64.f32	d2, s13
    6076: ed91 1a16    	vldr	s2, [r1, #88]
    607a: ee0a 9b0c    	vmla.f64	d9, d10, d12
    607e: eeb7 cae7    	vcvt.f64.f32	d12, s15
    6082: ed9f ab77    	vldr	d10, [pc, #476]         @ 0x6260 <orange_dsp::generated_packed::origin::<5>+0x490>
    6086: ee30 7a07    	vadd.f32	s14, s0, s14
    608a: ed9f db77    	vldr	d13, [pc, #476]         @ 0x6268 <orange_dsp::generated_packed::origin::<5>+0x498>
    608e: ee30 6a06    	vadd.f32	s12, s0, s12
    6092: ee22 ab0a    	vmul.f64	d10, d2, d10
    6096: edd1 2a15    	vldr	s5, [r1, #84]
    609a: ed9f 2a9a    	vldr	s4, [pc, #616]          @ 0x6304 <orange_dsp::generated_packed::origin::<5>+0x534>
    609e: ee0c ab0d    	vmla.f64	d10, d12, d13
    60a2: eeb7 cae2    	vcvt.f64.f32	d12, s5
    60a6: ed9f db72    	vldr	d13, [pc, #456]         @ 0x6270 <orange_dsp::generated_packed::origin::<5>+0x4a0>
    60aa: ee21 ea02    	vmul.f32	s28, s2, s4
    60ae: ed9f 1a96    	vldr	s2, [pc, #600]          @ 0x6308 <orange_dsp::generated_packed::origin::<5>+0x538>
    60b2: ee0c ab0d    	vmla.f64	d10, d12, d13
    60b6: ed9f da90    	vldr	s26, [pc, #576]         @ 0x62f8 <orange_dsp::generated_packed::origin::<5>+0x528>
    60ba: ee02 ea81    	vmla.f32	s28, s5, s2
    60be: ee07 ba8d    	vmla.f32	s22, s15, s26
    60c2: ee30 ca21    	vadd.f32	s24, s0, s3
    60c6: ee33 1b04    	vadd.f64	d1, d3, d4
    60ca: ee70 0a20    	vadd.f32	s1, s0, s1
    60ce: ee33 4b05    	vadd.f64	d4, d3, d5
    60d2: eeb7 cacc    	vcvt.f64.f32	d12, s24
    60d6: ee33 5b09    	vadd.f64	d5, d3, d9
    60da: eeb7 9ac7    	vcvt.f64.f32	d9, s14
    60de: ed9f 7a87    	vldr	s14, [pc, #540]         @ 0x62fc <orange_dsp::generated_packed::origin::<5>+0x52c>
    60e2: ee26 7a87    	vmul.f32	s14, s13, s14
    60e6: ee33 2b08    	vadd.f64	d2, d3, d8
    60ea: eeb7 8acf    	vcvt.f64.f32	d8, s30
    60ee: ee33 3b0a    	vadd.f64	d3, d3, d10
    60f2: ed9f aa83    	vldr	s20, [pc, #524]         @ 0x6300 <orange_dsp::generated_packed::origin::<5>+0x530>
    60f6: ed80 8b00    	vstr	d8, [r0]
    60fa: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    60fe: ee3b 6a07    	vadd.f32	s12, s22, s14
    6102: ee17 7a8a    	vnmls.f32	s14, s15, s20
    6106: ed80 8b06    	vstr	d8, [r0, #24]
    610a: ee30 6a06    	vadd.f32	s12, s0, s12
    610e: ed80 9b04    	vstr	d9, [r0, #16]
    6112: eeb7 9ae0    	vcvt.f64.f32	d9, s1
    6116: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    611a: ee30 6a07    	vadd.f32	s12, s0, s14
    611e: ee30 7a0e    	vadd.f32	s14, s0, s28
    6122: ed80 8b0a    	vstr	d8, [r0, #40]
    6126: eeb7 8ac6    	vcvt.f64.f32	d8, s12
    612a: ed9f 6a78    	vldr	s12, [pc, #480]         @ 0x630c <orange_dsp::generated_packed::origin::<5>+0x53c>
    612e: ed80 8b0c    	vstr	d8, [r0, #48]
    6132: eeb7 8ac7    	vcvt.f64.f32	d8, s14
    6136: ed9f 7a76    	vldr	s14, [pc, #472]         @ 0x6310 <orange_dsp::generated_packed::origin::<5>+0x540>
    613a: ee27 6a86    	vmul.f32	s12, s15, s12
    613e: ee06 6a87    	vmla.f32	s12, s13, s14
    6142: ed80 cb02    	vstr	d12, [r0, #8]
    6146: ed80 9b08    	vstr	d9, [r0, #32]
    614a: ed80 8b0e    	vstr	d8, [r0, #56]
    614e: ee30 0a06    	vadd.f32	s0, s0, s12
    6152: ed80 2b10    	vstr	d2, [r0, #64]
    6156: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    615a: ed80 1b12    	vstr	d1, [r0, #72]
    615e: ed80 4b14    	vstr	d4, [r0, #80]
    6162: ed80 5b16    	vstr	d5, [r0, #88]
    6166: ed80 3b18    	vstr	d3, [r0, #96]
    616a: ed80 0b1a    	vstr	d0, [r0, #104]
    616e: ed80 0b1c    	vstr	d0, [r0, #112]
    6172: b004         	add	sp, #0x10
    6174: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    6178: bd80         	pop	{r7, pc}
    617a: bf00         	nop
    617c: bf00         	nop
    617e: bf00         	nop
    6180: c1 5d e1 c9  	.word	0xc9e15dc1
    6184: 86 54 e5 bf  	.word	0xbfe55486
    6188: 86 0c 11 0f  	.word	0x0f110c86
    618c: c8 6c d7 3f  	.word	0x3fd76cc8
    6190: 7d 24 f3 72  	.word	0x72f3247d
    6194: 1b 11 d2 bf  	.word	0xbfd2111b
		...
    61a0: 3d 68 b5 4d  	.word	0x4db5683d
    61a4: 2d 2d e5 bf  	.word	0xbfe52d2d
    61a8: 30 c6 34 16  	.word	0x1634c630
    61ac: b7 3a cc bf  	.word	0xbfcc3ab7
    61b0: 75 22 80 1e  	.word	0x1e802275
    61b4: ff ca ba bf  	.word	0xbfbacaff
    61b8: 06 42 bd ec  	.word	0xecbd4206
    61bc: 6c ee e0 bf  	.word	0xbfe0ee6c
    61c0: 94 54 5e e4  	.word	0xe45e5494
    61c4: 65 da e0 bf  	.word	0xbfe0da65
    61c8: 7f 02 92 0b  	.word	0x0b92027f
    61cc: f9 a6 d7 3f  	.word	0x3fd7a6f9
    61d0: 49 ec 9f 20  	.word	0x209fec49
    61d4: fa 74 8e bf  	.word	0xbf8e74fa
    61d8: 47 e4 bd ce  	.word	0xcebde447
    61dc: 0e 2b 69 bf  	.word	0xbf692b0e
    61e0: f4 24 ee df  	.word	0xdfee24f4
    61e4: 96 e5 64 3f  	.word	0x3f64e596
    61e8: cf 1e ec 24  	.word	0x24ec1ecf
    61ec: 9c 63 8d bf  	.word	0xbf8d639c
    61f0: 30 f8 ed 0a  	.word	0x0aedf830
    61f4: b2 7b 40 bf  	.word	0xbf407bb2
    61f8: d7 f6 ca fa  	.word	0xfacaf6d7
    61fc: 26 e9 a6 bf  	.word	0xbfa6e926
    6200: 3a 53 cc f5  	.word	0xf5cc533a
    6204: 53 6e a1 3f  	.word	0x3fa16e53
    6208: d2 bc 75 4e  	.word	0x4e75bcd2
    620c: 0d ce a6 bf  	.word	0xbfa6ce0d
    6210: 08 aa 3a 11  	.word	0x113aaa08
    6214: f2 02 ca bf  	.word	0xbfca02f2
    6218: 3b 35 7d dc  	.word	0xdc7d353b
    621c: f0 f5 d4 bf  	.word	0xbfd4f5f0
    6220: 8a 7e 40 15  	.word	0x15407e8a
    6224: 20 4b d2 bf  	.word	0xbfd24b20
    6228: 58 aa ae 17  	.word	0x17aeaa58
    622c: 84 6a d5 bf  	.word	0xbfd56a84
    6230: 1d ef 71 50  	.word	0x5071ef1d
    6234: b3 bf d2 3f  	.word	0x3fd2bfb3
    6238: 59 b9 c0 26  	.word	0x26c0b959
    623c: 2e df e3 bf  	.word	0xbfe3df2e
    6240: 3b cc c8 6a  	.word	0x6ac8cc3b
    6244: c2 ed a6 bf  	.word	0xbfa6edc2
    6248: 30 b5 9f 60  	.word	0x609fb530
    624c: ab e5 d3 bf  	.word	0xbfd3e5ab
    6250: 7b 84 3a 2a  	.word	0x2a3a847b
    6254: 5a 5f c0 bf  	.word	0xbfc05f5a
    6258: f7 82 13 a7  	.word	0xa71382f7
    625c: 09 7c d7 3f  	.word	0x3fd77c09
    6260: 34 38 d2 5b  	.word	0x5bd23834
    6264: a6 d7 e0 bf  	.word	0xbfe0d7a6
    6268: ee 6f e8 6a  	.word	0x6ae86fee
    626c: 04 d6 d0 bf  	.word	0xbfd0d604
    6270: 3b 36 33 54  	.word	0x5433363b
    6274: 06 e3 e4 bf  	.word	0xbfe4e306
    6278: 37 ee 32 35  	.word	0x3532ee37
    627c: b0 0f 21 37  	.word	0x37210fb0
    6280: 24 7b b2 37  	.word	0x37b27b24
    6284: d0 a0 75 b6  	.word	0xb675a0d0
    6288: c4 71 3d 36  	.word	0x363d71c4
    628c: bb 07 3b 38  	.word	0x383b07bb
    6290: 93 eb fb 34  	.word	0x34fbeb93
    6294: 00 00 00 00  	.word	0x00000000
    6298: 2e 27 35 b7  	.word	0xb735272e
    629c: 2b 1a 6e 37  	.word	0x376e1a2b
    62a0: 87 00 6d 37  	.word	0x376d0087
    62a4: df 29 87 38  	.word	0x388729df
    62a8: 0c fb f5 36  	.word	0x36f5fb0c
    62ac: 55 44 cb 35  	.word	0x35cb4455
    62b0: 1c c5 a8 b5  	.word	0xb5a8c51c
    62b4: 3d 5b ed 36  	.word	0x36ed5b3d
    62b8: b3 1f 85 34  	.word	0x34851fb3
    62bc: d6 42 da b7  	.word	0xb7da42d6
    62c0: 1e 70 0f 38  	.word	0x380f701e
    62c4: 73 c6 0e 38  	.word	0x380ec673
    62c8: 3e 82 bf b8  	.word	0xb8bf823e
    62cc: ff 9a 76 36  	.word	0x36769aff
    62d0: 82 c8 4b 35  	.word	0x354bc882
    62d4: da 32 29 b5  	.word	0xb52932da
    62d8: 95 f5 6d 36  	.word	0x366df595
    62dc: 44 76 05 34  	.word	0x34057644
    62e0: eb 37 96 b6  	.word	0xb69637eb
    62e4: dd 2c 15 38  	.word	0x38152cdd
    62e8: cd a2 36 36  	.word	0x3636a2cd
    62ec: 55 fc 02 b7  	.word	0xb702fc55
    62f0: 51 02 a3 b7  	.word	0xb7a30251
    62f4: 00 b1 70 b7  	.word	0xb770b100
    62f8: 4c 93 ad 38  	.word	0x38ad934c
    62fc: 85 ce bb 36  	.word	0x36bbce85
    6300: 4c 93 ad b8  	.word	0xb8ad934c
    6304: bb 0d 1b 3c  	.word	0x3c1b0dbb
    6308: 34 e1 f8 37  	.word	0x37f8e134
    630c: 8b 99 2a bf  	.word	0xbf2a998b
    6310: c0 34 94 37  	.word	0x379434c0
    6314: d4 d4 d4 d4  	.word	0xd4d4d4d4

00006318 <orange_dsp::generated_packed::update::<5>>:
    6318: b580         	push	{r7, lr}
    631a: 466f         	mov	r7, sp
    631c: e8bd 4080    	pop.w	{r7, lr}
    6320: f004 bcb6    	b.w	0xac90 <orange_dsp::generated_condensed::update> @ imm = #0x496c
    6324: d4d4         	bmi	0x62d0 <orange_dsp::generated_packed::origin::<5>+0x500> @ imm = #-0x58
    6326: d4d4         	bmi	0x62d2 <orange_dsp::generated_packed::origin::<5>+0x502> @ imm = #-0x58

00006328 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>>:
    6328: b5f0         	push	{r4, r5, r6, r7, lr}
    632a: af03         	add	r7, sp, #0xc
    632c: f84d 8d04    	str	r8, [sp, #-4]!
    6330: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    6334: eeba 1a0e    	vmov.f32	s2, #-1.500000e+01
    6338: ed91 5a00    	vldr	s10, [r1]
    633c: ed9f 2a96    	vldr	s4, [pc, #600]          @ 0x6598 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x270>
    6340: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    6344: eefe 1a00    	vmov.f32	s3, #-5.000000e-01
    6348: ee35 3a01    	vadd.f32	s6, s10, s2
    634c: ee71 5a45    	vsub.f32	s11, s2, s10
    6350: eef7 0bc0    	vcvt.f32.f64	s1, d0
    6354: ee83 4a02    	vdiv.f32	s8, s6, s4
    6358: ed9f 3af7    	vldr	s6, [pc, #988]          @ 0x6738 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x410>
    635c: eec5 5a82    	vdiv.f32	s11, s11, s4
    6360: eeb4 3a44    	vcmp.f32	s6, s8
    6364: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6368: fe33 6a04    	vselgt.f32	s12, s6, s8
    636c: ed9f 4af3    	vldr	s8, [pc, #972]          @ 0x673c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x414>
    6370: eeb4 6a44    	vcmp.f32	s12, s8
    6374: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6378: fe74 7a06    	vselgt.f32	s15, s8, s12
    637c: ed9f 6af0    	vldr	s12, [pc, #960]         @ 0x6740 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x418>
    6380: ee67 2a86    	vmul.f32	s5, s15, s12
    6384: ee72 3a87    	vadd.f32	s7, s5, s14
    6388: eef5 2a40    	vcmp.f32	s5, #0
    638c: ee72 4aa1    	vadd.f32	s9, s5, s3
    6390: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6394: eefd 3ae3    	vcvt.s32.f32	s7, s7
    6398: eefd 4ae4    	vcvt.s32.f32	s9, s9
    639c: eeb4 3a65    	vcmp.f32	s6, s11
    63a0: ee13 3a90    	vmov	r3, s7
    63a4: ee14 2a90    	vmov	r2, s9
    63a8: bfa8         	it	ge
    63aa: 461a         	movge	r2, r3
    63ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63b0: fe73 2a25    	vselgt.f32	s5, s6, s11
    63b4: eddf 5af8    	vldr	s11, [pc, #992]         @ 0x6798 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x470>
    63b8: eeb0 aa65    	vmov.f32	s20, s11
    63bc: eeb0 ba65    	vmov.f32	s22, s11
    63c0: eef4 2a44    	vcmp.f32	s5, s8
    63c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63c8: fe34 8a22    	vselgt.f32	s16, s8, s5
    63cc: ee68 2a06    	vmul.f32	s5, s16, s12
    63d0: ee72 3aa1    	vadd.f32	s7, s5, s3
    63d4: eef5 2a40    	vcmp.f32	s5, #0
    63d8: ee72 4a87    	vadd.f32	s9, s5, s14
    63dc: ee02 2a90    	vmov	s5, r2
    63e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    63e4: eefd 3ae3    	vcvt.s32.f32	s7, s7
    63e8: eefd 4ae4    	vcvt.s32.f32	s9, s9
    63ec: ee13 5a90    	vmov	r5, s7
    63f0: eef8 3ae2    	vcvt.f32.s32	s7, s5
    63f4: ee14 3a90    	vmov	r3, s9
    63f8: bfa8         	it	ge
    63fa: 461d         	movge	r5, r3
    63fc: f04f 537e    	mov.w	r3, #0x3f800000
    6400: ee02 5a90    	vmov	s5, r5
    6404: eb03 52c2    	add.w	r2, r3, r2, lsl #23
    6408: eb03 56c5    	add.w	r6, r3, r5, lsl #23
    640c: eef8 4ae2    	vcvt.f32.s32	s9, s5
    6410: eddf 2ae5    	vldr	s5, [pc, #916]          @ 0x67a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x480>
    6414: ee43 7ae2    	vmls.f32	s15, s7, s5
    6418: eddf 3ae5    	vldr	s7, [pc, #916]          @ 0x67b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x488>
    641c: eef0 6a63    	vmov.f32	s13, s7
    6420: eeb0 9a63    	vmov.f32	s18, s7
    6424: ee04 8ae2    	vmls.f32	s16, s9, s5
    6428: eddf 4ae0    	vldr	s9, [pc, #896]          @ 0x67ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x484>
    642c: ee47 6aa4    	vmla.f32	s13, s15, s9
    6430: ee08 9a24    	vmla.f32	s18, s16, s9
    6434: ee28 ca08    	vmul.f32	s24, s16, s16
    6438: ee07 aaa6    	vmla.f32	s20, s15, s13
    643c: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    6440: ee08 ba09    	vmla.f32	s22, s16, s18
    6444: eeb0 9a47    	vmov.f32	s18, s14
    6448: ee07 9a8a    	vmla.f32	s18, s15, s20
    644c: eeb0 aa47    	vmov.f32	s20, s14
    6450: ee08 aa0b    	vmla.f32	s20, s16, s22
    6454: ee27 baa7    	vmul.f32	s22, s15, s15
    6458: ee77 7aa6    	vadd.f32	s15, s15, s13
    645c: ee38 8a26    	vadd.f32	s16, s16, s13
    6460: ee4b 7a09    	vmla.f32	s15, s22, s18
    6464: ee09 2a10    	vmov	s18, r2
    6468: eeb0 ba60    	vmov.f32	s22, s1
    646c: ee0c 8a0a    	vmla.f32	s16, s24, s20
    6470: ee0a 6a10    	vmov	s20, r6
    6474: ee27 9a89    	vmul.f32	s18, s15, s18
    6478: eddf 7aca    	vldr	s15, [pc, #808]         @ 0x67a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x47c>
    647c: ee05 ba27    	vmla.f32	s22, s10, s15
    6480: ee28 aa0a    	vmul.f32	s20, s16, s20
    6484: ed9f 8acb    	vldr	s16, [pc, #812]         @ 0x67b4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x48c>
    6488: ee39 0a4a    	vsub.f32	s0, s18, s20
    648c: ee10 ba08    	vnmls.f32	s22, s0, s16
    6490: ee1b 2a10    	vmov	r2, s22
    6494: f022 4200    	bic	r2, r2, #0x80000000
    6498: f1b2 4fff    	cmp.w	r2, #0x7f800000
    649c: db04         	blt	0x64a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x180> @ imm = #0x8
    649e: ed9f 0ac6    	vldr	s0, [pc, #792]          @ 0x67b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x490>
    64a2: e00b         	b	0x64bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x194> @ imm = #0x16
    64a4: bf00         	nop
    64a6: bf00         	nop
    64a8: ed9f 0ac4    	vldr	s0, [pc, #784]          @ 0x67bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x494>
    64ac: ee8b 0a00    	vdiv.f32	s0, s22, s0
    64b0: ed9f cac3    	vldr	s24, [pc, #780]         @ 0x67c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x498>
    64b4: eeb0 0ac0    	vabs.f32	s0, s0
    64b8: fe80 0a0c    	vmaxnm.f32	s0, s0, s24
    64bc: ee79 9a0a    	vadd.f32	s19, s18, s20
    64c0: f04f 0e00    	mov.w	lr, #0x0
    64c4: eef1 8a4b    	vneg.f32	s17, s22
    64c8: f04f 0c00    	mov.w	r12, #0x0
    64cc: ed9f aabd    	vldr	s20, [pc, #756]         @ 0x67c4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x49c>
    64d0: 46f0         	mov	r8, lr
    64d2: ed9f babd    	vldr	s22, [pc, #756]         @ 0x67c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a0>
    64d6: ed9f 9abd    	vldr	s18, [pc, #756]         @ 0x67cc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a4>
    64da: ed9f dab8    	vldr	s26, [pc, #736]         @ 0x67bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x494>
    64de: ed9f eab8    	vldr	s28, [pc, #736]         @ 0x67c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x498>
    64e2: ed9f cabc    	vldr	s24, [pc, #752]         @ 0x67d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4ac>
    64e6: ee69 9a88    	vmul.f32	s19, s19, s16
    64ea: f1be 0f10    	cmp.w	lr, #0x10
    64ee: bf18         	it	ne
    64f0: f108 0801    	addne.w	r8, r8, #0x1
    64f4: 2500         	movs	r5, #0x0
    64f6: eec9 9a82    	vdiv.f32	s19, s19, s4
    64fa: ee79 9a8a    	vadd.f32	s19, s19, s20
    64fe: ee19 4a90    	vmov	r4, s19
    6502: eef0 aae9    	vabs.f32	s21, s19
    6506: f024 4400    	bic	r4, r4, #0x80000000
    650a: eef4 aa4b    	vcmp.f32	s21, s22
    650e: f1b4 4fff    	cmp.w	r4, #0x7f800000
    6512: f04f 0400    	mov.w	r4, #0x0
    6516: bfa8         	it	ge
    6518: 2401         	movge	r4, #0x1
    651a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    651e: bf48         	it	mi
    6520: 2501         	movmi	r5, #0x1
    6522: 432c         	orrs	r4, r5
    6524: f040 812c    	bne.w	0x6780 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x458> @ imm = #0x258
    6528: eec8 9aa9    	vdiv.f32	s19, s17, s19
    652c: eeb4 0a49    	vcmp.f32	s0, s18
    6530: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6534: eef0 8ae9    	vabs.f32	s17, s19
    6538: d906         	bls	0x6548 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x220> @ imm = #0xc
    653a: f1be 0f10    	cmp.w	lr, #0x10
    653e: d127         	bne	0x6590 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x268> @ imm = #0x4e
    6540: e12e         	b	0x67a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x478> @ imm = #0x25c
    6542: bf00         	nop
    6544: bf00         	nop
    6546: bf00         	nop
    6548: eef0 aac5    	vabs.f32	s21, s10
    654c: ed9f faa0    	vldr	s30, [pc, #640]         @ 0x67d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x4a8>
    6550: 2400         	movs	r4, #0x0
    6552: eef4 aa6a    	vcmp.f32	s21, s21
    6556: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    655a: fe56 aaaa    	vselvs.f32	s21, s13, s21
    655e: eef4 aa66    	vcmp.f32	s21, s13
    6562: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6566: fe7a aaa6    	vselgt.f32	s21, s21, s13
    656a: ee6a aa8f    	vmul.f32	s21, s21, s30
    656e: feca aacc    	vminnm.f32	s21, s21, s24
    6572: eef4 8a6a    	vcmp.f32	s17, s21
    6576: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    657a: bf98         	it	ls
    657c: 2401         	movls	r4, #0x1
    657e: f1be 0f10    	cmp.w	lr, #0x10
    6582: bf1c         	itt	ne
    6584: eef4 8a6a    	vcmpne.f32	s17, s21
    6588: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    658c: f240 80eb    	bls.w	0x6766 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #0x1d6
    6590: f04f 547e    	mov.w	r4, #0x3f800000
    6594: e00a         	b	0x65ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x284> @ imm = #0x14
    6596: bf00         	nop
    6598: f5 4a 39 3d  	.word	0x3d394af5
    659c: 00 bf 00 bf  	.word	0xbf00bf00
    65a0: f5a4 0400    	sub.w	r4, r4, #0x800000
    65a4: f1b4 5f66    	cmp.w	r4, #0x39800000
    65a8: f000 80ce    	beq.w	0x6748 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x420> @ imm = #0x19c
    65ac: ee0b 4a90    	vmov	s23, r4
    65b0: eef0 aa45    	vmov.f32	s21, s10
    65b4: ee49 aaab    	vmla.f32	s21, s19, s23
    65b8: ee7a ba81    	vadd.f32	s23, s21, s2
    65bc: ee71 fa6a    	vsub.f32	s31, s2, s21
    65c0: eecb ba82    	vdiv.f32	s23, s23, s4
    65c4: eecf fa82    	vdiv.f32	s31, s31, s4
    65c8: eeb4 3a6b    	vcmp.f32	s6, s23
    65cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65d0: fe73 ba2b    	vselgt.f32	s23, s6, s23
    65d4: eef4 ba44    	vcmp.f32	s23, s8
    65d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65dc: fe74 ba2b    	vselgt.f32	s23, s8, s23
    65e0: ee6b ca86    	vmul.f32	s25, s23, s12
    65e4: ee7c da87    	vadd.f32	s27, s25, s14
    65e8: eef5 ca40    	vcmp.f32	s25, #0
    65ec: ee7c eaa1    	vadd.f32	s29, s25, s3
    65f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    65f4: eefd daed    	vcvt.s32.f32	s27, s27
    65f8: eefd eaee    	vcvt.s32.f32	s29, s29
    65fc: eeb4 3a6f    	vcmp.f32	s6, s31
    6600: ee1d 6a90    	vmov	r6, s27
    6604: ee1e 5a90    	vmov	r5, s29
    6608: bfa8         	it	ge
    660a: 4635         	movge	r5, r6
    660c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6610: fe73 ca2f    	vselgt.f32	s25, s6, s31
    6614: eef4 ca44    	vcmp.f32	s25, s8
    6618: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    661c: fe74 ca2c    	vselgt.f32	s25, s8, s25
    6620: ee6c da86    	vmul.f32	s27, s25, s12
    6624: ee7d eaa1    	vadd.f32	s29, s27, s3
    6628: eef5 da40    	vcmp.f32	s27, #0
    662c: ee7d fa87    	vadd.f32	s31, s27, s14
    6630: ee0d 5a90    	vmov	s27, r5
    6634: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6638: eefd eaee    	vcvt.s32.f32	s29, s29
    663c: eef8 daed    	vcvt.f32.s32	s27, s27
    6640: ee1e 6a90    	vmov	r6, s29
    6644: eefd eaef    	vcvt.s32.f32	s29, s31
    6648: ee4d bae2    	vmls.f32	s23, s27, s5
    664c: eef0 da63    	vmov.f32	s27, s7
    6650: eef0 fa65    	vmov.f32	s31, s11
    6654: ee1e 2a90    	vmov	r2, s29
    6658: bfa8         	it	ge
    665a: 4616         	movge	r6, r2
    665c: eb03 52c5    	add.w	r2, r3, r5, lsl #23
    6660: ee0e 6a90    	vmov	s29, r6
    6664: eb03 55c6    	add.w	r5, r3, r6, lsl #23
    6668: ee4b daa4    	vmla.f32	s27, s23, s9
    666c: eef8 eaee    	vcvt.f32.s32	s29, s29
    6670: ee4e cae2    	vmls.f32	s25, s29, s5
    6674: eef0 ea63    	vmov.f32	s29, s7
    6678: ee4b faad    	vmla.f32	s31, s23, s27
    667c: eef0 da65    	vmov.f32	s27, s11
    6680: ee4c eaa4    	vmla.f32	s29, s25, s9
    6684: ee2c faac    	vmul.f32	s30, s25, s25
    6688: ee4c daae    	vmla.f32	s27, s25, s29
    668c: eef0 ea47    	vmov.f32	s29, s14
    6690: ee4b eaaf    	vmla.f32	s29, s23, s31
    6694: eef0 fa47    	vmov.f32	s31, s14
    6698: ee4c faad    	vmla.f32	s31, s25, s27
    669c: ee6b daab    	vmul.f32	s27, s23, s23
    66a0: ee7b baa6    	vadd.f32	s23, s23, s13
    66a4: ee7c caa6    	vadd.f32	s25, s25, s13
    66a8: ee4d baae    	vmla.f32	s23, s27, s29
    66ac: ee0d 5a90    	vmov	s27, r5
    66b0: ee4f ca2f    	vmla.f32	s25, s30, s31
    66b4: ee0f 2a10    	vmov	s30, r2
    66b8: ee6b ba8f    	vmul.f32	s23, s23, s30
    66bc: ee6c caad    	vmul.f32	s25, s25, s27
    66c0: eef0 da60    	vmov.f32	s27, s1
    66c4: ee4a daa7    	vmla.f32	s27, s21, s15
    66c8: ee3b faec    	vsub.f32	s30, s23, s25
    66cc: ee5f da08    	vnmls.f32	s27, s30, s16
    66d0: ee1d 2a90    	vmov	r2, s27
    66d4: f022 4200    	bic	r2, r2, #0x80000000
    66d8: f1b2 4fff    	cmp.w	r2, #0x7f800000
    66dc: f6bf af60    	bge.w	0x65a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x278> @ imm = #-0x140
    66e0: ee8d fa8d    	vdiv.f32	s30, s27, s26
    66e4: eeb0 facf    	vabs.f32	s30, s30
    66e8: fecf ea0e    	vmaxnm.f32	s29, s30, s28
    66ec: eef4 ea40    	vcmp.f32	s29, s0
    66f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66f4: f57f af54    	bpl.w	0x65a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x278> @ imm = #-0x158
    66f8: f1be 0f10    	cmp.w	lr, #0x10
    66fc: edc1 aa00    	vstr	s21, [r1]
    6700: d00e         	beq	0x6720 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x3f8> @ imm = #0x1c
    6702: ee7b 9aac    	vadd.f32	s19, s23, s25
    6706: eeb0 5a6a    	vmov.f32	s10, s21
    670a: eef1 8a6d    	vneg.f32	s17, s27
    670e: eeb0 0a6e    	vmov.f32	s0, s29
    6712: f1b8 0f10    	cmp.w	r8, #0x10
    6716: f10c 0c01    	add.w	r12, r12, #0x1
    671a: 46c6         	mov	lr, r8
    671c: f77f aee3    	ble.w	0x64e6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x1be> @ imm = #-0x23a
    6720: f24f 50e0    	movw	r0, #0xf5e0
    6724: f64f 12c8    	movw	r2, #0xf9c8
    6728: f2c0 0000    	movt	r0, #0x0
    672c: f2c0 0200    	movt	r2, #0x0
    6730: 2128         	movs	r1, #0x28
    6732: f003 fe1d    	bl	0xa370 <core::panicking::panic> @ imm = #0x3c3a
    6736: bf00         	nop
    6738: 00 00 a0 c2  	.word	0xc2a00000
    673c: 00 00 a0 42  	.word	0x42a00000
    6740: 3b aa b8 3f  	.word	0x3fb8aa3b
    6744: 00 bf 00 bf  	.word	0xbf00bf00
    6748: eeb4 0a49    	vcmp.f32	s0, s18
    674c: f10c 0c01    	add.w	r12, r12, #0x1
    6750: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6754: f04f 0400    	mov.w	r4, #0x0
    6758: d805         	bhi	0x6766 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #0xa
    675a: eef4 8a4c    	vcmp.f32	s17, s24
    675e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6762: bf98         	it	ls
    6764: 2401         	movls	r4, #0x1
    6766: ed80 0a00    	vstr	s0, [r0]
    676a: f880 c004    	strb.w	r12, [r0, #0x4]
    676e: 7144         	strb	r4, [r0, #0x5]
    6770: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    6774: f85d 8b04    	ldr	r8, [sp], #4
    6778: bdf0         	pop	{r4, r5, r6, r7, pc}
    677a: bf00         	nop
    677c: bf00         	nop
    677e: bf00         	nop
    6780: ed80 0a00    	vstr	s0, [r0]
    6784: 2100         	movs	r1, #0x0
    6786: f880 c004    	strb.w	r12, [r0, #0x4]
    678a: 7141         	strb	r1, [r0, #0x5]
    678c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    6790: f85d 8b04    	ldr	r8, [sp], #4
    6794: bdf0         	pop	{r4, r5, r6, r7, pc}
    6796: bf00         	nop
    6798: ab aa 2a 3e  	.word	0x3e2aaaab
    679c: 00 bf 00 bf  	.word	0xbf00bf00
    67a0: 2400         	movs	r4, #0x0
    67a2: e7e0         	b	0x6766 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 0, 5>+0x43e> @ imm = #-0x40
    67a4: 09 d5 19 b8  	.word	0xb819d509
    67a8: 18 72 31 3f  	.word	0x3f317218
    67ac: 89 88 08 3c  	.word	0x3c088889
    67b0: ab aa 2a 3d  	.word	0x3d2aaaab
    67b4: 77 cc 2b 31  	.word	0x312bcc77
    67b8: 00 00 80 7f  	.word	0x7f800000
    67bc: 0a d7 23 3c  	.word	0x3c23d70a
    67c0: 00 00 00 00  	.word	0x00000000
    67c4: 09 d5 19 38  	.word	0x3819d509
    67c8: 08 e5 3c 1e  	.word	0x1e3ce508
    67cc: 17 b7 d1 38  	.word	0x38d1b717
    67d0: bd 37 06 36  	.word	0x360637bd
    67d4: ac c5 a7 37  	.word	0x37a7c5ac

000067d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>>:
    67d8: b5f0         	push	{r4, r5, r6, r7, lr}
    67da: af03         	add	r7, sp, #0xc
    67dc: f84d 8d04    	str	r8, [sp, #-4]!
    67e0: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    67e4: b088         	sub	sp, #0x20
    67e6: ed9f 3ae6    	vldr	s6, [pc, #920]          @ 0x6b80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3a8>
    67ea: ee22 4a03    	vmul.f32	s8, s4, s6
    67ee: ed9f 2ae5    	vldr	s4, [pc, #916]          @ 0x6b84 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3ac>
    67f2: ed9f 3ae5    	vldr	s6, [pc, #916]          @ 0x6b88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b0>
    67f6: ed9f 5ae5    	vldr	s10, [pc, #916]         @ 0x6b8c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b4>
    67fa: ee34 2a02    	vadd.f32	s4, s8, s4
    67fe: ee34 3a03    	vadd.f32	s6, s8, s6
    6802: ee82 2a05    	vdiv.f32	s4, s4, s10
    6806: ee83 3a05    	vdiv.f32	s6, s6, s10
    680a: eeb4 2a43    	vcmp.f32	s4, s6
    680e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6812: f200 83a1    	bhi.w	0x6f58 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x780> @ imm = #0x742
    6816: ed91 5a00    	vldr	s10, [r1]
    681a: ed8d 5a01    	vstr	s10, [sp, #4]
    681e: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    6822: ed91 ea01    	vldr	s28, [r1, #4]
    6826: ed9f 6b72    	vldr	d6, [pc, #456]          @ 0x69f0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x218>
    682a: 2600         	movs	r6, #0x0
    682c: 2300         	movs	r3, #0x0
    682e: ee05 1b06    	vmla.f64	d1, d5, d6
    6832: eeb7 6ace    	vcvt.f64.f32	d6, s28
    6836: eeff 4a00    	vmov.f32	s9, #-1.000000e+00
    683a: ed9f 5b6f    	vldr	d5, [pc, #444]          @ 0x69f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x220>
    683e: eeb0 7b41    	vmov.f64	d7, d1
    6842: eddf 2ad3    	vldr	s5, [pc, #844]          @ 0x6b90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3b8>
    6846: ee06 7b05    	vmla.f64	d7, d6, d5
    684a: ed9f 6ad2    	vldr	s12, [pc, #840]         @ 0x6b94 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3bc>
    684e: eef7 6a00    	vmov.f32	s13, #1.000000e+00
    6852: ee24 ca06    	vmul.f32	s24, s8, s12
    6856: ed9f 5ad0    	vldr	s10, [pc, #832]         @ 0x6b98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c0>
    685a: eeb7 4bc7    	vcvt.f32.f64	s8, d7
    685e: eddf 5acf    	vldr	s11, [pc, #828]         @ 0x6b9c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c4>
    6862: eeb0 6a4c    	vmov.f32	s12, s24
    6866: ee04 6a05    	vmla.f32	s12, s8, s10
    686a: eef7 0bc0    	vcvt.f32.f64	s1, d0
    686e: eeb0 4a60    	vmov.f32	s8, s1
    6872: ee0e 4a25    	vmla.f32	s8, s28, s11
    6876: eeb4 2a46    	vcmp.f32	s4, s12
    687a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    687e: fe32 0a06    	vselgt.f32	s0, s4, s12
    6882: eef0 3ac4    	vabs.f32	s7, s8
    6886: eeb4 0a43    	vcmp.f32	s0, s6
    688a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    688e: eeb4 6a42    	vcmp.f32	s12, s4
    6892: fe33 fa00    	vselgt.f32	s30, s6, s0
    6896: ed9f 0ac2    	vldr	s0, [pc, #776]          @ 0x6ba0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    689a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    689e: bfc8         	it	gt
    68a0: 2601         	movgt	r6, #0x1
    68a2: eeb4 6a43    	vcmp.f32	s12, s6
    68a6: eeb0 6a40    	vmov.f32	s12, s0
    68aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68ae: eeb5 4a40    	vcmp.f32	s8, #0
    68b2: eeb0 4a40    	vmov.f32	s8, s0
    68b6: bf48         	it	mi
    68b8: 2301         	movmi	r3, #0x1
    68ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68be: bf48         	it	mi
    68c0: eeb0 4a64    	vmovmi.f32	s8, s9
    68c4: eeb0 8a40    	vmov.f32	s16, s0
    68c8: eef4 3a62    	vcmp.f32	s7, s5
    68cc: fe36 9a84    	vselgt.f32	s18, s13, s8
    68d0: eeb0 4a40    	vmov.f32	s8, s0
    68d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68d8: ea03 0306    	and.w	r3, r3, r6
    68dc: f280 80bb    	bge.w	0x6a56 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x176
    68e0: ed9f 0ae0    	vldr	s0, [pc, #896]          @ 0x6c64 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x48c>
    68e4: eef4 3a40    	vcmp.f32	s7, s0
    68e8: ed9f 6aad    	vldr	s12, [pc, #692]         @ 0x6ba0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    68ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68f0: d912         	bls	0x6918 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x140> @ imm = #0x24
    68f2: ed9f 0add    	vldr	s0, [pc, #884]          @ 0x6c68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x490>
    68f6: eef4 3a40    	vcmp.f32	s7, s0
    68fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68fe: d913         	bls	0x6928 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x150> @ imm = #0x26
    6900: ed9f 0ada    	vldr	s0, [pc, #872]          @ 0x6c6c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x494>
    6904: ee33 4a80    	vadd.f32	s8, s7, s0
    6908: eddf 3ad9    	vldr	s7, [pc, #868]          @ 0x6c70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x498>
    690c: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    6910: e012         	b	0x6938 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x160> @ imm = #0x24
    6912: bf00         	nop
    6914: bf00         	nop
    6916: bf00         	nop
    6918: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    691c: eeb0 4a46    	vmov.f32	s8, s12
    6920: e00e         	b	0x6940 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x168> @ imm = #0x1c
    6922: bf00         	nop
    6924: bf00         	nop
    6926: bf00         	nop
    6928: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x6c74 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x49c>
    692c: ee33 4a80    	vadd.f32	s8, s7, s0
    6930: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    6934: eddf 3ad0    	vldr	s7, [pc, #832]          @ 0x6c78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4a0>
    6938: ee04 0a23    	vmla.f32	s0, s8, s7
    693c: ee29 4a23    	vmul.f32	s8, s18, s7
    6940: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    6944: ee33 0ac0    	vsub.f32	s0, s7, s0
    6948: fec0 3a06    	vmaxnm.f32	s7, s0, s12
    694c: eeb1 0a44    	vneg.f32	s0, s8
    6950: eef5 3a40    	vcmp.f32	s7, #0
    6954: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6958: d942         	bls	0x69e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x208> @ imm = #0x84
    695a: eeb0 4acf    	vabs.f32	s8, s30
    695e: eeb4 4a63    	vcmp.f32	s8, s7
    6962: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6966: d94b         	bls	0x6a00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x228> @ imm = #0x96
    6968: ee83 8a84    	vdiv.f32	s16, s7, s8
    696c: ee28 4a08    	vmul.f32	s8, s16, s16
    6970: ee24 4a04    	vmul.f32	s8, s8, s8
    6974: ee24 4a04    	vmul.f32	s8, s8, s8
    6978: ee24 9a04    	vmul.f32	s18, s8, s8
    697c: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    6980: ee39 6a04    	vadd.f32	s12, s18, s8
    6984: eeb0 aa44    	vmov.f32	s20, s8
    6988: eeb4 6a44    	vcmp.f32	s12, s8
    698c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6990: d009         	beq	0x69a6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x1ce> @ imm = #0x12
    6992: eeb0 aa46    	vmov.f32	s20, s12
    6996: eeb1 aaca    	vsqrt.f32	s20, s20
    699a: eeb1 aaca    	vsqrt.f32	s20, s20
    699e: eeb1 aaca    	vsqrt.f32	s20, s20
    69a2: eeb1 aaca    	vsqrt.f32	s20, s20
    69a6: ee84 4a0a    	vdiv.f32	s8, s8, s20
    69aa: eeb4 fa4f    	vcmp.f32	s30, s30
    69ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    69b2: ee84 aa06    	vdiv.f32	s20, s8, s12
    69b6: f180 82db    	bvs.w	0x6f70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x798> @ imm = #0x5b6
    69ba: ee1f 6a10    	vmov	r6, s30
    69be: f04f 557e    	mov.w	r5, #0x3f800000
    69c2: f365 061e    	bfi	r6, r5, #0, #31
    69c6: ee0b 6a10    	vmov	s22, r6
    69ca: ee2b 6a23    	vmul.f32	s12, s22, s7
    69ce: ee26 6a04    	vmul.f32	s12, s12, s8
    69d2: ee2b 4a0a    	vmul.f32	s8, s22, s20
    69d6: ee68 3a09    	vmul.f32	s7, s16, s18
    69da: ee23 8a8a    	vmul.f32	s16, s7, s20
    69de: e03a         	b	0x6a56 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x74
    69e0: eeb0 8a46    	vmov.f32	s16, s12
    69e4: eeb0 4a46    	vmov.f32	s8, s12
    69e8: e035         	b	0x6a56 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x27e> @ imm = #0x6a
    69ea: bf00         	nop
    69ec: bf00         	nop
    69ee: bf00         	nop
    69f0: a2 0c d2 2e  	.word	0x2ed20ca2
    69f4: ca fe ef 3f  	.word	0x3feffeca
    69f8: 1f 89 9b cf  	.word	0xcf9b891f
    69fc: ab 32 9c bf  	.word	0xbf9c32ab
    6a00: ee8f 4a23    	vdiv.f32	s8, s30, s7
    6a04: eeb7 8a00    	vmov.f32	s16, #1.000000e+00
    6a08: ee24 4a04    	vmul.f32	s8, s8, s8
    6a0c: eeb0 9a48    	vmov.f32	s18, s16
    6a10: ee24 4a04    	vmul.f32	s8, s8, s8
    6a14: ee24 4a04    	vmul.f32	s8, s8, s8
    6a18: ee24 4a04    	vmul.f32	s8, s8, s8
    6a1c: ee34 6a08    	vadd.f32	s12, s8, s16
    6a20: eeb4 6a48    	vcmp.f32	s12, s16
    6a24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a28: d009         	beq	0x6a3e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x266> @ imm = #0x12
    6a2a: eeb0 9a46    	vmov.f32	s18, s12
    6a2e: eeb1 9ac9    	vsqrt.f32	s18, s18
    6a32: eeb1 9ac9    	vsqrt.f32	s18, s18
    6a36: eeb1 9ac9    	vsqrt.f32	s18, s18
    6a3a: eeb1 9ac9    	vsqrt.f32	s18, s18
    6a3e: ee88 9a09    	vdiv.f32	s18, s16, s18
    6a42: ee2f 4a04    	vmul.f32	s8, s30, s8
    6a46: ee89 8a06    	vdiv.f32	s16, s18, s12
    6a4a: ee84 4a23    	vdiv.f32	s8, s8, s7
    6a4e: ee2f 6a09    	vmul.f32	s12, s30, s18
    6a52: ee24 4a08    	vmul.f32	s8, s8, s16
    6a56: 2b00         	cmp	r3, #0x0
    6a58: ee7e 3a46    	vsub.f32	s7, s28, s12
    6a5c: ed9f 6ad6    	vldr	s12, [pc, #856]         @ 0x6db8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e0>
    6a60: ee20 4a04    	vmul.f32	s8, s0, s8
    6a64: ed9f 9ad5    	vldr	s18, [pc, #852]         @ 0x6dbc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e4>
    6a68: fe09 6a06    	vseleq.f32	s12, s18, s12
    6a6c: ee13 3a90    	vmov	r3, s7
    6a70: ed9f aad3    	vldr	s20, [pc, #844]         @ 0x6dc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5e8>
    6a74: ee26 0a08    	vmul.f32	s0, s12, s16
    6a78: ed9f 6ad2    	vldr	s12, [pc, #840]         @ 0x6dc4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5ec>
    6a7c: ee24 6a06    	vmul.f32	s12, s8, s12
    6a80: f023 4300    	bic	r3, r3, #0x80000000
    6a84: f1b3 4fff    	cmp.w	r3, #0x7f800000
    6a88: db02         	blt	0x6a90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2b8> @ imm = #0x4
    6a8a: ed9f 9acf    	vldr	s18, [pc, #828]         @ 0x6dc8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f0>
    6a8e: e009         	b	0x6aa4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2cc> @ imm = #0x12
    6a90: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    6a94: ed9f 8a42    	vldr	s16, [pc, #264]         @ 0x6ba0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    6a98: ee83 4a84    	vdiv.f32	s8, s7, s8
    6a9c: eeb0 4ac4    	vabs.f32	s8, s8
    6aa0: fe84 9a08    	vmaxnm.f32	s18, s8, s16
    6aa4: ee00 6a0a    	vmla.f32	s12, s0, s20
    6aa8: eeb7 da08    	vmov.f32	s26, #1.500000e+00
    6aac: eeb1 aa63    	vneg.f32	s20, s7
    6ab0: 2500         	movs	r5, #0x0
    6ab2: f04f 0800    	mov.w	r8, #0x0
    6ab6: ed9f bac5    	vldr	s22, [pc, #788]         @ 0x6dcc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f4>
    6aba: eddf cac5    	vldr	s25, [pc, #788]         @ 0x6dd0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5f8>
    6abe: f04f 5c7e    	mov.w	r12, #0x3f800000
    6ac2: ed9f 4a37    	vldr	s8, [pc, #220]          @ 0x6ba0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3c8>
    6ac6: f20f 4eec    	adr.w	lr, #1260
    6aca: eddf ea66    	vldr	s29, [pc, #408]         @ 0x6c64 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x48c>
    6ace: 462c         	mov	r4, r5
    6ad0: eddf fa65    	vldr	s31, [pc, #404]         @ 0x6c68 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x490>
    6ad4: ee36 0a26    	vadd.f32	s0, s12, s13
    6ad8: 2d10         	cmp	r5, #0x10
    6ada: bf18         	it	ne
    6adc: 3401         	addne	r4, #0x1
    6ade: 2300         	movs	r3, #0x0
    6ae0: ee10 6a10    	vmov	r6, s0
    6ae4: eeb0 6ac0    	vabs.f32	s12, s0
    6ae8: f026 4600    	bic	r6, r6, #0x80000000
    6aec: eeb4 6a4b    	vcmp.f32	s12, s22
    6af0: f1b6 4fff    	cmp.w	r6, #0x7f800000
    6af4: f04f 0600    	mov.w	r6, #0x0
    6af8: bfa8         	it	ge
    6afa: 2601         	movge	r6, #0x1
    6afc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b00: bf48         	it	mi
    6b02: 2301         	movmi	r3, #0x1
    6b04: 4333         	orrs	r3, r6
    6b06: f040 8217    	bne.w	0x6f38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x760> @ imm = #0x42e
    6b0a: ee8a ba00    	vdiv.f32	s22, s20, s0
    6b0e: eeb4 9a6c    	vcmp.f32	s18, s25
    6b12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b16: eeb0 7acb    	vabs.f32	s14, s22
    6b1a: d905         	bls	0x6b28 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x350> @ imm = #0xa
    6b1c: 2d10         	cmp	r5, #0x10
    6b1e: d128         	bne	0x6b72 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x39a> @ imm = #0x50
    6b20: e216         	b	0x6f50 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x778> @ imm = #0x42c
    6b22: bf00         	nop
    6b24: bf00         	nop
    6b26: bf00         	nop
    6b28: eeb0 0ace    	vabs.f32	s0, s28
    6b2c: ed9f 6aee    	vldr	s12, [pc, #952]         @ 0x6ee8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x710>
    6b30: 2600         	movs	r6, #0x0
    6b32: eeb4 0a40    	vcmp.f32	s0, s0
    6b36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b3a: fe16 0a80    	vselvs.f32	s0, s13, s0
    6b3e: eeb4 0a66    	vcmp.f32	s0, s13
    6b42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b46: fe30 0a26    	vselgt.f32	s0, s0, s13
    6b4a: ee20 0a06    	vmul.f32	s0, s0, s12
    6b4e: ed9f 6ae7    	vldr	s12, [pc, #924]         @ 0x6eec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x714>
    6b52: fe80 0a46    	vminnm.f32	s0, s0, s12
    6b56: eeb4 7a40    	vcmp.f32	s14, s0
    6b5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b5e: bf98         	it	ls
    6b60: 2601         	movls	r6, #0x1
    6b62: 2d10         	cmp	r5, #0x10
    6b64: bf1c         	itt	ne
    6b66: eeb4 7a40    	vcmpne.f32	s14, s0
    6b6a: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    6b6e: f240 81d5    	bls.w	0x6f1c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x744> @ imm = #0x3aa
    6b72: f04f 567e    	mov.w	r6, #0x3f800000
    6b76: ed8d 7a02    	vstr	s14, [sp, #8]
    6b7a: ed8d fa03    	vstr	s30, [sp, #12]
    6b7e: e01b         	b	0x6bb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3e0> @ imm = #0x36
    6b80: 00 80 bb 47  	.word	0x47bb8000
    6b84: 00 24 74 cb  	.word	0xcb742400
    6b88: 00 24 74 4b  	.word	0x4b742400
    6b8c: 00 a0 0c 48  	.word	0x480ca000
    6b90: 0a d7 23 3d  	.word	0x3d23d70a
    6b94: 50 d0 e8 36  	.word	0x36e8d050
    6b98: 79 61 2e 43  	.word	0x432e6179
    6b9c: ab aa a0 b8  	.word	0xb8a0aaab
    6ba0: 00 00 00 00  	.word	0x00000000
    6ba4: 00 bf 00 bf  	.word	0xbf00bf00
    6ba8: eeb0 1b48    	vmov.f64	d1, d8
    6bac: f5a6 0600    	sub.w	r6, r6, #0x800000
    6bb0: f1b6 5f66    	cmp.w	r6, #0x39800000
    6bb4: f000 819c    	beq.w	0x6ef0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x718> @ imm = #0x338
    6bb8: ee00 6a10    	vmov	s0, r6
    6bbc: eef0 3a4e    	vmov.f32	s7, s28
    6bc0: ed9f 7bef    	vldr	d7, [pc, #956]          @ 0x6f80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7a8>
    6bc4: eeb0 8b41    	vmov.f64	d8, d1
    6bc8: eeb0 6a4c    	vmov.f32	s12, s24
    6bcc: ee4b 3a00    	vmla.f32	s7, s22, s0
    6bd0: eef0 9a44    	vmov.f32	s19, s8
    6bd4: eef0 ca44    	vmov.f32	s25, s8
    6bd8: eeb0 fa44    	vmov.f32	s30, s8
    6bdc: eeb7 aae3    	vcvt.f64.f32	d10, s7
    6be0: ee0a 1b07    	vmla.f64	d1, d10, d7
    6be4: eef0 aa44    	vmov.f32	s21, s8
    6be8: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    6bec: eeb0 1a60    	vmov.f32	s2, s1
    6bf0: ee03 1aa5    	vmla.f32	s2, s7, s11
    6bf4: ee00 6a05    	vmla.f32	s12, s0, s10
    6bf8: eef0 dac1    	vabs.f32	s27, s2
    6bfc: eeb4 2a46    	vcmp.f32	s4, s12
    6c00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c04: fe32 0a06    	vselgt.f32	s0, s4, s12
    6c08: eeb4 0a43    	vcmp.f32	s0, s6
    6c0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c10: eeb5 1a40    	vcmp.f32	s2, #0
    6c14: eeb0 1a44    	vmov.f32	s2, s8
    6c18: fe33 0a00    	vselgt.f32	s0, s6, s0
    6c1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c20: bf48         	it	mi
    6c22: eeb0 1a64    	vmovmi.f32	s2, s9
    6c26: eef4 da62    	vcmp.f32	s27, s5
    6c2a: fe76 ba81    	vselgt.f32	s23, s13, s2
    6c2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c32: f280 80fd    	bge.w	0x6e30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x1fa
    6c36: eeb0 fa44    	vmov.f32	s30, s8
    6c3a: eeb0 aa4d    	vmov.f32	s20, s26
    6c3e: eef4 da6e    	vcmp.f32	s27, s29
    6c42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c46: d927         	bls	0x6c98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4c0> @ imm = #0x4e
    6c48: eef4 da6f    	vcmp.f32	s27, s31
    6c4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c50: d916         	bls	0x6c80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4a8> @ imm = #0x2c
    6c52: ed9f 1acf    	vldr	s2, [pc, #828]          @ 0x6f90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b8>
    6c56: eeb0 aa08    	vmov.f32	s20, #3.000000e+00
    6c5a: ee3d 1a81    	vadd.f32	s2, s27, s2
    6c5e: ed9f 7acd    	vldr	s14, [pc, #820]         @ 0x6f94 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7bc>
    6c62: e015         	b	0x6c90 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x4b8> @ imm = #0x2a
    6c64: 7c f2 b0 3a  	.word	0x3ab0f27c
    6c68: a6 9b c4 3b  	.word	0x3bc49ba6
    6c6c: a6 9b c4 bb  	.word	0xbbc49ba6
    6c70: 79 78 b0 43  	.word	0x43b07879
    6c74: 7c f2 b0 ba  	.word	0xbab0f27c
    6c78: 53 4a a1 43  	.word	0x43a14a53
    6c7c: 00 bf 00 bf  	.word	0xbf00bf00
    6c80: ed9f 1ac1    	vldr	s2, [pc, #772]          @ 0x6f88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b0>
    6c84: eeb0 aa4d    	vmov.f32	s20, s26
    6c88: ee3d 1a81    	vadd.f32	s2, s27, s2
    6c8c: ed9f 7abf    	vldr	s14, [pc, #764]         @ 0x6f8c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7b4>
    6c90: ee01 aa07    	vmla.f32	s20, s2, s14
    6c94: ee2b fa87    	vmul.f32	s30, s23, s14
    6c98: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    6c9c: eef1 9a4f    	vneg.f32	s19, s30
    6ca0: ee31 1a4a    	vsub.f32	s2, s2, s20
    6ca4: fec1 da04    	vmaxnm.f32	s27, s2, s8
    6ca8: eef5 da40    	vcmp.f32	s27, #0
    6cac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6cb0: d97a         	bls	0x6da8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x5d0> @ imm = #0xf4
    6cb2: eeb0 aac0    	vabs.f32	s20, s0
    6cb6: eeb4 aa6d    	vcmp.f32	s20, s27
    6cba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6cbe: f240 808b    	bls.w	0x6dd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x600> @ imm = #0x116
    6cc2: eeb0 1a65    	vmov.f32	s2, s11
    6cc6: eecd aa8a    	vdiv.f32	s21, s27, s20
    6cca: eeb0 7a6f    	vmov.f32	s14, s31
    6cce: eef0 fa62    	vmov.f32	s31, s5
    6cd2: eef0 2a64    	vmov.f32	s5, s9
    6cd6: eef0 5a4e    	vmov.f32	s11, s28
    6cda: eef0 4a41    	vmov.f32	s9, s2
    6cde: ee2a 1aaa    	vmul.f32	s2, s21, s21
    6ce2: eef0 1a66    	vmov.f32	s3, s13
    6ce6: eeb0 ea49    	vmov.f32	s28, s18
    6cea: eeb0 9a60    	vmov.f32	s18, s1
    6cee: eef0 0a4c    	vmov.f32	s1, s24
    6cf2: ee21 1a01    	vmul.f32	s2, s2, s2
    6cf6: eeb0 ca4d    	vmov.f32	s24, s26
    6cfa: eeb0 da45    	vmov.f32	s26, s10
    6cfe: eeb0 5a6e    	vmov.f32	s10, s29
    6d02: eeb0 fa66    	vmov.f32	s30, s13
    6d06: ee21 1a01    	vmul.f32	s2, s2, s2
    6d0a: ee61 ba01    	vmul.f32	s23, s2, s2
    6d0e: ee3b aaa6    	vadd.f32	s20, s23, s13
    6d12: eeb4 aa66    	vcmp.f32	s20, s13
    6d16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d1a: d009         	beq	0x6d30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x558> @ imm = #0x12
    6d1c: eeb0 fa4a    	vmov.f32	s30, s20
    6d20: eeb1 facf    	vsqrt.f32	s30, s30
    6d24: eeb1 facf    	vsqrt.f32	s30, s30
    6d28: eeb1 facf    	vsqrt.f32	s30, s30
    6d2c: eeb1 facf    	vsqrt.f32	s30, s30
    6d30: eec1 ea8f    	vdiv.f32	s29, s3, s30
    6d34: eddf ca98    	vldr	s25, [pc, #608]         @ 0x6f98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c0>
    6d38: eef0 6a61    	vmov.f32	s13, s3
    6d3c: eeb4 0a40    	vcmp.f32	s0, s0
    6d40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6d44: ee8e aa8a    	vdiv.f32	s20, s29, s20
    6d48: eeb0 fa6c    	vmov.f32	s30, s25
    6d4c: bf7f         	itttt	vc
    6d4e: ee10 3a10    	vmovvc	r3, s0
    6d52: f36c 031e    	bfivc	r3, r12, #0, #31
    6d56: ee01 3a10    	vmovvc	s2, r3
    6d5a: ee61 1a2d    	vmulvc.f32	s3, s2, s27
    6d5e: bf7c         	itt	vc
    6d60: ee61 caae    	vmulvc.f32	s25, s3, s29
    6d64: ee21 fa0a    	vmulvc.f32	s30, s2, s20
    6d68: ee2a 1aab    	vmul.f32	s2, s21, s23
    6d6c: eef0 ea45    	vmov.f32	s29, s10
    6d70: eeb0 5a4d    	vmov.f32	s10, s26
    6d74: eeb0 da4c    	vmov.f32	s26, s24
    6d78: eeb0 ca60    	vmov.f32	s24, s1
    6d7c: eef0 0a49    	vmov.f32	s1, s18
    6d80: ee61 aa0a    	vmul.f32	s21, s2, s20
    6d84: eeb0 1a64    	vmov.f32	s2, s9
    6d88: eef0 4a62    	vmov.f32	s9, s5
    6d8c: eef0 2a6f    	vmov.f32	s5, s31
    6d90: eeb0 9a4e    	vmov.f32	s18, s28
    6d94: eeb0 ea65    	vmov.f32	s28, s11
    6d98: eef0 5a41    	vmov.f32	s11, s2
    6d9c: eef0 fa47    	vmov.f32	s31, s14
    6da0: e046         	b	0x6e30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x8c
    6da2: bf00         	nop
    6da4: bf00         	nop
    6da6: bf00         	nop
    6da8: eef0 ca44    	vmov.f32	s25, s8
    6dac: eef0 aa44    	vmov.f32	s21, s8
    6db0: eeb0 fa44    	vmov.f32	s30, s8
    6db4: e03c         	b	0x6e30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x658> @ imm = #0x78
    6db6: bf00         	nop
    6db8: 79 61 2e c3  	.word	0xc32e6179
    6dbc: 00 00 00 80  	.word	0x80000000
    6dc0: 5e 95 e1 bc  	.word	0xbce1955e
    6dc4: ab aa a0 38  	.word	0x38a0aaab
    6dc8: 00 00 80 7f  	.word	0x7f800000
    6dcc: 08 e5 3c 1e  	.word	0x1e3ce508
    6dd0: 17 b7 d1 38  	.word	0x38d1b717
    6dd4: 00 bf 00 bf  	.word	0xbf00bf00
    6dd8: ee80 1a2d    	vdiv.f32	s2, s0, s27
    6ddc: eef0 aa66    	vmov.f32	s21, s13
    6de0: ee21 1a01    	vmul.f32	s2, s2, s2
    6de4: ee21 1a01    	vmul.f32	s2, s2, s2
    6de8: ee21 1a01    	vmul.f32	s2, s2, s2
    6dec: ee21 aa01    	vmul.f32	s20, s2, s2
    6df0: ee3a fa26    	vadd.f32	s30, s20, s13
    6df4: eeb4 fa66    	vcmp.f32	s30, s13
    6df8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6dfc: d009         	beq	0x6e12 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x63a> @ imm = #0x12
    6dfe: eef0 aa4f    	vmov.f32	s21, s30
    6e02: eef1 aaea    	vsqrt.f32	s21, s21
    6e06: eef1 aaea    	vsqrt.f32	s21, s21
    6e0a: eef1 aaea    	vsqrt.f32	s21, s21
    6e0e: eef1 aaea    	vsqrt.f32	s21, s21
    6e12: ee86 1aaa    	vdiv.f32	s2, s13, s21
    6e16: ee60 1a0a    	vmul.f32	s3, s0, s20
    6e1a: eec1 aa0f    	vdiv.f32	s21, s2, s30
    6e1e: eec1 1aad    	vdiv.f32	s3, s3, s27
    6e22: ee60 ca01    	vmul.f32	s25, s0, s2
    6e26: ee21 faaa    	vmul.f32	s30, s3, s21
    6e2a: bf00         	nop
    6e2c: bf00         	nop
    6e2e: bf00         	nop
    6e30: ee73 daec    	vsub.f32	s27, s7, s25
    6e34: ee1d 3a90    	vmov	r3, s27
    6e38: f023 4300    	bic	r3, r3, #0x80000000
    6e3c: f1b3 4fff    	cmp.w	r3, #0x7f800000
    6e40: f6bf aeb2    	bge.w	0x6ba8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3d0> @ imm = #-0x29c
    6e44: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    6e48: ee8d 1a81    	vdiv.f32	s2, s27, s2
    6e4c: eeb0 1ac1    	vabs.f32	s2, s2
    6e50: fec1 ba04    	vmaxnm.f32	s23, s2, s8
    6e54: eef4 ba49    	vcmp.f32	s23, s18
    6e58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e5c: f57f aea4    	bpl.w	0x6ba8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x3d0> @ imm = #-0x2b8
    6e60: 4673         	mov	r3, lr
    6e62: eeb4 6a43    	vcmp.f32	s12, s6
    6e66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e6a: bf48         	it	mi
    6e6c: 3304         	addmi	r3, #0x4
    6e6e: eeb4 6a42    	vcmp.f32	s12, s4
    6e72: ed9f 6a4a    	vldr	s12, [pc, #296]         @ 0x6f9c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c4>
    6e76: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e7a: ed93 1a00    	vldr	s2, [r3]
    6e7e: edc1 3a01    	vstr	s7, [r1, #4]
    6e82: fe31 6a06    	vselgt.f32	s12, s2, s12
    6e86: 2d10         	cmp	r5, #0x10
    6e88: ed9f 9a46    	vldr	s18, [pc, #280]         @ 0x6fa4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7cc>
    6e8c: ed9d 1a01    	vldr	s2, [sp, #4]
    6e90: eddf ca46    	vldr	s25, [pc, #280]         @ 0x6fac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d4>
    6e94: ed81 1a00    	vstr	s2, [r1]
    6e98: ed9f ba43    	vldr	s22, [pc, #268]         @ 0x6fa8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d0>
    6e9c: d019         	beq	0x6ed2 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x6fa> @ imm = #0x32
    6e9e: ee29 1a8f    	vmul.f32	s2, s19, s30
    6ea2: eeb0 ea63    	vmov.f32	s28, s7
    6ea6: ee66 1a2a    	vmul.f32	s3, s12, s21
    6eaa: ed9f 6a3d    	vldr	s12, [pc, #244]         @ 0x6fa0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c8>
    6eae: eeb1 aa6d    	vneg.f32	s20, s27
    6eb2: eeb0 fa40    	vmov.f32	s30, s0
    6eb6: ee21 6a06    	vmul.f32	s12, s2, s12
    6eba: 2c10         	cmp	r4, #0x10
    6ebc: ee01 6a89    	vmla.f32	s12, s3, s18
    6ec0: eeb0 9a6b    	vmov.f32	s18, s23
    6ec4: eeb0 1b48    	vmov.f64	d1, d8
    6ec8: f108 0801    	add.w	r8, r8, #0x1
    6ecc: 4625         	mov	r5, r4
    6ece: f77f ae01    	ble.w	0x6ad4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x2fc> @ imm = #-0x3fe
    6ed2: f24f 50e0    	movw	r0, #0xf5e0
    6ed6: f64f 12c8    	movw	r2, #0xf9c8
    6eda: f2c0 0000    	movt	r0, #0x0
    6ede: f2c0 0200    	movt	r2, #0x0
    6ee2: 2128         	movs	r1, #0x28
    6ee4: f003 fa44    	bl	0xa370 <core::panicking::panic> @ imm = #0x3488
    6ee8: bd 37 06 36  	.word	0x360637bd
    6eec: ac c5 a7 37  	.word	0x37a7c5ac
    6ef0: ed9f 0a2e    	vldr	s0, [pc, #184]          @ 0x6fac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d4>
    6ef4: f108 0801    	add.w	r8, r8, #0x1
    6ef8: eeb4 9a40    	vcmp.f32	s18, s0
    6efc: 2600         	movs	r6, #0x0
    6efe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f02: d809         	bhi	0x6f18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x740> @ imm = #0x12
    6f04: ed9f 0a2a    	vldr	s0, [pc, #168]          @ 0x6fb0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7d8>
    6f08: ed9d 1a02    	vldr	s2, [sp, #8]
    6f0c: eeb4 1a40    	vcmp.f32	s2, s0
    6f10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f14: bf98         	it	ls
    6f16: 2601         	movls	r6, #0x1
    6f18: ed9d fa03    	vldr	s30, [sp, #12]
    6f1c: ed82 fa00    	vstr	s30, [r2]
    6f20: ed80 9a00    	vstr	s18, [r0]
    6f24: f880 8004    	strb.w	r8, [r0, #0x4]
    6f28: 7146         	strb	r6, [r0, #0x5]
    6f2a: b008         	add	sp, #0x20
    6f2c: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    6f30: f85d 8b04    	ldr	r8, [sp], #4
    6f34: bdf0         	pop	{r4, r5, r6, r7, pc}
    6f36: bf00         	nop
    6f38: ed80 9a00    	vstr	s18, [r0]
    6f3c: 2100         	movs	r1, #0x0
    6f3e: f880 8004    	strb.w	r8, [r0, #0x4]
    6f42: 7141         	strb	r1, [r0, #0x5]
    6f44: b008         	add	sp, #0x20
    6f46: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    6f4a: f85d 8b04    	ldr	r8, [sp], #4
    6f4e: bdf0         	pop	{r4, r5, r6, r7, pc}
    6f50: 2600         	movs	r6, #0x0
    6f52: e7e3         	b	0x6f1c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x744> @ imm = #-0x3a
    6f54: bf00         	nop
    6f56: bf00         	nop
    6f58: f24c 304e    	movw	r0, #0xc34e
    6f5c: f64f 12d8    	movw	r2, #0xf9d8
    6f60: f2c0 0000    	movt	r0, #0x0
    6f64: f2c0 0200    	movt	r2, #0x0
    6f68: a904         	add	r1, sp, #0x10
    6f6a: f003 f9fd    	bl	0xa368 <core::panicking::panic_fmt> @ imm = #0x33fa
    6f6e: bf00         	nop
    6f70: ed9f 4a09    	vldr	s8, [pc, #36]           @ 0x6f98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x7c0>
    6f74: eeb0 6a44    	vmov.f32	s12, s8
    6f78: e52d         	b	0x69d6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 1, 5>+0x1fe> @ imm = #-0x5a6
    6f7a: bf00         	nop
    6f7c: bf00         	nop
    6f7e: bf00         	nop
    6f80: 1f 89 9b cf  	.word	0xcf9b891f
    6f84: ab 32 9c bf  	.word	0xbf9c32ab
    6f88: 7c f2 b0 ba  	.word	0xbab0f27c
    6f8c: 53 4a a1 43  	.word	0x43a14a53
    6f90: a6 9b c4 bb  	.word	0xbbc49ba6
    6f94: 79 78 b0 43  	.word	0x43b07879
    6f98: 00 00 c0 7f  	.word	0x7fc00000
    6f9c: 00 00 00 80  	.word	0x80000000
    6fa0: ab aa a0 38  	.word	0x38a0aaab
    6fa4: 5e 95 e1 bc  	.word	0xbce1955e
    6fa8: 08 e5 3c 1e  	.word	0x1e3ce508
    6fac: 17 b7 d1 38  	.word	0x38d1b717
    6fb0: ac c5 a7 37  	.word	0x37a7c5ac
    6fb4: 00 00 00 80  	.word	0x80000000
    6fb8: 79 61 2e c3  	.word	0xc32e6179
    6fbc: d4 d4 d4 d4  	.word	0xd4d4d4d4

00006fc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>>:
    6fc0: b5f0         	push	{r4, r5, r6, r7, lr}
    6fc2: af03         	add	r7, sp, #0xc
    6fc4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    6fc8: b081         	sub	sp, #0x4
    6fca: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    6fce: b09a         	sub	sp, #0x68
    6fd0: ed9f 1ab5    	vldr	s2, [pc, #724]          @ 0x72a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2e8>
    6fd4: 2600         	movs	r6, #0x0
    6fd6: ee20 2a01    	vmul.f32	s4, s0, s2
    6fda: ed9f 0ab4    	vldr	s0, [pc, #720]          @ 0x72ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2ec>
    6fde: ed9f 1ab4    	vldr	s2, [pc, #720]          @ 0x72b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f0>
    6fe2: 9610         	str	r6, [sp, #0x40]
    6fe4: ed9f 3ab3    	vldr	s6, [pc, #716]          @ 0x72b4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f4>
    6fe8: 960f         	str	r6, [sp, #0x3c]
    6fea: ee32 0a00    	vadd.f32	s0, s4, s0
    6fee: 960c         	str	r6, [sp, #0x30]
    6ff0: ee32 1a01    	vadd.f32	s2, s4, s2
    6ff4: e9cd 660d    	strd	r6, r6, [sp, #52]
    6ff8: ee80 0a03    	vdiv.f32	s0, s0, s6
    6ffc: ee81 1a03    	vdiv.f32	s2, s2, s6
    7000: eeb4 0a41    	vcmp.f32	s0, s2
    7004: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7008: f200 86da    	bhi.w	0x7dc0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe00> @ imm = #0xdb4
    700c: ed91 3a01    	vldr	s6, [r1, #4]
    7010: ed91 7a02    	vldr	s14, [r1, #8]
    7014: eeb7 4ac3    	vcvt.f64.f32	d4, s6
    7018: ed8d 3a01    	vstr	s6, [sp, #4]
    701c: ed9f 5b7c    	vldr	d5, [pc, #496]          @ 0x7210 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x250>
    7020: edd1 ba03    	vldr	s23, [r1, #12]
    7024: eddf faa4    	vldr	s31, [pc, #656]         @ 0x72b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2f8>
    7028: ed92 6b12    	vldr	d6, [r2, #72]
    702c: e9cd 3002    	strd	r3, r0, [sp, #8]
    7030: ee04 6b05    	vmla.f64	d6, d4, d5
    7034: 2300         	movs	r3, #0x0
    7036: eeb7 4ac7    	vcvt.f64.f32	d4, s14
    703a: eddf 1aa0    	vldr	s3, [pc, #640]          @ 0x72bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    703e: ed9f 3b76    	vldr	d3, [pc, #472]          @ 0x7218 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x258>
    7042: eeb0 5b46    	vmov.f64	d5, d6
    7046: ed8d 7a0b    	vstr	s14, [sp, #44]
    704a: eeb7 aa00    	vmov.f32	s20, #1.000000e+00
    704e: ee04 5b03    	vmla.f64	d5, d4, d3
    7052: eeb7 4aeb    	vcvt.f64.f32	d4, s23
    7056: ed9f 3b72    	vldr	d3, [pc, #456]          @ 0x7220 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x260>
    705a: ee04 5b03    	vmla.f64	d5, d4, d3
    705e: ed9f 4a98    	vldr	s8, [pc, #608]          @ 0x72c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x300>
    7062: eef0 4a61    	vmov.f32	s9, s3
    7066: ee22 4a04    	vmul.f32	s8, s4, s8
    706a: ed9f 3a96    	vldr	s6, [pc, #600]          @ 0x72c4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x304>
    706e: eeb7 2bc5    	vcvt.f32.f64	s4, d5
    7072: ed8d 4a07    	vstr	s8, [sp, #28]
    7076: ed8d 6b08    	vstr	d6, [sp, #32]
    707a: ee02 4a03    	vmla.f32	s8, s4, s6
    707e: ed9f 3af1    	vldr	s6, [pc, #964]          @ 0x7444 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x484>
    7082: ed92 2b04    	vldr	d2, [r2, #16]
    7086: eeb7 6bc2    	vcvt.f32.f64	s12, d2
    708a: ed8d 6a06    	vstr	s12, [sp, #24]
    708e: ee07 6a03    	vmla.f32	s12, s14, s6
    7092: eebf 3a00    	vmov.f32	s6, #-1.000000e+00
    7096: eeb4 0a44    	vcmp.f32	s0, s8
    709a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    709e: ee0b 6aaf    	vmla.f32	s12, s23, s31
    70a2: fe30 2a04    	vselgt.f32	s4, s0, s8
    70a6: eeb4 2a41    	vcmp.f32	s4, s2
    70aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70ae: eeb4 4a40    	vcmp.f32	s8, s0
    70b2: fe71 9a02    	vselgt.f32	s19, s2, s4
    70b6: eeb0 2a61    	vmov.f32	s4, s3
    70ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70be: bfc8         	it	gt
    70c0: 2301         	movgt	r3, #0x1
    70c2: eeb4 4a41    	vcmp.f32	s8, s2
    70c6: eeb0 4a61    	vmov.f32	s8, s3
    70ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70ce: eeb5 6a40    	vcmp.f32	s12, #0
    70d2: eeb0 5ac6    	vabs.f32	s10, s12
    70d6: bf48         	it	mi
    70d8: 2601         	movmi	r6, #0x1
    70da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70de: bf48         	it	mi
    70e0: eeb0 2a43    	vmovmi.f32	s4, s6
    70e4: ea06 0603    	and.w	r6, r6, r3
    70e8: fe3a 6a02    	vselgt.f32	s12, s20, s4
    70ec: ed9f 2ad6    	vldr	s4, [pc, #856]          @ 0x7448 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x488>
    70f0: eeb4 5a42    	vcmp.f32	s10, s4
    70f4: eeb0 2a61    	vmov.f32	s4, s3
    70f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70fc: f280 80bf    	bge.w	0x727e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x17e
    7100: ed9f 2ad2    	vldr	s4, [pc, #840]          @ 0x744c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x48c>
    7104: eeb4 5a42    	vcmp.f32	s10, s4
    7108: ed9f 2a6c    	vldr	s4, [pc, #432]          @ 0x72bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    710c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7110: d912         	bls	0x7138 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x178> @ imm = #0x24
    7112: ed9f 4acf    	vldr	s8, [pc, #828]          @ 0x7450 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x490>
    7116: eeb4 5a44    	vcmp.f32	s10, s8
    711a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    711e: d913         	bls	0x7148 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x188> @ imm = #0x26
    7120: ed9f 4acc    	vldr	s8, [pc, #816]          @ 0x7454 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x494>
    7124: ee35 5a04    	vadd.f32	s10, s10, s8
    7128: ed9f 7acb    	vldr	s14, [pc, #812]         @ 0x7458 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x498>
    712c: eeb0 4a08    	vmov.f32	s8, #3.000000e+00
    7130: e012         	b	0x7158 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x198> @ imm = #0x24
    7132: bf00         	nop
    7134: bf00         	nop
    7136: bf00         	nop
    7138: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    713c: eeb0 6a42    	vmov.f32	s12, s4
    7140: e00e         	b	0x7160 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x1a0> @ imm = #0x1c
    7142: bf00         	nop
    7144: bf00         	nop
    7146: bf00         	nop
    7148: ed9f 4ac4    	vldr	s8, [pc, #784]          @ 0x745c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x49c>
    714c: ee35 5a04    	vadd.f32	s10, s10, s8
    7150: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    7154: ed9f 7ac2    	vldr	s14, [pc, #776]         @ 0x7460 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a0>
    7158: ee05 4a07    	vmla.f32	s8, s10, s14
    715c: ee26 6a07    	vmul.f32	s12, s12, s14
    7160: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    7164: eef1 1a46    	vneg.f32	s3, s12
    7168: ee35 4a44    	vsub.f32	s8, s10, s8
    716c: fe84 5a02    	vmaxnm.f32	s10, s8, s4
    7170: eeb5 5a40    	vcmp.f32	s10, #0
    7174: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7178: d942         	bls	0x7200 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x240> @ imm = #0x84
    717a: eeb0 2ae9    	vabs.f32	s4, s19
    717e: eeb4 2a45    	vcmp.f32	s4, s10
    7182: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7186: d94f         	bls	0x7228 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x268> @ imm = #0x9e
    7188: ee85 4a02    	vdiv.f32	s8, s10, s4
    718c: ee24 2a04    	vmul.f32	s4, s8, s8
    7190: ee22 2a02    	vmul.f32	s4, s4, s4
    7194: ee22 2a02    	vmul.f32	s4, s4, s4
    7198: ee22 6a02    	vmul.f32	s12, s4, s4
    719c: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    71a0: ee36 7a02    	vadd.f32	s14, s12, s4
    71a4: eef0 0a42    	vmov.f32	s1, s4
    71a8: eeb4 7a42    	vcmp.f32	s14, s4
    71ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71b0: d009         	beq	0x71c6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x206> @ imm = #0x12
    71b2: eef0 0a47    	vmov.f32	s1, s14
    71b6: eef1 0ae0    	vsqrt.f32	s1, s1
    71ba: eef1 0ae0    	vsqrt.f32	s1, s1
    71be: eef1 0ae0    	vsqrt.f32	s1, s1
    71c2: eef1 0ae0    	vsqrt.f32	s1, s1
    71c6: ee82 2a20    	vdiv.f32	s4, s4, s1
    71ca: eef4 9a69    	vcmp.f32	s19, s19
    71ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71d2: ee82 7a07    	vdiv.f32	s14, s4, s14
    71d6: f180 85ff    	bvs.w	0x7dd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe18> @ imm = #0xbfe
    71da: ee19 3a90    	vmov	r3, s19
    71de: f04f 557e    	mov.w	r5, #0x3f800000
    71e2: f365 031e    	bfi	r3, r5, #0, #31
    71e6: ee00 3a90    	vmov	s1, r3
    71ea: ee20 5a85    	vmul.f32	s10, s1, s10
    71ee: ee60 4a87    	vmul.f32	s9, s1, s14
    71f2: ee25 2a02    	vmul.f32	s4, s10, s4
    71f6: ee24 4a06    	vmul.f32	s8, s8, s12
    71fa: ee24 4a07    	vmul.f32	s8, s8, s14
    71fe: e03e         	b	0x727e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x7c
    7200: eeb0 4a42    	vmov.f32	s8, s4
    7204: eef0 4a42    	vmov.f32	s9, s4
    7208: e039         	b	0x727e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2be> @ imm = #0x72
    720a: bf00         	nop
    720c: bf00         	nop
    720e: bf00         	nop
    7210: a5 94 a7 50  	.word	0x50a794a5
    7214: 09 2c d5 3f  	.word	0x3fd52c09
    7218: 9c 9e 91 65  	.word	0x65919e9c
    721c: 97 57 e8 bf  	.word	0xbfe85797
    7220: 76 43 71 a5  	.word	0xa5714376
    7224: f8 73 e2 3f  	.word	0x3fe273f8
    7228: ee89 2a85    	vdiv.f32	s4, s19, s10
    722c: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    7230: ee22 2a02    	vmul.f32	s4, s4, s4
    7234: eeb0 7a46    	vmov.f32	s14, s12
    7238: ee22 2a02    	vmul.f32	s4, s4, s4
    723c: ee22 2a02    	vmul.f32	s4, s4, s4
    7240: ee22 2a02    	vmul.f32	s4, s4, s4
    7244: ee32 4a06    	vadd.f32	s8, s4, s12
    7248: eeb4 4a46    	vcmp.f32	s8, s12
    724c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7250: d009         	beq	0x7266 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2a6> @ imm = #0x12
    7252: eeb0 7a44    	vmov.f32	s14, s8
    7256: eeb1 7ac7    	vsqrt.f32	s14, s14
    725a: eeb1 7ac7    	vsqrt.f32	s14, s14
    725e: eeb1 7ac7    	vsqrt.f32	s14, s14
    7262: eeb1 7ac7    	vsqrt.f32	s14, s14
    7266: ee86 6a07    	vdiv.f32	s12, s12, s14
    726a: ee29 2a82    	vmul.f32	s4, s19, s4
    726e: ee86 4a04    	vdiv.f32	s8, s12, s8
    7272: ee82 5a05    	vdiv.f32	s10, s4, s10
    7276: ee29 2a86    	vmul.f32	s4, s19, s12
    727a: ee65 4a04    	vmul.f32	s9, s10, s8
    727e: ed9d 3a0b    	vldr	s6, [sp, #44]
    7282: 2e00         	cmp	r6, #0x0
    7284: ee33 2a42    	vsub.f32	s4, s6, s4
    7288: ed9f 5a76    	vldr	s10, [pc, #472]         @ 0x7464 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a4>
    728c: ed9f 3a76    	vldr	s6, [pc, #472]          @ 0x7468 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4a8>
    7290: fe03 7a05    	vseleq.f32	s14, s6, s10
    7294: ee12 3a10    	vmov	r3, s4
    7298: f023 4300    	bic	r3, r3, #0x80000000
    729c: f1b3 4fff    	cmp.w	r3, #0x7f800000
    72a0: db12         	blt	0x72c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x308> @ imm = #0x24
    72a2: ed9f 6a72    	vldr	s12, [pc, #456]         @ 0x746c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4ac>
    72a6: e019         	b	0x72dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x31c> @ imm = #0x32
    72a8: 00 80 bb 47  	.word	0x47bb8000
    72ac: 00 24 74 cb  	.word	0xcb742400
    72b0: 00 24 74 4b  	.word	0x4b742400
    72b4: 00 a0 0c 48  	.word	0x480ca000
    72b8: 46 af b3 38  	.word	0x38b3af46
    72bc: 00 00 00 00  	.word	0x00000000
    72c0: 50 d0 e8 36  	.word	0x36e8d050
    72c4: 79 61 2e 43  	.word	0x432e6179
    72c8: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    72cc: ed1f 6a05    	vldr	s12, [pc, #-20]         @ 0x72bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    72d0: ee82 5a05    	vdiv.f32	s10, s4, s10
    72d4: eeb0 5ac5    	vabs.f32	s10, s10
    72d8: fe85 6a06    	vmaxnm.f32	s12, s10, s12
    72dc: ed92 5b06    	vldr	d5, [r2, #24]
    72e0: ed9d 3a0b    	vldr	s6, [sp, #44]
    72e4: eef6 8a00    	vmov.f32	s17, #5.000000e-01
    72e8: eef7 0bc5    	vcvt.f32.f64	s1, d5
    72ec: ee61 1aa4    	vmul.f32	s3, s3, s9
    72f0: eddf 2a5f    	vldr	s5, [pc, #380]          @ 0x7470 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b0>
    72f4: eeb0 5a60    	vmov.f32	s10, s1
    72f8: ee03 5a2f    	vmla.f32	s10, s6, s31
    72fc: ed9f 3a5d    	vldr	s6, [pc, #372]          @ 0x7474 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b4>
    7300: eecb 5a83    	vdiv.f32	s11, s23, s6
    7304: ed9f 3a5c    	vldr	s6, [pc, #368]          @ 0x7478 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b8>
    7308: ee0b 5a83    	vmla.f32	s10, s23, s6
    730c: ed9f 3a5b    	vldr	s6, [pc, #364]          @ 0x747c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4bc>
    7310: eef0 6ae5    	vabs.f32	s13, s11
    7314: eef4 6a68    	vcmp.f32	s13, s17
    7318: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    731c: f280 80b8    	bge.w	0x7490 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4d0> @ imm = #0x170
    7320: eddf 6a57    	vldr	s13, [pc, #348]         @ 0x7480 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c0>
    7324: eebe ca00    	vmov.f32	s24, #-5.000000e-01
    7328: eef4 6a65    	vcmp.f32	s13, s11
    732c: eddf 7a55    	vldr	s15, [pc, #340]         @ 0x7484 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    7330: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7334: ed9f fa54    	vldr	s30, [pc, #336]         @ 0x7488 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c8>
    7338: fe76 4aa5    	vselgt.f32	s9, s13, s11
    733c: eddf 5a53    	vldr	s11, [pc, #332]         @ 0x748c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    7340: ee8b fa8f    	vdiv.f32	s30, s23, s30
    7344: eef4 4a65    	vcmp.f32	s9, s11
    7348: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    734c: fe75 4aa4    	vselgt.f32	s9, s11, s9
    7350: ee24 9aa7    	vmul.f32	s18, s9, s15
    7354: ee39 da28    	vadd.f32	s26, s18, s17
    7358: eeb5 9a40    	vcmp.f32	s18, #0
    735c: ee39 ea0c    	vadd.f32	s28, s18, s24
    7360: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7364: eebd dacd    	vcvt.s32.f32	s26, s26
    7368: eebd eace    	vcvt.s32.f32	s28, s28
    736c: eef4 6a4f    	vcmp.f32	s13, s30
    7370: ee1d 3a10    	vmov	r3, s26
    7374: ee1e 2a10    	vmov	r2, s28
    7378: bfa8         	it	ge
    737a: 461a         	movge	r2, r3
    737c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7380: fe76 6a8f    	vselgt.f32	s13, s13, s30
    7384: eef4 6a65    	vcmp.f32	s13, s11
    7388: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    738c: fe75 5aa6    	vselgt.f32	s11, s11, s13
    7390: ee65 6aa7    	vmul.f32	s13, s11, s15
    7394: ee76 7a8c    	vadd.f32	s15, s13, s24
    7398: eef5 6a40    	vcmp.f32	s13, #0
    739c: ee36 9aa8    	vadd.f32	s18, s13, s17
    73a0: ee0c 2a10    	vmov	s24, r2
    73a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    73a8: eefd 7ae7    	vcvt.s32.f32	s15, s15
    73ac: eddf 6af2    	vldr	s13, [pc, #968]         @ 0x7778 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7b8>
    73b0: eebd 9ac9    	vcvt.s32.f32	s18, s18
    73b4: eeb8 cacc    	vcvt.f32.s32	s24, s24
    73b8: ee17 3a90    	vmov	r3, s15
    73bc: ee19 6a10    	vmov	r6, s18
    73c0: bfa8         	it	ge
    73c2: 4633         	movge	r3, r6
    73c4: ee4c 4a66    	vmls.f32	s9, s24, s13
    73c8: f04f 567e    	mov.w	r6, #0x3f800000
    73cc: ee07 3a90    	vmov	s15, r3
    73d0: eb06 52c2    	add.w	r2, r6, r2, lsl #23
    73d4: eb06 53c3    	add.w	r3, r6, r3, lsl #23
    73d8: eef8 7ae7    	vcvt.f32.s32	s15, s15
    73dc: ee47 5ae6    	vmls.f32	s11, s15, s13
    73e0: eddf 6af2    	vldr	s13, [pc, #968]         @ 0x77ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    73e4: eddf 7af2    	vldr	s15, [pc, #968]         @ 0x77b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    73e8: eeb0 9a66    	vmov.f32	s18, s13
    73ec: ee04 9aa7    	vmla.f32	s18, s9, s15
    73f0: ee45 6aa7    	vmla.f32	s13, s11, s15
    73f4: eddf 7aef    	vldr	s15, [pc, #956]         @ 0x77b4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    73f8: eeb0 ca67    	vmov.f32	s24, s15
    73fc: ee25 daa5    	vmul.f32	s26, s11, s11
    7400: ee04 ca89    	vmla.f32	s24, s9, s18
    7404: eeb7 9a00    	vmov.f32	s18, #1.000000e+00
    7408: ee45 7aa6    	vmla.f32	s15, s11, s13
    740c: eef0 6a68    	vmov.f32	s13, s17
    7410: ee44 6a8c    	vmla.f32	s13, s9, s24
    7414: eeb0 ca68    	vmov.f32	s24, s17
    7418: ee05 caa7    	vmla.f32	s24, s11, s15
    741c: ee64 7aa4    	vmul.f32	s15, s9, s9
    7420: ee74 4a89    	vadd.f32	s9, s9, s18
    7424: ee47 4aa6    	vmla.f32	s9, s15, s13
    7428: ee07 3a90    	vmov	s15, r3
    742c: ee75 6a89    	vadd.f32	s13, s11, s18
    7430: ee05 2a90    	vmov	s11, r2
    7434: ee4d 6a0c    	vmla.f32	s13, s26, s24
    7438: ee64 5aa5    	vmul.f32	s11, s9, s11
    743c: ee66 4aa7    	vmul.f32	s9, s13, s15
    7440: e073         	b	0x752a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x56a> @ imm = #0xe6
    7442: bf00         	nop
    7444: b7 63 f7 b8  	.word	0xb8f763b7
    7448: 0a d7 23 3d  	.word	0x3d23d70a
    744c: 7c f2 b0 3a  	.word	0x3ab0f27c
    7450: a6 9b c4 3b  	.word	0x3bc49ba6
    7454: a6 9b c4 bb  	.word	0xbbc49ba6
    7458: 79 78 b0 43  	.word	0x43b07879
    745c: 7c f2 b0 ba  	.word	0xbab0f27c
    7460: 53 4a a1 43  	.word	0x43a14a53
    7464: 79 61 2e c3  	.word	0xc32e6179
    7468: 00 00 00 80  	.word	0x80000000
    746c: 00 00 80 7f  	.word	0x7f800000
    7470: 46 af b3 b8  	.word	0xb8b3af46
    7474: f5 4a 39 3d  	.word	0x3d394af5
    7478: 50 69 15 b9  	.word	0xb9156950
    747c: b7 63 f7 38  	.word	0x38f763b7
    7480: 00 00 a0 c2  	.word	0xc2a00000
    7484: 3b aa b8 3f  	.word	0x3fb8aa3b
    7488: f5 4a 39 bd  	.word	0xbd394af5
    748c: 00 00 a0 42  	.word	0x42a00000
    7490: eef4 6a66    	vcmp.f32	s13, s13
    7494: ed5f 4a03    	vldr	s9, [pc, #-12]          @ 0x748c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    7498: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    749c: eef0 7a68    	vmov.f32	s15, s17
    74a0: ed9f 9ac5    	vldr	s18, [pc, #788]         @ 0x77b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f8>
    74a4: fe54 6aa6    	vselvs.f32	s13, s9, s13
    74a8: f04f 527e    	mov.w	r2, #0x3f800000
    74ac: eef4 4a66    	vcmp.f32	s9, s13
    74b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74b4: fe76 6aa4    	vselgt.f32	s13, s13, s9
    74b8: eef4 6a64    	vcmp.f32	s13, s9
    74bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74c0: eef5 5a40    	vcmp.f32	s11, #0
    74c4: fe74 4aa6    	vselgt.f32	s9, s9, s13
    74c8: ed5f 6a12    	vldr	s13, [pc, #-72]         @ 0x7484 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    74cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    74d0: ee44 7aa6    	vmla.f32	s15, s9, s13
    74d4: eefd 6ae7    	vcvt.s32.f32	s13, s15
    74d8: eef8 7ae6    	vcvt.f32.s32	s15, s13
    74dc: ee16 3a90    	vmov	r3, s13
    74e0: ee47 4a89    	vmla.f32	s9, s15, s18
    74e4: eddf 7ab2    	vldr	s15, [pc, #712]         @ 0x77b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    74e8: ed9f 9ab0    	vldr	s18, [pc, #704]         @ 0x77ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    74ec: eb02 52c3    	add.w	r2, r2, r3, lsl #23
    74f0: ee06 2a90    	vmov	s13, r2
    74f4: ee04 9aa7    	vmla.f32	s18, s9, s15
    74f8: eddf 7aae    	vldr	s15, [pc, #696]         @ 0x77b4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    74fc: ee44 7a89    	vmla.f32	s15, s9, s18
    7500: eeb0 9a68    	vmov.f32	s18, s17
    7504: ee04 9aa7    	vmla.f32	s18, s9, s15
    7508: ee64 7aa4    	vmul.f32	s15, s9, s9
    750c: ee74 4a8a    	vadd.f32	s9, s9, s20
    7510: ee47 4a89    	vmla.f32	s9, s15, s18
    7514: ee64 6aa6    	vmul.f32	s13, s9, s13
    7518: eeca 4a26    	vdiv.f32	s9, s20, s13
    751c: eef0 5a66    	vmov.f32	s11, s13
    7520: bfbc         	itt	lt
    7522: eef0 5a64    	vmovlt.f32	s11, s9
    7526: eef0 4a66    	vmovlt.f32	s9, s13
    752a: ee75 6ae4    	vsub.f32	s13, s11, s9
    752e: eddf 3ae2    	vldr	s7, [pc, #904]          @ 0x78b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8f8>
    7532: ee27 4a04    	vmul.f32	s8, s14, s8
    7536: ed1f ba33    	vldr	s22, [pc, #-204]        @ 0x746c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4ac>
    753a: ee21 ea83    	vmul.f32	s28, s3, s6
    753e: ee16 5aa3    	vnmls.f32	s10, s13, s7
    7542: eddf 3ade    	vldr	s7, [pc, #888]          @ 0x78bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8fc>
    7546: ee21 7aa2    	vmul.f32	s14, s3, s5
    754a: eddf 2add    	vldr	s5, [pc, #884]          @ 0x78c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x900>
    754e: ee15 2a10    	vmov	r2, s10
    7552: f022 4200    	bic	r2, r2, #0x80000000
    7556: f1b2 4fff    	cmp.w	r2, #0x7f800000
    755a: da17         	bge	0x758c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x5cc> @ imm = #0x2e
    755c: eddf 1ad9    	vldr	s3, [pc, #868]          @ 0x78c4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x904>
    7560: eeb4 6a46    	vcmp.f32	s12, s12
    7564: eec5 1a21    	vdiv.f32	s3, s10, s3
    7568: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    756c: eef0 1ae1    	vabs.f32	s3, s3
    7570: fe11 6a86    	vselvs.f32	s12, s3, s12
    7574: eef4 1a61    	vcmp.f32	s3, s3
    7578: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    757c: fe56 1a21    	vselvs.f32	s3, s12, s3
    7580: eeb4 6a61    	vcmp.f32	s12, s3
    7584: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7588: fe36 ba21    	vselgt.f32	s22, s12, s3
    758c: ee04 ea22    	vmla.f32	s28, s8, s5
    7590: f10d 0844    	add.w	r8, sp, #0x44
    7594: ee04 7a23    	vmla.f32	s14, s8, s7
    7598: 6808         	ldr	r0, [r1]
    759a: ee75 1aa4    	vadd.f32	s3, s11, s9
    759e: 9000         	str	r0, [sp]
    75a0: eeb1 2a42    	vneg.f32	s4, s4
    75a4: f64a 7046    	movw	r0, #0xaf46
    75a8: eeb1 6a45    	vneg.f32	s12, s10
    75ac: f04f 0c00    	mov.w	r12, #0x0
    75b0: f108 0e14    	add.w	lr, r8, #0x14
    75b4: 2400         	movs	r4, #0x0
    75b6: f6cb 00b3    	movt	r0, #0xb8b3
    75ba: f04f 567e    	mov.w	r6, #0x3f800000
    75be: f04f 0a00    	mov.w	r10, #0x0
    75c2: 46e3         	mov	r11, r12
    75c4: ed9f 8aee    	vldr	s16, [pc, #952]         @ 0x7980 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c0>
    75c8: eddf 5aee    	vldr	s11, [pc, #952]         @ 0x7984 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c4>
    75cc: ed5f cac5    	vldr	s25, [pc, #-788]        @ 0x72bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x2fc>
    75d0: ed1f ca55    	vldr	s24, [pc, #-340]        @ 0x7480 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c0>
    75d4: ed5f aa53    	vldr	s21, [pc, #-332]        @ 0x748c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4cc>
    75d8: ed5f ea56    	vldr	s29, [pc, #-344]        @ 0x7484 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4c4>
    75dc: eddf 4a74    	vldr	s9, [pc, #464]          @ 0x77b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f0>
    75e0: ed9f 5a72    	vldr	s10, [pc, #456]         @ 0x77ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7ec>
    75e4: ed9f 3a73    	vldr	s6, [pc, #460]          @ 0x77b4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7f4>
    75e8: ed9f 4ab3    	vldr	s8, [pc, #716]          @ 0x78b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x8f8>
    75ec: 4643         	mov	r3, r8
    75ee: ee21 4a84    	vmul.f32	s8, s3, s8
    75f2: ed5f 1a60    	vldr	s3, [pc, #-384]         @ 0x7474 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x4b4>
    75f6: f1bc 0f10    	cmp.w	r12, #0x10
    75fa: eddf 2af1    	vldr	s5, [pc, #964]          @ 0x79c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa00>
    75fe: ee84 4a21    	vdiv.f32	s8, s8, s3
    7602: ee7e 1a0a    	vadd.f32	s3, s28, s20
    7606: edcd 1a11    	vstr	s3, [sp, #68]
    760a: ee34 4a08    	vadd.f32	s8, s8, s16
    760e: ed8d 4a15    	vstr	s8, [sp, #84]
    7612: eeb0 4ae1    	vabs.f32	s8, s3
    7616: bf18         	it	ne
    7618: f10b 0b01    	addne.w	r11, r11, #0x1
    761c: ed8d 7a12    	vstr	s14, [sp, #72]
    7620: 9413         	str	r4, [sp, #0x4c]
    7622: eeb4 4a6f    	vcmp.f32	s8, s31
    7626: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    762a: 9014         	str	r0, [sp, #0x50]
    762c: eef4 fa44    	vcmp.f32	s31, s8
    7630: bf48         	it	mi
    7632: 330c         	addmi	r3, #0xc
    7634: 9a0c         	ldr	r2, [sp, #0x30]
    7636: f8ce 2000    	str.w	r2, [lr]
    763a: e9d3 2500    	ldrd	r2, r5, [r3]
    763e: 6898         	ldr	r0, [r3, #0x8]
    7640: 9013         	str	r0, [sp, #0x4c]
    7642: f04f 0004    	mov.w	r0, #0x4
    7646: e9cd 2511    	strd	r2, r5, [sp, #68]
    764a: edc3 1a00    	vstr	s3, [r3]
    764e: f04f 0208    	mov.w	r2, #0x8
    7652: bf48         	it	mi
    7654: 2010         	movmi	r0, #0x10
    7656: ed9d 4a11    	vldr	s8, [sp, #68]
    765a: ee14 3a10    	vmov	r3, s8
    765e: 4440         	add	r0, r8
    7660: bf48         	it	mi
    7662: 2214         	movmi	r2, #0x14
    7664: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7668: ed80 7a00    	vstr	s14, [r0]
    766c: f023 4000    	bic	r0, r3, #0x80000000
    7670: fe76 1a02    	vselgt.f32	s3, s12, s4
    7674: fe32 2a06    	vselgt.f32	s4, s4, s12
    7678: f1b0 4fff    	cmp.w	r0, #0x7f800000
    767c: 980d         	ldr	r0, [sp, #0x34]
    767e: f8ce 0004    	str.w	r0, [lr, #0x4]
    7682: 980e         	ldr	r0, [sp, #0x38]
    7684: f8ce 0008    	str.w	r0, [lr, #0x8]
    7688: 980f         	ldr	r0, [sp, #0x3c]
    768a: f8ce 000c    	str.w	r0, [lr, #0xc]
    768e: f848 4002    	str.w	r4, [r8, r2]
    7692: f280 8389    	bge.w	0x7da8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x712
    7696: eeb0 6ac4    	vabs.f32	s12, s8
    769a: eeb4 6a62    	vcmp.f32	s12, s5
    769e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    76a2: f100 8381    	bmi.w	0x7da8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x702
    76a6: ed9d 6a14    	vldr	s12, [sp, #80]
    76aa: ed9d 7a15    	vldr	s14, [sp, #84]
    76ae: eec6 6a04    	vdiv.f32	s13, s12, s8
    76b2: ed9d 6a12    	vldr	s12, [sp, #72]
    76b6: ee06 7ac6    	vmls.f32	s14, s13, s12
    76ba: ee17 3a10    	vmov	r3, s14
    76be: f023 4300    	bic	r3, r3, #0x80000000
    76c2: f1b3 4fff    	cmp.w	r3, #0x7f800000
    76c6: f280 836f    	bge.w	0x7da8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x6de
    76ca: eef0 7ac7    	vabs.f32	s15, s14
    76ce: eef4 7a62    	vcmp.f32	s15, s5
    76d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    76d6: f100 8367    	bmi.w	0x7da8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xde8> @ imm = #0x6ce
    76da: ee06 2ae1    	vmls.f32	s4, s13, s3
    76de: eddd 2a0b    	vldr	s5, [sp, #44]
    76e2: eef0 6ae2    	vabs.f32	s13, s5
    76e6: eef4 6a66    	vcmp.f32	s13, s13
    76ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    76ee: ee82 7a07    	vdiv.f32	s14, s4, s14
    76f2: fe1a 2a26    	vselvs.f32	s4, s20, s13
    76f6: ee46 1a47    	vmls.f32	s3, s12, s14
    76fa: ed9f 6ab2    	vldr	s12, [pc, #712]         @ 0x79c4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa04>
    76fe: eeb4 2a4a    	vcmp.f32	s4, s20
    7702: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7706: fe32 2a0a    	vselgt.f32	s4, s4, s20
    770a: eec1 1a84    	vdiv.f32	s3, s3, s8
    770e: ee22 2a06    	vmul.f32	s4, s4, s12
    7712: eef0 2ae1    	vabs.f32	s5, s3
    7716: fe82 2a65    	vminnm.f32	s4, s4, s11
    771a: eef4 2a42    	vcmp.f32	s5, s4
    771e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7722: d818         	bhi	0x7756 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x796> @ imm = #0x30
    7724: eeb0 2aeb    	vabs.f32	s4, s23
    7728: eeb0 4ac7    	vabs.f32	s8, s14
    772c: eeb4 2a42    	vcmp.f32	s4, s4
    7730: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7734: fe1a 2a02    	vselvs.f32	s4, s20, s4
    7738: eeb4 2a4a    	vcmp.f32	s4, s20
    773c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7740: fe32 2a0a    	vselgt.f32	s4, s4, s20
    7744: ee22 2a06    	vmul.f32	s4, s4, s12
    7748: fe82 2a65    	vminnm.f32	s4, s4, s11
    774c: eeb4 4a42    	vcmp.f32	s8, s4
    7750: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7754: d914         	bls	0x7780 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7c0> @ imm = #0x28
    7756: 2300         	movs	r3, #0x0
    7758: ed9f 2a9b    	vldr	s4, [pc, #620]          @ 0x79c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa08>
    775c: eeb4 ba42    	vcmp.f32	s22, s4
    7760: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7764: d814         	bhi	0x7790 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7d0> @ imm = #0x28
    7766: f1ac 0010    	sub.w	r0, r12, #0x10
    776a: fab0 f080    	clz	r0, r0
    776e: 0940         	lsrs	r0, r0, #0x5
    7770: 4318         	orrs	r0, r3
    7772: d011         	beq	0x7798 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7d8> @ imm = #0x22
    7774: e305         	b	0x7d82 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdc2> @ imm = #0x60a
    7776: bf00         	nop
    7778: 18 72 31 3f  	.word	0x3f317218
    777c: 00 bf 00 bf  	.word	0xbf00bf00
    7780: 2301         	movs	r3, #0x1
    7782: ed9f 2a91    	vldr	s4, [pc, #580]          @ 0x79c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa08>
    7786: eeb4 ba42    	vcmp.f32	s22, s4
    778a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    778e: d9ea         	bls	0x7766 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x7a6> @ imm = #-0x2c
    7790: f1bc 0f10    	cmp.w	r12, #0x10
    7794: f000 8310    	beq.w	0x7db8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdf8> @ imm = #0x620
    7798: 4645         	mov	r5, r8
    779a: 2400         	movs	r4, #0x0
    779c: f04f 597e    	mov.w	r9, #0x3f800000
    77a0: edcd 2a04    	vstr	s5, [sp, #16]
    77a4: edcd 9a05    	vstr	s19, [sp, #20]
    77a8: e012         	b	0x77d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x810> @ imm = #0x24
    77aa: bf00         	nop
    77ac: ab aa 2a 3d  	.word	0x3d2aaaab
    77b0: 89 88 08 3c  	.word	0x3c088889
    77b4: ab aa 2a 3e  	.word	0x3e2aaaab
    77b8: 18 72 31 bf  	.word	0xbf317218
    77bc: 00 bf 00 bf  	.word	0xbf00bf00
    77c0: eef0 ba48    	vmov.f32	s23, s16
    77c4: f5a9 0900    	sub.w	r9, r9, #0x800000
    77c8: f1b9 5f66    	cmp.w	r9, #0x39800000
    77cc: f000 82b4    	beq.w	0x7d38 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd78> @ imm = #0x568
    77d0: ee02 9a10    	vmov	s4, r9
    77d4: eddd 7a0b    	vldr	s15, [sp, #44]
    77d8: eeb0 9a6b    	vmov.f32	s18, s23
    77dc: eeb0 4a6f    	vmov.f32	s8, s31
    77e0: ed9f fb7b    	vldr	d15, [pc, #492]         @ 0x79d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa10>
    77e4: ee41 7a82    	vmla.f32	s15, s3, s4
    77e8: eeb0 8a6b    	vmov.f32	s16, s23
    77ec: ee07 9a02    	vmla.f32	s18, s14, s4
    77f0: eef0 ba6c    	vmov.f32	s23, s25
    77f4: ed9d db08    	vldr	d13, [sp, #32]
    77f8: eeb0 ea6c    	vmov.f32	s28, s25
    77fc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
    7800: eeb7 2ac9    	vcvt.f64.f32	d2, s18
    7804: ee06 db0f    	vmla.f64	d13, d6, d15
    7808: eef0 fa44    	vmov.f32	s31, s8
    780c: ed9f 4ada    	vldr	s8, [pc, #872]          @ 0x7b78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbb8>
    7810: ed9f 6bdb    	vldr	d6, [pc, #876]          @ 0x7b80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbc0>
    7814: ee02 db06    	vmla.f64	d13, d2, d6
    7818: ed9d 6a07    	vldr	s12, [sp, #28]
    781c: eeb7 2bcd    	vcvt.f32.f64	s4, d13
    7820: eeb0 da6c    	vmov.f32	s26, s25
    7824: ee02 6a04    	vmla.f32	s12, s4, s8
    7828: ed9f 4a57    	vldr	s8, [pc, #348]          @ 0x7988 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9c8>
    782c: ed9d 2a06    	vldr	s4, [sp, #24]
    7830: ee07 2a84    	vmla.f32	s4, s15, s8
    7834: ee09 2a2f    	vmla.f32	s4, s18, s31
    7838: eeb4 0a46    	vcmp.f32	s0, s12
    783c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7840: fe30 4a06    	vselgt.f32	s8, s0, s12
    7844: eef0 6ac2    	vabs.f32	s13, s4
    7848: eeb4 4a41    	vcmp.f32	s8, s2
    784c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7850: eeb5 2a40    	vcmp.f32	s4, #0
    7854: eeb0 2a6c    	vmov.f32	s4, s25
    7858: fe71 9a04    	vselgt.f32	s19, s2, s8
    785c: eebf 4a00    	vmov.f32	s8, #-1.000000e+00
    7860: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7864: bf48         	it	mi
    7866: eeb0 2a44    	vmovmi.f32	s4, s8
    786a: fe3a 4a02    	vselgt.f32	s8, s20, s4
    786e: ed9f 2a47    	vldr	s4, [pc, #284]          @ 0x798c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9cc>
    7872: eef4 6a42    	vcmp.f32	s13, s4
    7876: eeb0 2a6c    	vmov.f32	s4, s25
    787a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    787e: f280 80d7    	bge.w	0x7a30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0x1ae
    7882: ed9f 2a43    	vldr	s4, [pc, #268]          @ 0x7990 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d0>
    7886: eeb0 da6c    	vmov.f32	s26, s25
    788a: eef4 6a42    	vcmp.f32	s13, s4
    788e: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    7892: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7896: d923         	bls	0x78e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x920> @ imm = #0x46
    7898: ed9f 2a3e    	vldr	s4, [pc, #248]          @ 0x7994 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d4>
    789c: eef4 6a42    	vcmp.f32	s13, s4
    78a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    78a4: d910         	bls	0x78c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x908> @ imm = #0x20
    78a6: ed9f 2a3c    	vldr	s4, [pc, #240]          @ 0x7998 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9d8>
    78aa: ee76 2a82    	vadd.f32	s5, s13, s4
    78ae: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    78b2: eddf 3a3a    	vldr	s7, [pc, #232]          @ 0x799c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9dc>
    78b6: e00f         	b	0x78d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x918> @ imm = #0x1e
    78b8: 77 cc 2b 31  	.word	0x312bcc77
    78bc: c5 9f 13 3f  	.word	0x3f139fc5
    78c0: bb bc 42 bf  	.word	0xbf42bcbb
    78c4: 0a d7 23 3c  	.word	0x3c23d70a
    78c8: ed9f 2a35    	vldr	s4, [pc, #212]          @ 0x79a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e0>
    78cc: ee76 2a82    	vadd.f32	s5, s13, s4
    78d0: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    78d4: eddf 3a33    	vldr	s7, [pc, #204]          @ 0x79a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e4>
    78d8: ee02 2aa3    	vmla.f32	s4, s5, s7
    78dc: ee24 da23    	vmul.f32	s26, s8, s7
    78e0: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    78e4: eef1 ba4d    	vneg.f32	s23, s26
    78e8: ee34 2a42    	vsub.f32	s4, s8, s4
    78ec: fe82 4a2c    	vmaxnm.f32	s8, s4, s25
    78f0: eeb5 4a40    	vcmp.f32	s8, #0
    78f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    78f8: d95a         	bls	0x79b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9f0> @ imm = #0xb4
    78fa: eeb0 2ae9    	vabs.f32	s4, s19
    78fe: eeb4 2a44    	vcmp.f32	s4, s8
    7902: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7906: d967         	bls	0x79d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa18> @ imm = #0xce
    7908: eec4 6a02    	vdiv.f32	s13, s8, s4
    790c: eeb0 da4a    	vmov.f32	s26, s20
    7910: ee26 2aa6    	vmul.f32	s4, s13, s13
    7914: ee22 2a02    	vmul.f32	s4, s4, s4
    7918: ee22 2a02    	vmul.f32	s4, s4, s4
    791c: ee22 ea02    	vmul.f32	s28, s4, s4
    7920: ee3e 2a0a    	vadd.f32	s4, s28, s20
    7924: eeb4 2a4a    	vcmp.f32	s4, s20
    7928: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    792c: d009         	beq	0x7942 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x982> @ imm = #0x12
    792e: eeb0 da42    	vmov.f32	s26, s4
    7932: eeb1 dacd    	vsqrt.f32	s26, s26
    7936: eeb1 dacd    	vsqrt.f32	s26, s26
    793a: eeb1 dacd    	vsqrt.f32	s26, s26
    793e: eeb1 dacd    	vsqrt.f32	s26, s26
    7942: eeca da0d    	vdiv.f32	s27, s20, s26
    7946: ed9f da18    	vldr	s26, [pc, #96]          @ 0x79a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x9e8>
    794a: eef4 9a69    	vcmp.f32	s19, s19
    794e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7952: ee8d fa82    	vdiv.f32	s30, s27, s4
    7956: eeb0 2a4d    	vmov.f32	s4, s26
    795a: bf7f         	itttt	vc
    795c: ee19 0a90    	vmovvc	r0, s19
    7960: f366 001e    	bfivc	r0, r6, #0, #31
    7964: ee02 0a10    	vmovvc	s4, r0
    7968: ee22 4a04    	vmulvc.f32	s8, s4, s8
    796c: bf7c         	itt	vc
    796e: ee24 da2d    	vmulvc.f32	s26, s8, s27
    7972: ee22 2a0f    	vmulvc.f32	s4, s4, s30
    7976: ee26 4a8e    	vmul.f32	s8, s13, s28
    797a: ee24 ea0f    	vmul.f32	s28, s8, s30
    797e: e057         	b	0x7a30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0xae
    7980: 50 69 15 39  	.word	0x39156950
    7984: ac c5 a7 37  	.word	0x37a7c5ac
    7988: b7 63 f7 b8  	.word	0xb8f763b7
    798c: 0a d7 23 3d  	.word	0x3d23d70a
    7990: 7c f2 b0 3a  	.word	0x3ab0f27c
    7994: a6 9b c4 3b  	.word	0x3bc49ba6
    7998: a6 9b c4 bb  	.word	0xbbc49ba6
    799c: 79 78 b0 43  	.word	0x43b07879
    79a0: 7c f2 b0 ba  	.word	0xbab0f27c
    79a4: 53 4a a1 43  	.word	0x43a14a53
    79a8: 00 00 c0 7f  	.word	0x7fc00000
    79ac: 00 bf 00 bf  	.word	0xbf00bf00
    79b0: eeb0 da6c    	vmov.f32	s26, s25
    79b4: eeb0 ea6c    	vmov.f32	s28, s25
    79b8: eeb0 2a6c    	vmov.f32	s4, s25
    79bc: e038         	b	0x7a30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa70> @ imm = #0x70
    79be: bf00         	nop
    79c0: 08 e5 3c 1e  	.word	0x1e3ce508
    79c4: bd 37 06 36  	.word	0x360637bd
    79c8: 17 b7 d1 38  	.word	0x38d1b717
    79cc: 00 bf 00 bf  	.word	0xbf00bf00
    79d0: 9c 9e 91 65  	.word	0x65919e9c
    79d4: 97 57 e8 bf  	.word	0xbfe85797
    79d8: ee89 2a84    	vdiv.f32	s4, s19, s8
    79dc: eeb0 da4a    	vmov.f32	s26, s20
    79e0: ee22 2a02    	vmul.f32	s4, s4, s4
    79e4: ee22 2a02    	vmul.f32	s4, s4, s4
    79e8: ee22 2a02    	vmul.f32	s4, s4, s4
    79ec: ee22 2a02    	vmul.f32	s4, s4, s4
    79f0: ee72 6a0a    	vadd.f32	s13, s4, s20
    79f4: eef4 6a4a    	vcmp.f32	s13, s20
    79f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79fc: d009         	beq	0x7a12 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa52> @ imm = #0x12
    79fe: eeb0 da66    	vmov.f32	s26, s13
    7a02: eeb1 dacd    	vsqrt.f32	s26, s26
    7a06: eeb1 dacd    	vsqrt.f32	s26, s26
    7a0a: eeb1 dacd    	vsqrt.f32	s26, s26
    7a0e: eeb1 dacd    	vsqrt.f32	s26, s26
    7a12: eeca 2a0d    	vdiv.f32	s5, s20, s26
    7a16: ee29 2a82    	vmul.f32	s4, s19, s4
    7a1a: ee82 eaa6    	vdiv.f32	s28, s5, s13
    7a1e: ee82 2a04    	vdiv.f32	s4, s4, s8
    7a22: ee29 daa2    	vmul.f32	s26, s19, s5
    7a26: ee22 2a0e    	vmul.f32	s4, s4, s28
    7a2a: bf00         	nop
    7a2c: bf00         	nop
    7a2e: bf00         	nop
    7a30: ee77 6acd    	vsub.f32	s13, s15, s26
    7a34: eddf daf1    	vldr	s27, [pc, #964]         @ 0x7dfc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe3c>
    7a38: ee16 0a90    	vmov	r0, s13
    7a3c: f020 4000    	bic	r0, r0, #0x80000000
    7a40: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7a44: da07         	bge	0x7a56 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xa96> @ imm = #0xe
    7a46: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    7a4a: ee86 4a84    	vdiv.f32	s8, s13, s8
    7a4e: eeb0 4ac4    	vabs.f32	s8, s8
    7a52: fec4 da2c    	vmaxnm.f32	s27, s8, s25
    7a56: ed9f 4aeb    	vldr	s8, [pc, #940]          @ 0x7e04 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe44>
    7a5a: ee89 da04    	vdiv.f32	s26, s18, s8
    7a5e: eeb0 4acd    	vabs.f32	s8, s26
    7a62: eeb4 4a68    	vcmp.f32	s8, s17
    7a66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a6a: f280 808d    	bge.w	0x7b88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xbc8> @ imm = #0x11a
    7a6e: eeb4 ca4d    	vcmp.f32	s24, s26
    7a72: eebe fa00    	vmov.f32	s30, #-5.000000e-01
    7a76: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a7a: fe3c 4a0d    	vselgt.f32	s8, s24, s26
    7a7e: ed9f dae3    	vldr	s26, [pc, #908]         @ 0x7e0c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe4c>
    7a82: ee89 da0d    	vdiv.f32	s26, s18, s26
    7a86: eeb4 4a6a    	vcmp.f32	s8, s21
    7a8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7a8e: fe3a 4a84    	vselgt.f32	s8, s21, s8
    7a92: ee64 2a2e    	vmul.f32	s5, s8, s29
    7a96: ee72 3aa8    	vadd.f32	s7, s5, s17
    7a9a: eef5 2a40    	vcmp.f32	s5, #0
    7a9e: ee72 5a8f    	vadd.f32	s11, s5, s30
    7aa2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7aa6: eefd 3ae3    	vcvt.s32.f32	s7, s7
    7aaa: eefd 5ae5    	vcvt.s32.f32	s11, s11
    7aae: eeb4 ca4d    	vcmp.f32	s24, s26
    7ab2: ee13 0a90    	vmov	r0, s7
    7ab6: ee15 8a90    	vmov	r8, s11
    7aba: bfa8         	it	ge
    7abc: 4680         	movge	r8, r0
    7abe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ac2: fe7c 2a0d    	vselgt.f32	s5, s24, s26
    7ac6: eef4 2a6a    	vcmp.f32	s5, s21
    7aca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ace: fe7a 2aa2    	vselgt.f32	s5, s21, s5
    7ad2: ee62 3aae    	vmul.f32	s7, s5, s29
    7ad6: ee73 5a8f    	vadd.f32	s11, s7, s30
    7ada: eef5 3a40    	vcmp.f32	s7, #0
    7ade: ee33 daa8    	vadd.f32	s26, s7, s17
    7ae2: ee03 8a90    	vmov	s7, r8
    7ae6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7aea: eefd 5ae5    	vcvt.s32.f32	s11, s11
    7aee: eef8 3ae3    	vcvt.f32.s32	s7, s7
    7af2: ee15 3a90    	vmov	r3, s11
    7af6: eefd 5acd    	vcvt.s32.f32	s11, s26
    7afa: ed9f dac5    	vldr	s26, [pc, #788]         @ 0x7e10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe50>
    7afe: ee03 4acd    	vmls.f32	s8, s7, s26
    7b02: eef0 3a45    	vmov.f32	s7, s10
    7b06: ee15 0a90    	vmov	r0, s11
    7b0a: bfa8         	it	ge
    7b0c: 4603         	movge	r3, r0
    7b0e: eb06 50c8    	add.w	r0, r6, r8, lsl #23
    7b12: ee05 3a90    	vmov	s11, r3
    7b16: eb06 52c3    	add.w	r2, r6, r3, lsl #23
    7b1a: ee44 3a24    	vmla.f32	s7, s8, s9
    7b1e: eef8 5ae5    	vcvt.f32.s32	s11, s11
    7b22: ee45 2acd    	vmls.f32	s5, s11, s26
    7b26: eef0 5a45    	vmov.f32	s11, s10
    7b2a: eeb0 da43    	vmov.f32	s26, s6
    7b2e: ee04 da23    	vmla.f32	s26, s8, s7
    7b32: eef0 3a43    	vmov.f32	s7, s6
    7b36: ee42 5aa4    	vmla.f32	s11, s5, s9
    7b3a: ee22 faa2    	vmul.f32	s30, s5, s5
    7b3e: ee42 3aa5    	vmla.f32	s7, s5, s11
    7b42: eef0 5a68    	vmov.f32	s11, s17
    7b46: ee44 5a0d    	vmla.f32	s11, s8, s26
    7b4a: eeb0 da68    	vmov.f32	s26, s17
    7b4e: ee02 daa3    	vmla.f32	s26, s5, s7
    7b52: ee64 3a04    	vmul.f32	s7, s8, s8
    7b56: ee34 4a0a    	vadd.f32	s8, s8, s20
    7b5a: ee72 2a8a    	vadd.f32	s5, s5, s20
    7b5e: ee03 4aa5    	vmla.f32	s8, s7, s11
    7b62: ee03 0a90    	vmov	s7, r0
    7b66: ee05 2a90    	vmov	s11, r2
    7b6a: ee4f 2a0d    	vmla.f32	s5, s30, s26
    7b6e: ee24 fa23    	vmul.f32	s30, s8, s7
    7b72: ee22 4aa5    	vmul.f32	s8, s5, s11
    7b76: e04c         	b	0x7c12 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xc52> @ imm = #0x98
    7b78: 79 61 2e 43  	.word	0x432e6179
    7b7c: 00 bf 00 bf  	.word	0xbf00bf00
    7b80: 76 43 71 a5  	.word	0xa5714376
    7b84: f8 73 e2 3f  	.word	0x3fe273f8
    7b88: eeb4 4a44    	vcmp.f32	s8, s8
    7b8c: eef0 2a68    	vmov.f32	s5, s17
    7b90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b94: eddf 3a9c    	vldr	s7, [pc, #624]          @ 0x7e08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe48>
    7b98: eef0 5a43    	vmov.f32	s11, s6
    7b9c: fe1a 4a84    	vselvs.f32	s8, s21, s8
    7ba0: eef4 aa44    	vcmp.f32	s21, s8
    7ba4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ba8: fe34 4a2a    	vselgt.f32	s8, s8, s21
    7bac: eeb4 4a6a    	vcmp.f32	s8, s21
    7bb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bb4: eeb5 da40    	vcmp.f32	s26, #0
    7bb8: fe3a 4a84    	vselgt.f32	s8, s21, s8
    7bbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bc0: ee44 2a2e    	vmla.f32	s5, s8, s29
    7bc4: eefd 2ae2    	vcvt.s32.f32	s5, s5
    7bc8: eeb8 fae2    	vcvt.f32.s32	s30, s5
    7bcc: ee12 0a90    	vmov	r0, s5
    7bd0: ee0f 4a23    	vmla.f32	s8, s30, s7
    7bd4: eeb0 fa45    	vmov.f32	s30, s10
    7bd8: eef0 3a68    	vmov.f32	s7, s17
    7bdc: eb06 50c0    	add.w	r0, r6, r0, lsl #23
    7be0: ee02 0a90    	vmov	s5, r0
    7be4: ee04 fa24    	vmla.f32	s30, s8, s9
    7be8: ee44 5a0f    	vmla.f32	s11, s8, s30
    7bec: ee44 3a25    	vmla.f32	s7, s8, s11
    7bf0: ee64 5a04    	vmul.f32	s11, s8, s8
    7bf4: ee34 4a0a    	vadd.f32	s8, s8, s20
    7bf8: ee05 4aa3    	vmla.f32	s8, s11, s7
    7bfc: ee64 2a22    	vmul.f32	s5, s8, s5
    7c00: ee8a 4a22    	vdiv.f32	s8, s20, s5
    7c04: eeb0 fa62    	vmov.f32	s30, s5
    7c08: bfbc         	itt	lt
    7c0a: eeb0 fa44    	vmovlt.f32	s30, s8
    7c0e: eeb0 4a62    	vmovlt.f32	s8, s5
    7c12: eeb0 da60    	vmov.f32	s26, s1
    7c16: ee07 daaf    	vmla.f32	s26, s15, s31
    7c1a: eddf 2a79    	vldr	s5, [pc, #484]          @ 0x7e00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe40>
    7c1e: eddf 3a7d    	vldr	s7, [pc, #500]          @ 0x7e14 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe54>
    7c22: ee09 da22    	vmla.f32	s26, s18, s5
    7c26: ee7f 2a44    	vsub.f32	s5, s30, s8
    7c2a: ee12 daa3    	vnmls.f32	s26, s5, s7
    7c2e: ee1d 0a10    	vmov	r0, s26
    7c32: f020 4000    	bic	r0, r0, #0x80000000
    7c36: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7c3a: f6bf adc1    	bge.w	0x77c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x800> @ imm = #-0x47e
    7c3e: eddf 2a76    	vldr	s5, [pc, #472]          @ 0x7e18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe58>
    7c42: eef4 da6d    	vcmp.f32	s27, s27
    7c46: eecd 2a22    	vdiv.f32	s5, s26, s5
    7c4a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c4e: eef0 2ae2    	vabs.f32	s5, s5
    7c52: fe52 3aad    	vselvs.f32	s7, s5, s27
    7c56: eef4 2a62    	vcmp.f32	s5, s5
    7c5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c5e: fe53 2aa2    	vselvs.f32	s5, s7, s5
    7c62: eef4 3a62    	vcmp.f32	s7, s5
    7c66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c6a: fe73 daa2    	vselgt.f32	s27, s7, s5
    7c6e: eef4 da4b    	vcmp.f32	s27, s22
    7c72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c76: f57f ada3    	bpl.w	0x77c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x800> @ imm = #-0x4ba
    7c7a: a06b         	adr	r0, #428 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd29>
    7c7c: eeb4 6a41    	vcmp.f32	s12, s2
    7c80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c84: bf48         	it	mi
    7c86: 3004         	addmi	r0, #0x4
    7c88: eeb4 6a40    	vcmp.f32	s12, s0
    7c8c: ed9d 6a01    	vldr	s12, [sp, #4]
    7c90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c94: ed81 6a01    	vstr	s12, [r1, #4]
    7c98: ed90 6a00    	vldr	s12, [r0]
    7c9c: ed9f 7a52    	vldr	s14, [pc, #328]         @ 0x7de8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe28>
    7ca0: f64a 7046    	movw	r0, #0xaf46
    7ca4: fe36 6a07    	vselgt.f32	s12, s12, s14
    7ca8: f1bc 0f10    	cmp.w	r12, #0x10
    7cac: ed9f 7a4f    	vldr	s14, [pc, #316]         @ 0x7dec <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe2c>
    7cb0: f6cb 00b3    	movt	r0, #0xb8b3
    7cb4: eddf 1a4f    	vldr	s3, [pc, #316]          @ 0x7df4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe34>
    7cb8: 9a00         	ldr	r2, [sp]
    7cba: eddf 2a4d    	vldr	s5, [pc, #308]          @ 0x7df0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe30>
    7cbe: 600a         	str	r2, [r1]
    7cc0: eddf 3a4d    	vldr	s7, [pc, #308]          @ 0x7df8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe38>
    7cc4: edc1 7a02    	vstr	s15, [r1, #8]
    7cc8: eddf 5a55    	vldr	s11, [pc, #340]         @ 0x7e20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe60>
    7ccc: ed81 9a03    	vstr	s18, [r1, #12]
    7cd0: ed9f 8a52    	vldr	s16, [pc, #328]         @ 0x7e1c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe5c>
    7cd4: 9410         	str	r4, [sp, #0x40]
    7cd6: e9cd 440c    	strd	r4, r4, [sp, #48]
    7cda: e9cd 440e    	strd	r4, r4, [sp, #56]
    7cde: d01f         	beq	0x7d20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xd60> @ imm = #0x3e
    7ce0: ee2b 2a82    	vmul.f32	s4, s23, s4
    7ce4: eef0 ba49    	vmov.f32	s23, s18
    7ce8: ee26 6a0e    	vmul.f32	s12, s12, s28
    7cec: eeb0 ba6d    	vmov.f32	s22, s27
    7cf0: 46a8         	mov	r8, r5
    7cf2: f1bb 0f10    	cmp.w	r11, #0x10
    7cf6: ee22 ea07    	vmul.f32	s28, s4, s14
    7cfa: f10a 0a01    	add.w	r10, r10, #0x1
    7cfe: ee06 ea22    	vmla.f32	s28, s12, s5
    7d02: 46dc         	mov	r12, r11
    7d04: ee22 7a21    	vmul.f32	s14, s4, s3
    7d08: edcd 7a0b    	vstr	s15, [sp, #44]
    7d0c: ee06 7a23    	vmla.f32	s14, s12, s7
    7d10: ee7f 1a04    	vadd.f32	s3, s30, s8
    7d14: eeb1 2a66    	vneg.f32	s4, s13
    7d18: eeb1 6a4d    	vneg.f32	s12, s26
    7d1c: f77f ac64    	ble.w	0x75e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x628> @ imm = #-0x738
    7d20: f24f 50e0    	movw	r0, #0xf5e0
    7d24: f64f 12c8    	movw	r2, #0xf9c8
    7d28: f2c0 0000    	movt	r0, #0x0
    7d2c: f2c0 0200    	movt	r2, #0x0
    7d30: 2128         	movs	r1, #0x28
    7d32: f002 fb1d    	bl	0xa370 <core::panicking::panic> @ imm = #0x263a
    7d36: bf00         	nop
    7d38: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x7e24 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe64>
    7d3c: 2000         	movs	r0, #0x0
    7d3e: eeb4 ba40    	vcmp.f32	s22, s0
    7d42: ed9f 1a37    	vldr	s2, [pc, #220]          @ 0x7e20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe60>
    7d46: ed9d 0a04    	vldr	s0, [sp, #16]
    7d4a: 2200         	movs	r2, #0x0
    7d4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d50: eeb4 0a41    	vcmp.f32	s0, s2
    7d54: f04f 0100    	mov.w	r1, #0x0
    7d58: eeb0 0ac7    	vabs.f32	s0, s14
    7d5c: f10a 0a01    	add.w	r10, r10, #0x1
    7d60: bf98         	it	ls
    7d62: 2001         	movls	r0, #0x1
    7d64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d68: bf98         	it	ls
    7d6a: 2201         	movls	r2, #0x1
    7d6c: eeb4 0a41    	vcmp.f32	s0, s2
    7d70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d74: bf98         	it	ls
    7d76: 2101         	movls	r1, #0x1
    7d78: 4010         	ands	r0, r2
    7d7a: eddd 9a05    	vldr	s19, [sp, #20]
    7d7e: ea00 0301    	and.w	r3, r0, r1
    7d82: 9802         	ldr	r0, [sp, #0x8]
    7d84: edc0 9a01    	vstr	s19, [r0, #4]
    7d88: 9803         	ldr	r0, [sp, #0xc]
    7d8a: ed80 ba00    	vstr	s22, [r0]
    7d8e: f880 a004    	strb.w	r10, [r0, #0x4]
    7d92: 7143         	strb	r3, [r0, #0x5]
    7d94: b01a         	add	sp, #0x68
    7d96: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    7d9a: b001         	add	sp, #0x4
    7d9c: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    7da0: bdf0         	pop	{r4, r5, r6, r7, pc}
    7da2: bf00         	nop
    7da4: bf00         	nop
    7da6: bf00         	nop
    7da8: 9903         	ldr	r1, [sp, #0xc]
    7daa: 2000         	movs	r0, #0x0
    7dac: ed81 ba00    	vstr	s22, [r1]
    7db0: f881 a004    	strb.w	r10, [r1, #0x4]
    7db4: 7148         	strb	r0, [r1, #0x5]
    7db6: e7ed         	b	0x7d94 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdd4> @ imm = #-0x26
    7db8: 2300         	movs	r3, #0x0
    7dba: e7e2         	b	0x7d82 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xdc2> @ imm = #-0x3c
    7dbc: bf00         	nop
    7dbe: bf00         	nop
    7dc0: f24c 304e    	movw	r0, #0xc34e
    7dc4: f64f 12d8    	movw	r2, #0xf9d8
    7dc8: f2c0 0000    	movt	r0, #0x0
    7dcc: f2c0 0200    	movt	r2, #0x0
    7dd0: a911         	add	r1, sp, #0x44
    7dd2: f002 fac9    	bl	0xa368 <core::panicking::panic_fmt> @ imm = #0x2592
    7dd6: bf00         	nop
    7dd8: eddf 4a02    	vldr	s9, [pc, #8]            @ 0x7de4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0xe24>
    7ddc: eeb0 2a64    	vmov.f32	s4, s9
    7de0: f7ff ba09    	b.w	0x71f6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 2, 5>+0x236> @ imm = #-0xbee
    7de4: 00 00 c0 7f  	.word	0x7fc00000
    7de8: 00 00 00 80  	.word	0x80000000
    7dec: b7 63 f7 38  	.word	0x38f763b7
    7df0: bb bc 42 bf  	.word	0xbf42bcbb
    7df4: 46 af b3 b8  	.word	0xb8b3af46
    7df8: c5 9f 13 3f  	.word	0x3f139fc5
    7dfc: 00 00 80 7f  	.word	0x7f800000
    7e00: 50 69 15 b9  	.word	0xb9156950
    7e04: f5 4a 39 3d  	.word	0x3d394af5
    7e08: 18 72 31 bf  	.word	0xbf317218
    7e0c: f5 4a 39 bd  	.word	0xbd394af5
    7e10: 18 72 31 3f  	.word	0x3f317218
    7e14: 77 cc 2b 31  	.word	0x312bcc77
    7e18: 0a d7 23 3c  	.word	0x3c23d70a
    7e1c: 50 69 15 39  	.word	0x39156950
    7e20: ac c5 a7 37  	.word	0x37a7c5ac
    7e24: 17 b7 d1 38  	.word	0x38d1b717
    7e28: 00 00 00 80  	.word	0x80000000
    7e2c: 79 61 2e c3  	.word	0xc32e6179

00007e30 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>>:
    7e30: b5f0         	push	{r4, r5, r6, r7, lr}
    7e32: af03         	add	r7, sp, #0xc
    7e34: e92d 0f00    	push.w	{r8, r9, r10, r11}
    7e38: b081         	sub	sp, #0x4
    7e3a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    7e3e: b0ae         	sub	sp, #0xb8
    7e40: ed9f 2ab1    	vldr	s4, [pc, #708]          @ 0x8108 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2d8>
    7e44: ee20 3a02    	vmul.f32	s6, s0, s4
    7e48: ed9f 4ab0    	vldr	s8, [pc, #704]          @ 0x810c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2dc>
    7e4c: eddf 3ab0    	vldr	s7, [pc, #704]          @ 0x8110 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e0>
    7e50: ed9f 5ab0    	vldr	s10, [pc, #704]         @ 0x8114 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e4>
    7e54: ee33 0a04    	vadd.f32	s0, s6, s8
    7e58: ee33 1a23    	vadd.f32	s2, s6, s7
    7e5c: eec0 fa05    	vdiv.f32	s31, s0, s10
    7e60: ee81 ea05    	vdiv.f32	s28, s2, s10
    7e64: eef4 fa4e    	vcmp.f32	s31, s28
    7e68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e6c: f201 81c8    	bhi.w	0x9200 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13d0> @ imm = #0x1390
    7e70: ed91 6a02    	vldr	s12, [r1, #8]
    7e74: ed8d 6a03    	vstr	s12, [sp, #12]
    7e78: eeb7 6ac6    	vcvt.f64.f32	d6, s12
    7e7c: edd1 1a03    	vldr	s3, [r1, #12]
    7e80: ed9f 7ba5    	vldr	d7, [pc, #660]          @ 0x8118 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2e8>
    7e84: edd1 2a04    	vldr	s5, [r1, #16]
    7e88: eddf ba7c    	vldr	s23, [pc, #496]         @ 0x807c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x24c>
    7e8c: ed92 8b14    	vldr	d8, [r2, #80]
    7e90: eeb7 9ae2    	vcvt.f64.f32	d9, s5
    7e94: edcd 1a02    	vstr	s3, [sp, #8]
    7e98: ee06 8b07    	vmla.f64	d8, d6, d7
    7e9c: 2500         	movs	r5, #0x0
    7e9e: eeb7 6ae1    	vcvt.f64.f32	d6, s3
    7ea2: eddf 1a77    	vldr	s3, [pc, #476]          @ 0x8080 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x250>
    7ea6: ed9f 7b9e    	vldr	d7, [pc, #632]          @ 0x8120 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2f0>
    7eaa: edd1 4a05    	vldr	s9, [r1, #20]
    7eae: edcd 2a1a    	vstr	s5, [sp, #104]
    7eb2: ee06 8b07    	vmla.f64	d8, d6, d7
    7eb6: 2600         	movs	r6, #0x0
    7eb8: edcd 4a1c    	vstr	s9, [sp, #112]
    7ebc: eebf ba00    	vmov.f32	s22, #-1.000000e+00
    7ec0: ed9f 7b99    	vldr	d7, [pc, #612]          @ 0x8128 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2f8>
    7ec4: eeb0 6b48    	vmov.f64	d6, d8
    7ec8: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    7ecc: ed9f caea    	vldr	s24, [pc, #936]         @ 0x8278 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x448>
    7ed0: ee09 6b07    	vmla.f64	d6, d9, d7
    7ed4: ed8d 8b14    	vstr	d8, [sp, #80]
    7ed8: ed9f 8a6a    	vldr	s16, [pc, #424]         @ 0x8084 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x254>
    7edc: ee23 7a08    	vmul.f32	s14, s6, s16
    7ee0: eeb7 3bc6    	vcvt.f32.f64	s6, d6
    7ee4: ed8d 7a13    	vstr	s14, [sp, #76]
    7ee8: eeb0 6a47    	vmov.f32	s12, s14
    7eec: ee03 6a2b    	vmla.f32	s12, s6, s23
    7ef0: ed92 7b08    	vldr	d7, [r2, #32]
    7ef4: eeb7 7bc7    	vcvt.f32.f64	s14, d7
    7ef8: ed8d 7a12    	vstr	s14, [sp, #72]
    7efc: ee02 7aa1    	vmla.f32	s14, s5, s3
    7f00: eddf 1ae4    	vldr	s3, [pc, #912]          @ 0x8294 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x464>
    7f04: eef4 fa46    	vcmp.f32	s31, s12
    7f08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f0c: ee04 7aa1    	vmla.f32	s14, s9, s3
    7f10: fe3f 3a86    	vselgt.f32	s6, s31, s12
    7f14: eeb4 3a4e    	vcmp.f32	s6, s28
    7f18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f1c: eeb4 6a6f    	vcmp.f32	s12, s31
    7f20: fe3e da03    	vselgt.f32	s26, s28, s6
    7f24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f28: bfc8         	it	gt
    7f2a: 2501         	movgt	r5, #0x1
    7f2c: eeb4 6a4e    	vcmp.f32	s12, s28
    7f30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f34: eef0 1ac7    	vabs.f32	s3, s14
    7f38: eeb5 7a40    	vcmp.f32	s14, #0
    7f3c: ed9f 7ad6    	vldr	s14, [pc, #856]         @ 0x8298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    7f40: eeb0 3a47    	vmov.f32	s6, s14
    7f44: eeb0 6a47    	vmov.f32	s12, s14
    7f48: bf48         	it	mi
    7f4a: 2601         	movmi	r6, #0x1
    7f4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f50: bf48         	it	mi
    7f52: eeb0 3a4b    	vmovmi.f32	s6, s22
    7f56: eef0 5a47    	vmov.f32	s11, s14
    7f5a: eef0 2a47    	vmov.f32	s5, s14
    7f5e: fe70 4a03    	vselgt.f32	s9, s0, s6
    7f62: eeb0 3a47    	vmov.f32	s6, s14
    7f66: eef4 1a4c    	vcmp.f32	s3, s24
    7f6a: 402e         	ands	r6, r5
    7f6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f70: f280 80b5    	bge.w	0x80de <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x16a
    7f74: ed9f 3ac9    	vldr	s6, [pc, #804]          @ 0x829c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x46c>
    7f78: eef4 1a43    	vcmp.f32	s3, s6
    7f7c: ed9f 6ac6    	vldr	s12, [pc, #792]         @ 0x8298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    7f80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f84: d910         	bls	0x7fa8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x178> @ imm = #0x20
    7f86: ed9f 3ac6    	vldr	s6, [pc, #792]          @ 0x82a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x470>
    7f8a: eef4 1a43    	vcmp.f32	s3, s6
    7f8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f92: d911         	bls	0x7fb8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x188> @ imm = #0x22
    7f94: ed9f 3ac3    	vldr	s6, [pc, #780]          @ 0x82a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x474>
    7f98: ee71 1a83    	vadd.f32	s3, s3, s6
    7f9c: eddf 2ac2    	vldr	s5, [pc, #776]          @ 0x82a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x478>
    7fa0: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    7fa4: e010         	b	0x7fc8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x198> @ imm = #0x20
    7fa6: bf00         	nop
    7fa8: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    7fac: eef0 2a46    	vmov.f32	s5, s12
    7fb0: e00e         	b	0x7fd0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1a0> @ imm = #0x1c
    7fb2: bf00         	nop
    7fb4: bf00         	nop
    7fb6: bf00         	nop
    7fb8: ed9f 3abd    	vldr	s6, [pc, #756]          @ 0x82b0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x480>
    7fbc: ee71 1a83    	vadd.f32	s3, s3, s6
    7fc0: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    7fc4: eddf 2ab9    	vldr	s5, [pc, #740]          @ 0x82ac <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x47c>
    7fc8: ee01 3aa2    	vmla.f32	s6, s3, s5
    7fcc: ee64 2aa2    	vmul.f32	s5, s9, s5
    7fd0: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    7fd4: ee31 3ac3    	vsub.f32	s6, s3, s6
    7fd8: fec3 1a06    	vmaxnm.f32	s3, s6, s12
    7fdc: eeb1 3a62    	vneg.f32	s6, s5
    7fe0: eef5 1a40    	vcmp.f32	s3, #0
    7fe4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7fe8: d942         	bls	0x8070 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x240> @ imm = #0x84
    7fea: eeb0 6acd    	vabs.f32	s12, s26
    7fee: eeb4 6a61    	vcmp.f32	s12, s3
    7ff2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ff6: d947         	bls	0x8088 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x258> @ imm = #0x8e
    7ff8: eec1 4a86    	vdiv.f32	s9, s3, s12
    7ffc: ee24 6aa4    	vmul.f32	s12, s9, s9
    8000: ee26 6a06    	vmul.f32	s12, s12, s12
    8004: ee26 6a06    	vmul.f32	s12, s12, s12
    8008: ee66 5a06    	vmul.f32	s11, s12, s12
    800c: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    8010: ee75 2a86    	vadd.f32	s5, s11, s12
    8014: eef0 6a46    	vmov.f32	s13, s12
    8018: eef4 2a46    	vcmp.f32	s5, s12
    801c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8020: d009         	beq	0x8036 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x206> @ imm = #0x12
    8022: eef0 6a62    	vmov.f32	s13, s5
    8026: eef1 6ae6    	vsqrt.f32	s13, s13
    802a: eef1 6ae6    	vsqrt.f32	s13, s13
    802e: eef1 6ae6    	vsqrt.f32	s13, s13
    8032: eef1 6ae6    	vsqrt.f32	s13, s13
    8036: ee86 6a26    	vdiv.f32	s12, s12, s13
    803a: eeb4 da4d    	vcmp.f32	s26, s26
    803e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8042: eec6 6a22    	vdiv.f32	s13, s12, s5
    8046: f181 80f3    	bvs.w	0x9230 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1400> @ imm = #0x11e6
    804a: ee1d 5a10    	vmov	r5, s26
    804e: f04f 547e    	mov.w	r4, #0x3f800000
    8052: f364 051e    	bfi	r5, r4, #0, #31
    8056: ee02 5a90    	vmov	s5, r5
    805a: ee62 1aa1    	vmul.f32	s3, s5, s3
    805e: ee62 2aa6    	vmul.f32	s5, s5, s13
    8062: ee21 6a86    	vmul.f32	s12, s3, s12
    8066: ee64 1aa5    	vmul.f32	s3, s9, s11
    806a: ee61 5aa6    	vmul.f32	s11, s3, s13
    806e: e036         	b	0x80de <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x6c
    8070: eef0 5a46    	vmov.f32	s11, s12
    8074: eef0 2a46    	vmov.f32	s5, s12
    8078: e031         	b	0x80de <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x2ae> @ imm = #0x62
    807a: bf00         	nop
    807c: 79 61 2e 43  	.word	0x432e6179
    8080: 83 c0 96 b8  	.word	0xb896c083
    8084: 50 d0 e8 36  	.word	0x36e8d050
    8088: ee8d 6a21    	vdiv.f32	s12, s26, s3
    808c: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    8090: ee26 6a06    	vmul.f32	s12, s12, s12
    8094: eef0 5a64    	vmov.f32	s11, s9
    8098: ee26 6a06    	vmul.f32	s12, s12, s12
    809c: ee26 6a06    	vmul.f32	s12, s12, s12
    80a0: ee26 6a06    	vmul.f32	s12, s12, s12
    80a4: ee76 2a24    	vadd.f32	s5, s12, s9
    80a8: eef4 2a64    	vcmp.f32	s5, s9
    80ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    80b0: d009         	beq	0x80c6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x296> @ imm = #0x12
    80b2: eef0 5a62    	vmov.f32	s11, s5
    80b6: eef1 5ae5    	vsqrt.f32	s11, s11
    80ba: eef1 5ae5    	vsqrt.f32	s11, s11
    80be: eef1 5ae5    	vsqrt.f32	s11, s11
    80c2: eef1 5ae5    	vsqrt.f32	s11, s11
    80c6: eec4 4aa5    	vdiv.f32	s9, s9, s11
    80ca: ee2d 6a06    	vmul.f32	s12, s26, s12
    80ce: eec4 5aa2    	vdiv.f32	s11, s9, s5
    80d2: eec6 1a21    	vdiv.f32	s3, s12, s3
    80d6: ee2d 6a24    	vmul.f32	s12, s26, s9
    80da: ee61 2aa5    	vmul.f32	s5, s3, s11
    80de: eddd 1a1a    	vldr	s3, [sp, #104]
    80e2: 2e00         	cmp	r6, #0x0
    80e4: ee71 1ac6    	vsub.f32	s3, s3, s12
    80e8: ed9f fac8    	vldr	s30, [pc, #800]         @ 0x840c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5dc>
    80ec: ed9f 6ac8    	vldr	s12, [pc, #800]         @ 0x8410 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    80f0: fe46 6a0f    	vseleq.f32	s13, s12, s30
    80f4: ee11 5a90    	vmov	r5, s3
    80f8: f025 4600    	bic	r6, r5, #0x80000000
    80fc: f1b6 4fff    	cmp.w	r6, #0x7f800000
    8100: db16         	blt	0x8130 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x300> @ imm = #0x2c
    8102: ed9f aac4    	vldr	s20, [pc, #784]         @ 0x8414 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    8106: e01d         	b	0x8144 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x314> @ imm = #0x3a
    8108: 00 80 bb 47  	.word	0x47bb8000
    810c: 00 24 74 cb  	.word	0xcb742400
    8110: 00 24 74 4b  	.word	0x4b742400
    8114: 00 a0 0c 48  	.word	0x480ca000
    8118: ab 14 f2 db  	.word	0xdbf214ab
    811c: ec cd d7 3f  	.word	0x3fd7cdec
    8120: c4 a9 9f 7b  	.word	0x7b9fa9c4
    8124: 67 dd c7 3f  	.word	0x3fc7dd67
    8128: 1c 38 88 77  	.word	0x7788381c
    812c: bf 13 e1 bf  	.word	0xbfe113bf
    8130: eeb2 6a0e    	vmov.f32	s12, #1.500000e+01
    8134: eddf 4a58    	vldr	s9, [pc, #352]          @ 0x8298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    8138: ee81 6a86    	vdiv.f32	s12, s3, s12
    813c: eeb0 6ac6    	vabs.f32	s12, s12
    8140: fe86 aa24    	vmaxnm.f32	s20, s12, s9
    8144: ee20 2a82    	vmul.f32	s4, s1, s4
    8148: ee32 4a04    	vadd.f32	s8, s4, s8
    814c: ee32 6a23    	vadd.f32	s12, s4, s7
    8150: eec4 7a05    	vdiv.f32	s15, s8, s10
    8154: ee86 1a05    	vdiv.f32	s2, s12, s10
    8158: eef4 7a41    	vcmp.f32	s15, s2
    815c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8160: f201 804e    	bhi.w	0x9200 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13d0> @ imm = #0x109c
    8164: ed9f 0b84    	vldr	d0, [pc, #528]          @ 0x8378 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x548>
    8168: ed8d da09    	vstr	s26, [sp, #36]
    816c: ed9d da1c    	vldr	s26, [sp, #112]
    8170: ed92 4b16    	vldr	d4, [r2, #88]
    8174: ed9f 6a47    	vldr	s12, [pc, #284]         @ 0x8294 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x464>
    8178: eddd 3a1a    	vldr	s7, [sp, #104]
    817c: ed8d 4b10    	vstr	d4, [sp, #64]
    8180: 2600         	movs	r6, #0x0
    8182: 2500         	movs	r5, #0x0
    8184: ee09 4b00    	vmla.f64	d4, d9, d0
    8188: eeb7 9acd    	vcvt.f64.f32	d9, s26
    818c: ed9f 0b3c    	vldr	d0, [pc, #240]          @ 0x8280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x450>
    8190: ee09 4b00    	vmla.f64	d4, d9, d0
    8194: ee22 0a08    	vmul.f32	s0, s4, s16
    8198: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    819c: ed92 8b0a    	vldr	d8, [r2, #40]
    81a0: ed8d 0a0f    	vstr	s0, [sp, #60]
    81a4: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    81a8: eeb0 4a40    	vmov.f32	s8, s0
    81ac: ed9f 0ae8    	vldr	s0, [pc, #928]          @ 0x8550 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x720>
    81b0: eeb7 5bc8    	vcvt.f32.f64	s10, d8
    81b4: ee02 4a2b    	vmla.f32	s8, s4, s23
    81b8: ed8d 5a0e    	vstr	s10, [sp, #56]
    81bc: ee03 5a86    	vmla.f32	s10, s7, s12
    81c0: eddf 3a35    	vldr	s7, [pc, #212]          @ 0x8298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    81c4: eeb0 6a63    	vmov.f32	s12, s7
    81c8: ee0d 5a00    	vmla.f32	s10, s26, s0
    81cc: ed9f 0ae7    	vldr	s0, [pc, #924]          @ 0x856c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    81d0: eef4 7a44    	vcmp.f32	s15, s8
    81d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    81d8: fe37 2a84    	vselgt.f32	s4, s15, s8
    81dc: eeb4 2a41    	vcmp.f32	s4, s2
    81e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    81e4: eeb4 4a67    	vcmp.f32	s8, s15
    81e8: fe71 ea02    	vselgt.f32	s29, s2, s4
    81ec: ed91 2a06    	vldr	s4, [r1, #24]
    81f0: ee22 8a00    	vmul.f32	s16, s4, s0
    81f4: ed8d 2a19    	vstr	s4, [sp, #100]
    81f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    81fc: eeb4 4a41    	vcmp.f32	s8, s2
    8200: eeb0 4a63    	vmov.f32	s8, s7
    8204: ee38 2a05    	vadd.f32	s4, s16, s10
    8208: eeb0 5a63    	vmov.f32	s10, s7
    820c: bfc8         	it	gt
    820e: 2601         	movgt	r6, #0x1
    8210: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8214: eeb5 2a40    	vcmp.f32	s4, #0
    8218: eeb0 9ac2    	vabs.f32	s18, s4
    821c: eeb0 2a63    	vmov.f32	s4, s7
    8220: bf48         	it	mi
    8222: 2501         	movmi	r5, #0x1
    8224: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8228: bf48         	it	mi
    822a: eeb0 2a4b    	vmovmi.f32	s4, s22
    822e: eeb4 9a4c    	vcmp.f32	s18, s24
    8232: ea06 0605    	and.w	r6, r6, r5
    8236: fe70 4a82    	vselgt.f32	s9, s1, s4
    823a: eeb0 2a63    	vmov.f32	s4, s7
    823e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8242: f280 80d0    	bge.w	0x83e6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x1a0
    8246: ed9f 2a15    	vldr	s4, [pc, #84]           @ 0x829c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x46c>
    824a: eeb4 9a42    	vcmp.f32	s18, s4
    824e: ed9f 4a12    	vldr	s8, [pc, #72]           @ 0x8298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    8252: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8256: d917         	bls	0x8288 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x458> @ imm = #0x2e
    8258: ed9f 2a11    	vldr	s4, [pc, #68]           @ 0x82a0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x470>
    825c: eeb4 9a42    	vcmp.f32	s18, s4
    8260: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8264: d928         	bls	0x82b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x488> @ imm = #0x50
    8266: ed9f 2a0f    	vldr	s4, [pc, #60]           @ 0x82a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x474>
    826a: ee39 5a02    	vadd.f32	s10, s18, s4
    826e: ed9f 6a0e    	vldr	s12, [pc, #56]          @ 0x82a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x478>
    8272: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    8276: e027         	b	0x82c8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x498> @ imm = #0x4e
    8278: 0a d7 23 3d  	.word	0x3d23d70a
    827c: 00 bf 00 bf  	.word	0xbf00bf00
    8280: 67 42 87 92  	.word	0x92874267
    8284: ba 86 d4 bf  	.word	0xbfd486ba
    8288: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    828c: eeb0 6a44    	vmov.f32	s12, s8
    8290: e01e         	b	0x82d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x4a0> @ imm = #0x3c
    8292: bf00         	nop
    8294: d6 f8 e4 36  	.word	0x36e4f8d6
    8298: 00 00 00 00  	.word	0x00000000
    829c: 7c f2 b0 3a  	.word	0x3ab0f27c
    82a0: a6 9b c4 3b  	.word	0x3bc49ba6
    82a4: a6 9b c4 bb  	.word	0xbbc49ba6
    82a8: 79 78 b0 43  	.word	0x43b07879
    82ac: 53 4a a1 43  	.word	0x43a14a53
    82b0: 7c f2 b0 ba  	.word	0xbab0f27c
    82b4: 00 bf 00 bf  	.word	0xbf00bf00
    82b8: ed9f 2a2d    	vldr	s4, [pc, #180]          @ 0x8370 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x540>
    82bc: ee39 5a02    	vadd.f32	s10, s18, s4
    82c0: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    82c4: ed9f 6a31    	vldr	s12, [pc, #196]         @ 0x838c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x55c>
    82c8: ee05 2a06    	vmla.f32	s4, s10, s12
    82cc: ee24 6a86    	vmul.f32	s12, s9, s12
    82d0: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    82d4: eeb1 6a46    	vneg.f32	s12, s12
    82d8: ee35 2a42    	vsub.f32	s4, s10, s4
    82dc: fe82 5a04    	vmaxnm.f32	s10, s4, s8
    82e0: eeb5 5a40    	vcmp.f32	s10, #0
    82e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82e8: d94a         	bls	0x8380 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x550> @ imm = #0x94
    82ea: eeb0 2aee    	vabs.f32	s4, s29
    82ee: eeb4 2a45    	vcmp.f32	s4, s10
    82f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82f6: d94b         	bls	0x8390 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x560> @ imm = #0x96
    82f8: ee85 2a02    	vdiv.f32	s4, s10, s4
    82fc: ee22 4a02    	vmul.f32	s8, s4, s4
    8300: ee24 4a04    	vmul.f32	s8, s8, s8
    8304: ee24 4a04    	vmul.f32	s8, s8, s8
    8308: ee64 4a04    	vmul.f32	s9, s8, s8
    830c: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    8310: ee34 9a84    	vadd.f32	s18, s9, s8
    8314: eeb0 ba44    	vmov.f32	s22, s8
    8318: eeb4 9a44    	vcmp.f32	s18, s8
    831c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8320: d009         	beq	0x8336 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x506> @ imm = #0x12
    8322: eeb0 ba49    	vmov.f32	s22, s18
    8326: eeb1 bacb    	vsqrt.f32	s22, s22
    832a: eeb1 bacb    	vsqrt.f32	s22, s22
    832e: eeb1 bacb    	vsqrt.f32	s22, s22
    8332: eeb1 bacb    	vsqrt.f32	s22, s22
    8336: ee84 4a0b    	vdiv.f32	s8, s8, s22
    833a: eef4 ea6e    	vcmp.f32	s29, s29
    833e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8342: ee84 9a09    	vdiv.f32	s18, s8, s18
    8346: f180 877b    	bvs.w	0x9240 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1410> @ imm = #0xef6
    834a: ee1e 5a90    	vmov	r5, s29
    834e: f04f 547e    	mov.w	r4, #0x3f800000
    8352: f364 051e    	bfi	r5, r4, #0, #31
    8356: ee0b 5a10    	vmov	s22, r5
    835a: ee2b 5a05    	vmul.f32	s10, s22, s10
    835e: ee25 4a04    	vmul.f32	s8, s10, s8
    8362: ee2b 5a09    	vmul.f32	s10, s22, s18
    8366: ee22 2a24    	vmul.f32	s4, s4, s9
    836a: ee22 2a09    	vmul.f32	s4, s4, s18
    836e: e03a         	b	0x83e6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x74
    8370: 7c f2 b0 ba  	.word	0xbab0f27c
    8374: 00 bf 00 bf  	.word	0xbf00bf00
    8378: 15 be b6 e5  	.word	0xe5b6be15
    837c: 6d 7e c0 bf  	.word	0xbfc07e6d
    8380: eeb0 2a44    	vmov.f32	s4, s8
    8384: eeb0 5a44    	vmov.f32	s10, s8
    8388: e02d         	b	0x83e6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5b6> @ imm = #0x5a
    838a: bf00         	nop
    838c: 53 4a a1 43  	.word	0x43a14a53
    8390: ee8e 2a85    	vdiv.f32	s4, s29, s10
    8394: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    8398: ee22 2a02    	vmul.f32	s4, s4, s4
    839c: eeb0 9a64    	vmov.f32	s18, s9
    83a0: ee22 2a02    	vmul.f32	s4, s4, s4
    83a4: ee22 2a02    	vmul.f32	s4, s4, s4
    83a8: ee22 2a02    	vmul.f32	s4, s4, s4
    83ac: ee32 4a24    	vadd.f32	s8, s4, s9
    83b0: eeb4 4a64    	vcmp.f32	s8, s9
    83b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83b8: d009         	beq	0x83ce <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x59e> @ imm = #0x12
    83ba: eeb0 9a44    	vmov.f32	s18, s8
    83be: eeb1 9ac9    	vsqrt.f32	s18, s18
    83c2: eeb1 9ac9    	vsqrt.f32	s18, s18
    83c6: eeb1 9ac9    	vsqrt.f32	s18, s18
    83ca: eeb1 9ac9    	vsqrt.f32	s18, s18
    83ce: eec4 4a89    	vdiv.f32	s9, s9, s18
    83d2: ee2e 9a82    	vmul.f32	s18, s29, s4
    83d6: ee84 2a84    	vdiv.f32	s4, s9, s8
    83da: ee89 5a05    	vdiv.f32	s10, s18, s10
    83de: ee2e 4aa4    	vmul.f32	s8, s29, s9
    83e2: ee25 5a02    	vmul.f32	s10, s10, s4
    83e6: eddd 4a1c    	vldr	s9, [sp, #112]
    83ea: 2e00         	cmp	r6, #0x0
    83ec: ee74 9ac4    	vsub.f32	s19, s9, s8
    83f0: ed9f 4a07    	vldr	s8, [pc, #28]           @ 0x8410 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    83f4: fe04 9a0f    	vseleq.f32	s18, s8, s30
    83f8: ee19 5a90    	vmov	r5, s19
    83fc: f025 4600    	bic	r6, r5, #0x80000000
    8400: f1b6 4fff    	cmp.w	r6, #0x7f800000
    8404: db08         	blt	0x8418 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e8> @ imm = #0x10
    8406: eddf 4a03    	vldr	s9, [pc, #12]           @ 0x8414 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    840a: e01d         	b	0x8448 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x618> @ imm = #0x3a
    840c: 79 61 2e c3  	.word	0xc32e6179
    8410: 00 00 00 80  	.word	0x80000000
    8414: 00 00 80 7f  	.word	0x7f800000
    8418: eeb2 4a0e    	vmov.f32	s8, #1.500000e+01
    841c: eeb4 aa4a    	vcmp.f32	s20, s20
    8420: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8424: ee89 4a84    	vdiv.f32	s8, s19, s8
    8428: eeb0 4ac4    	vabs.f32	s8, s8
    842c: fe54 4a0a    	vselvs.f32	s9, s8, s20
    8430: eeb4 4a44    	vcmp.f32	s8, s8
    8434: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8438: fe14 4a84    	vselvs.f32	s8, s9, s8
    843c: eef4 4a44    	vcmp.f32	s9, s8
    8440: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8444: fe74 4a84    	vselgt.f32	s9, s9, s8
    8448: ed92 ab0c    	vldr	d10, [r2, #48]
    844c: ed9f ba48    	vldr	s22, [pc, #288]         @ 0x8570 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x740>
    8450: ee26 6a05    	vmul.f32	s12, s12, s10
    8454: ed92 cb1a    	vldr	d12, [r2, #104]
    8458: eddf 8a46    	vldr	s17, [pc, #280]         @ 0x8574 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x744>
    845c: ed92 db1c    	vldr	d13, [r2, #112]
    8460: 220d         	movs	r2, #0xd
    8462: ed9f 5a45    	vldr	s10, [pc, #276]         @ 0x8578 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x748>
    8466: eeb7 fbca    	vcvt.f32.f64	s30, d10
    846a: ed9d aa1c    	vldr	s20, [sp, #112]
    846e: ed8d fa0d    	vstr	s30, [sp, #52]
    8472: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    8476: ee2a 4a0b    	vmul.f32	s8, s20, s22
    847a: ed8d 0a0c    	vstr	s0, [sp, #48]
    847e: eeb7 cbcd    	vcvt.f32.f64	s24, d13
    8482: ee66 aaa5    	vmul.f32	s21, s13, s11
    8486: ed8d ca0b    	vstr	s24, [sp, #44]
    848a: ee34 da00    	vadd.f32	s26, s8, s0
    848e: ed9d 0a19    	vldr	s0, [sp, #100]
    8492: ee00 da28    	vmla.f32	s26, s0, s17
    8496: eddf ca39    	vldr	s25, [pc, #228]         @ 0x857c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x74c>
    849a: ee34 4a0c    	vadd.f32	s8, s8, s24
    849e: eddf da38    	vldr	s27, [pc, #224]         @ 0x8580 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x750>
    84a2: ee00 4a4b    	vmls.f32	s8, s0, s22
    84a6: ed9f 0a31    	vldr	s0, [pc, #196]          @ 0x856c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    84aa: ee0a fa00    	vmla.f32	s30, s20, s0
    84ae: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    84b2: ee23 aa22    	vmul.f32	s20, s6, s5
    84b6: fe8d 3a44    	vminnm.f32	s6, s26, s8
    84ba: eeb4 da44    	vcmp.f32	s26, s8
    84be: ee7f 5a48    	vsub.f32	s11, s30, s16
    84c2: ee30 4a43    	vsub.f32	s8, s0, s6
    84c6: eeb8 3a00    	vmov.f32	s6, #-2.000000e+00
    84ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84ce: bf88         	it	hi
    84d0: 220e         	movhi	r2, #0xe
    84d2: eeb4 4a43    	vcmp.f32	s8, s6
    84d6: ed8d 1a18    	vstr	s2, [sp, #96]
    84da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84de: ed8d ea17    	vstr	s28, [sp, #92]
    84e2: edcd 7a16    	vstr	s15, [sp, #88]
    84e6: d937         	bls	0x8558 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x728> @ imm = #0x6e
    84e8: eeb4 4a44    	vcmp.f32	s8, s8
    84ec: ed1f 3a96    	vldr	s6, [pc, #-600]         @ 0x8298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    84f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84f4: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    84f8: eeb0 8a43    	vmov.f32	s16, s6
    84fc: fe53 6a04    	vselvs.f32	s13, s6, s8
    8500: eeb0 da62    	vmov.f32	s26, s5
    8504: eef5 6a40    	vcmp.f32	s13, #0
    8508: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    850c: bfb8         	it	lt
    850e: eeb0 8a66    	vmovlt.f32	s16, s13
    8512: eddf 6a1c    	vldr	s13, [pc, #112]         @ 0x8584 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x754>
    8516: eeb5 4a40    	vcmp.f32	s8, #0
    851a: ee08 da00    	vmla.f32	s26, s16, s0
    851e: ed9f 8a1a    	vldr	s16, [pc, #104]         @ 0x8588 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x758>
    8522: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8526: ee2d da26    	vmul.f32	s26, s26, s13
    852a: fe8d da08    	vmaxnm.f32	s26, s26, s16
    852e: d52f         	bpl	0x8590 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x760> @ imm = #0x5e
    8530: ee44 2a00    	vmla.f32	s5, s8, s0
    8534: ee22 4aa6    	vmul.f32	s8, s5, s13
    8538: eeb4 4a48    	vcmp.f32	s8, s16
    853c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8540: dd26         	ble	0x8590 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x760> @ imm = #0x4c
    8542: eeb0 1a6f    	vmov.f32	s2, s31
    8546: eeb0 ca6b    	vmov.f32	s24, s23
    854a: ed9f 3af6    	vldr	s6, [pc, #984]          @ 0x8924 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf4>
    854e: e023         	b	0x8598 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x768> @ imm = #0x46
    8550: af e6 27 b9  	.word	0xb927e6af
    8554: 00 bf 00 bf  	.word	0xbf00bf00
    8558: eeb0 1a6f    	vmov.f32	s2, s31
    855c: eeb0 ca6b    	vmov.f32	s24, s23
    8560: ed1f 3ab3    	vldr	s6, [pc, #-716]         @ 0x8298 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x468>
    8564: ed9f da08    	vldr	s26, [pc, #32]          @ 0x8588 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x758>
    8568: e016         	b	0x8598 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x768> @ imm = #0x2c
    856a: bf00         	nop
    856c: 79 2e 02 39  	.word	0x39022e79
    8570: 51 e6 7f 3f  	.word	0x3f7fe651
    8574: 99 76 cd 39  	.word	0x39cd7699
    8578: d6 f8 e4 b6  	.word	0xb6e4f8d6
    857c: 83 c0 96 38  	.word	0x3896c083
    8580: af e6 27 39  	.word	0x3927e6af
    8584: 2b 18 95 3b  	.word	0x3b95182b
    8588: 95 bf d6 33  	.word	0x33d6bf95
    858c: 00 bf 00 bf  	.word	0xbf00bf00
    8590: eeb0 1a6f    	vmov.f32	s2, s31
    8594: eeb0 ca6b    	vmov.f32	s24, s23
    8598: e9cd 3004    	strd	r3, r0, [sp, #16]
    859c: f24f 6008    	movw	r0, #0xf608
    85a0: ed9d 0a19    	vldr	s0, [sp, #100]
    85a4: f2c0 0000    	movt	r0, #0x0
    85a8: ee50 5a0d    	vnmls.f32	s11, s0, s26
    85ac: eb00 1282    	add.w	r2, r0, r2, lsl #6
    85b0: ee20 4a03    	vmul.f32	s8, s0, s6
    85b4: ee29 9a02    	vmul.f32	s18, s18, s4
    85b8: ed1f 2a14    	vldr	s4, [pc, #-80]          @ 0x856c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x73c>
    85bc: ed92 8b0c    	vldr	d8, [r2, #48]
    85c0: ed9f 0ad9    	vldr	s0, [pc, #868]          @ 0x8928 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf8>
    85c4: ee66 6a05    	vmul.f32	s13, s12, s10
    85c8: eeb7 3bc8    	vcvt.f32.f64	s6, d8
    85cc: ee26 8a2d    	vmul.f32	s16, s12, s27
    85d0: ed92 fb08    	vldr	d15, [r2, #32]
    85d4: ee04 2a43    	vmls.f32	s4, s8, s6
    85d8: ed92 bb0a    	vldr	d11, [r2, #40]
    85dc: ee15 2a90    	vmov	r2, s11
    85e0: ee2a 3a87    	vmul.f32	s6, s21, s14
    85e4: eef7 8bcf    	vcvt.f32.f64	s17, d15
    85e8: ee66 7a00    	vmul.f32	s15, s12, s0
    85ec: ed9f 0af8    	vldr	s0, [pc, #992]          @ 0x89d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba0>
    85f0: eeb7 6bcb    	vcvt.f32.f64	s12, d11
    85f4: f022 4200    	bic	r2, r2, #0x80000000
    85f8: ee2a fa2c    	vmul.f32	s30, s20, s25
    85fc: f1b2 4fff    	cmp.w	r2, #0x7f800000
    8600: ed5f ca7c    	vldr	s25, [pc, #-496]        @ 0x8414 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e4>
    8604: ed9f baf3    	vldr	s22, [pc, #972]         @ 0x89d4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba4>
    8608: eddf baf3    	vldr	s23, [pc, #972]         @ 0x89d8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xba8>
    860c: da17         	bge	0x863e <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x80e> @ imm = #0x2e
    860e: ed9f 7af3    	vldr	s14, [pc, #972]         @ 0x89dc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbac>
    8612: eef4 4a64    	vcmp.f32	s9, s9
    8616: ee85 7a87    	vdiv.f32	s14, s11, s14
    861a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    861e: eeb0 7ac7    	vabs.f32	s14, s14
    8622: fe57 4a24    	vselvs.f32	s9, s14, s9
    8626: eeb4 7a47    	vcmp.f32	s14, s14
    862a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    862e: fe14 7a87    	vselvs.f32	s14, s9, s14
    8632: eef4 4a47    	vcmp.f32	s9, s14
    8636: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    863a: fe74 ca87    	vselgt.f32	s25, s9, s14
    863e: eeb0 7a43    	vmov.f32	s14, s6
    8642: ee0a 3a05    	vmla.f32	s6, s20, s10
    8646: ed1f 5a8e    	vldr	s10, [pc, #-568]        @ 0x8410 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x5e0>
    864a: ee0a fa80    	vmla.f32	s30, s21, s0
    864e: ee0a 7a05    	vmla.f32	s14, s20, s10
    8652: ae22         	add	r6, sp, #0x88
    8654: ee49 7a23    	vmla.f32	s15, s18, s7
    8658: f106 000c    	add.w	r0, r6, #0xc
    865c: ee49 6a0b    	vmla.f32	s13, s18, s22
    8660: 9008         	str	r0, [sp, #0x20]
    8662: ee09 8a2b    	vmla.f32	s16, s18, s23
    8666: 9100         	str	r1, [sp]
    8668: ee68 8ac4    	vnmul.f32	s17, s17, s8
    866c: 69c8         	ldr	r0, [r1, #0x1c]
    866e: ee64 da06    	vmul.f32	s27, s8, s12
    8672: 2100         	movs	r1, #0x0
    8674: ee7d ba02    	vadd.f32	s23, s26, s4
    8678: f04f 0e00    	mov.w	lr, #0x0
    867c: eef1 4a61    	vneg.f32	s9, s3
    8680: f10d 097c    	add.w	r9, sp, #0x7c
    8684: eeb1 9a69    	vneg.f32	s18, s19
    8688: eef0 9a6c    	vmov.f32	s19, s25
    868c: eeb1 2a65    	vneg.f32	s4, s11
    8690: f04f 5b7e    	mov.w	r11, #0x3f800000
    8694: 468a         	mov	r10, r1
    8696: eddf fad2    	vldr	s31, [pc, #840]         @ 0x89e0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb0>
    869a: ed1f ea46    	vldr	s28, [pc, #-280]        @ 0x8584 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x754>
    869e: ed9d aa09    	vldr	s20, [sp, #36]
    86a2: 9001         	str	r0, [sp, #0x4]
    86a4: ee3f 4a20    	vadd.f32	s8, s30, s1
    86a8: 2910         	cmp	r1, #0x10
    86aa: eeb0 5ae6    	vabs.f32	s10, s13
    86ae: f04f 0400    	mov.w	r4, #0x0
    86b2: bf18         	it	ne
    86b4: f10a 0a01    	addne.w	r10, r10, #0x1
    86b8: eeb0 6ac4    	vabs.f32	s12, s8
    86bc: edcd 4a1f    	vstr	s9, [sp, #124]
    86c0: ed8d 4a22    	vstr	s8, [sp, #136]
    86c4: ed9f 0a98    	vldr	s0, [pc, #608]          @ 0x8928 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xaf8>
    86c8: ed8d 3a23    	vstr	s6, [sp, #140]
    86cc: f10d 0c88    	add.w	r12, sp, #0x88
    86d0: eeb4 5a46    	vcmp.f32	s10, s12
    86d4: ed8d 7a24    	vstr	s14, [sp, #144]
    86d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86dc: eeb0 6ae8    	vabs.f32	s12, s17
    86e0: fe36 5a84    	vselgt.f32	s10, s13, s8
    86e4: bfc8         	it	gt
    86e6: 2401         	movgt	r4, #0x1
    86e8: edcd 6a25    	vstr	s13, [sp, #148]
    86ec: eeb0 5ac5    	vabs.f32	s10, s10
    86f0: eeb4 6a45    	vcmp.f32	s12, s10
    86f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86f8: bfc8         	it	gt
    86fa: 2402         	movgt	r4, #0x2
    86fc: ee38 5a20    	vadd.f32	s10, s16, s1
    8700: edcd 8a28    	vstr	s17, [sp, #160]
    8704: ed8d 5a26    	vstr	s10, [sp, #152]
    8708: ee30 5a6d    	vsub.f32	s10, s0, s27
    870c: eb04 0044    	add.w	r0, r4, r4, lsl #1
    8710: edcd 7a27    	vstr	s15, [sp, #156]
    8714: ed8d 5a29    	vstr	s10, [sp, #164]
    8718: ed9f 0aec    	vldr	s0, [pc, #944]          @ 0x8acc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xc9c>
    871c: eb06 0280    	add.w	r2, r6, r0, lsl #2
    8720: edcd ba2a    	vstr	s23, [sp, #168]
    8724: f856 0020    	ldr.w	r0, [r6, r0, lsl #2]
    8728: ed8d 9a20    	vstr	s18, [sp, #128]
    872c: e9d2 3501    	ldrd	r3, r5, [r2, #4]
    8730: e88c 0029    	stm.w	r12, {r0, r3, r5}
    8734: ed82 4a00    	vstr	s8, [r2]
    8738: ed82 3a01    	vstr	s6, [r2, #4]
    873c: ed82 7a02    	vstr	s14, [r2, #8]
    8740: eb09 0284    	add.w	r2, r9, r4, lsl #2
    8744: eddd 1a22    	vldr	s3, [sp, #136]
    8748: ed8d 2a21    	vstr	s4, [sp, #132]
    874c: ee11 0a90    	vmov	r0, s3
    8750: f859 3024    	ldr.w	r3, [r9, r4, lsl #2]
    8754: 931f         	str	r3, [sp, #0x7c]
    8756: edc2 4a00    	vstr	s9, [r2]
    875a: f020 4000    	bic	r0, r0, #0x80000000
    875e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8762: f280 8541    	bge.w	0x91e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0xa82
    8766: eeb0 2ae1    	vabs.f32	s4, s3
    876a: eeb4 2a40    	vcmp.f32	s4, s0
    876e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8772: f100 8539    	bmi.w	0x91e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0xa72
    8776: ed9d 2a28    	vldr	s4, [sp, #160]
    877a: ed9d 3a25    	vldr	s6, [sp, #148]
    877e: ee82 4a21    	vdiv.f32	s8, s4, s3
    8782: ed9d 2a23    	vldr	s4, [sp, #140]
    8786: ee83 5a21    	vdiv.f32	s10, s6, s3
    878a: ed9d 6a29    	vldr	s12, [sp, #164]
    878e: ed9d 7a26    	vldr	s14, [sp, #152]
    8792: ed9d 3a1f    	vldr	s6, [sp, #124]
    8796: ee04 6a42    	vmls.f32	s12, s8, s4
    879a: eddd 2a24    	vldr	s5, [sp, #144]
    879e: ee05 7a42    	vmls.f32	s14, s10, s4
    87a2: eddd 3a27    	vldr	s7, [sp, #156]
    87a6: ee45 3a62    	vmls.f32	s7, s10, s5
    87aa: eddd 4a20    	vldr	s9, [sp, #128]
    87ae: ee45 4a43    	vmls.f32	s9, s10, s6
    87b2: eddd 6a2a    	vldr	s13, [sp, #168]
    87b6: ee44 6a62    	vmls.f32	s13, s8, s5
    87ba: 9d08         	ldr	r5, [sp, #0x20]
    87bc: 462c         	mov	r4, r5
    87be: ed8d 7a26    	vstr	s14, [sp, #152]
    87c2: eeb0 5ac6    	vabs.f32	s10, s12
    87c6: edcd 3a27    	vstr	s7, [sp, #156]
    87ca: eef0 5ac7    	vabs.f32	s11, s14
    87ce: edcd 4a20    	vstr	s9, [sp, #128]
    87d2: ed8d 6a29    	vstr	s12, [sp, #164]
    87d6: 4672         	mov	r2, lr
    87d8: eeb4 5a65    	vcmp.f32	s10, s11
    87dc: ed9d 5a21    	vldr	s10, [sp, #132]
    87e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87e4: bfc8         	it	gt
    87e6: f106 0418    	addgt.w	r4, r6, #0x18
    87ea: edcd 6a2a    	vstr	s13, [sp, #168]
    87ee: f8d5 c000    	ldr.w	r12, [r5]
    87f2: f8d4 8000    	ldr.w	r8, [r4]
    87f6: 6868         	ldr	r0, [r5, #0x4]
    87f8: e9d4 e301    	ldrd	lr, r3, [r4, #4]
    87fc: f8c5 8000    	str.w	r8, [r5]
    8800: ee04 5a43    	vmls.f32	s10, s8, s6
    8804: f8c5 e004    	str.w	lr, [r5, #0x4]
    8808: 4696         	mov	lr, r2
    880a: 68aa         	ldr	r2, [r5, #0x8]
    880c: 60ab         	str	r3, [r5, #0x8]
    880e: e9c4 0201    	strd	r0, r2, [r4, #4]
    8812: ed9d 4a26    	vldr	s8, [sp, #152]
    8816: f04f 0004    	mov.w	r0, #0x4
    881a: ee14 2a10    	vmov	r2, s8
    881e: bfc8         	it	gt
    8820: 2008         	movgt	r0, #0x8
    8822: ed8d 5a21    	vstr	s10, [sp, #132]
    8826: f859 3000    	ldr.w	r3, [r9, r0]
    882a: 4448         	add	r0, r9
    882c: f022 4200    	bic	r2, r2, #0x80000000
    8830: f8c4 c000    	str.w	r12, [r4]
    8834: f1b2 4fff    	cmp.w	r2, #0x7f800000
    8838: 9320         	str	r3, [sp, #0x80]
    883a: edc0 4a00    	vstr	s9, [r0]
    883e: f280 84d3    	bge.w	0x91e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x9a6
    8842: eeb0 5ac4    	vabs.f32	s10, s8
    8846: eeb4 5a40    	vcmp.f32	s10, s0
    884a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    884e: f100 84cb    	bmi.w	0x91e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x996
    8852: ed9d 5a29    	vldr	s10, [sp, #164]
    8856: ed9d 7a2a    	vldr	s14, [sp, #168]
    885a: ee85 6a04    	vdiv.f32	s12, s10, s8
    885e: ed9d 5a27    	vldr	s10, [sp, #156]
    8862: ee06 7a45    	vmls.f32	s14, s12, s10
    8866: ee17 0a10    	vmov	r0, s14
    886a: f020 4000    	bic	r0, r0, #0x80000000
    886e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8872: f280 84b9    	bge.w	0x91e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x972
    8876: eef0 3ac7    	vabs.f32	s7, s14
    887a: eef4 3a40    	vcmp.f32	s7, s0
    887e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8882: f100 84b1    	bmi.w	0x91e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13b8> @ imm = #0x962
    8886: eddd 3a20    	vldr	s7, [sp, #128]
    888a: eddd 4a21    	vldr	s9, [sp, #132]
    888e: ee46 4a63    	vmls.f32	s9, s12, s7
    8892: edcd ea07    	vstr	s29, [sp, #28]
    8896: ed8d aa09    	vstr	s20, [sp, #36]
    889a: ee84 7a87    	vdiv.f32	s14, s9, s14
    889e: ed8d 7a21    	vstr	s14, [sp, #132]
    88a2: ee45 3a47    	vmls.f32	s7, s10, s14
    88a6: ed9d 5a1a    	vldr	s10, [sp, #104]
    88aa: eeb0 5ac5    	vabs.f32	s10, s10
    88ae: eeb4 5a45    	vcmp.f32	s10, s10
    88b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88b6: eec3 6a84    	vdiv.f32	s13, s7, s8
    88ba: ed9f 4ab7    	vldr	s8, [pc, #732]          @ 0x8b98 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd68>
    88be: ee02 3a66    	vmls.f32	s6, s4, s13
    88c2: fe10 2a85    	vselvs.f32	s4, s1, s10
    88c6: ed9f 5ab5    	vldr	s10, [pc, #724]         @ 0x8b9c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd6c>
    88ca: ee02 3ac7    	vmls.f32	s6, s5, s14
    88ce: eeb4 2a60    	vcmp.f32	s4, s1
    88d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88d6: fe32 2a20    	vselgt.f32	s4, s4, s1
    88da: ee83 8a21    	vdiv.f32	s16, s6, s3
    88de: ee22 2a05    	vmul.f32	s4, s4, s10
    88e2: eeb0 6ac8    	vabs.f32	s12, s16
    88e6: fe82 2a44    	vminnm.f32	s4, s4, s8
    88ea: eeb4 6a42    	vcmp.f32	s12, s4
    88ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    88f2: d91d         	bls	0x8930 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb00> @ imm = #0x3a
    88f4: 2400         	movs	r4, #0x0
    88f6: eef0 aa4c    	vmov.f32	s21, s24
    88fa: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    88fe: eddf eaa8    	vldr	s29, [pc, #672]         @ 0x8ba0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    8902: ed9f 0aa8    	vldr	s0, [pc, #672]          @ 0x8ba4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd74>
    8906: eef4 9a40    	vcmp.f32	s19, s0
    890a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    890e: d854         	bhi	0x89ba <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb8a> @ imm = #0xa8
    8910: f1a1 0010    	sub.w	r0, r1, #0x10
    8914: fab0 f080    	clz	r0, r0
    8918: 0940         	lsrs	r0, r0, #0x5
    891a: 4320         	orrs	r0, r4
    891c: d050         	beq	0x89c0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb90> @ imm = #0xa0
    891e: f000 bc4d    	b.w	0x91bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x138c> @ imm = #0x89a
    8922: bf00         	nop
    8924: 2b 18 15 3b  	.word	0x3b15182b
    8928: 79 2e 02 b9  	.word	0xb9022e79
    892c: 00 bf 00 bf  	.word	0xbf00bf00
    8930: ed9d 2a1c    	vldr	s4, [sp, #112]
    8934: eeb0 3ae6    	vabs.f32	s6, s13
    8938: eeb0 2ac2    	vabs.f32	s4, s4
    893c: eef0 aa4c    	vmov.f32	s21, s24
    8940: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    8944: eddf ea96    	vldr	s29, [pc, #600]         @ 0x8ba0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    8948: eeb4 2a42    	vcmp.f32	s4, s4
    894c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8950: fe10 2a82    	vselvs.f32	s4, s1, s4
    8954: eeb4 2a60    	vcmp.f32	s4, s1
    8958: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    895c: fe32 2a20    	vselgt.f32	s4, s4, s1
    8960: ee22 2a05    	vmul.f32	s4, s4, s10
    8964: fe82 2a44    	vminnm.f32	s4, s4, s8
    8968: eeb4 3a42    	vcmp.f32	s6, s4
    896c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8970: d81b         	bhi	0x89aa <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb7a> @ imm = #0x36
    8972: ed9d 0a19    	vldr	s0, [sp, #100]
    8976: eeb0 3ac7    	vabs.f32	s6, s14
    897a: eeb0 2ac0    	vabs.f32	s4, s0
    897e: eeb4 2a42    	vcmp.f32	s4, s4
    8982: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8986: fe10 2a82    	vselvs.f32	s4, s1, s4
    898a: eeb4 2a60    	vcmp.f32	s4, s1
    898e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8992: fe32 2a20    	vselgt.f32	s4, s4, s1
    8996: ee22 2a05    	vmul.f32	s4, s4, s10
    899a: fe82 2a44    	vminnm.f32	s4, s4, s8
    899e: eeb4 3a42    	vcmp.f32	s6, s4
    89a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89a6: f240 83cf    	bls.w	0x9148 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1318> @ imm = #0x79e
    89aa: 2400         	movs	r4, #0x0
    89ac: ed9f 0a7d    	vldr	s0, [pc, #500]          @ 0x8ba4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd74>
    89b0: eef4 9a40    	vcmp.f32	s19, s0
    89b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    89b8: d9aa         	bls	0x8910 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xae0> @ imm = #-0xac
    89ba: 2910         	cmp	r1, #0x10
    89bc: f000 841c    	beq.w	0x91f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13c8> @ imm = #0x838
    89c0: f04f 547e    	mov.w	r4, #0x3f800000
    89c4: ed8d 6a06    	vstr	s12, [sp, #24]
    89c8: edcd 9a0a    	vstr	s19, [sp, #40]
    89cc: e018         	b	0x8a00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbd0> @ imm = #0x30
    89ce: bf00         	nop
    89d0: fc 9d 08 bf  	.word	0xbf089dfc
    89d4: 6f f3 03 be  	.word	0xbe03f36f
    89d8: d5 35 a4 be  	.word	0xbea435d5
    89dc: 0a d7 23 3c  	.word	0x3c23d70a
    89e0: 00 00 00 00  	.word	0x00000000
    89e4: 00 bf 00 bf  	.word	0xbf00bf00
    89e8: eef0 aa4c    	vmov.f32	s21, s24
    89ec: eeff ba00    	vmov.f32	s23, #-1.000000e+00
    89f0: f5a4 0400    	sub.w	r4, r4, #0x800000
    89f4: eddf ea6a    	vldr	s29, [pc, #424]         @ 0x8ba0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd70>
    89f8: f1b4 5f66    	cmp.w	r4, #0x39800000
    89fc: f000 83b0    	beq.w	0x9160 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1330> @ imm = #0x760
    8a00: ee04 4a90    	vmov	s9, r4
    8a04: ed9d aa1a    	vldr	s20, [sp, #104]
    8a08: ed9f 5b67    	vldr	d5, [pc, #412]          @ 0x8ba8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd78>
    8a0c: eddd da13    	vldr	s27, [sp, #76]
    8a10: ed9d ba1c    	vldr	s22, [sp, #112]
    8a14: ee08 aa24    	vmla.f32	s20, s16, s9
    8a18: ed9f 4abf    	vldr	s8, [pc, #764]          @ 0x8d18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xee8>
    8a1c: ed9d 3b14    	vldr	d3, [sp, #80]
    8a20: ee06 baa4    	vmla.f32	s22, s13, s9
    8a24: ed9d 0a17    	vldr	s0, [sp, #92]
    8a28: eeb0 6a6f    	vmov.f32	s12, s31
    8a2c: eeb0 fa6f    	vmov.f32	s30, s31
    8a30: eeb7 2aca    	vcvt.f64.f32	d2, s20
    8a34: ee02 3b05    	vmla.f64	d3, d2, d5
    8a38: ed9f 5ab6    	vldr	s10, [pc, #728]         @ 0x8d14 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xee4>
    8a3c: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    8a40: ee43 da2a    	vmla.f32	s27, s6, s21
    8a44: ed9d 3a12    	vldr	s6, [sp, #72]
    8a48: ee0a 3a04    	vmla.f32	s6, s20, s8
    8a4c: ee0b 3a05    	vmla.f32	s6, s22, s10
    8a50: eeb0 5a6f    	vmov.f32	s10, s31
    8a54: eeb4 1a6d    	vcmp.f32	s2, s27
    8a58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a5c: fe31 4a2d    	vselgt.f32	s8, s2, s27
    8a60: eef0 3ac3    	vabs.f32	s7, s6
    8a64: eeb4 4a40    	vcmp.f32	s8, s0
    8a68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a6c: eeb5 3a40    	vcmp.f32	s6, #0
    8a70: eeb0 3a6f    	vmov.f32	s6, s31
    8a74: fe70 1a04    	vselgt.f32	s3, s0, s8
    8a78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a7c: bf48         	it	mi
    8a7e: eeb0 3a6b    	vmovmi.f32	s6, s23
    8a82: eef4 3a6e    	vcmp.f32	s7, s29
    8a86: fe30 4a83    	vselgt.f32	s8, s1, s6
    8a8a: eeb0 3a6f    	vmov.f32	s6, s31
    8a8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a92: f280 80b9    	bge.w	0x8c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x172
    8a96: eeb0 5a6f    	vmov.f32	s10, s31
    8a9a: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    8a9e: ed9f 0ad7    	vldr	s0, [pc, #860]          @ 0x8dfc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfcc>
    8aa2: eef4 3a40    	vcmp.f32	s7, s0
    8aa6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8aaa: d91b         	bls	0x8ae4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xcb4> @ imm = #0x36
    8aac: ed9f 0ad4    	vldr	s0, [pc, #848]          @ 0x8e00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd0>
    8ab0: eef4 3a40    	vcmp.f32	s7, s0
    8ab4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ab8: d90a         	bls	0x8ad0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xca0> @ imm = #0x14
    8aba: ed9f 0ad2    	vldr	s0, [pc, #840]          @ 0x8e04 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd4>
    8abe: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    8ac2: ee33 5a80    	vadd.f32	s10, s7, s0
    8ac6: ed9f 0ad0    	vldr	s0, [pc, #832]          @ 0x8e08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd8>
    8aca: e007         	b	0x8adc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xcac> @ imm = #0xe
    8acc: 08 e5 3c 1e  	.word	0x1e3ce508
    8ad0: ed9f 0ace    	vldr	s0, [pc, #824]          @ 0x8e0c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfdc>
    8ad4: ee33 5a80    	vadd.f32	s10, s7, s0
    8ad8: ed9f 0acd    	vldr	s0, [pc, #820]          @ 0x8e10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe0>
    8adc: ee05 3a00    	vmla.f32	s6, s10, s0
    8ae0: ee24 5a00    	vmul.f32	s10, s8, s0
    8ae4: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    8ae8: ee30 3a43    	vsub.f32	s6, s0, s6
    8aec: fe83 4a2f    	vmaxnm.f32	s8, s6, s31
    8af0: eeb1 3a45    	vneg.f32	s6, s10
    8af4: eeb5 4a40    	vcmp.f32	s8, #0
    8af8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8afc: d944         	bls	0x8b88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd58> @ imm = #0x88
    8afe: eeb0 5ae1    	vabs.f32	s10, s3
    8b02: eeb4 5a44    	vcmp.f32	s10, s8
    8b06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b0a: d951         	bls	0x8bb0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd80> @ imm = #0xa2
    8b0c: ee84 5a05    	vdiv.f32	s10, s8, s10
    8b10: eef0 5a60    	vmov.f32	s11, s1
    8b14: ee25 6a05    	vmul.f32	s12, s10, s10
    8b18: ee26 6a06    	vmul.f32	s12, s12, s12
    8b1c: ee26 6a06    	vmul.f32	s12, s12, s12
    8b20: ee66 3a06    	vmul.f32	s7, s12, s12
    8b24: ee33 6aa0    	vadd.f32	s12, s7, s1
    8b28: eeb4 6a60    	vcmp.f32	s12, s1
    8b2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b30: d009         	beq	0x8b46 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xd16> @ imm = #0x12
    8b32: eef0 5a46    	vmov.f32	s11, s12
    8b36: eef1 5ae5    	vsqrt.f32	s11, s11
    8b3a: eef1 5ae5    	vsqrt.f32	s11, s11
    8b3e: eef1 5ae5    	vsqrt.f32	s11, s11
    8b42: eef1 5ae5    	vsqrt.f32	s11, s11
    8b46: ee80 9aa5    	vdiv.f32	s18, s1, s11
    8b4a: eef4 1a61    	vcmp.f32	s3, s3
    8b4e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b52: eec9 5a06    	vdiv.f32	s11, s18, s12
    8b56: ed9f 6aaf    	vldr	s12, [pc, #700]         @ 0x8e14 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe4>
    8b5a: eeb0 fa46    	vmov.f32	s30, s12
    8b5e: bf7f         	itttt	vc
    8b60: ee11 0a90    	vmovvc	r0, s3
    8b64: f36b 001e    	bfivc	r0, r11, #0, #31
    8b68: ee0d 0a10    	vmovvc	s26, r0
    8b6c: ee2d 4a04    	vmulvc.f32	s8, s26, s8
    8b70: bf7c         	itt	vc
    8b72: ee24 6a09    	vmulvc.f32	s12, s8, s18
    8b76: ee2d fa25    	vmulvc.f32	s30, s26, s11
    8b7a: ee25 4a23    	vmul.f32	s8, s10, s7
    8b7e: ee24 5a25    	vmul.f32	s10, s8, s11
    8b82: e041         	b	0x8c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x82
    8b84: bf00         	nop
    8b86: bf00         	nop
    8b88: eeb0 6a6f    	vmov.f32	s12, s31
    8b8c: eeb0 5a6f    	vmov.f32	s10, s31
    8b90: eeb0 fa6f    	vmov.f32	s30, s31
    8b94: e038         	b	0x8c08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdd8> @ imm = #0x70
    8b96: bf00         	nop
    8b98: ac c5 a7 37  	.word	0x37a7c5ac
    8b9c: bd 37 06 36  	.word	0x360637bd
    8ba0: 0a d7 23 3d  	.word	0x3d23d70a
    8ba4: 17 b7 d1 38  	.word	0x38d1b717
    8ba8: 1c 38 88 77  	.word	0x7788381c
    8bac: bf 13 e1 bf  	.word	0xbfe113bf
    8bb0: ee81 5a84    	vdiv.f32	s10, s3, s8
    8bb4: eef0 3a60    	vmov.f32	s7, s1
    8bb8: ee25 5a05    	vmul.f32	s10, s10, s10
    8bbc: ee25 5a05    	vmul.f32	s10, s10, s10
    8bc0: ee25 5a05    	vmul.f32	s10, s10, s10
    8bc4: ee25 5a05    	vmul.f32	s10, s10, s10
    8bc8: ee35 6a20    	vadd.f32	s12, s10, s1
    8bcc: eeb4 6a60    	vcmp.f32	s12, s1
    8bd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8bd4: d009         	beq	0x8bea <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xdba> @ imm = #0x12
    8bd6: eef0 3a46    	vmov.f32	s7, s12
    8bda: eef1 3ae3    	vsqrt.f32	s7, s7
    8bde: eef1 3ae3    	vsqrt.f32	s7, s7
    8be2: eef1 3ae3    	vsqrt.f32	s7, s7
    8be6: eef1 3ae3    	vsqrt.f32	s7, s7
    8bea: eec0 3aa3    	vdiv.f32	s7, s1, s7
    8bee: ee61 5a85    	vmul.f32	s11, s3, s10
    8bf2: ee83 5a86    	vdiv.f32	s10, s7, s12
    8bf6: ee85 4a84    	vdiv.f32	s8, s11, s8
    8bfa: ee21 6aa3    	vmul.f32	s12, s3, s7
    8bfe: ee24 fa05    	vmul.f32	s30, s8, s10
    8c02: bf00         	nop
    8c04: bf00         	nop
    8c06: bf00         	nop
    8c08: ee3a da46    	vsub.f32	s26, s20, s12
    8c0c: eddd 3a19    	vldr	s7, [sp, #100]
    8c10: ee47 3a24    	vmla.f32	s7, s14, s9
    8c14: eddf cad5    	vldr	s25, [pc, #852]         @ 0x8f6c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x113c>
    8c18: ee1d 0a10    	vmov	r0, s26
    8c1c: f020 4000    	bic	r0, r0, #0x80000000
    8c20: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8c24: da07         	bge	0x8c36 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xe06> @ imm = #0xe
    8c26: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    8c2a: ee8d 4a00    	vdiv.f32	s8, s26, s0
    8c2e: eeb0 4ac4    	vabs.f32	s8, s8
    8c32: fec4 ca2f    	vmaxnm.f32	s25, s8, s31
    8c36: ed9f 0b68    	vldr	d0, [pc, #416]          @ 0x8dd8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfa8>
    8c3a: eeb7 9acb    	vcvt.f64.f32	d9, s22
    8c3e: eddd 8a0f    	vldr	s17, [sp, #60]
    8c42: ed9d 4b10    	vldr	d4, [sp, #64]
    8c46: eeb0 ca6a    	vmov.f32	s24, s21
    8c4a: eeb0 6a6f    	vmov.f32	s12, s31
    8c4e: ee02 4b00    	vmla.f64	d4, d2, d0
    8c52: ed9f 0b63    	vldr	d0, [pc, #396]          @ 0x8de0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfb0>
    8c56: ee09 4b00    	vmla.f64	d4, d9, d0
    8c5a: ed9f 0ac5    	vldr	s0, [pc, #788]          @ 0x8f70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1140>
    8c5e: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    8c62: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    8c66: ed9f 4a64    	vldr	s8, [pc, #400]          @ 0x8df8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfc8>
    8c6a: eef0 4a6f    	vmov.f32	s9, s31
    8c6e: ee42 8a2a    	vmla.f32	s17, s4, s21
    8c72: ed9d 2a0e    	vldr	s4, [sp, #56]
    8c76: ee0a 2a04    	vmla.f32	s4, s20, s8
    8c7a: ed9f 4abe    	vldr	s8, [pc, #760]          @ 0x8f74 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1144>
    8c7e: ee63 2a84    	vmul.f32	s5, s7, s8
    8c82: ee0b 2a00    	vmla.f32	s4, s22, s0
    8c86: ed9d 0a16    	vldr	s0, [sp, #88]
    8c8a: eeb4 0a68    	vcmp.f32	s0, s17
    8c8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8c92: fe30 4a28    	vselgt.f32	s8, s0, s17
    8c96: ed9d 0a18    	vldr	s0, [sp, #96]
    8c9a: ee32 2a22    	vadd.f32	s4, s4, s5
    8c9e: eeb4 4a40    	vcmp.f32	s8, s0
    8ca2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ca6: eeb5 2a40    	vcmp.f32	s4, #0
    8caa: eef0 5ac2    	vabs.f32	s11, s4
    8cae: eeb0 2a6f    	vmov.f32	s4, s31
    8cb2: fe70 aa04    	vselgt.f32	s21, s0, s8
    8cb6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cba: bf48         	it	mi
    8cbc: eeb0 2a6b    	vmovmi.f32	s4, s23
    8cc0: eef0 ba6f    	vmov.f32	s23, s31
    8cc4: eef4 5a6e    	vcmp.f32	s11, s29
    8cc8: fe30 4a82    	vselgt.f32	s8, s1, s4
    8ccc: eeb0 2a6f    	vmov.f32	s4, s31
    8cd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cd4: eddf eaa8    	vldr	s29, [pc, #672]         @ 0x8f78 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1148>
    8cd8: f280 80ca    	bge.w	0x8e70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x194
    8cdc: eeb0 6a6f    	vmov.f32	s12, s31
    8ce0: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    8ce4: ed9f 0a45    	vldr	s0, [pc, #276]          @ 0x8dfc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfcc>
    8ce8: eef4 5a40    	vcmp.f32	s11, s0
    8cec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cf0: d920         	bls	0x8d34 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xf04> @ imm = #0x40
    8cf2: ed9f 0a43    	vldr	s0, [pc, #268]          @ 0x8e00 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd0>
    8cf6: eef4 5a40    	vcmp.f32	s11, s0
    8cfa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cfe: d90f         	bls	0x8d20 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xef0> @ imm = #0x1e
    8d00: ed9f 0a40    	vldr	s0, [pc, #256]          @ 0x8e04 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd4>
    8d04: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    8d08: ee35 6a80    	vadd.f32	s12, s11, s0
    8d0c: ed9f 0a3e    	vldr	s0, [pc, #248]          @ 0x8e08 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfd8>
    8d10: e00c         	b	0x8d2c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xefc> @ imm = #0x18
    8d12: bf00         	nop
    8d14: d6 f8 e4 36  	.word	0x36e4f8d6
    8d18: 83 c0 96 b8  	.word	0xb896c083
    8d1c: 00 bf 00 bf  	.word	0xbf00bf00
    8d20: ed9f 0a3a    	vldr	s0, [pc, #232]          @ 0x8e0c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfdc>
    8d24: ee35 6a80    	vadd.f32	s12, s11, s0
    8d28: ed9f 0a39    	vldr	s0, [pc, #228]          @ 0x8e10 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe0>
    8d2c: ee06 2a00    	vmla.f32	s4, s12, s0
    8d30: ee24 6a00    	vmul.f32	s12, s8, s0
    8d34: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    8d38: eef1 ba46    	vneg.f32	s23, s12
    8d3c: ee30 2a42    	vsub.f32	s4, s0, s4
    8d40: fe82 4a2f    	vmaxnm.f32	s8, s4, s31
    8d44: eeb5 4a40    	vcmp.f32	s8, #0
    8d48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d4c: d94c         	bls	0x8de8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfb8> @ imm = #0x98
    8d4e: eeb0 2aea    	vabs.f32	s4, s21
    8d52: eeb4 2a44    	vcmp.f32	s4, s8
    8d56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d5a: d95d         	bls	0x8e18 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe8> @ imm = #0xba
    8d5c: ee84 2a02    	vdiv.f32	s4, s8, s4
    8d60: eef0 4a60    	vmov.f32	s9, s1
    8d64: ee22 6a02    	vmul.f32	s12, s4, s4
    8d68: ee26 6a06    	vmul.f32	s12, s12, s12
    8d6c: ee26 6a06    	vmul.f32	s12, s12, s12
    8d70: ee66 5a06    	vmul.f32	s11, s12, s12
    8d74: ee35 6aa0    	vadd.f32	s12, s11, s1
    8d78: eeb4 6a60    	vcmp.f32	s12, s1
    8d7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d80: d009         	beq	0x8d96 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xf66> @ imm = #0x12
    8d82: eef0 4a46    	vmov.f32	s9, s12
    8d86: eef1 4ae4    	vsqrt.f32	s9, s9
    8d8a: eef1 4ae4    	vsqrt.f32	s9, s9
    8d8e: eef1 4ae4    	vsqrt.f32	s9, s9
    8d92: eef1 4ae4    	vsqrt.f32	s9, s9
    8d96: eec0 9aa4    	vdiv.f32	s19, s1, s9
    8d9a: ee22 2a25    	vmul.f32	s4, s4, s11
    8d9e: eef4 aa6a    	vcmp.f32	s21, s21
    8da2: ee89 9a86    	vdiv.f32	s18, s19, s12
    8da6: ed9f 6a1b    	vldr	s12, [pc, #108]         @ 0x8e14 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xfe4>
    8daa: eef0 4a46    	vmov.f32	s9, s12
    8dae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8db2: bf7f         	itttt	vc
    8db4: ee1a 0a90    	vmovvc	r0, s21
    8db8: f36b 001e    	bfivc	r0, r11, #0, #31
    8dbc: ee04 0a90    	vmovvc	s9, r0
    8dc0: ee24 4a84    	vmulvc.f32	s8, s9, s8
    8dc4: bf7c         	itt	vc
    8dc6: ee24 6a29    	vmulvc.f32	s12, s8, s19
    8dca: ee64 4a89    	vmulvc.f32	s9, s9, s18
    8dce: ee22 2a09    	vmul.f32	s4, s4, s18
    8dd2: e04d         	b	0x8e70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x9a
    8dd4: bf00         	nop
    8dd6: bf00         	nop
    8dd8: 15 be b6 e5  	.word	0xe5b6be15
    8ddc: 6d 7e c0 bf  	.word	0xbfc07e6d
    8de0: 67 42 87 92  	.word	0x92874267
    8de4: ba 86 d4 bf  	.word	0xbfd486ba
    8de8: eeb0 6a6f    	vmov.f32	s12, s31
    8dec: eeb0 2a6f    	vmov.f32	s4, s31
    8df0: eef0 4a6f    	vmov.f32	s9, s31
    8df4: e03c         	b	0x8e70 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1040> @ imm = #0x78
    8df6: bf00         	nop
    8df8: d6 f8 e4 36  	.word	0x36e4f8d6
    8dfc: 7c f2 b0 3a  	.word	0x3ab0f27c
    8e00: a6 9b c4 3b  	.word	0x3bc49ba6
    8e04: a6 9b c4 bb  	.word	0xbbc49ba6
    8e08: 79 78 b0 43  	.word	0x43b07879
    8e0c: 7c f2 b0 ba  	.word	0xbab0f27c
    8e10: 53 4a a1 43  	.word	0x43a14a53
    8e14: 00 00 c0 7f  	.word	0x7fc00000
    8e18: ee8a 2a84    	vdiv.f32	s4, s21, s8
    8e1c: eef0 4a60    	vmov.f32	s9, s1
    8e20: ee22 2a02    	vmul.f32	s4, s4, s4
    8e24: ee22 2a02    	vmul.f32	s4, s4, s4
    8e28: ee22 2a02    	vmul.f32	s4, s4, s4
    8e2c: ee22 2a02    	vmul.f32	s4, s4, s4
    8e30: ee32 6a20    	vadd.f32	s12, s4, s1
    8e34: eeb4 6a60    	vcmp.f32	s12, s1
    8e38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e3c: d009         	beq	0x8e52 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1022> @ imm = #0x12
    8e3e: eef0 4a46    	vmov.f32	s9, s12
    8e42: eef1 4ae4    	vsqrt.f32	s9, s9
    8e46: eef1 4ae4    	vsqrt.f32	s9, s9
    8e4a: eef1 4ae4    	vsqrt.f32	s9, s9
    8e4e: eef1 4ae4    	vsqrt.f32	s9, s9
    8e52: eec0 4aa4    	vdiv.f32	s9, s1, s9
    8e56: ee6a 5a82    	vmul.f32	s11, s21, s4
    8e5a: ee84 2a86    	vdiv.f32	s4, s9, s12
    8e5e: ee85 4a84    	vdiv.f32	s8, s11, s8
    8e62: ee2a 6aa4    	vmul.f32	s12, s21, s9
    8e66: ee64 4a02    	vmul.f32	s9, s8, s4
    8e6a: bf00         	nop
    8e6c: bf00         	nop
    8e6e: bf00         	nop
    8e70: ee3b 9a46    	vsub.f32	s18, s22, s12
    8e74: eddf 9a3d    	vldr	s19, [pc, #244]         @ 0x8f6c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x113c>
    8e78: ee19 0a10    	vmov	r0, s18
    8e7c: f020 4000    	bic	r0, r0, #0x80000000
    8e80: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8e84: da17         	bge	0x8eb6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1086> @ imm = #0x2e
    8e86: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    8e8a: eef4 ca6c    	vcmp.f32	s25, s25
    8e8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e92: ee89 4a00    	vdiv.f32	s8, s18, s0
    8e96: eeb0 4ac4    	vabs.f32	s8, s8
    8e9a: fe14 6a2c    	vselvs.f32	s12, s8, s25
    8e9e: eeb4 4a44    	vcmp.f32	s8, s8
    8ea2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ea6: fe16 4a04    	vselvs.f32	s8, s12, s8
    8eaa: eeb4 6a44    	vcmp.f32	s12, s8
    8eae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8eb2: fe76 9a04    	vselgt.f32	s19, s12, s8
    8eb6: eddf 5aef    	vldr	s11, [pc, #956]         @ 0x9274 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1444>
    8eba: ed9d 0a0c    	vldr	s0, [sp, #48]
    8ebe: ee2b 6a25    	vmul.f32	s12, s22, s11
    8ec2: ee36 4a00    	vadd.f32	s8, s12, s0
    8ec6: ed9f 0aec    	vldr	s0, [pc, #944]          @ 0x9278 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1448>
    8eca: ee03 4a80    	vmla.f32	s8, s7, s0
    8ece: ed9d 0a0b    	vldr	s0, [sp, #44]
    8ed2: ee36 6a00    	vadd.f32	s12, s12, s0
    8ed6: eeb6 0a00    	vmov.f32	s0, #5.000000e-01
    8eda: ee03 6ae5    	vmls.f32	s12, s7, s11
    8ede: fec4 5a46    	vminnm.f32	s11, s8, s12
    8ee2: ee70 ca65    	vsub.f32	s25, s0, s11
    8ee6: eef8 5a00    	vmov.f32	s11, #-2.000000e+00
    8eea: eef4 ca65    	vcmp.f32	s25, s11
    8eee: eef0 5a6e    	vmov.f32	s11, s29
    8ef2: eef0 ea6f    	vmov.f32	s29, s31
    8ef6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8efa: d945         	bls	0x8f88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1158> @ imm = #0x8a
    8efc: eef4 ca6c    	vcmp.f32	s25, s25
    8f00: eef0 ea6f    	vmov.f32	s29, s31
    8f04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f08: eef0 7a4e    	vmov.f32	s15, s28
    8f0c: fe5f 5aac    	vselvs.f32	s11, s31, s25
    8f10: eef5 5a40    	vcmp.f32	s11, #0
    8f14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f18: bfb8         	it	lt
    8f1a: eef0 ea65    	vmovlt.f32	s29, s11
    8f1e: eef0 5a60    	vmov.f32	s11, s1
    8f22: eef5 ca40    	vcmp.f32	s25, #0
    8f26: ee4e 5a80    	vmla.f32	s11, s29, s0
    8f2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f2e: ee65 5a8e    	vmul.f32	s11, s11, s28
    8f32: ed9f ead2    	vldr	s28, [pc, #840]         @ 0x927c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x144c>
    8f36: fec5 5a8e    	vmaxnm.f32	s11, s11, s28
    8f3a: d511         	bpl	0x8f60 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1130> @ imm = #0x22
    8f3c: eef0 ea60    	vmov.f32	s29, s1
    8f40: ee4c ea80    	vmla.f32	s29, s25, s0
    8f44: eeb0 0a67    	vmov.f32	s0, s15
    8f48: ee6e caa7    	vmul.f32	s25, s29, s15
    8f4c: eef4 ca4e    	vcmp.f32	s25, s28
    8f50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f54: dd14         	ble	0x8f80 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1150> @ imm = #0x28
    8f56: eddf eaca    	vldr	s29, [pc, #808]         @ 0x9280 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1450>
    8f5a: e013         	b	0x8f84 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1154> @ imm = #0x26
    8f5c: bf00         	nop
    8f5e: bf00         	nop
    8f60: eef0 ea6f    	vmov.f32	s29, s31
    8f64: eeb0 ea67    	vmov.f32	s28, s15
    8f68: e00e         	b	0x8f88 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1158> @ imm = #0x1c
    8f6a: bf00         	nop
    8f6c: 00 00 80 7f  	.word	0x7f800000
    8f70: af e6 27 b9  	.word	0xb927e6af
    8f74: 79 2e 02 39  	.word	0x39022e79
    8f78: 95 bf d6 33  	.word	0x33d6bf95
    8f7c: 00 bf 00 bf  	.word	0xbf00bf00
    8f80: eef0 ea6f    	vmov.f32	s29, s31
    8f84: eeb0 ea40    	vmov.f32	s28, s0
    8f88: ed9f 0ab6    	vldr	s0, [pc, #728]          @ 0x9264 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1434>
    8f8c: eddd ca0d    	vldr	s25, [sp, #52]
    8f90: ee4b ca00    	vmla.f32	s25, s22, s0
    8f94: ee7c cae2    	vsub.f32	s25, s25, s5
    8f98: ee53 caa5    	vnmls.f32	s25, s7, s11
    8f9c: ee1c 0a90    	vmov	r0, s25
    8fa0: f020 4000    	bic	r0, r0, #0x80000000
    8fa4: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8fa8: f6bf ad1e    	bge.w	0x89e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb8> @ imm = #-0x5c4
    8fac: ed9f 0ab5    	vldr	s0, [pc, #724]          @ 0x9284 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1454>
    8fb0: eef4 9a69    	vcmp.f32	s19, s19
    8fb4: eecc 2a80    	vdiv.f32	s5, s25, s0
    8fb8: ed9d 0a0a    	vldr	s0, [sp, #40]
    8fbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8fc0: eef0 2ae2    	vabs.f32	s5, s5
    8fc4: fe52 9aa9    	vselvs.f32	s19, s5, s19
    8fc8: eef4 2a62    	vcmp.f32	s5, s5
    8fcc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8fd0: fe59 2aa2    	vselvs.f32	s5, s19, s5
    8fd4: eef4 9a62    	vcmp.f32	s19, s5
    8fd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8fdc: fe79 9aa2    	vselgt.f32	s19, s19, s5
    8fe0: eef4 9a40    	vcmp.f32	s19, s0
    8fe4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8fe8: f57f acfe    	bpl.w	0x89e8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xbb8> @ imm = #-0x604
    8fec: ed9d 0a17    	vldr	s0, [sp, #92]
    8ff0: eddf 2a98    	vldr	s5, [pc, #608]          @ 0x9254 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1424>
    8ff4: eeb4 0a6d    	vcmp.f32	s0, s27
    8ff8: eddf 6a97    	vldr	s13, [pc, #604]         @ 0x9258 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1428>
    8ffc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9000: eef4 da41    	vcmp.f32	s27, s2
    9004: ed9d 0a18    	vldr	s0, [sp, #96]
    9008: fe32 7aa6    	vselgt.f32	s14, s5, s13
    900c: f44f 7050    	mov.w	r0, #0x340
    9010: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9014: eeb4 0a68    	vcmp.f32	s0, s17
    9018: ed9d 0a16    	vldr	s0, [sp, #88]
    901c: fe37 7a26    	vselgt.f32	s14, s14, s13
    9020: f24f 6208    	movw	r2, #0xf608
    9024: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9028: eef4 8a40    	vcmp.f32	s17, s0
    902c: f2c0 0200    	movt	r2, #0x0
    9030: fe72 2aa6    	vselgt.f32	s5, s5, s13
    9034: f04f 5b7e    	mov.w	r11, #0x3f800000
    9038: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    903c: eeb4 4a46    	vcmp.f32	s8, s12
    9040: fe32 4aa6    	vselgt.f32	s8, s5, s13
    9044: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9048: bf88         	it	hi
    904a: f44f 7060    	movhi.w	r0, #0x380
    904e: 2910         	cmp	r1, #0x10
    9050: eddd 2a03    	vldr	s5, [sp, #12]
    9054: 4410         	add	r0, r2
    9056: 9a00         	ldr	r2, [sp]
    9058: ed90 6b08    	vldr	d6, [r0, #32]
    905c: edc2 2a02    	vstr	s5, [r2, #8]
    9060: eddd 2a02    	vldr	s5, [sp, #8]
    9064: ed8d 6b1a    	vstr	d6, [sp, #104]
    9068: edc2 2a03    	vstr	s5, [r2, #12]
    906c: ed90 6b0a    	vldr	d6, [r0, #40]
    9070: ed82 aa04    	vstr	s20, [r2, #16]
    9074: ed8d 6b1c    	vstr	d6, [sp, #112]
    9078: ed82 ba05    	vstr	s22, [r2, #20]
    907c: ed90 6b0c    	vldr	d6, [r0, #48]
    9080: edc2 3a06    	vstr	s7, [r2, #24]
    9084: 9801         	ldr	r0, [sp, #0x4]
    9086: 61d0         	str	r0, [r2, #0x1c]
    9088: f000 80c6    	beq.w	0x9218 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13e8> @ imm = #0x18c
    908c: ee27 5a05    	vmul.f32	s10, s14, s10
    9090: ed9f 0a72    	vldr	s0, [pc, #456]          @ 0x925c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x142c>
    9094: ee63 2a0f    	vmul.f32	s5, s6, s30
    9098: eddf 8a6c    	vldr	s17, [pc, #432]         @ 0x924c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x141c>
    909c: eeb7 6bc6    	vcvt.f32.f64	s12, d6
    90a0: f1ba 0f10    	cmp.w	r10, #0x10
    90a4: ee25 3a2f    	vmul.f32	s6, s10, s31
    90a8: f10e 0e01    	add.w	lr, lr, #0x1
    90ac: ee22 fa80    	vmul.f32	s30, s5, s0
    90b0: ed9f 0a6b    	vldr	s0, [pc, #428]          @ 0x9260 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1430>
    90b4: ee05 fa00    	vmla.f32	s30, s10, s0
    90b8: ed9f 5a67    	vldr	s10, [pc, #412]         @ 0x9258 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1428>
    90bc: eeb0 7a43    	vmov.f32	s14, s6
    90c0: ee02 7a85    	vmla.f32	s14, s5, s10
    90c4: ee23 5aae    	vmul.f32	s10, s7, s29
    90c8: ed9f 0a66    	vldr	s0, [pc, #408]          @ 0x9264 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1434>
    90cc: ee6b 4aa4    	vmul.f32	s9, s23, s9
    90d0: eef0 ea6a    	vmov.f32	s29, s21
    90d4: ee24 2a02    	vmul.f32	s4, s8, s4
    90d8: eeb0 4a40    	vmov.f32	s8, s0
    90dc: ee05 4a46    	vmls.f32	s8, s10, s12
    90e0: ed9f 6a62    	vldr	s12, [pc, #392]         @ 0x926c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x143c>
    90e4: ee24 8a86    	vmul.f32	s16, s9, s12
    90e8: ed9f 6a61    	vldr	s12, [pc, #388]         @ 0x9270 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1440>
    90ec: ee02 8a06    	vmla.f32	s16, s4, s12
    90f0: ed9f 6a5d    	vldr	s12, [pc, #372]         @ 0x9268 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1438>
    90f4: ee02 3ae8    	vmls.f32	s6, s5, s17
    90f8: 4651         	mov	r1, r10
    90fa: ee62 7a2f    	vmul.f32	s15, s4, s31
    90fe: edcd 3a19    	vstr	s7, [sp, #100]
    9102: ee62 6a06    	vmul.f32	s13, s4, s12
    9106: ed9d 2b1a    	vldr	d2, [sp, #104]
    910a: ee44 6ae8    	vmls.f32	s13, s9, s17
    910e: ed8d aa1a    	vstr	s20, [sp, #104]
    9112: eef7 bbc2    	vcvt.f32.f64	s23, d2
    9116: ee44 7ac0    	vmls.f32	s15, s9, s0
    911a: eeb0 aa61    	vmov.f32	s20, s3
    911e: ed9d 2b1c    	vldr	d2, [sp, #112]
    9122: ee6b 8ac5    	vnmul.f32	s17, s23, s10
    9126: ed8d ba1c    	vstr	s22, [sp, #112]
    912a: eeb7 6bc2    	vcvt.f32.f64	s12, d2
    912e: ee75 ba84    	vadd.f32	s23, s11, s8
    9132: eef1 4a4d    	vneg.f32	s9, s26
    9136: ee65 da06    	vmul.f32	s27, s10, s12
    913a: eeb1 9a49    	vneg.f32	s18, s18
    913e: eeb1 2a6c    	vneg.f32	s4, s25
    9142: f77f aaaf    	ble.w	0x86a4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x874> @ imm = #-0xaa2
    9146: e067         	b	0x9218 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13e8> @ imm = #0xce
    9148: 2401         	movs	r4, #0x1
    914a: ed9f 0a50    	vldr	s0, [pc, #320]          @ 0x928c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x145c>
    914e: eef4 9a40    	vcmp.f32	s19, s0
    9152: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9156: f63f ac30    	bhi.w	0x89ba <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xb8a> @ imm = #-0x7a0
    915a: f7ff bbd9    	b.w	0x8910 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0xae0> @ imm = #-0x84e
    915e: bf00         	nop
    9160: eddd 9a0a    	vldr	s19, [sp, #40]
    9164: ed9f 0a49    	vldr	s0, [pc, #292]          @ 0x928c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x145c>
    9168: eef4 9a40    	vcmp.f32	s19, s0
    916c: 2000         	movs	r0, #0x0
    916e: eeb0 0ae6    	vabs.f32	s0, s13
    9172: ed9f 1a45    	vldr	s2, [pc, #276]          @ 0x9288 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1458>
    9176: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    917a: bf98         	it	ls
    917c: 2001         	movls	r0, #0x1
    917e: ed9d 2a06    	vldr	s4, [sp, #24]
    9182: 2200         	movs	r2, #0x0
    9184: eeb4 2a41    	vcmp.f32	s4, s2
    9188: 2100         	movs	r1, #0x0
    918a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    918e: bf98         	it	ls
    9190: 2201         	movls	r2, #0x1
    9192: eeb4 0a41    	vcmp.f32	s0, s2
    9196: f10e 0e01    	add.w	lr, lr, #0x1
    919a: eeb0 0ac7    	vabs.f32	s0, s14
    919e: 4010         	ands	r0, r2
    91a0: 2200         	movs	r2, #0x0
    91a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91a6: bf98         	it	ls
    91a8: 2201         	movls	r2, #0x1
    91aa: eeb4 0a41    	vcmp.f32	s0, s2
    91ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    91b2: bf98         	it	ls
    91b4: 2101         	movls	r1, #0x1
    91b6: 4010         	ands	r0, r2
    91b8: ea00 0401    	and.w	r4, r0, r1
    91bc: 9804         	ldr	r0, [sp, #0x10]
    91be: ed9d 0a09    	vldr	s0, [sp, #36]
    91c2: ed80 0a02    	vstr	s0, [r0, #8]
    91c6: ed9d 0a07    	vldr	s0, [sp, #28]
    91ca: ed80 0a03    	vstr	s0, [r0, #12]
    91ce: 9805         	ldr	r0, [sp, #0x14]
    91d0: edc0 9a00    	vstr	s19, [r0]
    91d4: f880 e004    	strb.w	lr, [r0, #0x4]
    91d8: 7144         	strb	r4, [r0, #0x5]
    91da: b02e         	add	sp, #0xb8
    91dc: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    91e0: b001         	add	sp, #0x4
    91e2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    91e6: bdf0         	pop	{r4, r5, r6, r7, pc}
    91e8: 9905         	ldr	r1, [sp, #0x14]
    91ea: 2000         	movs	r0, #0x0
    91ec: edc1 9a00    	vstr	s19, [r1]
    91f0: f881 e004    	strb.w	lr, [r1, #0x4]
    91f4: 7148         	strb	r0, [r1, #0x5]
    91f6: e7f0         	b	0x91da <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x13aa> @ imm = #-0x20
    91f8: 2400         	movs	r4, #0x0
    91fa: e7df         	b	0x91bc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x138c> @ imm = #-0x42
    91fc: bf00         	nop
    91fe: bf00         	nop
    9200: f24c 304e    	movw	r0, #0xc34e
    9204: f64f 12d8    	movw	r2, #0xf9d8
    9208: f2c0 0000    	movt	r0, #0x0
    920c: f2c0 0200    	movt	r2, #0x0
    9210: a922         	add	r1, sp, #0x88
    9212: f001 f8a9    	bl	0xa368 <core::panicking::panic_fmt> @ imm = #0x1152
    9216: bf00         	nop
    9218: f24f 50e0    	movw	r0, #0xf5e0
    921c: f64f 12c8    	movw	r2, #0xf9c8
    9220: f2c0 0000    	movt	r0, #0x0
    9224: f2c0 0200    	movt	r2, #0x0
    9228: 2128         	movs	r1, #0x28
    922a: f001 f8a1    	bl	0xa370 <core::panicking::panic> @ imm = #0x1142
    922e: bf00         	nop
    9230: eddf 2a07    	vldr	s5, [pc, #28]           @ 0x9250 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1420>
    9234: eeb0 6a62    	vmov.f32	s12, s5
    9238: f7fe bf15    	b.w	0x8066 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x236> @ imm = #-0x11d6
    923c: bf00         	nop
    923e: bf00         	nop
    9240: ed9f 5a03    	vldr	s10, [pc, #12]          @ 0x9250 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x1420>
    9244: eeb0 4a45    	vmov.f32	s8, s10
    9248: f7ff b88d    	b.w	0x8366 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 3, 5>+0x536> @ imm = #-0xee6
    924c: d6 f8 e4 36  	.word	0x36e4f8d6
    9250: 00 00 c0 7f  	.word	0x7fc00000
    9254: 79 61 2e c3  	.word	0xc32e6179
    9258: 00 00 00 80  	.word	0x80000000
    925c: 83 c0 96 38  	.word	0x3896c083
    9260: fc 9d 08 bf  	.word	0xbf089dfc
    9264: 79 2e 02 39  	.word	0x39022e79
    9268: 6f f3 03 be  	.word	0xbe03f36f
    926c: af e6 27 39  	.word	0x3927e6af
    9270: d5 35 a4 be  	.word	0xbea435d5
    9274: 51 e6 7f 3f  	.word	0x3f7fe651
    9278: 99 76 cd 39  	.word	0x39cd7699
    927c: 95 bf d6 33  	.word	0x33d6bf95
    9280: 2b 18 15 3b  	.word	0x3b15182b
    9284: 0a d7 23 3c  	.word	0x3c23d70a
    9288: ac c5 a7 37  	.word	0x37a7c5ac
    928c: 17 b7 d1 38  	.word	0x38d1b717

00009290 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>>:
    9290: b5f0         	push	{r4, r5, r6, r7, lr}
    9292: af03         	add	r7, sp, #0xc
    9294: e92d 0f00    	push.w	{r8, r9, r10, r11}
    9298: b081         	sub	sp, #0x4
    929a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    929e: b08a         	sub	sp, #0x28
    92a0: ed9f 3aed    	vldr	s6, [pc, #948]          @ 0x9658 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3c8>
    92a4: ee22 2a03    	vmul.f32	s4, s4, s6
    92a8: ed9f 3aec    	vldr	s6, [pc, #944]          @ 0x965c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3cc>
    92ac: ed9f 4aed    	vldr	s8, [pc, #948]          @ 0x9664 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d4>
    92b0: ed9f 5aeb    	vldr	s10, [pc, #940]         @ 0x9660 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d0>
    92b4: ee32 3a03    	vadd.f32	s6, s4, s6
    92b8: ee32 4a04    	vadd.f32	s8, s4, s8
    92bc: ee83 ba05    	vdiv.f32	s22, s6, s10
    92c0: ee84 ca05    	vdiv.f32	s24, s8, s10
    92c4: eeb4 ba4c    	vcmp.f32	s22, s24
    92c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    92cc: f200 81b0    	bhi.w	0x9630 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3a0> @ imm = #0x360
    92d0: eeb0 8b41    	vmov.f64	d8, d1
    92d4: 4681         	mov	r9, r0
    92d6: ed91 1a05    	vldr	s2, [r1, #20]
    92da: a806         	add	r0, sp, #0x18
    92dc: ed91 4a06    	vldr	s8, [r1, #24]
    92e0: ed8d 1a02    	vstr	s2, [sp, #8]
    92e4: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    92e8: ed8d 4a01    	vstr	s8, [sp, #4]
    92ec: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    92f0: ed91 ea07    	vldr	s28, [r1, #28]
    92f4: ed9f 3bd4    	vldr	d3, [pc, #848]          @ 0x9648 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3b8>
    92f8: eddf aadd    	vldr	s21, [pc, #884]         @ 0x9670 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3e0>
    92fc: 4614         	mov	r4, r2
    92fe: ee01 8b03    	vmla.f64	d8, d1, d3
    9302: 460e         	mov	r6, r1
    9304: eeb7 1ace    	vcvt.f64.f32	d1, s28
    9308: ed9f dad7    	vldr	s26, [pc, #860]         @ 0x9668 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d8>
    930c: ee04 8b43    	vmls.f64	d8, d4, d3
    9310: ed9f fbcf    	vldr	d15, [pc, #828]         @ 0x9650 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3c0>
    9314: eeb0 3b48    	vmov.f64	d3, d8
    9318: ee01 3b0f    	vmla.f64	d3, d1, d15
    931c: ed9f 1ad3    	vldr	s2, [pc, #844]          @ 0x966c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3dc>
    9320: ee62 ca01    	vmul.f32	s25, s4, s2
    9324: eeb7 1bc3    	vcvt.f32.f64	s2, d3
    9328: eeb0 9a6c    	vmov.f32	s18, s25
    932c: ee01 9a2a    	vmla.f32	s18, s2, s21
    9330: eef7 bbc0    	vcvt.f32.f64	s23, d0
    9334: eef0 0a6b    	vmov.f32	s1, s23
    9338: ee4e 0a4d    	vmls.f32	s1, s28, s26
    933c: eeb4 ba49    	vcmp.f32	s22, s18
    9340: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9344: fe3b 0a09    	vselgt.f32	s0, s22, s18
    9348: eeb4 0a4c    	vcmp.f32	s0, s24
    934c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9350: fe3c aa00    	vselgt.f32	s20, s24, s0
    9354: eeb0 0a4a    	vmov.f32	s0, s20
    9358: f000 f9a2    	bl	0x96a0 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x344
    935c: a0c5         	adr	r0, #788 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x195>
    935e: eeb4 9a4c    	vcmp.f32	s18, s24
    9362: 1d01         	adds	r1, r0, #0x4
    9364: 9100         	str	r1, [sp]
    9366: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    936a: bf48         	it	mi
    936c: 4608         	movmi	r0, r1
    936e: eeb4 9a4b    	vcmp.f32	s18, s22
    9372: ed9d 0a06    	vldr	s0, [sp, #24]
    9376: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    937a: ee3e 1a40    	vsub.f32	s2, s28, s0
    937e: ed90 0a00    	vldr	s0, [r0]
    9382: ed9f 2abe    	vldr	s4, [pc, #760]          @ 0x967c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3ec>
    9386: 9404         	str	r4, [sp, #0x10]
    9388: fe30 0a02    	vselgt.f32	s0, s0, s4
    938c: ed9d 2a07    	vldr	s4, [sp, #28]
    9390: ee11 0a10    	vmov	r0, s2
    9394: ed9f 5aba    	vldr	s10, [pc, #744]         @ 0x9680 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f0>
    9398: ee20 2a02    	vmul.f32	s4, s0, s4
    939c: ed9d 0a08    	vldr	s0, [sp, #32]
    93a0: ee20 0a0d    	vmul.f32	s0, s0, s26
    93a4: f020 4000    	bic	r0, r0, #0x80000000
    93a8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    93ac: db04         	blt	0x93b8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x128> @ imm = #0x8
    93ae: eddf eab5    	vldr	s29, [pc, #724]         @ 0x9684 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f4>
    93b2: e00b         	b	0x93cc <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x13c> @ imm = #0x16
    93b4: bf00         	nop
    93b6: bf00         	nop
    93b8: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    93bc: ed9f 4ab2    	vldr	s8, [pc, #712]          @ 0x9688 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f8>
    93c0: ee81 3a03    	vdiv.f32	s6, s2, s6
    93c4: eeb0 3ac3    	vabs.f32	s6, s6
    93c8: fec3 ea04    	vmaxnm.f32	s29, s6, s8
    93cc: ee02 0a05    	vmla.f32	s0, s4, s10
    93d0: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    93d4: eeb1 1a41    	vneg.f32	s2, s2
    93d8: f04f 0800    	mov.w	r8, #0x0
    93dc: 2400         	movs	r4, #0x0
    93de: eddf 0aab    	vldr	s1, [pc, #684]          @ 0x968c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3fc>
    93e2: ed9f 6aab    	vldr	s12, [pc, #684]         @ 0x9690 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    93e6: ad06         	add	r5, sp, #0x18
    93e8: ed9f daac    	vldr	s26, [pc, #688]         @ 0x969c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x40c>
    93ec: 46c3         	mov	r11, r8
    93ee: ee30 0a07    	vadd.f32	s0, s0, s14
    93f2: f1b8 0f10    	cmp.w	r8, #0x10
    93f6: bf18         	it	ne
    93f8: f10b 0b01    	addne.w	r11, r11, #0x1
    93fc: 2100         	movs	r1, #0x0
    93fe: ee10 0a10    	vmov	r0, s0
    9402: eeb0 2ac0    	vabs.f32	s4, s0
    9406: f020 4000    	bic	r0, r0, #0x80000000
    940a: eeb4 2a60    	vcmp.f32	s4, s1
    940e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9412: f04f 0000    	mov.w	r0, #0x0
    9416: bfa8         	it	ge
    9418: 2001         	movge	r0, #0x1
    941a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    941e: bf48         	it	mi
    9420: 2101         	movmi	r1, #0x1
    9422: 4308         	orrs	r0, r1
    9424: f040 80ec    	bne.w	0x9600 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x370> @ imm = #0x1d8
    9428: ee81 9a00    	vdiv.f32	s18, s2, s0
    942c: eef4 ea46    	vcmp.f32	s29, s12
    9430: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9434: eeb0 2ac9    	vabs.f32	s4, s18
    9438: d906         	bls	0x9448 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x1b8> @ imm = #0xc
    943a: f1b8 0f10    	cmp.w	r8, #0x10
    943e: d129         	bne	0x9494 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x204> @ imm = #0x52
    9440: e0e2         	b	0x9608 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x378> @ imm = #0x1c4
    9442: bf00         	nop
    9444: bf00         	nop
    9446: bf00         	nop
    9448: eeb0 0ace    	vabs.f32	s0, s28
    944c: ed9f 1a91    	vldr	s2, [pc, #580]          @ 0x9694 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x404>
    9450: 2000         	movs	r0, #0x0
    9452: eeb4 0a40    	vcmp.f32	s0, s0
    9456: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    945a: fe17 0a00    	vselvs.f32	s0, s14, s0
    945e: eeb4 0a47    	vcmp.f32	s0, s14
    9462: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9466: fe30 0a07    	vselgt.f32	s0, s0, s14
    946a: ee20 0a01    	vmul.f32	s0, s0, s2
    946e: ed9f 1a8a    	vldr	s2, [pc, #552]          @ 0x9698 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x408>
    9472: fe80 0a41    	vminnm.f32	s0, s0, s2
    9476: eeb4 2a40    	vcmp.f32	s4, s0
    947a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    947e: bf98         	it	ls
    9480: 2001         	movls	r0, #0x1
    9482: f1b8 0f10    	cmp.w	r8, #0x10
    9486: bf1c         	itt	ne
    9488: eeb4 2a40    	vcmpne.f32	s4, s0
    948c: eef1 fa10    	vmrsne	APSR_nzcv, fpscr
    9490: f240 80bb    	bls.w	0x960a <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x37a> @ imm = #0x176
    9494: f04f 5a7e    	mov.w	r10, #0x3f800000
    9498: ed8d 2a03    	vstr	s4, [sp, #12]
    949c: ed8d aa05    	vstr	s20, [sp, #20]
    94a0: e008         	b	0x94b4 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x224> @ imm = #0x10
    94a2: bf00         	nop
    94a4: bf00         	nop
    94a6: bf00         	nop
    94a8: f5aa 0a00    	sub.w	r10, r10, #0x800000
    94ac: f1ba 5f66    	cmp.w	r10, #0x39800000
    94b0: f000 808e    	beq.w	0x95d0 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x340> @ imm = #0x11c
    94b4: ee00 aa10    	vmov	s0, r10
    94b8: eef0 da4e    	vmov.f32	s27, s28
    94bc: eeb0 1b48    	vmov.f64	d1, d8
    94c0: 4628         	mov	r0, r5
    94c2: eef0 9a6c    	vmov.f32	s19, s25
    94c6: ee49 da00    	vmla.f32	s27, s18, s0
    94ca: eeb7 0aed    	vcvt.f64.f32	d0, s27
    94ce: ee00 1b0f    	vmla.f64	d1, d0, d15
    94d2: eef0 0a6b    	vmov.f32	s1, s23
    94d6: ee4d 0a8d    	vmla.f32	s1, s27, s26
    94da: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    94de: ee40 9a2a    	vmla.f32	s19, s0, s21
    94e2: eeb4 ba69    	vcmp.f32	s22, s19
    94e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    94ea: fe3b 0a29    	vselgt.f32	s0, s22, s19
    94ee: eeb4 0a4c    	vcmp.f32	s0, s24
    94f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    94f6: fe3c aa00    	vselgt.f32	s20, s24, s0
    94fa: eeb0 0a4a    	vmov.f32	s0, s20
    94fe: f000 f8cf    	bl	0x96a0 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>> @ imm = #0x19e
    9502: ed9d 0a06    	vldr	s0, [sp, #24]
    9506: ee3d 1ac0    	vsub.f32	s2, s27, s0
    950a: ee11 0a10    	vmov	r0, s2
    950e: f020 4000    	bic	r0, r0, #0x80000000
    9512: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9516: dac7         	bge	0x94a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x218> @ imm = #-0x72
    9518: eeb3 0a08    	vmov.f32	s0, #2.400000e+01
    951c: ed9f 2a5a    	vldr	s4, [pc, #360]          @ 0x9688 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f8>
    9520: ee81 0a00    	vdiv.f32	s0, s2, s0
    9524: eeb0 0ac0    	vabs.f32	s0, s0
    9528: fe80 2a02    	vmaxnm.f32	s4, s0, s4
    952c: eeb4 2a6e    	vcmp.f32	s4, s29
    9530: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9534: d5b8         	bpl	0x94a8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x218> @ imm = #-0x90
    9536: a04f         	adr	r0, #316 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x2f9>
    9538: 9900         	ldr	r1, [sp]
    953a: eef4 9a4c    	vcmp.f32	s19, s24
    953e: ed9f 3a4f    	vldr	s6, [pc, #316]          @ 0x967c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3ec>
    9542: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9546: bf48         	it	mi
    9548: 4608         	movmi	r0, r1
    954a: eef4 9a4b    	vcmp.f32	s19, s22
    954e: ed9d 0a02    	vldr	s0, [sp, #8]
    9552: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9556: ed86 0a05    	vstr	s0, [r6, #20]
    955a: ed90 0a00    	vldr	s0, [r0]
    955e: fe30 0a03    	vselgt.f32	s0, s0, s6
    9562: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    9566: ed9d 3a01    	vldr	s6, [sp, #4]
    956a: ed86 3a06    	vstr	s6, [r6, #24]
    956e: f1b8 0f10    	cmp.w	r8, #0x10
    9572: ed9d 4a07    	vldr	s8, [sp, #28]
    9576: ed9d 3a08    	vldr	s6, [sp, #32]
    957a: ed9f 5a41    	vldr	s10, [pc, #260]         @ 0x9680 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3f0>
    957e: ed9f 6a44    	vldr	s12, [pc, #272]         @ 0x9690 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    9582: edc6 da07    	vstr	s27, [r6, #28]
    9586: eddf 0a41    	vldr	s1, [pc, #260]          @ 0x968c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3fc>
    958a: d014         	beq	0x95b6 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x326> @ imm = #0x28
    958c: ee20 4a04    	vmul.f32	s8, s0, s8
    9590: ed9f 0a35    	vldr	s0, [pc, #212]          @ 0x9668 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x3d8>
    9594: ee23 0a00    	vmul.f32	s0, s6, s0
    9598: eeb0 ea6d    	vmov.f32	s28, s27
    959c: eeb1 1a41    	vneg.f32	s2, s2
    95a0: eef0 ea42    	vmov.f32	s29, s4
    95a4: ee04 0a05    	vmla.f32	s0, s8, s10
    95a8: f1bb 0f10    	cmp.w	r11, #0x10
    95ac: f104 0401    	add.w	r4, r4, #0x1
    95b0: 46d8         	mov	r8, r11
    95b2: f77f af1c    	ble.w	0x93ee <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x15e> @ imm = #-0x1c8
    95b6: f24f 50e0    	movw	r0, #0xf5e0
    95ba: f64f 12c8    	movw	r2, #0xf9c8
    95be: f2c0 0000    	movt	r0, #0x0
    95c2: f2c0 0200    	movt	r2, #0x0
    95c6: 2128         	movs	r1, #0x28
    95c8: f000 fed2    	bl	0xa370 <core::panicking::panic> @ imm = #0xda4
    95cc: bf00         	nop
    95ce: bf00         	nop
    95d0: ed9f 0a2f    	vldr	s0, [pc, #188]          @ 0x9690 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x400>
    95d4: 3401         	adds	r4, #0x1
    95d6: eef4 ea40    	vcmp.f32	s29, s0
    95da: 2000         	movs	r0, #0x0
    95dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    95e0: 9904         	ldr	r1, [sp, #0x10]
    95e2: d809         	bhi	0x95f8 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x368> @ imm = #0x12
    95e4: ed9f 0a2c    	vldr	s0, [pc, #176]          @ 0x9698 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x408>
    95e8: ed9d 1a03    	vldr	s2, [sp, #12]
    95ec: eeb4 1a40    	vcmp.f32	s2, s0
    95f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    95f4: bf98         	it	ls
    95f6: 2001         	movls	r0, #0x1
    95f8: ed9d aa05    	vldr	s20, [sp, #20]
    95fc: e006         	b	0x960c <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x37c> @ imm = #0xc
    95fe: bf00         	nop
    9600: 2000         	movs	r0, #0x0
    9602: e005         	b	0x9610 <orange_dsp::packed::solve_block::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 4, 5>+0x380> @ imm = #0xa
    9604: bf00         	nop
    9606: bf00         	nop
    9608: 2000         	movs	r0, #0x0
    960a: 9904         	ldr	r1, [sp, #0x10]
    960c: ed81 aa04    	vstr	s20, [r1, #16]
    9610: edc9 ea00    	vstr	s29, [r9]
    9614: f889 4004    	strb.w	r4, [r9, #0x4]
    9618: f889 0005    	strb.w	r0, [r9, #0x5]
    961c: b00a         	add	sp, #0x28
    961e: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    9622: b001         	add	sp, #0x4
    9624: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    9628: bdf0         	pop	{r4, r5, r6, r7, pc}
    962a: bf00         	nop
    962c: bf00         	nop
    962e: bf00         	nop
    9630: f24c 304e    	movw	r0, #0xc34e
    9634: f64f 12d8    	movw	r2, #0xf9d8
    9638: f2c0 0000    	movt	r0, #0x0
    963c: f2c0 0200    	movt	r2, #0x0
    9640: a906         	add	r1, sp, #0x18
    9642: f000 fe91    	bl	0xa368 <core::panicking::panic_fmt> @ imm = #0xd22
    9646: bf00         	nop
    9648: e6 a7 5c a0  	.word	0xa05ca7e6
    964c: 06 41 d9 3f  	.word	0x3fd94106
    9650: 19 d5 65 36  	.word	0x3665d519
    9654: d0 6e 95 bf  	.word	0xbf956ed0
    9658: 00 80 bb 47  	.word	0x47bb8000
    965c: 00 24 f4 ca  	.word	0xcaf42400
    9660: 00 a0 0c 48  	.word	0x480ca000
    9664: 00 24 f4 4a  	.word	0x4af42400
    9668: cd 1e 2c 3e  	.word	0x3e2c1ecd
    966c: df ff e7 36  	.word	0x36e7ffdf
    9670: d2 4e da 43  	.word	0x43da4ed2
    9674: 00 00 00 80  	.word	0x80000000
    9678: d2 4e da c3  	.word	0xc3da4ed2
    967c: 00 00 00 80  	.word	0x80000000
    9680: 82 76 ab bc  	.word	0xbcab7682
    9684: 00 00 80 7f  	.word	0x7f800000
    9688: 00 00 00 00  	.word	0x00000000
    968c: 08 e5 3c 1e  	.word	0x1e3ce508
    9690: 17 b7 d1 38  	.word	0x38d1b717
    9694: bd 37 06 36  	.word	0x360637bd
    9698: ac c5 a7 37  	.word	0x37a7c5ac
    969c: cd 1e 2c be  	.word	0xbe2c1ecd

000096a0 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>>:
    96a0: b580         	push	{r7, lr}
    96a2: 466f         	mov	r7, sp
    96a4: eeb0 2ac0    	vabs.f32	s4, s0
    96a8: eeb3 1a05    	vmov.f32	s2, #2.100000e+01
    96ac: eeb4 2a41    	vcmp.f32	s4, s2
    96b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    96b4: d93c         	bls	0x9730 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x90> @ imm = #0x78
    96b6: ee81 2a02    	vdiv.f32	s4, s2, s4
    96ba: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    96be: ee22 3a02    	vmul.f32	s6, s4, s4
    96c2: eeb0 6a45    	vmov.f32	s12, s10
    96c6: ee23 3a03    	vmul.f32	s6, s6, s6
    96ca: ee23 3a03    	vmul.f32	s6, s6, s6
    96ce: ee23 3a03    	vmul.f32	s6, s6, s6
    96d2: ee33 4a05    	vadd.f32	s8, s6, s10
    96d6: eeb4 4a45    	vcmp.f32	s8, s10
    96da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    96de: d009         	beq	0x96f4 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x54> @ imm = #0x12
    96e0: eeb0 6a44    	vmov.f32	s12, s8
    96e4: eeb1 6ac6    	vsqrt.f32	s12, s12
    96e8: eeb1 6ac6    	vsqrt.f32	s12, s12
    96ec: eeb1 6ac6    	vsqrt.f32	s12, s12
    96f0: eeb1 6ac6    	vsqrt.f32	s12, s12
    96f4: ee10 1a10    	vmov	r1, s0
    96f8: f04f 527e    	mov.w	r2, #0x3f800000
    96fc: ee85 5a06    	vdiv.f32	s10, s10, s12
    9700: ee22 2a03    	vmul.f32	s4, s4, s6
    9704: f362 011e    	bfi	r1, r2, #0, #31
    9708: eeb4 0a40    	vcmp.f32	s0, s0
    970c: ee07 1a10    	vmov	s14, r1
    9710: ee85 4a04    	vdiv.f32	s8, s10, s8
    9714: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9718: ed9f 0a76    	vldr	s0, [pc, #472]          @ 0x98f4 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x254>
    971c: ee27 1a01    	vmul.f32	s2, s14, s2
    9720: ee21 1a05    	vmul.f32	s2, s2, s10
    9724: fe10 0a01    	vselvs.f32	s0, s0, s2
    9728: ee22 1a04    	vmul.f32	s2, s4, s8
    972c: e025         	b	0x977a <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0xda> @ imm = #0x4a
    972e: bf00         	nop
    9730: ee80 1a01    	vdiv.f32	s2, s0, s2
    9734: ee21 1a01    	vmul.f32	s2, s2, s2
    9738: ee21 2a01    	vmul.f32	s4, s2, s2
    973c: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    9740: ee22 3a02    	vmul.f32	s6, s4, s4
    9744: eeb0 2a41    	vmov.f32	s4, s2
    9748: ee03 2a03    	vmla.f32	s4, s6, s6
    974c: eeb0 3a41    	vmov.f32	s6, s2
    9750: eeb4 2a41    	vcmp.f32	s4, s2
    9754: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9758: d009         	beq	0x976e <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0xce> @ imm = #0x12
    975a: eeb0 3a42    	vmov.f32	s6, s4
    975e: eeb1 3ac3    	vsqrt.f32	s6, s6
    9762: eeb1 3ac3    	vsqrt.f32	s6, s6
    9766: eeb1 3ac3    	vsqrt.f32	s6, s6
    976a: eeb1 3ac3    	vsqrt.f32	s6, s6
    976e: ee81 3a03    	vdiv.f32	s6, s2, s6
    9772: ee83 1a02    	vdiv.f32	s2, s6, s4
    9776: ee20 0a03    	vmul.f32	s0, s0, s6
    977a: eeb0 2ac0    	vabs.f32	s4, s0
    977e: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    9782: eeb2 7a00    	vmov.f32	s14, #8.000000e+00
    9786: ed9f 4a5c    	vldr	s8, [pc, #368]          @ 0x98f8 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x258>
    978a: eef1 2a04    	vmov.f32	s5, #5.000000e+00
    978e: eeb0 5ae0    	vabs.f32	s10, s1
    9792: ee33 6a42    	vsub.f32	s12, s6, s4
    9796: eef7 3a00    	vmov.f32	s7, #1.000000e+00
    979a: fe86 3a07    	vmaxnm.f32	s6, s12, s14
    979e: eec4 1a03    	vdiv.f32	s3, s8, s6
    97a2: fe81 2ae2    	vminnm.f32	s4, s3, s5
    97a6: eec5 4a02    	vdiv.f32	s9, s10, s4
    97aa: eef4 4a63    	vcmp.f32	s9, s7
    97ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97b2: d935         	bls	0x9820 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x180> @ imm = #0x6a
    97b4: ee82 5a05    	vdiv.f32	s10, s4, s10
    97b8: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    97bc: ee65 3a05    	vmul.f32	s7, s10, s10
    97c0: ee63 3aa3    	vmul.f32	s7, s7, s7
    97c4: ee63 5aa3    	vmul.f32	s11, s7, s7
    97c8: eef0 3a64    	vmov.f32	s7, s9
    97cc: ee45 3aa5    	vmla.f32	s7, s11, s11
    97d0: eef0 5a64    	vmov.f32	s11, s9
    97d4: eef4 3a64    	vcmp.f32	s7, s9
    97d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97dc: d009         	beq	0x97f2 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x152> @ imm = #0x12
    97de: eef0 5a63    	vmov.f32	s11, s7
    97e2: eef1 5ae5    	vsqrt.f32	s11, s11
    97e6: eef1 5ae5    	vsqrt.f32	s11, s11
    97ea: eef1 5ae5    	vsqrt.f32	s11, s11
    97ee: eef1 5ae5    	vsqrt.f32	s11, s11
    97f2: eec4 5aa5    	vdiv.f32	s11, s9, s11
    97f6: eef1 6a45    	vneg.f32	s13, s10
    97fa: eec5 4aa3    	vdiv.f32	s9, s11, s7
    97fe: eec6 0aa0    	vdiv.f32	s1, s13, s1
    9802: ee65 3a25    	vmul.f32	s7, s10, s11
    9806: ee60 0aa4    	vmul.f32	s1, s1, s9
    980a: eef4 1a62    	vcmp.f32	s3, s5
    980e: eddf 1a3b    	vldr	s3, [pc, #236]          @ 0x98fc <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x25c>
    9812: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9816: d437         	bmi	0x9888 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x1e8> @ imm = #0x6e
    9818: e056         	b	0x98c8 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0xac
    981a: bf00         	nop
    981c: bf00         	nop
    981e: bf00         	nop
    9820: ee24 5aa4    	vmul.f32	s10, s9, s9
    9824: eef0 5a63    	vmov.f32	s11, s7
    9828: ee25 5a05    	vmul.f32	s10, s10, s10
    982c: ee25 5a05    	vmul.f32	s10, s10, s10
    9830: ee25 5a05    	vmul.f32	s10, s10, s10
    9834: ee75 4a23    	vadd.f32	s9, s10, s7
    9838: eef4 4a63    	vcmp.f32	s9, s7
    983c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9840: d009         	beq	0x9856 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x1b6> @ imm = #0x12
    9842: eef0 5a64    	vmov.f32	s11, s9
    9846: eef1 5ae5    	vsqrt.f32	s11, s11
    984a: eef1 5ae5    	vsqrt.f32	s11, s11
    984e: eef1 5ae5    	vsqrt.f32	s11, s11
    9852: eef1 5ae5    	vsqrt.f32	s11, s11
    9856: eec3 3aa5    	vdiv.f32	s7, s7, s11
    985a: eef5 0a40    	vcmp.f32	s1, #0
    985e: eef1 5a45    	vneg.f32	s11, s10
    9862: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9866: eec3 4aa4    	vdiv.f32	s9, s7, s9
    986a: eec5 5aa0    	vdiv.f32	s11, s11, s1
    986e: eddf 0a23    	vldr	s1, [pc, #140]          @ 0x98fc <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x25c>
    9872: ee65 5aa4    	vmul.f32	s11, s11, s9
    9876: fe40 0aa5    	vseleq.f32	s1, s1, s11
    987a: eef4 1a62    	vcmp.f32	s3, s5
    987e: eddf 1a1f    	vldr	s3, [pc, #124]          @ 0x98fc <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x25c>
    9882: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9886: d51f         	bpl	0x98c8 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x3e
    9888: eeb5 0a40    	vcmp.f32	s0, #0
    988c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9890: d01a         	beq	0x98c8 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x34
    9892: eeb4 6a47    	vcmp.f32	s12, s14
    9896: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    989a: dd15         	ble	0x98c8 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x228> @ imm = #0x2a
    989c: ee10 1a10    	vmov	r1, s0
    98a0: f04f 527e    	mov.w	r2, #0x3f800000
    98a4: eeb4 0a40    	vcmp.f32	s0, s0
    98a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    98ac: f362 011e    	bfi	r1, r2, #0, #31
    98b0: ee23 3a03    	vmul.f32	s6, s6, s6
    98b4: ee06 1a10    	vmov	s12, r1
    98b8: ee26 4a04    	vmul.f32	s8, s12, s8
    98bc: ed9f 6a0d    	vldr	s12, [pc, #52]          @ 0x98f4 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x254>
    98c0: fe16 4a04    	vselvs.f32	s8, s12, s8
    98c4: eec4 1a03    	vdiv.f32	s3, s8, s6
    98c8: ee85 2a02    	vdiv.f32	s4, s10, s4
    98cc: ee20 3a23    	vmul.f32	s6, s0, s7
    98d0: ed80 3a00    	vstr	s6, [r0]
    98d4: ee22 2a24    	vmul.f32	s4, s4, s9
    98d8: ee20 2a02    	vmul.f32	s4, s0, s4
    98dc: ee20 0a20    	vmul.f32	s0, s0, s1
    98e0: ed80 0a02    	vstr	s0, [r0, #8]
    98e4: ee42 3a21    	vmla.f32	s7, s4, s3
    98e8: ee21 1a23    	vmul.f32	s2, s2, s7
    98ec: ed80 1a01    	vstr	s2, [r0, #4]
    98f0: bd80         	pop	{r7, pc}
    98f2: bf00         	nop
    98f4: 00 00 c0 7f  	.word	0x7fc00000
    98f8: 00 00 70 42  	.word	0x42700000
    98fc: 00 00 00 00  	.word	0x00000000

00009900 <__rustc::rust_begin_unwind>:
    9900: b580         	push	{r7, lr}
    9902: 466f         	mov	r7, sp
    9904: bf00         	nop
    9906: bf00         	nop
    9908: bf10         	yield
    990a: bf10         	yield
    990c: bf10         	yield
    990e: bf10         	yield
    9910: e7fa         	b	0x9908 <__rustc::rust_begin_unwind+0x8> @ imm = #-0xc
    9912: d4d4         	bmi	0x98be <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x21e> @ imm = #-0x58
    9914: d4d4         	bmi	0x98c0 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x220> @ imm = #-0x58
    9916: d4d4         	bmi	0x98c2 <orange_dsp::packed::power::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>>+0x222> @ imm = #-0x58

00009918 <ram_probe::packed_probe::control>:
    9918: b5b0         	push	{r4, r5, r7, lr}
    991a: af02         	add	r7, sp, #0x8
    991c: ed2d 8b02    	vpush	{d8}
    9920: b086         	sub	sp, #0x18
    9922: eeb0 8a40    	vmov.f32	s16, s0
    9926: ee30 0a20    	vadd.f32	s0, s0, s1
    992a: eeb6 1a00    	vmov.f32	s2, #5.000000e-01
    992e: 4604         	mov	r4, r0
    9930: 4668         	mov	r0, sp
    9932: 460d         	mov	r5, r1
    9934: ee20 0a01    	vmul.f32	s0, s0, s2
    9938: f7f6 ff62    	bl	0x800 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>> @ imm = #-0x913c
    993c: eeb0 0a48    	vmov.f32	s0, s16
    9940: a803         	add	r0, sp, #0xc
    9942: 4629         	mov	r1, r5
    9944: f7f6 ff5c    	bl	0x800 <<orange_dsp::packed::PackedState>::step::<orange_dsp::packed::ExtraMath<ram_probe::cordic::H7r3Cordic, 2>, 5>> @ imm = #-0x9148
    9948: ed9d 0a01    	vldr	s0, [sp, #4]
    994c: ed9d 1a04    	vldr	s2, [sp, #16]
    9950: eeb4 0a40    	vcmp.f32	s0, s0
    9954: 9803         	ldr	r0, [sp, #0xc]
    9956: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    995a: eeb4 1a41    	vcmp.f32	s2, s2
    995e: f89d 1008    	ldrb.w	r1, [sp, #0x8]
    9962: fe11 0a00    	vselvs.f32	s0, s2, s0
    9966: f89d 2014    	ldrb.w	r2, [sp, #0x14]
    996a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    996e: f89d 3009    	ldrb.w	r3, [sp, #0x9]
    9972: 6020         	str	r0, [r4]
    9974: fe10 1a01    	vselvs.f32	s2, s0, s2
    9978: f89d 0015    	ldrb.w	r0, [sp, #0x15]
    997c: 4411         	add	r1, r2
    997e: 7221         	strb	r1, [r4, #0x8]
    9980: 4018         	ands	r0, r3
    9982: 7260         	strb	r0, [r4, #0x9]
    9984: eeb4 0a41    	vcmp.f32	s0, s2
    9988: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    998c: fe30 0a01    	vselgt.f32	s0, s0, s2
    9990: ed84 0a01    	vstr	s0, [r4, #4]
    9994: b006         	add	sp, #0x18
    9996: ecbd 8b02    	vpop	{d8}
    999a: bdb0         	pop	{r4, r5, r7, pc}
    999c: d4d4         	bmi	0x9948 <ram_probe::packed_probe::control+0x30> @ imm = #-0x58
    999e: d4d4         	bmi	0x994a <ram_probe::packed_probe::control+0x32> @ imm = #-0x58

000099a0 <ram_probe::packed_probe::candidate>:
    99a0: b5f0         	push	{r4, r5, r6, r7, lr}
    99a2: af03         	add	r7, sp, #0xc
    99a4: e92d 0f00    	push.w	{r8, r9, r10, r11}
    99a8: b081         	sub	sp, #0x4
    99aa: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    99ae: f5ad 7d74    	sub.w	sp, sp, #0x3d0
    99b2: ae08         	add	r6, sp, #0x20
    99b4: 468b         	mov	r11, r1
    99b6: 9003         	str	r0, [sp, #0xc]
    99b8: 21e0         	movs	r1, #0xe0
    99ba: 4630         	mov	r0, r6
    99bc: eeb0 8a40    	vmov.f32	s16, s0
    99c0: f002 fb7b    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0x26f6
    99c4: f10b 00e0    	add.w	r0, r11, #0xe0
    99c8: f246 0100    	movw	r1, #0x6000
    99cc: ed9b 0b52    	vldr	d0, [r11, #328]
    99d0: ec90 1b08    	vldmia	r0, {d1, d2, d3, d4}
    99d4: f50b 7080    	add.w	r0, r11, #0x100
    99d8: f2c2 0100    	movt	r1, #0x2000
    99dc: ed9b eb50    	vldr	d14, [r11, #320]
    99e0: ec90 5b06    	vldmia	r0, {d5, d6, d7}
    99e4: f50b 708c    	add.w	r0, r11, #0x118
    99e8: f04f 0e68    	mov.w	lr, #0x68
    99ec: ed8d 4b04    	vstr	d4, [sp, #16]
    99f0: ec90 9b0a    	vldmia	r0, {d9, d10, d11, d12, d13}
    99f4: eeb7 4ac8    	vcvt.f64.f32	d4, s16
    99f8: 2000         	movs	r0, #0x0
    99fa: 2501         	movs	r5, #0x1
    99fc: ed8d 4b06    	vstr	d4, [sp, #24]
    9a00: e007         	b	0x9a12 <ram_probe::packed_probe::candidate+0x72> @ imm = #0xe
    9a02: bf00         	nop
    9a04: bf00         	nop
    9a06: bf00         	nop
    9a08: 3001         	adds	r0, #0x1
    9a0a: 31e0         	adds	r1, #0xe0
    9a0c: 281c         	cmp	r0, #0x1c
    9a0e: f000 80fb    	beq.w	0x9c08 <ram_probe::packed_probe::candidate+0x268> @ imm = #0x1f6
    9a12: f24e 1208    	movw	r2, #0xe108
    9a16: eb06 08c0    	add.w	r8, r6, r0, lsl #3
    9a1a: f2c0 0200    	movt	r2, #0x0
    9a1e: 2400         	movs	r4, #0x0
    9a20: eb02 02c0    	add.w	r2, r2, r0, lsl #3
    9a24: ed9d 8b06    	vldr	d8, [sp, #24]
    9a28: ed92 4b00    	vldr	d4, [r2]
    9a2c: f24e 12e8    	movw	r2, #0xe1e8
    9a30: f2c0 0200    	movt	r2, #0x0
    9a34: eb02 02c0    	add.w	r2, r2, r0, lsl #3
    9a38: ed92 fb00    	vldr	d15, [r2]
    9a3c: ee2f fb08    	vmul.f64	d15, d15, d8
    9a40: ee00 fb04    	vmla.f64	d15, d0, d4
    9a44: e007         	b	0x9a56 <ram_probe::packed_probe::candidate+0xb6> @ imm = #0xe
    9a46: bf00         	nop
		...
    9a50: 3438         	adds	r4, #0x38
    9a52: 2ce0         	cmp	r4, #0xe0
    9a54: d060         	beq	0x9b18 <ram_probe::packed_probe::candidate+0x178> @ imm = #0xc0
    9a56: 190b         	adds	r3, r1, r4
    9a58: eb0b 0204    	add.w	r2, r11, r4
    9a5c: ed93 4b00    	vldr	d4, [r3]
    9a60: eeb5 4b40    	vcmp.f64	d4, #0
    9a64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9a68: d005         	beq	0x9a76 <ram_probe::packed_probe::candidate+0xd6> @ imm = #0xa
    9a6a: ed92 8b00    	vldr	d8, [r2]
    9a6e: ee04 fb08    	vmla.f64	d15, d4, d8
    9a72: ed88 fb00    	vstr	d15, [r8]
    9a76: ed93 4b02    	vldr	d4, [r3, #8]
    9a7a: eeb5 4b40    	vcmp.f64	d4, #0
    9a7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9a82: d005         	beq	0x9a90 <ram_probe::packed_probe::candidate+0xf0> @ imm = #0xa
    9a84: ed92 8b02    	vldr	d8, [r2, #8]
    9a88: ee04 fb08    	vmla.f64	d15, d4, d8
    9a8c: ed88 fb00    	vstr	d15, [r8]
    9a90: ed93 4b04    	vldr	d4, [r3, #16]
    9a94: eeb5 4b40    	vcmp.f64	d4, #0
    9a98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9a9c: d005         	beq	0x9aaa <ram_probe::packed_probe::candidate+0x10a> @ imm = #0xa
    9a9e: ed92 8b04    	vldr	d8, [r2, #16]
    9aa2: ee04 fb08    	vmla.f64	d15, d4, d8
    9aa6: ed88 fb00    	vstr	d15, [r8]
    9aaa: ed93 4b06    	vldr	d4, [r3, #24]
    9aae: eeb5 4b40    	vcmp.f64	d4, #0
    9ab2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ab6: d005         	beq	0x9ac4 <ram_probe::packed_probe::candidate+0x124> @ imm = #0xa
    9ab8: ed92 8b06    	vldr	d8, [r2, #24]
    9abc: ee04 fb08    	vmla.f64	d15, d4, d8
    9ac0: ed88 fb00    	vstr	d15, [r8]
    9ac4: ed93 4b08    	vldr	d4, [r3, #32]
    9ac8: eeb5 4b40    	vcmp.f64	d4, #0
    9acc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ad0: d005         	beq	0x9ade <ram_probe::packed_probe::candidate+0x13e> @ imm = #0xa
    9ad2: ed92 8b08    	vldr	d8, [r2, #32]
    9ad6: ee04 fb08    	vmla.f64	d15, d4, d8
    9ada: ed88 fb00    	vstr	d15, [r8]
    9ade: ed93 4b0a    	vldr	d4, [r3, #40]
    9ae2: eeb5 4b40    	vcmp.f64	d4, #0
    9ae6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9aea: d005         	beq	0x9af8 <ram_probe::packed_probe::candidate+0x158> @ imm = #0xa
    9aec: ed92 8b0a    	vldr	d8, [r2, #40]
    9af0: ee04 fb08    	vmla.f64	d15, d4, d8
    9af4: ed88 fb00    	vstr	d15, [r8]
    9af8: ed93 4b0c    	vldr	d4, [r3, #48]
    9afc: eeb5 4b40    	vcmp.f64	d4, #0
    9b00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9b04: d0a4         	beq	0x9a50 <ram_probe::packed_probe::candidate+0xb0> @ imm = #-0xb8
    9b06: ed92 8b0c    	vldr	d8, [r2, #48]
    9b0a: ee04 fb08    	vmla.f64	d15, d4, d8
    9b0e: ed88 fb00    	vstr	d15, [r8]
    9b12: e79d         	b	0x9a50 <ram_probe::packed_probe::candidate+0xb0> @ imm = #-0xc6
    9b14: bf00         	nop
    9b16: bf00         	nop
    9b18: f24e 22c8    	movw	r2, #0xe2c8
    9b1c: fa05 fa00    	lsl.w	r10, r5, r0
    9b20: f2c0 0200    	movt	r2, #0x0
    9b24: fb00 290e    	mla	r9, r0, lr, r2
    9b28: f64f 72c0    	movw	r2, #0xffc0
    9b2c: f6c0 727f    	movt	r2, #0xf7f
    9b30: ea1a 0402    	ands.w	r4, r10, r2
    9b34: ed99 4b00    	vldr	d4, [r9]
    9b38: ee01 fb04    	vmla.f64	d15, d1, d4
    9b3c: ed88 fb00    	vstr	d15, [r8]
    9b40: d005         	beq	0x9b4e <ram_probe::packed_probe::candidate+0x1ae> @ imm = #0xa
    9b42: ed99 4b02    	vldr	d4, [r9, #8]
    9b46: ee02 fb04    	vmla.f64	d15, d2, d4
    9b4a: ed88 fb00    	vstr	d15, [r8]
    9b4e: f248 0200    	movw	r2, #0x8000
    9b52: f6c0 627f    	movt	r2, #0xe7f
    9b56: ea1a 0c02    	ands.w	r12, r10, r2
    9b5a: d005         	beq	0x9b68 <ram_probe::packed_probe::candidate+0x1c8> @ imm = #0xa
    9b5c: ed99 4b04    	vldr	d4, [r9, #16]
    9b60: ee03 fb04    	vmla.f64	d15, d3, d4
    9b64: ed88 fb00    	vstr	d15, [r8]
    9b68: 2802         	cmp	r0, #0x2
    9b6a: d307         	blo	0x9b7c <ram_probe::packed_probe::candidate+0x1dc> @ imm = #0xe
    9b6c: ed99 4b06    	vldr	d4, [r9, #24]
    9b70: ed9d 8b04    	vldr	d8, [sp, #16]
    9b74: ee08 fb04    	vmla.f64	d15, d8, d4
    9b78: ed88 fb00    	vstr	d15, [r8]
    9b7c: b12c         	cbz	r4, 0x9b8a <ram_probe::packed_probe::candidate+0x1ea> @ imm = #0xa
    9b7e: ed99 4b08    	vldr	d4, [r9, #32]
    9b82: ee05 fb04    	vmla.f64	d15, d5, d4
    9b86: ed88 fb00    	vstr	d15, [r8]
    9b8a: f1bc 0f00    	cmp.w	r12, #0x0
    9b8e: d009         	beq	0x9ba4 <ram_probe::packed_probe::candidate+0x204> @ imm = #0x12
    9b90: ed99 4b0a    	vldr	d4, [r9, #40]
    9b94: ed99 8b0c    	vldr	d8, [r9, #48]
    9b98: ee06 fb04    	vmla.f64	d15, d6, d4
    9b9c: ee07 fb08    	vmla.f64	d15, d7, d8
    9ba0: ed88 fb00    	vstr	d15, [r8]
    9ba4: f01a 6f06    	tst.w	r10, #0x8600000
    9ba8: d005         	beq	0x9bb6 <ram_probe::packed_probe::candidate+0x216> @ imm = #0xa
    9baa: ed99 4b0e    	vldr	d4, [r9, #56]
    9bae: ee09 fb04    	vmla.f64	d15, d9, d4
    9bb2: ed88 fb00    	vstr	d15, [r8]
    9bb6: 2802         	cmp	r0, #0x2
    9bb8: d305         	blo	0x9bc6 <ram_probe::packed_probe::candidate+0x226> @ imm = #0xa
    9bba: ed99 4b10    	vldr	d4, [r9, #64]
    9bbe: ee0a fb04    	vmla.f64	d15, d10, d4
    9bc2: ed88 fb00    	vstr	d15, [r8]
    9bc6: b12c         	cbz	r4, 0x9bd4 <ram_probe::packed_probe::candidate+0x234> @ imm = #0xa
    9bc8: ed99 4b12    	vldr	d4, [r9, #72]
    9bcc: ee0b fb04    	vmla.f64	d15, d11, d4
    9bd0: ed88 fb00    	vstr	d15, [r8]
    9bd4: f1bc 0f00    	cmp.w	r12, #0x0
    9bd8: d009         	beq	0x9bee <ram_probe::packed_probe::candidate+0x24e> @ imm = #0x12
    9bda: ed99 4b14    	vldr	d4, [r9, #80]
    9bde: ed99 8b16    	vldr	d8, [r9, #88]
    9be2: ee0c fb04    	vmla.f64	d15, d12, d4
    9be6: ee0d fb08    	vmla.f64	d15, d13, d8
    9bea: ed88 fb00    	vstr	d15, [r8]
    9bee: f01a 6f06    	tst.w	r10, #0x8600000
    9bf2: f43f af09    	beq.w	0x9a08 <ram_probe::packed_probe::candidate+0x68> @ imm = #-0x1ee
    9bf6: ed99 4b18    	vldr	d4, [r9, #96]
    9bfa: ee0e fb04    	vmla.f64	d15, d14, d4
    9bfe: ed88 fb00    	vstr	d15, [r8]
    9c02: e701         	b	0x9a08 <ram_probe::packed_probe::candidate+0x68> @ imm = #-0x1fe
    9c04: bf00         	nop
    9c06: bf00         	nop
    9c08: f50d 7880    	add.w	r8, sp, #0x100
    9c0c: 2198         	movs	r1, #0x98
    9c0e: 4640         	mov	r0, r8
    9c10: f002 fa53    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0x24a6
    9c14: f24d 0168    	movw	r1, #0xd068
    9c18: f64c 7cd0    	movw	r12, #0xcfd0
    9c1c: 2000         	movs	r0, #0x0
    9c1e: f2c0 0100    	movt	r1, #0x0
    9c22: f2c0 0c00    	movt	r12, #0x0
    9c26: e003         	b	0x9c30 <ram_probe::packed_probe::candidate+0x290> @ imm = #0x6
    9c28: 3001         	adds	r0, #0x1
    9c2a: 31e0         	adds	r1, #0xe0
    9c2c: 2813         	cmp	r0, #0x13
    9c2e: d073         	beq	0x9d18 <ram_probe::packed_probe::candidate+0x378> @ imm = #0xe6
    9c30: eb0c 02c0    	add.w	r2, r12, r0, lsl #3
    9c34: 2400         	movs	r4, #0x0
    9c36: ed9d 1b06    	vldr	d1, [sp, #24]
    9c3a: eb08 03c0    	add.w	r3, r8, r0, lsl #3
    9c3e: ed92 0b00    	vldr	d0, [r2]
    9c42: ee20 0b01    	vmul.f64	d0, d0, d1
    9c46: ed83 0b00    	vstr	d0, [r3]
    9c4a: e004         	b	0x9c56 <ram_probe::packed_probe::candidate+0x2b6> @ imm = #0x8
    9c4c: bf00         	nop
    9c4e: bf00         	nop
    9c50: 3438         	adds	r4, #0x38
    9c52: 2ce0         	cmp	r4, #0xe0
    9c54: d0e8         	beq	0x9c28 <ram_probe::packed_probe::candidate+0x288> @ imm = #-0x30
    9c56: 190d         	adds	r5, r1, r4
    9c58: 1932         	adds	r2, r6, r4
    9c5a: ed95 1b00    	vldr	d1, [r5]
    9c5e: eeb5 1b40    	vcmp.f64	d1, #0
    9c62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9c66: d005         	beq	0x9c74 <ram_probe::packed_probe::candidate+0x2d4> @ imm = #0xa
    9c68: ed92 2b00    	vldr	d2, [r2]
    9c6c: ee01 0b02    	vmla.f64	d0, d1, d2
    9c70: ed83 0b00    	vstr	d0, [r3]
    9c74: ed95 1b02    	vldr	d1, [r5, #8]
    9c78: eeb5 1b40    	vcmp.f64	d1, #0
    9c7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9c80: d005         	beq	0x9c8e <ram_probe::packed_probe::candidate+0x2ee> @ imm = #0xa
    9c82: ed92 2b02    	vldr	d2, [r2, #8]
    9c86: ee01 0b02    	vmla.f64	d0, d1, d2
    9c8a: ed83 0b00    	vstr	d0, [r3]
    9c8e: ed95 1b04    	vldr	d1, [r5, #16]
    9c92: eeb5 1b40    	vcmp.f64	d1, #0
    9c96: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9c9a: d005         	beq	0x9ca8 <ram_probe::packed_probe::candidate+0x308> @ imm = #0xa
    9c9c: ed92 2b04    	vldr	d2, [r2, #16]
    9ca0: ee01 0b02    	vmla.f64	d0, d1, d2
    9ca4: ed83 0b00    	vstr	d0, [r3]
    9ca8: ed95 1b06    	vldr	d1, [r5, #24]
    9cac: eeb5 1b40    	vcmp.f64	d1, #0
    9cb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9cb4: d005         	beq	0x9cc2 <ram_probe::packed_probe::candidate+0x322> @ imm = #0xa
    9cb6: ed92 2b06    	vldr	d2, [r2, #24]
    9cba: ee01 0b02    	vmla.f64	d0, d1, d2
    9cbe: ed83 0b00    	vstr	d0, [r3]
    9cc2: ed95 1b08    	vldr	d1, [r5, #32]
    9cc6: eeb5 1b40    	vcmp.f64	d1, #0
    9cca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9cce: d005         	beq	0x9cdc <ram_probe::packed_probe::candidate+0x33c> @ imm = #0xa
    9cd0: ed92 2b08    	vldr	d2, [r2, #32]
    9cd4: ee01 0b02    	vmla.f64	d0, d1, d2
    9cd8: ed83 0b00    	vstr	d0, [r3]
    9cdc: ed95 1b0a    	vldr	d1, [r5, #40]
    9ce0: eeb5 1b40    	vcmp.f64	d1, #0
    9ce4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ce8: d005         	beq	0x9cf6 <ram_probe::packed_probe::candidate+0x356> @ imm = #0xa
    9cea: ed92 2b0a    	vldr	d2, [r2, #40]
    9cee: ee01 0b02    	vmla.f64	d0, d1, d2
    9cf2: ed83 0b00    	vstr	d0, [r3]
    9cf6: ed95 1b0c    	vldr	d1, [r5, #48]
    9cfa: eeb5 1b40    	vcmp.f64	d1, #0
    9cfe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d02: d0a5         	beq	0x9c50 <ram_probe::packed_probe::candidate+0x2b0> @ imm = #-0xb6
    9d04: ed92 2b0c    	vldr	d2, [r2, #48]
    9d08: ee01 0b02    	vmla.f64	d0, d1, d2
    9d0c: ed83 0b00    	vstr	d0, [r3]
    9d10: e79e         	b	0x9c50 <ram_probe::packed_probe::candidate+0x2b0> @ imm = #-0xc4
    9d12: bf00         	nop
    9d14: bf00         	nop
    9d16: bf00         	nop
    9d18: ac66         	add	r4, sp, #0x198
    9d1a: 2268         	movs	r2, #0x68
    9d1c: 4620         	mov	r0, r4
    9d1e: f10b 01e0    	add.w	r1, r11, #0xe0
    9d22: f002 fa21    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x2442
    9d26: a880         	add	r0, sp, #0x200
    9d28: a940         	add	r1, sp, #0x100
    9d2a: 4622         	mov	r2, r4
    9d2c: f7f8 ffb8    	bl	0x2ca0 <orange_dsp::exponential::block::<false, 0, 1>> @ imm = #-0x7090
    9d30: f89d 0209    	ldrb.w	r0, [sp, #0x209]
    9d34: f89d 4208    	ldrb.w	r4, [sp, #0x208]
    9d38: 2801         	cmp	r0, #0x1
    9d3a: d111         	bne	0x9d60 <ram_probe::packed_probe::candidate+0x3c0> @ imm = #0x22
    9d3c: ed9d 0b80    	vldr	d0, [sp, #512]
    9d40: eeb4 0b40    	vcmp.f64	d0, d0
    9d44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d48: ed1f 1bc1    	vldr	d1, [pc, #-772]         @ 0x9a48 <ram_probe::packed_probe::candidate+0xa8>
    9d4c: fe11 0b00    	vselvs.f64	d0, d1, d0
    9d50: eeb5 0b40    	vcmp.f64	d0, #0
    9d54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d58: fe30 9b01    	vselgt.f64	d9, d0, d1
    9d5c: e025         	b	0x9daa <ram_probe::packed_probe::candidate+0x40a> @ imm = #0x4a
    9d5e: bf00         	nop
    9d60: a880         	add	r0, sp, #0x200
    9d62: a940         	add	r1, sp, #0x100
    9d64: aa66         	add	r2, sp, #0x198
    9d66: 2500         	movs	r5, #0x0
    9d68: e9cd 5566    	strd	r5, r5, [sp, #408]
    9d6c: f7f8 ff98    	bl	0x2ca0 <orange_dsp::exponential::block::<false, 0, 1>> @ imm = #-0x70d0
    9d70: ed9d 0b80    	vldr	d0, [sp, #512]
    9d74: f89d 0208    	ldrb.w	r0, [sp, #0x208]
    9d78: eeb4 0b40    	vcmp.f64	d0, d0
    9d7c: f89d 1209    	ldrb.w	r1, [sp, #0x209]
    9d80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d84: ed1f 1bd0    	vldr	d1, [pc, #-832]         @ 0x9a48 <ram_probe::packed_probe::candidate+0xa8>
    9d88: 4404         	add	r4, r0
    9d8a: f8db 016c    	ldr.w	r0, [r11, #0x16c]
    9d8e: fe11 0b00    	vselvs.f64	d0, d1, d0
    9d92: 3001         	adds	r0, #0x1
    9d94: f8cb 016c    	str.w	r0, [r11, #0x16c]
    9d98: eeb5 0b40    	vcmp.f64	d0, #0
    9d9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9da0: fe30 9b01    	vselgt.f64	d9, d0, d1
    9da4: 2900         	cmp	r1, #0x0
    9da6: f000 80bf    	beq.w	0x9f28 <ram_probe::packed_probe::candidate+0x588> @ imm = #0x17e
    9daa: a884         	add	r0, sp, #0x210
    9dac: a940         	add	r1, sp, #0x100
    9dae: aa66         	add	r2, sp, #0x198
    9db0: f7f9 f966    	bl	0x3080 <orange_dsp::exponential::block::<false, 1, 2>> @ imm = #-0x6d34
    9db4: f89d 0219    	ldrb.w	r0, [sp, #0x219]
    9db8: f89d 1218    	ldrb.w	r1, [sp, #0x218]
    9dbc: 2801         	cmp	r0, #0x1
    9dbe: 440c         	add	r4, r1
    9dc0: d116         	bne	0x9df0 <ram_probe::packed_probe::candidate+0x450> @ imm = #0x2c
    9dc2: ed9d 0b84    	vldr	d0, [sp, #528]
    9dc6: eeb4 9b49    	vcmp.f64	d9, d9
    9dca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dce: eeb4 0b40    	vcmp.f64	d0, d0
    9dd2: fe10 1b09    	vselvs.f64	d1, d0, d9
    9dd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dda: fe11 0b00    	vselvs.f64	d0, d1, d0
    9dde: eeb4 1b40    	vcmp.f64	d1, d0
    9de2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9de6: fe31 9b00    	vselgt.f64	d9, d1, d0
    9dea: e02c         	b	0x9e46 <ram_probe::packed_probe::candidate+0x4a6> @ imm = #0x58
    9dec: bf00         	nop
    9dee: bf00         	nop
    9df0: a884         	add	r0, sp, #0x210
    9df2: a940         	add	r1, sp, #0x100
    9df4: aa66         	add	r2, sp, #0x198
    9df6: 2500         	movs	r5, #0x0
    9df8: e9cd 556c    	strd	r5, r5, [sp, #432]
    9dfc: e9cd 5576    	strd	r5, r5, [sp, #472]
    9e00: f7f9 f93e    	bl	0x3080 <orange_dsp::exponential::block::<false, 1, 2>> @ imm = #-0x6d84
    9e04: ed9d 0b84    	vldr	d0, [sp, #528]
    9e08: eeb4 9b49    	vcmp.f64	d9, d9
    9e0c: f89d 0218    	ldrb.w	r0, [sp, #0x218]
    9e10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e14: eeb4 0b40    	vcmp.f64	d0, d0
    9e18: f89d 1219    	ldrb.w	r1, [sp, #0x219]
    9e1c: 4404         	add	r4, r0
    9e1e: f8db 016c    	ldr.w	r0, [r11, #0x16c]
    9e22: fe10 1b09    	vselvs.f64	d1, d0, d9
    9e26: 3001         	adds	r0, #0x1
    9e28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e2c: f8cb 016c    	str.w	r0, [r11, #0x16c]
    9e30: fe11 0b00    	vselvs.f64	d0, d1, d0
    9e34: eeb4 1b40    	vcmp.f64	d1, d0
    9e38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e3c: fe31 9b00    	vselgt.f64	d9, d1, d0
    9e40: 2900         	cmp	r1, #0x0
    9e42: f000 80c9    	beq.w	0x9fd8 <ram_probe::packed_probe::candidate+0x638> @ imm = #0x192
    9e46: a888         	add	r0, sp, #0x220
    9e48: a940         	add	r1, sp, #0x100
    9e4a: aa66         	add	r2, sp, #0x198
    9e4c: f7f9 fbd8    	bl	0x3600 <orange_dsp::exponential::block::<false, 2, 3>> @ imm = #-0x6850
    9e50: f89d 0229    	ldrb.w	r0, [sp, #0x229]
    9e54: f89d 1228    	ldrb.w	r1, [sp, #0x228]
    9e58: 2801         	cmp	r0, #0x1
    9e5a: 440c         	add	r4, r1
    9e5c: d114         	bne	0x9e88 <ram_probe::packed_probe::candidate+0x4e8> @ imm = #0x28
    9e5e: ed9d 0b88    	vldr	d0, [sp, #544]
    9e62: eeb4 9b49    	vcmp.f64	d9, d9
    9e66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e6a: eeb4 0b40    	vcmp.f64	d0, d0
    9e6e: fe10 1b09    	vselvs.f64	d1, d0, d9
    9e72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e76: fe11 0b00    	vselvs.f64	d0, d1, d0
    9e7a: eeb4 1b40    	vcmp.f64	d1, d0
    9e7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e82: fe31 9b00    	vselgt.f64	d9, d1, d0
    9e86: e02c         	b	0x9ee2 <ram_probe::packed_probe::candidate+0x542> @ imm = #0x58
    9e88: a888         	add	r0, sp, #0x220
    9e8a: a940         	add	r1, sp, #0x100
    9e8c: aa66         	add	r2, sp, #0x198
    9e8e: 2500         	movs	r5, #0x0
    9e90: e9cd 556e    	strd	r5, r5, [sp, #440]
    9e94: e9cd 5578    	strd	r5, r5, [sp, #480]
    9e98: e9cd 5568    	strd	r5, r5, [sp, #416]
    9e9c: f7f9 fbb0    	bl	0x3600 <orange_dsp::exponential::block::<false, 2, 3>> @ imm = #-0x68a0
    9ea0: ed9d 0b88    	vldr	d0, [sp, #544]
    9ea4: eeb4 9b49    	vcmp.f64	d9, d9
    9ea8: f89d 0228    	ldrb.w	r0, [sp, #0x228]
    9eac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9eb0: eeb4 0b40    	vcmp.f64	d0, d0
    9eb4: f89d 1229    	ldrb.w	r1, [sp, #0x229]
    9eb8: 4404         	add	r4, r0
    9eba: f8db 016c    	ldr.w	r0, [r11, #0x16c]
    9ebe: fe10 1b09    	vselvs.f64	d1, d0, d9
    9ec2: 3001         	adds	r0, #0x1
    9ec4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ec8: f8cb 016c    	str.w	r0, [r11, #0x16c]
    9ecc: fe11 0b00    	vselvs.f64	d0, d1, d0
    9ed0: eeb4 1b40    	vcmp.f64	d1, d0
    9ed4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ed8: fe31 9b00    	vselgt.f64	d9, d1, d0
    9edc: 2900         	cmp	r1, #0x0
    9ede: f000 81e7    	beq.w	0xa2b0 <ram_probe::packed_probe::candidate+0x910> @ imm = #0x3ce
    9ee2: a88c         	add	r0, sp, #0x230
    9ee4: a940         	add	r1, sp, #0x100
    9ee6: aa66         	add	r2, sp, #0x198
    9ee8: f7f9 fd5e    	bl	0x39a8 <orange_dsp::exponential::block::<false, 3, 5>> @ imm = #-0x6544
    9eec: f89d 0239    	ldrb.w	r0, [sp, #0x239]
    9ef0: f89d 1238    	ldrb.w	r1, [sp, #0x238]
    9ef4: 2801         	cmp	r0, #0x1
    9ef6: 440c         	add	r4, r1
    9ef8: d11a         	bne	0x9f30 <ram_probe::packed_probe::candidate+0x590> @ imm = #0x34
    9efa: ed9d 0b8c    	vldr	d0, [sp, #560]
    9efe: eeb4 9b49    	vcmp.f64	d9, d9
    9f02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f06: eeb4 0b40    	vcmp.f64	d0, d0
    9f0a: fe10 1b09    	vselvs.f64	d1, d0, d9
    9f0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f12: fe11 0b00    	vselvs.f64	d0, d1, d0
    9f16: eeb4 1b40    	vcmp.f64	d1, d0
    9f1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f1e: fe31 9b00    	vselgt.f64	d9, d1, d0
    9f22: e036         	b	0x9f92 <ram_probe::packed_probe::candidate+0x5f2> @ imm = #0x6c
    9f24: bf00         	nop
    9f26: bf00         	nop
    9f28: f8cb 5170    	str.w	r5, [r11, #0x170]
    9f2c: e1c7         	b	0xa2be <ram_probe::packed_probe::candidate+0x91e> @ imm = #0x38e
    9f2e: bf00         	nop
    9f30: a88c         	add	r0, sp, #0x230
    9f32: a940         	add	r1, sp, #0x100
    9f34: aa66         	add	r2, sp, #0x198
    9f36: 2500         	movs	r5, #0x0
    9f38: e9cd 556a    	strd	r5, r5, [sp, #424]
    9f3c: e9cd 5570    	strd	r5, r5, [sp, #448]
    9f40: e9cd 5572    	strd	r5, r5, [sp, #456]
    9f44: e9cd 557a    	strd	r5, r5, [sp, #488]
    9f48: e9cd 557c    	strd	r5, r5, [sp, #496]
    9f4c: f7f9 fd2c    	bl	0x39a8 <orange_dsp::exponential::block::<false, 3, 5>> @ imm = #-0x65a8
    9f50: ed9d 0b8c    	vldr	d0, [sp, #560]
    9f54: eeb4 9b49    	vcmp.f64	d9, d9
    9f58: f89d 0238    	ldrb.w	r0, [sp, #0x238]
    9f5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f60: eeb4 0b40    	vcmp.f64	d0, d0
    9f64: f89d 1239    	ldrb.w	r1, [sp, #0x239]
    9f68: 4404         	add	r4, r0
    9f6a: f8db 016c    	ldr.w	r0, [r11, #0x16c]
    9f6e: fe10 1b09    	vselvs.f64	d1, d0, d9
    9f72: 3001         	adds	r0, #0x1
    9f74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f78: f8cb 016c    	str.w	r0, [r11, #0x16c]
    9f7c: fe11 0b00    	vselvs.f64	d0, d1, d0
    9f80: eeb4 1b40    	vcmp.f64	d1, d0
    9f84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f88: fe31 9b00    	vselgt.f64	d9, d1, d0
    9f8c: 2900         	cmp	r1, #0x0
    9f8e: f000 8193    	beq.w	0xa2b8 <ram_probe::packed_probe::candidate+0x918> @ imm = #0x326
    9f92: a890         	add	r0, sp, #0x240
    9f94: a940         	add	r1, sp, #0x100
    9f96: aa66         	add	r2, sp, #0x198
    9f98: f7fa f81a    	bl	0x3fd0 <orange_dsp::exponential::block::<false, 4, 2>> @ imm = #-0x5fcc
    9f9c: f89d 0249    	ldrb.w	r0, [sp, #0x249]
    9fa0: f89d 1248    	ldrb.w	r1, [sp, #0x248]
    9fa4: 2801         	cmp	r0, #0x1
    9fa6: eb01 0804    	add.w	r8, r1, r4
    9faa: d119         	bne	0x9fe0 <ram_probe::packed_probe::candidate+0x640> @ imm = #0x32
    9fac: ed9d 0b90    	vldr	d0, [sp, #576]
    9fb0: eeb4 9b49    	vcmp.f64	d9, d9
    9fb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9fb8: eeb4 0b40    	vcmp.f64	d0, d0
    9fbc: fe10 1b09    	vselvs.f64	d1, d0, d9
    9fc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9fc4: fe11 0b00    	vselvs.f64	d0, d1, d0
    9fc8: eeb4 1b40    	vcmp.f64	d1, d0
    9fcc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9fd0: fe31 0b00    	vselgt.f64	d0, d1, d0
    9fd4: e02f         	b	0xa036 <ram_probe::packed_probe::candidate+0x696> @ imm = #0x5e
    9fd6: bf00         	nop
    9fd8: 2001         	movs	r0, #0x1
    9fda: e16e         	b	0xa2ba <ram_probe::packed_probe::candidate+0x91a> @ imm = #0x2dc
    9fdc: bf00         	nop
    9fde: bf00         	nop
    9fe0: a890         	add	r0, sp, #0x240
    9fe2: a940         	add	r1, sp, #0x100
    9fe4: aa66         	add	r2, sp, #0x198
    9fe6: 2400         	movs	r4, #0x0
    9fe8: e9cd 4474    	strd	r4, r4, [sp, #464]
    9fec: e9cd 447e    	strd	r4, r4, [sp, #504]
    9ff0: f7f9 ffee    	bl	0x3fd0 <orange_dsp::exponential::block::<false, 4, 2>> @ imm = #-0x6024
    9ff4: ed9d 0b90    	vldr	d0, [sp, #576]
    9ff8: eeb4 9b49    	vcmp.f64	d9, d9
    9ffc: f89d 0248    	ldrb.w	r0, [sp, #0x248]
    a000: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a004: eeb4 0b40    	vcmp.f64	d0, d0
    a008: f89d 1249    	ldrb.w	r1, [sp, #0x249]
    a00c: 4480         	add	r8, r0
    a00e: f8db 016c    	ldr.w	r0, [r11, #0x16c]
    a012: fe10 1b09    	vselvs.f64	d1, d0, d9
    a016: 3001         	adds	r0, #0x1
    a018: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a01c: f8cb 016c    	str.w	r0, [r11, #0x16c]
    a020: fe11 0b00    	vselvs.f64	d0, d1, d0
    a024: eeb4 1b40    	vcmp.f64	d1, d0
    a028: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a02c: fe31 0b00    	vselgt.f64	d0, d1, d0
    a030: 2900         	cmp	r1, #0x0
    a032: f000 8155    	beq.w	0xa2e0 <ram_probe::packed_probe::candidate+0x940> @ imm = #0x2aa
    a036: ac94         	add	r4, sp, #0x250
    a038: a908         	add	r1, sp, #0x20
    a03a: 22e0         	movs	r2, #0xe0
    a03c: 4620         	mov	r0, r4
    a03e: ed8d 0b00    	vstr	d0, [sp]
    a042: f002 f891    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x2122
    a046: a866         	add	r0, sp, #0x198
    a048: f24c 4c70    	movw	r12, #0xc470
    a04c: ed9f bbc2    	vldr	d11, [pc, #776]         @ 0xa358 <ram_probe::packed_probe::candidate+0x9b8>
    a050: ec90 0b10    	vldmia	r0, {d0, d1, d2, d3, d4, d5, d6, d7}
    a054: ed9d ab94    	vldr	d10, [sp, #592]
    a058: a878         	add	r0, sp, #0x1e0
    a05a: 2102         	movs	r1, #0x2
    a05c: ee00 ab0b    	vmla.f64	d10, d0, d11
    a060: 2200         	movs	r2, #0x0
    a062: ec90 cb08    	vldmia	r0, {d12, d13, d14, d15}
    a066: ed9f bbbe    	vldr	d11, [pc, #760]         @ 0xa360 <ram_probe::packed_probe::candidate+0x9c0>
    a06a: eeb0 8b4a    	vmov.f64	d8, d10
    a06e: f104 0010    	add.w	r0, r4, #0x10
    a072: f2c0 0c00    	movt	r12, #0x0
    a076: f04f 0e01    	mov.w	lr, #0x1
    a07a: ed8d 7b04    	vstr	d7, [sp, #16]
    a07e: ed9d 7b76    	vldr	d7, [sp, #472]
    a082: ed9d 9b96    	vldr	d9, [sp, #600]
    a086: ee00 9b0b    	vmla.f64	d9, d0, d11
    a08a: ed8d ab94    	vstr	d10, [sp, #592]
    a08e: ed8d 9b96    	vstr	d9, [sp, #600]
    a092: e008         	b	0xa0a6 <ram_probe::packed_probe::candidate+0x706> @ imm = #0x10
    a094: bf00         	nop
    a096: bf00         	nop
    a098: 3268         	adds	r2, #0x68
    a09a: 3101         	adds	r1, #0x1
    a09c: f5b2 6f29    	cmp.w	r2, #0xa90
    a0a0: f100 0008    	add.w	r0, r0, #0x8
    a0a4: d05c         	beq	0xa160 <ram_probe::packed_probe::candidate+0x7c0> @ imm = #0xb8
    a0a6: eb0c 0602    	add.w	r6, r12, r2
    a0aa: f64f 74c0    	movw	r4, #0xffc0
    a0ae: ed90 9b00    	vldr	d9, [r0]
    a0b2: fa0e f301    	lsl.w	r3, lr, r1
    a0b6: f6c0 747f    	movt	r4, #0xf7f
    a0ba: ed96 bb34    	vldr	d11, [r6, #208]
    a0be: 401c         	ands	r4, r3
    a0c0: ee00 9b0b    	vmla.f64	d9, d0, d11
    a0c4: d003         	beq	0xa0ce <ram_probe::packed_probe::candidate+0x72e> @ imm = #0x6
    a0c6: ed96 bb36    	vldr	d11, [r6, #216]
    a0ca: ee01 9b0b    	vmla.f64	d9, d1, d11
    a0ce: f248 0500    	movw	r5, #0x8000
    a0d2: f6c0 657f    	movt	r5, #0xe7f
    a0d6: 401d         	ands	r5, r3
    a0d8: d003         	beq	0xa0e2 <ram_probe::packed_probe::candidate+0x742> @ imm = #0x6
    a0da: ed96 bb38    	vldr	d11, [r6, #224]
    a0de: ee02 9b0b    	vmla.f64	d9, d2, d11
    a0e2: ed96 bb3a    	vldr	d11, [r6, #232]
    a0e6: ee03 9b0b    	vmla.f64	d9, d3, d11
    a0ea: b11c         	cbz	r4, 0xa0f4 <ram_probe::packed_probe::candidate+0x754> @ imm = #0x6
    a0ec: ed96 bb3c    	vldr	d11, [r6, #240]
    a0f0: ee04 9b0b    	vmla.f64	d9, d4, d11
    a0f4: b13d         	cbz	r5, 0xa106 <ram_probe::packed_probe::candidate+0x766> @ imm = #0xe
    a0f6: ed96 bb3e    	vldr	d11, [r6, #248]
    a0fa: ed96 ab40    	vldr	d10, [r6, #256]
    a0fe: ee05 9b0b    	vmla.f64	d9, d5, d11
    a102: ee06 9b0a    	vmla.f64	d9, d6, d10
    a106: f013 6f06    	tst.w	r3, #0x8600000
    a10a: d005         	beq	0xa118 <ram_probe::packed_probe::candidate+0x778> @ imm = #0xa
    a10c: ed96 ab42    	vldr	d10, [r6, #264]
    a110: ed9d bb04    	vldr	d11, [sp, #16]
    a114: ee0b 9b0a    	vmla.f64	d9, d11, d10
    a118: ed96 ab44    	vldr	d10, [r6, #272]
    a11c: ee07 9b0a    	vmla.f64	d9, d7, d10
    a120: ed80 9b00    	vstr	d9, [r0]
    a124: b12c         	cbz	r4, 0xa132 <ram_probe::packed_probe::candidate+0x792> @ imm = #0xa
    a126: ed96 ab46    	vldr	d10, [r6, #280]
    a12a: ee0c 9b0a    	vmla.f64	d9, d12, d10
    a12e: ed80 9b00    	vstr	d9, [r0]
    a132: b14d         	cbz	r5, 0xa148 <ram_probe::packed_probe::candidate+0x7a8> @ imm = #0x12
    a134: ed96 ab48    	vldr	d10, [r6, #288]
    a138: ed96 bb4a    	vldr	d11, [r6, #296]
    a13c: ee0d 9b0a    	vmla.f64	d9, d13, d10
    a140: ee0e 9b0b    	vmla.f64	d9, d14, d11
    a144: ed80 9b00    	vstr	d9, [r0]
    a148: f013 6f06    	tst.w	r3, #0x8600000
    a14c: d0a4         	beq	0xa098 <ram_probe::packed_probe::candidate+0x6f8> @ imm = #-0xb8
    a14e: ed96 ab4c    	vldr	d10, [r6, #304]
    a152: ee0f 9b0a    	vmla.f64	d9, d15, d10
    a156: ed80 9b00    	vstr	d9, [r0]
    a15a: e79d         	b	0xa098 <ram_probe::packed_probe::candidate+0x6f8> @ imm = #-0xc6
    a15c: bf00         	nop
    a15e: bf00         	nop
    a160: a8cc         	add	r0, sp, #0x330
    a162: a940         	add	r1, sp, #0x100
    a164: aa66         	add	r2, sp, #0x198
    a166: f7f8 fcfb    	bl	0x2b60 <orange_dsp::exponential::observations::<false>> @ imm = #-0x760a
    a16a: ec51 0b18    	vmov	r0, r1, d8
    a16e: f64f 70ff    	movw	r0, #0xffff
    a172: f6c7 70ef    	movt	r0, #0x7fef
    a176: f021 4100    	bic	r1, r1, #0x80000000
    a17a: 4281         	cmp	r1, r0
    a17c: f300 808c    	bgt.w	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x118
    a180: 9997         	ldr	r1, [sp, #0x25c]
    a182: f021 4100    	bic	r1, r1, #0x80000000
    a186: 4281         	cmp	r1, r0
    a188: f300 8086    	bgt.w	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x10c
    a18c: 9999         	ldr	r1, [sp, #0x264]
    a18e: f021 4100    	bic	r1, r1, #0x80000000
    a192: 4281         	cmp	r1, r0
    a194: f300 8080    	bgt.w	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x100
    a198: 999b         	ldr	r1, [sp, #0x26c]
    a19a: f021 4100    	bic	r1, r1, #0x80000000
    a19e: 4281         	cmp	r1, r0
    a1a0: dc7a         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0xf4
    a1a2: 999d         	ldr	r1, [sp, #0x274]
    a1a4: f021 4100    	bic	r1, r1, #0x80000000
    a1a8: 4281         	cmp	r1, r0
    a1aa: dc75         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0xea
    a1ac: 999f         	ldr	r1, [sp, #0x27c]
    a1ae: f021 4100    	bic	r1, r1, #0x80000000
    a1b2: 4281         	cmp	r1, r0
    a1b4: dc70         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0xe0
    a1b6: 99a1         	ldr	r1, [sp, #0x284]
    a1b8: f021 4100    	bic	r1, r1, #0x80000000
    a1bc: 4281         	cmp	r1, r0
    a1be: dc6b         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0xd6
    a1c0: 99a3         	ldr	r1, [sp, #0x28c]
    a1c2: f021 4100    	bic	r1, r1, #0x80000000
    a1c6: 4281         	cmp	r1, r0
    a1c8: dc66         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0xcc
    a1ca: 99a5         	ldr	r1, [sp, #0x294]
    a1cc: f021 4100    	bic	r1, r1, #0x80000000
    a1d0: 4281         	cmp	r1, r0
    a1d2: dc61         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0xc2
    a1d4: 99a7         	ldr	r1, [sp, #0x29c]
    a1d6: f021 4100    	bic	r1, r1, #0x80000000
    a1da: 4281         	cmp	r1, r0
    a1dc: dc5c         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0xb8
    a1de: 99a9         	ldr	r1, [sp, #0x2a4]
    a1e0: f021 4100    	bic	r1, r1, #0x80000000
    a1e4: 4281         	cmp	r1, r0
    a1e6: dc57         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0xae
    a1e8: 99ab         	ldr	r1, [sp, #0x2ac]
    a1ea: f021 4100    	bic	r1, r1, #0x80000000
    a1ee: 4281         	cmp	r1, r0
    a1f0: dc52         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0xa4
    a1f2: 99ad         	ldr	r1, [sp, #0x2b4]
    a1f4: f021 4100    	bic	r1, r1, #0x80000000
    a1f8: 4281         	cmp	r1, r0
    a1fa: dc4d         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x9a
    a1fc: 99af         	ldr	r1, [sp, #0x2bc]
    a1fe: f021 4100    	bic	r1, r1, #0x80000000
    a202: 4281         	cmp	r1, r0
    a204: dc48         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x90
    a206: 99b1         	ldr	r1, [sp, #0x2c4]
    a208: f021 4100    	bic	r1, r1, #0x80000000
    a20c: 4281         	cmp	r1, r0
    a20e: dc43         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x86
    a210: 99b3         	ldr	r1, [sp, #0x2cc]
    a212: f021 4100    	bic	r1, r1, #0x80000000
    a216: 4281         	cmp	r1, r0
    a218: dc3e         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x7c
    a21a: 99b5         	ldr	r1, [sp, #0x2d4]
    a21c: f021 4100    	bic	r1, r1, #0x80000000
    a220: 4281         	cmp	r1, r0
    a222: dc39         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x72
    a224: 99b7         	ldr	r1, [sp, #0x2dc]
    a226: f021 4100    	bic	r1, r1, #0x80000000
    a22a: 4281         	cmp	r1, r0
    a22c: dc34         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x68
    a22e: 99b9         	ldr	r1, [sp, #0x2e4]
    a230: f021 4100    	bic	r1, r1, #0x80000000
    a234: 4281         	cmp	r1, r0
    a236: dc2f         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x5e
    a238: 99bb         	ldr	r1, [sp, #0x2ec]
    a23a: f021 4100    	bic	r1, r1, #0x80000000
    a23e: 4281         	cmp	r1, r0
    a240: dc2a         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x54
    a242: 99bd         	ldr	r1, [sp, #0x2f4]
    a244: f021 4100    	bic	r1, r1, #0x80000000
    a248: 4281         	cmp	r1, r0
    a24a: dc25         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x4a
    a24c: 99bf         	ldr	r1, [sp, #0x2fc]
    a24e: f021 4100    	bic	r1, r1, #0x80000000
    a252: 4281         	cmp	r1, r0
    a254: dc20         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x40
    a256: 99c1         	ldr	r1, [sp, #0x304]
    a258: f021 4100    	bic	r1, r1, #0x80000000
    a25c: 4281         	cmp	r1, r0
    a25e: dc1b         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x36
    a260: 99c3         	ldr	r1, [sp, #0x30c]
    a262: f021 4100    	bic	r1, r1, #0x80000000
    a266: 4281         	cmp	r1, r0
    a268: dc16         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x2c
    a26a: 99c5         	ldr	r1, [sp, #0x314]
    a26c: f021 4100    	bic	r1, r1, #0x80000000
    a270: 4281         	cmp	r1, r0
    a272: dc11         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x22
    a274: 99c7         	ldr	r1, [sp, #0x31c]
    a276: f021 4100    	bic	r1, r1, #0x80000000
    a27a: 4281         	cmp	r1, r0
    a27c: dc0c         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0x18
    a27e: 99c9         	ldr	r1, [sp, #0x324]
    a280: f021 4100    	bic	r1, r1, #0x80000000
    a284: 4281         	cmp	r1, r0
    a286: dc07         	bgt	0xa298 <ram_probe::packed_probe::candidate+0x8f8> @ imm = #0xe
    a288: 98cb         	ldr	r0, [sp, #0x32c]
    a28a: 2100         	movs	r1, #0x0
    a28c: f020 4000    	bic	r0, r0, #0x80000000
    a290: f6c7 71f0    	movt	r1, #0x7ff0
    a294: 4288         	cmp	r0, r1
    a296: db33         	blt	0xa300 <ram_probe::packed_probe::candidate+0x960> @ imm = #0x66
    a298: 9a03         	ldr	r2, [sp, #0xc]
    a29a: 2000         	movs	r0, #0x0
    a29c: f04f 41ff    	mov.w	r1, #0x7f800000
    a2a0: e9c2 0100    	strd	r0, r1, [r2]
    a2a4: f882 8008    	strb.w	r8, [r2, #0x8]
    a2a8: 7250         	strb	r0, [r2, #0x9]
    a2aa: e010         	b	0xa2ce <ram_probe::packed_probe::candidate+0x92e> @ imm = #0x20
    a2ac: bf00         	nop
    a2ae: bf00         	nop
    a2b0: 2002         	movs	r0, #0x2
    a2b2: e002         	b	0xa2ba <ram_probe::packed_probe::candidate+0x91a> @ imm = #0x4
    a2b4: bf00         	nop
    a2b6: bf00         	nop
    a2b8: 2003         	movs	r0, #0x3
    a2ba: f8cb 0170    	str.w	r0, [r11, #0x170]
    a2be: 9803         	ldr	r0, [sp, #0xc]
    a2c0: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    a2c4: 6005         	str	r5, [r0]
    a2c6: ed80 0a01    	vstr	s0, [r0, #4]
    a2ca: 7204         	strb	r4, [r0, #0x8]
    a2cc: 7245         	strb	r5, [r0, #0x9]
    a2ce: f50d 7d74    	add.w	sp, sp, #0x3d0
    a2d2: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    a2d6: b001         	add	sp, #0x4
    a2d8: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    a2dc: bdf0         	pop	{r4, r5, r6, r7, pc}
    a2de: bf00         	nop
    a2e0: 2004         	movs	r0, #0x4
    a2e2: f8cb 0170    	str.w	r0, [r11, #0x170]
    a2e6: 9803         	ldr	r0, [sp, #0xc]
    a2e8: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    a2ec: 6004         	str	r4, [r0]
    a2ee: ed80 0a01    	vstr	s0, [r0, #4]
    a2f2: f880 8008    	strb.w	r8, [r0, #0x8]
    a2f6: 7244         	strb	r4, [r0, #0x9]
    a2f8: e7e9         	b	0xa2ce <ram_probe::packed_probe::candidate+0x92e> @ imm = #-0x2e
    a2fa: bf00         	nop
    a2fc: bf00         	nop
    a2fe: bf00         	nop
    a300: a994         	add	r1, sp, #0x250
    a302: 22e0         	movs	r2, #0xe0
    a304: 4658         	mov	r0, r11
    a306: f001 ff2f    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x1e5e
    a30a: a966         	add	r1, sp, #0x198
    a30c: 2268         	movs	r2, #0x68
    a30e: f10b 00e0    	add.w	r0, r11, #0xe0
    a312: f001 ff29    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x1e52
    a316: eebb 0b08    	vmov.f64	d0, #-2.400000e+01
    a31a: 9903         	ldr	r1, [sp, #0xc]
    a31c: f8db 0168    	ldr.w	r0, [r11, #0x168]
    a320: ed9d 2b04    	vldr	d2, [sp, #16]
    a324: 3001         	adds	r0, #0x1
    a326: f8cb 0168    	str.w	r0, [r11, #0x168]
    a32a: ed9d 1bdc    	vldr	d1, [sp, #880]
    a32e: f881 8008    	strb.w	r8, [r1, #0x8]
    a332: 2001         	movs	r0, #0x1
    a334: ee02 1b00    	vmla.f64	d1, d2, d0
    a338: 7248         	strb	r0, [r1, #0x9]
    a33a: ed9d 0b06    	vldr	d0, [sp, #24]
    a33e: ed8b 0b52    	vstr	d0, [r11, #328]
    a342: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    a346: ed81 0a00    	vstr	s0, [r1]
    a34a: ed9d 1b00    	vldr	d1, [sp]
    a34e: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    a352: ed81 1a01    	vstr	s2, [r1, #4]
    a356: e7ba         	b	0xa2ce <ram_probe::packed_probe::candidate+0x92e> @ imm = #-0x8c
    a358: fb f0 9b 24  	.word	0x249bf0fb
    a35c: c5 11 76 c0  	.word	0xc07611c5
    a360: 48 32 65 16  	.word	0x16653248
    a364: 6d d5 b0 bf  	.word	0xbfb0d56d

0000a368 <core::panicking::panic_fmt>:
    a368: b580         	push	{r7, lr}
    a36a: 466f         	mov	r7, sp
    a36c: f7ff fac8    	bl	0x9900 <__rustc::rust_begin_unwind> @ imm = #-0xa70

0000a370 <core::panicking::panic>:
    a370: b580         	push	{r7, lr}
    a372: 466f         	mov	r7, sp
    a374: 0049         	lsls	r1, r1, #0x1
    a376: 3101         	adds	r1, #0x1
    a378: f7ff fff6    	bl	0xa368 <core::panicking::panic_fmt> @ imm = #-0x14

0000a37c <core::panicking::panic_bounds_check>:
    a37c: b5f8         	push	{r3, r4, r5, r6, r7, lr}
    a37e: af04         	add	r7, sp, #0x10
    a380: 4801         	ldr	r0, [pc, #0x4]          @ 0xa388 <core::panicking::panic_bounds_check+0xc>
    a382: 4669         	mov	r1, sp
    a384: f7ff fff0    	bl	0xa368 <core::panicking::panic_fmt> @ imm = #-0x20
    a388: 7f c3 00 00  	.word	0x0000c37f
    a38c: d4 d4 d4 d4  	.word	0xd4d4d4d4

0000a390 <orange_dsp::exponential::law>:
    a390: b5f0         	push	{r4, r5, r6, r7, lr}
    a392: af03         	add	r7, sp, #0xc
    a394: f84d 8d04    	str	r8, [sp, #-4]!
    a398: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    a39c: b0a6         	sub	sp, #0x98
    a39e: 46e8         	mov	r8, sp
    a3a0: 460e         	mov	r6, r1
    a3a2: 4604         	mov	r4, r0
    a3a4: 2198         	movs	r1, #0x98
    a3a6: 4640         	mov	r0, r8
    a3a8: 4615         	mov	r5, r2
    a3aa: f001 fe86    	bl	0xc0ba <__aeabi_memclr8> @ imm = #0x1d0c
    a3ae: 2e02         	cmp	r6, #0x2
    a3b0: d21e         	bhs	0xa3f0 <orange_dsp::exponential::law+0x60> @ imm = #0x3c
    a3b2: 2e00         	cmp	r6, #0x0
    a3b4: f000 80c8    	beq.w	0xa548 <orange_dsp::exponential::law+0x1b8> @ imm = #0x190
    a3b8: ed95 2b02    	vldr	d2, [r5, #8]
    a3bc: ed9f 0b04    	vldr	d0, [pc, #16]           @ 0xa3d0 <orange_dsp::exponential::law+0x40>
    a3c0: ee82 5b00    	vdiv.f64	d5, d2, d0
    a3c4: ed9f 1b04    	vldr	d1, [pc, #16]           @ 0xa3d8 <orange_dsp::exponential::law+0x48>
    a3c8: e0cc         	b	0xa564 <orange_dsp::exponential::law+0x1d4> @ imm = #0x198
    a3ca: bf00         	nop
    a3cc: bf00         	nop
    a3ce: bf00         	nop
    a3d0: 9a 08 1b 9e  	.word	0x9e1b089a
    a3d4: 5e 29 a7 bf  	.word	0xbfa7295e
    a3d8: b5 1c 3f 18  	.word	0x183f1cb5
    a3dc: 69 ab 7d 3e  	.word	0x3e7dab69
    a3e0: c2 17 26 53  	.word	0x532617c2
    a3e4: 05 a3 72 bf  	.word	0xbf72a305
		...
    a3f0: d152         	bne	0xa498 <orange_dsp::exponential::law+0x108> @ imm = #0xa4
    a3f2: ed95 2b04    	vldr	d2, [r5, #16]
    a3f6: 2010         	movs	r0, #0x10
    a3f8: ed95 3b06    	vldr	d3, [r5, #24]
    a3fc: eeb6 4b00    	vmov.f64	d4, #5.000000e-01
    a400: eeb4 2b43    	vcmp.f64	d2, d3
    a404: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a408: bf88         	it	hi
    a40a: 2018         	movhi	r0, #0x18
    a40c: eeb7 6b00    	vmov.f64	d6, #1.000000e+00
    a410: 1829         	adds	r1, r5, r0
    a412: 4440         	add	r0, r8
    a414: ed1f 7b0e    	vldr	d7, [pc, #-56]          @ 0xa3e0 <orange_dsp::exponential::law+0x50>
    a418: ed91 0b00    	vldr	d0, [r1]
    a41c: f60f 0160    	adr.w	r1, #2144
    a420: ee34 1b40    	vsub.f64	d1, d4, d0
    a424: ed1f 0b10    	vldr	d0, [pc, #-64]          @ 0xa3e8 <orange_dsp::exponential::law+0x58>
    a428: fe81 5b40    	vminnm.f64	d5, d1, d0
    a42c: ee32 2b43    	vsub.f64	d2, d2, d3
    a430: ee05 6b04    	vmla.f64	d6, d5, d4
    a434: ed9f 4bf2    	vldr	d4, [pc, #968]          @ 0xa800 <orange_dsp::exponential::law+0x470>
    a438: ee26 5b04    	vmul.f64	d5, d6, d4
    a43c: ed9f 6bf2    	vldr	d6, [pc, #968]          @ 0xa808 <orange_dsp::exponential::law+0x478>
    a440: fe85 4b06    	vmaxnm.f64	d4, d5, d6
    a444: eeb4 5b46    	vcmp.f64	d5, d6
    a448: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a44c: ee34 7b07    	vadd.f64	d7, d4, d7
    a450: eeb5 1b40    	vcmp.f64	d1, #0
    a454: bfc8         	it	gt
    a456: 3108         	addgt	r1, #0x8
    a458: ed9f 8bed    	vldr	d8, [pc, #948]          @ 0xa810 <orange_dsp::exponential::law+0x480>
    a45c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a460: ee22 3b07    	vmul.f64	d3, d2, d7
    a464: ee87 5b08    	vdiv.f64	d5, d7, d8
    a468: ee83 4b08    	vdiv.f64	d4, d3, d8
    a46c: ed91 3b00    	vldr	d3, [r1]
    a470: ed8d 5b04    	vstr	d5, [sp, #16]
    a474: bf48         	it	mi
    a476: eeb0 0b43    	vmovmi.f64	d0, d3
    a47a: eeb1 1b45    	vneg.f64	d1, d5
    a47e: ee22 0b00    	vmul.f64	d0, d2, d0
    a482: ed8d 1b06    	vstr	d1, [sp, #24]
    a486: ee80 0b08    	vdiv.f64	d0, d0, d8
    a48a: ed90 1b00    	vldr	d1, [r0]
    a48e: ee31 0b40    	vsub.f64	d0, d1, d0
    a492: e14b         	b	0xa72c <orange_dsp::exponential::law+0x39c> @ imm = #0x296
    a494: bf00         	nop
    a496: bf00         	nop
    a498: 2e08         	cmp	r6, #0x8
    a49a: f080 8159    	bhs.w	0xa750 <orange_dsp::exponential::law+0x3c0> @ imm = #0x2b2
    a49e: 1c70         	adds	r0, r6, #0x1
    a4a0: 1db1         	adds	r1, r6, #0x6
    a4a2: 2e07         	cmp	r6, #0x7
    a4a4: eb05 02c0    	add.w	r2, r5, r0, lsl #3
    a4a8: ed92 0b00    	vldr	d0, [r2]
    a4ac: eb05 02c1    	add.w	r2, r5, r1, lsl #3
    a4b0: ed92 1b00    	vldr	d1, [r2]
    a4b4: f040 8180    	bne.w	0xa7b8 <orange_dsp::exponential::law+0x428> @ imm = #0x300
    a4b8: eeb0 3bc0    	vabs.f64	d3, d0
    a4bc: eeb3 2b05    	vmov.f64	d2, #2.100000e+01
    a4c0: eeb4 3b42    	vcmp.f64	d3, d2
    a4c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4c8: f240 820a    	bls.w	0xa8e0 <orange_dsp::exponential::law+0x550> @ imm = #0x414
    a4cc: ee82 3b03    	vdiv.f64	d3, d2, d3
    a4d0: eeb7 6b00    	vmov.f64	d6, #1.000000e+00
    a4d4: ee23 4b03    	vmul.f64	d4, d3, d3
    a4d8: eeb0 7b46    	vmov.f64	d7, d6
    a4dc: ee24 4b04    	vmul.f64	d4, d4, d4
    a4e0: ee24 4b04    	vmul.f64	d4, d4, d4
    a4e4: ee24 4b04    	vmul.f64	d4, d4, d4
    a4e8: ee34 5b06    	vadd.f64	d5, d4, d6
    a4ec: eeb4 5b46    	vcmp.f64	d5, d6
    a4f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4f4: d009         	beq	0xa50a <orange_dsp::exponential::law+0x17a> @ imm = #0x12
    a4f6: eeb0 7b45    	vmov.f64	d7, d5
    a4fa: eeb1 7bc7    	vsqrt.f64	d7, d7
    a4fe: eeb1 7bc7    	vsqrt.f64	d7, d7
    a502: eeb1 7bc7    	vsqrt.f64	d7, d7
    a506: eeb1 7bc7    	vsqrt.f64	d7, d7
    a50a: ec53 2b10    	vmov	r2, r3, d0
    a50e: ec56 2b16    	vmov	r2, r6, d6
    a512: eeb4 0b40    	vcmp.f64	d0, d0
    a516: 0fdb         	lsrs	r3, r3, #0x1f
    a518: f363 76df    	bfi	r6, r3, #31, #1
    a51c: ec46 2b18    	vmov	d8, r2, r6
    a520: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a524: ee86 6b07    	vdiv.f64	d6, d6, d7
    a528: ee28 2b02    	vmul.f64	d2, d8, d2
    a52c: ee86 5b05    	vdiv.f64	d5, d6, d5
    a530: ee22 2b06    	vmul.f64	d2, d2, d6
    a534: ee23 3b04    	vmul.f64	d3, d3, d4
    a538: ed9f 4bb7    	vldr	d4, [pc, #732]          @ 0xa818 <orange_dsp::exponential::law+0x488>
    a53c: ee23 3b05    	vmul.f64	d3, d3, d5
    a540: fe14 4b02    	vselvs.f64	d4, d4, d2
    a544: e1f1         	b	0xa92a <orange_dsp::exponential::law+0x59a> @ imm = #0x3e2
    a546: bf00         	nop
    a548: eeba 0b0e    	vmov.f64	d0, #-1.500000e+01
    a54c: ed95 1b00    	vldr	d1, [r5]
    a550: ee30 2b41    	vsub.f64	d2, d0, d1
    a554: ed9f 3bb2    	vldr	d3, [pc, #712]          @ 0xa820 <orange_dsp::exponential::law+0x490>
    a558: ee82 5b03    	vdiv.f64	d5, d2, d3
    a55c: ee31 2b00    	vadd.f64	d2, d1, d0
    a560: ed9f 1bb1    	vldr	d1, [pc, #708]          @ 0xa828 <orange_dsp::exponential::law+0x498>
    a564: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0xa820 <orange_dsp::exponential::law+0x490>
    a568: eebe bb00    	vmov.f64	d11, #-5.000000e-01
    a56c: 2100         	movs	r1, #0x0
    a56e: ee82 2b00    	vdiv.f64	d2, d2, d0
    a572: ed9f 9baf    	vldr	d9, [pc, #700]          @ 0xa830 <orange_dsp::exponential::law+0x4a0>
    a576: eeb4 9b42    	vcmp.f64	d9, d2
    a57a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a57e: ed9f abae    	vldr	d10, [pc, #696]         @ 0xa838 <orange_dsp::exponential::law+0x4a8>
    a582: fe39 2b02    	vselgt.f64	d2, d9, d2
    a586: ed9f ebae    	vldr	d14, [pc, #696]         @ 0xa840 <orange_dsp::exponential::law+0x4b0>
    a58a: eeb4 2b4a    	vcmp.f64	d2, d10
    a58e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a592: ed9f cbad    	vldr	d12, [pc, #692]         @ 0xa848 <orange_dsp::exponential::law+0x4b8>
    a596: fe3a 3b02    	vselgt.f64	d3, d10, d2
    a59a: eeb6 2b00    	vmov.f64	d2, #5.000000e-01
    a59e: eeb5 3b40    	vcmp.f64	d3, #0
    a5a2: eeb0 4b42    	vmov.f64	d4, d2
    a5a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5aa: bfb8         	it	lt
    a5ac: eeb0 4b4b    	vmovlt.f64	d4, d11
    a5b0: eeb4 9b45    	vcmp.f64	d9, d5
    a5b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5b8: ee03 4b0e    	vmla.f64	d4, d3, d14
    a5bc: fe39 5b05    	vselgt.f64	d5, d9, d5
    a5c0: eebd 4bc4    	vcvt.s32.f64	s8, d4
    a5c4: ed9f dba2    	vldr	d13, [pc, #648]         @ 0xa850 <orange_dsp::exponential::law+0x4c0>
    a5c8: eeb4 5b4a    	vcmp.f64	d5, d10
    a5cc: eeb8 6bc4    	vcvt.f64.s32	d6, s8
    a5d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a5d4: ed9f 0ba0    	vldr	d0, [pc, #640]          @ 0xa858 <orange_dsp::exponential::law+0x4c8>
    a5d8: ee14 0a10    	vmov	r0, s8
    a5dc: ee06 3b4c    	vmls.f64	d3, d6, d12
    a5e0: eeb0 8b40    	vmov.f64	d8, d0
    a5e4: f200 30ff    	addw	r0, r0, #0x3ff
    a5e8: ed9f 6b9d    	vldr	d6, [pc, #628]          @ 0xa860 <orange_dsp::exponential::law+0x4d0>
    a5ec: ea4f 5000    	lsl.w	r0, r0, #0x14
    a5f0: eeb0 7b46    	vmov.f64	d7, d6
    a5f4: ee03 7b0d    	vmla.f64	d7, d3, d13
    a5f8: fe3a 5b05    	vselgt.f64	d5, d10, d5
    a5fc: eeb0 ab42    	vmov.f64	d10, d2
    a600: ee03 8b07    	vmla.f64	d8, d3, d7
    a604: eeb5 5b40    	vcmp.f64	d5, #0
    a608: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a60c: ed9f 7b96    	vldr	d7, [pc, #600]          @ 0xa868 <orange_dsp::exponential::law+0x4d8>
    a610: bfb8         	it	lt
    a612: eeb0 ab4b    	vmovlt.f64	d10, d11
    a616: eeb0 fb47    	vmov.f64	d15, d7
    a61a: ee03 fb08    	vmla.f64	d15, d3, d8
    a61e: ee05 ab0e    	vmla.f64	d10, d5, d14
    a622: ed9f 9b93    	vldr	d9, [pc, #588]          @ 0xa870 <orange_dsp::exponential::law+0x4e0>
    a626: eefd 4bca    	vcvt.s32.f64	s9, d10
    a62a: eeb0 8b49    	vmov.f64	d8, d9
    a62e: ee03 8b0f    	vmla.f64	d8, d3, d15
    a632: ed9f bb91    	vldr	d11, [pc, #580]         @ 0xa878 <orange_dsp::exponential::law+0x4e8>
    a636: eeb0 ab4b    	vmov.f64	d10, d11
    a63a: ee03 ab08    	vmla.f64	d10, d3, d8
    a63e: eeb8 8be4    	vcvt.f64.s32	d8, s9
    a642: ed9f eb8f    	vldr	d14, [pc, #572]         @ 0xa880 <orange_dsp::exponential::law+0x4f0>
    a646: ee08 5b4c    	vmls.f64	d5, d8, d12
    a64a: eeb0 8b4e    	vmov.f64	d8, d14
    a64e: ee05 6b0d    	vmla.f64	d6, d5, d13
    a652: ee03 8b0a    	vmla.f64	d8, d3, d10
    a656: ee05 0b06    	vmla.f64	d0, d5, d6
    a65a: ed9f ab8b    	vldr	d10, [pc, #556]         @ 0xa888 <orange_dsp::exponential::law+0x4f8>
    a65e: ee05 7b00    	vmla.f64	d7, d5, d0
    a662: eeb0 cb4a    	vmov.f64	d12, d10
    a666: ee05 9b07    	vmla.f64	d9, d5, d7
    a66a: ee03 cb08    	vmla.f64	d12, d3, d8
    a66e: ee05 bb09    	vmla.f64	d11, d5, d9
    a672: ed9f 6b87    	vldr	d6, [pc, #540]          @ 0xa890 <orange_dsp::exponential::law+0x500>
    a676: ee05 eb0b    	vmla.f64	d14, d5, d11
    a67a: eeb0 0b46    	vmov.f64	d0, d6
    a67e: ee03 0b0c    	vmla.f64	d0, d3, d12
    a682: ee05 ab0e    	vmla.f64	d10, d5, d14
    a686: ed9f 7b84    	vldr	d7, [pc, #528]          @ 0xa898 <orange_dsp::exponential::law+0x508>
    a68a: eeb0 8b47    	vmov.f64	d8, d7
    a68e: ee03 8b00    	vmla.f64	d8, d3, d0
    a692: ee05 6b0a    	vmla.f64	d6, d5, d10
    a696: ed9f 0b82    	vldr	d0, [pc, #520]          @ 0xa8a0 <orange_dsp::exponential::law+0x510>
    a69a: eeb0 9b40    	vmov.f64	d9, d0
    a69e: ee03 9b08    	vmla.f64	d9, d3, d8
    a6a2: eeb0 8b42    	vmov.f64	d8, d2
    a6a6: ee05 7b06    	vmla.f64	d7, d5, d6
    a6aa: eeb7 6b00    	vmov.f64	d6, #1.000000e+00
    a6ae: ee03 8b09    	vmla.f64	d8, d3, d9
    a6b2: ee05 0b07    	vmla.f64	d0, d5, d7
    a6b6: eeb0 7b46    	vmov.f64	d7, d6
    a6ba: ee03 7b08    	vmla.f64	d7, d3, d8
    a6be: ee05 2b00    	vmla.f64	d2, d5, d0
    a6c2: eeb0 0b46    	vmov.f64	d0, d6
    a6c6: ee03 0b07    	vmla.f64	d0, d3, d7
    a6ca: eeb0 3b46    	vmov.f64	d3, d6
    a6ce: ee05 3b02    	vmla.f64	d3, d5, d2
    a6d2: ec40 1b12    	vmov	d2, r1, r0
    a6d6: ee14 0a90    	vmov	r0, s9
    a6da: ee05 6b03    	vmla.f64	d6, d5, d3
    a6de: f200 30ff    	addw	r0, r0, #0x3ff
    a6e2: 0500         	lsls	r0, r0, #0x14
    a6e4: ec40 1b13    	vmov	d3, r1, r0
    a6e8: eb05 00c6    	add.w	r0, r5, r6, lsl #3
    a6ec: ee20 0b02    	vmul.f64	d0, d0, d2
    a6f0: ee26 2b03    	vmul.f64	d2, d6, d3
    a6f4: ed9f 5b6c    	vldr	d5, [pc, #432]          @ 0xa8a8 <orange_dsp::exponential::law+0x518>
    a6f8: ee30 3b42    	vsub.f64	d3, d0, d2
    a6fc: ee32 0b00    	vadd.f64	d0, d2, d0
    a700: ed9f 2b47    	vldr	d2, [pc, #284]          @ 0xa820 <orange_dsp::exponential::law+0x490>
    a704: ee20 0b05    	vmul.f64	d0, d0, d5
    a708: ed90 4b00    	vldr	d4, [r0]
    a70c: eb08 00c6    	add.w	r0, r8, r6, lsl #3
    a710: ee80 0b02    	vdiv.f64	d0, d0, d2
    a714: ee23 3b05    	vmul.f64	d3, d3, d5
    a718: ee30 0b41    	vsub.f64	d0, d0, d1
    a71c: ee01 3b44    	vmls.f64	d3, d1, d4
    a720: ed9f 6b3b    	vldr	d6, [pc, #236]          @ 0xa810 <orange_dsp::exponential::law+0x480>
    a724: ee80 0b06    	vdiv.f64	d0, d0, d6
    a728: ee83 4b06    	vdiv.f64	d4, d3, d6
    a72c: ed80 0b00    	vstr	d0, [r0]
    a730: f104 0008    	add.w	r0, r4, #0x8
    a734: 4669         	mov	r1, sp
    a736: 2298         	movs	r2, #0x98
    a738: ed84 4b00    	vstr	d4, [r4]
    a73c: f001 fd14    	bl	0xc168 <__aeabi_memcpy8> @ imm = #0x1a28
    a740: b026         	add	sp, #0x98
    a742: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    a746: f85d 8b04    	ldr	r8, [sp], #4
    a74a: bdf0         	pop	{r4, r5, r6, r7, pc}
    a74c: bf00         	nop
    a74e: bf00         	nop
    a750: 1db0         	adds	r0, r6, #0x6
    a752: 2813         	cmp	r0, #0x13
    a754: f080 8264    	bhs.w	0xac20 <orange_dsp::exponential::law+0x890> @ imm = #0x4c8
    a758: eb05 01c0    	add.w	r1, r5, r0, lsl #3
    a75c: 2e0c         	cmp	r6, #0xc
    a75e: eeb7 2b00    	vmov.f64	d2, #1.000000e+00
    a762: eb08 00c0    	add.w	r0, r8, r0, lsl #3
    a766: ed91 0b00    	vldr	d0, [r1]
    a76a: f20f 41d4    	adr.w	r1, #1236
    a76e: bf08         	it	eq
    a770: 3108         	addeq	r1, #0x8
    a772: eeb0 3bc0    	vabs.f64	d3, d0
    a776: ed91 1b00    	vldr	d1, [r1]
    a77a: ee82 2b01    	vdiv.f64	d2, d2, d1
    a77e: eeb4 1b43    	vcmp.f64	d1, d3
    a782: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a786: eeb1 4b41    	vneg.f64	d4, d1
    a78a: ed1f 3be9    	vldr	d3, [pc, #-932]         @ 0xa3e8 <orange_dsp::exponential::law+0x58>
    a78e: eeb4 4b40    	vcmp.f64	d4, d0
    a792: fe33 2b02    	vselgt.f64	d2, d3, d2
    a796: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a79a: ed80 2b00    	vstr	d2, [r0]
    a79e: fe34 3b00    	vselgt.f64	d3, d4, d0
    a7a2: eeb4 3b41    	vcmp.f64	d3, d1
    a7a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a7aa: fe31 3b03    	vselgt.f64	d3, d1, d3
    a7ae: ee30 0b43    	vsub.f64	d0, d0, d3
    a7b2: ee80 4b01    	vdiv.f64	d4, d0, d1
    a7b6: e7bb         	b	0xa730 <orange_dsp::exponential::law+0x3a0> @ imm = #-0x8a
    a7b8: eeb0 3bc1    	vabs.f64	d3, d1
    a7bc: ed9f 2b3c    	vldr	d2, [pc, #240]          @ 0xa8b0 <orange_dsp::exponential::law+0x520>
    a7c0: eeb4 3b42    	vcmp.f64	d3, d2
    a7c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a7c8: f240 80fa    	bls.w	0xa9c0 <orange_dsp::exponential::law+0x630> @ imm = #0x1f4
    a7cc: ed9f 2b3a    	vldr	d2, [pc, #232]          @ 0xa8b8 <orange_dsp::exponential::law+0x528>
    a7d0: eeb4 3b42    	vcmp.f64	d3, d2
    a7d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a7d8: f240 8162    	bls.w	0xaaa0 <orange_dsp::exponential::law+0x710> @ imm = #0x2c4
    a7dc: ed9f 2b38    	vldr	d2, [pc, #224]          @ 0xa8c0 <orange_dsp::exponential::law+0x530>
    a7e0: eeb4 3b42    	vcmp.f64	d3, d2
    a7e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a7e8: f140 81f6    	bpl.w	0xabd8 <orange_dsp::exponential::law+0x848> @ imm = #0x3ec
    a7ec: eeb2 2b08    	vmov.f64	d2, #1.200000e+01
    a7f0: ed9f 4b35    	vldr	d4, [pc, #212]          @ 0xa8c8 <orange_dsp::exponential::law+0x538>
    a7f4: ed9f 5b36    	vldr	d5, [pc, #216]          @ 0xa8d0 <orange_dsp::exponential::law+0x540>
    a7f8: ed9f 6b37    	vldr	d6, [pc, #220]          @ 0xa8d8 <orange_dsp::exponential::law+0x548>
    a7fc: e158         	b	0xaab0 <orange_dsp::exponential::law+0x720> @ imm = #0x2b0
    a7fe: bf00         	nop
    a800: c2 17 26 53  	.word	0x532617c2
    a804: 05 a3 72 3f  	.word	0x3f72a305
    a808: 48 af bc 9a  	.word	0x9abcaf48
    a80c: f2 d7 7a 3e  	.word	0x3e7ad7f2
    a810: 7b 14 ae 47  	.word	0x47ae147b
    a814: e1 7a 84 3f  	.word	0x3f847ae1
    a818: 00 00 00 00  	.word	0x00000000
    a81c: 00 00 f8 7f  	.word	0x7ff80000
    a820: 9a 08 1b 9e  	.word	0x9e1b089a
    a824: 5e 29 a7 3f  	.word	0x3fa7295e
    a828: 74 98 c4 08  	.word	0x08c49874
    a82c: 53 3e 46 37  	.word	0x37463e53
    a830: 00 00 00 00  	.word	0x00000000
    a834: 00 00 54 c0  	.word	0xc0540000
    a838: 00 00 00 00  	.word	0x00000000
    a83c: 00 00 54 40  	.word	0x40540000
    a840: fe 82 2b 65  	.word	0x652b82fe
    a844: 47 15 f7 3f  	.word	0x3ff71547
    a848: ef 39 fa fe  	.word	0xfefa39ef
    a84c: 42 2e e6 3f  	.word	0x3fe62e42
    a850: 09 6d a8 13  	.word	0x13a86d09
    a854: 46 12 e6 3d  	.word	0x3de61246
    a858: e4 44 f5 67  	.word	0x67f544e4
    a85c: 45 e6 5a 3e  	.word	0x3e5ae645
    a860: 98 d8 f8 ef  	.word	0xeff8d898
    a864: d8 ee 21 3e  	.word	0x3e21eed8
    a868: 5c 9f 78 b7  	.word	0xb7789f5c
    a86c: 4f 7e 92 3e  	.word	0x3e927e4f
    a870: 34 c7 56 a5  	.word	0xa556c734
    a874: e3 1d c7 3e  	.word	0x3ec71de3
    a878: 1a a0 01 1a  	.word	0x1a01a01a
    a87c: a0 01 fa 3e  	.word	0x3efa01a0
    a880: 1a a0 01 1a  	.word	0x1a01a01a
    a884: a0 01 2a 3f  	.word	0x3f2a01a0
    a888: 17 6c c1 16  	.word	0x16c16c17
    a88c: 6c c1 56 3f  	.word	0x3f56c16c
    a890: 11 11 11 11  	.word	0x11111111
    a894: 11 11 81 3f  	.word	0x3f811111
    a898: 55 55 55 55  	.word	0x55555555
    a89c: 55 55 a5 3f  	.word	0x3fa55555
    a8a0: 55 55 55 55  	.word	0x55555555
    a8a4: 55 55 c5 3f  	.word	0x3fc55555
    a8a8: 3a 8c 30 e2  	.word	0xe2308c3a
    a8ac: 8e 79 25 3e  	.word	0x3e25798e
    a8b0: ae d8 5f 76  	.word	0x765fd8ae
    a8b4: 4f 1e 56 3f  	.word	0x3f561e4f
    a8b8: fa 7e 6a bc  	.word	0xbc6a7efa
    a8bc: 74 93 78 3f  	.word	0x3f789374
    a8c0: 7b 14 ae 47  	.word	0x47ae147b
    a8c4: e1 7a a4 3f  	.word	0x3fa47ae1
    a8c8: 0f 0f 0f 0f  	.word	0x0f0f0f0f
    a8cc: 0f 0f 76 c0  	.word	0xc0760f0f
    a8d0: 0f 0f 0f 0f  	.word	0x0f0f0f0f
    a8d4: 0f 0f 76 40  	.word	0x40760f0f
    a8d8: fa 7e 6a bc  	.word	0xbc6a7efa
    a8dc: 74 93 78 bf  	.word	0xbf789374
    a8e0: ee80 2b02    	vdiv.f64	d2, d0, d2
    a8e4: ee22 2b02    	vmul.f64	d2, d2, d2
    a8e8: ee22 3b02    	vmul.f64	d3, d2, d2
    a8ec: eeb7 2b00    	vmov.f64	d2, #1.000000e+00
    a8f0: ee23 4b03    	vmul.f64	d4, d3, d3
    a8f4: eeb0 3b42    	vmov.f64	d3, d2
    a8f8: ee04 3b04    	vmla.f64	d3, d4, d4
    a8fc: eeb0 4b42    	vmov.f64	d4, d2
    a900: eeb4 3b42    	vcmp.f64	d3, d2
    a904: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a908: d009         	beq	0xa91e <orange_dsp::exponential::law+0x58e> @ imm = #0x12
    a90a: eeb0 4b43    	vmov.f64	d4, d3
    a90e: eeb1 4bc4    	vsqrt.f64	d4, d4
    a912: eeb1 4bc4    	vsqrt.f64	d4, d4
    a916: eeb1 4bc4    	vsqrt.f64	d4, d4
    a91a: eeb1 4bc4    	vsqrt.f64	d4, d4
    a91e: ee82 2b04    	vdiv.f64	d2, d2, d4
    a922: ee82 3b03    	vdiv.f64	d3, d2, d3
    a926: ee20 4b02    	vmul.f64	d4, d0, d2
    a92a: eeb0 5bc4    	vabs.f64	d5, d4
    a92e: eeb3 2b08    	vmov.f64	d2, #2.400000e+01
    a932: eeb2 ab00    	vmov.f64	d10, #8.000000e+00
    a936: eeb1 cb04    	vmov.f64	d12, #5.000000e+00
    a93a: eeb7 db00    	vmov.f64	d13, #1.000000e+00
    a93e: ee32 9b45    	vsub.f64	d9, d2, d5
    a942: ed9f 5bcd    	vldr	d5, [pc, #820]          @ 0xac78 <orange_dsp::exponential::law+0x8e8>
    a946: fe89 6b0a    	vmaxnm.f64	d6, d9, d10
    a94a: eeb0 8bc1    	vabs.f64	d8, d1
    a94e: ee85 bb06    	vdiv.f64	d11, d5, d6
    a952: fe8b 5b4c    	vminnm.f64	d5, d11, d12
    a956: ee88 eb05    	vdiv.f64	d14, d8, d5
    a95a: eeb4 eb4d    	vcmp.f64	d14, d13
    a95e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a962: d935         	bls	0xa9d0 <orange_dsp::exponential::law+0x640> @ imm = #0x6a
    a964: ee85 8b08    	vdiv.f64	d8, d5, d8
    a968: eeb7 eb00    	vmov.f64	d14, #1.000000e+00
    a96c: ee28 db08    	vmul.f64	d13, d8, d8
    a970: ee2d db0d    	vmul.f64	d13, d13, d13
    a974: ee2d fb0d    	vmul.f64	d15, d13, d13
    a978: eeb0 db4e    	vmov.f64	d13, d14
    a97c: ee0f db0f    	vmla.f64	d13, d15, d15
    a980: eeb0 fb4e    	vmov.f64	d15, d14
    a984: eeb4 db4e    	vcmp.f64	d13, d14
    a988: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a98c: d009         	beq	0xa9a2 <orange_dsp::exponential::law+0x612> @ imm = #0x12
    a98e: eeb0 fb4d    	vmov.f64	d15, d13
    a992: eeb1 fbcf    	vsqrt.f64	d15, d15
    a996: eeb1 fbcf    	vsqrt.f64	d15, d15
    a99a: eeb1 fbcf    	vsqrt.f64	d15, d15
    a99e: eeb1 fbcf    	vsqrt.f64	d15, d15
    a9a2: ee8e fb0f    	vdiv.f64	d15, d14, d15
    a9a6: eeb1 7b48    	vneg.f64	d7, d8
    a9aa: ee8f eb0d    	vdiv.f64	d14, d15, d13
    a9ae: ee87 1b01    	vdiv.f64	d1, d7, d1
    a9b2: ee28 db0f    	vmul.f64	d13, d8, d15
    a9b6: ee21 1b0e    	vmul.f64	d1, d1, d14
    a9ba: e036         	b	0xaa2a <orange_dsp::exponential::law+0x69a> @ imm = #0x6c
    a9bc: bf00         	nop
    a9be: bf00         	nop
    a9c0: eeb2 2b0b    	vmov.f64	d2, #1.350000e+01
    a9c4: ed9f 1ba2    	vldr	d1, [pc, #648]          @ 0xac50 <orange_dsp::exponential::law+0x8c0>
    a9c8: e089         	b	0xaade <orange_dsp::exponential::law+0x74e> @ imm = #0x112
    a9ca: bf00         	nop
    a9cc: bf00         	nop
    a9ce: bf00         	nop
    a9d0: ee2e 8b0e    	vmul.f64	d8, d14, d14
    a9d4: eeb0 fb4d    	vmov.f64	d15, d13
    a9d8: ee28 8b08    	vmul.f64	d8, d8, d8
    a9dc: ee28 8b08    	vmul.f64	d8, d8, d8
    a9e0: ee28 8b08    	vmul.f64	d8, d8, d8
    a9e4: ee38 eb0d    	vadd.f64	d14, d8, d13
    a9e8: eeb4 eb4d    	vcmp.f64	d14, d13
    a9ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9f0: d009         	beq	0xaa06 <orange_dsp::exponential::law+0x676> @ imm = #0x12
    a9f2: eeb0 fb4e    	vmov.f64	d15, d14
    a9f6: eeb1 fbcf    	vsqrt.f64	d15, d15
    a9fa: eeb1 fbcf    	vsqrt.f64	d15, d15
    a9fe: eeb1 fbcf    	vsqrt.f64	d15, d15
    aa02: eeb1 fbcf    	vsqrt.f64	d15, d15
    aa06: ee8d db0f    	vdiv.f64	d13, d13, d15
    aa0a: eeb5 1b40    	vcmp.f64	d1, #0
    aa0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa12: eeb1 7b48    	vneg.f64	d7, d8
    aa16: ee8d eb0e    	vdiv.f64	d14, d13, d14
    aa1a: ee87 7b01    	vdiv.f64	d7, d7, d1
    aa1e: ed9f 1b8c    	vldr	d1, [pc, #560]          @ 0xac50 <orange_dsp::exponential::law+0x8c0>
    aa22: ee27 7b0e    	vmul.f64	d7, d7, d14
    aa26: fe01 1b07    	vseleq.f64	d1, d1, d7
    aa2a: ed9f fb89    	vldr	d15, [pc, #548]         @ 0xac50 <orange_dsp::exponential::law+0x8c0>
    aa2e: eeb4 bb4c    	vcmp.f64	d11, d12
    aa32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa36: d524         	bpl	0xaa82 <orange_dsp::exponential::law+0x6f2> @ imm = #0x48
    aa38: eeb5 4b40    	vcmp.f64	d4, #0
    aa3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa40: d01f         	beq	0xaa82 <orange_dsp::exponential::law+0x6f2> @ imm = #0x3e
    aa42: eeb4 9b4a    	vcmp.f64	d9, d10
    aa46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa4a: dd1a         	ble	0xaa82 <orange_dsp::exponential::law+0x6f2> @ imm = #0x34
    aa4c: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
    aa50: ec53 2b14    	vmov	r2, r3, d4
    aa54: eeb4 4b44    	vcmp.f64	d4, d4
    aa58: ec56 2b17    	vmov	r2, r6, d7
    aa5c: 0fdb         	lsrs	r3, r3, #0x1f
    aa5e: ed9f 9b86    	vldr	d9, [pc, #536]          @ 0xac78 <orange_dsp::exponential::law+0x8e8>
    aa62: f363 76df    	bfi	r6, r3, #31, #1
    aa66: ec46 2b17    	vmov	d7, r2, r6
    aa6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa6e: ee26 6b06    	vmul.f64	d6, d6, d6
    aa72: ee27 7b09    	vmul.f64	d7, d7, d9
    aa76: ed9f 9b7e    	vldr	d9, [pc, #504]          @ 0xac70 <orange_dsp::exponential::law+0x8e0>
    aa7a: fe19 7b07    	vselvs.f64	d7, d9, d7
    aa7e: ee87 fb06    	vdiv.f64	d15, d7, d6
    aa82: ee88 5b05    	vdiv.f64	d5, d8, d5
    aa86: ee24 1b01    	vmul.f64	d1, d4, d1
    aa8a: ee25 5b0e    	vmul.f64	d5, d5, d14
    aa8e: ee24 6b05    	vmul.f64	d6, d4, d5
    aa92: ee24 5b0d    	vmul.f64	d5, d4, d13
    aa96: ee06 db0f    	vmla.f64	d13, d6, d15
    aa9a: ee23 3b0d    	vmul.f64	d3, d3, d13
    aa9e: e0a7         	b	0xabf0 <orange_dsp::exponential::law+0x860> @ imm = #0x14e
    aaa0: ed9f 4b6d    	vldr	d4, [pc, #436]          @ 0xac58 <orange_dsp::exponential::law+0x8c8>
    aaa4: eeb2 2b0b    	vmov.f64	d2, #1.350000e+01
    aaa8: ed9f 5b6d    	vldr	d5, [pc, #436]          @ 0xac60 <orange_dsp::exponential::law+0x8d0>
    aaac: ed9f 6b6e    	vldr	d6, [pc, #440]          @ 0xac68 <orange_dsp::exponential::law+0x8d8>
    aab0: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
    aab4: ec53 2b11    	vmov	r2, r3, d1
    aab8: ec56 2b17    	vmov	r2, r6, d7
    aabc: 0fdb         	lsrs	r3, r3, #0x1f
    aabe: ee33 3b06    	vadd.f64	d3, d3, d6
    aac2: f363 76df    	bfi	r6, r3, #31, #1
    aac6: ec46 2b11    	vmov	d1, r2, r6
    aaca: ee03 2b45    	vmls.f64	d2, d3, d5
    aace: ee21 1b04    	vmul.f64	d1, d1, d4
    aad2: eeb5 2b40    	vcmp.f64	d2, #0
    aad6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aada: f240 8075    	bls.w	0xabc8 <orange_dsp::exponential::law+0x838> @ imm = #0xea
    aade: eeb0 3bc0    	vabs.f64	d3, d0
    aae2: eeb4 3b42    	vcmp.f64	d3, d2
    aae6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aaea: d941         	bls	0xab70 <orange_dsp::exponential::law+0x7e0> @ imm = #0x82
    aaec: ee82 3b03    	vdiv.f64	d3, d2, d3
    aaf0: eeb7 6b00    	vmov.f64	d6, #1.000000e+00
    aaf4: ee23 4b03    	vmul.f64	d4, d3, d3
    aaf8: eeb0 7b46    	vmov.f64	d7, d6
    aafc: ee24 4b04    	vmul.f64	d4, d4, d4
    ab00: ee24 4b04    	vmul.f64	d4, d4, d4
    ab04: ee24 4b04    	vmul.f64	d4, d4, d4
    ab08: ee34 5b06    	vadd.f64	d5, d4, d6
    ab0c: eeb4 5b46    	vcmp.f64	d5, d6
    ab10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab14: d009         	beq	0xab2a <orange_dsp::exponential::law+0x79a> @ imm = #0x12
    ab16: eeb0 7b45    	vmov.f64	d7, d5
    ab1a: eeb1 7bc7    	vsqrt.f64	d7, d7
    ab1e: eeb1 7bc7    	vsqrt.f64	d7, d7
    ab22: eeb1 7bc7    	vsqrt.f64	d7, d7
    ab26: eeb1 7bc7    	vsqrt.f64	d7, d7
    ab2a: ee86 7b07    	vdiv.f64	d7, d6, d7
    ab2e: eeb4 0b40    	vcmp.f64	d0, d0
    ab32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab36: ee87 6b05    	vdiv.f64	d6, d7, d5
    ab3a: f180 8079    	bvs.w	0xac30 <orange_dsp::exponential::law+0x8a0> @ imm = #0xf2
    ab3e: eeb7 5b00    	vmov.f64	d5, #1.000000e+00
    ab42: ec53 2b10    	vmov	r2, r3, d0
    ab46: ec56 2b15    	vmov	r2, r6, d5
    ab4a: 0fdb         	lsrs	r3, r3, #0x1f
    ab4c: f363 76df    	bfi	r6, r3, #31, #1
    ab50: ec46 2b18    	vmov	d8, r2, r6
    ab54: ee28 2b02    	vmul.f64	d2, d8, d2
    ab58: ee22 5b07    	vmul.f64	d5, d2, d7
    ab5c: ee28 2b06    	vmul.f64	d2, d8, d6
    ab60: ee23 3b04    	vmul.f64	d3, d3, d4
    ab64: ee23 3b06    	vmul.f64	d3, d3, d6
    ab68: e03e         	b	0xabe8 <orange_dsp::exponential::law+0x858> @ imm = #0x7c
    ab6a: bf00         	nop
    ab6c: bf00         	nop
    ab6e: bf00         	nop
    ab70: ee80 3b02    	vdiv.f64	d3, d0, d2
    ab74: eeb7 5b00    	vmov.f64	d5, #1.000000e+00
    ab78: ee23 3b03    	vmul.f64	d3, d3, d3
    ab7c: eeb0 6b45    	vmov.f64	d6, d5
    ab80: ee23 3b03    	vmul.f64	d3, d3, d3
    ab84: ee23 3b03    	vmul.f64	d3, d3, d3
    ab88: ee23 3b03    	vmul.f64	d3, d3, d3
    ab8c: ee33 4b05    	vadd.f64	d4, d3, d5
    ab90: eeb4 4b45    	vcmp.f64	d4, d5
    ab94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab98: d009         	beq	0xabae <orange_dsp::exponential::law+0x81e> @ imm = #0x12
    ab9a: eeb0 6b44    	vmov.f64	d6, d4
    ab9e: eeb1 6bc6    	vsqrt.f64	d6, d6
    aba2: eeb1 6bc6    	vsqrt.f64	d6, d6
    aba6: eeb1 6bc6    	vsqrt.f64	d6, d6
    abaa: eeb1 6bc6    	vsqrt.f64	d6, d6
    abae: ee85 5b06    	vdiv.f64	d5, d5, d6
    abb2: ee20 6b03    	vmul.f64	d6, d0, d3
    abb6: ee85 3b04    	vdiv.f64	d3, d5, d4
    abba: ee86 2b02    	vdiv.f64	d2, d6, d2
    abbe: ee20 5b05    	vmul.f64	d5, d0, d5
    abc2: ee22 2b03    	vmul.f64	d2, d2, d3
    abc6: e00f         	b	0xabe8 <orange_dsp::exponential::law+0x858> @ imm = #0x1e
    abc8: ed9f 5b21    	vldr	d5, [pc, #132]          @ 0xac50 <orange_dsp::exponential::law+0x8c0>
    abcc: eeb0 3b45    	vmov.f64	d3, d5
    abd0: eeb0 2b45    	vmov.f64	d2, d5
    abd4: e008         	b	0xabe8 <orange_dsp::exponential::law+0x858> @ imm = #0x10
    abd6: bf00         	nop
    abd8: ed9f 1b1d    	vldr	d1, [pc, #116]          @ 0xac50 <orange_dsp::exponential::law+0x8c0>
    abdc: eeb0 5b41    	vmov.f64	d5, d1
    abe0: eeb0 3b41    	vmov.f64	d3, d1
    abe4: eeb0 2b41    	vmov.f64	d2, d1
    abe8: ee21 1b02    	vmul.f64	d1, d1, d2
    abec: eeb2 2b0e    	vmov.f64	d2, #1.500000e+01
    abf0: ee30 0b45    	vsub.f64	d0, d0, d5
    abf4: eb08 00c0    	add.w	r0, r8, r0, lsl #3
    abf8: eeb1 1b41    	vneg.f64	d1, d1
    abfc: ee80 4b02    	vdiv.f64	d4, d0, d2
    ac00: eeb7 0b00    	vmov.f64	d0, #1.000000e+00
    ac04: ee30 0b43    	vsub.f64	d0, d0, d3
    ac08: ee80 0b02    	vdiv.f64	d0, d0, d2
    ac0c: ed80 0b00    	vstr	d0, [r0]
    ac10: eb08 00c1    	add.w	r0, r8, r1, lsl #3
    ac14: ee81 0b02    	vdiv.f64	d0, d1, d2
    ac18: e588         	b	0xa72c <orange_dsp::exponential::law+0x39c> @ imm = #-0x4f0
    ac1a: bf00         	nop
    ac1c: bf00         	nop
    ac1e: bf00         	nop
    ac20: f64f 12e8    	movw	r2, #0xf9e8
    ac24: 2113         	movs	r1, #0x13
    ac26: f2c0 0200    	movt	r2, #0x0
    ac2a: f7ff fba7    	bl	0xa37c <core::panicking::panic_bounds_check> @ imm = #-0x8b2
    ac2e: bf00         	nop
    ac30: ed9f 2b0f    	vldr	d2, [pc, #60]           @ 0xac70 <orange_dsp::exponential::law+0x8e0>
    ac34: eeb0 5b42    	vmov.f64	d5, d2
    ac38: e792         	b	0xab60 <orange_dsp::exponential::law+0x7d0> @ imm = #-0xdc
    ac3a: bf00         	nop
    ac3c: bf00         	nop
    ac3e: bf00         	nop
    ac40: 00 00 00 00  	.word	0x00000000
    ac44: 80 84 6e 41  	.word	0x416e8480
    ac48: 00 00 00 00  	.word	0x00000000
    ac4c: 80 84 5e 41  	.word	0x415e8480
		...
    ac58: 2a a5 94 52  	.word	0x5294a52a
    ac5c: 4a 29 74 c0  	.word	0xc074294a
    ac60: 2a a5 94 52  	.word	0x5294a52a
    ac64: 4a 29 74 40  	.word	0x4074294a
    ac68: ae d8 5f 76  	.word	0x765fd8ae
    ac6c: 4f 1e 56 bf  	.word	0xbf561e4f
    ac70: 00 00 00 00  	.word	0x00000000
    ac74: 00 00 f8 7f  	.word	0x7ff80000
    ac78: 00 00 00 00  	.word	0x00000000
    ac7c: 00 00 4e 40  	.word	0x404e0000
		...
    ac88: c2 17 26 53  	.word	0x532617c2
    ac8c: 05 a3 62 3f  	.word	0x3f62a305

0000ac90 <orange_dsp::generated_condensed::update>:
    ac90: b580         	push	{r7, lr}
    ac92: 466f         	mov	r7, sp
    ac94: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    ac98: b0b0         	sub	sp, #0xc0
    ac9a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ac9e: ed91 3a02    	vldr	s6, [r1, #8]
    aca2: ed9f 1bfd    	vldr	d1, [pc, #1012]         @ 0xb098 <orange_dsp::generated_condensed::update+0x408>
    aca6: ed91 4a01    	vldr	s8, [r1, #4]
    acaa: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    acae: ee20 8b01    	vmul.f64	d8, d0, d1
    acb2: ed91 1a03    	vldr	s2, [r1, #12]
    acb6: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    acba: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    acbe: ed9f 0bf8    	vldr	d0, [pc, #992]          @ 0xb0a0 <orange_dsp::generated_condensed::update+0x410>
    acc2: ed9f 2bf9    	vldr	d2, [pc, #996]          @ 0xb0a8 <orange_dsp::generated_condensed::update+0x418>
    acc6: ed9f 5bfa    	vldr	d5, [pc, #1000]         @ 0xb0b0 <orange_dsp::generated_condensed::update+0x420>
    acca: ee21 2b02    	vmul.f64	d2, d1, d2
    acce: ee03 2b05    	vmla.f64	d2, d3, d5
    acd2: eeb0 5b48    	vmov.f64	d5, d8
    acd6: ee04 5b00    	vmla.f64	d5, d4, d0
    acda: ed9f 0bf7    	vldr	d0, [pc, #988]          @ 0xb0b8 <orange_dsp::generated_condensed::update+0x428>
    acde: ee23 3b00    	vmul.f64	d3, d3, d0
    ace2: ed92 0a01    	vldr	s0, [r2, #4]
    ace6: ed9f 4bf6    	vldr	d4, [pc, #984]          @ 0xb0c0 <orange_dsp::generated_condensed::update+0x430>
    acea: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    acee: ed8d 5b2c    	vstr	d5, [sp, #176]
    acf2: ee38 5b02    	vadd.f64	d5, d8, d2
    acf6: ed9f 2bf4    	vldr	d2, [pc, #976]          @ 0xb0c8 <orange_dsp::generated_condensed::update+0x438>
    acfa: ee01 3b04    	vmla.f64	d3, d1, d4
    acfe: ed91 4a04    	vldr	s8, [r1, #16]
    ad02: ee00 5b02    	vmla.f64	d5, d0, d2
    ad06: ed91 2a05    	vldr	s4, [r1, #20]
    ad0a: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    ad0e: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    ad12: ed8d 5b2e    	vstr	d5, [sp, #184]
    ad16: ee38 6b03    	vadd.f64	d6, d8, d3
    ad1a: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xb0d0 <orange_dsp::generated_condensed::update+0x440>
    ad1e: ed9f 5bee    	vldr	d5, [pc, #952]          @ 0xb0d8 <orange_dsp::generated_condensed::update+0x448>
    ad22: ee22 3b03    	vmul.f64	d3, d2, d3
    ad26: ee04 3b05    	vmla.f64	d3, d4, d5
    ad2a: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xb0e0 <orange_dsp::generated_condensed::update+0x450>
    ad2e: ee38 5b03    	vadd.f64	d5, d8, d3
    ad32: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xb0e8 <orange_dsp::generated_condensed::update+0x458>
    ad36: ee24 3b03    	vmul.f64	d3, d4, d3
    ad3a: ed9f 4bed    	vldr	d4, [pc, #948]          @ 0xb0f0 <orange_dsp::generated_condensed::update+0x460>
    ad3e: ee00 6b01    	vmla.f64	d6, d0, d1
    ad42: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xb0f8 <orange_dsp::generated_condensed::update+0x468>
    ad46: ee02 3b04    	vmla.f64	d3, d2, d4
    ad4a: ee00 5b01    	vmla.f64	d5, d0, d1
    ad4e: ed9f 1bec    	vldr	d1, [pc, #944]          @ 0xb100 <orange_dsp::generated_condensed::update+0x470>
    ad52: ee38 2b03    	vadd.f64	d2, d8, d3
    ad56: ee00 2b01    	vmla.f64	d2, d0, d1
    ad5a: ed91 0a07    	vldr	s0, [r1, #28]
    ad5e: ed91 1a06    	vldr	s2, [r1, #24]
    ad62: eeb7 fac0    	vcvt.f64.f32	d15, s0
    ad66: ed9f 0be8    	vldr	d0, [pc, #928]          @ 0xb108 <orange_dsp::generated_condensed::update+0x478>
    ad6a: ee2f 9b00    	vmul.f64	d9, d15, d0
    ad6e: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    ad72: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb110 <orange_dsp::generated_condensed::update+0x480>
    ad76: ee00 9b01    	vmla.f64	d9, d0, d1
    ad7a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb118 <orange_dsp::generated_condensed::update+0x488>
    ad7e: ee2f 3b01    	vmul.f64	d3, d15, d1
    ad82: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb120 <orange_dsp::generated_condensed::update+0x490>
    ad86: ee00 3b01    	vmla.f64	d3, d0, d1
    ad8a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb128 <orange_dsp::generated_condensed::update+0x498>
    ad8e: ee2f 4b01    	vmul.f64	d4, d15, d1
    ad92: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb130 <orange_dsp::generated_condensed::update+0x4a0>
    ad96: ee00 4b01    	vmla.f64	d4, d0, d1
    ad9a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb138 <orange_dsp::generated_condensed::update+0x4a8>
    ad9e: ee20 ab01    	vmul.f64	d10, d0, d1
    ada2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb140 <orange_dsp::generated_condensed::update+0x4b0>
    ada6: ee0f ab01    	vmla.f64	d10, d15, d1
    adaa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb148 <orange_dsp::generated_condensed::update+0x4b8>
    adae: ee2f bb01    	vmul.f64	d11, d15, d1
    adb2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb150 <orange_dsp::generated_condensed::update+0x4c0>
    adb6: ee00 bb01    	vmla.f64	d11, d0, d1
    adba: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb158 <orange_dsp::generated_condensed::update+0x4c8>
    adbe: ee2f cb01    	vmul.f64	d12, d15, d1
    adc2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb160 <orange_dsp::generated_condensed::update+0x4d0>
    adc6: ee00 cb01    	vmla.f64	d12, d0, d1
    adca: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb168 <orange_dsp::generated_condensed::update+0x4d8>
    adce: ee20 db01    	vmul.f64	d13, d0, d1
    add2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb170 <orange_dsp::generated_condensed::update+0x4e0>
    add6: ee0f db01    	vmla.f64	d13, d15, d1
    adda: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb178 <orange_dsp::generated_condensed::update+0x4e8>
    adde: ee2f eb01    	vmul.f64	d14, d15, d1
    ade2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb180 <orange_dsp::generated_condensed::update+0x4f0>
    ade6: ee00 eb01    	vmla.f64	d14, d0, d1
    adea: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb188 <orange_dsp::generated_condensed::update+0x4f8>
    adee: ee2f fb01    	vmul.f64	d15, d15, d1
    adf2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xb190 <orange_dsp::generated_condensed::update+0x500>
    adf6: ee00 fb01    	vmla.f64	d15, d0, d1
    adfa: ed91 0a08    	vldr	s0, [r1, #32]
    adfe: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ae02: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb198 <orange_dsp::generated_condensed::update+0x508>
    ae06: ee00 9b01    	vmla.f64	d9, d0, d1
    ae0a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb1a0 <orange_dsp::generated_condensed::update+0x510>
    ae0e: ee00 3b01    	vmla.f64	d3, d0, d1
    ae12: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb1a8 <orange_dsp::generated_condensed::update+0x518>
    ae16: ee00 4b01    	vmla.f64	d4, d0, d1
    ae1a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb1b0 <orange_dsp::generated_condensed::update+0x520>
    ae1e: ee00 ab01    	vmla.f64	d10, d0, d1
    ae22: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb1b8 <orange_dsp::generated_condensed::update+0x528>
    ae26: ee00 bb01    	vmla.f64	d11, d0, d1
    ae2a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb1c0 <orange_dsp::generated_condensed::update+0x530>
    ae2e: ee00 cb01    	vmla.f64	d12, d0, d1
    ae32: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb1c8 <orange_dsp::generated_condensed::update+0x538>
    ae36: ee00 db01    	vmla.f64	d13, d0, d1
    ae3a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb1d0 <orange_dsp::generated_condensed::update+0x540>
    ae3e: ee00 eb01    	vmla.f64	d14, d0, d1
    ae42: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xb1d8 <orange_dsp::generated_condensed::update+0x548>
    ae46: ee00 fb01    	vmla.f64	d15, d0, d1
    ae4a: ed91 0a09    	vldr	s0, [r1, #36]
    ae4e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ae52: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb1e0 <orange_dsp::generated_condensed::update+0x550>
    ae56: ee00 9b01    	vmla.f64	d9, d0, d1
    ae5a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb1e8 <orange_dsp::generated_condensed::update+0x558>
    ae5e: ee00 3b01    	vmla.f64	d3, d0, d1
    ae62: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb1f0 <orange_dsp::generated_condensed::update+0x560>
    ae66: ee00 4b01    	vmla.f64	d4, d0, d1
    ae6a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb1f8 <orange_dsp::generated_condensed::update+0x568>
    ae6e: ee00 ab01    	vmla.f64	d10, d0, d1
    ae72: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb200 <orange_dsp::generated_condensed::update+0x570>
    ae76: ee00 bb01    	vmla.f64	d11, d0, d1
    ae7a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb208 <orange_dsp::generated_condensed::update+0x578>
    ae7e: ee00 cb01    	vmla.f64	d12, d0, d1
    ae82: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb210 <orange_dsp::generated_condensed::update+0x580>
    ae86: ee00 db01    	vmla.f64	d13, d0, d1
    ae8a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb218 <orange_dsp::generated_condensed::update+0x588>
    ae8e: ee00 eb01    	vmla.f64	d14, d0, d1
    ae92: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xb220 <orange_dsp::generated_condensed::update+0x590>
    ae96: ee00 fb01    	vmla.f64	d15, d0, d1
    ae9a: ed91 0a0a    	vldr	s0, [r1, #40]
    ae9e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    aea2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb228 <orange_dsp::generated_condensed::update+0x598>
    aea6: ee00 9b01    	vmla.f64	d9, d0, d1
    aeaa: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb230 <orange_dsp::generated_condensed::update+0x5a0>
    aeae: ee00 3b01    	vmla.f64	d3, d0, d1
    aeb2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb238 <orange_dsp::generated_condensed::update+0x5a8>
    aeb6: ee00 4b01    	vmla.f64	d4, d0, d1
    aeba: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb240 <orange_dsp::generated_condensed::update+0x5b0>
    aebe: ee00 ab01    	vmla.f64	d10, d0, d1
    aec2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb248 <orange_dsp::generated_condensed::update+0x5b8>
    aec6: ee00 bb01    	vmla.f64	d11, d0, d1
    aeca: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb250 <orange_dsp::generated_condensed::update+0x5c0>
    aece: ee00 cb01    	vmla.f64	d12, d0, d1
    aed2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb258 <orange_dsp::generated_condensed::update+0x5c8>
    aed6: ee00 db01    	vmla.f64	d13, d0, d1
    aeda: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb260 <orange_dsp::generated_condensed::update+0x5d0>
    aede: ee00 eb01    	vmla.f64	d14, d0, d1
    aee2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xb268 <orange_dsp::generated_condensed::update+0x5d8>
    aee6: ee00 fb01    	vmla.f64	d15, d0, d1
    aeea: ed91 0a0b    	vldr	s0, [r1, #44]
    aeee: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    aef2: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb270 <orange_dsp::generated_condensed::update+0x5e0>
    aef6: ee00 9b01    	vmla.f64	d9, d0, d1
    aefa: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb278 <orange_dsp::generated_condensed::update+0x5e8>
    aefe: ee00 3b01    	vmla.f64	d3, d0, d1
    af02: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb280 <orange_dsp::generated_condensed::update+0x5f0>
    af06: ee00 4b01    	vmla.f64	d4, d0, d1
    af0a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb288 <orange_dsp::generated_condensed::update+0x5f8>
    af0e: ee00 ab01    	vmla.f64	d10, d0, d1
    af12: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb290 <orange_dsp::generated_condensed::update+0x600>
    af16: ee00 bb01    	vmla.f64	d11, d0, d1
    af1a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb298 <orange_dsp::generated_condensed::update+0x608>
    af1e: ee00 cb01    	vmla.f64	d12, d0, d1
    af22: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb2a0 <orange_dsp::generated_condensed::update+0x610>
    af26: ee00 db01    	vmla.f64	d13, d0, d1
    af2a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb2a8 <orange_dsp::generated_condensed::update+0x618>
    af2e: ee00 eb01    	vmla.f64	d14, d0, d1
    af32: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xb2b0 <orange_dsp::generated_condensed::update+0x620>
    af36: ee00 fb01    	vmla.f64	d15, d0, d1
    af3a: ed91 0a0c    	vldr	s0, [r1, #48]
    af3e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    af42: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb2b8 <orange_dsp::generated_condensed::update+0x628>
    af46: ee00 9b01    	vmla.f64	d9, d0, d1
    af4a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb2c0 <orange_dsp::generated_condensed::update+0x630>
    af4e: ee00 3b01    	vmla.f64	d3, d0, d1
    af52: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb2c8 <orange_dsp::generated_condensed::update+0x638>
    af56: ee00 4b01    	vmla.f64	d4, d0, d1
    af5a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb2d0 <orange_dsp::generated_condensed::update+0x640>
    af5e: ee00 ab01    	vmla.f64	d10, d0, d1
    af62: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb2d8 <orange_dsp::generated_condensed::update+0x648>
    af66: ee00 bb01    	vmla.f64	d11, d0, d1
    af6a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb2e0 <orange_dsp::generated_condensed::update+0x650>
    af6e: ee00 cb01    	vmla.f64	d12, d0, d1
    af72: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb2e8 <orange_dsp::generated_condensed::update+0x658>
    af76: ee00 db01    	vmla.f64	d13, d0, d1
    af7a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb2f0 <orange_dsp::generated_condensed::update+0x660>
    af7e: ee00 eb01    	vmla.f64	d14, d0, d1
    af82: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xb2f8 <orange_dsp::generated_condensed::update+0x668>
    af86: ee00 fb01    	vmla.f64	d15, d0, d1
    af8a: ed91 0a0d    	vldr	s0, [r1, #52]
    af8e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    af92: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb300 <orange_dsp::generated_condensed::update+0x670>
    af96: ee00 9b01    	vmla.f64	d9, d0, d1
    af9a: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb308 <orange_dsp::generated_condensed::update+0x678>
    af9e: ee00 3b01    	vmla.f64	d3, d0, d1
    afa2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb310 <orange_dsp::generated_condensed::update+0x680>
    afa6: ee00 4b01    	vmla.f64	d4, d0, d1
    afaa: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb318 <orange_dsp::generated_condensed::update+0x688>
    afae: ee00 ab01    	vmla.f64	d10, d0, d1
    afb2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb320 <orange_dsp::generated_condensed::update+0x690>
    afb6: ee00 bb01    	vmla.f64	d11, d0, d1
    afba: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb328 <orange_dsp::generated_condensed::update+0x698>
    afbe: ee00 cb01    	vmla.f64	d12, d0, d1
    afc2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb330 <orange_dsp::generated_condensed::update+0x6a0>
    afc6: ee00 db01    	vmla.f64	d13, d0, d1
    afca: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb338 <orange_dsp::generated_condensed::update+0x6a8>
    afce: ee00 eb01    	vmla.f64	d14, d0, d1
    afd2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xb340 <orange_dsp::generated_condensed::update+0x6b0>
    afd6: ee00 fb01    	vmla.f64	d15, d0, d1
    afda: ed91 0a0e    	vldr	s0, [r1, #56]
    afde: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    afe2: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb348 <orange_dsp::generated_condensed::update+0x6b8>
    afe6: ee00 9b01    	vmla.f64	d9, d0, d1
    afea: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb350 <orange_dsp::generated_condensed::update+0x6c0>
    afee: ee00 3b01    	vmla.f64	d3, d0, d1
    aff2: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb358 <orange_dsp::generated_condensed::update+0x6c8>
    aff6: ee00 4b01    	vmla.f64	d4, d0, d1
    affa: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb360 <orange_dsp::generated_condensed::update+0x6d0>
    affe: ee00 ab01    	vmla.f64	d10, d0, d1
    b002: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb368 <orange_dsp::generated_condensed::update+0x6d8>
    b006: ee00 bb01    	vmla.f64	d11, d0, d1
    b00a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb370 <orange_dsp::generated_condensed::update+0x6e0>
    b00e: ee00 cb01    	vmla.f64	d12, d0, d1
    b012: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb378 <orange_dsp::generated_condensed::update+0x6e8>
    b016: ee00 db01    	vmla.f64	d13, d0, d1
    b01a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb380 <orange_dsp::generated_condensed::update+0x6f0>
    b01e: ee00 eb01    	vmla.f64	d14, d0, d1
    b022: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xb388 <orange_dsp::generated_condensed::update+0x6f8>
    b026: ee00 fb01    	vmla.f64	d15, d0, d1
    b02a: ed92 0a03    	vldr	s0, [r2, #12]
    b02e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b032: ed9f 1bd7    	vldr	d1, [pc, #860]          @ 0xb390 <orange_dsp::generated_condensed::update+0x700>
    b036: ed8d 3b1c    	vstr	d3, [sp, #112]
    b03a: ee20 3b01    	vmul.f64	d3, d0, d1
    b03e: ed92 1a02    	vldr	s2, [r2, #8]
    b042: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    b046: ed8d 2b26    	vstr	d2, [sp, #152]
    b04a: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xb398 <orange_dsp::generated_condensed::update+0x708>
    b04e: ee01 3b02    	vmla.f64	d3, d1, d2
    b052: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xb3a0 <orange_dsp::generated_condensed::update+0x710>
    b056: ed8d 3b24    	vstr	d3, [sp, #144]
    b05a: ee20 3b02    	vmul.f64	d3, d0, d2
    b05e: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xb3a8 <orange_dsp::generated_condensed::update+0x718>
    b062: ee01 3b02    	vmla.f64	d3, d1, d2
    b066: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xb3b0 <orange_dsp::generated_condensed::update+0x720>
    b06a: ed8d 3b22    	vstr	d3, [sp, #136]
    b06e: ee20 3b02    	vmul.f64	d3, d0, d2
    b072: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xb3b8 <orange_dsp::generated_condensed::update+0x728>
    b076: ee01 3b02    	vmla.f64	d3, d1, d2
    b07a: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xb3c0 <orange_dsp::generated_condensed::update+0x730>
    b07e: ed8d 3b20    	vstr	d3, [sp, #128]
    b082: ee20 3b02    	vmul.f64	d3, d0, d2
    b086: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xb3c8 <orange_dsp::generated_condensed::update+0x738>
    b08a: ee01 3b02    	vmla.f64	d3, d1, d2
    b08e: f000 b99f    	b.w	0xb3d0 <orange_dsp::generated_condensed::update+0x740> @ imm = #0x33e
    b092: bf00         	nop
    b094: bf00         	nop
    b096: bf00         	nop
		...
    b0a0: c1 5d e1 c9  	.word	0xc9e15dc1
    b0a4: 86 54 e5 3f  	.word	0x3fe55486
    b0a8: a9 0f 6b 00  	.word	0x006b0fa9
    b0ac: 3e 31 92 bf  	.word	0xbf92313e
    b0b0: a2 48 2a 74  	.word	0x742a48a2
    b0b4: 54 ba e4 3f  	.word	0x3fe4ba54
    b0b8: 00 60 41 1f  	.word	0x1f416000
    b0bc: 45 49 27 bf  	.word	0xbf274945
    b0c0: 1a 5d 10 11  	.word	0x11105d1a
    b0c4: ce 53 e5 3f  	.word	0x3fe553ce
    b0c8: 46 6c 1c 77  	.word	0x771c6c46
    b0cc: d3 64 5c bf  	.word	0xbf5c64d3
    b0d0: 80 0d 59 22  	.word	0x22590d80
    b0d4: 9f d9 b8 be  	.word	0xbeb8d99f
    b0d8: b0 e5 93 25  	.word	0x2593e5b0
    b0dc: 2e 54 e5 3f  	.word	0x3fe5542e
    b0e0: 00 60 e7 86  	.word	0x86e76000
    b0e4: ec 07 ec 3e  	.word	0x3eec07ec
    b0e8: 00 f0 f8 21  	.word	0x21f8f000
    b0ec: c8 2c 12 bf  	.word	0xbf122cc8
    b0f0: 3d 6e 12 0b  	.word	0x0b126e3d
    b0f4: a1 53 e5 3f  	.word	0x3fe553a1
    b0f8: 00 80 77 22  	.word	0x22778000
    b0fc: 7a ac 2b 3f  	.word	0x3f2bac7a
    b100: 00 60 f5 32  	.word	0x32f56000
    b104: 2c 43 1b 3f  	.word	0x3f1b432c
    b108: 06 42 bd ec  	.word	0xecbd4206
    b10c: 6c ee e0 3f  	.word	0x3fe0ee6c
    b110: 75 22 80 1e  	.word	0x1e802275
    b114: ff ca ba 3f  	.word	0x3fbacaff
    b118: a3 83 c9 c1  	.word	0xc1c983a3
    b11c: 1d 54 e5 3f  	.word	0x3fe5541d
    b120: 00 ac c1 aa  	.word	0xaac1ac00
    b124: b7 a1 1d 3f  	.word	0x3f1da1b7
    b128: 00 8f fc e0  	.word	0xe0fc8f00
    b12c: bb 3a 58 bf  	.word	0xbf583abb
    b130: 80 c5 13 c0  	.word	0xc013c580
    b134: 2a 6f 52 3f  	.word	0x3f526f2a
    b138: 1a c8 c7 76  	.word	0x76c7c81a
    b13c: 6e b2 14 bf  	.word	0xbf14b26e
    b140: e2 63 27 22  	.word	0x222763e2
    b144: 1a 34 1b 3f  	.word	0x3f1b341a
    b148: 00 00 77 9e  	.word	0x9e770000
    b14c: d4 83 d1 be  	.word	0xbed183d4
    b150: 00 80 54 bc  	.word	0xbc548000
    b154: c7 a6 ca 3e  	.word	0x3ecaa6c7
    b158: 78 c9 65 d2  	.word	0xd265c978
    b15c: fb aa 81 bf  	.word	0xbf81aafb
    b160: 38 4b 1c 74  	.word	0x741c4b38
    b164: 5b e2 7a 3f  	.word	0x3f7ae25b
    b168: 00 a8 b7 3b  	.word	0x3bb7a800
    b16c: a0 24 e9 be  	.word	0xbee924a0
    b170: 00 b0 3a 3d  	.word	0x3d3ab000
    b174: 0e 86 f0 3e  	.word	0x3ef0860e
    b178: 80 45 eb ca  	.word	0xcaeb4580
    b17c: d6 b8 28 bf  	.word	0xbf28b8d6
    b180: 40 1e 97 40  	.word	0x40971e40
    b184: 1c cf 22 3f  	.word	0x3f22cf1c
    b188: 00 80 9e 71  	.word	0x719e8000
    b18c: 3d 11 ca be  	.word	0xbeca113d
    b190: 00 00 cc 39  	.word	0x39cc0000
    b194: 23 d5 c3 3e  	.word	0x3ec3d523
    b198: 94 54 5e e4  	.word	0xe45e5494
    b19c: 65 da e0 3f  	.word	0x3fe0da65
    b1a0: 00 d0 32 e7  	.word	0xe732d000
    b1a4: 2f 62 23 bf  	.word	0xbf23622f
    b1a8: b0 9a 2c 49  	.word	0x492c9ab0
    b1ac: 0a 30 e5 3f  	.word	0x3fe5300a
    b1b0: 6a 59 88 8d  	.word	0x8d88596a
    b1b4: ec 13 1b 3f  	.word	0x3f1b13ec
    b1b8: 00 80 a9 db  	.word	0xdba98000
    b1bc: 1c 6f d1 be  	.word	0xbed16f1c
    b1c0: 70 a7 27 c0  	.word	0xc027a770
    b1c4: 15 96 81 bf  	.word	0xbf819615
    b1c8: 00 10 7b a9  	.word	0xa97b1000
    b1cc: 82 72 f0 3e  	.word	0x3ef07282
    b1d0: 80 84 35 a4  	.word	0xa4358480
    b1d4: 98 9b 28 bf  	.word	0xbf289b98
    b1d8: 00 00 11 e3  	.word	0xe3110000
    b1dc: 67 f2 c9 be  	.word	0xbec9f267
    b1e0: 7f 02 92 0b  	.word	0x0b92027f
    b1e4: f9 a6 d7 bf  	.word	0xbfd7a6f9
    b1e8: 00 70 27 22  	.word	0x22277000
    b1ec: 1a 34 1b 3f  	.word	0x3f1b341a
    b1f0: 00 37 75 d8  	.word	0xd8753700
    b1f4: 73 ec 50 3f  	.word	0x3f50ec73
    b1f8: f9 c7 6f 0d  	.word	0x0d6fc7f9
    b1fc: d1 52 e5 3f  	.word	0x3fe552d1
    b200: 00 c0 70 c7  	.word	0xc770c000
    b204: ac e2 f3 be  	.word	0xbef3e2ac
    b208: b8 ba 9c 87  	.word	0x879cbab8
    b20c: 20 0f a4 bf  	.word	0xbfa40f20
    b210: 00 58 ad cf  	.word	0xcfad5800
    b214: 8d c2 12 3f  	.word	0x3f12c28d
    b218: 00 67 c9 53  	.word	0x53c96700
    b21c: 63 11 4c bf  	.word	0xbf4c1163
    b220: 00 00 01 7a  	.word	0x7a010000
    b224: 66 98 ed be  	.word	0xbeed9866
    b228: 49 ec 9f 20  	.word	0x209fec49
    b22c: fa 74 8e 3f  	.word	0x3f8e74fa
    b230: 00 b8 a6 9d  	.word	0x9da6b800
    b234: d4 83 d1 be  	.word	0xbed183d4
    b238: 00 0a 5f 13  	.word	0x135f0a00
    b23c: e4 ca 05 bf  	.word	0xbf05cae4
    b240: 78 b8 70 c7  	.word	0xc770b878
    b244: ac e2 f3 be  	.word	0xbef3e2ac
    b248: 5b ad 92 3c  	.word	0x3c92ad5b
    b24c: 15 55 e5 3f  	.word	0x3fe55515
    b250: 00 25 a5 be  	.word	0xbea52500
    b254: 02 2a b0 bf  	.word	0xbfb02a02
    b258: 00 f8 5d c6  	.word	0xc65df800
    b25c: 07 3c 1e 3f  	.word	0x3f1e3c07
    b260: 40 ea 5d 38  	.word	0x385dea40
    b264: 29 9e 56 bf  	.word	0xbf569e29
    b268: 00 c0 dc 8e  	.word	0x8edcc000
    b26c: 3f d9 f7 be  	.word	0xbef7d93f
    b270: 47 e4 bd ce  	.word	0xcebde447
    b274: 0e 2b 69 3f  	.word	0x3f692b0e
    b278: 00 40 8f da  	.word	0xda8f4000
    b27c: 74 f2 ac be  	.word	0xbeacf274
    b280: 00 a7 84 8f  	.word	0x8f84a700
    b284: 22 02 e2 be  	.word	0xbee20222
    b288: 1f bc 4a 33  	.word	0x334abc1f
    b28c: b2 6e d0 be  	.word	0xbed06eb2
    b290: 00 fc fb 7d  	.word	0x7dfbfc00
    b294: b7 7b da be  	.word	0xbeda7bb7
    b298: 8f e3 b2 48  	.word	0x48b2e38f
    b29c: 3c e9 e2 3f  	.word	0x3fe2e93c
    b2a0: 00 e4 71 6e  	.word	0x6e71e400
    b2a4: 56 32 23 3f  	.word	0x3f233256
    b2a8: 00 05 e0 bc  	.word	0xbce00500
    b2ac: 17 92 30 bf  	.word	0xbf309217
    b2b0: 00 80 de 1d  	.word	0x1dde8000
    b2b4: 5b d0 f4 be  	.word	0xbef4d05b
    b2b8: f4 24 ee df  	.word	0xdfee24f4
    b2bc: 96 e5 64 bf  	.word	0xbf64e596
    b2c0: 00 60 1c e5  	.word	0xe51c6000
    b2c4: ce 08 a8 3e  	.word	0x3ea808ce
    b2c8: 00 e0 2c 34  	.word	0x342ce000
    b2cc: 79 e7 dd 3e  	.word	0x3edde779
    b2d0: e7 ed e4 73  	.word	0x73e4ede7
    b2d4: 88 49 cb 3e  	.word	0x3ecb4988
    b2d8: 00 54 55 ed  	.word	0xed555400
    b2dc: 1c fd d5 3e  	.word	0x3ed5fd1c
    b2e0: 20 1d 0d ea  	.word	0xea0d1d20
    b2e4: de 0a b1 3f  	.word	0x3fb10ade
    b2e8: 0e cf 4c 9e  	.word	0x9e4ccf0e
    b2ec: ea 50 e5 3f  	.word	0x3fe550ea
    b2f0: 90 b1 c1 c8  	.word	0xc8c1b190
    b2f4: ce b5 51 3f  	.word	0x3f51b5ce
    b2f8: 00 c0 f7 85  	.word	0x85f7c000
    b2fc: e2 5d f8 be  	.word	0xbef85de2
    b300: cf 1e ec 24  	.word	0x24ec1ecf
    b304: 9c 63 8d 3f  	.word	0x3f8d639c
    b308: 00 80 67 df  	.word	0xdf678000
    b30c: 9f e6 d0 be  	.word	0xbed0e69f
    b310: 00 ba a2 95  	.word	0x95a2ba00
    b314: 4a 07 05 bf  	.word	0xbf05074a
    b318: 5f e8 1a 49  	.word	0x491ae85f
    b31c: 31 30 f3 be  	.word	0xbef33031
    b320: 00 bc c0 af  	.word	0xafc0bc00
    b324: ba ec fe be  	.word	0xbefeecba
    b328: 40 2a 3d 87  	.word	0x873d2a40
    b32c: 32 a8 ab bf  	.word	0xbfaba832
    b330: 00 58 47 7f  	.word	0x7f475800
    b334: c7 a5 40 3f  	.word	0x3f40a5c7
    b338: c6 60 4c 9c  	.word	0x9c4c60c6
    b33c: 3d 43 e5 3f  	.word	0x3fe5433d
    b340: 00 80 ea 14  	.word	0x14ea8000
    b344: fe 54 f5 3e  	.word	0x3ef554fe
    b348: 30 f8 ed 0a  	.word	0x0aedf830
    b34c: b2 7b 40 3f  	.word	0x3f407bb2
    b350: 00 d0 c0 ef  	.word	0xefc0d000
    b354: 43 f5 82 be  	.word	0xbe82f543
    b358: 00 44 9d fc  	.word	0xfc9d4400
    b35c: 8c 96 b7 be  	.word	0xbeb7968c
    b360: 33 60 a3 fb  	.word	0xfba36033
    b364: 1b 86 a5 be  	.word	0xbea5861b
    b368: 00 9e 73 39  	.word	0x39739e00
    b36c: 2e 58 b1 be  	.word	0xbeb1582e
    b370: a7 94 9b fb  	.word	0xfb9b94a7
    b374: 6d 7a 82 bf  	.word	0xbf827a6d
    b378: 00 2c 02 86  	.word	0x86022c00
    b37c: e2 5d f8 be  	.word	0xbef85de2
    b380: 40 eb 05 06  	.word	0x0605eb40
    b384: 91 b1 06 3f  	.word	0x3f06b191
    b388: 03 bd 02 e5  	.word	0xe502bd03
    b38c: fa 54 e5 3f  	.word	0x3fe554fa
    b390: 76 43 71 a5  	.word	0xa5714376
    b394: f8 73 e2 bf  	.word	0xbfe273f8
    b398: 90 85 b9 69  	.word	0x69b98590
    b39c: a2 a1 ce bf  	.word	0xbfcea1a2
    b3a0: 00 70 07 91  	.word	0x91077000
    b3a4: 41 39 25 3f  	.word	0x3f253941
    b3a8: 00 80 10 04  	.word	0x04108000
    b3ac: 83 9d 11 3f  	.word	0x3f119d83
    b3b0: 00 b8 93 75  	.word	0x7593b800
    b3b4: 30 68 5a 3f  	.word	0x3f5a6830
    b3b8: 00 5c 9c 19  	.word	0x199c5c00
    b3bc: d8 ea 45 3f  	.word	0x3f45ead8
    b3c0: 28 b4 ed 8f  	.word	0x8fedb428
    b3c4: 1e 56 3c bf  	.word	0xbf3c561e
    b3c8: 00 80 d1 f5  	.word	0xf5d18000
    b3cc: d4 ff 33 3f  	.word	0x3f33ffd4
    b3d0: ed9f 2beb    	vldr	d2, [pc, #940]          @ 0xb780 <orange_dsp::generated_condensed::update+0xaf0>
    b3d4: ed8d 3b1e    	vstr	d3, [sp, #120]
    b3d8: ee20 3b02    	vmul.f64	d3, d0, d2
    b3dc: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xb788 <orange_dsp::generated_condensed::update+0xaf8>
    b3e0: ee01 3b02    	vmla.f64	d3, d1, d2
    b3e4: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xb790 <orange_dsp::generated_condensed::update+0xb00>
    b3e8: ed8d 3b18    	vstr	d3, [sp, #96]
    b3ec: ee20 3b02    	vmul.f64	d3, d0, d2
    b3f0: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xb798 <orange_dsp::generated_condensed::update+0xb08>
    b3f4: ee01 3b02    	vmla.f64	d3, d1, d2
    b3f8: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xb7a0 <orange_dsp::generated_condensed::update+0xb10>
    b3fc: ed8d 3b16    	vstr	d3, [sp, #88]
    b400: ee20 3b02    	vmul.f64	d3, d0, d2
    b404: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xb7a8 <orange_dsp::generated_condensed::update+0xb18>
    b408: ee01 3b02    	vmla.f64	d3, d1, d2
    b40c: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xb7b0 <orange_dsp::generated_condensed::update+0xb20>
    b410: ed8d 3b14    	vstr	d3, [sp, #80]
    b414: ee20 3b02    	vmul.f64	d3, d0, d2
    b418: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xb7b8 <orange_dsp::generated_condensed::update+0xb28>
    b41c: ee01 3b02    	vmla.f64	d3, d1, d2
    b420: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xb7c0 <orange_dsp::generated_condensed::update+0xb30>
    b424: ee20 2b02    	vmul.f64	d2, d0, d2
    b428: ed9f 0be7    	vldr	d0, [pc, #924]          @ 0xb7c8 <orange_dsp::generated_condensed::update+0xb38>
    b42c: ee01 2b00    	vmla.f64	d2, d1, d0
    b430: ed91 0a10    	vldr	s0, [r1, #64]
    b434: ed8d 2b10    	vstr	d2, [sp, #64]
    b438: ed91 2a0f    	vldr	s4, [r1, #60]
    b43c: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    b440: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    b444: ed8d 3b12    	vstr	d3, [sp, #72]
    b448: ed9f 0be1    	vldr	d0, [pc, #900]          @ 0xb7d0 <orange_dsp::generated_condensed::update+0xb40>
    b44c: ed9f 3be2    	vldr	d3, [pc, #904]          @ 0xb7d8 <orange_dsp::generated_condensed::update+0xb48>
    b450: ee21 0b00    	vmul.f64	d0, d1, d0
    b454: ee02 0b03    	vmla.f64	d0, d2, d3
    b458: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xb7e8 <orange_dsp::generated_condensed::update+0xb58>
    b45c: ee21 1b03    	vmul.f64	d1, d1, d3
    b460: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xb7f0 <orange_dsp::generated_condensed::update+0xb60>
    b464: ee02 1b03    	vmla.f64	d1, d2, d3
    b468: ed91 2a12    	vldr	s4, [r1, #72]
    b46c: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    b470: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xb800 <orange_dsp::generated_condensed::update+0xb70>
    b474: ed8d 5b28    	vstr	d5, [sp, #160]
    b478: ee22 5b03    	vmul.f64	d5, d2, d3
    b47c: ed91 3a11    	vldr	s6, [r1, #68]
    b480: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    b484: ed8d 4b1a    	vstr	d4, [sp, #104]
    b488: ed9f 4bdf    	vldr	d4, [pc, #892]          @ 0xb808 <orange_dsp::generated_condensed::update+0xb78>
    b48c: ee03 5b04    	vmla.f64	d5, d3, d4
    b490: ed9f 4be3    	vldr	d4, [pc, #908]          @ 0xb820 <orange_dsp::generated_condensed::update+0xb90>
    b494: ee23 7b04    	vmul.f64	d7, d3, d4
    b498: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xb828 <orange_dsp::generated_condensed::update+0xb98>
    b49c: ee02 7b03    	vmla.f64	d7, d2, d3
    b4a0: ee38 3b00    	vadd.f64	d3, d8, d0
    b4a4: ed92 0a04    	vldr	s0, [r2, #16]
    b4a8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b4ac: ed9f 2bcc    	vldr	d2, [pc, #816]          @ 0xb7e0 <orange_dsp::generated_condensed::update+0xb50>
    b4b0: ee00 3b02    	vmla.f64	d3, d0, d2
    b4b4: ee38 2b01    	vadd.f64	d2, d8, d1
    b4b8: ed9f 1bcf    	vldr	d1, [pc, #828]          @ 0xb7f8 <orange_dsp::generated_condensed::update+0xb68>
    b4bc: ee00 2b01    	vmla.f64	d2, d0, d1
    b4c0: ed92 1a05    	vldr	s2, [r2, #20]
    b4c4: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    b4c8: ed8d 2b0c    	vstr	d2, [sp, #48]
    b4cc: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xb810 <orange_dsp::generated_condensed::update+0xb80>
    b4d0: ed8d 3b0e    	vstr	d3, [sp, #56]
    b4d4: ee21 3b02    	vmul.f64	d3, d1, d2
    b4d8: ed9f 2bcf    	vldr	d2, [pc, #828]          @ 0xb818 <orange_dsp::generated_condensed::update+0xb88>
    b4dc: ee00 3b02    	vmla.f64	d3, d0, d2
    b4e0: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xb830 <orange_dsp::generated_condensed::update+0xba0>
    b4e4: ed8d 3b0a    	vstr	d3, [sp, #40]
    b4e8: ee21 3b02    	vmul.f64	d3, d1, d2
    b4ec: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xb838 <orange_dsp::generated_condensed::update+0xba8>
    b4f0: ee00 3b02    	vmla.f64	d3, d0, d2
    b4f4: ed91 0a14    	vldr	s0, [r1, #80]
    b4f8: ed8d 3b06    	vstr	d3, [sp, #24]
    b4fc: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    b500: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0xb840 <orange_dsp::generated_condensed::update+0xbb0>
    b504: ee23 2b00    	vmul.f64	d2, d3, d0
    b508: ed91 0a13    	vldr	s0, [r1, #76]
    b50c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b510: ed9f 4bcd    	vldr	d4, [pc, #820]          @ 0xb848 <orange_dsp::generated_condensed::update+0xbb8>
    b514: ee00 2b04    	vmla.f64	d2, d0, d4
    b518: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xb858 <orange_dsp::generated_condensed::update+0xbc8>
    b51c: ee20 0b04    	vmul.f64	d0, d0, d4
    b520: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xb860 <orange_dsp::generated_condensed::update+0xbd0>
    b524: ee03 0b04    	vmla.f64	d0, d3, d4
    b528: ed92 3a06    	vldr	s6, [r2, #24]
    b52c: ed8d 5b08    	vstr	d5, [sp, #32]
    b530: eeb0 5b48    	vmov.f64	d5, d8
    b534: eeb7 8ac3    	vcvt.f64.f32	d8, s6
    b538: ed9f 4bc5    	vldr	d4, [pc, #788]          @ 0xb850 <orange_dsp::generated_condensed::update+0xbc0>
    b53c: ed8d 6b2a    	vstr	d6, [sp, #168]
    b540: ee21 6b04    	vmul.f64	d6, d1, d4
    b544: ee08 6b44    	vmls.f64	d6, d8, d4
    b548: ed9f 4bc7    	vldr	d4, [pc, #796]          @ 0xb868 <orange_dsp::generated_condensed::update+0xbd8>
    b54c: ee21 3b04    	vmul.f64	d3, d1, d4
    b550: ee08 3b44    	vmls.f64	d3, d8, d4
    b554: ed91 4a15    	vldr	s8, [r1, #84]
    b558: eeb7 8ac4    	vcvt.f64.f32	d8, s8
    b55c: ed9f 1bc4    	vldr	d1, [pc, #784]          @ 0xb870 <orange_dsp::generated_condensed::update+0xbe0>
    b560: eeb0 4b45    	vmov.f64	d4, d5
    b564: ee08 4b01    	vmla.f64	d4, d8, d1
    b568: ed9f 1b81    	vldr	d1, [pc, #516]          @ 0xb770 <orange_dsp::generated_condensed::update+0xae0>
    b56c: ee35 8b01    	vadd.f64	d8, d5, d1
    b570: eeb0 1b45    	vmov.f64	d1, d5
    b574: ee35 9b09    	vadd.f64	d9, d5, d9
    b578: ed9d 5b1c    	vldr	d5, [sp, #112]
    b57c: ee31 5b05    	vadd.f64	d5, d1, d5
    b580: ed8d 5b1c    	vstr	d5, [sp, #112]
    b584: ed9d 5b1a    	vldr	d5, [sp, #104]
    b588: ee31 0b00    	vadd.f64	d0, d1, d0
    b58c: ee31 5b05    	vadd.f64	d5, d1, d5
    b590: ed8d 0b00    	vstr	d0, [sp]
    b594: ed91 0a16    	vldr	s0, [r1, #88]
    b598: ed8d 5b1a    	vstr	d5, [sp, #104]
    b59c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b5a0: ed9d 5b08    	vldr	d5, [sp, #32]
    b5a4: ee31 2b02    	vadd.f64	d2, d1, d2
    b5a8: ed8d 2b02    	vstr	d2, [sp, #8]
    b5ac: ed9f 2bb4    	vldr	d2, [pc, #720]          @ 0xb880 <orange_dsp::generated_condensed::update+0xbf0>
    b5b0: ee31 5b05    	vadd.f64	d5, d1, d5
    b5b4: ed8d 5b08    	vstr	d5, [sp, #32]
    b5b8: ee31 5b07    	vadd.f64	d5, d1, d7
    b5bc: eeb0 7b41    	vmov.f64	d7, d1
    b5c0: ee00 7b02    	vmla.f64	d7, d0, d2
    b5c4: ed92 0a07    	vldr	s0, [r2, #28]
    b5c8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b5cc: ed9f 2baa    	vldr	d2, [pc, #680]          @ 0xb878 <orange_dsp::generated_condensed::update+0xbe8>
    b5d0: ee00 4b02    	vmla.f64	d4, d0, d2
    b5d4: ed9f 2bac    	vldr	d2, [pc, #688]          @ 0xb888 <orange_dsp::generated_condensed::update+0xbf8>
    b5d8: ee00 7b02    	vmla.f64	d7, d0, d2
    b5dc: ed92 0a00    	vldr	s0, [r2]
    b5e0: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    b5e4: ed9f 2b64    	vldr	d2, [pc, #400]          @ 0xb778 <orange_dsp::generated_condensed::update+0xae8>
    b5e8: ee31 ab0a    	vadd.f64	d10, d1, d10
    b5ec: ee31 bb0b    	vadd.f64	d11, d1, d11
    b5f0: ee31 cb0c    	vadd.f64	d12, d1, d12
    b5f4: ee31 db0d    	vadd.f64	d13, d1, d13
    b5f8: ee31 eb0e    	vadd.f64	d14, d1, d14
    b5fc: ee31 fb0f    	vadd.f64	d15, d1, d15
    b600: ed9d 1b2c    	vldr	d1, [sp, #176]
    b604: ee00 1b02    	vmla.f64	d1, d0, d2
    b608: ee38 0b00    	vadd.f64	d0, d8, d0
    b60c: ed8d 5b04    	vstr	d5, [sp, #16]
    b610: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b614: ed80 0a00    	vstr	s0, [r0]
    b618: ed9d 2b24    	vldr	d2, [sp, #144]
    b61c: ed9d 5b22    	vldr	d5, [sp, #136]
    b620: ed9d 8b1c    	vldr	d8, [sp, #112]
    b624: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    b628: ed80 0a01    	vstr	s0, [r0, #4]
    b62c: ed9d 0b2e    	vldr	d0, [sp, #184]
    b630: ee39 2b02    	vadd.f64	d2, d9, d2
    b634: ee38 8b05    	vadd.f64	d8, d8, d5
    b638: ed9d 5b20    	vldr	d5, [sp, #128]
    b63c: ed9d 9b1a    	vldr	d9, [sp, #104]
    b640: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b644: ed80 0a02    	vstr	s0, [r0, #8]
    b648: ee39 9b05    	vadd.f64	d9, d9, d5
    b64c: ed9d 5b1e    	vldr	d5, [sp, #120]
    b650: ed9d 0b2a    	vldr	d0, [sp, #168]
    b654: ee3a ab05    	vadd.f64	d10, d10, d5
    b658: ed9d 5b18    	vldr	d5, [sp, #96]
    b65c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b660: ed80 0a03    	vstr	s0, [r0, #12]
    b664: ed9d 0b28    	vldr	d0, [sp, #160]
    b668: ee3b bb05    	vadd.f64	d11, d11, d5
    b66c: ed9d 5b16    	vldr	d5, [sp, #88]
    b670: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b674: ed80 0a04    	vstr	s0, [r0, #16]
    b678: ee3c cb05    	vadd.f64	d12, d12, d5
    b67c: ed9d 5b14    	vldr	d5, [sp, #80]
    b680: ed9d 0b26    	vldr	d0, [sp, #152]
    b684: ee3d db05    	vadd.f64	d13, d13, d5
    b688: ed9d 5b12    	vldr	d5, [sp, #72]
    b68c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b690: ed80 0a05    	vstr	s0, [r0, #20]
    b694: eeb7 0bc2    	vcvt.f32.f64	s0, d2
    b698: ed80 0a06    	vstr	s0, [r0, #24]
    b69c: ee3e eb05    	vadd.f64	d14, d14, d5
    b6a0: ed9d 5b10    	vldr	d5, [sp, #64]
    b6a4: eeb7 0bc8    	vcvt.f32.f64	s0, d8
    b6a8: ed80 0a07    	vstr	s0, [r0, #28]
    b6ac: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    b6b0: ed80 0a08    	vstr	s0, [r0, #32]
    b6b4: ee3f 5b05    	vadd.f64	d5, d15, d5
    b6b8: eeb7 0bca    	vcvt.f32.f64	s0, d10
    b6bc: ed80 0a09    	vstr	s0, [r0, #36]
    b6c0: ed8d 5b24    	vstr	d5, [sp, #144]
    b6c4: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    b6c8: ed80 0a0a    	vstr	s0, [r0, #40]
    b6cc: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    b6d0: ed80 0a0b    	vstr	s0, [r0, #44]
    b6d4: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    b6d8: ed80 0a0c    	vstr	s0, [r0, #48]
    b6dc: eeb7 0bce    	vcvt.f32.f64	s0, d14
    b6e0: ed80 0a0d    	vstr	s0, [r0, #52]
    b6e4: ed9d 0b24    	vldr	d0, [sp, #144]
    b6e8: ed9d 5b0a    	vldr	d5, [sp, #40]
    b6ec: ed9d fb08    	vldr	d15, [sp, #32]
    b6f0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b6f4: ed80 0a0e    	vstr	s0, [r0, #56]
    b6f8: ed9d 0b0e    	vldr	d0, [sp, #56]
    b6fc: ee3f 5b05    	vadd.f64	d5, d15, d5
    b700: ed8d 5b2c    	vstr	d5, [sp, #176]
    b704: ed9d 5b06    	vldr	d5, [sp, #24]
    b708: ed9d fb04    	vldr	d15, [sp, #16]
    b70c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b710: ed80 0a0f    	vstr	s0, [r0, #60]
    b714: ed9d 0b0c    	vldr	d0, [sp, #48]
    b718: ee3f 5b05    	vadd.f64	d5, d15, d5
    b71c: ed9d fb02    	vldr	d15, [sp, #8]
    b720: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b724: ed80 0a10    	vstr	s0, [r0, #64]
    b728: ee3f 6b06    	vadd.f64	d6, d15, d6
    b72c: ed9d fb00    	vldr	d15, [sp]
    b730: ed9d 0b2c    	vldr	d0, [sp, #176]
    b734: ee3f 3b03    	vadd.f64	d3, d15, d3
    b738: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    b73c: ed80 0a11    	vstr	s0, [r0, #68]
    b740: eeb7 0bc5    	vcvt.f32.f64	s0, d5
    b744: ed80 0a12    	vstr	s0, [r0, #72]
    b748: eeb7 0bc6    	vcvt.f32.f64	s0, d6
    b74c: ed80 0a13    	vstr	s0, [r0, #76]
    b750: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    b754: ed80 0a14    	vstr	s0, [r0, #80]
    b758: eeb7 0bc4    	vcvt.f32.f64	s0, d4
    b75c: ed80 0a15    	vstr	s0, [r0, #84]
    b760: eeb7 0bc7    	vcvt.f32.f64	s0, d7
    b764: ed80 0a16    	vstr	s0, [r0, #88]
    b768: b030         	add	sp, #0xc0
    b76a: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    b76e: bd80         	pop	{r7, pc}
		...
    b778: 00 e0 35 df  	.word	0xdf35e000
    b77c: 12 5d 23 3f  	.word	0x3f235d12
    b780: 00 40 b2 d2  	.word	0xd2b24000
    b784: 8e 3e f2 3e  	.word	0x3ef23e8e
    b788: 00 40 3c 73  	.word	0x733c4000
    b78c: b9 32 02 3f  	.word	0x3f0232b9
    b790: 08 f7 83 70  	.word	0x7083f708
    b794: 57 67 a2 3f  	.word	0x3fa26757
    b798: 70 97 28 9d  	.word	0x9d289770
    b79c: 67 5b b2 3f  	.word	0x3fb25b67
    b7a0: 00 18 07 f2  	.word	0xf2071800
    b7a4: 36 36 11 bf  	.word	0xbf113636
    b7a8: 00 2c 41 07  	.word	0x07412c00
    b7ac: 0d 2b 21 bf  	.word	0xbf212b0d
    b7b0: 00 11 6e ab  	.word	0xab6e1100
    b7b4: 66 c0 49 3f  	.word	0x3f49c066
    b7b8: 00 57 e3 c4  	.word	0xc4e35700
    b7bc: b2 af 59 3f  	.word	0x3f59afb2
    b7c0: 00 00 53 f5  	.word	0xf5530000
    b7c4: 24 27 eb 3e  	.word	0x3eeb2724
    b7c8: 00 00 83 5f  	.word	0x5f830000
    b7cc: 88 15 fb 3e  	.word	0x3efb1588
    b7d0: 30 b5 9f 60  	.word	0x609fb530
    b7d4: ab e5 d3 3f  	.word	0x3fd3e5ab
    b7d8: 3b cc c8 6a  	.word	0x6ac8cc3b
    b7dc: c2 ed a6 3f  	.word	0x3fa6edc2
    b7e0: c8 8f ef 10  	.word	0x10ef8fc8
    b7e4: 81 d8 dd bf  	.word	0xbfddd881
    b7e8: 28 3f 82 e4  	.word	0xe4823f28
    b7ec: 69 54 e5 3f  	.word	0x3fe55469
    b7f0: bf 80 ca 02  	.word	0x02ca80bf
    b7f4: ca a2 ed 3e  	.word	0x3eeda2ca
    b7f8: e4 27 14 ca  	.word	0xca1427e4
    b7fc: 93 12 26 3f  	.word	0x3f261293
    b800: f7 82 13 a7  	.word	0xa71382f7
    b804: 09 7c d7 bf  	.word	0xbfd77c09
    b808: 7b 84 3a 2a  	.word	0x2a3a847b
    b80c: 5a 5f c0 3f  	.word	0x3fc05f5a
    b810: cc 5e bc b6  	.word	0xb6bc5ecc
    b814: a2 bc e5 bf  	.word	0xbfe5bca2
    b818: 15 be b6 e5  	.word	0xe5b6be15
    b81c: 6d 7e c0 3f  	.word	0x3fc07e6d
    b820: 00 90 99 b0  	.word	0xb0999000
    b824: 0f 3d 03 bf  	.word	0xbf033d0f
    b828: 36 0c 56 03  	.word	0x03560c36
    b82c: a1 54 e5 3f  	.word	0x3fe554a1
    b830: 00 60 f1 d0  	.word	0xd0f16000
    b834: 95 1e 18 bf  	.word	0xbf181e95
    b838: 00 70 fc 18  	.word	0x18fc7000
    b83c: 94 61 03 bf  	.word	0xbf036194
    b840: d2 4f d6 fa  	.word	0xfad64fd2
    b844: 97 86 f2 be  	.word	0xbef28697
    b848: b5 2c 68 6e  	.word	0x6e682cb5
    b84c: 31 53 e5 3f  	.word	0x3fe55331
    b850: 00 80 e7 1d  	.word	0x1de78000
    b854: d3 ae 39 3f  	.word	0x3f39aed3
    b858: 00 d8 8b f9  	.word	0xf98bd800
    b85c: 3d 28 27 bf  	.word	0xbf27283d
    b860: ca 9f ba 05  	.word	0x05ba9fca
    b864: 70 52 e5 3f  	.word	0x3fe55270
    b868: 00 e4 28 7b  	.word	0x7b28e400
    b86c: 2e 5e 31 3f  	.word	0x3f315e2e
    b870: 5d ef 75 b1  	.word	0xb175ef5d
    b874: 41 55 e5 3f  	.word	0x3fe55541
    b878: 77 21 f7 18  	.word	0x18f72177
    b87c: cf 75 ed 3e  	.word	0x3eed75cf
    b880: 21 8e 90 51  	.word	0x51908e21
    b884: b7 61 83 3f  	.word	0x3f8361b7
    b888: ab 9c 16 b4  	.word	0xb4169cab
    b88c: b5 8b ef 3f  	.word	0x3fef8bb5

0000b890 <__aeabi_memmove8>:
    b890: b580         	push	{r7, lr}
    b892: 466f         	mov	r7, sp
    b894: e8bd 4080    	pop.w	{r7, lr}
    b898: f000 b94b    	b.w	0xbb32 <compiler_builtins::mem::memmove> @ imm = #0x296

0000b89c <compiler_builtins::mem::memcpy>:
    b89c: b5f0         	push	{r4, r5, r6, r7, lr}
    b89e: af03         	add	r7, sp, #0xc
    b8a0: e92d 0f00    	push.w	{r8, r9, r10, r11}
    b8a4: b089         	sub	sp, #0x24
    b8a6: 4680         	mov	r8, r0
    b8a8: 2a10         	cmp	r2, #0x10
    b8aa: d321         	blo	0xb8f0 <compiler_builtins::mem::memcpy+0x54> @ imm = #0x42
    b8ac: f1c8 0000    	rsb.w	r0, r8, #0x0
    b8b0: f000 0a03    	and	r10, r0, #0x3
    b8b4: eb08 030a    	add.w	r3, r8, r10
    b8b8: 4598         	cmp	r8, r3
    b8ba: d237         	bhs	0xb92c <compiler_builtins::mem::memcpy+0x90> @ imm = #0x6e
    b8bc: f1aa 0601    	sub.w	r6, r10, #0x1
    b8c0: 4644         	mov	r4, r8
    b8c2: 460d         	mov	r5, r1
    b8c4: f1ba 0f00    	cmp.w	r10, #0x0
    b8c8: d01f         	beq	0xb90a <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x3e
    b8ca: 460d         	mov	r5, r1
    b8cc: 4644         	mov	r4, r8
    b8ce: f815 0b01    	ldrb	r0, [r5], #1
    b8d2: f1ba 0f01    	cmp.w	r10, #0x1
    b8d6: f804 0b01    	strb	r0, [r4], #1
    b8da: d016         	beq	0xb90a <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x2c
    b8dc: 7848         	ldrb	r0, [r1, #0x1]
    b8de: f1ba 0f02    	cmp.w	r10, #0x2
    b8e2: f888 0001    	strb.w	r0, [r8, #0x1]
    b8e6: d10a         	bne	0xb8fe <compiler_builtins::mem::memcpy+0x62> @ imm = #0x14
    b8e8: 1c8d         	adds	r5, r1, #0x2
    b8ea: f108 0402    	add.w	r4, r8, #0x2
    b8ee: e00c         	b	0xb90a <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x18
    b8f0: 46c4         	mov	r12, r8
    b8f2: eb0c 0302    	add.w	r3, r12, r2
    b8f6: 459c         	cmp	r12, r3
    b8f8: f0c0 80e3    	blo.w	0xbac2 <compiler_builtins::mem::memcpy+0x226> @ imm = #0x1c6
    b8fc: e10b         	b	0xbb16 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x216
    b8fe: 1ccd         	adds	r5, r1, #0x3
    b900: f108 0403    	add.w	r4, r8, #0x3
    b904: 7888         	ldrb	r0, [r1, #0x2]
    b906: f888 0002    	strb.w	r0, [r8, #0x2]
    b90a: 2e03         	cmp	r6, #0x3
    b90c: d30e         	blo	0xb92c <compiler_builtins::mem::memcpy+0x90> @ imm = #0x1c
    b90e: 1f2e         	subs	r6, r5, #0x4
    b910: 1f25         	subs	r5, r4, #0x4
    b912: f816 0f04    	ldrb	r0, [r6, #4]!
    b916: f805 0f04    	strb	r0, [r5, #4]!
    b91a: 7870         	ldrb	r0, [r6, #0x1]
    b91c: 7068         	strb	r0, [r5, #0x1]
    b91e: 78b0         	ldrb	r0, [r6, #0x2]
    b920: 70a8         	strb	r0, [r5, #0x2]
    b922: 78f0         	ldrb	r0, [r6, #0x3]
    b924: 70e8         	strb	r0, [r5, #0x3]
    b926: 1d28         	adds	r0, r5, #0x4
    b928: 4298         	cmp	r0, r3
    b92a: d1f2         	bne	0xb912 <compiler_builtins::mem::memcpy+0x76> @ imm = #-0x1c
    b92c: eba2 0b0a    	sub.w	r11, r2, r10
    b930: eb01 040a    	add.w	r4, r1, r10
    b934: f02b 0203    	bic	r2, r11, #0x3
    b938: f014 0003    	ands	r0, r4, #0x3
    b93c: eb03 0c02    	add.w	r12, r3, r2
    b940: d063         	beq	0xba0a <compiler_builtins::mem::memcpy+0x16e> @ imm = #0xc6
    b942: f04f 0900    	mov.w	r9, #0x0
    b946: f1c0 0604    	rsb.w	r6, r0, #0x4
    b94a: 9204         	str	r2, [sp, #0x10]
    b94c: aa08         	add	r2, sp, #0x20
    b94e: f8cd 9020    	str.w	r9, [sp, #0x20]
    b952: 4402         	add	r2, r0
    b954: 07f5         	lsls	r5, r6, #0x1f
    b956: bf1e         	ittt	ne
    b958: 7825         	ldrbne	r5, [r4]
    b95a: 7015         	strbne	r5, [r2]
    b95c: f04f 0901    	movne.w	r9, #0x1
    b960: 07b6         	lsls	r6, r6, #0x1e
    b962: bf44         	itt	mi
    b964: f834 6009    	ldrhmi.w	r6, [r4, r9]
    b968: f822 6009    	strhmi.w	r6, [r2, r9]
    b96c: 1a25         	subs	r5, r4, r0
    b96e: 9405         	str	r4, [sp, #0x14]
    b970: 1d1c         	adds	r4, r3, #0x4
    b972: 9a08         	ldr	r2, [sp, #0x20]
    b974: ea4f 0ec0    	lsl.w	lr, r0, #0x3
    b978: 4564         	cmp	r4, r12
    b97a: f1ce 0400    	rsb.w	r4, lr, #0x0
    b97e: e9cd 0402    	strd	r0, r4, [sp, #8]
    b982: d25b         	bhs	0xba3c <compiler_builtins::mem::memcpy+0x1a0> @ imm = #0xb6
    b984: 4243         	rsbs	r3, r0, #0
    b986: 4646         	mov	r6, r8
    b988: f8cd b000    	str.w	r11, [sp]
    b98c: eb01 0803    	add.w	r8, r1, r3
    b990: f004 0b18    	and	r11, r4, #0x18
    b994: 9601         	str	r6, [sp, #0x4]
    b996: eb08 050a    	add.w	r5, r8, r10
    b99a: eb06 040a    	add.w	r4, r6, r10
    b99e: fa22 f10e    	lsr.w	r1, r2, lr
    b9a2: f8d5 9004    	ldr.w	r9, [r5, #0x4]
    b9a6: fa09 f20b    	lsl.w	r2, r9, r11
    b9aa: 4311         	orrs	r1, r2
    b9ac: 4622         	mov	r2, r4
    b9ae: f842 1b08    	str	r1, [r2], #8
    b9b2: 4562         	cmp	r2, r12
    b9b4: d244         	bhs	0xba40 <compiler_builtins::mem::memcpy+0x1a4> @ imm = #0x88
    b9b6: 68a9         	ldr	r1, [r5, #0x8]
    b9b8: fa29 f30e    	lsr.w	r3, r9, lr
    b9bc: fa01 f00b    	lsl.w	r0, r1, r11
    b9c0: 4318         	orrs	r0, r3
    b9c2: f104 030c    	add.w	r3, r4, #0xc
    b9c6: 4563         	cmp	r3, r12
    b9c8: 6060         	str	r0, [r4, #0x4]
    b9ca: d23c         	bhs	0xba46 <compiler_builtins::mem::memcpy+0x1aa> @ imm = #0x78
    b9cc: f8d5 900c    	ldr.w	r9, [r5, #0xc]
    b9d0: fa21 f00e    	lsr.w	r0, r1, lr
    b9d4: fa09 f10b    	lsl.w	r1, r9, r11
    b9d8: 4308         	orrs	r0, r1
    b9da: 6010         	str	r0, [r2]
    b9dc: f104 0010    	add.w	r0, r4, #0x10
    b9e0: 4560         	cmp	r0, r12
    b9e2: d235         	bhs	0xba50 <compiler_builtins::mem::memcpy+0x1b4> @ imm = #0x6a
    b9e4: 692a         	ldr	r2, [r5, #0x10]
    b9e6: fa29 f00e    	lsr.w	r0, r9, lr
    b9ea: 3610         	adds	r6, #0x10
    b9ec: f108 0810    	add.w	r8, r8, #0x10
    b9f0: fa02 f10b    	lsl.w	r1, r2, r11
    b9f4: 4308         	orrs	r0, r1
    b9f6: 6018         	str	r0, [r3]
    b9f8: eb06 030a    	add.w	r3, r6, r10
    b9fc: 1d18         	adds	r0, r3, #0x4
    b9fe: 4560         	cmp	r0, r12
    ba00: d3c9         	blo	0xb996 <compiler_builtins::mem::memcpy+0xfa> @ imm = #-0x6e
    ba02: eb08 050a    	add.w	r5, r8, r10
    ba06: 4691         	mov	r9, r2
    ba08: e023         	b	0xba52 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x46
    ba0a: 4563         	cmp	r3, r12
    ba0c: d252         	bhs	0xbab4 <compiler_builtins::mem::memcpy+0x218> @ imm = #0xa4
    ba0e: 4621         	mov	r1, r4
    ba10: 6808         	ldr	r0, [r1]
    ba12: f843 0b04    	str	r0, [r3], #4
    ba16: 4563         	cmp	r3, r12
    ba18: d24c         	bhs	0xbab4 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x98
    ba1a: 6848         	ldr	r0, [r1, #0x4]
    ba1c: f843 0b04    	str	r0, [r3], #4
    ba20: 4563         	cmp	r3, r12
    ba22: bf3e         	ittt	lo
    ba24: 6888         	ldrlo	r0, [r1, #0x8]
    ba26: f843 0b04    	strlo	r0, [r3], #4
    ba2a: 4563         	cmplo	r3, r12
    ba2c: d242         	bhs	0xbab4 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x84
    ba2e: 68c8         	ldr	r0, [r1, #0xc]
    ba30: 3110         	adds	r1, #0x10
    ba32: f843 0b04    	str	r0, [r3], #4
    ba36: 4563         	cmp	r3, r12
    ba38: d3ea         	blo	0xba10 <compiler_builtins::mem::memcpy+0x174> @ imm = #-0x2c
    ba3a: e03b         	b	0xbab4 <compiler_builtins::mem::memcpy+0x218> @ imm = #0x76
    ba3c: 4691         	mov	r9, r2
    ba3e: e00a         	b	0xba56 <compiler_builtins::mem::memcpy+0x1ba> @ imm = #0x14
    ba40: 3504         	adds	r5, #0x4
    ba42: 1d23         	adds	r3, r4, #0x4
    ba44: e005         	b	0xba52 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0xa
    ba46: 3508         	adds	r5, #0x8
    ba48: f104 0308    	add.w	r3, r4, #0x8
    ba4c: 4689         	mov	r9, r1
    ba4e: e000         	b	0xba52 <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x0
    ba50: 350c         	adds	r5, #0xc
    ba52: e9dd b800    	ldrd	r11, r8, [sp]
    ba56: 9802         	ldr	r0, [sp, #0x8]
    ba58: 2200         	movs	r2, #0x0
    ba5a: f88d 201c    	strb.w	r2, [sp, #0x1c]
    ba5e: 2801         	cmp	r0, #0x1
    ba60: f807 2c26    	strb	r2, [r7, #-38]
    ba64: d10e         	bne	0xba84 <compiler_builtins::mem::memcpy+0x1e8> @ imm = #0x1c
    ba66: ae07         	add	r6, sp, #0x1c
    ba68: 2400         	movs	r4, #0x0
    ba6a: 2000         	movs	r0, #0x0
    ba6c: 9905         	ldr	r1, [sp, #0x14]
    ba6e: 07c9         	lsls	r1, r1, #0x1f
    ba70: d013         	beq	0xba9a <compiler_builtins::mem::memcpy+0x1fe> @ imm = #0x26
    ba72: 1d29         	adds	r1, r5, #0x4
    ba74: 5c08         	ldrb	r0, [r1, r0]
    ba76: 7030         	strb	r0, [r6]
    ba78: f817 0c26    	ldrb	r0, [r7, #-38]
    ba7c: f89d 201c    	ldrb.w	r2, [sp, #0x1c]
    ba80: 0400         	lsls	r0, r0, #0x10
    ba82: e00b         	b	0xba9c <compiler_builtins::mem::memcpy+0x200> @ imm = #0x16
    ba84: 7968         	ldrb	r0, [r5, #0x5]
    ba86: f1a7 0626    	sub.w	r6, r7, #0x26
    ba8a: 792a         	ldrb	r2, [r5, #0x4]
    ba8c: f88d 201c    	strb.w	r2, [sp, #0x1c]
    ba90: 0204         	lsls	r4, r0, #0x8
    ba92: 2002         	movs	r0, #0x2
    ba94: 9905         	ldr	r1, [sp, #0x14]
    ba96: 07c9         	lsls	r1, r1, #0x1f
    ba98: d1eb         	bne	0xba72 <compiler_builtins::mem::memcpy+0x1d6> @ imm = #-0x2a
    ba9a: 2000         	movs	r0, #0x0
    ba9c: 4320         	orrs	r0, r4
    ba9e: fa29 f10e    	lsr.w	r1, r9, lr
    baa2: 4310         	orrs	r0, r2
    baa4: 9a03         	ldr	r2, [sp, #0xc]
    baa6: f002 0218    	and	r2, r2, #0x18
    baaa: 4090         	lsls	r0, r2
    baac: e9dd 2404    	ldrd	r2, r4, [sp, #16]
    bab0: 4308         	orrs	r0, r1
    bab2: 6018         	str	r0, [r3]
    bab4: 18a1         	adds	r1, r4, r2
    bab6: f00b 0203    	and	r2, r11, #0x3
    baba: eb0c 0302    	add.w	r3, r12, r2
    babe: 459c         	cmp	r12, r3
    bac0: d229         	bhs	0xbb16 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x52
    bac2: 1e56         	subs	r6, r2, #0x1
    bac4: f012 0003    	ands	r0, r2, #0x3
    bac8: d012         	beq	0xbaf0 <compiler_builtins::mem::memcpy+0x254> @ imm = #0x24
    baca: 460a         	mov	r2, r1
    bacc: 4665         	mov	r5, r12
    bace: f812 4b01    	ldrb	r4, [r2], #1
    bad2: 2801         	cmp	r0, #0x1
    bad4: f805 4b01    	strb	r4, [r5], #1
    bad8: d00c         	beq	0xbaf4 <compiler_builtins::mem::memcpy+0x258> @ imm = #0x18
    bada: 784a         	ldrb	r2, [r1, #0x1]
    badc: 2802         	cmp	r0, #0x2
    bade: f88c 2001    	strb.w	r2, [r12, #0x1]
    bae2: d11d         	bne	0xbb20 <compiler_builtins::mem::memcpy+0x284> @ imm = #0x3a
    bae4: 1c8a         	adds	r2, r1, #0x2
    bae6: f10c 0502    	add.w	r5, r12, #0x2
    baea: 2e03         	cmp	r6, #0x3
    baec: d204         	bhs	0xbaf8 <compiler_builtins::mem::memcpy+0x25c> @ imm = #0x8
    baee: e012         	b	0xbb16 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x24
    baf0: 4665         	mov	r5, r12
    baf2: 460a         	mov	r2, r1
    baf4: 2e03         	cmp	r6, #0x3
    baf6: d30e         	blo	0xbb16 <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x1c
    baf8: 1f11         	subs	r1, r2, #0x4
    bafa: 1f2a         	subs	r2, r5, #0x4
    bafc: f811 0f04    	ldrb	r0, [r1, #4]!
    bb00: f802 0f04    	strb	r0, [r2, #4]!
    bb04: 7848         	ldrb	r0, [r1, #0x1]
    bb06: 7050         	strb	r0, [r2, #0x1]
    bb08: 7888         	ldrb	r0, [r1, #0x2]
    bb0a: 7090         	strb	r0, [r2, #0x2]
    bb0c: 78c8         	ldrb	r0, [r1, #0x3]
    bb0e: 70d0         	strb	r0, [r2, #0x3]
    bb10: 1d10         	adds	r0, r2, #0x4
    bb12: 4298         	cmp	r0, r3
    bb14: d1f2         	bne	0xbafc <compiler_builtins::mem::memcpy+0x260> @ imm = #-0x1c
    bb16: 4640         	mov	r0, r8
    bb18: b009         	add	sp, #0x24
    bb1a: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    bb1e: bdf0         	pop	{r4, r5, r6, r7, pc}
    bb20: 1cca         	adds	r2, r1, #0x3
    bb22: f10c 0503    	add.w	r5, r12, #0x3
    bb26: 7888         	ldrb	r0, [r1, #0x2]
    bb28: f88c 0002    	strb.w	r0, [r12, #0x2]
    bb2c: 2e03         	cmp	r6, #0x3
    bb2e: d2e3         	bhs	0xbaf8 <compiler_builtins::mem::memcpy+0x25c> @ imm = #-0x3a
    bb30: e7f1         	b	0xbb16 <compiler_builtins::mem::memcpy+0x27a> @ imm = #-0x1e

0000bb32 <compiler_builtins::mem::memmove>:
    bb32: b5f0         	push	{r4, r5, r6, r7, lr}
    bb34: af03         	add	r7, sp, #0xc
    bb36: e92d 0f00    	push.w	{r8, r9, r10, r11}
    bb3a: b08e         	sub	sp, #0x38
    bb3c: 4683         	mov	r11, r0
    bb3e: 1a40         	subs	r0, r0, r1
    bb40: 4290         	cmp	r0, r2
    bb42: d22a         	bhs	0xbb9a <compiler_builtins::mem::memmove+0x68> @ imm = #0x54
    bb44: eb01 0a02    	add.w	r10, r1, r2
    bb48: eb0b 0902    	add.w	r9, r11, r2
    bb4c: 2a10         	cmp	r2, #0x10
    bb4e: f0c0 820c    	blo.w	0xbf6a <compiler_builtins::mem::memmove+0x438> @ imm = #0x418
    bb52: f009 0403    	and	r4, r9, #0x3
    bb56: f029 0603    	bic	r6, r9, #0x3
    bb5a: f1c4 0c00    	rsb.w	r12, r4, #0x0
    bb5e: 454e         	cmp	r6, r9
    bb60: 9607         	str	r6, [sp, #0x1c]
    bb62: d260         	bhs	0xbc26 <compiler_builtins::mem::memmove+0xf4> @ imm = #0xc0
    bb64: f1a4 0e01    	sub.w	lr, r4, #0x1
    bb68: 2c00         	cmp	r4, #0x0
    bb6a: d045         	beq	0xbbf8 <compiler_builtins::mem::memmove+0xc6> @ imm = #0x8a
    bb6c: 46d0         	mov	r8, r10
    bb6e: 464b         	mov	r3, r9
    bb70: f818 0d01    	ldrb	r0, [r8, #-1]!
    bb74: 2c01         	cmp	r4, #0x1
    bb76: f803 0d01    	strb	r0, [r3, #-1]!
    bb7a: d03f         	beq	0xbbfc <compiler_builtins::mem::memmove+0xca> @ imm = #0x7e
    bb7c: 46d0         	mov	r8, r10
    bb7e: 464b         	mov	r3, r9
    bb80: f818 0d02    	ldrb	r0, [r8, #-2]!
    bb84: 2c02         	cmp	r4, #0x2
    bb86: f803 0d02    	strb	r0, [r3, #-2]!
    bb8a: bf1f         	itttt	ne
    bb8c: 46d0         	movne	r8, r10
    bb8e: f818 0d03    	ldrbne	r0, [r8, #-3]!
    bb92: 464b         	movne	r3, r9
    bb94: f803 0d03    	strbne	r0, [r3, #-3]!
    bb98: e030         	b	0xbbfc <compiler_builtins::mem::memmove+0xca> @ imm = #0x60
    bb9a: 2a10         	cmp	r2, #0x10
    bb9c: d325         	blo	0xbbea <compiler_builtins::mem::memmove+0xb8> @ imm = #0x4a
    bb9e: f1cb 0000    	rsb.w	r0, r11, #0x0
    bba2: f000 0a03    	and	r10, r0, #0x3
    bba6: eb0b 030a    	add.w	r3, r11, r10
    bbaa: 459b         	cmp	r11, r3
    bbac: f080 8116    	bhs.w	0xbddc <compiler_builtins::mem::memmove+0x2aa> @ imm = #0x22c
    bbb0: f1aa 0601    	sub.w	r6, r10, #0x1
    bbb4: 4658         	mov	r0, r11
    bbb6: 460d         	mov	r5, r1
    bbb8: f1ba 0f00    	cmp.w	r10, #0x0
    bbbc: f000 80fd    	beq.w	0xbdba <compiler_builtins::mem::memmove+0x288> @ imm = #0x1fa
    bbc0: 460d         	mov	r5, r1
    bbc2: 4658         	mov	r0, r11
    bbc4: f815 4b01    	ldrb	r4, [r5], #1
    bbc8: f1ba 0f01    	cmp.w	r10, #0x1
    bbcc: f800 4b01    	strb	r4, [r0], #1
    bbd0: f000 80f3    	beq.w	0xbdba <compiler_builtins::mem::memmove+0x288> @ imm = #0x1e6
    bbd4: 7848         	ldrb	r0, [r1, #0x1]
    bbd6: f1ba 0f02    	cmp.w	r10, #0x2
    bbda: f88b 0001    	strb.w	r0, [r11, #0x1]
    bbde: f040 80e6    	bne.w	0xbdae <compiler_builtins::mem::memmove+0x27c> @ imm = #0x1cc
    bbe2: 1c8d         	adds	r5, r1, #0x2
    bbe4: f10b 0002    	add.w	r0, r11, #0x2
    bbe8: e0e7         	b	0xbdba <compiler_builtins::mem::memmove+0x288> @ imm = #0x1ce
    bbea: 46dc         	mov	r12, r11
    bbec: eb0c 0302    	add.w	r3, r12, r2
    bbf0: 459c         	cmp	r12, r3
    bbf2: f0c0 822a    	blo.w	0xc04a <compiler_builtins::mem::memmove+0x518> @ imm = #0x454
    bbf6: e252         	b	0xc09e <compiler_builtins::mem::memmove+0x56c> @ imm = #0x4a4
    bbf8: 464b         	mov	r3, r9
    bbfa: 46d0         	mov	r8, r10
    bbfc: 9e07         	ldr	r6, [sp, #0x1c]
    bbfe: f1be 0f03    	cmp.w	lr, #0x3
    bc02: d310         	blo	0xbc26 <compiler_builtins::mem::memmove+0xf4> @ imm = #0x20
    bc04: f1a8 0004    	sub.w	r0, r8, #0x4
    bc08: 78c5         	ldrb	r5, [r0, #0x3]
    bc0a: f803 5c01    	strb	r5, [r3, #-1]
    bc0e: 7885         	ldrb	r5, [r0, #0x2]
    bc10: f803 5c02    	strb	r5, [r3, #-2]
    bc14: 7845         	ldrb	r5, [r0, #0x1]
    bc16: f803 5c03    	strb	r5, [r3, #-3]
    bc1a: f810 5904    	ldrb	r5, [r0], #-4
    bc1e: f803 5d04    	strb	r5, [r3, #-4]!
    bc22: 429e         	cmp	r6, r3
    bc24: d3f0         	blo	0xbc08 <compiler_builtins::mem::memmove+0xd6> @ imm = #-0x20
    bc26: eba2 0e04    	sub.w	lr, r2, r4
    bc2a: eb0a 050c    	add.w	r5, r10, r12
    bc2e: f02e 0003    	bic	r0, lr, #0x3
    bc32: f015 0303    	ands	r3, r5, #0x3
    bc36: eba6 0800    	sub.w	r8, r6, r0
    bc3a: f1c0 0000    	rsb.w	r0, r0, #0x0
    bc3e: 9006         	str	r0, [sp, #0x18]
    bc40: 9505         	str	r5, [sp, #0x14]
    bc42: d010         	beq	0xbc66 <compiler_builtins::mem::memmove+0x134> @ imm = #0x20
    bc44: eba5 0a03    	sub.w	r10, r5, r3
    bc48: 2000         	movs	r0, #0x0
    bc4a: f8cd e008    	str.w	lr, [sp, #0x8]
    bc4e: ea4f 0ec3    	lsl.w	lr, r3, #0x3
    bc52: 2b01         	cmp	r3, #0x1
    bc54: f88d 0030    	strb.w	r0, [sp, #0x30]
    bc58: f807 0c26    	strb	r0, [r7, #-38]
    bc5c: 9304         	str	r3, [sp, #0x10]
    bc5e: d12f         	bne	0xbcc0 <compiler_builtins::mem::memmove+0x18e> @ imm = #0x5e
    bc60: ad0c         	add	r5, sp, #0x30
    bc62: 2300         	movs	r3, #0x0
    bc64: e039         	b	0xbcda <compiler_builtins::mem::memmove+0x1a8> @ imm = #0x72
    bc66: 45b0         	cmp	r8, r6
    bc68: f080 8177    	bhs.w	0xbf5a <compiler_builtins::mem::memmove+0x428> @ imm = #0x2ee
    bc6c: f1aa 0110    	sub.w	r1, r10, #0x10
    bc70: f1ac 0204    	sub.w	r2, r12, #0x4
    bc74: eb01 030c    	add.w	r3, r1, r12
    bc78: eb09 000c    	add.w	r0, r9, r12
    bc7c: 68dd         	ldr	r5, [r3, #0xc]
    bc7e: f840 5c04    	str	r5, [r0, #-4]
    bc82: eb09 0502    	add.w	r5, r9, r2
    bc86: 45a8         	cmp	r8, r5
    bc88: f080 8167    	bhs.w	0xbf5a <compiler_builtins::mem::memmove+0x428> @ imm = #0x2ce
    bc8c: 689c         	ldr	r4, [r3, #0x8]
    bc8e: f840 4c08    	str	r4, [r0, #-8]
    bc92: 1f2c         	subs	r4, r5, #0x4
    bc94: 45a0         	cmp	r8, r4
    bc96: bf3f         	itttt	lo
    bc98: 685b         	ldrlo	r3, [r3, #0x4]
    bc9a: f840 3c0c    	strlo	r3, [r0, #-12]
    bc9e: f1a5 0308    	sublo.w	r3, r5, #0x8
    bca2: 4598         	cmplo	r8, r3
    bca4: f080 8159    	bhs.w	0xbf5a <compiler_builtins::mem::memmove+0x428> @ imm = #0x2b2
    bca8: f851 300c    	ldr.w	r3, [r1, r12]
    bcac: f1a9 0910    	sub.w	r9, r9, #0x10
    bcb0: 3910         	subs	r1, #0x10
    bcb2: f840 3c10    	str	r3, [r0, #-16]
    bcb6: eb09 000c    	add.w	r0, r9, r12
    bcba: 4580         	cmp	r8, r0
    bcbc: d3da         	blo	0xbc74 <compiler_builtins::mem::memmove+0x142> @ imm = #-0x4c
    bcbe: e14c         	b	0xbf5a <compiler_builtins::mem::memmove+0x428> @ imm = #0x298
    bcc0: f89a 0000    	ldrb.w	r0, [r10]
    bcc4: 07ed         	lsls	r5, r5, #0x1f
    bcc6: f89a 3001    	ldrb.w	r3, [r10, #0x1]
    bcca: f88d 0030    	strb.w	r0, [sp, #0x30]
    bcce: d101         	bne	0xbcd4 <compiler_builtins::mem::memmove+0x1a2> @ imm = #0x2
    bcd0: 2500         	movs	r5, #0x0
    bcd2: e00a         	b	0xbcea <compiler_builtins::mem::memmove+0x1b8> @ imm = #0x14
    bcd4: f1a7 0526    	sub.w	r5, r7, #0x26
    bcd8: 2002         	movs	r0, #0x2
    bcda: f81a 0000    	ldrb.w	r0, [r10, r0]
    bcde: 7028         	strb	r0, [r5]
    bce0: f817 5c26    	ldrb	r5, [r7, #-38]
    bce4: f89d 0030    	ldrb.w	r0, [sp, #0x30]
    bce8: 042d         	lsls	r5, r5, #0x10
    bcea: ea45 2303    	orr.w	r3, r5, r3, lsl #8
    bcee: f108 0604    	add.w	r6, r8, #0x4
    bcf2: 4303         	orrs	r3, r0
    bcf4: 9807         	ldr	r0, [sp, #0x1c]
    bcf6: f1ce 0400    	rsb.w	r4, lr, #0x0
    bcfa: 4286         	cmp	r6, r0
    bcfc: d24a         	bhs	0xbd94 <compiler_builtins::mem::memmove+0x262> @ imm = #0x94
    bcfe: 9804         	ldr	r0, [sp, #0x10]
    bd00: f004 0818    	and	r8, r4, #0x18
    bd04: f8cd b00c    	str.w	r11, [sp, #0xc]
    bd08: 1a10         	subs	r0, r2, r0
    bd0a: 180d         	adds	r5, r1, r0
    bd0c: f1ac 0004    	sub.w	r0, r12, #0x4
    bd10: e9cd 0400    	strd	r0, r4, [sp]
    bd14: eb05 0b0c    	add.w	r11, r5, r12
    bd18: fa03 f008    	lsl.w	r0, r3, r8
    bd1c: f85b ac04    	ldr	r10, [r11, #-4]
    bd20: fa2a f10e    	lsr.w	r1, r10, lr
    bd24: 4301         	orrs	r1, r0
    bd26: eb09 000c    	add.w	r0, r9, r12
    bd2a: f840 1c04    	str	r1, [r0, #-4]
    bd2e: f1ac 0104    	sub.w	r1, r12, #0x4
    bd32: eb09 0301    	add.w	r3, r9, r1
    bd36: 429e         	cmp	r6, r3
    bd38: d230         	bhs	0xbd9c <compiler_builtins::mem::memmove+0x26a> @ imm = #0x60
    bd3a: f85b 2c08    	ldr	r2, [r11, #-8]
    bd3e: fa0a f108    	lsl.w	r1, r10, r8
    bd42: fa22 f40e    	lsr.w	r4, r2, lr
    bd46: 4321         	orrs	r1, r4
    bd48: f840 1c08    	str	r1, [r0, #-8]
    bd4c: 1f19         	subs	r1, r3, #0x4
    bd4e: 428e         	cmp	r6, r1
    bd50: d228         	bhs	0xbda4 <compiler_builtins::mem::memmove+0x272> @ imm = #0x50
    bd52: f85b ac0c    	ldr	r10, [r11, #-12]
    bd56: fa02 f108    	lsl.w	r1, r2, r8
    bd5a: fa2a f20e    	lsr.w	r2, r10, lr
    bd5e: 4311         	orrs	r1, r2
    bd60: f840 1c0c    	str	r1, [r0, #-12]
    bd64: f1a3 0108    	sub.w	r1, r3, #0x8
    bd68: 428e         	cmp	r6, r1
    bd6a: f080 80cd    	bhs.w	0xbf08 <compiler_builtins::mem::memmove+0x3d6> @ imm = #0x19a
    bd6e: f85b 3c10    	ldr	r3, [r11, #-16]
    bd72: fa0a f108    	lsl.w	r1, r10, r8
    bd76: f1a9 0910    	sub.w	r9, r9, #0x10
    bd7a: 3d10         	subs	r5, #0x10
    bd7c: fa23 f20e    	lsr.w	r2, r3, lr
    bd80: 4311         	orrs	r1, r2
    bd82: f840 1c10    	str	r1, [r0, #-16]
    bd86: eb09 010c    	add.w	r1, r9, r12
    bd8a: 428e         	cmp	r6, r1
    bd8c: d3c2         	blo	0xbd14 <compiler_builtins::mem::memmove+0x1e2> @ imm = #-0x7c
    bd8e: 4465         	add	r5, r12
    bd90: 469a         	mov	r10, r3
    bd92: e0bd         	b	0xbf10 <compiler_builtins::mem::memmove+0x3de> @ imm = #0x17a
    bd94: 4655         	mov	r5, r10
    bd96: 4601         	mov	r1, r0
    bd98: 469a         	mov	r10, r3
    bd9a: e0bc         	b	0xbf16 <compiler_builtins::mem::memmove+0x3e4> @ imm = #0x178
    bd9c: 9800         	ldr	r0, [sp]
    bd9e: 4619         	mov	r1, r3
    bda0: 4405         	add	r5, r0
    bda2: e0b5         	b	0xbf10 <compiler_builtins::mem::memmove+0x3de> @ imm = #0x16a
    bda4: 9800         	ldr	r0, [sp]
    bda6: 4692         	mov	r10, r2
    bda8: 4428         	add	r0, r5
    bdaa: 1f05         	subs	r5, r0, #0x4
    bdac: e0b0         	b	0xbf10 <compiler_builtins::mem::memmove+0x3de> @ imm = #0x160
    bdae: 7888         	ldrb	r0, [r1, #0x2]
    bdb0: 1ccd         	adds	r5, r1, #0x3
    bdb2: f88b 0002    	strb.w	r0, [r11, #0x2]
    bdb6: f10b 0003    	add.w	r0, r11, #0x3
    bdba: 2e03         	cmp	r6, #0x3
    bdbc: d30e         	blo	0xbddc <compiler_builtins::mem::memmove+0x2aa> @ imm = #0x1c
    bdbe: 1f2e         	subs	r6, r5, #0x4
    bdc0: 3804         	subs	r0, #0x4
    bdc2: f816 5f04    	ldrb	r5, [r6, #4]!
    bdc6: f800 5f04    	strb	r5, [r0, #4]!
    bdca: 7875         	ldrb	r5, [r6, #0x1]
    bdcc: 7045         	strb	r5, [r0, #0x1]
    bdce: 78b5         	ldrb	r5, [r6, #0x2]
    bdd0: 7085         	strb	r5, [r0, #0x2]
    bdd2: 78f5         	ldrb	r5, [r6, #0x3]
    bdd4: 70c5         	strb	r5, [r0, #0x3]
    bdd6: 1d05         	adds	r5, r0, #0x4
    bdd8: 429d         	cmp	r5, r3
    bdda: d1f2         	bne	0xbdc2 <compiler_builtins::mem::memmove+0x290> @ imm = #-0x1c
    bddc: eba2 020a    	sub.w	r2, r2, r10
    bde0: eb01 090a    	add.w	r9, r1, r10
    bde4: f022 0603    	bic	r6, r2, #0x3
    bde8: f019 0503    	ands	r5, r9, #0x3
    bdec: eb03 0c06    	add.w	r12, r3, r6
    bdf0: d062         	beq	0xbeb8 <compiler_builtins::mem::memmove+0x386> @ imm = #0xc4
    bdf2: e9cd 6205    	strd	r6, r2, [sp, #20]
    bdf6: 2200         	movs	r2, #0x0
    bdf8: f1c5 0404    	rsb.w	r4, r5, #0x4
    bdfc: a80a         	add	r0, sp, #0x28
    bdfe: 920a         	str	r2, [sp, #0x28]
    be00: 4428         	add	r0, r5
    be02: 07e6         	lsls	r6, r4, #0x1f
    be04: bf1e         	ittt	ne
    be06: f899 2000    	ldrbne.w	r2, [r9]
    be0a: 7002         	strbne	r2, [r0]
    be0c: 2201         	movne	r2, #0x1
    be0e: 07a4         	lsls	r4, r4, #0x1e
    be10: bf44         	itt	mi
    be12: f839 4002    	ldrhmi.w	r4, [r9, r2]
    be16: 5284         	strhmi	r4, [r0, r2]
    be18: 980a         	ldr	r0, [sp, #0x28]
    be1a: ea4f 0ec5    	lsl.w	lr, r5, #0x3
    be1e: eba9 0605    	sub.w	r6, r9, r5
    be22: f1ce 0800    	rsb.w	r8, lr, #0x0
    be26: 1d1a         	adds	r2, r3, #0x4
    be28: f8cd 901c    	str.w	r9, [sp, #0x1c]
    be2c: 4562         	cmp	r2, r12
    be2e: 9504         	str	r5, [sp, #0x10]
    be30: d25e         	bhs	0xbef0 <compiler_builtins::mem::memmove+0x3be> @ imm = #0xbc
    be32: 426a         	rsbs	r2, r5, #0
    be34: f8cd 8008    	str.w	r8, [sp, #0x8]
    be38: 188d         	adds	r5, r1, r2
    be3a: 465a         	mov	r2, r11
    be3c: f008 0b18    	and	r11, r8, #0x18
    be40: 9203         	str	r2, [sp, #0xc]
    be42: eb05 040a    	add.w	r4, r5, r10
    be46: eb02 060a    	add.w	r6, r2, r10
    be4a: fa20 f00e    	lsr.w	r0, r0, lr
    be4e: f8d4 9004    	ldr.w	r9, [r4, #0x4]
    be52: fa09 f10b    	lsl.w	r1, r9, r11
    be56: 4301         	orrs	r1, r0
    be58: 4630         	mov	r0, r6
    be5a: f840 1b08    	str	r1, [r0], #8
    be5e: 4560         	cmp	r0, r12
    be60: d249         	bhs	0xbef6 <compiler_builtins::mem::memmove+0x3c4> @ imm = #0x92
    be62: 68a1         	ldr	r1, [r4, #0x8]
    be64: fa29 f90e    	lsr.w	r9, r9, lr
    be68: fa01 f30b    	lsl.w	r3, r1, r11
    be6c: ea43 0309    	orr.w	r3, r3, r9
    be70: 6073         	str	r3, [r6, #0x4]
    be72: f106 030c    	add.w	r3, r6, #0xc
    be76: 4563         	cmp	r3, r12
    be78: d240         	bhs	0xbefc <compiler_builtins::mem::memmove+0x3ca> @ imm = #0x80
    be7a: f8d4 900c    	ldr.w	r9, [r4, #0xc]
    be7e: fa21 f10e    	lsr.w	r1, r1, lr
    be82: fa09 f80b    	lsl.w	r8, r9, r11
    be86: ea41 0108    	orr.w	r1, r1, r8
    be8a: 6001         	str	r1, [r0]
    be8c: f106 0010    	add.w	r0, r6, #0x10
    be90: 4560         	cmp	r0, r12
    be92: f080 809e    	bhs.w	0xbfd2 <compiler_builtins::mem::memmove+0x4a0> @ imm = #0x13c
    be96: 6920         	ldr	r0, [r4, #0x10]
    be98: fa29 f10e    	lsr.w	r1, r9, lr
    be9c: 3210         	adds	r2, #0x10
    be9e: 3510         	adds	r5, #0x10
    bea0: fa00 f40b    	lsl.w	r4, r0, r11
    bea4: 4321         	orrs	r1, r4
    bea6: 6019         	str	r1, [r3]
    bea8: eb02 030a    	add.w	r3, r2, r10
    beac: 1d19         	adds	r1, r3, #0x4
    beae: 4561         	cmp	r1, r12
    beb0: d3c7         	blo	0xbe42 <compiler_builtins::mem::memmove+0x310> @ imm = #-0x72
    beb2: 4455         	add	r5, r10
    beb4: 4681         	mov	r9, r0
    beb6: e08e         	b	0xbfd6 <compiler_builtins::mem::memmove+0x4a4> @ imm = #0x11c
    beb8: 4563         	cmp	r3, r12
    beba: f080 80be    	bhs.w	0xc03a <compiler_builtins::mem::memmove+0x508> @ imm = #0x17c
    bebe: 4649         	mov	r1, r9
    bec0: 6808         	ldr	r0, [r1]
    bec2: f843 0b04    	str	r0, [r3], #4
    bec6: 4563         	cmp	r3, r12
    bec8: f080 80b7    	bhs.w	0xc03a <compiler_builtins::mem::memmove+0x508> @ imm = #0x16e
    becc: 6848         	ldr	r0, [r1, #0x4]
    bece: f843 0b04    	str	r0, [r3], #4
    bed2: 4563         	cmp	r3, r12
    bed4: bf3e         	ittt	lo
    bed6: 6888         	ldrlo	r0, [r1, #0x8]
    bed8: f843 0b04    	strlo	r0, [r3], #4
    bedc: 4563         	cmplo	r3, r12
    bede: f080 80ac    	bhs.w	0xc03a <compiler_builtins::mem::memmove+0x508> @ imm = #0x158
    bee2: 68c8         	ldr	r0, [r1, #0xc]
    bee4: 3110         	adds	r1, #0x10
    bee6: f843 0b04    	str	r0, [r3], #4
    beea: 4563         	cmp	r3, r12
    beec: d3e8         	blo	0xbec0 <compiler_builtins::mem::memmove+0x38e> @ imm = #-0x30
    beee: e0a4         	b	0xc03a <compiler_builtins::mem::memmove+0x508> @ imm = #0x148
    bef0: 4681         	mov	r9, r0
    bef2: 4635         	mov	r5, r6
    bef4: e071         	b	0xbfda <compiler_builtins::mem::memmove+0x4a8> @ imm = #0xe2
    bef6: 1d25         	adds	r5, r4, #0x4
    bef8: 1d33         	adds	r3, r6, #0x4
    befa: e06c         	b	0xbfd6 <compiler_builtins::mem::memmove+0x4a4> @ imm = #0xd8
    befc: f104 0508    	add.w	r5, r4, #0x8
    bf00: f106 0308    	add.w	r3, r6, #0x8
    bf04: 4689         	mov	r9, r1
    bf06: e066         	b	0xbfd6 <compiler_builtins::mem::memmove+0x4a4> @ imm = #0xcc
    bf08: 9800         	ldr	r0, [sp]
    bf0a: 4428         	add	r0, r5
    bf0c: f1a0 0508    	sub.w	r5, r0, #0x8
    bf10: f8dd b00c    	ldr.w	r11, [sp, #0xc]
    bf14: 9c01         	ldr	r4, [sp, #0x4]
    bf16: 9e04         	ldr	r6, [sp, #0x10]
    bf18: a80d         	add	r0, sp, #0x34
    bf1a: 2300         	movs	r3, #0x0
    bf1c: 19aa         	adds	r2, r5, r6
    bf1e: eb00 0c06    	add.w	r12, r0, r6
    bf22: 1f10         	subs	r0, r2, #0x4
    bf24: f1c6 0204    	rsb.w	r2, r6, #0x4
    bf28: 930d         	str	r3, [sp, #0x34]
    bf2a: 07d5         	lsls	r5, r2, #0x1f
    bf2c: bf1e         	ittt	ne
    bf2e: 7803         	ldrbne	r3, [r0]
    bf30: f88c 3000    	strbne.w	r3, [r12]
    bf34: 2301         	movne	r3, #0x1
    bf36: 0792         	lsls	r2, r2, #0x1e
    bf38: bf44         	itt	mi
    bf3a: 5ac2         	ldrhmi	r2, [r0, r3]
    bf3c: f82c 2003    	strhmi.w	r2, [r12, r3]
    bf40: 980d         	ldr	r0, [sp, #0x34]
    bf42: f004 0218    	and	r2, r4, #0x18
    bf46: 9e07         	ldr	r6, [sp, #0x1c]
    bf48: fa0a f202    	lsl.w	r2, r10, r2
    bf4c: fa20 f00e    	lsr.w	r0, r0, lr
    bf50: f8dd e008    	ldr.w	lr, [sp, #0x8]
    bf54: 4310         	orrs	r0, r2
    bf56: f841 0c04    	str	r0, [r1, #-4]
    bf5a: e9dd 1005    	ldrd	r1, r0, [sp, #20]
    bf5e: eb06 0900    	add.w	r9, r6, r0
    bf62: f00e 0203    	and	r2, lr, #0x3
    bf66: eb01 0a00    	add.w	r10, r1, r0
    bf6a: eba9 0102    	sub.w	r1, r9, r2
    bf6e: 4549         	cmp	r1, r9
    bf70: f080 8095    	bhs.w	0xc09e <compiler_builtins::mem::memmove+0x56c> @ imm = #0x12a
    bf74: 1e53         	subs	r3, r2, #0x1
    bf76: f012 0003    	ands	r0, r2, #0x3
    bf7a: d013         	beq	0xbfa4 <compiler_builtins::mem::memmove+0x472> @ imm = #0x26
    bf7c: 4655         	mov	r5, r10
    bf7e: 464a         	mov	r2, r9
    bf80: f815 6d01    	ldrb	r6, [r5, #-1]!
    bf84: 2801         	cmp	r0, #0x1
    bf86: f802 6d01    	strb	r6, [r2, #-1]!
    bf8a: d00d         	beq	0xbfa8 <compiler_builtins::mem::memmove+0x476> @ imm = #0x1a
    bf8c: 4655         	mov	r5, r10
    bf8e: 464a         	mov	r2, r9
    bf90: f815 6d02    	ldrb	r6, [r5, #-2]!
    bf94: 2802         	cmp	r0, #0x2
    bf96: f802 6d02    	strb	r6, [r2, #-2]!
    bf9a: d005         	beq	0xbfa8 <compiler_builtins::mem::memmove+0x476> @ imm = #0xa
    bf9c: f81a 0d03    	ldrb	r0, [r10, #-3]!
    bfa0: f809 0d03    	strb	r0, [r9, #-3]!
    bfa4: 4655         	mov	r5, r10
    bfa6: 464a         	mov	r2, r9
    bfa8: 2b03         	cmp	r3, #0x3
    bfaa: d378         	blo	0xc09e <compiler_builtins::mem::memmove+0x56c> @ imm = #0xf0
    bfac: 1ea8         	subs	r0, r5, #0x2
    bfae: 7843         	ldrb	r3, [r0, #0x1]
    bfb0: f802 3c01    	strb	r3, [r2, #-1]
    bfb4: 7803         	ldrb	r3, [r0]
    bfb6: f802 3c02    	strb	r3, [r2, #-2]
    bfba: f810 3c01    	ldrb	r3, [r0, #-1]
    bfbe: f802 3c03    	strb	r3, [r2, #-3]
    bfc2: f810 3c02    	ldrb	r3, [r0, #-2]
    bfc6: 3804         	subs	r0, #0x4
    bfc8: f802 3d04    	strb	r3, [r2, #-4]!
    bfcc: 4291         	cmp	r1, r2
    bfce: d3ee         	blo	0xbfae <compiler_builtins::mem::memmove+0x47c> @ imm = #-0x24
    bfd0: e065         	b	0xc09e <compiler_builtins::mem::memmove+0x56c> @ imm = #0xca
    bfd2: f104 050c    	add.w	r5, r4, #0xc
    bfd6: e9dd 8b02    	ldrd	r8, r11, [sp, #8]
    bfda: 9804         	ldr	r0, [sp, #0x10]
    bfdc: 2200         	movs	r2, #0x0
    bfde: f88d 2024    	strb.w	r2, [sp, #0x24]
    bfe2: 2801         	cmp	r0, #0x1
    bfe4: f807 2c32    	strb	r2, [r7, #-50]
    bfe8: d10e         	bne	0xc008 <compiler_builtins::mem::memmove+0x4d6> @ imm = #0x1c
    bfea: a809         	add	r0, sp, #0x24
    bfec: 2400         	movs	r4, #0x0
    bfee: 2600         	movs	r6, #0x0
    bff0: 9907         	ldr	r1, [sp, #0x1c]
    bff2: 07c9         	lsls	r1, r1, #0x1f
    bff4: d013         	beq	0xc01e <compiler_builtins::mem::memmove+0x4ec> @ imm = #0x26
    bff6: 1d29         	adds	r1, r5, #0x4
    bff8: 5d89         	ldrb	r1, [r1, r6]
    bffa: 7001         	strb	r1, [r0]
    bffc: f817 0c32    	ldrb	r0, [r7, #-50]
    c000: f89d 2024    	ldrb.w	r2, [sp, #0x24]
    c004: 0400         	lsls	r0, r0, #0x10
    c006: e00b         	b	0xc020 <compiler_builtins::mem::memmove+0x4ee> @ imm = #0x16
    c008: 7968         	ldrb	r0, [r5, #0x5]
    c00a: 2602         	movs	r6, #0x2
    c00c: 792a         	ldrb	r2, [r5, #0x4]
    c00e: f88d 2024    	strb.w	r2, [sp, #0x24]
    c012: 0204         	lsls	r4, r0, #0x8
    c014: f1a7 0032    	sub.w	r0, r7, #0x32
    c018: 9907         	ldr	r1, [sp, #0x1c]
    c01a: 07c9         	lsls	r1, r1, #0x1f
    c01c: d1eb         	bne	0xbff6 <compiler_builtins::mem::memmove+0x4c4> @ imm = #-0x2a
    c01e: 2000         	movs	r0, #0x0
    c020: 4320         	orrs	r0, r4
    c022: fa29 f10e    	lsr.w	r1, r9, lr
    c026: 4310         	orrs	r0, r2
    c028: f008 0218    	and	r2, r8, #0x18
    c02c: f8dd 901c    	ldr.w	r9, [sp, #0x1c]
    c030: 4090         	lsls	r0, r2
    c032: e9dd 6205    	ldrd	r6, r2, [sp, #20]
    c036: 4308         	orrs	r0, r1
    c038: 6018         	str	r0, [r3]
    c03a: eb09 0106    	add.w	r1, r9, r6
    c03e: f002 0203    	and	r2, r2, #0x3
    c042: eb0c 0302    	add.w	r3, r12, r2
    c046: 459c         	cmp	r12, r3
    c048: d229         	bhs	0xc09e <compiler_builtins::mem::memmove+0x56c> @ imm = #0x52
    c04a: 1e56         	subs	r6, r2, #0x1
    c04c: f012 0503    	ands	r5, r2, #0x3
    c050: d012         	beq	0xc078 <compiler_builtins::mem::memmove+0x546> @ imm = #0x24
    c052: 460a         	mov	r2, r1
    c054: 4660         	mov	r0, r12
    c056: f812 4b01    	ldrb	r4, [r2], #1
    c05a: 2d01         	cmp	r5, #0x1
    c05c: f800 4b01    	strb	r4, [r0], #1
    c060: d00c         	beq	0xc07c <compiler_builtins::mem::memmove+0x54a> @ imm = #0x18
    c062: 7848         	ldrb	r0, [r1, #0x1]
    c064: 2d02         	cmp	r5, #0x2
    c066: f88c 0001    	strb.w	r0, [r12, #0x1]
    c06a: d11d         	bne	0xc0a8 <compiler_builtins::mem::memmove+0x576> @ imm = #0x3a
    c06c: 1c8a         	adds	r2, r1, #0x2
    c06e: f10c 0002    	add.w	r0, r12, #0x2
    c072: 2e03         	cmp	r6, #0x3
    c074: d204         	bhs	0xc080 <compiler_builtins::mem::memmove+0x54e> @ imm = #0x8
    c076: e012         	b	0xc09e <compiler_builtins::mem::memmove+0x56c> @ imm = #0x24
    c078: 4660         	mov	r0, r12
    c07a: 460a         	mov	r2, r1
    c07c: 2e03         	cmp	r6, #0x3
    c07e: d30e         	blo	0xc09e <compiler_builtins::mem::memmove+0x56c> @ imm = #0x1c
    c080: 1f11         	subs	r1, r2, #0x4
    c082: 3804         	subs	r0, #0x4
    c084: f811 2f04    	ldrb	r2, [r1, #4]!
    c088: f800 2f04    	strb	r2, [r0, #4]!
    c08c: 784a         	ldrb	r2, [r1, #0x1]
    c08e: 7042         	strb	r2, [r0, #0x1]
    c090: 788a         	ldrb	r2, [r1, #0x2]
    c092: 7082         	strb	r2, [r0, #0x2]
    c094: 78ca         	ldrb	r2, [r1, #0x3]
    c096: 70c2         	strb	r2, [r0, #0x3]
    c098: 1d02         	adds	r2, r0, #0x4
    c09a: 429a         	cmp	r2, r3
    c09c: d1f2         	bne	0xc084 <compiler_builtins::mem::memmove+0x552> @ imm = #-0x1c
    c09e: 4658         	mov	r0, r11
    c0a0: b00e         	add	sp, #0x38
    c0a2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    c0a6: bdf0         	pop	{r4, r5, r6, r7, pc}
    c0a8: 7888         	ldrb	r0, [r1, #0x2]
    c0aa: 1cca         	adds	r2, r1, #0x3
    c0ac: f88c 0002    	strb.w	r0, [r12, #0x2]
    c0b0: f10c 0003    	add.w	r0, r12, #0x3
    c0b4: 2e03         	cmp	r6, #0x3
    c0b6: d2e3         	bhs	0xc080 <compiler_builtins::mem::memmove+0x54e> @ imm = #-0x3a
    c0b8: e7f1         	b	0xc09e <compiler_builtins::mem::memmove+0x56c> @ imm = #-0x1e

0000c0ba <__aeabi_memclr8>:
    c0ba: b580         	push	{r7, lr}
    c0bc: 466f         	mov	r7, sp
    c0be: 2904         	cmp	r1, #0x4
    c0c0: d305         	blo	0xc0ce <__aeabi_memclr8+0x14> @ imm = #0xa
    c0c2: 1f0b         	subs	r3, r1, #0x4
    c0c4: 43da         	mvns	r2, r3
    c0c6: f012 0f0c    	tst.w	r2, #0xc
    c0ca: d102         	bne	0xc0d2 <__aeabi_memclr8+0x18> @ imm = #0x4
    c0cc: e01a         	b	0xc104 <__aeabi_memclr8+0x4a> @ imm = #0x34
    c0ce: 4602         	mov	r2, r0
    c0d0: e024         	b	0xc11c <__aeabi_memclr8+0x62> @ imm = #0x48
    c0d2: f04f 0c00    	mov.w	r12, #0x0
    c0d6: 4602         	mov	r2, r0
    c0d8: f842 cb04    	str	r12, [r2], #4
    c0dc: f013 0f0c    	tst.w	r3, #0xc
    c0e0: d008         	beq	0xc0f4 <__aeabi_memclr8+0x3a> @ imm = #0x10
    c0e2: f003 020c    	and	r2, r3, #0xc
    c0e6: f8c0 c004    	str.w	r12, [r0, #0x4]
    c0ea: 2a04         	cmp	r2, #0x4
    c0ec: d105         	bne	0xc0fa <__aeabi_memclr8+0x40> @ imm = #0xa
    c0ee: 3908         	subs	r1, #0x8
    c0f0: 3008         	adds	r0, #0x8
    c0f2: e006         	b	0xc102 <__aeabi_memclr8+0x48> @ imm = #0xc
    c0f4: 4619         	mov	r1, r3
    c0f6: 4610         	mov	r0, r2
    c0f8: e004         	b	0xc104 <__aeabi_memclr8+0x4a> @ imm = #0x8
    c0fa: 2200         	movs	r2, #0x0
    c0fc: 390c         	subs	r1, #0xc
    c0fe: 6082         	str	r2, [r0, #0x8]
    c100: 300c         	adds	r0, #0xc
    c102: 4602         	mov	r2, r0
    c104: 2b0c         	cmp	r3, #0xc
    c106: d309         	blo	0xc11c <__aeabi_memclr8+0x62> @ imm = #0x12
    c108: 2300         	movs	r3, #0x0
    c10a: 4602         	mov	r2, r0
    c10c: 3910         	subs	r1, #0x10
    c10e: e9c2 3300    	strd	r3, r3, [r2]
    c112: e9c2 3302    	strd	r3, r3, [r2, #8]
    c116: 3210         	adds	r2, #0x10
    c118: 2903         	cmp	r1, #0x3
    c11a: d8f7         	bhi	0xc10c <__aeabi_memclr8+0x52> @ imm = #-0x12
    c11c: 1850         	adds	r0, r2, r1
    c11e: 4282         	cmp	r2, r0
    c120: d221         	bhs	0xc166 <__aeabi_memclr8+0xac> @ imm = #0x42
    c122: f1a1 0c01    	sub.w	r12, r1, #0x1
    c126: f011 0303    	ands	r3, r1, #0x3
    c12a: d00c         	beq	0xc146 <__aeabi_memclr8+0x8c> @ imm = #0x18
    c12c: f04f 0e00    	mov.w	lr, #0x0
    c130: 4611         	mov	r1, r2
    c132: f801 eb01    	strb	lr, [r1], #1
    c136: 2b01         	cmp	r3, #0x1
    c138: d00a         	beq	0xc150 <__aeabi_memclr8+0x96> @ imm = #0x14
    c13a: 2b02         	cmp	r3, #0x2
    c13c: f882 e001    	strb.w	lr, [r2, #0x1]
    c140: d103         	bne	0xc14a <__aeabi_memclr8+0x90> @ imm = #0x6
    c142: 1c91         	adds	r1, r2, #0x2
    c144: e004         	b	0xc150 <__aeabi_memclr8+0x96> @ imm = #0x8
    c146: 4611         	mov	r1, r2
    c148: e002         	b	0xc150 <__aeabi_memclr8+0x96> @ imm = #0x4
    c14a: 2100         	movs	r1, #0x0
    c14c: 7091         	strb	r1, [r2, #0x2]
    c14e: 1cd1         	adds	r1, r2, #0x3
    c150: f1bc 0f03    	cmp.w	r12, #0x3
    c154: bf38         	it	lo
    c156: bd80         	poplo	{r7, pc}
    c158: 3904         	subs	r1, #0x4
    c15a: 2200         	movs	r2, #0x0
    c15c: f841 2f04    	str	r2, [r1, #4]!
    c160: 1d0b         	adds	r3, r1, #0x4
    c162: 4283         	cmp	r3, r0
    c164: d1fa         	bne	0xc15c <__aeabi_memclr8+0xa2> @ imm = #-0xc
    c166: bd80         	pop	{r7, pc}

0000c168 <__aeabi_memcpy8>:
    c168: 2a04         	cmp	r2, #0x4
    c16a: d309         	blo	0xc180 <__aeabi_memcpy8+0x18> @ imm = #0x12
    c16c: b5d0         	push	{r4, r6, r7, lr}
    c16e: af02         	add	r7, sp, #0x8
    c170: f1a2 0e04    	sub.w	lr, r2, #0x4
    c174: ea6f 030e    	mvn.w	r3, lr
    c178: f013 0f0c    	tst.w	r3, #0xc
    c17c: d106         	bne	0xc18c <__aeabi_memcpy8+0x24> @ imm = #0xc
    c17e: e023         	b	0xc1c8 <__aeabi_memcpy8+0x60> @ imm = #0x46
    c180: 460b         	mov	r3, r1
    c182: 4684         	mov	r12, r0
    c184: 4660         	mov	r0, r12
    c186: 4619         	mov	r1, r3
    c188: f7ff bb88    	b.w	0xb89c <compiler_builtins::mem::memcpy> @ imm = #-0x8f0
    c18c: 460b         	mov	r3, r1
    c18e: 4684         	mov	r12, r0
    c190: f853 4b04    	ldr	r4, [r3], #4
    c194: f01e 0f0c    	tst.w	lr, #0xc
    c198: f84c 4b04    	str	r4, [r12], #4
    c19c: d009         	beq	0xc1b2 <__aeabi_memcpy8+0x4a> @ imm = #0x12
    c19e: 684b         	ldr	r3, [r1, #0x4]
    c1a0: 6043         	str	r3, [r0, #0x4]
    c1a2: f00e 030c    	and	r3, lr, #0xc
    c1a6: 2b04         	cmp	r3, #0x4
    c1a8: d107         	bne	0xc1ba <__aeabi_memcpy8+0x52> @ imm = #0xe
    c1aa: 3a08         	subs	r2, #0x8
    c1ac: 3108         	adds	r1, #0x8
    c1ae: 3008         	adds	r0, #0x8
    c1b0: e008         	b	0xc1c4 <__aeabi_memcpy8+0x5c> @ imm = #0x10
    c1b2: 4672         	mov	r2, lr
    c1b4: 4660         	mov	r0, r12
    c1b6: 4619         	mov	r1, r3
    c1b8: e006         	b	0xc1c8 <__aeabi_memcpy8+0x60> @ imm = #0xc
    c1ba: 688b         	ldr	r3, [r1, #0x8]
    c1bc: 3a0c         	subs	r2, #0xc
    c1be: 6083         	str	r3, [r0, #0x8]
    c1c0: 310c         	adds	r1, #0xc
    c1c2: 300c         	adds	r0, #0xc
    c1c4: 4684         	mov	r12, r0
    c1c6: 460b         	mov	r3, r1
    c1c8: f1be 0f0c    	cmp.w	lr, #0xc
    c1cc: d314         	blo	0xc1f8 <__aeabi_memcpy8+0x90> @ imm = #0x28
    c1ce: 4684         	mov	r12, r0
    c1d0: 460b         	mov	r3, r1
    c1d2: 6818         	ldr	r0, [r3]
    c1d4: 3a10         	subs	r2, #0x10
    c1d6: f8cc 0000    	str.w	r0, [r12]
    c1da: 2a03         	cmp	r2, #0x3
    c1dc: 6858         	ldr	r0, [r3, #0x4]
    c1de: f8cc 0004    	str.w	r0, [r12, #0x4]
    c1e2: 6898         	ldr	r0, [r3, #0x8]
    c1e4: f8cc 0008    	str.w	r0, [r12, #0x8]
    c1e8: 68d8         	ldr	r0, [r3, #0xc]
    c1ea: f103 0310    	add.w	r3, r3, #0x10
    c1ee: f8cc 000c    	str.w	r0, [r12, #0xc]
    c1f2: f10c 0c10    	add.w	r12, r12, #0x10
    c1f6: d8ec         	bhi	0xc1d2 <__aeabi_memcpy8+0x6a> @ imm = #-0x28
    c1f8: e8bd 40d0    	pop.w	{r4, r6, r7, lr}
    c1fc: 4660         	mov	r0, r12
    c1fe: 4619         	mov	r1, r3
    c200: f7ff bb4c    	b.w	0xb89c <compiler_builtins::mem::memcpy> @ imm = #-0x968

0000c204 <__aeabi_memcpy4>:
    c204: 2a04         	cmp	r2, #0x4
    c206: d309         	blo	0xc21c <__aeabi_memcpy4+0x18> @ imm = #0x12
    c208: b5d0         	push	{r4, r6, r7, lr}
    c20a: af02         	add	r7, sp, #0x8
    c20c: f1a2 0e04    	sub.w	lr, r2, #0x4
    c210: ea6f 030e    	mvn.w	r3, lr
    c214: f013 0f0c    	tst.w	r3, #0xc
    c218: d106         	bne	0xc228 <__aeabi_memcpy4+0x24> @ imm = #0xc
    c21a: e023         	b	0xc264 <__aeabi_memcpy4+0x60> @ imm = #0x46
    c21c: 460b         	mov	r3, r1
    c21e: 4684         	mov	r12, r0
    c220: 4660         	mov	r0, r12
    c222: 4619         	mov	r1, r3
    c224: f7ff bb3a    	b.w	0xb89c <compiler_builtins::mem::memcpy> @ imm = #-0x98c
    c228: 460b         	mov	r3, r1
    c22a: 4684         	mov	r12, r0
    c22c: f853 4b04    	ldr	r4, [r3], #4
    c230: f01e 0f0c    	tst.w	lr, #0xc
    c234: f84c 4b04    	str	r4, [r12], #4
    c238: d009         	beq	0xc24e <__aeabi_memcpy4+0x4a> @ imm = #0x12
    c23a: 684b         	ldr	r3, [r1, #0x4]
    c23c: 6043         	str	r3, [r0, #0x4]
    c23e: f00e 030c    	and	r3, lr, #0xc
    c242: 2b04         	cmp	r3, #0x4
    c244: d107         	bne	0xc256 <__aeabi_memcpy4+0x52> @ imm = #0xe
    c246: 3a08         	subs	r2, #0x8
    c248: 3108         	adds	r1, #0x8
    c24a: 3008         	adds	r0, #0x8
    c24c: e008         	b	0xc260 <__aeabi_memcpy4+0x5c> @ imm = #0x10
    c24e: 4672         	mov	r2, lr
    c250: 4660         	mov	r0, r12
    c252: 4619         	mov	r1, r3
    c254: e006         	b	0xc264 <__aeabi_memcpy4+0x60> @ imm = #0xc
    c256: 688b         	ldr	r3, [r1, #0x8]
    c258: 3a0c         	subs	r2, #0xc
    c25a: 6083         	str	r3, [r0, #0x8]
    c25c: 310c         	adds	r1, #0xc
    c25e: 300c         	adds	r0, #0xc
    c260: 4684         	mov	r12, r0
    c262: 460b         	mov	r3, r1
    c264: f1be 0f0c    	cmp.w	lr, #0xc
    c268: d314         	blo	0xc294 <__aeabi_memcpy4+0x90> @ imm = #0x28
    c26a: 4684         	mov	r12, r0
    c26c: 460b         	mov	r3, r1
    c26e: 6818         	ldr	r0, [r3]
    c270: 3a10         	subs	r2, #0x10
    c272: f8cc 0000    	str.w	r0, [r12]
    c276: 2a03         	cmp	r2, #0x3
    c278: 6858         	ldr	r0, [r3, #0x4]
    c27a: f8cc 0004    	str.w	r0, [r12, #0x4]
    c27e: 6898         	ldr	r0, [r3, #0x8]
    c280: f8cc 0008    	str.w	r0, [r12, #0x8]
    c284: 68d8         	ldr	r0, [r3, #0xc]
    c286: f103 0310    	add.w	r3, r3, #0x10
    c28a: f8cc 000c    	str.w	r0, [r12, #0xc]
    c28e: f10c 0c10    	add.w	r12, r12, #0x10
    c292: d8ec         	bhi	0xc26e <__aeabi_memcpy4+0x6a> @ imm = #-0x28
    c294: e8bd 40d0    	pop.w	{r4, r6, r7, lr}
    c298: 4660         	mov	r0, r12
    c29a: 4619         	mov	r1, r3
    c29c: f7ff bafe    	b.w	0xb89c <compiler_builtins::mem::memcpy> @ imm = #-0xa04

0000c2a0 <__aeabi_memclr4>:
    c2a0: b580         	push	{r7, lr}
    c2a2: 466f         	mov	r7, sp
    c2a4: 2904         	cmp	r1, #0x4
    c2a6: d305         	blo	0xc2b4 <__aeabi_memclr4+0x14> @ imm = #0xa
    c2a8: 1f0b         	subs	r3, r1, #0x4
    c2aa: 43da         	mvns	r2, r3
    c2ac: f012 0f0c    	tst.w	r2, #0xc
    c2b0: d102         	bne	0xc2b8 <__aeabi_memclr4+0x18> @ imm = #0x4
    c2b2: e01a         	b	0xc2ea <__aeabi_memclr4+0x4a> @ imm = #0x34
    c2b4: 4602         	mov	r2, r0
    c2b6: e024         	b	0xc302 <__aeabi_memclr4+0x62> @ imm = #0x48
    c2b8: f04f 0c00    	mov.w	r12, #0x0
    c2bc: 4602         	mov	r2, r0
    c2be: f842 cb04    	str	r12, [r2], #4
    c2c2: f013 0f0c    	tst.w	r3, #0xc
    c2c6: d008         	beq	0xc2da <__aeabi_memclr4+0x3a> @ imm = #0x10
    c2c8: f003 020c    	and	r2, r3, #0xc
    c2cc: f8c0 c004    	str.w	r12, [r0, #0x4]
    c2d0: 2a04         	cmp	r2, #0x4
    c2d2: d105         	bne	0xc2e0 <__aeabi_memclr4+0x40> @ imm = #0xa
    c2d4: 3908         	subs	r1, #0x8
    c2d6: 3008         	adds	r0, #0x8
    c2d8: e006         	b	0xc2e8 <__aeabi_memclr4+0x48> @ imm = #0xc
    c2da: 4619         	mov	r1, r3
    c2dc: 4610         	mov	r0, r2
    c2de: e004         	b	0xc2ea <__aeabi_memclr4+0x4a> @ imm = #0x8
    c2e0: 2200         	movs	r2, #0x0
    c2e2: 390c         	subs	r1, #0xc
    c2e4: 6082         	str	r2, [r0, #0x8]
    c2e6: 300c         	adds	r0, #0xc
    c2e8: 4602         	mov	r2, r0
    c2ea: 2b0c         	cmp	r3, #0xc
    c2ec: d309         	blo	0xc302 <__aeabi_memclr4+0x62> @ imm = #0x12
    c2ee: 2300         	movs	r3, #0x0
    c2f0: 4602         	mov	r2, r0
    c2f2: 3910         	subs	r1, #0x10
    c2f4: e9c2 3300    	strd	r3, r3, [r2]
    c2f8: e9c2 3302    	strd	r3, r3, [r2, #8]
    c2fc: 3210         	adds	r2, #0x10
    c2fe: 2903         	cmp	r1, #0x3
    c300: d8f7         	bhi	0xc2f2 <__aeabi_memclr4+0x52> @ imm = #-0x12
    c302: 1850         	adds	r0, r2, r1
    c304: 4282         	cmp	r2, r0
    c306: d221         	bhs	0xc34c <__aeabi_memclr4+0xac> @ imm = #0x42
    c308: f1a1 0c01    	sub.w	r12, r1, #0x1
    c30c: f011 0303    	ands	r3, r1, #0x3
    c310: d00c         	beq	0xc32c <__aeabi_memclr4+0x8c> @ imm = #0x18
    c312: f04f 0e00    	mov.w	lr, #0x0
    c316: 4611         	mov	r1, r2
    c318: f801 eb01    	strb	lr, [r1], #1
    c31c: 2b01         	cmp	r3, #0x1
    c31e: d00a         	beq	0xc336 <__aeabi_memclr4+0x96> @ imm = #0x14
    c320: 2b02         	cmp	r3, #0x2
    c322: f882 e001    	strb.w	lr, [r2, #0x1]
    c326: d103         	bne	0xc330 <__aeabi_memclr4+0x90> @ imm = #0x6
    c328: 1c91         	adds	r1, r2, #0x2
    c32a: e004         	b	0xc336 <__aeabi_memclr4+0x96> @ imm = #0x8
    c32c: 4611         	mov	r1, r2
    c32e: e002         	b	0xc336 <__aeabi_memclr4+0x96> @ imm = #0x4
    c330: 2100         	movs	r1, #0x0
    c332: 7091         	strb	r1, [r2, #0x2]
    c334: 1cd1         	adds	r1, r2, #0x3
    c336: f1bc 0f03    	cmp.w	r12, #0x3
    c33a: bf38         	it	lo
    c33c: bd80         	poplo	{r7, pc}
    c33e: 3904         	subs	r1, #0x4
    c340: 2200         	movs	r2, #0x0
    c342: f841 2f04    	str	r2, [r1, #4]!
    c346: 1d0b         	adds	r3, r1, #0x4
    c348: 4283         	cmp	r3, r0
    c34a: d1fa         	bne	0xc342 <__aeabi_memclr4+0xa2> @ imm = #-0xc
    c34c: bd80         	pop	{r7, pc}
    c34e: 6d24         	ldr	r4, [r4, #0x50]
    c350: 6e69         	ldr	r1, [r5, #0x64]
    c352: 3e20         	subs	r6, #0x20
    c354: 6d20         	ldr	r0, [r4, #0x50]
    c356: 7861         	ldrb	r1, [r4, #0x1]
    c358: 202c         	movs	r0, #0x2c
    c35a: 726f         	strb	r7, [r5, #0x9]
    c35c: 6520         	str	r0, [r4, #0x50]
    c35e: 7469         	strb	r1, [r5, #0x11]
    c360: 6568         	str	r0, [r5, #0x54]
    c362: 2072         	movs	r0, #0x72
    c364: 6177         	str	r7, [r6, #0x14]
    c366: 2073         	movs	r0, #0x73
    c368: 614e         	str	r6, [r1, #0x14]
    c36a: 2e4e         	cmp	r6, #0x4e
    c36c: 6d20         	ldr	r0, [r4, #0x50]
    c36e: 6e69         	ldr	r1, [r5, #0x64]
    c370: 3d20         	subs	r5, #0x20
    c372: c020         	stm	r0!, {r5}
    c374: 2c08         	cmp	r4, #0x8
    c376: 6d20         	ldr	r0, [r4, #0x50]
    c378: 7861         	ldrb	r1, [r4, #0x1]
    c37a: 3d20         	subs	r5, #0x20
    c37c: c020         	stm	r0!, {r5}
    c37e: 2000         	movs	r0, #0x0
    c380: 6e69         	ldr	r1, [r5, #0x64]
    c382: 6564         	str	r4, [r4, #0x54]
    c384: 2078         	movs	r0, #0x78
    c386: 756f         	strb	r7, [r5, #0x15]
    c388: 2074         	movs	r0, #0x74
    c38a: 666f         	str	r7, [r5, #0x64]
    c38c: 6220         	str	r0, [r4, #0x20]
    c38e: 756f         	strb	r7, [r5, #0x15]
    c390: 646e         	str	r6, [r5, #0x44]
    c392: 3a73         	subs	r2, #0x73
    c394: 7420         	strb	r0, [r4, #0x10]
    c396: 6568         	str	r0, [r5, #0x54]
    c398: 6c20         	ldr	r0, [r4, #0x40]
    c39a: 6e65         	ldr	r5, [r4, #0x64]
    c39c: 6920         	ldr	r0, [r4, #0x10]
    c39e: 2073         	movs	r0, #0x73
    c3a0: 12c0         	asrs	r0, r0, #0xb
    c3a2: 6220         	str	r0, [r4, #0x20]
    c3a4: 7475         	strb	r5, [r6, #0x11]
    c3a6: 7420         	strb	r0, [r4, #0x10]
    c3a8: 6568         	str	r0, [r5, #0x54]
    c3aa: 6920         	ldr	r0, [r4, #0x10]
    c3ac: 646e         	str	r6, [r5, #0x44]
    c3ae: 7865         	ldrb	r5, [r4, #0x1]
    c3b0: 6920         	ldr	r0, [r4, #0x10]
    c3b2: 2073         	movs	r0, #0x73
    c3b4: 00c0         	lsls	r0, r0, #0x3
    c3b6: 722f         	strb	r7, [r5, #0x8]
    c3b8: 7375         	strb	r5, [r6, #0xd]
    c3ba: 6374         	str	r4, [r6, #0x34]
    c3bc: 342f         	adds	r4, #0x2f
    c3be: 6138         	str	r0, [r7, #0x10]
    c3c0: 3232         	adds	r2, #0x32
    c3c2: 6339         	str	r1, [r7, #0x30]
    c3c4: 6165         	str	r5, [r4, #0x14]
    c3c6: 6665         	str	r5, [r4, #0x64]
    c3c8: 3464         	adds	r4, #0x64
    c3ca: 3839         	subs	r0, #0x39
    c3cc: 6335         	str	r5, [r6, #0x30]
    c3ce: 3035         	adds	r0, #0x35
    c3d0: 3939         	subs	r1, #0x39
    c3d2: 6230         	str	r0, [r6, #0x20]
    c3d4: 3431         	adds	r4, #0x31
    c3d6: 3131         	adds	r1, #0x31
    c3d8: 6236         	str	r6, [r6, #0x20]
    c3da: 6436         	str	r6, [r6, #0x40]
    c3dc: 3538         	adds	r5, #0x38
    c3de: 6136         	str	r6, [r6, #0x10]
    c3e0: 3066         	adds	r0, #0x66
    c3e2: 3839         	subs	r0, #0x39
    c3e4: 2f35         	cmp	r7, #0x35
    c3e6: 696c         	ldr	r4, [r5, #0x14]
    c3e8: 7262         	strb	r2, [r4, #0x9]
    c3ea: 7261         	strb	r1, [r4, #0x9]
    c3ec: 2f79         	cmp	r7, #0x79
    c3ee: 6f63         	ldr	r3, [r4, #0x74]
    c3f0: 6572         	str	r2, [r6, #0x54]
    c3f2: 732f         	strb	r7, [r5, #0xc]
    c3f4: 6372         	str	r2, [r6, #0x34]
    c3f6: 6e2f         	ldr	r7, [r5, #0x60]
    c3f8: 6d75         	ldr	r5, [r6, #0x54]
    c3fa: 662f         	str	r7, [r5, #0x60]
    c3fc: 3233         	adds	r2, #0x33
    c3fe: 722e         	strb	r6, [r5, #0x8]
    c400: 0073         	lsls	r3, r6, #0x1
    c402: 726f         	strb	r7, [r5, #0x9]
    c404: 6e61         	ldr	r1, [r4, #0x64]
    c406: 6567         	str	r7, [r4, #0x54]
    c408: 642d         	str	r5, [r5, #0x40]
    c40a: 7073         	strb	r3, [r6, #0x1]
    c40c: 732f         	strb	r7, [r5, #0xc]
    c40e: 6372         	str	r2, [r6, #0x34]
    c410: 652f         	str	r7, [r5, #0x50]
    c412: 7078         	strb	r0, [r7, #0x1]
    c414: 6e6f         	ldr	r7, [r5, #0x64]
    c416: 6e65         	ldr	r5, [r4, #0x64]
    c418: 6974         	ldr	r4, [r6, #0x14]
    c41a: 6c61         	ldr	r1, [r4, #0x44]
    c41c: 722e         	strb	r6, [r5, #0x8]
    c41e: 0073         	lsls	r3, r6, #0x1
    c420: 726f         	strb	r7, [r5, #0x9]
    c422: 6e61         	ldr	r1, [r4, #0x64]
    c424: 6567         	str	r7, [r4, #0x54]
    c426: 642d         	str	r5, [r5, #0x40]
    c428: 7073         	strb	r3, [r6, #0x1]
    c42a: 732f         	strb	r7, [r5, #0xc]
    c42c: 6372         	str	r2, [r6, #0x34]
    c42e: 702f         	strb	r7, [r5]
    c430: 6361         	str	r1, [r4, #0x34]
    c432: 656b         	str	r3, [r5, #0x54]
    c434: 2e64         	cmp	r6, #0x64
    c436: 7372         	strb	r2, [r6, #0xd]
    c438: d400         	bmi	0xc43c <__aeabi_memclr4+0x19c> @ imm = #0x0
    c43a: d4d4         	bmi	0xc3e6 <__aeabi_memclr4+0x146> @ imm = #-0x58
    c43c: 0007         	movs	r7, r0
    c43e: 0000         	movs	r0, r0
    c440: 000c         	movs	r4, r1
    c442: 0000         	movs	r0, r0
    c444: 0003         	movs	r3, r0
    c446: 0000         	movs	r0, r0
    c448: 0008         	movs	r0, r1
    c44a: 0000         	movs	r0, r0

0000c44c <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.2>:
    c44c: 04 00 00 00 09 00 00 00         ........
    c454: 01 00 00 00                     ....

0000c458 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.3>:
    c458: 05 00 00 00 0a 00 00 00         ........
    c460: 06 00 00 00 0b 00 00 00         ........
    c468: 02 00 00 00 d4 d4 d4 d4         ........

0000c470 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.5>:
    c470: fb f0 9b 24 c5 11 76 c0         ...$..v.
    c478: 00 00 00 00 00 00 00 00         ........
    c480: 00 00 00 00 00 00 00 00         ........
    c488: 00 00 00 00 00 00 00 00         ........
    c490: 00 00 00 00 00 00 00 00         ........
    c498: 00 00 00 00 00 00 00 00         ........
    c4a0: 00 00 00 00 00 00 00 00         ........
    c4a8: 00 00 00 00 00 00 00 00         ........
    c4b0: 00 00 00 00 00 00 00 00         ........
    c4b8: 00 00 00 00 00 00 00 00         ........
    c4c0: 00 00 00 00 00 00 00 00         ........
    c4c8: 00 00 00 00 00 00 00 00         ........
    c4d0: 00 00 00 00 00 00 00 00         ........
    c4d8: 48 32 65 16 6d d5 b0 bf         H2e.m...
    c4e0: 00 00 00 00 00 00 00 00         ........
    c4e8: 00 00 00 00 00 00 00 00         ........
    c4f0: 00 00 00 00 00 00 00 00         ........
    c4f8: 00 00 00 00 00 00 00 00         ........
    c500: 00 00 00 00 00 00 00 00         ........
    c508: 00 00 00 00 00 00 00 00         ........
    c510: 00 00 00 00 00 00 00 00         ........
    c518: 00 00 00 00 00 00 00 00         ........
    c520: 00 00 00 00 00 00 00 00         ........
    c528: 00 00 00 00 00 00 00 00         ........
    c530: 00 00 00 00 00 00 00 00         ........
    c538: 00 00 00 00 00 00 00 00         ........
    c540: 88 2f 06 85 e8 11 38 40         ./....8@
    c548: 00 00 00 00 00 00 00 00         ........
    c550: 00 00 00 00 00 00 00 00         ........
    c558: 6d 46 46 8a 42 2a 74 3f         mFF.B*t?
    c560: 00 00 00 00 00 00 00 00         ........
    c568: 00 00 00 00 00 00 00 00         ........
    c570: 00 00 00 00 00 00 00 00         ........
    c578: 00 00 00 00 00 00 00 00         ........
    c580: 84 47 bb e7 d5 ea aa 3f         .G.....?
    c588: 00 00 00 00 00 00 00 00         ........
    c590: 00 00 00 00 00 00 00 00         ........
    c598: 00 00 00 00 00 00 00 00         ........
    c5a0: 00 00 00 00 00 00 00 00         ........
    c5a8: 91 32 c7 cb e0 7e c7 bf         .2...~..
    c5b0: 00 00 00 00 00 00 00 00         ........
    c5b8: 00 00 00 00 00 00 00 00         ........
    c5c0: eb 2a 2f c1 4b 75 04 bf         .*/.Ku..
    c5c8: 00 00 00 00 00 00 00 00         ........
    c5d0: 00 00 00 00 00 00 00 00         ........
    c5d8: 00 00 00 00 00 00 00 00         ........
    c5e0: 00 00 00 00 00 00 00 00         ........
    c5e8: 7a db 1e 2c 94 7e 3a bf         z..,.~:.
    c5f0: 00 00 00 00 00 00 00 00         ........
    c5f8: 00 00 00 00 00 00 00 00         ........
    c600: 00 00 00 00 00 00 00 00         ........
    c608: 00 00 00 00 00 00 00 00         ........
    c610: b2 af 41 e4 73 57 07 c0         ..A.sW..
    c618: 00 00 00 00 00 00 00 00         ........
    c620: 00 00 00 00 00 00 00 00         ........
    c628: d9 5a cf db b0 e5 43 bf         .Z....C.
    c630: 00 00 00 00 00 00 00 00         ........
    c638: 00 00 00 00 00 00 00 00         ........
    c640: 00 00 00 00 00 00 00 00         ........
    c648: 00 00 00 00 00 00 00 00         ........
    c650: 64 19 d3 36 28 33 7a bf         d..6(3z.
    c658: 00 00 00 00 00 00 00 00         ........
    c660: 00 00 00 00 00 00 00 00         ........
    c668: 00 00 00 00 00 00 00 00         ........
    c670: 00 00 00 00 00 00 00 00         ........
    c678: f8 6b bf 55 f8 fe f6 bf         .k.U....
    c680: 00 00 00 00 00 00 00 00         ........
    c688: 00 00 00 00 00 00 00 00         ........
    c690: 53 29 28 24 51 99 33 bf         S)($Q.3.
    c698: 00 00 00 00 00 00 00 00         ........
    c6a0: 00 00 00 00 00 00 00 00         ........
    c6a8: 00 00 00 00 00 00 00 00         ........
    c6b0: 00 00 00 00 00 00 00 00         ........
    c6b8: e2 5a 9b 6f 92 cf 69 bf         .Z.o..i.
    c6c0: 00 00 00 00 00 00 00 00         ........
    c6c8: 00 00 00 00 00 00 00 00         ........
    c6d0: 00 00 00 00 00 00 00 00         ........
    c6d8: 00 00 00 00 00 00 00 00         ........
    c6e0: 10 1a 11 cf 37 d0 b9 40         ....7..@
    c6e8: 6c e4 28 03 bd d7 61 40         l.(...a@
    c6f0: 00 00 00 00 00 00 00 00         ........
    c6f8: a6 1b 0f ed e0 7a f2 3f         .....z.?
    c700: aa 38 48 18 7b 37 ba 3f         .8H.{7.?
    c708: 00 00 00 00 00 00 00 00         ........
    c710: 00 00 00 00 00 00 00 00         ........
    c718: 00 00 00 00 00 00 00 00         ........
    c720: 93 2b e0 38 b4 f1 2b 40         .+.8..+@
    c728: 0e a6 3c d8 01 fe f4 3f         ..<....?
    c730: 00 00 00 00 00 00 00 00         ........
    c738: 00 00 00 00 00 00 00 00         ........
    c740: 00 00 00 00 00 00 00 00         ........
    c748: 8e 50 6f 29 d0 b1 fc bf         .Po)....
    c750: 75 7d 5e e9 eb e2 a4 bf         u}^.....
    c758: 00 00 00 00 00 00 00 00         ........
    c760: 2c 00 bc bb 01 7b 38 bf         ,....{8.
    c768: a8 ce cd 59 8f b6 01 bf         ...Y....
    c770: 00 00 00 00 00 00 00 00         ........
    c778: 00 00 00 00 00 00 00 00         ........
    c780: 00 00 00 00 00 00 00 00         ........
    c788: ce a6 f4 f3 36 1c 70 bf         ....6.p.
    c790: d5 6a 46 93 82 8f 38 bf         .jF...8.
    c798: 00 00 00 00 00 00 00 00         ........
    c7a0: 00 00 00 00 00 00 00 00         ........
    c7a8: 00 00 00 00 00 00 00 00         ........
    c7b0: 0a 1e d8 03 d3 dd 31 c0         ......1.
    c7b8: ad 59 c8 ee b5 fc d9 bf         .Y......
    c7c0: 00 00 00 00 00 00 00 00         ........
    c7c8: b2 84 21 5d 40 66 6e bf         ..!]@fn.
    c7d0: 70 ab 92 1e f2 fc 35 bf         p.....5.
    c7d8: 00 00 00 00 00 00 00 00         ........
    c7e0: 00 00 00 00 00 00 00 00         ........
    c7e8: 00 00 00 00 00 00 00 00         ........
    c7f0: ca 10 2c 82 bb 0c a4 bf         ..,.....
    c7f8: e7 df 43 8b 12 8f 6e bf         ..C...n.
    c800: 00 00 00 00 00 00 00 00         ........
    c808: 00 00 00 00 00 00 00 00         ........
    c810: 00 00 00 00 00 00 00 00         ........
    c818: 72 2f e6 80 bd c5 dd bf         r/......
    c820: c3 72 86 54 3a ba a3 3f         .r.T:..?
    c828: 00 00 00 00 00 00 00 00         ........
    c830: 50 6f aa 91 ec c6 20 bf         Po.... .
    c838: db 2b 81 a7 54 de e8 be         .+..T...
    c840: 00 00 00 00 00 00 00 00         ........
    c848: 00 00 00 00 00 00 00 00         ........
    c850: 00 00 00 00 00 00 00 00         ........
    c858: a9 26 e3 29 50 eb 51 bf         .&.)P.Q.
    c860: 72 4a 34 26 ef 06 1c bf         rJ4&....
    c868: 00 00 00 00 00 00 00 00         ........
    c870: 00 00 00 00 00 00 00 00         ........
    c878: 00 00 00 00 00 00 00 00         ........
    c880: ff 41 2c ad 31 a4 dd bf         .A,.1...
    c888: a2 57 87 ad cc ea 81 bf         .W......
    c890: 00 00 00 00 00 00 00 00         ........
    c898: 4e cc 9a 26 a7 b0 20 bf         N..&.. .
    c8a0: 6a 66 61 cf ea bc e8 be         jfa.....
    c8a8: 00 00 00 00 00 00 00 00         ........
    c8b0: 00 00 00 00 00 00 00 00         ........
    c8b8: 00 00 00 00 00 00 00 00         ........
    c8c0: a6 0b 80 e3 23 d6 51 bf         ....#.Q.
    c8c8: 18 da e1 74 44 e5 1b bf         ...tD...
    c8d0: 00 00 00 00 00 00 00 00         ........
    c8d8: 00 00 00 00 00 00 00 00         ........
    c8e0: 00 00 00 00 00 00 00 00         ........
    c8e8: 0d cd 00 f6 97 aa 8e c0         ........
    c8f0: 8b ed 73 d7 d7 56 32 c0         ..s..V2.
    c8f8: 00 00 00 00 00 00 00 00         ........
    c900: 95 fc 13 ab e0 88 d0 bf         ........
    c908: 86 d2 e5 02 ce 5a 98 bf         .....Z..
    c910: 00 00 00 00 00 00 00 00         ........
    c918: 00 00 00 00 00 00 00 00         ........
    c920: 00 00 00 00 00 00 00 00         ........
    c928: 97 96 b7 cb 93 43 02 c0         .....C..
    c930: fe f4 8f 02 63 6f cc bf         ....co..
    c938: 00 00 00 00 00 00 00 00         ........
    c940: 00 00 00 00 00 00 00 00         ........
    c948: 00 00 00 00 00 00 00 00         ........
    c950: ef 72 e8 23 11 cb fc 3f         .r.#...?
    c958: b5 74 94 69 23 31 a1 3f         .t.i#1.?
    c960: 00 00 00 00 00 00 00 00         ........
    c968: 69 06 34 4d 04 d9 3e 3f         i.4M..>?
    c970: 09 d5 d7 a8 2f b2 06 3f         ..../..?
    c978: 00 00 00 00 00 00 00 00         ........
    c980: 00 00 00 00 00 00 00 00         ........
    c988: 00 00 00 00 00 00 00 00         ........
    c990: 8f a1 df de 59 1f 71 3f         ....Y.q?
    c998: 7a b2 4e e6 cf a3 3a 3f         z.N...:?
    c9a0: 00 00 00 00 00 00 00 00         ........
    c9a8: 00 00 00 00 00 00 00 00         ........
    c9b0: 00 00 00 00 00 00 00 00         ........
    c9b8: 70 d4 b9 ff 26 ea 34 c0         p...&.4.
    c9c0: d6 77 c0 7d 79 49 d9 bf         .w.}yI..
    c9c8: 00 00 00 00 00 00 00 00         ........
    c9d0: c6 5b bf e3 f6 8f 77 bf         .[....w.
    c9d8: bf ad 93 5c 86 76 41 bf         ...\.vA.
    c9e0: 00 00 00 00 00 00 00 00         ........
    c9e8: 00 00 00 00 00 00 00 00         ........
    c9f0: 00 00 00 00 00 00 00 00         ........
    c9f8: 30 dd 75 b2 4b 2c a9 bf         0.u.K,..
    ca00: 9b 30 9c 39 88 af 73 bf         .0.9..s.
    ca08: 00 00 00 00 00 00 00 00         ........
    ca10: 00 00 00 00 00 00 00 00         ........
    ca18: 00 00 00 00 00 00 00 00         ........
    ca20: 2d 03 5f 74 b1 69 d6 bf         -._t.i..
    ca28: 9a ac be f3 4c e9 7a bf         ....L.z.
    ca30: 00 00 00 00 00 00 00 00         ........
    ca38: c2 50 be 68 8b 8e 18 bf         .P.h....
    ca40: ec 7b fb f3 be 20 e2 be         .{... ..
    ca48: 00 00 00 00 00 00 00 00         ........
    ca50: 00 00 00 00 00 00 00 00         ........
    ca58: 00 00 00 00 00 00 00 00         ........
    ca60: 84 48 99 ba 03 cc 4a bf         .H....J.
    ca68: d1 56 22 a9 00 e5 14 bf         .V".....
    ca70: 00 00 00 00 00 00 00 00         ........
    ca78: 00 00 00 00 00 00 00 00         ........
    ca80: 00 00 00 00 00 00 00 00         ........
    ca88: 30 1a 0f 6f 94 df b1 40         0..o...@
    ca90: 24 2b 45 70 11 9f 52 40         $+Ep..R@
    ca98: b0 66 57 63 85 ea 03 bd         .fWc....
    caa0: 66 fb bb 24 b6 ba e4 3f         f..$...?
    caa8: c6 26 77 85 17 24 ad 3f         .&w..$.?
    cab0: c3 d0 43 4f b4 61 9d 3f         ..CO.a.?
    cab8: e3 54 0c d6 16 af e5 bc         .T......
    cac0: 00 00 00 00 00 00 00 00         ........
    cac8: 2f f2 c9 57 4b 77 22 40         /..WKw"@
    cad0: 64 2d ad 3d c8 5d eb 3f         d-.=.].?
    cad8: 59 b2 1f ab ac 4e e3 3f         Y....N.?
    cae0: c6 bb bc 75 d8 a5 1d bd         ...u....
    cae8: 00 00 00 00 00 00 00 00         ........
    caf0: 17 8a 55 31 92 2f f9 bf         ..U1./..
    caf8: 51 01 b8 39 42 49 9e bf         Q..9BI..
    cb00: 40 59 bc 4e af a0 50 3c         @Y.N..P<
    cb08: 8a c3 65 bd 79 bd 3b bf         ..e.y.;.
    cb10: b9 71 2d dd 9a 7b 04 bf         .q-..{..
    cb18: 19 79 06 a3 76 5c fc be         .y..v\..
    cb20: 6c 67 08 59 47 78 2f bc         lg.YGx/.
    cb28: 00 00 00 00 00 00 00 00         ........
    cb30: 4c c5 8c d4 b2 28 6e bf         L....(n.
    cb38: 4a cf ed 0d ef 86 37 bf         J.....7.
    cb40: 2e 0a 8c e5 f9 99 33 bf         ......3.
    cb48: ab 77 39 28 5d 90 62 bc         .w9(].b.
    cb50: 00 00 00 00 00 00 00 00         ........
    cb58: e0 e9 3c b2 58 c7 af c0         ..<.X...
    cb60: de af 79 75 4f 3e 52 c0         ..yuO>R.
    cb68: f0 46 17 b4 fc f2 12 bd         .F......
    cb70: 0e ec 67 20 18 a5 ec bf         ..g ....
    cb78: 83 d3 69 8f 11 8a b4 bf         ..i.....
    cb80: 29 9c 1f ee c1 0c a9 bf         ).......
    cb88: 2b 71 ae 91 50 a9 c0 3f         +q..P..?
    cb90: 00 00 00 00 00 00 00 00         ........
    cb98: f7 b9 a9 28 6a 32 22 c0         ...(j2".
    cba0: c9 64 0b 1e 4e d4 eb bf         .d..N...
    cba8: b6 ff 15 96 1a 03 e6 bf         ........
    cbb0: d3 a3 dc 3c 71 30 fe 3f         ...<q0.?
    cbb8: 00 00 00 00 00 00 00 00         ........
    cbc0: 41 a8 fa 34 1f 44 7b 3f         A..4.D{?
    cbc8: 42 fc 44 e9 f8 55 1f 3f         B.D..U.?
    cbd0: 80 32 54 8a ce 1e a4 3c         .2T....<
    cbd8: a2 ac d7 ac 4e ab b8 3e         ....N..>
    cbe0: 5c 28 66 97 01 b1 81 3e         \(f....>
    cbe8: fe cd 92 2f 5d 9a 75 3e         .../].u>
    cbf0: 54 b0 c0 cc e8 9b f9 3e         T......>
    cbf8: 00 00 00 00 00 00 00 00         ........
    cc00: 36 fe e7 cc f7 41 ef 3e         6....A.>
    cc08: e1 8e bc f5 a9 e8 b7 3e         .......>
    cc10: c6 8f fb b1 07 ee b2 3e         .......>
    cc18: 5e d6 a1 fc 9e ae 31 3f         ^.....1?
    cc20: 00 00 00 00 00 00 00 00         ........
    cc28: a9 b5 08 20 20 02 f3 3f         ...  ..?
    cc30: 86 8e e1 21 ae 8f 99 3f         ...!...?
    cc38: c0 ec 35 aa e1 9a 54 3f         ..5...T?
    cc40: a9 27 ef 43 fd 9a 3e 3f         .'.C..>?
    cc48: b9 94 27 af e7 68 07 3f         ..'..h.?
    cc50: a0 f6 b6 84 cb 88 02 3f         .......?
    cc58: d1 c6 ec e7 42 01 21 bf         ....B.!.
    cc60: 00 00 00 00 00 00 00 00         ........
    cc68: b9 91 c4 e6 3f 66 69 3f         ....?fi?
    cc70: b5 26 dd 8e 48 a5 34 3f         .&..H.4?
    cc78: ac 95 03 a2 ea fd 32 3f         ......2?
    cc80: 64 61 6a e9 a8 4e 53 bf         daj..NS.
    cc88: 00 00 00 00 00 00 00 00         ........
    cc90: c1 6e 93 4a bd b6 e9 3f         .n.J...?
    cc98: 83 ef e1 5b d7 49 91 3f         ...[.I.?
    cca0: 88 61 3f d7 34 de 4b 3f         .a?.4.K?
    cca8: d8 d7 ef ac a3 b2 34 3f         ......4?
    ccb0: 36 7c f1 d6 84 a9 ff 3e         6|.....>
    ccb8: 65 95 42 25 eb 10 f9 3e         e.B%...>
    ccc0: 61 f5 0b de 0a ff 16 bf         a.......
    ccc8: 00 00 00 00 00 00 00 00         ........
    ccd0: 8d 3b 4b 60 d6 2d 61 3f         .;K`.-a?
    ccd8: 80 7a f5 ea 52 ed 2b 3f         .z..R.+?
    cce0: 5a 71 66 aa 61 b0 29 3f         Zqf.a.)?
    cce8: f5 b0 c7 ea 55 1d 4a bf         ....U.J.
    ccf0: 00 00 00 00 00 00 00 00         ........
    ccf8: 93 0a ae 0e 6b 64 e6 3f         ....kd.?
    cd00: ee cf b2 2e fa b0 8e 3f         .......?
    cd08: a8 e4 a1 2c f0 e3 49 3f         ...,..I?
    cd10: 8c 3f 8d 90 e6 16 33 3f         .?....3?
    cd18: 1a d5 3b b6 ea 58 fd 3e         ..;..X.>
    cd20: b7 00 7d 3f 66 9e f7 3e         ..}?f..>
    cd28: 05 c5 9d ab 1b d0 15 bf         ........
    cd30: 5b 89 32 d2 b4 a9 02 bf         [.2.....
    cd38: d3 63 00 56 a8 7a 5e 3f         .c.V.z^?
    cd40: 07 e3 c4 85 86 f1 28 3f         ......(?
    cd48: 05 17 cd 7b af 48 27 3f         ...{.H'?
    cd50: 7a b9 d9 3a db e3 47 bf         z..:..G.
    cd58: 83 1b 04 38 be 14 1f bf         ...8....
    cd60: 10 06 12 36 e9 3a f0 40         ...6.:.@
    cd68: 24 24 87 0b dd 00 93 40         $$.....@
    cd70: 02 ad 81 e6 f4 50 43 40         .....PC@
    cd78: 86 df be d3 88 7f 2f 40         ....../@
    cd80: 6d 6b c7 85 d4 a4 f6 3f         mk.....?
    cd88: da 20 94 ad 51 3a ec 3f         . ..Q:.?
    cd90: a9 5e 5d 78 ab fe 06 c0         .^]x....
    cd98: d1 14 a6 4f 56 32 ec bf         ...OV2..
    cda0: 51 6f 28 9c 9a f9 62 40         Qo(...b@
    cda8: 4c df a0 46 de 30 2d 40         L..F.0-@
    cdb0: c4 4e ee 3d 6e 8b 27 40         .N.=n.'@
    cdb8: 93 bb 66 7e 44 c3 45 c0         ..f~D.E.
    cdc0: 69 e9 d8 a1 ea 32 17 c0         i....2..
    cdc8: b4 c6 22 a7 a6 c8 c6 c0         ..".....
    cdd0: 00 00 00 00 00 00 00 00         ........
    cdd8: 00 00 00 00 00 00 00 00         ........
    cde0: 19 a7 4b d9 6b 08 2c 40         ..K.k.,@
    cde8: 00 00 00 00 00 00 00 00         ........
    cdf0: 00 00 00 00 00 00 00 00         ........
    cdf8: 00 00 00 00 00 00 00 00         ........
    ce00: 00 00 00 00 00 00 00 00         ........
    ce08: 57 ce be 1e 6b 47 35 c0         W...kG5.
    ce10: 00 00 00 00 00 00 00 00         ........
    ce18: 00 00 00 00 00 00 00 00         ........
    ce20: 00 00 00 00 00 00 00 00         ........
    ce28: 00 00 00 00 00 00 00 00         ........
    ce30: 1d 3f e4 dd 2d 5e c4 c0         .?..-^..
    ce38: 3c 32 b2 10 a8 c8 61 c0         <2....a.
    ce40: 00 00 00 00 00 00 00 00         ........
    ce48: 9d b0 4e 8a 05 a9 f7 bf         ..N.....
    ce50: ee 17 f2 bf eb bc 2d 40         ......-@
    ce58: 00 00 00 00 00 00 00 00         ........
    ce60: 00 00 00 00 00 00 00 00         ........
    ce68: 00 00 00 00 00 00 00 00         ........
    ce70: 77 e4 c0 0c 76 f2 34 c0         w...v.4.
    ce78: 34 9c 3d 8e d3 16 ff bf         4.=.....
    ce80: 00 00 00 00 00 00 00 00         ........
    ce88: 00 00 00 00 00 00 00 00         ........
    ce90: 00 00 00 00 00 00 00 00         ........
    ce98: 84 09 01 2e c4 b7 c2 c0         ........
    cea0: ae 0c ba 90 11 58 63 c0         .....Xc.
    cea8: e0 d0 5a be 38 04 14 3d         ..Z.8..=
    ceb0: 63 f3 cd bc a9 e4 f4 bf         c.......
    ceb8: 60 c8 9f 3f d9 62 bd bf         `..?.b..
    cec0: 8a 22 19 73 9a e2 2d 40         .".s..-@
    cec8: d1 ef 44 19 8c a2 f0 3c         ..D....<
    ced0: 00 00 00 00 00 00 00 00         ........
    ced8: 36 15 ba 83 d4 28 33 c0         6....(3.
    cee0: 58 3e f3 6f 7b 57 fc bf         X>.o{W..
    cee8: c0 20 f9 64 f3 cc f3 bf         . .d....
    cef0: e2 de 87 a8 6c e8 2e 3d         ....l..=
    cef8: 00 00 00 00 00 00 00 00         ........
    cf00: e4 e7 32 ce cd 9d af 40         ..2....@
    cf08: 44 26 49 a7 95 2a 52 40         D&I..*R@
    cf10: d0 31 cd e4 a5 e7 12 3d         .1.....=
    cf18: 75 ab 2e 69 58 98 ec 3f         u..iX..?
    cf20: fb 40 56 89 7c 81 b4 3f         .@V.|..?
    cf28: 8d 1c 1e 7c 83 08 a9 3f         ...|...?
    cf30: 85 ee 11 9a b0 ae 2d 40         ......-@
    cf38: 00 00 00 00 00 00 00 00         ........
    cf40: 6a c5 77 32 ff 1e 22 40         j.w2.."@
    cf48: f6 6f 60 ac 74 b8 eb 3f         .o`.t..?
    cf50: 7c 51 64 d0 1a f2 e5 3f         |Qd....?
    cf58: 2d 2d 8d fe 36 22 04 c0         --..6"..
    cf60: 00 00 00 00 00 00 00 00         ........
    cf68: af df 76 5c 5d 73 f0 40         ..v\]s.@
    cf70: ae c1 b3 f2 3c 37 93 40         ....<7.@
    cf78: 20 10 f6 96 a7 69 43 40          ....iC@
    cf80: 82 fe 1e 06 92 a5 2f 40         ....../@
    cf88: 07 5b 7c 75 4e be f6 3f         .[|uN..?
    cf90: d8 2f a0 40 5e 47 ec 3f         ./.@^G.?
    cf98: da 92 a3 dc c9 06 07 c0         ........
    cfa0: 52 cd ca 3d 6a 1e 37 40         R..=j.7@
    cfa8: ce c7 a6 bf 4c 2f 63 40         ....L/c@
    cfb0: 19 34 d7 bf 10 7e 2d 40         .4...~-@
    cfb8: de 4f 03 c5 87 bb 27 40         .O....'@
    cfc0: 6c dc 77 27 71 ea 45 c0         l.w'q.E.
    cfc8: 69 07 f3 2e 9e 50 17 c0         i....P..

0000cfd0 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.6>:
    cfd0: 00 00 00 00 00 00 00 00         ........
    cfd8: 27 77 f1 fd 68 22 91 3c         'w..h".<
    cfe0: 57 57 bc 2a 54 2c a3 3c         WW.*T,.<
    cfe8: 0c de 22 eb e7 a9 a2 3c         .."....<
    cff0: 00 00 00 00 00 00 00 00         ........
    cff8: 00 00 00 00 00 00 00 00         ........
    d000: 00 00 00 00 00 00 00 00         ........
    d008: 00 00 00 00 00 00 00 00         ........
    d010: 00 00 00 00 00 00 00 00         ........
    d018: 80 fa 63 85 99 59 68 3b         ..c..Yh;
    d020: 29 90 9d 60 91 90 bc 3b         )..`...;
    d028: ca eb 26 b7 6e 71 d6 3b         ..&.nq.;
    d030: 6f 02 52 87 cb 23 ec bb         o.R..#..
    d038: 4f 8f b9 e6 cc 3d a0 38         O....=.8
    d040: 0c 7b 8b 34 74 96 f9 ba         .{.4t...
    d048: e1 d8 68 8a 65 51 05 be         ..h.eQ..
    d050: cf 77 39 28 21 20 27 be         .w9(! '.
    d058: b3 a2 0e bf 73 17 48 be         ....s.H.
    d060: 66 d3 75 29 d2 be 2b 3e         f.u)..+>

0000d068 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.7>:
    d068: 00 00 00 00 00 00 f0 3f         .......?
    d070: cc 7c 19 fe c5 11 a2 bc         .|......
    d078: 00 00 00 00 00 00 00 00         ........
    d080: 00 00 00 00 00 00 00 00         ........
    d088: 00 00 00 00 00 00 00 00         ........
    d090: 00 00 00 00 00 00 00 00         ........
    d098: 00 00 00 00 00 00 00 00         ........
    d0a0: 00 00 00 00 00 00 00 00         ........
    d0a8: 00 00 00 00 00 00 00 00         ........
    d0b0: 00 00 00 00 00 00 00 00         ........
    d0b8: 00 00 00 00 00 00 00 00         ........
    d0c0: 00 00 00 00 00 00 00 00         ........
    d0c8: 00 00 00 00 00 00 00 00         ........
    d0d0: 00 00 00 00 00 00 00 00         ........
    d0d8: 00 00 00 00 00 00 00 00         ........
    d0e0: 00 00 00 00 00 00 00 00         ........
    d0e8: 00 00 00 00 00 00 00 00         ........
    d0f0: 00 00 00 00 00 00 00 00         ........
    d0f8: 00 00 00 00 00 00 00 00         ........
    d100: 00 00 00 00 00 00 00 00         ........
    d108: 00 00 00 00 00 00 00 00         ........
    d110: 00 00 00 00 00 00 00 00         ........
    d118: 00 00 00 00 00 00 00 00         ........
    d120: 00 00 00 00 00 00 00 00         ........
    d128: 00 00 00 00 00 00 00 00         ........
    d130: 00 00 00 00 00 00 00 00         ........
    d138: 00 00 00 00 00 00 00 00         ........
    d140: 00 00 00 00 00 00 00 00         ........
    d148: de 53 96 69 cf d5 d8 b5         .S.i....
    d150: 4f eb 5e 7a 6c fd 7a 32         O.^zl.z2
    d158: 8e dd ab 17 2e 5e 82 39         .....^.9
    d160: c3 1b 77 8c f3 07 8a 39         ..w....9
    d168: 08 e0 84 19 22 18 8e bc         ...."...
    d170: 2e d3 03 3f 70 1e 90 bc         ...?p...
    d178: 7e f7 1a 4e 04 f1 eb bf         ~..N....
    d180: db f7 1a 4e 04 f1 eb 3f         ...N...?
    d188: d9 f7 1a 4e 04 f1 eb 3f         ...N...?
    d190: 5f fd f6 54 e2 b8 ee bf         _..T....
    d198: 9f d3 81 bb a6 3f a4 3f         .....?.?
    d1a0: b0 2d 2e 82 97 77 82 3f         .-...w.?
    d1a8: e9 f2 bc 66 72 18 7f bf         ...fr...
    d1b0: 92 e6 cd 27 cf 84 a3 3f         ...'...?
    d1b8: 2d a2 7d 76 f2 5a 57 3f         -.}v.ZW?
    d1c0: 00 00 00 00 00 00 00 00         ........
    d1c8: 00 00 00 00 00 00 00 00         ........
    d1d0: 00 00 00 00 00 00 00 00         ........
    d1d8: 00 00 00 00 00 00 00 00         ........
    d1e0: 00 00 00 00 00 00 00 00         ........
    d1e8: 00 00 00 00 00 00 00 00         ........
    d1f0: 00 00 00 00 00 00 00 00         ........
    d1f8: 00 00 00 00 00 00 00 00         ........
    d200: 68 83 fd 57 63 5c 93 3c         h..Wc\.<
    d208: 18 2c e0 36 f0 3e b6 3f         .,.6.>.?
    d210: 00 00 00 00 00 00 00 00         ........
    d218: 00 00 00 00 00 00 00 00         ........
    d220: 00 00 00 00 00 00 00 00         ........
    d228: 78 eb 66 61 5b 83 a7 35         x.fa[..5
    d230: b0 65 f4 29 d7 48 7e b2         .e.).H~.
    d238: 6e f4 78 04 ab 6a 42 b9         n.x..jB.
    d240: 1a df a0 79 a1 bb 5d 39         ...y..]9
    d248: 1d a6 95 2a 16 d0 d8 3b         ...*...;
    d250: 9b 92 e5 d9 8d 7b 8d bb         .....{..
    d258: e1 7d 2c 66 bf e2 dd bb         .},f....
    d260: fa 14 79 5c cd 4e 00 3c         ..y\.N.<
    d268: 24 76 e6 1c cc 72 f3 3b         $v...r.;
    d270: a1 44 75 e8 3d 87 f8 bb         .Du.=...
    d278: dc 0e cd b0 0c ad b8 3b         .......;
    d280: 66 e3 80 7f 67 d3 a8 3b         f...g..;
    d288: 0a bf fc 19 b9 ed 84 3b         .......;
    d290: 85 80 18 d6 41 ee 8c bb         ....A...
    d298: e6 e4 f3 8e 50 72 67 3b         ....Prg;
    d2a0: 49 9d 35 e3 c3 47 f7 bb         I.5..G..
    d2a8: 38 49 93 99 76 ab 2b 3b         8I..v.+;
    d2b0: c0 1a 2e 07 05 29 95 3c         .....).<
    d2b8: 3a ad 6d b1 c1 a8 a8 3c         :.m....<
    d2c0: 00 00 00 00 00 00 f0 bf         ........
    d2c8: 9d d0 89 9b 80 88 54 3b         ......T;
    d2d0: 00 00 00 00 00 00 00 00         ........
    d2d8: 00 00 00 00 00 00 00 00         ........
    d2e0: 14 c3 1a bd ac ea e8 bb         ........
    d2e8: 98 8c f5 c8 48 13 05 3c         ....H..<
    d2f0: c0 52 1b d7 ec 36 07 bc         .R...6..
    d2f8: 00 00 00 00 00 00 f0 3f         .......?
    d300: 00 00 00 00 00 00 00 00         ........
    d308: 71 b0 7b 9f 54 ae ab 35         q.{.T..5
    d310: 17 87 ce de a9 42 79 b2         .....By.
    d318: de b0 d2 c1 ac 69 52 b9         .....iR.
    d320: d2 d6 8a 79 8d a1 76 39         ...y..v9
    d328: 89 48 fa 9c 38 d1 f7 3b         .H..8..;
    d330: 89 33 7f f4 7b 7d f8 3b         .3..{}.;
    d338: 3a 35 fe 02 3c 02 25 3c         :5..<.%<
    d340: ed 95 53 4a a6 41 ec bb         ..SJ.A..
    d348: 1f 91 4a 3e 05 aa 0d 3c         ..J>...<
    d350: 47 6d a1 db a8 13 23 bc         Gm....#.
    d358: c5 a5 a1 90 26 cd c0 3b         ....&..;
    d360: bb ba 56 a5 34 02 b5 3b         ..V.4..;
    d368: cc 84 58 40 06 f1 a1 3b         ..X@...;
    d370: 21 9e 34 5a 4e 6a a4 bb         !.4ZNj..
    d378: 61 dd 73 78 73 88 9e 3b         a.sxs..;
    d380: 38 7a 49 0d fa 30 00 bc         8zI..0..
    d388: bd 55 7c f6 0b ca 67 3b         .U|...g;
    d390: c1 3c ae 58 13 bc 8a 3c         .<.X...<
    d398: 93 91 fd 4f 45 47 81 3c         ...OEG.<
    d3a0: 92 9a b0 04 53 26 ef bf         ....S&..
    d3a8: fe 2d 9e c9 97 74 5d 3f         .-...t]?
    d3b0: 00 00 00 00 00 00 00 00         ........
    d3b8: 00 00 00 00 00 00 00 00         ........
    d3c0: a5 35 c7 8f 41 22 ff bb         .5..A"..
    d3c8: 83 b0 eb 11 a3 a9 3d 3c         ......=<
    d3d0: f1 7a 65 33 3a 26 10 bc         .ze3:&..
    d3d8: 90 9a b0 04 53 26 ef 3f         ....S&.?
    d3e0: 00 00 00 00 00 00 00 00         ........
    d3e8: 00 00 00 00 00 00 00 00         ........
    d3f0: 00 00 00 00 00 00 00 00         ........
    d3f8: 00 00 00 00 00 00 00 00         ........
    d400: 00 00 00 00 00 00 00 00         ........
    d408: 00 00 00 00 00 00 00 00         ........
    d410: 00 00 00 00 00 00 00 00         ........
    d418: 00 00 00 00 00 00 00 00         ........
    d420: 00 00 00 00 00 00 00 00         ........
    d428: 00 00 00 00 00 00 00 00         ........
    d430: 00 00 00 00 00 00 00 00         ........
    d438: 00 00 00 00 00 00 00 00         ........
    d440: 00 00 00 00 00 00 00 00         ........
    d448: 00 00 00 00 00 00 00 00         ........
    d450: 00 00 00 00 00 00 00 00         ........
    d458: 00 00 00 00 00 00 00 00         ........
    d460: 00 00 00 00 00 00 00 00         ........
    d468: 00 00 00 00 00 00 00 00         ........
    d470: 00 00 00 00 00 00 00 00         ........
    d478: 00 00 00 00 00 00 00 00         ........
    d480: 00 00 00 00 00 00 00 00         ........
    d488: 00 00 00 00 00 00 00 00         ........
    d490: 00 00 00 00 00 00 00 00         ........
    d498: 00 00 00 00 00 00 00 00         ........
    d4a0: 00 00 00 00 00 00 f0 3f         .......?
    d4a8: 00 00 00 00 00 00 00 00         ........
    d4b0: 00 00 00 00 00 00 00 00         ........
    d4b8: 00 00 00 00 00 00 00 00         ........
    d4c0: 00 00 00 00 00 00 00 00         ........
    d4c8: 00 00 00 00 00 00 00 00         ........
    d4d0: 00 00 00 00 00 00 00 00         ........
    d4d8: 00 00 00 00 00 00 00 00         ........
    d4e0: 00 00 00 00 00 00 00 00         ........
    d4e8: 00 00 00 00 00 00 00 00         ........
    d4f0: 00 00 00 00 00 00 00 00         ........
    d4f8: 00 00 00 00 00 00 00 00         ........
    d500: 00 00 00 00 00 00 00 00         ........
    d508: 00 00 00 00 00 00 00 00         ........
    d510: 00 00 00 00 00 00 00 00         ........
    d518: 00 00 00 00 00 00 00 00         ........
    d520: 00 00 00 00 00 00 00 00         ........
    d528: 00 00 00 00 00 00 00 00         ........
    d530: 00 00 00 00 00 00 00 00         ........
    d538: 00 00 00 00 00 00 00 00         ........
    d540: 00 00 00 00 00 00 00 00         ........
    d548: 00 00 00 00 00 00 00 00         ........
    d550: 00 00 00 00 00 00 00 00         ........
    d558: 00 00 00 00 00 00 00 00         ........
    d560: 00 00 00 00 00 00 00 00         ........
    d568: 00 00 00 00 00 00 00 00         ........
    d570: 00 00 00 00 00 00 00 00         ........
    d578: 00 00 00 00 00 00 00 00         ........
    d580: 00 00 00 00 00 00 00 00         ........
    d588: 00 00 00 00 00 00 f0 3f         .......?
    d590: 00 00 00 00 00 00 00 00         ........
    d598: 00 00 00 00 00 00 00 00         ........
    d5a0: 00 00 00 00 00 00 00 00         ........
    d5a8: 00 00 00 00 00 00 00 00         ........
    d5b0: 00 00 00 00 00 00 00 00         ........
    d5b8: 00 00 00 00 00 00 00 00         ........
    d5c0: 00 00 00 00 00 00 00 00         ........
    d5c8: 00 00 00 00 00 00 00 00         ........
    d5d0: 00 00 00 00 00 00 00 00         ........
    d5d8: 00 00 00 00 00 00 00 00         ........
    d5e0: 00 00 00 00 00 00 00 00         ........
    d5e8: 00 00 00 00 00 00 00 00         ........
    d5f0: 00 00 00 00 00 00 00 00         ........
    d5f8: 00 00 00 00 00 00 00 00         ........
    d600: 00 00 00 00 00 00 00 00         ........
    d608: 00 00 00 00 00 00 00 00         ........
    d610: 00 00 00 00 00 00 00 00         ........
    d618: 00 00 00 00 00 00 00 00         ........
    d620: 00 00 00 00 00 00 00 00         ........
    d628: 00 00 00 00 00 00 00 00         ........
    d630: 00 00 00 00 00 00 00 00         ........
    d638: 00 00 00 00 00 00 00 00         ........
    d640: 00 00 00 00 00 00 00 00         ........
    d648: 00 00 00 00 00 00 00 00         ........
    d650: 00 00 00 00 00 00 00 00         ........
    d658: 00 00 00 00 00 00 00 00         ........
    d660: 00 00 00 00 00 00 00 00         ........
    d668: 00 00 00 00 00 00 00 00         ........
    d670: 00 00 00 00 00 00 f0 3f         .......?
    d678: 00 00 00 00 00 00 00 00         ........
    d680: 00 00 00 00 00 00 00 00         ........
    d688: 00 00 00 00 00 00 00 00         ........
    d690: 00 00 00 00 00 00 00 00         ........
    d698: 00 00 00 00 00 00 00 00         ........
    d6a0: 00 00 00 00 00 00 00 00         ........
    d6a8: 00 00 00 00 00 00 00 00         ........
    d6b0: 00 00 00 00 00 00 00 00         ........
    d6b8: 00 00 00 00 00 00 00 00         ........
    d6c0: 00 00 00 00 00 00 00 00         ........
    d6c8: 00 00 00 00 00 00 00 00         ........
    d6d0: 00 00 00 00 00 00 00 00         ........
    d6d8: 00 00 00 00 00 00 00 00         ........
    d6e0: 00 00 00 00 00 00 00 00         ........
    d6e8: 00 00 00 00 00 00 00 00         ........
    d6f0: 00 00 00 00 00 00 00 00         ........
    d6f8: 00 00 00 00 00 00 00 00         ........
    d700: 00 00 00 00 00 00 00 00         ........
    d708: 00 00 00 00 00 00 00 00         ........
    d710: 00 00 00 00 00 00 00 00         ........
    d718: 00 00 00 00 00 00 00 00         ........
    d720: 00 00 00 00 00 00 00 00         ........
    d728: 00 00 00 00 00 00 00 00         ........
    d730: 00 00 00 00 00 00 00 00         ........
    d738: 00 00 00 00 00 00 00 00         ........
    d740: 00 00 00 00 00 00 00 00         ........
    d748: 00 00 00 00 00 00 00 00         ........
    d750: 00 00 00 00 00 00 00 00         ........
    d758: 00 00 00 00 00 00 f0 3f         .......?
    d760: 00 00 00 00 00 00 00 00         ........
    d768: 00 00 00 00 00 00 00 00         ........
    d770: 00 00 00 00 00 00 00 00         ........
    d778: 00 00 00 00 00 00 00 00         ........
    d780: 00 00 00 00 00 00 00 00         ........
    d788: 00 00 00 00 00 00 00 00         ........
    d790: 00 00 00 00 00 00 00 00         ........
    d798: 00 00 00 00 00 00 00 00         ........
    d7a0: 00 00 00 00 00 00 00 00         ........
    d7a8: 00 00 00 00 00 00 00 00         ........
    d7b0: 00 00 00 00 00 00 00 00         ........
    d7b8: 00 00 00 00 00 00 00 00         ........
    d7c0: 00 00 00 00 00 00 00 00         ........
    d7c8: 00 00 00 00 00 00 00 00         ........
    d7d0: 00 00 00 00 00 00 00 00         ........
    d7d8: 00 00 00 00 00 00 00 00         ........
    d7e0: 00 00 00 00 00 00 00 00         ........
    d7e8: 00 00 00 00 00 00 00 00         ........
    d7f0: 00 00 00 00 00 00 00 00         ........
    d7f8: 00 00 00 00 00 00 00 00         ........
    d800: 00 00 00 00 00 00 00 00         ........
    d808: 00 00 00 00 00 00 00 00         ........
    d810: 00 00 00 00 00 00 00 00         ........
    d818: 00 00 00 00 00 00 00 00         ........
    d820: 00 00 00 00 00 00 00 00         ........
    d828: 00 00 00 00 00 00 00 00         ........
    d830: 00 00 00 00 00 00 00 00         ........
    d838: 00 00 00 00 00 00 00 00         ........
    d840: 00 00 00 00 00 00 f0 3f         .......?
    d848: 17 4c 5d f5 69 ca 14 38         .L].i..8
    d850: 12 dd 02 3b ea 23 d0 b4         ...;.#..
    d858: db d9 51 09 13 b2 d7 be         ..Q.....
    d860: 60 27 bd 06 3d 22 d1 3e         `'..=".>
    d868: ce 49 06 72 ad 89 11 3f         .I.r...?
    d870: 28 81 2b ed 3f a1 a7 3e         (.+.?..>
    d878: 00 00 00 00 00 00 00 00         ........
    d880: 00 00 00 00 00 00 00 00         ........
    d888: 00 00 00 00 00 00 00 00         ........
    d890: 00 00 00 00 00 00 00 00         ........
    d898: 00 00 00 00 00 00 00 00         ........
    d8a0: 00 00 00 00 00 00 00 00         ........
    d8a8: 00 00 00 00 00 00 00 00         ........
    d8b0: 00 00 00 00 00 00 00 00         ........
    d8b8: 00 00 00 00 00 00 00 00         ........
    d8c0: 00 00 00 00 00 00 00 00         ........
    d8c8: 00 00 00 00 00 00 00 00         ........
    d8d0: 00 00 00 00 00 00 00 00         ........
    d8d8: 00 00 00 00 00 00 00 00         ........
    d8e0: 00 00 00 00 00 00 00 00         ........
    d8e8: 00 00 00 00 00 00 00 00         ........
    d8f0: 00 00 00 00 00 00 00 00         ........
    d8f8: 00 00 00 00 00 00 00 00         ........
    d900: df 39 07 73 f2 16 14 bf         .9.s....
    d908: 00 00 00 00 00 00 00 00         ........
    d910: 00 00 00 00 00 00 00 00         ........
    d918: 00 00 00 00 00 00 00 00         ........
    d920: 00 00 00 00 00 00 00 00         ........
    d928: d3 53 b2 6a e3 de 1b b5         .S.j....
    d930: b2 85 e6 a5 65 5f b4 31         ....e_.1
    d938: 3e 31 98 21 00 ae e1 38         >1.!...8
    d940: 9d 1b ed 24 16 c1 e1 38         ...$...8
    d948: 44 e6 56 52 a6 62 d3 bb         D.VR.b..
    d950: e3 97 44 ff a7 9e d4 bb         ..D.....
    d958: 8c df 7f d7 2a 94 20 bf         ....*. .
    d960: 81 dd 7f d7 2a 94 20 3f         ....*. ?
    d968: 7b dd 7f d7 2a 94 20 3f         {...*. ?
    d970: f6 75 e7 ae c1 bf ee 3e         .u.....>
    d978: 49 46 22 a2 99 ba ee 3e         IF"....>
    d980: 69 5a c6 6e 7e 06 cc 3e         iZ.n~..>
    d988: 75 59 6e a7 4d 98 c7 be         uYn.M...
    d990: 48 46 4c 70 0d 9f ed 3e         HFLp...>
    d998: 7a 07 60 1d c3 b8 a1 3e         z.`....>
    d9a0: 00 00 00 00 00 00 00 00         ........
    d9a8: 00 00 00 00 00 00 00 00         ........
    d9b0: 00 00 00 00 00 00 00 00         ........
    d9b8: 00 00 00 00 00 00 00 00         ........
    d9c0: 00 00 00 00 00 00 00 00         ........
    d9c8: 00 00 00 00 00 00 00 00         ........
    d9d0: 00 00 00 00 00 00 00 00         ........
    d9d8: 00 00 00 00 00 00 00 00         ........
    d9e0: f8 b3 bf d3 2b fc d7 3b         ....+..;
    d9e8: d7 54 6e f2 26 80 22 bf         .Tn.&.".
    d9f0: 00 00 00 00 00 00 00 00         ........
    d9f8: 00 00 00 00 00 00 00 00         ........
    da00: 00 00 00 00 00 00 00 00         ........
    da08: 77 c8 3e 6b 46 20 1f b5         w.>kF ..
    da10: 13 e9 c9 c2 e1 8e d2 b1         ........
    da18: 73 b3 d6 4e 5c 3a 7f 38         s..N\:.8
    da20: 4c 68 1f 71 35 be 93 38         Lh.q5..8
    da28: 52 0a e8 2e 82 34 c4 3b         R....4.;
    da30: 83 53 53 f2 6c 95 cb 3b         .SS.l..;
    da38: 25 7e ee 6b 29 42 c7 3b         %~.k)B.;
    da40: 3a 42 28 10 31 d5 96 bb         :B(.1...
    da48: 7f d1 b9 93 92 ad d6 bb         ........
    da50: 53 a0 1f ab 3e e0 e5 3b         S...>..;
    da58: aa 61 c2 ae 34 de b5 bb         .a..4...
    da60: 56 e5 0c 3a 62 7f c0 bb         V..:b...
    da68: 92 4c a1 cd 8c 1a c5 bb         .L......
    da70: 50 92 eb 84 fb 28 c8 3b         P....(.;
    da78: 0d 6e 1a 5e d4 dd c2 bb         .n.^....
    da80: 3c 3c 1c eb e2 36 1a bf         <<...6..
    da88: b5 3f 1c eb e2 36 1a 3f         .?...6.?
    da90: 28 75 bb 86 64 4f f6 3e         (u..dO.>
    da98: f3 5e 78 4b b9 20 e1 3b         .^xK. .;
    daa0: 88 aa 30 79 b4 a6 f1 3b         ..0y...;
    daa8: 16 81 9c 7d 5f 9a a3 bb         ...}_...
    dab0: 00 00 00 00 00 00 00 00         ........
    dab8: 00 00 00 00 00 00 00 00         ........
    dac0: 29 81 61 7b 8e c7 c5 bb         ).a{....
    dac8: d5 27 8a 28 a6 82 d7 bb         .'.(....
    dad0: fc 1c cb 0c bc ca 1f bf         ........
    dad8: 18 75 bb 86 64 4f f6 3e         .u..dO.>
    dae0: 00 00 00 00 00 00 00 00         ........
    dae8: 45 84 c8 4f 4c 8b 2c 35         E..OL.,5
    daf0: 80 9a a1 2e 05 42 b9 31         .....B.1
    daf8: ec a6 8c 1f de 99 c3 b8         ........
    db00: dc 33 cf d0 fb e0 c4 b8         .3......
    db08: 05 63 02 34 89 b4 db bb         .c.4....
    db10: 05 eb 1e 28 88 10 ea bb         ...(....
    db18: da fb 12 23 34 9f 82 bc         ...#4...
    db20: fa fc 18 b6 ec ba 7f 3c         .......<
    db28: 41 1c 63 02 11 ca 7f 3c         A.c....<
    db30: 14 d9 dd a5 a4 5f f1 3b         ....._.;
    db38: 60 71 4b 70 f1 90 c4 bb         `qKp....
    db40: 55 aa d3 8e d4 5c c1 bb         U....\..
    db48: 2d cb 65 83 67 36 bd bb         -.e.g6..
    db50: 90 f9 89 1e 8b f3 ba 3b         .......;
    db58: a4 5e 29 1a d0 85 bb bb         .^).....
    db60: cd 1f 0d b8 9f 24 42 bc         .....$B.
    db68: 88 1f f6 16 ec 6c 32 3c         .....l2<
    db70: 24 b4 c8 6b a7 68 1d bf         $..k.h..
    db78: ef ca 19 4a ce d4 17 bf         ...J....
    db80: c5 22 5a ad 8e b1 1f 3f         ."Z....?
    db88: 1e 29 55 2d a4 27 e1 3e         .)U-.'.>
    db90: 00 00 00 00 00 00 00 00         ........
    db98: 00 00 00 00 00 00 00 00         ........
    dba0: 78 93 9c de 0a 81 d4 3b         x......;
    dba8: bc ec 32 c1 5f 04 80 bc         ..2._...
    dbb0: e5 8b bb 86 64 4f f6 3e         ....dO.>
    dbb8: 75 68 91 0c 1b 8d 2e bf         uh......
    dbc0: 00 00 00 00 00 00 00 00         ........
    dbc8: 2d 82 c8 ee c3 90 38 38         -.....88
    dbd0: 3f 73 59 c2 6a fd e0 b4         ?sY.j...
    dbd8: f3 de ad cd cd f3 68 38         ......h8
    dbe0: 56 92 b0 46 9a 10 77 38         V..F..w8
    dbe8: bc 89 19 f6 31 ee 54 bb         ....1.T.
    dbf0: 0d 4d 26 f1 4a 65 6f bb         .M&.Jeo.
    dbf8: ff e6 c2 f1 40 74 b3 3b         ....@t.;
    dc00: 1d 45 ec 27 cb ff b2 bb         .E.'....
    dc08: 76 32 fd 32 ac e1 c5 bb         v2.2....
    dc10: c8 a6 f0 6b 29 cf 3a bb         ...k).:.
    dc18: 13 14 16 13 24 a2 3f bb         ....$.?.
    dc20: 4c 88 9a 8c cd 23 60 bb         L....#`.
    dc28: 1e 80 d3 83 d4 c4 66 bb         ......f.
    dc30: 74 a2 05 c7 2e 7a 71 3b         t....zq;
    dc38: ba 04 37 08 51 74 73 bb         ..7.Qts.
    dc40: be f2 7f fb 32 cb a8 bb         ....2...
    dc48: b3 f2 7f fb 32 cb 98 3b         ....2..;
    dc50: 39 a6 b2 43 f1 38 ce 3b         9..C.8.;
    dc58: 42 7d 66 cd 2d 44 c8 3b         B}f.-D.;
    dc60: 72 71 45 13 a2 e4 c3 bb         rqE.....
    dc68: 35 b9 59 d2 ff 88 85 bb         5.Y.....
    dc70: 06 d5 89 55 32 55 07 3f         ...U2U.?
    dc78: 77 ff ff ff ff ff ef 3f         w......?
    dc80: 36 8a 19 f6 31 ee 54 3b         6...1.T;
    dc88: e9 35 58 51 9a 1a b3 3b         .5XQ...;
    dc90: 60 4b 58 6a 20 4f a8 bb         `KXj O..
    dc98: 9c 01 e9 cd 98 91 d7 3b         .......;
    dca0: 31 d2 da 0c 56 76 f2 bf         1...Vv..
    dca8: 91 d4 a8 53 ec f7 77 41         ...S..wA
    dcb0: 91 d4 a8 53 ec f7 77 c1         ...S..w.
    dcb8: cc ef 76 f8 f1 14 6b 41         ..v...kA
    dcc0: 0e 43 85 7c 0d 95 63 c1         .C.|..c.
    dcc8: b9 d6 25 2e 29 20 01 3e         ..%.) .>
    dcd0: 4f 66 55 bf d1 9c ac bd         OfU.....
    dcd8: 00 00 00 00 00 00 00 00         ........
    dce0: 00 00 00 00 00 00 00 00         ........
    dce8: 00 00 00 00 00 00 00 00         ........
    dcf0: 00 00 00 00 00 00 00 00         ........
    dcf8: 00 00 00 00 00 00 00 00         ........
    dd00: 00 00 00 00 00 00 00 00         ........
    dd08: 00 00 00 00 00 00 00 00         ........
    dd10: 00 00 00 00 00 00 00 00         ........
    dd18: 00 00 00 00 00 00 00 00         ........
    dd20: 00 00 00 00 00 00 00 00         ........
    dd28: 00 00 00 00 00 00 00 00         ........
    dd30: 00 00 00 00 00 00 00 00         ........
    dd38: 00 00 00 00 00 00 00 00         ........
    dd40: 00 00 00 00 00 00 00 00         ........
    dd48: 00 00 00 00 00 00 00 00         ........
    dd50: 00 00 00 00 00 00 00 00         ........
    dd58: 00 00 00 00 00 00 00 00         ........
    dd60: 25 af 28 79 8e 5e 24 c1         %.(y.^$.
    dd68: 00 00 00 00 00 00 00 00         ........
    dd70: 00 00 00 00 00 00 00 00         ........
    dd78: 00 00 00 00 00 00 00 00         ........
    dd80: 00 00 00 00 00 00 00 00         ........
    dd88: 04 23 f2 a5 5d ca 59 37         .#..].Y7
    dd90: 3c 3c 14 6b e9 d9 00 b4         <<.k....
    dd98: 3c 8e 8e 90 89 71 05 3b         <....q.;
    dda0: 3d 36 ab 37 f2 3e e8 3a         =6.7.>.:
    dda8: f0 e6 52 d7 9d bb 5f c1         ..R..._.
    ddb0: 37 2d 7e 61 b6 cc 77 c1         7-~a..w.
    ddb8: 92 d4 a8 53 ec f7 77 c1         ...S..w.
    ddc0: cf c9 4b b9 99 f1 1c be         ..K.....
    ddc8: 20 01 8f 50 ef ef 27 3e          ..P..'>
    ddd0: 31 33 12 be 19 2f 38 be         13.../8.
    ddd8: ab 61 8f 54 40 93 4b be         .a.T@.K.
    dde0: 99 78 87 3d a5 27 3b be         .x.=.';.
    dde8: c0 b2 f1 89 76 e7 f6 bd         ....v...
    ddf0: 60 85 f3 ee e7 61 04 be         `....a..
    ddf8: 52 ac 84 b1 8c be 01 be         R.......
    de00: 00 00 00 00 00 00 00 00         ........
    de08: 00 00 00 00 00 00 00 00         ........
    de10: 00 00 00 00 00 00 00 00         ........
    de18: 00 00 00 00 00 00 00 00         ........
    de20: 00 00 00 00 00 00 00 00         ........
    de28: 00 00 00 00 00 00 00 00         ........
    de30: 00 00 00 00 00 00 00 00         ........
    de38: 00 00 00 00 00 00 00 00         ........
    de40: f0 e6 52 d7 9d bb 5f 41         ..R..._A
    de48: e7 5e 47 2e f4 f7 77 c1         .^G...w.
    de50: 00 00 00 00 00 00 00 00         ........
    de58: 00 00 00 00 00 00 00 00         ........
    de60: 00 00 00 00 00 00 00 00         ........
    de68: 37 08 6a 45 9d 3c b9 b7         7.jE.<..
    de70: 3c 67 76 74 3a ca 6f 34         <gvt:.o4
    de78: 1c 61 18 fe bc 6b 19 bb         .a...k..
    de80: 1a 62 09 56 26 e4 23 bb         .b.V&.#.
    de88: 77 66 4b 9d 26 e1 42 3e         wfK.&.B>
    de90: bf b6 0e 02 6a 75 50 3e         ....juP>
    de98: 58 4d af 13 dc 05 ab 40         XM.....@
    dea0: a3 72 af 13 dc 05 ab c0         .r......
    dea8: 12 34 b0 13 dc 05 ab c0         .4......
    deb0: 15 23 8d 7b ab 4f 69 c1         .#.{.Oi.
    deb8: 4d b3 f9 75 9a 51 69 c1         M..u.Qi.
    dec0: 50 e3 83 e3 06 16 67 c1         P.....g.
    dec8: 57 9f 91 dd 16 df 65 c1         W.....e.
    ded0: 54 cf 1b 4b 83 a3 63 41         T..K..cA
    ded8: 51 c1 8a e0 8e 7a 76 c1         Q....zv.
    dee0: a4 de a8 53 ec f7 77 c1         ...S..w.
    dee8: fe 27 53 57 50 2a d4 3e         .'SWP*.>
    def0: ec 27 5a 5b 4a 63 74 3e         .'Z[Jct>
    def8: 34 6e 67 75 02 d5 6a 3e         4ngu..j>
    df00: d9 4a de d6 97 e0 70 be         .J....p.
    df08: d7 a0 05 8e f7 62 32 be         .....b2.
    df10: 00 00 00 00 00 00 00 00         ........
    df18: 00 00 00 00 00 00 00 00         ........
    df20: 8d 7f 4c e5 07 dd 3f be         ..L...?.
    df28: 0c 5e 4e d9 5b 51 69 41         .^N.[QiA
    df30: ed 63 47 2e f4 f7 77 c1         .cG...w.
    df38: 6b 1e 95 bf 4d 6e 82 3e         k...Mn.>
    df40: 00 00 00 00 00 00 00 00         ........
    df48: d6 7c 94 3d 95 9c 31 b7         .|.=..1.
    df50: 0b b2 60 fe 14 90 f2 33         ..`....3
    df58: 7e ce d1 56 70 68 e2 3a         ~..Vph.:
    df60: 06 ab 44 06 45 44 eb ba         ..D.ED..
    df68: dc 5d 36 59 cd 95 62 bd         .]6Y..b.
    df70: 70 1a d7 5f 39 15 16 3d         p.._9..=
    df78: 0c 59 41 7d 84 62 66 3d         .YA}.bf=
    df80: b8 54 58 96 f8 6d 88 bd         .TX..m..
    df88: 32 bd 7c db 60 22 7d bd         2.|.`"}.
    df90: dc 90 23 8a 3d 5f 82 3d         ..#.=_.=
    df98: 6c af c8 15 8f 7b 42 bd         l....{B.
    dfa0: 77 40 88 82 49 98 32 bd         w@..I.2.
    dfa8: fb 9c b5 0e 05 5a 0f bd         .....Z..
    dfb0: 76 2c d4 06 64 ab 15 3d         v,..d..=
    dfb8: b6 16 ec 6c d1 8f f1 bc         ...l....
    dfc0: 3e f1 71 a9 f2 6f 81 3d         >.q..o.=
    dfc8: 49 f7 59 12 9d b9 b4 bc         I.Y.....
    dfd0: 91 d4 a8 53 ec f7 77 c1         ...S..w.
    dfd8: 07 7a 00 97 85 0c 15 3e         .z.....>
    dfe0: 3f 78 7a f2 6b da 19 3e         ?xz.k..>
    dfe8: cf f6 bc 69 63 c2 de bc         ...ic...
    dff0: 00 00 00 00 00 00 00 00         ........
    dff8: 00 00 00 00 00 00 00 00         ........
    e000: 8e f8 1c 91 b7 a9 72 3d         ......r=
    e008: b1 c7 11 9f 49 92 8f bd         ....I...
    e010: c5 a2 7b a0 55 63 91 3d         ..{.Uc.=
    e018: e6 5e 47 2e f4 f7 77 c1         .^G...w.
    e020: 00 00 00 00 00 00 00 00         ........
    e028: 07 a7 36 8a fc 82 2f 37         ..6.../7
    e030: 31 a3 e8 28 ec 26 02 b4         1..(.&..
    e038: c2 62 2f ec a6 3c e1 ba         .b/..<..
    e040: 0c 46 cb d2 94 bd e0 3a         .F.....:
    e048: 64 c8 ce bf 32 97 81 3d         d...2..=
    e050: 1e aa 58 c3 3d a7 78 3d         ..X.=.x=
    e058: 58 f9 fe 52 dc 8c 01 be         X..R....
    e060: d6 08 7a dc c5 d4 f1 3d         ..z....=
    e068: b2 0e b6 89 5b d1 7b 3d         ....[.{=
    e070: 20 90 f9 32 97 45 f1 3d          ..2.E.=
    e078: d4 bc 91 51 0a 5a 39 3d         ...Q.Z9=
    e080: 06 2b 72 1d 7d 5b 31 3d         .+r.}[1=
    e088: 43 5c 6a cd 86 05 2e 3d         C\j....=
    e090: c9 04 0a e2 9f 77 32 bd         .....w2.
    e098: 91 95 f3 d4 1c 5d 22 3d         .....]"=
    e0a0: 18 84 fa 5a 33 cf 82 bd         ...Z3...
    e0a8: 2c 6c 53 20 49 71 c8 3c         ,lS Iq.<
    e0b0: 4e c6 34 3e f6 f9 26 3e         N.4>..&>
    e0b8: 31 37 04 88 ea 92 1b 3e         17.....>
    e0c0: e2 2f 89 b5 4d 27 77 c1         ./..M'w.
    e0c8: 8d a9 43 c7 a0 c3 87 c1         ..C.....
    e0d0: ff 83 32 3c 4e 7b 8d c1         ..2<N{..
    e0d8: c8 27 b3 f5 d6 d1 e2 bd         .'......
    e0e0: aa e9 2b 99 72 d6 8a bd         ..+.r...
    e0e8: cb b0 4a cd 11 69 11 be         ..J..i..
    e0f0: 26 04 01 af 74 d1 92 bd         &...t...
    e0f8: e3 2f 89 b5 4d 27 77 41         ./..M'wA
    e100: 22 43 97 4c 14 2a 34 c1         "C.L.*4.

0000e108 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.8>:
    e108: f5 81 87 81 dc e8 c8 3f         .......?
    e110: ae 4c 43 6c c8 4d 29 3f         .LCl.M)?
    e118: 3d c6 c6 f8 b1 bd b3 bf         =.......
    e120: 8f bf c6 7f aa 08 44 3f         ......D?
    e128: 21 65 23 45 3d 7b 83 3f         !e#E={.?
    e130: 05 d1 5d 4d 75 30 73 3f         ..]Mu0s?
    e138: 1b fc 19 e3 35 f5 31 c0         ....5.1.
    e140: a2 4c a6 27 cc fd 77 3f         .L.'..w?
    e148: 5c f0 ae 26 b7 ca ad 3f         \..&...?
    e150: c6 f9 34 03 46 a3 60 3f         ..4.F.`?
    e158: a0 05 75 30 1b 8d 60 3f         ..u0..`?
    e160: 1a d5 8f 2b e7 76 10 40         ...+.v.@
    e168: 73 fd 01 65 b3 bc 7e bf         s..e..~.
    e170: 6f 4d 11 51 96 5d b7 3f         oM.Q.].?
    e178: ad 77 f5 88 37 6a 58 3f         .w..7jX?
    e180: 9a 8d 9e ef 88 b8 22 c0         ......".
    e188: 83 eb 1a 81 1d 99 7b 3f         ......{?
    e190: d5 70 07 67 25 0b 2d 40         .p.g%.-@
    e198: 14 99 dc a4 ac 07 f9 be         ........
    e1a0: 3e 55 df 7f 49 03 7e bf         >U..I.~.
    e1a8: a0 61 18 66 39 4c 74 bf         .a.f9Lt.
    e1b0: d6 3b 5f a6 38 a6 72 bf         .;_.8.r.
    e1b8: 69 cb e2 90 fe 2e 70 c0         i.....p.
    e1c0: 88 40 9b 63 bf 3e 20 40         .@.c.> @
    e1c8: 84 36 0d f7 f6 a9 34 40         .6....4@
    e1d0: 44 95 40 71 db 5b 32 40         D.@q.[2@
    e1d8: 90 0a 9e 93 9c 03 2d c0         ......-.
    e1e0: 7c 2a 49 88 70 3c 70 c0         |*I.p<p.

0000e1e8 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.9>:
    e1e8: 7d 1e 3f a6 a4 0a e8 3f         }.?....?
    e1f0: 7d c5 37 16 86 56 22 3f         }.7..V"?
    e1f8: 73 9d 1d 01 8c 38 aa bf         s....8..
    e200: 63 e5 20 bb 60 98 39 3f         c. .`.9?
    e208: 64 45 50 e8 6d 6d 79 3f         dEP.mmy?
    e210: fa b6 4c 2b 0a 0d 69 3f         ..L+..i?
    e218: f9 c1 38 57 bd 1e 2c c0         ..8W..,.
    e220: 61 e5 fa 5b 3f 42 6f 3f         a..[?Bo?
    e228: f6 c1 44 8b 8c 76 a3 3f         ..D..v.?
    e230: 3b 4f ad 7c 6a 37 50 3f         ;O.|j7P?
    e238: f5 9d b0 dc 24 25 50 3f         ....$%P?
    e240: e8 96 94 68 11 b4 00 40         ...h...@
    e248: e6 9d 26 0f c2 5d 6f bf         ..&..]o.
    e250: f2 f9 0d c7 9b c8 a6 3f         .......?
    e258: 6c a1 8d 57 6c 6a 48 3f         l..WljH?
    e260: 86 df a7 1f 76 78 23 c0         ....vx#.
    e268: 12 cf 64 ab bc 6f 6b 3f         ..d..ok?
    e270: 9d 20 45 dd 2a 4f 21 40         . E.*O!@
    e278: b8 ca 4a a2 e0 b3 ed be         ..J.....
    e280: ee ad c2 82 f8 b4 64 bf         ......d.
    e288: 6f d7 bb f5 fb 02 5c bf         o.....\.
    e290: ca d1 5e 45 ad 64 58 bf         ..^E.dX.
    e298: a5 2b 1a 6e 33 ae 61 c0         .+.n3.a.
    e2a0: f7 33 05 da dd d1 38 40         .3....8@
    e2a8: af 37 24 89 20 30 36 40         .7$. 06@
    e2b0: 68 2f 1a 7b f7 63 34 40         h/.{.c4@
    e2b8: 82 b1 33 3e 8a 38 21 c0         ..3>.8!.
    e2c0: 9c 23 7d 0c b3 eb 61 c0         .#}...a.

0000e2c8 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.10>:
    e2c8: 4b 64 e7 6a c2 dd 56 c0         Kd.j..V.
    e2d0: 00 00 00 00 00 00 00 00         ........
    e2d8: 00 00 00 00 00 00 00 00         ........
    e2e0: 00 00 00 00 00 00 00 00         ........
    e2e8: 00 00 00 00 00 00 00 00         ........
    e2f0: 00 00 00 00 00 00 00 00         ........
    e2f8: 00 00 00 00 00 00 00 00         ........
    e300: 00 00 00 00 00 00 00 00         ........
    e308: 00 00 00 00 00 00 00 00         ........
    e310: 00 00 00 00 00 00 00 00         ........
    e318: 00 00 00 00 00 00 00 00         ........
    e320: 00 00 00 00 00 00 00 00         ........
    e328: 00 00 00 00 00 00 00 00         ........
    e330: 5d c7 61 fb 66 3a b7 bf         ].a.f:..
    e338: 00 00 00 00 00 00 00 00         ........
    e340: 00 00 00 00 00 00 00 00         ........
    e348: 00 00 00 00 00 00 00 00         ........
    e350: 00 00 00 00 00 00 00 00         ........
    e358: 00 00 00 00 00 00 00 00         ........
    e360: 00 00 00 00 00 00 00 00         ........
    e368: 00 00 00 00 00 00 00 00         ........
    e370: 00 00 00 00 00 00 00 00         ........
    e378: 00 00 00 00 00 00 00 00         ........
    e380: 00 00 00 00 00 00 00 00         ........
    e388: 00 00 00 00 00 00 00 00         ........
    e390: 00 00 00 00 00 00 00 00         ........
    e398: f9 77 5e 5f 22 1f 42 40         .w^_".B@
    e3a0: 00 00 00 00 00 00 00 00         ........
    e3a8: 00 00 00 00 00 00 00 00         ........
    e3b0: 76 38 68 55 15 7a 17 bf         v8hU.z..
    e3b8: 00 00 00 00 00 00 00 00         ........
    e3c0: 00 00 00 00 00 00 00 00         ........
    e3c8: 00 00 00 00 00 00 00 00         ........
    e3d0: 00 00 00 00 00 00 00 00         ........
    e3d8: c0 0e a5 33 bc 06 ad 3f         ...3...?
    e3e0: 00 00 00 00 00 00 00 00         ........
    e3e8: 00 00 00 00 00 00 00 00         ........
    e3f0: 00 00 00 00 00 00 00 00         ........
    e3f8: 00 00 00 00 00 00 00 00         ........
    e400: d7 71 4b 83 f4 63 d2 bf         .qK..c..
    e408: 00 00 00 00 00 00 00 00         ........
    e410: 00 00 00 00 00 00 00 00         ........
    e418: 6d 60 9d 06 03 8b c9 be         m`......
    e420: 00 00 00 00 00 00 00 00         ........
    e428: 00 00 00 00 00 00 00 00         ........
    e430: 00 00 00 00 00 00 00 00         ........
    e438: 00 00 00 00 00 00 00 00         ........
    e440: c6 52 08 6b b5 43 3e bf         .R.k.C>.
    e448: 00 00 00 00 00 00 00 00         ........
    e450: 00 00 00 00 00 00 00 00         ........
    e458: 00 00 00 00 00 00 00 00         ........
    e460: 00 00 00 00 00 00 00 00         ........
    e468: d5 7d 77 3e 21 e2 11 c0         .}w>!...
    e470: 00 00 00 00 00 00 00 00         ........
    e478: 00 00 00 00 00 00 00 00         ........
    e480: 2c fc 90 ba 75 44 f0 be         ,...uD..
    e488: 00 00 00 00 00 00 00 00         ........
    e490: 00 00 00 00 00 00 00 00         ........
    e498: 00 00 00 00 00 00 00 00         ........
    e4a0: 00 00 00 00 00 00 00 00         ........
    e4a8: b4 68 d8 c4 6c 00 7d bf         .h..l.}.
    e4b0: 00 00 00 00 00 00 00 00         ........
    e4b8: 00 00 00 00 00 00 00 00         ........
    e4c0: 00 00 00 00 00 00 00 00         ........
    e4c8: 00 00 00 00 00 00 00 00         ........
    e4d0: e0 1e 05 ae 7b 9d 01 c0         ....{...
    e4d8: 00 00 00 00 00 00 00 00         ........
    e4e0: 00 00 00 00 00 00 00 00         ........
    e4e8: a8 e6 47 64 33 72 df be         ..Gd3r..
    e4f0: 00 00 00 00 00 00 00 00         ........
    e4f8: 00 00 00 00 00 00 00 00         ........
    e500: 00 00 00 00 00 00 00 00         ........
    e508: 00 00 00 00 00 00 00 00         ........
    e510: 5b 1e ac f6 1e 90 6c bf         [.....l.
    e518: 00 00 00 00 00 00 00 00         ........
    e520: 00 00 00 00 00 00 00 00         ........
    e528: 00 00 00 00 00 00 00 00         ........
    e530: 00 00 00 00 00 00 00 00         ........
    e538: 6c da 78 77 18 7c c0 40         l.xw.|.@
    e540: 9b de 3e 18 64 fc 59 40         ..>.d.Y@
    e548: 00 00 00 00 00 00 00 00         ........
    e550: 11 3f 87 97 00 3b dd bf         .?...;..
    e558: d9 60 1f a7 38 0c a5 bf         .`..8...
    e560: 00 00 00 00 00 00 00 00         ........
    e568: 00 00 00 00 00 00 00 00         ........
    e570: 00 00 00 00 00 00 00 00         ........
    e578: f7 9a 5f ab e5 50 27 40         .._..P'@
    e580: 2c d1 00 85 d9 ba ee 3f         ,......?
    e588: 00 00 00 00 00 00 00 00         ........
    e590: 00 00 00 00 00 00 00 00         ........
    e598: 00 00 00 00 00 00 00 00         ........
    e5a0: 58 a8 65 68 fa 05 06 c0         X.eh....
    e5a8: 99 e9 74 3f 56 d2 a4 bf         ..t?V...
    e5b0: 00 00 00 00 00 00 00 00         ........
    e5b8: 4f 38 dd fd 09 81 e1 be         O8......
    e5c0: c2 b7 c6 04 42 c8 6d 3e         ....B.m>
    e5c8: 00 00 00 00 00 00 00 00         ........
    e5d0: 00 00 00 00 00 00 00 00         ........
    e5d8: 00 00 00 00 00 00 00 00         ........
    e5e0: fd 3e c2 0b 2a d9 71 bf         .>..*.q.
    e5e8: ac 67 ed 77 07 94 38 bf         .g.w..8.
    e5f0: 00 00 00 00 00 00 00 00         ........
    e5f8: 00 00 00 00 00 00 00 00         ........
    e600: 00 00 00 00 00 00 00 00         ........
    e608: a3 96 82 20 16 59 3b c0         ... .Y;.
    e610: ae f7 1f 70 37 c9 d9 bf         ...p7...
    e618: 00 00 00 00 00 00 00 00         ........
    e620: d2 d6 3b ce fe 8a 0d bf         ..;.....
    e628: fc f8 1b 00 87 38 c8 3e         .....8.>
    e630: 00 00 00 00 00 00 00 00         ........
    e638: 00 00 00 00 00 00 00 00         ........
    e640: 00 00 00 00 00 00 00 00         ........
    e648: fc cd 8b 3a 83 1e a6 bf         ...:....
    e650: a9 7d f6 44 68 70 6e bf         .}.Dhpn.
    e658: 00 00 00 00 00 00 00 00         ........
    e660: 00 00 00 00 00 00 00 00         ........
    e668: 00 00 00 00 00 00 00 00         ........
    e670: 8e 42 e3 89 c2 8b ee bf         .B......
    e678: c3 bf 8d 91 22 f7 a0 3f         ...."..?
    e680: 00 00 00 00 00 00 00 00         ........
    e688: 36 a8 af 39 25 2e 12 bf         6..9%...
    e690: c4 22 34 49 82 77 d7 be         ."4I.w..
    e698: 00 00 00 00 00 00 00 00         ........
    e6a0: 00 00 00 00 00 00 00 00         ........
    e6a8: 00 00 00 00 00 00 00 00         ........
    e6b0: b6 f8 08 a3 05 a3 5c bf         ......\.
    e6b8: 3e ed c2 52 44 7d 24 bf         >..RD}$.
    e6c0: 00 00 00 00 00 00 00 00         ........
    e6c8: 00 00 00 00 00 00 00 00         ........
    e6d0: 00 00 00 00 00 00 00 00         ........
    e6d8: 53 d8 f6 ea 0f 63 ee bf         S....c..
    e6e0: 13 66 f1 35 b4 e1 8c bf         .f.5....
    e6e8: 00 00 00 00 00 00 00 00         ........
    e6f0: dc c1 35 df 66 0a 12 bf         ..5.f...
    e6f8: fe 2f f4 77 6e 48 d7 be         ./.wnH..
    e700: 00 00 00 00 00 00 00 00         ........
    e708: 00 00 00 00 00 00 00 00         ........
    e710: 00 00 00 00 00 00 00 00         ........
    e718: cc 33 49 d4 62 7a 5c bf         .3I.bz\.
    e720: 29 f5 d7 9c bc 5f 24 bf         )...._$.
    e728: 00 00 00 00 00 00 00 00         ........
    e730: 00 00 00 00 00 00 00 00         ........
    e738: 00 00 00 00 00 00 00 00         ........
    e740: 3d 11 fa 69 4c 3a 9e c0         =..iL:..
    e748: 73 98 e7 93 f1 0e 3c c0         s.....<.
    e750: 00 00 00 00 00 00 00 00         ........
    e758: ba db e1 e1 6d c9 bb bf         ....m...
    e760: 31 de 5c 72 44 25 81 bf         1.\rD%..
    e768: 00 00 00 00 00 00 00 00         ........
    e770: 00 00 00 00 00 00 00 00         ........
    e778: 00 00 00 00 00 00 00 00         ........
    e780: 25 3f 2a e7 2c 9e 0b c0         %?*.,...
    e788: f0 7b ea 9b 3a 92 d3 bf         .{..:...
    e790: 00 00 00 00 00 00 00 00         ........
    e798: 00 00 00 00 00 00 00 00         ........
    e7a0: 00 00 00 00 00 00 00 00         ........
    e7a8: a4 d3 b8 ad 38 37 0c 40         ....87.@
    e7b0: 58 5f 41 45 e3 17 aa 3f         X_AE...?
    e7b8: 00 00 00 00 00 00 00 00         ........
    e7c0: ac 77 67 d9 fb c0 28 3f         .wg...(?
    e7c8: ee 72 2e 9f 6a 3e ee 3e         .r..j>.>
    e7d0: 00 00 00 00 00 00 00 00         ........
    e7d8: 00 00 00 00 00 00 00 00         ........
    e7e0: 00 00 00 00 00 00 00 00         ........
    e7e8: 7e e2 71 93 40 ad 79 3f         ~.q.@.y?
    e7f0: ab 6e 0a af de 2a 42 3f         .n...*B?
    e7f8: 00 00 00 00 00 00 00 00         ........
    e800: 00 00 00 00 00 00 00 00         ........
    e808: 00 00 00 00 00 00 00 00         ........
    e810: 15 e2 6a fc e8 72 45 c0         ..j..rE.
    e818: e4 a6 15 b8 ff 63 e4 bf         .....c..
    e820: 00 00 00 00 00 00 00 00         ........
    e828: 44 26 85 f9 d2 84 69 bf         D&....i.
    e830: 13 6d 84 b5 b0 78 30 bf         .m...x0.
    e838: 00 00 00 00 00 00 00 00         ........
    e840: 00 00 00 00 00 00 00 00         ........
    e848: 00 00 00 00 00 00 00 00         ........
    e850: 2d 5a e5 1a 25 1b b4 bf         -Z..%...
    e858: 91 61 3c 24 66 c5 7c bf         .a<$f.|.
    e860: 00 00 00 00 00 00 00 00         ........
    e868: 00 00 00 00 00 00 00 00         ........
    e870: 00 00 00 00 00 00 00 00         ........
    e878: d9 54 b9 fa 80 69 e6 bf         .T...i..
    e880: 1d 5a 6a 64 35 fd 84 bf         .Zjd5...
    e888: 00 00 00 00 00 00 00 00         ........
    e890: b9 91 0a dd 9b d7 06 bf         ........
    e898: 0c 89 e5 5f b8 c0 cc be         ..._....
    e8a0: 00 00 00 00 00 00 00 00         ........
    e8a8: 00 00 00 00 00 00 00 00         ........
    e8b0: 00 00 00 00 00 00 00 00         ........
    e8b8: a6 75 2c 2b 53 ac 54 bf         .u,+S.T.
    e8c0: 38 e6 77 62 f4 67 1d bf         8.wb.g..
    e8c8: 00 00 00 00 00 00 00 00         ........
    e8d0: 00 00 00 00 00 00 00 00         ........
    e8d8: 00 00 00 00 00 00 00 00         ........
    e8e0: fc 8b f6 b3 65 2f b1 40         ....e/.@
    e8e8: 6e b5 b5 93 b3 ab 46 40         n.....F@
    e8f0: 30 e7 31 33 2e 76 f2 bc         0.13.v..
    e8f8: 2f 1d 4f f8 f0 5d dc bf         /.O..]..
    e900: 1f 05 2b a8 e8 57 a3 bf         ..+..W..
    e908: 72 55 af 8a 2a 55 9d bf         rU..*U..
    e910: e8 0c 72 86 3d e4 ee 3c         ..r.=..<
    e918: 00 00 00 00 00 00 00 00         ........
    e920: 02 8e 38 4c 86 8d 14 40         ..8L...@
    e928: 2a 29 61 1a 3b 12 da 3f         *)a.;..?
    e930: 60 80 37 9d a9 bc a0 3f         `.7....?
    e938: fd 0f 85 18 c8 2e 11 bd         ........
    e940: 00 00 00 00 00 00 00 00         ........
    e948: 30 b6 83 15 8e 55 09 c0         0....U..
    e950: 01 46 b6 13 80 c2 a7 bf         .F......
    e958: 40 00 79 d8 b8 66 57 3c         @.y..fW<
    e960: f9 42 93 4d a6 24 2a bf         .B.M.$*.
    e968: 40 52 b5 0d 56 76 f0 be         @R..Vv..
    e970: 1f 46 c4 cd 70 f2 80 be         .F..p...
    e978: 4b da 92 ad 80 f4 36 3c         K.....6<
    e980: 00 00 00 00 00 00 00 00         ........
    e988: dc 5e e2 6f b4 68 77 bf         .^.o.hw.
    e990: 72 00 e2 08 6f a7 40 bf         r...o.@.
    e998: 58 3c 68 21 dd bc 33 bf         X<h!..3.
    e9a0: f4 1c e1 72 0a 23 68 3c         ...r.#h<
    e9a8: 00 00 00 00 00 00 00 00         ........
    e9b0: 93 d4 93 55 3b a9 ba c0         ...U;...
    e9b8: 0b 40 7f 60 76 21 56 c0         .@.`v!V.
    e9c0: 80 48 5c 31 1b b0 f1 bc         .H\1....
    e9c8: 99 8c 2f 82 9f 90 b5 3f         ../....?
    e9d0: 8e b3 73 d3 2e 90 88 3f         ..s....?
    e9d8: 33 56 22 4c aa 77 a0 3f         3V"L.w.?
    e9e0: 48 90 74 3b d9 9e b6 bf         H.t;....
    e9e8: 00 00 00 00 00 00 00 00         ........
    e9f0: f9 f1 c3 23 3e 8a 25 c0         ...#>.%.
    e9f8: ca 50 f3 20 ca 26 ed bf         .P. .&..
    ea00: e1 58 e2 99 80 71 d9 bf         .X...q..
    ea08: a2 59 5c cd 6b 03 f0 3f         .Y\.k..?
    ea10: 00 00 00 00 00 00 00 00         ........
    ea18: c8 80 56 7b 0b fa 86 3f         ..V{...?
    ea20: c4 41 c6 90 cc 18 23 3f         .A....#?
    ea28: 00 3e e7 a4 14 ce ad bc         .>......
    ea30: 54 0e d0 b6 46 b4 81 be         T...F...
    ea38: 1c 2c 72 6e ea 9a 54 be         .,rn..T.
    ea40: 26 cc e5 17 42 47 6c be         &...BGl.
    ea48: ea cf 04 b3 4e a8 8c 3e         ....N..>
    ea50: 00 00 00 00 00 00 00 00         ........
    ea58: 4d 44 2a 38 cd 97 f2 3e         MD*8...>
    ea60: 03 7e 5b b5 e2 2b b9 3e         .~[..+.>
    ea68: cf 85 ee 38 b0 0c a6 3e         ...8...>
    ea70: e7 83 45 3e f5 d6 31 3f         ..E>..1?
    ea78: 00 00 00 00 00 00 00 00         ........
    ea80: 40 03 62 78 04 8d 0b 40         @.bx...@
    ea88: 6e d3 aa 40 b9 cc ad 3f         n..@...?
    ea90: 00 a6 73 da c6 98 54 3f         ..s...T?
    ea98: 5c d2 6d db 05 34 42 3f         \.m..4B?
    eaa0: 45 e9 9c d3 ad a4 08 3f         E......?
    eaa8: 83 cf 6f 30 71 95 f5 3e         ..o0q..>
    eab0: b6 cd cd 28 9c 39 0b bf         ...(.9..
    eab8: 00 00 00 00 00 00 00 00         ........
    eac0: bf 39 ad 1a 4b c6 7d 3f         .9..K.}?
    eac8: 8b d1 1f 47 eb 29 46 3f         ...G.)F?
    ead0: 70 d9 ec a8 ab 38 40 3f         p....8@?
    ead8: 75 19 9b 00 cb e0 5b bf         u.....[.
    eae0: 00 00 00 00 00 00 00 00         ........
    eae8: 9e 61 b8 b0 f8 a1 02 40         .a.....@
    eaf0: 1e 46 c0 8a e3 26 a4 3f         .F...&.?
    eaf8: be b4 b3 06 b4 d7 4b 3f         ......K?
    eb00: f0 de 37 4a 23 9c 38 3f         ..7J#.8?
    eb08: 7c 90 a1 1d 23 a8 00 3f         |...#..?
    eb10: 0a 18 d5 13 78 28 ed 3e         ....x(.>
    eb18: 07 54 b6 da de 60 02 bf         .T...`..
    eb20: 00 00 00 00 00 00 00 00         ........
    eb28: 8e b3 30 be 8b 22 74 3f         ..0.."t?
    eb30: ef fb 91 0e a5 f9 3d 3f         ......=?
    eb38: 51 8b a2 6f 96 ef 35 3f         Q..o..5?
    eb40: d9 84 bd 69 07 d9 52 bf         ...i..R.
    eb48: 00 00 00 00 00 00 00 00         ........
    eb50: ee 6b b9 00 96 1e 01 40         .k.....@
    eb58: 39 48 fe 07 f9 dc a2 3f         9H.....?
    eb60: 7d 78 5d 1e a1 b9 4b 3f         }x]...K?
    eb68: c6 00 ee b6 e2 9c 38 3f         ......8?
    eb70: 0b 9d 3c 2f ca bb 00 3f         ..</...?
    eb78: 87 49 ee 0d 55 dd ee 3e         .I..U..>
    eb80: 6d 3a 61 0f 51 f8 03 bf         m:a.Q...
    eb88: eb 76 da 59 d8 cf b9 be         .v.Y....
    eb90: b2 62 c7 3d 97 df 72 3f         .b.=..r?
    eb98: 8a 9d 28 40 7c 41 3c 3f         ..(@|A<?
    eba0: c6 74 9c b6 a1 21 35 3f         .t...!5?
    eba8: 26 3f 60 98 c5 51 52 bf         &?`..QR.
    ebb0: a0 ca 26 1d eb a7 20 bf         ..&... .
    ebb8: 72 61 00 5e 47 b6 fd 40         ra.^G..@
    ebc0: 34 5e 72 c0 2e 3f 99 40         4^r..?.@
    ebc8: 64 30 b4 06 c1 0e f9 3f         d0.....?
    ebd0: a0 33 0b 46 45 6c d1 bf         .3.FEl..
    ebd8: 42 5f 35 83 3c 94 be bf         B_5.<...
    ebe0: 02 cd 6c ad c0 9b e1 bf         ..l.....
    ebe8: ed fc 3b 33 45 63 00 40         ..;3Ec.@
    ebf0: 89 91 c6 f7 9c e2 eb 3f         .......?
    ebf8: ea 36 54 46 08 b9 68 40         .6TF..h@
    ec00: c3 61 a0 d9 ef d0 30 40         .a....0@
    ec08: ed c5 fd 0a b0 32 1f 40         .....2.@
    ec10: 01 46 13 85 27 3c 34 c0         .F..'<4.
    ec18: d3 08 af f7 d0 1b cf bf         ........
    ec20: 78 08 df 60 33 d3 ad c0         x..`3...
    ec28: 00 00 00 00 00 00 00 00         ........
    ec30: 00 00 00 00 00 00 00 00         ........
    ec38: 7a 70 3b f9 f4 5e f1 3f         zp;..^.?
    ec40: 00 00 00 00 00 00 00 00         ........
    ec48: 00 00 00 00 00 00 00 00         ........
    ec50: 00 00 00 00 00 00 00 00         ........
    ec58: 00 00 00 00 00 00 00 00         ........
    ec60: d2 25 e4 46 75 b4 e0 bf         .%.Fu...
    ec68: 00 00 00 00 00 00 00 00         ........
    ec70: 00 00 00 00 00 00 00 00         ........
    ec78: 00 00 00 00 00 00 00 00         ........
    ec80: 00 00 00 00 00 00 00 00         ........
    ec88: 0a 21 c9 b4 05 f8 c2 c0         .!......
    ec90: 3f b3 ab cd 7f 08 5a c0         ?.....Z.
    ec98: 00 00 00 00 00 00 00 00         ........
    eca0: c2 66 6f d0 6b 05 ea 3f         .fo.k..?
    eca8: 49 50 31 09 74 cc b1 3f         IP1.t..?
    ecb0: 00 00 00 00 00 00 00 00         ........
    ecb8: 00 00 00 00 00 00 00 00         ........
    ecc0: 00 00 00 00 00 00 00 00         ........
    ecc8: ff 88 ca 60 0f b8 27 c0         ...`..'.
    ecd0: e2 e3 62 bd 05 d3 ee bf         ..b.....
    ecd8: 00 00 00 00 00 00 00 00         ........
    ece0: 00 00 00 00 00 00 00 00         ........
    ece8: 00 00 00 00 00 00 00 00         ........
    ecf0: 05 49 f6 70 52 da c0 c0         .I.pR...
    ecf8: 99 ff 38 e3 0d d8 55 c0         ..8...U.
    ed00: 10 f7 63 2c 5d 9c 01 3d         ..c,]..=
    ed08: 59 57 a6 15 d8 78 ed 3f         YW...x.?
    ed10: 5a aa b6 fd 33 06 b4 3f         Z...3..?
    ed18: 5c 3f 9e 73 73 55 ad 3f         \?.ssU.?
    ed20: f4 72 46 f8 83 5e ff bc         .rF..^..
    ed28: 00 00 00 00 00 00 00 00         ........
    ed30: 8d c5 54 30 0e 9e 23 c0         ..T0..#.
    ed38: ce 36 97 07 d9 cb e8 bf         .6......
    ed40: 52 89 34 a1 5f fb a1 bf         R.4._...
    ed48: 2e c5 f1 50 51 70 1e 3d         ...PQp.=
    ed50: 00 00 00 00 00 00 00 00         ........
    ed58: b1 13 82 bb 50 a2 ba 40         ....P..@
    ed60: b2 60 1b 6f a5 21 56 40         .`.o.!V@
    ed68: 40 18 af 01 48 e0 f1 3c         @...H..<
    ed70: 09 0b cf ff a7 c1 b4 bf         ........
    ed78: 69 6a f9 be 1d 0d 88 bf         ij......
    ed80: 5e 7b 85 10 2d 6b a0 bf         ^{..-k..
    ed88: f8 6e 4a 92 b7 e4 bd 3f         .nJ....?
    ed90: 00 00 00 00 00 00 00 00         ........
    ed98: c6 a7 46 2d 01 8c 25 40         ..F-..%@
    eda0: 27 36 aa 64 df 2a ed 3f         '6.d.*.?
    eda8: a2 1e 18 07 cd 87 d9 3f         .......?
    edb0: 60 99 ef 76 b8 17 f0 bf         `..v....
    edb8: 00 00 00 00 00 00 00 00         ........
    edc0: 00 54 36 9a f6 ce fd 40         .T6....@
    edc8: 90 d1 5a 8b 8d 42 99 40         ..Z..B.@
    edd0: 0b c2 ec 43 b1 f4 f5 3f         ...C...?
    edd8: c4 54 ed e4 b9 d6 da bf         .T......
    ede0: 54 f8 87 a9 80 c8 c0 bf         T.......
    ede8: 4b f5 a8 41 c7 c2 e1 bf         K..A....
    edf0: 46 4a b6 82 97 7b 00 40         FJ...{.@
    edf8: 7c 07 0b 20 ff e2 eb 3f         |.. ...?
    ee00: 28 c9 7e 08 06 b8 68 40         (.~...h@
    ee08: 3c 7c 41 fd 9e cd 30 40         <|A...0@
    ee10: 2e 12 31 e3 7b f6 1e 40         ..1.{..@
    ee18: 02 0e d3 ff 26 04 34 c0         ....&.4.
    ee20: a1 df ea 8f 7f 63 cb bf         .....c..

0000ee28 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.11>:
    ee28: fb f0 9b 24 c5 11 76 c0         ...$..v.
    ee30: 00 00 00 00 00 00 00 00         ........
    ee38: 00 00 00 00 00 00 00 00         ........
    ee40: 00 00 00 00 00 00 00 00         ........
    ee48: 00 00 00 00 00 00 00 00         ........
    ee50: 00 00 00 00 00 00 00 00         ........
    ee58: 00 00 00 00 00 00 00 00         ........
    ee60: 00 00 00 00 00 00 00 00         ........
    ee68: 00 00 00 00 00 00 00 00         ........
    ee70: 00 00 00 00 00 00 00 00         ........
    ee78: 00 00 00 00 00 00 00 00         ........
    ee80: 00 00 00 00 00 00 00 00         ........
    ee88: 00 00 00 00 00 00 00 00         ........
    ee90: 9e 79 e2 6b b4 2e ba c0         .y.k....
    ee98: 43 5f 62 d2 68 88 65 c0         C_b.h.e.
    eea0: 00 00 00 00 00 00 00 00         ........
    eea8: b6 e1 a0 fd c9 49 f2 bf         .....I..
    eeb0: 48 de 48 5d 36 f2 b9 bf         H.H]6...
    eeb8: 00 00 00 00 00 00 00 00         ........
    eec0: 00 00 00 00 00 00 00 00         ........
    eec8: 00 00 00 00 00 00 00 00         ........
    eed0: b0 92 f8 5c a5 28 2c c0         ...\.(,.
    eed8: bd 10 88 8a 47 1f f5 bf         ....G...
    eee0: 00 00 00 00 00 00 00 00         ........
    eee8: 00 00 00 00 00 00 00 00         ........
    eef0: 00 00 00 00 00 00 00 00         ........
    eef8: ce e6 2e 8a 6d 9b af 40         ....m..@
    ef00: 2b 08 67 ac fc 28 52 40         +.g..(R@
    ef08: 40 be 34 aa e1 9a 54 bf         @.4...T.
    ef10: 87 2d 86 09 85 94 ec 3f         .-.....?
    ef18: f8 5c 60 6c 8f 7e b4 3f         .\`l.~.?
    ef20: 1e ed 3c 49 e1 03 a9 3f         ..<I...?
    ef28: 8c 63 ca 2a 99 4f c4 bf         .c.*.O..
    ef30: 00 00 00 00 00 00 00 00         ........
    ef38: 22 59 79 ce 68 1d 22 40         "Yy.h."@
    ef40: 52 94 4e 03 e0 b5 eb 3f         R.N....?
    ef48: 0a 11 10 13 bb ef e5 3f         .......?
    ef50: e2 ff 6f 29 cd 1f 04 c0         ..o)....
    ef58: 00 00 00 00 00 00 00 00         ........
    ef60: 7b e2 11 6d 6d c4 ae 40         {..mm..@
    ef68: f4 88 58 0f 75 ad 51 40         ..X.u.Q@
    ef70: 75 42 9e 28 fe 1a 01 40         uB.(...@
    ef78: e4 88 73 95 1c d2 eb 3f         ..s....?
    ef80: 36 e3 ba 4f 27 f3 b3 3f         6..O'..?
    ef88: 99 73 5f 31 b9 59 a8 3f         .s_1.Y.?
    ef90: 20 ea 74 eb 70 c5 c3 bf          .t.p...
    ef98: 00 00 00 00 00 00 00 00         ........
    efa0: be 4b eb f1 2f a2 21 40         .K../.!@
    efa8: 08 5f ab ae 61 f9 ea 3f         ._..a..?
    efb0: d9 02 ce 8e 83 5a e5 3f         .....Z.?
    efb8: b7 c2 82 79 e9 96 03 c0         ...y....
    efc0: 00 00 00 00 00 00 00 00         ........
    efc8: b4 c6 22 a7 a6 c8 c6 c0         ..".....
    efd0: 00 00 00 00 00 00 00 00         ........
    efd8: 00 00 00 00 00 00 00 00         ........
    efe0: 19 a7 4b d9 6b 08 2c 40         ..K.k.,@
    efe8: 00 00 00 00 00 00 00 00         ........
    eff0: 00 00 00 00 00 00 00 00         ........
    eff8: 00 00 00 00 00 00 00 00         ........
    f000: 00 00 00 00 00 00 00 00         ........
    f008: 57 ce be 1e 6b 47 35 c0         W...kG5.
    f010: 00 00 00 00 00 00 00 00         ........
    f018: 00 00 00 00 00 00 00 00         ........
    f020: 00 00 00 00 00 00 00 00         ........
    f028: 00 00 00 00 00 00 00 00         ........
    f030: 1d 3f e4 dd 2d 5e c4 c0         .?..-^..
    f038: 3c 32 b2 10 a8 c8 61 c0         <2....a.
    f040: 00 00 00 00 00 00 00 00         ........
    f048: 9d b0 4e 8a 05 a9 f7 bf         ..N.....
    f050: ee 17 f2 bf eb bc 2d 40         ......-@
    f058: 00 00 00 00 00 00 00 00         ........
    f060: 00 00 00 00 00 00 00 00         ........
    f068: 00 00 00 00 00 00 00 00         ........
    f070: 77 e4 c0 0c 76 f2 34 c0         w...v.4.
    f078: 34 9c 3d 8e d3 16 ff bf         4.=.....
    f080: 00 00 00 00 00 00 00 00         ........
    f088: 00 00 00 00 00 00 00 00         ........
    f090: 00 00 00 00 00 00 00 00         ........
    f098: 84 09 01 2e c4 b7 c2 c0         ........
    f0a0: ae 0c ba 90 11 58 63 c0         .....Xc.
    f0a8: e0 d0 5a be 38 04 14 3d         ..Z.8..=
    f0b0: 63 f3 cd bc a9 e4 f4 bf         c.......
    f0b8: 60 c8 9f 3f d9 62 bd bf         `..?.b..
    f0c0: 8a 22 19 73 9a e2 2d 40         .".s..-@
    f0c8: d1 ef 44 19 8c a2 f0 3c         ..D....<
    f0d0: 00 00 00 00 00 00 00 00         ........
    f0d8: 36 15 ba 83 d4 28 33 c0         6....(3.
    f0e0: 58 3e f3 6f 7b 57 fc bf         X>.o{W..
    f0e8: c0 20 f9 64 f3 cc f3 bf         . .d....
    f0f0: e2 de 87 a8 6c e8 2e 3d         ....l..=
    f0f8: 00 00 00 00 00 00 00 00         ........
    f100: e4 e7 32 ce cd 9d af 40         ..2....@
    f108: 44 26 49 a7 95 2a 52 40         D&I..*R@
    f110: d0 31 cd e4 a5 e7 12 3d         .1.....=
    f118: 75 ab 2e 69 58 98 ec 3f         u..iX..?
    f120: fb 40 56 89 7c 81 b4 3f         .@V.|..?
    f128: 8d 1c 1e 7c 83 08 a9 3f         ...|...?
    f130: 85 ee 11 9a b0 ae 2d 40         ......-@
    f138: 00 00 00 00 00 00 00 00         ........
    f140: 6a c5 77 32 ff 1e 22 40         j.w2.."@
    f148: f6 6f 60 ac 74 b8 eb 3f         .o`.t..?
    f150: 7c 51 64 d0 1a f2 e5 3f         |Qd....?
    f158: 2d 2d 8d fe 36 22 04 c0         --..6"..
    f160: 00 00 00 00 00 00 00 00         ........
    f168: af df 76 5c 5d 73 f0 40         ..v\]s.@
    f170: ae c1 b3 f2 3c 37 93 40         ....<7.@
    f178: 20 10 f6 96 a7 69 43 40          ....iC@
    f180: 82 fe 1e 06 92 a5 2f 40         ....../@
    f188: 07 5b 7c 75 4e be f6 3f         .[|uN..?
    f190: d8 2f a0 40 5e 47 ec 3f         ./.@^G.?
    f198: da 92 a3 dc c9 06 07 c0         ........
    f1a0: 52 cd ca 3d 6a 1e 37 40         R..=j.7@
    f1a8: ce c7 a6 bf 4c 2f 63 40         ....L/c@
    f1b0: 19 34 d7 bf 10 7e 2d 40         .4...~-@
    f1b8: de 4f 03 c5 87 bb 27 40         .O....'@
    f1c0: 6c dc 77 27 71 ea 45 c0         l.w'q.E.
    f1c8: 69 07 f3 2e 9e 50 17 c0         i....P..
    f1d0: 49 00 60 39 c3 98 ec 3f         I.`9...?
    f1d8: 00 00 00 00 00 00 00 00         ........
    f1e0: 00 00 00 00 00 00 00 00         ........
    f1e8: 3e 00 6d 40 bd bd 13 3f         >.m@...?
    f1f0: 00 00 00 00 00 00 00 00         ........
    f1f8: 00 00 00 00 00 00 00 00         ........
    f200: 00 00 00 00 00 00 00 00         ........
    f208: 00 00 00 00 00 00 00 00         ........
    f210: 09 e9 ff fc bb b4 5a 3f         ......Z?
    f218: 00 00 00 00 00 00 00 00         ........
    f220: 00 00 00 00 00 00 00 00         ........
    f228: 00 00 00 00 00 00 00 00         ........
    f230: 00 00 00 00 00 00 00 00         ........
    f238: 07 01 ad bb 1c 29 e4 3f         .....).?
    f240: 10 b9 11 33 8a f2 50 3f         ...3..P?
    f248: 00 00 00 00 00 00 00 00         ........
    f250: 7c 82 6c 2b e6 08 10 3f         |.l+...?
    f258: 67 06 aa dd 77 ab d6 3e         g...w..>
    f260: 00 00 00 00 00 00 00 00         ........
    f268: 00 00 00 00 00 00 00 00         ........
    f270: 00 00 00 00 00 00 00 00         ........
    f278: 97 ff 1d d1 a8 42 53 3f         .....BS?
    f280: 9c 95 29 1f 12 0b 1c 3f         ..)....?
    f288: 00 00 00 00 00 00 00 00         ........
    f290: 00 00 00 00 00 00 00 00         ........
    f298: 00 00 00 00 00 00 00 00         ........
    f2a0: f2 d7 ad 91 fe 87 e6 3f         .......?
    f2a8: a2 90 71 78 91 29 87 3f         ..qx.).?
    f2b0: 20 75 7f aa d7 4a 3a bc          u...J:.
    f2b8: 3c 93 53 2f 73 83 18 3f         <.S/s..?
    f2c0: 31 67 39 eb af 3e e1 3e         1g9..>.>
    f2c8: f6 c8 04 96 15 28 d1 3e         .....(.>
    f2d0: 33 f3 12 39 b5 72 a4 be         3..9.r..
    f2d8: 00 00 00 00 00 00 00 00         ........
    f2e0: d8 c6 4f 36 59 ec 56 3f         ..O6Y.V?
    f2e8: e7 a5 9f 28 1b ef 20 3f         ...(.. ?
    f2f0: 2f 67 29 7c f9 81 17 3f         /g)|...?
    f2f8: ba 73 26 14 fb 1a ec be         .s&.....
    f300: 00 00 00 00 00 00 00 00         ........
    f308: df c1 1d ab 39 1a e6 bf         ....9...
    f310: 42 fa cc 9c 8b a8 88 bf         B.......
    f318: 60 68 ea b2 54 67 31 bf         `h..Tg1.
    f320: cc 84 48 da 8c c5 21 bf         ..H...!.
    f328: 1e 0e 5f 5c 86 63 e9 be         .._\.c..
    f330: 15 3e ea 02 25 e2 dd be         .>..%...
    f338: ae 07 4c d4 8e 7b f7 3e         ..L..{.>
    f340: 00 00 00 00 00 00 00 00         ........
    f348: 1a b1 f6 1c e5 8c 58 bf         ......X.
    f350: 31 e4 d7 d1 bc 9c 22 bf         1.....".
    f358: 93 db a4 a1 3f 91 1c bf         ....?...
    f360: 01 d9 61 67 7c 8f 38 3f         ..ag|.8?
    f368: 00 00 00 00 00 00 00 00         ........
    f370: 71 6f 52 dd 58 04 c6 c0         qoR.X...
    f378: d5 a9 60 f9 31 5b 69 c0         ..`.1[i.
    f380: 72 06 f4 f3 d9 ab 18 c0         r.......
    f388: c8 9e fe eb 2a 13 04 c0         ....*...
    f390: c0 b2 e6 8e cc cb cc bf         ........
    f398: 9d 3b 17 20 7b 9c c1 bf         .;. {...
    f3a0: 2c 23 9d 38 2c 9a dc 3f         ,#.8,..?
    f3a8: 20 20 2a d5 1a 5d c1 3f           *..].?
    f3b0: d0 6a 94 f7 fd 4b 39 c0         .j...K9.
    f3b8: c2 ee ec a6 53 5c 03 c0         ....S\..
    f3c0: eb b4 4b 5e 89 b8 fe bf         ..K^....
    f3c8: 5f 33 ca 6f 8d 34 1c 40         _3.o.4.@
    f3d0: b6 45 2d 2a ba a1 ed 3f         .E-*...?
    f3d8: 34 d3 c6 17 02 26 c6 c1         4....&..
    f3e0: 00 00 00 00 00 00 00 00         ........
    f3e8: 00 00 00 00 00 00 00 00         ........
    f3f0: ae 4e 38 8b 4c 1f 26 41         .N8.L.&A
    f3f8: 00 00 00 00 00 00 00 00         ........
    f400: 00 00 00 00 00 00 00 00         ........
    f408: 00 00 00 00 00 00 00 00         ........
    f410: 00 00 00 00 00 00 00 00         ........
    f418: 71 fb 79 f5 89 85 6c 41         q.y...lA
    f420: 00 00 00 00 00 00 00 00         ........
    f428: 00 00 00 00 00 00 00 00         ........
    f430: 00 00 00 00 00 00 00 00         ........
    f438: 00 00 00 00 00 00 00 00         ........
    f440: 80 0f ee c5 a2 cf cc c1         ........
    f448: 03 39 cc e5 13 8f 66 c1         .9....f.
    f450: 00 00 00 00 00 00 00 00         ........
    f458: bc 8c df 4c 3d 33 df c0         ...L=3..
    f460: 7b 65 0f 29 f1 e1 25 41         {e.)..%A
    f468: 00 00 00 00 00 00 00 00         ........
    f470: 00 00 00 00 00 00 00 00         ........
    f478: 00 00 00 00 00 00 00 00         ........
    f480: b5 88 09 18 3d 07 38 c1         ....=.8.
    f488: 93 6d 66 01 62 40 6e 41         .mf.b@nA
    f490: 00 00 00 00 00 00 00 00         ........
    f498: 00 00 00 00 00 00 00 00         ........
    f4a0: 00 00 00 00 00 00 00 00         ........
    f4a8: 90 2b 6e 91 7f 0d ca c1         .+n.....
    f4b0: 7b 6b 76 f3 df 2a 66 c1         {kv..*f.
    f4b8: 90 22 6d ae 1a 1c 15 3e         ."m....>
    f4c0: 7d d4 6c bf e4 09 d2 c0         }.l.....
    f4c8: a6 9e 0e 27 6c 6d 9b c0         ...'lm..
    f4d0: 6f 22 5c 35 f4 f8 25 41         o"\5..%A
    f4d8: 07 38 01 18 58 95 e5 bd         .8..X...
    f4e0: 00 00 00 00 00 00 00 00         ........
    f4e8: 01 de ad 58 89 37 35 c1         ...X.75.
    f4f0: 64 52 06 a3 b9 d6 fd c0         dR......
    f4f8: e7 6d ae 0d ac 66 6e 41         .m...fnA
    f500: 84 fd 69 ae 6e e4 30 3e         ..i.n.0>
    f508: 00 00 00 00 00 00 00 00         ........
    f510: ae e5 98 3f ec 15 bf 41         ...?...A
    f518: 60 9a e6 46 d5 83 5d 41         `..F..]A
    f520: 00 45 26 f9 31 9c 10 3e         .E&.1..>
    f528: 86 15 8e ef 19 0b e3 40         .......@
    f530: 21 d0 d6 9a 46 a2 a9 40         !...F..@
    f538: 5c 02 3d 2f f3 3c 89 40         \.=/.<.@
    f540: 30 61 bf 61 3c e9 25 41         0a.a<.%A
    f548: 00 00 00 00 00 00 00 00         ........
    f550: e4 f4 1f c6 be 0d 2d 41         ......-A
    f558: 2f a2 3d 09 40 d5 f4 40         /.=.@..@
    f560: cb 86 fa f8 4d 6c e9 40         ....Ml.@
    f568: 86 05 ac 03 f1 31 6e 41         .....1nA
    f570: 00 00 00 00 00 00 00 00         ........
    f578: bf fe 95 3f ca f0 00 42         ...?...B
    f580: 5d ea a9 e7 99 49 a0 41         ]....I.A
    f588: bb c0 76 fb 0f 71 3d 41         ..v..q=A
    f590: 52 97 42 4a 82 90 26 41         R.BJ..&A
    f598: 6d c7 0e 5f 0e 3e ee 40         m.._.>.@
    f5a0: 9a a9 f9 5e 72 d0 ce 40         ...^r..@
    f5a8: 85 6d 76 83 cd 2b e3 c0         .mv..+..
    f5b0: e3 f9 21 df 2c 92 31 41         ..!.,.1A
    f5b8: ab d5 cb 90 f6 13 70 41         ......pA
    f5c0: 67 a4 be 94 84 1b 37 41         g.....7A
    f5c8: a7 56 3f cf 9d b8 2c 41         .V?...,A
    f5d0: d5 01 98 28 bb 61 47 c1         ...(.aG.
    f5d8: ba d8 52 92 3f 69 5d 41         ..R.?i]A

0000f5e0 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.12>:
    f5e0: 69 6e 74 65 72 6e 61 6c         internal
    f5e8: 20 65 72 72 6f 72 3a 20          error: 
    f5f0: 65 6e 74 65 72 65 64 20         entered 
    f5f8: 75 6e 72 65 61 63 68 61         unreacha
    f600: 62 6c 65 20 63 6f 64 65         ble code

0000f608 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.13>:
    f608: 80 e5 70 28 a1 3a 03 bf         ..p(.:..
    f610: 00 00 00 00 00 00 00 00         ........
    f618: 00 00 00 00 00 00 00 00         ........
    f620: 00 00 00 00 00 00 00 00         ........
    f628: 00 00 00 00 00 00 00 00         ........
    f630: 00 00 00 00 00 00 00 00         ........
    f638: 00 00 00 00 00 00 00 00         ........
    f640: 00 00 00 00 00 00 00 00         ........
    f648: 00 00 00 00 00 00 00 00         ........
    f650: 00 f0 e6 61 55 15 14 bf         ...aU...
    f658: 00 00 00 00 00 00 00 00         ........
    f660: 00 00 00 00 00 00 00 00         ........
    f668: 00 00 00 00 00 00 00 00         ........
    f670: 00 00 00 00 00 00 00 00         ........
    f678: 00 00 00 00 00 00 00 00         ........
    f680: 00 00 00 00 00 00 00 00         ........
    f688: 00 00 00 00 00 00 00 00         ........
    f690: 00 00 00 00 00 00 00 00         ........
    f698: 00 50 66 db 76 ec 1e bf         .Pf.v...
    f6a0: 0f 97 9b b4 e8 75 16 3f         .....u.?
    f6a8: 00 00 00 00 00 00 00 00         ........
    f6b0: 00 00 00 00 00 00 00 00         ........
    f6b8: 00 00 00 00 00 00 00 00         ........
    f6c0: 00 00 00 00 00 00 00 00         ........
    f6c8: 00 00 00 00 00 00 00 00         ........
    f6d0: 00 00 00 00 00 00 00 00         ........
    f6d8: e0 96 9b b4 e8 75 16 3f         .....u.?
    f6e0: 32 e2 b6 04 2a ad 22 bf         2...*.".
    f6e8: 00 00 00 00 00 00 00 00         ........
    f6f0: 00 00 00 00 00 00 00 00         ........
    f6f8: 00 00 00 00 00 00 00 00         ........
    f700: 00 00 00 00 00 00 00 00         ........
    f708: 00 00 00 00 00 00 00 00         ........
    f710: 00 00 00 00 00 00 00 00         ........
    f718: 00 00 00 00 00 00 00 00         ........
    f720: 00 00 00 00 00 00 00 00         ........
    f728: 61 05 bc 57 10 d8 12 bf         a..W....
    f730: 58 62 94 b9 1a 9f dc 3e         Xb.....>
    f738: 00 00 00 00 00 00 00 00         ........
    f740: 00 00 00 00 00 00 00 00         ........
    f748: 00 00 00 00 00 00 00 00         ........
    f750: 00 00 00 00 00 00 00 00         ........
    f758: 00 00 00 00 00 00 00 00         ........
    f760: 00 00 00 00 00 00 00 00         ........
    f768: 59 62 94 b9 1a 9f dc 3e         Yb.....>
    f770: 14 90 51 d1 d5 fc 24 bf         ..Q...$.
    f778: 14 d0 fe 14 cf 45 20 3f         .....E ?
    f780: 00 00 00 00 00 00 00 00         ........
    f788: 00 00 00 00 00 00 00 00         ........
    f790: 00 00 00 00 00 00 00 00         ........
    f798: 00 00 00 00 00 00 00 00         ........
    f7a0: 00 00 00 00 00 00 00 00         ........
    f7a8: 00 00 00 00 00 00 00 00         ........
    f7b0: d2 ce fe 14 cf 45 20 3f         .....E ?
    f7b8: d2 ce fe 14 cf 45 20 bf         .....E .
    f7c0: 00 00 00 00 00 00 00 00         ........
    f7c8: 00 00 00 00 00 00 00 00         ........
    f7d0: 00 00 00 00 00 00 00 00         ........
    f7d8: 00 00 00 00 00 00 00 00         ........
    f7e0: 00 00 00 00 00 00 00 00         ........
    f7e8: 00 00 00 00 00 00 00 00         ........
    f7f0: 00 00 00 00 00 00 00 00         ........
    f7f8: 00 00 00 00 00 00 00 00         ........
    f800: 42 6f 24 95 d9 83 c5 bf         Bo$.....
    f808: a2 0c d2 2e ca fe ef 3f         .......?
    f810: 1f 89 9b cf ab 32 9c bf         .....2..
    f818: 00 00 00 00 00 00 00 00         ........
    f820: 00 00 00 00 00 00 00 00         ........
    f828: 00 00 00 00 00 00 00 00         ........
    f830: 00 00 00 00 00 00 00 00         ........
    f838: 00 00 00 00 00 00 00 00         ........
    f840: 00 00 00 00 00 00 00 00         ........
    f848: 00 00 00 00 00 00 00 00         ........
    f850: a5 94 a7 50 09 2c d5 3f         ...P.,.?
    f858: 9c 9e 91 65 97 57 e8 bf         ...e.W..
    f860: 76 43 71 a5 f8 73 e2 3f         vCq..s.?
    f868: 00 00 00 00 00 00 00 00         ........
    f870: 00 00 00 00 00 00 00 00         ........
    f878: 00 00 00 00 00 00 00 00         ........
    f880: 00 00 00 00 00 00 00 00         ........
    f888: 00 00 00 00 00 00 00 00         ........
    f890: 00 00 00 00 00 00 00 00         ........
    f898: ab 14 f2 db ec cd d7 3f         .......?
    f8a0: c4 a9 9f 7b 67 dd c7 3f         ...{g..?
    f8a8: 1c 38 88 77 bf 13 e1 bf         .8.w....
    f8b0: 00 00 00 00 00 00 00 00         ........
    f8b8: 00 00 00 00 00 00 00 00         ........
    f8c0: 00 00 00 00 00 00 00 00         ........
    f8c8: 00 00 00 00 00 00 00 00         ........
    f8d0: 00 00 00 00 00 00 00 00         ........
    f8d8: 00 00 00 00 00 00 00 00         ........
    f8e0: 00 00 00 00 00 00 00 00         ........
    f8e8: 15 be b6 e5 6d 7e c0 bf         ....m~..
    f8f0: 67 42 87 92 ba 86 d4 bf         gB......
    f8f8: 00 00 00 00 00 00 00 00         ........
    f900: 00 00 00 00 00 00 00 00         ........
    f908: 00 00 00 00 00 00 00 00         ........
    f910: 00 00 00 00 00 00 00 00         ........
    f918: 00 00 00 00 00 00 00 00         ........
    f920: 00 00 00 00 00 00 00 00         ........
    f928: 00 00 00 00 00 00 00 00         ........
    f930: e6 a7 5c a0 06 41 d9 3f         ..\..A.?
    f938: e6 a7 5c a0 06 41 d9 bf         ..\..A..
    f940: 19 d5 65 36 d0 6e 95 bf         ..e6.n..
    f948: 00 00 00 00 00 00 00 00         ........
    f950: 00 00 00 00 00 00 00 00         ........
    f958: 00 00 00 00 00 00 00 00         ........
    f960: 00 00 00 00 00 00 00 00         ........
    f968: 00 00 00 00 00 00 00 00         ........
    f970: 10 43 9c 25 ca fc ef 3f         .C.%...?
    f978: 00 80 e7 1d d3 ae 39 3f         ......9?
    f980: 00 00 00 00 00 00 00 00         ........
    f988: 00 00 00 00 00 00 00 00         ........
    f990: 00 00 00 00 00 00 00 00         ........
    f998: 00 00 00 00 00 00 00 00         ........
    f9a0: 00 00 00 00 00 00 00 00         ........
    f9a8: 00 00 00 00 00 00 00 00         ........
    f9b0: 10 43 9c 25 ca fc ef 3f         .C.%...?
    f9b8: 10 43 9c 25 ca fc ef bf         .C.%....
    f9c0: 00 00 00 00 00 00 00 00         ........

0000f9c8 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.14>:
    f9c8: 20 c4 00 00 18 00 00 00          .......
    f9d0: 26 02 00 00 05 00 00 00         &.......

0000f9d8 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.17>:
    f9d8: b6 c3 00 00 4b 00 00 00         ....K...
    f9e0: 1e 06 00 00 09 00 00 00         ........

0000f9e8 <.Lanon.e4b89bf4ac73d3d4b7d4d555fd788f28.47>:
    f9e8: 02 c4 00 00 1d 00 00 00         ........
    f9f0: c0 00 00 00 0f 00 00 00         ........
